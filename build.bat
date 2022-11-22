@echo off
asm68k /o op+,os+,ow+,oz+,oaq+,osq+,omq+ /p /o ae- sonic1.asm, s1built.bin, s1built.sym, sonic1.lst
convsym sonic1.lst s1built.bin -input asm68k_lst -inopt "/localSign=@ /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe s1built.bin
pause