align	macro
	dcb.b	(\1-(*%\1))%\1,0
	endm

; =============================================================
stopZ80	macro
		move.w	#$100,($A11100).l
		nop
		nop
		nop
 
@wait\@:	btst	#0,($A11100).l
		bne.s	@wait\@
	endm
 
; =============================================================
 
startZ80	macro
		move.w	#0,($A11100).l    ; start the Z80
	endm
 
; =============================================================
 
waitYM	macro
@wait\@:	move.b	($A04000).l,d2
		btst	#7,d2
		bne.s	@wait\@
	endm