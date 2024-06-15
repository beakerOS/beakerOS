typing:
	mov ah, 0
	int 0x16
	cmp al, 27
	je exit
	mov ah, 0x0e
	int 0x10
	jmp typing
exit:
	jmp $
times 510-($-$$) db 0
db 0x55, 0xaa
