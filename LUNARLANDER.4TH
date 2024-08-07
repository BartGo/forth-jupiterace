( yet untested, likely corrupted )
https://www.jupiter-ace.co.uk/listing_PCWeekly_830421p28.html

( --- )
( "[IG3]"   : INVERSE VIDEO GRAPHICS 3
( "[IG4]"   : INVERSE VIDEO GRAPHICS 4
( "[G7]"    : GRAPHICS 7
( --- )

0 VARIABLE S 
1 VARIABLE X 
1 VARIABLE Y 
0 VARIABLE A 
0 VARIABLE B 

: SEEDON S @ 75 U* 75 0 D+ OVER OVER U< - - 1 1 DUP S ! ;

: RND SEEDON U* SWAP DROP ;

: LL
  CLS
  1 X !
  30 RND Y !
  0 A !
  1000 0 DO
    30 0 DO
	  19 I DUP B !
	  AT ." [IG3][IG4][G7]"
	  X @ Y @ AT " " A @ 1+ A !
	  INKEY 53 = IF Y @ 1 ! THEN
	  INKEY 56 = IF Y @ 1+ Y ! THEN
	  X @ 1+ X !
	  INKEY 54 = IF X @ 2- X ! THEN
	  X @ 19 =
	  IF Y @ B@ >
  	    IF
	      Y @ B @ 3 + <
		  IF
		    ." *DID IT!* SCORE ="
	        A @ .
	        10 100 DO
  	          I 100 BEEP
	        -10 +LOOP
	        QUIT
	      THEN
	    THEN
      THEN
	  X @ 19 =
	  IF
	    Y @ B @ 1+
	    IF
  	      ." **CRASHED**"
		  450 1000 BEEP QUIT
	    THEN
	    Y @ B @ 3 + >
	    IF ." **CRASHED**"
		  450 1000 BEEP QUIT
	    THEN
	  THEN
	  X @ Y @ AT " Y" 300 60 BEEP
	LOOP
  LOOP ;   
