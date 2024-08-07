( * Music by Martin Sudworth * )
( ** for: Jupiter Ace Forth ** )

( published in Popular Computing Weekly 1983 Vol 2 No 4 )
( https://www.jupiter-ace.co.uk/listing_PCWeekly_830127p15.html )

( FORTH DEFINITIONS DECIMAL )

200 VARIABLE QUA

DEFINER MUSIC , DOES> @ QUA @ BEEP ;
( ** )
( compiler MUSIC is like a new "type" or "class" )
( when defining:  store a named value in dict
( when executing: get the value by name, get qua, run BEEP
( so BEEP is expected to be: "tone len --"
( ** )

478 MUSIC C
426 MUSIC D
379 MUSIC E
358 MUSIC F
319 MUSIC G
284 MUSIC A
268 MUSIC H
239 MUSIC C+
213 MUSIC D+
201 MUSIC EB+
179 MUSIC F+
190 MUSIC E+

( all words are " -- " )

: SCALE C D E F G A B C+ D+ E+ F+ ( R> DROP SCALE ) ;

: PART1 F G A C+ H H D+ C+ C+ F+ E+ F+ C+ A F G A ;

: PART2 PART1 H C+ D+ C+ H A G A F E F G C E G H A G ;

: PART3 PART2 APART1 D C+ H AG F C F E F A C+ F+ C+ A F A C+ ;

: BACH PART3 179 QUA @ 3 * BEEP ;

( speed change ) ( 300 QUA ! )

