# Prints the square of a number

.text
main:
# $t0 = x
# $t1 = y

li	$v0, 4
la	$a0, prompt_str
syscall

li	$v0, 5
syscall
move	$t0, $v0

mul	$t1, $t0, $t0		#     y = x * x;

li	$v0, 1
move	$a0, $t1
syscall

li	$v0, 11
li	$a0, '\n'
syscall

jr	$ra			        # return 0;

.data

prompt_str:
        .asciiz "Enter a number: "