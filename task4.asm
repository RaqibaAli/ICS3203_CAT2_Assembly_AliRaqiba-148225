section .data
    sensor_value dw 8          ; Simulated sensor value
    motor_status dw 0          ; Motor status (0 = off, 1 = on)
    alarm_status dw 0          ; Alarm status (0 = off, 1 = on)

section .text
    global _start

_start:
    ; Step 1: Load the sensor value
    mov ax, [sensor_value]     ; Load sensor value into AX

    ; Step 2: Determine action based on sensor value
    cmp ax, 10                 ; Compare sensor value with 10
    jg trigger_alarm           ; Jump to trigger_alarm if value > 10
    cmp ax, 5                  ; Compare sensor value with 5
    jl stop_motor              ; Jump to stop_motor if value < 5
    jmp start_motor            ; Otherwise, jump to start_motor

trigger_alarm:
    ; Step 3: Trigger the alarm
    mov [alarm_status], 1      ; Set alarm status to 1 (on)
    jmp exit                   ; Skip remaining actions

stop_motor:
    ; Step 4: Stop the motor
    mov [motor_status], 0      ; Set motor status to 0 (off)
    jmp exit                   ; Skip remaining actions

start_motor:
    ; Step 5: Start the motor
    mov [motor_status], 1      ; Set motor status to 1 (on)

exit:
    ; Exit the program
    mov eax, 1                 ; Syscall for exit
    xor ebx, ebx               ; Exit code 0
    int 0x80
