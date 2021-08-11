; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
		dc.w SnorcAni_Walk-SnorcAniData
		dc.w SnorcAni_Run-SnorcAniData
		dc.w SnorcAni_Roll-SnorcAniData
		dc.w SnorcAni_Roll2-SnorcAniData
		dc.w SnorcAni_Push-SnorcAniData
		dc.w SnorcAni_Wait-SnorcAniData
		dc.w SnorcAni_Balance-SnorcAniData
		dc.w SnorcAni_LookUp-SnorcAniData
		dc.w SnorcAni_Duck-SnorcAniData
		dc.w SnorcAni_Warp1-SnorcAniData
		dc.w SnorcAni_Warp2-SnorcAniData
		dc.w SnorcAni_Warp3-SnorcAniData
		dc.w SnorcAni_Warp4-SnorcAniData
		dc.w SnorcAni_Stop-SnorcAniData
		dc.w SnorcAni_Float1-SnorcAniData
		dc.w SnorcAni_Float2-SnorcAniData
		dc.w SnorcAni_Spring-SnorcAniData
		dc.w SnorcAni_LZHang-SnorcAniData
		dc.w SnorcAni_Leap1-SnorcAniData
		dc.w SnorcAni_Leap2-SnorcAniData
		dc.w SnorcAni_Surf-SnorcAniData
		dc.w SnorcAni_Bubble-SnorcAniData
		dc.w SnorcAni_Death1-SnorcAniData
		dc.w SnorcAni_Drown-SnorcAniData
		dc.w SnorcAni_Death2-SnorcAniData
		dc.w SnorcAni_Shrink-SnorcAniData
		dc.w SnorcAni_Hurt-SnorcAniData
		dc.w SnorcAni_LZSlide-SnorcAniData
		dc.w SnorcAni_Blank-SnorcAniData
		dc.w SnorcAni_Float3-SnorcAniData
		dc.w SnorcAni_Float4-SnorcAniData
SnorcAni_Walk:	dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SnorcAni_Run:	dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SnorcAni_Roll:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SnorcAni_Roll2:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SnorcAni_Push:	dc.b $FD, $45, $46, $47, $48, $FF, $FF,	$FF
SnorcAni_Wait:	dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
SnorcAni_Balance:	dc.b $1F, $3A, $3B, $FF
SnorcAni_LookUp:	dc.b $3F, 5, $FF, 0
SnorcAni_Duck:	dc.b $3F, $39, $FF, 0
SnorcAni_Warp1:	dc.b $3C, $33, $34, $35, $34, $FF, $FF
SnorcAni_Warp2:	dc.b $3F, $34, $FF, 0
SnorcAni_Warp3:	dc.b $3F, $35, $FF, 0
SnorcAni_Warp4:	dc.b $3F, $36, $FF, 0
SnorcAni_Stop:	dc.b 7,	$37, $38, $FF
SnorcAni_Float1:	dc.b 7,	$3C, $3F, $FF
SnorcAni_Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SnorcAni_Spring:	dc.b $2F, $40, $FD, 0
SnorcAni_LZHang:	dc.b 4,	$41, $42, $FF
SnorcAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SnorcAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SnorcAni_Surf:	dc.b $3F, $49, $FF, 0
SnorcAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SnorcAni_Death1:	dc.b $20, $55, $FF, 0
SnorcAni_Drown:	dc.b $2F, $4C, $FF, 0
SnorcAni_Death2:	dc.b 3,	$4D, $FF, 0
SnorcAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SnorcAni_Hurt:	dc.b 3,	$58, $59, $5A, $5B, $5C, $5D, $FF, 0
SnorcAni_LZSlide:	dc.b 7, $55, $57, $FF
SnorcAni_Blank:	dc.b $77, 0, $FD, 0
SnorcAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SnorcAni_Float4:	dc.b 3,	$3C, $FD, 0
		even