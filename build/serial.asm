;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module serial
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _xQueueGenericCreate
	.globl _xQueueReceiveFromISR
	.globl _xQueueGenericSendFromISR
	.globl _xQueueReceive
	.globl _xQueueGenericSend
	.globl _vPortYield
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
	.globl _xSerialPortInitMinimal
	.globl _vSerialISR
	.globl _xSerialGetChar
	.globl _xSerialPutChar
	.globl _vSerialClose
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Fserial$uxTxEmpty$0_0$0==.
_uxTxEmpty:
	.ds 1
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
Fserial$xRxedChars$0_0$0==.
_xRxedChars:
	.ds 3
Fserial$xCharsForTx$0_0$0==.
_xCharsForTx:
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
;Allocation info for local variables in function 'xSerialPortInitMinimal'
;------------------------------------------------------------
;uxQueueLength             Allocated to stack - _bp -3
;ulWantedBaud              Allocated to stack - _bp +1
;ulReloadValue             Allocated to registers r7 
;fBaudConst                Allocated to registers 
;------------------------------------------------------------
	G$xSerialPortInitMinimal$0$0 ==.
	C$serial.c$53$0_0$156 ==.
;	serial.c:53: xComPortHandle xSerialPortInitMinimal( unsigned long ulWantedBaud, unsigned portBASE_TYPE uxQueueLength )
;	-----------------------------------------
;	 function xSerialPortInitMinimal
;	-----------------------------------------
_xSerialPortInitMinimal:
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
	push	acc
	C$serial.c$60$1_0$156 ==.
;	serial.c:60: portENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$serial.c$67$2_0$157 ==.
;	serial.c:67: uxTxEmpty = pdTRUE;
	mov	_uxTxEmpty,#0x01
	C$serial.c$70$2_0$157 ==.
;	serial.c:70: xRxedChars = xQueueCreate( uxQueueLength, ( unsigned portBASE_TYPE ) sizeof( char ) );
	mov	a,#0x00
	push	acc
	inc	a
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_xQueueGenericCreate
	mov	r2,dpl
	mov	r3,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	dptr,#_xRxedChars
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$serial.c$71$2_0$157 ==.
;	serial.c:71: xCharsForTx = xQueueCreate( uxQueueLength, ( unsigned portBASE_TYPE ) sizeof( char ) );
	mov	a,#0x00
	push	acc
	inc	a
	push	acc
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_xQueueGenericCreate
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	dec	sp
	dec	sp
	mov	dptr,#_xCharsForTx
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$serial.c$73$2_0$157 ==.
;	serial.c:73: SCON0 = 0x10;
	mov	_SCON0,#0x10
	C$serial.c$76$1_0$156 ==.
;	serial.c:76: ulReloadValue =  (unsigned long)(256.0-(float)configCPU_CLOCK_HZ/(float)ulWantedBaud/2.0/4.0+0.5);
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___ulong2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x00
	mov	dph,#0x1b
	mov	b,#0x37
	mov	a,#0x4b
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,#0x00
	push	acc
	push	acc
	mov	a,#0x80
	push	acc
	rr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsdiv
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#0x00
	mov	dph,#0x40
	mov	b,#0x80
	mov	a,#0x43
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fs2ulong
	mov	r7,dpl
	C$serial.c$78$2_0$157 ==.
;	serial.c:78: TMOD &= 0x08;
	anl	_TMOD,#0x08
	C$serial.c$79$2_0$157 ==.
;	serial.c:79: TMOD |= ser8BIT_WITH_RELOAD;
	orl	_TMOD,#0x20
	C$serial.c$82$2_0$157 ==.
;	serial.c:82: CKCON &= ~0x0B;                  // T1M = 0; SCA1:0 = 01                  
	anl	_CKCON,#0xf4
	C$serial.c$83$2_0$157 ==.
;	serial.c:83: CKCON |=  0x01;
	orl	_CKCON,#0x01
	C$serial.c$86$2_0$157 ==.
;	serial.c:86: TL1 = ( unsigned char ) ulReloadValue;
	mov	_TL1,r7
	C$serial.c$87$2_0$157 ==.
;	serial.c:87: TH1 = ( unsigned char ) ulReloadValue;
	mov	_TH1,r7
	C$serial.c$90$2_0$157 ==.
;	serial.c:90: SCON = ser8_BIT_MODE | serRX_ENABLE;
	mov	_SCON,#0x50
	C$serial.c$93$2_0$157 ==.
;	serial.c:93: ES = 1;
;	assignBit
	setb	_ES
	C$serial.c$96$2_0$157 ==.
;	serial.c:96: TR1 = 1;
;	assignBit
	setb	_TR1
	C$serial.c$97$2_0$157 ==.
;	serial.c:97: TI0 = 1;                            // Indicate TX0 ready
;	assignBit
	setb	_TI0
	C$serial.c$101$1_0$156 ==.
;	serial.c:101: portEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$serial.c$106$1_0$156 ==.
;	serial.c:106: return NULL;
	mov	dpl,#0x00
	mov	dph,#0x00
	mov	b,#0x00
00101$:
	C$serial.c$107$1_0$156 ==.
;	serial.c:107: }
	mov	sp,_bp
	pop	_bp
	C$serial.c$107$1_0$156 ==.
	XG$xSerialPortInitMinimal$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vSerialISR'
;------------------------------------------------------------
;cChar                     Allocated to stack - _bp +5
;xHigherPriorityTaskWoken  Allocated to stack - _bp +4
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$vSerialISR$0$0 ==.
	C$serial.c$110$1_0$159 ==.
;	serial.c:110: void vSerialISR( void ) __interrupt 4
;	-----------------------------------------
;	 function vSerialISR
;	-----------------------------------------
_vSerialISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x05
	mov	sp,a
	C$serial.c$113$2_0$159 ==.
;	serial.c:113: portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,#0x00
	C$serial.c$118$1_0$159 ==.
;	serial.c:118: portENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$serial.c$120$2_0$160 ==.
;	serial.c:120: if( RI ) 
	jb	_RI,00128$
	ljmp	00102$
00128$:
	C$serial.c$125$3_0$161 ==.
;	serial.c:125: cChar = SBUF;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,_SBUF
	C$serial.c$126$3_0$161 ==.
;	serial.c:126: RI = 0;
;	assignBit
	clr	_RI
	C$serial.c$128$3_0$161 ==.
;	serial.c:128: xQueueSendFromISR( xRxedChars, &cChar, &xHigherPriorityTaskWoken );
	mov	a,_bp
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x05
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_xRxedChars
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x00
	push	acc
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
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
	mov	b,r4
	lcall	_xQueueGenericSendFromISR
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00102$:
	C$serial.c$131$2_0$160 ==.
;	serial.c:131: if( TI ) 
	jb	_TI,00129$
	ljmp	00107$
00129$:
	C$serial.c$133$3_0$162 ==.
;	serial.c:133: if( xQueueReceiveFromISR( xCharsForTx, &cChar, &xHigherPriorityTaskWoken ) == ( portBASE_TYPE ) pdTRUE )
	mov	a,_bp
	add	a,#0x04
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x40
	mov	a,_bp
	add	a,#0x05
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_xCharsForTx
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	r0,_bp
	inc	r0
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
	mov	b,r4
	lcall	_xQueueReceiveFromISR
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	cjne	r7,#0x01,00130$
	sjmp	00131$
00130$:
	ljmp	00104$
00131$:
	C$serial.c$136$4_0$163 ==.
;	serial.c:136: SBUF = cChar;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	_SBUF,@r0
	ljmp	00105$
00104$:
	C$serial.c$141$4_0$164 ==.
;	serial.c:141: uxTxEmpty = pdTRUE;
	mov	_uxTxEmpty,#0x01
00105$:
	C$serial.c$144$3_0$162 ==.
;	serial.c:144: TI = 0;
;	assignBit
	clr	_TI
00107$:
	C$serial.c$147$2_0$160 ==.
;	serial.c:147: if( xHigherPriorityTaskWoken )
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	jnz	00132$
	ljmp	00109$
00132$:
	C$serial.c$149$3_0$165 ==.
;	serial.c:149: portYIELD();
	lcall	_vPortYield
00109$:
	C$serial.c$152$1_0$159 ==.
;	serial.c:152: portEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
00110$:
	C$serial.c$153$1_0$159 ==.
;	serial.c:153: }
	mov	sp,_bp
	pop	_bp
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$serial.c$153$1_0$159 ==.
	XG$vSerialISR$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'xSerialGetChar'
;------------------------------------------------------------
;pcRxedChar                Allocated to stack - _bp -5
;xBlockTime                Allocated to stack - _bp -7
;pxPort                    Allocated to registers 
;------------------------------------------------------------
	G$xSerialGetChar$0$0 ==.
	C$serial.c$156$1_0$167 ==.
;	serial.c:156: portBASE_TYPE xSerialGetChar( xComPortHandle pxPort, signed char *pcRxedChar, TickType_t xBlockTime )
;	-----------------------------------------
;	 function xSerialGetChar
;	-----------------------------------------
_xSerialGetChar:
	push	_bp
	mov	_bp,sp
	C$serial.c$163$1_0$167 ==.
;	serial.c:163: if( xQueueReceive( xRxedChars, pcRxedChar, xBlockTime ) )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dptr,#_xRxedChars
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_xQueueReceive
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,r7
	jnz	00110$
	ljmp	00102$
00110$:
	C$serial.c$165$2_0$168 ==.
;	serial.c:165: return ( portBASE_TYPE ) pdTRUE;
	mov	dpl,#0x01
	ljmp	00104$
00102$:
	C$serial.c$169$2_0$169 ==.
;	serial.c:169: return ( portBASE_TYPE ) pdFALSE;
	mov	dpl,#0x00
00104$:
	C$serial.c$171$1_0$167 ==.
;	serial.c:171: }
	pop	_bp
	C$serial.c$171$1_0$167 ==.
	XG$xSerialGetChar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xSerialPutChar'
;------------------------------------------------------------
;cOutChar                  Allocated to stack - _bp -3
;xBlockTime                Allocated to stack - _bp -5
;pxPort                    Allocated to registers 
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +5
;------------------------------------------------------------
	G$xSerialPutChar$0$0 ==.
	C$serial.c$174$1_0$171 ==.
;	serial.c:174: portBASE_TYPE xSerialPutChar( xComPortHandle pxPort, signed char cOutChar, TickType_t xBlockTime )
;	-----------------------------------------
;	 function xSerialPutChar
;	-----------------------------------------
_xSerialPutChar:
	push	_bp
	mov	_bp,sp
	C$serial.c$181$1_0$171 ==.
;	serial.c:181: portENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$serial.c$183$2_0$172 ==.
;	serial.c:183: if( uxTxEmpty == pdTRUE )
	mov	a,#0x01
	cjne	a,_uxTxEmpty,00116$
	sjmp	00117$
00116$:
	ljmp	00104$
00117$:
	C$serial.c$185$3_0$173 ==.
;	serial.c:185: SBUF = cOutChar;
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	_SBUF,@r0
	C$serial.c$186$3_0$173 ==.
;	serial.c:186: uxTxEmpty = pdFALSE;
	mov	_uxTxEmpty,#0x00
	C$serial.c$187$3_0$173 ==.
;	serial.c:187: xReturn = ( portBASE_TYPE ) pdTRUE;
	mov	r7,#0x01
	ljmp	00105$
00104$:
	C$serial.c$191$3_0$174 ==.
;	serial.c:191: xReturn = xQueueSend( xCharsForTx, &cOutChar, xBlockTime );
	mov	a,_bp
	add	a,#0xfd
	mov	r6,a
	mov	ar7,r6
	mov	r5,#0x00
	mov	r4,#0x40
	mov	dptr,#_xCharsForTx
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x00
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar7
	push	ar5
	push	ar4
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	lcall	_xQueueGenericSend
	mov	r6,dpl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	mov	ar7,r6
	C$serial.c$193$3_0$174 ==.
;	serial.c:193: if( xReturn == ( portBASE_TYPE ) pdFALSE )
	mov	a,r6
	jz	00118$
	ljmp	00105$
00118$:
	C$serial.c$195$4_0$175 ==.
;	serial.c:195: xReturn = ( portBASE_TYPE ) pdTRUE;
	mov	r7,#0x01
00105$:
	C$serial.c$199$1_0$171 ==.
;	serial.c:199: portEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$serial.c$201$1_0$171 ==.
;	serial.c:201: return xReturn;
	mov	dpl,r7
00106$:
	C$serial.c$202$1_0$171 ==.
;	serial.c:202: }
	pop	_bp
	C$serial.c$202$1_0$171 ==.
	XG$xSerialPutChar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vSerialClose'
;------------------------------------------------------------
;xPort                     Allocated to registers 
;------------------------------------------------------------
	G$vSerialClose$0$0 ==.
	C$serial.c$205$1_0$177 ==.
;	serial.c:205: void vSerialClose( xComPortHandle xPort )
;	-----------------------------------------
;	 function vSerialClose
;	-----------------------------------------
_vSerialClose:
	C$serial.c$208$1_0$177 ==.
;	serial.c:208: ( void ) xPort;
00101$:
	C$serial.c$209$1_0$177 ==.
;	serial.c:209: }
	C$serial.c$209$1_0$177 ==.
	XG$vSerialClose$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
