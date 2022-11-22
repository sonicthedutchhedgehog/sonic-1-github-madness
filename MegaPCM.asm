
; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; ===============================================================

; ---------------------------------------------------------------
; Variables used in DAC table
; ---------------------------------------------------------------

; flags
panLR	= $C0
panL	= $80
panR	= $40
pcm	= 0
dpcm	= 4
loop	= 2
pri	= 1

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

z80word macro Value
	dc.w	((\Value)&$FF)<<8|((\Value)&$FF00)>>8
	endm

DAC_Entry macro Pitch,Offset,Flags
	dc.b	\Flags			; 00h	- Flags
	dc.b	\Pitch			; 01h	- Pitch
	dc.b	(\Offset>>15)&$FF	; 02h	- Start Bank
	dc.b	(\Offset\_End>>15)&$FF	; 03h	- End Bank
	z80word	(\Offset)|$8000		; 04h	- Start Offset (in Start bank)
	z80word	(\Offset\_End-1)|$8000	; 06h	- End Offset (in End bank)
	endm
	
IncludeDAC macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	'dac/\Name\.\Extension\',$3A
	else
		incbin	'dac/\Name\.\Extension\'
	endc
\Name\_End:
	endm

; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

MegaPCM:
	incbin	'MegaPCM.z80'

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

	DAC_Entry	$07, Kick, pcm					; $81	- Kick
	DAC_Entry	$0A, Snare, pcm					; $82	- Snare
	DAC_Entry	$1B, Timpani, dpcm				; $83	- Timpani
	DAC_Entry	$04, whoosh, pcm				; $84	- Amogus Whoosh SFX
	DAC_Entry	$03, crack, pcm					; $85	- Amogus Crack SFX
	DAC_Entry	$03, menuscreenmusic, dpcm+pri+loop+panLR	; $86	- Menu
	dc.l	0,0							; $87	- <Free>
	DAC_Entry	$12, Timpani, dpcm				; $88	- Hi-Timpani
	DAC_Entry	$15, Timpani, dpcm				; $89	- Mid-Timpani
	DAC_Entry	$1B, Timpani, dpcm				; $8A	- Mid-Low-Timpani
	DAC_Entry	$1D, Timpani, dpcm				; $8B	- Low-Timpani
	DAC_Entry	$03, sm64_mario_boing, dpcm+pri+panLR		; $8C	- Sonic's voice (definitely by Roger Craig Smith and not Charles Martinet)  
	DAC_Entry	$03, sm64_mario_falling, dpcm+pri+panLR		; $8D   
	DAC_Entry	$03, sm64_mario_hoo, dpcm+pri+panLR		; $8E    
	DAC_Entry	$03, sm64_mario_oof, dpcm+pri+panLR		; $8F
	DAC_Entry	$03, sm64_mario_wah, dpcm+pri+panLR		; $90 
	DAC_Entry	$03, MamaF_er, dpcm+pri+panLR			; $91 	
	DAC_Entry	$03, sm64_mario_hoohoo, dpcm+pri+panLR		; $92    	
	DAC_Entry	$08, sm64_mario_drowning, dpcm+pri+panLR	; $93
	DAC_Entry	$08, sm64_mario_game_over, dpcm+pri+panLR	; $94
	DAC_Entry	$08, sm64_mario_here_we_go, dpcm+pri+panLR	; $95
	DAC_Entry	$08, sm64_mario_hurt, dpcm+pri+panLR		; $96

MegaPCM_End:

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

	IncludeDAC	Kick, wav
	IncludeDAC	Snare, wav
	IncludeDAC	Timpani, bin
	IncludeDAC	whoosh, wav
	IncludeDAC 	crack, wav
	IncludeDAC	menuscreenmusic, bin	
	IncludeDAC	sm64_mario_boing, bin
	IncludeDAC 	sm64_mario_falling, bin
	IncludeDAC	sm64_mario_hoo, bin
	IncludeDAC	sm64_mario_oof, bin
	IncludeDAC 	sm64_mario_wah, bin
	IncludeDAC	sm64_mario_hoohoo, bin
	IncludeDAC	sm64_mario_drowning, bin
	IncludeDAC	sm64_mario_game_over, bin
	IncludeDAC	sm64_mario_here_we_go, bin
	IncludeDAC	sm64_mario_hurt, bin
	IncludeDAC	MamaF_er, bin
	even

