# &flag[0][0] = &flag
# &flag[0][7] = &flag + 7
# &flag[1][0] = &flag + 12
# &flag[1][7] = &flag + 12 + 7
# &flag[2][7] = &flag + 12 + 12 + 7 = &flag + 2 * 12 + 7
# &flag[row][col] = &flag + row * flag_col + col

.data
flag:	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
    	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
    	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
    	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'


.text
# CONSTANTS
FLAG_ROWS = 6
FLAG_COLS = 12

main:
main_prologue:

main_body:

	# $t0 = row
	li	$t0, 0					# int row = 0
main_body_loop:
	bge	$t0, FLAG_ROWS, main_body_loop_end

	# $t1 = col
	li	$t1, 0					# int col = 0
main_body_loop1:
	bge	$t1, FLAG_COLS, main_body_loop1_end

	# &flag[row][col] = &flag + ((max_col * row) + col) * 1
	# la	$t2, flag		                # $t2 = &flag
	# mul	$t3, FLAG_COLS, $t0	                # $t3 = (max_col * row)
	# add	$t3, $t3, $t1		                # $t3 = (max_col * row) + col
	# add	$t3, $t2, $t3		                # $t3 = &flag + (max_col * row) + col) = &flag[row][col]
	# lb	$a0, ($t3)		                # $a0 = flag[row][col]

	# alternate/shortcut way
	mul	$t2, FLAG_COLS, $t0	                # $t3 = (max_col * row)
	add	$t2, $t2, $t1		                # $t3 = (max_col * row) + col
	lb	$a0, flag($t2)		                # $a0 = flag[row][col]

	li	$v0, 11		                        # printf("%c", &flag[row][col])
	syscall

	addi	$t1, $t1, 1		                # col++
	b	main_body_loop1
main_body_loop1_end:
	li	$a0, '\n'		                # printf("\n")
	li	$v0, 11
	syscall

	addi	$t0, $t0, 1		                # row++
	b	main_body_loop
main_body_loop_end:

main_epilogue:

	li	$v0, 0
	jr	$ra			                # return 0 