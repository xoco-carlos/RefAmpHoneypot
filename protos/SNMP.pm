#!/usr/bin/perl

package SNMP;
	our $PORT		=	161;
#------------------------------------------------------------------------------------------
	our @DELAY		=	[1,2,3,4,5,6,7,8,9,10];
#------------------------------------------------------------------------------------------
	our $REQUEST	=	"public(.*?)\x2b\x06\x01\x02\x01";	
#------------------------------------------------------------------------------------------
	our $RESPONSE	=	join('',map{chr $_}(0x30,0x82,0x01,0x48,0x02,0x01,0x01,0x04,0x06,0x70,0x75,0x62,0x6c,0x69,0x63,0xa2,0x82,0x01,0x39,0x02,0x04,0x0e,0x01,0x86,0x75,0x02,0x01,0x00,0x02,0x01,0x00,0x30,0x82,0x01,0x29,0x30,0x44,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x01,0x00,0x04,0x38,0x4c,0x69,0x6e,0x75,0x78,0x20,0x61,0x70,0x61,0x63,0x68,0x65,0x20,0x33,0x2e,0x32,0x2e,0x30,0x2d,0x34,0x2d,0x61,0x6d,0x64,0x36,0x34,0x20,0x23,0x31,0x20,0x53,0x4d,0x50,0x20,0x44,0x65,0x62,0x69,0x61,0x6e,0x20,0x33,0x2e,0x32,0x2e,0x35,0x31,0x2d,0x31,0x20,0x78,0x38,0x36,0x5f,0x36,0x34,0x30,0x16,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x02,0x00,0x06,0x0a,0x2b,0x06,0x01,0x04,0x01,0xbf,0x08,0x03,0x02,0x0a,0x30,0x0f,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x03,0x00,0x43,0x03,0x0a,0xd9,0x62,0x30,0x33,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x04,0x00,0x04,0x27,0x50,0x72,0x6f,0x79,0x65,0x63,0x74,0x6f,0x20,0x4d,0x6f,0x64,0x75,0x6c,0x6f,0x20,0x31,0x3c,0x6d,0x6f,0x6e,0x69,0x74,0x6f,0x72,0x65,0x6f,0x40,0x6d,0x6f,0x64,0x31,0x2e,0x6c,0x6f,0x63,0x61,0x6c,0x3e,0x30,0x12,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x05,0x00,0x04,0x06,0x61,0x70,0x61,0x63,0x68,0x65,0x30,0x15,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x06,0x00,0x04,0x09,0x4d,0x65,0x78,0x69,0x63,0x6f,0x2c,0x44,0x46,0x30,0x0d,0x06,0x08,0x2b,0x06,0x01,0x02,0x01,0x01,0x08,0x00,0x43,0x01,0x03,0x30,0x17,0x06,0x0a,0x2b,0x06,0x01,0x02,0x01,0x01,0x09,0x01,0x02,0x01,0x06,0x09,0x2b,0x06,0x01,0x06,0x03,0x0a,0x03,0x01,0x01,0x30,0x17,0x06,0x0a,0x2b,0x06,0x01,0x02,0x01,0x01,0x09,0x01,0x02,0x02,0x06,0x09,0x2b,0x06,0x01,0x06,0x03,0x0b,0x03,0x01,0x01,0x30,0x17,0x06,0x0a,0x2b,0x06,0x01,0x02,0x01,0x01,0x09,0x01,0x02,0x03,0x06,0x09,0x2b,0x06,0x01,0x06,0x03,0x0f,0x02,0x01,0x01));
1
