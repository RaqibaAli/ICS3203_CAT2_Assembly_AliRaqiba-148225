section .data
    input dw 5                ; Input number to compute factorial
    result dw 1               ; Result storage initialized to 1
    msg_result db "Factorial: ", 0

section .text
    global _start

_start:
    ; Step 1: Load input number and call factorial subroutine
    mov ax, [input]           ; Load the input number into AX
    call factorial            ; Call the factorial subroutine
    mov [result], ax          ; Store the result in memory

    ; Step 2: Print the result message
    mov eax, 4                ; Syscall for write
    mov ebx, 1                ; File descriptor for stdout
    mov ecx, msg_result       ; Address of result message
    mov edx, 11               ; Length of message
    int 0x80

    ; Step 3: Print the result (convert to ASCII and output)
    mov eax, [result]         ; Load the result
    add eax, '0'              ; Convert integer to ASCII
    mov [result], eax         ; Store ASCII result back
    mov eax, 4                ; Syscall for write
    mov ebx, 1                ; File descriptor for stdout
    lea ecx, [result]         ; Address of the result
    mov edx, 1                ; Length of one character
    int 0x80

    ; Exit the program
    mov eax, 1                ; Syscall for exit
    xor ebx, ebx              ; Exit code 0
    int 0x80

factorial:
    ; Preserve the current state
    push ax                   ; Save AX on the stack
    cmp ax, 1                 ; Compare input with 1
    jle end_factorial         ; If input <= 1, return
    dec ax                    ; Decrement input (n - 1)
    call factorial            ; Recursive call
    pop bx                    ; Restore original AX from stack
    mul bx                    ; Multiply AX by BX (previous value)
end_factorial:
    ret                       ; Return to the caller
