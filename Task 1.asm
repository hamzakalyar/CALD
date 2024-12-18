include Irvine32.inc    ; Include the Irvine32 library for I/O and memory operations
include Macros.inc      ; Include the Macros library for custom macros

.data
    Uarray WORD 1000h, 2000h, 3000h, 4000h  ; Define the array with 4 values

.code
main proc
mov esi,offset Uarray

    ; Move values from Uarray to registers using direct-offset addressing
    mov eax,0
    mov ax, [esi]        ; Load first value (1000h) into AX register
   
   mov ebx,0
    mov bx, [esi + 2]    ; Load second value (2000h) into BX register
  
   mov ecx, 0
    mov cx, [esi + 4]    ; Load third value (3000h) into CX register
            

    mov edx,0
    mov dx, [esi + 6]    ; Load fourth value (4000h) into DX register
  

    ; Call DumpRegs to display the register values
    call DumpRegs

    exit                    ; Exit the program
main endp
end main