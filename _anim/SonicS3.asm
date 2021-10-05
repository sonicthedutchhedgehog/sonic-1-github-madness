; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SonS3Ani_Walk-SonicS3KAniData	;0
		dc.w SonS3Ani_Run-SonicS3KAniData	;1
		dc.w SonS3Ani_Roll-SonicS3KAniData	;2
		dc.w SonS3Ani_Roll2-SonicS3KAniData	;3
		dc.w SonS3Ani_Push-SonicS3KAniData	;4
		dc.w SonS3Ani_Wait-SonicS3KAniData	;5
		dc.w SonS3Ani_Balance-SonicS3KAniData	;6
		dc.w SonS3Ani_LookUp-SonicS3KAniData	;7
		dc.w SonS3Ani_Duck-SonicS3KAniData	;8
		dc.w SonS3Ani_Warp1-SonicS3KAniData	;9
		dc.w SonS3Ani_Warp2-SonicS3KAniData	;A
		dc.w SonS3Ani_Warp3-SonicS3KAniData	;B
		dc.w SonS3Ani_Warp4-SonicS3KAniData	;C
		dc.w SonS3Ani_Stop-SonicS3KAniData	;D
		dc.w SonS3Ani_Float1-SonicS3KAniData	;E
		dc.w SonS3Ani_Float2-SonicS3KAniData	;F
		dc.w SonS3Ani_Spring-SonicS3KAniData	;10
		dc.w SonS3Ani_LZHang-SonicS3KAniData	;11
		dc.w SonS3Ani_Leap1-SonicS3KAniData	;12
		dc.w SonS3Ani_Leap2-SonicS3KAniData	;13
		dc.w SonS3Ani_Surf-SonicS3KAniData	;14
		dc.w SonS3Ani_Bubble-SonicS3KAniData	;15
		dc.w SonS3Ani_Death1-SonicS3KAniData	;16
		dc.w SonS3Ani_Drown-SonicS3KAniData	;17
		dc.w SonS3Ani_Death2-SonicS3KAniData	;18
		dc.w SonS3Ani_Shrink-SonicS3KAniData	;19
		dc.w SonS3Ani_Hurt-SonicS3KAniData	;1A
		dc.w SonS3Ani_LZSlide-SonicS3KAniData	;1B
		dc.w SonS3Ani_Blank-SonicS3KAniData	;1C
		dc.w SonS3Ani_Float3-SonicS3KAniData	;1D
		dc.w SonS3Ani_Float4-SonicS3KAniData	;1E
		dc.w SonS3Ani_Warp1-SonicS3KAniData	;1F
		dc.w SonS3Ani_Spring2-SonicS3KAniData	;20
		dc.w SonS3Ani_Spring3-SonicS3KAniData	;21
		dc.w SonS3Ani_EndPose-SonicS3KAniData	;23
SonS3Ani_Walk:	dc.b  $FF,   7,	  8,   1,   2,	 3,   4,   5,	6, $FF
SonS3Ani_Run:	dc.b  $FF, $21,	$22, $23, $24, $FF, $FF, $FF, $FF, $FF
SonS3Ani_Roll:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SonS3Ani_Roll2:	dc.b  $FE, $96,	$97, $96, $98, $96, $99, $96, $9A, $FF
SonS3Ani_Push:	dc.b  $FD, $B6,	$B7, $B8, $B9, $FF, $FF, $FF, $FF, $FF
SonS3Ani_Wait:	dc.b	5, $BA,
					; DATA XREF: ROM:00012AA6o
		dc.b  $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BA, $BA, $BA, $BA, $BA, $BA, $BA,	$BA, $BB, $BC, $BC, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD
		dc.b  $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $BD, $BD, $BE, $BE,	$BD, $BD, $BE, $BE, $AD, $AD, $AD, $AD,	$AD, $AD, $AE, $AE, $AE, $AE
		dc.b  $AE, $AE,	$AF, $D9, $D9, $D9, $D9, $D9, $D9, $AF,	$AF, $FE, $35
SonS3Ani_Balance:	dc.b	7, $A4,	$A5, $A6, $FF ;	DATA XREF: ROM:00012AA6o
SonS3Ani_LookUp:	dc.b	5, $C3,	$C4, $FE,   1 ;	DATA XREF: ROM:00012AA6o
SonS3Ani_Duck:	dc.b	5, $9B,	$9C, $FE,   1 ;	DATA XREF: ROM:00012AA6o
SonS3Ani_Warp1:	dc.b	0, $86,	$87, $86, $88, $86, $89, $86, $8A, $86,	$8B, $FF
SonS3Ani_Warp2:	dc.b	9, $BA,	$C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7,	$C7, $C7, $C7, $C7, $C7, $C7, $C7, $C7,	$C7, $C7, $C7, $FD,   0
SonS3Ani_Warp3:	dc.b   1,  $BB,$FD,  0
SonS3Ani_Warp4:	dc.b   5, $A1,	$A2, $A3, $FF
SonS3Ani_Stop:	dc.b	3, $9D,	$9E, $9F, $A0, $FD,   0	; DATA XREF: ROM:00012AA6o
SonS3Ani_Float1:	dc.b	7, $C8,	$FF	; DATA XREF: ROM:00012AA6o
SonS3Ani_Float2:	dc.b	7, $C8,	$C9, $CA, $CB, $CC, $CD, $CE, $CF, $FF
SonS3Ani_Spring:	dc.b  $2F, $8E,	$FD,   0 ; DATA	XREF: ROM:00012AA6o
;SonS3Ani_Spring:	dc.b $2F, $40, $FD, 0
SonS3Ani_LZHang:	dc.b	1, $AA,	$AB, $FF ; DATA	XREF: ROM:00012AA6o
SonS3Ani_Leap1:	dc.b   $F, $43,	$43, $43, $FE,	 1 ; DATA XREF:	ROM:00012AA6o
SonS3Ani_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SonS3Ani_Surf:	dc.b $3F, $49, $FF, 0
SonS3Ani_Bubble:		dc.b   $B, $AC,	$AC,   3,   4, $FD,   0	; DATA XREF: ROM:00012AA6o
SonS3Ani_Death1:	dc.b  $20, $A8,	$FF	; DATA XREF: ROM:00012AA6o
SonS3Ani_Drown:	dc.b  $20, $A9,	$FF	; DATA XREF: ROM:00012AA6o
SonS3Ani_Death2:	dc.b  $20, $A7,	$FF	; DATA XREF: ROM:00012AA6o

SonS3Ani_Shrink:	 dc.b	9, $D7,	$D8, $FF ; DATA	XREF: ROM:00012AA6o
SonS3Ani_Hurt:	dc.b  $40, $8D,	$FF	; DATA XREF: ROM:00012AA6o
SonS3Ani_LZSlide:	dc.b	9, $8C,	$8D, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C70t
SonS3Ani_Blank:	dc.b $77, 0, $FD, 0
SonS3Ani_Float3:	dc.b  $13, $D0,	$D1, $FF ; DATA	XREF: ROM:00012AA6o
					; ROM:00012C74t
SonS3Ani_Float4:	dc.b	3, $CF,	$C8, $C9, $CA, $CB, $FE,   4 ; DATA XREF: ROM:00012AA6o
SonS3Ani_Spin_Dash:	dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
SonS3Ani_Spring2:	dc.b 1, $5E, $60, $FD, $21,  0
SonS3Ani_Spring3:	dc.b 1, $5E, $60, $FD, $20,  0
SonS3Ani_EndPose:	dc.b 7, $B0,	$B2, $B2, $B2, $B2, $B2, $B2, $B1, $B2,	$B3, $B2, $FE,	 4
		align 2
