# sum 4 numbers using function calls


main:
main__prologue:
        begin   
        push	$ra
main__body:
        

main__epilogue:
        pop	$ra
        end
        jr	$ra



sum4:
	# Args:     
	#    - $a0: a
	#    - $a1: b
	#    - $a2: c
	#    - $a3: d
	#
	# Returns:
	#    - $v0: int
	#
	# Frame:    [$ra, $s0, $s1, $s2]
	# Uses:     [$t0, $s0, $s1, $s2, $a0, $a1, $a2, $a3, $v0]
	# Clobbers: [$a0, $a1, $a2, $a3, $v0, $t0]
	#
	# Locals:
	# $s0 = res1
	# $t0 = res2
	# $s1 = c
	# $s2 = d
	#
	# Structure:
	#   sum4
	#   -> [prologue]
	#       -> body
	#   -> [epilogue]
	#
sum4__prologue:
	begin
	push	$ra
	push	$s0
	push	$s1
	push	$s2

sum4__body:

	move	$s1, $a2
	move	$s2, $a3

	jal	sum2		# int res1 = sum2(a, b);
	move	$s0, $v0

	move	$a0, $s1
	move	$a1, $s2
	jal	sum2
	move	$t0, $v0

	move	$a0, $s0
	move	$a1, $t0
	jal	sum2
	# note return value is already $v0

sum4__epilogue:
	pop	$s2
	pop	$s1
	pop	$s0
	pop	$ra
	end

	jr	$ra


sum2:

sum2__prologue:

sum2__body:

sum2__epilogue: