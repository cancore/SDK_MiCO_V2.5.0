/**
 ******************************************************************************
 * @file    wifi_nvram_image.h
 * @author  William Xu
 * @version V1.0.0
 * @date    05-Jun-2016
 * @brief   NVRAM variables which define BCM43438 Parameters.
 ******************************************************************************
 *
 *  The MIT License
 *  Copyright (c) 2014 MXCHIP Inc.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is furnished
 *  to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 *  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
 *  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 ******************************************************************************
 */

#ifndef INCLUDED_NVRAM_IMAGE_H_
#define INCLUDED_NVRAM_IMAGE_H_

#include <string.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NVRAM_GENERATED_MAC_ADDRESS   "macaddr=C8:93:46:00:00:01"
/**
 * Character array of NVRAM image
 */

static const char wifi_nvram_image[] =

		"manfid=0x2d0"		 												"\x00"
		"prodid=0x0726"														"\x00"
		"vendid=0x14e4"														"\x00"
		"devid=0x43e2"														"\x00"
		"boardtype=0x0726"													"\x00"
		"boardrev=0x1101"													"\x00"
		"boardnum=22"														"\x00"
        NVRAM_GENERATED_MAC_ADDRESS                                         "\x00"
		"sromrev=11"														"\x00"
		"boardflags=0x00404201"												"\x00"
		"xtalfreq=37400"													"\x00"
		"nocrc=1"															"\x00"
		"ag0=255"															"\x00"
		"aa2g=1"															"\x00"
		"ccode=ALL"															"\x00"
		"pa0itssit=0x20"													"\x00"
		"extpagain2g=0"														"\x00"
		"pa2ga0=-189,5883,-691"												"\x00"
		"AvVmid_c0=0x0,0xc8"												"\x00"
		"cckpwroffset0=5"													"\x00"
		"maxp2ga0=72"														"\x00"
		"txpwrbckof=6"														"\x00"
		"cckbw202gpo=0x1111"												"\x00"
		"legofdmbw202gpo=0x66666666"										"\x00"
		"mcsbw202gpo=0x88888888"											"\x00"
		"ofdmdigfilttype=18"												"\x00"
		"ofdmdigfilttypebe=18"												"\x00"
		"papdmode=1"														"\x00"
		"il0macaddr=00:90:4c:c5:12:38"										"\x00"
		"wl0id=0x431b"														"\x00"
		//#OOB parameters
		"hostwake=0x40"														"\x00"
		"hostrdy=0x41"														"\x00"
		"deadman_to=0xffffffff"												"\x00"					
        //#OOB Enable
		"muxenab=0x10"  		                                            "\x00"
        //#CE 1.8.1
        "edonthd=-70"                                                       "\x00"
        "edoffthd=-76"                                                      "\x00"
        "\x00\x00";

#ifdef __cplusplus
} /* extern "C" */
#endif

#else /* ifndef INCLUDED_NVRAM_IMAGE_H_ */

#error Wi-Fi NVRAM image included twice

#endif /* ifndef INCLUDED_NVRAM_IMAGE_H_ */
