cleveland_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     cleveland_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       cleveland_DAC
	smpsHeaderFM        cleveland_FM1,	$00, $08
	smpsHeaderFM        cleveland_FM2,	$00, $0D
	smpsHeaderFM        cleveland_FM3,	$00, $10
	smpsHeaderFM        cleveland_FM4,	$00, $1A
	smpsHeaderFM        cleveland_FM5,	$00, $10
	smpsHeaderPSG       cleveland_PSG1,	$00, $02, $00, fTone_09
	smpsHeaderPSG       cleveland_PSG2,	$00, $02, $00, fTone_09
	smpsHeaderPSG       cleveland_PSG3,	$00, $02, $00, fTone_02

; DAC Data
cleveland_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnare, $06, $06, $06, dKick, $0C, dSnare, $06, $0C

cleveland_Loop00:
	dc.b	dKick, $12, $06, $0C, dSnare
	smpsLoop            $00, $09, cleveland_Loop00
	dc.b	dKick, $12, $06, $06, dSnare, dSnare

cleveland_Loop01:
	dc.b	dSnare, dKick, $0C, dSnare, $06, dKick, dKick, $0C
	smpsLoop            $00, $03, cleveland_Loop01
	dc.b	dSnare, dKick, dSnare, $06, dKick, dKick, dSnare

cleveland_Loop02:
	dc.b	dSnare, $0C, dKick, dSnare, $06, dKick, dKick, $0C
	smpsLoop            $00, $03, cleveland_Loop02
	dc.b	dSnare, dKick, dSnare, $06, dKick, dKick, dSnare, dSnare, dSnare
	smpsJump            cleveland_Loop00

; FM1 Data
cleveland_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $1E, nE4, $06, nG4, nE4

cleveland_Jump03:
	dc.b	nG4, $06, nRst, $03, nG4, $06, nRst, $03, nA4, $06, nRst, nE4
	dc.b	nE4, $03, nD4, nC4, $06, $06, nRst, $03, nC4, $06, nRst, $03
	dc.b	nA3, $06, nRst, nE4, nG4, nE4, nG4, nRst, $03, nG4, $06, nRst
	dc.b	$03, nA4, $06, nRst, nE4, nE4, $03, nD4, nC4, $06, $06, nRst
	dc.b	$03, nC4, $06, nRst, $03, nD4, $06, nRst, nA4, nC5, nA4, nC5
	dc.b	nRst, $03, nC5, $06, nRst, $03, nD5, $06, nRst, nE5, nE5, $03
	dc.b	nD5, nC5, $06, $06, nRst, $03, nC5, $06, nRst, $03, nD5, $06
	dc.b	nRst, nE5, nD5, nB4, nD5, nRst, $03, nC5, $06, nRst, $03, nA4
	dc.b	$06, nRst, nB4, nA4, $03, nG4, nA4, $06, $06, nRst, $03, nA4
	dc.b	$06, nRst, $03, nB4, $06, nRst, $0C, nC5, $06, nRst, nD5, $04
	dc.b	nC5, nD5, nC5, $1E, nRst, $30, nA4, $06

cleveland_Loop06:
	dc.b	nC5, nRst, $03, nA4, $06, nRst, $03, nG4, $06
	smpsLoop            $00, $02, cleveland_Loop06
	dc.b	nA4, nRst, $03, nG4, $06, nE4, $03, nG4, $12, nRst, $06, nG4

cleveland_Loop07:
	dc.b	nC5, nRst, $03, nA4, $06, nRst, $03, nG4, $06
	smpsLoop            $00, $02, cleveland_Loop07
	dc.b	nA4, nRst, $03, nB4, $06, nA4, $03, nCs5, $0F, nRst, $09, nA4
	dc.b	$06

cleveland_Loop08:
	dc.b	nC5, nRst, $03, nA4, $06, nRst, $03, nG4, $06
	smpsLoop            $00, $02, cleveland_Loop08
	dc.b	nA4, nRst, $03, nG4, $06, nE4, $03, nG4, $0F, nRst, $09

cleveland_Loop09:
	dc.b	nG4, $06, nC5, nRst, $03, nA4, $06, nRst, $03
	smpsLoop            $00, $02, cleveland_Loop09
	dc.b	nG4, $06, nA4, nRst, $03, nG4, $06, nD4, $03, nE4, $06, nRst
	dc.b	nE4, nG4, nE4
	smpsJump            cleveland_Jump03

; FM2 Data
cleveland_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $12, nD2, $0C, nG2, $03, nRst, nG2, nRst, $09

cleveland_Loop04:
	dc.b	nC2, $0F, nRst, $03, nE2, nRst, nG2, $09, nRst, $03, nA2, $09
	dc.b	nRst, $03, nB2, $0F, nRst, $03, nA2, nRst, nG2, $09, nRst, $03
	dc.b	nE2, $09, nRst, $03
	smpsLoop            $00, $02, cleveland_Loop04

cleveland_Loop05:
	dc.b	nF2, $0F, nRst, $03, nA2, nRst, nC3, $09, nRst, $03, nD3, $09
	dc.b	nRst, $03, nE3, $0F, nRst, $03, nD3, nRst, nC3, $09, nRst, $03
	dc.b	nA2, $09, nRst, $03
	smpsLoop            $00, $02, cleveland_Loop05
	dc.b	nC2, $0F, nRst, $03, nE2, nRst, nG2, $09, nRst, $03, nE2, $09
	dc.b	nRst, $03, nC3, nRst, nC3, $06, nG2, nC3, nFs2, $18, nF2, $06
	dc.b	nRst, $0C, nF2, $06, nE2, nRst, $0C, nE2, $06, nD2, nRst, $0C
	dc.b	nD2, $06, nC2, nD2, nE2, $0C, nF2, $06, nRst, $0C, nF2, $06
	dc.b	nE2, nRst, $0C, nE2, $06, nA2, nRst, $0C, nA2, $06, $18, nF2
	dc.b	$06, nRst, $0C, nF2, $06, nE2, nRst, $0C, nE2, $06, nD2, nRst
	dc.b	$0C, nD2, $06, nC2, nD2, nE2, $0C, nF2, $06, nRst, $0C, nF2
	dc.b	$06, nBb2, nRst, $0C, nBb2, $06, nC3, nRst, $0C, nC3, $06, nG2
	dc.b	$0C, $0C
	smpsJump            cleveland_Loop04

; FM3 Data
cleveland_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	smpsModSet          $01, $01, $01, $04
	dc.b	nA5, $06, nF5, nD5, nG5, $0A, nRst, $02, nG5, $03, nRst, nG5
	dc.b	nRst, $09

cleveland_Jump02:
	dc.b	nRst, $7F, $7F, $7F, $63, nE5, $48, nF5, $0C, nG5, nC5, $30
	dc.b	nRst, nE5, $48, nF5, $0C, nG5, nC5, $18, nD5, nE5, nG5
	smpsJump            cleveland_Jump02

; FM4 Data
cleveland_FM4:
	smpsPan             panRight, $00
	smpsAlterVol        $FC
	smpsAlterNote       $02
	smpsSetvoice        $03
	smpsModSet          $02, $01, $02, $04
	dc.b	nA5, $06, nF5, nD5, nG5, $0A, nRst, $02, nG5, $03, nRst, nG5
	dc.b	nRst, $09

cleveland_Jump01:
	dc.b	nRst, $7F, $7F, $7F, $63, nE5, $48, nF5, $0C, nG5, nC5, $30
	dc.b	nRst, nE5, $48, nF5, $0C, nG5, nC5, $18, nD5, nE5, nG5
	smpsJump            cleveland_Jump01

; FM5 Data
cleveland_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nC5, $06, nA4, nF4, nC5, $09, nRst, $03, nC5, nRst, nC5, nRst
	dc.b	$09
	smpsSetvoice        $02

cleveland_Jump00:
	dc.b	nRst, $4E
	smpsAlterVol        $03
	dc.b	nG4, $03, nA4, nC5, nRst, nA4, nRst, $51, nE5, $03, nC5, nA4
	dc.b	nRst, nC5, nRst, $51, nC5, $03, nD5, nF5, nRst, nD5, nRst, $51
	dc.b	nA5, $03, nF5, nC5, nRst, nF5, nRst, $39, nG4, $06, nRst, nA4
	dc.b	nRst, nBb4, $03, nRst, nBb4, nRst, nCs5, nRst, nE5, $12, $06, nD5
	dc.b	$12, $06, nC5, $12, $06, nB4, nC5, nD5, $0C, nE5, $12, $06
	dc.b	nD5, $12, $06, nRst, nA4, nRst, nB4, nRst, nCs5, nCs5, nE5, nE5
	dc.b	$12, $06, nD5, $12, $06, nC5, $12, $06, nB4, nC5, nD5, $0C
	dc.b	nE5, $12, $06, nD5, $12, $06, nRst, nG4, $03, nA4

cleveland_Loop03:
	dc.b	nC5, nC5, nA4, nG4
	smpsLoop            $00, $03, cleveland_Loop03
	smpsAlterVol        $FD
	smpsJump            cleveland_Jump00

; PSG1 Data
cleveland_PSG1:
	dc.b	nA2, $02, nRst, $01, nA2, $02, nRst, $01, nF2, $02, nRst, $01
	dc.b	nF2, $02, nRst, $01, nD2, $02, nRst, $01, nD2, $20, nRst, $01

cleveland_Jump06:
	dc.b	nRst, $06

cleveland_Loop11:
	dc.b	nE2, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop11
	dc.b	nE2, $05, nRst, $07, nE2, $0B, nRst, $01, nE2, $0B, nRst, $01
	dc.b	nE2, $02, nRst, $01, nE2, $08, nRst, $01, nE2, $05, nRst, $07
	smpsLoop            $01, $02, cleveland_Loop11

cleveland_Loop12:
	dc.b	nA2, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop12
	dc.b	nA2, $05, nRst, $07, nA2, $0B, nRst, $01, nA2, $0B, nRst, $01
	dc.b	nA2, $02, nRst, $01, nA2, $08, nRst, $01, nA2, $05, nRst, $07
	smpsLoop            $01, $02, cleveland_Loop12

cleveland_Loop13:
	dc.b	nE2, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop13
	dc.b	nE2, $05, nRst, $07, nE2, $02, nRst, $01, nE2, $08, nRst, $01
	dc.b	nE2, $0B, nRst, $01, nBb2, $0B, nRst, $01, nBb2, $05, nRst, $07
	dc.b	nA2, $0B, nRst, $01, nA2, $0B, nRst, $01, nG2, $02, nRst, $01
	dc.b	nG2, $08, nRst, $01, nG2, $05, nRst, $07, nF2, $0B, nRst, $01
	dc.b	nF2, $0B, nRst, $01, nE2, $02, nRst, $01, nE2, $08, nRst, $01
	dc.b	nE2, $05, nRst, $07, nA2, $0B, nRst, $01, nA2, $0B, nRst, $01
	dc.b	nG2, $02, nRst, $01, nG2, $08, nRst, $01, nG2, $05, nRst, $07
	dc.b	nB2, $0B, nRst, $01, nB2, $0B, nRst, $01, nB2, $02, nRst, $01
	dc.b	nB2, $08, nRst, $01, nB2, $05, nRst, $07, nA2, $0B, nRst, $01
	dc.b	nA2, $0B, nRst, $01, nG2, $02, nRst, $01, nG2, $08, nRst, $01
	dc.b	nG2, $05, nRst, $07, nF2, $0B, nRst, $01, nF2, $0B, nRst, $01
	dc.b	nE2, $02, nRst, $01, nE2, $08, nRst, $01, nE2, $05, nRst, $07
	dc.b	nA2, $0B, nRst, $01, nA2, $0B, nRst, $01, nBb2, $02, nRst, $01
	dc.b	nBb2, $08, nRst, $01, nBb2, $05, nRst, $07, nE2, $0B, nRst, $01
	dc.b	nE2, $05, nRst, $01, nD2, $05, nRst, $01, nF2, $05, nRst, $01
	dc.b	nA2, $0B, nRst, $01
	smpsJump            cleveland_Jump06

; PSG2 Data
cleveland_PSG2:
	dc.b	nC3, $02, nRst, $01, nC3, $02, nRst, $01, nA2, $02, nRst, $01
	dc.b	nA2, $02, nRst, $01, nF2, $02, nRst, $01, nF2, $20, nRst, $01

cleveland_Jump05:
	dc.b	nRst, $06

cleveland_Loop0E:
	dc.b	nG2, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop0E
	dc.b	nG2, $05, nRst, $07, nG2, $0B, nRst, $01, nG2, $0B, nRst, $01
	dc.b	nG2, $02, nRst, $01, nG2, $08, nRst, $01, nG2, $05, nRst, $07
	smpsLoop            $01, $02, cleveland_Loop0E

cleveland_Loop0F:
	dc.b	nC3, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop0F
	dc.b	nC3, $05, nRst, $07, nC3, $0B, nRst, $01, nC3, $0B, nRst, $01
	dc.b	nC3, $02, nRst, $01, nC3, $08, nRst, $01, nC3, $05, nRst, $07
	smpsLoop            $01, $02, cleveland_Loop0F

cleveland_Loop10:
	dc.b	nG2, $0B, nRst, $01
	smpsLoop            $00, $03, cleveland_Loop10
	dc.b	nG2, $05, nRst, $07, nG2, $02, nRst, $01, nG2, $08, nRst, $01
	dc.b	nG2, $0B, nRst, $01, nCs3, $0B, nRst, $01, nCs3, $05, nRst, $07
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $01, nB2, $02, nRst, $01
	dc.b	nB2, $08, nRst, $01, nB2, $05, nRst, $07, nA2, $0B, nRst, $01
	dc.b	nA2, $0B, nRst, $01, nG2, $02, nRst, $01, nG2, $08, nRst, $01
	dc.b	nG2, $05, nRst, $07, nC3, $0B, nRst, $01, nC3, $0B, nRst, $01
	dc.b	nB2, $02, nRst, $01, nB2, $08, nRst, $01, nB2, $05, nRst, $07
	dc.b	nD3, $0B, nRst, $01, nD3, $0B, nRst, $01, nCs3, $02, nRst, $01
	dc.b	nCs3, $08, nRst, $01, nCs3, $05, nRst, $07, nC3, $0B, nRst, $01
	dc.b	nC3, $0B, nRst, $01, nB2, $02, nRst, $01, nB2, $08, nRst, $01
	dc.b	nB2, $05, nRst, $07, nA2, $0B, nRst, $01, nA2, $0B, nRst, $01
	dc.b	nG2, $02, nRst, $01, nG2, $08, nRst, $01, nG2, $05, nRst, $07
	dc.b	nC3, $0B, nRst, $01, nC3, $0B, nRst, $01, nD3, $02, nRst, $01
	dc.b	nD3, $08, nRst, $01, nD3, $05, nRst, $07, nG2, $0B, nRst, $01
	dc.b	nG2, $05, nRst, $01, nF2, $05, nRst, $01, nA2, $05, nRst, $01
	dc.b	nC3, $0B, nRst, $01
	smpsJump            cleveland_Jump05

; PSG3 Data
cleveland_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $12
	dc.b	nMaxPSG, $0C, $06, $0C

cleveland_Jump04:
	dc.b	nMaxPSG, $0C, $06, $06, $06, $06, $06, $06, $0C, $06, $06, $06
	dc.b	$06, $06, $03, $03, $0C, $06, $06, $06, $06, $06, $06, $0C
	dc.b	$06, $06, $03, $03, $06, $03, $03

cleveland_Loop0A:
	dc.b	$06, $0C, $06, $06, $06, $06, $06
	smpsLoop            $00, $02, cleveland_Loop0A
	dc.b	$03, $03

cleveland_Loop0B:
	dc.b	$0C, $06, $06, $06, $06, $06, $06
	smpsLoop            $00, $03, cleveland_Loop0B
	dc.b	$0C, $06, $06, $06, $06, $06, $09, $06, $06, $03

cleveland_Loop0C:
	dc.b	$06
	smpsLoop            $00, $19, cleveland_Loop0C
	dc.b	$03, $03, $06, $03, $03, $09, $06, $06, $03

cleveland_Loop0D:
	dc.b	$06
	smpsLoop            $00, $19, cleveland_Loop0D
	smpsPSGAlterVol     $FF
	dc.b	$0C, $0C
	smpsPSGAlterVol     $01
	smpsJump            cleveland_Jump04

cleveland_Voices:
;	Voice $00
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $01
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $03
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $92, $A7, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $12, $1A

;	Voice $04
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

