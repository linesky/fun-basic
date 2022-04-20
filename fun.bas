#include "vbcompat.bi"
public const ins=0
public const outs=1
Declare Function wiringpisetup cdecl lib "wiringPi" Alias "wiringPiSetup"  () As integer
Declare sub pinmode cdecl lib "wiringPi" Alias "pinMode"  (n as integer,mode as integer )
Declare function digitalRead cdecl lib "wiringPi" Alias "digitalRead"  (n as integer)as integer
Declare sub digitalWrite cdecl lib "wiringPi" Alias "digitalWrite"  (n as integer,value as integer)

dim ii as double
dim i as integer
dim f as double
dim ff as double
dim fff as double
on error goto exits
if wiringpisetup()=-1 then system()
'pin 7 gpio 4
pinmode 7,1
if command(1)<>"" then
	if command(1)="on" then digitalWrite 7,1
	if command(1)="off" then digitalWrite 7,0
else
	print "fun on;fun off"
end if
exits:
