;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module tasks
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uxTopUsedPriority
	.globl _uxListRemove
	.globl _vListInsertEnd
	.globl _vListInsert
	.globl _vListInitialiseItem
	.globl _vListInitialise
	.globl _vPortEndScheduler
	.globl _xPortStartScheduler
	.globl _vPortFree
	.globl _pvPortMalloc
	.globl _pxPortInitialiseStack
	.globl _vPortYield
	.globl _memset
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
	.globl _pxCurrentTCB
	.globl _xTaskCreate
	.globl _vTaskDelete
	.globl _vTaskDelay
	.globl _vTaskStartScheduler
	.globl _vTaskEndScheduler
	.globl _vTaskSuspendAll
	.globl _xTaskResumeAll
	.globl _xTaskGetTickCount
	.globl _xTaskGetTickCountFromISR
	.globl _uxTaskGetNumberOfTasks
	.globl _pcTaskGetName
	.globl _xTaskCatchUpTicks
	.globl _xTaskIncrementTick
	.globl _vTaskSwitchContext
	.globl _vTaskPlaceOnEventList
	.globl _vTaskPlaceOnUnorderedEventList
	.globl _xTaskRemoveFromEventList
	.globl _vTaskRemoveFromUnorderedEventList
	.globl _vTaskSetTimeOutState
	.globl _vTaskInternalSetTimeOutState
	.globl _xTaskCheckForTimeOut
	.globl _vTaskMissedYield
	.globl _uxTaskResetEventItemValue
	.globl _ulTaskGenericNotifyTake
	.globl _xTaskGenericNotifyWait
	.globl _xTaskGenericNotify
	.globl _xTaskGenericNotifyFromISR
	.globl _vTaskGenericNotifyGiveFromISR
	.globl _xTaskGenericNotifyStateClear
	.globl _ulTaskGenericNotifyValueClear
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
Ftasks$pxReadyTasksLists$0_0$0==.
_pxReadyTasksLists:
	.ds 48
Ftasks$xDelayedTaskList1$0_0$0==.
_xDelayedTaskList1:
	.ds 12
Ftasks$xDelayedTaskList2$0_0$0==.
_xDelayedTaskList2:
	.ds 12
Ftasks$pxDelayedTaskList$0_0$0==.
_pxDelayedTaskList:
	.ds 3
Ftasks$pxOverflowDelayedTaskList$0_0$0==.
_pxOverflowDelayedTaskList:
	.ds 3
Ftasks$xPendingReadyList$0_0$0==.
_xPendingReadyList:
	.ds 12
Ftasks$xTasksWaitingTermination$0_0$0==.
_xTasksWaitingTermination:
	.ds 12
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$pxCurrentTCB$0_0$0==.
_pxCurrentTCB::
	.ds 3
Ftasks$uxDeletedTasksWaitingCleanUp$0_0$0==.
_uxDeletedTasksWaitingCleanUp:
	.ds 1
Ftasks$uxCurrentNumberOfTasks$0_0$0==.
_uxCurrentNumberOfTasks:
	.ds 1
Ftasks$xTickCount$0_0$0==.
_xTickCount:
	.ds 2
Ftasks$uxTopReadyPriority$0_0$0==.
_uxTopReadyPriority:
	.ds 1
Ftasks$xSchedulerRunning$0_0$0==.
_xSchedulerRunning:
	.ds 1
Ftasks$xPendedTicks$0_0$0==.
_xPendedTicks:
	.ds 2
Ftasks$xYieldPending$0_0$0==.
_xYieldPending:
	.ds 1
Ftasks$xNumOfOverflows$0_0$0==.
_xNumOfOverflows:
	.ds 1
Ftasks$uxTaskNumber$0_0$0==.
_uxTaskNumber:
	.ds 1
Ftasks$xNextTaskUnblockTime$0_0$0==.
_xNextTaskUnblockTime:
	.ds 2
Ftasks$xIdleTaskHandle$0_0$0==.
_xIdleTaskHandle:
	.ds 3
Ftasks$uxSchedulerSuspended$0_0$0==.
_uxSchedulerSuspended:
	.ds 1
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
;Allocation info for local variables in function 'xTaskCreate'
;------------------------------------------------------------
;pcName                    Allocated to stack - _bp -5
;usStackDepth              Allocated to stack - _bp -7
;pvParameters              Allocated to stack - _bp -10
;uxPriority                Allocated to stack - _bp -11
;pxCreatedTask             Allocated to stack - _bp -14
;pxTaskCode                Allocated to registers r6 r7 
;pxNewTCB                  Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$xTaskCreate$0$0 ==.
	C$tasks.c$728$0_0$161 ==.
;	tasks.c:728: BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
;	-----------------------------------------
;	 function xTaskCreate
;	-----------------------------------------
_xTaskCreate:
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
	inc	sp
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
	C$tasks.c$746$2_0$162 ==.
;	tasks.c:746: pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
	mov	dpl,#0x33
	mov	dph,#0x00
	push	ar7
	push	ar6
	lcall	_pvPortMalloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$tasks.c$748$2_0$162 ==.
;	tasks.c:748: if( pxNewTCB != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00122$
	ljmp	00104$
00122$:
	C$tasks.c$753$1_0$161 ==.
;	tasks.c:753: pxNewTCB->pxStack = ( StackType_t * ) pvPortMallocStack( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	push	ar6
	push	ar7
	mov	r0,_bp
	inc	r0
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	push	ar2
	lcall	_pvPortMalloc
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	pop	ar2
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$755$1_0$161 ==.
;	tasks.c:755: if( pxNewTCB->pxStack == NULL )
	pop	ar7
	pop	ar6
	mov	a,r3
	orl	a,r4
	jz	00123$
	ljmp	00104$
00123$:
	C$tasks.c$758$4_0$164 ==.
;	tasks.c:758: vPortFree( pxNewTCB );
	mov	r0,_bp
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	push	ar6
	lcall	_vPortFree
	pop	ar6
	pop	ar7
	C$tasks.c$759$4_0$164 ==.
;	tasks.c:759: pxNewTCB = NULL;
	mov	r0,_bp
	inc	r0
	mov	a,#0x00
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
00104$:
	C$tasks.c$794$1_0$161 ==.
;	tasks.c:794: if( pxNewTCB != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00124$
	ljmp	00106$
00124$:
	C$tasks.c$804$2_0$165 ==.
;	tasks.c:804: prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
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
	mov	a,_bp
	add	a,#0xf2
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
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	push	ar2
	push	ar3
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
	mov	dpl,r6
	mov	dph,r7
	lcall	_prvInitialiseNewTask
	mov	a,sp
	add	a,#0xec
	mov	sp,a
	C$tasks.c$805$2_0$165 ==.
;	tasks.c:805: prvAddNewTaskToReadyList( pxNewTCB );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvAddNewTaskToReadyList
	C$tasks.c$806$2_0$165 ==.
;	tasks.c:806: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00107$
00106$:
	C$tasks.c$810$2_0$166 ==.
;	tasks.c:810: xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
	mov	r7,#0xff
00107$:
	C$tasks.c$813$1_0$161 ==.
;	tasks.c:813: return xReturn;
	mov	dpl,r7
00108$:
	C$tasks.c$814$1_0$161 ==.
;	tasks.c:814: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$814$1_0$161 ==.
	XG$xTaskCreate$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseNewTask'
;------------------------------------------------------------
;pcName                    Allocated to stack - _bp -5
;ulStackDepth              Allocated to stack - _bp -9
;pvParameters              Allocated to stack - _bp -12
;uxPriority                Allocated to stack - _bp -13
;pxCreatedTask             Allocated to stack - _bp -16
;pxNewTCB                  Allocated to stack - _bp -19
;xRegions                  Allocated to stack - _bp -22
;pxTaskCode                Allocated to stack - _bp +1
;pxTopOfStack              Allocated to stack - _bp +12
;x                         Allocated to registers r3 
;sloc0                     Allocated to stack - _bp +6
;sloc1                     Allocated to stack - _bp +9
;sloc2                     Allocated to stack - _bp +3
;------------------------------------------------------------
	Ftasks$prvInitialiseNewTask$0$0 ==.
	C$tasks.c$819$1_0$168 ==.
;	tasks.c:819: static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
;	-----------------------------------------
;	 function prvInitialiseNewTask
;	-----------------------------------------
_prvInitialiseNewTask:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
	C$tasks.c$876$2_0$169 ==.
;	tasks.c:876: pxTopOfStack = pxNewTCB->pxStack;
	mov	a,_bp
	add	a,#0xed
	mov	r0,a
	mov	a,_bp
	add	a,#0x03
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x20
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	C$tasks.c$883$2_0$169 ==.
;	tasks.c:883: pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x2b
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
	add	a,#0xf7
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r5,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r2
	add	a,@r0
	mov	r2,a
	mov	a,r6
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$888$1_0$168 ==.
;	tasks.c:888: if( pcName != NULL )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00136$
	ljmp	00105$
00136$:
	C$tasks.c$890$4_0$172 ==.
;	tasks.c:890: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x23
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	r3,#0x00
00111$:
	C$tasks.c$892$4_0$172 ==.
;	tasks.c:892: pxNewTCB->pcTaskName[ x ] = pcName[ x ];
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	a,r3
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r3
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
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$897$4_0$172 ==.
;	tasks.c:897: if( pcName[ x ] == ( char ) 0x00 )
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	pop	ar7
	pop	ar6
	pop	ar5
	jnz	00137$
	ljmp	00103$
00137$:
	C$tasks.c$890$3_0$171 ==.
;	tasks.c:890: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
	inc	r3
	cjne	r3,#0x08,00138$
00138$:
	jnc	00139$
	ljmp	00111$
00139$:
00103$:
	C$tasks.c$909$2_0$170 ==.
;	tasks.c:909: pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x2a
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
	ljmp	00106$
00105$:
	C$tasks.c$915$2_0$175 ==.
;	tasks.c:915: pxNewTCB->pcTaskName[ 0 ] = 0x00;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x23
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
00106$:
	C$tasks.c$921$1_0$168 ==.
;	tasks.c:921: if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	cjne	@r0,#0x04,00140$
00140$:
	jnc	00141$
	ljmp	00108$
00141$:
	C$tasks.c$923$2_0$176 ==.
;	tasks.c:923: uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	@r0,#0x03
00108$:
	C$tasks.c$930$1_0$168 ==.
;	tasks.c:930: pxNewTCB->uxPriority = uxPriority;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x1f
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
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$938$1_0$168 ==.
;	tasks.c:938: vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x03
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
	lcall	_vListInitialiseItem
	C$tasks.c$939$1_0$168 ==.
;	tasks.c:939: vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x11
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
	lcall	_vListInitialiseItem
	C$tasks.c$943$1_0$168 ==.
;	tasks.c:943: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x0b
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xed
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
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
	C$tasks.c$946$1_0$168 ==.
;	tasks.c:946: listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,#0x11
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
	add	a,#0xf3
	mov	r0,a
	mov	ar7,@r0
	mov	r6,#0x00
	mov	a,#0x04
	clr	c
	subb	a,r7
	mov	r7,a
	mov	a,#0x00
	subb	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$tasks.c$947$1_0$168 ==.
;	tasks.c:947: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x19
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$986$2_0$179 ==.
;	tasks.c:986: memset( ( void * ) &( pxNewTCB->ulNotifiedValue[ 0 ] ), 0x00, sizeof( pxNewTCB->ulNotifiedValue ) );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x04
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$987$2_0$179 ==.
;	tasks.c:987: memset( ( void * ) &( pxNewTCB->ucNotifyState[ 0 ] ), 0x00, sizeof( pxNewTCB->ucNotifyState ) );
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x01
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memset
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$1052$3_0$181 ==.
;	tasks.c:1052: pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
	mov	a,_bp
	add	a,#0xf4
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
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_pxPortInitialiseStack
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	C$tasks.c$1058$1_0$168 ==.
;	tasks.c:1058: if( pxCreatedTask != NULL )
	mov	a,_bp
	add	a,#0xf0
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00142$
	ljmp	00113$
00142$:
	C$tasks.c$1062$2_0$182 ==.
;	tasks.c:1062: *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
	mov	a,_bp
	add	a,#0xf0
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
00113$:
	C$tasks.c$1068$1_0$168 ==.
;	tasks.c:1068: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$1068$1_0$168 ==.
	XFtasks$prvInitialiseNewTask$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvAddNewTaskToReadyList'
;------------------------------------------------------------
;pxNewTCB                  Allocated to stack - _bp +1
;pxIndex                   Allocated to stack - _bp +13
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +4
;sloc2                     Allocated to stack - _bp +10
;------------------------------------------------------------
	Ftasks$prvAddNewTaskToReadyList$0$0 ==.
	C$tasks.c$1071$1_0$185 ==.
;	tasks.c:1071: static void prvAddNewTaskToReadyList( TCB_t * pxNewTCB )
;	-----------------------------------------
;	 function prvAddNewTaskToReadyList
;	-----------------------------------------
_prvAddNewTaskToReadyList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x0c
	mov	sp,a
	C$tasks.c$1075$1_0$185 ==.
;	tasks.c:1075: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$1077$2_0$186 ==.
;	tasks.c:1077: uxCurrentNumberOfTasks++;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	C$tasks.c$1079$2_0$186 ==.
;	tasks.c:1079: if( pxCurrentTCB == NULL )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r2
	orl	a,r3
	jz	00140$
	ljmp	00108$
00140$:
	C$tasks.c$1083$3_0$187 ==.
;	tasks.c:1083: pxCurrentTCB = pxNewTCB;
	mov	r0,_bp
	inc	r0
	mov	dptr,#_pxCurrentTCB
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$tasks.c$1085$3_0$187 ==.
;	tasks.c:1085: if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00141$
	sjmp	00142$
00141$:
	ljmp	00109$
00142$:
	C$tasks.c$1090$4_0$188 ==.
;	tasks.c:1090: prvInitialiseTaskLists();
	lcall	_prvInitialiseTaskLists
	ljmp	00109$
00108$:
	C$tasks.c$1102$3_0$190 ==.
;	tasks.c:1102: if( xSchedulerRunning == pdFALSE )
	mov	dptr,#_xSchedulerRunning
	movx	a,@dptr
	jz	00143$
	ljmp	00109$
00143$:
	C$tasks.c$1104$4_0$191 ==.
;	tasks.c:1104: if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x1f
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x1f
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
	mov	r3,a
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	00144$
	ljmp	00109$
00144$:
	C$tasks.c$1106$5_0$192 ==.
;	tasks.c:1106: pxCurrentTCB = pxNewTCB;
	mov	r0,_bp
	inc	r0
	mov	dptr,#_pxCurrentTCB
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
00109$:
	C$tasks.c$1119$2_0$186 ==.
;	tasks.c:1119: uxTaskNumber++;
	mov	dptr,#_uxTaskNumber
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$tasks.c$1129$3_0$195 ==.
;	tasks.c:1129: prvAddTaskToReadyList( pxNewTCB );
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x1f
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
	mov	r4,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r3
	subb	a,r4
	jc	00145$
	ljmp	00111$
00145$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00111$:
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
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,#0x02
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	C$tasks.c$1133$1_0$185 ==.
;	tasks.c:1133: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$1135$1_0$185 ==.
;	tasks.c:1135: if( xSchedulerRunning != pdFALSE )
	mov	dptr,#_xSchedulerRunning
	movx	a,@dptr
	jnz	00146$
	ljmp	00114$
00146$:
	C$tasks.c$1139$2_0$198 ==.
;	tasks.c:1139: if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
00114$:
	C$tasks.c$1152$1_0$185 ==.
;	tasks.c:1152: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$1152$1_0$185 ==.
	XFtasks$prvAddNewTaskToReadyList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskDelete'
;------------------------------------------------------------
;xTaskToDelete             Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$vTaskDelete$0$0 ==.
	C$tasks.c$1157$1_0$203 ==.
;	tasks.c:1157: void vTaskDelete( TaskHandle_t xTaskToDelete )
;	-----------------------------------------
;	 function vTaskDelete
;	-----------------------------------------
_vTaskDelete:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$1161$1_0$203 ==.
;	tasks.c:1161: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$1165$2_0$204 ==.
;	tasks.c:1165: pxTCB = prvGetTCBFromHandle( xTaskToDelete );
	mov	a,r5
	orl	a,r6
	jz	00142$
	ljmp	00116$
00142$:
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	ljmp	00117$
00116$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00117$:
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$1168$2_0$204 ==.
;	tasks.c:1168: if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
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
	lcall	_uxListRemove
	C$tasks.c$1178$2_0$204 ==.
;	tasks.c:1178: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	r0,_bp
	inc	r0
	mov	a,#0x1c
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,r5
	orl	a,r6
	jnz	00143$
	ljmp	00104$
00143$:
	C$tasks.c$1180$3_0$207 ==.
;	tasks.c:1180: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_uxListRemove
00104$:
	C$tasks.c$1191$2_0$204 ==.
;	tasks.c:1191: uxTaskNumber++;
	mov	dptr,#_uxTaskNumber
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$tasks.c$1193$2_0$204 ==.
;	tasks.c:1193: if( pxTCB == pxCurrentTCB )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar5
	push	ar6
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
	jnz	00144$
	sjmp	00145$
00144$:
	ljmp	00106$
00145$:
	C$tasks.c$1200$3_0$209 ==.
;	tasks.c:1200: vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xStateListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,#_xTasksWaitingTermination
	mov	dph,#(_xTasksWaitingTermination >> 8)
	mov	b,#0x00
	lcall	_vListInsertEnd
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$1205$3_0$209 ==.
;	tasks.c:1205: ++uxDeletedTasksWaitingCleanUp;
	mov	dptr,#_uxDeletedTasksWaitingCleanUp
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00107$
00106$:
	C$tasks.c$1220$3_0$210 ==.
;	tasks.c:1220: --uxCurrentNumberOfTasks;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	C$tasks.c$1225$3_0$210 ==.
;	tasks.c:1225: prvResetNextTaskUnblockTime();
	lcall	_prvResetNextTaskUnblockTime
00107$:
	C$tasks.c$1228$1_0$203 ==.
;	tasks.c:1228: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$1233$1_0$203 ==.
;	tasks.c:1233: if( pxTCB != pxCurrentTCB )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar5
	push	ar6
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
	jnz	00146$
	ljmp	00109$
00146$:
	C$tasks.c$1235$2_0$211 ==.
;	tasks.c:1235: prvDeleteTCB( pxTCB );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_prvDeleteTCB
00109$:
	C$tasks.c$1240$1_0$203 ==.
;	tasks.c:1240: if( xSchedulerRunning != pdFALSE )
	mov	dptr,#_xSchedulerRunning
	movx	a,@dptr
	jnz	00147$
	ljmp	00114$
00147$:
	C$tasks.c$1242$2_0$212 ==.
;	tasks.c:1242: if( pxTCB == pxCurrentTCB )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar5
	push	ar6
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
	jnz	00148$
	sjmp	00149$
00148$:
	ljmp	00114$
00149$:
	C$tasks.c$1245$3_0$213 ==.
;	tasks.c:1245: portYIELD_WITHIN_API();
	lcall	_vPortYield
00114$:
	C$tasks.c$1252$1_0$203 ==.
;	tasks.c:1252: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$1252$1_0$203 ==.
	XG$vTaskDelete$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskDelay'
;------------------------------------------------------------
;xTicksToDelay             Allocated to registers r6 r7 
;xAlreadyYielded           Allocated to registers r5 
;------------------------------------------------------------
	G$vTaskDelay$0$0 ==.
	C$tasks.c$1346$1_0$216 ==.
;	tasks.c:1346: void vTaskDelay( const TickType_t xTicksToDelay )
;	-----------------------------------------
;	 function vTaskDelay
;	-----------------------------------------
_vTaskDelay:
	mov	r6,dpl
	mov	r7,dph
	C$tasks.c$1348$2_0$216 ==.
;	tasks.c:1348: BaseType_t xAlreadyYielded = pdFALSE;
	mov	r5,#0x00
	C$tasks.c$1351$1_0$216 ==.
;	tasks.c:1351: if( xTicksToDelay > ( TickType_t ) 0U )
	mov	a,r6
	orl	a,r7
	jnz	00115$
	ljmp	00102$
00115$:
	C$tasks.c$1354$2_0$217 ==.
;	tasks.c:1354: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	pop	ar7
	C$tasks.c$1365$3_0$218 ==.
;	tasks.c:1365: prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
	mov	a,#0x00
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$1367$2_0$217 ==.
;	tasks.c:1367: xAlreadyYielded = xTaskResumeAll();
	lcall	_xTaskResumeAll
	mov	r7,dpl
	mov	ar5,r7
00102$:
	C$tasks.c$1376$1_0$216 ==.
;	tasks.c:1376: if( xAlreadyYielded == pdFALSE )
	mov	a,r5
	jz	00116$
	ljmp	00105$
00116$:
	C$tasks.c$1378$2_0$220 ==.
;	tasks.c:1378: portYIELD_WITHIN_API();
	lcall	_vPortYield
00105$:
	C$tasks.c$1384$1_0$216 ==.
;	tasks.c:1384: }
	C$tasks.c$1384$1_0$216 ==.
	XG$vTaskDelay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskStartScheduler'
;------------------------------------------------------------
;xReturn                   Allocated to registers r7 
;------------------------------------------------------------
	G$vTaskStartScheduler$0$0 ==.
	C$tasks.c$1997$1_0$223 ==.
;	tasks.c:1997: void vTaskStartScheduler( void )
;	-----------------------------------------
;	 function vTaskStartScheduler
;	-----------------------------------------
_vTaskStartScheduler:
	C$tasks.c$2036$2_0$224 ==.
;	tasks.c:2036: &xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
	C$tasks.c$2032$2_0$224 ==.
;	tasks.c:2032: configIDLE_TASK_NAME,
	C$tasks.c$2031$2_0$224 ==.
;	tasks.c:2031: xReturn = xTaskCreate( prvIdleTask,
	mov	a,#_xIdleTaskHandle
	push	acc
	mov	a,#(_xIdleTaskHandle >> 8)
	push	acc
	mov	a,#0x00
	push	acc
	push	acc
	push	acc
	push	acc
	push	acc
	mov	a,#0xa7
	push	acc
	mov	a,#0x00
	push	acc
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	dpl,#_prvIdleTask
	mov	dph,#(_prvIdleTask >> 8)
	lcall	_xTaskCreate
	mov	r7,dpl
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	C$tasks.c$2053$1_0$223 ==.
;	tasks.c:2053: if( xReturn == pdPASS )
	cjne	r7,#0x01,00111$
	sjmp	00112$
00111$:
	ljmp	00104$
00112$:
	C$tasks.c$2069$2_0$225 ==.
;	tasks.c:2069: portDISABLE_INTERRUPTS();
;	assignBit
	clr	_EA
	C$tasks.c$2081$2_0$225 ==.
;	tasks.c:2081: xNextTaskUnblockTime = portMAX_DELAY;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2082$2_0$225 ==.
;	tasks.c:2082: xSchedulerRunning = pdTRUE;
	mov	dptr,#_xSchedulerRunning
	mov	a,#0x01
	movx	@dptr,a
	C$tasks.c$2083$2_0$225 ==.
;	tasks.c:2083: xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
	mov	dptr,#_xTickCount
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2097$2_0$225 ==.
;	tasks.c:2097: if( xPortStartScheduler() != pdFALSE )
	lcall	_xPortStartScheduler
00104$:
	C$tasks.c$2121$1_0$223 ==.
;	tasks.c:2121: ( void ) uxTopUsedPriority;
	mov	dptr,#_uxTopUsedPriority
	clr	a
	movc	a,@a+dptr
00105$:
	C$tasks.c$2122$1_0$223 ==.
;	tasks.c:2122: }
	C$tasks.c$2122$1_0$223 ==.
	XG$vTaskStartScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskEndScheduler'
;------------------------------------------------------------
	G$vTaskEndScheduler$0$0 ==.
	C$tasks.c$2125$1_0$230 ==.
;	tasks.c:2125: void vTaskEndScheduler( void )
;	-----------------------------------------
;	 function vTaskEndScheduler
;	-----------------------------------------
_vTaskEndScheduler:
	C$tasks.c$2130$1_0$230 ==.
;	tasks.c:2130: portDISABLE_INTERRUPTS();
;	assignBit
	clr	_EA
	C$tasks.c$2131$1_0$230 ==.
;	tasks.c:2131: xSchedulerRunning = pdFALSE;
	mov	dptr,#_xSchedulerRunning
	mov	a,#0x00
	movx	@dptr,a
	C$tasks.c$2132$1_0$230 ==.
;	tasks.c:2132: vPortEndScheduler();
	lcall	_vPortEndScheduler
00101$:
	C$tasks.c$2133$1_0$230 ==.
;	tasks.c:2133: }
	C$tasks.c$2133$1_0$230 ==.
	XG$vTaskEndScheduler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSuspendAll'
;------------------------------------------------------------
	G$vTaskSuspendAll$0$0 ==.
	C$tasks.c$2136$1_0$232 ==.
;	tasks.c:2136: void vTaskSuspendAll( void )
;	-----------------------------------------
;	 function vTaskSuspendAll
;	-----------------------------------------
_vTaskSuspendAll:
	C$tasks.c$2149$1_0$232 ==.
;	tasks.c:2149: ++uxSchedulerSuspended;
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00101$:
	C$tasks.c$2154$1_0$232 ==.
;	tasks.c:2154: }
	C$tasks.c$2154$1_0$232 ==.
	XG$vTaskSuspendAll$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskResumeAll'
;------------------------------------------------------------
;pxTCB                     Allocated to stack - _bp +16
;xAlreadyYielded           Allocated to registers 
;pxList                    Allocated to stack - _bp +19
;pxList                    Allocated to stack - _bp +19
;pxIndex                   Allocated to registers r2 r3 r4 
;xPendedCounts             Allocated to registers r4 r5 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +1
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +10
;sloc4                     Allocated to stack - _bp +13
;------------------------------------------------------------
	G$xTaskResumeAll$0$0 ==.
	C$tasks.c$2220$1_0$234 ==.
;	tasks.c:2220: BaseType_t xTaskResumeAll( void )
;	-----------------------------------------
;	 function xTaskResumeAll
;	-----------------------------------------
_xTaskResumeAll:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x15
	mov	sp,a
	C$tasks.c$2222$2_0$234 ==.
;	tasks.c:2222: TCB_t * pxTCB = NULL;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x00
	mov	@r0,a
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,#0x00
	C$tasks.c$2234$1_0$234 ==.
;	tasks.c:2234: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$2236$2_0$235 ==.
;	tasks.c:2236: --uxSchedulerSuspended;
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	C$tasks.c$2238$2_0$235 ==.
;	tasks.c:2238: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	movx	a,@dptr
	jz	00180$
	ljmp	00124$
00180$:
	C$tasks.c$2240$3_0$236 ==.
;	tasks.c:2240: if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	jnz	00181$
	ljmp	00124$
00181$:
	C$tasks.c$2244$5_0$238 ==.
;	tasks.c:2244: while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
00109$:
	mov	dptr,#_xPendingReadyList
	movx	a,@dptr
	jnz	00182$
	ljmp	00111$
00182$:
	C$tasks.c$2246$5_0$238 ==.
;	tasks.c:2246: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#(_xPendingReadyList + 0x0006)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x08
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
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$2247$6_0$239 ==.
;	tasks.c:2247: listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x1c
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
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x13
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x16
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
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x01
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
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
	jnz	00183$
	sjmp	00184$
00183$:
	ljmp	00102$
00184$:
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
00102$:
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	dec	r7
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$2249$6_0$241 ==.
;	tasks.c:2249: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0b
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	add	a,#0x13
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x01
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00185$
	sjmp	00186$
00185$:
	ljmp	00104$
00186$:
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00104$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$2250$6_0$243 ==.
;	tasks.c:2250: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,#0x1f
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
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00187$
	ljmp	00106$
00187$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00106$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	C$tasks.c$2254$5_0$238 ==.
;	tasks.c:2254: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r7
	subb	a,r4
	jnc	00188$
	ljmp	00109$
00188$:
	C$tasks.c$2256$6_0$246 ==.
;	tasks.c:2256: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00109$
00111$:
	C$tasks.c$2264$4_0$237 ==.
;	tasks.c:2264: if( pxTCB != NULL )
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00189$
	ljmp	00113$
00189$:
	C$tasks.c$2272$5_0$248 ==.
;	tasks.c:2272: prvResetNextTaskUnblockTime();
	lcall	_prvResetNextTaskUnblockTime
00113$:
	C$tasks.c$2280$6_0$249 ==.
;	tasks.c:2280: TickType_t xPendedCounts = xPendedTicks; /* Non-volatile copy. */
	mov	dptr,#_xPendedTicks
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	C$tasks.c$2282$5_0$249 ==.
;	tasks.c:2282: if( xPendedCounts > ( TickType_t ) 0U )
	mov	a,r6
	orl	a,r7
	jnz	00190$
	ljmp	00120$
00190$:
	C$tasks.c$2284$1_0$234 ==.
;	tasks.c:2284: do
	mov	ar6,r4
	mov	ar7,r5
00116$:
	C$tasks.c$2286$7_0$251 ==.
;	tasks.c:2286: if( xTaskIncrementTick() != pdFALSE )
	push	ar7
	push	ar6
	lcall	_xTaskIncrementTick
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00191$
	ljmp	00115$
00191$:
	C$tasks.c$2288$8_0$252 ==.
;	tasks.c:2288: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00115$:
	C$tasks.c$2295$7_0$251 ==.
;	tasks.c:2295: --xPendedCounts;
	dec	r6
	cjne	r6,#0xff,00192$
	dec	r7
00192$:
	C$tasks.c$2296$6_0$250 ==.
;	tasks.c:2296: } while( xPendedCounts > ( TickType_t ) 0U );
	mov	a,r6
	orl	a,r7
	jz	00193$
	ljmp	00116$
00193$:
	C$tasks.c$2298$6_0$250 ==.
;	tasks.c:2298: xPendedTicks = 0;
	mov	dptr,#_xPendedTicks
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00120$:
	C$tasks.c$2306$4_0$237 ==.
;	tasks.c:2306: if( xYieldPending != pdFALSE )
	mov	dptr,#_xYieldPending
	movx	a,@dptr
00124$:
	C$tasks.c$2326$1_0$234 ==.
;	tasks.c:2326: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$2328$1_0$234 ==.
;	tasks.c:2328: return xAlreadyYielded;
	mov	dpl,#0x00
00125$:
	C$tasks.c$2329$1_0$234 ==.
;	tasks.c:2329: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$2329$1_0$234 ==.
	XG$xTaskResumeAll$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGetTickCount'
;------------------------------------------------------------
;xTicks                    Allocated to registers r6 r7 
;------------------------------------------------------------
	G$xTaskGetTickCount$0$0 ==.
	C$tasks.c$2332$1_0$259 ==.
;	tasks.c:2332: TickType_t xTaskGetTickCount( void )
;	-----------------------------------------
;	 function xTaskGetTickCount
;	-----------------------------------------
_xTaskGetTickCount:
	C$tasks.c$2337$1_0$259 ==.
;	tasks.c:2337: portTICK_TYPE_ENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$2339$2_0$260 ==.
;	tasks.c:2339: xTicks = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$tasks.c$2341$1_0$259 ==.
;	tasks.c:2341: portTICK_TYPE_EXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$2343$1_0$259 ==.
;	tasks.c:2343: return xTicks;
	mov	dpl,r6
	mov	dph,r7
00101$:
	C$tasks.c$2344$1_0$259 ==.
;	tasks.c:2344: }
	C$tasks.c$2344$1_0$259 ==.
	XG$xTaskGetTickCount$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGetTickCountFromISR'
;------------------------------------------------------------
;xReturn                   Allocated to registers r6 r7 
;uxSavedInterruptStatus    Allocated to registers 
;------------------------------------------------------------
	G$xTaskGetTickCountFromISR$0$0 ==.
	C$tasks.c$2347$1_0$262 ==.
;	tasks.c:2347: TickType_t xTaskGetTickCountFromISR( void )
;	-----------------------------------------
;	 function xTaskGetTickCountFromISR
;	-----------------------------------------
_xTaskGetTickCountFromISR:
	C$tasks.c$2370$2_0$263 ==.
;	tasks.c:2370: xReturn = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$tasks.c$2374$1_0$262 ==.
;	tasks.c:2374: return xReturn;
	mov	dpl,r6
	mov	dph,r7
00101$:
	C$tasks.c$2375$1_0$262 ==.
;	tasks.c:2375: }
	C$tasks.c$2375$1_0$262 ==.
	XG$xTaskGetTickCountFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxTaskGetNumberOfTasks'
;------------------------------------------------------------
	G$uxTaskGetNumberOfTasks$0$0 ==.
	C$tasks.c$2378$1_0$265 ==.
;	tasks.c:2378: UBaseType_t uxTaskGetNumberOfTasks( void )
;	-----------------------------------------
;	 function uxTaskGetNumberOfTasks
;	-----------------------------------------
_uxTaskGetNumberOfTasks:
	C$tasks.c$2382$1_0$265 ==.
;	tasks.c:2382: return uxCurrentNumberOfTasks;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r7
00101$:
	C$tasks.c$2383$1_0$265 ==.
;	tasks.c:2383: }
	C$tasks.c$2383$1_0$265 ==.
	XG$uxTaskGetNumberOfTasks$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pcTaskGetName'
;------------------------------------------------------------
;xTaskToQuery              Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to registers r2 r3 r4 
;------------------------------------------------------------
	G$pcTaskGetName$0$0 ==.
	C$tasks.c$2386$1_0$267 ==.
;	tasks.c:2386: char * pcTaskGetName( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
;	-----------------------------------------
;	 function pcTaskGetName
;	-----------------------------------------
_pcTaskGetName:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$2392$1_0$267 ==.
;	tasks.c:2392: pxTCB = prvGetTCBFromHandle( xTaskToQuery );
	mov	a,r5
	orl	a,r6
	jz	00109$
	ljmp	00103$
00109$:
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	ljmp	00104$
00103$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00104$:
	C$tasks.c$2394$1_0$267 ==.
;	tasks.c:2394: return &( pxTCB->pcTaskName[ 0 ] );
	mov	a,#0x23
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00101$:
	C$tasks.c$2395$1_0$267 ==.
;	tasks.c:2395: }
	C$tasks.c$2395$1_0$267 ==.
	XG$pcTaskGetName$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskCatchUpTicks'
;------------------------------------------------------------
;xTicksToCatchUp           Allocated to registers r6 r7 
;xYieldOccurred            Allocated to registers r7 
;------------------------------------------------------------
	G$xTaskCatchUpTicks$0$0 ==.
	C$tasks.c$2638$1_0$269 ==.
;	tasks.c:2638: BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp )
;	-----------------------------------------
;	 function xTaskCatchUpTicks
;	-----------------------------------------
_xTaskCatchUpTicks:
	mov	r6,dpl
	mov	r7,dph
	C$tasks.c$2648$1_0$269 ==.
;	tasks.c:2648: vTaskSuspendAll();
	push	ar7
	push	ar6
	lcall	_vTaskSuspendAll
	pop	ar6
	pop	ar7
	C$tasks.c$2649$1_0$269 ==.
;	tasks.c:2649: xPendedTicks += xTicksToCatchUp;
	mov	dptr,#_xPendedTicks
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_xPendedTicks
	mov	a,r6
	add	a,r4
	movx	@dptr,a
	mov	a,r7
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2650$1_0$269 ==.
;	tasks.c:2650: xYieldOccurred = xTaskResumeAll();
	lcall	_xTaskResumeAll
	mov	r7,dpl
	C$tasks.c$2652$1_0$269 ==.
;	tasks.c:2652: return xYieldOccurred;
	mov	dpl,r7
00101$:
	C$tasks.c$2653$1_0$269 ==.
;	tasks.c:2653: }
	C$tasks.c$2653$1_0$269 ==.
	XG$xTaskCatchUpTicks$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskIncrementTick'
;------------------------------------------------------------
;pxTCB                     Allocated to stack - _bp +16
;xItemValue                Allocated to registers r6 r7 
;xSwitchRequired           Allocated to registers 
;xConstTickCount           Allocated to stack - _bp +19
;pxTemp                    Allocated to registers r3 r4 r5 
;pxList                    Allocated to stack - _bp +21
;pxList                    Allocated to stack - _bp +21
;pxIndex                   Allocated to stack - _bp +21
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +1
;sloc3                     Allocated to stack - _bp +13
;sloc4                     Allocated to stack - _bp +10
;------------------------------------------------------------
	G$xTaskIncrementTick$0$0 ==.
	C$tasks.c$2736$1_0$271 ==.
;	tasks.c:2736: BaseType_t xTaskIncrementTick( void )
;	-----------------------------------------
;	 function xTaskIncrementTick
;	-----------------------------------------
_xTaskIncrementTick:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x17
	mov	sp,a
	C$tasks.c$2747$1_0$271 ==.
;	tasks.c:2747: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00167$
	ljmp	00120$
00167$:
	C$tasks.c$2751$2_0$272 ==.
;	tasks.c:2751: const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,#0x01
	add	a,r6
	mov	@r0,a
	mov	a,#0x00
	addc	a,r7
	inc	r0
	mov	@r0,a
	C$tasks.c$2755$2_0$272 ==.
;	tasks.c:2755: xTickCount = xConstTickCount;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dptr,#_xTickCount
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2757$2_0$272 ==.
;	tasks.c:2757: if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jz	00168$
	ljmp	00102$
00168$:
	C$tasks.c$2759$1_0$271 ==.
;	tasks.c:2759: taskSWITCH_DELAYED_LISTS();
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pxOverflowDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pxDelayedTaskList
	mov	a,r2
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pxOverflowDelayedTaskList
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	inc	a
	movx	@dptr,a
	lcall	_prvResetNextTaskUnblockTime
	C$tasks.c$2905$1_0$271 ==.
;	tasks.c:2905: return xSwitchRequired;
	C$tasks.c$2759$2_0$272 ==.
;	tasks.c:2759: taskSWITCH_DELAYED_LISTS();
00102$:
	C$tasks.c$2770$2_0$272 ==.
;	tasks.c:2770: if( xConstTickCount >= xNextTaskUnblockTime )
	mov	dptr,#_xNextTaskUnblockTime
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r4
	inc	r0
	mov	a,@r0
	subb	a,r5
	jnc	00169$
	ljmp	00121$
00169$:
00122$:
	C$tasks.c$2774$5_0$278 ==.
;	tasks.c:2774: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	jz	00170$
	ljmp	00114$
00170$:
	C$tasks.c$2781$6_0$279 ==.
;	tasks.c:2781: xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2782$6_0$279 ==.
;	tasks.c:2782: break;
	ljmp	00121$
00114$:
	C$tasks.c$2790$6_0$280 ==.
;	tasks.c:2790: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x04
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,#0x08
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$tasks.c$2791$6_0$280 ==.
;	tasks.c:2791: xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r6,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r6
	mov	dph,r2
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$tasks.c$2793$6_0$280 ==.
;	tasks.c:2793: if( xConstTickCount < xItemValue )
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00171$
	ljmp	00104$
00171$:
	C$tasks.c$2800$7_0$281 ==.
;	tasks.c:2800: xNextTaskUnblockTime = xItemValue;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$tasks.c$2801$7_0$281 ==.
;	tasks.c:2801: break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
	ljmp	00121$
00104$:
	C$tasks.c$2809$7_0$283 ==.
;	tasks.c:2809: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x0e
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x05
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,r3
	mov	@r0,a
	mov	a,#0x00
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x08
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r3
	mov	@r0,a
	mov	a,#0x00
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x04
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x01
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	push	ar2
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00172$
	sjmp	00173$
00172$:
	ljmp	00106$
00173$:
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00106$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x0b
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	dec	r7
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$2813$6_0$280 ==.
;	tasks.c:2813: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x11
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
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x0b
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
	pop	ar7
	pop	ar6
	pop	ar2
	mov	a,r3
	orl	a,r4
	jnz	00174$
	ljmp	00110$
00174$:
	C$tasks.c$2815$1_0$271 ==.
;	tasks.c:2815: listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r3
	mov	@r0,a
	mov	a,#0x00
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x05
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
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x04
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
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x01
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar5
	push	ar6
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
	jnz	00175$
	sjmp	00176$
00175$:
	pop	ar7
	pop	ar6
	pop	ar2
	ljmp	00108$
00176$:
	pop	ar7
	pop	ar6
	pop	ar2
	mov	a,_bp
	add	a,#0x04
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
00108$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	dec	r5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r5
	lcall	__gptrput
00110$:
	C$tasks.c$2824$1_0$271 ==.
;	tasks.c:2824: prvAddTaskToReadyList( pxTCB );
	push	ar2
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x1f
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
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,r5
	pop	ar7
	pop	ar6
	pop	ar2
	jc	00177$
	ljmp	00112$
00177$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r5
	movx	@dptr,a
00112$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r5,a
	mov	a,r5
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r4,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	inc	dptr
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r2
	mov	r3,a
	mov	a,#0x00
	addc	a,r6
	mov	r4,a
	mov	ar5,r7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
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
	mov	a,#0x02
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	ljmp	00122$
00120$:
	C$tasks.c$2894$2_0$292 ==.
;	tasks.c:2894: ++xPendedTicks;
	mov	dptr,#_xPendedTicks
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00121$:
	C$tasks.c$2905$1_0$271 ==.
;	tasks.c:2905: return xSwitchRequired;
	mov	dpl,#0x00
00124$:
	C$tasks.c$2906$1_0$271 ==.
;	tasks.c:2906: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$2906$1_0$271 ==.
	XG$xTaskIncrementTick$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSwitchContext'
;------------------------------------------------------------
;uxTopPriority             Allocated to stack - _bp +7
;pxConstList               Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$vTaskSwitchContext$0$0 ==.
	C$tasks.c$3021$1_0$294 ==.
;	tasks.c:3021: void vTaskSwitchContext( void )
;	-----------------------------------------
;	 function vTaskSwitchContext
;	-----------------------------------------
_vTaskSwitchContext:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0a
	mov	sp,a
	C$tasks.c$3023$1_0$294 ==.
;	tasks.c:3023: if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jnz	00132$
	ljmp	00107$
00132$:
	C$tasks.c$3027$2_0$295 ==.
;	tasks.c:3027: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00109$
00107$:
	C$tasks.c$3031$2_0$296 ==.
;	tasks.c:3031: xYieldPending = pdFALSE;
	mov	dptr,#_xYieldPending
	mov	a,#0x00
	movx	@dptr,a
	C$tasks.c$3074$4_0$297 ==.
;	tasks.c:3074: taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
00101$:
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	mov	r5,a
	mov	r6,b
	mov	a,r5
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,r6
	addc	a,#(_pxReadyTasksLists >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jz	00133$
	ljmp	00115$
00133$:
	dec	r7
	ljmp	00101$
00115$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	@r0,ar7
	mov	a,r5
	add	a,#_pxReadyTasksLists
	mov	r5,a
	mov	a,r6
	addc	a,#(_pxReadyTasksLists >> 8)
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x01
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,#0x02
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,#0x04
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r5,a
	inc	r0
	mov	ar6,@r0
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00134$
	sjmp	00135$
00134$:
	ljmp	00105$
00135$:
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
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
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
00105$:
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
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
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
	mov	dptr,#_pxCurrentTCB
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dptr,#_uxTopReadyPriority
	mov	a,@r0
	movx	@dptr,a
00109$:
	C$tasks.c$3094$1_0$294 ==.
;	tasks.c:3094: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3094$1_0$294 ==.
	XG$vTaskSwitchContext$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskPlaceOnEventList'
;------------------------------------------------------------
;xTicksToWait              Allocated to stack - _bp -4
;pxEventList               Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskPlaceOnEventList$0$0 ==.
	C$tasks.c$3097$1_0$302 ==.
;	tasks.c:3097: void vTaskPlaceOnEventList( List_t * const pxEventList,
;	-----------------------------------------
;	 function vTaskPlaceOnEventList
;	-----------------------------------------
_vTaskPlaceOnEventList:
	push	_bp
	mov	_bp,sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3116$1_0$302 ==.
;	tasks.c:3116: vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$3118$1_0$302 ==.
;	tasks.c:3118: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
00101$:
	C$tasks.c$3119$1_0$302 ==.
;	tasks.c:3119: }
	pop	_bp
	C$tasks.c$3119$1_0$302 ==.
	XG$vTaskPlaceOnEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskPlaceOnUnorderedEventList'
;------------------------------------------------------------
;xItemValue                Allocated to stack - _bp -4
;xTicksToWait              Allocated to stack - _bp -6
;pxEventList               Allocated to stack - _bp +1
;pxIndex                   Allocated to registers r5 r6 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$vTaskPlaceOnUnorderedEventList$0$0 ==.
	C$tasks.c$3122$1_0$304 ==.
;	tasks.c:3122: void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
;	-----------------------------------------
;	 function vTaskPlaceOnUnorderedEventList
;	-----------------------------------------
_vTaskPlaceOnUnorderedEventList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	inc	sp
	inc	sp
	inc	sp
	C$tasks.c$3135$1_0$304 ==.
;	tasks.c:3135: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	orl	ar7,#0x80
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3142$2_0$305 ==.
;	tasks.c:3142: listINSERT_END( pxEventList, &( pxCurrentTCB->xEventListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,#0x05
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x11
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,#0x0b
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	r7
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3144$1_0$304 ==.
;	tasks.c:3144: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
00101$:
	C$tasks.c$3145$1_0$304 ==.
;	tasks.c:3145: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3145$1_0$304 ==.
	XG$vTaskPlaceOnUnorderedEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskRemoveFromEventList'
;------------------------------------------------------------
;pxEventList               Allocated to registers r5 r6 r7 
;pxUnblockedTCB            Allocated to stack - _bp +20
;xReturn                   Allocated to registers r7 
;pxList                    Allocated to stack - _bp +23
;pxList                    Allocated to registers r7 r6 r5 
;pxIndex                   Allocated to stack - _bp +23
;pxIndex                   Allocated to stack - _bp +23
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +16
;sloc2                     Allocated to stack - _bp +1
;sloc3                     Allocated to stack - _bp +10
;sloc4                     Allocated to stack - _bp +13
;sloc5                     Allocated to stack - _bp +7
;sloc6                     Allocated to stack - _bp +19
;------------------------------------------------------------
	G$xTaskRemoveFromEventList$0$0 ==.
	C$tasks.c$3183$1_0$307 ==.
;	tasks.c:3183: BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
;	-----------------------------------------
;	 function xTaskRemoveFromEventList
;	-----------------------------------------
_xTaskRemoveFromEventList:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x19
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3201$1_0$307 ==.
;	tasks.c:3201: pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$tasks.c$3203$2_0$308 ==.
;	tasks.c:3203: listREMOVE_ITEM( &( pxUnblockedTCB->xEventListItem ) );
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x1c
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
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x13
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,#0x16
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
	add	a,#0x10
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
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x10
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x01
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
	jnz	00135$
	sjmp	00136$
00135$:
	ljmp	00102$
00136$:
	mov	a,_bp
	add	a,#0x10
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
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0b
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	push	ar2
	push	ar3
	push	ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3205$1_0$307 ==.
;	tasks.c:3205: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	pop	ar4
	pop	ar3
	pop	ar2
	jz	00137$
	ljmp	00108$
00137$:
	C$tasks.c$3207$3_0$311 ==.
;	tasks.c:3207: listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r4,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar2,@r0
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x0b
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,@r0
	mov	@r0,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x05
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar2
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x07
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x01
	add	a,r7
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	push	ar4
	push	ar3
	push	ar2
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00138$
	sjmp	00139$
00138$:
	ljmp	00104$
00139$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0a
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
00104$:
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	dec	a
	mov	@r1,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$3208$3_0$313 ==.
;	tasks.c:3208: prvAddTaskToReadyList( pxUnblockedTCB );
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x1f
	add	a,@r0
	mov	r7,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	dptr,#_uxTopReadyPriority
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r1,a
	clr	c
	mov	a,@r1
	subb	a,@r0
	jc	00140$
	ljmp	00106$
00140$:
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dptr,#_uxTopReadyPriority
	mov	a,@r0
	movx	@dptr,a
00106$:
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,@r0
	mov	b,#0x0c
	mul	ab
	xch	a,r0
	mov	a,_bp
	add	a,#0x0a
	xch	a,r0
	add	a,#_pxReadyTasksLists
	mov	@r0,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	dptr
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x17
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
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x05
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
	mov	a,_bp
	add	a,#0x0d
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x0d
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x02
	add	a,@r0
	mov	@r0,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r4,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r3,a
	mov	r2,#0x00
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r7,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r7
	mov	dph,r6
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
	ljmp	00109$
00108$:
	C$tasks.c$3228$3_0$317 ==.
;	tasks.c:3228: listINSERT_END( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
	mov	dptr,#(_xPendingReadyList + 0x0001)
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x17
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x05
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0d
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
	mov	a,_bp
	add	a,#0x0a
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
	mov	a,#0x02
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#_xPendingReadyList
	lcall	__gptrput
	inc	dptr
	mov	a,#(_xPendingReadyList >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x00
	lcall	__gptrput
	mov	dptr,#_xPendingReadyList
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_xPendingReadyList
	mov	a,r7
	movx	@dptr,a
00109$:
	C$tasks.c$3231$1_0$307 ==.
;	tasks.c:3231: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00141$
	ljmp	00111$
00141$:
	C$tasks.c$3236$2_0$318 ==.
;	tasks.c:3236: xReturn = pdTRUE;
	mov	r7,#0x01
	C$tasks.c$3240$2_0$318 ==.
;	tasks.c:3240: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,r7
	movx	@dptr,a
	ljmp	00112$
00111$:
	C$tasks.c$3244$2_0$319 ==.
;	tasks.c:3244: xReturn = pdFALSE;
	mov	r7,#0x00
00112$:
	C$tasks.c$3247$1_0$307 ==.
;	tasks.c:3247: return xReturn;
	mov	dpl,r7
00113$:
	C$tasks.c$3248$1_0$307 ==.
;	tasks.c:3248: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3248$1_0$307 ==.
	XG$xTaskRemoveFromEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskRemoveFromUnorderedEventList'
;------------------------------------------------------------
;xItemValue                Allocated to stack - _bp -4
;pxEventListItem           Allocated to stack - _bp +1
;pxUnblockedTCB            Allocated to stack - _bp +19
;pxList                    Allocated to stack - _bp +22
;pxList                    Allocated to stack - _bp +22
;pxIndex                   Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +10
;sloc2                     Allocated to stack - _bp +7
;sloc3                     Allocated to stack - _bp +16
;sloc4                     Allocated to stack - _bp +13
;------------------------------------------------------------
	G$vTaskRemoveFromUnorderedEventList$0$0 ==.
	C$tasks.c$3251$1_0$321 ==.
;	tasks.c:3251: void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
;	-----------------------------------------
;	 function vTaskRemoveFromUnorderedEventList
;	-----------------------------------------
_vTaskRemoveFromUnorderedEventList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x15
	mov	sp,a
	C$tasks.c$3261$1_0$321 ==.
;	tasks.c:3261: listSET_LIST_ITEM_VALUE( pxEventListItem, xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
	mov	a,_bp
	add	a,#0xfc
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	orl	ar4,#0x80
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3265$1_0$321 ==.
;	tasks.c:3265: pxUnblockedTCB = listGET_LIST_ITEM_OWNER( pxEventListItem ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	r0,_bp
	inc	r0
	mov	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$3267$2_0$322 ==.
;	tasks.c:3267: listREMOVE_ITEM( pxEventListItem );
	mov	r0,_bp
	inc	r0
	mov	a,#0x0b
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
	add	a,#0x16
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x02
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x05
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
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
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
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
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,#0x01
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
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	push	ar5
	push	ar6
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
	jnz	00127$
	sjmp	00128$
00127$:
	ljmp	00102$
00128$:
	mov	a,_bp
	add	a,#0x0a
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
00102$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	dec	r7
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3286$2_0$324 ==.
;	tasks.c:3286: listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0b
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	add	a,#0x16
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,#0x01
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
	add	a,#0x10
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
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00129$
	sjmp	00130$
00129$:
	ljmp	00104$
00130$:
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00104$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x16
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3287$2_0$326 ==.
;	tasks.c:3287: prvAddTaskToReadyList( pxUnblockedTCB );
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,#0x1f
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
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00131$
	ljmp	00106$
00131$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00106$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x10
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x10
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
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x10
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	C$tasks.c$3289$1_0$321 ==.
;	tasks.c:3289: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r4
	subb	a,r7
	jc	00132$
	ljmp	00109$
00132$:
	C$tasks.c$3295$2_0$329 ==.
;	tasks.c:3295: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00109$:
	C$tasks.c$3297$1_0$321 ==.
;	tasks.c:3297: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3297$1_0$321 ==.
	XG$vTaskRemoveFromUnorderedEventList$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskSetTimeOutState'
;------------------------------------------------------------
;pxTimeOut                 Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskSetTimeOutState$0$0 ==.
	C$tasks.c$3300$1_0$331 ==.
;	tasks.c:3300: void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
;	-----------------------------------------
;	 function vTaskSetTimeOutState
;	-----------------------------------------
_vTaskSetTimeOutState:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3303$1_0$331 ==.
;	tasks.c:3303: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$3305$2_0$332 ==.
;	tasks.c:3305: pxTimeOut->xOverflowCount = xNumOfOverflows;
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3306$2_0$332 ==.
;	tasks.c:3306: pxTimeOut->xTimeOnEntering = xTickCount;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3308$1_0$331 ==.
;	tasks.c:3308: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
00101$:
	C$tasks.c$3309$1_0$331 ==.
;	tasks.c:3309: }
	C$tasks.c$3309$1_0$331 ==.
	XG$vTaskSetTimeOutState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskInternalSetTimeOutState'
;------------------------------------------------------------
;pxTimeOut                 Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$vTaskInternalSetTimeOutState$0$0 ==.
	C$tasks.c$3312$1_0$334 ==.
;	tasks.c:3312: void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
;	-----------------------------------------
;	 function vTaskInternalSetTimeOutState
;	-----------------------------------------
_vTaskInternalSetTimeOutState:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3315$1_0$334 ==.
;	tasks.c:3315: pxTimeOut->xOverflowCount = xNumOfOverflows;
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$3316$1_0$334 ==.
;	tasks.c:3316: pxTimeOut->xTimeOnEntering = xTickCount;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00101$:
	C$tasks.c$3317$1_0$334 ==.
;	tasks.c:3317: }
	C$tasks.c$3317$1_0$334 ==.
	XG$vTaskInternalSetTimeOutState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskCheckForTimeOut'
;------------------------------------------------------------
;pxTicksToWait             Allocated to stack - _bp -5
;pxTimeOut                 Allocated to stack - _bp +1
;xReturn                   Allocated to registers r6 
;xConstTickCount           Allocated to stack - _bp +6
;xElapsedTime              Allocated to registers r2 r7 
;sloc0                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xTaskCheckForTimeOut$0$0 ==.
	C$tasks.c$3320$1_0$336 ==.
;	tasks.c:3320: BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
;	-----------------------------------------
;	 function xTaskCheckForTimeOut
;	-----------------------------------------
_xTaskCheckForTimeOut:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$tasks.c$3328$1_0$336 ==.
;	tasks.c:3328: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$3331$3_0$337 ==.
;	tasks.c:3331: const TickType_t xConstTickCount = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	C$tasks.c$3332$2_0$337 ==.
;	tasks.c:3332: const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
	mov	r0,_bp
	inc	r0
	mov	a,#0x01
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r2,a
	inc	r0
	mov	ar4,@r0
	mov	dpl,r3
	mov	dph,r2
	mov	b,r4
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r3
	mov	r6,a
	inc	r0
	mov	a,@r0
	subb	a,r4
	mov	r7,a
	mov	ar2,r6
	C$tasks.c$3356$2_0$337 ==.
;	tasks.c:3356: if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_xNumOfOverflows
	movx	a,@dptr
	mov	r5,a
	mov	a,r5
	cjne	a,ar6,00122$
	ljmp	00105$
00122$:
	mov	a,_bp
	add	a,#0x06
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	jnc	00123$
	ljmp	00105$
00123$:
	C$tasks.c$3363$3_0$338 ==.
;	tasks.c:3363: xReturn = pdTRUE;
	mov	r6,#0x01
	C$tasks.c$3364$3_0$338 ==.
;	tasks.c:3364: *pxTicksToWait = ( TickType_t ) 0;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00106$
00105$:
	C$tasks.c$3366$2_0$337 ==.
;	tasks.c:3366: else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	clr	c
	mov	a,r2
	subb	a,@r0
	mov	a,r7
	inc	r0
	subb	a,@r0
	jc	00124$
	ljmp	00102$
00124$:
	C$tasks.c$3369$3_0$339 ==.
;	tasks.c:3369: *pxTicksToWait -= xElapsedTime;
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,@r0
	clr	c
	subb	a,r2
	mov	r2,a
	inc	r0
	mov	a,@r0
	subb	a,r7
	mov	r7,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$3370$3_0$339 ==.
;	tasks.c:3370: vTaskInternalSetTimeOutState( pxTimeOut );
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vTaskInternalSetTimeOutState
	C$tasks.c$3371$3_0$339 ==.
;	tasks.c:3371: xReturn = pdFALSE;
	mov	r6,#0x00
	ljmp	00106$
00102$:
	C$tasks.c$3375$3_0$340 ==.
;	tasks.c:3375: *pxTicksToWait = ( TickType_t ) 0;
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	C$tasks.c$3376$3_0$340 ==.
;	tasks.c:3376: xReturn = pdTRUE;
	mov	r6,#0x01
00106$:
	C$tasks.c$3379$1_0$336 ==.
;	tasks.c:3379: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$3381$1_0$336 ==.
;	tasks.c:3381: return xReturn;
	mov	dpl,r6
00108$:
	C$tasks.c$3382$1_0$336 ==.
;	tasks.c:3382: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$3382$1_0$336 ==.
	XG$xTaskCheckForTimeOut$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskMissedYield'
;------------------------------------------------------------
	G$vTaskMissedYield$0$0 ==.
	C$tasks.c$3385$1_0$342 ==.
;	tasks.c:3385: void vTaskMissedYield( void )
;	-----------------------------------------
;	 function vTaskMissedYield
;	-----------------------------------------
_vTaskMissedYield:
	C$tasks.c$3387$1_0$342 ==.
;	tasks.c:3387: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00101$:
	C$tasks.c$3388$1_0$342 ==.
;	tasks.c:3388: }
	C$tasks.c$3388$1_0$342 ==.
	XG$vTaskMissedYield$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvIdleTask'
;------------------------------------------------------------
;pvParameters              Allocated to registers 
;------------------------------------------------------------
	Ftasks$prvIdleTask$0$0 ==.
	C$tasks.c$3441$1_0$344 ==.
;	tasks.c:3441: static portTASK_FUNCTION( prvIdleTask, pvParameters )
;	-----------------------------------------
;	 function prvIdleTask
;	-----------------------------------------
_prvIdleTask:
	C$tasks.c$3444$2_0$345 ==.
;	tasks.c:3444: ( void ) pvParameters;
00102$:
	C$tasks.c$3458$3_0$346 ==.
;	tasks.c:3458: prvCheckTasksWaitingTermination();
	lcall	_prvCheckTasksWaitingTermination
	C$tasks.c$3466$4_0$347 ==.
;	tasks.c:3466: taskYIELD();
	lcall	_vPortYield
	ljmp	00102$
00104$:
	C$tasks.c$3555$2_0$344 ==.
;	tasks.c:3555: }
	C$tasks.c$3555$2_0$344 ==.
	XFtasks$prvIdleTask$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvInitialiseTaskLists'
;------------------------------------------------------------
;uxPriority                Allocated to registers r7 
;------------------------------------------------------------
	Ftasks$prvInitialiseTaskLists$0$0 ==.
	C$tasks.c$3666$2_0$349 ==.
;	tasks.c:3666: static void prvInitialiseTaskLists( void )
;	-----------------------------------------
;	 function prvInitialiseTaskLists
;	-----------------------------------------
_prvInitialiseTaskLists:
	C$tasks.c$3670$3_0$351 ==.
;	tasks.c:3670: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
	mov	r7,#0x00
00102$:
	C$tasks.c$3672$3_0$351 ==.
;	tasks.c:3672: vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r5,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	push	ar7
	lcall	_vListInitialise
	pop	ar7
	C$tasks.c$3670$2_0$350 ==.
;	tasks.c:3670: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
	inc	r7
	cjne	r7,#0x04,00115$
00115$:
	jnc	00116$
	ljmp	00102$
00116$:
	C$tasks.c$3675$1_0$349 ==.
;	tasks.c:3675: vListInitialise( &xDelayedTaskList1 );
	mov	dpl,#_xDelayedTaskList1
	mov	dph,#(_xDelayedTaskList1 >> 8)
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3676$1_0$349 ==.
;	tasks.c:3676: vListInitialise( &xDelayedTaskList2 );
	mov	dpl,#_xDelayedTaskList2
	mov	dph,#(_xDelayedTaskList2 >> 8)
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3677$1_0$349 ==.
;	tasks.c:3677: vListInitialise( &xPendingReadyList );
	mov	dpl,#_xPendingReadyList
	mov	dph,#(_xPendingReadyList >> 8)
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3681$2_0$352 ==.
;	tasks.c:3681: vListInitialise( &xTasksWaitingTermination );
	mov	dpl,#_xTasksWaitingTermination
	mov	dph,#(_xTasksWaitingTermination >> 8)
	mov	b,#0x00
	lcall	_vListInitialise
	C$tasks.c$3693$1_0$349 ==.
;	tasks.c:3693: pxDelayedTaskList = &xDelayedTaskList1;
	mov	dptr,#_pxDelayedTaskList
	mov	a,#_xDelayedTaskList1
	movx	@dptr,a
	mov	a,#(_xDelayedTaskList1 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
	C$tasks.c$3694$1_0$349 ==.
;	tasks.c:3694: pxOverflowDelayedTaskList = &xDelayedTaskList2;
	mov	dptr,#_pxOverflowDelayedTaskList
	mov	a,#_xDelayedTaskList2
	movx	@dptr,a
	mov	a,#(_xDelayedTaskList2 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	inc	dptr
	movx	@dptr,a
00104$:
	C$tasks.c$3695$1_0$349 ==.
;	tasks.c:3695: }
	C$tasks.c$3695$1_0$349 ==.
	XFtasks$prvInitialiseTaskLists$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvCheckTasksWaitingTermination'
;------------------------------------------------------------
;pxTCB                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Ftasks$prvCheckTasksWaitingTermination$0$0 ==.
	C$tasks.c$3698$1_0$355 ==.
;	tasks.c:3698: static void prvCheckTasksWaitingTermination( void )
;	-----------------------------------------
;	 function prvCheckTasksWaitingTermination
;	-----------------------------------------
_prvCheckTasksWaitingTermination:
	C$tasks.c$3708$4_0$357 ==.
;	tasks.c:3708: while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
00101$:
	mov	dptr,#_uxDeletedTasksWaitingCleanUp
	movx	a,@dptr
	jnz	00114$
	ljmp	00104$
00114$:
	C$tasks.c$3710$3_0$356 ==.
;	tasks.c:3710: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$3712$4_0$357 ==.
;	tasks.c:3712: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
	mov	dptr,#(_xTasksWaitingTermination + 0x0006)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	C$tasks.c$3713$4_0$357 ==.
;	tasks.c:3713: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_uxListRemove
	pop	ar5
	pop	ar6
	pop	ar7
	C$tasks.c$3714$4_0$357 ==.
;	tasks.c:3714: --uxCurrentNumberOfTasks;
	mov	dptr,#_uxCurrentNumberOfTasks
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	C$tasks.c$3715$4_0$357 ==.
;	tasks.c:3715: --uxDeletedTasksWaitingCleanUp;
	mov	dptr,#_uxDeletedTasksWaitingCleanUp
	movx	a,@dptr
	dec	a
	movx	@dptr,a
	C$tasks.c$3717$3_0$356 ==.
;	tasks.c:3717: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$3719$3_0$356 ==.
;	tasks.c:3719: prvDeleteTCB( pxTCB );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_prvDeleteTCB
	ljmp	00101$
00104$:
	C$tasks.c$3723$2_0$355 ==.
;	tasks.c:3723: }
	C$tasks.c$3723$2_0$355 ==.
	XFtasks$prvCheckTasksWaitingTermination$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvDeleteTCB'
;------------------------------------------------------------
;pxTCB                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	Ftasks$prvDeleteTCB$0$0 ==.
	C$tasks.c$3950$2_0$359 ==.
;	tasks.c:3950: static void prvDeleteTCB( TCB_t * pxTCB )
;	-----------------------------------------
;	 function prvDeleteTCB
;	-----------------------------------------
_prvDeleteTCB:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$3971$2_0$360 ==.
;	tasks.c:3971: vPortFreeStack( pxTCB->pxStack );
	mov	a,#0x20
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_vPortFree
	pop	ar5
	pop	ar6
	pop	ar7
	C$tasks.c$3972$2_0$360 ==.
;	tasks.c:3972: vPortFree( pxTCB );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_vPortFree
00101$:
	C$tasks.c$4001$2_0$359 ==.
;	tasks.c:4001: }
	C$tasks.c$4001$2_0$359 ==.
	XFtasks$prvDeleteTCB$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvResetNextTaskUnblockTime'
;------------------------------------------------------------
	Ftasks$prvResetNextTaskUnblockTime$0$0 ==.
	C$tasks.c$4006$2_0$362 ==.
;	tasks.c:4006: static void prvResetNextTaskUnblockTime( void )
;	-----------------------------------------
;	 function prvResetNextTaskUnblockTime
;	-----------------------------------------
_prvResetNextTaskUnblockTime:
	C$tasks.c$4008$1_0$362 ==.
;	tasks.c:4008: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
	mov	dptr,#_pxDelayedTaskList
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
	lcall	__gptrget
	jz	00112$
	ljmp	00102$
00112$:
	C$tasks.c$4014$2_0$363 ==.
;	tasks.c:4014: xNextTaskUnblockTime = portMAX_DELAY;
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00104$
00102$:
	C$tasks.c$4022$2_0$364 ==.
;	tasks.c:4022: xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,#0x02
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00104$:
	C$tasks.c$4024$1_0$362 ==.
;	tasks.c:4024: }
	C$tasks.c$4024$1_0$362 ==.
	XFtasks$prvResetNextTaskUnblockTime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uxTaskResetEventItemValue'
;------------------------------------------------------------
;uxReturn                  Allocated to stack - _bp +1
;------------------------------------------------------------
	G$uxTaskResetEventItemValue$0$0 ==.
	C$tasks.c$4671$1_0$366 ==.
;	tasks.c:4671: TickType_t uxTaskResetEventItemValue( void )
;	-----------------------------------------
;	 function uxTaskResetEventItemValue
;	-----------------------------------------
_uxTaskResetEventItemValue:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$tasks.c$4675$1_0$366 ==.
;	tasks.c:4675: uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,_bp
	inc	r0
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$tasks.c$4679$1_0$366 ==.
;	tasks.c:4679: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x11
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x1f
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r2
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	mov	r6,#0x00
	mov	a,#0x04
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x00
	subb	a,r6
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$tasks.c$4681$1_0$366 ==.
;	tasks.c:4681: return uxReturn;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
00101$:
	C$tasks.c$4682$1_0$366 ==.
;	tasks.c:4682: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4682$1_0$366 ==.
	XG$uxTaskResetEventItemValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ulTaskGenericNotifyTake'
;------------------------------------------------------------
;xClearCountOnExit         Allocated to stack - _bp -3
;xTicksToWait              Allocated to stack - _bp -5
;uxIndexToWait             Allocated to stack - _bp +1
;ulReturn                  Allocated to stack - _bp +5
;sloc0                     Allocated to stack - _bp +2
;------------------------------------------------------------
	G$ulTaskGenericNotifyTake$0$0 ==.
	C$tasks.c$4704$1_0$368 ==.
;	tasks.c:4704: uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWait,
;	-----------------------------------------
;	 function ulTaskGenericNotifyTake
;	-----------------------------------------
_ulTaskGenericNotifyTake:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x07
	mov	sp,a
	C$tasks.c$4712$1_0$368 ==.
;	tasks.c:4712: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4715$2_0$369 ==.
;	tasks.c:4715: if( pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] == 0UL )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r2
	jz	00128$
	ljmp	00104$
00128$:
	C$tasks.c$4718$3_0$370 ==.
;	tasks.c:4718: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskWAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x01
	lcall	__gptrput
	C$tasks.c$4720$3_0$370 ==.
;	tasks.c:4720: if( xTicksToWait > ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00129$
	ljmp	00104$
00129$:
	C$tasks.c$4722$4_0$371 ==.
;	tasks.c:4722: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	push	ar3
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	pop	ar3
	C$tasks.c$4729$4_0$371 ==.
;	tasks.c:4729: portYIELD_WITHIN_API();
	push	ar3
	lcall	_vPortYield
	pop	ar3
00104$:
	C$tasks.c$4741$1_0$368 ==.
;	tasks.c:4741: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4743$1_0$368 ==.
;	tasks.c:4743: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4746$2_0$374 ==.
;	tasks.c:4746: ulReturn = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x2e
	add	a,r6
	mov	r6,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	a,r3
	add	a,r6
	mov	r6,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dpl,r6
	mov	dph,r4
	mov	b,r5
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	C$tasks.c$4748$2_0$374 ==.
;	tasks.c:4748: if( ulReturn != 0UL )
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	ljmp	00109$
00130$:
	C$tasks.c$4750$3_0$375 ==.
;	tasks.c:4750: if( xClearCountOnExit != pdFALSE )
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	jnz	00131$
	ljmp	00106$
00131$:
	C$tasks.c$4752$1_0$368 ==.
;	tasks.c:4752: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = 0UL;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x2e
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	ljmp	00109$
00106$:
	C$tasks.c$4756$4_0$377 ==.
;	tasks.c:4756: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = ulReturn - ( uint32_t ) 1;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r3
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xff
	mov	r2,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r3,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r6,a
	inc	r0
	mov	a,@r0
	addc	a,#0xff
	mov	r7,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00109$:
	C$tasks.c$4764$2_0$374 ==.
;	tasks.c:4764: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskNOT_WAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	C$tasks.c$4766$1_0$368 ==.
;	tasks.c:4766: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4768$1_0$368 ==.
;	tasks.c:4768: return ulReturn;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
00110$:
	C$tasks.c$4769$1_0$368 ==.
;	tasks.c:4769: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4769$1_0$368 ==.
	XG$ulTaskGenericNotifyTake$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotifyWait'
;------------------------------------------------------------
;ulBitsToClearOnEntry      Allocated to stack - _bp -6
;ulBitsToClearOnExit       Allocated to stack - _bp -10
;pulNotificationValue      Allocated to stack - _bp -13
;xTicksToWait              Allocated to stack - _bp -15
;uxIndexToWait             Allocated to stack - _bp +1
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +2
;sloc1                     Allocated to stack - _bp +5
;sloc2                     Allocated to stack - _bp +12
;sloc3                     Allocated to stack - _bp +8
;------------------------------------------------------------
	G$xTaskGenericNotifyWait$0$0 ==.
	C$tasks.c$4776$1_0$380 ==.
;	tasks.c:4776: BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWait,
;	-----------------------------------------
;	 function xTaskGenericNotifyWait
;	-----------------------------------------
_xTaskGenericNotifyWait:
	push	_bp
	mov	_bp,sp
	push	dpl
	mov	a,sp
	add	a,#0x0e
	mov	sp,a
	C$tasks.c$4786$1_0$380 ==.
;	tasks.c:4786: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4789$2_0$381 ==.
;	tasks.c:4789: if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x02,00128$
	ljmp	00104$
00128$:
	C$tasks.c$4794$3_0$382 ==.
;	tasks.c:4794: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnEntry;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,r3
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r7
	mov	r7,a
	mov	a,r3
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r7
	mov	r7,a
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,_bp
	add	a,#0x0c
	mov	r1,a
	mov	a,@r0
	cpl	a
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	mov	dpl,r5
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4797$3_0$382 ==.
;	tasks.c:4797: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskWAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
	C$tasks.c$4799$3_0$382 ==.
;	tasks.c:4799: if( xTicksToWait > ( TickType_t ) 0 )
	mov	a,_bp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00129$
	ljmp	00104$
00129$:
	C$tasks.c$4801$4_0$383 ==.
;	tasks.c:4801: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
	mov	a,#0x01
	push	acc
	mov	a,_bp
	add	a,#0xf1
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	_prvAddCurrentTaskToDelayedList
	dec	sp
	C$tasks.c$4808$4_0$383 ==.
;	tasks.c:4808: portYIELD_WITHIN_API();
	lcall	_vPortYield
00104$:
	C$tasks.c$4820$1_0$380 ==.
;	tasks.c:4820: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4822$1_0$380 ==.
;	tasks.c:4822: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4826$2_0$386 ==.
;	tasks.c:4826: if( pulNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00130$
	ljmp	00106$
00130$:
	C$tasks.c$4830$3_0$387 ==.
;	tasks.c:4830: *pulNotificationValue = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
	mov	a,_bp
	add	a,#0xf3
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,#0x2e
	add	a,r2
	mov	r7,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar5,r4
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,r7
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
00106$:
	C$tasks.c$4837$2_0$386 ==.
;	tasks.c:4837: if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
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
	cjne	r5,#0x02,00131$
	ljmp	00108$
00131$:
	C$tasks.c$4840$3_0$388 ==.
;	tasks.c:4840: xReturn = pdFALSE;
	mov	r7,#0x00
	ljmp	00109$
00108$:
	C$tasks.c$4846$3_0$389 ==.
;	tasks.c:4846: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnExit;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,_bp
	add	a,#0x0c
	mov	r0,a
	mov	a,r3
	add	a,r4
	mov	@r0,a
	mov	a,#0x00
	addc	a,r5
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar6
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	a,r3
	add	a,r2
	mov	r7,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	a,_bp
	add	a,#0xf6
	mov	r0,a
	mov	a,_bp
	add	a,#0x08
	mov	r1,a
	mov	a,@r0
	cpl	a
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	mov	dpl,r7
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	a,@r0
	anl	ar4,a
	inc	r0
	mov	a,@r0
	anl	ar5,a
	inc	r0
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	mov	a,_bp
	add	a,#0x0c
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$tasks.c$4847$3_0$389 ==.
;	tasks.c:4847: xReturn = pdTRUE;
	mov	r7,#0x01
00109$:
	C$tasks.c$4850$2_0$386 ==.
;	tasks.c:4850: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskNOT_WAITING_NOTIFICATION;
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r5
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x00
	lcall	__gptrput
	C$tasks.c$4852$1_0$380 ==.
;	tasks.c:4852: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4854$1_0$380 ==.
;	tasks.c:4854: return xReturn;
	mov	dpl,r7
00110$:
	C$tasks.c$4855$1_0$380 ==.
;	tasks.c:4855: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4855$1_0$380 ==.
	XG$xTaskGenericNotifyWait$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotify'
;------------------------------------------------------------
;uxIndexToNotify           Allocated to stack - _bp -3
;ulValue                   Allocated to stack - _bp -7
;eAction                   Allocated to stack - _bp -8
;pulPreviousNotificationValue Allocated to stack - _bp -11
;xTaskToNotify             Allocated to registers r7 r6 r5 
;pxTCB                     Allocated to stack - _bp +16
;xReturn                   Allocated to stack - _bp +19
;ucOriginalNotifyState     Allocated to registers r4 
;pxList                    Allocated to stack - _bp +20
;pxIndex                   Allocated to registers r2 r3 r4 
;sloc0                     Allocated to stack - _bp +1
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +13
;sloc3                     Allocated to stack - _bp +10
;sloc4                     Allocated to stack - _bp +4
;------------------------------------------------------------
	G$xTaskGenericNotify$0$0 ==.
	C$tasks.c$4862$1_0$391 ==.
;	tasks.c:4862: BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
;	-----------------------------------------
;	 function xTaskGenericNotify
;	-----------------------------------------
_xTaskGenericNotify:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$tasks.c$4869$2_0$391 ==.
;	tasks.c:4869: BaseType_t xReturn = pdPASS;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,#0x01
	C$tasks.c$4874$1_0$391 ==.
;	tasks.c:4874: pxTCB = xTaskToNotify;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$tasks.c$4876$1_0$391 ==.
;	tasks.c:4876: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$4878$2_0$392 ==.
;	tasks.c:4878: if( pulPreviousNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00145$
	ljmp	00102$
00145$:
	C$tasks.c$4880$1_0$391 ==.
;	tasks.c:4880: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,_bp
	add	a,#0x07
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x2e
	add	a,r7
	mov	r7,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,r7
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4977$1_0$391 ==.
;	tasks.c:4977: return xReturn;
	C$tasks.c$4880$2_0$392 ==.
;	tasks.c:4880: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
00102$:
	C$tasks.c$4883$2_0$392 ==.
;	tasks.c:4883: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	C$tasks.c$4885$2_0$392 ==.
;	tasks.c:4885: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$4887$2_0$392 ==.
;	tasks.c:4887: switch( eAction )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	clr	c
	mov	a,#0x04
	subb	a,@r0
	jnc	00146$
	ljmp	00112$
00146$:
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	add	a,@r0
	mov	dptr,#00147$
	jmp	@a+dptr
00147$:
	ljmp	00112$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	C$tasks.c$4889$3_0$394 ==.
;	tasks.c:4889: case eSetBits:
00103$:
	C$tasks.c$4890$1_0$391 ==.
;	tasks.c:4890: pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
	push	ar4
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4891$1_0$391 ==.
;	tasks.c:4891: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$4893$3_0$394 ==.
;	tasks.c:4893: case eIncrement:
00104$:
	C$tasks.c$4894$1_0$391 ==.
;	tasks.c:4894: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
	push	ar4
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	r0,_bp
	inc	r0
	mov	a,r3
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00148$
	inc	r3
	cjne	r3,#0x00,00148$
	inc	r4
	cjne	r4,#0x00,00148$
	inc	r7
00148$:
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$4895$1_0$391 ==.
;	tasks.c:4895: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$4897$3_0$394 ==.
;	tasks.c:4897: case eSetValueWithOverwrite:
00105$:
	C$tasks.c$4898$3_0$394 ==.
;	tasks.c:4898: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$4899$3_0$394 ==.
;	tasks.c:4899: break;
	ljmp	00112$
	C$tasks.c$4901$3_0$394 ==.
;	tasks.c:4901: case eSetValueWithoutOverwrite:
00106$:
	C$tasks.c$4903$3_0$394 ==.
;	tasks.c:4903: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
	cjne	r4,#0x02,00149$
	ljmp	00108$
00149$:
	C$tasks.c$4905$4_0$395 ==.
;	tasks.c:4905: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	ljmp	00112$
00108$:
	C$tasks.c$4910$4_0$396 ==.
;	tasks.c:4910: xReturn = pdFAIL;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	@r0,#0x00
	C$tasks.c$4929$2_0$392 ==.
;	tasks.c:4929: }
00112$:
	C$tasks.c$4935$2_0$392 ==.
;	tasks.c:4935: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	cjne	r4,#0x01,00150$
	sjmp	00151$
00150$:
	ljmp	00118$
00151$:
	C$tasks.c$4937$4_0$398 ==.
;	tasks.c:4937: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x0b
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	add	a,#0x14
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
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0d
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
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
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x01
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00152$
	sjmp	00153$
00152$:
	ljmp	00114$
00153$:
	mov	a,_bp
	add	a,#0x0d
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00114$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$4938$4_0$400 ==.
;	tasks.c:4938: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x1f
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
	mov	r4,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00154$
	ljmp	00116$
00154$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00116$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
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
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
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
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	C$tasks.c$4959$3_0$397 ==.
;	tasks.c:4959: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
00118$:
	C$tasks.c$4975$1_0$391 ==.
;	tasks.c:4975: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$4977$1_0$391 ==.
;	tasks.c:4977: return xReturn;
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
00119$:
	C$tasks.c$4978$1_0$391 ==.
;	tasks.c:4978: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$4978$1_0$391 ==.
	XG$xTaskGenericNotify$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotifyFromISR'
;------------------------------------------------------------
;uxIndexToNotify           Allocated to stack - _bp -3
;ulValue                   Allocated to stack - _bp -7
;eAction                   Allocated to stack - _bp -8
;pulPreviousNotificationValue Allocated to stack - _bp -11
;pxHigherPriorityTaskWoken Allocated to stack - _bp -14
;xTaskToNotify             Allocated to registers r7 r6 r5 
;pxTCB                     Allocated to stack - _bp +17
;ucOriginalNotifyState     Allocated to registers r4 
;xReturn                   Allocated to stack - _bp +16
;uxSavedInterruptStatus    Allocated to registers 
;pxList                    Allocated to stack - _bp +20
;pxIndex                   Allocated to registers r2 r3 r4 
;pxIndex                   Allocated to stack - _bp +20
;sloc0                     Allocated to stack - _bp +7
;sloc1                     Allocated to stack - _bp +10
;sloc2                     Allocated to stack - _bp +4
;sloc3                     Allocated to stack - _bp +1
;sloc4                     Allocated to stack - _bp +13
;------------------------------------------------------------
	G$xTaskGenericNotifyFromISR$0$0 ==.
	C$tasks.c$4985$1_0$407 ==.
;	tasks.c:4985: BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
;	-----------------------------------------
;	 function xTaskGenericNotifyFromISR
;	-----------------------------------------
_xTaskGenericNotifyFromISR:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	C$tasks.c$4994$2_0$407 ==.
;	tasks.c:4994: BaseType_t xReturn = pdPASS;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,#0x01
	C$tasks.c$5018$1_0$407 ==.
;	tasks.c:5018: pxTCB = xTaskToNotify;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar5
	C$tasks.c$5022$2_0$408 ==.
;	tasks.c:5022: if( pulPreviousNotificationValue != NULL )
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00164$
	ljmp	00102$
00164$:
	C$tasks.c$5024$1_0$407 ==.
;	tasks.c:5024: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
	mov	a,_bp
	add	a,#0xf5
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	mov	a,#0x2e
	add	a,r7
	mov	r7,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,acc
	mov	r4,a
	mov	a,r4
	add	a,r7
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r5
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
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$5116$1_0$407 ==.
;	tasks.c:5116: return xReturn;
	C$tasks.c$5024$2_0$408 ==.
;	tasks.c:5024: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
00102$:
	C$tasks.c$5027$2_0$408 ==.
;	tasks.c:5027: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x32
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar2,@r0
	mov	a,r2
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	C$tasks.c$5028$2_0$408 ==.
;	tasks.c:5028: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$5030$2_0$408 ==.
;	tasks.c:5030: switch( eAction )
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	clr	c
	mov	a,#0x04
	subb	a,@r0
	jnc	00165$
	ljmp	00112$
00165$:
	mov	a,_bp
	add	a,#0xf8
	mov	r0,a
	mov	a,@r0
	add	a,@r0
	add	a,@r0
	mov	dptr,#00166$
	jmp	@a+dptr
00166$:
	ljmp	00112$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	C$tasks.c$5032$3_0$410 ==.
;	tasks.c:5032: case eSetBits:
00103$:
	C$tasks.c$5033$1_0$407 ==.
;	tasks.c:5033: pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
	push	ar4
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	orl	ar2,a
	inc	r0
	mov	a,@r0
	orl	ar3,a
	inc	r0
	mov	a,@r0
	orl	ar4,a
	inc	r0
	mov	a,@r0
	orl	ar7,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$5034$1_0$407 ==.
;	tasks.c:5034: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$5036$3_0$410 ==.
;	tasks.c:5036: case eIncrement:
00104$:
	C$tasks.c$5037$1_0$407 ==.
;	tasks.c:5037: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
	push	ar4
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,r3
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00167$
	inc	r3
	cjne	r3,#0x00,00167$
	inc	r4
	cjne	r4,#0x00,00167$
	inc	r7
00167$:
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$5038$1_0$407 ==.
;	tasks.c:5038: break;
	pop	ar4
	ljmp	00112$
	C$tasks.c$5040$3_0$410 ==.
;	tasks.c:5040: case eSetValueWithOverwrite:
00105$:
	C$tasks.c$5041$3_0$410 ==.
;	tasks.c:5041: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$5042$3_0$410 ==.
;	tasks.c:5042: break;
	ljmp	00112$
	C$tasks.c$5044$3_0$410 ==.
;	tasks.c:5044: case eSetValueWithoutOverwrite:
00106$:
	C$tasks.c$5046$3_0$410 ==.
;	tasks.c:5046: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
	cjne	r4,#0x02,00168$
	ljmp	00108$
00168$:
	C$tasks.c$5048$4_0$411 ==.
;	tasks.c:5048: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x2e
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,r2
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r3
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	ljmp	00112$
00108$:
	C$tasks.c$5053$4_0$412 ==.
;	tasks.c:5053: xReturn = pdFAIL;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	@r0,#0x00
	C$tasks.c$5071$2_0$408 ==.
;	tasks.c:5071: }
00112$:
	C$tasks.c$5077$2_0$408 ==.
;	tasks.c:5077: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	cjne	r4,#0x01,00169$
	sjmp	00170$
00169$:
	ljmp	00125$
00170$:
	C$tasks.c$5082$3_0$413 ==.
;	tasks.c:5082: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00171$
	ljmp	00118$
00171$:
	C$tasks.c$5084$5_0$415 ==.
;	tasks.c:5084: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x0b
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,_bp
	add	a,#0x14
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
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
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
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x01
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00172$
	sjmp	00173$
00172$:
	ljmp	00114$
00173$:
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
00114$:
	push	ar5
	push	ar6
	push	ar7
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$5085$5_0$417 ==.
;	tasks.c:5085: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,#0x1f
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
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r7
	subb	a,r4
	pop	ar7
	pop	ar6
	pop	ar5
	jc	00174$
	ljmp	00116$
00174$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r4
	movx	@dptr,a
00116$:
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
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
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
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
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	r0,_bp
	inc	r0
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	ljmp	00119$
00118$:
	C$tasks.c$5091$5_0$421 ==.
;	tasks.c:5091: listINSERT_END( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
	mov	dptr,#(_xPendingReadyList + 0x0001)
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,#0x05
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
	add	a,#0x0d
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
	mov	a,#0x02
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
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_xPendingReadyList
	lcall	__gptrput
	inc	dptr
	mov	a,#(_xPendingReadyList >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x00
	lcall	__gptrput
	mov	dptr,#_xPendingReadyList
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_xPendingReadyList
	mov	a,r7
	movx	@dptr,a
00119$:
	C$tasks.c$5094$3_0$413 ==.
;	tasks.c:5094: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00175$
	ljmp	00125$
00175$:
	C$tasks.c$5098$4_0$422 ==.
;	tasks.c:5098: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xf2
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00176$
	ljmp	00121$
00176$:
	C$tasks.c$5100$5_0$423 ==.
;	tasks.c:5100: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xf2
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00121$:
	C$tasks.c$5106$4_0$422 ==.
;	tasks.c:5106: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
00125$:
	C$tasks.c$5116$1_0$407 ==.
;	tasks.c:5116: return xReturn;
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	dpl,@r0
00126$:
	C$tasks.c$5117$1_0$407 ==.
;	tasks.c:5117: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$5117$1_0$407 ==.
	XG$xTaskGenericNotifyFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vTaskGenericNotifyGiveFromISR'
;------------------------------------------------------------
;uxIndexToNotify           Allocated to stack - _bp -3
;pxHigherPriorityTaskWoken Allocated to stack - _bp -6
;xTaskToNotify             Allocated to stack - _bp +1
;pxTCB                     Allocated to stack - _bp +16
;ucOriginalNotifyState     Allocated to stack - _bp +19
;uxSavedInterruptStatus    Allocated to registers 
;pxList                    Allocated to stack - _bp +20
;pxIndex                   Allocated to stack - _bp +20
;pxIndex                   Allocated to stack - _bp +20
;sloc0                     Allocated to stack - _bp +4
;sloc1                     Allocated to stack - _bp +7
;sloc2                     Allocated to stack - _bp +13
;sloc3                     Allocated to stack - _bp +10
;------------------------------------------------------------
	G$vTaskGenericNotifyGiveFromISR$0$0 ==.
	C$tasks.c$5124$1_0$426 ==.
;	tasks.c:5124: void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
;	-----------------------------------------
;	 function vTaskGenericNotifyGiveFromISR
;	-----------------------------------------
_vTaskGenericNotifyGiveFromISR:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	push	b
	mov	a,sp
	add	a,#0x13
	mov	sp,a
	C$tasks.c$5153$1_0$426 ==.
;	tasks.c:5153: pxTCB = xTaskToNotify;
	mov	r0,_bp
	inc	r0
	mov	a,_bp
	add	a,#0x10
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	inc	r1
	mov	@r1,a
	C$tasks.c$5157$2_0$427 ==.
;	tasks.c:5157: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
	mov	r0,_bp
	inc	r0
	mov	a,#0x32
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	a,r7
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	C$tasks.c$5158$2_0$427 ==.
;	tasks.c:5158: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x02
	lcall	__gptrput
	C$tasks.c$5162$2_0$427 ==.
;	tasks.c:5162: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
	mov	r0,_bp
	inc	r0
	mov	a,#0x2e
	add	a,@r0
	mov	r3,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	a,r7
	add	a,acc
	mov	r7,a
	mov	a,r7
	add	a,acc
	mov	r7,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,r7
	add	a,r3
	mov	@r0,a
	mov	a,#0x00
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
	mov	a,_bp
	add	a,#0x04
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	inc	r2
	cjne	r2,#0x00,00140$
	inc	r6
	cjne	r6,#0x00,00140$
	inc	r5
	cjne	r5,#0x00,00140$
	inc	r7
00140$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$5168$2_0$427 ==.
;	tasks.c:5168: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	cjne	@r0,#0x01,00141$
	sjmp	00142$
00141$:
	ljmp	00114$
00142$:
	C$tasks.c$5173$3_0$428 ==.
;	tasks.c:5173: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
	mov	dptr,#_uxSchedulerSuspended
	movx	a,@dptr
	jz	00143$
	ljmp	00106$
00143$:
	C$tasks.c$5175$5_0$430 ==.
;	tasks.c:5175: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
	mov	r0,_bp
	inc	r0
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,#0x0b
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
	add	a,#0x14
	mov	r0,a
	lcall	__gptrget
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	inc	dptr
	lcall	__gptrget
	inc	r0
	mov	@r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	a,#0x02
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
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
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x02
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x04
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
	mov	r4,a
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,#0x01
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
	add	a,#0x0d
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
	mov	r4,a
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	___gptr_cmp
	dec	sp
	dec	sp
	dec	sp
	jnz	00144$
	sjmp	00145$
00144$:
	ljmp	00102$
00145$:
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
	add	a,#0x0d
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
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x03
	add	a,@r0
	mov	r5,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r6,a
	inc	r0
	mov	ar7,@r0
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	a,#0x0b
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	inc	dptr
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	dec	r4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r4
	lcall	__gptrput
	C$tasks.c$5176$5_0$432 ==.
;	tasks.c:5176: prvAddTaskToReadyList( pxTCB );
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,_bp
	add	a,#0x04
	mov	r1,a
	mov	a,#0x1f
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
	mov	r3,a
	mov	dptr,#_uxTopReadyPriority
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r4
	subb	a,r3
	jc	00146$
	ljmp	00104$
00146$:
	mov	dptr,#_uxTopReadyPriority
	mov	a,r3
	movx	@dptr,a
00104$:
	mov	a,_bp
	add	a,#0x04
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r4,a
	mov	a,r4
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r3,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	inc	dptr
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	a,#0x02
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
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	a,#0x05
	add	a,r5
	mov	@r0,a
	mov	a,#0x00
	addc	a,r6
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x0a
	mov	r1,a
	mov	a,#0x05
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
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
	mov	a,_bp
	add	a,#0x07
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
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
	mov	r4,a
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
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
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	r5,#0x00
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r5
	lcall	__gptrput
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
	mov	a,r7
	mov	b,#0x0c
	mul	ab
	add	a,#_pxReadyTasksLists
	mov	r6,a
	mov	a,#(_pxReadyTasksLists >> 8)
	addc	a,b
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	r5
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	ljmp	00107$
00106$:
	C$tasks.c$5182$5_0$436 ==.
;	tasks.c:5182: listINSERT_END( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
	mov	dptr,#(_xPendingReadyList + 0x0001)
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	movx	a,@dptr
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	inc	dptr
	movx	a,@dptr
	inc	r0
	mov	@r0,a
	mov	r0,_bp
	inc	r0
	mov	a,#0x11
	add	a,@r0
	mov	r2,a
	mov	a,#0x00
	inc	r0
	addc	a,@r0
	mov	r3,a
	inc	r0
	mov	ar4,@r0
	mov	a,#0x02
	add	a,r2
	mov	r5,a
	mov	a,#0x00
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0a
	mov	r0,a
	mov	a,#0x05
	add	a,r2
	mov	@r0,a
	mov	a,#0x00
	addc	a,r3
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar4
	mov	a,_bp
	add	a,#0x14
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,#0x05
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
	add	a,#0x0d
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
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	mov	a,_bp
	add	a,#0x0d
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
	mov	a,#0x02
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
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r4
	lcall	__gptrput
	mov	a,#0x0b
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#_xPendingReadyList
	lcall	__gptrput
	inc	dptr
	mov	a,#(_xPendingReadyList >> 8)
	lcall	__gptrput
	inc	dptr
	mov	a,#0x00
	lcall	__gptrput
	mov	dptr,#_xPendingReadyList
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#_xPendingReadyList
	mov	a,r7
	movx	@dptr,a
00107$:
	C$tasks.c$5185$3_0$428 ==.
;	tasks.c:5185: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
	mov	a,_bp
	add	a,#0x10
	mov	r0,a
	mov	a,#0x1f
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
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x1f
	add	a,r4
	mov	r4,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	clr	c
	mov	a,r4
	subb	a,r5
	jc	00147$
	ljmp	00114$
00147$:
	C$tasks.c$5189$4_0$437 ==.
;	tasks.c:5189: if( pxHigherPriorityTaskWoken != NULL )
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00148$
	ljmp	00109$
00148$:
	C$tasks.c$5191$5_0$438 ==.
;	tasks.c:5191: *pxHigherPriorityTaskWoken = pdTRUE;
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00109$:
	C$tasks.c$5197$4_0$437 ==.
;	tasks.c:5197: xYieldPending = pdTRUE;
	mov	dptr,#_xYieldPending
	mov	a,#0x01
	movx	@dptr,a
	C$tasks.c$5205$1_0$426 ==.
;	tasks.c:5205: portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
00114$:
	C$tasks.c$5206$1_0$426 ==.
;	tasks.c:5206: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$5206$1_0$426 ==.
	XG$vTaskGenericNotifyGiveFromISR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xTaskGenericNotifyStateClear'
;------------------------------------------------------------
;uxIndexToClear            Allocated to stack - _bp -3
;xTask                     Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to registers r5 r6 r7 
;xReturn                   Allocated to registers r7 
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$xTaskGenericNotifyStateClear$0$0 ==.
	C$tasks.c$5213$1_0$441 ==.
;	tasks.c:5213: BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
;	-----------------------------------------
;	 function xTaskGenericNotifyStateClear
;	-----------------------------------------
_xTaskGenericNotifyStateClear:
	push	_bp
	mov	_bp,sp
	inc	sp
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$5223$1_0$441 ==.
;	tasks.c:5223: pxTCB = prvGetTCBFromHandle( xTask );
	mov	a,r5
	orl	a,r6
	jz	00116$
	ljmp	00106$
00116$:
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	ljmp	00107$
00106$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00107$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
	C$tasks.c$5225$1_0$441 ==.
;	tasks.c:5225: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$5227$2_0$442 ==.
;	tasks.c:5227: if( pxTCB->ucNotifyState[ uxIndexToClear ] == taskNOTIFICATION_RECEIVED )
	mov	a,#0x32
	add	a,r5
	mov	r2,a
	mov	a,#0x00
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	mov	@r1,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
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
	cjne	r2,#0x02,00117$
	sjmp	00118$
00117$:
	ljmp	00102$
00118$:
	C$tasks.c$5229$3_0$443 ==.
;	tasks.c:5229: pxTCB->ucNotifyState[ uxIndexToClear ] = taskNOT_WAITING_NOTIFICATION;
	mov	a,#0x32
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	add	a,r5
	mov	r5,a
	mov	a,#0x00
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x00
	lcall	__gptrput
	C$tasks.c$5230$3_0$443 ==.
;	tasks.c:5230: xReturn = pdPASS;
	mov	r7,#0x01
	ljmp	00103$
00102$:
	C$tasks.c$5234$3_0$444 ==.
;	tasks.c:5234: xReturn = pdFAIL;
	mov	r7,#0x00
00103$:
	C$tasks.c$5237$1_0$441 ==.
;	tasks.c:5237: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$5239$1_0$441 ==.
;	tasks.c:5239: return xReturn;
	mov	dpl,r7
00104$:
	C$tasks.c$5240$1_0$441 ==.
;	tasks.c:5240: }
	dec	sp
	pop	_bp
	C$tasks.c$5240$1_0$441 ==.
	XG$xTaskGenericNotifyStateClear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ulTaskGenericNotifyValueClear'
;------------------------------------------------------------
;uxIndexToClear            Allocated to stack - _bp -3
;ulBitsToClear             Allocated to stack - _bp -7
;xTask                     Allocated to registers r5 r6 r7 
;pxTCB                     Allocated to registers r2 r3 r4 
;ulReturn                  Allocated to stack - _bp +8
;sloc0                     Allocated to stack - _bp +5
;sloc1                     Allocated to stack - _bp +1
;------------------------------------------------------------
	G$ulTaskGenericNotifyValueClear$0$0 ==.
	C$tasks.c$5247$1_0$446 ==.
;	tasks.c:5247: uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
;	-----------------------------------------
;	 function ulTaskGenericNotifyValueClear
;	-----------------------------------------
_ulTaskGenericNotifyValueClear:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x0b
	mov	sp,a
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$tasks.c$5256$1_0$446 ==.
;	tasks.c:5256: pxTCB = prvGetTCBFromHandle( xTask );
	mov	a,r5
	orl	a,r6
	jz	00109$
	ljmp	00103$
00109$:
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	ljmp	00104$
00103$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
00104$:
	C$tasks.c$5258$1_0$446 ==.
;	tasks.c:5258: taskENTER_CRITICAL();
	push ACC 
	push IE 
;	assignBit
	clr	_EA
	C$tasks.c$5262$2_0$447 ==.
;	tasks.c:5262: ulReturn = pxTCB->ulNotifiedValue[ uxIndexToClear ];
	mov	a,#0x2e
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,acc
	mov	r7,a
	mov	a,r7
	add	a,acc
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,r7
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
	mov	a,_bp
	add	a,#0x08
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
	inc	dptr
	lcall	__gptrget
	inc	r1
	mov	@r1,a
	C$tasks.c$5263$2_0$447 ==.
;	tasks.c:5263: pxTCB->ulNotifiedValue[ uxIndexToClear ] &= ~ulBitsToClear;
	mov	a,_bp
	add	a,#0xf9
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r0
	cpl	a
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	inc	r0
	mov	a,@r0
	cpl	a
	inc	r1
	mov	@r1,a
	mov	a,_bp
	add	a,#0x05
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
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	anl	ar2,a
	inc	r0
	mov	a,@r0
	anl	ar3,a
	inc	r0
	mov	a,@r0
	anl	ar6,a
	inc	r0
	mov	a,@r0
	anl	ar7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	C$tasks.c$5265$1_0$446 ==.
;	tasks.c:5265: taskEXIT_CRITICAL();
	pop ACC 
	anl	_ACC,#0x80
	mov	a,_ACC
	orl	_IE,a
	pop ACC 
	C$tasks.c$5267$1_0$446 ==.
;	tasks.c:5267: return ulReturn;
	mov	a,_bp
	add	a,#0x08
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
00101$:
	C$tasks.c$5268$1_0$446 ==.
;	tasks.c:5268: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$5268$1_0$446 ==.
	XG$ulTaskGenericNotifyValueClear$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prvAddCurrentTaskToDelayedList'
;------------------------------------------------------------
;xCanBlockIndefinitely     Allocated to stack - _bp -3
;xTicksToWait              Allocated to stack - _bp +1
;xTimeToWake               Allocated to stack - _bp +3
;xConstTickCount           Allocated to stack - _bp +5
;sloc0                     Allocated to stack - _bp +7
;------------------------------------------------------------
	Ftasks$prvAddCurrentTaskToDelayedList$0$0 ==.
	C$tasks.c$5310$1_0$449 ==.
;	tasks.c:5310: static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait,
;	-----------------------------------------
;	 function prvAddCurrentTaskToDelayedList
;	-----------------------------------------
_prvAddCurrentTaskToDelayedList:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x04
	mov	sp,a
	C$tasks.c$5314$2_0$449 ==.
;	tasks.c:5314: const TickType_t xConstTickCount = xTickCount;
	mov	dptr,#_xTickCount
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	C$tasks.c$5327$1_0$449 ==.
;	tasks.c:5327: if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	_uxListRemove
	C$tasks.c$5388$2_0$452 ==.
;	tasks.c:5388: xTimeToWake = xConstTickCount + xTicksToWait;
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	r1,_bp
	inc	r1
	mov	a,@r1
	add	a,@r0
	mov	r6,a
	inc	r1
	mov	a,@r1
	inc	r0
	addc	a,@r0
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	C$tasks.c$5391$2_0$452 ==.
;	tasks.c:5391: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r2
	mov	r2,a
	mov	a,#0x00
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,@r0
	lcall	__gptrput
	inc	dptr
	inc	r0
	mov	a,@r0
	lcall	__gptrput
	C$tasks.c$5393$2_0$452 ==.
;	tasks.c:5393: if( xTimeToWake < xConstTickCount )
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	a,_bp
	add	a,#0x05
	mov	r1,a
	clr	c
	mov	a,@r0
	subb	a,@r1
	inc	r0
	mov	a,@r0
	inc	r1
	subb	a,@r1
	jc	00118$
	ljmp	00106$
00118$:
	C$tasks.c$5396$3_0$453 ==.
;	tasks.c:5396: vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dptr,#_pxOverflowDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r4
	mov	b,r5
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	ljmp	00108$
00106$:
	C$tasks.c$5401$3_0$454 ==.
;	tasks.c:5401: vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
	mov	dptr,#_pxCurrentTCB
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	add	a,r3
	mov	r3,a
	mov	a,#0x00
	addc	a,r4
	mov	r4,a
	mov	dptr,#_pxDelayedTaskList
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_vListInsert
	dec	sp
	dec	sp
	dec	sp
	C$tasks.c$5406$3_0$454 ==.
;	tasks.c:5406: if( xTimeToWake < xNextTaskUnblockTime )
	mov	dptr,#_xNextTaskUnblockTime
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	clr	c
	mov	a,@r0
	subb	a,r6
	inc	r0
	mov	a,@r0
	subb	a,r7
	jc	00119$
	ljmp	00108$
00119$:
	C$tasks.c$5408$4_0$455 ==.
;	tasks.c:5408: xNextTaskUnblockTime = xTimeToWake;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dptr,#_xNextTaskUnblockTime
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	mov	a,@r0
	inc	dptr
	movx	@dptr,a
	C$tasks.c$5417$2_0$449 ==.
;	tasks.c:5417: ( void ) xCanBlockIndefinitely;
00108$:
	C$tasks.c$5420$2_0$449 ==.
;	tasks.c:5420: }
	mov	sp,_bp
	pop	_bp
	C$tasks.c$5420$2_0$449 ==.
	XFtasks$prvAddCurrentTaskToDelayedList$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$uxTopUsedPriority$0_0$0 == .
_uxTopUsedPriority:
	.db #0x03	; 3
Ftasks$__str_0$0_0$0 == .
	.area CONST   (CODE)
___str_0:
	.ascii "IDLE"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
Ftasks$__xinit_pxCurrentTCB$0_0$0 == .
__xinit__pxCurrentTCB:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
Ftasks$__xinit_uxDeletedTasksWaitingCleanUp$0_0$0 == .
__xinit__uxDeletedTasksWaitingCleanUp:
	.db #0x00	; 0
Ftasks$__xinit_uxCurrentNumberOfTasks$0_0$0 == .
__xinit__uxCurrentNumberOfTasks:
	.db #0x00	; 0
Ftasks$__xinit_xTickCount$0_0$0 == .
__xinit__xTickCount:
	.byte #0x00, #0x00	; 0
Ftasks$__xinit_uxTopReadyPriority$0_0$0 == .
__xinit__uxTopReadyPriority:
	.db #0x00	; 0
Ftasks$__xinit_xSchedulerRunning$0_0$0 == .
__xinit__xSchedulerRunning:
	.db #0x00	;  0
Ftasks$__xinit_xPendedTicks$0_0$0 == .
__xinit__xPendedTicks:
	.byte #0x00, #0x00	; 0
Ftasks$__xinit_xYieldPending$0_0$0 == .
__xinit__xYieldPending:
	.db #0x00	;  0
Ftasks$__xinit_xNumOfOverflows$0_0$0 == .
__xinit__xNumOfOverflows:
	.db #0x00	;  0
Ftasks$__xinit_uxTaskNumber$0_0$0 == .
__xinit__uxTaskNumber:
	.db #0x00	; 0
Ftasks$__xinit_xNextTaskUnblockTime$0_0$0 == .
__xinit__xNextTaskUnblockTime:
	.byte #0x00, #0x00	; 0
Ftasks$__xinit_xIdleTaskHandle$0_0$0 == .
__xinit__xIdleTaskHandle:
; generic printIvalPtr
	.byte #0x00,#0x00,#0x00
Ftasks$__xinit_uxSchedulerSuspended$0_0$0 == .
__xinit__uxSchedulerSuspended:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
