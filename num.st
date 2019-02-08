#!/usr/bin/env gst
""
Magic sub: #Num has: 'n mu m2 sd id lo hi txt w'

! Num class methods !
new
  ^super new init !

! Num methods !
init": txt" "I commented this out, but this was here in an attempt to allow txt to be passed in like the psuedocode."
  self n: 0;
       mu: 0;
       m2: 0;
       sd: 0;
       "id: id();" "I don't know what or where id() is, but it doesn't seem to be used.
       This is good, because I can't seem to find an example of how to store a function pointer."
       lo: (10 raisedTo: 32);
       hi: -1 * (10 raisedTo: 32);
       "(self txt): txt;" "I can't figure out how to make this work. This variable also seems to do nothing."
       w: 1 !!

! Num methods !
* aCollection
    aCollection do: [:x| self + x]
!

+ x
  |d|
  
  (x = '?') ifTrue: [ ^x ]. 
  n := (1 + n).
  d := (x - mu).
  mu := (mu + (d / n)).
  m2 := (m2 + (d * (x - mu))).
  (x > hi) ifTrue: [ hi := x ].
  (x < lo) ifTrue: [ lo := x ].
  (n >= 2) ifTrue: [ sd :=  ( ( m2/ ( n - 1 + (10 raisedTo: -32) ) ) raisedTo: 0.5 ) ]. "no idea how to make this exit"
  ^x !
  
- x
  |d|
  
  (x = '?') ifTrue: [ ^x ].
  (n = 1) ifTrue: [ ^x ].
  n := ( n - 1).
  d:= x - ( mu ).
   mu := (mu - (d / n)).
  m2 := (m2 - (d * (x - mu))).
  ( n >= 2) ifTrue: [ sd:=  ( ( m2 / ( ( n) - 1 + (10 raisedTo: -32) ) ) raisedTo: 0.5 ) ]. "I have no idea how to make this exit."
  ^x !
!
