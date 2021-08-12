; ---------------------------------------------------------------------------
; Animation script - Sphere
; ---------------------------------------------------------------------------
		dc.w SphereAni_Walk-SphereAniData
		dc.w SphereAni_Run-SphereAniData
		dc.w SphereAni_Roll-SphereAniData
		dc.w SphereAni_Roll2-SphereAniData
		dc.w SphereAni_Push-SphereAniData
		dc.w SphereAni_Wait-SphereAniData
		dc.w SphereAni_Wait-SphereAniData
		dc.w SphereAni_Balance-SphereAniData
		dc.w SphereAni_LookUp-SphereAniData
		dc.w SphereAni_Duck-SphereAniData
		dc.w SphereAni_Warp1-SphereAniData
		dc.w SphereAni_Warp2-SphereAniData
		dc.w SphereAni_Warp3-SphereAniData
		dc.w SphereAni_Warp4-SphereAniData
		dc.w SphereAni_Stop-SphereAniData
		dc.w SphereAni_Float1-SphereAniData
		dc.w SphereAni_Float2-SphereAniData
		dc.w SphereAni_Spring-SphereAniData
		dc.w SphereAni_LZHang-SphereAniData
		dc.w SphereAni_Leap1-SphereAniData
		dc.w SphereAni_Leap2-SphereAniData
		dc.w SphereAni_Surf-SphereAniData
		dc.w SphereAni_Bubble-SphereAniData
		dc.w SphereAni_Death1-SphereAniData
		dc.w SphereAni_Drown-SphereAniData
		dc.w SphereAni_Death2-SphereAniData
		dc.w SphereAni_Shrink-SphereAniData
		dc.w SphereAni_Hurt-SphereAniData
		dc.w SphereAni_LZSlide-SphereAniData
		dc.w SphereAni_Blank-SphereAniData
		dc.w SphereAni_Float3-SphereAniData
		dc.w SphereAni_Float4-SphereAniData
SphereAni_Walk:	dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SphereAni_Run:	dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SphereAni_Roll:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SphereAni_Roll2:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SphereAni_Push:	dc.b $FD, $45, $46, $47, $48, $FF, $FF,	$FF
SphereAni_Wait:	dc.b $17, 1, 1,	1, 1, 1, 1, 1, 1, 1, 1,	1, 1, 3, 2, 2, 2, 3, 4, $FE, 2, 0
SphereAni_Balance:	dc.b $1F, $3A, $3B, $FF
SphereAni_LookUp:	dc.b $3F, 5, $FF, 0
SphereAni_Duck:	dc.b $3F, $39, $FF, 0
SphereAni_Warp1:	dc.b $3F, $33, $FF, 0
SphereAni_Warp2:	dc.b $3F, $34, $FF, 0
SphereAni_Warp3:	dc.b $3F, $35, $FF, 0
SphereAni_Warp4:	dc.b $3F, $36, $FF, 0
SphereAni_Stop:	dc.b 7,	$37, $38, $FF
SphereAni_Float1:	dc.b 7,	$3C, $3F, $FF
SphereAni_Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SphereAni_Spring:	dc.b $2F, $40, $FD, 0
SphereAni_LZHang:	dc.b 4,	$41, $42, $FF
SphereAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SphereAni_Leap2:	dc.b $F, $43, $44, $FE,	1, 0
SphereAni_Surf:	dc.b $3F, $49, $FF, 0
SphereAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SphereAni_Death1:	dc.b $20, $55, $FF, 0
SphereAni_Drown:	dc.b $2F, $4C, $FF, 0
SphereAni_Death2:	dc.b 3,	$4D, $FF, 0
SphereAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SphereAni_Hurt:	dc.b 3,	$58, $59, $5A, $5B, $5C, $5D, $FF, 0
SphereAni_LZSlide:	dc.b 7, $55, $57, $FF
SphereAni_Blank:	dc.b $77, 0, $FD, 0
SphereAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SphereAni_Float4:	dc.b 3,	$3C, $FD, 0
		even