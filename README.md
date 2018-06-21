# LionForth

Arithmetic:
* "+"       ( a b -- [a + b] )
* "-"       ( a b -- [a - b] )
* "*"       ( a b -- [a * b] )
* "/"       ( a b -- [a / b] )
* "<"	    ( a b -- [a < b] )
* ">"	    ( a b -- [a > b] )
* "%"	    ( a b -- [a mod b] )

Logic:
* "land"    ( a b -- [a && b] )
* "lor"     ( a b -- [a || b] )
* "not"     ( a -- [!a] )
* "="	    ( a b -- [a == b])

Bit:
* "and"     ( a b -- [a & b] )
* "or"      ( a b -- [a | b] )

RStack:
* ">r"      ( data --  ) ; from data stack to rstack
* "r>"      (  -- data ) ; from rstack to data stack
* "r@"      (  -- data ) ; non destructive

WORDS:

* "quit"	; quit from LionForth

* "rot"     ( a b c -- b c a ) ; move 3rd element to 1st

* "swap"    ( a b -- b a ) ; swap two elements

* "dup"     ( a -- a a ) ; duplicate the element on top of the stack

* "drop"    ( a --   ) ; drop top element of the stack

* "."       ( a --   ) ; print int

* ".S"      ( a b -- a b ) ; show stack

* "key"     (   -- c ) ; read char

* "emit"    ( c --   ) ; write char

* "number"  (   -- n ) ; read int

* "mem_addr"     (   -- mem_address ) ; address of memory

* "last_word_addr" (  -- last_word ) ; address of the last word

* "state_addr" (  -- state ) ; put state on top of the stack

* "here_addr" (  -- [here] ) ; put [here] on top of the stack

* "word_buffer_addr" (  -- word_buffer ) ; put word buffer on top 

* "!"       ( data address -- ) ; write data to address

* "@"       ( address -- data ) ; read data from address

* ":" ; start defining word

* ";" ; end of definition IMMEDIATE

* "lit" "n" ; push n

* "word"    ( addr -- length ) ; read word from stdin

* "count"   ( str_address -- length ) ; count length of string

* "c!"	    ( char address -- ) write char

* "c@"	    ( addr -- char) read char

* "branch addr"  ; jmp to xt is stored by addr

* "branch0 addr" ; jmp if tos == 0 +

* "printc"  ( addr count -- ) ; print count chars from addr

* "prints"  ( addr -- ) ; print string from addr

* "syscall" ( call_num a1 a2 a3 a4 a5 a6 -- new_rax new_rdx )

* "," ( a -- ) ; add a to defining word

* "c," ( a -- ) ; add byte to defining word

* "find_word" ( word_addr -- w_word )

* "save_word" ( ex_token -- )  	add ex_token of word to defining word

* "save_num" ( et_token -- )	add ex_token of num to defining word

* "cfa"	      ( w_word -- ex_token ) jump pointer to execution_point place

* "'"         (  -- ex_token ) ; read word and place it's xt

* "execute"   ( ex_token --  ) ; execute word