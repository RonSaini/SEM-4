	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN 
	AREA MYCODE,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=SRC1
	LDR R1,=SRC2
	LDR R2,[R0]
	STR R2,[R1]
STOP
	B STOP
SRC1 DCD 8
	AREA MYDATA,DATA,READWRITE
SRC2 DCD 0
	END