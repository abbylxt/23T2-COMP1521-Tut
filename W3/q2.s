# writing our own data segment

main:

li	$v0, 0			# return 0;
jr	$ra

.data

u:	.space 4	# int u;

v:	.word 42	# int v = 42;

w:	.space 1	# char w;
	.align 3

x:	.byte 'a'	# char x = 'a';
	.align 3

y:	.space 8	# double y;

z:	.space 4*20	# int z[20]
