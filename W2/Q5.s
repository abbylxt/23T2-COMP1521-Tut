# Squares a number, unless its square is too big for a 32-bit integer.
# If it is too big, prints an error message instead.

SQUARE_MAX = 46340

main:
# $t0 = x
# $t1 = y

li	$v0, 4
la	$a0, prompt_str
syscall

li	$v0, 5
syscall
move	$t0, $v0

if: 
ble	$t0, SQUARE_MAX, else1

li	$v0, 4
la	$a0, too_big_str
syscall

b	end

else1:
mul	$t1, $t0, $t0		# y = x * x;

li	$v0, 1			# printf("%d\n", y);
move	$a0, $t1
syscall

li	$v0, 11
li	$a0, '\n'
syscall

end:

li	$v0, 1
jr	$ra			 # return 0;


.data

prompt_str:
        .asciiz "Enter a number: "

too_big_str:
	.ascii "square too big for 32 bits\n\0"