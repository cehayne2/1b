#!/usr/bin/env gst
"---"
 FileStream fileIn: 'my.st' "mytricks" !
 FileStream fileIn: 'num.st' "yourcode" !

 | num |
 num := Num new.
 num * #( 2 3 4 4 4 4 5 5 6 7 7
                  8 9 9 9 9 10 11 12 12).
 num sd asFloatE oo. "==> 3.06"
 num mu oo. "==> 7"
 num n  oo. "==> 20" !