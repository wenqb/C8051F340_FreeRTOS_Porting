;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl __sdcc_external_startup
	.globl _xSerialPutChar
	.globl _xSerialPortInitMinimal
	.globl _vTaskStartScheduler
	.globl _vTaskDelay
	.globl _vTaskDelete
	.globl _xTaskCreate
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
	.globl _LED3Task_Handler
	.globl _LED2Task_Handler
	.globl _LED1Task_Handler
	.globl _LED0Task_Handler
	.globl _StartTask_Handler
	.globl _start_task
	.globl _led0_task
	.globl _led1_task
	.globl _led2_task
	.globl _led3_task
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
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
G$StartTask_Handler$0_0$0==.
_StartTask_Handler::
	.ds 3
G$LED0Task_Handler$0_0$0==.
_LED0Task_Handler::
	.ds 3
G$LED1Task_Handler$0_0$0==.
_LED1Task_Handler::
	.ds 3
G$LED2Task_Handler$0_0$0==.
_LED2Task_Handler::
	.ds 3
G$LED3Task_Handler$0_0$0==.
_LED3Task_Handler::
	.ds 3
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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_vSerialISR
	.ds	5
	ljmp	_vTimer2ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
	G$_sdcc_external_startup$0$0 ==.
	C$main.c$57$0_0$133 ==.
;	main.c:57: void _sdcc_external_startup(void){
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$59$1_0$133 ==.
;	main.c:59: PCA0MD &= ~0x40;
	anl	_PCA0MD,#0xbf
00101$:
	C$main.c$60$1_0$133 ==.
;	main.c:60: }
	C$main.c$60$1_0$133 ==.
	XG$_sdcc_external_startup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;myStr                     Allocated to stack - _bp +14
;myStr2                    Allocated to stack - _bp +1
;myStrPtr                  Allocated to registers r5 r6 r7 
;myStrPtr2                 Allocated to registers 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$62$1_0$135 ==.
;	main.c:62: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x1f
	mov	sp,a
	C$main.c$64$2_0$135 ==.
;	main.c:64: char myStr[] = "System start...\r\n";
	mov	a,_bp
	add	a,#0x0e
	mov	r1,a
	mov	@r1,#0x53
	mov	a,r1
	inc	a
	mov	r0,acc
	mov	@r0,#0x79
	mov	a,#0x02
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x73
	mov	a,#0x03
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x74
	mov	a,#0x04
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x65
	mov	a,#0x05
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x6d
	mov	a,#0x06
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x20
	mov	a,#0x07
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x73
	mov	a,#0x08
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x74
	mov	a,#0x09
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x61
	mov	a,#0x0a
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x72
	mov	a,#0x0b
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x74
	mov	a,#0x0c
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x2e
	mov	a,#0x0d
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x2e
	mov	a,#0x0e
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x2e
	mov	a,#0x0f
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x0d
	mov	a,#0x10
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x0a
	mov	a,#0x11
	add	a,r1
	mov	r0,acc
	mov	@r0,#0x00
	C$main.c$65$2_0$135 ==.
;	main.c:65: char myStr2[] = "Running...\r\n";
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x52
	mov	a,r0
	inc	a
	push	ar0
	mov	r0,acc
	mov	@r0,#0x75
	pop	ar0
	mov	a,#0x02
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x6e
	pop	ar0
	mov	a,#0x03
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x6e
	pop	ar0
	mov	a,#0x04
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x69
	pop	ar0
	mov	a,#0x05
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x6e
	pop	ar0
	mov	a,#0x06
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x67
	pop	ar0
	mov	a,#0x07
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x2e
	pop	ar0
	mov	a,#0x08
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x2e
	pop	ar0
	mov	a,#0x09
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x2e
	pop	ar0
	mov	a,#0x0a
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x0d
	pop	ar0
	mov	a,#0x0b
	add	a,r0
	push	ar0
	mov	r0,acc
	mov	@r0,#0x0a
	pop	ar0
	mov	a,#0x0c
	add	a,r0
	mov	r0,acc
	mov	@r0,#0x00
	C$main.c$66$2_0$135 ==.
;	main.c:66: char *myStrPtr = myStr;
	mov	ar7,r1
	mov	ar5,r7
	mov	r6,#0x00
	mov	r7,#0x40
	C$main.c$82$1_0$135 ==.
;	main.c:82: OSCICN = 0x83;
	mov	_OSCICN,#0x83
	C$main.c$85$1_0$135 ==.
;	main.c:85: for(i=0;i<256;i++);
	mov	r3,#0x00
	mov	r4,#0x01
00113$:
	dec	r3
	cjne	r3,#0xff,00143$
	dec	r4
00143$:
	mov	a,r3
	orl	a,r4
	jz	00144$
	ljmp	00113$
00144$:
	C$main.c$86$1_0$135 ==.
;	main.c:86: while(!(OSCICN | 0x40));
00102$:
	C$main.c$89$1_0$135 ==.
;	main.c:89: RSTSRC = 0x04;	//Enable missing clock detector
	mov	_RSTSRC,#0x04
	C$main.c$91$1_0$135 ==.
;	main.c:91: P3MDOUT = 0xFF;
	mov	_P3MDOUT,#0xff
	C$main.c$92$1_0$135 ==.
;	main.c:92: P0MDOUT |= 0x10;
	orl	_P0MDOUT,#0x10
	C$main.c$95$1_0$135 ==.
;	main.c:95: XBR0 = 0x01;	// Skip all pins in crossbar selection
	mov	_XBR0,#0x01
	C$main.c$96$1_0$135 ==.
;	main.c:96: XBR1 = 0x40;	// Enable the crossbar
	mov	_XBR1,#0x40
	C$main.c$99$1_0$135 ==.
;	main.c:99: xSerialPortInitMinimal(9600, 128);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x80
	push	acc
	mov	dpl,#0x80
	mov	dph,#0x25
	mov	b,#0x00
	mov	a,#0x00
	lcall	_xSerialPortInitMinimal
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$102$1_0$135 ==.
;	main.c:102: while(*myStrPtr){
00105$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	jnz	00145$
	ljmp	00107$
00145$:
	C$main.c$103$2_0$137 ==.
;	main.c:103: xSerialPutChar(0, *myStrPtr, 300);
	push	ar7
	push	ar6
	push	ar5
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	push	ar4
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	C$main.c$104$2_0$137 ==.
;	main.c:104: myStrPtr = myStrPtr + 1;
	inc	r5
	cjne	r5,#0x00,00146$
	inc	r6
00146$:
	ljmp	00105$
00107$:
	C$main.c$115$1_0$135 ==.
;	main.c:115: (TaskHandle_t*  )&StartTask_Handler);   //任务句柄              
	C$main.c$111$1_0$135 ==.
;	main.c:111: (const char*    )"start_task",          //任务名称
	C$main.c$110$1_0$135 ==.
;	main.c:110: xTaskCreate((TaskFunction_t )start_task,            //任务函数
	mov	a,#_StartTask_Handler
	push	acc
	mov	a,#(_StartTask_Handler >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	inc	a
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_start_task
	mov	dph,#(_start_task >> 8)
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$116$1_0$135 ==.
;	main.c:116: vTaskStartScheduler();          //开启任务调度
	lcall	_vTaskStartScheduler
	C$main.c$117$1_0$135 ==.
;	main.c:117: while(1){;}
00109$:
	ljmp	00109$
00114$:
	C$main.c$119$1_0$135 ==.
;	main.c:119: }
	mov	sp,_bp
	pop	_bp
	C$main.c$119$1_0$135 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_task'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	G$start_task$0$0 ==.
	C$main.c$122$1_0$140 ==.
;	main.c:122: void start_task(void *pvParameters)
;	-----------------------------------------
;	 function start_task
;	-----------------------------------------
_start_task:
	C$main.c$124$1_0$140 ==.
;	main.c:124: taskENTER_CRITICAL();           //进入临界区
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$main.c$131$1_0$140 ==.
;	main.c:131: (TaskHandle_t*  )&LED0Task_Handler);   
	C$main.c$127$1_0$140 ==.
;	main.c:127: (const char*    )"led0_task",   	
	C$main.c$126$1_0$140 ==.
;	main.c:126: xTaskCreate((TaskFunction_t )led0_task,     	
	mov	a,#_LED0Task_Handler
	push	acc
	mov	a,#(_LED0Task_Handler >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x32
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_led0_task
	mov	dph,#(_led0_task >> 8)
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$138$1_0$140 ==.
;	main.c:138: (TaskHandle_t*  )&LED1Task_Handler);         
	C$main.c$134$1_0$140 ==.
;	main.c:134: (const char*    )"led1_task",   
	C$main.c$133$1_0$140 ==.
;	main.c:133: xTaskCreate((TaskFunction_t )led1_task,     
	mov	a,#_LED1Task_Handler
	push	acc
	mov	a,#(_LED1Task_Handler >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x32
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_led1_task
	mov	dph,#(_led1_task >> 8)
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$145$1_0$140 ==.
;	main.c:145: (TaskHandle_t*  )&LED2Task_Handler); 
	C$main.c$141$1_0$140 ==.
;	main.c:141: (const char*    )"led2_task",   
	C$main.c$140$1_0$140 ==.
;	main.c:140: xTaskCreate((TaskFunction_t )led2_task,     
	mov	a,#_LED2Task_Handler
	push	acc
	mov	a,#(_LED2Task_Handler >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#0x02
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x32
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_led2_task
	mov	dph,#(_led2_task >> 8)
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$152$1_0$140 ==.
;	main.c:152: (TaskHandle_t*  )&LED3Task_Handler); 
	C$main.c$148$1_0$140 ==.
;	main.c:148: (const char*    )"led3_task",   
	C$main.c$147$1_0$140 ==.
;	main.c:147: xTaskCreate((TaskFunction_t )led3_task,     
	mov	a,#_LED3Task_Handler
	push	acc
	mov	a,#(_LED3Task_Handler >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#0x03
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x32
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_led3_task
	mov	dph,#(_led3_task >> 8)
	lcall	_xTaskCreate
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$main.c$153$1_0$140 ==.
;	main.c:153: vTaskDelete(StartTask_Handler); //删除开始任务
	mov	dptr,#_StartTask_Handler
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vTaskDelete
	C$main.c$154$1_0$140 ==.
;	main.c:154: taskEXIT_CRITICAL();            //退出临界区
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
00101$:
	C$main.c$155$1_0$140 ==.
;	main.c:155: }
	C$main.c$155$1_0$140 ==.
	XG$start_task$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'led0_task'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	G$led0_task$0$0 ==.
	C$main.c$158$1_0$142 ==.
;	main.c:158: void led0_task(void *pvParameters)
;	-----------------------------------------
;	 function led0_task
;	-----------------------------------------
_led0_task:
	C$main.c$160$1_0$142 ==.
;	main.c:160: while(1)
00102$:
	C$main.c$162$2_0$143 ==.
;	main.c:162: xSerialPutChar(0, 'T', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x54
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$163$2_0$143 ==.
;	main.c:163: xSerialPutChar(0, '0', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x30
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$164$2_0$143 ==.
;	main.c:164: xSerialPutChar(0, '\r', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$165$2_0$143 ==.
;	main.c:165: xSerialPutChar(0, '\n', 300);		
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$166$2_0$143 ==.
;	main.c:166: LED0=!LED0;
	cpl	_P3_3
	C$main.c$167$2_0$143 ==.
;	main.c:167: vTaskDelay(100);
	mov	dpl,#0x64
	mov	dph,#0x00
	lcall	_vTaskDelay
	ljmp	00102$
00104$:
	C$main.c$171$1_0$142 ==.
;	main.c:171: }   
	C$main.c$171$1_0$142 ==.
	XG$led0_task$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'led1_task'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	G$led1_task$0$0 ==.
	C$main.c$174$1_0$145 ==.
;	main.c:174: void led1_task(void *pvParameters)
;	-----------------------------------------
;	 function led1_task
;	-----------------------------------------
_led1_task:
	C$main.c$176$1_0$145 ==.
;	main.c:176: while(1)
00102$:
	C$main.c$178$2_0$146 ==.
;	main.c:178: xSerialPutChar(0, 'T', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x54
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$179$2_0$146 ==.
;	main.c:179: xSerialPutChar(0, '1', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x31
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$180$2_0$146 ==.
;	main.c:180: xSerialPutChar(0, '\r', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$181$2_0$146 ==.
;	main.c:181: xSerialPutChar(0, '\n', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$182$2_0$146 ==.
;	main.c:182: LED1=0;
;	assignBit
	clr	_P3_4
	C$main.c$183$2_0$146 ==.
;	main.c:183: vTaskDelay(30);
	mov	dpl,#0x1e
	mov	dph,#0x00
	lcall	_vTaskDelay
	C$main.c$184$2_0$146 ==.
;	main.c:184: LED1=1;
;	assignBit
	setb	_P3_4
	C$main.c$185$2_0$146 ==.
;	main.c:185: vTaskDelay(70);		
	mov	dpl,#0x46
	mov	dph,#0x00
	lcall	_vTaskDelay
	ljmp	00102$
00104$:
	C$main.c$187$1_0$145 ==.
;	main.c:187: }
	C$main.c$187$1_0$145 ==.
	XG$led1_task$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'led2_task'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	G$led2_task$0$0 ==.
	C$main.c$189$1_0$148 ==.
;	main.c:189: void led2_task(void *pvParameters)
;	-----------------------------------------
;	 function led2_task
;	-----------------------------------------
_led2_task:
	C$main.c$191$1_0$148 ==.
;	main.c:191: while(1)
00102$:
	C$main.c$193$2_0$149 ==.
;	main.c:193: xSerialPutChar(0, 'T', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x54
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$194$2_0$149 ==.
;	main.c:194: xSerialPutChar(0, '2', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x32
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$195$2_0$149 ==.
;	main.c:195: xSerialPutChar(0, '\r', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$196$2_0$149 ==.
;	main.c:196: xSerialPutChar(0, '\n', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$197$2_0$149 ==.
;	main.c:197: LED2=0;
;	assignBit
	clr	_P3_5
	C$main.c$198$2_0$149 ==.
;	main.c:198: vTaskDelay(100);
	mov	dpl,#0x64
	mov	dph,#0x00
	lcall	_vTaskDelay
	C$main.c$199$2_0$149 ==.
;	main.c:199: LED2=1;
;	assignBit
	setb	_P3_5
	C$main.c$200$2_0$149 ==.
;	main.c:200: vTaskDelay(50);		
	mov	dpl,#0x32
	mov	dph,#0x00
	lcall	_vTaskDelay
	ljmp	00102$
00104$:
	C$main.c$202$1_0$148 ==.
;	main.c:202: }
	C$main.c$202$1_0$148 ==.
	XG$led2_task$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'led3_task'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	G$led3_task$0$0 ==.
	C$main.c$204$1_0$151 ==.
;	main.c:204: void led3_task(void *pvParameters)
;	-----------------------------------------
;	 function led3_task
;	-----------------------------------------
_led3_task:
	C$main.c$206$1_0$151 ==.
;	main.c:206: while(1)
00102$:
	C$main.c$208$2_0$152 ==.
;	main.c:208: xSerialPutChar(0, 'T', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x54
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$209$2_0$152 ==.
;	main.c:209: xSerialPutChar(0, '3', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x33
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$210$2_0$152 ==.
;	main.c:210: xSerialPutChar(0, '\r', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0d
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$211$2_0$152 ==.
;	main.c:211: xSerialPutChar(0, '\n', 300);
	mov	a,#0x2c
	push	acc
	mov	a,#0x01
	push	acc
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
	lcall	_xSerialPutChar
	dec	sp
	dec	sp
	dec	sp
	C$main.c$212$2_0$152 ==.
;	main.c:212: LED3=0;
;	assignBit
	clr	_P3_6
	C$main.c$213$2_0$152 ==.
;	main.c:213: vTaskDelay(70);
	mov	dpl,#0x46
	mov	dph,#0x00
	lcall	_vTaskDelay
	C$main.c$214$2_0$152 ==.
;	main.c:214: LED3=1;
;	assignBit
	setb	_P3_6
	C$main.c$215$2_0$152 ==.
;	main.c:215: vTaskDelay(30);		
	mov	dpl,#0x1e
	mov	dph,#0x00
	lcall	_vTaskDelay
	ljmp	00102$
00104$:
	C$main.c$217$1_0$151 ==.
;	main.c:217: }
	C$main.c$217$1_0$151 ==.
	XG$led3_task$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmain$__str_2$0_0$0 == .
	.area CONST   (CODE)
___str_2:
	.ascii "start_task"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_3$0_0$0 == .
	.area CONST   (CODE)
___str_3:
	.ascii "led0_task"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_4$0_0$0 == .
	.area CONST   (CODE)
___str_4:
	.ascii "led1_task"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_5$0_0$0 == .
	.area CONST   (CODE)
___str_5:
	.ascii "led2_task"
	.db 0x00
	.area CSEG    (CODE)
Fmain$__str_6$0_0$0 == .
	.area CONST   (CODE)
___str_6:
	.ascii "led3_task"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
