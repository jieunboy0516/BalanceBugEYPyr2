/*
 * auto_focus.c
 *
 *  Created on: 2015��7��27��
 *      Author: Administrato
 */

#include <stdio.h>
#include "I2C_core.h"
#include "terasic_includes.h"
#include "auto_focus.h"


/////////////////////////////////
//This is a simple focus function for demonstration, focus function may be not good for some situation
//arithmetic not suit for: 1. microspur 2.light source
  // please look at TERASIC_AUTO_FOCUS IP to see register's detail.
alt_u16 video_w =  CAMERA_WIDTH;
alt_u16 video_h =  CAMERA_HEIGHT;

alt_u16 focus_width  = 240;  // <video w
alt_u16 focus_height = 180; // <video h
// please observe focus performance when change the scal ,scal_f. or when change camera frame rate
alt_u8  focus_scal   =   4;  // scan 0 -> 1023 , step: SCAL , to find STEP_UP
alt_u8  focus_scal_f =   1;  //  scan STEP_UP + - SCAL/2 , step: SCAL_F
alt_u8  focus_th     =   20;

void Focus_Init(config_t *pConfig){
  // please look at TERASIC_AUTO_FOCUS IP to see register's detail.
  IOWR(pConfig->focus_ip_base,REG_CTRL, 0);// focus mode : 1: window-screen, 0: full-screen
  IOWR(pConfig->focus_ip_base,REG_FOCUS_W, focus_width);// focus_width
  IOWR(pConfig->focus_ip_base,REG_FOCUS_H, focus_height);// focus_height
  IOWR(pConfig->focus_ip_base,REG_FOCUS_X_START, video_w/2-focus_width/2);//x_start
  IOWR(pConfig->focus_ip_base,REG_FOCUS_Y_START, video_h/2-focus_height/2);// y_start

  IOWR(pConfig->focus_ip_base,REG_SCAL, focus_scal*256 + focus_scal_f); // scan 0 -> 1023 , step: SCAL , to find STEP_UP
                                                                          //  scan STEP_UP + - SCAL/2 , step: SCAL_F
  IOWR(pConfig->focus_ip_base,REG_TH, focus_th);

  //////////// focus at initial time
  usleep(100);
  IOWR(pConfig->focus_ip_base,REG_GO, 1);
  usleep(2);
  IOWR(pConfig->focus_ip_base,REG_GO, 0);
}

alt_u16 Focus_Window(config_t *pConfig,int x,int y){
   alt_u16 x_start,y_start;
   alt_u16 end_focus = 300;

   if(Focus_Released(pConfig)) { // pre focus done
	   IOWR(pConfig->focus_ip_base,REG_CTRL, 1);// focus mode : 1: window-screen, 0: full-screen

	   if(( x -  focus_width/2) < 0 ) x_start = 0;
	   else if(( x + focus_width/2 ) > video_w )  x_start = video_w -1 -focus_width;
	   else x_start = x - focus_width/2;

	   if(( y -  focus_height/2) < 0 ) y_start = 0;
	   else if(( y + focus_height/2 ) > video_h )  y_start = video_h -1 -focus_height;
	   else y_start = y - focus_height/2;

	   printf("[%s]: x_start= %d,y_start= %d\n",pConfig->str,x_start,y_start);

	   IOWR(pConfig->focus_ip_base,REG_FOCUS_X_START, x_start);//x_start
	   IOWR(pConfig->focus_ip_base,REG_FOCUS_Y_START, y_start);//y_start

	   usleep(10);

	   IOWR(pConfig->focus_ip_base,REG_GO, 1);
	   usleep(10);
	   IOWR(pConfig->focus_ip_base,REG_GO, 0);
	   Focus_Released(pConfig);

	   end_focus = IORD(pConfig->focus_ip_base,REG_STATUS)&0x0FFF;
	   printf("[%s]: end_focus = %d \n",pConfig->str,end_focus);

	   return end_focus;

   }
   return end_focus;

}

int Focus_Released(config_t *pConfig){
  int Released = FALSE;
  alt_u32 TimeOut;

  TimeOut = alt_nticks() + alt_ticks_per_second()*8;

  while((IORD(pConfig->focus_ip_base,REG_STATUS)&0x8000) ==0 && alt_nticks() < TimeOut ); // waiting for VCM release I2C bus

  if(alt_nticks() < TimeOut ) Released = TRUE;
  else printf("\n =>��Released check TimeOut!\n");

  usleep(100);

  return Released;
}
