;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module queue
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vTaskInternalSetTimeOutState
	.globl _vTaskMissedYield
	.globl _xTaskRemoveFromEventList
	.globl _vTaskPlaceOnEventList
	.globl _xTaskCheckForTimeOut
	.globl _xTaskResumeAll
	.globl _vTaskSuspendAll
	.globl _vListInitialise
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _vPortYield
	.globl ___memcpy
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _NSSMD1
	.globl _NSSMD0
	.globl _TXBMT
	.globl _SPIEN
	.globl _AD0EN
	.globl _AD0TM
	.globl _AD0INT
	.globl _AD0BUSY
	.globl _AD0WINT
	.globl _AD0CM2
	.globl _AD0CM1
	.globl _AD0CM0
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _PARITY
	.globl _TF2H
	.globl _TF2
	.globl _TF2L
	.globl _TF2LEN
	.globl _T2CE
	.globl _T2SPLIT
	.globl _TR2
	.globl _T2CSS
	.globl _T2XCLK
	.globl _MASTER
	.globl _TXMODE
	.globl _STA
	.globl _STO
	.globl _ACKRQ
	.globl _ARBLOST
	.globl _ACK
	.globl _SI
	.globl _PSPI0
	.globl _PT2
	.globl _PS0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ESPI0
	.globl _ET2
	.globl _ES0
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0MODE
	.globl _SM0
	.globl _MCE0
	.globl _SM2
	.globl _REN0
	.globl _REN
	.globl _TB80
	.globl _TB8
	.globl _RB80
	.globl _RB8
	.globl _TI0
	.globl _TI
	.globl _RI0
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _SBRL1
	.globl _TMR3RL
	.globl _TMR3
	.globl _TMR2RL
	.globl _RCAP2
	.globl _TMR2
	.globl _TMR1
	.globl _TMR0
	.globl _VDM0CN
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _P4MDIN
	.globl _P3MDIN
	.globl _P3MODE
	.globl _P2MDIN
	.globl _P2MODE
	.globl _P1MDIN
	.globl _P1MODE
	.globl _P0MDIN
	.globl _P0MODE
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _SMOD1
	.globl _INT01CF
	.globl _IT01CF
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _P3SKIP
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _USB0XCN
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _SBUF1
	.globl _SCON1
	.globl _REF0CN
	.globl _PSW
	.globl _TMR2H
	.globl _TH2
	.globl _TMR2L
	.globl _TL2
	.globl _TMR2RLH
	.globl _RCAP2H
	.globl _TMR2RLL
	.globl _RCAP2L
	.globl _REG0CN
	.globl _TMR2CN
	.globl _T2CON
	.globl _P4
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0CF
	.globl _AMX0P
	.globl _AMX0N
	.globl _CLKMUL
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _SBRLH1
	.globl _SBRLL1
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl _PFE0CN
	.globl _P4MDOUT
	.globl _SBCON1
	.globl __XPAGE
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _SPI0DAT
	.globl _SPI0CKR
	.globl _SPI0CFG
	.globl _P2
	.globl _CPT0MX
	.globl _CPT1MX
	.globl _CPT0MD
	.globl _CPT1MD
	.globl _CPT0CN
	.globl _CPT1CN
	.globl _SBUF0
	.globl _SBUF
	.globl _SCON0
	.globl _SCON
	.globl _USB0DAT
	.globl _USB0ADR
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _OSCLCN
	.globl _EMI0CF
	.globl _EMI0TC
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _xQueueGenericReset
	.globl _xQueueGenericCreate
	.globl _xQueueGenericSend
	.globl _xQueueGenericSendFromISR
	.globl _xQueueGiveFromISR
	.globl _xQueueReceive
	.globl _xQueueSemaphoreTake
	.globl _xQueuePeek
	.globl _xQueueReceiveFromISR
	.globl _xQueuePeekFromISR
	.globl _uxQueueMessagesWaiting
	.globl _uxQueueSpacesAvailable
	.globl _uxQueueMessagesWaitingFromISR
	.globl _vQueueDelete
	.globl _xQueueIsQueueEmptyFromISR
	.globl _xQueueIsQueueFullFromISR
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$EMI0TC$0_0$0 == 0x0084
_EMI0TC	=	0x0084
G$EMI0CF$0_0$0 == 0x0085
_EMI0CF	=	0x0085
G$OSCLCN$0_0$0 == 0x0086
_OSCLCN	=	0x0086
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0_0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0_0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0_0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0_0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0_0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0_0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0_0$0 == 0x0095
_TMR3H	=	0x0095
G$USB0ADR$0_0$0 == 0x0096
_USB0ADR	=	0x0096
G$USB0DAT$0_0$0 == 0x0097
_USB0DAT	=	0x0097
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SCON0$0_0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0_0$0 == 0x0099
_SBUF0	=	0x0099
G$CPT1CN$0_0$0 == 0x009a
_CPT1CN	=	0x009a
G$CPT0CN$0_0$0 == 0x009b
_CPT0CN	=	0x009b
G$CPT1MD$0_0$0 == 0x009c
_CPT1MD	=	0x009c
G$CPT0MD$0_0$0 == 0x009d
_CPT0MD	=	0x009d
G$CPT1MX$0_0$0 == 0x009e
_CPT1MX	=	0x009e
G$CPT0MX$0_0$0 == 0x009f
_CPT0MX	=	0x009f
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$SPI0CFG$0_0$0 == 0x00a1
_SPI0CFG	=	0x00a1
G$SPI0CKR$0_0$0 == 0x00a2
_SPI0CKR	=	0x00a2
G$SPI0DAT$0_0$0 == 0x00a3
_SPI0DAT	=	0x00a3
G$P0MDOUT$0_0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0_0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0_0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0_0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$CLKSEL$0_0$0 == 0x00a9
_CLKSEL	=	0x00a9
G$EMI0CN$0_0$0 == 0x00aa
_EMI0CN	=	0x00aa
G$_XPAGE$0_0$0 == 0x00aa
__XPAGE	=	0x00aa
G$SBCON1$0_0$0 == 0x00ac
_SBCON1	=	0x00ac
G$P4MDOUT$0_0$0 == 0x00ae
_P4MDOUT	=	0x00ae
G$PFE0CN$0_0$0 == 0x00af
_PFE0CN	=	0x00af
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0_0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0_0$0 == 0x00b2
_OSCICN	=	0x00b2
G$OSCICL$0_0$0 == 0x00b3
_OSCICL	=	0x00b3
G$SBRLL1$0_0$0 == 0x00b4
_SBRLL1	=	0x00b4
G$SBRLH1$0_0$0 == 0x00b5
_SBRLH1	=	0x00b5
G$FLSCL$0_0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0_0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$CLKMUL$0_0$0 == 0x00b9
_CLKMUL	=	0x00b9
G$AMX0N$0_0$0 == 0x00ba
_AMX0N	=	0x00ba
G$AMX0P$0_0$0 == 0x00bb
_AMX0P	=	0x00bb
G$ADC0CF$0_0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0L$0_0$0 == 0x00bd
_ADC0L	=	0x00bd
G$ADC0H$0_0$0 == 0x00be
_ADC0H	=	0x00be
G$SMB0CN$0_0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0CF$0_0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0DAT$0_0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$ADC0GTL$0_0$0 == 0x00c3
_ADC0GTL	=	0x00c3
G$ADC0GTH$0_0$0 == 0x00c4
_ADC0GTH	=	0x00c4
G$ADC0LTL$0_0$0 == 0x00c5
_ADC0LTL	=	0x00c5
G$ADC0LTH$0_0$0 == 0x00c6
_ADC0LTH	=	0x00c6
G$P4$0_0$0 == 0x00c7
_P4	=	0x00c7
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$TMR2CN$0_0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$REG0CN$0_0$0 == 0x00c9
_REG0CN	=	0x00c9
G$RCAP2L$0_0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$TMR2RLL$0_0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$RCAP2H$0_0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TMR2RLH$0_0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TMR2L$0_0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$TMR2H$0_0$0 == 0x00cd
_TMR2H	=	0x00cd
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0_0$0 == 0x00d1
_REF0CN	=	0x00d1
G$SCON1$0_0$0 == 0x00d2
_SCON1	=	0x00d2
G$SBUF1$0_0$0 == 0x00d3
_SBUF1	=	0x00d3
G$P0SKIP$0_0$0 == 0x00d4
_P0SKIP	=	0x00d4
G$P1SKIP$0_0$0 == 0x00d5
_P1SKIP	=	0x00d5
G$P2SKIP$0_0$0 == 0x00d6
_P2SKIP	=	0x00d6
G$USB0XCN$0_0$0 == 0x00d7
_USB0XCN	=	0x00d7
G$PCA0CN$0_0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0_0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0_0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0_0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0_0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0_0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0_0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$P3SKIP$0_0$0 == 0x00df
_P3SKIP	=	0x00df
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0_0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0_0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0_0$0 == 0x00e3
_XBR2	=	0x00e3
G$IT01CF$0_0$0 == 0x00e4
_IT01CF	=	0x00e4
G$INT01CF$0_0$0 == 0x00e4
_INT01CF	=	0x00e4
G$SMOD1$0_0$0 == 0x00e5
_SMOD1	=	0x00e5
G$EIE1$0_0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0_0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0_0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0CPL1$0_0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA0CPH1$0_0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA0CPL2$0_0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA0CPH2$0_0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$PCA0CPL3$0_0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPH3$0_0$0 == 0x00ee
_PCA0CPH3	=	0x00ee
G$RSTSRC$0_0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$P0MODE$0_0$0 == 0x00f1
_P0MODE	=	0x00f1
G$P0MDIN$0_0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$P1MODE$0_0$0 == 0x00f2
_P1MODE	=	0x00f2
G$P1MDIN$0_0$0 == 0x00f2
_P1MDIN	=	0x00f2
G$P2MODE$0_0$0 == 0x00f3
_P2MODE	=	0x00f3
G$P2MDIN$0_0$0 == 0x00f3
_P2MDIN	=	0x00f3
G$P3MODE$0_0$0 == 0x00f4
_P3MODE	=	0x00f4
G$P3MDIN$0_0$0 == 0x00f4
_P3MDIN	=	0x00f4
G$P4MDIN$0_0$0 == 0x00f5
_P4MDIN	=	0x00f5
G$EIP1$0_0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0_0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0_0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0L$0_0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0_0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0_0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0_0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL4$0_0$0 == 0x00fd
_PCA0CPL4	=	0x00fd
G$PCA0CPH4$0_0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$VDM0CN$0_0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$TMR0$0_0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TMR1$0_0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TMR2$0_0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$RCAP2$0_0$0 == 0xcbca
_RCAP2	=	0xcbca
G$TMR2RL$0_0$0 == 0xcbca
_TMR2RL	=	0xcbca
G$TMR3$0_0$0 == 0x9594
_TMR3	=	0x9594
G$TMR3RL$0_0$0 == 0x9392
_TMR3RL	=	0x9392
G$SBRL1$0_0$0 == 0xb5b4
_SBRL1	=	0xb5b4
G$ADC0$0_0$0 == 0xbebd
_ADC0	=	0xbebd
G$ADC0GT$0_0$0 == 0xc4c3
_ADC0GT	=	0xc4c3
G$ADC0LT$0_0$0 == 0xc6c5
_ADC0LT	=	0xc6c5
G$PCA0$0_0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0_0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP1$0_0$0 == 0xeae9
_PCA0CP1	=	0xeae9
G$PCA0CP2$0_0$0 == 0xeceb
_PCA0CP2	=	0xeceb
G$PCA0CP3$0_0$0 == 0xeeed
_PCA0CP3	=	0xeeed
G$PCA0CP4$0_0$0 == 0xfefd
_PCA0CP4	=	0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0_0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0_0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0_0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0_0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0_0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0_0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0_0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0_0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0_0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0_0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0_0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0_0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0_0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0_0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0_0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0_0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$RI0$0_0$0 == 0x0098
_RI0	=	0x0098
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$TI0$0_0$0 == 0x0099
_TI0	=	0x0099
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$RB80$0_0$0 == 0x009a
_RB80	=	0x009a
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$TB80$0_0$0 == 0x009b
_TB80	=	0x009b
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$REN0$0_0$0 == 0x009c
_REN0	=	0x009c
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$MCE0$0_0$0 == 0x009d
_MCE0	=	0x009d
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$S0MODE$0_0$0 == 0x009f
_S0MODE	=	0x009f
G$P2_0$0_0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0_0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0_0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0_0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0_0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0_0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0_0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0_0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$ES0$0_0$0 == 0x00ac
_ES0	=	0x00ac
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$ESPI0$0_0$0 == 0x00ae
_ESPI0	=	0x00ae
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0_0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0_0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0_0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0_0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0_0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0_0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0_0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0_0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$PS0$0_0$0 == 0x00bc
_PS0	=	0x00bc
G$PT2$0_0$0 == 0x00bd
_PT2	=	0x00bd
G$PSPI0$0_0$0 == 0x00be
_PSPI0	=	0x00be
G$SI$0_0$0 == 0x00c0
_SI	=	0x00c0
G$ACK$0_0$0 == 0x00c1
_ACK	=	0x00c1
G$ARBLOST$0_0$0 == 0x00c2
_ARBLOST	=	0x00c2
G$ACKRQ$0_0$0 == 0x00c3
_ACKRQ	=	0x00c3
G$STO$0_0$0 == 0x00c4
_STO	=	0x00c4
G$STA$0_0$0 == 0x00c5
_STA	=	0x00c5
G$TXMODE$0_0$0 == 0x00c6
_TXMODE	=	0x00c6
G$MASTER$0_0$0 == 0x00c7
_MASTER	=	0x00c7
G$T2XCLK$0_0$0 == 0x00c8
_T2XCLK	=	0x00c8
G$T2CSS$0_0$0 == 0x00c9
_T2CSS	=	0x00c9
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$T2SPLIT$0_0$0 == 0x00cb
_T2SPLIT	=	0x00cb
G$T2CE$0_0$0 == 0x00cc
_T2CE	=	0x00cc
G$TF2LEN$0_0$0 == 0x00cd
_TF2LEN	=	0x00cd
G$TF2L$0_0$0 == 0x00ce
_TF2L	=	0x00ce
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$TF2H$0_0$0 == 0x00cf
_TF2H	=	0x00cf
G$PARITY$0_0$0 == 0x00d0
_PARITY	=	0x00d0
G$F1$0_0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0_0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0_0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0_0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0_0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0_0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0_0$0 == 0x00de
_CR	=	0x00de
G$CF$0_0$0 == 0x00df
_CF	=	0x00df
G$AD0CM0$0_0$0 == 0x00e8
_AD0CM0	=	0x00e8
G$AD0CM1$0_0$0 == 0x00e9
_AD0CM1	=	0x00e9
G$AD0CM2$0_0$0 == 0x00ea
_AD0CM2	=	0x00ea
G$AD0WINT$0_0$0 == 0x00eb
_AD0WINT	=	0x00eb
G$AD0BUSY$0_0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0INT$0_0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0TM$0_0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0EN$0_0$0 == 0x00ef
_AD0EN	=	0x00ef
G$SPIEN$0_0$0 == 0x00f8
_SPIEN	=	0x00f8
G$TXBMT$0_0$0 == 0x00f9
_TXBMT	=	0x00f9
G$NSSMD0$0_0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$NSSMD1$0_0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$RXOVRN$0_0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$MODF$0_0$0 == 0x00fd
_MODF	=	0x00fd
G$WCOL$0_0$0 == 0x00fe
_WCOL	=	0x00fe
G$SPIF$0_0$0 == 0x00ff
_SPIF	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericReset'
;------------------------------------------------------------
;xNewQueue                 Allocated to stack - _bp -3
;xQueue                    Allocated to stack - _bp +1
;xReturn                   Allocated to stack - _bp +13
;pxQueue                   Allocated to registers 
;sloc0                     Allocated to stack - _bp +8
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +10
;sloc3                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueGenericReset$0$0 ==.
	C$queue.c$266$0_0$180 ==.
;	queue.c:266: BaseType_t xQueueGenericReset( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueGenericReset
;	-----------------------------------------
_xQueueGenericReset:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
	C$queue.c$269$2_0$180 ==.
;	queue.c:269: BaseType_t xReturn = pdPASS;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x01
	C$queue.c$274$1_0$180 ==.
;	queue.c:274: if( ( pxQueue != NULL ) &&
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00137$
	ljmp	00109$
00137$:
	C$queue.c$275$1_0$180 ==.
;	queue.c:275: ( pxQueue->uxLength >= 1U ) &&
	mov	r0,_bp
	inc	r0
	mov	a,#0x25
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x01,00138$
00138$:
	jnc	00139$
	ljmp	00109$
00139$:
	C$queue.c$277$1_0$180 ==.
;	queue.c:277: ( ( SIZE_MAX / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
	push	ar2
	push	ar3
	push	ar4
	mov	ar3,r7
	mov	r4,#0x00
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,#0xff
	mov	dph,#0xff
	lcall	__divuint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar2
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	clr	c
	mov	a,r3
	subb	a,r2
	mov	a,r4
	subb	a,r7
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00140$
	ljmp	00109$
00140$:
	C$queue.c$279$2_0$181 ==.
;	queue.c:279: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$281$3_0$182 ==.
;	queue.c:281: pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x06
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	lcall	__gptrget
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	b,r7
	mov	a,r6
	mul	ab
	xch	a,r0
	mov	a,_bp
	add	a,#0x04
	xch	a,r0
	add	a,@r0
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,b
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$282$3_0$182 ==.
;	queue.c:282: pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	C$queue.c$283$3_0$182 ==.
;	queue.c:283: pxQueue->pcWriteTo = pxQueue->pcHead;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$284$3_0$182 ==.
;	queue.c:284: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,r2
	add	a,#0xff
	mov	@r0,a
	mov	a,r4
	addc	a,#0xff
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$285$3_0$182 ==.
;	queue.c:285: pxQueue->cRxLock = queueUNLOCKED;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$286$3_0$182 ==.
;	queue.c:286: pxQueue->cTxLock = queueUNLOCKED;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$288$3_0$182 ==.
;	queue.c:288: if( xNewQueue == pdFALSE )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00141$
	ljmp	00106$
00141$:
	C$queue.c$295$4_0$183 ==.
;	queue.c:295: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00142$
	ljmp	00107$
00142$:
	C$queue.c$297$5_0$184 ==.
;	queue.c:297: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
	ljmp	00107$
00106$:
	C$queue.c$314$4_0$188 ==.
;	queue.c:314: vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vListInitialise
	C$queue.c$315$4_0$188 ==.
;	queue.c:315: vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vListInitialise
00107$:
	C$queue.c$318$2_0$181 ==.
;	queue.c:318: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	ljmp	00110$
00109$:
	C$queue.c$322$2_0$189 ==.
;	queue.c:322: xReturn = pdFAIL;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x00
00110$:
	C$queue.c$329$1_0$180 ==.
;	queue.c:329: return xReturn;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
00113$:
	C$queue.c$330$1_0$180 ==.
;	queue.c:330: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$330$1_0$180 ==.
	XG$xQueueGenericReset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericCreate'
;------------------------------------------------------------
;uxItemSize                Allocated to stack - _bp -3
;ucQueueType               Allocated to stack - _bp -4
;uxQueueLength             Allocated to stack - _bp +1
;pxNewQueue                Allocated to registers r4 r5 r6 
;xQueueSizeInBytes         Allocated to registers 
;pucQueueStorage           Allocated to registers r2 r3 r7 
;------------------------------------------------------------
	G$xQueueGenericCreate$0$0 ==.
	C$queue.c$398$1_0$191 ==.
;	queue.c:398: QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength,
;	-----------------------------------------
;	 function xQueueGenericCreate
;	-----------------------------------------
_xQueueGenericCreate:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$queue.c$402$2_0$191 ==.
;	queue.c:402: Queue_t * pxNewQueue = NULL;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	C$queue.c$406$1_0$191 ==.
;	queue.c:406: if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	jnz	00131$
	ljmp	00106$
00131$:
	C$queue.c$408$1_0$191 ==.
;	queue.c:408: ( ( SIZE_MAX / uxQueueLength ) >= uxItemSize ) &&
	push	ar4
	push	ar5
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r3,#0x00
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	mov	dpl,#0xff
	mov	dph,#0xff
	lcall	__divuint
	mov	r2,dpl
	mov	r3,dph
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	mov	r6,#0x00
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	subb	a,r6
	pop	ar6
	pop	ar5
	pop	ar4
	jnc	00132$
	ljmp	00106$
00132$:
	C$queue.c$410$1_0$191 ==.
;	queue.c:410: ( ( SIZE_MAX - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0xfd
	mov	r1,a
	mov	b,@r0
	mov	a,@r1
	mul	ab
	mov	r2,a
	mov	r3,b
	clr	c
	mov	a,#0xd6
	subb	a,r2
	mov	a,#0xff
	subb	a,r3
	jnc	00133$
	ljmp	00106$
00133$:
	C$queue.c$415$1_0$191 ==.
;	queue.c:415: xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	C$queue.c$426$2_0$192 ==.
;	queue.c:426: pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
	mov	a,#0x29
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_pvPortMalloc
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	mov	ar4,r2
	mov	ar5,r3
	mov	ar6,r7
	C$queue.c$428$1_0$191 ==.
;	queue.c:428: if( pxNewQueue != NULL )
	mov	a,r4
	orl	a,r5
	jnz	00134$
	ljmp	00106$
00134$:
	C$queue.c$432$3_0$193 ==.
;	queue.c:432: pucQueueStorage = ( uint8_t * ) pxNewQueue;
	mov	ar2,r4
	mov	ar3,r5
	mov	ar7,r6
	C$queue.c$433$3_0$193 ==.
;	queue.c:433: pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
	mov	a,#0x29
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	C$queue.c$444$3_0$193 ==.
;	queue.c:444: prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
	push	ar6
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
	push	ar7
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	lcall	_prvInitialiseNewQueue
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	C$queue.c$455$1_0$191 ==.
;	queue.c:455: mtCOVERAGE_TEST_MARKER();
00106$:
	C$queue.c$458$1_0$191 ==.
;	queue.c:458: return pxNewQueue;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
00109$:
	C$queue.c$459$1_0$191 ==.
;	queue.c:459: }
	dec	sp
	pop	_bp
	C$queue.c$459$1_0$191 ==.
	XG$xQueueGenericCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseNewQueue'
;------------------------------------------------------------
;uxItemSize                Allocated to stack - _bp -3
;pucQueueStorage           Allocated to stack - _bp -6
;ucQueueType               Allocated to stack - _bp -7
;pxNewQueue                Allocated to stack - _bp -10
;uxQueueLength             Allocated to stack - _bp +1
;------------------------------------------------------------
	Fqueue$prvInitialiseNewQueue$0$0 ==.
	C$queue.c$464$1_0$197 ==.
;	queue.c:464: static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength,
;	-----------------------------------------
;	 function prvInitialiseNewQueue
;	-----------------------------------------
_prvInitialiseNewQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	C$queue.c$474$1_0$197 ==.
;	queue.c:474: if( uxItemSize == ( UBaseType_t ) 0 )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jz	00110$
	ljmp	00102$
00110$:
	C$queue.c$480$1_0$197 ==.
;	queue.c:480: pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	ljmp	00103$
00102$:
	C$queue.c$485$2_0$199 ==.
;	queue.c:485: pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00103$:
	C$queue.c$490$1_0$197 ==.
;	queue.c:490: pxNewQueue->uxLength = uxQueueLength;
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	a,#0x25
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$queue.c$491$1_0$197 ==.
;	queue.c:491: pxNewQueue->uxItemSize = uxItemSize;
	mov	a,#0x26
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$queue.c$492$1_0$197 ==.
;	queue.c:492: ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_xQueueGenericReset
	dec	sp
00104$:
	C$queue.c$507$1_0$197 ==.
;	queue.c:507: }
	dec	sp
	pop	_bp
	C$queue.c$507$1_0$197 ==.
	XFqueue$prvInitialiseNewQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericSend'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xCopyPosition             Allocated to stack - _bp -8
;xQueue                    Allocated to registers r5 r3 r4 
;xEntryTimeSet             Allocated to stack - _bp +17
;xYieldRequired            Allocated to registers 
;xTimeOut                  Allocated to stack - _bp +14
;pxQueue                   Allocated to stack - _bp +11
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +8
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +5
;------------------------------------------------------------
	G$xQueueGenericSend$0$0 ==.
	C$queue.c$805$1_0$201 ==.
;	queue.c:805: BaseType_t xQueueGenericSend( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueGenericSend
;	-----------------------------------------
_xQueueGenericSend:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x11
	mov	sp,a
	mov	r5,dpl
	mov	r3,dph
	mov	r4,b
	C$queue.c$810$2_0$201 ==.
;	queue.c:810: BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$812$2_0$201 ==.
;	queue.c:812: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$queue.c$815$4_0$204 ==.
;	queue.c:815: configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	cjne	@r0,#0x02,00174$
	mov	a,#0x01
	sjmp	00175$
00174$:
	mov	a,#0x00
00175$:
	mov	r7,a
	mov	a,_bp
	add	a,#0x0e
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x25
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
00128$:
	C$queue.c$828$2_0$201 ==.
;	queue.c:828: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$834$4_0$204 ==.
;	queue.c:834: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00176$
	ljmp	00111$
00176$:
	mov	a,r7
	jnz	00177$
	ljmp	00112$
00177$:
00111$:
	C$queue.c$900$6_0$206 ==.
;	queue.c:900: xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataToQueue
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$queue.c$904$6_0$206 ==.
;	queue.c:904: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00178$
	ljmp	00105$
00178$:
	C$queue.c$906$7_0$207 ==.
;	queue.c:906: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xTaskRemoveFromEventList
	C$queue.c$919$6_0$206 ==.
;	queue.c:919: else if( xYieldRequired != pdFALSE )
00105$:
	C$queue.c$934$5_0$205 ==.
;	queue.c:934: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$935$5_0$205 ==.
;	queue.c:935: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00112$:
	C$queue.c$939$5_0$212 ==.
;	queue.c:939: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00179$
	ljmp	00109$
00179$:
	C$queue.c$943$6_0$213 ==.
;	queue.c:943: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$948$6_0$213 ==.
;	queue.c:948: return errQUEUE_FULL;
	mov	dpl,#0x00
	ljmp	00130$
00109$:
	C$queue.c$950$5_0$212 ==.
;	queue.c:950: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,@r0
	jz	00180$
	ljmp	00113$
00180$:
	C$queue.c$954$6_0$214 ==.
;	queue.c:954: vTaskInternalSetTimeOutState( &xTimeOut );
	mov	ar2,r6
	mov	r3,#0x00
	mov	r4,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	pop	ar7
	C$queue.c$955$6_0$214 ==.
;	queue.c:955: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,#0x01
00113$:
	C$queue.c$964$2_0$201 ==.
;	queue.c:964: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$969$3_0$203 ==.
;	queue.c:969: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	pop	ar7
	C$queue.c$970$3_0$203 ==.
;	queue.c:970: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00181$
	sjmp	00182$
00181$:
	ljmp	00116$
00182$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
00116$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00183$
	sjmp	00184$
00183$:
	ljmp	00118$
00184$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
00118$:
	push	ar7
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$973$3_0$203 ==.
;	queue.c:973: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r4,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar6
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	mov	a,r7
	pop	ar7
	jz	00185$
	ljmp	00125$
00185$:
	C$queue.c$975$4_0$219 ==.
;	queue.c:975: if( prvIsQueueFull( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	lcall	_prvIsQueueFull
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00186$
	ljmp	00122$
00186$:
	C$queue.c$978$5_0$220 ==.
;	queue.c:978: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	push	ar7
	push	ar6
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
	C$queue.c$985$5_0$220 ==.
;	queue.c:985: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	pop	ar7
	C$queue.c$992$5_0$220 ==.
;	queue.c:992: if( xTaskResumeAll() == pdFALSE )
	push	ar7
	push	ar6
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00187$
	ljmp	00128$
00187$:
	C$queue.c$994$6_0$221 ==.
;	queue.c:994: portYIELD_WITHIN_API();
	push	ar7
	push	ar6
	lcall	_vPortYield
	pop	ar6
	pop	ar7
	ljmp	00128$
00122$:
	C$queue.c$1000$5_0$222 ==.
;	queue.c:1000: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar7
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	pop	ar7
	C$queue.c$1001$5_0$222 ==.
;	queue.c:1001: ( void ) xTaskResumeAll();
	push	ar7
	push	ar6
	lcall	_xTaskResumeAll
	pop	ar6
	pop	ar7
	ljmp	00128$
00125$:
	C$queue.c$1007$4_0$223 ==.
;	queue.c:1007: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvUnlockQueue
	C$queue.c$1008$4_0$223 ==.
;	queue.c:1008: ( void ) xTaskResumeAll();
	lcall	_xTaskResumeAll
	C$queue.c$1011$4_0$223 ==.
;	queue.c:1011: return errQUEUE_FULL;
	mov	dpl,#0x00
00130$:
	C$queue.c$1014$2_0$201 ==.
;	queue.c:1014: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1014$2_0$201 ==.
	XG$xQueueGenericSend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGenericSendFromISR'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
;xCopyPosition             Allocated to stack - _bp -9
;xQueue                    Allocated to registers r2 r3 r4 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to stack - _bp +1
;cTxLock                   Allocated to registers r7 
;uxPreviousMessagesWaiting Allocated to registers 
;------------------------------------------------------------
	G$xQueueGenericSendFromISR$0$0 ==.
	C$queue.c$1017$2_0$225 ==.
;	queue.c:1017: BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueGenericSendFromISR
;	-----------------------------------------
_xQueueGenericSendFromISR:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$queue.c$1024$2_0$225 ==.
;	queue.c:1024: Queue_t * const pxQueue = xQueue;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$queue.c$1053$2_0$226 ==.
;	queue.c:1053: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
	mov	a,#0x24
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x25
	add	a,r2
	mov	r4,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jnc	00138$
	ljmp	00110$
00138$:
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	cjne	@r0,#0x02,00139$
	sjmp	00140$
00139$:
	ljmp	00111$
00140$:
00110$:
	C$queue.c$1055$3_0$227 ==.
;	queue.c:1055: const int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	C$queue.c$1056$3_0$227 ==.
;	queue.c:1056: const UBaseType_t uxPreviousMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	C$queue.c$1065$3_0$227 ==.
;	queue.c:1065: ( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
	push	ar7
	mov	a,_bp
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataToQueue
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	C$queue.c$1069$3_0$227 ==.
;	queue.c:1069: if( cTxLock == queueUNLOCKED )
	cjne	r7,#0xff,00141$
	sjmp	00142$
00141$:
	ljmp	00108$
00142$:
	C$queue.c$1131$5_0$229 ==.
;	queue.c:1131: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jnz	00143$
	ljmp	00109$
00143$:
	C$queue.c$1133$6_0$230 ==.
;	queue.c:1133: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jnz	00144$
	ljmp	00109$
00144$:
	C$queue.c$1137$7_0$231 ==.
;	queue.c:1137: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00145$
	ljmp	00109$
00145$:
	C$queue.c$1139$8_0$232 ==.
;	queue.c:1139: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	C$queue.c$1157$3_0$227 ==.
;	queue.c:1157: ( void ) uxPreviousMessagesWaiting;
	ljmp	00109$
00108$:
	C$queue.c$1167$4_0$236 ==.
;	queue.c:1167: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	inc	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1170$3_0$227 ==.
;	queue.c:1170: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00112$
00111$:
	C$queue.c$1175$3_0$237 ==.
;	queue.c:1175: xReturn = errQUEUE_FULL;
	mov	r7,#0x00
00112$:
	C$queue.c$1180$1_0$225 ==.
;	queue.c:1180: return xReturn;
	mov	dpl,r7
00114$:
	C$queue.c$1181$1_0$225 ==.
;	queue.c:1181: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1181$1_0$225 ==.
	XG$xQueueGenericSendFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueGiveFromISR'
;------------------------------------------------------------
;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
;xQueue                    Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to registers 
;uxMessagesWaiting         Allocated to stack - _bp +7
;cTxLock                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueGiveFromISR$0$0 ==.
	C$queue.c$1184$1_0$239 ==.
;	queue.c:1184: BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueGiveFromISR
;	-----------------------------------------
_xQueueGiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$1226$2_0$240 ==.
;	queue.c:1226: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$1231$2_0$240 ==.
;	queue.c:1231: if( uxMessagesWaiting < pxQueue->uxLength )
	mov	r0,_bp
	inc	r0
	mov	a,#0x25
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r5
	jc	00137$
	ljmp	00111$
00137$:
	C$queue.c$1233$3_0$241 ==.
;	queue.c:1233: const int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x28
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	C$queue.c$1243$3_0$241 ==.
;	queue.c:1243: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	C$queue.c$1247$3_0$241 ==.
;	queue.c:1247: if( cTxLock == queueUNLOCKED )
	cjne	r7,#0xff,00138$
	sjmp	00139$
00138$:
	ljmp	00108$
00139$:
	C$queue.c$1302$5_0$243 ==.
;	queue.c:1302: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jnz	00140$
	ljmp	00109$
00140$:
	C$queue.c$1304$6_0$244 ==.
;	queue.c:1304: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jnz	00141$
	ljmp	00109$
00141$:
	C$queue.c$1308$7_0$245 ==.
;	queue.c:1308: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00109$
00142$:
	C$queue.c$1310$8_0$246 ==.
;	queue.c:1310: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	ljmp	00109$
00108$:
	C$queue.c$1335$4_0$250 ==.
;	queue.c:1335: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
	inc	r7
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1338$3_0$241 ==.
;	queue.c:1338: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00112$
00111$:
	C$queue.c$1343$3_0$251 ==.
;	queue.c:1343: xReturn = errQUEUE_FULL;
	mov	r7,#0x00
00112$:
	C$queue.c$1348$1_0$239 ==.
;	queue.c:1348: return xReturn;
	mov	dpl,r7
00113$:
	C$queue.c$1349$1_0$239 ==.
;	queue.c:1349: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1349$1_0$239 ==.
	XG$xQueueGiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueReceive'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xQueue                    Allocated to registers r4 r5 r7 
;xEntryTimeSet             Allocated to stack - _bp +8
;xTimeOut                  Allocated to stack - _bp +9
;pxQueue                   Allocated to stack - _bp +5
;uxMessagesWaiting         Allocated to registers r5 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +15
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xQueueReceive$0$0 ==.
	C$queue.c$1352$1_0$253 ==.
;	queue.c:1352: BaseType_t xQueueReceive( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueReceive
;	-----------------------------------------
_xQueueReceive:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	C$queue.c$1356$2_0$253 ==.
;	queue.c:1356: BaseType_t xEntryTimeSet = pdFALSE;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$1358$2_0$253 ==.
;	queue.c:1358: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	C$queue.c$1365$6_0$264 ==.
;	queue.c:1365: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0x09
	mov	r6,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1379$3_0$255 ==.
;	queue.c:1379: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1381$4_0$256 ==.
;	queue.c:1381: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	ar5,r4
	C$queue.c$1385$4_0$256 ==.
;	queue.c:1385: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,r4
	jnz	00178$
	ljmp	00111$
00178$:
	C$queue.c$1388$5_0$257 ==.
;	queue.c:1388: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	C$queue.c$1390$5_0$257 ==.
;	queue.c:1390: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x24
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	a,r5
	dec	a
	mov	r2,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	C$queue.c$1395$5_0$257 ==.
;	queue.c:1395: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	jnz	00179$
	ljmp	00104$
00179$:
	C$queue.c$1397$6_0$258 ==.
;	queue.c:1397: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
00104$:
	C$queue.c$1411$5_0$257 ==.
;	queue.c:1411: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1412$5_0$257 ==.
;	queue.c:1412: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1416$5_0$262 ==.
;	queue.c:1416: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00180$
	ljmp	00108$
00180$:
	C$queue.c$1420$6_0$263 ==.
;	queue.c:1420: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1422$6_0$263 ==.
;	queue.c:1422: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1424$5_0$262 ==.
;	queue.c:1424: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	jz	00181$
	ljmp	00112$
00181$:
	C$queue.c$1428$6_0$264 ==.
;	queue.c:1428: vTaskInternalSetTimeOutState( &xTimeOut );
	mov	ar3,r6
	mov	r4,#0x00
	mov	r7,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1429$6_0$264 ==.
;	queue.c:1429: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,#0x01
00112$:
	C$queue.c$1438$3_0$255 ==.
;	queue.c:1438: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1443$3_0$255 ==.
;	queue.c:1443: vTaskSuspendAll();
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	C$queue.c$1444$3_0$255 ==.
;	queue.c:1444: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00182$
	sjmp	00183$
00182$:
	ljmp	00114$
00183$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00184$
	sjmp	00185$
00184$:
	ljmp	00116$
00185$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00116$:
	push	ar6
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1447$3_0$255 ==.
;	queue.c:1447: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r7,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	ar2,@r0
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar6
	push	ar7
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar6
	mov	a,r7
	jz	00186$
	ljmp	00125$
00186$:
	C$queue.c$1451$4_0$269 ==.
;	queue.c:1451: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00187$
	ljmp	00120$
00187$:
	C$queue.c$1454$5_0$270 ==.
;	queue.c:1454: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	pop	ar6
	C$queue.c$1455$5_0$270 ==.
;	queue.c:1455: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1457$5_0$270 ==.
;	queue.c:1457: if( xTaskResumeAll() == pdFALSE )
	push	ar6
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	jz	00188$
	ljmp	00128$
00188$:
	C$queue.c$1459$6_0$271 ==.
;	queue.c:1459: portYIELD_WITHIN_API();
	push	ar6
	lcall	_vPortYield
	pop	ar6
	ljmp	00128$
00120$:
	C$queue.c$1470$5_0$273 ==.
;	queue.c:1470: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1471$5_0$273 ==.
;	queue.c:1471: ( void ) xTaskResumeAll();
	push	ar6
	lcall	_xTaskResumeAll
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1478$4_0$274 ==.
;	queue.c:1478: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1479$4_0$274 ==.
;	queue.c:1479: ( void ) xTaskResumeAll();
	push	ar6
	lcall	_xTaskResumeAll
	pop	ar6
	C$queue.c$1481$4_0$274 ==.
;	queue.c:1481: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00189$
	ljmp	00128$
00189$:
	C$queue.c$1484$5_0$275 ==.
;	queue.c:1484: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1492$2_0$253 ==.
;	queue.c:1492: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1492$2_0$253 ==.
	XG$xQueueReceive$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueSemaphoreTake'
;------------------------------------------------------------
;xTicksToWait              Allocated to stack - _bp -4
;xQueue                    Allocated to registers r4 r5 r7 
;xEntryTimeSet             Allocated to stack - _bp +5
;xTimeOut                  Allocated to stack - _bp +6
;pxQueue                   Allocated to stack - _bp +9
;uxSemaphoreCount          Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +2
;sloc1                     Allocated to stack - _bp +15
;sloc2                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xQueueSemaphoreTake$0$0 ==.
	C$queue.c$1495$2_0$278 ==.
;	queue.c:1495: BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueSemaphoreTake
;	-----------------------------------------
_xQueueSemaphoreTake:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	mov	r4,dpl
	mov	r5,dph
	mov	r7,b
	C$queue.c$1498$2_0$278 ==.
;	queue.c:1498: BaseType_t xEntryTimeSet = pdFALSE;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x00
	C$queue.c$1500$2_0$278 ==.
;	queue.c:1500: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar7
	C$queue.c$1511$6_0$289 ==.
;	queue.c:1511: configASSERT( pxQueue->uxItemSize == 0 );
	mov	a,_bp
	add	a,#0x06
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,#0x24
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1525$3_0$280 ==.
;	queue.c:1525: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1529$4_0$281 ==.
;	queue.c:1529: const UBaseType_t uxSemaphoreCount = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	ar7,r4
	C$queue.c$1533$4_0$281 ==.
;	queue.c:1533: if( uxSemaphoreCount > ( UBaseType_t ) 0 )
	mov	a,r4
	jnz	00178$
	ljmp	00111$
00178$:
	C$queue.c$1539$5_0$282 ==.
;	queue.c:1539: pxQueue->uxMessagesWaiting = uxSemaphoreCount - ( UBaseType_t ) 1;
	mov	a,r7
	dec	a
	mov	r4,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1558$5_0$282 ==.
;	queue.c:1558: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	jnz	00179$
	ljmp	00104$
00179$:
	C$queue.c$1560$6_0$283 ==.
;	queue.c:1560: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x0c
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
00104$:
	C$queue.c$1574$5_0$282 ==.
;	queue.c:1574: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1575$5_0$282 ==.
;	queue.c:1575: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1579$5_0$287 ==.
;	queue.c:1579: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00180$
	ljmp	00108$
00180$:
	C$queue.c$1592$6_0$288 ==.
;	queue.c:1592: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1594$6_0$288 ==.
;	queue.c:1594: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1596$5_0$287 ==.
;	queue.c:1596: else if( xEntryTimeSet == pdFALSE )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	jz	00181$
	ljmp	00112$
00181$:
	C$queue.c$1600$6_0$289 ==.
;	queue.c:1600: vTaskInternalSetTimeOutState( &xTimeOut );
	mov	ar3,r6
	mov	r4,#0x00
	mov	r7,#0x40
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1601$6_0$289 ==.
;	queue.c:1601: xEntryTimeSet = pdTRUE;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,#0x01
00112$:
	C$queue.c$1610$3_0$280 ==.
;	queue.c:1610: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1615$3_0$280 ==.
;	queue.c:1615: vTaskSuspendAll();
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	C$queue.c$1616$3_0$280 ==.
;	queue.c:1616: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00182$
	sjmp	00183$
00182$:
	ljmp	00114$
00183$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	cjne	r2,#0xff,00184$
	sjmp	00185$
00184$:
	ljmp	00116$
00185$:
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00116$:
	push	ar6
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1619$3_0$280 ==.
;	queue.c:1619: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xfc
	mov	r7,a
	mov	r4,#0x00
	mov	r3,#0x40
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	mov	r5,#0x00
	mov	r6,#0x40
	push	ar6
	push	ar7
	push	ar4
	push	ar3
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar6
	mov	a,r7
	jz	00186$
	ljmp	00125$
00186$:
	C$queue.c$1625$4_0$294 ==.
;	queue.c:1625: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00187$
	ljmp	00120$
00187$:
	C$queue.c$1646$5_0$295 ==.
;	queue.c:1646: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	pop	ar6
	C$queue.c$1647$5_0$295 ==.
;	queue.c:1647: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1649$5_0$295 ==.
;	queue.c:1649: if( xTaskResumeAll() == pdFALSE )
	push	ar6
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar6
	jz	00188$
	ljmp	00128$
00188$:
	C$queue.c$1651$6_0$296 ==.
;	queue.c:1651: portYIELD_WITHIN_API();
	push	ar6
	lcall	_vPortYield
	pop	ar6
	ljmp	00128$
00120$:
	C$queue.c$1662$5_0$298 ==.
;	queue.c:1662: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1663$5_0$298 ==.
;	queue.c:1663: ( void ) xTaskResumeAll();
	push	ar6
	lcall	_xTaskResumeAll
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1669$4_0$299 ==.
;	queue.c:1669: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvUnlockQueue
	pop	ar6
	C$queue.c$1670$4_0$299 ==.
;	queue.c:1670: ( void ) xTaskResumeAll();
	push	ar6
	lcall	_xTaskResumeAll
	pop	ar6
	C$queue.c$1676$4_0$299 ==.
;	queue.c:1676: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar6
	jnz	00189$
	ljmp	00128$
00189$:
	C$queue.c$1703$5_0$300 ==.
;	queue.c:1703: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1711$2_0$278 ==.
;	queue.c:1711: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1711$2_0$278 ==.
	XG$xQueueSemaphoreTake$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueuePeek'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xTicksToWait              Allocated to stack - _bp -7
;xQueue                    Allocated to registers r5 r3 r7 
;xEntryTimeSet             Allocated to registers r4 
;xTimeOut                  Allocated to stack - _bp +8
;pcOriginalReadPosition    Allocated to registers r6 r5 r4 
;pxQueue                   Allocated to stack - _bp +11
;uxMessagesWaiting         Allocated to registers 
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +1
;sloc2                     Allocated to stack - _bp +2
;------------------------------------------------------------
	G$xQueuePeek$0$0 ==.
	C$queue.c$1714$2_0$303 ==.
;	queue.c:1714: BaseType_t xQueuePeek( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueuePeek
;	-----------------------------------------
_xQueuePeek:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0d
	mov	sp,a
	mov	r5,dpl
	mov	r3,dph
	mov	r7,b
	C$queue.c$1718$2_0$303 ==.
;	queue.c:1718: BaseType_t xEntryTimeSet = pdFALSE;
	mov	r4,#0x00
	C$queue.c$1721$2_0$303 ==.
;	queue.c:1721: Queue_t * const pxQueue = xQueue;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar7
	C$queue.c$1728$6_0$314 ==.
;	queue.c:1728: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
	mov	a,_bp
	add	a,#0x08
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x24
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
00128$:
	C$queue.c$1742$3_0$305 ==.
;	queue.c:1742: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$1744$4_0$306 ==.
;	queue.c:1744: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00178$
	ljmp	00111$
00178$:
	C$queue.c$1748$4_0$306 ==.
;	queue.c:1748: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	C$queue.c$1753$5_0$307 ==.
;	queue.c:1753: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$queue.c$1755$5_0$307 ==.
;	queue.c:1755: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar6
	push	ar5
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar5
	pop	ar6
	C$queue.c$1759$5_0$307 ==.
;	queue.c:1759: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1763$5_0$307 ==.
;	queue.c:1763: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	jnz	00179$
	ljmp	00104$
00179$:
	C$queue.c$1765$6_0$308 ==.
;	queue.c:1765: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_xTaskRemoveFromEventList
00104$:
	C$queue.c$1780$5_0$307 ==.
;	queue.c:1780: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1781$5_0$307 ==.
;	queue.c:1781: return pdPASS;
	mov	dpl,#0x01
	ljmp	00130$
00111$:
	C$queue.c$1785$5_0$312 ==.
;	queue.c:1785: if( xTicksToWait == ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00180$
	ljmp	00108$
00180$:
	C$queue.c$1789$6_0$313 ==.
;	queue.c:1789: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1791$6_0$313 ==.
;	queue.c:1791: return errQUEUE_EMPTY;
	mov	dpl,#0x00
	ljmp	00130$
00108$:
	C$queue.c$1793$5_0$312 ==.
;	queue.c:1793: else if( xEntryTimeSet == pdFALSE )
	mov	a,r4
	jz	00181$
	ljmp	00112$
00181$:
	C$queue.c$1798$6_0$314 ==.
;	queue.c:1798: vTaskInternalSetTimeOutState( &xTimeOut );
	mov	ar2,r6
	mov	r3,#0x00
	mov	r7,#0x40
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar6
	lcall	_vTaskInternalSetTimeOutState
	pop	ar6
	C$queue.c$1799$6_0$314 ==.
;	queue.c:1799: xEntryTimeSet = pdTRUE;
	mov	r4,#0x01
00112$:
	C$queue.c$1808$2_0$303 ==.
;	queue.c:1808: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1813$3_0$305 ==.
;	queue.c:1813: vTaskSuspendAll();
	push	ar6
	push	ar4
	lcall	_vTaskSuspendAll
	pop	ar4
	pop	ar6
	C$queue.c$1814$3_0$305 ==.
;	queue.c:1814: prvLockQueue( pxQueue );
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00182$
	sjmp	00183$
00182$:
	ljmp	00114$
00183$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00114$:
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	cjne	r5,#0xff,00184$
	sjmp	00185$
00184$:
	ljmp	00116$
00185$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
00116$:
	push	ar4
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$1817$3_0$305 ==.
;	queue.c:1817: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
	mov	a,_bp
	add	a,#0xf9
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	r0,_bp
	inc	r0
	mov	ar4,@r0
	mov	r5,#0x00
	mov	r7,#0x40
	push	ar6
	push	ar4
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r7
	lcall	_xTaskCheckForTimeOut
	mov	r7,dpl
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar6
	pop	ar4
	mov	a,r7
	jz	00186$
	ljmp	00125$
00186$:
	C$queue.c$1821$4_0$319 ==.
;	queue.c:1821: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar4
	pop	ar6
	jnz	00187$
	ljmp	00120$
00187$:
	C$queue.c$1824$5_0$320 ==.
;	queue.c:1824: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	a,#0x18
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar7,@r0
	push	ar6
	push	ar4
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r5
	mov	b,r7
	lcall	_vTaskPlaceOnEventList
	dec	sp
	dec	sp
	pop	ar4
	pop	ar6
	C$queue.c$1825$5_0$320 ==.
;	queue.c:1825: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvUnlockQueue
	pop	ar4
	pop	ar6
	C$queue.c$1827$5_0$320 ==.
;	queue.c:1827: if( xTaskResumeAll() == pdFALSE )
	push	ar6
	push	ar4
	lcall	_xTaskResumeAll
	mov	a,dpl
	pop	ar4
	pop	ar6
	jz	00188$
	ljmp	00128$
00188$:
	C$queue.c$1829$6_0$321 ==.
;	queue.c:1829: portYIELD_WITHIN_API();
	push	ar6
	push	ar4
	lcall	_vPortYield
	pop	ar4
	pop	ar6
	ljmp	00128$
00120$:
	C$queue.c$1840$5_0$323 ==.
;	queue.c:1840: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvUnlockQueue
	pop	ar4
	pop	ar6
	C$queue.c$1841$5_0$323 ==.
;	queue.c:1841: ( void ) xTaskResumeAll();
	push	ar6
	push	ar4
	lcall	_xTaskResumeAll
	pop	ar4
	pop	ar6
	ljmp	00128$
00125$:
	C$queue.c$1848$4_0$324 ==.
;	queue.c:1848: prvUnlockQueue( pxQueue );
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvUnlockQueue
	pop	ar4
	pop	ar6
	C$queue.c$1849$4_0$324 ==.
;	queue.c:1849: ( void ) xTaskResumeAll();
	push	ar6
	push	ar4
	lcall	_xTaskResumeAll
	pop	ar4
	pop	ar6
	C$queue.c$1851$4_0$324 ==.
;	queue.c:1851: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
	mov	a,_bp
	add	a,#0x0b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	push	ar6
	push	ar4
	lcall	_prvIsQueueEmpty
	mov	a,dpl
	pop	ar4
	pop	ar6
	jnz	00189$
	ljmp	00128$
00189$:
	C$queue.c$1854$5_0$325 ==.
;	queue.c:1854: return errQUEUE_EMPTY;
	mov	dpl,#0x00
00130$:
	C$queue.c$1862$2_0$303 ==.
;	queue.c:1862: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1862$2_0$303 ==.
	XG$xQueuePeek$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueReceiveFromISR'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
;xQueue                    Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pxQueue                   Allocated to registers 
;uxMessagesWaiting         Allocated to registers r4 
;cRxLock                   Allocated to registers r7 
;------------------------------------------------------------
	G$xQueueReceiveFromISR$0$0 ==.
	C$queue.c$1865$2_0$328 ==.
;	queue.c:1865: BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueueReceiveFromISR
;	-----------------------------------------
_xQueueReceiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	C$queue.c$1894$2_0$329 ==.
;	queue.c:1894: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	ar4,r2
	C$queue.c$1897$2_0$329 ==.
;	queue.c:1897: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,r2
	jnz	00137$
	ljmp	00111$
00137$:
	C$queue.c$1899$3_0$330 ==.
;	queue.c:1899: const int8_t cRxLock = pxQueue->cRxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	C$queue.c$1903$3_0$330 ==.
;	queue.c:1903: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar7
	push	ar4
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar7
	C$queue.c$1904$3_0$330 ==.
;	queue.c:1904: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	dec	r4
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r4
	lcall	__gptrput
	C$queue.c$1910$3_0$330 ==.
;	queue.c:1910: if( cRxLock == queueUNLOCKED )
	cjne	r7,#0xff,00138$
	sjmp	00139$
00138$:
	ljmp	00108$
00139$:
	C$queue.c$1912$4_0$331 ==.
;	queue.c:1912: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	jnz	00140$
	ljmp	00109$
00140$:
	C$queue.c$1914$5_0$332 ==.
;	queue.c:1914: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	jnz	00141$
	ljmp	00109$
00141$:
	C$queue.c$1918$6_0$333 ==.
;	queue.c:1918: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00109$
00142$:
	C$queue.c$1920$7_0$334 ==.
;	queue.c:1920: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	ljmp	00109$
00108$:
	C$queue.c$1943$4_0$338 ==.
;	queue.c:1943: pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	inc	r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
00109$:
	C$queue.c$1946$3_0$330 ==.
;	queue.c:1946: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00112$
00111$:
	C$queue.c$1950$3_0$339 ==.
;	queue.c:1950: xReturn = pdFAIL;
	mov	r7,#0x00
00112$:
	C$queue.c$1956$1_0$328 ==.
;	queue.c:1956: return xReturn;
	mov	dpl,r7
00113$:
	C$queue.c$1957$1_0$328 ==.
;	queue.c:1957: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$1957$1_0$328 ==.
	XG$xQueueReceiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueuePeekFromISR'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;uxSavedInterruptStatus    Allocated to registers 
;pcOriginalReadPosition    Allocated to registers r2 r3 r4 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueuePeekFromISR$0$0 ==.
	C$queue.c$1960$1_0$341 ==.
;	queue.c:1960: BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,
;	-----------------------------------------
;	 function xQueuePeekFromISR
;	-----------------------------------------
_xQueuePeekFromISR:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$1991$2_0$342 ==.
;	queue.c:1991: if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00110$
	ljmp	00102$
00110$:
	C$queue.c$1997$3_0$343 ==.
;	queue.c:1997: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
	mov	a,#0x06
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	C$queue.c$1998$3_0$343 ==.
;	queue.c:1998: prvCopyDataFromQueue( pxQueue, pvBuffer );
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvCopyDataFromQueue
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$queue.c$1999$3_0$343 ==.
;	queue.c:1999: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
	mov	a,#0x06
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,#0x03
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$queue.c$2001$3_0$343 ==.
;	queue.c:2001: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$queue.c$2005$3_0$344 ==.
;	queue.c:2005: xReturn = pdFAIL;
	mov	r7,#0x00
00103$:
	C$queue.c$2011$1_0$341 ==.
;	queue.c:2011: return xReturn;
	mov	dpl,r7
00104$:
	C$queue.c$2012$1_0$341 ==.
;	queue.c:2012: }
	pop	_bp
	C$queue.c$2012$1_0$341 ==.
	XG$xQueuePeekFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueMessagesWaiting'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r5 
;------------------------------------------------------------
	G$uxQueueMessagesWaiting$0$0 ==.
	C$queue.c$2015$1_0$346 ==.
;	queue.c:2015: UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueMessagesWaiting
;	-----------------------------------------
_uxQueueMessagesWaiting:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2021$1_0$346 ==.
;	queue.c:2021: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2023$2_0$347 ==.
;	queue.c:2023: uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	C$queue.c$2025$1_0$346 ==.
;	queue.c:2025: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2027$1_0$346 ==.
;	queue.c:2027: return uxReturn;
	mov	dpl,r5
00101$:
	C$queue.c$2028$1_0$346 ==.
;	queue.c:2028: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$2028$1_0$346 ==.
	XG$uxQueueMessagesWaiting$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueSpacesAvailable'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r2 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$uxQueueSpacesAvailable$0$0 ==.
	C$queue.c$2031$1_0$349 ==.
;	queue.c:2031: UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueSpacesAvailable
;	-----------------------------------------
_uxQueueSpacesAvailable:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2038$1_0$349 ==.
;	queue.c:2038: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2040$2_0$350 ==.
;	queue.c:2040: uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
	mov	a,#0x25
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	r2,a
	C$queue.c$2042$1_0$349 ==.
;	queue.c:2042: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2044$1_0$349 ==.
;	queue.c:2044: return uxReturn;
	mov	dpl,r2
00101$:
	C$queue.c$2045$1_0$349 ==.
;	queue.c:2045: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$2045$1_0$349 ==.
	XG$uxQueueSpacesAvailable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxQueueMessagesWaitingFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;uxReturn                  Allocated to registers r5 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$uxQueueMessagesWaitingFromISR$0$0 ==.
	C$queue.c$2048$1_0$352 ==.
;	queue.c:2048: UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function uxQueueMessagesWaitingFromISR
;	-----------------------------------------
_uxQueueMessagesWaitingFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2054$1_0$352 ==.
;	queue.c:2054: uxReturn = pxQueue->uxMessagesWaiting;
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	C$queue.c$2056$1_0$352 ==.
;	queue.c:2056: return uxReturn;
	mov	dpl,r5
00101$:
	C$queue.c$2057$1_0$352 ==.
;	queue.c:2057: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
	C$queue.c$2057$1_0$352 ==.
	XG$uxQueueMessagesWaitingFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vQueueDelete'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;pxQueue                   Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vQueueDelete$0$0 ==.
	C$queue.c$2060$1_0$354 ==.
;	queue.c:2060: void vQueueDelete( QueueHandle_t xQueue )
;	-----------------------------------------
;	 function vQueueDelete
;	-----------------------------------------
_vQueueDelete:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2062$2_0$354 ==.
;	queue.c:2062: Queue_t * const pxQueue = xQueue;
	C$queue.c$2077$2_0$355 ==.
;	queue.c:2077: vPortFree( pxQueue );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vPortFree
00101$:
	C$queue.c$2099$2_0$354 ==.
;	queue.c:2099: }
	C$queue.c$2099$2_0$354 ==.
	XG$vQueueDelete$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCopyDataToQueue'
;------------------------------------------------------------
;pvItemToQueue             Allocated to stack - _bp -5
;xPosition                 Allocated to stack - _bp -6
;pxQueue                   Allocated to stack - _bp +1
;xReturn                   Allocated to registers 
;uxMessagesWaiting         Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +10
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +4
;------------------------------------------------------------
	Fqueue$prvCopyDataToQueue$0$0 ==.
	C$queue.c$2160$2_0$357 ==.
;	queue.c:2160: static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue,
;	-----------------------------------------
;	 function prvCopyDataToQueue
;	-----------------------------------------
_prvCopyDataToQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
	C$queue.c$2169$1_0$357 ==.
;	queue.c:2169: uxMessagesWaiting = pxQueue->uxMessagesWaiting;
	mov	r0,_bp
	inc	r0
	mov	a,#0x24
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$2171$1_0$357 ==.
;	queue.c:2171: if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x26
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	a,r6
	jnz	00141$
	ljmp	00114$
00141$:
	C$queue.c$2188$1_0$357 ==.
;	queue.c:2188: else if( xPosition == queueSEND_TO_BACK )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	jz	00142$
	ljmp	00110$
00142$:
	C$queue.c$2190$1_0$357 ==.
;	queue.c:2190: ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
	push	ar2
	push	ar3
	push	ar4
	mov	ar4,r6
	mov	r5,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	push	ar4
	push	ar3
	push	ar2
	push	ar4
	push	ar5
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2191$2_0$359 ==.
;	queue.c:2191: pxQueue->pcWriteTo += pxQueue->uxItemSize;                                                       /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r3
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	inc	dptr
	inc	r1
	mov	a,@r1
	lcall	__gptrput
	C$queue.c$2193$2_0$359 ==.
;	queue.c:2193: if( pxQueue->pcWriteTo >= pxQueue->u.xQueue.pcTail )                                             /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar2
	push	ar3
	push	ar7
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00143$
	ljmp	00114$
00143$:
	C$queue.c$2195$1_0$357 ==.
;	queue.c:2195: pxQueue->pcWriteTo = pxQueue->pcHead;
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00114$
00110$:
	C$queue.c$2204$1_0$357 ==.
;	queue.c:2204: ( void ) memcpy( ( void * ) pxQueue->u.xQueue.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e9087 !e418 MISRA exception as the casts are only redundant for some ports.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes.  Assert checks null pointer only used when length is 0. */
	push	ar2
	push	ar3
	push	ar4
	mov	r7,#0x00
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x06
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x03
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar4
	push	ar3
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2205$2_0$362 ==.
;	queue.c:2205: pxQueue->u.xQueue.pcReadFrom -= pxQueue->uxItemSize;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2207$2_0$362 ==.
;	queue.c:2207: if( pxQueue->u.xQueue.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jc	00144$
	ljmp	00104$
00144$:
	C$queue.c$2209$1_0$357 ==.
;	queue.c:2209: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2239$1_0$357 ==.
;	queue.c:2239: return xReturn;
	pop	ar4
	pop	ar3
	pop	ar2
	C$queue.c$2209$2_0$362 ==.
;	queue.c:2209: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
00104$:
	C$queue.c$2216$2_0$362 ==.
;	queue.c:2216: if( xPosition == queueOVERWRITE )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	cjne	@r0,#0x02,00145$
	sjmp	00146$
00145$:
	ljmp	00114$
00146$:
	C$queue.c$2218$3_0$365 ==.
;	queue.c:2218: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	jnz	00147$
	ljmp	00114$
00147$:
	C$queue.c$2224$4_0$366 ==.
;	queue.c:2224: --uxMessagesWaiting;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	dec	@r0
00114$:
	C$queue.c$2237$1_0$357 ==.
;	queue.c:2237: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	inc	a
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2239$1_0$357 ==.
;	queue.c:2239: return xReturn;
	mov	dpl,#0x00
00115$:
	C$queue.c$2240$1_0$357 ==.
;	queue.c:2240: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2240$1_0$357 ==.
	XFqueue$prvCopyDataToQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCopyDataFromQueue'
;------------------------------------------------------------
;pvBuffer                  Allocated to stack - _bp -5
;pxQueue                   Allocated to stack - _bp +1
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +5
;------------------------------------------------------------
	Fqueue$prvCopyDataFromQueue$0$0 ==.
	C$queue.c$2243$1_0$370 ==.
;	queue.c:2243: static void prvCopyDataFromQueue( Queue_t * const pxQueue,
;	-----------------------------------------
;	 function prvCopyDataFromQueue
;	-----------------------------------------
_prvCopyDataFromQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$2246$1_0$370 ==.
;	queue.c:2246: if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,#0x26
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jnz	00115$
	ljmp	00105$
00115$:
	C$queue.c$2248$1_0$370 ==.
;	queue.c:2248: pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;           /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
	push	ar2
	push	ar3
	push	ar4
	mov	r0,_bp
	inc	r0
	mov	a,#0x06
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,#0x03
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$queue.c$2250$2_0$371 ==.
;	queue.c:2250: if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
	jnc	00116$
	ljmp	00102$
00116$:
	C$queue.c$2252$3_0$372 ==.
;	queue.c:2252: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00102$:
	C$queue.c$2259$2_0$371 ==.
;	queue.c:2259: ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r7,#0x00
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	push	ar2
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___memcpy
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00105$:
	C$queue.c$2261$1_0$370 ==.
;	queue.c:2261: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2261$1_0$370 ==.
	XFqueue$prvCopyDataFromQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvUnlockQueue'
;------------------------------------------------------------
;pxQueue                   Allocated to stack - _bp +1
;cTxLock                   Allocated to registers 
;cRxLock                   Allocated to registers 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;------------------------------------------------------------
	Fqueue$prvUnlockQueue$0$0 ==.
	C$queue.c$2264$1_0$375 ==.
;	queue.c:2264: static void prvUnlockQueue( Queue_t * const pxQueue )
;	-----------------------------------------
;	 function prvUnlockQueue
;	-----------------------------------------
_prvUnlockQueue:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$queue.c$2272$1_0$375 ==.
;	queue.c:2272: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2274$2_0$376 ==.
;	queue.c:2274: int8_t cTxLock = pxQueue->cTxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x28
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$queue.c$2277$4_0$378 ==.
;	queue.c:2277: while( cTxLock > queueLOCKED_UNMODIFIED )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x18
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00106$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	clr	c
	mov	a,#0x00
	xrl	a,#0x80
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
	jc	00155$
	ljmp	00108$
00155$:
	C$queue.c$2325$4_0$378 ==.
;	queue.c:2325: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00156$
	ljmp	00108$
00156$:
	C$queue.c$2327$5_0$379 ==.
;	queue.c:2327: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
	mov	r0,_bp
	inc	r0
	mov	a,#0x18
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar4
	push	ar3
	push	ar2
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	jnz	00157$
	ljmp	00105$
00157$:
	C$queue.c$2331$6_0$380 ==.
;	queue.c:2331: vTaskMissedYield();
	push	ar4
	push	ar3
	push	ar2
	lcall	_vTaskMissedYield
	pop	ar2
	pop	ar3
	pop	ar4
	C$queue.c$2340$4_0$378 ==.
;	queue.c:2340: break;
00105$:
	C$queue.c$2345$3_0$377 ==.
;	queue.c:2345: --cTxLock;
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	dec	@r0
	ljmp	00106$
00108$:
	C$queue.c$2348$2_0$376 ==.
;	queue.c:2348: pxQueue->cTxLock = queueUNLOCKED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$2350$1_0$375 ==.
;	queue.c:2350: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2353$1_0$375 ==.
;	queue.c:2353: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2355$2_0$383 ==.
;	queue.c:2355: int8_t cRxLock = pxQueue->cRxLock;
	mov	r0,_bp
	inc	r0
	mov	a,#0x27
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	C$queue.c$2357$3_0$384 ==.
;	queue.c:2357: while( cRxLock > queueLOCKED_UNMODIFIED )
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x0c
	add	a,@r0
	mov	@r1,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
00114$:
	clr	c
	mov	a,#0x00
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jc	00158$
	ljmp	00116$
00158$:
	C$queue.c$2359$3_0$384 ==.
;	queue.c:2359: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	jnz	00159$
	ljmp	00116$
00159$:
	C$queue.c$2361$1_0$375 ==.
;	queue.c:2361: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
	push	ar5
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x0c
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_xTaskRemoveFromEventList
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00160$
	ljmp	00110$
00160$:
	C$queue.c$2363$5_0$386 ==.
;	queue.c:2363: vTaskMissedYield();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_vTaskMissedYield
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00110$:
	C$queue.c$2370$4_0$385 ==.
;	queue.c:2370: --cRxLock;
	dec	r4
	ljmp	00114$
	C$queue.c$2374$2_0$383 ==.
;	queue.c:2374: break;
00116$:
	C$queue.c$2378$2_0$383 ==.
;	queue.c:2378: pxQueue->cRxLock = queueUNLOCKED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xff
	lcall	__gptrput
	C$queue.c$2380$1_0$375 ==.
;	queue.c:2380: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
00117$:
	C$queue.c$2381$1_0$375 ==.
;	queue.c:2381: }
	mov	sp,_bp
	pop	_bp
	C$queue.c$2381$1_0$375 ==.
	XFqueue$prvUnlockQueue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIsQueueEmpty'
;------------------------------------------------------------
;pxQueue                   Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	Fqueue$prvIsQueueEmpty$0$0 ==.
	C$queue.c$2384$1_0$390 ==.
;	queue.c:2384: static BaseType_t prvIsQueueEmpty( const Queue_t * pxQueue )
;	-----------------------------------------
;	 function prvIsQueueEmpty
;	-----------------------------------------
_prvIsQueueEmpty:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2388$1_0$390 ==.
;	queue.c:2388: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2390$2_0$391 ==.
;	queue.c:2390: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00110$
	ljmp	00102$
00110$:
	C$queue.c$2392$3_0$392 ==.
;	queue.c:2392: xReturn = pdTRUE;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$queue.c$2396$3_0$393 ==.
;	queue.c:2396: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2399$1_0$390 ==.
;	queue.c:2399: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2401$1_0$390 ==.
;	queue.c:2401: return xReturn;
	mov	dpl,r7
00104$:
	C$queue.c$2402$1_0$390 ==.
;	queue.c:2402: }
	C$queue.c$2402$1_0$390 ==.
	XFqueue$prvIsQueueEmpty$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueIsQueueEmptyFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueueIsQueueEmptyFromISR$0$0 ==.
	C$queue.c$2405$1_0$395 ==.
;	queue.c:2405: BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function xQueueIsQueueEmptyFromISR
;	-----------------------------------------
_xQueueIsQueueEmptyFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2412$1_0$395 ==.
;	queue.c:2412: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
	mov	a,#0x24
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00110$
	ljmp	00102$
00110$:
	C$queue.c$2414$2_0$396 ==.
;	queue.c:2414: xReturn = pdTRUE;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$queue.c$2418$2_0$397 ==.
;	queue.c:2418: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2421$1_0$395 ==.
;	queue.c:2421: return xReturn;
	mov	dpl,r7
00104$:
	C$queue.c$2422$1_0$395 ==.
;	queue.c:2422: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
	C$queue.c$2422$1_0$395 ==.
	XG$xQueueIsQueueEmptyFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIsQueueFull'
;------------------------------------------------------------
;pxQueue                   Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	Fqueue$prvIsQueueFull$0$0 ==.
	C$queue.c$2425$1_0$399 ==.
;	queue.c:2425: static BaseType_t prvIsQueueFull( const Queue_t * pxQueue )
;	-----------------------------------------
;	 function prvIsQueueFull
;	-----------------------------------------
_prvIsQueueFull:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2429$1_0$399 ==.
;	queue.c:2429: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$queue.c$2431$2_0$400 ==.
;	queue.c:2431: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	cjne	a,ar5,00110$
	sjmp	00111$
00110$:
	ljmp	00102$
00111$:
	C$queue.c$2433$3_0$401 ==.
;	queue.c:2433: xReturn = pdTRUE;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$queue.c$2437$3_0$402 ==.
;	queue.c:2437: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2440$1_0$399 ==.
;	queue.c:2440: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$queue.c$2442$1_0$399 ==.
;	queue.c:2442: return xReturn;
	mov	dpl,r7
00104$:
	C$queue.c$2443$1_0$399 ==.
;	queue.c:2443: }
	C$queue.c$2443$1_0$399 ==.
	XFqueue$prvIsQueueFull$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xQueueIsQueueFullFromISR'
;------------------------------------------------------------
;xQueue                    Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;pxQueue                   Allocated to registers 
;------------------------------------------------------------
	G$xQueueIsQueueFullFromISR$0$0 ==.
	C$queue.c$2446$1_0$404 ==.
;	queue.c:2446: BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
;	-----------------------------------------
;	 function xQueueIsQueueFullFromISR
;	-----------------------------------------
_xQueueIsQueueFullFromISR:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$queue.c$2453$1_0$404 ==.
;	queue.c:2453: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
	mov	a,#0x24
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x25
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	a,r2
	cjne	a,ar5,00110$
	sjmp	00111$
00110$:
	ljmp	00102$
00111$:
	C$queue.c$2455$2_0$405 ==.
;	queue.c:2455: xReturn = pdTRUE;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$queue.c$2459$2_0$406 ==.
;	queue.c:2459: xReturn = pdFALSE;
	mov	r7,#0x00
00103$:
	C$queue.c$2462$1_0$404 ==.
;	queue.c:2462: return xReturn;
	mov	dpl,r7
00104$:
	C$queue.c$2463$1_0$404 ==.
;	queue.c:2463: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
	C$queue.c$2463$1_0$404 ==.
	XG$xQueueIsQueueFullFromISR$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
