                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module tasks
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uxTopUsedPriority
                                     12 	.globl _uxListRemove
                                     13 	.globl _vListInsertEnd
                                     14 	.globl _vListInsert
                                     15 	.globl _vListInitialiseItem
                                     16 	.globl _vListInitialise
                                     17 	.globl _vPortEndScheduler
                                     18 	.globl _xPortStartScheduler
                                     19 	.globl _vPortFree
                                     20 	.globl _pvPortMalloc
                                     21 	.globl _pxPortInitialiseStack
                                     22 	.globl _vPortYield
                                     23 	.globl _memset
                                     24 	.globl _SPIF
                                     25 	.globl _WCOL
                                     26 	.globl _MODF
                                     27 	.globl _RXOVRN
                                     28 	.globl _NSSMD1
                                     29 	.globl _NSSMD0
                                     30 	.globl _TXBMT
                                     31 	.globl _SPIEN
                                     32 	.globl _AD0EN
                                     33 	.globl _AD0TM
                                     34 	.globl _AD0INT
                                     35 	.globl _AD0BUSY
                                     36 	.globl _AD0WINT
                                     37 	.globl _AD0CM2
                                     38 	.globl _AD0CM1
                                     39 	.globl _AD0CM0
                                     40 	.globl _CF
                                     41 	.globl _CR
                                     42 	.globl _CCF4
                                     43 	.globl _CCF3
                                     44 	.globl _CCF2
                                     45 	.globl _CCF1
                                     46 	.globl _CCF0
                                     47 	.globl _CY
                                     48 	.globl _AC
                                     49 	.globl _F0
                                     50 	.globl _RS1
                                     51 	.globl _RS0
                                     52 	.globl _OV
                                     53 	.globl _F1
                                     54 	.globl _PARITY
                                     55 	.globl _TF2H
                                     56 	.globl _TF2
                                     57 	.globl _TF2L
                                     58 	.globl _TF2LEN
                                     59 	.globl _T2CE
                                     60 	.globl _T2SPLIT
                                     61 	.globl _TR2
                                     62 	.globl _T2CSS
                                     63 	.globl _T2XCLK
                                     64 	.globl _MASTER
                                     65 	.globl _TXMODE
                                     66 	.globl _STA
                                     67 	.globl _STO
                                     68 	.globl _ACKRQ
                                     69 	.globl _ARBLOST
                                     70 	.globl _ACK
                                     71 	.globl _SI
                                     72 	.globl _PSPI0
                                     73 	.globl _PT2
                                     74 	.globl _PS0
                                     75 	.globl _PS
                                     76 	.globl _PT1
                                     77 	.globl _PX1
                                     78 	.globl _PT0
                                     79 	.globl _PX0
                                     80 	.globl _P3_7
                                     81 	.globl _P3_6
                                     82 	.globl _P3_5
                                     83 	.globl _P3_4
                                     84 	.globl _P3_3
                                     85 	.globl _P3_2
                                     86 	.globl _P3_1
                                     87 	.globl _P3_0
                                     88 	.globl _EA
                                     89 	.globl _ESPI0
                                     90 	.globl _ET2
                                     91 	.globl _ES0
                                     92 	.globl _ES
                                     93 	.globl _ET1
                                     94 	.globl _EX1
                                     95 	.globl _ET0
                                     96 	.globl _EX0
                                     97 	.globl _P2_7
                                     98 	.globl _P2_6
                                     99 	.globl _P2_5
                                    100 	.globl _P2_4
                                    101 	.globl _P2_3
                                    102 	.globl _P2_2
                                    103 	.globl _P2_1
                                    104 	.globl _P2_0
                                    105 	.globl _S0MODE
                                    106 	.globl _SM0
                                    107 	.globl _MCE0
                                    108 	.globl _SM2
                                    109 	.globl _REN0
                                    110 	.globl _REN
                                    111 	.globl _TB80
                                    112 	.globl _TB8
                                    113 	.globl _RB80
                                    114 	.globl _RB8
                                    115 	.globl _TI0
                                    116 	.globl _TI
                                    117 	.globl _RI0
                                    118 	.globl _RI
                                    119 	.globl _P1_7
                                    120 	.globl _P1_6
                                    121 	.globl _P1_5
                                    122 	.globl _P1_4
                                    123 	.globl _P1_3
                                    124 	.globl _P1_2
                                    125 	.globl _P1_1
                                    126 	.globl _P1_0
                                    127 	.globl _TF1
                                    128 	.globl _TR1
                                    129 	.globl _TF0
                                    130 	.globl _TR0
                                    131 	.globl _IE1
                                    132 	.globl _IT1
                                    133 	.globl _IE0
                                    134 	.globl _IT0
                                    135 	.globl _P0_7
                                    136 	.globl _P0_6
                                    137 	.globl _P0_5
                                    138 	.globl _P0_4
                                    139 	.globl _P0_3
                                    140 	.globl _P0_2
                                    141 	.globl _P0_1
                                    142 	.globl _P0_0
                                    143 	.globl _PCA0CP4
                                    144 	.globl _PCA0CP3
                                    145 	.globl _PCA0CP2
                                    146 	.globl _PCA0CP1
                                    147 	.globl _PCA0CP0
                                    148 	.globl _PCA0
                                    149 	.globl _ADC0LT
                                    150 	.globl _ADC0GT
                                    151 	.globl _ADC0
                                    152 	.globl _SBRL1
                                    153 	.globl _TMR3RL
                                    154 	.globl _TMR3
                                    155 	.globl _TMR2RL
                                    156 	.globl _RCAP2
                                    157 	.globl _TMR2
                                    158 	.globl _TMR1
                                    159 	.globl _TMR0
                                    160 	.globl _VDM0CN
                                    161 	.globl _PCA0CPH4
                                    162 	.globl _PCA0CPL4
                                    163 	.globl _PCA0CPH0
                                    164 	.globl _PCA0CPL0
                                    165 	.globl _PCA0H
                                    166 	.globl _PCA0L
                                    167 	.globl _SPI0CN
                                    168 	.globl _EIP2
                                    169 	.globl _EIP1
                                    170 	.globl _P4MDIN
                                    171 	.globl _P3MDIN
                                    172 	.globl _P3MODE
                                    173 	.globl _P2MDIN
                                    174 	.globl _P2MODE
                                    175 	.globl _P1MDIN
                                    176 	.globl _P1MODE
                                    177 	.globl _P0MDIN
                                    178 	.globl _P0MODE
                                    179 	.globl _B
                                    180 	.globl _RSTSRC
                                    181 	.globl _PCA0CPH3
                                    182 	.globl _PCA0CPL3
                                    183 	.globl _PCA0CPH2
                                    184 	.globl _PCA0CPL2
                                    185 	.globl _PCA0CPH1
                                    186 	.globl _PCA0CPL1
                                    187 	.globl _ADC0CN
                                    188 	.globl _EIE2
                                    189 	.globl _EIE1
                                    190 	.globl _SMOD1
                                    191 	.globl _INT01CF
                                    192 	.globl _IT01CF
                                    193 	.globl _XBR2
                                    194 	.globl _XBR1
                                    195 	.globl _XBR0
                                    196 	.globl _ACC
                                    197 	.globl _P3SKIP
                                    198 	.globl _PCA0CPM4
                                    199 	.globl _PCA0CPM3
                                    200 	.globl _PCA0CPM2
                                    201 	.globl _PCA0CPM1
                                    202 	.globl _PCA0CPM0
                                    203 	.globl _PCA0MD
                                    204 	.globl _PCA0CN
                                    205 	.globl _USB0XCN
                                    206 	.globl _P2SKIP
                                    207 	.globl _P1SKIP
                                    208 	.globl _P0SKIP
                                    209 	.globl _SBUF1
                                    210 	.globl _SCON1
                                    211 	.globl _REF0CN
                                    212 	.globl _PSW
                                    213 	.globl _TMR2H
                                    214 	.globl _TH2
                                    215 	.globl _TMR2L
                                    216 	.globl _TL2
                                    217 	.globl _TMR2RLH
                                    218 	.globl _RCAP2H
                                    219 	.globl _TMR2RLL
                                    220 	.globl _RCAP2L
                                    221 	.globl _REG0CN
                                    222 	.globl _TMR2CN
                                    223 	.globl _T2CON
                                    224 	.globl _P4
                                    225 	.globl _ADC0LTH
                                    226 	.globl _ADC0LTL
                                    227 	.globl _ADC0GTH
                                    228 	.globl _ADC0GTL
                                    229 	.globl _SMB0DAT
                                    230 	.globl _SMB0CF
                                    231 	.globl _SMB0CN
                                    232 	.globl _ADC0H
                                    233 	.globl _ADC0L
                                    234 	.globl _ADC0CF
                                    235 	.globl _AMX0P
                                    236 	.globl _AMX0N
                                    237 	.globl _CLKMUL
                                    238 	.globl _IP
                                    239 	.globl _FLKEY
                                    240 	.globl _FLSCL
                                    241 	.globl _SBRLH1
                                    242 	.globl _SBRLL1
                                    243 	.globl _OSCICL
                                    244 	.globl _OSCICN
                                    245 	.globl _OSCXCN
                                    246 	.globl _P3
                                    247 	.globl _PFE0CN
                                    248 	.globl _P4MDOUT
                                    249 	.globl _SBCON1
                                    250 	.globl __XPAGE
                                    251 	.globl _EMI0CN
                                    252 	.globl _CLKSEL
                                    253 	.globl _IE
                                    254 	.globl _P3MDOUT
                                    255 	.globl _P2MDOUT
                                    256 	.globl _P1MDOUT
                                    257 	.globl _P0MDOUT
                                    258 	.globl _SPI0DAT
                                    259 	.globl _SPI0CKR
                                    260 	.globl _SPI0CFG
                                    261 	.globl _P2
                                    262 	.globl _CPT0MX
                                    263 	.globl _CPT1MX
                                    264 	.globl _CPT0MD
                                    265 	.globl _CPT1MD
                                    266 	.globl _CPT0CN
                                    267 	.globl _CPT1CN
                                    268 	.globl _SBUF0
                                    269 	.globl _SBUF
                                    270 	.globl _SCON0
                                    271 	.globl _SCON
                                    272 	.globl _USB0DAT
                                    273 	.globl _USB0ADR
                                    274 	.globl _TMR3H
                                    275 	.globl _TMR3L
                                    276 	.globl _TMR3RLH
                                    277 	.globl _TMR3RLL
                                    278 	.globl _TMR3CN
                                    279 	.globl _P1
                                    280 	.globl _PSCTL
                                    281 	.globl _CKCON
                                    282 	.globl _TH1
                                    283 	.globl _TH0
                                    284 	.globl _TL1
                                    285 	.globl _TL0
                                    286 	.globl _TMOD
                                    287 	.globl _TCON
                                    288 	.globl _PCON
                                    289 	.globl _OSCLCN
                                    290 	.globl _EMI0CF
                                    291 	.globl _EMI0TC
                                    292 	.globl _DPH
                                    293 	.globl _DPL
                                    294 	.globl _SP
                                    295 	.globl _P0
                                    296 	.globl _pxCurrentTCB
                                    297 	.globl _xTaskCreate
                                    298 	.globl _vTaskDelete
                                    299 	.globl _vTaskDelay
                                    300 	.globl _vTaskStartScheduler
                                    301 	.globl _vTaskEndScheduler
                                    302 	.globl _vTaskSuspendAll
                                    303 	.globl _xTaskResumeAll
                                    304 	.globl _xTaskGetTickCount
                                    305 	.globl _xTaskGetTickCountFromISR
                                    306 	.globl _uxTaskGetNumberOfTasks
                                    307 	.globl _pcTaskGetName
                                    308 	.globl _xTaskCatchUpTicks
                                    309 	.globl _xTaskIncrementTick
                                    310 	.globl _vTaskSwitchContext
                                    311 	.globl _vTaskPlaceOnEventList
                                    312 	.globl _vTaskPlaceOnUnorderedEventList
                                    313 	.globl _xTaskRemoveFromEventList
                                    314 	.globl _vTaskRemoveFromUnorderedEventList
                                    315 	.globl _vTaskSetTimeOutState
                                    316 	.globl _vTaskInternalSetTimeOutState
                                    317 	.globl _xTaskCheckForTimeOut
                                    318 	.globl _vTaskMissedYield
                                    319 	.globl _uxTaskResetEventItemValue
                                    320 	.globl _ulTaskGenericNotifyTake
                                    321 	.globl _xTaskGenericNotifyWait
                                    322 	.globl _xTaskGenericNotify
                                    323 	.globl _xTaskGenericNotifyFromISR
                                    324 	.globl _vTaskGenericNotifyGiveFromISR
                                    325 	.globl _xTaskGenericNotifyStateClear
                                    326 	.globl _ulTaskGenericNotifyValueClear
                                    327 ;--------------------------------------------------------
                                    328 ; special function registers
                                    329 ;--------------------------------------------------------
                                    330 	.area RSEG    (ABS,DATA)
      000000                        331 	.org 0x0000
                           000080   332 G$P0$0_0$0 == 0x0080
                           000080   333 _P0	=	0x0080
                           000081   334 G$SP$0_0$0 == 0x0081
                           000081   335 _SP	=	0x0081
                           000082   336 G$DPL$0_0$0 == 0x0082
                           000082   337 _DPL	=	0x0082
                           000083   338 G$DPH$0_0$0 == 0x0083
                           000083   339 _DPH	=	0x0083
                           000084   340 G$EMI0TC$0_0$0 == 0x0084
                           000084   341 _EMI0TC	=	0x0084
                           000085   342 G$EMI0CF$0_0$0 == 0x0085
                           000085   343 _EMI0CF	=	0x0085
                           000086   344 G$OSCLCN$0_0$0 == 0x0086
                           000086   345 _OSCLCN	=	0x0086
                           000087   346 G$PCON$0_0$0 == 0x0087
                           000087   347 _PCON	=	0x0087
                           000088   348 G$TCON$0_0$0 == 0x0088
                           000088   349 _TCON	=	0x0088
                           000089   350 G$TMOD$0_0$0 == 0x0089
                           000089   351 _TMOD	=	0x0089
                           00008A   352 G$TL0$0_0$0 == 0x008a
                           00008A   353 _TL0	=	0x008a
                           00008B   354 G$TL1$0_0$0 == 0x008b
                           00008B   355 _TL1	=	0x008b
                           00008C   356 G$TH0$0_0$0 == 0x008c
                           00008C   357 _TH0	=	0x008c
                           00008D   358 G$TH1$0_0$0 == 0x008d
                           00008D   359 _TH1	=	0x008d
                           00008E   360 G$CKCON$0_0$0 == 0x008e
                           00008E   361 _CKCON	=	0x008e
                           00008F   362 G$PSCTL$0_0$0 == 0x008f
                           00008F   363 _PSCTL	=	0x008f
                           000090   364 G$P1$0_0$0 == 0x0090
                           000090   365 _P1	=	0x0090
                           000091   366 G$TMR3CN$0_0$0 == 0x0091
                           000091   367 _TMR3CN	=	0x0091
                           000092   368 G$TMR3RLL$0_0$0 == 0x0092
                           000092   369 _TMR3RLL	=	0x0092
                           000093   370 G$TMR3RLH$0_0$0 == 0x0093
                           000093   371 _TMR3RLH	=	0x0093
                           000094   372 G$TMR3L$0_0$0 == 0x0094
                           000094   373 _TMR3L	=	0x0094
                           000095   374 G$TMR3H$0_0$0 == 0x0095
                           000095   375 _TMR3H	=	0x0095
                           000096   376 G$USB0ADR$0_0$0 == 0x0096
                           000096   377 _USB0ADR	=	0x0096
                           000097   378 G$USB0DAT$0_0$0 == 0x0097
                           000097   379 _USB0DAT	=	0x0097
                           000098   380 G$SCON$0_0$0 == 0x0098
                           000098   381 _SCON	=	0x0098
                           000098   382 G$SCON0$0_0$0 == 0x0098
                           000098   383 _SCON0	=	0x0098
                           000099   384 G$SBUF$0_0$0 == 0x0099
                           000099   385 _SBUF	=	0x0099
                           000099   386 G$SBUF0$0_0$0 == 0x0099
                           000099   387 _SBUF0	=	0x0099
                           00009A   388 G$CPT1CN$0_0$0 == 0x009a
                           00009A   389 _CPT1CN	=	0x009a
                           00009B   390 G$CPT0CN$0_0$0 == 0x009b
                           00009B   391 _CPT0CN	=	0x009b
                           00009C   392 G$CPT1MD$0_0$0 == 0x009c
                           00009C   393 _CPT1MD	=	0x009c
                           00009D   394 G$CPT0MD$0_0$0 == 0x009d
                           00009D   395 _CPT0MD	=	0x009d
                           00009E   396 G$CPT1MX$0_0$0 == 0x009e
                           00009E   397 _CPT1MX	=	0x009e
                           00009F   398 G$CPT0MX$0_0$0 == 0x009f
                           00009F   399 _CPT0MX	=	0x009f
                           0000A0   400 G$P2$0_0$0 == 0x00a0
                           0000A0   401 _P2	=	0x00a0
                           0000A1   402 G$SPI0CFG$0_0$0 == 0x00a1
                           0000A1   403 _SPI0CFG	=	0x00a1
                           0000A2   404 G$SPI0CKR$0_0$0 == 0x00a2
                           0000A2   405 _SPI0CKR	=	0x00a2
                           0000A3   406 G$SPI0DAT$0_0$0 == 0x00a3
                           0000A3   407 _SPI0DAT	=	0x00a3
                           0000A4   408 G$P0MDOUT$0_0$0 == 0x00a4
                           0000A4   409 _P0MDOUT	=	0x00a4
                           0000A5   410 G$P1MDOUT$0_0$0 == 0x00a5
                           0000A5   411 _P1MDOUT	=	0x00a5
                           0000A6   412 G$P2MDOUT$0_0$0 == 0x00a6
                           0000A6   413 _P2MDOUT	=	0x00a6
                           0000A7   414 G$P3MDOUT$0_0$0 == 0x00a7
                           0000A7   415 _P3MDOUT	=	0x00a7
                           0000A8   416 G$IE$0_0$0 == 0x00a8
                           0000A8   417 _IE	=	0x00a8
                           0000A9   418 G$CLKSEL$0_0$0 == 0x00a9
                           0000A9   419 _CLKSEL	=	0x00a9
                           0000AA   420 G$EMI0CN$0_0$0 == 0x00aa
                           0000AA   421 _EMI0CN	=	0x00aa
                           0000AA   422 G$_XPAGE$0_0$0 == 0x00aa
                           0000AA   423 __XPAGE	=	0x00aa
                           0000AC   424 G$SBCON1$0_0$0 == 0x00ac
                           0000AC   425 _SBCON1	=	0x00ac
                           0000AE   426 G$P4MDOUT$0_0$0 == 0x00ae
                           0000AE   427 _P4MDOUT	=	0x00ae
                           0000AF   428 G$PFE0CN$0_0$0 == 0x00af
                           0000AF   429 _PFE0CN	=	0x00af
                           0000B0   430 G$P3$0_0$0 == 0x00b0
                           0000B0   431 _P3	=	0x00b0
                           0000B1   432 G$OSCXCN$0_0$0 == 0x00b1
                           0000B1   433 _OSCXCN	=	0x00b1
                           0000B2   434 G$OSCICN$0_0$0 == 0x00b2
                           0000B2   435 _OSCICN	=	0x00b2
                           0000B3   436 G$OSCICL$0_0$0 == 0x00b3
                           0000B3   437 _OSCICL	=	0x00b3
                           0000B4   438 G$SBRLL1$0_0$0 == 0x00b4
                           0000B4   439 _SBRLL1	=	0x00b4
                           0000B5   440 G$SBRLH1$0_0$0 == 0x00b5
                           0000B5   441 _SBRLH1	=	0x00b5
                           0000B6   442 G$FLSCL$0_0$0 == 0x00b6
                           0000B6   443 _FLSCL	=	0x00b6
                           0000B7   444 G$FLKEY$0_0$0 == 0x00b7
                           0000B7   445 _FLKEY	=	0x00b7
                           0000B8   446 G$IP$0_0$0 == 0x00b8
                           0000B8   447 _IP	=	0x00b8
                           0000B9   448 G$CLKMUL$0_0$0 == 0x00b9
                           0000B9   449 _CLKMUL	=	0x00b9
                           0000BA   450 G$AMX0N$0_0$0 == 0x00ba
                           0000BA   451 _AMX0N	=	0x00ba
                           0000BB   452 G$AMX0P$0_0$0 == 0x00bb
                           0000BB   453 _AMX0P	=	0x00bb
                           0000BC   454 G$ADC0CF$0_0$0 == 0x00bc
                           0000BC   455 _ADC0CF	=	0x00bc
                           0000BD   456 G$ADC0L$0_0$0 == 0x00bd
                           0000BD   457 _ADC0L	=	0x00bd
                           0000BE   458 G$ADC0H$0_0$0 == 0x00be
                           0000BE   459 _ADC0H	=	0x00be
                           0000C0   460 G$SMB0CN$0_0$0 == 0x00c0
                           0000C0   461 _SMB0CN	=	0x00c0
                           0000C1   462 G$SMB0CF$0_0$0 == 0x00c1
                           0000C1   463 _SMB0CF	=	0x00c1
                           0000C2   464 G$SMB0DAT$0_0$0 == 0x00c2
                           0000C2   465 _SMB0DAT	=	0x00c2
                           0000C3   466 G$ADC0GTL$0_0$0 == 0x00c3
                           0000C3   467 _ADC0GTL	=	0x00c3
                           0000C4   468 G$ADC0GTH$0_0$0 == 0x00c4
                           0000C4   469 _ADC0GTH	=	0x00c4
                           0000C5   470 G$ADC0LTL$0_0$0 == 0x00c5
                           0000C5   471 _ADC0LTL	=	0x00c5
                           0000C6   472 G$ADC0LTH$0_0$0 == 0x00c6
                           0000C6   473 _ADC0LTH	=	0x00c6
                           0000C7   474 G$P4$0_0$0 == 0x00c7
                           0000C7   475 _P4	=	0x00c7
                           0000C8   476 G$T2CON$0_0$0 == 0x00c8
                           0000C8   477 _T2CON	=	0x00c8
                           0000C8   478 G$TMR2CN$0_0$0 == 0x00c8
                           0000C8   479 _TMR2CN	=	0x00c8
                           0000C9   480 G$REG0CN$0_0$0 == 0x00c9
                           0000C9   481 _REG0CN	=	0x00c9
                           0000CA   482 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   483 _RCAP2L	=	0x00ca
                           0000CA   484 G$TMR2RLL$0_0$0 == 0x00ca
                           0000CA   485 _TMR2RLL	=	0x00ca
                           0000CB   486 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   487 _RCAP2H	=	0x00cb
                           0000CB   488 G$TMR2RLH$0_0$0 == 0x00cb
                           0000CB   489 _TMR2RLH	=	0x00cb
                           0000CC   490 G$TL2$0_0$0 == 0x00cc
                           0000CC   491 _TL2	=	0x00cc
                           0000CC   492 G$TMR2L$0_0$0 == 0x00cc
                           0000CC   493 _TMR2L	=	0x00cc
                           0000CD   494 G$TH2$0_0$0 == 0x00cd
                           0000CD   495 _TH2	=	0x00cd
                           0000CD   496 G$TMR2H$0_0$0 == 0x00cd
                           0000CD   497 _TMR2H	=	0x00cd
                           0000D0   498 G$PSW$0_0$0 == 0x00d0
                           0000D0   499 _PSW	=	0x00d0
                           0000D1   500 G$REF0CN$0_0$0 == 0x00d1
                           0000D1   501 _REF0CN	=	0x00d1
                           0000D2   502 G$SCON1$0_0$0 == 0x00d2
                           0000D2   503 _SCON1	=	0x00d2
                           0000D3   504 G$SBUF1$0_0$0 == 0x00d3
                           0000D3   505 _SBUF1	=	0x00d3
                           0000D4   506 G$P0SKIP$0_0$0 == 0x00d4
                           0000D4   507 _P0SKIP	=	0x00d4
                           0000D5   508 G$P1SKIP$0_0$0 == 0x00d5
                           0000D5   509 _P1SKIP	=	0x00d5
                           0000D6   510 G$P2SKIP$0_0$0 == 0x00d6
                           0000D6   511 _P2SKIP	=	0x00d6
                           0000D7   512 G$USB0XCN$0_0$0 == 0x00d7
                           0000D7   513 _USB0XCN	=	0x00d7
                           0000D8   514 G$PCA0CN$0_0$0 == 0x00d8
                           0000D8   515 _PCA0CN	=	0x00d8
                           0000D9   516 G$PCA0MD$0_0$0 == 0x00d9
                           0000D9   517 _PCA0MD	=	0x00d9
                           0000DA   518 G$PCA0CPM0$0_0$0 == 0x00da
                           0000DA   519 _PCA0CPM0	=	0x00da
                           0000DB   520 G$PCA0CPM1$0_0$0 == 0x00db
                           0000DB   521 _PCA0CPM1	=	0x00db
                           0000DC   522 G$PCA0CPM2$0_0$0 == 0x00dc
                           0000DC   523 _PCA0CPM2	=	0x00dc
                           0000DD   524 G$PCA0CPM3$0_0$0 == 0x00dd
                           0000DD   525 _PCA0CPM3	=	0x00dd
                           0000DE   526 G$PCA0CPM4$0_0$0 == 0x00de
                           0000DE   527 _PCA0CPM4	=	0x00de
                           0000DF   528 G$P3SKIP$0_0$0 == 0x00df
                           0000DF   529 _P3SKIP	=	0x00df
                           0000E0   530 G$ACC$0_0$0 == 0x00e0
                           0000E0   531 _ACC	=	0x00e0
                           0000E1   532 G$XBR0$0_0$0 == 0x00e1
                           0000E1   533 _XBR0	=	0x00e1
                           0000E2   534 G$XBR1$0_0$0 == 0x00e2
                           0000E2   535 _XBR1	=	0x00e2
                           0000E3   536 G$XBR2$0_0$0 == 0x00e3
                           0000E3   537 _XBR2	=	0x00e3
                           0000E4   538 G$IT01CF$0_0$0 == 0x00e4
                           0000E4   539 _IT01CF	=	0x00e4
                           0000E4   540 G$INT01CF$0_0$0 == 0x00e4
                           0000E4   541 _INT01CF	=	0x00e4
                           0000E5   542 G$SMOD1$0_0$0 == 0x00e5
                           0000E5   543 _SMOD1	=	0x00e5
                           0000E6   544 G$EIE1$0_0$0 == 0x00e6
                           0000E6   545 _EIE1	=	0x00e6
                           0000E7   546 G$EIE2$0_0$0 == 0x00e7
                           0000E7   547 _EIE2	=	0x00e7
                           0000E8   548 G$ADC0CN$0_0$0 == 0x00e8
                           0000E8   549 _ADC0CN	=	0x00e8
                           0000E9   550 G$PCA0CPL1$0_0$0 == 0x00e9
                           0000E9   551 _PCA0CPL1	=	0x00e9
                           0000EA   552 G$PCA0CPH1$0_0$0 == 0x00ea
                           0000EA   553 _PCA0CPH1	=	0x00ea
                           0000EB   554 G$PCA0CPL2$0_0$0 == 0x00eb
                           0000EB   555 _PCA0CPL2	=	0x00eb
                           0000EC   556 G$PCA0CPH2$0_0$0 == 0x00ec
                           0000EC   557 _PCA0CPH2	=	0x00ec
                           0000ED   558 G$PCA0CPL3$0_0$0 == 0x00ed
                           0000ED   559 _PCA0CPL3	=	0x00ed
                           0000EE   560 G$PCA0CPH3$0_0$0 == 0x00ee
                           0000EE   561 _PCA0CPH3	=	0x00ee
                           0000EF   562 G$RSTSRC$0_0$0 == 0x00ef
                           0000EF   563 _RSTSRC	=	0x00ef
                           0000F0   564 G$B$0_0$0 == 0x00f0
                           0000F0   565 _B	=	0x00f0
                           0000F1   566 G$P0MODE$0_0$0 == 0x00f1
                           0000F1   567 _P0MODE	=	0x00f1
                           0000F1   568 G$P0MDIN$0_0$0 == 0x00f1
                           0000F1   569 _P0MDIN	=	0x00f1
                           0000F2   570 G$P1MODE$0_0$0 == 0x00f2
                           0000F2   571 _P1MODE	=	0x00f2
                           0000F2   572 G$P1MDIN$0_0$0 == 0x00f2
                           0000F2   573 _P1MDIN	=	0x00f2
                           0000F3   574 G$P2MODE$0_0$0 == 0x00f3
                           0000F3   575 _P2MODE	=	0x00f3
                           0000F3   576 G$P2MDIN$0_0$0 == 0x00f3
                           0000F3   577 _P2MDIN	=	0x00f3
                           0000F4   578 G$P3MODE$0_0$0 == 0x00f4
                           0000F4   579 _P3MODE	=	0x00f4
                           0000F4   580 G$P3MDIN$0_0$0 == 0x00f4
                           0000F4   581 _P3MDIN	=	0x00f4
                           0000F5   582 G$P4MDIN$0_0$0 == 0x00f5
                           0000F5   583 _P4MDIN	=	0x00f5
                           0000F6   584 G$EIP1$0_0$0 == 0x00f6
                           0000F6   585 _EIP1	=	0x00f6
                           0000F7   586 G$EIP2$0_0$0 == 0x00f7
                           0000F7   587 _EIP2	=	0x00f7
                           0000F8   588 G$SPI0CN$0_0$0 == 0x00f8
                           0000F8   589 _SPI0CN	=	0x00f8
                           0000F9   590 G$PCA0L$0_0$0 == 0x00f9
                           0000F9   591 _PCA0L	=	0x00f9
                           0000FA   592 G$PCA0H$0_0$0 == 0x00fa
                           0000FA   593 _PCA0H	=	0x00fa
                           0000FB   594 G$PCA0CPL0$0_0$0 == 0x00fb
                           0000FB   595 _PCA0CPL0	=	0x00fb
                           0000FC   596 G$PCA0CPH0$0_0$0 == 0x00fc
                           0000FC   597 _PCA0CPH0	=	0x00fc
                           0000FD   598 G$PCA0CPL4$0_0$0 == 0x00fd
                           0000FD   599 _PCA0CPL4	=	0x00fd
                           0000FE   600 G$PCA0CPH4$0_0$0 == 0x00fe
                           0000FE   601 _PCA0CPH4	=	0x00fe
                           0000FF   602 G$VDM0CN$0_0$0 == 0x00ff
                           0000FF   603 _VDM0CN	=	0x00ff
                           008C8A   604 G$TMR0$0_0$0 == 0x8c8a
                           008C8A   605 _TMR0	=	0x8c8a
                           008D8B   606 G$TMR1$0_0$0 == 0x8d8b
                           008D8B   607 _TMR1	=	0x8d8b
                           00CDCC   608 G$TMR2$0_0$0 == 0xcdcc
                           00CDCC   609 _TMR2	=	0xcdcc
                           00CBCA   610 G$RCAP2$0_0$0 == 0xcbca
                           00CBCA   611 _RCAP2	=	0xcbca
                           00CBCA   612 G$TMR2RL$0_0$0 == 0xcbca
                           00CBCA   613 _TMR2RL	=	0xcbca
                           009594   614 G$TMR3$0_0$0 == 0x9594
                           009594   615 _TMR3	=	0x9594
                           009392   616 G$TMR3RL$0_0$0 == 0x9392
                           009392   617 _TMR3RL	=	0x9392
                           00B5B4   618 G$SBRL1$0_0$0 == 0xb5b4
                           00B5B4   619 _SBRL1	=	0xb5b4
                           00BEBD   620 G$ADC0$0_0$0 == 0xbebd
                           00BEBD   621 _ADC0	=	0xbebd
                           00C4C3   622 G$ADC0GT$0_0$0 == 0xc4c3
                           00C4C3   623 _ADC0GT	=	0xc4c3
                           00C6C5   624 G$ADC0LT$0_0$0 == 0xc6c5
                           00C6C5   625 _ADC0LT	=	0xc6c5
                           00FAF9   626 G$PCA0$0_0$0 == 0xfaf9
                           00FAF9   627 _PCA0	=	0xfaf9
                           00FCFB   628 G$PCA0CP0$0_0$0 == 0xfcfb
                           00FCFB   629 _PCA0CP0	=	0xfcfb
                           00EAE9   630 G$PCA0CP1$0_0$0 == 0xeae9
                           00EAE9   631 _PCA0CP1	=	0xeae9
                           00ECEB   632 G$PCA0CP2$0_0$0 == 0xeceb
                           00ECEB   633 _PCA0CP2	=	0xeceb
                           00EEED   634 G$PCA0CP3$0_0$0 == 0xeeed
                           00EEED   635 _PCA0CP3	=	0xeeed
                           00FEFD   636 G$PCA0CP4$0_0$0 == 0xfefd
                           00FEFD   637 _PCA0CP4	=	0xfefd
                                    638 ;--------------------------------------------------------
                                    639 ; special function bits
                                    640 ;--------------------------------------------------------
                                    641 	.area RSEG    (ABS,DATA)
      000000                        642 	.org 0x0000
                           000080   643 G$P0_0$0_0$0 == 0x0080
                           000080   644 _P0_0	=	0x0080
                           000081   645 G$P0_1$0_0$0 == 0x0081
                           000081   646 _P0_1	=	0x0081
                           000082   647 G$P0_2$0_0$0 == 0x0082
                           000082   648 _P0_2	=	0x0082
                           000083   649 G$P0_3$0_0$0 == 0x0083
                           000083   650 _P0_3	=	0x0083
                           000084   651 G$P0_4$0_0$0 == 0x0084
                           000084   652 _P0_4	=	0x0084
                           000085   653 G$P0_5$0_0$0 == 0x0085
                           000085   654 _P0_5	=	0x0085
                           000086   655 G$P0_6$0_0$0 == 0x0086
                           000086   656 _P0_6	=	0x0086
                           000087   657 G$P0_7$0_0$0 == 0x0087
                           000087   658 _P0_7	=	0x0087
                           000088   659 G$IT0$0_0$0 == 0x0088
                           000088   660 _IT0	=	0x0088
                           000089   661 G$IE0$0_0$0 == 0x0089
                           000089   662 _IE0	=	0x0089
                           00008A   663 G$IT1$0_0$0 == 0x008a
                           00008A   664 _IT1	=	0x008a
                           00008B   665 G$IE1$0_0$0 == 0x008b
                           00008B   666 _IE1	=	0x008b
                           00008C   667 G$TR0$0_0$0 == 0x008c
                           00008C   668 _TR0	=	0x008c
                           00008D   669 G$TF0$0_0$0 == 0x008d
                           00008D   670 _TF0	=	0x008d
                           00008E   671 G$TR1$0_0$0 == 0x008e
                           00008E   672 _TR1	=	0x008e
                           00008F   673 G$TF1$0_0$0 == 0x008f
                           00008F   674 _TF1	=	0x008f
                           000090   675 G$P1_0$0_0$0 == 0x0090
                           000090   676 _P1_0	=	0x0090
                           000091   677 G$P1_1$0_0$0 == 0x0091
                           000091   678 _P1_1	=	0x0091
                           000092   679 G$P1_2$0_0$0 == 0x0092
                           000092   680 _P1_2	=	0x0092
                           000093   681 G$P1_3$0_0$0 == 0x0093
                           000093   682 _P1_3	=	0x0093
                           000094   683 G$P1_4$0_0$0 == 0x0094
                           000094   684 _P1_4	=	0x0094
                           000095   685 G$P1_5$0_0$0 == 0x0095
                           000095   686 _P1_5	=	0x0095
                           000096   687 G$P1_6$0_0$0 == 0x0096
                           000096   688 _P1_6	=	0x0096
                           000097   689 G$P1_7$0_0$0 == 0x0097
                           000097   690 _P1_7	=	0x0097
                           000098   691 G$RI$0_0$0 == 0x0098
                           000098   692 _RI	=	0x0098
                           000098   693 G$RI0$0_0$0 == 0x0098
                           000098   694 _RI0	=	0x0098
                           000099   695 G$TI$0_0$0 == 0x0099
                           000099   696 _TI	=	0x0099
                           000099   697 G$TI0$0_0$0 == 0x0099
                           000099   698 _TI0	=	0x0099
                           00009A   699 G$RB8$0_0$0 == 0x009a
                           00009A   700 _RB8	=	0x009a
                           00009A   701 G$RB80$0_0$0 == 0x009a
                           00009A   702 _RB80	=	0x009a
                           00009B   703 G$TB8$0_0$0 == 0x009b
                           00009B   704 _TB8	=	0x009b
                           00009B   705 G$TB80$0_0$0 == 0x009b
                           00009B   706 _TB80	=	0x009b
                           00009C   707 G$REN$0_0$0 == 0x009c
                           00009C   708 _REN	=	0x009c
                           00009C   709 G$REN0$0_0$0 == 0x009c
                           00009C   710 _REN0	=	0x009c
                           00009D   711 G$SM2$0_0$0 == 0x009d
                           00009D   712 _SM2	=	0x009d
                           00009D   713 G$MCE0$0_0$0 == 0x009d
                           00009D   714 _MCE0	=	0x009d
                           00009F   715 G$SM0$0_0$0 == 0x009f
                           00009F   716 _SM0	=	0x009f
                           00009F   717 G$S0MODE$0_0$0 == 0x009f
                           00009F   718 _S0MODE	=	0x009f
                           0000A0   719 G$P2_0$0_0$0 == 0x00a0
                           0000A0   720 _P2_0	=	0x00a0
                           0000A1   721 G$P2_1$0_0$0 == 0x00a1
                           0000A1   722 _P2_1	=	0x00a1
                           0000A2   723 G$P2_2$0_0$0 == 0x00a2
                           0000A2   724 _P2_2	=	0x00a2
                           0000A3   725 G$P2_3$0_0$0 == 0x00a3
                           0000A3   726 _P2_3	=	0x00a3
                           0000A4   727 G$P2_4$0_0$0 == 0x00a4
                           0000A4   728 _P2_4	=	0x00a4
                           0000A5   729 G$P2_5$0_0$0 == 0x00a5
                           0000A5   730 _P2_5	=	0x00a5
                           0000A6   731 G$P2_6$0_0$0 == 0x00a6
                           0000A6   732 _P2_6	=	0x00a6
                           0000A7   733 G$P2_7$0_0$0 == 0x00a7
                           0000A7   734 _P2_7	=	0x00a7
                           0000A8   735 G$EX0$0_0$0 == 0x00a8
                           0000A8   736 _EX0	=	0x00a8
                           0000A9   737 G$ET0$0_0$0 == 0x00a9
                           0000A9   738 _ET0	=	0x00a9
                           0000AA   739 G$EX1$0_0$0 == 0x00aa
                           0000AA   740 _EX1	=	0x00aa
                           0000AB   741 G$ET1$0_0$0 == 0x00ab
                           0000AB   742 _ET1	=	0x00ab
                           0000AC   743 G$ES$0_0$0 == 0x00ac
                           0000AC   744 _ES	=	0x00ac
                           0000AC   745 G$ES0$0_0$0 == 0x00ac
                           0000AC   746 _ES0	=	0x00ac
                           0000AD   747 G$ET2$0_0$0 == 0x00ad
                           0000AD   748 _ET2	=	0x00ad
                           0000AE   749 G$ESPI0$0_0$0 == 0x00ae
                           0000AE   750 _ESPI0	=	0x00ae
                           0000AF   751 G$EA$0_0$0 == 0x00af
                           0000AF   752 _EA	=	0x00af
                           0000B0   753 G$P3_0$0_0$0 == 0x00b0
                           0000B0   754 _P3_0	=	0x00b0
                           0000B1   755 G$P3_1$0_0$0 == 0x00b1
                           0000B1   756 _P3_1	=	0x00b1
                           0000B2   757 G$P3_2$0_0$0 == 0x00b2
                           0000B2   758 _P3_2	=	0x00b2
                           0000B3   759 G$P3_3$0_0$0 == 0x00b3
                           0000B3   760 _P3_3	=	0x00b3
                           0000B4   761 G$P3_4$0_0$0 == 0x00b4
                           0000B4   762 _P3_4	=	0x00b4
                           0000B5   763 G$P3_5$0_0$0 == 0x00b5
                           0000B5   764 _P3_5	=	0x00b5
                           0000B6   765 G$P3_6$0_0$0 == 0x00b6
                           0000B6   766 _P3_6	=	0x00b6
                           0000B7   767 G$P3_7$0_0$0 == 0x00b7
                           0000B7   768 _P3_7	=	0x00b7
                           0000B8   769 G$PX0$0_0$0 == 0x00b8
                           0000B8   770 _PX0	=	0x00b8
                           0000B9   771 G$PT0$0_0$0 == 0x00b9
                           0000B9   772 _PT0	=	0x00b9
                           0000BA   773 G$PX1$0_0$0 == 0x00ba
                           0000BA   774 _PX1	=	0x00ba
                           0000BB   775 G$PT1$0_0$0 == 0x00bb
                           0000BB   776 _PT1	=	0x00bb
                           0000BC   777 G$PS$0_0$0 == 0x00bc
                           0000BC   778 _PS	=	0x00bc
                           0000BC   779 G$PS0$0_0$0 == 0x00bc
                           0000BC   780 _PS0	=	0x00bc
                           0000BD   781 G$PT2$0_0$0 == 0x00bd
                           0000BD   782 _PT2	=	0x00bd
                           0000BE   783 G$PSPI0$0_0$0 == 0x00be
                           0000BE   784 _PSPI0	=	0x00be
                           0000C0   785 G$SI$0_0$0 == 0x00c0
                           0000C0   786 _SI	=	0x00c0
                           0000C1   787 G$ACK$0_0$0 == 0x00c1
                           0000C1   788 _ACK	=	0x00c1
                           0000C2   789 G$ARBLOST$0_0$0 == 0x00c2
                           0000C2   790 _ARBLOST	=	0x00c2
                           0000C3   791 G$ACKRQ$0_0$0 == 0x00c3
                           0000C3   792 _ACKRQ	=	0x00c3
                           0000C4   793 G$STO$0_0$0 == 0x00c4
                           0000C4   794 _STO	=	0x00c4
                           0000C5   795 G$STA$0_0$0 == 0x00c5
                           0000C5   796 _STA	=	0x00c5
                           0000C6   797 G$TXMODE$0_0$0 == 0x00c6
                           0000C6   798 _TXMODE	=	0x00c6
                           0000C7   799 G$MASTER$0_0$0 == 0x00c7
                           0000C7   800 _MASTER	=	0x00c7
                           0000C8   801 G$T2XCLK$0_0$0 == 0x00c8
                           0000C8   802 _T2XCLK	=	0x00c8
                           0000C9   803 G$T2CSS$0_0$0 == 0x00c9
                           0000C9   804 _T2CSS	=	0x00c9
                           0000CA   805 G$TR2$0_0$0 == 0x00ca
                           0000CA   806 _TR2	=	0x00ca
                           0000CB   807 G$T2SPLIT$0_0$0 == 0x00cb
                           0000CB   808 _T2SPLIT	=	0x00cb
                           0000CC   809 G$T2CE$0_0$0 == 0x00cc
                           0000CC   810 _T2CE	=	0x00cc
                           0000CD   811 G$TF2LEN$0_0$0 == 0x00cd
                           0000CD   812 _TF2LEN	=	0x00cd
                           0000CE   813 G$TF2L$0_0$0 == 0x00ce
                           0000CE   814 _TF2L	=	0x00ce
                           0000CF   815 G$TF2$0_0$0 == 0x00cf
                           0000CF   816 _TF2	=	0x00cf
                           0000CF   817 G$TF2H$0_0$0 == 0x00cf
                           0000CF   818 _TF2H	=	0x00cf
                           0000D0   819 G$PARITY$0_0$0 == 0x00d0
                           0000D0   820 _PARITY	=	0x00d0
                           0000D1   821 G$F1$0_0$0 == 0x00d1
                           0000D1   822 _F1	=	0x00d1
                           0000D2   823 G$OV$0_0$0 == 0x00d2
                           0000D2   824 _OV	=	0x00d2
                           0000D3   825 G$RS0$0_0$0 == 0x00d3
                           0000D3   826 _RS0	=	0x00d3
                           0000D4   827 G$RS1$0_0$0 == 0x00d4
                           0000D4   828 _RS1	=	0x00d4
                           0000D5   829 G$F0$0_0$0 == 0x00d5
                           0000D5   830 _F0	=	0x00d5
                           0000D6   831 G$AC$0_0$0 == 0x00d6
                           0000D6   832 _AC	=	0x00d6
                           0000D7   833 G$CY$0_0$0 == 0x00d7
                           0000D7   834 _CY	=	0x00d7
                           0000D8   835 G$CCF0$0_0$0 == 0x00d8
                           0000D8   836 _CCF0	=	0x00d8
                           0000D9   837 G$CCF1$0_0$0 == 0x00d9
                           0000D9   838 _CCF1	=	0x00d9
                           0000DA   839 G$CCF2$0_0$0 == 0x00da
                           0000DA   840 _CCF2	=	0x00da
                           0000DB   841 G$CCF3$0_0$0 == 0x00db
                           0000DB   842 _CCF3	=	0x00db
                           0000DC   843 G$CCF4$0_0$0 == 0x00dc
                           0000DC   844 _CCF4	=	0x00dc
                           0000DE   845 G$CR$0_0$0 == 0x00de
                           0000DE   846 _CR	=	0x00de
                           0000DF   847 G$CF$0_0$0 == 0x00df
                           0000DF   848 _CF	=	0x00df
                           0000E8   849 G$AD0CM0$0_0$0 == 0x00e8
                           0000E8   850 _AD0CM0	=	0x00e8
                           0000E9   851 G$AD0CM1$0_0$0 == 0x00e9
                           0000E9   852 _AD0CM1	=	0x00e9
                           0000EA   853 G$AD0CM2$0_0$0 == 0x00ea
                           0000EA   854 _AD0CM2	=	0x00ea
                           0000EB   855 G$AD0WINT$0_0$0 == 0x00eb
                           0000EB   856 _AD0WINT	=	0x00eb
                           0000EC   857 G$AD0BUSY$0_0$0 == 0x00ec
                           0000EC   858 _AD0BUSY	=	0x00ec
                           0000ED   859 G$AD0INT$0_0$0 == 0x00ed
                           0000ED   860 _AD0INT	=	0x00ed
                           0000EE   861 G$AD0TM$0_0$0 == 0x00ee
                           0000EE   862 _AD0TM	=	0x00ee
                           0000EF   863 G$AD0EN$0_0$0 == 0x00ef
                           0000EF   864 _AD0EN	=	0x00ef
                           0000F8   865 G$SPIEN$0_0$0 == 0x00f8
                           0000F8   866 _SPIEN	=	0x00f8
                           0000F9   867 G$TXBMT$0_0$0 == 0x00f9
                           0000F9   868 _TXBMT	=	0x00f9
                           0000FA   869 G$NSSMD0$0_0$0 == 0x00fa
                           0000FA   870 _NSSMD0	=	0x00fa
                           0000FB   871 G$NSSMD1$0_0$0 == 0x00fb
                           0000FB   872 _NSSMD1	=	0x00fb
                           0000FC   873 G$RXOVRN$0_0$0 == 0x00fc
                           0000FC   874 _RXOVRN	=	0x00fc
                           0000FD   875 G$MODF$0_0$0 == 0x00fd
                           0000FD   876 _MODF	=	0x00fd
                           0000FE   877 G$WCOL$0_0$0 == 0x00fe
                           0000FE   878 _WCOL	=	0x00fe
                           0000FF   879 G$SPIF$0_0$0 == 0x00ff
                           0000FF   880 _SPIF	=	0x00ff
                                    881 ;--------------------------------------------------------
                                    882 ; overlayable register banks
                                    883 ;--------------------------------------------------------
                                    884 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        885 	.ds 8
                                    886 ;--------------------------------------------------------
                                    887 ; internal ram data
                                    888 ;--------------------------------------------------------
                                    889 	.area DSEG    (DATA)
                                    890 ;--------------------------------------------------------
                                    891 ; overlayable items in internal ram
                                    892 ;--------------------------------------------------------
                                    893 ;--------------------------------------------------------
                                    894 ; indirectly addressable internal ram data
                                    895 ;--------------------------------------------------------
                                    896 	.area ISEG    (DATA)
                                    897 ;--------------------------------------------------------
                                    898 ; absolute internal ram data
                                    899 ;--------------------------------------------------------
                                    900 	.area IABS    (ABS,DATA)
                                    901 	.area IABS    (ABS,DATA)
                                    902 ;--------------------------------------------------------
                                    903 ; bit data
                                    904 ;--------------------------------------------------------
                                    905 	.area BSEG    (BIT)
                                    906 ;--------------------------------------------------------
                                    907 ; paged external ram data
                                    908 ;--------------------------------------------------------
                                    909 	.area PSEG    (PAG,XDATA)
                                    910 ;--------------------------------------------------------
                                    911 ; external ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XSEG    (XDATA)
                           000000   914 Ftasks$pxReadyTasksLists$0_0$0==.
      000016                        915 _pxReadyTasksLists:
      000016                        916 	.ds 48
                           000030   917 Ftasks$xDelayedTaskList1$0_0$0==.
      000046                        918 _xDelayedTaskList1:
      000046                        919 	.ds 12
                           00003C   920 Ftasks$xDelayedTaskList2$0_0$0==.
      000052                        921 _xDelayedTaskList2:
      000052                        922 	.ds 12
                           000048   923 Ftasks$pxDelayedTaskList$0_0$0==.
      00005E                        924 _pxDelayedTaskList:
      00005E                        925 	.ds 3
                           00004B   926 Ftasks$pxOverflowDelayedTaskList$0_0$0==.
      000061                        927 _pxOverflowDelayedTaskList:
      000061                        928 	.ds 3
                           00004E   929 Ftasks$xPendingReadyList$0_0$0==.
      000064                        930 _xPendingReadyList:
      000064                        931 	.ds 12
                           00005A   932 Ftasks$xTasksWaitingTermination$0_0$0==.
      000070                        933 _xTasksWaitingTermination:
      000070                        934 	.ds 12
                                    935 ;--------------------------------------------------------
                                    936 ; absolute external ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area XABS    (ABS,XDATA)
                                    939 ;--------------------------------------------------------
                                    940 ; external initialized ram data
                                    941 ;--------------------------------------------------------
                                    942 	.area XISEG   (XDATA)
                           000000   943 G$pxCurrentTCB$0_0$0==.
      000C7F                        944 _pxCurrentTCB::
      000C7F                        945 	.ds 3
                           000003   946 Ftasks$uxDeletedTasksWaitingCleanUp$0_0$0==.
      000C82                        947 _uxDeletedTasksWaitingCleanUp:
      000C82                        948 	.ds 1
                           000004   949 Ftasks$uxCurrentNumberOfTasks$0_0$0==.
      000C83                        950 _uxCurrentNumberOfTasks:
      000C83                        951 	.ds 1
                           000005   952 Ftasks$xTickCount$0_0$0==.
      000C84                        953 _xTickCount:
      000C84                        954 	.ds 2
                           000007   955 Ftasks$uxTopReadyPriority$0_0$0==.
      000C86                        956 _uxTopReadyPriority:
      000C86                        957 	.ds 1
                           000008   958 Ftasks$xSchedulerRunning$0_0$0==.
      000C87                        959 _xSchedulerRunning:
      000C87                        960 	.ds 1
                           000009   961 Ftasks$xPendedTicks$0_0$0==.
      000C88                        962 _xPendedTicks:
      000C88                        963 	.ds 2
                           00000B   964 Ftasks$xYieldPending$0_0$0==.
      000C8A                        965 _xYieldPending:
      000C8A                        966 	.ds 1
                           00000C   967 Ftasks$xNumOfOverflows$0_0$0==.
      000C8B                        968 _xNumOfOverflows:
      000C8B                        969 	.ds 1
                           00000D   970 Ftasks$uxTaskNumber$0_0$0==.
      000C8C                        971 _uxTaskNumber:
      000C8C                        972 	.ds 1
                           00000E   973 Ftasks$xNextTaskUnblockTime$0_0$0==.
      000C8D                        974 _xNextTaskUnblockTime:
      000C8D                        975 	.ds 2
                           000010   976 Ftasks$xIdleTaskHandle$0_0$0==.
      000C8F                        977 _xIdleTaskHandle:
      000C8F                        978 	.ds 3
                           000013   979 Ftasks$uxSchedulerSuspended$0_0$0==.
      000C92                        980 _uxSchedulerSuspended:
      000C92                        981 	.ds 1
                                    982 	.area HOME    (CODE)
                                    983 	.area GSINIT0 (CODE)
                                    984 	.area GSINIT1 (CODE)
                                    985 	.area GSINIT2 (CODE)
                                    986 	.area GSINIT3 (CODE)
                                    987 	.area GSINIT4 (CODE)
                                    988 	.area GSINIT5 (CODE)
                                    989 	.area GSINIT  (CODE)
                                    990 	.area GSFINAL (CODE)
                                    991 	.area CSEG    (CODE)
                                    992 ;--------------------------------------------------------
                                    993 ; global & static initialisations
                                    994 ;--------------------------------------------------------
                                    995 	.area HOME    (CODE)
                                    996 	.area GSINIT  (CODE)
                                    997 	.area GSFINAL (CODE)
                                    998 	.area GSINIT  (CODE)
                                    999 ;--------------------------------------------------------
                                   1000 ; Home
                                   1001 ;--------------------------------------------------------
                                   1002 	.area HOME    (CODE)
                                   1003 	.area HOME    (CODE)
                                   1004 ;--------------------------------------------------------
                                   1005 ; code
                                   1006 ;--------------------------------------------------------
                                   1007 	.area CSEG    (CODE)
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'xTaskCreate'
                                   1010 ;------------------------------------------------------------
                                   1011 ;pcName                    Allocated to stack - _bp -5
                                   1012 ;usStackDepth              Allocated to stack - _bp -7
                                   1013 ;pvParameters              Allocated to stack - _bp -10
                                   1014 ;uxPriority                Allocated to stack - _bp -11
                                   1015 ;pxCreatedTask             Allocated to stack - _bp -14
                                   1016 ;pxTaskCode                Allocated to registers r6 r7 
                                   1017 ;pxNewTCB                  Allocated to stack - _bp +1
                                   1018 ;xReturn                   Allocated to registers r7 
                                   1019 ;------------------------------------------------------------
                           000000  1020 	G$xTaskCreate$0$0 ==.
                           000000  1021 	C$tasks.c$728$0_0$161 ==.
                                   1022 ;	tasks.c:728: BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                                   1023 ;	-----------------------------------------
                                   1024 ;	 function xTaskCreate
                                   1025 ;	-----------------------------------------
      002544                       1026 _xTaskCreate:
                           000007  1027 	ar7 = 0x07
                           000006  1028 	ar6 = 0x06
                           000005  1029 	ar5 = 0x05
                           000004  1030 	ar4 = 0x04
                           000003  1031 	ar3 = 0x03
                           000002  1032 	ar2 = 0x02
                           000001  1033 	ar1 = 0x01
                           000000  1034 	ar0 = 0x00
      002544 C0 0D            [24] 1035 	push	_bp
      002546 85 81 0D         [24] 1036 	mov	_bp,sp
      002549 05 81            [12] 1037 	inc	sp
      00254B 05 81            [12] 1038 	inc	sp
      00254D 05 81            [12] 1039 	inc	sp
      00254F AE 82            [24] 1040 	mov	r6,dpl
      002551 AF 83            [24] 1041 	mov	r7,dph
                           00000F  1042 	C$tasks.c$746$2_0$162 ==.
                                   1043 ;	tasks.c:746: pxNewTCB = ( TCB_t * ) pvPortMalloc( sizeof( TCB_t ) );
      002553 75 82 33         [24] 1044 	mov	dpl,#0x33
      002556 75 83 00         [24] 1045 	mov	dph,#0x00
      002559 C0 07            [24] 1046 	push	ar7
      00255B C0 06            [24] 1047 	push	ar6
      00255D 12 73 E7         [24] 1048 	lcall	_pvPortMalloc
      002560 AB 82            [24] 1049 	mov	r3,dpl
      002562 AC 83            [24] 1050 	mov	r4,dph
      002564 AD F0            [24] 1051 	mov	r5,b
      002566 D0 06            [24] 1052 	pop	ar6
      002568 D0 07            [24] 1053 	pop	ar7
      00256A A8 0D            [24] 1054 	mov	r0,_bp
      00256C 08               [12] 1055 	inc	r0
      00256D A6 03            [24] 1056 	mov	@r0,ar3
      00256F 08               [12] 1057 	inc	r0
      002570 A6 04            [24] 1058 	mov	@r0,ar4
      002572 08               [12] 1059 	inc	r0
      002573 A6 05            [24] 1060 	mov	@r0,ar5
                           000031  1061 	C$tasks.c$748$2_0$162 ==.
                                   1062 ;	tasks.c:748: if( pxNewTCB != NULL )
      002575 A8 0D            [24] 1063 	mov	r0,_bp
      002577 08               [12] 1064 	inc	r0
      002578 E6               [12] 1065 	mov	a,@r0
      002579 08               [12] 1066 	inc	r0
      00257A 46               [12] 1067 	orl	a,@r0
      00257B 70 03            [24] 1068 	jnz	00122$
      00257D 02 25 FC         [24] 1069 	ljmp	00104$
      002580                       1070 00122$:
                           00003C  1071 	C$tasks.c$753$1_0$161 ==.
                                   1072 ;	tasks.c:753: pxNewTCB->pxStack = ( StackType_t * ) pvPortMallocStack( ( ( ( size_t ) usStackDepth ) * sizeof( StackType_t ) ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      002580 C0 06            [24] 1073 	push	ar6
      002582 C0 07            [24] 1074 	push	ar7
      002584 A8 0D            [24] 1075 	mov	r0,_bp
      002586 08               [12] 1076 	inc	r0
      002587 74 20            [12] 1077 	mov	a,#0x20
      002589 26               [12] 1078 	add	a,@r0
      00258A FA               [12] 1079 	mov	r2,a
      00258B 74 00            [12] 1080 	mov	a,#0x00
      00258D 08               [12] 1081 	inc	r0
      00258E 36               [12] 1082 	addc	a,@r0
      00258F FE               [12] 1083 	mov	r6,a
      002590 08               [12] 1084 	inc	r0
      002591 86 07            [24] 1085 	mov	ar7,@r0
      002593 E5 0D            [12] 1086 	mov	a,_bp
      002595 24 F9            [12] 1087 	add	a,#0xf9
      002597 F8               [12] 1088 	mov	r0,a
      002598 86 04            [24] 1089 	mov	ar4,@r0
      00259A 08               [12] 1090 	inc	r0
      00259B 86 05            [24] 1091 	mov	ar5,@r0
      00259D 8C 82            [24] 1092 	mov	dpl,r4
      00259F 8D 83            [24] 1093 	mov	dph,r5
      0025A1 C0 07            [24] 1094 	push	ar7
      0025A3 C0 06            [24] 1095 	push	ar6
      0025A5 C0 02            [24] 1096 	push	ar2
      0025A7 12 73 E7         [24] 1097 	lcall	_pvPortMalloc
      0025AA AB 82            [24] 1098 	mov	r3,dpl
      0025AC AC 83            [24] 1099 	mov	r4,dph
      0025AE AD F0            [24] 1100 	mov	r5,b
      0025B0 D0 02            [24] 1101 	pop	ar2
      0025B2 D0 06            [24] 1102 	pop	ar6
      0025B4 D0 07            [24] 1103 	pop	ar7
      0025B6 8A 82            [24] 1104 	mov	dpl,r2
      0025B8 8E 83            [24] 1105 	mov	dph,r6
      0025BA 8F F0            [24] 1106 	mov	b,r7
      0025BC EB               [12] 1107 	mov	a,r3
      0025BD 12 79 22         [24] 1108 	lcall	__gptrput
      0025C0 A3               [24] 1109 	inc	dptr
      0025C1 EC               [12] 1110 	mov	a,r4
      0025C2 12 79 22         [24] 1111 	lcall	__gptrput
      0025C5 A3               [24] 1112 	inc	dptr
      0025C6 ED               [12] 1113 	mov	a,r5
      0025C7 12 79 22         [24] 1114 	lcall	__gptrput
                           000086  1115 	C$tasks.c$755$1_0$161 ==.
                                   1116 ;	tasks.c:755: if( pxNewTCB->pxStack == NULL )
      0025CA D0 07            [24] 1117 	pop	ar7
      0025CC D0 06            [24] 1118 	pop	ar6
      0025CE EB               [12] 1119 	mov	a,r3
      0025CF 4C               [12] 1120 	orl	a,r4
      0025D0 60 03            [24] 1121 	jz	00123$
      0025D2 02 25 FC         [24] 1122 	ljmp	00104$
      0025D5                       1123 00123$:
                           000091  1124 	C$tasks.c$758$4_0$164 ==.
                                   1125 ;	tasks.c:758: vPortFree( pxNewTCB );
      0025D5 A8 0D            [24] 1126 	mov	r0,_bp
      0025D7 08               [12] 1127 	inc	r0
      0025D8 86 03            [24] 1128 	mov	ar3,@r0
      0025DA 08               [12] 1129 	inc	r0
      0025DB 86 04            [24] 1130 	mov	ar4,@r0
      0025DD 08               [12] 1131 	inc	r0
      0025DE 86 05            [24] 1132 	mov	ar5,@r0
      0025E0 8B 82            [24] 1133 	mov	dpl,r3
      0025E2 8C 83            [24] 1134 	mov	dph,r4
      0025E4 8D F0            [24] 1135 	mov	b,r5
      0025E6 C0 07            [24] 1136 	push	ar7
      0025E8 C0 06            [24] 1137 	push	ar6
      0025EA 12 74 A7         [24] 1138 	lcall	_vPortFree
      0025ED D0 06            [24] 1139 	pop	ar6
      0025EF D0 07            [24] 1140 	pop	ar7
                           0000AD  1141 	C$tasks.c$759$4_0$164 ==.
                                   1142 ;	tasks.c:759: pxNewTCB = NULL;
      0025F1 A8 0D            [24] 1143 	mov	r0,_bp
      0025F3 08               [12] 1144 	inc	r0
      0025F4 74 00            [12] 1145 	mov	a,#0x00
      0025F6 F6               [12] 1146 	mov	@r0,a
      0025F7 08               [12] 1147 	inc	r0
      0025F8 F6               [12] 1148 	mov	@r0,a
      0025F9 08               [12] 1149 	inc	r0
      0025FA 76 00            [12] 1150 	mov	@r0,#0x00
      0025FC                       1151 00104$:
                           0000B8  1152 	C$tasks.c$794$1_0$161 ==.
                                   1153 ;	tasks.c:794: if( pxNewTCB != NULL )
      0025FC A8 0D            [24] 1154 	mov	r0,_bp
      0025FE 08               [12] 1155 	inc	r0
      0025FF E6               [12] 1156 	mov	a,@r0
      002600 08               [12] 1157 	inc	r0
      002601 46               [12] 1158 	orl	a,@r0
      002602 70 03            [24] 1159 	jnz	00124$
      002604 02 26 8B         [24] 1160 	ljmp	00106$
      002607                       1161 00124$:
                           0000C3  1162 	C$tasks.c$804$2_0$165 ==.
                                   1163 ;	tasks.c:804: prvInitialiseNewTask( pxTaskCode, pcName, ( uint32_t ) usStackDepth, pvParameters, uxPriority, pxCreatedTask, pxNewTCB, NULL );
      002607 E5 0D            [12] 1164 	mov	a,_bp
      002609 24 F9            [12] 1165 	add	a,#0xf9
      00260B F8               [12] 1166 	mov	r0,a
      00260C 86 02            [24] 1167 	mov	ar2,@r0
      00260E 08               [12] 1168 	inc	r0
      00260F 86 03            [24] 1169 	mov	ar3,@r0
      002611 7C 00            [12] 1170 	mov	r4,#0x00
      002613 7D 00            [12] 1171 	mov	r5,#0x00
      002615 74 00            [12] 1172 	mov	a,#0x00
      002617 C0 E0            [24] 1173 	push	acc
      002619 C0 E0            [24] 1174 	push	acc
      00261B C0 E0            [24] 1175 	push	acc
      00261D A8 0D            [24] 1176 	mov	r0,_bp
      00261F 08               [12] 1177 	inc	r0
      002620 E6               [12] 1178 	mov	a,@r0
      002621 C0 E0            [24] 1179 	push	acc
      002623 08               [12] 1180 	inc	r0
      002624 E6               [12] 1181 	mov	a,@r0
      002625 C0 E0            [24] 1182 	push	acc
      002627 08               [12] 1183 	inc	r0
      002628 E6               [12] 1184 	mov	a,@r0
      002629 C0 E0            [24] 1185 	push	acc
      00262B E5 0D            [12] 1186 	mov	a,_bp
      00262D 24 F2            [12] 1187 	add	a,#0xf2
      00262F F8               [12] 1188 	mov	r0,a
      002630 E6               [12] 1189 	mov	a,@r0
      002631 C0 E0            [24] 1190 	push	acc
      002633 08               [12] 1191 	inc	r0
      002634 E6               [12] 1192 	mov	a,@r0
      002635 C0 E0            [24] 1193 	push	acc
      002637 08               [12] 1194 	inc	r0
      002638 E6               [12] 1195 	mov	a,@r0
      002639 C0 E0            [24] 1196 	push	acc
      00263B E5 0D            [12] 1197 	mov	a,_bp
      00263D 24 F5            [12] 1198 	add	a,#0xf5
      00263F F8               [12] 1199 	mov	r0,a
      002640 E6               [12] 1200 	mov	a,@r0
      002641 C0 E0            [24] 1201 	push	acc
      002643 E5 0D            [12] 1202 	mov	a,_bp
      002645 24 F6            [12] 1203 	add	a,#0xf6
      002647 F8               [12] 1204 	mov	r0,a
      002648 E6               [12] 1205 	mov	a,@r0
      002649 C0 E0            [24] 1206 	push	acc
      00264B 08               [12] 1207 	inc	r0
      00264C E6               [12] 1208 	mov	a,@r0
      00264D C0 E0            [24] 1209 	push	acc
      00264F 08               [12] 1210 	inc	r0
      002650 E6               [12] 1211 	mov	a,@r0
      002651 C0 E0            [24] 1212 	push	acc
      002653 C0 02            [24] 1213 	push	ar2
      002655 C0 03            [24] 1214 	push	ar3
      002657 C0 04            [24] 1215 	push	ar4
      002659 C0 05            [24] 1216 	push	ar5
      00265B E5 0D            [12] 1217 	mov	a,_bp
      00265D 24 FB            [12] 1218 	add	a,#0xfb
      00265F F8               [12] 1219 	mov	r0,a
      002660 E6               [12] 1220 	mov	a,@r0
      002661 C0 E0            [24] 1221 	push	acc
      002663 08               [12] 1222 	inc	r0
      002664 E6               [12] 1223 	mov	a,@r0
      002665 C0 E0            [24] 1224 	push	acc
      002667 08               [12] 1225 	inc	r0
      002668 E6               [12] 1226 	mov	a,@r0
      002669 C0 E0            [24] 1227 	push	acc
      00266B 8E 82            [24] 1228 	mov	dpl,r6
      00266D 8F 83            [24] 1229 	mov	dph,r7
      00266F 12 26 95         [24] 1230 	lcall	_prvInitialiseNewTask
      002672 E5 81            [12] 1231 	mov	a,sp
      002674 24 EC            [12] 1232 	add	a,#0xec
      002676 F5 81            [12] 1233 	mov	sp,a
                           000134  1234 	C$tasks.c$805$2_0$165 ==.
                                   1235 ;	tasks.c:805: prvAddNewTaskToReadyList( pxNewTCB );
      002678 A8 0D            [24] 1236 	mov	r0,_bp
      00267A 08               [12] 1237 	inc	r0
      00267B 86 82            [24] 1238 	mov	dpl,@r0
      00267D 08               [12] 1239 	inc	r0
      00267E 86 83            [24] 1240 	mov	dph,@r0
      002680 08               [12] 1241 	inc	r0
      002681 86 F0            [24] 1242 	mov	b,@r0
      002683 12 29 EA         [24] 1243 	lcall	_prvAddNewTaskToReadyList
                           000142  1244 	C$tasks.c$806$2_0$165 ==.
                                   1245 ;	tasks.c:806: xReturn = pdPASS;
      002686 7F 01            [12] 1246 	mov	r7,#0x01
      002688 02 26 8D         [24] 1247 	ljmp	00107$
      00268B                       1248 00106$:
                           000147  1249 	C$tasks.c$810$2_0$166 ==.
                                   1250 ;	tasks.c:810: xReturn = errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY;
      00268B 7F FF            [12] 1251 	mov	r7,#0xff
      00268D                       1252 00107$:
                           000149  1253 	C$tasks.c$813$1_0$161 ==.
                                   1254 ;	tasks.c:813: return xReturn;
      00268D 8F 82            [24] 1255 	mov	dpl,r7
      00268F                       1256 00108$:
                           00014B  1257 	C$tasks.c$814$1_0$161 ==.
                                   1258 ;	tasks.c:814: }
      00268F 85 0D 81         [24] 1259 	mov	sp,_bp
      002692 D0 0D            [24] 1260 	pop	_bp
                           000150  1261 	C$tasks.c$814$1_0$161 ==.
                           000150  1262 	XG$xTaskCreate$0$0 ==.
      002694 22               [24] 1263 	ret
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'prvInitialiseNewTask'
                                   1266 ;------------------------------------------------------------
                                   1267 ;pcName                    Allocated to stack - _bp -5
                                   1268 ;ulStackDepth              Allocated to stack - _bp -9
                                   1269 ;pvParameters              Allocated to stack - _bp -12
                                   1270 ;uxPriority                Allocated to stack - _bp -13
                                   1271 ;pxCreatedTask             Allocated to stack - _bp -16
                                   1272 ;pxNewTCB                  Allocated to stack - _bp -19
                                   1273 ;xRegions                  Allocated to stack - _bp -22
                                   1274 ;pxTaskCode                Allocated to stack - _bp +1
                                   1275 ;pxTopOfStack              Allocated to stack - _bp +12
                                   1276 ;x                         Allocated to registers r3 
                                   1277 ;sloc0                     Allocated to stack - _bp +6
                                   1278 ;sloc1                     Allocated to stack - _bp +9
                                   1279 ;sloc2                     Allocated to stack - _bp +3
                                   1280 ;------------------------------------------------------------
                           000151  1281 	Ftasks$prvInitialiseNewTask$0$0 ==.
                           000151  1282 	C$tasks.c$819$1_0$168 ==.
                                   1283 ;	tasks.c:819: static void prvInitialiseNewTask( TaskFunction_t pxTaskCode,
                                   1284 ;	-----------------------------------------
                                   1285 ;	 function prvInitialiseNewTask
                                   1286 ;	-----------------------------------------
      002695                       1287 _prvInitialiseNewTask:
      002695 C0 0D            [24] 1288 	push	_bp
      002697 85 81 0D         [24] 1289 	mov	_bp,sp
      00269A C0 82            [24] 1290 	push	dpl
      00269C C0 83            [24] 1291 	push	dph
      00269E E5 81            [12] 1292 	mov	a,sp
      0026A0 24 0C            [12] 1293 	add	a,#0x0c
      0026A2 F5 81            [12] 1294 	mov	sp,a
                           000160  1295 	C$tasks.c$876$2_0$169 ==.
                                   1296 ;	tasks.c:876: pxTopOfStack = pxNewTCB->pxStack;
      0026A4 E5 0D            [12] 1297 	mov	a,_bp
      0026A6 24 ED            [12] 1298 	add	a,#0xed
      0026A8 F8               [12] 1299 	mov	r0,a
      0026A9 E5 0D            [12] 1300 	mov	a,_bp
      0026AB 24 03            [12] 1301 	add	a,#0x03
      0026AD F9               [12] 1302 	mov	r1,a
      0026AE E6               [12] 1303 	mov	a,@r0
      0026AF F7               [12] 1304 	mov	@r1,a
      0026B0 08               [12] 1305 	inc	r0
      0026B1 E6               [12] 1306 	mov	a,@r0
      0026B2 09               [12] 1307 	inc	r1
      0026B3 F7               [12] 1308 	mov	@r1,a
      0026B4 08               [12] 1309 	inc	r0
      0026B5 E6               [12] 1310 	mov	a,@r0
      0026B6 09               [12] 1311 	inc	r1
      0026B7 F7               [12] 1312 	mov	@r1,a
      0026B8 E5 0D            [12] 1313 	mov	a,_bp
      0026BA 24 03            [12] 1314 	add	a,#0x03
      0026BC F8               [12] 1315 	mov	r0,a
      0026BD 74 20            [12] 1316 	mov	a,#0x20
      0026BF 26               [12] 1317 	add	a,@r0
      0026C0 FA               [12] 1318 	mov	r2,a
      0026C1 74 00            [12] 1319 	mov	a,#0x00
      0026C3 08               [12] 1320 	inc	r0
      0026C4 36               [12] 1321 	addc	a,@r0
      0026C5 FE               [12] 1322 	mov	r6,a
      0026C6 08               [12] 1323 	inc	r0
      0026C7 86 07            [24] 1324 	mov	ar7,@r0
      0026C9 8A 82            [24] 1325 	mov	dpl,r2
      0026CB 8E 83            [24] 1326 	mov	dph,r6
      0026CD 8F F0            [24] 1327 	mov	b,r7
      0026CF E5 0D            [12] 1328 	mov	a,_bp
      0026D1 24 0C            [12] 1329 	add	a,#0x0c
      0026D3 F8               [12] 1330 	mov	r0,a
      0026D4 12 7C 4D         [24] 1331 	lcall	__gptrget
      0026D7 F6               [12] 1332 	mov	@r0,a
      0026D8 A3               [24] 1333 	inc	dptr
      0026D9 12 7C 4D         [24] 1334 	lcall	__gptrget
      0026DC 08               [12] 1335 	inc	r0
      0026DD F6               [12] 1336 	mov	@r0,a
      0026DE A3               [24] 1337 	inc	dptr
      0026DF 12 7C 4D         [24] 1338 	lcall	__gptrget
      0026E2 08               [12] 1339 	inc	r0
      0026E3 F6               [12] 1340 	mov	@r0,a
      0026E4 E5 0D            [12] 1341 	mov	a,_bp
      0026E6 24 0C            [12] 1342 	add	a,#0x0c
      0026E8 F8               [12] 1343 	mov	r0,a
      0026E9 E5 0D            [12] 1344 	mov	a,_bp
      0026EB 24 06            [12] 1345 	add	a,#0x06
      0026ED F9               [12] 1346 	mov	r1,a
      0026EE E6               [12] 1347 	mov	a,@r0
      0026EF F7               [12] 1348 	mov	@r1,a
      0026F0 08               [12] 1349 	inc	r0
      0026F1 E6               [12] 1350 	mov	a,@r0
      0026F2 09               [12] 1351 	inc	r1
      0026F3 F7               [12] 1352 	mov	@r1,a
      0026F4 08               [12] 1353 	inc	r0
      0026F5 E6               [12] 1354 	mov	a,@r0
      0026F6 09               [12] 1355 	inc	r1
      0026F7 F7               [12] 1356 	mov	@r1,a
                           0001B4  1357 	C$tasks.c$883$2_0$169 ==.
                                   1358 ;	tasks.c:883: pxNewTCB->pxEndOfStack = pxNewTCB->pxStack + ( ulStackDepth - ( uint32_t ) 1 );
      0026F8 E5 0D            [12] 1359 	mov	a,_bp
      0026FA 24 03            [12] 1360 	add	a,#0x03
      0026FC F8               [12] 1361 	mov	r0,a
      0026FD E5 0D            [12] 1362 	mov	a,_bp
      0026FF 24 09            [12] 1363 	add	a,#0x09
      002701 F9               [12] 1364 	mov	r1,a
      002702 74 2B            [12] 1365 	mov	a,#0x2b
      002704 26               [12] 1366 	add	a,@r0
      002705 F7               [12] 1367 	mov	@r1,a
      002706 74 00            [12] 1368 	mov	a,#0x00
      002708 08               [12] 1369 	inc	r0
      002709 36               [12] 1370 	addc	a,@r0
      00270A 09               [12] 1371 	inc	r1
      00270B F7               [12] 1372 	mov	@r1,a
      00270C 08               [12] 1373 	inc	r0
      00270D E6               [12] 1374 	mov	a,@r0
      00270E 09               [12] 1375 	inc	r1
      00270F F7               [12] 1376 	mov	@r1,a
      002710 E5 0D            [12] 1377 	mov	a,_bp
      002712 24 F7            [12] 1378 	add	a,#0xf7
      002714 F8               [12] 1379 	mov	r0,a
      002715 E6               [12] 1380 	mov	a,@r0
      002716 24 FF            [12] 1381 	add	a,#0xff
      002718 FA               [12] 1382 	mov	r2,a
      002719 08               [12] 1383 	inc	r0
      00271A E6               [12] 1384 	mov	a,@r0
      00271B 34 FF            [12] 1385 	addc	a,#0xff
      00271D FE               [12] 1386 	mov	r6,a
      00271E 08               [12] 1387 	inc	r0
      00271F E6               [12] 1388 	mov	a,@r0
      002720 34 FF            [12] 1389 	addc	a,#0xff
      002722 FD               [12] 1390 	mov	r5,a
      002723 08               [12] 1391 	inc	r0
      002724 E6               [12] 1392 	mov	a,@r0
      002725 34 FF            [12] 1393 	addc	a,#0xff
      002727 FF               [12] 1394 	mov	r7,a
      002728 E5 0D            [12] 1395 	mov	a,_bp
      00272A 24 0C            [12] 1396 	add	a,#0x0c
      00272C F8               [12] 1397 	mov	r0,a
      00272D EA               [12] 1398 	mov	a,r2
      00272E 26               [12] 1399 	add	a,@r0
      00272F FA               [12] 1400 	mov	r2,a
      002730 EE               [12] 1401 	mov	a,r6
      002731 08               [12] 1402 	inc	r0
      002732 36               [12] 1403 	addc	a,@r0
      002733 FE               [12] 1404 	mov	r6,a
      002734 08               [12] 1405 	inc	r0
      002735 86 05            [24] 1406 	mov	ar5,@r0
      002737 E5 0D            [12] 1407 	mov	a,_bp
      002739 24 09            [12] 1408 	add	a,#0x09
      00273B F8               [12] 1409 	mov	r0,a
      00273C 86 82            [24] 1410 	mov	dpl,@r0
      00273E 08               [12] 1411 	inc	r0
      00273F 86 83            [24] 1412 	mov	dph,@r0
      002741 08               [12] 1413 	inc	r0
      002742 86 F0            [24] 1414 	mov	b,@r0
      002744 EA               [12] 1415 	mov	a,r2
      002745 12 79 22         [24] 1416 	lcall	__gptrput
      002748 A3               [24] 1417 	inc	dptr
      002749 EE               [12] 1418 	mov	a,r6
      00274A 12 79 22         [24] 1419 	lcall	__gptrput
      00274D A3               [24] 1420 	inc	dptr
      00274E ED               [12] 1421 	mov	a,r5
      00274F 12 79 22         [24] 1422 	lcall	__gptrput
                           00020E  1423 	C$tasks.c$888$1_0$168 ==.
                                   1424 ;	tasks.c:888: if( pcName != NULL )
      002752 E5 0D            [12] 1425 	mov	a,_bp
      002754 24 FB            [12] 1426 	add	a,#0xfb
      002756 F8               [12] 1427 	mov	r0,a
      002757 E6               [12] 1428 	mov	a,@r0
      002758 08               [12] 1429 	inc	r0
      002759 46               [12] 1430 	orl	a,@r0
      00275A 70 03            [24] 1431 	jnz	00136$
      00275C 02 27 EF         [24] 1432 	ljmp	00105$
      00275F                       1433 00136$:
                           00021B  1434 	C$tasks.c$890$4_0$172 ==.
                                   1435 ;	tasks.c:890: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
      00275F E5 0D            [12] 1436 	mov	a,_bp
      002761 24 03            [12] 1437 	add	a,#0x03
      002763 F8               [12] 1438 	mov	r0,a
      002764 74 23            [12] 1439 	mov	a,#0x23
      002766 26               [12] 1440 	add	a,@r0
      002767 FD               [12] 1441 	mov	r5,a
      002768 74 00            [12] 1442 	mov	a,#0x00
      00276A 08               [12] 1443 	inc	r0
      00276B 36               [12] 1444 	addc	a,@r0
      00276C FE               [12] 1445 	mov	r6,a
      00276D 08               [12] 1446 	inc	r0
      00276E 86 07            [24] 1447 	mov	ar7,@r0
      002770 7B 00            [12] 1448 	mov	r3,#0x00
      002772                       1449 00111$:
                           00022E  1450 	C$tasks.c$892$4_0$172 ==.
                                   1451 ;	tasks.c:892: pxNewTCB->pcTaskName[ x ] = pcName[ x ];
      002772 E5 0D            [12] 1452 	mov	a,_bp
      002774 24 09            [12] 1453 	add	a,#0x09
      002776 F8               [12] 1454 	mov	r0,a
      002777 EB               [12] 1455 	mov	a,r3
      002778 2D               [12] 1456 	add	a,r5
      002779 F6               [12] 1457 	mov	@r0,a
      00277A 74 00            [12] 1458 	mov	a,#0x00
      00277C 3E               [12] 1459 	addc	a,r6
      00277D 08               [12] 1460 	inc	r0
      00277E F6               [12] 1461 	mov	@r0,a
      00277F 08               [12] 1462 	inc	r0
      002780 A6 07            [24] 1463 	mov	@r0,ar7
      002782 C0 05            [24] 1464 	push	ar5
      002784 C0 06            [24] 1465 	push	ar6
      002786 C0 07            [24] 1466 	push	ar7
      002788 E5 0D            [12] 1467 	mov	a,_bp
      00278A 24 FB            [12] 1468 	add	a,#0xfb
      00278C F8               [12] 1469 	mov	r0,a
      00278D EB               [12] 1470 	mov	a,r3
      00278E 26               [12] 1471 	add	a,@r0
      00278F FD               [12] 1472 	mov	r5,a
      002790 74 00            [12] 1473 	mov	a,#0x00
      002792 08               [12] 1474 	inc	r0
      002793 36               [12] 1475 	addc	a,@r0
      002794 FE               [12] 1476 	mov	r6,a
      002795 08               [12] 1477 	inc	r0
      002796 86 07            [24] 1478 	mov	ar7,@r0
      002798 8D 82            [24] 1479 	mov	dpl,r5
      00279A 8E 83            [24] 1480 	mov	dph,r6
      00279C 8F F0            [24] 1481 	mov	b,r7
      00279E 12 7C 4D         [24] 1482 	lcall	__gptrget
      0027A1 FC               [12] 1483 	mov	r4,a
      0027A2 E5 0D            [12] 1484 	mov	a,_bp
      0027A4 24 09            [12] 1485 	add	a,#0x09
      0027A6 F8               [12] 1486 	mov	r0,a
      0027A7 86 82            [24] 1487 	mov	dpl,@r0
      0027A9 08               [12] 1488 	inc	r0
      0027AA 86 83            [24] 1489 	mov	dph,@r0
      0027AC 08               [12] 1490 	inc	r0
      0027AD 86 F0            [24] 1491 	mov	b,@r0
      0027AF EC               [12] 1492 	mov	a,r4
      0027B0 12 79 22         [24] 1493 	lcall	__gptrput
                           00026F  1494 	C$tasks.c$897$4_0$172 ==.
                                   1495 ;	tasks.c:897: if( pcName[ x ] == ( char ) 0x00 )
      0027B3 8D 82            [24] 1496 	mov	dpl,r5
      0027B5 8E 83            [24] 1497 	mov	dph,r6
      0027B7 8F F0            [24] 1498 	mov	b,r7
      0027B9 12 7C 4D         [24] 1499 	lcall	__gptrget
      0027BC D0 07            [24] 1500 	pop	ar7
      0027BE D0 06            [24] 1501 	pop	ar6
      0027C0 D0 05            [24] 1502 	pop	ar5
      0027C2 70 03            [24] 1503 	jnz	00137$
      0027C4 02 27 D0         [24] 1504 	ljmp	00103$
      0027C7                       1505 00137$:
                           000283  1506 	C$tasks.c$890$3_0$171 ==.
                                   1507 ;	tasks.c:890: for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
      0027C7 0B               [12] 1508 	inc	r3
      0027C8 BB 08 00         [24] 1509 	cjne	r3,#0x08,00138$
      0027CB                       1510 00138$:
      0027CB 50 03            [24] 1511 	jnc	00139$
      0027CD 02 27 72         [24] 1512 	ljmp	00111$
      0027D0                       1513 00139$:
      0027D0                       1514 00103$:
                           00028C  1515 	C$tasks.c$909$2_0$170 ==.
                                   1516 ;	tasks.c:909: pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
      0027D0 E5 0D            [12] 1517 	mov	a,_bp
      0027D2 24 03            [12] 1518 	add	a,#0x03
      0027D4 F8               [12] 1519 	mov	r0,a
      0027D5 74 2A            [12] 1520 	mov	a,#0x2a
      0027D7 26               [12] 1521 	add	a,@r0
      0027D8 FD               [12] 1522 	mov	r5,a
      0027D9 74 00            [12] 1523 	mov	a,#0x00
      0027DB 08               [12] 1524 	inc	r0
      0027DC 36               [12] 1525 	addc	a,@r0
      0027DD FE               [12] 1526 	mov	r6,a
      0027DE 08               [12] 1527 	inc	r0
      0027DF 86 07            [24] 1528 	mov	ar7,@r0
      0027E1 8D 82            [24] 1529 	mov	dpl,r5
      0027E3 8E 83            [24] 1530 	mov	dph,r6
      0027E5 8F F0            [24] 1531 	mov	b,r7
      0027E7 74 00            [12] 1532 	mov	a,#0x00
      0027E9 12 79 22         [24] 1533 	lcall	__gptrput
      0027EC 02 28 0B         [24] 1534 	ljmp	00106$
      0027EF                       1535 00105$:
                           0002AB  1536 	C$tasks.c$915$2_0$175 ==.
                                   1537 ;	tasks.c:915: pxNewTCB->pcTaskName[ 0 ] = 0x00;
      0027EF E5 0D            [12] 1538 	mov	a,_bp
      0027F1 24 03            [12] 1539 	add	a,#0x03
      0027F3 F8               [12] 1540 	mov	r0,a
      0027F4 74 23            [12] 1541 	mov	a,#0x23
      0027F6 26               [12] 1542 	add	a,@r0
      0027F7 FD               [12] 1543 	mov	r5,a
      0027F8 74 00            [12] 1544 	mov	a,#0x00
      0027FA 08               [12] 1545 	inc	r0
      0027FB 36               [12] 1546 	addc	a,@r0
      0027FC FE               [12] 1547 	mov	r6,a
      0027FD 08               [12] 1548 	inc	r0
      0027FE 86 07            [24] 1549 	mov	ar7,@r0
      002800 8D 82            [24] 1550 	mov	dpl,r5
      002802 8E 83            [24] 1551 	mov	dph,r6
      002804 8F F0            [24] 1552 	mov	b,r7
      002806 74 00            [12] 1553 	mov	a,#0x00
      002808 12 79 22         [24] 1554 	lcall	__gptrput
      00280B                       1555 00106$:
                           0002C7  1556 	C$tasks.c$921$1_0$168 ==.
                                   1557 ;	tasks.c:921: if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
      00280B E5 0D            [12] 1558 	mov	a,_bp
      00280D 24 F3            [12] 1559 	add	a,#0xf3
      00280F F8               [12] 1560 	mov	r0,a
      002810 B6 04 00         [24] 1561 	cjne	@r0,#0x04,00140$
      002813                       1562 00140$:
      002813 50 03            [24] 1563 	jnc	00141$
      002815 02 28 1F         [24] 1564 	ljmp	00108$
      002818                       1565 00141$:
                           0002D4  1566 	C$tasks.c$923$2_0$176 ==.
                                   1567 ;	tasks.c:923: uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
      002818 E5 0D            [12] 1568 	mov	a,_bp
      00281A 24 F3            [12] 1569 	add	a,#0xf3
      00281C F8               [12] 1570 	mov	r0,a
      00281D 76 03            [12] 1571 	mov	@r0,#0x03
      00281F                       1572 00108$:
                           0002DB  1573 	C$tasks.c$930$1_0$168 ==.
                                   1574 ;	tasks.c:930: pxNewTCB->uxPriority = uxPriority;
      00281F E5 0D            [12] 1575 	mov	a,_bp
      002821 24 03            [12] 1576 	add	a,#0x03
      002823 F8               [12] 1577 	mov	r0,a
      002824 74 1F            [12] 1578 	mov	a,#0x1f
      002826 26               [12] 1579 	add	a,@r0
      002827 FD               [12] 1580 	mov	r5,a
      002828 74 00            [12] 1581 	mov	a,#0x00
      00282A 08               [12] 1582 	inc	r0
      00282B 36               [12] 1583 	addc	a,@r0
      00282C FE               [12] 1584 	mov	r6,a
      00282D 08               [12] 1585 	inc	r0
      00282E 86 07            [24] 1586 	mov	ar7,@r0
      002830 8D 82            [24] 1587 	mov	dpl,r5
      002832 8E 83            [24] 1588 	mov	dph,r6
      002834 8F F0            [24] 1589 	mov	b,r7
      002836 E5 0D            [12] 1590 	mov	a,_bp
      002838 24 F3            [12] 1591 	add	a,#0xf3
      00283A F8               [12] 1592 	mov	r0,a
      00283B E6               [12] 1593 	mov	a,@r0
      00283C 12 79 22         [24] 1594 	lcall	__gptrput
                           0002FB  1595 	C$tasks.c$938$1_0$168 ==.
                                   1596 ;	tasks.c:938: vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
      00283F E5 0D            [12] 1597 	mov	a,_bp
      002841 24 03            [12] 1598 	add	a,#0x03
      002843 F8               [12] 1599 	mov	r0,a
      002844 74 03            [12] 1600 	mov	a,#0x03
      002846 26               [12] 1601 	add	a,@r0
      002847 FD               [12] 1602 	mov	r5,a
      002848 74 00            [12] 1603 	mov	a,#0x00
      00284A 08               [12] 1604 	inc	r0
      00284B 36               [12] 1605 	addc	a,@r0
      00284C FE               [12] 1606 	mov	r6,a
      00284D 08               [12] 1607 	inc	r0
      00284E 86 07            [24] 1608 	mov	ar7,@r0
      002850 8D 82            [24] 1609 	mov	dpl,r5
      002852 8E 83            [24] 1610 	mov	dph,r6
      002854 8F F0            [24] 1611 	mov	b,r7
      002856 12 6E 4D         [24] 1612 	lcall	_vListInitialiseItem
                           000315  1613 	C$tasks.c$939$1_0$168 ==.
                                   1614 ;	tasks.c:939: vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
      002859 E5 0D            [12] 1615 	mov	a,_bp
      00285B 24 03            [12] 1616 	add	a,#0x03
      00285D F8               [12] 1617 	mov	r0,a
      00285E 74 11            [12] 1618 	mov	a,#0x11
      002860 26               [12] 1619 	add	a,@r0
      002861 FD               [12] 1620 	mov	r5,a
      002862 74 00            [12] 1621 	mov	a,#0x00
      002864 08               [12] 1622 	inc	r0
      002865 36               [12] 1623 	addc	a,@r0
      002866 FE               [12] 1624 	mov	r6,a
      002867 08               [12] 1625 	inc	r0
      002868 86 07            [24] 1626 	mov	ar7,@r0
      00286A 8D 82            [24] 1627 	mov	dpl,r5
      00286C 8E 83            [24] 1628 	mov	dph,r6
      00286E 8F F0            [24] 1629 	mov	b,r7
      002870 12 6E 4D         [24] 1630 	lcall	_vListInitialiseItem
                           00032F  1631 	C$tasks.c$943$1_0$168 ==.
                                   1632 ;	tasks.c:943: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
      002873 E5 0D            [12] 1633 	mov	a,_bp
      002875 24 03            [12] 1634 	add	a,#0x03
      002877 F8               [12] 1635 	mov	r0,a
      002878 74 0B            [12] 1636 	mov	a,#0x0b
      00287A 26               [12] 1637 	add	a,@r0
      00287B FD               [12] 1638 	mov	r5,a
      00287C 74 00            [12] 1639 	mov	a,#0x00
      00287E 08               [12] 1640 	inc	r0
      00287F 36               [12] 1641 	addc	a,@r0
      002880 FE               [12] 1642 	mov	r6,a
      002881 08               [12] 1643 	inc	r0
      002882 86 07            [24] 1644 	mov	ar7,@r0
      002884 E5 0D            [12] 1645 	mov	a,_bp
      002886 24 ED            [12] 1646 	add	a,#0xed
      002888 F8               [12] 1647 	mov	r0,a
      002889 86 02            [24] 1648 	mov	ar2,@r0
      00288B 08               [12] 1649 	inc	r0
      00288C 86 03            [24] 1650 	mov	ar3,@r0
      00288E 08               [12] 1651 	inc	r0
      00288F 86 04            [24] 1652 	mov	ar4,@r0
      002891 8D 82            [24] 1653 	mov	dpl,r5
      002893 8E 83            [24] 1654 	mov	dph,r6
      002895 8F F0            [24] 1655 	mov	b,r7
      002897 EA               [12] 1656 	mov	a,r2
      002898 12 79 22         [24] 1657 	lcall	__gptrput
      00289B A3               [24] 1658 	inc	dptr
      00289C EB               [12] 1659 	mov	a,r3
      00289D 12 79 22         [24] 1660 	lcall	__gptrput
      0028A0 A3               [24] 1661 	inc	dptr
      0028A1 EC               [12] 1662 	mov	a,r4
      0028A2 12 79 22         [24] 1663 	lcall	__gptrput
                           000361  1664 	C$tasks.c$946$1_0$168 ==.
                                   1665 ;	tasks.c:946: listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      0028A5 E5 0D            [12] 1666 	mov	a,_bp
      0028A7 24 03            [12] 1667 	add	a,#0x03
      0028A9 F8               [12] 1668 	mov	r0,a
      0028AA E5 0D            [12] 1669 	mov	a,_bp
      0028AC 24 09            [12] 1670 	add	a,#0x09
      0028AE F9               [12] 1671 	mov	r1,a
      0028AF 74 11            [12] 1672 	mov	a,#0x11
      0028B1 26               [12] 1673 	add	a,@r0
      0028B2 F7               [12] 1674 	mov	@r1,a
      0028B3 74 00            [12] 1675 	mov	a,#0x00
      0028B5 08               [12] 1676 	inc	r0
      0028B6 36               [12] 1677 	addc	a,@r0
      0028B7 09               [12] 1678 	inc	r1
      0028B8 F7               [12] 1679 	mov	@r1,a
      0028B9 08               [12] 1680 	inc	r0
      0028BA E6               [12] 1681 	mov	a,@r0
      0028BB 09               [12] 1682 	inc	r1
      0028BC F7               [12] 1683 	mov	@r1,a
      0028BD E5 0D            [12] 1684 	mov	a,_bp
      0028BF 24 F3            [12] 1685 	add	a,#0xf3
      0028C1 F8               [12] 1686 	mov	r0,a
      0028C2 86 07            [24] 1687 	mov	ar7,@r0
      0028C4 7E 00            [12] 1688 	mov	r6,#0x00
      0028C6 74 04            [12] 1689 	mov	a,#0x04
      0028C8 C3               [12] 1690 	clr	c
      0028C9 9F               [12] 1691 	subb	a,r7
      0028CA FF               [12] 1692 	mov	r7,a
      0028CB 74 00            [12] 1693 	mov	a,#0x00
      0028CD 9E               [12] 1694 	subb	a,r6
      0028CE FE               [12] 1695 	mov	r6,a
      0028CF E5 0D            [12] 1696 	mov	a,_bp
      0028D1 24 09            [12] 1697 	add	a,#0x09
      0028D3 F8               [12] 1698 	mov	r0,a
      0028D4 86 82            [24] 1699 	mov	dpl,@r0
      0028D6 08               [12] 1700 	inc	r0
      0028D7 86 83            [24] 1701 	mov	dph,@r0
      0028D9 08               [12] 1702 	inc	r0
      0028DA 86 F0            [24] 1703 	mov	b,@r0
      0028DC EF               [12] 1704 	mov	a,r7
      0028DD 12 79 22         [24] 1705 	lcall	__gptrput
      0028E0 A3               [24] 1706 	inc	dptr
      0028E1 EE               [12] 1707 	mov	a,r6
      0028E2 12 79 22         [24] 1708 	lcall	__gptrput
                           0003A1  1709 	C$tasks.c$947$1_0$168 ==.
                                   1710 ;	tasks.c:947: listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
      0028E5 E5 0D            [12] 1711 	mov	a,_bp
      0028E7 24 03            [12] 1712 	add	a,#0x03
      0028E9 F8               [12] 1713 	mov	r0,a
      0028EA 74 19            [12] 1714 	mov	a,#0x19
      0028EC 26               [12] 1715 	add	a,@r0
      0028ED FD               [12] 1716 	mov	r5,a
      0028EE 74 00            [12] 1717 	mov	a,#0x00
      0028F0 08               [12] 1718 	inc	r0
      0028F1 36               [12] 1719 	addc	a,@r0
      0028F2 FE               [12] 1720 	mov	r6,a
      0028F3 08               [12] 1721 	inc	r0
      0028F4 86 07            [24] 1722 	mov	ar7,@r0
      0028F6 8D 82            [24] 1723 	mov	dpl,r5
      0028F8 8E 83            [24] 1724 	mov	dph,r6
      0028FA 8F F0            [24] 1725 	mov	b,r7
      0028FC EA               [12] 1726 	mov	a,r2
      0028FD 12 79 22         [24] 1727 	lcall	__gptrput
      002900 A3               [24] 1728 	inc	dptr
      002901 EB               [12] 1729 	mov	a,r3
      002902 12 79 22         [24] 1730 	lcall	__gptrput
      002905 A3               [24] 1731 	inc	dptr
      002906 EC               [12] 1732 	mov	a,r4
      002907 12 79 22         [24] 1733 	lcall	__gptrput
                           0003C6  1734 	C$tasks.c$986$2_0$179 ==.
                                   1735 ;	tasks.c:986: memset( ( void * ) &( pxNewTCB->ulNotifiedValue[ 0 ] ), 0x00, sizeof( pxNewTCB->ulNotifiedValue ) );
      00290A E5 0D            [12] 1736 	mov	a,_bp
      00290C 24 03            [12] 1737 	add	a,#0x03
      00290E F8               [12] 1738 	mov	r0,a
      00290F 74 2E            [12] 1739 	mov	a,#0x2e
      002911 26               [12] 1740 	add	a,@r0
      002912 FD               [12] 1741 	mov	r5,a
      002913 74 00            [12] 1742 	mov	a,#0x00
      002915 08               [12] 1743 	inc	r0
      002916 36               [12] 1744 	addc	a,@r0
      002917 FE               [12] 1745 	mov	r6,a
      002918 08               [12] 1746 	inc	r0
      002919 86 07            [24] 1747 	mov	ar7,@r0
      00291B 74 04            [12] 1748 	mov	a,#0x04
      00291D C0 E0            [24] 1749 	push	acc
      00291F 74 00            [12] 1750 	mov	a,#0x00
      002921 C0 E0            [24] 1751 	push	acc
      002923 C0 E0            [24] 1752 	push	acc
      002925 8D 82            [24] 1753 	mov	dpl,r5
      002927 8E 83            [24] 1754 	mov	dph,r6
      002929 8F F0            [24] 1755 	mov	b,r7
      00292B 12 7A C7         [24] 1756 	lcall	_memset
      00292E 15 81            [12] 1757 	dec	sp
      002930 15 81            [12] 1758 	dec	sp
      002932 15 81            [12] 1759 	dec	sp
                           0003F0  1760 	C$tasks.c$987$2_0$179 ==.
                                   1761 ;	tasks.c:987: memset( ( void * ) &( pxNewTCB->ucNotifyState[ 0 ] ), 0x00, sizeof( pxNewTCB->ucNotifyState ) );
      002934 E5 0D            [12] 1762 	mov	a,_bp
      002936 24 03            [12] 1763 	add	a,#0x03
      002938 F8               [12] 1764 	mov	r0,a
      002939 74 32            [12] 1765 	mov	a,#0x32
      00293B 26               [12] 1766 	add	a,@r0
      00293C FD               [12] 1767 	mov	r5,a
      00293D 74 00            [12] 1768 	mov	a,#0x00
      00293F 08               [12] 1769 	inc	r0
      002940 36               [12] 1770 	addc	a,@r0
      002941 FE               [12] 1771 	mov	r6,a
      002942 08               [12] 1772 	inc	r0
      002943 86 07            [24] 1773 	mov	ar7,@r0
      002945 74 01            [12] 1774 	mov	a,#0x01
      002947 C0 E0            [24] 1775 	push	acc
      002949 74 00            [12] 1776 	mov	a,#0x00
      00294B C0 E0            [24] 1777 	push	acc
      00294D C0 E0            [24] 1778 	push	acc
      00294F 8D 82            [24] 1779 	mov	dpl,r5
      002951 8E 83            [24] 1780 	mov	dph,r6
      002953 8F F0            [24] 1781 	mov	b,r7
      002955 12 7A C7         [24] 1782 	lcall	_memset
      002958 15 81            [12] 1783 	dec	sp
      00295A 15 81            [12] 1784 	dec	sp
      00295C 15 81            [12] 1785 	dec	sp
                           00041A  1786 	C$tasks.c$1052$3_0$181 ==.
                                   1787 ;	tasks.c:1052: pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
      00295E E5 0D            [12] 1788 	mov	a,_bp
      002960 24 F4            [12] 1789 	add	a,#0xf4
      002962 F8               [12] 1790 	mov	r0,a
      002963 E6               [12] 1791 	mov	a,@r0
      002964 C0 E0            [24] 1792 	push	acc
      002966 08               [12] 1793 	inc	r0
      002967 E6               [12] 1794 	mov	a,@r0
      002968 C0 E0            [24] 1795 	push	acc
      00296A 08               [12] 1796 	inc	r0
      00296B E6               [12] 1797 	mov	a,@r0
      00296C C0 E0            [24] 1798 	push	acc
      00296E A8 0D            [24] 1799 	mov	r0,_bp
      002970 08               [12] 1800 	inc	r0
      002971 E6               [12] 1801 	mov	a,@r0
      002972 C0 E0            [24] 1802 	push	acc
      002974 08               [12] 1803 	inc	r0
      002975 E6               [12] 1804 	mov	a,@r0
      002976 C0 E0            [24] 1805 	push	acc
      002978 E5 0D            [12] 1806 	mov	a,_bp
      00297A 24 06            [12] 1807 	add	a,#0x06
      00297C F8               [12] 1808 	mov	r0,a
      00297D 86 82            [24] 1809 	mov	dpl,@r0
      00297F 08               [12] 1810 	inc	r0
      002980 86 83            [24] 1811 	mov	dph,@r0
      002982 08               [12] 1812 	inc	r0
      002983 86 F0            [24] 1813 	mov	b,@r0
      002985 12 74 C7         [24] 1814 	lcall	_pxPortInitialiseStack
      002988 AF 82            [24] 1815 	mov	r7,dpl
      00298A AE 83            [24] 1816 	mov	r6,dph
      00298C AD F0            [24] 1817 	mov	r5,b
      00298E E5 81            [12] 1818 	mov	a,sp
      002990 24 FB            [12] 1819 	add	a,#0xfb
      002992 F5 81            [12] 1820 	mov	sp,a
      002994 E5 0D            [12] 1821 	mov	a,_bp
      002996 24 03            [12] 1822 	add	a,#0x03
      002998 F8               [12] 1823 	mov	r0,a
      002999 86 82            [24] 1824 	mov	dpl,@r0
      00299B 08               [12] 1825 	inc	r0
      00299C 86 83            [24] 1826 	mov	dph,@r0
      00299E 08               [12] 1827 	inc	r0
      00299F 86 F0            [24] 1828 	mov	b,@r0
      0029A1 EF               [12] 1829 	mov	a,r7
      0029A2 12 79 22         [24] 1830 	lcall	__gptrput
      0029A5 A3               [24] 1831 	inc	dptr
      0029A6 EE               [12] 1832 	mov	a,r6
      0029A7 12 79 22         [24] 1833 	lcall	__gptrput
      0029AA A3               [24] 1834 	inc	dptr
      0029AB ED               [12] 1835 	mov	a,r5
      0029AC 12 79 22         [24] 1836 	lcall	__gptrput
                           00046B  1837 	C$tasks.c$1058$1_0$168 ==.
                                   1838 ;	tasks.c:1058: if( pxCreatedTask != NULL )
      0029AF E5 0D            [12] 1839 	mov	a,_bp
      0029B1 24 F0            [12] 1840 	add	a,#0xf0
      0029B3 F8               [12] 1841 	mov	r0,a
      0029B4 E6               [12] 1842 	mov	a,@r0
      0029B5 08               [12] 1843 	inc	r0
      0029B6 46               [12] 1844 	orl	a,@r0
      0029B7 70 03            [24] 1845 	jnz	00142$
      0029B9 02 29 E4         [24] 1846 	ljmp	00113$
      0029BC                       1847 00142$:
                           000478  1848 	C$tasks.c$1062$2_0$182 ==.
                                   1849 ;	tasks.c:1062: *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
      0029BC E5 0D            [12] 1850 	mov	a,_bp
      0029BE 24 F0            [12] 1851 	add	a,#0xf0
      0029C0 F8               [12] 1852 	mov	r0,a
      0029C1 86 05            [24] 1853 	mov	ar5,@r0
      0029C3 08               [12] 1854 	inc	r0
      0029C4 86 06            [24] 1855 	mov	ar6,@r0
      0029C6 08               [12] 1856 	inc	r0
      0029C7 86 07            [24] 1857 	mov	ar7,@r0
      0029C9 8D 82            [24] 1858 	mov	dpl,r5
      0029CB 8E 83            [24] 1859 	mov	dph,r6
      0029CD 8F F0            [24] 1860 	mov	b,r7
      0029CF E5 0D            [12] 1861 	mov	a,_bp
      0029D1 24 03            [12] 1862 	add	a,#0x03
      0029D3 F8               [12] 1863 	mov	r0,a
      0029D4 E6               [12] 1864 	mov	a,@r0
      0029D5 12 79 22         [24] 1865 	lcall	__gptrput
      0029D8 A3               [24] 1866 	inc	dptr
      0029D9 08               [12] 1867 	inc	r0
      0029DA E6               [12] 1868 	mov	a,@r0
      0029DB 12 79 22         [24] 1869 	lcall	__gptrput
      0029DE A3               [24] 1870 	inc	dptr
      0029DF 08               [12] 1871 	inc	r0
      0029E0 E6               [12] 1872 	mov	a,@r0
      0029E1 12 79 22         [24] 1873 	lcall	__gptrput
      0029E4                       1874 00113$:
                           0004A0  1875 	C$tasks.c$1068$1_0$168 ==.
                                   1876 ;	tasks.c:1068: }
      0029E4 85 0D 81         [24] 1877 	mov	sp,_bp
      0029E7 D0 0D            [24] 1878 	pop	_bp
                           0004A5  1879 	C$tasks.c$1068$1_0$168 ==.
                           0004A5  1880 	XFtasks$prvInitialiseNewTask$0$0 ==.
      0029E9 22               [24] 1881 	ret
                                   1882 ;------------------------------------------------------------
                                   1883 ;Allocation info for local variables in function 'prvAddNewTaskToReadyList'
                                   1884 ;------------------------------------------------------------
                                   1885 ;pxNewTCB                  Allocated to stack - _bp +1
                                   1886 ;pxIndex                   Allocated to stack - _bp +13
                                   1887 ;sloc0                     Allocated to stack - _bp +7
                                   1888 ;sloc1                     Allocated to stack - _bp +4
                                   1889 ;sloc2                     Allocated to stack - _bp +10
                                   1890 ;------------------------------------------------------------
                           0004A6  1891 	Ftasks$prvAddNewTaskToReadyList$0$0 ==.
                           0004A6  1892 	C$tasks.c$1071$1_0$185 ==.
                                   1893 ;	tasks.c:1071: static void prvAddNewTaskToReadyList( TCB_t * pxNewTCB )
                                   1894 ;	-----------------------------------------
                                   1895 ;	 function prvAddNewTaskToReadyList
                                   1896 ;	-----------------------------------------
      0029EA                       1897 _prvAddNewTaskToReadyList:
      0029EA C0 0D            [24] 1898 	push	_bp
      0029EC 85 81 0D         [24] 1899 	mov	_bp,sp
      0029EF C0 82            [24] 1900 	push	dpl
      0029F1 C0 83            [24] 1901 	push	dph
      0029F3 C0 F0            [24] 1902 	push	b
      0029F5 E5 81            [12] 1903 	mov	a,sp
      0029F7 24 0C            [12] 1904 	add	a,#0x0c
      0029F9 F5 81            [12] 1905 	mov	sp,a
                           0004B7  1906 	C$tasks.c$1075$1_0$185 ==.
                                   1907 ;	tasks.c:1075: taskENTER_CRITICAL();
      0029FB C0 E0            [24] 1908 	push ACC 
      0029FD C0 A8            [24] 1909 	push IE 
                                   1910 ;	assignBit
      0029FF C2 AF            [12] 1911 	clr	_EA
                           0004BD  1912 	C$tasks.c$1077$2_0$186 ==.
                                   1913 ;	tasks.c:1077: uxCurrentNumberOfTasks++;
      002A01 90 0C 83         [24] 1914 	mov	dptr,#_uxCurrentNumberOfTasks
      002A04 E0               [24] 1915 	movx	a,@dptr
      002A05 04               [12] 1916 	inc	a
      002A06 F0               [24] 1917 	movx	@dptr,a
                           0004C3  1918 	C$tasks.c$1079$2_0$186 ==.
                                   1919 ;	tasks.c:1079: if( pxCurrentTCB == NULL )
      002A07 90 0C 7F         [24] 1920 	mov	dptr,#_pxCurrentTCB
      002A0A E0               [24] 1921 	movx	a,@dptr
      002A0B FA               [12] 1922 	mov	r2,a
      002A0C A3               [24] 1923 	inc	dptr
      002A0D E0               [24] 1924 	movx	a,@dptr
      002A0E FB               [12] 1925 	mov	r3,a
      002A0F A3               [24] 1926 	inc	dptr
      002A10 E0               [24] 1927 	movx	a,@dptr
      002A11 FC               [12] 1928 	mov	r4,a
      002A12 EA               [12] 1929 	mov	a,r2
      002A13 4B               [12] 1930 	orl	a,r3
      002A14 60 03            [24] 1931 	jz	00140$
      002A16 02 2A 3C         [24] 1932 	ljmp	00108$
      002A19                       1933 00140$:
                           0004D5  1934 	C$tasks.c$1083$3_0$187 ==.
                                   1935 ;	tasks.c:1083: pxCurrentTCB = pxNewTCB;
      002A19 A8 0D            [24] 1936 	mov	r0,_bp
      002A1B 08               [12] 1937 	inc	r0
      002A1C 90 0C 7F         [24] 1938 	mov	dptr,#_pxCurrentTCB
      002A1F E6               [12] 1939 	mov	a,@r0
      002A20 F0               [24] 1940 	movx	@dptr,a
      002A21 08               [12] 1941 	inc	r0
      002A22 E6               [12] 1942 	mov	a,@r0
      002A23 A3               [24] 1943 	inc	dptr
      002A24 F0               [24] 1944 	movx	@dptr,a
      002A25 08               [12] 1945 	inc	r0
      002A26 E6               [12] 1946 	mov	a,@r0
      002A27 A3               [24] 1947 	inc	dptr
      002A28 F0               [24] 1948 	movx	@dptr,a
                           0004E5  1949 	C$tasks.c$1085$3_0$187 ==.
                                   1950 ;	tasks.c:1085: if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
      002A29 90 0C 83         [24] 1951 	mov	dptr,#_uxCurrentNumberOfTasks
      002A2C E0               [24] 1952 	movx	a,@dptr
      002A2D FC               [12] 1953 	mov	r4,a
      002A2E BC 01 02         [24] 1954 	cjne	r4,#0x01,00141$
      002A31 80 03            [24] 1955 	sjmp	00142$
      002A33                       1956 00141$:
      002A33 02 2A 93         [24] 1957 	ljmp	00109$
      002A36                       1958 00142$:
                           0004F2  1959 	C$tasks.c$1090$4_0$188 ==.
                                   1960 ;	tasks.c:1090: prvInitialiseTaskLists();
      002A36 12 4F C0         [24] 1961 	lcall	_prvInitialiseTaskLists
      002A39 02 2A 93         [24] 1962 	ljmp	00109$
      002A3C                       1963 00108$:
                           0004F8  1964 	C$tasks.c$1102$3_0$190 ==.
                                   1965 ;	tasks.c:1102: if( xSchedulerRunning == pdFALSE )
      002A3C 90 0C 87         [24] 1966 	mov	dptr,#_xSchedulerRunning
      002A3F E0               [24] 1967 	movx	a,@dptr
      002A40 60 03            [24] 1968 	jz	00143$
      002A42 02 2A 93         [24] 1969 	ljmp	00109$
      002A45                       1970 00143$:
                           000501  1971 	C$tasks.c$1104$4_0$191 ==.
                                   1972 ;	tasks.c:1104: if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
      002A45 90 0C 7F         [24] 1973 	mov	dptr,#_pxCurrentTCB
      002A48 E0               [24] 1974 	movx	a,@dptr
      002A49 FA               [12] 1975 	mov	r2,a
      002A4A A3               [24] 1976 	inc	dptr
      002A4B E0               [24] 1977 	movx	a,@dptr
      002A4C FB               [12] 1978 	mov	r3,a
      002A4D A3               [24] 1979 	inc	dptr
      002A4E E0               [24] 1980 	movx	a,@dptr
      002A4F FC               [12] 1981 	mov	r4,a
      002A50 74 1F            [12] 1982 	mov	a,#0x1f
      002A52 2A               [12] 1983 	add	a,r2
      002A53 FA               [12] 1984 	mov	r2,a
      002A54 74 00            [12] 1985 	mov	a,#0x00
      002A56 3B               [12] 1986 	addc	a,r3
      002A57 FB               [12] 1987 	mov	r3,a
      002A58 8A 82            [24] 1988 	mov	dpl,r2
      002A5A 8B 83            [24] 1989 	mov	dph,r3
      002A5C 8C F0            [24] 1990 	mov	b,r4
      002A5E 12 7C 4D         [24] 1991 	lcall	__gptrget
      002A61 FA               [12] 1992 	mov	r2,a
      002A62 A8 0D            [24] 1993 	mov	r0,_bp
      002A64 08               [12] 1994 	inc	r0
      002A65 74 1F            [12] 1995 	mov	a,#0x1f
      002A67 26               [12] 1996 	add	a,@r0
      002A68 FB               [12] 1997 	mov	r3,a
      002A69 74 00            [12] 1998 	mov	a,#0x00
      002A6B 08               [12] 1999 	inc	r0
      002A6C 36               [12] 2000 	addc	a,@r0
      002A6D FC               [12] 2001 	mov	r4,a
      002A6E 08               [12] 2002 	inc	r0
      002A6F 86 07            [24] 2003 	mov	ar7,@r0
      002A71 8B 82            [24] 2004 	mov	dpl,r3
      002A73 8C 83            [24] 2005 	mov	dph,r4
      002A75 8F F0            [24] 2006 	mov	b,r7
      002A77 12 7C 4D         [24] 2007 	lcall	__gptrget
      002A7A FB               [12] 2008 	mov	r3,a
      002A7B C3               [12] 2009 	clr	c
      002A7C EB               [12] 2010 	mov	a,r3
      002A7D 9A               [12] 2011 	subb	a,r2
      002A7E 50 03            [24] 2012 	jnc	00144$
      002A80 02 2A 93         [24] 2013 	ljmp	00109$
      002A83                       2014 00144$:
                           00053F  2015 	C$tasks.c$1106$5_0$192 ==.
                                   2016 ;	tasks.c:1106: pxCurrentTCB = pxNewTCB;
      002A83 A8 0D            [24] 2017 	mov	r0,_bp
      002A85 08               [12] 2018 	inc	r0
      002A86 90 0C 7F         [24] 2019 	mov	dptr,#_pxCurrentTCB
      002A89 E6               [12] 2020 	mov	a,@r0
      002A8A F0               [24] 2021 	movx	@dptr,a
      002A8B 08               [12] 2022 	inc	r0
      002A8C E6               [12] 2023 	mov	a,@r0
      002A8D A3               [24] 2024 	inc	dptr
      002A8E F0               [24] 2025 	movx	@dptr,a
      002A8F 08               [12] 2026 	inc	r0
      002A90 E6               [12] 2027 	mov	a,@r0
      002A91 A3               [24] 2028 	inc	dptr
      002A92 F0               [24] 2029 	movx	@dptr,a
      002A93                       2030 00109$:
                           00054F  2031 	C$tasks.c$1119$2_0$186 ==.
                                   2032 ;	tasks.c:1119: uxTaskNumber++;
      002A93 90 0C 8C         [24] 2033 	mov	dptr,#_uxTaskNumber
      002A96 E0               [24] 2034 	movx	a,@dptr
      002A97 24 01            [12] 2035 	add	a,#0x01
      002A99 F0               [24] 2036 	movx	@dptr,a
                           000556  2037 	C$tasks.c$1129$3_0$195 ==.
                                   2038 ;	tasks.c:1129: prvAddTaskToReadyList( pxNewTCB );
      002A9A A8 0D            [24] 2039 	mov	r0,_bp
      002A9C 08               [12] 2040 	inc	r0
      002A9D E5 0D            [12] 2041 	mov	a,_bp
      002A9F 24 07            [12] 2042 	add	a,#0x07
      002AA1 F9               [12] 2043 	mov	r1,a
      002AA2 74 1F            [12] 2044 	mov	a,#0x1f
      002AA4 26               [12] 2045 	add	a,@r0
      002AA5 F7               [12] 2046 	mov	@r1,a
      002AA6 74 00            [12] 2047 	mov	a,#0x00
      002AA8 08               [12] 2048 	inc	r0
      002AA9 36               [12] 2049 	addc	a,@r0
      002AAA 09               [12] 2050 	inc	r1
      002AAB F7               [12] 2051 	mov	@r1,a
      002AAC 08               [12] 2052 	inc	r0
      002AAD E6               [12] 2053 	mov	a,@r0
      002AAE 09               [12] 2054 	inc	r1
      002AAF F7               [12] 2055 	mov	@r1,a
      002AB0 E5 0D            [12] 2056 	mov	a,_bp
      002AB2 24 07            [12] 2057 	add	a,#0x07
      002AB4 F8               [12] 2058 	mov	r0,a
      002AB5 86 82            [24] 2059 	mov	dpl,@r0
      002AB7 08               [12] 2060 	inc	r0
      002AB8 86 83            [24] 2061 	mov	dph,@r0
      002ABA 08               [12] 2062 	inc	r0
      002ABB 86 F0            [24] 2063 	mov	b,@r0
      002ABD 12 7C 4D         [24] 2064 	lcall	__gptrget
      002AC0 FC               [12] 2065 	mov	r4,a
      002AC1 90 0C 86         [24] 2066 	mov	dptr,#_uxTopReadyPriority
      002AC4 E0               [24] 2067 	movx	a,@dptr
      002AC5 FB               [12] 2068 	mov	r3,a
      002AC6 C3               [12] 2069 	clr	c
      002AC7 EB               [12] 2070 	mov	a,r3
      002AC8 9C               [12] 2071 	subb	a,r4
      002AC9 40 03            [24] 2072 	jc	00145$
      002ACB 02 2A D3         [24] 2073 	ljmp	00111$
      002ACE                       2074 00145$:
      002ACE 90 0C 86         [24] 2075 	mov	dptr,#_uxTopReadyPriority
      002AD1 EC               [12] 2076 	mov	a,r4
      002AD2 F0               [24] 2077 	movx	@dptr,a
      002AD3                       2078 00111$:
      002AD3 E5 0D            [12] 2079 	mov	a,_bp
      002AD5 24 07            [12] 2080 	add	a,#0x07
      002AD7 F8               [12] 2081 	mov	r0,a
      002AD8 86 82            [24] 2082 	mov	dpl,@r0
      002ADA 08               [12] 2083 	inc	r0
      002ADB 86 83            [24] 2084 	mov	dph,@r0
      002ADD 08               [12] 2085 	inc	r0
      002ADE 86 F0            [24] 2086 	mov	b,@r0
      002AE0 12 7C 4D         [24] 2087 	lcall	__gptrget
      002AE3 FC               [12] 2088 	mov	r4,a
      002AE4 EC               [12] 2089 	mov	a,r4
      002AE5 75 F0 0C         [24] 2090 	mov	b,#0x0c
      002AE8 A4               [48] 2091 	mul	ab
      002AE9 24 16            [12] 2092 	add	a,#_pxReadyTasksLists
      002AEB FB               [12] 2093 	mov	r3,a
      002AEC 74 00            [12] 2094 	mov	a,#(_pxReadyTasksLists >> 8)
      002AEE 35 F0            [12] 2095 	addc	a,b
      002AF0 FC               [12] 2096 	mov	r4,a
      002AF1 8B 82            [24] 2097 	mov	dpl,r3
      002AF3 8C 83            [24] 2098 	mov	dph,r4
      002AF5 A3               [24] 2099 	inc	dptr
      002AF6 E5 0D            [12] 2100 	mov	a,_bp
      002AF8 24 0D            [12] 2101 	add	a,#0x0d
      002AFA F8               [12] 2102 	mov	r0,a
      002AFB E0               [24] 2103 	movx	a,@dptr
      002AFC F6               [12] 2104 	mov	@r0,a
      002AFD A3               [24] 2105 	inc	dptr
      002AFE E0               [24] 2106 	movx	a,@dptr
      002AFF 08               [12] 2107 	inc	r0
      002B00 F6               [12] 2108 	mov	@r0,a
      002B01 A3               [24] 2109 	inc	dptr
      002B02 E0               [24] 2110 	movx	a,@dptr
      002B03 08               [12] 2111 	inc	r0
      002B04 F6               [12] 2112 	mov	@r0,a
      002B05 A8 0D            [24] 2113 	mov	r0,_bp
      002B07 08               [12] 2114 	inc	r0
      002B08 74 03            [12] 2115 	mov	a,#0x03
      002B0A 26               [12] 2116 	add	a,@r0
      002B0B FA               [12] 2117 	mov	r2,a
      002B0C 74 00            [12] 2118 	mov	a,#0x00
      002B0E 08               [12] 2119 	inc	r0
      002B0F 36               [12] 2120 	addc	a,@r0
      002B10 FB               [12] 2121 	mov	r3,a
      002B11 08               [12] 2122 	inc	r0
      002B12 86 04            [24] 2123 	mov	ar4,@r0
      002B14 74 02            [12] 2124 	mov	a,#0x02
      002B16 2A               [12] 2125 	add	a,r2
      002B17 FD               [12] 2126 	mov	r5,a
      002B18 74 00            [12] 2127 	mov	a,#0x00
      002B1A 3B               [12] 2128 	addc	a,r3
      002B1B FE               [12] 2129 	mov	r6,a
      002B1C 8C 07            [24] 2130 	mov	ar7,r4
      002B1E 8D 82            [24] 2131 	mov	dpl,r5
      002B20 8E 83            [24] 2132 	mov	dph,r6
      002B22 8F F0            [24] 2133 	mov	b,r7
      002B24 E5 0D            [12] 2134 	mov	a,_bp
      002B26 24 0D            [12] 2135 	add	a,#0x0d
      002B28 F8               [12] 2136 	mov	r0,a
      002B29 E6               [12] 2137 	mov	a,@r0
      002B2A 12 79 22         [24] 2138 	lcall	__gptrput
      002B2D A3               [24] 2139 	inc	dptr
      002B2E 08               [12] 2140 	inc	r0
      002B2F E6               [12] 2141 	mov	a,@r0
      002B30 12 79 22         [24] 2142 	lcall	__gptrput
      002B33 A3               [24] 2143 	inc	dptr
      002B34 08               [12] 2144 	inc	r0
      002B35 E6               [12] 2145 	mov	a,@r0
      002B36 12 79 22         [24] 2146 	lcall	__gptrput
      002B39 E5 0D            [12] 2147 	mov	a,_bp
      002B3B 24 04            [12] 2148 	add	a,#0x04
      002B3D F8               [12] 2149 	mov	r0,a
      002B3E 74 05            [12] 2150 	mov	a,#0x05
      002B40 2A               [12] 2151 	add	a,r2
      002B41 F6               [12] 2152 	mov	@r0,a
      002B42 74 00            [12] 2153 	mov	a,#0x00
      002B44 3B               [12] 2154 	addc	a,r3
      002B45 08               [12] 2155 	inc	r0
      002B46 F6               [12] 2156 	mov	@r0,a
      002B47 08               [12] 2157 	inc	r0
      002B48 A6 04            [24] 2158 	mov	@r0,ar4
      002B4A E5 0D            [12] 2159 	mov	a,_bp
      002B4C 24 0D            [12] 2160 	add	a,#0x0d
      002B4E F8               [12] 2161 	mov	r0,a
      002B4F E5 0D            [12] 2162 	mov	a,_bp
      002B51 24 0A            [12] 2163 	add	a,#0x0a
      002B53 F9               [12] 2164 	mov	r1,a
      002B54 74 05            [12] 2165 	mov	a,#0x05
      002B56 26               [12] 2166 	add	a,@r0
      002B57 F7               [12] 2167 	mov	@r1,a
      002B58 74 00            [12] 2168 	mov	a,#0x00
      002B5A 08               [12] 2169 	inc	r0
      002B5B 36               [12] 2170 	addc	a,@r0
      002B5C 09               [12] 2171 	inc	r1
      002B5D F7               [12] 2172 	mov	@r1,a
      002B5E 08               [12] 2173 	inc	r0
      002B5F E6               [12] 2174 	mov	a,@r0
      002B60 09               [12] 2175 	inc	r1
      002B61 F7               [12] 2176 	mov	@r1,a
      002B62 E5 0D            [12] 2177 	mov	a,_bp
      002B64 24 0A            [12] 2178 	add	a,#0x0a
      002B66 F8               [12] 2179 	mov	r0,a
      002B67 86 82            [24] 2180 	mov	dpl,@r0
      002B69 08               [12] 2181 	inc	r0
      002B6A 86 83            [24] 2182 	mov	dph,@r0
      002B6C 08               [12] 2183 	inc	r0
      002B6D 86 F0            [24] 2184 	mov	b,@r0
      002B6F 12 7C 4D         [24] 2185 	lcall	__gptrget
      002B72 FD               [12] 2186 	mov	r5,a
      002B73 A3               [24] 2187 	inc	dptr
      002B74 12 7C 4D         [24] 2188 	lcall	__gptrget
      002B77 FE               [12] 2189 	mov	r6,a
      002B78 A3               [24] 2190 	inc	dptr
      002B79 12 7C 4D         [24] 2191 	lcall	__gptrget
      002B7C FF               [12] 2192 	mov	r7,a
      002B7D E5 0D            [12] 2193 	mov	a,_bp
      002B7F 24 04            [12] 2194 	add	a,#0x04
      002B81 F8               [12] 2195 	mov	r0,a
      002B82 86 82            [24] 2196 	mov	dpl,@r0
      002B84 08               [12] 2197 	inc	r0
      002B85 86 83            [24] 2198 	mov	dph,@r0
      002B87 08               [12] 2199 	inc	r0
      002B88 86 F0            [24] 2200 	mov	b,@r0
      002B8A ED               [12] 2201 	mov	a,r5
      002B8B 12 79 22         [24] 2202 	lcall	__gptrput
      002B8E A3               [24] 2203 	inc	dptr
      002B8F EE               [12] 2204 	mov	a,r6
      002B90 12 79 22         [24] 2205 	lcall	__gptrput
      002B93 A3               [24] 2206 	inc	dptr
      002B94 EF               [12] 2207 	mov	a,r7
      002B95 12 79 22         [24] 2208 	lcall	__gptrput
      002B98 E5 0D            [12] 2209 	mov	a,_bp
      002B9A 24 0A            [12] 2210 	add	a,#0x0a
      002B9C F8               [12] 2211 	mov	r0,a
      002B9D 86 82            [24] 2212 	mov	dpl,@r0
      002B9F 08               [12] 2213 	inc	r0
      002BA0 86 83            [24] 2214 	mov	dph,@r0
      002BA2 08               [12] 2215 	inc	r0
      002BA3 86 F0            [24] 2216 	mov	b,@r0
      002BA5 12 7C 4D         [24] 2217 	lcall	__gptrget
      002BA8 FD               [12] 2218 	mov	r5,a
      002BA9 A3               [24] 2219 	inc	dptr
      002BAA 12 7C 4D         [24] 2220 	lcall	__gptrget
      002BAD FE               [12] 2221 	mov	r6,a
      002BAE A3               [24] 2222 	inc	dptr
      002BAF 12 7C 4D         [24] 2223 	lcall	__gptrget
      002BB2 FF               [12] 2224 	mov	r7,a
      002BB3 74 02            [12] 2225 	mov	a,#0x02
      002BB5 2D               [12] 2226 	add	a,r5
      002BB6 FD               [12] 2227 	mov	r5,a
      002BB7 74 00            [12] 2228 	mov	a,#0x00
      002BB9 3E               [12] 2229 	addc	a,r6
      002BBA FE               [12] 2230 	mov	r6,a
      002BBB 8D 82            [24] 2231 	mov	dpl,r5
      002BBD 8E 83            [24] 2232 	mov	dph,r6
      002BBF 8F F0            [24] 2233 	mov	b,r7
      002BC1 EA               [12] 2234 	mov	a,r2
      002BC2 12 79 22         [24] 2235 	lcall	__gptrput
      002BC5 A3               [24] 2236 	inc	dptr
      002BC6 EB               [12] 2237 	mov	a,r3
      002BC7 12 79 22         [24] 2238 	lcall	__gptrput
      002BCA A3               [24] 2239 	inc	dptr
      002BCB EC               [12] 2240 	mov	a,r4
      002BCC 12 79 22         [24] 2241 	lcall	__gptrput
      002BCF E5 0D            [12] 2242 	mov	a,_bp
      002BD1 24 0A            [12] 2243 	add	a,#0x0a
      002BD3 F8               [12] 2244 	mov	r0,a
      002BD4 86 82            [24] 2245 	mov	dpl,@r0
      002BD6 08               [12] 2246 	inc	r0
      002BD7 86 83            [24] 2247 	mov	dph,@r0
      002BD9 08               [12] 2248 	inc	r0
      002BDA 86 F0            [24] 2249 	mov	b,@r0
      002BDC EA               [12] 2250 	mov	a,r2
      002BDD 12 79 22         [24] 2251 	lcall	__gptrput
      002BE0 A3               [24] 2252 	inc	dptr
      002BE1 EB               [12] 2253 	mov	a,r3
      002BE2 12 79 22         [24] 2254 	lcall	__gptrput
      002BE5 A3               [24] 2255 	inc	dptr
      002BE6 EC               [12] 2256 	mov	a,r4
      002BE7 12 79 22         [24] 2257 	lcall	__gptrput
      002BEA 74 0B            [12] 2258 	mov	a,#0x0b
      002BEC 2A               [12] 2259 	add	a,r2
      002BED FA               [12] 2260 	mov	r2,a
      002BEE 74 00            [12] 2261 	mov	a,#0x00
      002BF0 3B               [12] 2262 	addc	a,r3
      002BF1 FB               [12] 2263 	mov	r3,a
      002BF2 E5 0D            [12] 2264 	mov	a,_bp
      002BF4 24 07            [12] 2265 	add	a,#0x07
      002BF6 F8               [12] 2266 	mov	r0,a
      002BF7 86 82            [24] 2267 	mov	dpl,@r0
      002BF9 08               [12] 2268 	inc	r0
      002BFA 86 83            [24] 2269 	mov	dph,@r0
      002BFC 08               [12] 2270 	inc	r0
      002BFD 86 F0            [24] 2271 	mov	b,@r0
      002BFF 12 7C 4D         [24] 2272 	lcall	__gptrget
      002C02 FF               [12] 2273 	mov	r7,a
      002C03 EF               [12] 2274 	mov	a,r7
      002C04 75 F0 0C         [24] 2275 	mov	b,#0x0c
      002C07 A4               [48] 2276 	mul	ab
      002C08 24 16            [12] 2277 	add	a,#_pxReadyTasksLists
      002C0A FE               [12] 2278 	mov	r6,a
      002C0B 74 00            [12] 2279 	mov	a,#(_pxReadyTasksLists >> 8)
      002C0D 35 F0            [12] 2280 	addc	a,b
      002C0F FF               [12] 2281 	mov	r7,a
      002C10 7D 00            [12] 2282 	mov	r5,#0x00
      002C12 8A 82            [24] 2283 	mov	dpl,r2
      002C14 8B 83            [24] 2284 	mov	dph,r3
      002C16 8C F0            [24] 2285 	mov	b,r4
      002C18 EE               [12] 2286 	mov	a,r6
      002C19 12 79 22         [24] 2287 	lcall	__gptrput
      002C1C A3               [24] 2288 	inc	dptr
      002C1D EF               [12] 2289 	mov	a,r7
      002C1E 12 79 22         [24] 2290 	lcall	__gptrput
      002C21 A3               [24] 2291 	inc	dptr
      002C22 ED               [12] 2292 	mov	a,r5
      002C23 12 79 22         [24] 2293 	lcall	__gptrput
      002C26 E5 0D            [12] 2294 	mov	a,_bp
      002C28 24 07            [12] 2295 	add	a,#0x07
      002C2A F8               [12] 2296 	mov	r0,a
      002C2B 86 82            [24] 2297 	mov	dpl,@r0
      002C2D 08               [12] 2298 	inc	r0
      002C2E 86 83            [24] 2299 	mov	dph,@r0
      002C30 08               [12] 2300 	inc	r0
      002C31 86 F0            [24] 2301 	mov	b,@r0
      002C33 12 7C 4D         [24] 2302 	lcall	__gptrget
      002C36 FF               [12] 2303 	mov	r7,a
      002C37 EF               [12] 2304 	mov	a,r7
      002C38 75 F0 0C         [24] 2305 	mov	b,#0x0c
      002C3B A4               [48] 2306 	mul	ab
      002C3C 24 16            [12] 2307 	add	a,#_pxReadyTasksLists
      002C3E FE               [12] 2308 	mov	r6,a
      002C3F 74 00            [12] 2309 	mov	a,#(_pxReadyTasksLists >> 8)
      002C41 35 F0            [12] 2310 	addc	a,b
      002C43 FF               [12] 2311 	mov	r7,a
      002C44 8E 82            [24] 2312 	mov	dpl,r6
      002C46 8F 83            [24] 2313 	mov	dph,r7
      002C48 E0               [24] 2314 	movx	a,@dptr
      002C49 FD               [12] 2315 	mov	r5,a
      002C4A 0D               [12] 2316 	inc	r5
      002C4B 8E 82            [24] 2317 	mov	dpl,r6
      002C4D 8F 83            [24] 2318 	mov	dph,r7
      002C4F ED               [12] 2319 	mov	a,r5
      002C50 F0               [24] 2320 	movx	@dptr,a
                           00070D  2321 	C$tasks.c$1133$1_0$185 ==.
                                   2322 ;	tasks.c:1133: taskEXIT_CRITICAL();
      002C51 D0 E0            [24] 2323 	pop ACC 
      002C53 53 E0 80         [24] 2324 	anl	_ACC,#0x80
      002C56 E5 E0            [12] 2325 	mov	a,_ACC
      002C58 42 A8            [12] 2326 	orl	_IE,a
      002C5A D0 E0            [24] 2327 	pop ACC 
                           000718  2328 	C$tasks.c$1135$1_0$185 ==.
                                   2329 ;	tasks.c:1135: if( xSchedulerRunning != pdFALSE )
      002C5C 90 0C 87         [24] 2330 	mov	dptr,#_xSchedulerRunning
      002C5F E0               [24] 2331 	movx	a,@dptr
      002C60 70 03            [24] 2332 	jnz	00146$
      002C62 02 2C 6D         [24] 2333 	ljmp	00114$
      002C65                       2334 00146$:
                           000721  2335 	C$tasks.c$1139$2_0$198 ==.
                                   2336 ;	tasks.c:1139: if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
      002C65 90 0C 7F         [24] 2337 	mov	dptr,#_pxCurrentTCB
      002C68 E0               [24] 2338 	movx	a,@dptr
      002C69 A3               [24] 2339 	inc	dptr
      002C6A E0               [24] 2340 	movx	a,@dptr
      002C6B A3               [24] 2341 	inc	dptr
      002C6C E0               [24] 2342 	movx	a,@dptr
      002C6D                       2343 00114$:
                           000729  2344 	C$tasks.c$1152$1_0$185 ==.
                                   2345 ;	tasks.c:1152: }
      002C6D 85 0D 81         [24] 2346 	mov	sp,_bp
      002C70 D0 0D            [24] 2347 	pop	_bp
                           00072E  2348 	C$tasks.c$1152$1_0$185 ==.
                           00072E  2349 	XFtasks$prvAddNewTaskToReadyList$0$0 ==.
      002C72 22               [24] 2350 	ret
                                   2351 ;------------------------------------------------------------
                                   2352 ;Allocation info for local variables in function 'vTaskDelete'
                                   2353 ;------------------------------------------------------------
                                   2354 ;xTaskToDelete             Allocated to registers r5 r6 r7 
                                   2355 ;pxTCB                     Allocated to stack - _bp +1
                                   2356 ;------------------------------------------------------------
                           00072F  2357 	G$vTaskDelete$0$0 ==.
                           00072F  2358 	C$tasks.c$1157$1_0$203 ==.
                                   2359 ;	tasks.c:1157: void vTaskDelete( TaskHandle_t xTaskToDelete )
                                   2360 ;	-----------------------------------------
                                   2361 ;	 function vTaskDelete
                                   2362 ;	-----------------------------------------
      002C73                       2363 _vTaskDelete:
      002C73 C0 0D            [24] 2364 	push	_bp
      002C75 85 81 0D         [24] 2365 	mov	_bp,sp
      002C78 05 81            [12] 2366 	inc	sp
      002C7A 05 81            [12] 2367 	inc	sp
      002C7C 05 81            [12] 2368 	inc	sp
      002C7E AD 82            [24] 2369 	mov	r5,dpl
      002C80 AE 83            [24] 2370 	mov	r6,dph
      002C82 AF F0            [24] 2371 	mov	r7,b
                           000740  2372 	C$tasks.c$1161$1_0$203 ==.
                                   2373 ;	tasks.c:1161: taskENTER_CRITICAL();
      002C84 C0 E0            [24] 2374 	push ACC 
      002C86 C0 A8            [24] 2375 	push IE 
                                   2376 ;	assignBit
      002C88 C2 AF            [12] 2377 	clr	_EA
                           000746  2378 	C$tasks.c$1165$2_0$204 ==.
                                   2379 ;	tasks.c:1165: pxTCB = prvGetTCBFromHandle( xTaskToDelete );
      002C8A ED               [12] 2380 	mov	a,r5
      002C8B 4E               [12] 2381 	orl	a,r6
      002C8C 60 03            [24] 2382 	jz	00142$
      002C8E 02 2C 9F         [24] 2383 	ljmp	00116$
      002C91                       2384 00142$:
      002C91 90 0C 7F         [24] 2385 	mov	dptr,#_pxCurrentTCB
      002C94 E0               [24] 2386 	movx	a,@dptr
      002C95 FA               [12] 2387 	mov	r2,a
      002C96 A3               [24] 2388 	inc	dptr
      002C97 E0               [24] 2389 	movx	a,@dptr
      002C98 FB               [12] 2390 	mov	r3,a
      002C99 A3               [24] 2391 	inc	dptr
      002C9A E0               [24] 2392 	movx	a,@dptr
      002C9B FC               [12] 2393 	mov	r4,a
      002C9C 02 2C A5         [24] 2394 	ljmp	00117$
      002C9F                       2395 00116$:
      002C9F 8D 02            [24] 2396 	mov	ar2,r5
      002CA1 8E 03            [24] 2397 	mov	ar3,r6
      002CA3 8F 04            [24] 2398 	mov	ar4,r7
      002CA5                       2399 00117$:
      002CA5 A8 0D            [24] 2400 	mov	r0,_bp
      002CA7 08               [12] 2401 	inc	r0
      002CA8 A6 02            [24] 2402 	mov	@r0,ar2
      002CAA 08               [12] 2403 	inc	r0
      002CAB A6 03            [24] 2404 	mov	@r0,ar3
      002CAD 08               [12] 2405 	inc	r0
      002CAE A6 04            [24] 2406 	mov	@r0,ar4
                           00076C  2407 	C$tasks.c$1168$2_0$204 ==.
                                   2408 ;	tasks.c:1168: if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
      002CB0 A8 0D            [24] 2409 	mov	r0,_bp
      002CB2 08               [12] 2410 	inc	r0
      002CB3 74 03            [12] 2411 	mov	a,#0x03
      002CB5 26               [12] 2412 	add	a,@r0
      002CB6 FA               [12] 2413 	mov	r2,a
      002CB7 74 00            [12] 2414 	mov	a,#0x00
      002CB9 08               [12] 2415 	inc	r0
      002CBA 36               [12] 2416 	addc	a,@r0
      002CBB FB               [12] 2417 	mov	r3,a
      002CBC 08               [12] 2418 	inc	r0
      002CBD 86 04            [24] 2419 	mov	ar4,@r0
      002CBF 8A 82            [24] 2420 	mov	dpl,r2
      002CC1 8B 83            [24] 2421 	mov	dph,r3
      002CC3 8C F0            [24] 2422 	mov	b,r4
      002CC5 12 71 E3         [24] 2423 	lcall	_uxListRemove
                           000784  2424 	C$tasks.c$1178$2_0$204 ==.
                                   2425 ;	tasks.c:1178: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
      002CC8 A8 0D            [24] 2426 	mov	r0,_bp
      002CCA 08               [12] 2427 	inc	r0
      002CCB 74 11            [12] 2428 	mov	a,#0x11
      002CCD 26               [12] 2429 	add	a,@r0
      002CCE FA               [12] 2430 	mov	r2,a
      002CCF 74 00            [12] 2431 	mov	a,#0x00
      002CD1 08               [12] 2432 	inc	r0
      002CD2 36               [12] 2433 	addc	a,@r0
      002CD3 FB               [12] 2434 	mov	r3,a
      002CD4 08               [12] 2435 	inc	r0
      002CD5 86 04            [24] 2436 	mov	ar4,@r0
      002CD7 A8 0D            [24] 2437 	mov	r0,_bp
      002CD9 08               [12] 2438 	inc	r0
      002CDA 74 1C            [12] 2439 	mov	a,#0x1c
      002CDC 26               [12] 2440 	add	a,@r0
      002CDD FD               [12] 2441 	mov	r5,a
      002CDE 74 00            [12] 2442 	mov	a,#0x00
      002CE0 08               [12] 2443 	inc	r0
      002CE1 36               [12] 2444 	addc	a,@r0
      002CE2 FE               [12] 2445 	mov	r6,a
      002CE3 08               [12] 2446 	inc	r0
      002CE4 86 07            [24] 2447 	mov	ar7,@r0
      002CE6 8D 82            [24] 2448 	mov	dpl,r5
      002CE8 8E 83            [24] 2449 	mov	dph,r6
      002CEA 8F F0            [24] 2450 	mov	b,r7
      002CEC 12 7C 4D         [24] 2451 	lcall	__gptrget
      002CEF FD               [12] 2452 	mov	r5,a
      002CF0 A3               [24] 2453 	inc	dptr
      002CF1 12 7C 4D         [24] 2454 	lcall	__gptrget
      002CF4 FE               [12] 2455 	mov	r6,a
      002CF5 A3               [24] 2456 	inc	dptr
      002CF6 12 7C 4D         [24] 2457 	lcall	__gptrget
      002CF9 FF               [12] 2458 	mov	r7,a
      002CFA ED               [12] 2459 	mov	a,r5
      002CFB 4E               [12] 2460 	orl	a,r6
      002CFC 70 03            [24] 2461 	jnz	00143$
      002CFE 02 2D 0A         [24] 2462 	ljmp	00104$
      002D01                       2463 00143$:
                           0007BD  2464 	C$tasks.c$1180$3_0$207 ==.
                                   2465 ;	tasks.c:1180: ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
      002D01 8A 82            [24] 2466 	mov	dpl,r2
      002D03 8B 83            [24] 2467 	mov	dph,r3
      002D05 8C F0            [24] 2468 	mov	b,r4
      002D07 12 71 E3         [24] 2469 	lcall	_uxListRemove
      002D0A                       2470 00104$:
                           0007C6  2471 	C$tasks.c$1191$2_0$204 ==.
                                   2472 ;	tasks.c:1191: uxTaskNumber++;
      002D0A 90 0C 8C         [24] 2473 	mov	dptr,#_uxTaskNumber
      002D0D E0               [24] 2474 	movx	a,@dptr
      002D0E 24 01            [12] 2475 	add	a,#0x01
      002D10 F0               [24] 2476 	movx	@dptr,a
                           0007CD  2477 	C$tasks.c$1193$2_0$204 ==.
                                   2478 ;	tasks.c:1193: if( pxTCB == pxCurrentTCB )
      002D11 90 0C 7F         [24] 2479 	mov	dptr,#_pxCurrentTCB
      002D14 E0               [24] 2480 	movx	a,@dptr
      002D15 FD               [12] 2481 	mov	r5,a
      002D16 A3               [24] 2482 	inc	dptr
      002D17 E0               [24] 2483 	movx	a,@dptr
      002D18 FE               [12] 2484 	mov	r6,a
      002D19 A3               [24] 2485 	inc	dptr
      002D1A E0               [24] 2486 	movx	a,@dptr
      002D1B FF               [12] 2487 	mov	r7,a
      002D1C A8 0D            [24] 2488 	mov	r0,_bp
      002D1E 08               [12] 2489 	inc	r0
      002D1F C0 05            [24] 2490 	push	ar5
      002D21 C0 06            [24] 2491 	push	ar6
      002D23 C0 07            [24] 2492 	push	ar7
      002D25 86 82            [24] 2493 	mov	dpl,@r0
      002D27 08               [12] 2494 	inc	r0
      002D28 86 83            [24] 2495 	mov	dph,@r0
      002D2A 08               [12] 2496 	inc	r0
      002D2B 86 F0            [24] 2497 	mov	b,@r0
      002D2D 12 00 31         [24] 2498 	lcall	___gptr_cmp
      002D30 15 81            [12] 2499 	dec	sp
      002D32 15 81            [12] 2500 	dec	sp
      002D34 15 81            [12] 2501 	dec	sp
      002D36 70 02            [24] 2502 	jnz	00144$
      002D38 80 03            [24] 2503 	sjmp	00145$
      002D3A                       2504 00144$:
      002D3A 02 2D 6E         [24] 2505 	ljmp	00106$
      002D3D                       2506 00145$:
                           0007F9  2507 	C$tasks.c$1200$3_0$209 ==.
                                   2508 ;	tasks.c:1200: vListInsertEnd( &xTasksWaitingTermination, &( pxTCB->xStateListItem ) );
      002D3D A8 0D            [24] 2509 	mov	r0,_bp
      002D3F 08               [12] 2510 	inc	r0
      002D40 74 03            [12] 2511 	mov	a,#0x03
      002D42 26               [12] 2512 	add	a,@r0
      002D43 FD               [12] 2513 	mov	r5,a
      002D44 74 00            [12] 2514 	mov	a,#0x00
      002D46 08               [12] 2515 	inc	r0
      002D47 36               [12] 2516 	addc	a,@r0
      002D48 FE               [12] 2517 	mov	r6,a
      002D49 08               [12] 2518 	inc	r0
      002D4A 86 07            [24] 2519 	mov	ar7,@r0
      002D4C C0 05            [24] 2520 	push	ar5
      002D4E C0 06            [24] 2521 	push	ar6
      002D50 C0 07            [24] 2522 	push	ar7
      002D52 75 82 70         [24] 2523 	mov	dpl,#_xTasksWaitingTermination
      002D55 75 83 00         [24] 2524 	mov	dph,#(_xTasksWaitingTermination >> 8)
      002D58 75 F0 00         [24] 2525 	mov	b,#0x00
      002D5B 12 6E 6F         [24] 2526 	lcall	_vListInsertEnd
      002D5E 15 81            [12] 2527 	dec	sp
      002D60 15 81            [12] 2528 	dec	sp
      002D62 15 81            [12] 2529 	dec	sp
                           000820  2530 	C$tasks.c$1205$3_0$209 ==.
                                   2531 ;	tasks.c:1205: ++uxDeletedTasksWaitingCleanUp;
      002D64 90 0C 82         [24] 2532 	mov	dptr,#_uxDeletedTasksWaitingCleanUp
      002D67 E0               [24] 2533 	movx	a,@dptr
      002D68 24 01            [12] 2534 	add	a,#0x01
      002D6A F0               [24] 2535 	movx	@dptr,a
      002D6B 02 2D 77         [24] 2536 	ljmp	00107$
      002D6E                       2537 00106$:
                           00082A  2538 	C$tasks.c$1220$3_0$210 ==.
                                   2539 ;	tasks.c:1220: --uxCurrentNumberOfTasks;
      002D6E 90 0C 83         [24] 2540 	mov	dptr,#_uxCurrentNumberOfTasks
      002D71 E0               [24] 2541 	movx	a,@dptr
      002D72 14               [12] 2542 	dec	a
      002D73 F0               [24] 2543 	movx	@dptr,a
                           000830  2544 	C$tasks.c$1225$3_0$210 ==.
                                   2545 ;	tasks.c:1225: prvResetNextTaskUnblockTime();
      002D74 12 50 F0         [24] 2546 	lcall	_prvResetNextTaskUnblockTime
      002D77                       2547 00107$:
                           000833  2548 	C$tasks.c$1228$1_0$203 ==.
                                   2549 ;	tasks.c:1228: taskEXIT_CRITICAL();
      002D77 D0 E0            [24] 2550 	pop ACC 
      002D79 53 E0 80         [24] 2551 	anl	_ACC,#0x80
      002D7C E5 E0            [12] 2552 	mov	a,_ACC
      002D7E 42 A8            [12] 2553 	orl	_IE,a
      002D80 D0 E0            [24] 2554 	pop ACC 
                           00083E  2555 	C$tasks.c$1233$1_0$203 ==.
                                   2556 ;	tasks.c:1233: if( pxTCB != pxCurrentTCB )
      002D82 90 0C 7F         [24] 2557 	mov	dptr,#_pxCurrentTCB
      002D85 E0               [24] 2558 	movx	a,@dptr
      002D86 FD               [12] 2559 	mov	r5,a
      002D87 A3               [24] 2560 	inc	dptr
      002D88 E0               [24] 2561 	movx	a,@dptr
      002D89 FE               [12] 2562 	mov	r6,a
      002D8A A3               [24] 2563 	inc	dptr
      002D8B E0               [24] 2564 	movx	a,@dptr
      002D8C FF               [12] 2565 	mov	r7,a
      002D8D A8 0D            [24] 2566 	mov	r0,_bp
      002D8F 08               [12] 2567 	inc	r0
      002D90 C0 05            [24] 2568 	push	ar5
      002D92 C0 06            [24] 2569 	push	ar6
      002D94 C0 07            [24] 2570 	push	ar7
      002D96 86 82            [24] 2571 	mov	dpl,@r0
      002D98 08               [12] 2572 	inc	r0
      002D99 86 83            [24] 2573 	mov	dph,@r0
      002D9B 08               [12] 2574 	inc	r0
      002D9C 86 F0            [24] 2575 	mov	b,@r0
      002D9E 12 00 31         [24] 2576 	lcall	___gptr_cmp
      002DA1 15 81            [12] 2577 	dec	sp
      002DA3 15 81            [12] 2578 	dec	sp
      002DA5 15 81            [12] 2579 	dec	sp
      002DA7 70 03            [24] 2580 	jnz	00146$
      002DA9 02 2D BA         [24] 2581 	ljmp	00109$
      002DAC                       2582 00146$:
                           000868  2583 	C$tasks.c$1235$2_0$211 ==.
                                   2584 ;	tasks.c:1235: prvDeleteTCB( pxTCB );
      002DAC A8 0D            [24] 2585 	mov	r0,_bp
      002DAE 08               [12] 2586 	inc	r0
      002DAF 86 82            [24] 2587 	mov	dpl,@r0
      002DB1 08               [12] 2588 	inc	r0
      002DB2 86 83            [24] 2589 	mov	dph,@r0
      002DB4 08               [12] 2590 	inc	r0
      002DB5 86 F0            [24] 2591 	mov	b,@r0
      002DB7 12 50 AD         [24] 2592 	lcall	_prvDeleteTCB
      002DBA                       2593 00109$:
                           000876  2594 	C$tasks.c$1240$1_0$203 ==.
                                   2595 ;	tasks.c:1240: if( xSchedulerRunning != pdFALSE )
      002DBA 90 0C 87         [24] 2596 	mov	dptr,#_xSchedulerRunning
      002DBD E0               [24] 2597 	movx	a,@dptr
      002DBE 70 03            [24] 2598 	jnz	00147$
      002DC0 02 2D F2         [24] 2599 	ljmp	00114$
      002DC3                       2600 00147$:
                           00087F  2601 	C$tasks.c$1242$2_0$212 ==.
                                   2602 ;	tasks.c:1242: if( pxTCB == pxCurrentTCB )
      002DC3 90 0C 7F         [24] 2603 	mov	dptr,#_pxCurrentTCB
      002DC6 E0               [24] 2604 	movx	a,@dptr
      002DC7 FD               [12] 2605 	mov	r5,a
      002DC8 A3               [24] 2606 	inc	dptr
      002DC9 E0               [24] 2607 	movx	a,@dptr
      002DCA FE               [12] 2608 	mov	r6,a
      002DCB A3               [24] 2609 	inc	dptr
      002DCC E0               [24] 2610 	movx	a,@dptr
      002DCD FF               [12] 2611 	mov	r7,a
      002DCE A8 0D            [24] 2612 	mov	r0,_bp
      002DD0 08               [12] 2613 	inc	r0
      002DD1 C0 05            [24] 2614 	push	ar5
      002DD3 C0 06            [24] 2615 	push	ar6
      002DD5 C0 07            [24] 2616 	push	ar7
      002DD7 86 82            [24] 2617 	mov	dpl,@r0
      002DD9 08               [12] 2618 	inc	r0
      002DDA 86 83            [24] 2619 	mov	dph,@r0
      002DDC 08               [12] 2620 	inc	r0
      002DDD 86 F0            [24] 2621 	mov	b,@r0
      002DDF 12 00 31         [24] 2622 	lcall	___gptr_cmp
      002DE2 15 81            [12] 2623 	dec	sp
      002DE4 15 81            [12] 2624 	dec	sp
      002DE6 15 81            [12] 2625 	dec	sp
      002DE8 70 02            [24] 2626 	jnz	00148$
      002DEA 80 03            [24] 2627 	sjmp	00149$
      002DEC                       2628 00148$:
      002DEC 02 2D F2         [24] 2629 	ljmp	00114$
      002DEF                       2630 00149$:
                           0008AB  2631 	C$tasks.c$1245$3_0$213 ==.
                                   2632 ;	tasks.c:1245: portYIELD_WITHIN_API();
      002DEF 12 77 3C         [24] 2633 	lcall	_vPortYield
      002DF2                       2634 00114$:
                           0008AE  2635 	C$tasks.c$1252$1_0$203 ==.
                                   2636 ;	tasks.c:1252: }
      002DF2 85 0D 81         [24] 2637 	mov	sp,_bp
      002DF5 D0 0D            [24] 2638 	pop	_bp
                           0008B3  2639 	C$tasks.c$1252$1_0$203 ==.
                           0008B3  2640 	XG$vTaskDelete$0$0 ==.
      002DF7 22               [24] 2641 	ret
                                   2642 ;------------------------------------------------------------
                                   2643 ;Allocation info for local variables in function 'vTaskDelay'
                                   2644 ;------------------------------------------------------------
                                   2645 ;xTicksToDelay             Allocated to registers r6 r7 
                                   2646 ;xAlreadyYielded           Allocated to registers r5 
                                   2647 ;------------------------------------------------------------
                           0008B4  2648 	G$vTaskDelay$0$0 ==.
                           0008B4  2649 	C$tasks.c$1346$1_0$216 ==.
                                   2650 ;	tasks.c:1346: void vTaskDelay( const TickType_t xTicksToDelay )
                                   2651 ;	-----------------------------------------
                                   2652 ;	 function vTaskDelay
                                   2653 ;	-----------------------------------------
      002DF8                       2654 _vTaskDelay:
      002DF8 AE 82            [24] 2655 	mov	r6,dpl
      002DFA AF 83            [24] 2656 	mov	r7,dph
                           0008B8  2657 	C$tasks.c$1348$2_0$216 ==.
                                   2658 ;	tasks.c:1348: BaseType_t xAlreadyYielded = pdFALSE;
      002DFC 7D 00            [12] 2659 	mov	r5,#0x00
                           0008BA  2660 	C$tasks.c$1351$1_0$216 ==.
                                   2661 ;	tasks.c:1351: if( xTicksToDelay > ( TickType_t ) 0U )
      002DFE EE               [12] 2662 	mov	a,r6
      002DFF 4F               [12] 2663 	orl	a,r7
      002E00 70 03            [24] 2664 	jnz	00115$
      002E02 02 2E 24         [24] 2665 	ljmp	00102$
      002E05                       2666 00115$:
                           0008C1  2667 	C$tasks.c$1354$2_0$217 ==.
                                   2668 ;	tasks.c:1354: vTaskSuspendAll();
      002E05 C0 07            [24] 2669 	push	ar7
      002E07 C0 06            [24] 2670 	push	ar6
      002E09 12 2E 9C         [24] 2671 	lcall	_vTaskSuspendAll
      002E0C D0 06            [24] 2672 	pop	ar6
      002E0E D0 07            [24] 2673 	pop	ar7
                           0008CC  2674 	C$tasks.c$1365$3_0$218 ==.
                                   2675 ;	tasks.c:1365: prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
      002E10 74 00            [12] 2676 	mov	a,#0x00
      002E12 C0 E0            [24] 2677 	push	acc
      002E14 8E 82            [24] 2678 	mov	dpl,r6
      002E16 8F 83            [24] 2679 	mov	dph,r7
      002E18 12 6C 3A         [24] 2680 	lcall	_prvAddCurrentTaskToDelayedList
      002E1B 15 81            [12] 2681 	dec	sp
                           0008D9  2682 	C$tasks.c$1367$2_0$217 ==.
                                   2683 ;	tasks.c:1367: xAlreadyYielded = xTaskResumeAll();
      002E1D 12 2E A4         [24] 2684 	lcall	_xTaskResumeAll
      002E20 AF 82            [24] 2685 	mov	r7,dpl
      002E22 8F 05            [24] 2686 	mov	ar5,r7
      002E24                       2687 00102$:
                           0008E0  2688 	C$tasks.c$1376$1_0$216 ==.
                                   2689 ;	tasks.c:1376: if( xAlreadyYielded == pdFALSE )
      002E24 ED               [12] 2690 	mov	a,r5
      002E25 60 03            [24] 2691 	jz	00116$
      002E27 02 2E 2D         [24] 2692 	ljmp	00105$
      002E2A                       2693 00116$:
                           0008E6  2694 	C$tasks.c$1378$2_0$220 ==.
                                   2695 ;	tasks.c:1378: portYIELD_WITHIN_API();
      002E2A 12 77 3C         [24] 2696 	lcall	_vPortYield
      002E2D                       2697 00105$:
                           0008E9  2698 	C$tasks.c$1384$1_0$216 ==.
                                   2699 ;	tasks.c:1384: }
                           0008E9  2700 	C$tasks.c$1384$1_0$216 ==.
                           0008E9  2701 	XG$vTaskDelay$0$0 ==.
      002E2D 22               [24] 2702 	ret
                                   2703 ;------------------------------------------------------------
                                   2704 ;Allocation info for local variables in function 'vTaskStartScheduler'
                                   2705 ;------------------------------------------------------------
                                   2706 ;xReturn                   Allocated to registers r7 
                                   2707 ;------------------------------------------------------------
                           0008EA  2708 	G$vTaskStartScheduler$0$0 ==.
                           0008EA  2709 	C$tasks.c$1997$1_0$223 ==.
                                   2710 ;	tasks.c:1997: void vTaskStartScheduler( void )
                                   2711 ;	-----------------------------------------
                                   2712 ;	 function vTaskStartScheduler
                                   2713 ;	-----------------------------------------
      002E2E                       2714 _vTaskStartScheduler:
                           0008EA  2715 	C$tasks.c$2036$2_0$224 ==.
                                   2716 ;	tasks.c:2036: &xIdleTaskHandle ); /*lint !e961 MISRA exception, justified as it is not a redundant explicit cast to all supported compilers. */
                           0008EA  2717 	C$tasks.c$2032$2_0$224 ==.
                                   2718 ;	tasks.c:2032: configIDLE_TASK_NAME,
                           0008EA  2719 	C$tasks.c$2031$2_0$224 ==.
                                   2720 ;	tasks.c:2031: xReturn = xTaskCreate( prvIdleTask,
      002E2E 74 8F            [12] 2721 	mov	a,#_xIdleTaskHandle
      002E30 C0 E0            [24] 2722 	push	acc
      002E32 74 0C            [12] 2723 	mov	a,#(_xIdleTaskHandle >> 8)
      002E34 C0 E0            [24] 2724 	push	acc
      002E36 74 00            [12] 2725 	mov	a,#0x00
      002E38 C0 E0            [24] 2726 	push	acc
      002E3A C0 E0            [24] 2727 	push	acc
      002E3C C0 E0            [24] 2728 	push	acc
      002E3E C0 E0            [24] 2729 	push	acc
      002E40 C0 E0            [24] 2730 	push	acc
      002E42 74 A7            [12] 2731 	mov	a,#0xa7
      002E44 C0 E0            [24] 2732 	push	acc
      002E46 74 00            [12] 2733 	mov	a,#0x00
      002E48 C0 E0            [24] 2734 	push	acc
      002E4A 74 41            [12] 2735 	mov	a,#___str_0
      002E4C C0 E0            [24] 2736 	push	acc
      002E4E 74 7D            [12] 2737 	mov	a,#(___str_0 >> 8)
      002E50 C0 E0            [24] 2738 	push	acc
      002E52 74 80            [12] 2739 	mov	a,#0x80
      002E54 C0 E0            [24] 2740 	push	acc
      002E56 75 82 B6         [24] 2741 	mov	dpl,#_prvIdleTask
      002E59 75 83 4F         [24] 2742 	mov	dph,#(_prvIdleTask >> 8)
      002E5C 12 25 44         [24] 2743 	lcall	_xTaskCreate
      002E5F AF 82            [24] 2744 	mov	r7,dpl
      002E61 E5 81            [12] 2745 	mov	a,sp
      002E63 24 F4            [12] 2746 	add	a,#0xf4
      002E65 F5 81            [12] 2747 	mov	sp,a
                           000923  2748 	C$tasks.c$2053$1_0$223 ==.
                                   2749 ;	tasks.c:2053: if( xReturn == pdPASS )
      002E67 BF 01 02         [24] 2750 	cjne	r7,#0x01,00111$
      002E6A 80 03            [24] 2751 	sjmp	00112$
      002E6C                       2752 00111$:
      002E6C 02 2E 8A         [24] 2753 	ljmp	00104$
      002E6F                       2754 00112$:
                           00092B  2755 	C$tasks.c$2069$2_0$225 ==.
                                   2756 ;	tasks.c:2069: portDISABLE_INTERRUPTS();
                                   2757 ;	assignBit
      002E6F C2 AF            [12] 2758 	clr	_EA
                           00092D  2759 	C$tasks.c$2081$2_0$225 ==.
                                   2760 ;	tasks.c:2081: xNextTaskUnblockTime = portMAX_DELAY;
      002E71 90 0C 8D         [24] 2761 	mov	dptr,#_xNextTaskUnblockTime
      002E74 74 FF            [12] 2762 	mov	a,#0xff
      002E76 F0               [24] 2763 	movx	@dptr,a
      002E77 A3               [24] 2764 	inc	dptr
      002E78 F0               [24] 2765 	movx	@dptr,a
                           000935  2766 	C$tasks.c$2082$2_0$225 ==.
                                   2767 ;	tasks.c:2082: xSchedulerRunning = pdTRUE;
      002E79 90 0C 87         [24] 2768 	mov	dptr,#_xSchedulerRunning
      002E7C 74 01            [12] 2769 	mov	a,#0x01
      002E7E F0               [24] 2770 	movx	@dptr,a
                           00093B  2771 	C$tasks.c$2083$2_0$225 ==.
                                   2772 ;	tasks.c:2083: xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
      002E7F 90 0C 84         [24] 2773 	mov	dptr,#_xTickCount
      002E82 74 00            [12] 2774 	mov	a,#0x00
      002E84 F0               [24] 2775 	movx	@dptr,a
      002E85 A3               [24] 2776 	inc	dptr
      002E86 F0               [24] 2777 	movx	@dptr,a
                           000943  2778 	C$tasks.c$2097$2_0$225 ==.
                                   2779 ;	tasks.c:2097: if( xPortStartScheduler() != pdFALSE )
      002E87 12 76 C1         [24] 2780 	lcall	_xPortStartScheduler
      002E8A                       2781 00104$:
                           000946  2782 	C$tasks.c$2121$1_0$223 ==.
                                   2783 ;	tasks.c:2121: ( void ) uxTopUsedPriority;
      002E8A 90 7D 40         [24] 2784 	mov	dptr,#_uxTopUsedPriority
      002E8D E4               [12] 2785 	clr	a
      002E8E 93               [24] 2786 	movc	a,@a+dptr
      002E8F                       2787 00105$:
                           00094B  2788 	C$tasks.c$2122$1_0$223 ==.
                                   2789 ;	tasks.c:2122: }
                           00094B  2790 	C$tasks.c$2122$1_0$223 ==.
                           00094B  2791 	XG$vTaskStartScheduler$0$0 ==.
      002E8F 22               [24] 2792 	ret
                                   2793 ;------------------------------------------------------------
                                   2794 ;Allocation info for local variables in function 'vTaskEndScheduler'
                                   2795 ;------------------------------------------------------------
                           00094C  2796 	G$vTaskEndScheduler$0$0 ==.
                           00094C  2797 	C$tasks.c$2125$1_0$230 ==.
                                   2798 ;	tasks.c:2125: void vTaskEndScheduler( void )
                                   2799 ;	-----------------------------------------
                                   2800 ;	 function vTaskEndScheduler
                                   2801 ;	-----------------------------------------
      002E90                       2802 _vTaskEndScheduler:
                           00094C  2803 	C$tasks.c$2130$1_0$230 ==.
                                   2804 ;	tasks.c:2130: portDISABLE_INTERRUPTS();
                                   2805 ;	assignBit
      002E90 C2 AF            [12] 2806 	clr	_EA
                           00094E  2807 	C$tasks.c$2131$1_0$230 ==.
                                   2808 ;	tasks.c:2131: xSchedulerRunning = pdFALSE;
      002E92 90 0C 87         [24] 2809 	mov	dptr,#_xSchedulerRunning
      002E95 74 00            [12] 2810 	mov	a,#0x00
      002E97 F0               [24] 2811 	movx	@dptr,a
                           000954  2812 	C$tasks.c$2132$1_0$230 ==.
                                   2813 ;	tasks.c:2132: vPortEndScheduler();
      002E98 12 77 3B         [24] 2814 	lcall	_vPortEndScheduler
      002E9B                       2815 00101$:
                           000957  2816 	C$tasks.c$2133$1_0$230 ==.
                                   2817 ;	tasks.c:2133: }
                           000957  2818 	C$tasks.c$2133$1_0$230 ==.
                           000957  2819 	XG$vTaskEndScheduler$0$0 ==.
      002E9B 22               [24] 2820 	ret
                                   2821 ;------------------------------------------------------------
                                   2822 ;Allocation info for local variables in function 'vTaskSuspendAll'
                                   2823 ;------------------------------------------------------------
                           000958  2824 	G$vTaskSuspendAll$0$0 ==.
                           000958  2825 	C$tasks.c$2136$1_0$232 ==.
                                   2826 ;	tasks.c:2136: void vTaskSuspendAll( void )
                                   2827 ;	-----------------------------------------
                                   2828 ;	 function vTaskSuspendAll
                                   2829 ;	-----------------------------------------
      002E9C                       2830 _vTaskSuspendAll:
                           000958  2831 	C$tasks.c$2149$1_0$232 ==.
                                   2832 ;	tasks.c:2149: ++uxSchedulerSuspended;
      002E9C 90 0C 92         [24] 2833 	mov	dptr,#_uxSchedulerSuspended
      002E9F E0               [24] 2834 	movx	a,@dptr
      002EA0 24 01            [12] 2835 	add	a,#0x01
      002EA2 F0               [24] 2836 	movx	@dptr,a
      002EA3                       2837 00101$:
                           00095F  2838 	C$tasks.c$2154$1_0$232 ==.
                                   2839 ;	tasks.c:2154: }
                           00095F  2840 	C$tasks.c$2154$1_0$232 ==.
                           00095F  2841 	XG$vTaskSuspendAll$0$0 ==.
      002EA3 22               [24] 2842 	ret
                                   2843 ;------------------------------------------------------------
                                   2844 ;Allocation info for local variables in function 'xTaskResumeAll'
                                   2845 ;------------------------------------------------------------
                                   2846 ;pxTCB                     Allocated to stack - _bp +16
                                   2847 ;xAlreadyYielded           Allocated to registers 
                                   2848 ;pxList                    Allocated to stack - _bp +19
                                   2849 ;pxList                    Allocated to stack - _bp +19
                                   2850 ;pxIndex                   Allocated to registers r2 r3 r4 
                                   2851 ;xPendedCounts             Allocated to registers r4 r5 
                                   2852 ;sloc0                     Allocated to stack - _bp +4
                                   2853 ;sloc1                     Allocated to stack - _bp +1
                                   2854 ;sloc2                     Allocated to stack - _bp +7
                                   2855 ;sloc3                     Allocated to stack - _bp +10
                                   2856 ;sloc4                     Allocated to stack - _bp +13
                                   2857 ;------------------------------------------------------------
                           000960  2858 	G$xTaskResumeAll$0$0 ==.
                           000960  2859 	C$tasks.c$2220$1_0$234 ==.
                                   2860 ;	tasks.c:2220: BaseType_t xTaskResumeAll( void )
                                   2861 ;	-----------------------------------------
                                   2862 ;	 function xTaskResumeAll
                                   2863 ;	-----------------------------------------
      002EA4                       2864 _xTaskResumeAll:
      002EA4 C0 0D            [24] 2865 	push	_bp
      002EA6 85 81 0D         [24] 2866 	mov	_bp,sp
      002EA9 E5 81            [12] 2867 	mov	a,sp
      002EAB 24 15            [12] 2868 	add	a,#0x15
      002EAD F5 81            [12] 2869 	mov	sp,a
                           00096B  2870 	C$tasks.c$2222$2_0$234 ==.
                                   2871 ;	tasks.c:2222: TCB_t * pxTCB = NULL;
      002EAF E5 0D            [12] 2872 	mov	a,_bp
      002EB1 24 10            [12] 2873 	add	a,#0x10
      002EB3 F8               [12] 2874 	mov	r0,a
      002EB4 74 00            [12] 2875 	mov	a,#0x00
      002EB6 F6               [12] 2876 	mov	@r0,a
      002EB7 08               [12] 2877 	inc	r0
      002EB8 F6               [12] 2878 	mov	@r0,a
      002EB9 08               [12] 2879 	inc	r0
      002EBA 76 00            [12] 2880 	mov	@r0,#0x00
                           000978  2881 	C$tasks.c$2234$1_0$234 ==.
                                   2882 ;	tasks.c:2234: taskENTER_CRITICAL();
      002EBC C0 E0            [24] 2883 	push ACC 
      002EBE C0 A8            [24] 2884 	push IE 
                                   2885 ;	assignBit
      002EC0 C2 AF            [12] 2886 	clr	_EA
                           00097E  2887 	C$tasks.c$2236$2_0$235 ==.
                                   2888 ;	tasks.c:2236: --uxSchedulerSuspended;
      002EC2 90 0C 92         [24] 2889 	mov	dptr,#_uxSchedulerSuspended
      002EC5 E0               [24] 2890 	movx	a,@dptr
      002EC6 14               [12] 2891 	dec	a
      002EC7 F0               [24] 2892 	movx	@dptr,a
                           000984  2893 	C$tasks.c$2238$2_0$235 ==.
                                   2894 ;	tasks.c:2238: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      002EC8 E0               [24] 2895 	movx	a,@dptr
      002EC9 60 03            [24] 2896 	jz	00180$
      002ECB 02 35 06         [24] 2897 	ljmp	00124$
      002ECE                       2898 00180$:
                           00098A  2899 	C$tasks.c$2240$3_0$236 ==.
                                   2900 ;	tasks.c:2240: if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
      002ECE 90 0C 83         [24] 2901 	mov	dptr,#_uxCurrentNumberOfTasks
      002ED1 E0               [24] 2902 	movx	a,@dptr
      002ED2 70 03            [24] 2903 	jnz	00181$
      002ED4 02 35 06         [24] 2904 	ljmp	00124$
      002ED7                       2905 00181$:
                           000993  2906 	C$tasks.c$2244$5_0$238 ==.
                                   2907 ;	tasks.c:2244: while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
      002ED7                       2908 00109$:
      002ED7 90 00 64         [24] 2909 	mov	dptr,#_xPendingReadyList
      002EDA E0               [24] 2910 	movx	a,@dptr
      002EDB 70 03            [24] 2911 	jnz	00182$
      002EDD 02 34 AF         [24] 2912 	ljmp	00111$
      002EE0                       2913 00182$:
                           00099C  2914 	C$tasks.c$2246$5_0$238 ==.
                                   2915 ;	tasks.c:2246: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      002EE0 90 00 6A         [24] 2916 	mov	dptr,#(_xPendingReadyList + 0x0006)
      002EE3 E0               [24] 2917 	movx	a,@dptr
      002EE4 FA               [12] 2918 	mov	r2,a
      002EE5 A3               [24] 2919 	inc	dptr
      002EE6 E0               [24] 2920 	movx	a,@dptr
      002EE7 FB               [12] 2921 	mov	r3,a
      002EE8 A3               [24] 2922 	inc	dptr
      002EE9 E0               [24] 2923 	movx	a,@dptr
      002EEA FC               [12] 2924 	mov	r4,a
      002EEB 74 08            [12] 2925 	mov	a,#0x08
      002EED 2A               [12] 2926 	add	a,r2
      002EEE FA               [12] 2927 	mov	r2,a
      002EEF 74 00            [12] 2928 	mov	a,#0x00
      002EF1 3B               [12] 2929 	addc	a,r3
      002EF2 FB               [12] 2930 	mov	r3,a
      002EF3 8A 82            [24] 2931 	mov	dpl,r2
      002EF5 8B 83            [24] 2932 	mov	dph,r3
      002EF7 8C F0            [24] 2933 	mov	b,r4
      002EF9 12 7C 4D         [24] 2934 	lcall	__gptrget
      002EFC FA               [12] 2935 	mov	r2,a
      002EFD A3               [24] 2936 	inc	dptr
      002EFE 12 7C 4D         [24] 2937 	lcall	__gptrget
      002F01 FB               [12] 2938 	mov	r3,a
      002F02 A3               [24] 2939 	inc	dptr
      002F03 12 7C 4D         [24] 2940 	lcall	__gptrget
      002F06 FC               [12] 2941 	mov	r4,a
      002F07 E5 0D            [12] 2942 	mov	a,_bp
      002F09 24 10            [12] 2943 	add	a,#0x10
      002F0B F8               [12] 2944 	mov	r0,a
      002F0C A6 02            [24] 2945 	mov	@r0,ar2
      002F0E 08               [12] 2946 	inc	r0
      002F0F A6 03            [24] 2947 	mov	@r0,ar3
      002F11 08               [12] 2948 	inc	r0
      002F12 A6 04            [24] 2949 	mov	@r0,ar4
                           0009D0  2950 	C$tasks.c$2247$6_0$239 ==.
                                   2951 ;	tasks.c:2247: listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
      002F14 E5 0D            [12] 2952 	mov	a,_bp
      002F16 24 10            [12] 2953 	add	a,#0x10
      002F18 F8               [12] 2954 	mov	r0,a
      002F19 74 11            [12] 2955 	mov	a,#0x11
      002F1B 26               [12] 2956 	add	a,@r0
      002F1C FA               [12] 2957 	mov	r2,a
      002F1D 74 00            [12] 2958 	mov	a,#0x00
      002F1F 08               [12] 2959 	inc	r0
      002F20 36               [12] 2960 	addc	a,@r0
      002F21 FB               [12] 2961 	mov	r3,a
      002F22 08               [12] 2962 	inc	r0
      002F23 86 04            [24] 2963 	mov	ar4,@r0
      002F25 E5 0D            [12] 2964 	mov	a,_bp
      002F27 24 10            [12] 2965 	add	a,#0x10
      002F29 F8               [12] 2966 	mov	r0,a
      002F2A 74 1C            [12] 2967 	mov	a,#0x1c
      002F2C 26               [12] 2968 	add	a,@r0
      002F2D FD               [12] 2969 	mov	r5,a
      002F2E 74 00            [12] 2970 	mov	a,#0x00
      002F30 08               [12] 2971 	inc	r0
      002F31 36               [12] 2972 	addc	a,@r0
      002F32 FE               [12] 2973 	mov	r6,a
      002F33 08               [12] 2974 	inc	r0
      002F34 86 07            [24] 2975 	mov	ar7,@r0
      002F36 8D 82            [24] 2976 	mov	dpl,r5
      002F38 8E 83            [24] 2977 	mov	dph,r6
      002F3A 8F F0            [24] 2978 	mov	b,r7
      002F3C E5 0D            [12] 2979 	mov	a,_bp
      002F3E 24 13            [12] 2980 	add	a,#0x13
      002F40 F8               [12] 2981 	mov	r0,a
      002F41 12 7C 4D         [24] 2982 	lcall	__gptrget
      002F44 F6               [12] 2983 	mov	@r0,a
      002F45 A3               [24] 2984 	inc	dptr
      002F46 12 7C 4D         [24] 2985 	lcall	__gptrget
      002F49 08               [12] 2986 	inc	r0
      002F4A F6               [12] 2987 	mov	@r0,a
      002F4B A3               [24] 2988 	inc	dptr
      002F4C 12 7C 4D         [24] 2989 	lcall	__gptrget
      002F4F 08               [12] 2990 	inc	r0
      002F50 F6               [12] 2991 	mov	@r0,a
      002F51 E5 0D            [12] 2992 	mov	a,_bp
      002F53 24 10            [12] 2993 	add	a,#0x10
      002F55 F8               [12] 2994 	mov	r0,a
      002F56 E5 0D            [12] 2995 	mov	a,_bp
      002F58 24 04            [12] 2996 	add	a,#0x04
      002F5A F9               [12] 2997 	mov	r1,a
      002F5B 74 13            [12] 2998 	mov	a,#0x13
      002F5D 26               [12] 2999 	add	a,@r0
      002F5E F7               [12] 3000 	mov	@r1,a
      002F5F 74 00            [12] 3001 	mov	a,#0x00
      002F61 08               [12] 3002 	inc	r0
      002F62 36               [12] 3003 	addc	a,@r0
      002F63 09               [12] 3004 	inc	r1
      002F64 F7               [12] 3005 	mov	@r1,a
      002F65 08               [12] 3006 	inc	r0
      002F66 E6               [12] 3007 	mov	a,@r0
      002F67 09               [12] 3008 	inc	r1
      002F68 F7               [12] 3009 	mov	@r1,a
      002F69 E5 0D            [12] 3010 	mov	a,_bp
      002F6B 24 04            [12] 3011 	add	a,#0x04
      002F6D F8               [12] 3012 	mov	r0,a
      002F6E 86 82            [24] 3013 	mov	dpl,@r0
      002F70 08               [12] 3014 	inc	r0
      002F71 86 83            [24] 3015 	mov	dph,@r0
      002F73 08               [12] 3016 	inc	r0
      002F74 86 F0            [24] 3017 	mov	b,@r0
      002F76 12 7C 4D         [24] 3018 	lcall	__gptrget
      002F79 FD               [12] 3019 	mov	r5,a
      002F7A A3               [24] 3020 	inc	dptr
      002F7B 12 7C 4D         [24] 3021 	lcall	__gptrget
      002F7E FE               [12] 3022 	mov	r6,a
      002F7F A3               [24] 3023 	inc	dptr
      002F80 12 7C 4D         [24] 3024 	lcall	__gptrget
      002F83 FF               [12] 3025 	mov	r7,a
      002F84 E5 0D            [12] 3026 	mov	a,_bp
      002F86 24 07            [12] 3027 	add	a,#0x07
      002F88 F8               [12] 3028 	mov	r0,a
      002F89 74 05            [12] 3029 	mov	a,#0x05
      002F8B 2D               [12] 3030 	add	a,r5
      002F8C F6               [12] 3031 	mov	@r0,a
      002F8D 74 00            [12] 3032 	mov	a,#0x00
      002F8F 3E               [12] 3033 	addc	a,r6
      002F90 08               [12] 3034 	inc	r0
      002F91 F6               [12] 3035 	mov	@r0,a
      002F92 08               [12] 3036 	inc	r0
      002F93 A6 07            [24] 3037 	mov	@r0,ar7
      002F95 E5 0D            [12] 3038 	mov	a,_bp
      002F97 24 10            [12] 3039 	add	a,#0x10
      002F99 F8               [12] 3040 	mov	r0,a
      002F9A A9 0D            [24] 3041 	mov	r1,_bp
      002F9C 09               [12] 3042 	inc	r1
      002F9D 74 16            [12] 3043 	mov	a,#0x16
      002F9F 26               [12] 3044 	add	a,@r0
      002FA0 F7               [12] 3045 	mov	@r1,a
      002FA1 74 00            [12] 3046 	mov	a,#0x00
      002FA3 08               [12] 3047 	inc	r0
      002FA4 36               [12] 3048 	addc	a,@r0
      002FA5 09               [12] 3049 	inc	r1
      002FA6 F7               [12] 3050 	mov	@r1,a
      002FA7 08               [12] 3051 	inc	r0
      002FA8 E6               [12] 3052 	mov	a,@r0
      002FA9 09               [12] 3053 	inc	r1
      002FAA F7               [12] 3054 	mov	@r1,a
      002FAB A8 0D            [24] 3055 	mov	r0,_bp
      002FAD 08               [12] 3056 	inc	r0
      002FAE 86 82            [24] 3057 	mov	dpl,@r0
      002FB0 08               [12] 3058 	inc	r0
      002FB1 86 83            [24] 3059 	mov	dph,@r0
      002FB3 08               [12] 3060 	inc	r0
      002FB4 86 F0            [24] 3061 	mov	b,@r0
      002FB6 12 7C 4D         [24] 3062 	lcall	__gptrget
      002FB9 FD               [12] 3063 	mov	r5,a
      002FBA A3               [24] 3064 	inc	dptr
      002FBB 12 7C 4D         [24] 3065 	lcall	__gptrget
      002FBE FE               [12] 3066 	mov	r6,a
      002FBF A3               [24] 3067 	inc	dptr
      002FC0 12 7C 4D         [24] 3068 	lcall	__gptrget
      002FC3 FF               [12] 3069 	mov	r7,a
      002FC4 E5 0D            [12] 3070 	mov	a,_bp
      002FC6 24 07            [12] 3071 	add	a,#0x07
      002FC8 F8               [12] 3072 	mov	r0,a
      002FC9 86 82            [24] 3073 	mov	dpl,@r0
      002FCB 08               [12] 3074 	inc	r0
      002FCC 86 83            [24] 3075 	mov	dph,@r0
      002FCE 08               [12] 3076 	inc	r0
      002FCF 86 F0            [24] 3077 	mov	b,@r0
      002FD1 ED               [12] 3078 	mov	a,r5
      002FD2 12 79 22         [24] 3079 	lcall	__gptrput
      002FD5 A3               [24] 3080 	inc	dptr
      002FD6 EE               [12] 3081 	mov	a,r6
      002FD7 12 79 22         [24] 3082 	lcall	__gptrput
      002FDA A3               [24] 3083 	inc	dptr
      002FDB EF               [12] 3084 	mov	a,r7
      002FDC 12 79 22         [24] 3085 	lcall	__gptrput
      002FDF A8 0D            [24] 3086 	mov	r0,_bp
      002FE1 08               [12] 3087 	inc	r0
      002FE2 86 82            [24] 3088 	mov	dpl,@r0
      002FE4 08               [12] 3089 	inc	r0
      002FE5 86 83            [24] 3090 	mov	dph,@r0
      002FE7 08               [12] 3091 	inc	r0
      002FE8 86 F0            [24] 3092 	mov	b,@r0
      002FEA 12 7C 4D         [24] 3093 	lcall	__gptrget
      002FED FD               [12] 3094 	mov	r5,a
      002FEE A3               [24] 3095 	inc	dptr
      002FEF 12 7C 4D         [24] 3096 	lcall	__gptrget
      002FF2 FE               [12] 3097 	mov	r6,a
      002FF3 A3               [24] 3098 	inc	dptr
      002FF4 12 7C 4D         [24] 3099 	lcall	__gptrget
      002FF7 FF               [12] 3100 	mov	r7,a
      002FF8 E5 0D            [12] 3101 	mov	a,_bp
      002FFA 24 07            [12] 3102 	add	a,#0x07
      002FFC F8               [12] 3103 	mov	r0,a
      002FFD 74 02            [12] 3104 	mov	a,#0x02
      002FFF 2D               [12] 3105 	add	a,r5
      003000 F6               [12] 3106 	mov	@r0,a
      003001 74 00            [12] 3107 	mov	a,#0x00
      003003 3E               [12] 3108 	addc	a,r6
      003004 08               [12] 3109 	inc	r0
      003005 F6               [12] 3110 	mov	@r0,a
      003006 08               [12] 3111 	inc	r0
      003007 A6 07            [24] 3112 	mov	@r0,ar7
      003009 E5 0D            [12] 3113 	mov	a,_bp
      00300B 24 04            [12] 3114 	add	a,#0x04
      00300D F8               [12] 3115 	mov	r0,a
      00300E 86 82            [24] 3116 	mov	dpl,@r0
      003010 08               [12] 3117 	inc	r0
      003011 86 83            [24] 3118 	mov	dph,@r0
      003013 08               [12] 3119 	inc	r0
      003014 86 F0            [24] 3120 	mov	b,@r0
      003016 12 7C 4D         [24] 3121 	lcall	__gptrget
      003019 FD               [12] 3122 	mov	r5,a
      00301A A3               [24] 3123 	inc	dptr
      00301B 12 7C 4D         [24] 3124 	lcall	__gptrget
      00301E FE               [12] 3125 	mov	r6,a
      00301F A3               [24] 3126 	inc	dptr
      003020 12 7C 4D         [24] 3127 	lcall	__gptrget
      003023 FF               [12] 3128 	mov	r7,a
      003024 E5 0D            [12] 3129 	mov	a,_bp
      003026 24 07            [12] 3130 	add	a,#0x07
      003028 F8               [12] 3131 	mov	r0,a
      003029 86 82            [24] 3132 	mov	dpl,@r0
      00302B 08               [12] 3133 	inc	r0
      00302C 86 83            [24] 3134 	mov	dph,@r0
      00302E 08               [12] 3135 	inc	r0
      00302F 86 F0            [24] 3136 	mov	b,@r0
      003031 ED               [12] 3137 	mov	a,r5
      003032 12 79 22         [24] 3138 	lcall	__gptrput
      003035 A3               [24] 3139 	inc	dptr
      003036 EE               [12] 3140 	mov	a,r6
      003037 12 79 22         [24] 3141 	lcall	__gptrput
      00303A A3               [24] 3142 	inc	dptr
      00303B EF               [12] 3143 	mov	a,r7
      00303C 12 79 22         [24] 3144 	lcall	__gptrput
      00303F E5 0D            [12] 3145 	mov	a,_bp
      003041 24 13            [12] 3146 	add	a,#0x13
      003043 F8               [12] 3147 	mov	r0,a
      003044 E5 0D            [12] 3148 	mov	a,_bp
      003046 24 07            [12] 3149 	add	a,#0x07
      003048 F9               [12] 3150 	mov	r1,a
      003049 74 01            [12] 3151 	mov	a,#0x01
      00304B 26               [12] 3152 	add	a,@r0
      00304C F7               [12] 3153 	mov	@r1,a
      00304D 74 00            [12] 3154 	mov	a,#0x00
      00304F 08               [12] 3155 	inc	r0
      003050 36               [12] 3156 	addc	a,@r0
      003051 09               [12] 3157 	inc	r1
      003052 F7               [12] 3158 	mov	@r1,a
      003053 08               [12] 3159 	inc	r0
      003054 E6               [12] 3160 	mov	a,@r0
      003055 09               [12] 3161 	inc	r1
      003056 F7               [12] 3162 	mov	@r1,a
      003057 E5 0D            [12] 3163 	mov	a,_bp
      003059 24 07            [12] 3164 	add	a,#0x07
      00305B F8               [12] 3165 	mov	r0,a
      00305C 86 82            [24] 3166 	mov	dpl,@r0
      00305E 08               [12] 3167 	inc	r0
      00305F 86 83            [24] 3168 	mov	dph,@r0
      003061 08               [12] 3169 	inc	r0
      003062 86 F0            [24] 3170 	mov	b,@r0
      003064 12 7C 4D         [24] 3171 	lcall	__gptrget
      003067 FD               [12] 3172 	mov	r5,a
      003068 A3               [24] 3173 	inc	dptr
      003069 12 7C 4D         [24] 3174 	lcall	__gptrget
      00306C FE               [12] 3175 	mov	r6,a
      00306D A3               [24] 3176 	inc	dptr
      00306E 12 7C 4D         [24] 3177 	lcall	__gptrget
      003071 FF               [12] 3178 	mov	r7,a
      003072 C0 02            [24] 3179 	push	ar2
      003074 C0 03            [24] 3180 	push	ar3
      003076 C0 04            [24] 3181 	push	ar4
      003078 8D 82            [24] 3182 	mov	dpl,r5
      00307A 8E 83            [24] 3183 	mov	dph,r6
      00307C 8F F0            [24] 3184 	mov	b,r7
      00307E 12 00 31         [24] 3185 	lcall	___gptr_cmp
      003081 15 81            [12] 3186 	dec	sp
      003083 15 81            [12] 3187 	dec	sp
      003085 15 81            [12] 3188 	dec	sp
      003087 70 02            [24] 3189 	jnz	00183$
      003089 80 03            [24] 3190 	sjmp	00184$
      00308B                       3191 00183$:
      00308B 02 30 C2         [24] 3192 	ljmp	00102$
      00308E                       3193 00184$:
      00308E A8 0D            [24] 3194 	mov	r0,_bp
      003090 08               [12] 3195 	inc	r0
      003091 86 82            [24] 3196 	mov	dpl,@r0
      003093 08               [12] 3197 	inc	r0
      003094 86 83            [24] 3198 	mov	dph,@r0
      003096 08               [12] 3199 	inc	r0
      003097 86 F0            [24] 3200 	mov	b,@r0
      003099 12 7C 4D         [24] 3201 	lcall	__gptrget
      00309C FD               [12] 3202 	mov	r5,a
      00309D A3               [24] 3203 	inc	dptr
      00309E 12 7C 4D         [24] 3204 	lcall	__gptrget
      0030A1 FE               [12] 3205 	mov	r6,a
      0030A2 A3               [24] 3206 	inc	dptr
      0030A3 12 7C 4D         [24] 3207 	lcall	__gptrget
      0030A6 FF               [12] 3208 	mov	r7,a
      0030A7 E5 0D            [12] 3209 	mov	a,_bp
      0030A9 24 07            [12] 3210 	add	a,#0x07
      0030AB F8               [12] 3211 	mov	r0,a
      0030AC 86 82            [24] 3212 	mov	dpl,@r0
      0030AE 08               [12] 3213 	inc	r0
      0030AF 86 83            [24] 3214 	mov	dph,@r0
      0030B1 08               [12] 3215 	inc	r0
      0030B2 86 F0            [24] 3216 	mov	b,@r0
      0030B4 ED               [12] 3217 	mov	a,r5
      0030B5 12 79 22         [24] 3218 	lcall	__gptrput
      0030B8 A3               [24] 3219 	inc	dptr
      0030B9 EE               [12] 3220 	mov	a,r6
      0030BA 12 79 22         [24] 3221 	lcall	__gptrput
      0030BD A3               [24] 3222 	inc	dptr
      0030BE EF               [12] 3223 	mov	a,r7
      0030BF 12 79 22         [24] 3224 	lcall	__gptrput
      0030C2                       3225 00102$:
      0030C2 74 0B            [12] 3226 	mov	a,#0x0b
      0030C4 2A               [12] 3227 	add	a,r2
      0030C5 FA               [12] 3228 	mov	r2,a
      0030C6 74 00            [12] 3229 	mov	a,#0x00
      0030C8 3B               [12] 3230 	addc	a,r3
      0030C9 FB               [12] 3231 	mov	r3,a
      0030CA 8A 82            [24] 3232 	mov	dpl,r2
      0030CC 8B 83            [24] 3233 	mov	dph,r3
      0030CE 8C F0            [24] 3234 	mov	b,r4
      0030D0 74 00            [12] 3235 	mov	a,#0x00
      0030D2 12 79 22         [24] 3236 	lcall	__gptrput
      0030D5 A3               [24] 3237 	inc	dptr
      0030D6 12 79 22         [24] 3238 	lcall	__gptrput
      0030D9 A3               [24] 3239 	inc	dptr
      0030DA 12 79 22         [24] 3240 	lcall	__gptrput
      0030DD E5 0D            [12] 3241 	mov	a,_bp
      0030DF 24 13            [12] 3242 	add	a,#0x13
      0030E1 F8               [12] 3243 	mov	r0,a
      0030E2 86 82            [24] 3244 	mov	dpl,@r0
      0030E4 08               [12] 3245 	inc	r0
      0030E5 86 83            [24] 3246 	mov	dph,@r0
      0030E7 08               [12] 3247 	inc	r0
      0030E8 86 F0            [24] 3248 	mov	b,@r0
      0030EA 12 7C 4D         [24] 3249 	lcall	__gptrget
      0030ED FF               [12] 3250 	mov	r7,a
      0030EE 1F               [12] 3251 	dec	r7
      0030EF E5 0D            [12] 3252 	mov	a,_bp
      0030F1 24 13            [12] 3253 	add	a,#0x13
      0030F3 F8               [12] 3254 	mov	r0,a
      0030F4 86 82            [24] 3255 	mov	dpl,@r0
      0030F6 08               [12] 3256 	inc	r0
      0030F7 86 83            [24] 3257 	mov	dph,@r0
      0030F9 08               [12] 3258 	inc	r0
      0030FA 86 F0            [24] 3259 	mov	b,@r0
      0030FC EF               [12] 3260 	mov	a,r7
      0030FD 12 79 22         [24] 3261 	lcall	__gptrput
                           000BBC  3262 	C$tasks.c$2249$6_0$241 ==.
                                   3263 ;	tasks.c:2249: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
      003100 E5 0D            [12] 3264 	mov	a,_bp
      003102 24 10            [12] 3265 	add	a,#0x10
      003104 F8               [12] 3266 	mov	r0,a
      003105 74 03            [12] 3267 	mov	a,#0x03
      003107 26               [12] 3268 	add	a,@r0
      003108 FD               [12] 3269 	mov	r5,a
      003109 74 00            [12] 3270 	mov	a,#0x00
      00310B 08               [12] 3271 	inc	r0
      00310C 36               [12] 3272 	addc	a,@r0
      00310D FE               [12] 3273 	mov	r6,a
      00310E 08               [12] 3274 	inc	r0
      00310F 86 07            [24] 3275 	mov	ar7,@r0
      003111 E5 0D            [12] 3276 	mov	a,_bp
      003113 24 07            [12] 3277 	add	a,#0x07
      003115 F8               [12] 3278 	mov	r0,a
      003116 74 0B            [12] 3279 	mov	a,#0x0b
      003118 2D               [12] 3280 	add	a,r5
      003119 F6               [12] 3281 	mov	@r0,a
      00311A 74 00            [12] 3282 	mov	a,#0x00
      00311C 3E               [12] 3283 	addc	a,r6
      00311D 08               [12] 3284 	inc	r0
      00311E F6               [12] 3285 	mov	@r0,a
      00311F 08               [12] 3286 	inc	r0
      003120 A6 07            [24] 3287 	mov	@r0,ar7
      003122 E5 0D            [12] 3288 	mov	a,_bp
      003124 24 07            [12] 3289 	add	a,#0x07
      003126 F8               [12] 3290 	mov	r0,a
      003127 86 82            [24] 3291 	mov	dpl,@r0
      003129 08               [12] 3292 	inc	r0
      00312A 86 83            [24] 3293 	mov	dph,@r0
      00312C 08               [12] 3294 	inc	r0
      00312D 86 F0            [24] 3295 	mov	b,@r0
      00312F E5 0D            [12] 3296 	mov	a,_bp
      003131 24 13            [12] 3297 	add	a,#0x13
      003133 F9               [12] 3298 	mov	r1,a
      003134 12 7C 4D         [24] 3299 	lcall	__gptrget
      003137 F7               [12] 3300 	mov	@r1,a
      003138 A3               [24] 3301 	inc	dptr
      003139 12 7C 4D         [24] 3302 	lcall	__gptrget
      00313C 09               [12] 3303 	inc	r1
      00313D F7               [12] 3304 	mov	@r1,a
      00313E A3               [24] 3305 	inc	dptr
      00313F 12 7C 4D         [24] 3306 	lcall	__gptrget
      003142 09               [12] 3307 	inc	r1
      003143 F7               [12] 3308 	mov	@r1,a
      003144 A8 0D            [24] 3309 	mov	r0,_bp
      003146 08               [12] 3310 	inc	r0
      003147 74 02            [12] 3311 	mov	a,#0x02
      003149 2D               [12] 3312 	add	a,r5
      00314A F6               [12] 3313 	mov	@r0,a
      00314B 74 00            [12] 3314 	mov	a,#0x00
      00314D 3E               [12] 3315 	addc	a,r6
      00314E 08               [12] 3316 	inc	r0
      00314F F6               [12] 3317 	mov	@r0,a
      003150 08               [12] 3318 	inc	r0
      003151 A6 07            [24] 3319 	mov	@r0,ar7
      003153 A8 0D            [24] 3320 	mov	r0,_bp
      003155 08               [12] 3321 	inc	r0
      003156 86 82            [24] 3322 	mov	dpl,@r0
      003158 08               [12] 3323 	inc	r0
      003159 86 83            [24] 3324 	mov	dph,@r0
      00315B 08               [12] 3325 	inc	r0
      00315C 86 F0            [24] 3326 	mov	b,@r0
      00315E 12 7C 4D         [24] 3327 	lcall	__gptrget
      003161 FA               [12] 3328 	mov	r2,a
      003162 A3               [24] 3329 	inc	dptr
      003163 12 7C 4D         [24] 3330 	lcall	__gptrget
      003166 FB               [12] 3331 	mov	r3,a
      003167 A3               [24] 3332 	inc	dptr
      003168 12 7C 4D         [24] 3333 	lcall	__gptrget
      00316B FC               [12] 3334 	mov	r4,a
      00316C E5 0D            [12] 3335 	mov	a,_bp
      00316E 24 0A            [12] 3336 	add	a,#0x0a
      003170 F8               [12] 3337 	mov	r0,a
      003171 74 05            [12] 3338 	mov	a,#0x05
      003173 2A               [12] 3339 	add	a,r2
      003174 F6               [12] 3340 	mov	@r0,a
      003175 74 00            [12] 3341 	mov	a,#0x00
      003177 3B               [12] 3342 	addc	a,r3
      003178 08               [12] 3343 	inc	r0
      003179 F6               [12] 3344 	mov	@r0,a
      00317A 08               [12] 3345 	inc	r0
      00317B A6 04            [24] 3346 	mov	@r0,ar4
      00317D E5 0D            [12] 3347 	mov	a,_bp
      00317F 24 04            [12] 3348 	add	a,#0x04
      003181 F8               [12] 3349 	mov	r0,a
      003182 74 05            [12] 3350 	mov	a,#0x05
      003184 2D               [12] 3351 	add	a,r5
      003185 F6               [12] 3352 	mov	@r0,a
      003186 74 00            [12] 3353 	mov	a,#0x00
      003188 3E               [12] 3354 	addc	a,r6
      003189 08               [12] 3355 	inc	r0
      00318A F6               [12] 3356 	mov	@r0,a
      00318B 08               [12] 3357 	inc	r0
      00318C A6 07            [24] 3358 	mov	@r0,ar7
      00318E E5 0D            [12] 3359 	mov	a,_bp
      003190 24 04            [12] 3360 	add	a,#0x04
      003192 F8               [12] 3361 	mov	r0,a
      003193 86 82            [24] 3362 	mov	dpl,@r0
      003195 08               [12] 3363 	inc	r0
      003196 86 83            [24] 3364 	mov	dph,@r0
      003198 08               [12] 3365 	inc	r0
      003199 86 F0            [24] 3366 	mov	b,@r0
      00319B 12 7C 4D         [24] 3367 	lcall	__gptrget
      00319E FA               [12] 3368 	mov	r2,a
      00319F A3               [24] 3369 	inc	dptr
      0031A0 12 7C 4D         [24] 3370 	lcall	__gptrget
      0031A3 FB               [12] 3371 	mov	r3,a
      0031A4 A3               [24] 3372 	inc	dptr
      0031A5 12 7C 4D         [24] 3373 	lcall	__gptrget
      0031A8 FC               [12] 3374 	mov	r4,a
      0031A9 E5 0D            [12] 3375 	mov	a,_bp
      0031AB 24 0A            [12] 3376 	add	a,#0x0a
      0031AD F8               [12] 3377 	mov	r0,a
      0031AE 86 82            [24] 3378 	mov	dpl,@r0
      0031B0 08               [12] 3379 	inc	r0
      0031B1 86 83            [24] 3380 	mov	dph,@r0
      0031B3 08               [12] 3381 	inc	r0
      0031B4 86 F0            [24] 3382 	mov	b,@r0
      0031B6 EA               [12] 3383 	mov	a,r2
      0031B7 12 79 22         [24] 3384 	lcall	__gptrput
      0031BA A3               [24] 3385 	inc	dptr
      0031BB EB               [12] 3386 	mov	a,r3
      0031BC 12 79 22         [24] 3387 	lcall	__gptrput
      0031BF A3               [24] 3388 	inc	dptr
      0031C0 EC               [12] 3389 	mov	a,r4
      0031C1 12 79 22         [24] 3390 	lcall	__gptrput
      0031C4 E5 0D            [12] 3391 	mov	a,_bp
      0031C6 24 04            [12] 3392 	add	a,#0x04
      0031C8 F8               [12] 3393 	mov	r0,a
      0031C9 86 82            [24] 3394 	mov	dpl,@r0
      0031CB 08               [12] 3395 	inc	r0
      0031CC 86 83            [24] 3396 	mov	dph,@r0
      0031CE 08               [12] 3397 	inc	r0
      0031CF 86 F0            [24] 3398 	mov	b,@r0
      0031D1 12 7C 4D         [24] 3399 	lcall	__gptrget
      0031D4 FA               [12] 3400 	mov	r2,a
      0031D5 A3               [24] 3401 	inc	dptr
      0031D6 12 7C 4D         [24] 3402 	lcall	__gptrget
      0031D9 FB               [12] 3403 	mov	r3,a
      0031DA A3               [24] 3404 	inc	dptr
      0031DB 12 7C 4D         [24] 3405 	lcall	__gptrget
      0031DE FC               [12] 3406 	mov	r4,a
      0031DF E5 0D            [12] 3407 	mov	a,_bp
      0031E1 24 0A            [12] 3408 	add	a,#0x0a
      0031E3 F8               [12] 3409 	mov	r0,a
      0031E4 74 02            [12] 3410 	mov	a,#0x02
      0031E6 2A               [12] 3411 	add	a,r2
      0031E7 F6               [12] 3412 	mov	@r0,a
      0031E8 74 00            [12] 3413 	mov	a,#0x00
      0031EA 3B               [12] 3414 	addc	a,r3
      0031EB 08               [12] 3415 	inc	r0
      0031EC F6               [12] 3416 	mov	@r0,a
      0031ED 08               [12] 3417 	inc	r0
      0031EE A6 04            [24] 3418 	mov	@r0,ar4
      0031F0 A8 0D            [24] 3419 	mov	r0,_bp
      0031F2 08               [12] 3420 	inc	r0
      0031F3 86 82            [24] 3421 	mov	dpl,@r0
      0031F5 08               [12] 3422 	inc	r0
      0031F6 86 83            [24] 3423 	mov	dph,@r0
      0031F8 08               [12] 3424 	inc	r0
      0031F9 86 F0            [24] 3425 	mov	b,@r0
      0031FB 12 7C 4D         [24] 3426 	lcall	__gptrget
      0031FE FA               [12] 3427 	mov	r2,a
      0031FF A3               [24] 3428 	inc	dptr
      003200 12 7C 4D         [24] 3429 	lcall	__gptrget
      003203 FB               [12] 3430 	mov	r3,a
      003204 A3               [24] 3431 	inc	dptr
      003205 12 7C 4D         [24] 3432 	lcall	__gptrget
      003208 FC               [12] 3433 	mov	r4,a
      003209 E5 0D            [12] 3434 	mov	a,_bp
      00320B 24 0A            [12] 3435 	add	a,#0x0a
      00320D F8               [12] 3436 	mov	r0,a
      00320E 86 82            [24] 3437 	mov	dpl,@r0
      003210 08               [12] 3438 	inc	r0
      003211 86 83            [24] 3439 	mov	dph,@r0
      003213 08               [12] 3440 	inc	r0
      003214 86 F0            [24] 3441 	mov	b,@r0
      003216 EA               [12] 3442 	mov	a,r2
      003217 12 79 22         [24] 3443 	lcall	__gptrput
      00321A A3               [24] 3444 	inc	dptr
      00321B EB               [12] 3445 	mov	a,r3
      00321C 12 79 22         [24] 3446 	lcall	__gptrput
      00321F A3               [24] 3447 	inc	dptr
      003220 EC               [12] 3448 	mov	a,r4
      003221 12 79 22         [24] 3449 	lcall	__gptrput
      003224 E5 0D            [12] 3450 	mov	a,_bp
      003226 24 13            [12] 3451 	add	a,#0x13
      003228 F8               [12] 3452 	mov	r0,a
      003229 E5 0D            [12] 3453 	mov	a,_bp
      00322B 24 0A            [12] 3454 	add	a,#0x0a
      00322D F9               [12] 3455 	mov	r1,a
      00322E 74 01            [12] 3456 	mov	a,#0x01
      003230 26               [12] 3457 	add	a,@r0
      003231 F7               [12] 3458 	mov	@r1,a
      003232 74 00            [12] 3459 	mov	a,#0x00
      003234 08               [12] 3460 	inc	r0
      003235 36               [12] 3461 	addc	a,@r0
      003236 09               [12] 3462 	inc	r1
      003237 F7               [12] 3463 	mov	@r1,a
      003238 08               [12] 3464 	inc	r0
      003239 E6               [12] 3465 	mov	a,@r0
      00323A 09               [12] 3466 	inc	r1
      00323B F7               [12] 3467 	mov	@r1,a
      00323C E5 0D            [12] 3468 	mov	a,_bp
      00323E 24 0A            [12] 3469 	add	a,#0x0a
      003240 F8               [12] 3470 	mov	r0,a
      003241 86 82            [24] 3471 	mov	dpl,@r0
      003243 08               [12] 3472 	inc	r0
      003244 86 83            [24] 3473 	mov	dph,@r0
      003246 08               [12] 3474 	inc	r0
      003247 86 F0            [24] 3475 	mov	b,@r0
      003249 12 7C 4D         [24] 3476 	lcall	__gptrget
      00324C FA               [12] 3477 	mov	r2,a
      00324D A3               [24] 3478 	inc	dptr
      00324E 12 7C 4D         [24] 3479 	lcall	__gptrget
      003251 FB               [12] 3480 	mov	r3,a
      003252 A3               [24] 3481 	inc	dptr
      003253 12 7C 4D         [24] 3482 	lcall	__gptrget
      003256 FC               [12] 3483 	mov	r4,a
      003257 C0 05            [24] 3484 	push	ar5
      003259 C0 06            [24] 3485 	push	ar6
      00325B C0 07            [24] 3486 	push	ar7
      00325D 8A 82            [24] 3487 	mov	dpl,r2
      00325F 8B 83            [24] 3488 	mov	dph,r3
      003261 8C F0            [24] 3489 	mov	b,r4
      003263 12 00 31         [24] 3490 	lcall	___gptr_cmp
      003266 15 81            [12] 3491 	dec	sp
      003268 15 81            [12] 3492 	dec	sp
      00326A 15 81            [12] 3493 	dec	sp
      00326C 70 02            [24] 3494 	jnz	00185$
      00326E 80 03            [24] 3495 	sjmp	00186$
      003270                       3496 00185$:
      003270 02 32 A9         [24] 3497 	ljmp	00104$
      003273                       3498 00186$:
      003273 E5 0D            [12] 3499 	mov	a,_bp
      003275 24 04            [12] 3500 	add	a,#0x04
      003277 F8               [12] 3501 	mov	r0,a
      003278 86 82            [24] 3502 	mov	dpl,@r0
      00327A 08               [12] 3503 	inc	r0
      00327B 86 83            [24] 3504 	mov	dph,@r0
      00327D 08               [12] 3505 	inc	r0
      00327E 86 F0            [24] 3506 	mov	b,@r0
      003280 12 7C 4D         [24] 3507 	lcall	__gptrget
      003283 FA               [12] 3508 	mov	r2,a
      003284 A3               [24] 3509 	inc	dptr
      003285 12 7C 4D         [24] 3510 	lcall	__gptrget
      003288 FB               [12] 3511 	mov	r3,a
      003289 A3               [24] 3512 	inc	dptr
      00328A 12 7C 4D         [24] 3513 	lcall	__gptrget
      00328D FC               [12] 3514 	mov	r4,a
      00328E E5 0D            [12] 3515 	mov	a,_bp
      003290 24 0A            [12] 3516 	add	a,#0x0a
      003292 F8               [12] 3517 	mov	r0,a
      003293 86 82            [24] 3518 	mov	dpl,@r0
      003295 08               [12] 3519 	inc	r0
      003296 86 83            [24] 3520 	mov	dph,@r0
      003298 08               [12] 3521 	inc	r0
      003299 86 F0            [24] 3522 	mov	b,@r0
      00329B EA               [12] 3523 	mov	a,r2
      00329C 12 79 22         [24] 3524 	lcall	__gptrput
      00329F A3               [24] 3525 	inc	dptr
      0032A0 EB               [12] 3526 	mov	a,r3
      0032A1 12 79 22         [24] 3527 	lcall	__gptrput
      0032A4 A3               [24] 3528 	inc	dptr
      0032A5 EC               [12] 3529 	mov	a,r4
      0032A6 12 79 22         [24] 3530 	lcall	__gptrput
      0032A9                       3531 00104$:
      0032A9 C0 05            [24] 3532 	push	ar5
      0032AB C0 06            [24] 3533 	push	ar6
      0032AD C0 07            [24] 3534 	push	ar7
      0032AF E5 0D            [12] 3535 	mov	a,_bp
      0032B1 24 07            [12] 3536 	add	a,#0x07
      0032B3 F8               [12] 3537 	mov	r0,a
      0032B4 86 82            [24] 3538 	mov	dpl,@r0
      0032B6 08               [12] 3539 	inc	r0
      0032B7 86 83            [24] 3540 	mov	dph,@r0
      0032B9 08               [12] 3541 	inc	r0
      0032BA 86 F0            [24] 3542 	mov	b,@r0
      0032BC 74 00            [12] 3543 	mov	a,#0x00
      0032BE 12 79 22         [24] 3544 	lcall	__gptrput
      0032C1 A3               [24] 3545 	inc	dptr
      0032C2 12 79 22         [24] 3546 	lcall	__gptrput
      0032C5 A3               [24] 3547 	inc	dptr
      0032C6 12 79 22         [24] 3548 	lcall	__gptrput
      0032C9 E5 0D            [12] 3549 	mov	a,_bp
      0032CB 24 13            [12] 3550 	add	a,#0x13
      0032CD F8               [12] 3551 	mov	r0,a
      0032CE 86 82            [24] 3552 	mov	dpl,@r0
      0032D0 08               [12] 3553 	inc	r0
      0032D1 86 83            [24] 3554 	mov	dph,@r0
      0032D3 08               [12] 3555 	inc	r0
      0032D4 86 F0            [24] 3556 	mov	b,@r0
      0032D6 12 7C 4D         [24] 3557 	lcall	__gptrget
      0032D9 FC               [12] 3558 	mov	r4,a
      0032DA 1C               [12] 3559 	dec	r4
      0032DB E5 0D            [12] 3560 	mov	a,_bp
      0032DD 24 13            [12] 3561 	add	a,#0x13
      0032DF F8               [12] 3562 	mov	r0,a
      0032E0 86 82            [24] 3563 	mov	dpl,@r0
      0032E2 08               [12] 3564 	inc	r0
      0032E3 86 83            [24] 3565 	mov	dph,@r0
      0032E5 08               [12] 3566 	inc	r0
      0032E6 86 F0            [24] 3567 	mov	b,@r0
      0032E8 EC               [12] 3568 	mov	a,r4
      0032E9 12 79 22         [24] 3569 	lcall	__gptrput
                           000DA8  3570 	C$tasks.c$2250$6_0$243 ==.
                                   3571 ;	tasks.c:2250: prvAddTaskToReadyList( pxTCB );
      0032EC E5 0D            [12] 3572 	mov	a,_bp
      0032EE 24 10            [12] 3573 	add	a,#0x10
      0032F0 F8               [12] 3574 	mov	r0,a
      0032F1 E5 0D            [12] 3575 	mov	a,_bp
      0032F3 24 0D            [12] 3576 	add	a,#0x0d
      0032F5 F9               [12] 3577 	mov	r1,a
      0032F6 74 1F            [12] 3578 	mov	a,#0x1f
      0032F8 26               [12] 3579 	add	a,@r0
      0032F9 F7               [12] 3580 	mov	@r1,a
      0032FA 74 00            [12] 3581 	mov	a,#0x00
      0032FC 08               [12] 3582 	inc	r0
      0032FD 36               [12] 3583 	addc	a,@r0
      0032FE 09               [12] 3584 	inc	r1
      0032FF F7               [12] 3585 	mov	@r1,a
      003300 08               [12] 3586 	inc	r0
      003301 E6               [12] 3587 	mov	a,@r0
      003302 09               [12] 3588 	inc	r1
      003303 F7               [12] 3589 	mov	@r1,a
      003304 E5 0D            [12] 3590 	mov	a,_bp
      003306 24 0D            [12] 3591 	add	a,#0x0d
      003308 F8               [12] 3592 	mov	r0,a
      003309 86 82            [24] 3593 	mov	dpl,@r0
      00330B 08               [12] 3594 	inc	r0
      00330C 86 83            [24] 3595 	mov	dph,@r0
      00330E 08               [12] 3596 	inc	r0
      00330F 86 F0            [24] 3597 	mov	b,@r0
      003311 12 7C 4D         [24] 3598 	lcall	__gptrget
      003314 FC               [12] 3599 	mov	r4,a
      003315 90 0C 86         [24] 3600 	mov	dptr,#_uxTopReadyPriority
      003318 E0               [24] 3601 	movx	a,@dptr
      003319 FF               [12] 3602 	mov	r7,a
      00331A C3               [12] 3603 	clr	c
      00331B EF               [12] 3604 	mov	a,r7
      00331C 9C               [12] 3605 	subb	a,r4
      00331D D0 07            [24] 3606 	pop	ar7
      00331F D0 06            [24] 3607 	pop	ar6
      003321 D0 05            [24] 3608 	pop	ar5
      003323 40 03            [24] 3609 	jc	00187$
      003325 02 33 2D         [24] 3610 	ljmp	00106$
      003328                       3611 00187$:
      003328 90 0C 86         [24] 3612 	mov	dptr,#_uxTopReadyPriority
      00332B EC               [12] 3613 	mov	a,r4
      00332C F0               [24] 3614 	movx	@dptr,a
      00332D                       3615 00106$:
      00332D E5 0D            [12] 3616 	mov	a,_bp
      00332F 24 0D            [12] 3617 	add	a,#0x0d
      003331 F8               [12] 3618 	mov	r0,a
      003332 86 82            [24] 3619 	mov	dpl,@r0
      003334 08               [12] 3620 	inc	r0
      003335 86 83            [24] 3621 	mov	dph,@r0
      003337 08               [12] 3622 	inc	r0
      003338 86 F0            [24] 3623 	mov	b,@r0
      00333A 12 7C 4D         [24] 3624 	lcall	__gptrget
      00333D FC               [12] 3625 	mov	r4,a
      00333E EC               [12] 3626 	mov	a,r4
      00333F 75 F0 0C         [24] 3627 	mov	b,#0x0c
      003342 A4               [48] 3628 	mul	ab
      003343 24 16            [12] 3629 	add	a,#_pxReadyTasksLists
      003345 FB               [12] 3630 	mov	r3,a
      003346 74 00            [12] 3631 	mov	a,#(_pxReadyTasksLists >> 8)
      003348 35 F0            [12] 3632 	addc	a,b
      00334A FC               [12] 3633 	mov	r4,a
      00334B 8B 82            [24] 3634 	mov	dpl,r3
      00334D 8C 83            [24] 3635 	mov	dph,r4
      00334F A3               [24] 3636 	inc	dptr
      003350 E0               [24] 3637 	movx	a,@dptr
      003351 FA               [12] 3638 	mov	r2,a
      003352 A3               [24] 3639 	inc	dptr
      003353 E0               [24] 3640 	movx	a,@dptr
      003354 FB               [12] 3641 	mov	r3,a
      003355 A3               [24] 3642 	inc	dptr
      003356 E0               [24] 3643 	movx	a,@dptr
      003357 FC               [12] 3644 	mov	r4,a
      003358 A8 0D            [24] 3645 	mov	r0,_bp
      00335A 08               [12] 3646 	inc	r0
      00335B 86 82            [24] 3647 	mov	dpl,@r0
      00335D 08               [12] 3648 	inc	r0
      00335E 86 83            [24] 3649 	mov	dph,@r0
      003360 08               [12] 3650 	inc	r0
      003361 86 F0            [24] 3651 	mov	b,@r0
      003363 EA               [12] 3652 	mov	a,r2
      003364 12 79 22         [24] 3653 	lcall	__gptrput
      003367 A3               [24] 3654 	inc	dptr
      003368 EB               [12] 3655 	mov	a,r3
      003369 12 79 22         [24] 3656 	lcall	__gptrput
      00336C A3               [24] 3657 	inc	dptr
      00336D EC               [12] 3658 	mov	a,r4
      00336E 12 79 22         [24] 3659 	lcall	__gptrput
      003371 E5 0D            [12] 3660 	mov	a,_bp
      003373 24 0A            [12] 3661 	add	a,#0x0a
      003375 F8               [12] 3662 	mov	r0,a
      003376 74 05            [12] 3663 	mov	a,#0x05
      003378 2A               [12] 3664 	add	a,r2
      003379 F6               [12] 3665 	mov	@r0,a
      00337A 74 00            [12] 3666 	mov	a,#0x00
      00337C 3B               [12] 3667 	addc	a,r3
      00337D 08               [12] 3668 	inc	r0
      00337E F6               [12] 3669 	mov	@r0,a
      00337F 08               [12] 3670 	inc	r0
      003380 A6 04            [24] 3671 	mov	@r0,ar4
      003382 E5 0D            [12] 3672 	mov	a,_bp
      003384 24 0A            [12] 3673 	add	a,#0x0a
      003386 F8               [12] 3674 	mov	r0,a
      003387 86 82            [24] 3675 	mov	dpl,@r0
      003389 08               [12] 3676 	inc	r0
      00338A 86 83            [24] 3677 	mov	dph,@r0
      00338C 08               [12] 3678 	inc	r0
      00338D 86 F0            [24] 3679 	mov	b,@r0
      00338F 12 7C 4D         [24] 3680 	lcall	__gptrget
      003392 FA               [12] 3681 	mov	r2,a
      003393 A3               [24] 3682 	inc	dptr
      003394 12 7C 4D         [24] 3683 	lcall	__gptrget
      003397 FB               [12] 3684 	mov	r3,a
      003398 A3               [24] 3685 	inc	dptr
      003399 12 7C 4D         [24] 3686 	lcall	__gptrget
      00339C FC               [12] 3687 	mov	r4,a
      00339D E5 0D            [12] 3688 	mov	a,_bp
      00339F 24 04            [12] 3689 	add	a,#0x04
      0033A1 F8               [12] 3690 	mov	r0,a
      0033A2 86 82            [24] 3691 	mov	dpl,@r0
      0033A4 08               [12] 3692 	inc	r0
      0033A5 86 83            [24] 3693 	mov	dph,@r0
      0033A7 08               [12] 3694 	inc	r0
      0033A8 86 F0            [24] 3695 	mov	b,@r0
      0033AA EA               [12] 3696 	mov	a,r2
      0033AB 12 79 22         [24] 3697 	lcall	__gptrput
      0033AE A3               [24] 3698 	inc	dptr
      0033AF EB               [12] 3699 	mov	a,r3
      0033B0 12 79 22         [24] 3700 	lcall	__gptrput
      0033B3 A3               [24] 3701 	inc	dptr
      0033B4 EC               [12] 3702 	mov	a,r4
      0033B5 12 79 22         [24] 3703 	lcall	__gptrput
      0033B8 E5 0D            [12] 3704 	mov	a,_bp
      0033BA 24 0A            [12] 3705 	add	a,#0x0a
      0033BC F8               [12] 3706 	mov	r0,a
      0033BD 86 82            [24] 3707 	mov	dpl,@r0
      0033BF 08               [12] 3708 	inc	r0
      0033C0 86 83            [24] 3709 	mov	dph,@r0
      0033C2 08               [12] 3710 	inc	r0
      0033C3 86 F0            [24] 3711 	mov	b,@r0
      0033C5 12 7C 4D         [24] 3712 	lcall	__gptrget
      0033C8 FA               [12] 3713 	mov	r2,a
      0033C9 A3               [24] 3714 	inc	dptr
      0033CA 12 7C 4D         [24] 3715 	lcall	__gptrget
      0033CD FB               [12] 3716 	mov	r3,a
      0033CE A3               [24] 3717 	inc	dptr
      0033CF 12 7C 4D         [24] 3718 	lcall	__gptrget
      0033D2 FC               [12] 3719 	mov	r4,a
      0033D3 74 02            [12] 3720 	mov	a,#0x02
      0033D5 2A               [12] 3721 	add	a,r2
      0033D6 FA               [12] 3722 	mov	r2,a
      0033D7 74 00            [12] 3723 	mov	a,#0x00
      0033D9 3B               [12] 3724 	addc	a,r3
      0033DA FB               [12] 3725 	mov	r3,a
      0033DB 8A 82            [24] 3726 	mov	dpl,r2
      0033DD 8B 83            [24] 3727 	mov	dph,r3
      0033DF 8C F0            [24] 3728 	mov	b,r4
      0033E1 ED               [12] 3729 	mov	a,r5
      0033E2 12 79 22         [24] 3730 	lcall	__gptrput
      0033E5 A3               [24] 3731 	inc	dptr
      0033E6 EE               [12] 3732 	mov	a,r6
      0033E7 12 79 22         [24] 3733 	lcall	__gptrput
      0033EA A3               [24] 3734 	inc	dptr
      0033EB EF               [12] 3735 	mov	a,r7
      0033EC 12 79 22         [24] 3736 	lcall	__gptrput
      0033EF E5 0D            [12] 3737 	mov	a,_bp
      0033F1 24 0A            [12] 3738 	add	a,#0x0a
      0033F3 F8               [12] 3739 	mov	r0,a
      0033F4 86 82            [24] 3740 	mov	dpl,@r0
      0033F6 08               [12] 3741 	inc	r0
      0033F7 86 83            [24] 3742 	mov	dph,@r0
      0033F9 08               [12] 3743 	inc	r0
      0033FA 86 F0            [24] 3744 	mov	b,@r0
      0033FC ED               [12] 3745 	mov	a,r5
      0033FD 12 79 22         [24] 3746 	lcall	__gptrput
      003400 A3               [24] 3747 	inc	dptr
      003401 EE               [12] 3748 	mov	a,r6
      003402 12 79 22         [24] 3749 	lcall	__gptrput
      003405 A3               [24] 3750 	inc	dptr
      003406 EF               [12] 3751 	mov	a,r7
      003407 12 79 22         [24] 3752 	lcall	__gptrput
      00340A E5 0D            [12] 3753 	mov	a,_bp
      00340C 24 0D            [12] 3754 	add	a,#0x0d
      00340E F8               [12] 3755 	mov	r0,a
      00340F 86 82            [24] 3756 	mov	dpl,@r0
      003411 08               [12] 3757 	inc	r0
      003412 86 83            [24] 3758 	mov	dph,@r0
      003414 08               [12] 3759 	inc	r0
      003415 86 F0            [24] 3760 	mov	b,@r0
      003417 12 7C 4D         [24] 3761 	lcall	__gptrget
      00341A FF               [12] 3762 	mov	r7,a
      00341B EF               [12] 3763 	mov	a,r7
      00341C 75 F0 0C         [24] 3764 	mov	b,#0x0c
      00341F A4               [48] 3765 	mul	ab
      003420 24 16            [12] 3766 	add	a,#_pxReadyTasksLists
      003422 FE               [12] 3767 	mov	r6,a
      003423 74 00            [12] 3768 	mov	a,#(_pxReadyTasksLists >> 8)
      003425 35 F0            [12] 3769 	addc	a,b
      003427 FF               [12] 3770 	mov	r7,a
      003428 7D 00            [12] 3771 	mov	r5,#0x00
      00342A E5 0D            [12] 3772 	mov	a,_bp
      00342C 24 07            [12] 3773 	add	a,#0x07
      00342E F8               [12] 3774 	mov	r0,a
      00342F 86 82            [24] 3775 	mov	dpl,@r0
      003431 08               [12] 3776 	inc	r0
      003432 86 83            [24] 3777 	mov	dph,@r0
      003434 08               [12] 3778 	inc	r0
      003435 86 F0            [24] 3779 	mov	b,@r0
      003437 EE               [12] 3780 	mov	a,r6
      003438 12 79 22         [24] 3781 	lcall	__gptrput
      00343B A3               [24] 3782 	inc	dptr
      00343C EF               [12] 3783 	mov	a,r7
      00343D 12 79 22         [24] 3784 	lcall	__gptrput
      003440 A3               [24] 3785 	inc	dptr
      003441 ED               [12] 3786 	mov	a,r5
      003442 12 79 22         [24] 3787 	lcall	__gptrput
      003445 E5 0D            [12] 3788 	mov	a,_bp
      003447 24 0D            [12] 3789 	add	a,#0x0d
      003449 F8               [12] 3790 	mov	r0,a
      00344A 86 82            [24] 3791 	mov	dpl,@r0
      00344C 08               [12] 3792 	inc	r0
      00344D 86 83            [24] 3793 	mov	dph,@r0
      00344F 08               [12] 3794 	inc	r0
      003450 86 F0            [24] 3795 	mov	b,@r0
      003452 12 7C 4D         [24] 3796 	lcall	__gptrget
      003455 FF               [12] 3797 	mov	r7,a
      003456 EF               [12] 3798 	mov	a,r7
      003457 75 F0 0C         [24] 3799 	mov	b,#0x0c
      00345A A4               [48] 3800 	mul	ab
      00345B 24 16            [12] 3801 	add	a,#_pxReadyTasksLists
      00345D FE               [12] 3802 	mov	r6,a
      00345E 74 00            [12] 3803 	mov	a,#(_pxReadyTasksLists >> 8)
      003460 35 F0            [12] 3804 	addc	a,b
      003462 FF               [12] 3805 	mov	r7,a
      003463 8E 82            [24] 3806 	mov	dpl,r6
      003465 8F 83            [24] 3807 	mov	dph,r7
      003467 E0               [24] 3808 	movx	a,@dptr
      003468 FD               [12] 3809 	mov	r5,a
      003469 0D               [12] 3810 	inc	r5
      00346A 8E 82            [24] 3811 	mov	dpl,r6
      00346C 8F 83            [24] 3812 	mov	dph,r7
      00346E ED               [12] 3813 	mov	a,r5
      00346F F0               [24] 3814 	movx	@dptr,a
                           000F2C  3815 	C$tasks.c$2254$5_0$238 ==.
                                   3816 ;	tasks.c:2254: if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
      003470 E5 0D            [12] 3817 	mov	a,_bp
      003472 24 0D            [12] 3818 	add	a,#0x0d
      003474 F8               [12] 3819 	mov	r0,a
      003475 86 82            [24] 3820 	mov	dpl,@r0
      003477 08               [12] 3821 	inc	r0
      003478 86 83            [24] 3822 	mov	dph,@r0
      00347A 08               [12] 3823 	inc	r0
      00347B 86 F0            [24] 3824 	mov	b,@r0
      00347D 12 7C 4D         [24] 3825 	lcall	__gptrget
      003480 FF               [12] 3826 	mov	r7,a
      003481 90 0C 7F         [24] 3827 	mov	dptr,#_pxCurrentTCB
      003484 E0               [24] 3828 	movx	a,@dptr
      003485 FC               [12] 3829 	mov	r4,a
      003486 A3               [24] 3830 	inc	dptr
      003487 E0               [24] 3831 	movx	a,@dptr
      003488 FD               [12] 3832 	mov	r5,a
      003489 A3               [24] 3833 	inc	dptr
      00348A E0               [24] 3834 	movx	a,@dptr
      00348B FE               [12] 3835 	mov	r6,a
      00348C 74 1F            [12] 3836 	mov	a,#0x1f
      00348E 2C               [12] 3837 	add	a,r4
      00348F FC               [12] 3838 	mov	r4,a
      003490 74 00            [12] 3839 	mov	a,#0x00
      003492 3D               [12] 3840 	addc	a,r5
      003493 FD               [12] 3841 	mov	r5,a
      003494 8C 82            [24] 3842 	mov	dpl,r4
      003496 8D 83            [24] 3843 	mov	dph,r5
      003498 8E F0            [24] 3844 	mov	b,r6
      00349A 12 7C 4D         [24] 3845 	lcall	__gptrget
      00349D FC               [12] 3846 	mov	r4,a
      00349E C3               [12] 3847 	clr	c
      00349F EF               [12] 3848 	mov	a,r7
      0034A0 9C               [12] 3849 	subb	a,r4
      0034A1 50 03            [24] 3850 	jnc	00188$
      0034A3 02 2E D7         [24] 3851 	ljmp	00109$
      0034A6                       3852 00188$:
                           000F62  3853 	C$tasks.c$2256$6_0$246 ==.
                                   3854 ;	tasks.c:2256: xYieldPending = pdTRUE;
      0034A6 90 0C 8A         [24] 3855 	mov	dptr,#_xYieldPending
      0034A9 74 01            [12] 3856 	mov	a,#0x01
      0034AB F0               [24] 3857 	movx	@dptr,a
      0034AC 02 2E D7         [24] 3858 	ljmp	00109$
      0034AF                       3859 00111$:
                           000F6B  3860 	C$tasks.c$2264$4_0$237 ==.
                                   3861 ;	tasks.c:2264: if( pxTCB != NULL )
      0034AF E5 0D            [12] 3862 	mov	a,_bp
      0034B1 24 10            [12] 3863 	add	a,#0x10
      0034B3 F8               [12] 3864 	mov	r0,a
      0034B4 E6               [12] 3865 	mov	a,@r0
      0034B5 08               [12] 3866 	inc	r0
      0034B6 46               [12] 3867 	orl	a,@r0
      0034B7 70 03            [24] 3868 	jnz	00189$
      0034B9 02 34 BF         [24] 3869 	ljmp	00113$
      0034BC                       3870 00189$:
                           000F78  3871 	C$tasks.c$2272$5_0$248 ==.
                                   3872 ;	tasks.c:2272: prvResetNextTaskUnblockTime();
      0034BC 12 50 F0         [24] 3873 	lcall	_prvResetNextTaskUnblockTime
      0034BF                       3874 00113$:
                           000F7B  3875 	C$tasks.c$2280$6_0$249 ==.
                                   3876 ;	tasks.c:2280: TickType_t xPendedCounts = xPendedTicks; /* Non-volatile copy. */
      0034BF 90 0C 88         [24] 3877 	mov	dptr,#_xPendedTicks
      0034C2 E0               [24] 3878 	movx	a,@dptr
      0034C3 FE               [12] 3879 	mov	r6,a
      0034C4 A3               [24] 3880 	inc	dptr
      0034C5 E0               [24] 3881 	movx	a,@dptr
      0034C6 FF               [12] 3882 	mov	r7,a
      0034C7 8E 04            [24] 3883 	mov	ar4,r6
      0034C9 8F 05            [24] 3884 	mov	ar5,r7
                           000F87  3885 	C$tasks.c$2282$5_0$249 ==.
                                   3886 ;	tasks.c:2282: if( xPendedCounts > ( TickType_t ) 0U )
      0034CB EE               [12] 3887 	mov	a,r6
      0034CC 4F               [12] 3888 	orl	a,r7
      0034CD 70 03            [24] 3889 	jnz	00190$
      0034CF 02 35 02         [24] 3890 	ljmp	00120$
      0034D2                       3891 00190$:
                           000F8E  3892 	C$tasks.c$2284$1_0$234 ==.
                                   3893 ;	tasks.c:2284: do
      0034D2 8C 06            [24] 3894 	mov	ar6,r4
      0034D4 8D 07            [24] 3895 	mov	ar7,r5
      0034D6                       3896 00116$:
                           000F92  3897 	C$tasks.c$2286$7_0$251 ==.
                                   3898 ;	tasks.c:2286: if( xTaskIncrementTick() != pdFALSE )
      0034D6 C0 07            [24] 3899 	push	ar7
      0034D8 C0 06            [24] 3900 	push	ar6
      0034DA 12 35 A6         [24] 3901 	lcall	_xTaskIncrementTick
      0034DD E5 82            [12] 3902 	mov	a,dpl
      0034DF D0 06            [24] 3903 	pop	ar6
      0034E1 D0 07            [24] 3904 	pop	ar7
      0034E3 70 03            [24] 3905 	jnz	00191$
      0034E5 02 34 EE         [24] 3906 	ljmp	00115$
      0034E8                       3907 00191$:
                           000FA4  3908 	C$tasks.c$2288$8_0$252 ==.
                                   3909 ;	tasks.c:2288: xYieldPending = pdTRUE;
      0034E8 90 0C 8A         [24] 3910 	mov	dptr,#_xYieldPending
      0034EB 74 01            [12] 3911 	mov	a,#0x01
      0034ED F0               [24] 3912 	movx	@dptr,a
      0034EE                       3913 00115$:
                           000FAA  3914 	C$tasks.c$2295$7_0$251 ==.
                                   3915 ;	tasks.c:2295: --xPendedCounts;
      0034EE 1E               [12] 3916 	dec	r6
      0034EF BE FF 01         [24] 3917 	cjne	r6,#0xff,00192$
      0034F2 1F               [12] 3918 	dec	r7
      0034F3                       3919 00192$:
                           000FAF  3920 	C$tasks.c$2296$6_0$250 ==.
                                   3921 ;	tasks.c:2296: } while( xPendedCounts > ( TickType_t ) 0U );
      0034F3 EE               [12] 3922 	mov	a,r6
      0034F4 4F               [12] 3923 	orl	a,r7
      0034F5 60 03            [24] 3924 	jz	00193$
      0034F7 02 34 D6         [24] 3925 	ljmp	00116$
      0034FA                       3926 00193$:
                           000FB6  3927 	C$tasks.c$2298$6_0$250 ==.
                                   3928 ;	tasks.c:2298: xPendedTicks = 0;
      0034FA 90 0C 88         [24] 3929 	mov	dptr,#_xPendedTicks
      0034FD 74 00            [12] 3930 	mov	a,#0x00
      0034FF F0               [24] 3931 	movx	@dptr,a
      003500 A3               [24] 3932 	inc	dptr
      003501 F0               [24] 3933 	movx	@dptr,a
      003502                       3934 00120$:
                           000FBE  3935 	C$tasks.c$2306$4_0$237 ==.
                                   3936 ;	tasks.c:2306: if( xYieldPending != pdFALSE )
      003502 90 0C 8A         [24] 3937 	mov	dptr,#_xYieldPending
      003505 E0               [24] 3938 	movx	a,@dptr
      003506                       3939 00124$:
                           000FC2  3940 	C$tasks.c$2326$1_0$234 ==.
                                   3941 ;	tasks.c:2326: taskEXIT_CRITICAL();
      003506 D0 E0            [24] 3942 	pop ACC 
      003508 53 E0 80         [24] 3943 	anl	_ACC,#0x80
      00350B E5 E0            [12] 3944 	mov	a,_ACC
      00350D 42 A8            [12] 3945 	orl	_IE,a
      00350F D0 E0            [24] 3946 	pop ACC 
                           000FCD  3947 	C$tasks.c$2328$1_0$234 ==.
                                   3948 ;	tasks.c:2328: return xAlreadyYielded;
      003511 75 82 00         [24] 3949 	mov	dpl,#0x00
      003514                       3950 00125$:
                           000FD0  3951 	C$tasks.c$2329$1_0$234 ==.
                                   3952 ;	tasks.c:2329: }
      003514 85 0D 81         [24] 3953 	mov	sp,_bp
      003517 D0 0D            [24] 3954 	pop	_bp
                           000FD5  3955 	C$tasks.c$2329$1_0$234 ==.
                           000FD5  3956 	XG$xTaskResumeAll$0$0 ==.
      003519 22               [24] 3957 	ret
                                   3958 ;------------------------------------------------------------
                                   3959 ;Allocation info for local variables in function 'xTaskGetTickCount'
                                   3960 ;------------------------------------------------------------
                                   3961 ;xTicks                    Allocated to registers r6 r7 
                                   3962 ;------------------------------------------------------------
                           000FD6  3963 	G$xTaskGetTickCount$0$0 ==.
                           000FD6  3964 	C$tasks.c$2332$1_0$259 ==.
                                   3965 ;	tasks.c:2332: TickType_t xTaskGetTickCount( void )
                                   3966 ;	-----------------------------------------
                                   3967 ;	 function xTaskGetTickCount
                                   3968 ;	-----------------------------------------
      00351A                       3969 _xTaskGetTickCount:
                           000FD6  3970 	C$tasks.c$2337$1_0$259 ==.
                                   3971 ;	tasks.c:2337: portTICK_TYPE_ENTER_CRITICAL();
      00351A C0 E0            [24] 3972 	push ACC 
      00351C C0 A8            [24] 3973 	push IE 
                                   3974 ;	assignBit
      00351E C2 AF            [12] 3975 	clr	_EA
                           000FDC  3976 	C$tasks.c$2339$2_0$260 ==.
                                   3977 ;	tasks.c:2339: xTicks = xTickCount;
      003520 90 0C 84         [24] 3978 	mov	dptr,#_xTickCount
      003523 E0               [24] 3979 	movx	a,@dptr
      003524 FE               [12] 3980 	mov	r6,a
      003525 A3               [24] 3981 	inc	dptr
      003526 E0               [24] 3982 	movx	a,@dptr
      003527 FF               [12] 3983 	mov	r7,a
                           000FE4  3984 	C$tasks.c$2341$1_0$259 ==.
                                   3985 ;	tasks.c:2341: portTICK_TYPE_EXIT_CRITICAL();
      003528 D0 E0            [24] 3986 	pop ACC 
      00352A 53 E0 80         [24] 3987 	anl	_ACC,#0x80
      00352D E5 E0            [12] 3988 	mov	a,_ACC
      00352F 42 A8            [12] 3989 	orl	_IE,a
      003531 D0 E0            [24] 3990 	pop ACC 
                           000FEF  3991 	C$tasks.c$2343$1_0$259 ==.
                                   3992 ;	tasks.c:2343: return xTicks;
      003533 8E 82            [24] 3993 	mov	dpl,r6
      003535 8F 83            [24] 3994 	mov	dph,r7
      003537                       3995 00101$:
                           000FF3  3996 	C$tasks.c$2344$1_0$259 ==.
                                   3997 ;	tasks.c:2344: }
                           000FF3  3998 	C$tasks.c$2344$1_0$259 ==.
                           000FF3  3999 	XG$xTaskGetTickCount$0$0 ==.
      003537 22               [24] 4000 	ret
                                   4001 ;------------------------------------------------------------
                                   4002 ;Allocation info for local variables in function 'xTaskGetTickCountFromISR'
                                   4003 ;------------------------------------------------------------
                                   4004 ;xReturn                   Allocated to registers r6 r7 
                                   4005 ;uxSavedInterruptStatus    Allocated to registers 
                                   4006 ;------------------------------------------------------------
                           000FF4  4007 	G$xTaskGetTickCountFromISR$0$0 ==.
                           000FF4  4008 	C$tasks.c$2347$1_0$262 ==.
                                   4009 ;	tasks.c:2347: TickType_t xTaskGetTickCountFromISR( void )
                                   4010 ;	-----------------------------------------
                                   4011 ;	 function xTaskGetTickCountFromISR
                                   4012 ;	-----------------------------------------
      003538                       4013 _xTaskGetTickCountFromISR:
                           000FF4  4014 	C$tasks.c$2370$2_0$263 ==.
                                   4015 ;	tasks.c:2370: xReturn = xTickCount;
      003538 90 0C 84         [24] 4016 	mov	dptr,#_xTickCount
      00353B E0               [24] 4017 	movx	a,@dptr
      00353C FE               [12] 4018 	mov	r6,a
      00353D A3               [24] 4019 	inc	dptr
      00353E E0               [24] 4020 	movx	a,@dptr
      00353F FF               [12] 4021 	mov	r7,a
                           000FFC  4022 	C$tasks.c$2374$1_0$262 ==.
                                   4023 ;	tasks.c:2374: return xReturn;
      003540 8E 82            [24] 4024 	mov	dpl,r6
      003542 8F 83            [24] 4025 	mov	dph,r7
      003544                       4026 00101$:
                           001000  4027 	C$tasks.c$2375$1_0$262 ==.
                                   4028 ;	tasks.c:2375: }
                           001000  4029 	C$tasks.c$2375$1_0$262 ==.
                           001000  4030 	XG$xTaskGetTickCountFromISR$0$0 ==.
      003544 22               [24] 4031 	ret
                                   4032 ;------------------------------------------------------------
                                   4033 ;Allocation info for local variables in function 'uxTaskGetNumberOfTasks'
                                   4034 ;------------------------------------------------------------
                           001001  4035 	G$uxTaskGetNumberOfTasks$0$0 ==.
                           001001  4036 	C$tasks.c$2378$1_0$265 ==.
                                   4037 ;	tasks.c:2378: UBaseType_t uxTaskGetNumberOfTasks( void )
                                   4038 ;	-----------------------------------------
                                   4039 ;	 function uxTaskGetNumberOfTasks
                                   4040 ;	-----------------------------------------
      003545                       4041 _uxTaskGetNumberOfTasks:
                           001001  4042 	C$tasks.c$2382$1_0$265 ==.
                                   4043 ;	tasks.c:2382: return uxCurrentNumberOfTasks;
      003545 90 0C 83         [24] 4044 	mov	dptr,#_uxCurrentNumberOfTasks
      003548 E0               [24] 4045 	movx	a,@dptr
      003549 FF               [12] 4046 	mov	r7,a
      00354A 8F 82            [24] 4047 	mov	dpl,r7
      00354C                       4048 00101$:
                           001008  4049 	C$tasks.c$2383$1_0$265 ==.
                                   4050 ;	tasks.c:2383: }
                           001008  4051 	C$tasks.c$2383$1_0$265 ==.
                           001008  4052 	XG$uxTaskGetNumberOfTasks$0$0 ==.
      00354C 22               [24] 4053 	ret
                                   4054 ;------------------------------------------------------------
                                   4055 ;Allocation info for local variables in function 'pcTaskGetName'
                                   4056 ;------------------------------------------------------------
                                   4057 ;xTaskToQuery              Allocated to registers r5 r6 r7 
                                   4058 ;pxTCB                     Allocated to registers r2 r3 r4 
                                   4059 ;------------------------------------------------------------
                           001009  4060 	G$pcTaskGetName$0$0 ==.
                           001009  4061 	C$tasks.c$2386$1_0$267 ==.
                                   4062 ;	tasks.c:2386: char * pcTaskGetName( TaskHandle_t xTaskToQuery ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
                                   4063 ;	-----------------------------------------
                                   4064 ;	 function pcTaskGetName
                                   4065 ;	-----------------------------------------
      00354D                       4066 _pcTaskGetName:
      00354D AD 82            [24] 4067 	mov	r5,dpl
      00354F AE 83            [24] 4068 	mov	r6,dph
      003551 AF F0            [24] 4069 	mov	r7,b
                           00100F  4070 	C$tasks.c$2392$1_0$267 ==.
                                   4071 ;	tasks.c:2392: pxTCB = prvGetTCBFromHandle( xTaskToQuery );
      003553 ED               [12] 4072 	mov	a,r5
      003554 4E               [12] 4073 	orl	a,r6
      003555 60 03            [24] 4074 	jz	00109$
      003557 02 35 68         [24] 4075 	ljmp	00103$
      00355A                       4076 00109$:
      00355A 90 0C 7F         [24] 4077 	mov	dptr,#_pxCurrentTCB
      00355D E0               [24] 4078 	movx	a,@dptr
      00355E FA               [12] 4079 	mov	r2,a
      00355F A3               [24] 4080 	inc	dptr
      003560 E0               [24] 4081 	movx	a,@dptr
      003561 FB               [12] 4082 	mov	r3,a
      003562 A3               [24] 4083 	inc	dptr
      003563 E0               [24] 4084 	movx	a,@dptr
      003564 FC               [12] 4085 	mov	r4,a
      003565 02 35 6E         [24] 4086 	ljmp	00104$
      003568                       4087 00103$:
      003568 8D 02            [24] 4088 	mov	ar2,r5
      00356A 8E 03            [24] 4089 	mov	ar3,r6
      00356C 8F 04            [24] 4090 	mov	ar4,r7
      00356E                       4091 00104$:
                           00102A  4092 	C$tasks.c$2394$1_0$267 ==.
                                   4093 ;	tasks.c:2394: return &( pxTCB->pcTaskName[ 0 ] );
      00356E 74 23            [12] 4094 	mov	a,#0x23
      003570 2A               [12] 4095 	add	a,r2
      003571 FA               [12] 4096 	mov	r2,a
      003572 74 00            [12] 4097 	mov	a,#0x00
      003574 3B               [12] 4098 	addc	a,r3
      003575 FB               [12] 4099 	mov	r3,a
      003576 8A 82            [24] 4100 	mov	dpl,r2
      003578 8B 83            [24] 4101 	mov	dph,r3
      00357A 8C F0            [24] 4102 	mov	b,r4
      00357C                       4103 00101$:
                           001038  4104 	C$tasks.c$2395$1_0$267 ==.
                                   4105 ;	tasks.c:2395: }
                           001038  4106 	C$tasks.c$2395$1_0$267 ==.
                           001038  4107 	XG$pcTaskGetName$0$0 ==.
      00357C 22               [24] 4108 	ret
                                   4109 ;------------------------------------------------------------
                                   4110 ;Allocation info for local variables in function 'xTaskCatchUpTicks'
                                   4111 ;------------------------------------------------------------
                                   4112 ;xTicksToCatchUp           Allocated to registers r6 r7 
                                   4113 ;xYieldOccurred            Allocated to registers r7 
                                   4114 ;------------------------------------------------------------
                           001039  4115 	G$xTaskCatchUpTicks$0$0 ==.
                           001039  4116 	C$tasks.c$2638$1_0$269 ==.
                                   4117 ;	tasks.c:2638: BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp )
                                   4118 ;	-----------------------------------------
                                   4119 ;	 function xTaskCatchUpTicks
                                   4120 ;	-----------------------------------------
      00357D                       4121 _xTaskCatchUpTicks:
      00357D AE 82            [24] 4122 	mov	r6,dpl
      00357F AF 83            [24] 4123 	mov	r7,dph
                           00103D  4124 	C$tasks.c$2648$1_0$269 ==.
                                   4125 ;	tasks.c:2648: vTaskSuspendAll();
      003581 C0 07            [24] 4126 	push	ar7
      003583 C0 06            [24] 4127 	push	ar6
      003585 12 2E 9C         [24] 4128 	lcall	_vTaskSuspendAll
      003588 D0 06            [24] 4129 	pop	ar6
      00358A D0 07            [24] 4130 	pop	ar7
                           001048  4131 	C$tasks.c$2649$1_0$269 ==.
                                   4132 ;	tasks.c:2649: xPendedTicks += xTicksToCatchUp;
      00358C 90 0C 88         [24] 4133 	mov	dptr,#_xPendedTicks
      00358F E0               [24] 4134 	movx	a,@dptr
      003590 FC               [12] 4135 	mov	r4,a
      003591 A3               [24] 4136 	inc	dptr
      003592 E0               [24] 4137 	movx	a,@dptr
      003593 FD               [12] 4138 	mov	r5,a
      003594 90 0C 88         [24] 4139 	mov	dptr,#_xPendedTicks
      003597 EE               [12] 4140 	mov	a,r6
      003598 2C               [12] 4141 	add	a,r4
      003599 F0               [24] 4142 	movx	@dptr,a
      00359A EF               [12] 4143 	mov	a,r7
      00359B 3D               [12] 4144 	addc	a,r5
      00359C A3               [24] 4145 	inc	dptr
      00359D F0               [24] 4146 	movx	@dptr,a
                           00105A  4147 	C$tasks.c$2650$1_0$269 ==.
                                   4148 ;	tasks.c:2650: xYieldOccurred = xTaskResumeAll();
      00359E 12 2E A4         [24] 4149 	lcall	_xTaskResumeAll
      0035A1 AF 82            [24] 4150 	mov	r7,dpl
                           00105F  4151 	C$tasks.c$2652$1_0$269 ==.
                                   4152 ;	tasks.c:2652: return xYieldOccurred;
      0035A3 8F 82            [24] 4153 	mov	dpl,r7
      0035A5                       4154 00101$:
                           001061  4155 	C$tasks.c$2653$1_0$269 ==.
                                   4156 ;	tasks.c:2653: }
                           001061  4157 	C$tasks.c$2653$1_0$269 ==.
                           001061  4158 	XG$xTaskCatchUpTicks$0$0 ==.
      0035A5 22               [24] 4159 	ret
                                   4160 ;------------------------------------------------------------
                                   4161 ;Allocation info for local variables in function 'xTaskIncrementTick'
                                   4162 ;------------------------------------------------------------
                                   4163 ;pxTCB                     Allocated to stack - _bp +16
                                   4164 ;xItemValue                Allocated to registers r6 r7 
                                   4165 ;xSwitchRequired           Allocated to registers 
                                   4166 ;xConstTickCount           Allocated to stack - _bp +19
                                   4167 ;pxTemp                    Allocated to registers r3 r4 r5 
                                   4168 ;pxList                    Allocated to stack - _bp +21
                                   4169 ;pxList                    Allocated to stack - _bp +21
                                   4170 ;pxIndex                   Allocated to stack - _bp +21
                                   4171 ;sloc0                     Allocated to stack - _bp +4
                                   4172 ;sloc1                     Allocated to stack - _bp +7
                                   4173 ;sloc2                     Allocated to stack - _bp +1
                                   4174 ;sloc3                     Allocated to stack - _bp +13
                                   4175 ;sloc4                     Allocated to stack - _bp +10
                                   4176 ;------------------------------------------------------------
                           001062  4177 	G$xTaskIncrementTick$0$0 ==.
                           001062  4178 	C$tasks.c$2736$1_0$271 ==.
                                   4179 ;	tasks.c:2736: BaseType_t xTaskIncrementTick( void )
                                   4180 ;	-----------------------------------------
                                   4181 ;	 function xTaskIncrementTick
                                   4182 ;	-----------------------------------------
      0035A6                       4183 _xTaskIncrementTick:
      0035A6 C0 0D            [24] 4184 	push	_bp
      0035A8 85 81 0D         [24] 4185 	mov	_bp,sp
      0035AB E5 81            [12] 4186 	mov	a,sp
      0035AD 24 17            [12] 4187 	add	a,#0x17
      0035AF F5 81            [12] 4188 	mov	sp,a
                           00106D  4189 	C$tasks.c$2747$1_0$271 ==.
                                   4190 ;	tasks.c:2747: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      0035B1 90 0C 92         [24] 4191 	mov	dptr,#_uxSchedulerSuspended
      0035B4 E0               [24] 4192 	movx	a,@dptr
      0035B5 60 03            [24] 4193 	jz	00167$
      0035B7 02 3C 9E         [24] 4194 	ljmp	00120$
      0035BA                       4195 00167$:
                           001076  4196 	C$tasks.c$2751$2_0$272 ==.
                                   4197 ;	tasks.c:2751: const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
      0035BA 90 0C 84         [24] 4198 	mov	dptr,#_xTickCount
      0035BD E0               [24] 4199 	movx	a,@dptr
      0035BE FE               [12] 4200 	mov	r6,a
      0035BF A3               [24] 4201 	inc	dptr
      0035C0 E0               [24] 4202 	movx	a,@dptr
      0035C1 FF               [12] 4203 	mov	r7,a
      0035C2 E5 0D            [12] 4204 	mov	a,_bp
      0035C4 24 13            [12] 4205 	add	a,#0x13
      0035C6 F8               [12] 4206 	mov	r0,a
      0035C7 74 01            [12] 4207 	mov	a,#0x01
      0035C9 2E               [12] 4208 	add	a,r6
      0035CA F6               [12] 4209 	mov	@r0,a
      0035CB 74 00            [12] 4210 	mov	a,#0x00
      0035CD 3F               [12] 4211 	addc	a,r7
      0035CE 08               [12] 4212 	inc	r0
      0035CF F6               [12] 4213 	mov	@r0,a
                           00108C  4214 	C$tasks.c$2755$2_0$272 ==.
                                   4215 ;	tasks.c:2755: xTickCount = xConstTickCount;
      0035D0 E5 0D            [12] 4216 	mov	a,_bp
      0035D2 24 13            [12] 4217 	add	a,#0x13
      0035D4 F8               [12] 4218 	mov	r0,a
      0035D5 90 0C 84         [24] 4219 	mov	dptr,#_xTickCount
      0035D8 E6               [12] 4220 	mov	a,@r0
      0035D9 F0               [24] 4221 	movx	@dptr,a
      0035DA 08               [12] 4222 	inc	r0
      0035DB E6               [12] 4223 	mov	a,@r0
      0035DC A3               [24] 4224 	inc	dptr
      0035DD F0               [24] 4225 	movx	@dptr,a
                           00109A  4226 	C$tasks.c$2757$2_0$272 ==.
                                   4227 ;	tasks.c:2757: if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
      0035DE E5 0D            [12] 4228 	mov	a,_bp
      0035E0 24 13            [12] 4229 	add	a,#0x13
      0035E2 F8               [12] 4230 	mov	r0,a
      0035E3 E6               [12] 4231 	mov	a,@r0
      0035E4 08               [12] 4232 	inc	r0
      0035E5 46               [12] 4233 	orl	a,@r0
      0035E6 60 03            [24] 4234 	jz	00168$
      0035E8 02 36 20         [24] 4235 	ljmp	00102$
      0035EB                       4236 00168$:
                           0010A7  4237 	C$tasks.c$2759$1_0$271 ==.
                                   4238 ;	tasks.c:2759: taskSWITCH_DELAYED_LISTS();
      0035EB 90 00 5E         [24] 4239 	mov	dptr,#_pxDelayedTaskList
      0035EE E0               [24] 4240 	movx	a,@dptr
      0035EF FB               [12] 4241 	mov	r3,a
      0035F0 A3               [24] 4242 	inc	dptr
      0035F1 E0               [24] 4243 	movx	a,@dptr
      0035F2 FC               [12] 4244 	mov	r4,a
      0035F3 A3               [24] 4245 	inc	dptr
      0035F4 E0               [24] 4246 	movx	a,@dptr
      0035F5 FD               [12] 4247 	mov	r5,a
      0035F6 90 00 61         [24] 4248 	mov	dptr,#_pxOverflowDelayedTaskList
      0035F9 E0               [24] 4249 	movx	a,@dptr
      0035FA FA               [12] 4250 	mov	r2,a
      0035FB A3               [24] 4251 	inc	dptr
      0035FC E0               [24] 4252 	movx	a,@dptr
      0035FD FE               [12] 4253 	mov	r6,a
      0035FE A3               [24] 4254 	inc	dptr
      0035FF E0               [24] 4255 	movx	a,@dptr
      003600 FF               [12] 4256 	mov	r7,a
      003601 90 00 5E         [24] 4257 	mov	dptr,#_pxDelayedTaskList
      003604 EA               [12] 4258 	mov	a,r2
      003605 F0               [24] 4259 	movx	@dptr,a
      003606 EE               [12] 4260 	mov	a,r6
      003607 A3               [24] 4261 	inc	dptr
      003608 F0               [24] 4262 	movx	@dptr,a
      003609 EF               [12] 4263 	mov	a,r7
      00360A A3               [24] 4264 	inc	dptr
      00360B F0               [24] 4265 	movx	@dptr,a
      00360C 90 00 61         [24] 4266 	mov	dptr,#_pxOverflowDelayedTaskList
      00360F EB               [12] 4267 	mov	a,r3
      003610 F0               [24] 4268 	movx	@dptr,a
      003611 EC               [12] 4269 	mov	a,r4
      003612 A3               [24] 4270 	inc	dptr
      003613 F0               [24] 4271 	movx	@dptr,a
      003614 ED               [12] 4272 	mov	a,r5
      003615 A3               [24] 4273 	inc	dptr
      003616 F0               [24] 4274 	movx	@dptr,a
      003617 90 0C 8B         [24] 4275 	mov	dptr,#_xNumOfOverflows
      00361A E0               [24] 4276 	movx	a,@dptr
      00361B 04               [12] 4277 	inc	a
      00361C F0               [24] 4278 	movx	@dptr,a
      00361D 12 50 F0         [24] 4279 	lcall	_prvResetNextTaskUnblockTime
                           0010DC  4280 	C$tasks.c$2905$1_0$271 ==.
                                   4281 ;	tasks.c:2905: return xSwitchRequired;
                           0010DC  4282 	C$tasks.c$2759$2_0$272 ==.
                                   4283 ;	tasks.c:2759: taskSWITCH_DELAYED_LISTS();
      003620                       4284 00102$:
                           0010DC  4285 	C$tasks.c$2770$2_0$272 ==.
                                   4286 ;	tasks.c:2770: if( xConstTickCount >= xNextTaskUnblockTime )
      003620 90 0C 8D         [24] 4287 	mov	dptr,#_xNextTaskUnblockTime
      003623 E0               [24] 4288 	movx	a,@dptr
      003624 FC               [12] 4289 	mov	r4,a
      003625 A3               [24] 4290 	inc	dptr
      003626 E0               [24] 4291 	movx	a,@dptr
      003627 FD               [12] 4292 	mov	r5,a
      003628 E5 0D            [12] 4293 	mov	a,_bp
      00362A 24 13            [12] 4294 	add	a,#0x13
      00362C F8               [12] 4295 	mov	r0,a
      00362D C3               [12] 4296 	clr	c
      00362E E6               [12] 4297 	mov	a,@r0
      00362F 9C               [12] 4298 	subb	a,r4
      003630 08               [12] 4299 	inc	r0
      003631 E6               [12] 4300 	mov	a,@r0
      003632 9D               [12] 4301 	subb	a,r5
      003633 50 03            [24] 4302 	jnc	00169$
      003635 02 3C AA         [24] 4303 	ljmp	00121$
      003638                       4304 00169$:
      003638                       4305 00122$:
                           0010F4  4306 	C$tasks.c$2774$5_0$278 ==.
                                   4307 ;	tasks.c:2774: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
      003638 90 00 5E         [24] 4308 	mov	dptr,#_pxDelayedTaskList
      00363B E0               [24] 4309 	movx	a,@dptr
      00363C FB               [12] 4310 	mov	r3,a
      00363D A3               [24] 4311 	inc	dptr
      00363E E0               [24] 4312 	movx	a,@dptr
      00363F FC               [12] 4313 	mov	r4,a
      003640 A3               [24] 4314 	inc	dptr
      003641 E0               [24] 4315 	movx	a,@dptr
      003642 FD               [12] 4316 	mov	r5,a
      003643 8B 82            [24] 4317 	mov	dpl,r3
      003645 8C 83            [24] 4318 	mov	dph,r4
      003647 8D F0            [24] 4319 	mov	b,r5
      003649 12 7C 4D         [24] 4320 	lcall	__gptrget
      00364C 60 03            [24] 4321 	jz	00170$
      00364E 02 36 5C         [24] 4322 	ljmp	00114$
      003651                       4323 00170$:
                           00110D  4324 	C$tasks.c$2781$6_0$279 ==.
                                   4325 ;	tasks.c:2781: xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      003651 90 0C 8D         [24] 4326 	mov	dptr,#_xNextTaskUnblockTime
      003654 74 FF            [12] 4327 	mov	a,#0xff
      003656 F0               [24] 4328 	movx	@dptr,a
      003657 A3               [24] 4329 	inc	dptr
      003658 F0               [24] 4330 	movx	@dptr,a
                           001115  4331 	C$tasks.c$2782$6_0$279 ==.
                                   4332 ;	tasks.c:2782: break;
      003659 02 3C AA         [24] 4333 	ljmp	00121$
      00365C                       4334 00114$:
                           001118  4335 	C$tasks.c$2790$6_0$280 ==.
                                   4336 ;	tasks.c:2790: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      00365C 90 00 5E         [24] 4337 	mov	dptr,#_pxDelayedTaskList
      00365F E0               [24] 4338 	movx	a,@dptr
      003660 FB               [12] 4339 	mov	r3,a
      003661 A3               [24] 4340 	inc	dptr
      003662 E0               [24] 4341 	movx	a,@dptr
      003663 FC               [12] 4342 	mov	r4,a
      003664 A3               [24] 4343 	inc	dptr
      003665 E0               [24] 4344 	movx	a,@dptr
      003666 FD               [12] 4345 	mov	r5,a
      003667 74 04            [12] 4346 	mov	a,#0x04
      003669 2B               [12] 4347 	add	a,r3
      00366A FB               [12] 4348 	mov	r3,a
      00366B 74 00            [12] 4349 	mov	a,#0x00
      00366D 3C               [12] 4350 	addc	a,r4
      00366E FC               [12] 4351 	mov	r4,a
      00366F 74 02            [12] 4352 	mov	a,#0x02
      003671 2B               [12] 4353 	add	a,r3
      003672 FB               [12] 4354 	mov	r3,a
      003673 74 00            [12] 4355 	mov	a,#0x00
      003675 3C               [12] 4356 	addc	a,r4
      003676 FC               [12] 4357 	mov	r4,a
      003677 8B 82            [24] 4358 	mov	dpl,r3
      003679 8C 83            [24] 4359 	mov	dph,r4
      00367B 8D F0            [24] 4360 	mov	b,r5
      00367D 12 7C 4D         [24] 4361 	lcall	__gptrget
      003680 FB               [12] 4362 	mov	r3,a
      003681 A3               [24] 4363 	inc	dptr
      003682 12 7C 4D         [24] 4364 	lcall	__gptrget
      003685 FC               [12] 4365 	mov	r4,a
      003686 A3               [24] 4366 	inc	dptr
      003687 12 7C 4D         [24] 4367 	lcall	__gptrget
      00368A FD               [12] 4368 	mov	r5,a
      00368B 74 08            [12] 4369 	mov	a,#0x08
      00368D 2B               [12] 4370 	add	a,r3
      00368E FB               [12] 4371 	mov	r3,a
      00368F 74 00            [12] 4372 	mov	a,#0x00
      003691 3C               [12] 4373 	addc	a,r4
      003692 FC               [12] 4374 	mov	r4,a
      003693 8B 82            [24] 4375 	mov	dpl,r3
      003695 8C 83            [24] 4376 	mov	dph,r4
      003697 8D F0            [24] 4377 	mov	b,r5
      003699 12 7C 4D         [24] 4378 	lcall	__gptrget
      00369C FB               [12] 4379 	mov	r3,a
      00369D A3               [24] 4380 	inc	dptr
      00369E 12 7C 4D         [24] 4381 	lcall	__gptrget
      0036A1 FC               [12] 4382 	mov	r4,a
      0036A2 A3               [24] 4383 	inc	dptr
      0036A3 12 7C 4D         [24] 4384 	lcall	__gptrget
      0036A6 FD               [12] 4385 	mov	r5,a
      0036A7 E5 0D            [12] 4386 	mov	a,_bp
      0036A9 24 10            [12] 4387 	add	a,#0x10
      0036AB F8               [12] 4388 	mov	r0,a
      0036AC A6 03            [24] 4389 	mov	@r0,ar3
      0036AE 08               [12] 4390 	inc	r0
      0036AF A6 04            [24] 4391 	mov	@r0,ar4
      0036B1 08               [12] 4392 	inc	r0
      0036B2 A6 05            [24] 4393 	mov	@r0,ar5
                           001170  4394 	C$tasks.c$2791$6_0$280 ==.
                                   4395 ;	tasks.c:2791: xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
      0036B4 E5 0D            [12] 4396 	mov	a,_bp
      0036B6 24 10            [12] 4397 	add	a,#0x10
      0036B8 F8               [12] 4398 	mov	r0,a
      0036B9 74 03            [12] 4399 	mov	a,#0x03
      0036BB 26               [12] 4400 	add	a,@r0
      0036BC FE               [12] 4401 	mov	r6,a
      0036BD 74 00            [12] 4402 	mov	a,#0x00
      0036BF 08               [12] 4403 	inc	r0
      0036C0 36               [12] 4404 	addc	a,@r0
      0036C1 FA               [12] 4405 	mov	r2,a
      0036C2 08               [12] 4406 	inc	r0
      0036C3 86 07            [24] 4407 	mov	ar7,@r0
      0036C5 8E 82            [24] 4408 	mov	dpl,r6
      0036C7 8A 83            [24] 4409 	mov	dph,r2
      0036C9 8F F0            [24] 4410 	mov	b,r7
      0036CB 12 7C 4D         [24] 4411 	lcall	__gptrget
      0036CE FE               [12] 4412 	mov	r6,a
      0036CF A3               [24] 4413 	inc	dptr
      0036D0 12 7C 4D         [24] 4414 	lcall	__gptrget
      0036D3 FF               [12] 4415 	mov	r7,a
                           001190  4416 	C$tasks.c$2793$6_0$280 ==.
                                   4417 ;	tasks.c:2793: if( xConstTickCount < xItemValue )
      0036D4 E5 0D            [12] 4418 	mov	a,_bp
      0036D6 24 13            [12] 4419 	add	a,#0x13
      0036D8 F8               [12] 4420 	mov	r0,a
      0036D9 C3               [12] 4421 	clr	c
      0036DA E6               [12] 4422 	mov	a,@r0
      0036DB 9E               [12] 4423 	subb	a,r6
      0036DC 08               [12] 4424 	inc	r0
      0036DD E6               [12] 4425 	mov	a,@r0
      0036DE 9F               [12] 4426 	subb	a,r7
      0036DF 40 03            [24] 4427 	jc	00171$
      0036E1 02 36 EF         [24] 4428 	ljmp	00104$
      0036E4                       4429 00171$:
                           0011A0  4430 	C$tasks.c$2800$7_0$281 ==.
                                   4431 ;	tasks.c:2800: xNextTaskUnblockTime = xItemValue;
      0036E4 90 0C 8D         [24] 4432 	mov	dptr,#_xNextTaskUnblockTime
      0036E7 EE               [12] 4433 	mov	a,r6
      0036E8 F0               [24] 4434 	movx	@dptr,a
      0036E9 EF               [12] 4435 	mov	a,r7
      0036EA A3               [24] 4436 	inc	dptr
      0036EB F0               [24] 4437 	movx	@dptr,a
                           0011A8  4438 	C$tasks.c$2801$7_0$281 ==.
                                   4439 ;	tasks.c:2801: break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
      0036EC 02 3C AA         [24] 4440 	ljmp	00121$
      0036EF                       4441 00104$:
                           0011AB  4442 	C$tasks.c$2809$7_0$283 ==.
                                   4443 ;	tasks.c:2809: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
      0036EF E5 0D            [12] 4444 	mov	a,_bp
      0036F1 24 10            [12] 4445 	add	a,#0x10
      0036F3 F8               [12] 4446 	mov	r0,a
      0036F4 74 03            [12] 4447 	mov	a,#0x03
      0036F6 26               [12] 4448 	add	a,@r0
      0036F7 FA               [12] 4449 	mov	r2,a
      0036F8 74 00            [12] 4450 	mov	a,#0x00
      0036FA 08               [12] 4451 	inc	r0
      0036FB 36               [12] 4452 	addc	a,@r0
      0036FC FE               [12] 4453 	mov	r6,a
      0036FD 08               [12] 4454 	inc	r0
      0036FE 86 07            [24] 4455 	mov	ar7,@r0
      003700 E5 0D            [12] 4456 	mov	a,_bp
      003702 24 10            [12] 4457 	add	a,#0x10
      003704 F8               [12] 4458 	mov	r0,a
      003705 74 0E            [12] 4459 	mov	a,#0x0e
      003707 26               [12] 4460 	add	a,@r0
      003708 FB               [12] 4461 	mov	r3,a
      003709 74 00            [12] 4462 	mov	a,#0x00
      00370B 08               [12] 4463 	inc	r0
      00370C 36               [12] 4464 	addc	a,@r0
      00370D FC               [12] 4465 	mov	r4,a
      00370E 08               [12] 4466 	inc	r0
      00370F 86 05            [24] 4467 	mov	ar5,@r0
      003711 8B 82            [24] 4468 	mov	dpl,r3
      003713 8C 83            [24] 4469 	mov	dph,r4
      003715 8D F0            [24] 4470 	mov	b,r5
      003717 E5 0D            [12] 4471 	mov	a,_bp
      003719 24 15            [12] 4472 	add	a,#0x15
      00371B F8               [12] 4473 	mov	r0,a
      00371C 12 7C 4D         [24] 4474 	lcall	__gptrget
      00371F F6               [12] 4475 	mov	@r0,a
      003720 A3               [24] 4476 	inc	dptr
      003721 12 7C 4D         [24] 4477 	lcall	__gptrget
      003724 08               [12] 4478 	inc	r0
      003725 F6               [12] 4479 	mov	@r0,a
      003726 A3               [24] 4480 	inc	dptr
      003727 12 7C 4D         [24] 4481 	lcall	__gptrget
      00372A 08               [12] 4482 	inc	r0
      00372B F6               [12] 4483 	mov	@r0,a
      00372C E5 0D            [12] 4484 	mov	a,_bp
      00372E 24 10            [12] 4485 	add	a,#0x10
      003730 F8               [12] 4486 	mov	r0,a
      003731 E5 0D            [12] 4487 	mov	a,_bp
      003733 24 04            [12] 4488 	add	a,#0x04
      003735 F9               [12] 4489 	mov	r1,a
      003736 74 05            [12] 4490 	mov	a,#0x05
      003738 26               [12] 4491 	add	a,@r0
      003739 F7               [12] 4492 	mov	@r1,a
      00373A 74 00            [12] 4493 	mov	a,#0x00
      00373C 08               [12] 4494 	inc	r0
      00373D 36               [12] 4495 	addc	a,@r0
      00373E 09               [12] 4496 	inc	r1
      00373F F7               [12] 4497 	mov	@r1,a
      003740 08               [12] 4498 	inc	r0
      003741 E6               [12] 4499 	mov	a,@r0
      003742 09               [12] 4500 	inc	r1
      003743 F7               [12] 4501 	mov	@r1,a
      003744 E5 0D            [12] 4502 	mov	a,_bp
      003746 24 04            [12] 4503 	add	a,#0x04
      003748 F8               [12] 4504 	mov	r0,a
      003749 86 82            [24] 4505 	mov	dpl,@r0
      00374B 08               [12] 4506 	inc	r0
      00374C 86 83            [24] 4507 	mov	dph,@r0
      00374E 08               [12] 4508 	inc	r0
      00374F 86 F0            [24] 4509 	mov	b,@r0
      003751 12 7C 4D         [24] 4510 	lcall	__gptrget
      003754 FB               [12] 4511 	mov	r3,a
      003755 A3               [24] 4512 	inc	dptr
      003756 12 7C 4D         [24] 4513 	lcall	__gptrget
      003759 FC               [12] 4514 	mov	r4,a
      00375A A3               [24] 4515 	inc	dptr
      00375B 12 7C 4D         [24] 4516 	lcall	__gptrget
      00375E FD               [12] 4517 	mov	r5,a
      00375F A8 0D            [24] 4518 	mov	r0,_bp
      003761 08               [12] 4519 	inc	r0
      003762 74 05            [12] 4520 	mov	a,#0x05
      003764 2B               [12] 4521 	add	a,r3
      003765 F6               [12] 4522 	mov	@r0,a
      003766 74 00            [12] 4523 	mov	a,#0x00
      003768 3C               [12] 4524 	addc	a,r4
      003769 08               [12] 4525 	inc	r0
      00376A F6               [12] 4526 	mov	@r0,a
      00376B 08               [12] 4527 	inc	r0
      00376C A6 05            [24] 4528 	mov	@r0,ar5
      00376E E5 0D            [12] 4529 	mov	a,_bp
      003770 24 10            [12] 4530 	add	a,#0x10
      003772 F8               [12] 4531 	mov	r0,a
      003773 E5 0D            [12] 4532 	mov	a,_bp
      003775 24 07            [12] 4533 	add	a,#0x07
      003777 F9               [12] 4534 	mov	r1,a
      003778 74 08            [12] 4535 	mov	a,#0x08
      00377A 26               [12] 4536 	add	a,@r0
      00377B F7               [12] 4537 	mov	@r1,a
      00377C 74 00            [12] 4538 	mov	a,#0x00
      00377E 08               [12] 4539 	inc	r0
      00377F 36               [12] 4540 	addc	a,@r0
      003780 09               [12] 4541 	inc	r1
      003781 F7               [12] 4542 	mov	@r1,a
      003782 08               [12] 4543 	inc	r0
      003783 E6               [12] 4544 	mov	a,@r0
      003784 09               [12] 4545 	inc	r1
      003785 F7               [12] 4546 	mov	@r1,a
      003786 E5 0D            [12] 4547 	mov	a,_bp
      003788 24 07            [12] 4548 	add	a,#0x07
      00378A F8               [12] 4549 	mov	r0,a
      00378B 86 82            [24] 4550 	mov	dpl,@r0
      00378D 08               [12] 4551 	inc	r0
      00378E 86 83            [24] 4552 	mov	dph,@r0
      003790 08               [12] 4553 	inc	r0
      003791 86 F0            [24] 4554 	mov	b,@r0
      003793 12 7C 4D         [24] 4555 	lcall	__gptrget
      003796 FB               [12] 4556 	mov	r3,a
      003797 A3               [24] 4557 	inc	dptr
      003798 12 7C 4D         [24] 4558 	lcall	__gptrget
      00379B FC               [12] 4559 	mov	r4,a
      00379C A3               [24] 4560 	inc	dptr
      00379D 12 7C 4D         [24] 4561 	lcall	__gptrget
      0037A0 FD               [12] 4562 	mov	r5,a
      0037A1 A8 0D            [24] 4563 	mov	r0,_bp
      0037A3 08               [12] 4564 	inc	r0
      0037A4 86 82            [24] 4565 	mov	dpl,@r0
      0037A6 08               [12] 4566 	inc	r0
      0037A7 86 83            [24] 4567 	mov	dph,@r0
      0037A9 08               [12] 4568 	inc	r0
      0037AA 86 F0            [24] 4569 	mov	b,@r0
      0037AC EB               [12] 4570 	mov	a,r3
      0037AD 12 79 22         [24] 4571 	lcall	__gptrput
      0037B0 A3               [24] 4572 	inc	dptr
      0037B1 EC               [12] 4573 	mov	a,r4
      0037B2 12 79 22         [24] 4574 	lcall	__gptrput
      0037B5 A3               [24] 4575 	inc	dptr
      0037B6 ED               [12] 4576 	mov	a,r5
      0037B7 12 79 22         [24] 4577 	lcall	__gptrput
      0037BA E5 0D            [12] 4578 	mov	a,_bp
      0037BC 24 07            [12] 4579 	add	a,#0x07
      0037BE F8               [12] 4580 	mov	r0,a
      0037BF 86 82            [24] 4581 	mov	dpl,@r0
      0037C1 08               [12] 4582 	inc	r0
      0037C2 86 83            [24] 4583 	mov	dph,@r0
      0037C4 08               [12] 4584 	inc	r0
      0037C5 86 F0            [24] 4585 	mov	b,@r0
      0037C7 12 7C 4D         [24] 4586 	lcall	__gptrget
      0037CA FB               [12] 4587 	mov	r3,a
      0037CB A3               [24] 4588 	inc	dptr
      0037CC 12 7C 4D         [24] 4589 	lcall	__gptrget
      0037CF FC               [12] 4590 	mov	r4,a
      0037D0 A3               [24] 4591 	inc	dptr
      0037D1 12 7C 4D         [24] 4592 	lcall	__gptrget
      0037D4 FD               [12] 4593 	mov	r5,a
      0037D5 A8 0D            [24] 4594 	mov	r0,_bp
      0037D7 08               [12] 4595 	inc	r0
      0037D8 74 02            [12] 4596 	mov	a,#0x02
      0037DA 2B               [12] 4597 	add	a,r3
      0037DB F6               [12] 4598 	mov	@r0,a
      0037DC 74 00            [12] 4599 	mov	a,#0x00
      0037DE 3C               [12] 4600 	addc	a,r4
      0037DF 08               [12] 4601 	inc	r0
      0037E0 F6               [12] 4602 	mov	@r0,a
      0037E1 08               [12] 4603 	inc	r0
      0037E2 A6 05            [24] 4604 	mov	@r0,ar5
      0037E4 E5 0D            [12] 4605 	mov	a,_bp
      0037E6 24 04            [12] 4606 	add	a,#0x04
      0037E8 F8               [12] 4607 	mov	r0,a
      0037E9 86 82            [24] 4608 	mov	dpl,@r0
      0037EB 08               [12] 4609 	inc	r0
      0037EC 86 83            [24] 4610 	mov	dph,@r0
      0037EE 08               [12] 4611 	inc	r0
      0037EF 86 F0            [24] 4612 	mov	b,@r0
      0037F1 12 7C 4D         [24] 4613 	lcall	__gptrget
      0037F4 FB               [12] 4614 	mov	r3,a
      0037F5 A3               [24] 4615 	inc	dptr
      0037F6 12 7C 4D         [24] 4616 	lcall	__gptrget
      0037F9 FC               [12] 4617 	mov	r4,a
      0037FA A3               [24] 4618 	inc	dptr
      0037FB 12 7C 4D         [24] 4619 	lcall	__gptrget
      0037FE FD               [12] 4620 	mov	r5,a
      0037FF A8 0D            [24] 4621 	mov	r0,_bp
      003801 08               [12] 4622 	inc	r0
      003802 86 82            [24] 4623 	mov	dpl,@r0
      003804 08               [12] 4624 	inc	r0
      003805 86 83            [24] 4625 	mov	dph,@r0
      003807 08               [12] 4626 	inc	r0
      003808 86 F0            [24] 4627 	mov	b,@r0
      00380A EB               [12] 4628 	mov	a,r3
      00380B 12 79 22         [24] 4629 	lcall	__gptrput
      00380E A3               [24] 4630 	inc	dptr
      00380F EC               [12] 4631 	mov	a,r4
      003810 12 79 22         [24] 4632 	lcall	__gptrput
      003813 A3               [24] 4633 	inc	dptr
      003814 ED               [12] 4634 	mov	a,r5
      003815 12 79 22         [24] 4635 	lcall	__gptrput
      003818 E5 0D            [12] 4636 	mov	a,_bp
      00381A 24 15            [12] 4637 	add	a,#0x15
      00381C F8               [12] 4638 	mov	r0,a
      00381D A9 0D            [24] 4639 	mov	r1,_bp
      00381F 09               [12] 4640 	inc	r1
      003820 74 01            [12] 4641 	mov	a,#0x01
      003822 26               [12] 4642 	add	a,@r0
      003823 F7               [12] 4643 	mov	@r1,a
      003824 74 00            [12] 4644 	mov	a,#0x00
      003826 08               [12] 4645 	inc	r0
      003827 36               [12] 4646 	addc	a,@r0
      003828 09               [12] 4647 	inc	r1
      003829 F7               [12] 4648 	mov	@r1,a
      00382A 08               [12] 4649 	inc	r0
      00382B E6               [12] 4650 	mov	a,@r0
      00382C 09               [12] 4651 	inc	r1
      00382D F7               [12] 4652 	mov	@r1,a
      00382E A8 0D            [24] 4653 	mov	r0,_bp
      003830 08               [12] 4654 	inc	r0
      003831 86 82            [24] 4655 	mov	dpl,@r0
      003833 08               [12] 4656 	inc	r0
      003834 86 83            [24] 4657 	mov	dph,@r0
      003836 08               [12] 4658 	inc	r0
      003837 86 F0            [24] 4659 	mov	b,@r0
      003839 12 7C 4D         [24] 4660 	lcall	__gptrget
      00383C FB               [12] 4661 	mov	r3,a
      00383D A3               [24] 4662 	inc	dptr
      00383E 12 7C 4D         [24] 4663 	lcall	__gptrget
      003841 FC               [12] 4664 	mov	r4,a
      003842 A3               [24] 4665 	inc	dptr
      003843 12 7C 4D         [24] 4666 	lcall	__gptrget
      003846 FD               [12] 4667 	mov	r5,a
      003847 C0 02            [24] 4668 	push	ar2
      003849 C0 06            [24] 4669 	push	ar6
      00384B C0 07            [24] 4670 	push	ar7
      00384D 8B 82            [24] 4671 	mov	dpl,r3
      00384F 8C 83            [24] 4672 	mov	dph,r4
      003851 8D F0            [24] 4673 	mov	b,r5
      003853 12 00 31         [24] 4674 	lcall	___gptr_cmp
      003856 15 81            [12] 4675 	dec	sp
      003858 15 81            [12] 4676 	dec	sp
      00385A 15 81            [12] 4677 	dec	sp
      00385C 70 02            [24] 4678 	jnz	00172$
      00385E 80 03            [24] 4679 	sjmp	00173$
      003860                       4680 00172$:
      003860 02 38 97         [24] 4681 	ljmp	00106$
      003863                       4682 00173$:
      003863 E5 0D            [12] 4683 	mov	a,_bp
      003865 24 07            [12] 4684 	add	a,#0x07
      003867 F8               [12] 4685 	mov	r0,a
      003868 86 82            [24] 4686 	mov	dpl,@r0
      00386A 08               [12] 4687 	inc	r0
      00386B 86 83            [24] 4688 	mov	dph,@r0
      00386D 08               [12] 4689 	inc	r0
      00386E 86 F0            [24] 4690 	mov	b,@r0
      003870 12 7C 4D         [24] 4691 	lcall	__gptrget
      003873 FB               [12] 4692 	mov	r3,a
      003874 A3               [24] 4693 	inc	dptr
      003875 12 7C 4D         [24] 4694 	lcall	__gptrget
      003878 FC               [12] 4695 	mov	r4,a
      003879 A3               [24] 4696 	inc	dptr
      00387A 12 7C 4D         [24] 4697 	lcall	__gptrget
      00387D FD               [12] 4698 	mov	r5,a
      00387E A8 0D            [24] 4699 	mov	r0,_bp
      003880 08               [12] 4700 	inc	r0
      003881 86 82            [24] 4701 	mov	dpl,@r0
      003883 08               [12] 4702 	inc	r0
      003884 86 83            [24] 4703 	mov	dph,@r0
      003886 08               [12] 4704 	inc	r0
      003887 86 F0            [24] 4705 	mov	b,@r0
      003889 EB               [12] 4706 	mov	a,r3
      00388A 12 79 22         [24] 4707 	lcall	__gptrput
      00388D A3               [24] 4708 	inc	dptr
      00388E EC               [12] 4709 	mov	a,r4
      00388F 12 79 22         [24] 4710 	lcall	__gptrput
      003892 A3               [24] 4711 	inc	dptr
      003893 ED               [12] 4712 	mov	a,r5
      003894 12 79 22         [24] 4713 	lcall	__gptrput
      003897                       4714 00106$:
      003897 E5 0D            [12] 4715 	mov	a,_bp
      003899 24 0D            [12] 4716 	add	a,#0x0d
      00389B F8               [12] 4717 	mov	r0,a
      00389C 74 0B            [12] 4718 	mov	a,#0x0b
      00389E 2A               [12] 4719 	add	a,r2
      00389F F6               [12] 4720 	mov	@r0,a
      0038A0 74 00            [12] 4721 	mov	a,#0x00
      0038A2 3E               [12] 4722 	addc	a,r6
      0038A3 08               [12] 4723 	inc	r0
      0038A4 F6               [12] 4724 	mov	@r0,a
      0038A5 08               [12] 4725 	inc	r0
      0038A6 A6 07            [24] 4726 	mov	@r0,ar7
      0038A8 E5 0D            [12] 4727 	mov	a,_bp
      0038AA 24 0D            [12] 4728 	add	a,#0x0d
      0038AC F8               [12] 4729 	mov	r0,a
      0038AD 86 82            [24] 4730 	mov	dpl,@r0
      0038AF 08               [12] 4731 	inc	r0
      0038B0 86 83            [24] 4732 	mov	dph,@r0
      0038B2 08               [12] 4733 	inc	r0
      0038B3 86 F0            [24] 4734 	mov	b,@r0
      0038B5 74 00            [12] 4735 	mov	a,#0x00
      0038B7 12 79 22         [24] 4736 	lcall	__gptrput
      0038BA A3               [24] 4737 	inc	dptr
      0038BB 12 79 22         [24] 4738 	lcall	__gptrput
      0038BE A3               [24] 4739 	inc	dptr
      0038BF 12 79 22         [24] 4740 	lcall	__gptrput
      0038C2 C0 02            [24] 4741 	push	ar2
      0038C4 C0 06            [24] 4742 	push	ar6
      0038C6 C0 07            [24] 4743 	push	ar7
      0038C8 E5 0D            [12] 4744 	mov	a,_bp
      0038CA 24 15            [12] 4745 	add	a,#0x15
      0038CC F8               [12] 4746 	mov	r0,a
      0038CD 86 82            [24] 4747 	mov	dpl,@r0
      0038CF 08               [12] 4748 	inc	r0
      0038D0 86 83            [24] 4749 	mov	dph,@r0
      0038D2 08               [12] 4750 	inc	r0
      0038D3 86 F0            [24] 4751 	mov	b,@r0
      0038D5 12 7C 4D         [24] 4752 	lcall	__gptrget
      0038D8 FF               [12] 4753 	mov	r7,a
      0038D9 1F               [12] 4754 	dec	r7
      0038DA E5 0D            [12] 4755 	mov	a,_bp
      0038DC 24 15            [12] 4756 	add	a,#0x15
      0038DE F8               [12] 4757 	mov	r0,a
      0038DF 86 82            [24] 4758 	mov	dpl,@r0
      0038E1 08               [12] 4759 	inc	r0
      0038E2 86 83            [24] 4760 	mov	dph,@r0
      0038E4 08               [12] 4761 	inc	r0
      0038E5 86 F0            [24] 4762 	mov	b,@r0
      0038E7 EF               [12] 4763 	mov	a,r7
      0038E8 12 79 22         [24] 4764 	lcall	__gptrput
                           0013A7  4765 	C$tasks.c$2813$6_0$280 ==.
                                   4766 ;	tasks.c:2813: if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
      0038EB E5 0D            [12] 4767 	mov	a,_bp
      0038ED 24 10            [12] 4768 	add	a,#0x10
      0038EF F8               [12] 4769 	mov	r0,a
      0038F0 A9 0D            [24] 4770 	mov	r1,_bp
      0038F2 09               [12] 4771 	inc	r1
      0038F3 74 11            [12] 4772 	mov	a,#0x11
      0038F5 26               [12] 4773 	add	a,@r0
      0038F6 F7               [12] 4774 	mov	@r1,a
      0038F7 74 00            [12] 4775 	mov	a,#0x00
      0038F9 08               [12] 4776 	inc	r0
      0038FA 36               [12] 4777 	addc	a,@r0
      0038FB 09               [12] 4778 	inc	r1
      0038FC F7               [12] 4779 	mov	@r1,a
      0038FD 08               [12] 4780 	inc	r0
      0038FE E6               [12] 4781 	mov	a,@r0
      0038FF 09               [12] 4782 	inc	r1
      003900 F7               [12] 4783 	mov	@r1,a
      003901 A8 0D            [24] 4784 	mov	r0,_bp
      003903 08               [12] 4785 	inc	r0
      003904 E5 0D            [12] 4786 	mov	a,_bp
      003906 24 07            [12] 4787 	add	a,#0x07
      003908 F9               [12] 4788 	mov	r1,a
      003909 74 0B            [12] 4789 	mov	a,#0x0b
      00390B 26               [12] 4790 	add	a,@r0
      00390C F7               [12] 4791 	mov	@r1,a
      00390D 74 00            [12] 4792 	mov	a,#0x00
      00390F 08               [12] 4793 	inc	r0
      003910 36               [12] 4794 	addc	a,@r0
      003911 09               [12] 4795 	inc	r1
      003912 F7               [12] 4796 	mov	@r1,a
      003913 08               [12] 4797 	inc	r0
      003914 E6               [12] 4798 	mov	a,@r0
      003915 09               [12] 4799 	inc	r1
      003916 F7               [12] 4800 	mov	@r1,a
      003917 E5 0D            [12] 4801 	mov	a,_bp
      003919 24 07            [12] 4802 	add	a,#0x07
      00391B F8               [12] 4803 	mov	r0,a
      00391C 86 82            [24] 4804 	mov	dpl,@r0
      00391E 08               [12] 4805 	inc	r0
      00391F 86 83            [24] 4806 	mov	dph,@r0
      003921 08               [12] 4807 	inc	r0
      003922 86 F0            [24] 4808 	mov	b,@r0
      003924 12 7C 4D         [24] 4809 	lcall	__gptrget
      003927 FB               [12] 4810 	mov	r3,a
      003928 A3               [24] 4811 	inc	dptr
      003929 12 7C 4D         [24] 4812 	lcall	__gptrget
      00392C FC               [12] 4813 	mov	r4,a
      00392D A3               [24] 4814 	inc	dptr
      00392E 12 7C 4D         [24] 4815 	lcall	__gptrget
      003931 FD               [12] 4816 	mov	r5,a
      003932 D0 07            [24] 4817 	pop	ar7
      003934 D0 06            [24] 4818 	pop	ar6
      003936 D0 02            [24] 4819 	pop	ar2
      003938 EB               [12] 4820 	mov	a,r3
      003939 4C               [12] 4821 	orl	a,r4
      00393A 70 03            [24] 4822 	jnz	00174$
      00393C 02 3A F0         [24] 4823 	ljmp	00110$
      00393F                       4824 00174$:
                           0013FB  4825 	C$tasks.c$2815$1_0$271 ==.
                                   4826 ;	tasks.c:2815: listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
      00393F C0 02            [24] 4827 	push	ar2
      003941 C0 06            [24] 4828 	push	ar6
      003943 C0 07            [24] 4829 	push	ar7
      003945 E5 0D            [12] 4830 	mov	a,_bp
      003947 24 15            [12] 4831 	add	a,#0x15
      003949 F8               [12] 4832 	mov	r0,a
      00394A A6 03            [24] 4833 	mov	@r0,ar3
      00394C 08               [12] 4834 	inc	r0
      00394D A6 04            [24] 4835 	mov	@r0,ar4
      00394F 08               [12] 4836 	inc	r0
      003950 A6 05            [24] 4837 	mov	@r0,ar5
      003952 A8 0D            [24] 4838 	mov	r0,_bp
      003954 08               [12] 4839 	inc	r0
      003955 74 02            [12] 4840 	mov	a,#0x02
      003957 26               [12] 4841 	add	a,@r0
      003958 FA               [12] 4842 	mov	r2,a
      003959 74 00            [12] 4843 	mov	a,#0x00
      00395B 08               [12] 4844 	inc	r0
      00395C 36               [12] 4845 	addc	a,@r0
      00395D FE               [12] 4846 	mov	r6,a
      00395E 08               [12] 4847 	inc	r0
      00395F 86 07            [24] 4848 	mov	ar7,@r0
      003961 8A 82            [24] 4849 	mov	dpl,r2
      003963 8E 83            [24] 4850 	mov	dph,r6
      003965 8F F0            [24] 4851 	mov	b,r7
      003967 12 7C 4D         [24] 4852 	lcall	__gptrget
      00396A FB               [12] 4853 	mov	r3,a
      00396B A3               [24] 4854 	inc	dptr
      00396C 12 7C 4D         [24] 4855 	lcall	__gptrget
      00396F FC               [12] 4856 	mov	r4,a
      003970 A3               [24] 4857 	inc	dptr
      003971 12 7C 4D         [24] 4858 	lcall	__gptrget
      003974 FD               [12] 4859 	mov	r5,a
      003975 E5 0D            [12] 4860 	mov	a,_bp
      003977 24 0A            [12] 4861 	add	a,#0x0a
      003979 F8               [12] 4862 	mov	r0,a
      00397A 74 05            [12] 4863 	mov	a,#0x05
      00397C 2B               [12] 4864 	add	a,r3
      00397D F6               [12] 4865 	mov	@r0,a
      00397E 74 00            [12] 4866 	mov	a,#0x00
      003980 3C               [12] 4867 	addc	a,r4
      003981 08               [12] 4868 	inc	r0
      003982 F6               [12] 4869 	mov	@r0,a
      003983 08               [12] 4870 	inc	r0
      003984 A6 05            [24] 4871 	mov	@r0,ar5
      003986 A8 0D            [24] 4872 	mov	r0,_bp
      003988 08               [12] 4873 	inc	r0
      003989 E5 0D            [12] 4874 	mov	a,_bp
      00398B 24 04            [12] 4875 	add	a,#0x04
      00398D F9               [12] 4876 	mov	r1,a
      00398E 74 05            [12] 4877 	mov	a,#0x05
      003990 26               [12] 4878 	add	a,@r0
      003991 F7               [12] 4879 	mov	@r1,a
      003992 74 00            [12] 4880 	mov	a,#0x00
      003994 08               [12] 4881 	inc	r0
      003995 36               [12] 4882 	addc	a,@r0
      003996 09               [12] 4883 	inc	r1
      003997 F7               [12] 4884 	mov	@r1,a
      003998 08               [12] 4885 	inc	r0
      003999 E6               [12] 4886 	mov	a,@r0
      00399A 09               [12] 4887 	inc	r1
      00399B F7               [12] 4888 	mov	@r1,a
      00399C E5 0D            [12] 4889 	mov	a,_bp
      00399E 24 04            [12] 4890 	add	a,#0x04
      0039A0 F8               [12] 4891 	mov	r0,a
      0039A1 86 82            [24] 4892 	mov	dpl,@r0
      0039A3 08               [12] 4893 	inc	r0
      0039A4 86 83            [24] 4894 	mov	dph,@r0
      0039A6 08               [12] 4895 	inc	r0
      0039A7 86 F0            [24] 4896 	mov	b,@r0
      0039A9 12 7C 4D         [24] 4897 	lcall	__gptrget
      0039AC FB               [12] 4898 	mov	r3,a
      0039AD A3               [24] 4899 	inc	dptr
      0039AE 12 7C 4D         [24] 4900 	lcall	__gptrget
      0039B1 FC               [12] 4901 	mov	r4,a
      0039B2 A3               [24] 4902 	inc	dptr
      0039B3 12 7C 4D         [24] 4903 	lcall	__gptrget
      0039B6 FD               [12] 4904 	mov	r5,a
      0039B7 E5 0D            [12] 4905 	mov	a,_bp
      0039B9 24 0A            [12] 4906 	add	a,#0x0a
      0039BB F8               [12] 4907 	mov	r0,a
      0039BC 86 82            [24] 4908 	mov	dpl,@r0
      0039BE 08               [12] 4909 	inc	r0
      0039BF 86 83            [24] 4910 	mov	dph,@r0
      0039C1 08               [12] 4911 	inc	r0
      0039C2 86 F0            [24] 4912 	mov	b,@r0
      0039C4 EB               [12] 4913 	mov	a,r3
      0039C5 12 79 22         [24] 4914 	lcall	__gptrput
      0039C8 A3               [24] 4915 	inc	dptr
      0039C9 EC               [12] 4916 	mov	a,r4
      0039CA 12 79 22         [24] 4917 	lcall	__gptrput
      0039CD A3               [24] 4918 	inc	dptr
      0039CE ED               [12] 4919 	mov	a,r5
      0039CF 12 79 22         [24] 4920 	lcall	__gptrput
      0039D2 E5 0D            [12] 4921 	mov	a,_bp
      0039D4 24 04            [12] 4922 	add	a,#0x04
      0039D6 F8               [12] 4923 	mov	r0,a
      0039D7 86 82            [24] 4924 	mov	dpl,@r0
      0039D9 08               [12] 4925 	inc	r0
      0039DA 86 83            [24] 4926 	mov	dph,@r0
      0039DC 08               [12] 4927 	inc	r0
      0039DD 86 F0            [24] 4928 	mov	b,@r0
      0039DF 12 7C 4D         [24] 4929 	lcall	__gptrget
      0039E2 FB               [12] 4930 	mov	r3,a
      0039E3 A3               [24] 4931 	inc	dptr
      0039E4 12 7C 4D         [24] 4932 	lcall	__gptrget
      0039E7 FC               [12] 4933 	mov	r4,a
      0039E8 A3               [24] 4934 	inc	dptr
      0039E9 12 7C 4D         [24] 4935 	lcall	__gptrget
      0039EC FD               [12] 4936 	mov	r5,a
      0039ED 74 02            [12] 4937 	mov	a,#0x02
      0039EF 2B               [12] 4938 	add	a,r3
      0039F0 FB               [12] 4939 	mov	r3,a
      0039F1 74 00            [12] 4940 	mov	a,#0x00
      0039F3 3C               [12] 4941 	addc	a,r4
      0039F4 FC               [12] 4942 	mov	r4,a
      0039F5 8A 82            [24] 4943 	mov	dpl,r2
      0039F7 8E 83            [24] 4944 	mov	dph,r6
      0039F9 8F F0            [24] 4945 	mov	b,r7
      0039FB 12 7C 4D         [24] 4946 	lcall	__gptrget
      0039FE FA               [12] 4947 	mov	r2,a
      0039FF A3               [24] 4948 	inc	dptr
      003A00 12 7C 4D         [24] 4949 	lcall	__gptrget
      003A03 FE               [12] 4950 	mov	r6,a
      003A04 A3               [24] 4951 	inc	dptr
      003A05 12 7C 4D         [24] 4952 	lcall	__gptrget
      003A08 FF               [12] 4953 	mov	r7,a
      003A09 8B 82            [24] 4954 	mov	dpl,r3
      003A0B 8C 83            [24] 4955 	mov	dph,r4
      003A0D 8D F0            [24] 4956 	mov	b,r5
      003A0F EA               [12] 4957 	mov	a,r2
      003A10 12 79 22         [24] 4958 	lcall	__gptrput
      003A13 A3               [24] 4959 	inc	dptr
      003A14 EE               [12] 4960 	mov	a,r6
      003A15 12 79 22         [24] 4961 	lcall	__gptrput
      003A18 A3               [24] 4962 	inc	dptr
      003A19 EF               [12] 4963 	mov	a,r7
      003A1A 12 79 22         [24] 4964 	lcall	__gptrput
      003A1D E5 0D            [12] 4965 	mov	a,_bp
      003A1F 24 15            [12] 4966 	add	a,#0x15
      003A21 F8               [12] 4967 	mov	r0,a
      003A22 E5 0D            [12] 4968 	mov	a,_bp
      003A24 24 0A            [12] 4969 	add	a,#0x0a
      003A26 F9               [12] 4970 	mov	r1,a
      003A27 74 01            [12] 4971 	mov	a,#0x01
      003A29 26               [12] 4972 	add	a,@r0
      003A2A F7               [12] 4973 	mov	@r1,a
      003A2B 74 00            [12] 4974 	mov	a,#0x00
      003A2D 08               [12] 4975 	inc	r0
      003A2E 36               [12] 4976 	addc	a,@r0
      003A2F 09               [12] 4977 	inc	r1
      003A30 F7               [12] 4978 	mov	@r1,a
      003A31 08               [12] 4979 	inc	r0
      003A32 E6               [12] 4980 	mov	a,@r0
      003A33 09               [12] 4981 	inc	r1
      003A34 F7               [12] 4982 	mov	@r1,a
      003A35 E5 0D            [12] 4983 	mov	a,_bp
      003A37 24 0A            [12] 4984 	add	a,#0x0a
      003A39 F8               [12] 4985 	mov	r0,a
      003A3A 86 82            [24] 4986 	mov	dpl,@r0
      003A3C 08               [12] 4987 	inc	r0
      003A3D 86 83            [24] 4988 	mov	dph,@r0
      003A3F 08               [12] 4989 	inc	r0
      003A40 86 F0            [24] 4990 	mov	b,@r0
      003A42 12 7C 4D         [24] 4991 	lcall	__gptrget
      003A45 FD               [12] 4992 	mov	r5,a
      003A46 A3               [24] 4993 	inc	dptr
      003A47 12 7C 4D         [24] 4994 	lcall	__gptrget
      003A4A FE               [12] 4995 	mov	r6,a
      003A4B A3               [24] 4996 	inc	dptr
      003A4C 12 7C 4D         [24] 4997 	lcall	__gptrget
      003A4F FF               [12] 4998 	mov	r7,a
      003A50 A8 0D            [24] 4999 	mov	r0,_bp
      003A52 08               [12] 5000 	inc	r0
      003A53 C0 05            [24] 5001 	push	ar5
      003A55 C0 06            [24] 5002 	push	ar6
      003A57 C0 07            [24] 5003 	push	ar7
      003A59 86 82            [24] 5004 	mov	dpl,@r0
      003A5B 08               [12] 5005 	inc	r0
      003A5C 86 83            [24] 5006 	mov	dph,@r0
      003A5E 08               [12] 5007 	inc	r0
      003A5F 86 F0            [24] 5008 	mov	b,@r0
      003A61 12 00 31         [24] 5009 	lcall	___gptr_cmp
      003A64 15 81            [12] 5010 	dec	sp
      003A66 15 81            [12] 5011 	dec	sp
      003A68 15 81            [12] 5012 	dec	sp
      003A6A 70 02            [24] 5013 	jnz	00175$
      003A6C 80 09            [24] 5014 	sjmp	00176$
      003A6E                       5015 00175$:
      003A6E D0 07            [24] 5016 	pop	ar7
      003A70 D0 06            [24] 5017 	pop	ar6
      003A72 D0 02            [24] 5018 	pop	ar2
      003A74 02 3A B3         [24] 5019 	ljmp	00108$
      003A77                       5020 00176$:
      003A77 D0 07            [24] 5021 	pop	ar7
      003A79 D0 06            [24] 5022 	pop	ar6
      003A7B D0 02            [24] 5023 	pop	ar2
      003A7D E5 0D            [12] 5024 	mov	a,_bp
      003A7F 24 04            [12] 5025 	add	a,#0x04
      003A81 F8               [12] 5026 	mov	r0,a
      003A82 86 82            [24] 5027 	mov	dpl,@r0
      003A84 08               [12] 5028 	inc	r0
      003A85 86 83            [24] 5029 	mov	dph,@r0
      003A87 08               [12] 5030 	inc	r0
      003A88 86 F0            [24] 5031 	mov	b,@r0
      003A8A 12 7C 4D         [24] 5032 	lcall	__gptrget
      003A8D FB               [12] 5033 	mov	r3,a
      003A8E A3               [24] 5034 	inc	dptr
      003A8F 12 7C 4D         [24] 5035 	lcall	__gptrget
      003A92 FC               [12] 5036 	mov	r4,a
      003A93 A3               [24] 5037 	inc	dptr
      003A94 12 7C 4D         [24] 5038 	lcall	__gptrget
      003A97 FD               [12] 5039 	mov	r5,a
      003A98 E5 0D            [12] 5040 	mov	a,_bp
      003A9A 24 0A            [12] 5041 	add	a,#0x0a
      003A9C F8               [12] 5042 	mov	r0,a
      003A9D 86 82            [24] 5043 	mov	dpl,@r0
      003A9F 08               [12] 5044 	inc	r0
      003AA0 86 83            [24] 5045 	mov	dph,@r0
      003AA2 08               [12] 5046 	inc	r0
      003AA3 86 F0            [24] 5047 	mov	b,@r0
      003AA5 EB               [12] 5048 	mov	a,r3
      003AA6 12 79 22         [24] 5049 	lcall	__gptrput
      003AA9 A3               [24] 5050 	inc	dptr
      003AAA EC               [12] 5051 	mov	a,r4
      003AAB 12 79 22         [24] 5052 	lcall	__gptrput
      003AAE A3               [24] 5053 	inc	dptr
      003AAF ED               [12] 5054 	mov	a,r5
      003AB0 12 79 22         [24] 5055 	lcall	__gptrput
      003AB3                       5056 00108$:
      003AB3 E5 0D            [12] 5057 	mov	a,_bp
      003AB5 24 07            [12] 5058 	add	a,#0x07
      003AB7 F8               [12] 5059 	mov	r0,a
      003AB8 86 82            [24] 5060 	mov	dpl,@r0
      003ABA 08               [12] 5061 	inc	r0
      003ABB 86 83            [24] 5062 	mov	dph,@r0
      003ABD 08               [12] 5063 	inc	r0
      003ABE 86 F0            [24] 5064 	mov	b,@r0
      003AC0 74 00            [12] 5065 	mov	a,#0x00
      003AC2 12 79 22         [24] 5066 	lcall	__gptrput
      003AC5 A3               [24] 5067 	inc	dptr
      003AC6 12 79 22         [24] 5068 	lcall	__gptrput
      003AC9 A3               [24] 5069 	inc	dptr
      003ACA 12 79 22         [24] 5070 	lcall	__gptrput
      003ACD E5 0D            [12] 5071 	mov	a,_bp
      003ACF 24 15            [12] 5072 	add	a,#0x15
      003AD1 F8               [12] 5073 	mov	r0,a
      003AD2 86 82            [24] 5074 	mov	dpl,@r0
      003AD4 08               [12] 5075 	inc	r0
      003AD5 86 83            [24] 5076 	mov	dph,@r0
      003AD7 08               [12] 5077 	inc	r0
      003AD8 86 F0            [24] 5078 	mov	b,@r0
      003ADA 12 7C 4D         [24] 5079 	lcall	__gptrget
      003ADD FD               [12] 5080 	mov	r5,a
      003ADE 1D               [12] 5081 	dec	r5
      003ADF E5 0D            [12] 5082 	mov	a,_bp
      003AE1 24 15            [12] 5083 	add	a,#0x15
      003AE3 F8               [12] 5084 	mov	r0,a
      003AE4 86 82            [24] 5085 	mov	dpl,@r0
      003AE6 08               [12] 5086 	inc	r0
      003AE7 86 83            [24] 5087 	mov	dph,@r0
      003AE9 08               [12] 5088 	inc	r0
      003AEA 86 F0            [24] 5089 	mov	b,@r0
      003AEC ED               [12] 5090 	mov	a,r5
      003AED 12 79 22         [24] 5091 	lcall	__gptrput
      003AF0                       5092 00110$:
                           0015AC  5093 	C$tasks.c$2824$1_0$271 ==.
                                   5094 ;	tasks.c:2824: prvAddTaskToReadyList( pxTCB );
      003AF0 C0 02            [24] 5095 	push	ar2
      003AF2 C0 06            [24] 5096 	push	ar6
      003AF4 C0 07            [24] 5097 	push	ar7
      003AF6 E5 0D            [12] 5098 	mov	a,_bp
      003AF8 24 10            [12] 5099 	add	a,#0x10
      003AFA F8               [12] 5100 	mov	r0,a
      003AFB A9 0D            [24] 5101 	mov	r1,_bp
      003AFD 09               [12] 5102 	inc	r1
      003AFE 74 1F            [12] 5103 	mov	a,#0x1f
      003B00 26               [12] 5104 	add	a,@r0
      003B01 F7               [12] 5105 	mov	@r1,a
      003B02 74 00            [12] 5106 	mov	a,#0x00
      003B04 08               [12] 5107 	inc	r0
      003B05 36               [12] 5108 	addc	a,@r0
      003B06 09               [12] 5109 	inc	r1
      003B07 F7               [12] 5110 	mov	@r1,a
      003B08 08               [12] 5111 	inc	r0
      003B09 E6               [12] 5112 	mov	a,@r0
      003B0A 09               [12] 5113 	inc	r1
      003B0B F7               [12] 5114 	mov	@r1,a
      003B0C A8 0D            [24] 5115 	mov	r0,_bp
      003B0E 08               [12] 5116 	inc	r0
      003B0F 86 82            [24] 5117 	mov	dpl,@r0
      003B11 08               [12] 5118 	inc	r0
      003B12 86 83            [24] 5119 	mov	dph,@r0
      003B14 08               [12] 5120 	inc	r0
      003B15 86 F0            [24] 5121 	mov	b,@r0
      003B17 12 7C 4D         [24] 5122 	lcall	__gptrget
      003B1A FD               [12] 5123 	mov	r5,a
      003B1B 90 0C 86         [24] 5124 	mov	dptr,#_uxTopReadyPriority
      003B1E E0               [24] 5125 	movx	a,@dptr
      003B1F FF               [12] 5126 	mov	r7,a
      003B20 C3               [12] 5127 	clr	c
      003B21 EF               [12] 5128 	mov	a,r7
      003B22 9D               [12] 5129 	subb	a,r5
      003B23 D0 07            [24] 5130 	pop	ar7
      003B25 D0 06            [24] 5131 	pop	ar6
      003B27 D0 02            [24] 5132 	pop	ar2
      003B29 40 03            [24] 5133 	jc	00177$
      003B2B 02 3B 33         [24] 5134 	ljmp	00112$
      003B2E                       5135 00177$:
      003B2E 90 0C 86         [24] 5136 	mov	dptr,#_uxTopReadyPriority
      003B31 ED               [12] 5137 	mov	a,r5
      003B32 F0               [24] 5138 	movx	@dptr,a
      003B33                       5139 00112$:
      003B33 A8 0D            [24] 5140 	mov	r0,_bp
      003B35 08               [12] 5141 	inc	r0
      003B36 86 82            [24] 5142 	mov	dpl,@r0
      003B38 08               [12] 5143 	inc	r0
      003B39 86 83            [24] 5144 	mov	dph,@r0
      003B3B 08               [12] 5145 	inc	r0
      003B3C 86 F0            [24] 5146 	mov	b,@r0
      003B3E 12 7C 4D         [24] 5147 	lcall	__gptrget
      003B41 FD               [12] 5148 	mov	r5,a
      003B42 ED               [12] 5149 	mov	a,r5
      003B43 75 F0 0C         [24] 5150 	mov	b,#0x0c
      003B46 A4               [48] 5151 	mul	ab
      003B47 24 16            [12] 5152 	add	a,#_pxReadyTasksLists
      003B49 FC               [12] 5153 	mov	r4,a
      003B4A 74 00            [12] 5154 	mov	a,#(_pxReadyTasksLists >> 8)
      003B4C 35 F0            [12] 5155 	addc	a,b
      003B4E FD               [12] 5156 	mov	r5,a
      003B4F 8C 82            [24] 5157 	mov	dpl,r4
      003B51 8D 83            [24] 5158 	mov	dph,r5
      003B53 A3               [24] 5159 	inc	dptr
      003B54 E5 0D            [12] 5160 	mov	a,_bp
      003B56 24 15            [12] 5161 	add	a,#0x15
      003B58 F8               [12] 5162 	mov	r0,a
      003B59 E0               [24] 5163 	movx	a,@dptr
      003B5A F6               [12] 5164 	mov	@r0,a
      003B5B A3               [24] 5165 	inc	dptr
      003B5C E0               [24] 5166 	movx	a,@dptr
      003B5D 08               [12] 5167 	inc	r0
      003B5E F6               [12] 5168 	mov	@r0,a
      003B5F A3               [24] 5169 	inc	dptr
      003B60 E0               [24] 5170 	movx	a,@dptr
      003B61 08               [12] 5171 	inc	r0
      003B62 F6               [12] 5172 	mov	@r0,a
      003B63 74 02            [12] 5173 	mov	a,#0x02
      003B65 2A               [12] 5174 	add	a,r2
      003B66 FB               [12] 5175 	mov	r3,a
      003B67 74 00            [12] 5176 	mov	a,#0x00
      003B69 3E               [12] 5177 	addc	a,r6
      003B6A FC               [12] 5178 	mov	r4,a
      003B6B 8F 05            [24] 5179 	mov	ar5,r7
      003B6D 8B 82            [24] 5180 	mov	dpl,r3
      003B6F 8C 83            [24] 5181 	mov	dph,r4
      003B71 8D F0            [24] 5182 	mov	b,r5
      003B73 E5 0D            [12] 5183 	mov	a,_bp
      003B75 24 15            [12] 5184 	add	a,#0x15
      003B77 F8               [12] 5185 	mov	r0,a
      003B78 E6               [12] 5186 	mov	a,@r0
      003B79 12 79 22         [24] 5187 	lcall	__gptrput
      003B7C A3               [24] 5188 	inc	dptr
      003B7D 08               [12] 5189 	inc	r0
      003B7E E6               [12] 5190 	mov	a,@r0
      003B7F 12 79 22         [24] 5191 	lcall	__gptrput
      003B82 A3               [24] 5192 	inc	dptr
      003B83 08               [12] 5193 	inc	r0
      003B84 E6               [12] 5194 	mov	a,@r0
      003B85 12 79 22         [24] 5195 	lcall	__gptrput
      003B88 E5 0D            [12] 5196 	mov	a,_bp
      003B8A 24 0A            [12] 5197 	add	a,#0x0a
      003B8C F8               [12] 5198 	mov	r0,a
      003B8D 74 05            [12] 5199 	mov	a,#0x05
      003B8F 2A               [12] 5200 	add	a,r2
      003B90 F6               [12] 5201 	mov	@r0,a
      003B91 74 00            [12] 5202 	mov	a,#0x00
      003B93 3E               [12] 5203 	addc	a,r6
      003B94 08               [12] 5204 	inc	r0
      003B95 F6               [12] 5205 	mov	@r0,a
      003B96 08               [12] 5206 	inc	r0
      003B97 A6 07            [24] 5207 	mov	@r0,ar7
      003B99 E5 0D            [12] 5208 	mov	a,_bp
      003B9B 24 15            [12] 5209 	add	a,#0x15
      003B9D F8               [12] 5210 	mov	r0,a
      003B9E E5 0D            [12] 5211 	mov	a,_bp
      003BA0 24 07            [12] 5212 	add	a,#0x07
      003BA2 F9               [12] 5213 	mov	r1,a
      003BA3 74 05            [12] 5214 	mov	a,#0x05
      003BA5 26               [12] 5215 	add	a,@r0
      003BA6 F7               [12] 5216 	mov	@r1,a
      003BA7 74 00            [12] 5217 	mov	a,#0x00
      003BA9 08               [12] 5218 	inc	r0
      003BAA 36               [12] 5219 	addc	a,@r0
      003BAB 09               [12] 5220 	inc	r1
      003BAC F7               [12] 5221 	mov	@r1,a
      003BAD 08               [12] 5222 	inc	r0
      003BAE E6               [12] 5223 	mov	a,@r0
      003BAF 09               [12] 5224 	inc	r1
      003BB0 F7               [12] 5225 	mov	@r1,a
      003BB1 E5 0D            [12] 5226 	mov	a,_bp
      003BB3 24 07            [12] 5227 	add	a,#0x07
      003BB5 F8               [12] 5228 	mov	r0,a
      003BB6 86 82            [24] 5229 	mov	dpl,@r0
      003BB8 08               [12] 5230 	inc	r0
      003BB9 86 83            [24] 5231 	mov	dph,@r0
      003BBB 08               [12] 5232 	inc	r0
      003BBC 86 F0            [24] 5233 	mov	b,@r0
      003BBE 12 7C 4D         [24] 5234 	lcall	__gptrget
      003BC1 FB               [12] 5235 	mov	r3,a
      003BC2 A3               [24] 5236 	inc	dptr
      003BC3 12 7C 4D         [24] 5237 	lcall	__gptrget
      003BC6 FC               [12] 5238 	mov	r4,a
      003BC7 A3               [24] 5239 	inc	dptr
      003BC8 12 7C 4D         [24] 5240 	lcall	__gptrget
      003BCB FD               [12] 5241 	mov	r5,a
      003BCC E5 0D            [12] 5242 	mov	a,_bp
      003BCE 24 0A            [12] 5243 	add	a,#0x0a
      003BD0 F8               [12] 5244 	mov	r0,a
      003BD1 86 82            [24] 5245 	mov	dpl,@r0
      003BD3 08               [12] 5246 	inc	r0
      003BD4 86 83            [24] 5247 	mov	dph,@r0
      003BD6 08               [12] 5248 	inc	r0
      003BD7 86 F0            [24] 5249 	mov	b,@r0
      003BD9 EB               [12] 5250 	mov	a,r3
      003BDA 12 79 22         [24] 5251 	lcall	__gptrput
      003BDD A3               [24] 5252 	inc	dptr
      003BDE EC               [12] 5253 	mov	a,r4
      003BDF 12 79 22         [24] 5254 	lcall	__gptrput
      003BE2 A3               [24] 5255 	inc	dptr
      003BE3 ED               [12] 5256 	mov	a,r5
      003BE4 12 79 22         [24] 5257 	lcall	__gptrput
      003BE7 E5 0D            [12] 5258 	mov	a,_bp
      003BE9 24 07            [12] 5259 	add	a,#0x07
      003BEB F8               [12] 5260 	mov	r0,a
      003BEC 86 82            [24] 5261 	mov	dpl,@r0
      003BEE 08               [12] 5262 	inc	r0
      003BEF 86 83            [24] 5263 	mov	dph,@r0
      003BF1 08               [12] 5264 	inc	r0
      003BF2 86 F0            [24] 5265 	mov	b,@r0
      003BF4 12 7C 4D         [24] 5266 	lcall	__gptrget
      003BF7 FB               [12] 5267 	mov	r3,a
      003BF8 A3               [24] 5268 	inc	dptr
      003BF9 12 7C 4D         [24] 5269 	lcall	__gptrget
      003BFC FC               [12] 5270 	mov	r4,a
      003BFD A3               [24] 5271 	inc	dptr
      003BFE 12 7C 4D         [24] 5272 	lcall	__gptrget
      003C01 FD               [12] 5273 	mov	r5,a
      003C02 74 02            [12] 5274 	mov	a,#0x02
      003C04 2B               [12] 5275 	add	a,r3
      003C05 FB               [12] 5276 	mov	r3,a
      003C06 74 00            [12] 5277 	mov	a,#0x00
      003C08 3C               [12] 5278 	addc	a,r4
      003C09 FC               [12] 5279 	mov	r4,a
      003C0A 8B 82            [24] 5280 	mov	dpl,r3
      003C0C 8C 83            [24] 5281 	mov	dph,r4
      003C0E 8D F0            [24] 5282 	mov	b,r5
      003C10 EA               [12] 5283 	mov	a,r2
      003C11 12 79 22         [24] 5284 	lcall	__gptrput
      003C14 A3               [24] 5285 	inc	dptr
      003C15 EE               [12] 5286 	mov	a,r6
      003C16 12 79 22         [24] 5287 	lcall	__gptrput
      003C19 A3               [24] 5288 	inc	dptr
      003C1A EF               [12] 5289 	mov	a,r7
      003C1B 12 79 22         [24] 5290 	lcall	__gptrput
      003C1E E5 0D            [12] 5291 	mov	a,_bp
      003C20 24 07            [12] 5292 	add	a,#0x07
      003C22 F8               [12] 5293 	mov	r0,a
      003C23 86 82            [24] 5294 	mov	dpl,@r0
      003C25 08               [12] 5295 	inc	r0
      003C26 86 83            [24] 5296 	mov	dph,@r0
      003C28 08               [12] 5297 	inc	r0
      003C29 86 F0            [24] 5298 	mov	b,@r0
      003C2B EA               [12] 5299 	mov	a,r2
      003C2C 12 79 22         [24] 5300 	lcall	__gptrput
      003C2F A3               [24] 5301 	inc	dptr
      003C30 EE               [12] 5302 	mov	a,r6
      003C31 12 79 22         [24] 5303 	lcall	__gptrput
      003C34 A3               [24] 5304 	inc	dptr
      003C35 EF               [12] 5305 	mov	a,r7
      003C36 12 79 22         [24] 5306 	lcall	__gptrput
      003C39 A8 0D            [24] 5307 	mov	r0,_bp
      003C3B 08               [12] 5308 	inc	r0
      003C3C 86 82            [24] 5309 	mov	dpl,@r0
      003C3E 08               [12] 5310 	inc	r0
      003C3F 86 83            [24] 5311 	mov	dph,@r0
      003C41 08               [12] 5312 	inc	r0
      003C42 86 F0            [24] 5313 	mov	b,@r0
      003C44 12 7C 4D         [24] 5314 	lcall	__gptrget
      003C47 FF               [12] 5315 	mov	r7,a
      003C48 EF               [12] 5316 	mov	a,r7
      003C49 75 F0 0C         [24] 5317 	mov	b,#0x0c
      003C4C A4               [48] 5318 	mul	ab
      003C4D 24 16            [12] 5319 	add	a,#_pxReadyTasksLists
      003C4F FE               [12] 5320 	mov	r6,a
      003C50 74 00            [12] 5321 	mov	a,#(_pxReadyTasksLists >> 8)
      003C52 35 F0            [12] 5322 	addc	a,b
      003C54 FF               [12] 5323 	mov	r7,a
      003C55 7D 00            [12] 5324 	mov	r5,#0x00
      003C57 E5 0D            [12] 5325 	mov	a,_bp
      003C59 24 0D            [12] 5326 	add	a,#0x0d
      003C5B F8               [12] 5327 	mov	r0,a
      003C5C 86 82            [24] 5328 	mov	dpl,@r0
      003C5E 08               [12] 5329 	inc	r0
      003C5F 86 83            [24] 5330 	mov	dph,@r0
      003C61 08               [12] 5331 	inc	r0
      003C62 86 F0            [24] 5332 	mov	b,@r0
      003C64 EE               [12] 5333 	mov	a,r6
      003C65 12 79 22         [24] 5334 	lcall	__gptrput
      003C68 A3               [24] 5335 	inc	dptr
      003C69 EF               [12] 5336 	mov	a,r7
      003C6A 12 79 22         [24] 5337 	lcall	__gptrput
      003C6D A3               [24] 5338 	inc	dptr
      003C6E ED               [12] 5339 	mov	a,r5
      003C6F 12 79 22         [24] 5340 	lcall	__gptrput
      003C72 A8 0D            [24] 5341 	mov	r0,_bp
      003C74 08               [12] 5342 	inc	r0
      003C75 86 82            [24] 5343 	mov	dpl,@r0
      003C77 08               [12] 5344 	inc	r0
      003C78 86 83            [24] 5345 	mov	dph,@r0
      003C7A 08               [12] 5346 	inc	r0
      003C7B 86 F0            [24] 5347 	mov	b,@r0
      003C7D 12 7C 4D         [24] 5348 	lcall	__gptrget
      003C80 FF               [12] 5349 	mov	r7,a
      003C81 EF               [12] 5350 	mov	a,r7
      003C82 75 F0 0C         [24] 5351 	mov	b,#0x0c
      003C85 A4               [48] 5352 	mul	ab
      003C86 24 16            [12] 5353 	add	a,#_pxReadyTasksLists
      003C88 FE               [12] 5354 	mov	r6,a
      003C89 74 00            [12] 5355 	mov	a,#(_pxReadyTasksLists >> 8)
      003C8B 35 F0            [12] 5356 	addc	a,b
      003C8D FF               [12] 5357 	mov	r7,a
      003C8E 8E 82            [24] 5358 	mov	dpl,r6
      003C90 8F 83            [24] 5359 	mov	dph,r7
      003C92 E0               [24] 5360 	movx	a,@dptr
      003C93 FD               [12] 5361 	mov	r5,a
      003C94 0D               [12] 5362 	inc	r5
      003C95 8E 82            [24] 5363 	mov	dpl,r6
      003C97 8F 83            [24] 5364 	mov	dph,r7
      003C99 ED               [12] 5365 	mov	a,r5
      003C9A F0               [24] 5366 	movx	@dptr,a
      003C9B 02 36 38         [24] 5367 	ljmp	00122$
      003C9E                       5368 00120$:
                           00175A  5369 	C$tasks.c$2894$2_0$292 ==.
                                   5370 ;	tasks.c:2894: ++xPendedTicks;
      003C9E 90 0C 88         [24] 5371 	mov	dptr,#_xPendedTicks
      003CA1 E0               [24] 5372 	movx	a,@dptr
      003CA2 24 01            [12] 5373 	add	a,#0x01
      003CA4 F0               [24] 5374 	movx	@dptr,a
      003CA5 A3               [24] 5375 	inc	dptr
      003CA6 E0               [24] 5376 	movx	a,@dptr
      003CA7 34 00            [12] 5377 	addc	a,#0x00
      003CA9 F0               [24] 5378 	movx	@dptr,a
      003CAA                       5379 00121$:
                           001766  5380 	C$tasks.c$2905$1_0$271 ==.
                                   5381 ;	tasks.c:2905: return xSwitchRequired;
      003CAA 75 82 00         [24] 5382 	mov	dpl,#0x00
      003CAD                       5383 00124$:
                           001769  5384 	C$tasks.c$2906$1_0$271 ==.
                                   5385 ;	tasks.c:2906: }
      003CAD 85 0D 81         [24] 5386 	mov	sp,_bp
      003CB0 D0 0D            [24] 5387 	pop	_bp
                           00176E  5388 	C$tasks.c$2906$1_0$271 ==.
                           00176E  5389 	XG$xTaskIncrementTick$0$0 ==.
      003CB2 22               [24] 5390 	ret
                                   5391 ;------------------------------------------------------------
                                   5392 ;Allocation info for local variables in function 'vTaskSwitchContext'
                                   5393 ;------------------------------------------------------------
                                   5394 ;uxTopPriority             Allocated to stack - _bp +7
                                   5395 ;pxConstList               Allocated to stack - _bp +8
                                   5396 ;sloc0                     Allocated to stack - _bp +1
                                   5397 ;sloc1                     Allocated to stack - _bp +4
                                   5398 ;------------------------------------------------------------
                           00176F  5399 	G$vTaskSwitchContext$0$0 ==.
                           00176F  5400 	C$tasks.c$3021$1_0$294 ==.
                                   5401 ;	tasks.c:3021: void vTaskSwitchContext( void )
                                   5402 ;	-----------------------------------------
                                   5403 ;	 function vTaskSwitchContext
                                   5404 ;	-----------------------------------------
      003CB3                       5405 _vTaskSwitchContext:
      003CB3 C0 0D            [24] 5406 	push	_bp
      003CB5 85 81 0D         [24] 5407 	mov	_bp,sp
      003CB8 E5 81            [12] 5408 	mov	a,sp
      003CBA 24 0A            [12] 5409 	add	a,#0x0a
      003CBC F5 81            [12] 5410 	mov	sp,a
                           00177A  5411 	C$tasks.c$3023$1_0$294 ==.
                                   5412 ;	tasks.c:3023: if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
      003CBE 90 0C 92         [24] 5413 	mov	dptr,#_uxSchedulerSuspended
      003CC1 E0               [24] 5414 	movx	a,@dptr
      003CC2 70 03            [24] 5415 	jnz	00132$
      003CC4 02 3C D0         [24] 5416 	ljmp	00107$
      003CC7                       5417 00132$:
                           001783  5418 	C$tasks.c$3027$2_0$295 ==.
                                   5419 ;	tasks.c:3027: xYieldPending = pdTRUE;
      003CC7 90 0C 8A         [24] 5420 	mov	dptr,#_xYieldPending
      003CCA 74 01            [12] 5421 	mov	a,#0x01
      003CCC F0               [24] 5422 	movx	@dptr,a
      003CCD 02 3E 40         [24] 5423 	ljmp	00109$
      003CD0                       5424 00107$:
                           00178C  5425 	C$tasks.c$3031$2_0$296 ==.
                                   5426 ;	tasks.c:3031: xYieldPending = pdFALSE;
      003CD0 90 0C 8A         [24] 5427 	mov	dptr,#_xYieldPending
      003CD3 74 00            [12] 5428 	mov	a,#0x00
      003CD5 F0               [24] 5429 	movx	@dptr,a
                           001792  5430 	C$tasks.c$3074$4_0$297 ==.
                                   5431 ;	tasks.c:3074: taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      003CD6 90 0C 86         [24] 5432 	mov	dptr,#_uxTopReadyPriority
      003CD9 E0               [24] 5433 	movx	a,@dptr
      003CDA FF               [12] 5434 	mov	r7,a
      003CDB                       5435 00101$:
      003CDB EF               [12] 5436 	mov	a,r7
      003CDC 75 F0 0C         [24] 5437 	mov	b,#0x0c
      003CDF A4               [48] 5438 	mul	ab
      003CE0 FD               [12] 5439 	mov	r5,a
      003CE1 AE F0            [24] 5440 	mov	r6,b
      003CE3 ED               [12] 5441 	mov	a,r5
      003CE4 24 16            [12] 5442 	add	a,#_pxReadyTasksLists
      003CE6 FB               [12] 5443 	mov	r3,a
      003CE7 EE               [12] 5444 	mov	a,r6
      003CE8 34 00            [12] 5445 	addc	a,#(_pxReadyTasksLists >> 8)
      003CEA FC               [12] 5446 	mov	r4,a
      003CEB 8B 82            [24] 5447 	mov	dpl,r3
      003CED 8C 83            [24] 5448 	mov	dph,r4
      003CEF E0               [24] 5449 	movx	a,@dptr
      003CF0 60 03            [24] 5450 	jz	00133$
      003CF2 02 3C F9         [24] 5451 	ljmp	00115$
      003CF5                       5452 00133$:
      003CF5 1F               [12] 5453 	dec	r7
      003CF6 02 3C DB         [24] 5454 	ljmp	00101$
      003CF9                       5455 00115$:
      003CF9 E5 0D            [12] 5456 	mov	a,_bp
      003CFB 24 07            [12] 5457 	add	a,#0x07
      003CFD F8               [12] 5458 	mov	r0,a
      003CFE A6 07            [24] 5459 	mov	@r0,ar7
      003D00 ED               [12] 5460 	mov	a,r5
      003D01 24 16            [12] 5461 	add	a,#_pxReadyTasksLists
      003D03 FD               [12] 5462 	mov	r5,a
      003D04 EE               [12] 5463 	mov	a,r6
      003D05 34 00            [12] 5464 	addc	a,#(_pxReadyTasksLists >> 8)
      003D07 FE               [12] 5465 	mov	r6,a
      003D08 E5 0D            [12] 5466 	mov	a,_bp
      003D0A 24 08            [12] 5467 	add	a,#0x08
      003D0C F8               [12] 5468 	mov	r0,a
      003D0D A6 05            [24] 5469 	mov	@r0,ar5
      003D0F 08               [12] 5470 	inc	r0
      003D10 A6 06            [24] 5471 	mov	@r0,ar6
      003D12 08               [12] 5472 	inc	r0
      003D13 76 00            [12] 5473 	mov	@r0,#0x00
      003D15 E5 0D            [12] 5474 	mov	a,_bp
      003D17 24 08            [12] 5475 	add	a,#0x08
      003D19 F8               [12] 5476 	mov	r0,a
      003D1A 74 01            [12] 5477 	mov	a,#0x01
      003D1C 26               [12] 5478 	add	a,@r0
      003D1D FA               [12] 5479 	mov	r2,a
      003D1E 74 00            [12] 5480 	mov	a,#0x00
      003D20 08               [12] 5481 	inc	r0
      003D21 36               [12] 5482 	addc	a,@r0
      003D22 FB               [12] 5483 	mov	r3,a
      003D23 08               [12] 5484 	inc	r0
      003D24 86 07            [24] 5485 	mov	ar7,@r0
      003D26 8A 82            [24] 5486 	mov	dpl,r2
      003D28 8B 83            [24] 5487 	mov	dph,r3
      003D2A 8F F0            [24] 5488 	mov	b,r7
      003D2C 12 7C 4D         [24] 5489 	lcall	__gptrget
      003D2F FC               [12] 5490 	mov	r4,a
      003D30 A3               [24] 5491 	inc	dptr
      003D31 12 7C 4D         [24] 5492 	lcall	__gptrget
      003D34 FD               [12] 5493 	mov	r5,a
      003D35 A3               [24] 5494 	inc	dptr
      003D36 12 7C 4D         [24] 5495 	lcall	__gptrget
      003D39 FE               [12] 5496 	mov	r6,a
      003D3A 74 02            [12] 5497 	mov	a,#0x02
      003D3C 2C               [12] 5498 	add	a,r4
      003D3D FC               [12] 5499 	mov	r4,a
      003D3E 74 00            [12] 5500 	mov	a,#0x00
      003D40 3D               [12] 5501 	addc	a,r5
      003D41 FD               [12] 5502 	mov	r5,a
      003D42 8C 82            [24] 5503 	mov	dpl,r4
      003D44 8D 83            [24] 5504 	mov	dph,r5
      003D46 8E F0            [24] 5505 	mov	b,r6
      003D48 12 7C 4D         [24] 5506 	lcall	__gptrget
      003D4B FC               [12] 5507 	mov	r4,a
      003D4C A3               [24] 5508 	inc	dptr
      003D4D 12 7C 4D         [24] 5509 	lcall	__gptrget
      003D50 FD               [12] 5510 	mov	r5,a
      003D51 A3               [24] 5511 	inc	dptr
      003D52 12 7C 4D         [24] 5512 	lcall	__gptrget
      003D55 FE               [12] 5513 	mov	r6,a
      003D56 8A 82            [24] 5514 	mov	dpl,r2
      003D58 8B 83            [24] 5515 	mov	dph,r3
      003D5A 8F F0            [24] 5516 	mov	b,r7
      003D5C EC               [12] 5517 	mov	a,r4
      003D5D 12 79 22         [24] 5518 	lcall	__gptrput
      003D60 A3               [24] 5519 	inc	dptr
      003D61 ED               [12] 5520 	mov	a,r5
      003D62 12 79 22         [24] 5521 	lcall	__gptrput
      003D65 A3               [24] 5522 	inc	dptr
      003D66 EE               [12] 5523 	mov	a,r6
      003D67 12 79 22         [24] 5524 	lcall	__gptrput
      003D6A 8A 82            [24] 5525 	mov	dpl,r2
      003D6C 8B 83            [24] 5526 	mov	dph,r3
      003D6E 8F F0            [24] 5527 	mov	b,r7
      003D70 A8 0D            [24] 5528 	mov	r0,_bp
      003D72 08               [12] 5529 	inc	r0
      003D73 12 7C 4D         [24] 5530 	lcall	__gptrget
      003D76 F6               [12] 5531 	mov	@r0,a
      003D77 A3               [24] 5532 	inc	dptr
      003D78 12 7C 4D         [24] 5533 	lcall	__gptrget
      003D7B 08               [12] 5534 	inc	r0
      003D7C F6               [12] 5535 	mov	@r0,a
      003D7D A3               [24] 5536 	inc	dptr
      003D7E 12 7C 4D         [24] 5537 	lcall	__gptrget
      003D81 08               [12] 5538 	inc	r0
      003D82 F6               [12] 5539 	mov	@r0,a
      003D83 E5 0D            [12] 5540 	mov	a,_bp
      003D85 24 04            [12] 5541 	add	a,#0x04
      003D87 F8               [12] 5542 	mov	r0,a
      003D88 A6 04            [24] 5543 	mov	@r0,ar4
      003D8A 08               [12] 5544 	inc	r0
      003D8B A6 05            [24] 5545 	mov	@r0,ar5
      003D8D 08               [12] 5546 	inc	r0
      003D8E A6 06            [24] 5547 	mov	@r0,ar6
      003D90 E5 0D            [12] 5548 	mov	a,_bp
      003D92 24 08            [12] 5549 	add	a,#0x08
      003D94 F8               [12] 5550 	mov	r0,a
      003D95 74 04            [12] 5551 	mov	a,#0x04
      003D97 26               [12] 5552 	add	a,@r0
      003D98 FC               [12] 5553 	mov	r4,a
      003D99 74 00            [12] 5554 	mov	a,#0x00
      003D9B 08               [12] 5555 	inc	r0
      003D9C 36               [12] 5556 	addc	a,@r0
      003D9D FD               [12] 5557 	mov	r5,a
      003D9E 08               [12] 5558 	inc	r0
      003D9F 86 06            [24] 5559 	mov	ar6,@r0
      003DA1 E5 0D            [12] 5560 	mov	a,_bp
      003DA3 24 04            [12] 5561 	add	a,#0x04
      003DA5 F8               [12] 5562 	mov	r0,a
      003DA6 C0 04            [24] 5563 	push	ar4
      003DA8 C0 05            [24] 5564 	push	ar5
      003DAA C0 06            [24] 5565 	push	ar6
      003DAC 86 82            [24] 5566 	mov	dpl,@r0
      003DAE 08               [12] 5567 	inc	r0
      003DAF 86 83            [24] 5568 	mov	dph,@r0
      003DB1 08               [12] 5569 	inc	r0
      003DB2 86 F0            [24] 5570 	mov	b,@r0
      003DB4 12 00 31         [24] 5571 	lcall	___gptr_cmp
      003DB7 15 81            [12] 5572 	dec	sp
      003DB9 15 81            [12] 5573 	dec	sp
      003DBB 15 81            [12] 5574 	dec	sp
      003DBD 70 02            [24] 5575 	jnz	00134$
      003DBF 80 03            [24] 5576 	sjmp	00135$
      003DC1                       5577 00134$:
      003DC1 02 3D FB         [24] 5578 	ljmp	00105$
      003DC4                       5579 00135$:
      003DC4 A8 0D            [24] 5580 	mov	r0,_bp
      003DC6 08               [12] 5581 	inc	r0
      003DC7 74 02            [12] 5582 	mov	a,#0x02
      003DC9 26               [12] 5583 	add	a,@r0
      003DCA FC               [12] 5584 	mov	r4,a
      003DCB 74 00            [12] 5585 	mov	a,#0x00
      003DCD 08               [12] 5586 	inc	r0
      003DCE 36               [12] 5587 	addc	a,@r0
      003DCF FD               [12] 5588 	mov	r5,a
      003DD0 08               [12] 5589 	inc	r0
      003DD1 86 06            [24] 5590 	mov	ar6,@r0
      003DD3 8C 82            [24] 5591 	mov	dpl,r4
      003DD5 8D 83            [24] 5592 	mov	dph,r5
      003DD7 8E F0            [24] 5593 	mov	b,r6
      003DD9 12 7C 4D         [24] 5594 	lcall	__gptrget
      003DDC FC               [12] 5595 	mov	r4,a
      003DDD A3               [24] 5596 	inc	dptr
      003DDE 12 7C 4D         [24] 5597 	lcall	__gptrget
      003DE1 FD               [12] 5598 	mov	r5,a
      003DE2 A3               [24] 5599 	inc	dptr
      003DE3 12 7C 4D         [24] 5600 	lcall	__gptrget
      003DE6 FE               [12] 5601 	mov	r6,a
      003DE7 8A 82            [24] 5602 	mov	dpl,r2
      003DE9 8B 83            [24] 5603 	mov	dph,r3
      003DEB 8F F0            [24] 5604 	mov	b,r7
      003DED EC               [12] 5605 	mov	a,r4
      003DEE 12 79 22         [24] 5606 	lcall	__gptrput
      003DF1 A3               [24] 5607 	inc	dptr
      003DF2 ED               [12] 5608 	mov	a,r5
      003DF3 12 79 22         [24] 5609 	lcall	__gptrput
      003DF6 A3               [24] 5610 	inc	dptr
      003DF7 EE               [12] 5611 	mov	a,r6
      003DF8 12 79 22         [24] 5612 	lcall	__gptrput
      003DFB                       5613 00105$:
      003DFB 8A 82            [24] 5614 	mov	dpl,r2
      003DFD 8B 83            [24] 5615 	mov	dph,r3
      003DFF 8F F0            [24] 5616 	mov	b,r7
      003E01 12 7C 4D         [24] 5617 	lcall	__gptrget
      003E04 FA               [12] 5618 	mov	r2,a
      003E05 A3               [24] 5619 	inc	dptr
      003E06 12 7C 4D         [24] 5620 	lcall	__gptrget
      003E09 FB               [12] 5621 	mov	r3,a
      003E0A A3               [24] 5622 	inc	dptr
      003E0B 12 7C 4D         [24] 5623 	lcall	__gptrget
      003E0E FF               [12] 5624 	mov	r7,a
      003E0F 74 08            [12] 5625 	mov	a,#0x08
      003E11 2A               [12] 5626 	add	a,r2
      003E12 FA               [12] 5627 	mov	r2,a
      003E13 74 00            [12] 5628 	mov	a,#0x00
      003E15 3B               [12] 5629 	addc	a,r3
      003E16 FB               [12] 5630 	mov	r3,a
      003E17 8A 82            [24] 5631 	mov	dpl,r2
      003E19 8B 83            [24] 5632 	mov	dph,r3
      003E1B 8F F0            [24] 5633 	mov	b,r7
      003E1D 12 7C 4D         [24] 5634 	lcall	__gptrget
      003E20 FA               [12] 5635 	mov	r2,a
      003E21 A3               [24] 5636 	inc	dptr
      003E22 12 7C 4D         [24] 5637 	lcall	__gptrget
      003E25 FB               [12] 5638 	mov	r3,a
      003E26 A3               [24] 5639 	inc	dptr
      003E27 12 7C 4D         [24] 5640 	lcall	__gptrget
      003E2A FF               [12] 5641 	mov	r7,a
      003E2B 90 0C 7F         [24] 5642 	mov	dptr,#_pxCurrentTCB
      003E2E EA               [12] 5643 	mov	a,r2
      003E2F F0               [24] 5644 	movx	@dptr,a
      003E30 EB               [12] 5645 	mov	a,r3
      003E31 A3               [24] 5646 	inc	dptr
      003E32 F0               [24] 5647 	movx	@dptr,a
      003E33 EF               [12] 5648 	mov	a,r7
      003E34 A3               [24] 5649 	inc	dptr
      003E35 F0               [24] 5650 	movx	@dptr,a
      003E36 E5 0D            [12] 5651 	mov	a,_bp
      003E38 24 07            [12] 5652 	add	a,#0x07
      003E3A F8               [12] 5653 	mov	r0,a
      003E3B 90 0C 86         [24] 5654 	mov	dptr,#_uxTopReadyPriority
      003E3E E6               [12] 5655 	mov	a,@r0
      003E3F F0               [24] 5656 	movx	@dptr,a
      003E40                       5657 00109$:
                           0018FC  5658 	C$tasks.c$3094$1_0$294 ==.
                                   5659 ;	tasks.c:3094: }
      003E40 85 0D 81         [24] 5660 	mov	sp,_bp
      003E43 D0 0D            [24] 5661 	pop	_bp
                           001901  5662 	C$tasks.c$3094$1_0$294 ==.
                           001901  5663 	XG$vTaskSwitchContext$0$0 ==.
      003E45 22               [24] 5664 	ret
                                   5665 ;------------------------------------------------------------
                                   5666 ;Allocation info for local variables in function 'vTaskPlaceOnEventList'
                                   5667 ;------------------------------------------------------------
                                   5668 ;xTicksToWait              Allocated to stack - _bp -4
                                   5669 ;pxEventList               Allocated to registers r5 r6 r7 
                                   5670 ;------------------------------------------------------------
                           001902  5671 	G$vTaskPlaceOnEventList$0$0 ==.
                           001902  5672 	C$tasks.c$3097$1_0$302 ==.
                                   5673 ;	tasks.c:3097: void vTaskPlaceOnEventList( List_t * const pxEventList,
                                   5674 ;	-----------------------------------------
                                   5675 ;	 function vTaskPlaceOnEventList
                                   5676 ;	-----------------------------------------
      003E46                       5677 _vTaskPlaceOnEventList:
      003E46 C0 0D            [24] 5678 	push	_bp
      003E48 85 81 0D         [24] 5679 	mov	_bp,sp
      003E4B AD 82            [24] 5680 	mov	r5,dpl
      003E4D AE 83            [24] 5681 	mov	r6,dph
      003E4F AF F0            [24] 5682 	mov	r7,b
                           00190D  5683 	C$tasks.c$3116$1_0$302 ==.
                                   5684 ;	tasks.c:3116: vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
      003E51 90 0C 7F         [24] 5685 	mov	dptr,#_pxCurrentTCB
      003E54 E0               [24] 5686 	movx	a,@dptr
      003E55 FA               [12] 5687 	mov	r2,a
      003E56 A3               [24] 5688 	inc	dptr
      003E57 E0               [24] 5689 	movx	a,@dptr
      003E58 FB               [12] 5690 	mov	r3,a
      003E59 A3               [24] 5691 	inc	dptr
      003E5A E0               [24] 5692 	movx	a,@dptr
      003E5B FC               [12] 5693 	mov	r4,a
      003E5C 74 11            [12] 5694 	mov	a,#0x11
      003E5E 2A               [12] 5695 	add	a,r2
      003E5F FA               [12] 5696 	mov	r2,a
      003E60 74 00            [12] 5697 	mov	a,#0x00
      003E62 3B               [12] 5698 	addc	a,r3
      003E63 FB               [12] 5699 	mov	r3,a
      003E64 C0 02            [24] 5700 	push	ar2
      003E66 C0 03            [24] 5701 	push	ar3
      003E68 C0 04            [24] 5702 	push	ar4
      003E6A 8D 82            [24] 5703 	mov	dpl,r5
      003E6C 8E 83            [24] 5704 	mov	dph,r6
      003E6E 8F F0            [24] 5705 	mov	b,r7
      003E70 12 6F D3         [24] 5706 	lcall	_vListInsert
      003E73 15 81            [12] 5707 	dec	sp
      003E75 15 81            [12] 5708 	dec	sp
      003E77 15 81            [12] 5709 	dec	sp
                           001935  5710 	C$tasks.c$3118$1_0$302 ==.
                                   5711 ;	tasks.c:3118: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      003E79 74 01            [12] 5712 	mov	a,#0x01
      003E7B C0 E0            [24] 5713 	push	acc
      003E7D E5 0D            [12] 5714 	mov	a,_bp
      003E7F 24 FC            [12] 5715 	add	a,#0xfc
      003E81 F8               [12] 5716 	mov	r0,a
      003E82 86 82            [24] 5717 	mov	dpl,@r0
      003E84 08               [12] 5718 	inc	r0
      003E85 86 83            [24] 5719 	mov	dph,@r0
      003E87 12 6C 3A         [24] 5720 	lcall	_prvAddCurrentTaskToDelayedList
      003E8A 15 81            [12] 5721 	dec	sp
      003E8C                       5722 00101$:
                           001948  5723 	C$tasks.c$3119$1_0$302 ==.
                                   5724 ;	tasks.c:3119: }
      003E8C D0 0D            [24] 5725 	pop	_bp
                           00194A  5726 	C$tasks.c$3119$1_0$302 ==.
                           00194A  5727 	XG$vTaskPlaceOnEventList$0$0 ==.
      003E8E 22               [24] 5728 	ret
                                   5729 ;------------------------------------------------------------
                                   5730 ;Allocation info for local variables in function 'vTaskPlaceOnUnorderedEventList'
                                   5731 ;------------------------------------------------------------
                                   5732 ;xItemValue                Allocated to stack - _bp -4
                                   5733 ;xTicksToWait              Allocated to stack - _bp -6
                                   5734 ;pxEventList               Allocated to stack - _bp +1
                                   5735 ;pxIndex                   Allocated to registers r5 r6 r7 
                                   5736 ;sloc0                     Allocated to stack - _bp +4
                                   5737 ;------------------------------------------------------------
                           00194B  5738 	G$vTaskPlaceOnUnorderedEventList$0$0 ==.
                           00194B  5739 	C$tasks.c$3122$1_0$304 ==.
                                   5740 ;	tasks.c:3122: void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
                                   5741 ;	-----------------------------------------
                                   5742 ;	 function vTaskPlaceOnUnorderedEventList
                                   5743 ;	-----------------------------------------
      003E8F                       5744 _vTaskPlaceOnUnorderedEventList:
      003E8F C0 0D            [24] 5745 	push	_bp
      003E91 85 81 0D         [24] 5746 	mov	_bp,sp
      003E94 C0 82            [24] 5747 	push	dpl
      003E96 C0 83            [24] 5748 	push	dph
      003E98 C0 F0            [24] 5749 	push	b
      003E9A 05 81            [12] 5750 	inc	sp
      003E9C 05 81            [12] 5751 	inc	sp
      003E9E 05 81            [12] 5752 	inc	sp
                           00195C  5753 	C$tasks.c$3135$1_0$304 ==.
                                   5754 ;	tasks.c:3135: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
      003EA0 90 0C 7F         [24] 5755 	mov	dptr,#_pxCurrentTCB
      003EA3 E0               [24] 5756 	movx	a,@dptr
      003EA4 FA               [12] 5757 	mov	r2,a
      003EA5 A3               [24] 5758 	inc	dptr
      003EA6 E0               [24] 5759 	movx	a,@dptr
      003EA7 FB               [12] 5760 	mov	r3,a
      003EA8 A3               [24] 5761 	inc	dptr
      003EA9 E0               [24] 5762 	movx	a,@dptr
      003EAA FC               [12] 5763 	mov	r4,a
      003EAB 74 11            [12] 5764 	mov	a,#0x11
      003EAD 2A               [12] 5765 	add	a,r2
      003EAE FA               [12] 5766 	mov	r2,a
      003EAF 74 00            [12] 5767 	mov	a,#0x00
      003EB1 3B               [12] 5768 	addc	a,r3
      003EB2 FB               [12] 5769 	mov	r3,a
      003EB3 E5 0D            [12] 5770 	mov	a,_bp
      003EB5 24 FC            [12] 5771 	add	a,#0xfc
      003EB7 F8               [12] 5772 	mov	r0,a
      003EB8 86 06            [24] 5773 	mov	ar6,@r0
      003EBA 08               [12] 5774 	inc	r0
      003EBB 86 07            [24] 5775 	mov	ar7,@r0
      003EBD 43 07 80         [24] 5776 	orl	ar7,#0x80
      003EC0 8A 82            [24] 5777 	mov	dpl,r2
      003EC2 8B 83            [24] 5778 	mov	dph,r3
      003EC4 8C F0            [24] 5779 	mov	b,r4
      003EC6 EE               [12] 5780 	mov	a,r6
      003EC7 12 79 22         [24] 5781 	lcall	__gptrput
      003ECA A3               [24] 5782 	inc	dptr
      003ECB EF               [12] 5783 	mov	a,r7
      003ECC 12 79 22         [24] 5784 	lcall	__gptrput
                           00198B  5785 	C$tasks.c$3142$2_0$305 ==.
                                   5786 ;	tasks.c:3142: listINSERT_END( pxEventList, &( pxCurrentTCB->xEventListItem ) );
      003ECF A8 0D            [24] 5787 	mov	r0,_bp
      003ED1 08               [12] 5788 	inc	r0
      003ED2 74 01            [12] 5789 	mov	a,#0x01
      003ED4 26               [12] 5790 	add	a,@r0
      003ED5 FD               [12] 5791 	mov	r5,a
      003ED6 74 00            [12] 5792 	mov	a,#0x00
      003ED8 08               [12] 5793 	inc	r0
      003ED9 36               [12] 5794 	addc	a,@r0
      003EDA FE               [12] 5795 	mov	r6,a
      003EDB 08               [12] 5796 	inc	r0
      003EDC 86 07            [24] 5797 	mov	ar7,@r0
      003EDE 8D 82            [24] 5798 	mov	dpl,r5
      003EE0 8E 83            [24] 5799 	mov	dph,r6
      003EE2 8F F0            [24] 5800 	mov	b,r7
      003EE4 12 7C 4D         [24] 5801 	lcall	__gptrget
      003EE7 FD               [12] 5802 	mov	r5,a
      003EE8 A3               [24] 5803 	inc	dptr
      003EE9 12 7C 4D         [24] 5804 	lcall	__gptrget
      003EEC FE               [12] 5805 	mov	r6,a
      003EED A3               [24] 5806 	inc	dptr
      003EEE 12 7C 4D         [24] 5807 	lcall	__gptrget
      003EF1 FF               [12] 5808 	mov	r7,a
      003EF2 90 0C 7F         [24] 5809 	mov	dptr,#_pxCurrentTCB
      003EF5 E0               [24] 5810 	movx	a,@dptr
      003EF6 FA               [12] 5811 	mov	r2,a
      003EF7 A3               [24] 5812 	inc	dptr
      003EF8 E0               [24] 5813 	movx	a,@dptr
      003EF9 FB               [12] 5814 	mov	r3,a
      003EFA A3               [24] 5815 	inc	dptr
      003EFB E0               [24] 5816 	movx	a,@dptr
      003EFC FC               [12] 5817 	mov	r4,a
      003EFD 74 11            [12] 5818 	mov	a,#0x11
      003EFF 2A               [12] 5819 	add	a,r2
      003F00 FA               [12] 5820 	mov	r2,a
      003F01 74 00            [12] 5821 	mov	a,#0x00
      003F03 3B               [12] 5822 	addc	a,r3
      003F04 FB               [12] 5823 	mov	r3,a
      003F05 74 02            [12] 5824 	mov	a,#0x02
      003F07 2A               [12] 5825 	add	a,r2
      003F08 FA               [12] 5826 	mov	r2,a
      003F09 74 00            [12] 5827 	mov	a,#0x00
      003F0B 3B               [12] 5828 	addc	a,r3
      003F0C FB               [12] 5829 	mov	r3,a
      003F0D 8A 82            [24] 5830 	mov	dpl,r2
      003F0F 8B 83            [24] 5831 	mov	dph,r3
      003F11 8C F0            [24] 5832 	mov	b,r4
      003F13 ED               [12] 5833 	mov	a,r5
      003F14 12 79 22         [24] 5834 	lcall	__gptrput
      003F17 A3               [24] 5835 	inc	dptr
      003F18 EE               [12] 5836 	mov	a,r6
      003F19 12 79 22         [24] 5837 	lcall	__gptrput
      003F1C A3               [24] 5838 	inc	dptr
      003F1D EF               [12] 5839 	mov	a,r7
      003F1E 12 79 22         [24] 5840 	lcall	__gptrput
      003F21 90 0C 7F         [24] 5841 	mov	dptr,#_pxCurrentTCB
      003F24 E0               [24] 5842 	movx	a,@dptr
      003F25 FA               [12] 5843 	mov	r2,a
      003F26 A3               [24] 5844 	inc	dptr
      003F27 E0               [24] 5845 	movx	a,@dptr
      003F28 FB               [12] 5846 	mov	r3,a
      003F29 A3               [24] 5847 	inc	dptr
      003F2A E0               [24] 5848 	movx	a,@dptr
      003F2B FC               [12] 5849 	mov	r4,a
      003F2C 74 11            [12] 5850 	mov	a,#0x11
      003F2E 2A               [12] 5851 	add	a,r2
      003F2F FA               [12] 5852 	mov	r2,a
      003F30 74 00            [12] 5853 	mov	a,#0x00
      003F32 3B               [12] 5854 	addc	a,r3
      003F33 FB               [12] 5855 	mov	r3,a
      003F34 E5 0D            [12] 5856 	mov	a,_bp
      003F36 24 04            [12] 5857 	add	a,#0x04
      003F38 F8               [12] 5858 	mov	r0,a
      003F39 74 05            [12] 5859 	mov	a,#0x05
      003F3B 2A               [12] 5860 	add	a,r2
      003F3C F6               [12] 5861 	mov	@r0,a
      003F3D 74 00            [12] 5862 	mov	a,#0x00
      003F3F 3B               [12] 5863 	addc	a,r3
      003F40 08               [12] 5864 	inc	r0
      003F41 F6               [12] 5865 	mov	@r0,a
      003F42 08               [12] 5866 	inc	r0
      003F43 A6 04            [24] 5867 	mov	@r0,ar4
      003F45 74 05            [12] 5868 	mov	a,#0x05
      003F47 2D               [12] 5869 	add	a,r5
      003F48 FD               [12] 5870 	mov	r5,a
      003F49 74 00            [12] 5871 	mov	a,#0x00
      003F4B 3E               [12] 5872 	addc	a,r6
      003F4C FE               [12] 5873 	mov	r6,a
      003F4D 8D 82            [24] 5874 	mov	dpl,r5
      003F4F 8E 83            [24] 5875 	mov	dph,r6
      003F51 8F F0            [24] 5876 	mov	b,r7
      003F53 12 7C 4D         [24] 5877 	lcall	__gptrget
      003F56 FA               [12] 5878 	mov	r2,a
      003F57 A3               [24] 5879 	inc	dptr
      003F58 12 7C 4D         [24] 5880 	lcall	__gptrget
      003F5B FB               [12] 5881 	mov	r3,a
      003F5C A3               [24] 5882 	inc	dptr
      003F5D 12 7C 4D         [24] 5883 	lcall	__gptrget
      003F60 FC               [12] 5884 	mov	r4,a
      003F61 E5 0D            [12] 5885 	mov	a,_bp
      003F63 24 04            [12] 5886 	add	a,#0x04
      003F65 F8               [12] 5887 	mov	r0,a
      003F66 86 82            [24] 5888 	mov	dpl,@r0
      003F68 08               [12] 5889 	inc	r0
      003F69 86 83            [24] 5890 	mov	dph,@r0
      003F6B 08               [12] 5891 	inc	r0
      003F6C 86 F0            [24] 5892 	mov	b,@r0
      003F6E EA               [12] 5893 	mov	a,r2
      003F6F 12 79 22         [24] 5894 	lcall	__gptrput
      003F72 A3               [24] 5895 	inc	dptr
      003F73 EB               [12] 5896 	mov	a,r3
      003F74 12 79 22         [24] 5897 	lcall	__gptrput
      003F77 A3               [24] 5898 	inc	dptr
      003F78 EC               [12] 5899 	mov	a,r4
      003F79 12 79 22         [24] 5900 	lcall	__gptrput
      003F7C 8D 82            [24] 5901 	mov	dpl,r5
      003F7E 8E 83            [24] 5902 	mov	dph,r6
      003F80 8F F0            [24] 5903 	mov	b,r7
      003F82 12 7C 4D         [24] 5904 	lcall	__gptrget
      003F85 FA               [12] 5905 	mov	r2,a
      003F86 A3               [24] 5906 	inc	dptr
      003F87 12 7C 4D         [24] 5907 	lcall	__gptrget
      003F8A FB               [12] 5908 	mov	r3,a
      003F8B A3               [24] 5909 	inc	dptr
      003F8C 12 7C 4D         [24] 5910 	lcall	__gptrget
      003F8F FC               [12] 5911 	mov	r4,a
      003F90 E5 0D            [12] 5912 	mov	a,_bp
      003F92 24 04            [12] 5913 	add	a,#0x04
      003F94 F8               [12] 5914 	mov	r0,a
      003F95 74 02            [12] 5915 	mov	a,#0x02
      003F97 2A               [12] 5916 	add	a,r2
      003F98 F6               [12] 5917 	mov	@r0,a
      003F99 74 00            [12] 5918 	mov	a,#0x00
      003F9B 3B               [12] 5919 	addc	a,r3
      003F9C 08               [12] 5920 	inc	r0
      003F9D F6               [12] 5921 	mov	@r0,a
      003F9E 08               [12] 5922 	inc	r0
      003F9F A6 04            [24] 5923 	mov	@r0,ar4
      003FA1 90 0C 7F         [24] 5924 	mov	dptr,#_pxCurrentTCB
      003FA4 E0               [24] 5925 	movx	a,@dptr
      003FA5 FA               [12] 5926 	mov	r2,a
      003FA6 A3               [24] 5927 	inc	dptr
      003FA7 E0               [24] 5928 	movx	a,@dptr
      003FA8 FB               [12] 5929 	mov	r3,a
      003FA9 A3               [24] 5930 	inc	dptr
      003FAA E0               [24] 5931 	movx	a,@dptr
      003FAB FC               [12] 5932 	mov	r4,a
      003FAC 74 11            [12] 5933 	mov	a,#0x11
      003FAE 2A               [12] 5934 	add	a,r2
      003FAF FA               [12] 5935 	mov	r2,a
      003FB0 74 00            [12] 5936 	mov	a,#0x00
      003FB2 3B               [12] 5937 	addc	a,r3
      003FB3 FB               [12] 5938 	mov	r3,a
      003FB4 E5 0D            [12] 5939 	mov	a,_bp
      003FB6 24 04            [12] 5940 	add	a,#0x04
      003FB8 F8               [12] 5941 	mov	r0,a
      003FB9 86 82            [24] 5942 	mov	dpl,@r0
      003FBB 08               [12] 5943 	inc	r0
      003FBC 86 83            [24] 5944 	mov	dph,@r0
      003FBE 08               [12] 5945 	inc	r0
      003FBF 86 F0            [24] 5946 	mov	b,@r0
      003FC1 EA               [12] 5947 	mov	a,r2
      003FC2 12 79 22         [24] 5948 	lcall	__gptrput
      003FC5 A3               [24] 5949 	inc	dptr
      003FC6 EB               [12] 5950 	mov	a,r3
      003FC7 12 79 22         [24] 5951 	lcall	__gptrput
      003FCA A3               [24] 5952 	inc	dptr
      003FCB EC               [12] 5953 	mov	a,r4
      003FCC 12 79 22         [24] 5954 	lcall	__gptrput
      003FCF 90 0C 7F         [24] 5955 	mov	dptr,#_pxCurrentTCB
      003FD2 E0               [24] 5956 	movx	a,@dptr
      003FD3 FA               [12] 5957 	mov	r2,a
      003FD4 A3               [24] 5958 	inc	dptr
      003FD5 E0               [24] 5959 	movx	a,@dptr
      003FD6 FB               [12] 5960 	mov	r3,a
      003FD7 A3               [24] 5961 	inc	dptr
      003FD8 E0               [24] 5962 	movx	a,@dptr
      003FD9 FC               [12] 5963 	mov	r4,a
      003FDA 74 11            [12] 5964 	mov	a,#0x11
      003FDC 2A               [12] 5965 	add	a,r2
      003FDD FA               [12] 5966 	mov	r2,a
      003FDE 74 00            [12] 5967 	mov	a,#0x00
      003FE0 3B               [12] 5968 	addc	a,r3
      003FE1 FB               [12] 5969 	mov	r3,a
      003FE2 8D 82            [24] 5970 	mov	dpl,r5
      003FE4 8E 83            [24] 5971 	mov	dph,r6
      003FE6 8F F0            [24] 5972 	mov	b,r7
      003FE8 EA               [12] 5973 	mov	a,r2
      003FE9 12 79 22         [24] 5974 	lcall	__gptrput
      003FEC A3               [24] 5975 	inc	dptr
      003FED EB               [12] 5976 	mov	a,r3
      003FEE 12 79 22         [24] 5977 	lcall	__gptrput
      003FF1 A3               [24] 5978 	inc	dptr
      003FF2 EC               [12] 5979 	mov	a,r4
      003FF3 12 79 22         [24] 5980 	lcall	__gptrput
      003FF6 90 0C 7F         [24] 5981 	mov	dptr,#_pxCurrentTCB
      003FF9 E0               [24] 5982 	movx	a,@dptr
      003FFA FD               [12] 5983 	mov	r5,a
      003FFB A3               [24] 5984 	inc	dptr
      003FFC E0               [24] 5985 	movx	a,@dptr
      003FFD FE               [12] 5986 	mov	r6,a
      003FFE A3               [24] 5987 	inc	dptr
      003FFF E0               [24] 5988 	movx	a,@dptr
      004000 FF               [12] 5989 	mov	r7,a
      004001 74 11            [12] 5990 	mov	a,#0x11
      004003 2D               [12] 5991 	add	a,r5
      004004 FD               [12] 5992 	mov	r5,a
      004005 74 00            [12] 5993 	mov	a,#0x00
      004007 3E               [12] 5994 	addc	a,r6
      004008 FE               [12] 5995 	mov	r6,a
      004009 74 0B            [12] 5996 	mov	a,#0x0b
      00400B 2D               [12] 5997 	add	a,r5
      00400C FD               [12] 5998 	mov	r5,a
      00400D 74 00            [12] 5999 	mov	a,#0x00
      00400F 3E               [12] 6000 	addc	a,r6
      004010 FE               [12] 6001 	mov	r6,a
      004011 8D 82            [24] 6002 	mov	dpl,r5
      004013 8E 83            [24] 6003 	mov	dph,r6
      004015 8F F0            [24] 6004 	mov	b,r7
      004017 A8 0D            [24] 6005 	mov	r0,_bp
      004019 08               [12] 6006 	inc	r0
      00401A E6               [12] 6007 	mov	a,@r0
      00401B 12 79 22         [24] 6008 	lcall	__gptrput
      00401E A3               [24] 6009 	inc	dptr
      00401F 08               [12] 6010 	inc	r0
      004020 E6               [12] 6011 	mov	a,@r0
      004021 12 79 22         [24] 6012 	lcall	__gptrput
      004024 A3               [24] 6013 	inc	dptr
      004025 08               [12] 6014 	inc	r0
      004026 E6               [12] 6015 	mov	a,@r0
      004027 12 79 22         [24] 6016 	lcall	__gptrput
      00402A A8 0D            [24] 6017 	mov	r0,_bp
      00402C 08               [12] 6018 	inc	r0
      00402D 86 82            [24] 6019 	mov	dpl,@r0
      00402F 08               [12] 6020 	inc	r0
      004030 86 83            [24] 6021 	mov	dph,@r0
      004032 08               [12] 6022 	inc	r0
      004033 86 F0            [24] 6023 	mov	b,@r0
      004035 12 7C 4D         [24] 6024 	lcall	__gptrget
      004038 FF               [12] 6025 	mov	r7,a
      004039 0F               [12] 6026 	inc	r7
      00403A A8 0D            [24] 6027 	mov	r0,_bp
      00403C 08               [12] 6028 	inc	r0
      00403D 86 82            [24] 6029 	mov	dpl,@r0
      00403F 08               [12] 6030 	inc	r0
      004040 86 83            [24] 6031 	mov	dph,@r0
      004042 08               [12] 6032 	inc	r0
      004043 86 F0            [24] 6033 	mov	b,@r0
      004045 EF               [12] 6034 	mov	a,r7
      004046 12 79 22         [24] 6035 	lcall	__gptrput
                           001B05  6036 	C$tasks.c$3144$1_0$304 ==.
                                   6037 ;	tasks.c:3144: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      004049 74 01            [12] 6038 	mov	a,#0x01
      00404B C0 E0            [24] 6039 	push	acc
      00404D E5 0D            [12] 6040 	mov	a,_bp
      00404F 24 FA            [12] 6041 	add	a,#0xfa
      004051 F8               [12] 6042 	mov	r0,a
      004052 86 82            [24] 6043 	mov	dpl,@r0
      004054 08               [12] 6044 	inc	r0
      004055 86 83            [24] 6045 	mov	dph,@r0
      004057 12 6C 3A         [24] 6046 	lcall	_prvAddCurrentTaskToDelayedList
      00405A 15 81            [12] 6047 	dec	sp
      00405C                       6048 00101$:
                           001B18  6049 	C$tasks.c$3145$1_0$304 ==.
                                   6050 ;	tasks.c:3145: }
      00405C 85 0D 81         [24] 6051 	mov	sp,_bp
      00405F D0 0D            [24] 6052 	pop	_bp
                           001B1D  6053 	C$tasks.c$3145$1_0$304 ==.
                           001B1D  6054 	XG$vTaskPlaceOnUnorderedEventList$0$0 ==.
      004061 22               [24] 6055 	ret
                                   6056 ;------------------------------------------------------------
                                   6057 ;Allocation info for local variables in function 'xTaskRemoveFromEventList'
                                   6058 ;------------------------------------------------------------
                                   6059 ;pxEventList               Allocated to registers r5 r6 r7 
                                   6060 ;pxUnblockedTCB            Allocated to stack - _bp +20
                                   6061 ;xReturn                   Allocated to registers r7 
                                   6062 ;pxList                    Allocated to stack - _bp +23
                                   6063 ;pxList                    Allocated to registers r7 r6 r5 
                                   6064 ;pxIndex                   Allocated to stack - _bp +23
                                   6065 ;pxIndex                   Allocated to stack - _bp +23
                                   6066 ;sloc0                     Allocated to stack - _bp +4
                                   6067 ;sloc1                     Allocated to stack - _bp +16
                                   6068 ;sloc2                     Allocated to stack - _bp +1
                                   6069 ;sloc3                     Allocated to stack - _bp +10
                                   6070 ;sloc4                     Allocated to stack - _bp +13
                                   6071 ;sloc5                     Allocated to stack - _bp +7
                                   6072 ;sloc6                     Allocated to stack - _bp +19
                                   6073 ;------------------------------------------------------------
                           001B1E  6074 	G$xTaskRemoveFromEventList$0$0 ==.
                           001B1E  6075 	C$tasks.c$3183$1_0$307 ==.
                                   6076 ;	tasks.c:3183: BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
                                   6077 ;	-----------------------------------------
                                   6078 ;	 function xTaskRemoveFromEventList
                                   6079 ;	-----------------------------------------
      004062                       6080 _xTaskRemoveFromEventList:
      004062 C0 0D            [24] 6081 	push	_bp
      004064 85 81 0D         [24] 6082 	mov	_bp,sp
      004067 E5 81            [12] 6083 	mov	a,sp
      004069 24 19            [12] 6084 	add	a,#0x19
      00406B F5 81            [12] 6085 	mov	sp,a
      00406D AD 82            [24] 6086 	mov	r5,dpl
      00406F AE 83            [24] 6087 	mov	r6,dph
      004071 AF F0            [24] 6088 	mov	r7,b
                           001B2F  6089 	C$tasks.c$3201$1_0$307 ==.
                                   6090 ;	tasks.c:3201: pxUnblockedTCB = listGET_OWNER_OF_HEAD_ENTRY( pxEventList ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      004073 74 04            [12] 6091 	mov	a,#0x04
      004075 2D               [12] 6092 	add	a,r5
      004076 FD               [12] 6093 	mov	r5,a
      004077 74 00            [12] 6094 	mov	a,#0x00
      004079 3E               [12] 6095 	addc	a,r6
      00407A FE               [12] 6096 	mov	r6,a
      00407B 74 02            [12] 6097 	mov	a,#0x02
      00407D 2D               [12] 6098 	add	a,r5
      00407E FD               [12] 6099 	mov	r5,a
      00407F 74 00            [12] 6100 	mov	a,#0x00
      004081 3E               [12] 6101 	addc	a,r6
      004082 FE               [12] 6102 	mov	r6,a
      004083 8D 82            [24] 6103 	mov	dpl,r5
      004085 8E 83            [24] 6104 	mov	dph,r6
      004087 8F F0            [24] 6105 	mov	b,r7
      004089 12 7C 4D         [24] 6106 	lcall	__gptrget
      00408C FD               [12] 6107 	mov	r5,a
      00408D A3               [24] 6108 	inc	dptr
      00408E 12 7C 4D         [24] 6109 	lcall	__gptrget
      004091 FE               [12] 6110 	mov	r6,a
      004092 A3               [24] 6111 	inc	dptr
      004093 12 7C 4D         [24] 6112 	lcall	__gptrget
      004096 FF               [12] 6113 	mov	r7,a
      004097 74 08            [12] 6114 	mov	a,#0x08
      004099 2D               [12] 6115 	add	a,r5
      00409A FD               [12] 6116 	mov	r5,a
      00409B 74 00            [12] 6117 	mov	a,#0x00
      00409D 3E               [12] 6118 	addc	a,r6
      00409E FE               [12] 6119 	mov	r6,a
      00409F 8D 82            [24] 6120 	mov	dpl,r5
      0040A1 8E 83            [24] 6121 	mov	dph,r6
      0040A3 8F F0            [24] 6122 	mov	b,r7
      0040A5 12 7C 4D         [24] 6123 	lcall	__gptrget
      0040A8 FD               [12] 6124 	mov	r5,a
      0040A9 A3               [24] 6125 	inc	dptr
      0040AA 12 7C 4D         [24] 6126 	lcall	__gptrget
      0040AD FE               [12] 6127 	mov	r6,a
      0040AE A3               [24] 6128 	inc	dptr
      0040AF 12 7C 4D         [24] 6129 	lcall	__gptrget
      0040B2 FF               [12] 6130 	mov	r7,a
      0040B3 E5 0D            [12] 6131 	mov	a,_bp
      0040B5 24 14            [12] 6132 	add	a,#0x14
      0040B7 F8               [12] 6133 	mov	r0,a
      0040B8 A6 05            [24] 6134 	mov	@r0,ar5
      0040BA 08               [12] 6135 	inc	r0
      0040BB A6 06            [24] 6136 	mov	@r0,ar6
      0040BD 08               [12] 6137 	inc	r0
      0040BE A6 07            [24] 6138 	mov	@r0,ar7
                           001B7C  6139 	C$tasks.c$3203$2_0$308 ==.
                                   6140 ;	tasks.c:3203: listREMOVE_ITEM( &( pxUnblockedTCB->xEventListItem ) );
      0040C0 E5 0D            [12] 6141 	mov	a,_bp
      0040C2 24 14            [12] 6142 	add	a,#0x14
      0040C4 F8               [12] 6143 	mov	r0,a
      0040C5 74 11            [12] 6144 	mov	a,#0x11
      0040C7 26               [12] 6145 	add	a,@r0
      0040C8 FA               [12] 6146 	mov	r2,a
      0040C9 74 00            [12] 6147 	mov	a,#0x00
      0040CB 08               [12] 6148 	inc	r0
      0040CC 36               [12] 6149 	addc	a,@r0
      0040CD FB               [12] 6150 	mov	r3,a
      0040CE 08               [12] 6151 	inc	r0
      0040CF 86 04            [24] 6152 	mov	ar4,@r0
      0040D1 E5 0D            [12] 6153 	mov	a,_bp
      0040D3 24 14            [12] 6154 	add	a,#0x14
      0040D5 F8               [12] 6155 	mov	r0,a
      0040D6 74 1C            [12] 6156 	mov	a,#0x1c
      0040D8 26               [12] 6157 	add	a,@r0
      0040D9 FD               [12] 6158 	mov	r5,a
      0040DA 74 00            [12] 6159 	mov	a,#0x00
      0040DC 08               [12] 6160 	inc	r0
      0040DD 36               [12] 6161 	addc	a,@r0
      0040DE FE               [12] 6162 	mov	r6,a
      0040DF 08               [12] 6163 	inc	r0
      0040E0 86 07            [24] 6164 	mov	ar7,@r0
      0040E2 8D 82            [24] 6165 	mov	dpl,r5
      0040E4 8E 83            [24] 6166 	mov	dph,r6
      0040E6 8F F0            [24] 6167 	mov	b,r7
      0040E8 E5 0D            [12] 6168 	mov	a,_bp
      0040EA 24 17            [12] 6169 	add	a,#0x17
      0040EC F8               [12] 6170 	mov	r0,a
      0040ED 12 7C 4D         [24] 6171 	lcall	__gptrget
      0040F0 F6               [12] 6172 	mov	@r0,a
      0040F1 A3               [24] 6173 	inc	dptr
      0040F2 12 7C 4D         [24] 6174 	lcall	__gptrget
      0040F5 08               [12] 6175 	inc	r0
      0040F6 F6               [12] 6176 	mov	@r0,a
      0040F7 A3               [24] 6177 	inc	dptr
      0040F8 12 7C 4D         [24] 6178 	lcall	__gptrget
      0040FB 08               [12] 6179 	inc	r0
      0040FC F6               [12] 6180 	mov	@r0,a
      0040FD E5 0D            [12] 6181 	mov	a,_bp
      0040FF 24 14            [12] 6182 	add	a,#0x14
      004101 F8               [12] 6183 	mov	r0,a
      004102 E5 0D            [12] 6184 	mov	a,_bp
      004104 24 04            [12] 6185 	add	a,#0x04
      004106 F9               [12] 6186 	mov	r1,a
      004107 74 13            [12] 6187 	mov	a,#0x13
      004109 26               [12] 6188 	add	a,@r0
      00410A F7               [12] 6189 	mov	@r1,a
      00410B 74 00            [12] 6190 	mov	a,#0x00
      00410D 08               [12] 6191 	inc	r0
      00410E 36               [12] 6192 	addc	a,@r0
      00410F 09               [12] 6193 	inc	r1
      004110 F7               [12] 6194 	mov	@r1,a
      004111 08               [12] 6195 	inc	r0
      004112 E6               [12] 6196 	mov	a,@r0
      004113 09               [12] 6197 	inc	r1
      004114 F7               [12] 6198 	mov	@r1,a
      004115 E5 0D            [12] 6199 	mov	a,_bp
      004117 24 04            [12] 6200 	add	a,#0x04
      004119 F8               [12] 6201 	mov	r0,a
      00411A 86 82            [24] 6202 	mov	dpl,@r0
      00411C 08               [12] 6203 	inc	r0
      00411D 86 83            [24] 6204 	mov	dph,@r0
      00411F 08               [12] 6205 	inc	r0
      004120 86 F0            [24] 6206 	mov	b,@r0
      004122 12 7C 4D         [24] 6207 	lcall	__gptrget
      004125 FD               [12] 6208 	mov	r5,a
      004126 A3               [24] 6209 	inc	dptr
      004127 12 7C 4D         [24] 6210 	lcall	__gptrget
      00412A FE               [12] 6211 	mov	r6,a
      00412B A3               [24] 6212 	inc	dptr
      00412C 12 7C 4D         [24] 6213 	lcall	__gptrget
      00412F FF               [12] 6214 	mov	r7,a
      004130 A8 0D            [24] 6215 	mov	r0,_bp
      004132 08               [12] 6216 	inc	r0
      004133 74 05            [12] 6217 	mov	a,#0x05
      004135 2D               [12] 6218 	add	a,r5
      004136 F6               [12] 6219 	mov	@r0,a
      004137 74 00            [12] 6220 	mov	a,#0x00
      004139 3E               [12] 6221 	addc	a,r6
      00413A 08               [12] 6222 	inc	r0
      00413B F6               [12] 6223 	mov	@r0,a
      00413C 08               [12] 6224 	inc	r0
      00413D A6 07            [24] 6225 	mov	@r0,ar7
      00413F E5 0D            [12] 6226 	mov	a,_bp
      004141 24 14            [12] 6227 	add	a,#0x14
      004143 F8               [12] 6228 	mov	r0,a
      004144 E5 0D            [12] 6229 	mov	a,_bp
      004146 24 10            [12] 6230 	add	a,#0x10
      004148 F9               [12] 6231 	mov	r1,a
      004149 74 16            [12] 6232 	mov	a,#0x16
      00414B 26               [12] 6233 	add	a,@r0
      00414C F7               [12] 6234 	mov	@r1,a
      00414D 74 00            [12] 6235 	mov	a,#0x00
      00414F 08               [12] 6236 	inc	r0
      004150 36               [12] 6237 	addc	a,@r0
      004151 09               [12] 6238 	inc	r1
      004152 F7               [12] 6239 	mov	@r1,a
      004153 08               [12] 6240 	inc	r0
      004154 E6               [12] 6241 	mov	a,@r0
      004155 09               [12] 6242 	inc	r1
      004156 F7               [12] 6243 	mov	@r1,a
      004157 E5 0D            [12] 6244 	mov	a,_bp
      004159 24 10            [12] 6245 	add	a,#0x10
      00415B F8               [12] 6246 	mov	r0,a
      00415C 86 82            [24] 6247 	mov	dpl,@r0
      00415E 08               [12] 6248 	inc	r0
      00415F 86 83            [24] 6249 	mov	dph,@r0
      004161 08               [12] 6250 	inc	r0
      004162 86 F0            [24] 6251 	mov	b,@r0
      004164 12 7C 4D         [24] 6252 	lcall	__gptrget
      004167 FD               [12] 6253 	mov	r5,a
      004168 A3               [24] 6254 	inc	dptr
      004169 12 7C 4D         [24] 6255 	lcall	__gptrget
      00416C FE               [12] 6256 	mov	r6,a
      00416D A3               [24] 6257 	inc	dptr
      00416E 12 7C 4D         [24] 6258 	lcall	__gptrget
      004171 FF               [12] 6259 	mov	r7,a
      004172 A8 0D            [24] 6260 	mov	r0,_bp
      004174 08               [12] 6261 	inc	r0
      004175 86 82            [24] 6262 	mov	dpl,@r0
      004177 08               [12] 6263 	inc	r0
      004178 86 83            [24] 6264 	mov	dph,@r0
      00417A 08               [12] 6265 	inc	r0
      00417B 86 F0            [24] 6266 	mov	b,@r0
      00417D ED               [12] 6267 	mov	a,r5
      00417E 12 79 22         [24] 6268 	lcall	__gptrput
      004181 A3               [24] 6269 	inc	dptr
      004182 EE               [12] 6270 	mov	a,r6
      004183 12 79 22         [24] 6271 	lcall	__gptrput
      004186 A3               [24] 6272 	inc	dptr
      004187 EF               [12] 6273 	mov	a,r7
      004188 12 79 22         [24] 6274 	lcall	__gptrput
      00418B E5 0D            [12] 6275 	mov	a,_bp
      00418D 24 10            [12] 6276 	add	a,#0x10
      00418F F8               [12] 6277 	mov	r0,a
      004190 86 82            [24] 6278 	mov	dpl,@r0
      004192 08               [12] 6279 	inc	r0
      004193 86 83            [24] 6280 	mov	dph,@r0
      004195 08               [12] 6281 	inc	r0
      004196 86 F0            [24] 6282 	mov	b,@r0
      004198 12 7C 4D         [24] 6283 	lcall	__gptrget
      00419B FD               [12] 6284 	mov	r5,a
      00419C A3               [24] 6285 	inc	dptr
      00419D 12 7C 4D         [24] 6286 	lcall	__gptrget
      0041A0 FE               [12] 6287 	mov	r6,a
      0041A1 A3               [24] 6288 	inc	dptr
      0041A2 12 7C 4D         [24] 6289 	lcall	__gptrget
      0041A5 FF               [12] 6290 	mov	r7,a
      0041A6 A8 0D            [24] 6291 	mov	r0,_bp
      0041A8 08               [12] 6292 	inc	r0
      0041A9 74 02            [12] 6293 	mov	a,#0x02
      0041AB 2D               [12] 6294 	add	a,r5
      0041AC F6               [12] 6295 	mov	@r0,a
      0041AD 74 00            [12] 6296 	mov	a,#0x00
      0041AF 3E               [12] 6297 	addc	a,r6
      0041B0 08               [12] 6298 	inc	r0
      0041B1 F6               [12] 6299 	mov	@r0,a
      0041B2 08               [12] 6300 	inc	r0
      0041B3 A6 07            [24] 6301 	mov	@r0,ar7
      0041B5 E5 0D            [12] 6302 	mov	a,_bp
      0041B7 24 04            [12] 6303 	add	a,#0x04
      0041B9 F8               [12] 6304 	mov	r0,a
      0041BA 86 82            [24] 6305 	mov	dpl,@r0
      0041BC 08               [12] 6306 	inc	r0
      0041BD 86 83            [24] 6307 	mov	dph,@r0
      0041BF 08               [12] 6308 	inc	r0
      0041C0 86 F0            [24] 6309 	mov	b,@r0
      0041C2 12 7C 4D         [24] 6310 	lcall	__gptrget
      0041C5 FD               [12] 6311 	mov	r5,a
      0041C6 A3               [24] 6312 	inc	dptr
      0041C7 12 7C 4D         [24] 6313 	lcall	__gptrget
      0041CA FE               [12] 6314 	mov	r6,a
      0041CB A3               [24] 6315 	inc	dptr
      0041CC 12 7C 4D         [24] 6316 	lcall	__gptrget
      0041CF FF               [12] 6317 	mov	r7,a
      0041D0 A8 0D            [24] 6318 	mov	r0,_bp
      0041D2 08               [12] 6319 	inc	r0
      0041D3 86 82            [24] 6320 	mov	dpl,@r0
      0041D5 08               [12] 6321 	inc	r0
      0041D6 86 83            [24] 6322 	mov	dph,@r0
      0041D8 08               [12] 6323 	inc	r0
      0041D9 86 F0            [24] 6324 	mov	b,@r0
      0041DB ED               [12] 6325 	mov	a,r5
      0041DC 12 79 22         [24] 6326 	lcall	__gptrput
      0041DF A3               [24] 6327 	inc	dptr
      0041E0 EE               [12] 6328 	mov	a,r6
      0041E1 12 79 22         [24] 6329 	lcall	__gptrput
      0041E4 A3               [24] 6330 	inc	dptr
      0041E5 EF               [12] 6331 	mov	a,r7
      0041E6 12 79 22         [24] 6332 	lcall	__gptrput
      0041E9 E5 0D            [12] 6333 	mov	a,_bp
      0041EB 24 17            [12] 6334 	add	a,#0x17
      0041ED F8               [12] 6335 	mov	r0,a
      0041EE A9 0D            [24] 6336 	mov	r1,_bp
      0041F0 09               [12] 6337 	inc	r1
      0041F1 74 01            [12] 6338 	mov	a,#0x01
      0041F3 26               [12] 6339 	add	a,@r0
      0041F4 F7               [12] 6340 	mov	@r1,a
      0041F5 74 00            [12] 6341 	mov	a,#0x00
      0041F7 08               [12] 6342 	inc	r0
      0041F8 36               [12] 6343 	addc	a,@r0
      0041F9 09               [12] 6344 	inc	r1
      0041FA F7               [12] 6345 	mov	@r1,a
      0041FB 08               [12] 6346 	inc	r0
      0041FC E6               [12] 6347 	mov	a,@r0
      0041FD 09               [12] 6348 	inc	r1
      0041FE F7               [12] 6349 	mov	@r1,a
      0041FF A8 0D            [24] 6350 	mov	r0,_bp
      004201 08               [12] 6351 	inc	r0
      004202 86 82            [24] 6352 	mov	dpl,@r0
      004204 08               [12] 6353 	inc	r0
      004205 86 83            [24] 6354 	mov	dph,@r0
      004207 08               [12] 6355 	inc	r0
      004208 86 F0            [24] 6356 	mov	b,@r0
      00420A 12 7C 4D         [24] 6357 	lcall	__gptrget
      00420D FD               [12] 6358 	mov	r5,a
      00420E A3               [24] 6359 	inc	dptr
      00420F 12 7C 4D         [24] 6360 	lcall	__gptrget
      004212 FE               [12] 6361 	mov	r6,a
      004213 A3               [24] 6362 	inc	dptr
      004214 12 7C 4D         [24] 6363 	lcall	__gptrget
      004217 FF               [12] 6364 	mov	r7,a
      004218 C0 02            [24] 6365 	push	ar2
      00421A C0 03            [24] 6366 	push	ar3
      00421C C0 04            [24] 6367 	push	ar4
      00421E 8D 82            [24] 6368 	mov	dpl,r5
      004220 8E 83            [24] 6369 	mov	dph,r6
      004222 8F F0            [24] 6370 	mov	b,r7
      004224 12 00 31         [24] 6371 	lcall	___gptr_cmp
      004227 15 81            [12] 6372 	dec	sp
      004229 15 81            [12] 6373 	dec	sp
      00422B 15 81            [12] 6374 	dec	sp
      00422D 70 02            [24] 6375 	jnz	00135$
      00422F 80 03            [24] 6376 	sjmp	00136$
      004231                       6377 00135$:
      004231 02 42 68         [24] 6378 	ljmp	00102$
      004234                       6379 00136$:
      004234 E5 0D            [12] 6380 	mov	a,_bp
      004236 24 10            [12] 6381 	add	a,#0x10
      004238 F8               [12] 6382 	mov	r0,a
      004239 86 82            [24] 6383 	mov	dpl,@r0
      00423B 08               [12] 6384 	inc	r0
      00423C 86 83            [24] 6385 	mov	dph,@r0
      00423E 08               [12] 6386 	inc	r0
      00423F 86 F0            [24] 6387 	mov	b,@r0
      004241 12 7C 4D         [24] 6388 	lcall	__gptrget
      004244 FD               [12] 6389 	mov	r5,a
      004245 A3               [24] 6390 	inc	dptr
      004246 12 7C 4D         [24] 6391 	lcall	__gptrget
      004249 FE               [12] 6392 	mov	r6,a
      00424A A3               [24] 6393 	inc	dptr
      00424B 12 7C 4D         [24] 6394 	lcall	__gptrget
      00424E FF               [12] 6395 	mov	r7,a
      00424F A8 0D            [24] 6396 	mov	r0,_bp
      004251 08               [12] 6397 	inc	r0
      004252 86 82            [24] 6398 	mov	dpl,@r0
      004254 08               [12] 6399 	inc	r0
      004255 86 83            [24] 6400 	mov	dph,@r0
      004257 08               [12] 6401 	inc	r0
      004258 86 F0            [24] 6402 	mov	b,@r0
      00425A ED               [12] 6403 	mov	a,r5
      00425B 12 79 22         [24] 6404 	lcall	__gptrput
      00425E A3               [24] 6405 	inc	dptr
      00425F EE               [12] 6406 	mov	a,r6
      004260 12 79 22         [24] 6407 	lcall	__gptrput
      004263 A3               [24] 6408 	inc	dptr
      004264 EF               [12] 6409 	mov	a,r7
      004265 12 79 22         [24] 6410 	lcall	__gptrput
      004268                       6411 00102$:
      004268 E5 0D            [12] 6412 	mov	a,_bp
      00426A 24 07            [12] 6413 	add	a,#0x07
      00426C F8               [12] 6414 	mov	r0,a
      00426D 74 0B            [12] 6415 	mov	a,#0x0b
      00426F 2A               [12] 6416 	add	a,r2
      004270 F6               [12] 6417 	mov	@r0,a
      004271 74 00            [12] 6418 	mov	a,#0x00
      004273 3B               [12] 6419 	addc	a,r3
      004274 08               [12] 6420 	inc	r0
      004275 F6               [12] 6421 	mov	@r0,a
      004276 08               [12] 6422 	inc	r0
      004277 A6 04            [24] 6423 	mov	@r0,ar4
      004279 E5 0D            [12] 6424 	mov	a,_bp
      00427B 24 07            [12] 6425 	add	a,#0x07
      00427D F8               [12] 6426 	mov	r0,a
      00427E 86 82            [24] 6427 	mov	dpl,@r0
      004280 08               [12] 6428 	inc	r0
      004281 86 83            [24] 6429 	mov	dph,@r0
      004283 08               [12] 6430 	inc	r0
      004284 86 F0            [24] 6431 	mov	b,@r0
      004286 74 00            [12] 6432 	mov	a,#0x00
      004288 12 79 22         [24] 6433 	lcall	__gptrput
      00428B A3               [24] 6434 	inc	dptr
      00428C 12 79 22         [24] 6435 	lcall	__gptrput
      00428F A3               [24] 6436 	inc	dptr
      004290 12 79 22         [24] 6437 	lcall	__gptrput
      004293 C0 02            [24] 6438 	push	ar2
      004295 C0 03            [24] 6439 	push	ar3
      004297 C0 04            [24] 6440 	push	ar4
      004299 E5 0D            [12] 6441 	mov	a,_bp
      00429B 24 17            [12] 6442 	add	a,#0x17
      00429D F8               [12] 6443 	mov	r0,a
      00429E 86 82            [24] 6444 	mov	dpl,@r0
      0042A0 08               [12] 6445 	inc	r0
      0042A1 86 83            [24] 6446 	mov	dph,@r0
      0042A3 08               [12] 6447 	inc	r0
      0042A4 86 F0            [24] 6448 	mov	b,@r0
      0042A6 12 7C 4D         [24] 6449 	lcall	__gptrget
      0042A9 FC               [12] 6450 	mov	r4,a
      0042AA 1C               [12] 6451 	dec	r4
      0042AB E5 0D            [12] 6452 	mov	a,_bp
      0042AD 24 17            [12] 6453 	add	a,#0x17
      0042AF F8               [12] 6454 	mov	r0,a
      0042B0 86 82            [24] 6455 	mov	dpl,@r0
      0042B2 08               [12] 6456 	inc	r0
      0042B3 86 83            [24] 6457 	mov	dph,@r0
      0042B5 08               [12] 6458 	inc	r0
      0042B6 86 F0            [24] 6459 	mov	b,@r0
      0042B8 EC               [12] 6460 	mov	a,r4
      0042B9 12 79 22         [24] 6461 	lcall	__gptrput
                           001D78  6462 	C$tasks.c$3205$1_0$307 ==.
                                   6463 ;	tasks.c:3205: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      0042BC 90 0C 92         [24] 6464 	mov	dptr,#_uxSchedulerSuspended
      0042BF E0               [24] 6465 	movx	a,@dptr
      0042C0 D0 04            [24] 6466 	pop	ar4
      0042C2 D0 03            [24] 6467 	pop	ar3
      0042C4 D0 02            [24] 6468 	pop	ar2
      0042C6 60 03            [24] 6469 	jz	00137$
      0042C8 02 46 B8         [24] 6470 	ljmp	00108$
      0042CB                       6471 00137$:
                           001D87  6472 	C$tasks.c$3207$3_0$311 ==.
                                   6473 ;	tasks.c:3207: listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
      0042CB E5 0D            [12] 6474 	mov	a,_bp
      0042CD 24 14            [12] 6475 	add	a,#0x14
      0042CF F8               [12] 6476 	mov	r0,a
      0042D0 74 03            [12] 6477 	mov	a,#0x03
      0042D2 26               [12] 6478 	add	a,@r0
      0042D3 FC               [12] 6479 	mov	r4,a
      0042D4 74 00            [12] 6480 	mov	a,#0x00
      0042D6 08               [12] 6481 	inc	r0
      0042D7 36               [12] 6482 	addc	a,@r0
      0042D8 FB               [12] 6483 	mov	r3,a
      0042D9 08               [12] 6484 	inc	r0
      0042DA 86 02            [24] 6485 	mov	ar2,@r0
      0042DC E5 0D            [12] 6486 	mov	a,_bp
      0042DE 24 10            [12] 6487 	add	a,#0x10
      0042E0 F8               [12] 6488 	mov	r0,a
      0042E1 74 0B            [12] 6489 	mov	a,#0x0b
      0042E3 2C               [12] 6490 	add	a,r4
      0042E4 F6               [12] 6491 	mov	@r0,a
      0042E5 74 00            [12] 6492 	mov	a,#0x00
      0042E7 3B               [12] 6493 	addc	a,r3
      0042E8 08               [12] 6494 	inc	r0
      0042E9 F6               [12] 6495 	mov	@r0,a
      0042EA 08               [12] 6496 	inc	r0
      0042EB A6 02            [24] 6497 	mov	@r0,ar2
      0042ED E5 0D            [12] 6498 	mov	a,_bp
      0042EF 24 10            [12] 6499 	add	a,#0x10
      0042F1 F8               [12] 6500 	mov	r0,a
      0042F2 86 82            [24] 6501 	mov	dpl,@r0
      0042F4 08               [12] 6502 	inc	r0
      0042F5 86 83            [24] 6503 	mov	dph,@r0
      0042F7 08               [12] 6504 	inc	r0
      0042F8 86 F0            [24] 6505 	mov	b,@r0
      0042FA 12 7C 4D         [24] 6506 	lcall	__gptrget
      0042FD FF               [12] 6507 	mov	r7,a
      0042FE A3               [24] 6508 	inc	dptr
      0042FF 12 7C 4D         [24] 6509 	lcall	__gptrget
      004302 FE               [12] 6510 	mov	r6,a
      004303 A3               [24] 6511 	inc	dptr
      004304 12 7C 4D         [24] 6512 	lcall	__gptrget
      004307 FD               [12] 6513 	mov	r5,a
      004308 E5 0D            [12] 6514 	mov	a,_bp
      00430A 24 04            [12] 6515 	add	a,#0x04
      00430C F8               [12] 6516 	mov	r0,a
      00430D 74 02            [12] 6517 	mov	a,#0x02
      00430F 2C               [12] 6518 	add	a,r4
      004310 F6               [12] 6519 	mov	@r0,a
      004311 74 00            [12] 6520 	mov	a,#0x00
      004313 3B               [12] 6521 	addc	a,r3
      004314 08               [12] 6522 	inc	r0
      004315 F6               [12] 6523 	mov	@r0,a
      004316 08               [12] 6524 	inc	r0
      004317 A6 02            [24] 6525 	mov	@r0,ar2
      004319 E5 0D            [12] 6526 	mov	a,_bp
      00431B 24 04            [12] 6527 	add	a,#0x04
      00431D F8               [12] 6528 	mov	r0,a
      00431E 86 82            [24] 6529 	mov	dpl,@r0
      004320 08               [12] 6530 	inc	r0
      004321 86 83            [24] 6531 	mov	dph,@r0
      004323 08               [12] 6532 	inc	r0
      004324 86 F0            [24] 6533 	mov	b,@r0
      004326 E5 0D            [12] 6534 	mov	a,_bp
      004328 24 0A            [12] 6535 	add	a,#0x0a
      00432A F9               [12] 6536 	mov	r1,a
      00432B 12 7C 4D         [24] 6537 	lcall	__gptrget
      00432E F7               [12] 6538 	mov	@r1,a
      00432F A3               [24] 6539 	inc	dptr
      004330 12 7C 4D         [24] 6540 	lcall	__gptrget
      004333 09               [12] 6541 	inc	r1
      004334 F7               [12] 6542 	mov	@r1,a
      004335 A3               [24] 6543 	inc	dptr
      004336 12 7C 4D         [24] 6544 	lcall	__gptrget
      004339 09               [12] 6545 	inc	r1
      00433A F7               [12] 6546 	mov	@r1,a
      00433B E5 0D            [12] 6547 	mov	a,_bp
      00433D 24 0A            [12] 6548 	add	a,#0x0a
      00433F F8               [12] 6549 	mov	r0,a
      004340 74 05            [12] 6550 	mov	a,#0x05
      004342 26               [12] 6551 	add	a,@r0
      004343 F6               [12] 6552 	mov	@r0,a
      004344 74 00            [12] 6553 	mov	a,#0x00
      004346 08               [12] 6554 	inc	r0
      004347 36               [12] 6555 	addc	a,@r0
      004348 F6               [12] 6556 	mov	@r0,a
      004349 E5 0D            [12] 6557 	mov	a,_bp
      00434B 24 0D            [12] 6558 	add	a,#0x0d
      00434D F8               [12] 6559 	mov	r0,a
      00434E 74 05            [12] 6560 	mov	a,#0x05
      004350 2C               [12] 6561 	add	a,r4
      004351 F6               [12] 6562 	mov	@r0,a
      004352 74 00            [12] 6563 	mov	a,#0x00
      004354 3B               [12] 6564 	addc	a,r3
      004355 08               [12] 6565 	inc	r0
      004356 F6               [12] 6566 	mov	@r0,a
      004357 08               [12] 6567 	inc	r0
      004358 A6 02            [24] 6568 	mov	@r0,ar2
      00435A E5 0D            [12] 6569 	mov	a,_bp
      00435C 24 0D            [12] 6570 	add	a,#0x0d
      00435E F8               [12] 6571 	mov	r0,a
      00435F 86 82            [24] 6572 	mov	dpl,@r0
      004361 08               [12] 6573 	inc	r0
      004362 86 83            [24] 6574 	mov	dph,@r0
      004364 08               [12] 6575 	inc	r0
      004365 86 F0            [24] 6576 	mov	b,@r0
      004367 E5 0D            [12] 6577 	mov	a,_bp
      004369 24 07            [12] 6578 	add	a,#0x07
      00436B F9               [12] 6579 	mov	r1,a
      00436C 12 7C 4D         [24] 6580 	lcall	__gptrget
      00436F F7               [12] 6581 	mov	@r1,a
      004370 A3               [24] 6582 	inc	dptr
      004371 12 7C 4D         [24] 6583 	lcall	__gptrget
      004374 09               [12] 6584 	inc	r1
      004375 F7               [12] 6585 	mov	@r1,a
      004376 A3               [24] 6586 	inc	dptr
      004377 12 7C 4D         [24] 6587 	lcall	__gptrget
      00437A 09               [12] 6588 	inc	r1
      00437B F7               [12] 6589 	mov	@r1,a
      00437C E5 0D            [12] 6590 	mov	a,_bp
      00437E 24 0A            [12] 6591 	add	a,#0x0a
      004380 F8               [12] 6592 	mov	r0,a
      004381 86 82            [24] 6593 	mov	dpl,@r0
      004383 08               [12] 6594 	inc	r0
      004384 86 83            [24] 6595 	mov	dph,@r0
      004386 08               [12] 6596 	inc	r0
      004387 86 F0            [24] 6597 	mov	b,@r0
      004389 E5 0D            [12] 6598 	mov	a,_bp
      00438B 24 07            [12] 6599 	add	a,#0x07
      00438D F9               [12] 6600 	mov	r1,a
      00438E E7               [12] 6601 	mov	a,@r1
      00438F 12 79 22         [24] 6602 	lcall	__gptrput
      004392 A3               [24] 6603 	inc	dptr
      004393 09               [12] 6604 	inc	r1
      004394 E7               [12] 6605 	mov	a,@r1
      004395 12 79 22         [24] 6606 	lcall	__gptrput
      004398 A3               [24] 6607 	inc	dptr
      004399 09               [12] 6608 	inc	r1
      00439A E7               [12] 6609 	mov	a,@r1
      00439B 12 79 22         [24] 6610 	lcall	__gptrput
      00439E E5 0D            [12] 6611 	mov	a,_bp
      0043A0 24 0D            [12] 6612 	add	a,#0x0d
      0043A2 F8               [12] 6613 	mov	r0,a
      0043A3 86 82            [24] 6614 	mov	dpl,@r0
      0043A5 08               [12] 6615 	inc	r0
      0043A6 86 83            [24] 6616 	mov	dph,@r0
      0043A8 08               [12] 6617 	inc	r0
      0043A9 86 F0            [24] 6618 	mov	b,@r0
      0043AB E5 0D            [12] 6619 	mov	a,_bp
      0043AD 24 07            [12] 6620 	add	a,#0x07
      0043AF F9               [12] 6621 	mov	r1,a
      0043B0 12 7C 4D         [24] 6622 	lcall	__gptrget
      0043B3 F7               [12] 6623 	mov	@r1,a
      0043B4 A3               [24] 6624 	inc	dptr
      0043B5 12 7C 4D         [24] 6625 	lcall	__gptrget
      0043B8 09               [12] 6626 	inc	r1
      0043B9 F7               [12] 6627 	mov	@r1,a
      0043BA A3               [24] 6628 	inc	dptr
      0043BB 12 7C 4D         [24] 6629 	lcall	__gptrget
      0043BE 09               [12] 6630 	inc	r1
      0043BF F7               [12] 6631 	mov	@r1,a
      0043C0 E5 0D            [12] 6632 	mov	a,_bp
      0043C2 24 07            [12] 6633 	add	a,#0x07
      0043C4 F8               [12] 6634 	mov	r0,a
      0043C5 74 02            [12] 6635 	mov	a,#0x02
      0043C7 26               [12] 6636 	add	a,@r0
      0043C8 F6               [12] 6637 	mov	@r0,a
      0043C9 74 00            [12] 6638 	mov	a,#0x00
      0043CB 08               [12] 6639 	inc	r0
      0043CC 36               [12] 6640 	addc	a,@r0
      0043CD F6               [12] 6641 	mov	@r0,a
      0043CE E5 0D            [12] 6642 	mov	a,_bp
      0043D0 24 04            [12] 6643 	add	a,#0x04
      0043D2 F8               [12] 6644 	mov	r0,a
      0043D3 86 82            [24] 6645 	mov	dpl,@r0
      0043D5 08               [12] 6646 	inc	r0
      0043D6 86 83            [24] 6647 	mov	dph,@r0
      0043D8 08               [12] 6648 	inc	r0
      0043D9 86 F0            [24] 6649 	mov	b,@r0
      0043DB E5 0D            [12] 6650 	mov	a,_bp
      0043DD 24 0A            [12] 6651 	add	a,#0x0a
      0043DF F9               [12] 6652 	mov	r1,a
      0043E0 12 7C 4D         [24] 6653 	lcall	__gptrget
      0043E3 F7               [12] 6654 	mov	@r1,a
      0043E4 A3               [24] 6655 	inc	dptr
      0043E5 12 7C 4D         [24] 6656 	lcall	__gptrget
      0043E8 09               [12] 6657 	inc	r1
      0043E9 F7               [12] 6658 	mov	@r1,a
      0043EA A3               [24] 6659 	inc	dptr
      0043EB 12 7C 4D         [24] 6660 	lcall	__gptrget
      0043EE 09               [12] 6661 	inc	r1
      0043EF F7               [12] 6662 	mov	@r1,a
      0043F0 E5 0D            [12] 6663 	mov	a,_bp
      0043F2 24 07            [12] 6664 	add	a,#0x07
      0043F4 F8               [12] 6665 	mov	r0,a
      0043F5 86 82            [24] 6666 	mov	dpl,@r0
      0043F7 08               [12] 6667 	inc	r0
      0043F8 86 83            [24] 6668 	mov	dph,@r0
      0043FA 08               [12] 6669 	inc	r0
      0043FB 86 F0            [24] 6670 	mov	b,@r0
      0043FD E5 0D            [12] 6671 	mov	a,_bp
      0043FF 24 0A            [12] 6672 	add	a,#0x0a
      004401 F9               [12] 6673 	mov	r1,a
      004402 E7               [12] 6674 	mov	a,@r1
      004403 12 79 22         [24] 6675 	lcall	__gptrput
      004406 A3               [24] 6676 	inc	dptr
      004407 09               [12] 6677 	inc	r1
      004408 E7               [12] 6678 	mov	a,@r1
      004409 12 79 22         [24] 6679 	lcall	__gptrput
      00440C A3               [24] 6680 	inc	dptr
      00440D 09               [12] 6681 	inc	r1
      00440E E7               [12] 6682 	mov	a,@r1
      00440F 12 79 22         [24] 6683 	lcall	__gptrput
      004412 E5 0D            [12] 6684 	mov	a,_bp
      004414 24 07            [12] 6685 	add	a,#0x07
      004416 F8               [12] 6686 	mov	r0,a
      004417 74 01            [12] 6687 	mov	a,#0x01
      004419 2F               [12] 6688 	add	a,r7
      00441A F6               [12] 6689 	mov	@r0,a
      00441B 74 00            [12] 6690 	mov	a,#0x00
      00441D 3E               [12] 6691 	addc	a,r6
      00441E 08               [12] 6692 	inc	r0
      00441F F6               [12] 6693 	mov	@r0,a
      004420 08               [12] 6694 	inc	r0
      004421 A6 05            [24] 6695 	mov	@r0,ar5
      004423 E5 0D            [12] 6696 	mov	a,_bp
      004425 24 07            [12] 6697 	add	a,#0x07
      004427 F8               [12] 6698 	mov	r0,a
      004428 86 82            [24] 6699 	mov	dpl,@r0
      00442A 08               [12] 6700 	inc	r0
      00442B 86 83            [24] 6701 	mov	dph,@r0
      00442D 08               [12] 6702 	inc	r0
      00442E 86 F0            [24] 6703 	mov	b,@r0
      004430 E5 0D            [12] 6704 	mov	a,_bp
      004432 24 0A            [12] 6705 	add	a,#0x0a
      004434 F9               [12] 6706 	mov	r1,a
      004435 12 7C 4D         [24] 6707 	lcall	__gptrget
      004438 F7               [12] 6708 	mov	@r1,a
      004439 A3               [24] 6709 	inc	dptr
      00443A 12 7C 4D         [24] 6710 	lcall	__gptrget
      00443D 09               [12] 6711 	inc	r1
      00443E F7               [12] 6712 	mov	@r1,a
      00443F A3               [24] 6713 	inc	dptr
      004440 12 7C 4D         [24] 6714 	lcall	__gptrget
      004443 09               [12] 6715 	inc	r1
      004444 F7               [12] 6716 	mov	@r1,a
      004445 E5 0D            [12] 6717 	mov	a,_bp
      004447 24 0A            [12] 6718 	add	a,#0x0a
      004449 F8               [12] 6719 	mov	r0,a
      00444A C0 04            [24] 6720 	push	ar4
      00444C C0 03            [24] 6721 	push	ar3
      00444E C0 02            [24] 6722 	push	ar2
      004450 86 82            [24] 6723 	mov	dpl,@r0
      004452 08               [12] 6724 	inc	r0
      004453 86 83            [24] 6725 	mov	dph,@r0
      004455 08               [12] 6726 	inc	r0
      004456 86 F0            [24] 6727 	mov	b,@r0
      004458 12 00 31         [24] 6728 	lcall	___gptr_cmp
      00445B 15 81            [12] 6729 	dec	sp
      00445D 15 81            [12] 6730 	dec	sp
      00445F 15 81            [12] 6731 	dec	sp
      004461 70 02            [24] 6732 	jnz	00138$
      004463 80 03            [24] 6733 	sjmp	00139$
      004465                       6734 00138$:
      004465 02 44 AC         [24] 6735 	ljmp	00104$
      004468                       6736 00139$:
      004468 E5 0D            [12] 6737 	mov	a,_bp
      00446A 24 0D            [12] 6738 	add	a,#0x0d
      00446C F8               [12] 6739 	mov	r0,a
      00446D 86 82            [24] 6740 	mov	dpl,@r0
      00446F 08               [12] 6741 	inc	r0
      004470 86 83            [24] 6742 	mov	dph,@r0
      004472 08               [12] 6743 	inc	r0
      004473 86 F0            [24] 6744 	mov	b,@r0
      004475 E5 0D            [12] 6745 	mov	a,_bp
      004477 24 0A            [12] 6746 	add	a,#0x0a
      004479 F9               [12] 6747 	mov	r1,a
      00447A 12 7C 4D         [24] 6748 	lcall	__gptrget
      00447D F7               [12] 6749 	mov	@r1,a
      00447E A3               [24] 6750 	inc	dptr
      00447F 12 7C 4D         [24] 6751 	lcall	__gptrget
      004482 09               [12] 6752 	inc	r1
      004483 F7               [12] 6753 	mov	@r1,a
      004484 A3               [24] 6754 	inc	dptr
      004485 12 7C 4D         [24] 6755 	lcall	__gptrget
      004488 09               [12] 6756 	inc	r1
      004489 F7               [12] 6757 	mov	@r1,a
      00448A E5 0D            [12] 6758 	mov	a,_bp
      00448C 24 07            [12] 6759 	add	a,#0x07
      00448E F8               [12] 6760 	mov	r0,a
      00448F 86 82            [24] 6761 	mov	dpl,@r0
      004491 08               [12] 6762 	inc	r0
      004492 86 83            [24] 6763 	mov	dph,@r0
      004494 08               [12] 6764 	inc	r0
      004495 86 F0            [24] 6765 	mov	b,@r0
      004497 E5 0D            [12] 6766 	mov	a,_bp
      004499 24 0A            [12] 6767 	add	a,#0x0a
      00449B F9               [12] 6768 	mov	r1,a
      00449C E7               [12] 6769 	mov	a,@r1
      00449D 12 79 22         [24] 6770 	lcall	__gptrput
      0044A0 A3               [24] 6771 	inc	dptr
      0044A1 09               [12] 6772 	inc	r1
      0044A2 E7               [12] 6773 	mov	a,@r1
      0044A3 12 79 22         [24] 6774 	lcall	__gptrput
      0044A6 A3               [24] 6775 	inc	dptr
      0044A7 09               [12] 6776 	inc	r1
      0044A8 E7               [12] 6777 	mov	a,@r1
      0044A9 12 79 22         [24] 6778 	lcall	__gptrput
      0044AC                       6779 00104$:
      0044AC E5 0D            [12] 6780 	mov	a,_bp
      0044AE 24 10            [12] 6781 	add	a,#0x10
      0044B0 F8               [12] 6782 	mov	r0,a
      0044B1 86 82            [24] 6783 	mov	dpl,@r0
      0044B3 08               [12] 6784 	inc	r0
      0044B4 86 83            [24] 6785 	mov	dph,@r0
      0044B6 08               [12] 6786 	inc	r0
      0044B7 86 F0            [24] 6787 	mov	b,@r0
      0044B9 74 00            [12] 6788 	mov	a,#0x00
      0044BB 12 79 22         [24] 6789 	lcall	__gptrput
      0044BE A3               [24] 6790 	inc	dptr
      0044BF 12 79 22         [24] 6791 	lcall	__gptrput
      0044C2 A3               [24] 6792 	inc	dptr
      0044C3 12 79 22         [24] 6793 	lcall	__gptrput
      0044C6 8F 82            [24] 6794 	mov	dpl,r7
      0044C8 8E 83            [24] 6795 	mov	dph,r6
      0044CA 8D F0            [24] 6796 	mov	b,r5
      0044CC E5 0D            [12] 6797 	mov	a,_bp
      0044CE 24 07            [12] 6798 	add	a,#0x07
      0044D0 F8               [12] 6799 	mov	r0,a
      0044D1 12 7C 4D         [24] 6800 	lcall	__gptrget
      0044D4 F6               [12] 6801 	mov	@r0,a
      0044D5 E5 0D            [12] 6802 	mov	a,_bp
      0044D7 24 07            [12] 6803 	add	a,#0x07
      0044D9 F8               [12] 6804 	mov	r0,a
      0044DA E5 0D            [12] 6805 	mov	a,_bp
      0044DC 24 07            [12] 6806 	add	a,#0x07
      0044DE F9               [12] 6807 	mov	r1,a
      0044DF E6               [12] 6808 	mov	a,@r0
      0044E0 14               [12] 6809 	dec	a
      0044E1 F7               [12] 6810 	mov	@r1,a
      0044E2 8F 82            [24] 6811 	mov	dpl,r7
      0044E4 8E 83            [24] 6812 	mov	dph,r6
      0044E6 8D F0            [24] 6813 	mov	b,r5
      0044E8 E5 0D            [12] 6814 	mov	a,_bp
      0044EA 24 07            [12] 6815 	add	a,#0x07
      0044EC F8               [12] 6816 	mov	r0,a
      0044ED E6               [12] 6817 	mov	a,@r0
      0044EE 12 79 22         [24] 6818 	lcall	__gptrput
                           001FAD  6819 	C$tasks.c$3208$3_0$313 ==.
                                   6820 ;	tasks.c:3208: prvAddTaskToReadyList( pxUnblockedTCB );
      0044F1 E5 0D            [12] 6821 	mov	a,_bp
      0044F3 24 14            [12] 6822 	add	a,#0x14
      0044F5 F8               [12] 6823 	mov	r0,a
      0044F6 74 1F            [12] 6824 	mov	a,#0x1f
      0044F8 26               [12] 6825 	add	a,@r0
      0044F9 FF               [12] 6826 	mov	r7,a
      0044FA 74 00            [12] 6827 	mov	a,#0x00
      0044FC 08               [12] 6828 	inc	r0
      0044FD 36               [12] 6829 	addc	a,@r0
      0044FE FE               [12] 6830 	mov	r6,a
      0044FF 08               [12] 6831 	inc	r0
      004500 86 05            [24] 6832 	mov	ar5,@r0
      004502 8F 82            [24] 6833 	mov	dpl,r7
      004504 8E 83            [24] 6834 	mov	dph,r6
      004506 8D F0            [24] 6835 	mov	b,r5
      004508 E5 0D            [12] 6836 	mov	a,_bp
      00450A 24 0A            [12] 6837 	add	a,#0x0a
      00450C F8               [12] 6838 	mov	r0,a
      00450D 12 7C 4D         [24] 6839 	lcall	__gptrget
      004510 F6               [12] 6840 	mov	@r0,a
      004511 90 0C 86         [24] 6841 	mov	dptr,#_uxTopReadyPriority
      004514 E5 0D            [12] 6842 	mov	a,_bp
      004516 24 13            [12] 6843 	add	a,#0x13
      004518 F8               [12] 6844 	mov	r0,a
      004519 E0               [24] 6845 	movx	a,@dptr
      00451A F6               [12] 6846 	mov	@r0,a
      00451B E5 0D            [12] 6847 	mov	a,_bp
      00451D 24 0A            [12] 6848 	add	a,#0x0a
      00451F F8               [12] 6849 	mov	r0,a
      004520 E5 0D            [12] 6850 	mov	a,_bp
      004522 24 13            [12] 6851 	add	a,#0x13
      004524 F9               [12] 6852 	mov	r1,a
      004525 C3               [12] 6853 	clr	c
      004526 E7               [12] 6854 	mov	a,@r1
      004527 96               [12] 6855 	subb	a,@r0
      004528 40 03            [24] 6856 	jc	00140$
      00452A 02 45 37         [24] 6857 	ljmp	00106$
      00452D                       6858 00140$:
      00452D E5 0D            [12] 6859 	mov	a,_bp
      00452F 24 0A            [12] 6860 	add	a,#0x0a
      004531 F8               [12] 6861 	mov	r0,a
      004532 90 0C 86         [24] 6862 	mov	dptr,#_uxTopReadyPriority
      004535 E6               [12] 6863 	mov	a,@r0
      004536 F0               [24] 6864 	movx	@dptr,a
      004537                       6865 00106$:
      004537 8F 82            [24] 6866 	mov	dpl,r7
      004539 8E 83            [24] 6867 	mov	dph,r6
      00453B 8D F0            [24] 6868 	mov	b,r5
      00453D E5 0D            [12] 6869 	mov	a,_bp
      00453F 24 13            [12] 6870 	add	a,#0x13
      004541 F8               [12] 6871 	mov	r0,a
      004542 12 7C 4D         [24] 6872 	lcall	__gptrget
      004545 F6               [12] 6873 	mov	@r0,a
      004546 E5 0D            [12] 6874 	mov	a,_bp
      004548 24 13            [12] 6875 	add	a,#0x13
      00454A F8               [12] 6876 	mov	r0,a
      00454B E6               [12] 6877 	mov	a,@r0
      00454C 75 F0 0C         [24] 6878 	mov	b,#0x0c
      00454F A4               [48] 6879 	mul	ab
      004550 C8               [12] 6880 	xch	a,r0
      004551 E5 0D            [12] 6881 	mov	a,_bp
      004553 24 0A            [12] 6882 	add	a,#0x0a
      004555 C8               [12] 6883 	xch	a,r0
      004556 24 16            [12] 6884 	add	a,#_pxReadyTasksLists
      004558 F6               [12] 6885 	mov	@r0,a
      004559 74 00            [12] 6886 	mov	a,#(_pxReadyTasksLists >> 8)
      00455B 35 F0            [12] 6887 	addc	a,b
      00455D 08               [12] 6888 	inc	r0
      00455E F6               [12] 6889 	mov	@r0,a
      00455F E5 0D            [12] 6890 	mov	a,_bp
      004561 24 0A            [12] 6891 	add	a,#0x0a
      004563 F8               [12] 6892 	mov	r0,a
      004564 86 82            [24] 6893 	mov	dpl,@r0
      004566 08               [12] 6894 	inc	r0
      004567 86 83            [24] 6895 	mov	dph,@r0
      004569 A3               [24] 6896 	inc	dptr
      00456A E5 0D            [12] 6897 	mov	a,_bp
      00456C 24 17            [12] 6898 	add	a,#0x17
      00456E F8               [12] 6899 	mov	r0,a
      00456F E0               [24] 6900 	movx	a,@dptr
      004570 F6               [12] 6901 	mov	@r0,a
      004571 A3               [24] 6902 	inc	dptr
      004572 E0               [24] 6903 	movx	a,@dptr
      004573 08               [12] 6904 	inc	r0
      004574 F6               [12] 6905 	mov	@r0,a
      004575 A3               [24] 6906 	inc	dptr
      004576 E0               [24] 6907 	movx	a,@dptr
      004577 08               [12] 6908 	inc	r0
      004578 F6               [12] 6909 	mov	@r0,a
      004579 E5 0D            [12] 6910 	mov	a,_bp
      00457B 24 04            [12] 6911 	add	a,#0x04
      00457D F8               [12] 6912 	mov	r0,a
      00457E 86 82            [24] 6913 	mov	dpl,@r0
      004580 08               [12] 6914 	inc	r0
      004581 86 83            [24] 6915 	mov	dph,@r0
      004583 08               [12] 6916 	inc	r0
      004584 86 F0            [24] 6917 	mov	b,@r0
      004586 E5 0D            [12] 6918 	mov	a,_bp
      004588 24 17            [12] 6919 	add	a,#0x17
      00458A F9               [12] 6920 	mov	r1,a
      00458B E7               [12] 6921 	mov	a,@r1
      00458C 12 79 22         [24] 6922 	lcall	__gptrput
      00458F A3               [24] 6923 	inc	dptr
      004590 09               [12] 6924 	inc	r1
      004591 E7               [12] 6925 	mov	a,@r1
      004592 12 79 22         [24] 6926 	lcall	__gptrput
      004595 A3               [24] 6927 	inc	dptr
      004596 09               [12] 6928 	inc	r1
      004597 E7               [12] 6929 	mov	a,@r1
      004598 12 79 22         [24] 6930 	lcall	__gptrput
      00459B E5 0D            [12] 6931 	mov	a,_bp
      00459D 24 17            [12] 6932 	add	a,#0x17
      00459F F8               [12] 6933 	mov	r0,a
      0045A0 E5 0D            [12] 6934 	mov	a,_bp
      0045A2 24 0A            [12] 6935 	add	a,#0x0a
      0045A4 F9               [12] 6936 	mov	r1,a
      0045A5 74 05            [12] 6937 	mov	a,#0x05
      0045A7 26               [12] 6938 	add	a,@r0
      0045A8 F7               [12] 6939 	mov	@r1,a
      0045A9 74 00            [12] 6940 	mov	a,#0x00
      0045AB 08               [12] 6941 	inc	r0
      0045AC 36               [12] 6942 	addc	a,@r0
      0045AD 09               [12] 6943 	inc	r1
      0045AE F7               [12] 6944 	mov	@r1,a
      0045AF 08               [12] 6945 	inc	r0
      0045B0 E6               [12] 6946 	mov	a,@r0
      0045B1 09               [12] 6947 	inc	r1
      0045B2 F7               [12] 6948 	mov	@r1,a
      0045B3 E5 0D            [12] 6949 	mov	a,_bp
      0045B5 24 0A            [12] 6950 	add	a,#0x0a
      0045B7 F8               [12] 6951 	mov	r0,a
      0045B8 86 82            [24] 6952 	mov	dpl,@r0
      0045BA 08               [12] 6953 	inc	r0
      0045BB 86 83            [24] 6954 	mov	dph,@r0
      0045BD 08               [12] 6955 	inc	r0
      0045BE 86 F0            [24] 6956 	mov	b,@r0
      0045C0 E5 0D            [12] 6957 	mov	a,_bp
      0045C2 24 04            [12] 6958 	add	a,#0x04
      0045C4 F9               [12] 6959 	mov	r1,a
      0045C5 12 7C 4D         [24] 6960 	lcall	__gptrget
      0045C8 F7               [12] 6961 	mov	@r1,a
      0045C9 A3               [24] 6962 	inc	dptr
      0045CA 12 7C 4D         [24] 6963 	lcall	__gptrget
      0045CD 09               [12] 6964 	inc	r1
      0045CE F7               [12] 6965 	mov	@r1,a
      0045CF A3               [24] 6966 	inc	dptr
      0045D0 12 7C 4D         [24] 6967 	lcall	__gptrget
      0045D3 09               [12] 6968 	inc	r1
      0045D4 F7               [12] 6969 	mov	@r1,a
      0045D5 E5 0D            [12] 6970 	mov	a,_bp
      0045D7 24 0D            [12] 6971 	add	a,#0x0d
      0045D9 F8               [12] 6972 	mov	r0,a
      0045DA 86 82            [24] 6973 	mov	dpl,@r0
      0045DC 08               [12] 6974 	inc	r0
      0045DD 86 83            [24] 6975 	mov	dph,@r0
      0045DF 08               [12] 6976 	inc	r0
      0045E0 86 F0            [24] 6977 	mov	b,@r0
      0045E2 E5 0D            [12] 6978 	mov	a,_bp
      0045E4 24 04            [12] 6979 	add	a,#0x04
      0045E6 F9               [12] 6980 	mov	r1,a
      0045E7 E7               [12] 6981 	mov	a,@r1
      0045E8 12 79 22         [24] 6982 	lcall	__gptrput
      0045EB A3               [24] 6983 	inc	dptr
      0045EC 09               [12] 6984 	inc	r1
      0045ED E7               [12] 6985 	mov	a,@r1
      0045EE 12 79 22         [24] 6986 	lcall	__gptrput
      0045F1 A3               [24] 6987 	inc	dptr
      0045F2 09               [12] 6988 	inc	r1
      0045F3 E7               [12] 6989 	mov	a,@r1
      0045F4 12 79 22         [24] 6990 	lcall	__gptrput
      0045F7 E5 0D            [12] 6991 	mov	a,_bp
      0045F9 24 0A            [12] 6992 	add	a,#0x0a
      0045FB F8               [12] 6993 	mov	r0,a
      0045FC 86 82            [24] 6994 	mov	dpl,@r0
      0045FE 08               [12] 6995 	inc	r0
      0045FF 86 83            [24] 6996 	mov	dph,@r0
      004601 08               [12] 6997 	inc	r0
      004602 86 F0            [24] 6998 	mov	b,@r0
      004604 E5 0D            [12] 6999 	mov	a,_bp
      004606 24 0D            [12] 7000 	add	a,#0x0d
      004608 F9               [12] 7001 	mov	r1,a
      004609 12 7C 4D         [24] 7002 	lcall	__gptrget
      00460C F7               [12] 7003 	mov	@r1,a
      00460D A3               [24] 7004 	inc	dptr
      00460E 12 7C 4D         [24] 7005 	lcall	__gptrget
      004611 09               [12] 7006 	inc	r1
      004612 F7               [12] 7007 	mov	@r1,a
      004613 A3               [24] 7008 	inc	dptr
      004614 12 7C 4D         [24] 7009 	lcall	__gptrget
      004617 09               [12] 7010 	inc	r1
      004618 F7               [12] 7011 	mov	@r1,a
      004619 E5 0D            [12] 7012 	mov	a,_bp
      00461B 24 0D            [12] 7013 	add	a,#0x0d
      00461D F8               [12] 7014 	mov	r0,a
      00461E 74 02            [12] 7015 	mov	a,#0x02
      004620 26               [12] 7016 	add	a,@r0
      004621 F6               [12] 7017 	mov	@r0,a
      004622 74 00            [12] 7018 	mov	a,#0x00
      004624 08               [12] 7019 	inc	r0
      004625 36               [12] 7020 	addc	a,@r0
      004626 F6               [12] 7021 	mov	@r0,a
      004627 E5 0D            [12] 7022 	mov	a,_bp
      004629 24 0D            [12] 7023 	add	a,#0x0d
      00462B F8               [12] 7024 	mov	r0,a
      00462C 86 82            [24] 7025 	mov	dpl,@r0
      00462E 08               [12] 7026 	inc	r0
      00462F 86 83            [24] 7027 	mov	dph,@r0
      004631 08               [12] 7028 	inc	r0
      004632 86 F0            [24] 7029 	mov	b,@r0
      004634 EC               [12] 7030 	mov	a,r4
      004635 12 79 22         [24] 7031 	lcall	__gptrput
      004638 A3               [24] 7032 	inc	dptr
      004639 EB               [12] 7033 	mov	a,r3
      00463A 12 79 22         [24] 7034 	lcall	__gptrput
      00463D A3               [24] 7035 	inc	dptr
      00463E EA               [12] 7036 	mov	a,r2
      00463F 12 79 22         [24] 7037 	lcall	__gptrput
      004642 E5 0D            [12] 7038 	mov	a,_bp
      004644 24 0A            [12] 7039 	add	a,#0x0a
      004646 F8               [12] 7040 	mov	r0,a
      004647 86 82            [24] 7041 	mov	dpl,@r0
      004649 08               [12] 7042 	inc	r0
      00464A 86 83            [24] 7043 	mov	dph,@r0
      00464C 08               [12] 7044 	inc	r0
      00464D 86 F0            [24] 7045 	mov	b,@r0
      00464F EC               [12] 7046 	mov	a,r4
      004650 12 79 22         [24] 7047 	lcall	__gptrput
      004653 A3               [24] 7048 	inc	dptr
      004654 EB               [12] 7049 	mov	a,r3
      004655 12 79 22         [24] 7050 	lcall	__gptrput
      004658 A3               [24] 7051 	inc	dptr
      004659 EA               [12] 7052 	mov	a,r2
      00465A 12 79 22         [24] 7053 	lcall	__gptrput
      00465D 8F 82            [24] 7054 	mov	dpl,r7
      00465F 8E 83            [24] 7055 	mov	dph,r6
      004661 8D F0            [24] 7056 	mov	b,r5
      004663 12 7C 4D         [24] 7057 	lcall	__gptrget
      004666 FC               [12] 7058 	mov	r4,a
      004667 EC               [12] 7059 	mov	a,r4
      004668 75 F0 0C         [24] 7060 	mov	b,#0x0c
      00466B A4               [48] 7061 	mul	ab
      00466C 24 16            [12] 7062 	add	a,#_pxReadyTasksLists
      00466E FC               [12] 7063 	mov	r4,a
      00466F 74 00            [12] 7064 	mov	a,#(_pxReadyTasksLists >> 8)
      004671 35 F0            [12] 7065 	addc	a,b
      004673 FB               [12] 7066 	mov	r3,a
      004674 7A 00            [12] 7067 	mov	r2,#0x00
      004676 E5 0D            [12] 7068 	mov	a,_bp
      004678 24 10            [12] 7069 	add	a,#0x10
      00467A F8               [12] 7070 	mov	r0,a
      00467B 86 82            [24] 7071 	mov	dpl,@r0
      00467D 08               [12] 7072 	inc	r0
      00467E 86 83            [24] 7073 	mov	dph,@r0
      004680 08               [12] 7074 	inc	r0
      004681 86 F0            [24] 7075 	mov	b,@r0
      004683 EC               [12] 7076 	mov	a,r4
      004684 12 79 22         [24] 7077 	lcall	__gptrput
      004687 A3               [24] 7078 	inc	dptr
      004688 EB               [12] 7079 	mov	a,r3
      004689 12 79 22         [24] 7080 	lcall	__gptrput
      00468C A3               [24] 7081 	inc	dptr
      00468D EA               [12] 7082 	mov	a,r2
      00468E 12 79 22         [24] 7083 	lcall	__gptrput
      004691 8F 82            [24] 7084 	mov	dpl,r7
      004693 8E 83            [24] 7085 	mov	dph,r6
      004695 8D F0            [24] 7086 	mov	b,r5
      004697 12 7C 4D         [24] 7087 	lcall	__gptrget
      00469A FF               [12] 7088 	mov	r7,a
      00469B EF               [12] 7089 	mov	a,r7
      00469C 75 F0 0C         [24] 7090 	mov	b,#0x0c
      00469F A4               [48] 7091 	mul	ab
      0046A0 24 16            [12] 7092 	add	a,#_pxReadyTasksLists
      0046A2 FF               [12] 7093 	mov	r7,a
      0046A3 74 00            [12] 7094 	mov	a,#(_pxReadyTasksLists >> 8)
      0046A5 35 F0            [12] 7095 	addc	a,b
      0046A7 FE               [12] 7096 	mov	r6,a
      0046A8 8F 82            [24] 7097 	mov	dpl,r7
      0046AA 8E 83            [24] 7098 	mov	dph,r6
      0046AC E0               [24] 7099 	movx	a,@dptr
      0046AD FD               [12] 7100 	mov	r5,a
      0046AE 0D               [12] 7101 	inc	r5
      0046AF 8F 82            [24] 7102 	mov	dpl,r7
      0046B1 8E 83            [24] 7103 	mov	dph,r6
      0046B3 ED               [12] 7104 	mov	a,r5
      0046B4 F0               [24] 7105 	movx	@dptr,a
      0046B5 02 47 C9         [24] 7106 	ljmp	00109$
      0046B8                       7107 00108$:
                           002174  7108 	C$tasks.c$3228$3_0$317 ==.
                                   7109 ;	tasks.c:3228: listINSERT_END( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
      0046B8 90 00 65         [24] 7110 	mov	dptr,#(_xPendingReadyList + 0x0001)
      0046BB E5 0D            [12] 7111 	mov	a,_bp
      0046BD 24 17            [12] 7112 	add	a,#0x17
      0046BF F8               [12] 7113 	mov	r0,a
      0046C0 E0               [24] 7114 	movx	a,@dptr
      0046C1 F6               [12] 7115 	mov	@r0,a
      0046C2 A3               [24] 7116 	inc	dptr
      0046C3 E0               [24] 7117 	movx	a,@dptr
      0046C4 08               [12] 7118 	inc	r0
      0046C5 F6               [12] 7119 	mov	@r0,a
      0046C6 A3               [24] 7120 	inc	dptr
      0046C7 E0               [24] 7121 	movx	a,@dptr
      0046C8 08               [12] 7122 	inc	r0
      0046C9 F6               [12] 7123 	mov	@r0,a
      0046CA 74 02            [12] 7124 	mov	a,#0x02
      0046CC 2A               [12] 7125 	add	a,r2
      0046CD FD               [12] 7126 	mov	r5,a
      0046CE 74 00            [12] 7127 	mov	a,#0x00
      0046D0 3B               [12] 7128 	addc	a,r3
      0046D1 FE               [12] 7129 	mov	r6,a
      0046D2 8C 07            [24] 7130 	mov	ar7,r4
      0046D4 8D 82            [24] 7131 	mov	dpl,r5
      0046D6 8E 83            [24] 7132 	mov	dph,r6
      0046D8 8F F0            [24] 7133 	mov	b,r7
      0046DA E5 0D            [12] 7134 	mov	a,_bp
      0046DC 24 17            [12] 7135 	add	a,#0x17
      0046DE F8               [12] 7136 	mov	r0,a
      0046DF E6               [12] 7137 	mov	a,@r0
      0046E0 12 79 22         [24] 7138 	lcall	__gptrput
      0046E3 A3               [24] 7139 	inc	dptr
      0046E4 08               [12] 7140 	inc	r0
      0046E5 E6               [12] 7141 	mov	a,@r0
      0046E6 12 79 22         [24] 7142 	lcall	__gptrput
      0046E9 A3               [24] 7143 	inc	dptr
      0046EA 08               [12] 7144 	inc	r0
      0046EB E6               [12] 7145 	mov	a,@r0
      0046EC 12 79 22         [24] 7146 	lcall	__gptrput
      0046EF E5 0D            [12] 7147 	mov	a,_bp
      0046F1 24 0D            [12] 7148 	add	a,#0x0d
      0046F3 F8               [12] 7149 	mov	r0,a
      0046F4 74 05            [12] 7150 	mov	a,#0x05
      0046F6 2A               [12] 7151 	add	a,r2
      0046F7 F6               [12] 7152 	mov	@r0,a
      0046F8 74 00            [12] 7153 	mov	a,#0x00
      0046FA 3B               [12] 7154 	addc	a,r3
      0046FB 08               [12] 7155 	inc	r0
      0046FC F6               [12] 7156 	mov	@r0,a
      0046FD 08               [12] 7157 	inc	r0
      0046FE A6 04            [24] 7158 	mov	@r0,ar4
      004700 E5 0D            [12] 7159 	mov	a,_bp
      004702 24 17            [12] 7160 	add	a,#0x17
      004704 F8               [12] 7161 	mov	r0,a
      004705 E5 0D            [12] 7162 	mov	a,_bp
      004707 24 0A            [12] 7163 	add	a,#0x0a
      004709 F9               [12] 7164 	mov	r1,a
      00470A 74 05            [12] 7165 	mov	a,#0x05
      00470C 26               [12] 7166 	add	a,@r0
      00470D F7               [12] 7167 	mov	@r1,a
      00470E 74 00            [12] 7168 	mov	a,#0x00
      004710 08               [12] 7169 	inc	r0
      004711 36               [12] 7170 	addc	a,@r0
      004712 09               [12] 7171 	inc	r1
      004713 F7               [12] 7172 	mov	@r1,a
      004714 08               [12] 7173 	inc	r0
      004715 E6               [12] 7174 	mov	a,@r0
      004716 09               [12] 7175 	inc	r1
      004717 F7               [12] 7176 	mov	@r1,a
      004718 E5 0D            [12] 7177 	mov	a,_bp
      00471A 24 0A            [12] 7178 	add	a,#0x0a
      00471C F8               [12] 7179 	mov	r0,a
      00471D 86 82            [24] 7180 	mov	dpl,@r0
      00471F 08               [12] 7181 	inc	r0
      004720 86 83            [24] 7182 	mov	dph,@r0
      004722 08               [12] 7183 	inc	r0
      004723 86 F0            [24] 7184 	mov	b,@r0
      004725 12 7C 4D         [24] 7185 	lcall	__gptrget
      004728 FD               [12] 7186 	mov	r5,a
      004729 A3               [24] 7187 	inc	dptr
      00472A 12 7C 4D         [24] 7188 	lcall	__gptrget
      00472D FE               [12] 7189 	mov	r6,a
      00472E A3               [24] 7190 	inc	dptr
      00472F 12 7C 4D         [24] 7191 	lcall	__gptrget
      004732 FF               [12] 7192 	mov	r7,a
      004733 E5 0D            [12] 7193 	mov	a,_bp
      004735 24 0D            [12] 7194 	add	a,#0x0d
      004737 F8               [12] 7195 	mov	r0,a
      004738 86 82            [24] 7196 	mov	dpl,@r0
      00473A 08               [12] 7197 	inc	r0
      00473B 86 83            [24] 7198 	mov	dph,@r0
      00473D 08               [12] 7199 	inc	r0
      00473E 86 F0            [24] 7200 	mov	b,@r0
      004740 ED               [12] 7201 	mov	a,r5
      004741 12 79 22         [24] 7202 	lcall	__gptrput
      004744 A3               [24] 7203 	inc	dptr
      004745 EE               [12] 7204 	mov	a,r6
      004746 12 79 22         [24] 7205 	lcall	__gptrput
      004749 A3               [24] 7206 	inc	dptr
      00474A EF               [12] 7207 	mov	a,r7
      00474B 12 79 22         [24] 7208 	lcall	__gptrput
      00474E E5 0D            [12] 7209 	mov	a,_bp
      004750 24 0A            [12] 7210 	add	a,#0x0a
      004752 F8               [12] 7211 	mov	r0,a
      004753 86 82            [24] 7212 	mov	dpl,@r0
      004755 08               [12] 7213 	inc	r0
      004756 86 83            [24] 7214 	mov	dph,@r0
      004758 08               [12] 7215 	inc	r0
      004759 86 F0            [24] 7216 	mov	b,@r0
      00475B 12 7C 4D         [24] 7217 	lcall	__gptrget
      00475E FD               [12] 7218 	mov	r5,a
      00475F A3               [24] 7219 	inc	dptr
      004760 12 7C 4D         [24] 7220 	lcall	__gptrget
      004763 FE               [12] 7221 	mov	r6,a
      004764 A3               [24] 7222 	inc	dptr
      004765 12 7C 4D         [24] 7223 	lcall	__gptrget
      004768 FF               [12] 7224 	mov	r7,a
      004769 74 02            [12] 7225 	mov	a,#0x02
      00476B 2D               [12] 7226 	add	a,r5
      00476C FD               [12] 7227 	mov	r5,a
      00476D 74 00            [12] 7228 	mov	a,#0x00
      00476F 3E               [12] 7229 	addc	a,r6
      004770 FE               [12] 7230 	mov	r6,a
      004771 8D 82            [24] 7231 	mov	dpl,r5
      004773 8E 83            [24] 7232 	mov	dph,r6
      004775 8F F0            [24] 7233 	mov	b,r7
      004777 EA               [12] 7234 	mov	a,r2
      004778 12 79 22         [24] 7235 	lcall	__gptrput
      00477B A3               [24] 7236 	inc	dptr
      00477C EB               [12] 7237 	mov	a,r3
      00477D 12 79 22         [24] 7238 	lcall	__gptrput
      004780 A3               [24] 7239 	inc	dptr
      004781 EC               [12] 7240 	mov	a,r4
      004782 12 79 22         [24] 7241 	lcall	__gptrput
      004785 E5 0D            [12] 7242 	mov	a,_bp
      004787 24 0A            [12] 7243 	add	a,#0x0a
      004789 F8               [12] 7244 	mov	r0,a
      00478A 86 82            [24] 7245 	mov	dpl,@r0
      00478C 08               [12] 7246 	inc	r0
      00478D 86 83            [24] 7247 	mov	dph,@r0
      00478F 08               [12] 7248 	inc	r0
      004790 86 F0            [24] 7249 	mov	b,@r0
      004792 EA               [12] 7250 	mov	a,r2
      004793 12 79 22         [24] 7251 	lcall	__gptrput
      004796 A3               [24] 7252 	inc	dptr
      004797 EB               [12] 7253 	mov	a,r3
      004798 12 79 22         [24] 7254 	lcall	__gptrput
      00479B A3               [24] 7255 	inc	dptr
      00479C EC               [12] 7256 	mov	a,r4
      00479D 12 79 22         [24] 7257 	lcall	__gptrput
      0047A0 E5 0D            [12] 7258 	mov	a,_bp
      0047A2 24 07            [12] 7259 	add	a,#0x07
      0047A4 F8               [12] 7260 	mov	r0,a
      0047A5 86 82            [24] 7261 	mov	dpl,@r0
      0047A7 08               [12] 7262 	inc	r0
      0047A8 86 83            [24] 7263 	mov	dph,@r0
      0047AA 08               [12] 7264 	inc	r0
      0047AB 86 F0            [24] 7265 	mov	b,@r0
      0047AD 74 64            [12] 7266 	mov	a,#_xPendingReadyList
      0047AF 12 79 22         [24] 7267 	lcall	__gptrput
      0047B2 A3               [24] 7268 	inc	dptr
      0047B3 74 00            [12] 7269 	mov	a,#(_xPendingReadyList >> 8)
      0047B5 12 79 22         [24] 7270 	lcall	__gptrput
      0047B8 A3               [24] 7271 	inc	dptr
      0047B9 74 00            [12] 7272 	mov	a,#0x00
      0047BB 12 79 22         [24] 7273 	lcall	__gptrput
      0047BE 90 00 64         [24] 7274 	mov	dptr,#_xPendingReadyList
      0047C1 E0               [24] 7275 	movx	a,@dptr
      0047C2 FF               [12] 7276 	mov	r7,a
      0047C3 0F               [12] 7277 	inc	r7
      0047C4 90 00 64         [24] 7278 	mov	dptr,#_xPendingReadyList
      0047C7 EF               [12] 7279 	mov	a,r7
      0047C8 F0               [24] 7280 	movx	@dptr,a
      0047C9                       7281 00109$:
                           002285  7282 	C$tasks.c$3231$1_0$307 ==.
                                   7283 ;	tasks.c:3231: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
      0047C9 E5 0D            [12] 7284 	mov	a,_bp
      0047CB 24 14            [12] 7285 	add	a,#0x14
      0047CD F8               [12] 7286 	mov	r0,a
      0047CE 74 1F            [12] 7287 	mov	a,#0x1f
      0047D0 26               [12] 7288 	add	a,@r0
      0047D1 FD               [12] 7289 	mov	r5,a
      0047D2 74 00            [12] 7290 	mov	a,#0x00
      0047D4 08               [12] 7291 	inc	r0
      0047D5 36               [12] 7292 	addc	a,@r0
      0047D6 FE               [12] 7293 	mov	r6,a
      0047D7 08               [12] 7294 	inc	r0
      0047D8 86 07            [24] 7295 	mov	ar7,@r0
      0047DA 8D 82            [24] 7296 	mov	dpl,r5
      0047DC 8E 83            [24] 7297 	mov	dph,r6
      0047DE 8F F0            [24] 7298 	mov	b,r7
      0047E0 12 7C 4D         [24] 7299 	lcall	__gptrget
      0047E3 FD               [12] 7300 	mov	r5,a
      0047E4 90 0C 7F         [24] 7301 	mov	dptr,#_pxCurrentTCB
      0047E7 E0               [24] 7302 	movx	a,@dptr
      0047E8 FC               [12] 7303 	mov	r4,a
      0047E9 A3               [24] 7304 	inc	dptr
      0047EA E0               [24] 7305 	movx	a,@dptr
      0047EB FE               [12] 7306 	mov	r6,a
      0047EC A3               [24] 7307 	inc	dptr
      0047ED E0               [24] 7308 	movx	a,@dptr
      0047EE FF               [12] 7309 	mov	r7,a
      0047EF 74 1F            [12] 7310 	mov	a,#0x1f
      0047F1 2C               [12] 7311 	add	a,r4
      0047F2 FC               [12] 7312 	mov	r4,a
      0047F3 74 00            [12] 7313 	mov	a,#0x00
      0047F5 3E               [12] 7314 	addc	a,r6
      0047F6 FE               [12] 7315 	mov	r6,a
      0047F7 8C 82            [24] 7316 	mov	dpl,r4
      0047F9 8E 83            [24] 7317 	mov	dph,r6
      0047FB 8F F0            [24] 7318 	mov	b,r7
      0047FD 12 7C 4D         [24] 7319 	lcall	__gptrget
      004800 FC               [12] 7320 	mov	r4,a
      004801 C3               [12] 7321 	clr	c
      004802 EC               [12] 7322 	mov	a,r4
      004803 9D               [12] 7323 	subb	a,r5
      004804 40 03            [24] 7324 	jc	00141$
      004806 02 48 13         [24] 7325 	ljmp	00111$
      004809                       7326 00141$:
                           0022C5  7327 	C$tasks.c$3236$2_0$318 ==.
                                   7328 ;	tasks.c:3236: xReturn = pdTRUE;
      004809 7F 01            [12] 7329 	mov	r7,#0x01
                           0022C7  7330 	C$tasks.c$3240$2_0$318 ==.
                                   7331 ;	tasks.c:3240: xYieldPending = pdTRUE;
      00480B 90 0C 8A         [24] 7332 	mov	dptr,#_xYieldPending
      00480E EF               [12] 7333 	mov	a,r7
      00480F F0               [24] 7334 	movx	@dptr,a
      004810 02 48 15         [24] 7335 	ljmp	00112$
      004813                       7336 00111$:
                           0022CF  7337 	C$tasks.c$3244$2_0$319 ==.
                                   7338 ;	tasks.c:3244: xReturn = pdFALSE;
      004813 7F 00            [12] 7339 	mov	r7,#0x00
      004815                       7340 00112$:
                           0022D1  7341 	C$tasks.c$3247$1_0$307 ==.
                                   7342 ;	tasks.c:3247: return xReturn;
      004815 8F 82            [24] 7343 	mov	dpl,r7
      004817                       7344 00113$:
                           0022D3  7345 	C$tasks.c$3248$1_0$307 ==.
                                   7346 ;	tasks.c:3248: }
      004817 85 0D 81         [24] 7347 	mov	sp,_bp
      00481A D0 0D            [24] 7348 	pop	_bp
                           0022D8  7349 	C$tasks.c$3248$1_0$307 ==.
                           0022D8  7350 	XG$xTaskRemoveFromEventList$0$0 ==.
      00481C 22               [24] 7351 	ret
                                   7352 ;------------------------------------------------------------
                                   7353 ;Allocation info for local variables in function 'vTaskRemoveFromUnorderedEventList'
                                   7354 ;------------------------------------------------------------
                                   7355 ;xItemValue                Allocated to stack - _bp -4
                                   7356 ;pxEventListItem           Allocated to stack - _bp +1
                                   7357 ;pxUnblockedTCB            Allocated to stack - _bp +19
                                   7358 ;pxList                    Allocated to stack - _bp +22
                                   7359 ;pxList                    Allocated to stack - _bp +22
                                   7360 ;pxIndex                   Allocated to registers r2 r3 r4 
                                   7361 ;sloc0                     Allocated to stack - _bp +4
                                   7362 ;sloc1                     Allocated to stack - _bp +10
                                   7363 ;sloc2                     Allocated to stack - _bp +7
                                   7364 ;sloc3                     Allocated to stack - _bp +16
                                   7365 ;sloc4                     Allocated to stack - _bp +13
                                   7366 ;------------------------------------------------------------
                           0022D9  7367 	G$vTaskRemoveFromUnorderedEventList$0$0 ==.
                           0022D9  7368 	C$tasks.c$3251$1_0$321 ==.
                                   7369 ;	tasks.c:3251: void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
                                   7370 ;	-----------------------------------------
                                   7371 ;	 function vTaskRemoveFromUnorderedEventList
                                   7372 ;	-----------------------------------------
      00481D                       7373 _vTaskRemoveFromUnorderedEventList:
      00481D C0 0D            [24] 7374 	push	_bp
      00481F 85 81 0D         [24] 7375 	mov	_bp,sp
      004822 C0 82            [24] 7376 	push	dpl
      004824 C0 83            [24] 7377 	push	dph
      004826 C0 F0            [24] 7378 	push	b
      004828 E5 81            [12] 7379 	mov	a,sp
      00482A 24 15            [12] 7380 	add	a,#0x15
      00482C F5 81            [12] 7381 	mov	sp,a
                           0022EA  7382 	C$tasks.c$3261$1_0$321 ==.
                                   7383 ;	tasks.c:3261: listSET_LIST_ITEM_VALUE( pxEventListItem, xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );
      00482E E5 0D            [12] 7384 	mov	a,_bp
      004830 24 FC            [12] 7385 	add	a,#0xfc
      004832 F8               [12] 7386 	mov	r0,a
      004833 86 03            [24] 7387 	mov	ar3,@r0
      004835 08               [12] 7388 	inc	r0
      004836 86 04            [24] 7389 	mov	ar4,@r0
      004838 43 04 80         [24] 7390 	orl	ar4,#0x80
      00483B A8 0D            [24] 7391 	mov	r0,_bp
      00483D 08               [12] 7392 	inc	r0
      00483E 86 82            [24] 7393 	mov	dpl,@r0
      004840 08               [12] 7394 	inc	r0
      004841 86 83            [24] 7395 	mov	dph,@r0
      004843 08               [12] 7396 	inc	r0
      004844 86 F0            [24] 7397 	mov	b,@r0
      004846 EB               [12] 7398 	mov	a,r3
      004847 12 79 22         [24] 7399 	lcall	__gptrput
      00484A A3               [24] 7400 	inc	dptr
      00484B EC               [12] 7401 	mov	a,r4
      00484C 12 79 22         [24] 7402 	lcall	__gptrput
                           00230B  7403 	C$tasks.c$3265$1_0$321 ==.
                                   7404 ;	tasks.c:3265: pxUnblockedTCB = listGET_LIST_ITEM_OWNER( pxEventListItem ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      00484F A8 0D            [24] 7405 	mov	r0,_bp
      004851 08               [12] 7406 	inc	r0
      004852 74 08            [12] 7407 	mov	a,#0x08
      004854 26               [12] 7408 	add	a,@r0
      004855 FA               [12] 7409 	mov	r2,a
      004856 74 00            [12] 7410 	mov	a,#0x00
      004858 08               [12] 7411 	inc	r0
      004859 36               [12] 7412 	addc	a,@r0
      00485A FB               [12] 7413 	mov	r3,a
      00485B 08               [12] 7414 	inc	r0
      00485C 86 04            [24] 7415 	mov	ar4,@r0
      00485E 8A 82            [24] 7416 	mov	dpl,r2
      004860 8B 83            [24] 7417 	mov	dph,r3
      004862 8C F0            [24] 7418 	mov	b,r4
      004864 12 7C 4D         [24] 7419 	lcall	__gptrget
      004867 FA               [12] 7420 	mov	r2,a
      004868 A3               [24] 7421 	inc	dptr
      004869 12 7C 4D         [24] 7422 	lcall	__gptrget
      00486C FB               [12] 7423 	mov	r3,a
      00486D A3               [24] 7424 	inc	dptr
      00486E 12 7C 4D         [24] 7425 	lcall	__gptrget
      004871 FC               [12] 7426 	mov	r4,a
      004872 E5 0D            [12] 7427 	mov	a,_bp
      004874 24 13            [12] 7428 	add	a,#0x13
      004876 F8               [12] 7429 	mov	r0,a
      004877 A6 02            [24] 7430 	mov	@r0,ar2
      004879 08               [12] 7431 	inc	r0
      00487A A6 03            [24] 7432 	mov	@r0,ar3
      00487C 08               [12] 7433 	inc	r0
      00487D A6 04            [24] 7434 	mov	@r0,ar4
                           00233B  7435 	C$tasks.c$3267$2_0$322 ==.
                                   7436 ;	tasks.c:3267: listREMOVE_ITEM( pxEventListItem );
      00487F A8 0D            [24] 7437 	mov	r0,_bp
      004881 08               [12] 7438 	inc	r0
      004882 74 0B            [12] 7439 	mov	a,#0x0b
      004884 26               [12] 7440 	add	a,@r0
      004885 FA               [12] 7441 	mov	r2,a
      004886 74 00            [12] 7442 	mov	a,#0x00
      004888 08               [12] 7443 	inc	r0
      004889 36               [12] 7444 	addc	a,@r0
      00488A FB               [12] 7445 	mov	r3,a
      00488B 08               [12] 7446 	inc	r0
      00488C 86 04            [24] 7447 	mov	ar4,@r0
      00488E 8A 82            [24] 7448 	mov	dpl,r2
      004890 8B 83            [24] 7449 	mov	dph,r3
      004892 8C F0            [24] 7450 	mov	b,r4
      004894 E5 0D            [12] 7451 	mov	a,_bp
      004896 24 16            [12] 7452 	add	a,#0x16
      004898 F8               [12] 7453 	mov	r0,a
      004899 12 7C 4D         [24] 7454 	lcall	__gptrget
      00489C F6               [12] 7455 	mov	@r0,a
      00489D A3               [24] 7456 	inc	dptr
      00489E 12 7C 4D         [24] 7457 	lcall	__gptrget
      0048A1 08               [12] 7458 	inc	r0
      0048A2 F6               [12] 7459 	mov	@r0,a
      0048A3 A3               [24] 7460 	inc	dptr
      0048A4 12 7C 4D         [24] 7461 	lcall	__gptrget
      0048A7 08               [12] 7462 	inc	r0
      0048A8 F6               [12] 7463 	mov	@r0,a
      0048A9 A8 0D            [24] 7464 	mov	r0,_bp
      0048AB 08               [12] 7465 	inc	r0
      0048AC E5 0D            [12] 7466 	mov	a,_bp
      0048AE 24 04            [12] 7467 	add	a,#0x04
      0048B0 F9               [12] 7468 	mov	r1,a
      0048B1 74 02            [12] 7469 	mov	a,#0x02
      0048B3 26               [12] 7470 	add	a,@r0
      0048B4 F7               [12] 7471 	mov	@r1,a
      0048B5 74 00            [12] 7472 	mov	a,#0x00
      0048B7 08               [12] 7473 	inc	r0
      0048B8 36               [12] 7474 	addc	a,@r0
      0048B9 09               [12] 7475 	inc	r1
      0048BA F7               [12] 7476 	mov	@r1,a
      0048BB 08               [12] 7477 	inc	r0
      0048BC E6               [12] 7478 	mov	a,@r0
      0048BD 09               [12] 7479 	inc	r1
      0048BE F7               [12] 7480 	mov	@r1,a
      0048BF E5 0D            [12] 7481 	mov	a,_bp
      0048C1 24 04            [12] 7482 	add	a,#0x04
      0048C3 F8               [12] 7483 	mov	r0,a
      0048C4 86 82            [24] 7484 	mov	dpl,@r0
      0048C6 08               [12] 7485 	inc	r0
      0048C7 86 83            [24] 7486 	mov	dph,@r0
      0048C9 08               [12] 7487 	inc	r0
      0048CA 86 F0            [24] 7488 	mov	b,@r0
      0048CC 12 7C 4D         [24] 7489 	lcall	__gptrget
      0048CF FD               [12] 7490 	mov	r5,a
      0048D0 A3               [24] 7491 	inc	dptr
      0048D1 12 7C 4D         [24] 7492 	lcall	__gptrget
      0048D4 FE               [12] 7493 	mov	r6,a
      0048D5 A3               [24] 7494 	inc	dptr
      0048D6 12 7C 4D         [24] 7495 	lcall	__gptrget
      0048D9 FF               [12] 7496 	mov	r7,a
      0048DA E5 0D            [12] 7497 	mov	a,_bp
      0048DC 24 07            [12] 7498 	add	a,#0x07
      0048DE F8               [12] 7499 	mov	r0,a
      0048DF 74 05            [12] 7500 	mov	a,#0x05
      0048E1 2D               [12] 7501 	add	a,r5
      0048E2 F6               [12] 7502 	mov	@r0,a
      0048E3 74 00            [12] 7503 	mov	a,#0x00
      0048E5 3E               [12] 7504 	addc	a,r6
      0048E6 08               [12] 7505 	inc	r0
      0048E7 F6               [12] 7506 	mov	@r0,a
      0048E8 08               [12] 7507 	inc	r0
      0048E9 A6 07            [24] 7508 	mov	@r0,ar7
      0048EB A8 0D            [24] 7509 	mov	r0,_bp
      0048ED 08               [12] 7510 	inc	r0
      0048EE E5 0D            [12] 7511 	mov	a,_bp
      0048F0 24 0A            [12] 7512 	add	a,#0x0a
      0048F2 F9               [12] 7513 	mov	r1,a
      0048F3 74 05            [12] 7514 	mov	a,#0x05
      0048F5 26               [12] 7515 	add	a,@r0
      0048F6 F7               [12] 7516 	mov	@r1,a
      0048F7 74 00            [12] 7517 	mov	a,#0x00
      0048F9 08               [12] 7518 	inc	r0
      0048FA 36               [12] 7519 	addc	a,@r0
      0048FB 09               [12] 7520 	inc	r1
      0048FC F7               [12] 7521 	mov	@r1,a
      0048FD 08               [12] 7522 	inc	r0
      0048FE E6               [12] 7523 	mov	a,@r0
      0048FF 09               [12] 7524 	inc	r1
      004900 F7               [12] 7525 	mov	@r1,a
      004901 E5 0D            [12] 7526 	mov	a,_bp
      004903 24 0A            [12] 7527 	add	a,#0x0a
      004905 F8               [12] 7528 	mov	r0,a
      004906 86 82            [24] 7529 	mov	dpl,@r0
      004908 08               [12] 7530 	inc	r0
      004909 86 83            [24] 7531 	mov	dph,@r0
      00490B 08               [12] 7532 	inc	r0
      00490C 86 F0            [24] 7533 	mov	b,@r0
      00490E 12 7C 4D         [24] 7534 	lcall	__gptrget
      004911 FD               [12] 7535 	mov	r5,a
      004912 A3               [24] 7536 	inc	dptr
      004913 12 7C 4D         [24] 7537 	lcall	__gptrget
      004916 FE               [12] 7538 	mov	r6,a
      004917 A3               [24] 7539 	inc	dptr
      004918 12 7C 4D         [24] 7540 	lcall	__gptrget
      00491B FF               [12] 7541 	mov	r7,a
      00491C E5 0D            [12] 7542 	mov	a,_bp
      00491E 24 07            [12] 7543 	add	a,#0x07
      004920 F8               [12] 7544 	mov	r0,a
      004921 86 82            [24] 7545 	mov	dpl,@r0
      004923 08               [12] 7546 	inc	r0
      004924 86 83            [24] 7547 	mov	dph,@r0
      004926 08               [12] 7548 	inc	r0
      004927 86 F0            [24] 7549 	mov	b,@r0
      004929 ED               [12] 7550 	mov	a,r5
      00492A 12 79 22         [24] 7551 	lcall	__gptrput
      00492D A3               [24] 7552 	inc	dptr
      00492E EE               [12] 7553 	mov	a,r6
      00492F 12 79 22         [24] 7554 	lcall	__gptrput
      004932 A3               [24] 7555 	inc	dptr
      004933 EF               [12] 7556 	mov	a,r7
      004934 12 79 22         [24] 7557 	lcall	__gptrput
      004937 E5 0D            [12] 7558 	mov	a,_bp
      004939 24 0A            [12] 7559 	add	a,#0x0a
      00493B F8               [12] 7560 	mov	r0,a
      00493C 86 82            [24] 7561 	mov	dpl,@r0
      00493E 08               [12] 7562 	inc	r0
      00493F 86 83            [24] 7563 	mov	dph,@r0
      004941 08               [12] 7564 	inc	r0
      004942 86 F0            [24] 7565 	mov	b,@r0
      004944 12 7C 4D         [24] 7566 	lcall	__gptrget
      004947 FD               [12] 7567 	mov	r5,a
      004948 A3               [24] 7568 	inc	dptr
      004949 12 7C 4D         [24] 7569 	lcall	__gptrget
      00494C FE               [12] 7570 	mov	r6,a
      00494D A3               [24] 7571 	inc	dptr
      00494E 12 7C 4D         [24] 7572 	lcall	__gptrget
      004951 FF               [12] 7573 	mov	r7,a
      004952 E5 0D            [12] 7574 	mov	a,_bp
      004954 24 07            [12] 7575 	add	a,#0x07
      004956 F8               [12] 7576 	mov	r0,a
      004957 74 02            [12] 7577 	mov	a,#0x02
      004959 2D               [12] 7578 	add	a,r5
      00495A F6               [12] 7579 	mov	@r0,a
      00495B 74 00            [12] 7580 	mov	a,#0x00
      00495D 3E               [12] 7581 	addc	a,r6
      00495E 08               [12] 7582 	inc	r0
      00495F F6               [12] 7583 	mov	@r0,a
      004960 08               [12] 7584 	inc	r0
      004961 A6 07            [24] 7585 	mov	@r0,ar7
      004963 E5 0D            [12] 7586 	mov	a,_bp
      004965 24 04            [12] 7587 	add	a,#0x04
      004967 F8               [12] 7588 	mov	r0,a
      004968 86 82            [24] 7589 	mov	dpl,@r0
      00496A 08               [12] 7590 	inc	r0
      00496B 86 83            [24] 7591 	mov	dph,@r0
      00496D 08               [12] 7592 	inc	r0
      00496E 86 F0            [24] 7593 	mov	b,@r0
      004970 12 7C 4D         [24] 7594 	lcall	__gptrget
      004973 FD               [12] 7595 	mov	r5,a
      004974 A3               [24] 7596 	inc	dptr
      004975 12 7C 4D         [24] 7597 	lcall	__gptrget
      004978 FE               [12] 7598 	mov	r6,a
      004979 A3               [24] 7599 	inc	dptr
      00497A 12 7C 4D         [24] 7600 	lcall	__gptrget
      00497D FF               [12] 7601 	mov	r7,a
      00497E E5 0D            [12] 7602 	mov	a,_bp
      004980 24 07            [12] 7603 	add	a,#0x07
      004982 F8               [12] 7604 	mov	r0,a
      004983 86 82            [24] 7605 	mov	dpl,@r0
      004985 08               [12] 7606 	inc	r0
      004986 86 83            [24] 7607 	mov	dph,@r0
      004988 08               [12] 7608 	inc	r0
      004989 86 F0            [24] 7609 	mov	b,@r0
      00498B ED               [12] 7610 	mov	a,r5
      00498C 12 79 22         [24] 7611 	lcall	__gptrput
      00498F A3               [24] 7612 	inc	dptr
      004990 EE               [12] 7613 	mov	a,r6
      004991 12 79 22         [24] 7614 	lcall	__gptrput
      004994 A3               [24] 7615 	inc	dptr
      004995 EF               [12] 7616 	mov	a,r7
      004996 12 79 22         [24] 7617 	lcall	__gptrput
      004999 E5 0D            [12] 7618 	mov	a,_bp
      00499B 24 16            [12] 7619 	add	a,#0x16
      00499D F8               [12] 7620 	mov	r0,a
      00499E E5 0D            [12] 7621 	mov	a,_bp
      0049A0 24 07            [12] 7622 	add	a,#0x07
      0049A2 F9               [12] 7623 	mov	r1,a
      0049A3 74 01            [12] 7624 	mov	a,#0x01
      0049A5 26               [12] 7625 	add	a,@r0
      0049A6 F7               [12] 7626 	mov	@r1,a
      0049A7 74 00            [12] 7627 	mov	a,#0x00
      0049A9 08               [12] 7628 	inc	r0
      0049AA 36               [12] 7629 	addc	a,@r0
      0049AB 09               [12] 7630 	inc	r1
      0049AC F7               [12] 7631 	mov	@r1,a
      0049AD 08               [12] 7632 	inc	r0
      0049AE E6               [12] 7633 	mov	a,@r0
      0049AF 09               [12] 7634 	inc	r1
      0049B0 F7               [12] 7635 	mov	@r1,a
      0049B1 E5 0D            [12] 7636 	mov	a,_bp
      0049B3 24 07            [12] 7637 	add	a,#0x07
      0049B5 F8               [12] 7638 	mov	r0,a
      0049B6 86 82            [24] 7639 	mov	dpl,@r0
      0049B8 08               [12] 7640 	inc	r0
      0049B9 86 83            [24] 7641 	mov	dph,@r0
      0049BB 08               [12] 7642 	inc	r0
      0049BC 86 F0            [24] 7643 	mov	b,@r0
      0049BE 12 7C 4D         [24] 7644 	lcall	__gptrget
      0049C1 FD               [12] 7645 	mov	r5,a
      0049C2 A3               [24] 7646 	inc	dptr
      0049C3 12 7C 4D         [24] 7647 	lcall	__gptrget
      0049C6 FE               [12] 7648 	mov	r6,a
      0049C7 A3               [24] 7649 	inc	dptr
      0049C8 12 7C 4D         [24] 7650 	lcall	__gptrget
      0049CB FF               [12] 7651 	mov	r7,a
      0049CC A8 0D            [24] 7652 	mov	r0,_bp
      0049CE 08               [12] 7653 	inc	r0
      0049CF C0 05            [24] 7654 	push	ar5
      0049D1 C0 06            [24] 7655 	push	ar6
      0049D3 C0 07            [24] 7656 	push	ar7
      0049D5 86 82            [24] 7657 	mov	dpl,@r0
      0049D7 08               [12] 7658 	inc	r0
      0049D8 86 83            [24] 7659 	mov	dph,@r0
      0049DA 08               [12] 7660 	inc	r0
      0049DB 86 F0            [24] 7661 	mov	b,@r0
      0049DD 12 00 31         [24] 7662 	lcall	___gptr_cmp
      0049E0 15 81            [12] 7663 	dec	sp
      0049E2 15 81            [12] 7664 	dec	sp
      0049E4 15 81            [12] 7665 	dec	sp
      0049E6 70 02            [24] 7666 	jnz	00127$
      0049E8 80 03            [24] 7667 	sjmp	00128$
      0049EA                       7668 00127$:
      0049EA 02 4A 23         [24] 7669 	ljmp	00102$
      0049ED                       7670 00128$:
      0049ED E5 0D            [12] 7671 	mov	a,_bp
      0049EF 24 0A            [12] 7672 	add	a,#0x0a
      0049F1 F8               [12] 7673 	mov	r0,a
      0049F2 86 82            [24] 7674 	mov	dpl,@r0
      0049F4 08               [12] 7675 	inc	r0
      0049F5 86 83            [24] 7676 	mov	dph,@r0
      0049F7 08               [12] 7677 	inc	r0
      0049F8 86 F0            [24] 7678 	mov	b,@r0
      0049FA 12 7C 4D         [24] 7679 	lcall	__gptrget
      0049FD FD               [12] 7680 	mov	r5,a
      0049FE A3               [24] 7681 	inc	dptr
      0049FF 12 7C 4D         [24] 7682 	lcall	__gptrget
      004A02 FE               [12] 7683 	mov	r6,a
      004A03 A3               [24] 7684 	inc	dptr
      004A04 12 7C 4D         [24] 7685 	lcall	__gptrget
      004A07 FF               [12] 7686 	mov	r7,a
      004A08 E5 0D            [12] 7687 	mov	a,_bp
      004A0A 24 07            [12] 7688 	add	a,#0x07
      004A0C F8               [12] 7689 	mov	r0,a
      004A0D 86 82            [24] 7690 	mov	dpl,@r0
      004A0F 08               [12] 7691 	inc	r0
      004A10 86 83            [24] 7692 	mov	dph,@r0
      004A12 08               [12] 7693 	inc	r0
      004A13 86 F0            [24] 7694 	mov	b,@r0
      004A15 ED               [12] 7695 	mov	a,r5
      004A16 12 79 22         [24] 7696 	lcall	__gptrput
      004A19 A3               [24] 7697 	inc	dptr
      004A1A EE               [12] 7698 	mov	a,r6
      004A1B 12 79 22         [24] 7699 	lcall	__gptrput
      004A1E A3               [24] 7700 	inc	dptr
      004A1F EF               [12] 7701 	mov	a,r7
      004A20 12 79 22         [24] 7702 	lcall	__gptrput
      004A23                       7703 00102$:
      004A23 8A 82            [24] 7704 	mov	dpl,r2
      004A25 8B 83            [24] 7705 	mov	dph,r3
      004A27 8C F0            [24] 7706 	mov	b,r4
      004A29 74 00            [12] 7707 	mov	a,#0x00
      004A2B 12 79 22         [24] 7708 	lcall	__gptrput
      004A2E A3               [24] 7709 	inc	dptr
      004A2F 12 79 22         [24] 7710 	lcall	__gptrput
      004A32 A3               [24] 7711 	inc	dptr
      004A33 12 79 22         [24] 7712 	lcall	__gptrput
      004A36 E5 0D            [12] 7713 	mov	a,_bp
      004A38 24 16            [12] 7714 	add	a,#0x16
      004A3A F8               [12] 7715 	mov	r0,a
      004A3B 86 82            [24] 7716 	mov	dpl,@r0
      004A3D 08               [12] 7717 	inc	r0
      004A3E 86 83            [24] 7718 	mov	dph,@r0
      004A40 08               [12] 7719 	inc	r0
      004A41 86 F0            [24] 7720 	mov	b,@r0
      004A43 12 7C 4D         [24] 7721 	lcall	__gptrget
      004A46 FF               [12] 7722 	mov	r7,a
      004A47 1F               [12] 7723 	dec	r7
      004A48 E5 0D            [12] 7724 	mov	a,_bp
      004A4A 24 16            [12] 7725 	add	a,#0x16
      004A4C F8               [12] 7726 	mov	r0,a
      004A4D 86 82            [24] 7727 	mov	dpl,@r0
      004A4F 08               [12] 7728 	inc	r0
      004A50 86 83            [24] 7729 	mov	dph,@r0
      004A52 08               [12] 7730 	inc	r0
      004A53 86 F0            [24] 7731 	mov	b,@r0
      004A55 EF               [12] 7732 	mov	a,r7
      004A56 12 79 22         [24] 7733 	lcall	__gptrput
                           002515  7734 	C$tasks.c$3286$2_0$324 ==.
                                   7735 ;	tasks.c:3286: listREMOVE_ITEM( &( pxUnblockedTCB->xStateListItem ) );
      004A59 E5 0D            [12] 7736 	mov	a,_bp
      004A5B 24 13            [12] 7737 	add	a,#0x13
      004A5D F8               [12] 7738 	mov	r0,a
      004A5E 74 03            [12] 7739 	mov	a,#0x03
      004A60 26               [12] 7740 	add	a,@r0
      004A61 FD               [12] 7741 	mov	r5,a
      004A62 74 00            [12] 7742 	mov	a,#0x00
      004A64 08               [12] 7743 	inc	r0
      004A65 36               [12] 7744 	addc	a,@r0
      004A66 FE               [12] 7745 	mov	r6,a
      004A67 08               [12] 7746 	inc	r0
      004A68 86 07            [24] 7747 	mov	ar7,@r0
      004A6A E5 0D            [12] 7748 	mov	a,_bp
      004A6C 24 07            [12] 7749 	add	a,#0x07
      004A6E F8               [12] 7750 	mov	r0,a
      004A6F 74 0B            [12] 7751 	mov	a,#0x0b
      004A71 2D               [12] 7752 	add	a,r5
      004A72 F6               [12] 7753 	mov	@r0,a
      004A73 74 00            [12] 7754 	mov	a,#0x00
      004A75 3E               [12] 7755 	addc	a,r6
      004A76 08               [12] 7756 	inc	r0
      004A77 F6               [12] 7757 	mov	@r0,a
      004A78 08               [12] 7758 	inc	r0
      004A79 A6 07            [24] 7759 	mov	@r0,ar7
      004A7B E5 0D            [12] 7760 	mov	a,_bp
      004A7D 24 07            [12] 7761 	add	a,#0x07
      004A7F F8               [12] 7762 	mov	r0,a
      004A80 86 82            [24] 7763 	mov	dpl,@r0
      004A82 08               [12] 7764 	inc	r0
      004A83 86 83            [24] 7765 	mov	dph,@r0
      004A85 08               [12] 7766 	inc	r0
      004A86 86 F0            [24] 7767 	mov	b,@r0
      004A88 E5 0D            [12] 7768 	mov	a,_bp
      004A8A 24 16            [12] 7769 	add	a,#0x16
      004A8C F9               [12] 7770 	mov	r1,a
      004A8D 12 7C 4D         [24] 7771 	lcall	__gptrget
      004A90 F7               [12] 7772 	mov	@r1,a
      004A91 A3               [24] 7773 	inc	dptr
      004A92 12 7C 4D         [24] 7774 	lcall	__gptrget
      004A95 09               [12] 7775 	inc	r1
      004A96 F7               [12] 7776 	mov	@r1,a
      004A97 A3               [24] 7777 	inc	dptr
      004A98 12 7C 4D         [24] 7778 	lcall	__gptrget
      004A9B 09               [12] 7779 	inc	r1
      004A9C F7               [12] 7780 	mov	@r1,a
      004A9D E5 0D            [12] 7781 	mov	a,_bp
      004A9F 24 0A            [12] 7782 	add	a,#0x0a
      004AA1 F8               [12] 7783 	mov	r0,a
      004AA2 74 02            [12] 7784 	mov	a,#0x02
      004AA4 2D               [12] 7785 	add	a,r5
      004AA5 F6               [12] 7786 	mov	@r0,a
      004AA6 74 00            [12] 7787 	mov	a,#0x00
      004AA8 3E               [12] 7788 	addc	a,r6
      004AA9 08               [12] 7789 	inc	r0
      004AAA F6               [12] 7790 	mov	@r0,a
      004AAB 08               [12] 7791 	inc	r0
      004AAC A6 07            [24] 7792 	mov	@r0,ar7
      004AAE E5 0D            [12] 7793 	mov	a,_bp
      004AB0 24 0A            [12] 7794 	add	a,#0x0a
      004AB2 F8               [12] 7795 	mov	r0,a
      004AB3 86 82            [24] 7796 	mov	dpl,@r0
      004AB5 08               [12] 7797 	inc	r0
      004AB6 86 83            [24] 7798 	mov	dph,@r0
      004AB8 08               [12] 7799 	inc	r0
      004AB9 86 F0            [24] 7800 	mov	b,@r0
      004ABB 12 7C 4D         [24] 7801 	lcall	__gptrget
      004ABE FA               [12] 7802 	mov	r2,a
      004ABF A3               [24] 7803 	inc	dptr
      004AC0 12 7C 4D         [24] 7804 	lcall	__gptrget
      004AC3 FB               [12] 7805 	mov	r3,a
      004AC4 A3               [24] 7806 	inc	dptr
      004AC5 12 7C 4D         [24] 7807 	lcall	__gptrget
      004AC8 FC               [12] 7808 	mov	r4,a
      004AC9 E5 0D            [12] 7809 	mov	a,_bp
      004ACB 24 10            [12] 7810 	add	a,#0x10
      004ACD F8               [12] 7811 	mov	r0,a
      004ACE 74 05            [12] 7812 	mov	a,#0x05
      004AD0 2A               [12] 7813 	add	a,r2
      004AD1 F6               [12] 7814 	mov	@r0,a
      004AD2 74 00            [12] 7815 	mov	a,#0x00
      004AD4 3B               [12] 7816 	addc	a,r3
      004AD5 08               [12] 7817 	inc	r0
      004AD6 F6               [12] 7818 	mov	@r0,a
      004AD7 08               [12] 7819 	inc	r0
      004AD8 A6 04            [24] 7820 	mov	@r0,ar4
      004ADA E5 0D            [12] 7821 	mov	a,_bp
      004ADC 24 04            [12] 7822 	add	a,#0x04
      004ADE F8               [12] 7823 	mov	r0,a
      004ADF 74 05            [12] 7824 	mov	a,#0x05
      004AE1 2D               [12] 7825 	add	a,r5
      004AE2 F6               [12] 7826 	mov	@r0,a
      004AE3 74 00            [12] 7827 	mov	a,#0x00
      004AE5 3E               [12] 7828 	addc	a,r6
      004AE6 08               [12] 7829 	inc	r0
      004AE7 F6               [12] 7830 	mov	@r0,a
      004AE8 08               [12] 7831 	inc	r0
      004AE9 A6 07            [24] 7832 	mov	@r0,ar7
      004AEB E5 0D            [12] 7833 	mov	a,_bp
      004AED 24 04            [12] 7834 	add	a,#0x04
      004AEF F8               [12] 7835 	mov	r0,a
      004AF0 86 82            [24] 7836 	mov	dpl,@r0
      004AF2 08               [12] 7837 	inc	r0
      004AF3 86 83            [24] 7838 	mov	dph,@r0
      004AF5 08               [12] 7839 	inc	r0
      004AF6 86 F0            [24] 7840 	mov	b,@r0
      004AF8 12 7C 4D         [24] 7841 	lcall	__gptrget
      004AFB FA               [12] 7842 	mov	r2,a
      004AFC A3               [24] 7843 	inc	dptr
      004AFD 12 7C 4D         [24] 7844 	lcall	__gptrget
      004B00 FB               [12] 7845 	mov	r3,a
      004B01 A3               [24] 7846 	inc	dptr
      004B02 12 7C 4D         [24] 7847 	lcall	__gptrget
      004B05 FC               [12] 7848 	mov	r4,a
      004B06 E5 0D            [12] 7849 	mov	a,_bp
      004B08 24 10            [12] 7850 	add	a,#0x10
      004B0A F8               [12] 7851 	mov	r0,a
      004B0B 86 82            [24] 7852 	mov	dpl,@r0
      004B0D 08               [12] 7853 	inc	r0
      004B0E 86 83            [24] 7854 	mov	dph,@r0
      004B10 08               [12] 7855 	inc	r0
      004B11 86 F0            [24] 7856 	mov	b,@r0
      004B13 EA               [12] 7857 	mov	a,r2
      004B14 12 79 22         [24] 7858 	lcall	__gptrput
      004B17 A3               [24] 7859 	inc	dptr
      004B18 EB               [12] 7860 	mov	a,r3
      004B19 12 79 22         [24] 7861 	lcall	__gptrput
      004B1C A3               [24] 7862 	inc	dptr
      004B1D EC               [12] 7863 	mov	a,r4
      004B1E 12 79 22         [24] 7864 	lcall	__gptrput
      004B21 E5 0D            [12] 7865 	mov	a,_bp
      004B23 24 04            [12] 7866 	add	a,#0x04
      004B25 F8               [12] 7867 	mov	r0,a
      004B26 86 82            [24] 7868 	mov	dpl,@r0
      004B28 08               [12] 7869 	inc	r0
      004B29 86 83            [24] 7870 	mov	dph,@r0
      004B2B 08               [12] 7871 	inc	r0
      004B2C 86 F0            [24] 7872 	mov	b,@r0
      004B2E 12 7C 4D         [24] 7873 	lcall	__gptrget
      004B31 FA               [12] 7874 	mov	r2,a
      004B32 A3               [24] 7875 	inc	dptr
      004B33 12 7C 4D         [24] 7876 	lcall	__gptrget
      004B36 FB               [12] 7877 	mov	r3,a
      004B37 A3               [24] 7878 	inc	dptr
      004B38 12 7C 4D         [24] 7879 	lcall	__gptrget
      004B3B FC               [12] 7880 	mov	r4,a
      004B3C E5 0D            [12] 7881 	mov	a,_bp
      004B3E 24 10            [12] 7882 	add	a,#0x10
      004B40 F8               [12] 7883 	mov	r0,a
      004B41 74 02            [12] 7884 	mov	a,#0x02
      004B43 2A               [12] 7885 	add	a,r2
      004B44 F6               [12] 7886 	mov	@r0,a
      004B45 74 00            [12] 7887 	mov	a,#0x00
      004B47 3B               [12] 7888 	addc	a,r3
      004B48 08               [12] 7889 	inc	r0
      004B49 F6               [12] 7890 	mov	@r0,a
      004B4A 08               [12] 7891 	inc	r0
      004B4B A6 04            [24] 7892 	mov	@r0,ar4
      004B4D E5 0D            [12] 7893 	mov	a,_bp
      004B4F 24 0A            [12] 7894 	add	a,#0x0a
      004B51 F8               [12] 7895 	mov	r0,a
      004B52 86 82            [24] 7896 	mov	dpl,@r0
      004B54 08               [12] 7897 	inc	r0
      004B55 86 83            [24] 7898 	mov	dph,@r0
      004B57 08               [12] 7899 	inc	r0
      004B58 86 F0            [24] 7900 	mov	b,@r0
      004B5A 12 7C 4D         [24] 7901 	lcall	__gptrget
      004B5D FA               [12] 7902 	mov	r2,a
      004B5E A3               [24] 7903 	inc	dptr
      004B5F 12 7C 4D         [24] 7904 	lcall	__gptrget
      004B62 FB               [12] 7905 	mov	r3,a
      004B63 A3               [24] 7906 	inc	dptr
      004B64 12 7C 4D         [24] 7907 	lcall	__gptrget
      004B67 FC               [12] 7908 	mov	r4,a
      004B68 E5 0D            [12] 7909 	mov	a,_bp
      004B6A 24 10            [12] 7910 	add	a,#0x10
      004B6C F8               [12] 7911 	mov	r0,a
      004B6D 86 82            [24] 7912 	mov	dpl,@r0
      004B6F 08               [12] 7913 	inc	r0
      004B70 86 83            [24] 7914 	mov	dph,@r0
      004B72 08               [12] 7915 	inc	r0
      004B73 86 F0            [24] 7916 	mov	b,@r0
      004B75 EA               [12] 7917 	mov	a,r2
      004B76 12 79 22         [24] 7918 	lcall	__gptrput
      004B79 A3               [24] 7919 	inc	dptr
      004B7A EB               [12] 7920 	mov	a,r3
      004B7B 12 79 22         [24] 7921 	lcall	__gptrput
      004B7E A3               [24] 7922 	inc	dptr
      004B7F EC               [12] 7923 	mov	a,r4
      004B80 12 79 22         [24] 7924 	lcall	__gptrput
      004B83 E5 0D            [12] 7925 	mov	a,_bp
      004B85 24 16            [12] 7926 	add	a,#0x16
      004B87 F8               [12] 7927 	mov	r0,a
      004B88 E5 0D            [12] 7928 	mov	a,_bp
      004B8A 24 10            [12] 7929 	add	a,#0x10
      004B8C F9               [12] 7930 	mov	r1,a
      004B8D 74 01            [12] 7931 	mov	a,#0x01
      004B8F 26               [12] 7932 	add	a,@r0
      004B90 F7               [12] 7933 	mov	@r1,a
      004B91 74 00            [12] 7934 	mov	a,#0x00
      004B93 08               [12] 7935 	inc	r0
      004B94 36               [12] 7936 	addc	a,@r0
      004B95 09               [12] 7937 	inc	r1
      004B96 F7               [12] 7938 	mov	@r1,a
      004B97 08               [12] 7939 	inc	r0
      004B98 E6               [12] 7940 	mov	a,@r0
      004B99 09               [12] 7941 	inc	r1
      004B9A F7               [12] 7942 	mov	@r1,a
      004B9B E5 0D            [12] 7943 	mov	a,_bp
      004B9D 24 10            [12] 7944 	add	a,#0x10
      004B9F F8               [12] 7945 	mov	r0,a
      004BA0 86 82            [24] 7946 	mov	dpl,@r0
      004BA2 08               [12] 7947 	inc	r0
      004BA3 86 83            [24] 7948 	mov	dph,@r0
      004BA5 08               [12] 7949 	inc	r0
      004BA6 86 F0            [24] 7950 	mov	b,@r0
      004BA8 12 7C 4D         [24] 7951 	lcall	__gptrget
      004BAB FA               [12] 7952 	mov	r2,a
      004BAC A3               [24] 7953 	inc	dptr
      004BAD 12 7C 4D         [24] 7954 	lcall	__gptrget
      004BB0 FB               [12] 7955 	mov	r3,a
      004BB1 A3               [24] 7956 	inc	dptr
      004BB2 12 7C 4D         [24] 7957 	lcall	__gptrget
      004BB5 FC               [12] 7958 	mov	r4,a
      004BB6 C0 05            [24] 7959 	push	ar5
      004BB8 C0 06            [24] 7960 	push	ar6
      004BBA C0 07            [24] 7961 	push	ar7
      004BBC 8A 82            [24] 7962 	mov	dpl,r2
      004BBE 8B 83            [24] 7963 	mov	dph,r3
      004BC0 8C F0            [24] 7964 	mov	b,r4
      004BC2 12 00 31         [24] 7965 	lcall	___gptr_cmp
      004BC5 15 81            [12] 7966 	dec	sp
      004BC7 15 81            [12] 7967 	dec	sp
      004BC9 15 81            [12] 7968 	dec	sp
      004BCB 70 02            [24] 7969 	jnz	00129$
      004BCD 80 03            [24] 7970 	sjmp	00130$
      004BCF                       7971 00129$:
      004BCF 02 4C 08         [24] 7972 	ljmp	00104$
      004BD2                       7973 00130$:
      004BD2 E5 0D            [12] 7974 	mov	a,_bp
      004BD4 24 04            [12] 7975 	add	a,#0x04
      004BD6 F8               [12] 7976 	mov	r0,a
      004BD7 86 82            [24] 7977 	mov	dpl,@r0
      004BD9 08               [12] 7978 	inc	r0
      004BDA 86 83            [24] 7979 	mov	dph,@r0
      004BDC 08               [12] 7980 	inc	r0
      004BDD 86 F0            [24] 7981 	mov	b,@r0
      004BDF 12 7C 4D         [24] 7982 	lcall	__gptrget
      004BE2 FA               [12] 7983 	mov	r2,a
      004BE3 A3               [24] 7984 	inc	dptr
      004BE4 12 7C 4D         [24] 7985 	lcall	__gptrget
      004BE7 FB               [12] 7986 	mov	r3,a
      004BE8 A3               [24] 7987 	inc	dptr
      004BE9 12 7C 4D         [24] 7988 	lcall	__gptrget
      004BEC FC               [12] 7989 	mov	r4,a
      004BED E5 0D            [12] 7990 	mov	a,_bp
      004BEF 24 10            [12] 7991 	add	a,#0x10
      004BF1 F8               [12] 7992 	mov	r0,a
      004BF2 86 82            [24] 7993 	mov	dpl,@r0
      004BF4 08               [12] 7994 	inc	r0
      004BF5 86 83            [24] 7995 	mov	dph,@r0
      004BF7 08               [12] 7996 	inc	r0
      004BF8 86 F0            [24] 7997 	mov	b,@r0
      004BFA EA               [12] 7998 	mov	a,r2
      004BFB 12 79 22         [24] 7999 	lcall	__gptrput
      004BFE A3               [24] 8000 	inc	dptr
      004BFF EB               [12] 8001 	mov	a,r3
      004C00 12 79 22         [24] 8002 	lcall	__gptrput
      004C03 A3               [24] 8003 	inc	dptr
      004C04 EC               [12] 8004 	mov	a,r4
      004C05 12 79 22         [24] 8005 	lcall	__gptrput
      004C08                       8006 00104$:
      004C08 C0 05            [24] 8007 	push	ar5
      004C0A C0 06            [24] 8008 	push	ar6
      004C0C C0 07            [24] 8009 	push	ar7
      004C0E E5 0D            [12] 8010 	mov	a,_bp
      004C10 24 07            [12] 8011 	add	a,#0x07
      004C12 F8               [12] 8012 	mov	r0,a
      004C13 86 82            [24] 8013 	mov	dpl,@r0
      004C15 08               [12] 8014 	inc	r0
      004C16 86 83            [24] 8015 	mov	dph,@r0
      004C18 08               [12] 8016 	inc	r0
      004C19 86 F0            [24] 8017 	mov	b,@r0
      004C1B 74 00            [12] 8018 	mov	a,#0x00
      004C1D 12 79 22         [24] 8019 	lcall	__gptrput
      004C20 A3               [24] 8020 	inc	dptr
      004C21 12 79 22         [24] 8021 	lcall	__gptrput
      004C24 A3               [24] 8022 	inc	dptr
      004C25 12 79 22         [24] 8023 	lcall	__gptrput
      004C28 E5 0D            [12] 8024 	mov	a,_bp
      004C2A 24 16            [12] 8025 	add	a,#0x16
      004C2C F8               [12] 8026 	mov	r0,a
      004C2D 86 82            [24] 8027 	mov	dpl,@r0
      004C2F 08               [12] 8028 	inc	r0
      004C30 86 83            [24] 8029 	mov	dph,@r0
      004C32 08               [12] 8030 	inc	r0
      004C33 86 F0            [24] 8031 	mov	b,@r0
      004C35 12 7C 4D         [24] 8032 	lcall	__gptrget
      004C38 FC               [12] 8033 	mov	r4,a
      004C39 1C               [12] 8034 	dec	r4
      004C3A E5 0D            [12] 8035 	mov	a,_bp
      004C3C 24 16            [12] 8036 	add	a,#0x16
      004C3E F8               [12] 8037 	mov	r0,a
      004C3F 86 82            [24] 8038 	mov	dpl,@r0
      004C41 08               [12] 8039 	inc	r0
      004C42 86 83            [24] 8040 	mov	dph,@r0
      004C44 08               [12] 8041 	inc	r0
      004C45 86 F0            [24] 8042 	mov	b,@r0
      004C47 EC               [12] 8043 	mov	a,r4
      004C48 12 79 22         [24] 8044 	lcall	__gptrput
                           002707  8045 	C$tasks.c$3287$2_0$326 ==.
                                   8046 ;	tasks.c:3287: prvAddTaskToReadyList( pxUnblockedTCB );
      004C4B E5 0D            [12] 8047 	mov	a,_bp
      004C4D 24 13            [12] 8048 	add	a,#0x13
      004C4F F8               [12] 8049 	mov	r0,a
      004C50 E5 0D            [12] 8050 	mov	a,_bp
      004C52 24 0D            [12] 8051 	add	a,#0x0d
      004C54 F9               [12] 8052 	mov	r1,a
      004C55 74 1F            [12] 8053 	mov	a,#0x1f
      004C57 26               [12] 8054 	add	a,@r0
      004C58 F7               [12] 8055 	mov	@r1,a
      004C59 74 00            [12] 8056 	mov	a,#0x00
      004C5B 08               [12] 8057 	inc	r0
      004C5C 36               [12] 8058 	addc	a,@r0
      004C5D 09               [12] 8059 	inc	r1
      004C5E F7               [12] 8060 	mov	@r1,a
      004C5F 08               [12] 8061 	inc	r0
      004C60 E6               [12] 8062 	mov	a,@r0
      004C61 09               [12] 8063 	inc	r1
      004C62 F7               [12] 8064 	mov	@r1,a
      004C63 E5 0D            [12] 8065 	mov	a,_bp
      004C65 24 0D            [12] 8066 	add	a,#0x0d
      004C67 F8               [12] 8067 	mov	r0,a
      004C68 86 82            [24] 8068 	mov	dpl,@r0
      004C6A 08               [12] 8069 	inc	r0
      004C6B 86 83            [24] 8070 	mov	dph,@r0
      004C6D 08               [12] 8071 	inc	r0
      004C6E 86 F0            [24] 8072 	mov	b,@r0
      004C70 12 7C 4D         [24] 8073 	lcall	__gptrget
      004C73 FC               [12] 8074 	mov	r4,a
      004C74 90 0C 86         [24] 8075 	mov	dptr,#_uxTopReadyPriority
      004C77 E0               [24] 8076 	movx	a,@dptr
      004C78 FF               [12] 8077 	mov	r7,a
      004C79 C3               [12] 8078 	clr	c
      004C7A EF               [12] 8079 	mov	a,r7
      004C7B 9C               [12] 8080 	subb	a,r4
      004C7C D0 07            [24] 8081 	pop	ar7
      004C7E D0 06            [24] 8082 	pop	ar6
      004C80 D0 05            [24] 8083 	pop	ar5
      004C82 40 03            [24] 8084 	jc	00131$
      004C84 02 4C 8C         [24] 8085 	ljmp	00106$
      004C87                       8086 00131$:
      004C87 90 0C 86         [24] 8087 	mov	dptr,#_uxTopReadyPriority
      004C8A EC               [12] 8088 	mov	a,r4
      004C8B F0               [24] 8089 	movx	@dptr,a
      004C8C                       8090 00106$:
      004C8C E5 0D            [12] 8091 	mov	a,_bp
      004C8E 24 0D            [12] 8092 	add	a,#0x0d
      004C90 F8               [12] 8093 	mov	r0,a
      004C91 86 82            [24] 8094 	mov	dpl,@r0
      004C93 08               [12] 8095 	inc	r0
      004C94 86 83            [24] 8096 	mov	dph,@r0
      004C96 08               [12] 8097 	inc	r0
      004C97 86 F0            [24] 8098 	mov	b,@r0
      004C99 12 7C 4D         [24] 8099 	lcall	__gptrget
      004C9C FC               [12] 8100 	mov	r4,a
      004C9D EC               [12] 8101 	mov	a,r4
      004C9E 75 F0 0C         [24] 8102 	mov	b,#0x0c
      004CA1 A4               [48] 8103 	mul	ab
      004CA2 24 16            [12] 8104 	add	a,#_pxReadyTasksLists
      004CA4 FB               [12] 8105 	mov	r3,a
      004CA5 74 00            [12] 8106 	mov	a,#(_pxReadyTasksLists >> 8)
      004CA7 35 F0            [12] 8107 	addc	a,b
      004CA9 FC               [12] 8108 	mov	r4,a
      004CAA 8B 82            [24] 8109 	mov	dpl,r3
      004CAC 8C 83            [24] 8110 	mov	dph,r4
      004CAE A3               [24] 8111 	inc	dptr
      004CAF E0               [24] 8112 	movx	a,@dptr
      004CB0 FA               [12] 8113 	mov	r2,a
      004CB1 A3               [24] 8114 	inc	dptr
      004CB2 E0               [24] 8115 	movx	a,@dptr
      004CB3 FB               [12] 8116 	mov	r3,a
      004CB4 A3               [24] 8117 	inc	dptr
      004CB5 E0               [24] 8118 	movx	a,@dptr
      004CB6 FC               [12] 8119 	mov	r4,a
      004CB7 E5 0D            [12] 8120 	mov	a,_bp
      004CB9 24 0A            [12] 8121 	add	a,#0x0a
      004CBB F8               [12] 8122 	mov	r0,a
      004CBC 86 82            [24] 8123 	mov	dpl,@r0
      004CBE 08               [12] 8124 	inc	r0
      004CBF 86 83            [24] 8125 	mov	dph,@r0
      004CC1 08               [12] 8126 	inc	r0
      004CC2 86 F0            [24] 8127 	mov	b,@r0
      004CC4 EA               [12] 8128 	mov	a,r2
      004CC5 12 79 22         [24] 8129 	lcall	__gptrput
      004CC8 A3               [24] 8130 	inc	dptr
      004CC9 EB               [12] 8131 	mov	a,r3
      004CCA 12 79 22         [24] 8132 	lcall	__gptrput
      004CCD A3               [24] 8133 	inc	dptr
      004CCE EC               [12] 8134 	mov	a,r4
      004CCF 12 79 22         [24] 8135 	lcall	__gptrput
      004CD2 E5 0D            [12] 8136 	mov	a,_bp
      004CD4 24 10            [12] 8137 	add	a,#0x10
      004CD6 F8               [12] 8138 	mov	r0,a
      004CD7 74 05            [12] 8139 	mov	a,#0x05
      004CD9 2A               [12] 8140 	add	a,r2
      004CDA F6               [12] 8141 	mov	@r0,a
      004CDB 74 00            [12] 8142 	mov	a,#0x00
      004CDD 3B               [12] 8143 	addc	a,r3
      004CDE 08               [12] 8144 	inc	r0
      004CDF F6               [12] 8145 	mov	@r0,a
      004CE0 08               [12] 8146 	inc	r0
      004CE1 A6 04            [24] 8147 	mov	@r0,ar4
      004CE3 E5 0D            [12] 8148 	mov	a,_bp
      004CE5 24 10            [12] 8149 	add	a,#0x10
      004CE7 F8               [12] 8150 	mov	r0,a
      004CE8 86 82            [24] 8151 	mov	dpl,@r0
      004CEA 08               [12] 8152 	inc	r0
      004CEB 86 83            [24] 8153 	mov	dph,@r0
      004CED 08               [12] 8154 	inc	r0
      004CEE 86 F0            [24] 8155 	mov	b,@r0
      004CF0 12 7C 4D         [24] 8156 	lcall	__gptrget
      004CF3 FA               [12] 8157 	mov	r2,a
      004CF4 A3               [24] 8158 	inc	dptr
      004CF5 12 7C 4D         [24] 8159 	lcall	__gptrget
      004CF8 FB               [12] 8160 	mov	r3,a
      004CF9 A3               [24] 8161 	inc	dptr
      004CFA 12 7C 4D         [24] 8162 	lcall	__gptrget
      004CFD FC               [12] 8163 	mov	r4,a
      004CFE E5 0D            [12] 8164 	mov	a,_bp
      004D00 24 04            [12] 8165 	add	a,#0x04
      004D02 F8               [12] 8166 	mov	r0,a
      004D03 86 82            [24] 8167 	mov	dpl,@r0
      004D05 08               [12] 8168 	inc	r0
      004D06 86 83            [24] 8169 	mov	dph,@r0
      004D08 08               [12] 8170 	inc	r0
      004D09 86 F0            [24] 8171 	mov	b,@r0
      004D0B EA               [12] 8172 	mov	a,r2
      004D0C 12 79 22         [24] 8173 	lcall	__gptrput
      004D0F A3               [24] 8174 	inc	dptr
      004D10 EB               [12] 8175 	mov	a,r3
      004D11 12 79 22         [24] 8176 	lcall	__gptrput
      004D14 A3               [24] 8177 	inc	dptr
      004D15 EC               [12] 8178 	mov	a,r4
      004D16 12 79 22         [24] 8179 	lcall	__gptrput
      004D19 E5 0D            [12] 8180 	mov	a,_bp
      004D1B 24 10            [12] 8181 	add	a,#0x10
      004D1D F8               [12] 8182 	mov	r0,a
      004D1E 86 82            [24] 8183 	mov	dpl,@r0
      004D20 08               [12] 8184 	inc	r0
      004D21 86 83            [24] 8185 	mov	dph,@r0
      004D23 08               [12] 8186 	inc	r0
      004D24 86 F0            [24] 8187 	mov	b,@r0
      004D26 12 7C 4D         [24] 8188 	lcall	__gptrget
      004D29 FA               [12] 8189 	mov	r2,a
      004D2A A3               [24] 8190 	inc	dptr
      004D2B 12 7C 4D         [24] 8191 	lcall	__gptrget
      004D2E FB               [12] 8192 	mov	r3,a
      004D2F A3               [24] 8193 	inc	dptr
      004D30 12 7C 4D         [24] 8194 	lcall	__gptrget
      004D33 FC               [12] 8195 	mov	r4,a
      004D34 74 02            [12] 8196 	mov	a,#0x02
      004D36 2A               [12] 8197 	add	a,r2
      004D37 FA               [12] 8198 	mov	r2,a
      004D38 74 00            [12] 8199 	mov	a,#0x00
      004D3A 3B               [12] 8200 	addc	a,r3
      004D3B FB               [12] 8201 	mov	r3,a
      004D3C 8A 82            [24] 8202 	mov	dpl,r2
      004D3E 8B 83            [24] 8203 	mov	dph,r3
      004D40 8C F0            [24] 8204 	mov	b,r4
      004D42 ED               [12] 8205 	mov	a,r5
      004D43 12 79 22         [24] 8206 	lcall	__gptrput
      004D46 A3               [24] 8207 	inc	dptr
      004D47 EE               [12] 8208 	mov	a,r6
      004D48 12 79 22         [24] 8209 	lcall	__gptrput
      004D4B A3               [24] 8210 	inc	dptr
      004D4C EF               [12] 8211 	mov	a,r7
      004D4D 12 79 22         [24] 8212 	lcall	__gptrput
      004D50 E5 0D            [12] 8213 	mov	a,_bp
      004D52 24 10            [12] 8214 	add	a,#0x10
      004D54 F8               [12] 8215 	mov	r0,a
      004D55 86 82            [24] 8216 	mov	dpl,@r0
      004D57 08               [12] 8217 	inc	r0
      004D58 86 83            [24] 8218 	mov	dph,@r0
      004D5A 08               [12] 8219 	inc	r0
      004D5B 86 F0            [24] 8220 	mov	b,@r0
      004D5D ED               [12] 8221 	mov	a,r5
      004D5E 12 79 22         [24] 8222 	lcall	__gptrput
      004D61 A3               [24] 8223 	inc	dptr
      004D62 EE               [12] 8224 	mov	a,r6
      004D63 12 79 22         [24] 8225 	lcall	__gptrput
      004D66 A3               [24] 8226 	inc	dptr
      004D67 EF               [12] 8227 	mov	a,r7
      004D68 12 79 22         [24] 8228 	lcall	__gptrput
      004D6B E5 0D            [12] 8229 	mov	a,_bp
      004D6D 24 0D            [12] 8230 	add	a,#0x0d
      004D6F F8               [12] 8231 	mov	r0,a
      004D70 86 82            [24] 8232 	mov	dpl,@r0
      004D72 08               [12] 8233 	inc	r0
      004D73 86 83            [24] 8234 	mov	dph,@r0
      004D75 08               [12] 8235 	inc	r0
      004D76 86 F0            [24] 8236 	mov	b,@r0
      004D78 12 7C 4D         [24] 8237 	lcall	__gptrget
      004D7B FF               [12] 8238 	mov	r7,a
      004D7C EF               [12] 8239 	mov	a,r7
      004D7D 75 F0 0C         [24] 8240 	mov	b,#0x0c
      004D80 A4               [48] 8241 	mul	ab
      004D81 24 16            [12] 8242 	add	a,#_pxReadyTasksLists
      004D83 FE               [12] 8243 	mov	r6,a
      004D84 74 00            [12] 8244 	mov	a,#(_pxReadyTasksLists >> 8)
      004D86 35 F0            [12] 8245 	addc	a,b
      004D88 FF               [12] 8246 	mov	r7,a
      004D89 7D 00            [12] 8247 	mov	r5,#0x00
      004D8B E5 0D            [12] 8248 	mov	a,_bp
      004D8D 24 07            [12] 8249 	add	a,#0x07
      004D8F F8               [12] 8250 	mov	r0,a
      004D90 86 82            [24] 8251 	mov	dpl,@r0
      004D92 08               [12] 8252 	inc	r0
      004D93 86 83            [24] 8253 	mov	dph,@r0
      004D95 08               [12] 8254 	inc	r0
      004D96 86 F0            [24] 8255 	mov	b,@r0
      004D98 EE               [12] 8256 	mov	a,r6
      004D99 12 79 22         [24] 8257 	lcall	__gptrput
      004D9C A3               [24] 8258 	inc	dptr
      004D9D EF               [12] 8259 	mov	a,r7
      004D9E 12 79 22         [24] 8260 	lcall	__gptrput
      004DA1 A3               [24] 8261 	inc	dptr
      004DA2 ED               [12] 8262 	mov	a,r5
      004DA3 12 79 22         [24] 8263 	lcall	__gptrput
      004DA6 E5 0D            [12] 8264 	mov	a,_bp
      004DA8 24 0D            [12] 8265 	add	a,#0x0d
      004DAA F8               [12] 8266 	mov	r0,a
      004DAB 86 82            [24] 8267 	mov	dpl,@r0
      004DAD 08               [12] 8268 	inc	r0
      004DAE 86 83            [24] 8269 	mov	dph,@r0
      004DB0 08               [12] 8270 	inc	r0
      004DB1 86 F0            [24] 8271 	mov	b,@r0
      004DB3 12 7C 4D         [24] 8272 	lcall	__gptrget
      004DB6 FF               [12] 8273 	mov	r7,a
      004DB7 EF               [12] 8274 	mov	a,r7
      004DB8 75 F0 0C         [24] 8275 	mov	b,#0x0c
      004DBB A4               [48] 8276 	mul	ab
      004DBC 24 16            [12] 8277 	add	a,#_pxReadyTasksLists
      004DBE FE               [12] 8278 	mov	r6,a
      004DBF 74 00            [12] 8279 	mov	a,#(_pxReadyTasksLists >> 8)
      004DC1 35 F0            [12] 8280 	addc	a,b
      004DC3 FF               [12] 8281 	mov	r7,a
      004DC4 8E 82            [24] 8282 	mov	dpl,r6
      004DC6 8F 83            [24] 8283 	mov	dph,r7
      004DC8 E0               [24] 8284 	movx	a,@dptr
      004DC9 FD               [12] 8285 	mov	r5,a
      004DCA 0D               [12] 8286 	inc	r5
      004DCB 8E 82            [24] 8287 	mov	dpl,r6
      004DCD 8F 83            [24] 8288 	mov	dph,r7
      004DCF ED               [12] 8289 	mov	a,r5
      004DD0 F0               [24] 8290 	movx	@dptr,a
                           00288D  8291 	C$tasks.c$3289$1_0$321 ==.
                                   8292 ;	tasks.c:3289: if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
      004DD1 E5 0D            [12] 8293 	mov	a,_bp
      004DD3 24 0D            [12] 8294 	add	a,#0x0d
      004DD5 F8               [12] 8295 	mov	r0,a
      004DD6 86 82            [24] 8296 	mov	dpl,@r0
      004DD8 08               [12] 8297 	inc	r0
      004DD9 86 83            [24] 8298 	mov	dph,@r0
      004DDB 08               [12] 8299 	inc	r0
      004DDC 86 F0            [24] 8300 	mov	b,@r0
      004DDE 12 7C 4D         [24] 8301 	lcall	__gptrget
      004DE1 FF               [12] 8302 	mov	r7,a
      004DE2 90 0C 7F         [24] 8303 	mov	dptr,#_pxCurrentTCB
      004DE5 E0               [24] 8304 	movx	a,@dptr
      004DE6 FC               [12] 8305 	mov	r4,a
      004DE7 A3               [24] 8306 	inc	dptr
      004DE8 E0               [24] 8307 	movx	a,@dptr
      004DE9 FD               [12] 8308 	mov	r5,a
      004DEA A3               [24] 8309 	inc	dptr
      004DEB E0               [24] 8310 	movx	a,@dptr
      004DEC FE               [12] 8311 	mov	r6,a
      004DED 74 1F            [12] 8312 	mov	a,#0x1f
      004DEF 2C               [12] 8313 	add	a,r4
      004DF0 FC               [12] 8314 	mov	r4,a
      004DF1 74 00            [12] 8315 	mov	a,#0x00
      004DF3 3D               [12] 8316 	addc	a,r5
      004DF4 FD               [12] 8317 	mov	r5,a
      004DF5 8C 82            [24] 8318 	mov	dpl,r4
      004DF7 8D 83            [24] 8319 	mov	dph,r5
      004DF9 8E F0            [24] 8320 	mov	b,r6
      004DFB 12 7C 4D         [24] 8321 	lcall	__gptrget
      004DFE FC               [12] 8322 	mov	r4,a
      004DFF C3               [12] 8323 	clr	c
      004E00 EC               [12] 8324 	mov	a,r4
      004E01 9F               [12] 8325 	subb	a,r7
      004E02 40 03            [24] 8326 	jc	00132$
      004E04 02 4E 0D         [24] 8327 	ljmp	00109$
      004E07                       8328 00132$:
                           0028C3  8329 	C$tasks.c$3295$2_0$329 ==.
                                   8330 ;	tasks.c:3295: xYieldPending = pdTRUE;
      004E07 90 0C 8A         [24] 8331 	mov	dptr,#_xYieldPending
      004E0A 74 01            [12] 8332 	mov	a,#0x01
      004E0C F0               [24] 8333 	movx	@dptr,a
      004E0D                       8334 00109$:
                           0028C9  8335 	C$tasks.c$3297$1_0$321 ==.
                                   8336 ;	tasks.c:3297: }
      004E0D 85 0D 81         [24] 8337 	mov	sp,_bp
      004E10 D0 0D            [24] 8338 	pop	_bp
                           0028CE  8339 	C$tasks.c$3297$1_0$321 ==.
                           0028CE  8340 	XG$vTaskRemoveFromUnorderedEventList$0$0 ==.
      004E12 22               [24] 8341 	ret
                                   8342 ;------------------------------------------------------------
                                   8343 ;Allocation info for local variables in function 'vTaskSetTimeOutState'
                                   8344 ;------------------------------------------------------------
                                   8345 ;pxTimeOut                 Allocated to registers r5 r6 r7 
                                   8346 ;------------------------------------------------------------
                           0028CF  8347 	G$vTaskSetTimeOutState$0$0 ==.
                           0028CF  8348 	C$tasks.c$3300$1_0$331 ==.
                                   8349 ;	tasks.c:3300: void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
                                   8350 ;	-----------------------------------------
                                   8351 ;	 function vTaskSetTimeOutState
                                   8352 ;	-----------------------------------------
      004E13                       8353 _vTaskSetTimeOutState:
      004E13 AD 82            [24] 8354 	mov	r5,dpl
      004E15 AE 83            [24] 8355 	mov	r6,dph
      004E17 AF F0            [24] 8356 	mov	r7,b
                           0028D5  8357 	C$tasks.c$3303$1_0$331 ==.
                                   8358 ;	tasks.c:3303: taskENTER_CRITICAL();
      004E19 C0 E0            [24] 8359 	push ACC 
      004E1B C0 A8            [24] 8360 	push IE 
                                   8361 ;	assignBit
      004E1D C2 AF            [12] 8362 	clr	_EA
                           0028DB  8363 	C$tasks.c$3305$2_0$332 ==.
                                   8364 ;	tasks.c:3305: pxTimeOut->xOverflowCount = xNumOfOverflows;
      004E1F 90 0C 8B         [24] 8365 	mov	dptr,#_xNumOfOverflows
      004E22 E0               [24] 8366 	movx	a,@dptr
      004E23 FC               [12] 8367 	mov	r4,a
      004E24 8D 82            [24] 8368 	mov	dpl,r5
      004E26 8E 83            [24] 8369 	mov	dph,r6
      004E28 8F F0            [24] 8370 	mov	b,r7
      004E2A EC               [12] 8371 	mov	a,r4
      004E2B 12 79 22         [24] 8372 	lcall	__gptrput
                           0028EA  8373 	C$tasks.c$3306$2_0$332 ==.
                                   8374 ;	tasks.c:3306: pxTimeOut->xTimeOnEntering = xTickCount;
      004E2E 0D               [12] 8375 	inc	r5
      004E2F BD 00 01         [24] 8376 	cjne	r5,#0x00,00103$
      004E32 0E               [12] 8377 	inc	r6
      004E33                       8378 00103$:
      004E33 90 0C 84         [24] 8379 	mov	dptr,#_xTickCount
      004E36 E0               [24] 8380 	movx	a,@dptr
      004E37 FB               [12] 8381 	mov	r3,a
      004E38 A3               [24] 8382 	inc	dptr
      004E39 E0               [24] 8383 	movx	a,@dptr
      004E3A FC               [12] 8384 	mov	r4,a
      004E3B 8D 82            [24] 8385 	mov	dpl,r5
      004E3D 8E 83            [24] 8386 	mov	dph,r6
      004E3F 8F F0            [24] 8387 	mov	b,r7
      004E41 EB               [12] 8388 	mov	a,r3
      004E42 12 79 22         [24] 8389 	lcall	__gptrput
      004E45 A3               [24] 8390 	inc	dptr
      004E46 EC               [12] 8391 	mov	a,r4
      004E47 12 79 22         [24] 8392 	lcall	__gptrput
                           002906  8393 	C$tasks.c$3308$1_0$331 ==.
                                   8394 ;	tasks.c:3308: taskEXIT_CRITICAL();
      004E4A D0 E0            [24] 8395 	pop ACC 
      004E4C 53 E0 80         [24] 8396 	anl	_ACC,#0x80
      004E4F E5 E0            [12] 8397 	mov	a,_ACC
      004E51 42 A8            [12] 8398 	orl	_IE,a
      004E53 D0 E0            [24] 8399 	pop ACC 
      004E55                       8400 00101$:
                           002911  8401 	C$tasks.c$3309$1_0$331 ==.
                                   8402 ;	tasks.c:3309: }
                           002911  8403 	C$tasks.c$3309$1_0$331 ==.
                           002911  8404 	XG$vTaskSetTimeOutState$0$0 ==.
      004E55 22               [24] 8405 	ret
                                   8406 ;------------------------------------------------------------
                                   8407 ;Allocation info for local variables in function 'vTaskInternalSetTimeOutState'
                                   8408 ;------------------------------------------------------------
                                   8409 ;pxTimeOut                 Allocated to registers r5 r6 r7 
                                   8410 ;------------------------------------------------------------
                           002912  8411 	G$vTaskInternalSetTimeOutState$0$0 ==.
                           002912  8412 	C$tasks.c$3312$1_0$334 ==.
                                   8413 ;	tasks.c:3312: void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut )
                                   8414 ;	-----------------------------------------
                                   8415 ;	 function vTaskInternalSetTimeOutState
                                   8416 ;	-----------------------------------------
      004E56                       8417 _vTaskInternalSetTimeOutState:
      004E56 AD 82            [24] 8418 	mov	r5,dpl
      004E58 AE 83            [24] 8419 	mov	r6,dph
      004E5A AF F0            [24] 8420 	mov	r7,b
                           002918  8421 	C$tasks.c$3315$1_0$334 ==.
                                   8422 ;	tasks.c:3315: pxTimeOut->xOverflowCount = xNumOfOverflows;
      004E5C 90 0C 8B         [24] 8423 	mov	dptr,#_xNumOfOverflows
      004E5F E0               [24] 8424 	movx	a,@dptr
      004E60 FC               [12] 8425 	mov	r4,a
      004E61 8D 82            [24] 8426 	mov	dpl,r5
      004E63 8E 83            [24] 8427 	mov	dph,r6
      004E65 8F F0            [24] 8428 	mov	b,r7
      004E67 EC               [12] 8429 	mov	a,r4
      004E68 12 79 22         [24] 8430 	lcall	__gptrput
                           002927  8431 	C$tasks.c$3316$1_0$334 ==.
                                   8432 ;	tasks.c:3316: pxTimeOut->xTimeOnEntering = xTickCount;
      004E6B 0D               [12] 8433 	inc	r5
      004E6C BD 00 01         [24] 8434 	cjne	r5,#0x00,00103$
      004E6F 0E               [12] 8435 	inc	r6
      004E70                       8436 00103$:
      004E70 90 0C 84         [24] 8437 	mov	dptr,#_xTickCount
      004E73 E0               [24] 8438 	movx	a,@dptr
      004E74 FB               [12] 8439 	mov	r3,a
      004E75 A3               [24] 8440 	inc	dptr
      004E76 E0               [24] 8441 	movx	a,@dptr
      004E77 FC               [12] 8442 	mov	r4,a
      004E78 8D 82            [24] 8443 	mov	dpl,r5
      004E7A 8E 83            [24] 8444 	mov	dph,r6
      004E7C 8F F0            [24] 8445 	mov	b,r7
      004E7E EB               [12] 8446 	mov	a,r3
      004E7F 12 79 22         [24] 8447 	lcall	__gptrput
      004E82 A3               [24] 8448 	inc	dptr
      004E83 EC               [12] 8449 	mov	a,r4
      004E84 12 79 22         [24] 8450 	lcall	__gptrput
      004E87                       8451 00101$:
                           002943  8452 	C$tasks.c$3317$1_0$334 ==.
                                   8453 ;	tasks.c:3317: }
                           002943  8454 	C$tasks.c$3317$1_0$334 ==.
                           002943  8455 	XG$vTaskInternalSetTimeOutState$0$0 ==.
      004E87 22               [24] 8456 	ret
                                   8457 ;------------------------------------------------------------
                                   8458 ;Allocation info for local variables in function 'xTaskCheckForTimeOut'
                                   8459 ;------------------------------------------------------------
                                   8460 ;pxTicksToWait             Allocated to stack - _bp -5
                                   8461 ;pxTimeOut                 Allocated to stack - _bp +1
                                   8462 ;xReturn                   Allocated to registers r6 
                                   8463 ;xConstTickCount           Allocated to stack - _bp +6
                                   8464 ;xElapsedTime              Allocated to registers r2 r7 
                                   8465 ;sloc0                     Allocated to stack - _bp +4
                                   8466 ;------------------------------------------------------------
                           002944  8467 	G$xTaskCheckForTimeOut$0$0 ==.
                           002944  8468 	C$tasks.c$3320$1_0$336 ==.
                                   8469 ;	tasks.c:3320: BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
                                   8470 ;	-----------------------------------------
                                   8471 ;	 function xTaskCheckForTimeOut
                                   8472 ;	-----------------------------------------
      004E88                       8473 _xTaskCheckForTimeOut:
      004E88 C0 0D            [24] 8474 	push	_bp
      004E8A 85 81 0D         [24] 8475 	mov	_bp,sp
      004E8D C0 82            [24] 8476 	push	dpl
      004E8F C0 83            [24] 8477 	push	dph
      004E91 C0 F0            [24] 8478 	push	b
      004E93 E5 81            [12] 8479 	mov	a,sp
      004E95 24 04            [12] 8480 	add	a,#0x04
      004E97 F5 81            [12] 8481 	mov	sp,a
                           002955  8482 	C$tasks.c$3328$1_0$336 ==.
                                   8483 ;	tasks.c:3328: taskENTER_CRITICAL();
      004E99 C0 E0            [24] 8484 	push ACC 
      004E9B C0 A8            [24] 8485 	push IE 
                                   8486 ;	assignBit
      004E9D C2 AF            [12] 8487 	clr	_EA
                           00295B  8488 	C$tasks.c$3331$3_0$337 ==.
                                   8489 ;	tasks.c:3331: const TickType_t xConstTickCount = xTickCount;
      004E9F 90 0C 84         [24] 8490 	mov	dptr,#_xTickCount
      004EA2 E0               [24] 8491 	movx	a,@dptr
      004EA3 FB               [12] 8492 	mov	r3,a
      004EA4 A3               [24] 8493 	inc	dptr
      004EA5 E0               [24] 8494 	movx	a,@dptr
      004EA6 FC               [12] 8495 	mov	r4,a
      004EA7 E5 0D            [12] 8496 	mov	a,_bp
      004EA9 24 06            [12] 8497 	add	a,#0x06
      004EAB F8               [12] 8498 	mov	r0,a
      004EAC A6 03            [24] 8499 	mov	@r0,ar3
      004EAE 08               [12] 8500 	inc	r0
      004EAF A6 04            [24] 8501 	mov	@r0,ar4
                           00296D  8502 	C$tasks.c$3332$2_0$337 ==.
                                   8503 ;	tasks.c:3332: const TickType_t xElapsedTime = xConstTickCount - pxTimeOut->xTimeOnEntering;
      004EB1 A8 0D            [24] 8504 	mov	r0,_bp
      004EB3 08               [12] 8505 	inc	r0
      004EB4 74 01            [12] 8506 	mov	a,#0x01
      004EB6 26               [12] 8507 	add	a,@r0
      004EB7 FB               [12] 8508 	mov	r3,a
      004EB8 74 00            [12] 8509 	mov	a,#0x00
      004EBA 08               [12] 8510 	inc	r0
      004EBB 36               [12] 8511 	addc	a,@r0
      004EBC FA               [12] 8512 	mov	r2,a
      004EBD 08               [12] 8513 	inc	r0
      004EBE 86 04            [24] 8514 	mov	ar4,@r0
      004EC0 8B 82            [24] 8515 	mov	dpl,r3
      004EC2 8A 83            [24] 8516 	mov	dph,r2
      004EC4 8C F0            [24] 8517 	mov	b,r4
      004EC6 12 7C 4D         [24] 8518 	lcall	__gptrget
      004EC9 FB               [12] 8519 	mov	r3,a
      004ECA A3               [24] 8520 	inc	dptr
      004ECB 12 7C 4D         [24] 8521 	lcall	__gptrget
      004ECE FC               [12] 8522 	mov	r4,a
      004ECF E5 0D            [12] 8523 	mov	a,_bp
      004ED1 24 06            [12] 8524 	add	a,#0x06
      004ED3 F8               [12] 8525 	mov	r0,a
      004ED4 E6               [12] 8526 	mov	a,@r0
      004ED5 C3               [12] 8527 	clr	c
      004ED6 9B               [12] 8528 	subb	a,r3
      004ED7 FE               [12] 8529 	mov	r6,a
      004ED8 08               [12] 8530 	inc	r0
      004ED9 E6               [12] 8531 	mov	a,@r0
      004EDA 9C               [12] 8532 	subb	a,r4
      004EDB FF               [12] 8533 	mov	r7,a
      004EDC 8E 02            [24] 8534 	mov	ar2,r6
                           00299A  8535 	C$tasks.c$3356$2_0$337 ==.
                                   8536 ;	tasks.c:3356: if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
      004EDE A8 0D            [24] 8537 	mov	r0,_bp
      004EE0 08               [12] 8538 	inc	r0
      004EE1 86 82            [24] 8539 	mov	dpl,@r0
      004EE3 08               [12] 8540 	inc	r0
      004EE4 86 83            [24] 8541 	mov	dph,@r0
      004EE6 08               [12] 8542 	inc	r0
      004EE7 86 F0            [24] 8543 	mov	b,@r0
      004EE9 12 7C 4D         [24] 8544 	lcall	__gptrget
      004EEC FE               [12] 8545 	mov	r6,a
      004EED 90 0C 8B         [24] 8546 	mov	dptr,#_xNumOfOverflows
      004EF0 E0               [24] 8547 	movx	a,@dptr
      004EF1 FD               [12] 8548 	mov	r5,a
      004EF2 ED               [12] 8549 	mov	a,r5
      004EF3 B5 06 03         [24] 8550 	cjne	a,ar6,00122$
      004EF6 02 4F 2A         [24] 8551 	ljmp	00105$
      004EF9                       8552 00122$:
      004EF9 E5 0D            [12] 8553 	mov	a,_bp
      004EFB 24 06            [12] 8554 	add	a,#0x06
      004EFD F8               [12] 8555 	mov	r0,a
      004EFE C3               [12] 8556 	clr	c
      004EFF E6               [12] 8557 	mov	a,@r0
      004F00 9B               [12] 8558 	subb	a,r3
      004F01 08               [12] 8559 	inc	r0
      004F02 E6               [12] 8560 	mov	a,@r0
      004F03 9C               [12] 8561 	subb	a,r4
      004F04 50 03            [24] 8562 	jnc	00123$
      004F06 02 4F 2A         [24] 8563 	ljmp	00105$
      004F09                       8564 00123$:
                           0029C5  8565 	C$tasks.c$3363$3_0$338 ==.
                                   8566 ;	tasks.c:3363: xReturn = pdTRUE;
      004F09 7E 01            [12] 8567 	mov	r6,#0x01
                           0029C7  8568 	C$tasks.c$3364$3_0$338 ==.
                                   8569 ;	tasks.c:3364: *pxTicksToWait = ( TickType_t ) 0;
      004F0B E5 0D            [12] 8570 	mov	a,_bp
      004F0D 24 FB            [12] 8571 	add	a,#0xfb
      004F0F F8               [12] 8572 	mov	r0,a
      004F10 86 03            [24] 8573 	mov	ar3,@r0
      004F12 08               [12] 8574 	inc	r0
      004F13 86 04            [24] 8575 	mov	ar4,@r0
      004F15 08               [12] 8576 	inc	r0
      004F16 86 05            [24] 8577 	mov	ar5,@r0
      004F18 8B 82            [24] 8578 	mov	dpl,r3
      004F1A 8C 83            [24] 8579 	mov	dph,r4
      004F1C 8D F0            [24] 8580 	mov	b,r5
      004F1E 74 00            [12] 8581 	mov	a,#0x00
      004F20 12 79 22         [24] 8582 	lcall	__gptrput
      004F23 A3               [24] 8583 	inc	dptr
      004F24 12 79 22         [24] 8584 	lcall	__gptrput
      004F27 02 4F 9C         [24] 8585 	ljmp	00106$
      004F2A                       8586 00105$:
                           0029E6  8587 	C$tasks.c$3366$2_0$337 ==.
                                   8588 ;	tasks.c:3366: else if( xElapsedTime < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
      004F2A E5 0D            [12] 8589 	mov	a,_bp
      004F2C 24 FB            [12] 8590 	add	a,#0xfb
      004F2E F8               [12] 8591 	mov	r0,a
      004F2F 86 03            [24] 8592 	mov	ar3,@r0
      004F31 08               [12] 8593 	inc	r0
      004F32 86 04            [24] 8594 	mov	ar4,@r0
      004F34 08               [12] 8595 	inc	r0
      004F35 86 05            [24] 8596 	mov	ar5,@r0
      004F37 8B 82            [24] 8597 	mov	dpl,r3
      004F39 8C 83            [24] 8598 	mov	dph,r4
      004F3B 8D F0            [24] 8599 	mov	b,r5
      004F3D E5 0D            [12] 8600 	mov	a,_bp
      004F3F 24 04            [12] 8601 	add	a,#0x04
      004F41 F8               [12] 8602 	mov	r0,a
      004F42 12 7C 4D         [24] 8603 	lcall	__gptrget
      004F45 F6               [12] 8604 	mov	@r0,a
      004F46 A3               [24] 8605 	inc	dptr
      004F47 12 7C 4D         [24] 8606 	lcall	__gptrget
      004F4A 08               [12] 8607 	inc	r0
      004F4B F6               [12] 8608 	mov	@r0,a
      004F4C E5 0D            [12] 8609 	mov	a,_bp
      004F4E 24 04            [12] 8610 	add	a,#0x04
      004F50 F8               [12] 8611 	mov	r0,a
      004F51 C3               [12] 8612 	clr	c
      004F52 EA               [12] 8613 	mov	a,r2
      004F53 96               [12] 8614 	subb	a,@r0
      004F54 EF               [12] 8615 	mov	a,r7
      004F55 08               [12] 8616 	inc	r0
      004F56 96               [12] 8617 	subb	a,@r0
      004F57 40 03            [24] 8618 	jc	00124$
      004F59 02 4F 8B         [24] 8619 	ljmp	00102$
      004F5C                       8620 00124$:
                           002A18  8621 	C$tasks.c$3369$3_0$339 ==.
                                   8622 ;	tasks.c:3369: *pxTicksToWait -= xElapsedTime;
      004F5C E5 0D            [12] 8623 	mov	a,_bp
      004F5E 24 04            [12] 8624 	add	a,#0x04
      004F60 F8               [12] 8625 	mov	r0,a
      004F61 E6               [12] 8626 	mov	a,@r0
      004F62 C3               [12] 8627 	clr	c
      004F63 9A               [12] 8628 	subb	a,r2
      004F64 FA               [12] 8629 	mov	r2,a
      004F65 08               [12] 8630 	inc	r0
      004F66 E6               [12] 8631 	mov	a,@r0
      004F67 9F               [12] 8632 	subb	a,r7
      004F68 FF               [12] 8633 	mov	r7,a
      004F69 8B 82            [24] 8634 	mov	dpl,r3
      004F6B 8C 83            [24] 8635 	mov	dph,r4
      004F6D 8D F0            [24] 8636 	mov	b,r5
      004F6F EA               [12] 8637 	mov	a,r2
      004F70 12 79 22         [24] 8638 	lcall	__gptrput
      004F73 A3               [24] 8639 	inc	dptr
      004F74 EF               [12] 8640 	mov	a,r7
      004F75 12 79 22         [24] 8641 	lcall	__gptrput
                           002A34  8642 	C$tasks.c$3370$3_0$339 ==.
                                   8643 ;	tasks.c:3370: vTaskInternalSetTimeOutState( pxTimeOut );
      004F78 A8 0D            [24] 8644 	mov	r0,_bp
      004F7A 08               [12] 8645 	inc	r0
      004F7B 86 82            [24] 8646 	mov	dpl,@r0
      004F7D 08               [12] 8647 	inc	r0
      004F7E 86 83            [24] 8648 	mov	dph,@r0
      004F80 08               [12] 8649 	inc	r0
      004F81 86 F0            [24] 8650 	mov	b,@r0
      004F83 12 4E 56         [24] 8651 	lcall	_vTaskInternalSetTimeOutState
                           002A42  8652 	C$tasks.c$3371$3_0$339 ==.
                                   8653 ;	tasks.c:3371: xReturn = pdFALSE;
      004F86 7E 00            [12] 8654 	mov	r6,#0x00
      004F88 02 4F 9C         [24] 8655 	ljmp	00106$
      004F8B                       8656 00102$:
                           002A47  8657 	C$tasks.c$3375$3_0$340 ==.
                                   8658 ;	tasks.c:3375: *pxTicksToWait = ( TickType_t ) 0;
      004F8B 8B 82            [24] 8659 	mov	dpl,r3
      004F8D 8C 83            [24] 8660 	mov	dph,r4
      004F8F 8D F0            [24] 8661 	mov	b,r5
      004F91 74 00            [12] 8662 	mov	a,#0x00
      004F93 12 79 22         [24] 8663 	lcall	__gptrput
      004F96 A3               [24] 8664 	inc	dptr
      004F97 12 79 22         [24] 8665 	lcall	__gptrput
                           002A56  8666 	C$tasks.c$3376$3_0$340 ==.
                                   8667 ;	tasks.c:3376: xReturn = pdTRUE;
      004F9A 7E 01            [12] 8668 	mov	r6,#0x01
      004F9C                       8669 00106$:
                           002A58  8670 	C$tasks.c$3379$1_0$336 ==.
                                   8671 ;	tasks.c:3379: taskEXIT_CRITICAL();
      004F9C D0 E0            [24] 8672 	pop ACC 
      004F9E 53 E0 80         [24] 8673 	anl	_ACC,#0x80
      004FA1 E5 E0            [12] 8674 	mov	a,_ACC
      004FA3 42 A8            [12] 8675 	orl	_IE,a
      004FA5 D0 E0            [24] 8676 	pop ACC 
                           002A63  8677 	C$tasks.c$3381$1_0$336 ==.
                                   8678 ;	tasks.c:3381: return xReturn;
      004FA7 8E 82            [24] 8679 	mov	dpl,r6
      004FA9                       8680 00108$:
                           002A65  8681 	C$tasks.c$3382$1_0$336 ==.
                                   8682 ;	tasks.c:3382: }
      004FA9 85 0D 81         [24] 8683 	mov	sp,_bp
      004FAC D0 0D            [24] 8684 	pop	_bp
                           002A6A  8685 	C$tasks.c$3382$1_0$336 ==.
                           002A6A  8686 	XG$xTaskCheckForTimeOut$0$0 ==.
      004FAE 22               [24] 8687 	ret
                                   8688 ;------------------------------------------------------------
                                   8689 ;Allocation info for local variables in function 'vTaskMissedYield'
                                   8690 ;------------------------------------------------------------
                           002A6B  8691 	G$vTaskMissedYield$0$0 ==.
                           002A6B  8692 	C$tasks.c$3385$1_0$342 ==.
                                   8693 ;	tasks.c:3385: void vTaskMissedYield( void )
                                   8694 ;	-----------------------------------------
                                   8695 ;	 function vTaskMissedYield
                                   8696 ;	-----------------------------------------
      004FAF                       8697 _vTaskMissedYield:
                           002A6B  8698 	C$tasks.c$3387$1_0$342 ==.
                                   8699 ;	tasks.c:3387: xYieldPending = pdTRUE;
      004FAF 90 0C 8A         [24] 8700 	mov	dptr,#_xYieldPending
      004FB2 74 01            [12] 8701 	mov	a,#0x01
      004FB4 F0               [24] 8702 	movx	@dptr,a
      004FB5                       8703 00101$:
                           002A71  8704 	C$tasks.c$3388$1_0$342 ==.
                                   8705 ;	tasks.c:3388: }
                           002A71  8706 	C$tasks.c$3388$1_0$342 ==.
                           002A71  8707 	XG$vTaskMissedYield$0$0 ==.
      004FB5 22               [24] 8708 	ret
                                   8709 ;------------------------------------------------------------
                                   8710 ;Allocation info for local variables in function 'prvIdleTask'
                                   8711 ;------------------------------------------------------------
                                   8712 ;pvParameters              Allocated to registers 
                                   8713 ;------------------------------------------------------------
                           002A72  8714 	Ftasks$prvIdleTask$0$0 ==.
                           002A72  8715 	C$tasks.c$3441$1_0$344 ==.
                                   8716 ;	tasks.c:3441: static portTASK_FUNCTION( prvIdleTask, pvParameters )
                                   8717 ;	-----------------------------------------
                                   8718 ;	 function prvIdleTask
                                   8719 ;	-----------------------------------------
      004FB6                       8720 _prvIdleTask:
                           002A72  8721 	C$tasks.c$3444$2_0$345 ==.
                                   8722 ;	tasks.c:3444: ( void ) pvParameters;
      004FB6                       8723 00102$:
                           002A72  8724 	C$tasks.c$3458$3_0$346 ==.
                                   8725 ;	tasks.c:3458: prvCheckTasksWaitingTermination();
      004FB6 12 50 34         [24] 8726 	lcall	_prvCheckTasksWaitingTermination
                           002A75  8727 	C$tasks.c$3466$4_0$347 ==.
                                   8728 ;	tasks.c:3466: taskYIELD();
      004FB9 12 77 3C         [24] 8729 	lcall	_vPortYield
      004FBC 02 4F B6         [24] 8730 	ljmp	00102$
      004FBF                       8731 00104$:
                           002A7B  8732 	C$tasks.c$3555$2_0$344 ==.
                                   8733 ;	tasks.c:3555: }
                           002A7B  8734 	C$tasks.c$3555$2_0$344 ==.
                           002A7B  8735 	XFtasks$prvIdleTask$0$0 ==.
      004FBF 22               [24] 8736 	ret
                                   8737 ;------------------------------------------------------------
                                   8738 ;Allocation info for local variables in function 'prvInitialiseTaskLists'
                                   8739 ;------------------------------------------------------------
                                   8740 ;uxPriority                Allocated to registers r7 
                                   8741 ;------------------------------------------------------------
                           002A7C  8742 	Ftasks$prvInitialiseTaskLists$0$0 ==.
                           002A7C  8743 	C$tasks.c$3666$2_0$349 ==.
                                   8744 ;	tasks.c:3666: static void prvInitialiseTaskLists( void )
                                   8745 ;	-----------------------------------------
                                   8746 ;	 function prvInitialiseTaskLists
                                   8747 ;	-----------------------------------------
      004FC0                       8748 _prvInitialiseTaskLists:
                           002A7C  8749 	C$tasks.c$3670$3_0$351 ==.
                                   8750 ;	tasks.c:3670: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
      004FC0 7F 00            [12] 8751 	mov	r7,#0x00
      004FC2                       8752 00102$:
                           002A7E  8753 	C$tasks.c$3672$3_0$351 ==.
                                   8754 ;	tasks.c:3672: vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
      004FC2 EF               [12] 8755 	mov	a,r7
      004FC3 75 F0 0C         [24] 8756 	mov	b,#0x0c
      004FC6 A4               [48] 8757 	mul	ab
      004FC7 24 16            [12] 8758 	add	a,#_pxReadyTasksLists
      004FC9 FD               [12] 8759 	mov	r5,a
      004FCA 74 00            [12] 8760 	mov	a,#(_pxReadyTasksLists >> 8)
      004FCC 35 F0            [12] 8761 	addc	a,b
      004FCE FE               [12] 8762 	mov	r6,a
      004FCF 7C 00            [12] 8763 	mov	r4,#0x00
      004FD1 8D 82            [24] 8764 	mov	dpl,r5
      004FD3 8E 83            [24] 8765 	mov	dph,r6
      004FD5 8C F0            [24] 8766 	mov	b,r4
      004FD7 C0 07            [24] 8767 	push	ar7
      004FD9 12 6D 66         [24] 8768 	lcall	_vListInitialise
      004FDC D0 07            [24] 8769 	pop	ar7
                           002A9A  8770 	C$tasks.c$3670$2_0$350 ==.
                                   8771 ;	tasks.c:3670: for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
      004FDE 0F               [12] 8772 	inc	r7
      004FDF BF 04 00         [24] 8773 	cjne	r7,#0x04,00115$
      004FE2                       8774 00115$:
      004FE2 50 03            [24] 8775 	jnc	00116$
      004FE4 02 4F C2         [24] 8776 	ljmp	00102$
      004FE7                       8777 00116$:
                           002AA3  8778 	C$tasks.c$3675$1_0$349 ==.
                                   8779 ;	tasks.c:3675: vListInitialise( &xDelayedTaskList1 );
      004FE7 75 82 46         [24] 8780 	mov	dpl,#_xDelayedTaskList1
      004FEA 75 83 00         [24] 8781 	mov	dph,#(_xDelayedTaskList1 >> 8)
      004FED 75 F0 00         [24] 8782 	mov	b,#0x00
      004FF0 12 6D 66         [24] 8783 	lcall	_vListInitialise
                           002AAF  8784 	C$tasks.c$3676$1_0$349 ==.
                                   8785 ;	tasks.c:3676: vListInitialise( &xDelayedTaskList2 );
      004FF3 75 82 52         [24] 8786 	mov	dpl,#_xDelayedTaskList2
      004FF6 75 83 00         [24] 8787 	mov	dph,#(_xDelayedTaskList2 >> 8)
      004FF9 75 F0 00         [24] 8788 	mov	b,#0x00
      004FFC 12 6D 66         [24] 8789 	lcall	_vListInitialise
                           002ABB  8790 	C$tasks.c$3677$1_0$349 ==.
                                   8791 ;	tasks.c:3677: vListInitialise( &xPendingReadyList );
      004FFF 75 82 64         [24] 8792 	mov	dpl,#_xPendingReadyList
      005002 75 83 00         [24] 8793 	mov	dph,#(_xPendingReadyList >> 8)
      005005 75 F0 00         [24] 8794 	mov	b,#0x00
      005008 12 6D 66         [24] 8795 	lcall	_vListInitialise
                           002AC7  8796 	C$tasks.c$3681$2_0$352 ==.
                                   8797 ;	tasks.c:3681: vListInitialise( &xTasksWaitingTermination );
      00500B 75 82 70         [24] 8798 	mov	dpl,#_xTasksWaitingTermination
      00500E 75 83 00         [24] 8799 	mov	dph,#(_xTasksWaitingTermination >> 8)
      005011 75 F0 00         [24] 8800 	mov	b,#0x00
      005014 12 6D 66         [24] 8801 	lcall	_vListInitialise
                           002AD3  8802 	C$tasks.c$3693$1_0$349 ==.
                                   8803 ;	tasks.c:3693: pxDelayedTaskList = &xDelayedTaskList1;
      005017 90 00 5E         [24] 8804 	mov	dptr,#_pxDelayedTaskList
      00501A 74 46            [12] 8805 	mov	a,#_xDelayedTaskList1
      00501C F0               [24] 8806 	movx	@dptr,a
      00501D 74 00            [12] 8807 	mov	a,#(_xDelayedTaskList1 >> 8)
      00501F A3               [24] 8808 	inc	dptr
      005020 F0               [24] 8809 	movx	@dptr,a
      005021 74 00            [12] 8810 	mov	a,#0x00
      005023 A3               [24] 8811 	inc	dptr
      005024 F0               [24] 8812 	movx	@dptr,a
                           002AE1  8813 	C$tasks.c$3694$1_0$349 ==.
                                   8814 ;	tasks.c:3694: pxOverflowDelayedTaskList = &xDelayedTaskList2;
      005025 90 00 61         [24] 8815 	mov	dptr,#_pxOverflowDelayedTaskList
      005028 74 52            [12] 8816 	mov	a,#_xDelayedTaskList2
      00502A F0               [24] 8817 	movx	@dptr,a
      00502B 74 00            [12] 8818 	mov	a,#(_xDelayedTaskList2 >> 8)
      00502D A3               [24] 8819 	inc	dptr
      00502E F0               [24] 8820 	movx	@dptr,a
      00502F 74 00            [12] 8821 	mov	a,#0x00
      005031 A3               [24] 8822 	inc	dptr
      005032 F0               [24] 8823 	movx	@dptr,a
      005033                       8824 00104$:
                           002AEF  8825 	C$tasks.c$3695$1_0$349 ==.
                                   8826 ;	tasks.c:3695: }
                           002AEF  8827 	C$tasks.c$3695$1_0$349 ==.
                           002AEF  8828 	XFtasks$prvInitialiseTaskLists$0$0 ==.
      005033 22               [24] 8829 	ret
                                   8830 ;------------------------------------------------------------
                                   8831 ;Allocation info for local variables in function 'prvCheckTasksWaitingTermination'
                                   8832 ;------------------------------------------------------------
                                   8833 ;pxTCB                     Allocated to registers r5 r6 r7 
                                   8834 ;------------------------------------------------------------
                           002AF0  8835 	Ftasks$prvCheckTasksWaitingTermination$0$0 ==.
                           002AF0  8836 	C$tasks.c$3698$1_0$355 ==.
                                   8837 ;	tasks.c:3698: static void prvCheckTasksWaitingTermination( void )
                                   8838 ;	-----------------------------------------
                                   8839 ;	 function prvCheckTasksWaitingTermination
                                   8840 ;	-----------------------------------------
      005034                       8841 _prvCheckTasksWaitingTermination:
                           002AF0  8842 	C$tasks.c$3708$4_0$357 ==.
                                   8843 ;	tasks.c:3708: while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
      005034                       8844 00101$:
      005034 90 0C 82         [24] 8845 	mov	dptr,#_uxDeletedTasksWaitingCleanUp
      005037 E0               [24] 8846 	movx	a,@dptr
      005038 70 03            [24] 8847 	jnz	00114$
      00503A 02 50 AC         [24] 8848 	ljmp	00104$
      00503D                       8849 00114$:
                           002AF9  8850 	C$tasks.c$3710$3_0$356 ==.
                                   8851 ;	tasks.c:3710: taskENTER_CRITICAL();
      00503D C0 E0            [24] 8852 	push ACC 
      00503F C0 A8            [24] 8853 	push IE 
                                   8854 ;	assignBit
      005041 C2 AF            [12] 8855 	clr	_EA
                           002AFF  8856 	C$tasks.c$3712$4_0$357 ==.
                                   8857 ;	tasks.c:3712: pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers and co-routines too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
      005043 90 00 76         [24] 8858 	mov	dptr,#(_xTasksWaitingTermination + 0x0006)
      005046 E0               [24] 8859 	movx	a,@dptr
      005047 FD               [12] 8860 	mov	r5,a
      005048 A3               [24] 8861 	inc	dptr
      005049 E0               [24] 8862 	movx	a,@dptr
      00504A FE               [12] 8863 	mov	r6,a
      00504B A3               [24] 8864 	inc	dptr
      00504C E0               [24] 8865 	movx	a,@dptr
      00504D FF               [12] 8866 	mov	r7,a
      00504E 74 08            [12] 8867 	mov	a,#0x08
      005050 2D               [12] 8868 	add	a,r5
      005051 FD               [12] 8869 	mov	r5,a
      005052 74 00            [12] 8870 	mov	a,#0x00
      005054 3E               [12] 8871 	addc	a,r6
      005055 FE               [12] 8872 	mov	r6,a
      005056 8D 82            [24] 8873 	mov	dpl,r5
      005058 8E 83            [24] 8874 	mov	dph,r6
      00505A 8F F0            [24] 8875 	mov	b,r7
      00505C 12 7C 4D         [24] 8876 	lcall	__gptrget
      00505F FD               [12] 8877 	mov	r5,a
      005060 A3               [24] 8878 	inc	dptr
      005061 12 7C 4D         [24] 8879 	lcall	__gptrget
      005064 FE               [12] 8880 	mov	r6,a
      005065 A3               [24] 8881 	inc	dptr
      005066 12 7C 4D         [24] 8882 	lcall	__gptrget
      005069 FF               [12] 8883 	mov	r7,a
                           002B26  8884 	C$tasks.c$3713$4_0$357 ==.
                                   8885 ;	tasks.c:3713: ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
      00506A 74 03            [12] 8886 	mov	a,#0x03
      00506C 2D               [12] 8887 	add	a,r5
      00506D FA               [12] 8888 	mov	r2,a
      00506E 74 00            [12] 8889 	mov	a,#0x00
      005070 3E               [12] 8890 	addc	a,r6
      005071 FB               [12] 8891 	mov	r3,a
      005072 8F 04            [24] 8892 	mov	ar4,r7
      005074 8A 82            [24] 8893 	mov	dpl,r2
      005076 8B 83            [24] 8894 	mov	dph,r3
      005078 8C F0            [24] 8895 	mov	b,r4
      00507A C0 07            [24] 8896 	push	ar7
      00507C C0 06            [24] 8897 	push	ar6
      00507E C0 05            [24] 8898 	push	ar5
      005080 12 71 E3         [24] 8899 	lcall	_uxListRemove
      005083 D0 05            [24] 8900 	pop	ar5
      005085 D0 06            [24] 8901 	pop	ar6
      005087 D0 07            [24] 8902 	pop	ar7
                           002B45  8903 	C$tasks.c$3714$4_0$357 ==.
                                   8904 ;	tasks.c:3714: --uxCurrentNumberOfTasks;
      005089 90 0C 83         [24] 8905 	mov	dptr,#_uxCurrentNumberOfTasks
      00508C E0               [24] 8906 	movx	a,@dptr
      00508D 14               [12] 8907 	dec	a
      00508E F0               [24] 8908 	movx	@dptr,a
                           002B4B  8909 	C$tasks.c$3715$4_0$357 ==.
                                   8910 ;	tasks.c:3715: --uxDeletedTasksWaitingCleanUp;
      00508F 90 0C 82         [24] 8911 	mov	dptr,#_uxDeletedTasksWaitingCleanUp
      005092 E0               [24] 8912 	movx	a,@dptr
      005093 14               [12] 8913 	dec	a
      005094 F0               [24] 8914 	movx	@dptr,a
                           002B51  8915 	C$tasks.c$3717$3_0$356 ==.
                                   8916 ;	tasks.c:3717: taskEXIT_CRITICAL();
      005095 D0 E0            [24] 8917 	pop ACC 
      005097 53 E0 80         [24] 8918 	anl	_ACC,#0x80
      00509A E5 E0            [12] 8919 	mov	a,_ACC
      00509C 42 A8            [12] 8920 	orl	_IE,a
      00509E D0 E0            [24] 8921 	pop ACC 
                           002B5C  8922 	C$tasks.c$3719$3_0$356 ==.
                                   8923 ;	tasks.c:3719: prvDeleteTCB( pxTCB );
      0050A0 8D 82            [24] 8924 	mov	dpl,r5
      0050A2 8E 83            [24] 8925 	mov	dph,r6
      0050A4 8F F0            [24] 8926 	mov	b,r7
      0050A6 12 50 AD         [24] 8927 	lcall	_prvDeleteTCB
      0050A9 02 50 34         [24] 8928 	ljmp	00101$
      0050AC                       8929 00104$:
                           002B68  8930 	C$tasks.c$3723$2_0$355 ==.
                                   8931 ;	tasks.c:3723: }
                           002B68  8932 	C$tasks.c$3723$2_0$355 ==.
                           002B68  8933 	XFtasks$prvCheckTasksWaitingTermination$0$0 ==.
      0050AC 22               [24] 8934 	ret
                                   8935 ;------------------------------------------------------------
                                   8936 ;Allocation info for local variables in function 'prvDeleteTCB'
                                   8937 ;------------------------------------------------------------
                                   8938 ;pxTCB                     Allocated to registers r5 r6 r7 
                                   8939 ;------------------------------------------------------------
                           002B69  8940 	Ftasks$prvDeleteTCB$0$0 ==.
                           002B69  8941 	C$tasks.c$3950$2_0$359 ==.
                                   8942 ;	tasks.c:3950: static void prvDeleteTCB( TCB_t * pxTCB )
                                   8943 ;	-----------------------------------------
                                   8944 ;	 function prvDeleteTCB
                                   8945 ;	-----------------------------------------
      0050AD                       8946 _prvDeleteTCB:
      0050AD AD 82            [24] 8947 	mov	r5,dpl
      0050AF AE 83            [24] 8948 	mov	r6,dph
      0050B1 AF F0            [24] 8949 	mov	r7,b
                           002B6F  8950 	C$tasks.c$3971$2_0$360 ==.
                                   8951 ;	tasks.c:3971: vPortFreeStack( pxTCB->pxStack );
      0050B3 74 20            [12] 8952 	mov	a,#0x20
      0050B5 2D               [12] 8953 	add	a,r5
      0050B6 FA               [12] 8954 	mov	r2,a
      0050B7 74 00            [12] 8955 	mov	a,#0x00
      0050B9 3E               [12] 8956 	addc	a,r6
      0050BA FB               [12] 8957 	mov	r3,a
      0050BB 8F 04            [24] 8958 	mov	ar4,r7
      0050BD 8A 82            [24] 8959 	mov	dpl,r2
      0050BF 8B 83            [24] 8960 	mov	dph,r3
      0050C1 8C F0            [24] 8961 	mov	b,r4
      0050C3 12 7C 4D         [24] 8962 	lcall	__gptrget
      0050C6 FA               [12] 8963 	mov	r2,a
      0050C7 A3               [24] 8964 	inc	dptr
      0050C8 12 7C 4D         [24] 8965 	lcall	__gptrget
      0050CB FB               [12] 8966 	mov	r3,a
      0050CC A3               [24] 8967 	inc	dptr
      0050CD 12 7C 4D         [24] 8968 	lcall	__gptrget
      0050D0 FC               [12] 8969 	mov	r4,a
      0050D1 8A 82            [24] 8970 	mov	dpl,r2
      0050D3 8B 83            [24] 8971 	mov	dph,r3
      0050D5 8C F0            [24] 8972 	mov	b,r4
      0050D7 C0 07            [24] 8973 	push	ar7
      0050D9 C0 06            [24] 8974 	push	ar6
      0050DB C0 05            [24] 8975 	push	ar5
      0050DD 12 74 A7         [24] 8976 	lcall	_vPortFree
      0050E0 D0 05            [24] 8977 	pop	ar5
      0050E2 D0 06            [24] 8978 	pop	ar6
      0050E4 D0 07            [24] 8979 	pop	ar7
                           002BA2  8980 	C$tasks.c$3972$2_0$360 ==.
                                   8981 ;	tasks.c:3972: vPortFree( pxTCB );
      0050E6 8D 82            [24] 8982 	mov	dpl,r5
      0050E8 8E 83            [24] 8983 	mov	dph,r6
      0050EA 8F F0            [24] 8984 	mov	b,r7
      0050EC 12 74 A7         [24] 8985 	lcall	_vPortFree
      0050EF                       8986 00101$:
                           002BAB  8987 	C$tasks.c$4001$2_0$359 ==.
                                   8988 ;	tasks.c:4001: }
                           002BAB  8989 	C$tasks.c$4001$2_0$359 ==.
                           002BAB  8990 	XFtasks$prvDeleteTCB$0$0 ==.
      0050EF 22               [24] 8991 	ret
                                   8992 ;------------------------------------------------------------
                                   8993 ;Allocation info for local variables in function 'prvResetNextTaskUnblockTime'
                                   8994 ;------------------------------------------------------------
                           002BAC  8995 	Ftasks$prvResetNextTaskUnblockTime$0$0 ==.
                           002BAC  8996 	C$tasks.c$4006$2_0$362 ==.
                                   8997 ;	tasks.c:4006: static void prvResetNextTaskUnblockTime( void )
                                   8998 ;	-----------------------------------------
                                   8999 ;	 function prvResetNextTaskUnblockTime
                                   9000 ;	-----------------------------------------
      0050F0                       9001 _prvResetNextTaskUnblockTime:
                           002BAC  9002 	C$tasks.c$4008$1_0$362 ==.
                                   9003 ;	tasks.c:4008: if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
      0050F0 90 00 5E         [24] 9004 	mov	dptr,#_pxDelayedTaskList
      0050F3 E0               [24] 9005 	movx	a,@dptr
      0050F4 FD               [12] 9006 	mov	r5,a
      0050F5 A3               [24] 9007 	inc	dptr
      0050F6 E0               [24] 9008 	movx	a,@dptr
      0050F7 FE               [12] 9009 	mov	r6,a
      0050F8 A3               [24] 9010 	inc	dptr
      0050F9 E0               [24] 9011 	movx	a,@dptr
      0050FA FF               [12] 9012 	mov	r7,a
      0050FB 8D 82            [24] 9013 	mov	dpl,r5
      0050FD 8E 83            [24] 9014 	mov	dph,r6
      0050FF 8F F0            [24] 9015 	mov	b,r7
      005101 12 7C 4D         [24] 9016 	lcall	__gptrget
      005104 60 03            [24] 9017 	jz	00112$
      005106 02 51 14         [24] 9018 	ljmp	00102$
      005109                       9019 00112$:
                           002BC5  9020 	C$tasks.c$4014$2_0$363 ==.
                                   9021 ;	tasks.c:4014: xNextTaskUnblockTime = portMAX_DELAY;
      005109 90 0C 8D         [24] 9022 	mov	dptr,#_xNextTaskUnblockTime
      00510C 74 FF            [12] 9023 	mov	a,#0xff
      00510E F0               [24] 9024 	movx	@dptr,a
      00510F A3               [24] 9025 	inc	dptr
      005110 F0               [24] 9026 	movx	@dptr,a
      005111 02 51 5A         [24] 9027 	ljmp	00104$
      005114                       9028 00102$:
                           002BD0  9029 	C$tasks.c$4022$2_0$364 ==.
                                   9030 ;	tasks.c:4022: xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
      005114 90 00 5E         [24] 9031 	mov	dptr,#_pxDelayedTaskList
      005117 E0               [24] 9032 	movx	a,@dptr
      005118 FD               [12] 9033 	mov	r5,a
      005119 A3               [24] 9034 	inc	dptr
      00511A E0               [24] 9035 	movx	a,@dptr
      00511B FE               [12] 9036 	mov	r6,a
      00511C A3               [24] 9037 	inc	dptr
      00511D E0               [24] 9038 	movx	a,@dptr
      00511E FF               [12] 9039 	mov	r7,a
      00511F 74 04            [12] 9040 	mov	a,#0x04
      005121 2D               [12] 9041 	add	a,r5
      005122 FD               [12] 9042 	mov	r5,a
      005123 74 00            [12] 9043 	mov	a,#0x00
      005125 3E               [12] 9044 	addc	a,r6
      005126 FE               [12] 9045 	mov	r6,a
      005127 74 02            [12] 9046 	mov	a,#0x02
      005129 2D               [12] 9047 	add	a,r5
      00512A FD               [12] 9048 	mov	r5,a
      00512B 74 00            [12] 9049 	mov	a,#0x00
      00512D 3E               [12] 9050 	addc	a,r6
      00512E FE               [12] 9051 	mov	r6,a
      00512F 8D 82            [24] 9052 	mov	dpl,r5
      005131 8E 83            [24] 9053 	mov	dph,r6
      005133 8F F0            [24] 9054 	mov	b,r7
      005135 12 7C 4D         [24] 9055 	lcall	__gptrget
      005138 FD               [12] 9056 	mov	r5,a
      005139 A3               [24] 9057 	inc	dptr
      00513A 12 7C 4D         [24] 9058 	lcall	__gptrget
      00513D FE               [12] 9059 	mov	r6,a
      00513E A3               [24] 9060 	inc	dptr
      00513F 12 7C 4D         [24] 9061 	lcall	__gptrget
      005142 FF               [12] 9062 	mov	r7,a
      005143 8D 82            [24] 9063 	mov	dpl,r5
      005145 8E 83            [24] 9064 	mov	dph,r6
      005147 8F F0            [24] 9065 	mov	b,r7
      005149 12 7C 4D         [24] 9066 	lcall	__gptrget
      00514C FD               [12] 9067 	mov	r5,a
      00514D A3               [24] 9068 	inc	dptr
      00514E 12 7C 4D         [24] 9069 	lcall	__gptrget
      005151 FE               [12] 9070 	mov	r6,a
      005152 90 0C 8D         [24] 9071 	mov	dptr,#_xNextTaskUnblockTime
      005155 ED               [12] 9072 	mov	a,r5
      005156 F0               [24] 9073 	movx	@dptr,a
      005157 EE               [12] 9074 	mov	a,r6
      005158 A3               [24] 9075 	inc	dptr
      005159 F0               [24] 9076 	movx	@dptr,a
      00515A                       9077 00104$:
                           002C16  9078 	C$tasks.c$4024$1_0$362 ==.
                                   9079 ;	tasks.c:4024: }
                           002C16  9080 	C$tasks.c$4024$1_0$362 ==.
                           002C16  9081 	XFtasks$prvResetNextTaskUnblockTime$0$0 ==.
      00515A 22               [24] 9082 	ret
                                   9083 ;------------------------------------------------------------
                                   9084 ;Allocation info for local variables in function 'uxTaskResetEventItemValue'
                                   9085 ;------------------------------------------------------------
                                   9086 ;uxReturn                  Allocated to stack - _bp +1
                                   9087 ;------------------------------------------------------------
                           002C17  9088 	G$uxTaskResetEventItemValue$0$0 ==.
                           002C17  9089 	C$tasks.c$4671$1_0$366 ==.
                                   9090 ;	tasks.c:4671: TickType_t uxTaskResetEventItemValue( void )
                                   9091 ;	-----------------------------------------
                                   9092 ;	 function uxTaskResetEventItemValue
                                   9093 ;	-----------------------------------------
      00515B                       9094 _uxTaskResetEventItemValue:
      00515B C0 0D            [24] 9095 	push	_bp
      00515D 85 81 0D         [24] 9096 	mov	_bp,sp
      005160 05 81            [12] 9097 	inc	sp
      005162 05 81            [12] 9098 	inc	sp
                           002C20  9099 	C$tasks.c$4675$1_0$366 ==.
                                   9100 ;	tasks.c:4675: uxReturn = listGET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ) );
      005164 90 0C 7F         [24] 9101 	mov	dptr,#_pxCurrentTCB
      005167 E0               [24] 9102 	movx	a,@dptr
      005168 FD               [12] 9103 	mov	r5,a
      005169 A3               [24] 9104 	inc	dptr
      00516A E0               [24] 9105 	movx	a,@dptr
      00516B FE               [12] 9106 	mov	r6,a
      00516C A3               [24] 9107 	inc	dptr
      00516D E0               [24] 9108 	movx	a,@dptr
      00516E FF               [12] 9109 	mov	r7,a
      00516F 74 11            [12] 9110 	mov	a,#0x11
      005171 2D               [12] 9111 	add	a,r5
      005172 FD               [12] 9112 	mov	r5,a
      005173 74 00            [12] 9113 	mov	a,#0x00
      005175 3E               [12] 9114 	addc	a,r6
      005176 FE               [12] 9115 	mov	r6,a
      005177 8D 82            [24] 9116 	mov	dpl,r5
      005179 8E 83            [24] 9117 	mov	dph,r6
      00517B 8F F0            [24] 9118 	mov	b,r7
      00517D A8 0D            [24] 9119 	mov	r0,_bp
      00517F 08               [12] 9120 	inc	r0
      005180 12 7C 4D         [24] 9121 	lcall	__gptrget
      005183 F6               [12] 9122 	mov	@r0,a
      005184 A3               [24] 9123 	inc	dptr
      005185 12 7C 4D         [24] 9124 	lcall	__gptrget
      005188 08               [12] 9125 	inc	r0
      005189 F6               [12] 9126 	mov	@r0,a
                           002C46  9127 	C$tasks.c$4679$1_0$366 ==.
                                   9128 ;	tasks.c:4679: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xEventListItem ), ( ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ) ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
      00518A 90 0C 7F         [24] 9129 	mov	dptr,#_pxCurrentTCB
      00518D E0               [24] 9130 	movx	a,@dptr
      00518E FB               [12] 9131 	mov	r3,a
      00518F A3               [24] 9132 	inc	dptr
      005190 E0               [24] 9133 	movx	a,@dptr
      005191 FC               [12] 9134 	mov	r4,a
      005192 A3               [24] 9135 	inc	dptr
      005193 E0               [24] 9136 	movx	a,@dptr
      005194 FF               [12] 9137 	mov	r7,a
      005195 74 11            [12] 9138 	mov	a,#0x11
      005197 2B               [12] 9139 	add	a,r3
      005198 FB               [12] 9140 	mov	r3,a
      005199 74 00            [12] 9141 	mov	a,#0x00
      00519B 3C               [12] 9142 	addc	a,r4
      00519C FC               [12] 9143 	mov	r4,a
      00519D 90 0C 7F         [24] 9144 	mov	dptr,#_pxCurrentTCB
      0051A0 E0               [24] 9145 	movx	a,@dptr
      0051A1 FA               [12] 9146 	mov	r2,a
      0051A2 A3               [24] 9147 	inc	dptr
      0051A3 E0               [24] 9148 	movx	a,@dptr
      0051A4 FD               [12] 9149 	mov	r5,a
      0051A5 A3               [24] 9150 	inc	dptr
      0051A6 E0               [24] 9151 	movx	a,@dptr
      0051A7 FE               [12] 9152 	mov	r6,a
      0051A8 74 1F            [12] 9153 	mov	a,#0x1f
      0051AA 2A               [12] 9154 	add	a,r2
      0051AB FA               [12] 9155 	mov	r2,a
      0051AC 74 00            [12] 9156 	mov	a,#0x00
      0051AE 3D               [12] 9157 	addc	a,r5
      0051AF FD               [12] 9158 	mov	r5,a
      0051B0 8A 82            [24] 9159 	mov	dpl,r2
      0051B2 8D 83            [24] 9160 	mov	dph,r5
      0051B4 8E F0            [24] 9161 	mov	b,r6
      0051B6 12 7C 4D         [24] 9162 	lcall	__gptrget
      0051B9 FA               [12] 9163 	mov	r2,a
      0051BA 7E 00            [12] 9164 	mov	r6,#0x00
      0051BC 74 04            [12] 9165 	mov	a,#0x04
      0051BE C3               [12] 9166 	clr	c
      0051BF 9A               [12] 9167 	subb	a,r2
      0051C0 FA               [12] 9168 	mov	r2,a
      0051C1 74 00            [12] 9169 	mov	a,#0x00
      0051C3 9E               [12] 9170 	subb	a,r6
      0051C4 FE               [12] 9171 	mov	r6,a
      0051C5 8B 82            [24] 9172 	mov	dpl,r3
      0051C7 8C 83            [24] 9173 	mov	dph,r4
      0051C9 8F F0            [24] 9174 	mov	b,r7
      0051CB EA               [12] 9175 	mov	a,r2
      0051CC 12 79 22         [24] 9176 	lcall	__gptrput
      0051CF A3               [24] 9177 	inc	dptr
      0051D0 EE               [12] 9178 	mov	a,r6
      0051D1 12 79 22         [24] 9179 	lcall	__gptrput
                           002C90  9180 	C$tasks.c$4681$1_0$366 ==.
                                   9181 ;	tasks.c:4681: return uxReturn;
      0051D4 A8 0D            [24] 9182 	mov	r0,_bp
      0051D6 08               [12] 9183 	inc	r0
      0051D7 86 82            [24] 9184 	mov	dpl,@r0
      0051D9 08               [12] 9185 	inc	r0
      0051DA 86 83            [24] 9186 	mov	dph,@r0
      0051DC                       9187 00101$:
                           002C98  9188 	C$tasks.c$4682$1_0$366 ==.
                                   9189 ;	tasks.c:4682: }
      0051DC 85 0D 81         [24] 9190 	mov	sp,_bp
      0051DF D0 0D            [24] 9191 	pop	_bp
                           002C9D  9192 	C$tasks.c$4682$1_0$366 ==.
                           002C9D  9193 	XG$uxTaskResetEventItemValue$0$0 ==.
      0051E1 22               [24] 9194 	ret
                                   9195 ;------------------------------------------------------------
                                   9196 ;Allocation info for local variables in function 'ulTaskGenericNotifyTake'
                                   9197 ;------------------------------------------------------------
                                   9198 ;xClearCountOnExit         Allocated to stack - _bp -3
                                   9199 ;xTicksToWait              Allocated to stack - _bp -5
                                   9200 ;uxIndexToWait             Allocated to stack - _bp +1
                                   9201 ;ulReturn                  Allocated to stack - _bp +5
                                   9202 ;sloc0                     Allocated to stack - _bp +2
                                   9203 ;------------------------------------------------------------
                           002C9E  9204 	G$ulTaskGenericNotifyTake$0$0 ==.
                           002C9E  9205 	C$tasks.c$4704$1_0$368 ==.
                                   9206 ;	tasks.c:4704: uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWait,
                                   9207 ;	-----------------------------------------
                                   9208 ;	 function ulTaskGenericNotifyTake
                                   9209 ;	-----------------------------------------
      0051E2                       9210 _ulTaskGenericNotifyTake:
      0051E2 C0 0D            [24] 9211 	push	_bp
      0051E4 85 81 0D         [24] 9212 	mov	_bp,sp
      0051E7 C0 82            [24] 9213 	push	dpl
      0051E9 E5 81            [12] 9214 	mov	a,sp
      0051EB 24 07            [12] 9215 	add	a,#0x07
      0051ED F5 81            [12] 9216 	mov	sp,a
                           002CAB  9217 	C$tasks.c$4712$1_0$368 ==.
                                   9218 ;	tasks.c:4712: taskENTER_CRITICAL();
      0051EF C0 E0            [24] 9219 	push ACC 
      0051F1 C0 A8            [24] 9220 	push IE 
                                   9221 ;	assignBit
      0051F3 C2 AF            [12] 9222 	clr	_EA
                           002CB1  9223 	C$tasks.c$4715$2_0$369 ==.
                                   9224 ;	tasks.c:4715: if( pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] == 0UL )
      0051F5 90 0C 7F         [24] 9225 	mov	dptr,#_pxCurrentTCB
      0051F8 E0               [24] 9226 	movx	a,@dptr
      0051F9 FC               [12] 9227 	mov	r4,a
      0051FA A3               [24] 9228 	inc	dptr
      0051FB E0               [24] 9229 	movx	a,@dptr
      0051FC FD               [12] 9230 	mov	r5,a
      0051FD A3               [24] 9231 	inc	dptr
      0051FE E0               [24] 9232 	movx	a,@dptr
      0051FF FE               [12] 9233 	mov	r6,a
      005200 74 2E            [12] 9234 	mov	a,#0x2e
      005202 2C               [12] 9235 	add	a,r4
      005203 FC               [12] 9236 	mov	r4,a
      005204 74 00            [12] 9237 	mov	a,#0x00
      005206 3D               [12] 9238 	addc	a,r5
      005207 FD               [12] 9239 	mov	r5,a
      005208 A8 0D            [24] 9240 	mov	r0,_bp
      00520A 08               [12] 9241 	inc	r0
      00520B E6               [12] 9242 	mov	a,@r0
      00520C 25 E0            [12] 9243 	add	a,acc
      00520E FB               [12] 9244 	mov	r3,a
      00520F EB               [12] 9245 	mov	a,r3
      005210 25 E0            [12] 9246 	add	a,acc
      005212 FB               [12] 9247 	mov	r3,a
      005213 EB               [12] 9248 	mov	a,r3
      005214 2C               [12] 9249 	add	a,r4
      005215 FC               [12] 9250 	mov	r4,a
      005216 74 00            [12] 9251 	mov	a,#0x00
      005218 3D               [12] 9252 	addc	a,r5
      005219 FD               [12] 9253 	mov	r5,a
      00521A 8C 82            [24] 9254 	mov	dpl,r4
      00521C 8D 83            [24] 9255 	mov	dph,r5
      00521E 8E F0            [24] 9256 	mov	b,r6
      005220 12 7C 4D         [24] 9257 	lcall	__gptrget
      005223 FC               [12] 9258 	mov	r4,a
      005224 A3               [24] 9259 	inc	dptr
      005225 12 7C 4D         [24] 9260 	lcall	__gptrget
      005228 FD               [12] 9261 	mov	r5,a
      005229 A3               [24] 9262 	inc	dptr
      00522A 12 7C 4D         [24] 9263 	lcall	__gptrget
      00522D FE               [12] 9264 	mov	r6,a
      00522E A3               [24] 9265 	inc	dptr
      00522F 12 7C 4D         [24] 9266 	lcall	__gptrget
      005232 FA               [12] 9267 	mov	r2,a
      005233 EC               [12] 9268 	mov	a,r4
      005234 4D               [12] 9269 	orl	a,r5
      005235 4E               [12] 9270 	orl	a,r6
      005236 4A               [12] 9271 	orl	a,r2
      005237 60 03            [24] 9272 	jz	00128$
      005239 02 52 8F         [24] 9273 	ljmp	00104$
      00523C                       9274 00128$:
                           002CF8  9275 	C$tasks.c$4718$3_0$370 ==.
                                   9276 ;	tasks.c:4718: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskWAITING_NOTIFICATION;
      00523C 90 0C 7F         [24] 9277 	mov	dptr,#_pxCurrentTCB
      00523F E0               [24] 9278 	movx	a,@dptr
      005240 FC               [12] 9279 	mov	r4,a
      005241 A3               [24] 9280 	inc	dptr
      005242 E0               [24] 9281 	movx	a,@dptr
      005243 FD               [12] 9282 	mov	r5,a
      005244 A3               [24] 9283 	inc	dptr
      005245 E0               [24] 9284 	movx	a,@dptr
      005246 FE               [12] 9285 	mov	r6,a
      005247 74 32            [12] 9286 	mov	a,#0x32
      005249 2C               [12] 9287 	add	a,r4
      00524A FC               [12] 9288 	mov	r4,a
      00524B 74 00            [12] 9289 	mov	a,#0x00
      00524D 3D               [12] 9290 	addc	a,r5
      00524E FD               [12] 9291 	mov	r5,a
      00524F A8 0D            [24] 9292 	mov	r0,_bp
      005251 08               [12] 9293 	inc	r0
      005252 E6               [12] 9294 	mov	a,@r0
      005253 2C               [12] 9295 	add	a,r4
      005254 FC               [12] 9296 	mov	r4,a
      005255 74 00            [12] 9297 	mov	a,#0x00
      005257 3D               [12] 9298 	addc	a,r5
      005258 FD               [12] 9299 	mov	r5,a
      005259 8C 82            [24] 9300 	mov	dpl,r4
      00525B 8D 83            [24] 9301 	mov	dph,r5
      00525D 8E F0            [24] 9302 	mov	b,r6
      00525F 74 01            [12] 9303 	mov	a,#0x01
      005261 12 79 22         [24] 9304 	lcall	__gptrput
                           002D20  9305 	C$tasks.c$4720$3_0$370 ==.
                                   9306 ;	tasks.c:4720: if( xTicksToWait > ( TickType_t ) 0 )
      005264 E5 0D            [12] 9307 	mov	a,_bp
      005266 24 FB            [12] 9308 	add	a,#0xfb
      005268 F8               [12] 9309 	mov	r0,a
      005269 E6               [12] 9310 	mov	a,@r0
      00526A 08               [12] 9311 	inc	r0
      00526B 46               [12] 9312 	orl	a,@r0
      00526C 70 03            [24] 9313 	jnz	00129$
      00526E 02 52 8F         [24] 9314 	ljmp	00104$
      005271                       9315 00129$:
                           002D2D  9316 	C$tasks.c$4722$4_0$371 ==.
                                   9317 ;	tasks.c:4722: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      005271 C0 03            [24] 9318 	push	ar3
      005273 74 01            [12] 9319 	mov	a,#0x01
      005275 C0 E0            [24] 9320 	push	acc
      005277 E5 0D            [12] 9321 	mov	a,_bp
      005279 24 FB            [12] 9322 	add	a,#0xfb
      00527B F8               [12] 9323 	mov	r0,a
      00527C 86 82            [24] 9324 	mov	dpl,@r0
      00527E 08               [12] 9325 	inc	r0
      00527F 86 83            [24] 9326 	mov	dph,@r0
      005281 12 6C 3A         [24] 9327 	lcall	_prvAddCurrentTaskToDelayedList
      005284 15 81            [12] 9328 	dec	sp
      005286 D0 03            [24] 9329 	pop	ar3
                           002D44  9330 	C$tasks.c$4729$4_0$371 ==.
                                   9331 ;	tasks.c:4729: portYIELD_WITHIN_API();
      005288 C0 03            [24] 9332 	push	ar3
      00528A 12 77 3C         [24] 9333 	lcall	_vPortYield
      00528D D0 03            [24] 9334 	pop	ar3
      00528F                       9335 00104$:
                           002D4B  9336 	C$tasks.c$4741$1_0$368 ==.
                                   9337 ;	tasks.c:4741: taskEXIT_CRITICAL();
      00528F D0 E0            [24] 9338 	pop ACC 
      005291 53 E0 80         [24] 9339 	anl	_ACC,#0x80
      005294 E5 E0            [12] 9340 	mov	a,_ACC
      005296 42 A8            [12] 9341 	orl	_IE,a
      005298 D0 E0            [24] 9342 	pop ACC 
                           002D56  9343 	C$tasks.c$4743$1_0$368 ==.
                                   9344 ;	tasks.c:4743: taskENTER_CRITICAL();
      00529A C0 E0            [24] 9345 	push ACC 
      00529C C0 A8            [24] 9346 	push IE 
                                   9347 ;	assignBit
      00529E C2 AF            [12] 9348 	clr	_EA
                           002D5C  9349 	C$tasks.c$4746$2_0$374 ==.
                                   9350 ;	tasks.c:4746: ulReturn = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
      0052A0 90 0C 7F         [24] 9351 	mov	dptr,#_pxCurrentTCB
      0052A3 E0               [24] 9352 	movx	a,@dptr
      0052A4 FE               [12] 9353 	mov	r6,a
      0052A5 A3               [24] 9354 	inc	dptr
      0052A6 E0               [24] 9355 	movx	a,@dptr
      0052A7 FC               [12] 9356 	mov	r4,a
      0052A8 A3               [24] 9357 	inc	dptr
      0052A9 E0               [24] 9358 	movx	a,@dptr
      0052AA FD               [12] 9359 	mov	r5,a
      0052AB 74 2E            [12] 9360 	mov	a,#0x2e
      0052AD 2E               [12] 9361 	add	a,r6
      0052AE FE               [12] 9362 	mov	r6,a
      0052AF 74 00            [12] 9363 	mov	a,#0x00
      0052B1 3C               [12] 9364 	addc	a,r4
      0052B2 FC               [12] 9365 	mov	r4,a
      0052B3 EB               [12] 9366 	mov	a,r3
      0052B4 2E               [12] 9367 	add	a,r6
      0052B5 FE               [12] 9368 	mov	r6,a
      0052B6 74 00            [12] 9369 	mov	a,#0x00
      0052B8 3C               [12] 9370 	addc	a,r4
      0052B9 FC               [12] 9371 	mov	r4,a
      0052BA 8E 82            [24] 9372 	mov	dpl,r6
      0052BC 8C 83            [24] 9373 	mov	dph,r4
      0052BE 8D F0            [24] 9374 	mov	b,r5
      0052C0 E5 0D            [12] 9375 	mov	a,_bp
      0052C2 24 05            [12] 9376 	add	a,#0x05
      0052C4 F8               [12] 9377 	mov	r0,a
      0052C5 12 7C 4D         [24] 9378 	lcall	__gptrget
      0052C8 F6               [12] 9379 	mov	@r0,a
      0052C9 A3               [24] 9380 	inc	dptr
      0052CA 12 7C 4D         [24] 9381 	lcall	__gptrget
      0052CD 08               [12] 9382 	inc	r0
      0052CE F6               [12] 9383 	mov	@r0,a
      0052CF A3               [24] 9384 	inc	dptr
      0052D0 12 7C 4D         [24] 9385 	lcall	__gptrget
      0052D3 08               [12] 9386 	inc	r0
      0052D4 F6               [12] 9387 	mov	@r0,a
      0052D5 A3               [24] 9388 	inc	dptr
      0052D6 12 7C 4D         [24] 9389 	lcall	__gptrget
      0052D9 08               [12] 9390 	inc	r0
      0052DA F6               [12] 9391 	mov	@r0,a
                           002D97  9392 	C$tasks.c$4748$2_0$374 ==.
                                   9393 ;	tasks.c:4748: if( ulReturn != 0UL )
      0052DB E5 0D            [12] 9394 	mov	a,_bp
      0052DD 24 05            [12] 9395 	add	a,#0x05
      0052DF F8               [12] 9396 	mov	r0,a
      0052E0 E6               [12] 9397 	mov	a,@r0
      0052E1 08               [12] 9398 	inc	r0
      0052E2 46               [12] 9399 	orl	a,@r0
      0052E3 08               [12] 9400 	inc	r0
      0052E4 46               [12] 9401 	orl	a,@r0
      0052E5 08               [12] 9402 	inc	r0
      0052E6 46               [12] 9403 	orl	a,@r0
      0052E7 70 03            [24] 9404 	jnz	00130$
      0052E9 02 53 84         [24] 9405 	ljmp	00109$
      0052EC                       9406 00130$:
                           002DA8  9407 	C$tasks.c$4750$3_0$375 ==.
                                   9408 ;	tasks.c:4750: if( xClearCountOnExit != pdFALSE )
      0052EC E5 0D            [12] 9409 	mov	a,_bp
      0052EE 24 FD            [12] 9410 	add	a,#0xfd
      0052F0 F8               [12] 9411 	mov	r0,a
      0052F1 E6               [12] 9412 	mov	a,@r0
      0052F2 70 03            [24] 9413 	jnz	00131$
      0052F4 02 53 2B         [24] 9414 	ljmp	00106$
      0052F7                       9415 00131$:
                           002DB3  9416 	C$tasks.c$4752$1_0$368 ==.
                                   9417 ;	tasks.c:4752: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = 0UL;
      0052F7 90 0C 7F         [24] 9418 	mov	dptr,#_pxCurrentTCB
      0052FA E0               [24] 9419 	movx	a,@dptr
      0052FB FD               [12] 9420 	mov	r5,a
      0052FC A3               [24] 9421 	inc	dptr
      0052FD E0               [24] 9422 	movx	a,@dptr
      0052FE FE               [12] 9423 	mov	r6,a
      0052FF A3               [24] 9424 	inc	dptr
      005300 E0               [24] 9425 	movx	a,@dptr
      005301 FF               [12] 9426 	mov	r7,a
      005302 74 2E            [12] 9427 	mov	a,#0x2e
      005304 2D               [12] 9428 	add	a,r5
      005305 FD               [12] 9429 	mov	r5,a
      005306 74 00            [12] 9430 	mov	a,#0x00
      005308 3E               [12] 9431 	addc	a,r6
      005309 FE               [12] 9432 	mov	r6,a
      00530A EB               [12] 9433 	mov	a,r3
      00530B 2D               [12] 9434 	add	a,r5
      00530C FD               [12] 9435 	mov	r5,a
      00530D 74 00            [12] 9436 	mov	a,#0x00
      00530F 3E               [12] 9437 	addc	a,r6
      005310 FE               [12] 9438 	mov	r6,a
      005311 8D 82            [24] 9439 	mov	dpl,r5
      005313 8E 83            [24] 9440 	mov	dph,r6
      005315 8F F0            [24] 9441 	mov	b,r7
      005317 74 00            [12] 9442 	mov	a,#0x00
      005319 12 79 22         [24] 9443 	lcall	__gptrput
      00531C A3               [24] 9444 	inc	dptr
      00531D 12 79 22         [24] 9445 	lcall	__gptrput
      005320 A3               [24] 9446 	inc	dptr
      005321 12 79 22         [24] 9447 	lcall	__gptrput
      005324 A3               [24] 9448 	inc	dptr
      005325 12 79 22         [24] 9449 	lcall	__gptrput
      005328 02 53 84         [24] 9450 	ljmp	00109$
      00532B                       9451 00106$:
                           002DE7  9452 	C$tasks.c$4756$4_0$377 ==.
                                   9453 ;	tasks.c:4756: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] = ulReturn - ( uint32_t ) 1;
      00532B 90 0C 7F         [24] 9454 	mov	dptr,#_pxCurrentTCB
      00532E E0               [24] 9455 	movx	a,@dptr
      00532F FC               [12] 9456 	mov	r4,a
      005330 A3               [24] 9457 	inc	dptr
      005331 E0               [24] 9458 	movx	a,@dptr
      005332 FD               [12] 9459 	mov	r5,a
      005333 A3               [24] 9460 	inc	dptr
      005334 E0               [24] 9461 	movx	a,@dptr
      005335 FE               [12] 9462 	mov	r6,a
      005336 74 2E            [12] 9463 	mov	a,#0x2e
      005338 2C               [12] 9464 	add	a,r4
      005339 FC               [12] 9465 	mov	r4,a
      00533A 74 00            [12] 9466 	mov	a,#0x00
      00533C 3D               [12] 9467 	addc	a,r5
      00533D FD               [12] 9468 	mov	r5,a
      00533E A8 0D            [24] 9469 	mov	r0,_bp
      005340 08               [12] 9470 	inc	r0
      005341 08               [12] 9471 	inc	r0
      005342 EB               [12] 9472 	mov	a,r3
      005343 2C               [12] 9473 	add	a,r4
      005344 F6               [12] 9474 	mov	@r0,a
      005345 74 00            [12] 9475 	mov	a,#0x00
      005347 3D               [12] 9476 	addc	a,r5
      005348 08               [12] 9477 	inc	r0
      005349 F6               [12] 9478 	mov	@r0,a
      00534A 08               [12] 9479 	inc	r0
      00534B A6 06            [24] 9480 	mov	@r0,ar6
      00534D E5 0D            [12] 9481 	mov	a,_bp
      00534F 24 05            [12] 9482 	add	a,#0x05
      005351 F8               [12] 9483 	mov	r0,a
      005352 E6               [12] 9484 	mov	a,@r0
      005353 24 FF            [12] 9485 	add	a,#0xff
      005355 FA               [12] 9486 	mov	r2,a
      005356 08               [12] 9487 	inc	r0
      005357 E6               [12] 9488 	mov	a,@r0
      005358 34 FF            [12] 9489 	addc	a,#0xff
      00535A FB               [12] 9490 	mov	r3,a
      00535B 08               [12] 9491 	inc	r0
      00535C E6               [12] 9492 	mov	a,@r0
      00535D 34 FF            [12] 9493 	addc	a,#0xff
      00535F FE               [12] 9494 	mov	r6,a
      005360 08               [12] 9495 	inc	r0
      005361 E6               [12] 9496 	mov	a,@r0
      005362 34 FF            [12] 9497 	addc	a,#0xff
      005364 FF               [12] 9498 	mov	r7,a
      005365 A8 0D            [24] 9499 	mov	r0,_bp
      005367 08               [12] 9500 	inc	r0
      005368 08               [12] 9501 	inc	r0
      005369 86 82            [24] 9502 	mov	dpl,@r0
      00536B 08               [12] 9503 	inc	r0
      00536C 86 83            [24] 9504 	mov	dph,@r0
      00536E 08               [12] 9505 	inc	r0
      00536F 86 F0            [24] 9506 	mov	b,@r0
      005371 EA               [12] 9507 	mov	a,r2
      005372 12 79 22         [24] 9508 	lcall	__gptrput
      005375 A3               [24] 9509 	inc	dptr
      005376 EB               [12] 9510 	mov	a,r3
      005377 12 79 22         [24] 9511 	lcall	__gptrput
      00537A A3               [24] 9512 	inc	dptr
      00537B EE               [12] 9513 	mov	a,r6
      00537C 12 79 22         [24] 9514 	lcall	__gptrput
      00537F A3               [24] 9515 	inc	dptr
      005380 EF               [12] 9516 	mov	a,r7
      005381 12 79 22         [24] 9517 	lcall	__gptrput
      005384                       9518 00109$:
                           002E40  9519 	C$tasks.c$4764$2_0$374 ==.
                                   9520 ;	tasks.c:4764: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskNOT_WAITING_NOTIFICATION;
      005384 90 0C 7F         [24] 9521 	mov	dptr,#_pxCurrentTCB
      005387 E0               [24] 9522 	movx	a,@dptr
      005388 FD               [12] 9523 	mov	r5,a
      005389 A3               [24] 9524 	inc	dptr
      00538A E0               [24] 9525 	movx	a,@dptr
      00538B FE               [12] 9526 	mov	r6,a
      00538C A3               [24] 9527 	inc	dptr
      00538D E0               [24] 9528 	movx	a,@dptr
      00538E FF               [12] 9529 	mov	r7,a
      00538F 74 32            [12] 9530 	mov	a,#0x32
      005391 2D               [12] 9531 	add	a,r5
      005392 FD               [12] 9532 	mov	r5,a
      005393 74 00            [12] 9533 	mov	a,#0x00
      005395 3E               [12] 9534 	addc	a,r6
      005396 FE               [12] 9535 	mov	r6,a
      005397 A8 0D            [24] 9536 	mov	r0,_bp
      005399 08               [12] 9537 	inc	r0
      00539A E6               [12] 9538 	mov	a,@r0
      00539B 2D               [12] 9539 	add	a,r5
      00539C FD               [12] 9540 	mov	r5,a
      00539D 74 00            [12] 9541 	mov	a,#0x00
      00539F 3E               [12] 9542 	addc	a,r6
      0053A0 FE               [12] 9543 	mov	r6,a
      0053A1 8D 82            [24] 9544 	mov	dpl,r5
      0053A3 8E 83            [24] 9545 	mov	dph,r6
      0053A5 8F F0            [24] 9546 	mov	b,r7
      0053A7 74 00            [12] 9547 	mov	a,#0x00
      0053A9 12 79 22         [24] 9548 	lcall	__gptrput
                           002E68  9549 	C$tasks.c$4766$1_0$368 ==.
                                   9550 ;	tasks.c:4766: taskEXIT_CRITICAL();
      0053AC D0 E0            [24] 9551 	pop ACC 
      0053AE 53 E0 80         [24] 9552 	anl	_ACC,#0x80
      0053B1 E5 E0            [12] 9553 	mov	a,_ACC
      0053B3 42 A8            [12] 9554 	orl	_IE,a
      0053B5 D0 E0            [24] 9555 	pop ACC 
                           002E73  9556 	C$tasks.c$4768$1_0$368 ==.
                                   9557 ;	tasks.c:4768: return ulReturn;
      0053B7 E5 0D            [12] 9558 	mov	a,_bp
      0053B9 24 05            [12] 9559 	add	a,#0x05
      0053BB F8               [12] 9560 	mov	r0,a
      0053BC 86 82            [24] 9561 	mov	dpl,@r0
      0053BE 08               [12] 9562 	inc	r0
      0053BF 86 83            [24] 9563 	mov	dph,@r0
      0053C1 08               [12] 9564 	inc	r0
      0053C2 86 F0            [24] 9565 	mov	b,@r0
      0053C4 08               [12] 9566 	inc	r0
      0053C5 E6               [12] 9567 	mov	a,@r0
      0053C6                       9568 00110$:
                           002E82  9569 	C$tasks.c$4769$1_0$368 ==.
                                   9570 ;	tasks.c:4769: }
      0053C6 85 0D 81         [24] 9571 	mov	sp,_bp
      0053C9 D0 0D            [24] 9572 	pop	_bp
                           002E87  9573 	C$tasks.c$4769$1_0$368 ==.
                           002E87  9574 	XG$ulTaskGenericNotifyTake$0$0 ==.
      0053CB 22               [24] 9575 	ret
                                   9576 ;------------------------------------------------------------
                                   9577 ;Allocation info for local variables in function 'xTaskGenericNotifyWait'
                                   9578 ;------------------------------------------------------------
                                   9579 ;ulBitsToClearOnEntry      Allocated to stack - _bp -6
                                   9580 ;ulBitsToClearOnExit       Allocated to stack - _bp -10
                                   9581 ;pulNotificationValue      Allocated to stack - _bp -13
                                   9582 ;xTicksToWait              Allocated to stack - _bp -15
                                   9583 ;uxIndexToWait             Allocated to stack - _bp +1
                                   9584 ;xReturn                   Allocated to registers r7 
                                   9585 ;sloc0                     Allocated to stack - _bp +2
                                   9586 ;sloc1                     Allocated to stack - _bp +5
                                   9587 ;sloc2                     Allocated to stack - _bp +12
                                   9588 ;sloc3                     Allocated to stack - _bp +8
                                   9589 ;------------------------------------------------------------
                           002E88  9590 	G$xTaskGenericNotifyWait$0$0 ==.
                           002E88  9591 	C$tasks.c$4776$1_0$380 ==.
                                   9592 ;	tasks.c:4776: BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWait,
                                   9593 ;	-----------------------------------------
                                   9594 ;	 function xTaskGenericNotifyWait
                                   9595 ;	-----------------------------------------
      0053CC                       9596 _xTaskGenericNotifyWait:
      0053CC C0 0D            [24] 9597 	push	_bp
      0053CE 85 81 0D         [24] 9598 	mov	_bp,sp
      0053D1 C0 82            [24] 9599 	push	dpl
      0053D3 E5 81            [12] 9600 	mov	a,sp
      0053D5 24 0E            [12] 9601 	add	a,#0x0e
      0053D7 F5 81            [12] 9602 	mov	sp,a
                           002E95  9603 	C$tasks.c$4786$1_0$380 ==.
                                   9604 ;	tasks.c:4786: taskENTER_CRITICAL();
      0053D9 C0 E0            [24] 9605 	push ACC 
      0053DB C0 A8            [24] 9606 	push IE 
                                   9607 ;	assignBit
      0053DD C2 AF            [12] 9608 	clr	_EA
                           002E9B  9609 	C$tasks.c$4789$2_0$381 ==.
                                   9610 ;	tasks.c:4789: if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
      0053DF 90 0C 7F         [24] 9611 	mov	dptr,#_pxCurrentTCB
      0053E2 E0               [24] 9612 	movx	a,@dptr
      0053E3 FC               [12] 9613 	mov	r4,a
      0053E4 A3               [24] 9614 	inc	dptr
      0053E5 E0               [24] 9615 	movx	a,@dptr
      0053E6 FD               [12] 9616 	mov	r5,a
      0053E7 A3               [24] 9617 	inc	dptr
      0053E8 E0               [24] 9618 	movx	a,@dptr
      0053E9 FE               [12] 9619 	mov	r6,a
      0053EA 74 32            [12] 9620 	mov	a,#0x32
      0053EC 2C               [12] 9621 	add	a,r4
      0053ED FC               [12] 9622 	mov	r4,a
      0053EE 74 00            [12] 9623 	mov	a,#0x00
      0053F0 3D               [12] 9624 	addc	a,r5
      0053F1 FD               [12] 9625 	mov	r5,a
      0053F2 A8 0D            [24] 9626 	mov	r0,_bp
      0053F4 08               [12] 9627 	inc	r0
      0053F5 E6               [12] 9628 	mov	a,@r0
      0053F6 2C               [12] 9629 	add	a,r4
      0053F7 FC               [12] 9630 	mov	r4,a
      0053F8 74 00            [12] 9631 	mov	a,#0x00
      0053FA 3D               [12] 9632 	addc	a,r5
      0053FB FD               [12] 9633 	mov	r5,a
      0053FC 8C 82            [24] 9634 	mov	dpl,r4
      0053FE 8D 83            [24] 9635 	mov	dph,r5
      005400 8E F0            [24] 9636 	mov	b,r6
      005402 12 7C 4D         [24] 9637 	lcall	__gptrget
      005405 FC               [12] 9638 	mov	r4,a
      005406 BC 02 03         [24] 9639 	cjne	r4,#0x02,00128$
      005409 02 55 06         [24] 9640 	ljmp	00104$
      00540C                       9641 00128$:
                           002EC8  9642 	C$tasks.c$4794$3_0$382 ==.
                                   9643 ;	tasks.c:4794: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnEntry;
      00540C 90 0C 7F         [24] 9644 	mov	dptr,#_pxCurrentTCB
      00540F E0               [24] 9645 	movx	a,@dptr
      005410 FC               [12] 9646 	mov	r4,a
      005411 A3               [24] 9647 	inc	dptr
      005412 E0               [24] 9648 	movx	a,@dptr
      005413 FD               [12] 9649 	mov	r5,a
      005414 A3               [24] 9650 	inc	dptr
      005415 E0               [24] 9651 	movx	a,@dptr
      005416 FE               [12] 9652 	mov	r6,a
      005417 74 2E            [12] 9653 	mov	a,#0x2e
      005419 2C               [12] 9654 	add	a,r4
      00541A FC               [12] 9655 	mov	r4,a
      00541B 74 00            [12] 9656 	mov	a,#0x00
      00541D 3D               [12] 9657 	addc	a,r5
      00541E FD               [12] 9658 	mov	r5,a
      00541F A8 0D            [24] 9659 	mov	r0,_bp
      005421 08               [12] 9660 	inc	r0
      005422 E6               [12] 9661 	mov	a,@r0
      005423 25 E0            [12] 9662 	add	a,acc
      005425 FB               [12] 9663 	mov	r3,a
      005426 EB               [12] 9664 	mov	a,r3
      005427 25 E0            [12] 9665 	add	a,acc
      005429 FB               [12] 9666 	mov	r3,a
      00542A A8 0D            [24] 9667 	mov	r0,_bp
      00542C 08               [12] 9668 	inc	r0
      00542D 08               [12] 9669 	inc	r0
      00542E EB               [12] 9670 	mov	a,r3
      00542F 2C               [12] 9671 	add	a,r4
      005430 F6               [12] 9672 	mov	@r0,a
      005431 74 00            [12] 9673 	mov	a,#0x00
      005433 3D               [12] 9674 	addc	a,r5
      005434 08               [12] 9675 	inc	r0
      005435 F6               [12] 9676 	mov	@r0,a
      005436 08               [12] 9677 	inc	r0
      005437 A6 06            [24] 9678 	mov	@r0,ar6
      005439 90 0C 7F         [24] 9679 	mov	dptr,#_pxCurrentTCB
      00543C E0               [24] 9680 	movx	a,@dptr
      00543D FA               [12] 9681 	mov	r2,a
      00543E A3               [24] 9682 	inc	dptr
      00543F E0               [24] 9683 	movx	a,@dptr
      005440 FF               [12] 9684 	mov	r7,a
      005441 A3               [24] 9685 	inc	dptr
      005442 E0               [24] 9686 	movx	a,@dptr
      005443 FE               [12] 9687 	mov	r6,a
      005444 74 2E            [12] 9688 	mov	a,#0x2e
      005446 2A               [12] 9689 	add	a,r2
      005447 FA               [12] 9690 	mov	r2,a
      005448 74 00            [12] 9691 	mov	a,#0x00
      00544A 3F               [12] 9692 	addc	a,r7
      00544B FF               [12] 9693 	mov	r7,a
      00544C EB               [12] 9694 	mov	a,r3
      00544D 2A               [12] 9695 	add	a,r2
      00544E FD               [12] 9696 	mov	r5,a
      00544F 74 00            [12] 9697 	mov	a,#0x00
      005451 3F               [12] 9698 	addc	a,r7
      005452 FF               [12] 9699 	mov	r7,a
      005453 E5 0D            [12] 9700 	mov	a,_bp
      005455 24 FA            [12] 9701 	add	a,#0xfa
      005457 F8               [12] 9702 	mov	r0,a
      005458 E5 0D            [12] 9703 	mov	a,_bp
      00545A 24 0C            [12] 9704 	add	a,#0x0c
      00545C F9               [12] 9705 	mov	r1,a
      00545D E6               [12] 9706 	mov	a,@r0
      00545E F4               [12] 9707 	cpl	a
      00545F F7               [12] 9708 	mov	@r1,a
      005460 08               [12] 9709 	inc	r0
      005461 E6               [12] 9710 	mov	a,@r0
      005462 F4               [12] 9711 	cpl	a
      005463 09               [12] 9712 	inc	r1
      005464 F7               [12] 9713 	mov	@r1,a
      005465 08               [12] 9714 	inc	r0
      005466 E6               [12] 9715 	mov	a,@r0
      005467 F4               [12] 9716 	cpl	a
      005468 09               [12] 9717 	inc	r1
      005469 F7               [12] 9718 	mov	@r1,a
      00546A 08               [12] 9719 	inc	r0
      00546B E6               [12] 9720 	mov	a,@r0
      00546C F4               [12] 9721 	cpl	a
      00546D 09               [12] 9722 	inc	r1
      00546E F7               [12] 9723 	mov	@r1,a
      00546F 8D 82            [24] 9724 	mov	dpl,r5
      005471 8F 83            [24] 9725 	mov	dph,r7
      005473 8E F0            [24] 9726 	mov	b,r6
      005475 12 7C 4D         [24] 9727 	lcall	__gptrget
      005478 FC               [12] 9728 	mov	r4,a
      005479 A3               [24] 9729 	inc	dptr
      00547A 12 7C 4D         [24] 9730 	lcall	__gptrget
      00547D FB               [12] 9731 	mov	r3,a
      00547E A3               [24] 9732 	inc	dptr
      00547F 12 7C 4D         [24] 9733 	lcall	__gptrget
      005482 FE               [12] 9734 	mov	r6,a
      005483 A3               [24] 9735 	inc	dptr
      005484 12 7C 4D         [24] 9736 	lcall	__gptrget
      005487 FF               [12] 9737 	mov	r7,a
      005488 E5 0D            [12] 9738 	mov	a,_bp
      00548A 24 0C            [12] 9739 	add	a,#0x0c
      00548C F8               [12] 9740 	mov	r0,a
      00548D E6               [12] 9741 	mov	a,@r0
      00548E 52 04            [12] 9742 	anl	ar4,a
      005490 08               [12] 9743 	inc	r0
      005491 E6               [12] 9744 	mov	a,@r0
      005492 52 03            [12] 9745 	anl	ar3,a
      005494 08               [12] 9746 	inc	r0
      005495 E6               [12] 9747 	mov	a,@r0
      005496 52 06            [12] 9748 	anl	ar6,a
      005498 08               [12] 9749 	inc	r0
      005499 E6               [12] 9750 	mov	a,@r0
      00549A 52 07            [12] 9751 	anl	ar7,a
      00549C A8 0D            [24] 9752 	mov	r0,_bp
      00549E 08               [12] 9753 	inc	r0
      00549F 08               [12] 9754 	inc	r0
      0054A0 86 82            [24] 9755 	mov	dpl,@r0
      0054A2 08               [12] 9756 	inc	r0
      0054A3 86 83            [24] 9757 	mov	dph,@r0
      0054A5 08               [12] 9758 	inc	r0
      0054A6 86 F0            [24] 9759 	mov	b,@r0
      0054A8 EC               [12] 9760 	mov	a,r4
      0054A9 12 79 22         [24] 9761 	lcall	__gptrput
      0054AC A3               [24] 9762 	inc	dptr
      0054AD EB               [12] 9763 	mov	a,r3
      0054AE 12 79 22         [24] 9764 	lcall	__gptrput
      0054B1 A3               [24] 9765 	inc	dptr
      0054B2 EE               [12] 9766 	mov	a,r6
      0054B3 12 79 22         [24] 9767 	lcall	__gptrput
      0054B6 A3               [24] 9768 	inc	dptr
      0054B7 EF               [12] 9769 	mov	a,r7
      0054B8 12 79 22         [24] 9770 	lcall	__gptrput
                           002F77  9771 	C$tasks.c$4797$3_0$382 ==.
                                   9772 ;	tasks.c:4797: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskWAITING_NOTIFICATION;
      0054BB 90 0C 7F         [24] 9773 	mov	dptr,#_pxCurrentTCB
      0054BE E0               [24] 9774 	movx	a,@dptr
      0054BF FD               [12] 9775 	mov	r5,a
      0054C0 A3               [24] 9776 	inc	dptr
      0054C1 E0               [24] 9777 	movx	a,@dptr
      0054C2 FE               [12] 9778 	mov	r6,a
      0054C3 A3               [24] 9779 	inc	dptr
      0054C4 E0               [24] 9780 	movx	a,@dptr
      0054C5 FF               [12] 9781 	mov	r7,a
      0054C6 74 32            [12] 9782 	mov	a,#0x32
      0054C8 2D               [12] 9783 	add	a,r5
      0054C9 FD               [12] 9784 	mov	r5,a
      0054CA 74 00            [12] 9785 	mov	a,#0x00
      0054CC 3E               [12] 9786 	addc	a,r6
      0054CD FE               [12] 9787 	mov	r6,a
      0054CE A8 0D            [24] 9788 	mov	r0,_bp
      0054D0 08               [12] 9789 	inc	r0
      0054D1 E6               [12] 9790 	mov	a,@r0
      0054D2 2D               [12] 9791 	add	a,r5
      0054D3 FD               [12] 9792 	mov	r5,a
      0054D4 74 00            [12] 9793 	mov	a,#0x00
      0054D6 3E               [12] 9794 	addc	a,r6
      0054D7 FE               [12] 9795 	mov	r6,a
      0054D8 8D 82            [24] 9796 	mov	dpl,r5
      0054DA 8E 83            [24] 9797 	mov	dph,r6
      0054DC 8F F0            [24] 9798 	mov	b,r7
      0054DE 74 01            [12] 9799 	mov	a,#0x01
      0054E0 12 79 22         [24] 9800 	lcall	__gptrput
                           002F9F  9801 	C$tasks.c$4799$3_0$382 ==.
                                   9802 ;	tasks.c:4799: if( xTicksToWait > ( TickType_t ) 0 )
      0054E3 E5 0D            [12] 9803 	mov	a,_bp
      0054E5 24 F1            [12] 9804 	add	a,#0xf1
      0054E7 F8               [12] 9805 	mov	r0,a
      0054E8 E6               [12] 9806 	mov	a,@r0
      0054E9 08               [12] 9807 	inc	r0
      0054EA 46               [12] 9808 	orl	a,@r0
      0054EB 70 03            [24] 9809 	jnz	00129$
      0054ED 02 55 06         [24] 9810 	ljmp	00104$
      0054F0                       9811 00129$:
                           002FAC  9812 	C$tasks.c$4801$4_0$383 ==.
                                   9813 ;	tasks.c:4801: prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
      0054F0 74 01            [12] 9814 	mov	a,#0x01
      0054F2 C0 E0            [24] 9815 	push	acc
      0054F4 E5 0D            [12] 9816 	mov	a,_bp
      0054F6 24 F1            [12] 9817 	add	a,#0xf1
      0054F8 F8               [12] 9818 	mov	r0,a
      0054F9 86 82            [24] 9819 	mov	dpl,@r0
      0054FB 08               [12] 9820 	inc	r0
      0054FC 86 83            [24] 9821 	mov	dph,@r0
      0054FE 12 6C 3A         [24] 9822 	lcall	_prvAddCurrentTaskToDelayedList
      005501 15 81            [12] 9823 	dec	sp
                           002FBF  9824 	C$tasks.c$4808$4_0$383 ==.
                                   9825 ;	tasks.c:4808: portYIELD_WITHIN_API();
      005503 12 77 3C         [24] 9826 	lcall	_vPortYield
      005506                       9827 00104$:
                           002FC2  9828 	C$tasks.c$4820$1_0$380 ==.
                                   9829 ;	tasks.c:4820: taskEXIT_CRITICAL();
      005506 D0 E0            [24] 9830 	pop ACC 
      005508 53 E0 80         [24] 9831 	anl	_ACC,#0x80
      00550B E5 E0            [12] 9832 	mov	a,_ACC
      00550D 42 A8            [12] 9833 	orl	_IE,a
      00550F D0 E0            [24] 9834 	pop ACC 
                           002FCD  9835 	C$tasks.c$4822$1_0$380 ==.
                                   9836 ;	tasks.c:4822: taskENTER_CRITICAL();
      005511 C0 E0            [24] 9837 	push ACC 
      005513 C0 A8            [24] 9838 	push IE 
                                   9839 ;	assignBit
      005515 C2 AF            [12] 9840 	clr	_EA
                           002FD3  9841 	C$tasks.c$4826$2_0$386 ==.
                                   9842 ;	tasks.c:4826: if( pulNotificationValue != NULL )
      005517 E5 0D            [12] 9843 	mov	a,_bp
      005519 24 F3            [12] 9844 	add	a,#0xf3
      00551B F8               [12] 9845 	mov	r0,a
      00551C E6               [12] 9846 	mov	a,@r0
      00551D 08               [12] 9847 	inc	r0
      00551E 46               [12] 9848 	orl	a,@r0
      00551F 70 03            [24] 9849 	jnz	00130$
      005521 02 55 9A         [24] 9850 	ljmp	00106$
      005524                       9851 00130$:
                           002FE0  9852 	C$tasks.c$4830$3_0$387 ==.
                                   9853 ;	tasks.c:4830: *pulNotificationValue = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
      005524 E5 0D            [12] 9854 	mov	a,_bp
      005526 24 F3            [12] 9855 	add	a,#0xf3
      005528 F8               [12] 9856 	mov	r0,a
      005529 E5 0D            [12] 9857 	mov	a,_bp
      00552B 24 05            [12] 9858 	add	a,#0x05
      00552D F9               [12] 9859 	mov	r1,a
      00552E E6               [12] 9860 	mov	a,@r0
      00552F F7               [12] 9861 	mov	@r1,a
      005530 08               [12] 9862 	inc	r0
      005531 E6               [12] 9863 	mov	a,@r0
      005532 09               [12] 9864 	inc	r1
      005533 F7               [12] 9865 	mov	@r1,a
      005534 08               [12] 9866 	inc	r0
      005535 E6               [12] 9867 	mov	a,@r0
      005536 09               [12] 9868 	inc	r1
      005537 F7               [12] 9869 	mov	@r1,a
      005538 90 0C 7F         [24] 9870 	mov	dptr,#_pxCurrentTCB
      00553B E0               [24] 9871 	movx	a,@dptr
      00553C FA               [12] 9872 	mov	r2,a
      00553D A3               [24] 9873 	inc	dptr
      00553E E0               [24] 9874 	movx	a,@dptr
      00553F FB               [12] 9875 	mov	r3,a
      005540 A3               [24] 9876 	inc	dptr
      005541 E0               [24] 9877 	movx	a,@dptr
      005542 FC               [12] 9878 	mov	r4,a
      005543 74 2E            [12] 9879 	mov	a,#0x2e
      005545 2A               [12] 9880 	add	a,r2
      005546 FF               [12] 9881 	mov	r7,a
      005547 74 00            [12] 9882 	mov	a,#0x00
      005549 3B               [12] 9883 	addc	a,r3
      00554A FE               [12] 9884 	mov	r6,a
      00554B 8C 05            [24] 9885 	mov	ar5,r4
      00554D A8 0D            [24] 9886 	mov	r0,_bp
      00554F 08               [12] 9887 	inc	r0
      005550 E6               [12] 9888 	mov	a,@r0
      005551 25 E0            [12] 9889 	add	a,acc
      005553 FC               [12] 9890 	mov	r4,a
      005554 EC               [12] 9891 	mov	a,r4
      005555 25 E0            [12] 9892 	add	a,acc
      005557 FC               [12] 9893 	mov	r4,a
      005558 EC               [12] 9894 	mov	a,r4
      005559 2F               [12] 9895 	add	a,r7
      00555A FA               [12] 9896 	mov	r2,a
      00555B 74 00            [12] 9897 	mov	a,#0x00
      00555D 3E               [12] 9898 	addc	a,r6
      00555E FB               [12] 9899 	mov	r3,a
      00555F 8D 04            [24] 9900 	mov	ar4,r5
      005561 8A 82            [24] 9901 	mov	dpl,r2
      005563 8B 83            [24] 9902 	mov	dph,r3
      005565 8C F0            [24] 9903 	mov	b,r4
      005567 12 7C 4D         [24] 9904 	lcall	__gptrget
      00556A FA               [12] 9905 	mov	r2,a
      00556B A3               [24] 9906 	inc	dptr
      00556C 12 7C 4D         [24] 9907 	lcall	__gptrget
      00556F FB               [12] 9908 	mov	r3,a
      005570 A3               [24] 9909 	inc	dptr
      005571 12 7C 4D         [24] 9910 	lcall	__gptrget
      005574 FC               [12] 9911 	mov	r4,a
      005575 A3               [24] 9912 	inc	dptr
      005576 12 7C 4D         [24] 9913 	lcall	__gptrget
      005579 FF               [12] 9914 	mov	r7,a
      00557A E5 0D            [12] 9915 	mov	a,_bp
      00557C 24 05            [12] 9916 	add	a,#0x05
      00557E F8               [12] 9917 	mov	r0,a
      00557F 86 82            [24] 9918 	mov	dpl,@r0
      005581 08               [12] 9919 	inc	r0
      005582 86 83            [24] 9920 	mov	dph,@r0
      005584 08               [12] 9921 	inc	r0
      005585 86 F0            [24] 9922 	mov	b,@r0
      005587 EA               [12] 9923 	mov	a,r2
      005588 12 79 22         [24] 9924 	lcall	__gptrput
      00558B A3               [24] 9925 	inc	dptr
      00558C EB               [12] 9926 	mov	a,r3
      00558D 12 79 22         [24] 9927 	lcall	__gptrput
      005590 A3               [24] 9928 	inc	dptr
      005591 EC               [12] 9929 	mov	a,r4
      005592 12 79 22         [24] 9930 	lcall	__gptrput
      005595 A3               [24] 9931 	inc	dptr
      005596 EF               [12] 9932 	mov	a,r7
      005597 12 79 22         [24] 9933 	lcall	__gptrput
      00559A                       9934 00106$:
                           003056  9935 	C$tasks.c$4837$2_0$386 ==.
                                   9936 ;	tasks.c:4837: if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
      00559A 90 0C 7F         [24] 9937 	mov	dptr,#_pxCurrentTCB
      00559D E0               [24] 9938 	movx	a,@dptr
      00559E FD               [12] 9939 	mov	r5,a
      00559F A3               [24] 9940 	inc	dptr
      0055A0 E0               [24] 9941 	movx	a,@dptr
      0055A1 FE               [12] 9942 	mov	r6,a
      0055A2 A3               [24] 9943 	inc	dptr
      0055A3 E0               [24] 9944 	movx	a,@dptr
      0055A4 FF               [12] 9945 	mov	r7,a
      0055A5 74 32            [12] 9946 	mov	a,#0x32
      0055A7 2D               [12] 9947 	add	a,r5
      0055A8 FD               [12] 9948 	mov	r5,a
      0055A9 74 00            [12] 9949 	mov	a,#0x00
      0055AB 3E               [12] 9950 	addc	a,r6
      0055AC FE               [12] 9951 	mov	r6,a
      0055AD A8 0D            [24] 9952 	mov	r0,_bp
      0055AF 08               [12] 9953 	inc	r0
      0055B0 E6               [12] 9954 	mov	a,@r0
      0055B1 2D               [12] 9955 	add	a,r5
      0055B2 FD               [12] 9956 	mov	r5,a
      0055B3 74 00            [12] 9957 	mov	a,#0x00
      0055B5 3E               [12] 9958 	addc	a,r6
      0055B6 FE               [12] 9959 	mov	r6,a
      0055B7 8D 82            [24] 9960 	mov	dpl,r5
      0055B9 8E 83            [24] 9961 	mov	dph,r6
      0055BB 8F F0            [24] 9962 	mov	b,r7
      0055BD 12 7C 4D         [24] 9963 	lcall	__gptrget
      0055C0 FD               [12] 9964 	mov	r5,a
      0055C1 BD 02 03         [24] 9965 	cjne	r5,#0x02,00131$
      0055C4 02 55 CC         [24] 9966 	ljmp	00108$
      0055C7                       9967 00131$:
                           003083  9968 	C$tasks.c$4840$3_0$388 ==.
                                   9969 ;	tasks.c:4840: xReturn = pdFALSE;
      0055C7 7F 00            [12] 9970 	mov	r7,#0x00
      0055C9 02 56 7F         [24] 9971 	ljmp	00109$
      0055CC                       9972 00108$:
                           003088  9973 	C$tasks.c$4846$3_0$389 ==.
                                   9974 ;	tasks.c:4846: pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnExit;
      0055CC 90 0C 7F         [24] 9975 	mov	dptr,#_pxCurrentTCB
      0055CF E0               [24] 9976 	movx	a,@dptr
      0055D0 FC               [12] 9977 	mov	r4,a
      0055D1 A3               [24] 9978 	inc	dptr
      0055D2 E0               [24] 9979 	movx	a,@dptr
      0055D3 FD               [12] 9980 	mov	r5,a
      0055D4 A3               [24] 9981 	inc	dptr
      0055D5 E0               [24] 9982 	movx	a,@dptr
      0055D6 FE               [12] 9983 	mov	r6,a
      0055D7 74 2E            [12] 9984 	mov	a,#0x2e
      0055D9 2C               [12] 9985 	add	a,r4
      0055DA FC               [12] 9986 	mov	r4,a
      0055DB 74 00            [12] 9987 	mov	a,#0x00
      0055DD 3D               [12] 9988 	addc	a,r5
      0055DE FD               [12] 9989 	mov	r5,a
      0055DF A8 0D            [24] 9990 	mov	r0,_bp
      0055E1 08               [12] 9991 	inc	r0
      0055E2 E6               [12] 9992 	mov	a,@r0
      0055E3 25 E0            [12] 9993 	add	a,acc
      0055E5 FB               [12] 9994 	mov	r3,a
      0055E6 EB               [12] 9995 	mov	a,r3
      0055E7 25 E0            [12] 9996 	add	a,acc
      0055E9 FB               [12] 9997 	mov	r3,a
      0055EA E5 0D            [12] 9998 	mov	a,_bp
      0055EC 24 0C            [12] 9999 	add	a,#0x0c
      0055EE F8               [12]10000 	mov	r0,a
      0055EF EB               [12]10001 	mov	a,r3
      0055F0 2C               [12]10002 	add	a,r4
      0055F1 F6               [12]10003 	mov	@r0,a
      0055F2 74 00            [12]10004 	mov	a,#0x00
      0055F4 3D               [12]10005 	addc	a,r5
      0055F5 08               [12]10006 	inc	r0
      0055F6 F6               [12]10007 	mov	@r0,a
      0055F7 08               [12]10008 	inc	r0
      0055F8 A6 06            [24]10009 	mov	@r0,ar6
      0055FA 90 0C 7F         [24]10010 	mov	dptr,#_pxCurrentTCB
      0055FD E0               [24]10011 	movx	a,@dptr
      0055FE FA               [12]10012 	mov	r2,a
      0055FF A3               [24]10013 	inc	dptr
      005600 E0               [24]10014 	movx	a,@dptr
      005601 FD               [12]10015 	mov	r5,a
      005602 A3               [24]10016 	inc	dptr
      005603 E0               [24]10017 	movx	a,@dptr
      005604 FE               [12]10018 	mov	r6,a
      005605 74 2E            [12]10019 	mov	a,#0x2e
      005607 2A               [12]10020 	add	a,r2
      005608 FA               [12]10021 	mov	r2,a
      005609 74 00            [12]10022 	mov	a,#0x00
      00560B 3D               [12]10023 	addc	a,r5
      00560C FD               [12]10024 	mov	r5,a
      00560D EB               [12]10025 	mov	a,r3
      00560E 2A               [12]10026 	add	a,r2
      00560F FF               [12]10027 	mov	r7,a
      005610 74 00            [12]10028 	mov	a,#0x00
      005612 3D               [12]10029 	addc	a,r5
      005613 FD               [12]10030 	mov	r5,a
      005614 E5 0D            [12]10031 	mov	a,_bp
      005616 24 F6            [12]10032 	add	a,#0xf6
      005618 F8               [12]10033 	mov	r0,a
      005619 E5 0D            [12]10034 	mov	a,_bp
      00561B 24 08            [12]10035 	add	a,#0x08
      00561D F9               [12]10036 	mov	r1,a
      00561E E6               [12]10037 	mov	a,@r0
      00561F F4               [12]10038 	cpl	a
      005620 F7               [12]10039 	mov	@r1,a
      005621 08               [12]10040 	inc	r0
      005622 E6               [12]10041 	mov	a,@r0
      005623 F4               [12]10042 	cpl	a
      005624 09               [12]10043 	inc	r1
      005625 F7               [12]10044 	mov	@r1,a
      005626 08               [12]10045 	inc	r0
      005627 E6               [12]10046 	mov	a,@r0
      005628 F4               [12]10047 	cpl	a
      005629 09               [12]10048 	inc	r1
      00562A F7               [12]10049 	mov	@r1,a
      00562B 08               [12]10050 	inc	r0
      00562C E6               [12]10051 	mov	a,@r0
      00562D F4               [12]10052 	cpl	a
      00562E 09               [12]10053 	inc	r1
      00562F F7               [12]10054 	mov	@r1,a
      005630 8F 82            [24]10055 	mov	dpl,r7
      005632 8D 83            [24]10056 	mov	dph,r5
      005634 8E F0            [24]10057 	mov	b,r6
      005636 12 7C 4D         [24]10058 	lcall	__gptrget
      005639 FC               [12]10059 	mov	r4,a
      00563A A3               [24]10060 	inc	dptr
      00563B 12 7C 4D         [24]10061 	lcall	__gptrget
      00563E FD               [12]10062 	mov	r5,a
      00563F A3               [24]10063 	inc	dptr
      005640 12 7C 4D         [24]10064 	lcall	__gptrget
      005643 FA               [12]10065 	mov	r2,a
      005644 A3               [24]10066 	inc	dptr
      005645 12 7C 4D         [24]10067 	lcall	__gptrget
      005648 FE               [12]10068 	mov	r6,a
      005649 E5 0D            [12]10069 	mov	a,_bp
      00564B 24 08            [12]10070 	add	a,#0x08
      00564D F8               [12]10071 	mov	r0,a
      00564E E6               [12]10072 	mov	a,@r0
      00564F 52 04            [12]10073 	anl	ar4,a
      005651 08               [12]10074 	inc	r0
      005652 E6               [12]10075 	mov	a,@r0
      005653 52 05            [12]10076 	anl	ar5,a
      005655 08               [12]10077 	inc	r0
      005656 E6               [12]10078 	mov	a,@r0
      005657 52 02            [12]10079 	anl	ar2,a
      005659 08               [12]10080 	inc	r0
      00565A E6               [12]10081 	mov	a,@r0
      00565B 52 06            [12]10082 	anl	ar6,a
      00565D E5 0D            [12]10083 	mov	a,_bp
      00565F 24 0C            [12]10084 	add	a,#0x0c
      005661 F8               [12]10085 	mov	r0,a
      005662 86 82            [24]10086 	mov	dpl,@r0
      005664 08               [12]10087 	inc	r0
      005665 86 83            [24]10088 	mov	dph,@r0
      005667 08               [12]10089 	inc	r0
      005668 86 F0            [24]10090 	mov	b,@r0
      00566A EC               [12]10091 	mov	a,r4
      00566B 12 79 22         [24]10092 	lcall	__gptrput
      00566E A3               [24]10093 	inc	dptr
      00566F ED               [12]10094 	mov	a,r5
      005670 12 79 22         [24]10095 	lcall	__gptrput
      005673 A3               [24]10096 	inc	dptr
      005674 EA               [12]10097 	mov	a,r2
      005675 12 79 22         [24]10098 	lcall	__gptrput
      005678 A3               [24]10099 	inc	dptr
      005679 EE               [12]10100 	mov	a,r6
      00567A 12 79 22         [24]10101 	lcall	__gptrput
                           003139 10102 	C$tasks.c$4847$3_0$389 ==.
                                  10103 ;	tasks.c:4847: xReturn = pdTRUE;
      00567D 7F 01            [12]10104 	mov	r7,#0x01
      00567F                      10105 00109$:
                           00313B 10106 	C$tasks.c$4850$2_0$386 ==.
                                  10107 ;	tasks.c:4850: pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskNOT_WAITING_NOTIFICATION;
      00567F 90 0C 7F         [24]10108 	mov	dptr,#_pxCurrentTCB
      005682 E0               [24]10109 	movx	a,@dptr
      005683 FC               [12]10110 	mov	r4,a
      005684 A3               [24]10111 	inc	dptr
      005685 E0               [24]10112 	movx	a,@dptr
      005686 FD               [12]10113 	mov	r5,a
      005687 A3               [24]10114 	inc	dptr
      005688 E0               [24]10115 	movx	a,@dptr
      005689 FE               [12]10116 	mov	r6,a
      00568A 74 32            [12]10117 	mov	a,#0x32
      00568C 2C               [12]10118 	add	a,r4
      00568D FC               [12]10119 	mov	r4,a
      00568E 74 00            [12]10120 	mov	a,#0x00
      005690 3D               [12]10121 	addc	a,r5
      005691 FD               [12]10122 	mov	r5,a
      005692 A8 0D            [24]10123 	mov	r0,_bp
      005694 08               [12]10124 	inc	r0
      005695 E6               [12]10125 	mov	a,@r0
      005696 2C               [12]10126 	add	a,r4
      005697 FC               [12]10127 	mov	r4,a
      005698 74 00            [12]10128 	mov	a,#0x00
      00569A 3D               [12]10129 	addc	a,r5
      00569B FD               [12]10130 	mov	r5,a
      00569C 8C 82            [24]10131 	mov	dpl,r4
      00569E 8D 83            [24]10132 	mov	dph,r5
      0056A0 8E F0            [24]10133 	mov	b,r6
      0056A2 74 00            [12]10134 	mov	a,#0x00
      0056A4 12 79 22         [24]10135 	lcall	__gptrput
                           003163 10136 	C$tasks.c$4852$1_0$380 ==.
                                  10137 ;	tasks.c:4852: taskEXIT_CRITICAL();
      0056A7 D0 E0            [24]10138 	pop ACC 
      0056A9 53 E0 80         [24]10139 	anl	_ACC,#0x80
      0056AC E5 E0            [12]10140 	mov	a,_ACC
      0056AE 42 A8            [12]10141 	orl	_IE,a
      0056B0 D0 E0            [24]10142 	pop ACC 
                           00316E 10143 	C$tasks.c$4854$1_0$380 ==.
                                  10144 ;	tasks.c:4854: return xReturn;
      0056B2 8F 82            [24]10145 	mov	dpl,r7
      0056B4                      10146 00110$:
                           003170 10147 	C$tasks.c$4855$1_0$380 ==.
                                  10148 ;	tasks.c:4855: }
      0056B4 85 0D 81         [24]10149 	mov	sp,_bp
      0056B7 D0 0D            [24]10150 	pop	_bp
                           003175 10151 	C$tasks.c$4855$1_0$380 ==.
                           003175 10152 	XG$xTaskGenericNotifyWait$0$0 ==.
      0056B9 22               [24]10153 	ret
                                  10154 ;------------------------------------------------------------
                                  10155 ;Allocation info for local variables in function 'xTaskGenericNotify'
                                  10156 ;------------------------------------------------------------
                                  10157 ;uxIndexToNotify           Allocated to stack - _bp -3
                                  10158 ;ulValue                   Allocated to stack - _bp -7
                                  10159 ;eAction                   Allocated to stack - _bp -8
                                  10160 ;pulPreviousNotificationValue Allocated to stack - _bp -11
                                  10161 ;xTaskToNotify             Allocated to registers r7 r6 r5 
                                  10162 ;pxTCB                     Allocated to stack - _bp +16
                                  10163 ;xReturn                   Allocated to stack - _bp +19
                                  10164 ;ucOriginalNotifyState     Allocated to registers r4 
                                  10165 ;pxList                    Allocated to stack - _bp +20
                                  10166 ;pxIndex                   Allocated to registers r2 r3 r4 
                                  10167 ;sloc0                     Allocated to stack - _bp +1
                                  10168 ;sloc1                     Allocated to stack - _bp +7
                                  10169 ;sloc2                     Allocated to stack - _bp +13
                                  10170 ;sloc3                     Allocated to stack - _bp +10
                                  10171 ;sloc4                     Allocated to stack - _bp +4
                                  10172 ;------------------------------------------------------------
                           003176 10173 	G$xTaskGenericNotify$0$0 ==.
                           003176 10174 	C$tasks.c$4862$1_0$391 ==.
                                  10175 ;	tasks.c:4862: BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
                                  10176 ;	-----------------------------------------
                                  10177 ;	 function xTaskGenericNotify
                                  10178 ;	-----------------------------------------
      0056BA                      10179 _xTaskGenericNotify:
      0056BA C0 0D            [24]10180 	push	_bp
      0056BC 85 81 0D         [24]10181 	mov	_bp,sp
      0056BF E5 81            [12]10182 	mov	a,sp
      0056C1 24 16            [12]10183 	add	a,#0x16
      0056C3 F5 81            [12]10184 	mov	sp,a
      0056C5 AF 82            [24]10185 	mov	r7,dpl
      0056C7 AE 83            [24]10186 	mov	r6,dph
      0056C9 AD F0            [24]10187 	mov	r5,b
                           003187 10188 	C$tasks.c$4869$2_0$391 ==.
                                  10189 ;	tasks.c:4869: BaseType_t xReturn = pdPASS;
      0056CB E5 0D            [12]10190 	mov	a,_bp
      0056CD 24 13            [12]10191 	add	a,#0x13
      0056CF F8               [12]10192 	mov	r0,a
      0056D0 76 01            [12]10193 	mov	@r0,#0x01
                           00318E 10194 	C$tasks.c$4874$1_0$391 ==.
                                  10195 ;	tasks.c:4874: pxTCB = xTaskToNotify;
      0056D2 E5 0D            [12]10196 	mov	a,_bp
      0056D4 24 10            [12]10197 	add	a,#0x10
      0056D6 F8               [12]10198 	mov	r0,a
      0056D7 A6 07            [24]10199 	mov	@r0,ar7
      0056D9 08               [12]10200 	inc	r0
      0056DA A6 06            [24]10201 	mov	@r0,ar6
      0056DC 08               [12]10202 	inc	r0
      0056DD A6 05            [24]10203 	mov	@r0,ar5
                           00319B 10204 	C$tasks.c$4876$1_0$391 ==.
                                  10205 ;	tasks.c:4876: taskENTER_CRITICAL();
      0056DF C0 E0            [24]10206 	push ACC 
      0056E1 C0 A8            [24]10207 	push IE 
                                  10208 ;	assignBit
      0056E3 C2 AF            [12]10209 	clr	_EA
                           0031A1 10210 	C$tasks.c$4878$2_0$392 ==.
                                  10211 ;	tasks.c:4878: if( pulPreviousNotificationValue != NULL )
      0056E5 E5 0D            [12]10212 	mov	a,_bp
      0056E7 24 F5            [12]10213 	add	a,#0xf5
      0056E9 F8               [12]10214 	mov	r0,a
      0056EA E6               [12]10215 	mov	a,@r0
      0056EB 08               [12]10216 	inc	r0
      0056EC 46               [12]10217 	orl	a,@r0
      0056ED 70 03            [24]10218 	jnz	00145$
      0056EF 02 57 5D         [24]10219 	ljmp	00102$
      0056F2                      10220 00145$:
                           0031AE 10221 	C$tasks.c$4880$1_0$391 ==.
                                  10222 ;	tasks.c:4880: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
      0056F2 E5 0D            [12]10223 	mov	a,_bp
      0056F4 24 F5            [12]10224 	add	a,#0xf5
      0056F6 F8               [12]10225 	mov	r0,a
      0056F7 E5 0D            [12]10226 	mov	a,_bp
      0056F9 24 07            [12]10227 	add	a,#0x07
      0056FB F9               [12]10228 	mov	r1,a
      0056FC E6               [12]10229 	mov	a,@r0
      0056FD F7               [12]10230 	mov	@r1,a
      0056FE 08               [12]10231 	inc	r0
      0056FF E6               [12]10232 	mov	a,@r0
      005700 09               [12]10233 	inc	r1
      005701 F7               [12]10234 	mov	@r1,a
      005702 08               [12]10235 	inc	r0
      005703 E6               [12]10236 	mov	a,@r0
      005704 09               [12]10237 	inc	r1
      005705 F7               [12]10238 	mov	@r1,a
      005706 74 2E            [12]10239 	mov	a,#0x2e
      005708 2F               [12]10240 	add	a,r7
      005709 FF               [12]10241 	mov	r7,a
      00570A 74 00            [12]10242 	mov	a,#0x00
      00570C 3E               [12]10243 	addc	a,r6
      00570D FE               [12]10244 	mov	r6,a
      00570E E5 0D            [12]10245 	mov	a,_bp
      005710 24 FD            [12]10246 	add	a,#0xfd
      005712 F8               [12]10247 	mov	r0,a
      005713 E6               [12]10248 	mov	a,@r0
      005714 25 E0            [12]10249 	add	a,acc
      005716 FC               [12]10250 	mov	r4,a
      005717 EC               [12]10251 	mov	a,r4
      005718 25 E0            [12]10252 	add	a,acc
      00571A FC               [12]10253 	mov	r4,a
      00571B EC               [12]10254 	mov	a,r4
      00571C 2F               [12]10255 	add	a,r7
      00571D FA               [12]10256 	mov	r2,a
      00571E 74 00            [12]10257 	mov	a,#0x00
      005720 3E               [12]10258 	addc	a,r6
      005721 FB               [12]10259 	mov	r3,a
      005722 8D 04            [24]10260 	mov	ar4,r5
      005724 8A 82            [24]10261 	mov	dpl,r2
      005726 8B 83            [24]10262 	mov	dph,r3
      005728 8C F0            [24]10263 	mov	b,r4
      00572A 12 7C 4D         [24]10264 	lcall	__gptrget
      00572D FA               [12]10265 	mov	r2,a
      00572E A3               [24]10266 	inc	dptr
      00572F 12 7C 4D         [24]10267 	lcall	__gptrget
      005732 FB               [12]10268 	mov	r3,a
      005733 A3               [24]10269 	inc	dptr
      005734 12 7C 4D         [24]10270 	lcall	__gptrget
      005737 FC               [12]10271 	mov	r4,a
      005738 A3               [24]10272 	inc	dptr
      005739 12 7C 4D         [24]10273 	lcall	__gptrget
      00573C FF               [12]10274 	mov	r7,a
      00573D E5 0D            [12]10275 	mov	a,_bp
      00573F 24 07            [12]10276 	add	a,#0x07
      005741 F8               [12]10277 	mov	r0,a
      005742 86 82            [24]10278 	mov	dpl,@r0
      005744 08               [12]10279 	inc	r0
      005745 86 83            [24]10280 	mov	dph,@r0
      005747 08               [12]10281 	inc	r0
      005748 86 F0            [24]10282 	mov	b,@r0
      00574A EA               [12]10283 	mov	a,r2
      00574B 12 79 22         [24]10284 	lcall	__gptrput
      00574E A3               [24]10285 	inc	dptr
      00574F EB               [12]10286 	mov	a,r3
      005750 12 79 22         [24]10287 	lcall	__gptrput
      005753 A3               [24]10288 	inc	dptr
      005754 EC               [12]10289 	mov	a,r4
      005755 12 79 22         [24]10290 	lcall	__gptrput
      005758 A3               [24]10291 	inc	dptr
      005759 EF               [12]10292 	mov	a,r7
      00575A 12 79 22         [24]10293 	lcall	__gptrput
                           003219 10294 	C$tasks.c$4977$1_0$391 ==.
                                  10295 ;	tasks.c:4977: return xReturn;
                           003219 10296 	C$tasks.c$4880$2_0$392 ==.
                                  10297 ;	tasks.c:4880: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
      00575D                      10298 00102$:
                           003219 10299 	C$tasks.c$4883$2_0$392 ==.
                                  10300 ;	tasks.c:4883: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
      00575D E5 0D            [12]10301 	mov	a,_bp
      00575F 24 10            [12]10302 	add	a,#0x10
      005761 F8               [12]10303 	mov	r0,a
      005762 74 32            [12]10304 	mov	a,#0x32
      005764 26               [12]10305 	add	a,@r0
      005765 FD               [12]10306 	mov	r5,a
      005766 74 00            [12]10307 	mov	a,#0x00
      005768 08               [12]10308 	inc	r0
      005769 36               [12]10309 	addc	a,@r0
      00576A FE               [12]10310 	mov	r6,a
      00576B 08               [12]10311 	inc	r0
      00576C 86 07            [24]10312 	mov	ar7,@r0
      00576E E5 0D            [12]10313 	mov	a,_bp
      005770 24 FD            [12]10314 	add	a,#0xfd
      005772 F8               [12]10315 	mov	r0,a
      005773 86 02            [24]10316 	mov	ar2,@r0
      005775 EA               [12]10317 	mov	a,r2
      005776 2D               [12]10318 	add	a,r5
      005777 FD               [12]10319 	mov	r5,a
      005778 74 00            [12]10320 	mov	a,#0x00
      00577A 3E               [12]10321 	addc	a,r6
      00577B FE               [12]10322 	mov	r6,a
      00577C 8D 82            [24]10323 	mov	dpl,r5
      00577E 8E 83            [24]10324 	mov	dph,r6
      005780 8F F0            [24]10325 	mov	b,r7
      005782 12 7C 4D         [24]10326 	lcall	__gptrget
      005785 FC               [12]10327 	mov	r4,a
                           003242 10328 	C$tasks.c$4885$2_0$392 ==.
                                  10329 ;	tasks.c:4885: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
      005786 8D 82            [24]10330 	mov	dpl,r5
      005788 8E 83            [24]10331 	mov	dph,r6
      00578A 8F F0            [24]10332 	mov	b,r7
      00578C 74 02            [12]10333 	mov	a,#0x02
      00578E 12 79 22         [24]10334 	lcall	__gptrput
                           00324D 10335 	C$tasks.c$4887$2_0$392 ==.
                                  10336 ;	tasks.c:4887: switch( eAction )
      005791 E5 0D            [12]10337 	mov	a,_bp
      005793 24 F8            [12]10338 	add	a,#0xf8
      005795 F8               [12]10339 	mov	r0,a
      005796 C3               [12]10340 	clr	c
      005797 74 04            [12]10341 	mov	a,#0x04
      005799 96               [12]10342 	subb	a,@r0
      00579A 50 03            [24]10343 	jnc	00146$
      00579C 02 59 44         [24]10344 	ljmp	00112$
      00579F                      10345 00146$:
      00579F E5 0D            [12]10346 	mov	a,_bp
      0057A1 24 F8            [12]10347 	add	a,#0xf8
      0057A3 F8               [12]10348 	mov	r0,a
      0057A4 E6               [12]10349 	mov	a,@r0
      0057A5 26               [12]10350 	add	a,@r0
      0057A6 26               [12]10351 	add	a,@r0
      0057A7 90 57 AB         [24]10352 	mov	dptr,#00147$
      0057AA 73               [24]10353 	jmp	@a+dptr
      0057AB                      10354 00147$:
      0057AB 02 59 44         [24]10355 	ljmp	00112$
      0057AE 02 57 BA         [24]10356 	ljmp	00103$
      0057B1 02 58 38         [24]10357 	ljmp	00104$
      0057B4 02 58 AF         [24]10358 	ljmp	00105$
      0057B7 02 58 F3         [24]10359 	ljmp	00106$
                           003276 10360 	C$tasks.c$4889$3_0$394 ==.
                                  10361 ;	tasks.c:4889: case eSetBits:
      0057BA                      10362 00103$:
                           003276 10363 	C$tasks.c$4890$1_0$391 ==.
                                  10364 ;	tasks.c:4890: pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
      0057BA C0 04            [24]10365 	push	ar4
      0057BC E5 0D            [12]10366 	mov	a,_bp
      0057BE 24 10            [12]10367 	add	a,#0x10
      0057C0 F8               [12]10368 	mov	r0,a
      0057C1 74 2E            [12]10369 	mov	a,#0x2e
      0057C3 26               [12]10370 	add	a,@r0
      0057C4 FD               [12]10371 	mov	r5,a
      0057C5 74 00            [12]10372 	mov	a,#0x00
      0057C7 08               [12]10373 	inc	r0
      0057C8 36               [12]10374 	addc	a,@r0
      0057C9 FE               [12]10375 	mov	r6,a
      0057CA 08               [12]10376 	inc	r0
      0057CB 86 07            [24]10377 	mov	ar7,@r0
      0057CD EA               [12]10378 	mov	a,r2
      0057CE 25 E0            [12]10379 	add	a,acc
      0057D0 FB               [12]10380 	mov	r3,a
      0057D1 EB               [12]10381 	mov	a,r3
      0057D2 25 E0            [12]10382 	add	a,acc
      0057D4 FB               [12]10383 	mov	r3,a
      0057D5 A8 0D            [24]10384 	mov	r0,_bp
      0057D7 08               [12]10385 	inc	r0
      0057D8 EB               [12]10386 	mov	a,r3
      0057D9 2D               [12]10387 	add	a,r5
      0057DA F6               [12]10388 	mov	@r0,a
      0057DB 74 00            [12]10389 	mov	a,#0x00
      0057DD 3E               [12]10390 	addc	a,r6
      0057DE 08               [12]10391 	inc	r0
      0057DF F6               [12]10392 	mov	@r0,a
      0057E0 08               [12]10393 	inc	r0
      0057E1 A6 07            [24]10394 	mov	@r0,ar7
      0057E3 A8 0D            [24]10395 	mov	r0,_bp
      0057E5 08               [12]10396 	inc	r0
      0057E6 86 82            [24]10397 	mov	dpl,@r0
      0057E8 08               [12]10398 	inc	r0
      0057E9 86 83            [24]10399 	mov	dph,@r0
      0057EB 08               [12]10400 	inc	r0
      0057EC 86 F0            [24]10401 	mov	b,@r0
      0057EE 12 7C 4D         [24]10402 	lcall	__gptrget
      0057F1 FA               [12]10403 	mov	r2,a
      0057F2 A3               [24]10404 	inc	dptr
      0057F3 12 7C 4D         [24]10405 	lcall	__gptrget
      0057F6 FB               [12]10406 	mov	r3,a
      0057F7 A3               [24]10407 	inc	dptr
      0057F8 12 7C 4D         [24]10408 	lcall	__gptrget
      0057FB FC               [12]10409 	mov	r4,a
      0057FC A3               [24]10410 	inc	dptr
      0057FD 12 7C 4D         [24]10411 	lcall	__gptrget
      005800 FF               [12]10412 	mov	r7,a
      005801 E5 0D            [12]10413 	mov	a,_bp
      005803 24 F9            [12]10414 	add	a,#0xf9
      005805 F8               [12]10415 	mov	r0,a
      005806 E6               [12]10416 	mov	a,@r0
      005807 42 02            [12]10417 	orl	ar2,a
      005809 08               [12]10418 	inc	r0
      00580A E6               [12]10419 	mov	a,@r0
      00580B 42 03            [12]10420 	orl	ar3,a
      00580D 08               [12]10421 	inc	r0
      00580E E6               [12]10422 	mov	a,@r0
      00580F 42 04            [12]10423 	orl	ar4,a
      005811 08               [12]10424 	inc	r0
      005812 E6               [12]10425 	mov	a,@r0
      005813 42 07            [12]10426 	orl	ar7,a
      005815 A8 0D            [24]10427 	mov	r0,_bp
      005817 08               [12]10428 	inc	r0
      005818 86 82            [24]10429 	mov	dpl,@r0
      00581A 08               [12]10430 	inc	r0
      00581B 86 83            [24]10431 	mov	dph,@r0
      00581D 08               [12]10432 	inc	r0
      00581E 86 F0            [24]10433 	mov	b,@r0
      005820 EA               [12]10434 	mov	a,r2
      005821 12 79 22         [24]10435 	lcall	__gptrput
      005824 A3               [24]10436 	inc	dptr
      005825 EB               [12]10437 	mov	a,r3
      005826 12 79 22         [24]10438 	lcall	__gptrput
      005829 A3               [24]10439 	inc	dptr
      00582A EC               [12]10440 	mov	a,r4
      00582B 12 79 22         [24]10441 	lcall	__gptrput
      00582E A3               [24]10442 	inc	dptr
      00582F EF               [12]10443 	mov	a,r7
      005830 12 79 22         [24]10444 	lcall	__gptrput
                           0032EF 10445 	C$tasks.c$4891$1_0$391 ==.
                                  10446 ;	tasks.c:4891: break;
      005833 D0 04            [24]10447 	pop	ar4
      005835 02 59 44         [24]10448 	ljmp	00112$
                           0032F4 10449 	C$tasks.c$4893$3_0$394 ==.
                                  10450 ;	tasks.c:4893: case eIncrement:
      005838                      10451 00104$:
                           0032F4 10452 	C$tasks.c$4894$1_0$391 ==.
                                  10453 ;	tasks.c:4894: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
      005838 C0 04            [24]10454 	push	ar4
      00583A E5 0D            [12]10455 	mov	a,_bp
      00583C 24 10            [12]10456 	add	a,#0x10
      00583E F8               [12]10457 	mov	r0,a
      00583F 74 2E            [12]10458 	mov	a,#0x2e
      005841 26               [12]10459 	add	a,@r0
      005842 FD               [12]10460 	mov	r5,a
      005843 74 00            [12]10461 	mov	a,#0x00
      005845 08               [12]10462 	inc	r0
      005846 36               [12]10463 	addc	a,@r0
      005847 FE               [12]10464 	mov	r6,a
      005848 08               [12]10465 	inc	r0
      005849 86 07            [24]10466 	mov	ar7,@r0
      00584B EA               [12]10467 	mov	a,r2
      00584C 25 E0            [12]10468 	add	a,acc
      00584E FB               [12]10469 	mov	r3,a
      00584F EB               [12]10470 	mov	a,r3
      005850 25 E0            [12]10471 	add	a,acc
      005852 FB               [12]10472 	mov	r3,a
      005853 A8 0D            [24]10473 	mov	r0,_bp
      005855 08               [12]10474 	inc	r0
      005856 EB               [12]10475 	mov	a,r3
      005857 2D               [12]10476 	add	a,r5
      005858 F6               [12]10477 	mov	@r0,a
      005859 74 00            [12]10478 	mov	a,#0x00
      00585B 3E               [12]10479 	addc	a,r6
      00585C 08               [12]10480 	inc	r0
      00585D F6               [12]10481 	mov	@r0,a
      00585E 08               [12]10482 	inc	r0
      00585F A6 07            [24]10483 	mov	@r0,ar7
      005861 A8 0D            [24]10484 	mov	r0,_bp
      005863 08               [12]10485 	inc	r0
      005864 86 82            [24]10486 	mov	dpl,@r0
      005866 08               [12]10487 	inc	r0
      005867 86 83            [24]10488 	mov	dph,@r0
      005869 08               [12]10489 	inc	r0
      00586A 86 F0            [24]10490 	mov	b,@r0
      00586C 12 7C 4D         [24]10491 	lcall	__gptrget
      00586F FA               [12]10492 	mov	r2,a
      005870 A3               [24]10493 	inc	dptr
      005871 12 7C 4D         [24]10494 	lcall	__gptrget
      005874 FB               [12]10495 	mov	r3,a
      005875 A3               [24]10496 	inc	dptr
      005876 12 7C 4D         [24]10497 	lcall	__gptrget
      005879 FC               [12]10498 	mov	r4,a
      00587A A3               [24]10499 	inc	dptr
      00587B 12 7C 4D         [24]10500 	lcall	__gptrget
      00587E FF               [12]10501 	mov	r7,a
      00587F 0A               [12]10502 	inc	r2
      005880 BA 00 09         [24]10503 	cjne	r2,#0x00,00148$
      005883 0B               [12]10504 	inc	r3
      005884 BB 00 05         [24]10505 	cjne	r3,#0x00,00148$
      005887 0C               [12]10506 	inc	r4
      005888 BC 00 01         [24]10507 	cjne	r4,#0x00,00148$
      00588B 0F               [12]10508 	inc	r7
      00588C                      10509 00148$:
      00588C A8 0D            [24]10510 	mov	r0,_bp
      00588E 08               [12]10511 	inc	r0
      00588F 86 82            [24]10512 	mov	dpl,@r0
      005891 08               [12]10513 	inc	r0
      005892 86 83            [24]10514 	mov	dph,@r0
      005894 08               [12]10515 	inc	r0
      005895 86 F0            [24]10516 	mov	b,@r0
      005897 EA               [12]10517 	mov	a,r2
      005898 12 79 22         [24]10518 	lcall	__gptrput
      00589B A3               [24]10519 	inc	dptr
      00589C EB               [12]10520 	mov	a,r3
      00589D 12 79 22         [24]10521 	lcall	__gptrput
      0058A0 A3               [24]10522 	inc	dptr
      0058A1 EC               [12]10523 	mov	a,r4
      0058A2 12 79 22         [24]10524 	lcall	__gptrput
      0058A5 A3               [24]10525 	inc	dptr
      0058A6 EF               [12]10526 	mov	a,r7
      0058A7 12 79 22         [24]10527 	lcall	__gptrput
                           003366 10528 	C$tasks.c$4895$1_0$391 ==.
                                  10529 ;	tasks.c:4895: break;
      0058AA D0 04            [24]10530 	pop	ar4
      0058AC 02 59 44         [24]10531 	ljmp	00112$
                           00336B 10532 	C$tasks.c$4897$3_0$394 ==.
                                  10533 ;	tasks.c:4897: case eSetValueWithOverwrite:
      0058AF                      10534 00105$:
                           00336B 10535 	C$tasks.c$4898$3_0$394 ==.
                                  10536 ;	tasks.c:4898: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
      0058AF E5 0D            [12]10537 	mov	a,_bp
      0058B1 24 10            [12]10538 	add	a,#0x10
      0058B3 F8               [12]10539 	mov	r0,a
      0058B4 74 2E            [12]10540 	mov	a,#0x2e
      0058B6 26               [12]10541 	add	a,@r0
      0058B7 FD               [12]10542 	mov	r5,a
      0058B8 74 00            [12]10543 	mov	a,#0x00
      0058BA 08               [12]10544 	inc	r0
      0058BB 36               [12]10545 	addc	a,@r0
      0058BC FE               [12]10546 	mov	r6,a
      0058BD 08               [12]10547 	inc	r0
      0058BE 86 07            [24]10548 	mov	ar7,@r0
      0058C0 EA               [12]10549 	mov	a,r2
      0058C1 25 E0            [12]10550 	add	a,acc
      0058C3 FB               [12]10551 	mov	r3,a
      0058C4 EB               [12]10552 	mov	a,r3
      0058C5 25 E0            [12]10553 	add	a,acc
      0058C7 FB               [12]10554 	mov	r3,a
      0058C8 EB               [12]10555 	mov	a,r3
      0058C9 2D               [12]10556 	add	a,r5
      0058CA FD               [12]10557 	mov	r5,a
      0058CB 74 00            [12]10558 	mov	a,#0x00
      0058CD 3E               [12]10559 	addc	a,r6
      0058CE FE               [12]10560 	mov	r6,a
      0058CF 8D 82            [24]10561 	mov	dpl,r5
      0058D1 8E 83            [24]10562 	mov	dph,r6
      0058D3 8F F0            [24]10563 	mov	b,r7
      0058D5 E5 0D            [12]10564 	mov	a,_bp
      0058D7 24 F9            [12]10565 	add	a,#0xf9
      0058D9 F8               [12]10566 	mov	r0,a
      0058DA E6               [12]10567 	mov	a,@r0
      0058DB 12 79 22         [24]10568 	lcall	__gptrput
      0058DE A3               [24]10569 	inc	dptr
      0058DF 08               [12]10570 	inc	r0
      0058E0 E6               [12]10571 	mov	a,@r0
      0058E1 12 79 22         [24]10572 	lcall	__gptrput
      0058E4 A3               [24]10573 	inc	dptr
      0058E5 08               [12]10574 	inc	r0
      0058E6 E6               [12]10575 	mov	a,@r0
      0058E7 12 79 22         [24]10576 	lcall	__gptrput
      0058EA A3               [24]10577 	inc	dptr
      0058EB 08               [12]10578 	inc	r0
      0058EC E6               [12]10579 	mov	a,@r0
      0058ED 12 79 22         [24]10580 	lcall	__gptrput
                           0033AC 10581 	C$tasks.c$4899$3_0$394 ==.
                                  10582 ;	tasks.c:4899: break;
      0058F0 02 59 44         [24]10583 	ljmp	00112$
                           0033AF 10584 	C$tasks.c$4901$3_0$394 ==.
                                  10585 ;	tasks.c:4901: case eSetValueWithoutOverwrite:
      0058F3                      10586 00106$:
                           0033AF 10587 	C$tasks.c$4903$3_0$394 ==.
                                  10588 ;	tasks.c:4903: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
      0058F3 BC 02 03         [24]10589 	cjne	r4,#0x02,00149$
      0058F6 02 59 3D         [24]10590 	ljmp	00108$
      0058F9                      10591 00149$:
                           0033B5 10592 	C$tasks.c$4905$4_0$395 ==.
                                  10593 ;	tasks.c:4905: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
      0058F9 E5 0D            [12]10594 	mov	a,_bp
      0058FB 24 10            [12]10595 	add	a,#0x10
      0058FD F8               [12]10596 	mov	r0,a
      0058FE 74 2E            [12]10597 	mov	a,#0x2e
      005900 26               [12]10598 	add	a,@r0
      005901 FD               [12]10599 	mov	r5,a
      005902 74 00            [12]10600 	mov	a,#0x00
      005904 08               [12]10601 	inc	r0
      005905 36               [12]10602 	addc	a,@r0
      005906 FE               [12]10603 	mov	r6,a
      005907 08               [12]10604 	inc	r0
      005908 86 07            [24]10605 	mov	ar7,@r0
      00590A EA               [12]10606 	mov	a,r2
      00590B 25 E0            [12]10607 	add	a,acc
      00590D FB               [12]10608 	mov	r3,a
      00590E EB               [12]10609 	mov	a,r3
      00590F 25 E0            [12]10610 	add	a,acc
      005911 FB               [12]10611 	mov	r3,a
      005912 EB               [12]10612 	mov	a,r3
      005913 2D               [12]10613 	add	a,r5
      005914 FD               [12]10614 	mov	r5,a
      005915 74 00            [12]10615 	mov	a,#0x00
      005917 3E               [12]10616 	addc	a,r6
      005918 FE               [12]10617 	mov	r6,a
      005919 8D 82            [24]10618 	mov	dpl,r5
      00591B 8E 83            [24]10619 	mov	dph,r6
      00591D 8F F0            [24]10620 	mov	b,r7
      00591F E5 0D            [12]10621 	mov	a,_bp
      005921 24 F9            [12]10622 	add	a,#0xf9
      005923 F8               [12]10623 	mov	r0,a
      005924 E6               [12]10624 	mov	a,@r0
      005925 12 79 22         [24]10625 	lcall	__gptrput
      005928 A3               [24]10626 	inc	dptr
      005929 08               [12]10627 	inc	r0
      00592A E6               [12]10628 	mov	a,@r0
      00592B 12 79 22         [24]10629 	lcall	__gptrput
      00592E A3               [24]10630 	inc	dptr
      00592F 08               [12]10631 	inc	r0
      005930 E6               [12]10632 	mov	a,@r0
      005931 12 79 22         [24]10633 	lcall	__gptrput
      005934 A3               [24]10634 	inc	dptr
      005935 08               [12]10635 	inc	r0
      005936 E6               [12]10636 	mov	a,@r0
      005937 12 79 22         [24]10637 	lcall	__gptrput
      00593A 02 59 44         [24]10638 	ljmp	00112$
      00593D                      10639 00108$:
                           0033F9 10640 	C$tasks.c$4910$4_0$396 ==.
                                  10641 ;	tasks.c:4910: xReturn = pdFAIL;
      00593D E5 0D            [12]10642 	mov	a,_bp
      00593F 24 13            [12]10643 	add	a,#0x13
      005941 F8               [12]10644 	mov	r0,a
      005942 76 00            [12]10645 	mov	@r0,#0x00
                           003400 10646 	C$tasks.c$4929$2_0$392 ==.
                                  10647 ;	tasks.c:4929: }
      005944                      10648 00112$:
                           003400 10649 	C$tasks.c$4935$2_0$392 ==.
                                  10650 ;	tasks.c:4935: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      005944 BC 01 02         [24]10651 	cjne	r4,#0x01,00150$
      005947 80 03            [24]10652 	sjmp	00151$
      005949                      10653 00150$:
      005949 02 5C C4         [24]10654 	ljmp	00118$
      00594C                      10655 00151$:
                           003408 10656 	C$tasks.c$4937$4_0$398 ==.
                                  10657 ;	tasks.c:4937: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
      00594C E5 0D            [12]10658 	mov	a,_bp
      00594E 24 10            [12]10659 	add	a,#0x10
      005950 F8               [12]10660 	mov	r0,a
      005951 74 03            [12]10661 	mov	a,#0x03
      005953 26               [12]10662 	add	a,@r0
      005954 FD               [12]10663 	mov	r5,a
      005955 74 00            [12]10664 	mov	a,#0x00
      005957 08               [12]10665 	inc	r0
      005958 36               [12]10666 	addc	a,@r0
      005959 FE               [12]10667 	mov	r6,a
      00595A 08               [12]10668 	inc	r0
      00595B 86 07            [24]10669 	mov	ar7,@r0
      00595D E5 0D            [12]10670 	mov	a,_bp
      00595F 24 07            [12]10671 	add	a,#0x07
      005961 F8               [12]10672 	mov	r0,a
      005962 74 0B            [12]10673 	mov	a,#0x0b
      005964 2D               [12]10674 	add	a,r5
      005965 F6               [12]10675 	mov	@r0,a
      005966 74 00            [12]10676 	mov	a,#0x00
      005968 3E               [12]10677 	addc	a,r6
      005969 08               [12]10678 	inc	r0
      00596A F6               [12]10679 	mov	@r0,a
      00596B 08               [12]10680 	inc	r0
      00596C A6 07            [24]10681 	mov	@r0,ar7
      00596E E5 0D            [12]10682 	mov	a,_bp
      005970 24 07            [12]10683 	add	a,#0x07
      005972 F8               [12]10684 	mov	r0,a
      005973 86 82            [24]10685 	mov	dpl,@r0
      005975 08               [12]10686 	inc	r0
      005976 86 83            [24]10687 	mov	dph,@r0
      005978 08               [12]10688 	inc	r0
      005979 86 F0            [24]10689 	mov	b,@r0
      00597B E5 0D            [12]10690 	mov	a,_bp
      00597D 24 14            [12]10691 	add	a,#0x14
      00597F F9               [12]10692 	mov	r1,a
      005980 12 7C 4D         [24]10693 	lcall	__gptrget
      005983 F7               [12]10694 	mov	@r1,a
      005984 A3               [24]10695 	inc	dptr
      005985 12 7C 4D         [24]10696 	lcall	__gptrget
      005988 09               [12]10697 	inc	r1
      005989 F7               [12]10698 	mov	@r1,a
      00598A A3               [24]10699 	inc	dptr
      00598B 12 7C 4D         [24]10700 	lcall	__gptrget
      00598E 09               [12]10701 	inc	r1
      00598F F7               [12]10702 	mov	@r1,a
      005990 A8 0D            [24]10703 	mov	r0,_bp
      005992 08               [12]10704 	inc	r0
      005993 74 02            [12]10705 	mov	a,#0x02
      005995 2D               [12]10706 	add	a,r5
      005996 F6               [12]10707 	mov	@r0,a
      005997 74 00            [12]10708 	mov	a,#0x00
      005999 3E               [12]10709 	addc	a,r6
      00599A 08               [12]10710 	inc	r0
      00599B F6               [12]10711 	mov	@r0,a
      00599C 08               [12]10712 	inc	r0
      00599D A6 07            [24]10713 	mov	@r0,ar7
      00599F A8 0D            [24]10714 	mov	r0,_bp
      0059A1 08               [12]10715 	inc	r0
      0059A2 86 82            [24]10716 	mov	dpl,@r0
      0059A4 08               [12]10717 	inc	r0
      0059A5 86 83            [24]10718 	mov	dph,@r0
      0059A7 08               [12]10719 	inc	r0
      0059A8 86 F0            [24]10720 	mov	b,@r0
      0059AA 12 7C 4D         [24]10721 	lcall	__gptrget
      0059AD FA               [12]10722 	mov	r2,a
      0059AE A3               [24]10723 	inc	dptr
      0059AF 12 7C 4D         [24]10724 	lcall	__gptrget
      0059B2 FB               [12]10725 	mov	r3,a
      0059B3 A3               [24]10726 	inc	dptr
      0059B4 12 7C 4D         [24]10727 	lcall	__gptrget
      0059B7 FC               [12]10728 	mov	r4,a
      0059B8 E5 0D            [12]10729 	mov	a,_bp
      0059BA 24 0A            [12]10730 	add	a,#0x0a
      0059BC F8               [12]10731 	mov	r0,a
      0059BD 74 05            [12]10732 	mov	a,#0x05
      0059BF 2A               [12]10733 	add	a,r2
      0059C0 F6               [12]10734 	mov	@r0,a
      0059C1 74 00            [12]10735 	mov	a,#0x00
      0059C3 3B               [12]10736 	addc	a,r3
      0059C4 08               [12]10737 	inc	r0
      0059C5 F6               [12]10738 	mov	@r0,a
      0059C6 08               [12]10739 	inc	r0
      0059C7 A6 04            [24]10740 	mov	@r0,ar4
      0059C9 E5 0D            [12]10741 	mov	a,_bp
      0059CB 24 0D            [12]10742 	add	a,#0x0d
      0059CD F8               [12]10743 	mov	r0,a
      0059CE 74 05            [12]10744 	mov	a,#0x05
      0059D0 2D               [12]10745 	add	a,r5
      0059D1 F6               [12]10746 	mov	@r0,a
      0059D2 74 00            [12]10747 	mov	a,#0x00
      0059D4 3E               [12]10748 	addc	a,r6
      0059D5 08               [12]10749 	inc	r0
      0059D6 F6               [12]10750 	mov	@r0,a
      0059D7 08               [12]10751 	inc	r0
      0059D8 A6 07            [24]10752 	mov	@r0,ar7
      0059DA E5 0D            [12]10753 	mov	a,_bp
      0059DC 24 0D            [12]10754 	add	a,#0x0d
      0059DE F8               [12]10755 	mov	r0,a
      0059DF 86 82            [24]10756 	mov	dpl,@r0
      0059E1 08               [12]10757 	inc	r0
      0059E2 86 83            [24]10758 	mov	dph,@r0
      0059E4 08               [12]10759 	inc	r0
      0059E5 86 F0            [24]10760 	mov	b,@r0
      0059E7 12 7C 4D         [24]10761 	lcall	__gptrget
      0059EA FA               [12]10762 	mov	r2,a
      0059EB A3               [24]10763 	inc	dptr
      0059EC 12 7C 4D         [24]10764 	lcall	__gptrget
      0059EF FB               [12]10765 	mov	r3,a
      0059F0 A3               [24]10766 	inc	dptr
      0059F1 12 7C 4D         [24]10767 	lcall	__gptrget
      0059F4 FC               [12]10768 	mov	r4,a
      0059F5 E5 0D            [12]10769 	mov	a,_bp
      0059F7 24 0A            [12]10770 	add	a,#0x0a
      0059F9 F8               [12]10771 	mov	r0,a
      0059FA 86 82            [24]10772 	mov	dpl,@r0
      0059FC 08               [12]10773 	inc	r0
      0059FD 86 83            [24]10774 	mov	dph,@r0
      0059FF 08               [12]10775 	inc	r0
      005A00 86 F0            [24]10776 	mov	b,@r0
      005A02 EA               [12]10777 	mov	a,r2
      005A03 12 79 22         [24]10778 	lcall	__gptrput
      005A06 A3               [24]10779 	inc	dptr
      005A07 EB               [12]10780 	mov	a,r3
      005A08 12 79 22         [24]10781 	lcall	__gptrput
      005A0B A3               [24]10782 	inc	dptr
      005A0C EC               [12]10783 	mov	a,r4
      005A0D 12 79 22         [24]10784 	lcall	__gptrput
      005A10 E5 0D            [12]10785 	mov	a,_bp
      005A12 24 0D            [12]10786 	add	a,#0x0d
      005A14 F8               [12]10787 	mov	r0,a
      005A15 86 82            [24]10788 	mov	dpl,@r0
      005A17 08               [12]10789 	inc	r0
      005A18 86 83            [24]10790 	mov	dph,@r0
      005A1A 08               [12]10791 	inc	r0
      005A1B 86 F0            [24]10792 	mov	b,@r0
      005A1D 12 7C 4D         [24]10793 	lcall	__gptrget
      005A20 FA               [12]10794 	mov	r2,a
      005A21 A3               [24]10795 	inc	dptr
      005A22 12 7C 4D         [24]10796 	lcall	__gptrget
      005A25 FB               [12]10797 	mov	r3,a
      005A26 A3               [24]10798 	inc	dptr
      005A27 12 7C 4D         [24]10799 	lcall	__gptrget
      005A2A FC               [12]10800 	mov	r4,a
      005A2B E5 0D            [12]10801 	mov	a,_bp
      005A2D 24 0A            [12]10802 	add	a,#0x0a
      005A2F F8               [12]10803 	mov	r0,a
      005A30 74 02            [12]10804 	mov	a,#0x02
      005A32 2A               [12]10805 	add	a,r2
      005A33 F6               [12]10806 	mov	@r0,a
      005A34 74 00            [12]10807 	mov	a,#0x00
      005A36 3B               [12]10808 	addc	a,r3
      005A37 08               [12]10809 	inc	r0
      005A38 F6               [12]10810 	mov	@r0,a
      005A39 08               [12]10811 	inc	r0
      005A3A A6 04            [24]10812 	mov	@r0,ar4
      005A3C A8 0D            [24]10813 	mov	r0,_bp
      005A3E 08               [12]10814 	inc	r0
      005A3F 86 82            [24]10815 	mov	dpl,@r0
      005A41 08               [12]10816 	inc	r0
      005A42 86 83            [24]10817 	mov	dph,@r0
      005A44 08               [12]10818 	inc	r0
      005A45 86 F0            [24]10819 	mov	b,@r0
      005A47 12 7C 4D         [24]10820 	lcall	__gptrget
      005A4A FA               [12]10821 	mov	r2,a
      005A4B A3               [24]10822 	inc	dptr
      005A4C 12 7C 4D         [24]10823 	lcall	__gptrget
      005A4F FB               [12]10824 	mov	r3,a
      005A50 A3               [24]10825 	inc	dptr
      005A51 12 7C 4D         [24]10826 	lcall	__gptrget
      005A54 FC               [12]10827 	mov	r4,a
      005A55 E5 0D            [12]10828 	mov	a,_bp
      005A57 24 0A            [12]10829 	add	a,#0x0a
      005A59 F8               [12]10830 	mov	r0,a
      005A5A 86 82            [24]10831 	mov	dpl,@r0
      005A5C 08               [12]10832 	inc	r0
      005A5D 86 83            [24]10833 	mov	dph,@r0
      005A5F 08               [12]10834 	inc	r0
      005A60 86 F0            [24]10835 	mov	b,@r0
      005A62 EA               [12]10836 	mov	a,r2
      005A63 12 79 22         [24]10837 	lcall	__gptrput
      005A66 A3               [24]10838 	inc	dptr
      005A67 EB               [12]10839 	mov	a,r3
      005A68 12 79 22         [24]10840 	lcall	__gptrput
      005A6B A3               [24]10841 	inc	dptr
      005A6C EC               [12]10842 	mov	a,r4
      005A6D 12 79 22         [24]10843 	lcall	__gptrput
      005A70 E5 0D            [12]10844 	mov	a,_bp
      005A72 24 14            [12]10845 	add	a,#0x14
      005A74 F8               [12]10846 	mov	r0,a
      005A75 E5 0D            [12]10847 	mov	a,_bp
      005A77 24 0A            [12]10848 	add	a,#0x0a
      005A79 F9               [12]10849 	mov	r1,a
      005A7A 74 01            [12]10850 	mov	a,#0x01
      005A7C 26               [12]10851 	add	a,@r0
      005A7D F7               [12]10852 	mov	@r1,a
      005A7E 74 00            [12]10853 	mov	a,#0x00
      005A80 08               [12]10854 	inc	r0
      005A81 36               [12]10855 	addc	a,@r0
      005A82 09               [12]10856 	inc	r1
      005A83 F7               [12]10857 	mov	@r1,a
      005A84 08               [12]10858 	inc	r0
      005A85 E6               [12]10859 	mov	a,@r0
      005A86 09               [12]10860 	inc	r1
      005A87 F7               [12]10861 	mov	@r1,a
      005A88 E5 0D            [12]10862 	mov	a,_bp
      005A8A 24 0A            [12]10863 	add	a,#0x0a
      005A8C F8               [12]10864 	mov	r0,a
      005A8D 86 82            [24]10865 	mov	dpl,@r0
      005A8F 08               [12]10866 	inc	r0
      005A90 86 83            [24]10867 	mov	dph,@r0
      005A92 08               [12]10868 	inc	r0
      005A93 86 F0            [24]10869 	mov	b,@r0
      005A95 12 7C 4D         [24]10870 	lcall	__gptrget
      005A98 FA               [12]10871 	mov	r2,a
      005A99 A3               [24]10872 	inc	dptr
      005A9A 12 7C 4D         [24]10873 	lcall	__gptrget
      005A9D FB               [12]10874 	mov	r3,a
      005A9E A3               [24]10875 	inc	dptr
      005A9F 12 7C 4D         [24]10876 	lcall	__gptrget
      005AA2 FC               [12]10877 	mov	r4,a
      005AA3 C0 05            [24]10878 	push	ar5
      005AA5 C0 06            [24]10879 	push	ar6
      005AA7 C0 07            [24]10880 	push	ar7
      005AA9 8A 82            [24]10881 	mov	dpl,r2
      005AAB 8B 83            [24]10882 	mov	dph,r3
      005AAD 8C F0            [24]10883 	mov	b,r4
      005AAF 12 00 31         [24]10884 	lcall	___gptr_cmp
      005AB2 15 81            [12]10885 	dec	sp
      005AB4 15 81            [12]10886 	dec	sp
      005AB6 15 81            [12]10887 	dec	sp
      005AB8 70 02            [24]10888 	jnz	00152$
      005ABA 80 03            [24]10889 	sjmp	00153$
      005ABC                      10890 00152$:
      005ABC 02 5A F5         [24]10891 	ljmp	00114$
      005ABF                      10892 00153$:
      005ABF E5 0D            [12]10893 	mov	a,_bp
      005AC1 24 0D            [12]10894 	add	a,#0x0d
      005AC3 F8               [12]10895 	mov	r0,a
      005AC4 86 82            [24]10896 	mov	dpl,@r0
      005AC6 08               [12]10897 	inc	r0
      005AC7 86 83            [24]10898 	mov	dph,@r0
      005AC9 08               [12]10899 	inc	r0
      005ACA 86 F0            [24]10900 	mov	b,@r0
      005ACC 12 7C 4D         [24]10901 	lcall	__gptrget
      005ACF FA               [12]10902 	mov	r2,a
      005AD0 A3               [24]10903 	inc	dptr
      005AD1 12 7C 4D         [24]10904 	lcall	__gptrget
      005AD4 FB               [12]10905 	mov	r3,a
      005AD5 A3               [24]10906 	inc	dptr
      005AD6 12 7C 4D         [24]10907 	lcall	__gptrget
      005AD9 FC               [12]10908 	mov	r4,a
      005ADA E5 0D            [12]10909 	mov	a,_bp
      005ADC 24 0A            [12]10910 	add	a,#0x0a
      005ADE F8               [12]10911 	mov	r0,a
      005ADF 86 82            [24]10912 	mov	dpl,@r0
      005AE1 08               [12]10913 	inc	r0
      005AE2 86 83            [24]10914 	mov	dph,@r0
      005AE4 08               [12]10915 	inc	r0
      005AE5 86 F0            [24]10916 	mov	b,@r0
      005AE7 EA               [12]10917 	mov	a,r2
      005AE8 12 79 22         [24]10918 	lcall	__gptrput
      005AEB A3               [24]10919 	inc	dptr
      005AEC EB               [12]10920 	mov	a,r3
      005AED 12 79 22         [24]10921 	lcall	__gptrput
      005AF0 A3               [24]10922 	inc	dptr
      005AF1 EC               [12]10923 	mov	a,r4
      005AF2 12 79 22         [24]10924 	lcall	__gptrput
      005AF5                      10925 00114$:
      005AF5 C0 05            [24]10926 	push	ar5
      005AF7 C0 06            [24]10927 	push	ar6
      005AF9 C0 07            [24]10928 	push	ar7
      005AFB E5 0D            [12]10929 	mov	a,_bp
      005AFD 24 07            [12]10930 	add	a,#0x07
      005AFF F8               [12]10931 	mov	r0,a
      005B00 86 82            [24]10932 	mov	dpl,@r0
      005B02 08               [12]10933 	inc	r0
      005B03 86 83            [24]10934 	mov	dph,@r0
      005B05 08               [12]10935 	inc	r0
      005B06 86 F0            [24]10936 	mov	b,@r0
      005B08 74 00            [12]10937 	mov	a,#0x00
      005B0A 12 79 22         [24]10938 	lcall	__gptrput
      005B0D A3               [24]10939 	inc	dptr
      005B0E 12 79 22         [24]10940 	lcall	__gptrput
      005B11 A3               [24]10941 	inc	dptr
      005B12 12 79 22         [24]10942 	lcall	__gptrput
      005B15 E5 0D            [12]10943 	mov	a,_bp
      005B17 24 14            [12]10944 	add	a,#0x14
      005B19 F8               [12]10945 	mov	r0,a
      005B1A 86 82            [24]10946 	mov	dpl,@r0
      005B1C 08               [12]10947 	inc	r0
      005B1D 86 83            [24]10948 	mov	dph,@r0
      005B1F 08               [12]10949 	inc	r0
      005B20 86 F0            [24]10950 	mov	b,@r0
      005B22 12 7C 4D         [24]10951 	lcall	__gptrget
      005B25 FC               [12]10952 	mov	r4,a
      005B26 1C               [12]10953 	dec	r4
      005B27 E5 0D            [12]10954 	mov	a,_bp
      005B29 24 14            [12]10955 	add	a,#0x14
      005B2B F8               [12]10956 	mov	r0,a
      005B2C 86 82            [24]10957 	mov	dpl,@r0
      005B2E 08               [12]10958 	inc	r0
      005B2F 86 83            [24]10959 	mov	dph,@r0
      005B31 08               [12]10960 	inc	r0
      005B32 86 F0            [24]10961 	mov	b,@r0
      005B34 EC               [12]10962 	mov	a,r4
      005B35 12 79 22         [24]10963 	lcall	__gptrput
                           0035F4 10964 	C$tasks.c$4938$4_0$400 ==.
                                  10965 ;	tasks.c:4938: prvAddTaskToReadyList( pxTCB );
      005B38 E5 0D            [12]10966 	mov	a,_bp
      005B3A 24 10            [12]10967 	add	a,#0x10
      005B3C F8               [12]10968 	mov	r0,a
      005B3D E5 0D            [12]10969 	mov	a,_bp
      005B3F 24 04            [12]10970 	add	a,#0x04
      005B41 F9               [12]10971 	mov	r1,a
      005B42 74 1F            [12]10972 	mov	a,#0x1f
      005B44 26               [12]10973 	add	a,@r0
      005B45 F7               [12]10974 	mov	@r1,a
      005B46 74 00            [12]10975 	mov	a,#0x00
      005B48 08               [12]10976 	inc	r0
      005B49 36               [12]10977 	addc	a,@r0
      005B4A 09               [12]10978 	inc	r1
      005B4B F7               [12]10979 	mov	@r1,a
      005B4C 08               [12]10980 	inc	r0
      005B4D E6               [12]10981 	mov	a,@r0
      005B4E 09               [12]10982 	inc	r1
      005B4F F7               [12]10983 	mov	@r1,a
      005B50 E5 0D            [12]10984 	mov	a,_bp
      005B52 24 04            [12]10985 	add	a,#0x04
      005B54 F8               [12]10986 	mov	r0,a
      005B55 86 82            [24]10987 	mov	dpl,@r0
      005B57 08               [12]10988 	inc	r0
      005B58 86 83            [24]10989 	mov	dph,@r0
      005B5A 08               [12]10990 	inc	r0
      005B5B 86 F0            [24]10991 	mov	b,@r0
      005B5D 12 7C 4D         [24]10992 	lcall	__gptrget
      005B60 FC               [12]10993 	mov	r4,a
      005B61 90 0C 86         [24]10994 	mov	dptr,#_uxTopReadyPriority
      005B64 E0               [24]10995 	movx	a,@dptr
      005B65 FF               [12]10996 	mov	r7,a
      005B66 C3               [12]10997 	clr	c
      005B67 EF               [12]10998 	mov	a,r7
      005B68 9C               [12]10999 	subb	a,r4
      005B69 D0 07            [24]11000 	pop	ar7
      005B6B D0 06            [24]11001 	pop	ar6
      005B6D D0 05            [24]11002 	pop	ar5
      005B6F 40 03            [24]11003 	jc	00154$
      005B71 02 5B 79         [24]11004 	ljmp	00116$
      005B74                      11005 00154$:
      005B74 90 0C 86         [24]11006 	mov	dptr,#_uxTopReadyPriority
      005B77 EC               [12]11007 	mov	a,r4
      005B78 F0               [24]11008 	movx	@dptr,a
      005B79                      11009 00116$:
      005B79 E5 0D            [12]11010 	mov	a,_bp
      005B7B 24 04            [12]11011 	add	a,#0x04
      005B7D F8               [12]11012 	mov	r0,a
      005B7E 86 82            [24]11013 	mov	dpl,@r0
      005B80 08               [12]11014 	inc	r0
      005B81 86 83            [24]11015 	mov	dph,@r0
      005B83 08               [12]11016 	inc	r0
      005B84 86 F0            [24]11017 	mov	b,@r0
      005B86 12 7C 4D         [24]11018 	lcall	__gptrget
      005B89 FC               [12]11019 	mov	r4,a
      005B8A EC               [12]11020 	mov	a,r4
      005B8B 75 F0 0C         [24]11021 	mov	b,#0x0c
      005B8E A4               [48]11022 	mul	ab
      005B8F 24 16            [12]11023 	add	a,#_pxReadyTasksLists
      005B91 FB               [12]11024 	mov	r3,a
      005B92 74 00            [12]11025 	mov	a,#(_pxReadyTasksLists >> 8)
      005B94 35 F0            [12]11026 	addc	a,b
      005B96 FC               [12]11027 	mov	r4,a
      005B97 8B 82            [24]11028 	mov	dpl,r3
      005B99 8C 83            [24]11029 	mov	dph,r4
      005B9B A3               [24]11030 	inc	dptr
      005B9C E0               [24]11031 	movx	a,@dptr
      005B9D FA               [12]11032 	mov	r2,a
      005B9E A3               [24]11033 	inc	dptr
      005B9F E0               [24]11034 	movx	a,@dptr
      005BA0 FB               [12]11035 	mov	r3,a
      005BA1 A3               [24]11036 	inc	dptr
      005BA2 E0               [24]11037 	movx	a,@dptr
      005BA3 FC               [12]11038 	mov	r4,a
      005BA4 A8 0D            [24]11039 	mov	r0,_bp
      005BA6 08               [12]11040 	inc	r0
      005BA7 86 82            [24]11041 	mov	dpl,@r0
      005BA9 08               [12]11042 	inc	r0
      005BAA 86 83            [24]11043 	mov	dph,@r0
      005BAC 08               [12]11044 	inc	r0
      005BAD 86 F0            [24]11045 	mov	b,@r0
      005BAF EA               [12]11046 	mov	a,r2
      005BB0 12 79 22         [24]11047 	lcall	__gptrput
      005BB3 A3               [24]11048 	inc	dptr
      005BB4 EB               [12]11049 	mov	a,r3
      005BB5 12 79 22         [24]11050 	lcall	__gptrput
      005BB8 A3               [24]11051 	inc	dptr
      005BB9 EC               [12]11052 	mov	a,r4
      005BBA 12 79 22         [24]11053 	lcall	__gptrput
      005BBD E5 0D            [12]11054 	mov	a,_bp
      005BBF 24 0A            [12]11055 	add	a,#0x0a
      005BC1 F8               [12]11056 	mov	r0,a
      005BC2 74 05            [12]11057 	mov	a,#0x05
      005BC4 2A               [12]11058 	add	a,r2
      005BC5 F6               [12]11059 	mov	@r0,a
      005BC6 74 00            [12]11060 	mov	a,#0x00
      005BC8 3B               [12]11061 	addc	a,r3
      005BC9 08               [12]11062 	inc	r0
      005BCA F6               [12]11063 	mov	@r0,a
      005BCB 08               [12]11064 	inc	r0
      005BCC A6 04            [24]11065 	mov	@r0,ar4
      005BCE E5 0D            [12]11066 	mov	a,_bp
      005BD0 24 0A            [12]11067 	add	a,#0x0a
      005BD2 F8               [12]11068 	mov	r0,a
      005BD3 86 82            [24]11069 	mov	dpl,@r0
      005BD5 08               [12]11070 	inc	r0
      005BD6 86 83            [24]11071 	mov	dph,@r0
      005BD8 08               [12]11072 	inc	r0
      005BD9 86 F0            [24]11073 	mov	b,@r0
      005BDB 12 7C 4D         [24]11074 	lcall	__gptrget
      005BDE FA               [12]11075 	mov	r2,a
      005BDF A3               [24]11076 	inc	dptr
      005BE0 12 7C 4D         [24]11077 	lcall	__gptrget
      005BE3 FB               [12]11078 	mov	r3,a
      005BE4 A3               [24]11079 	inc	dptr
      005BE5 12 7C 4D         [24]11080 	lcall	__gptrget
      005BE8 FC               [12]11081 	mov	r4,a
      005BE9 E5 0D            [12]11082 	mov	a,_bp
      005BEB 24 0D            [12]11083 	add	a,#0x0d
      005BED F8               [12]11084 	mov	r0,a
      005BEE 86 82            [24]11085 	mov	dpl,@r0
      005BF0 08               [12]11086 	inc	r0
      005BF1 86 83            [24]11087 	mov	dph,@r0
      005BF3 08               [12]11088 	inc	r0
      005BF4 86 F0            [24]11089 	mov	b,@r0
      005BF6 EA               [12]11090 	mov	a,r2
      005BF7 12 79 22         [24]11091 	lcall	__gptrput
      005BFA A3               [24]11092 	inc	dptr
      005BFB EB               [12]11093 	mov	a,r3
      005BFC 12 79 22         [24]11094 	lcall	__gptrput
      005BFF A3               [24]11095 	inc	dptr
      005C00 EC               [12]11096 	mov	a,r4
      005C01 12 79 22         [24]11097 	lcall	__gptrput
      005C04 E5 0D            [12]11098 	mov	a,_bp
      005C06 24 0A            [12]11099 	add	a,#0x0a
      005C08 F8               [12]11100 	mov	r0,a
      005C09 86 82            [24]11101 	mov	dpl,@r0
      005C0B 08               [12]11102 	inc	r0
      005C0C 86 83            [24]11103 	mov	dph,@r0
      005C0E 08               [12]11104 	inc	r0
      005C0F 86 F0            [24]11105 	mov	b,@r0
      005C11 12 7C 4D         [24]11106 	lcall	__gptrget
      005C14 FA               [12]11107 	mov	r2,a
      005C15 A3               [24]11108 	inc	dptr
      005C16 12 7C 4D         [24]11109 	lcall	__gptrget
      005C19 FB               [12]11110 	mov	r3,a
      005C1A A3               [24]11111 	inc	dptr
      005C1B 12 7C 4D         [24]11112 	lcall	__gptrget
      005C1E FC               [12]11113 	mov	r4,a
      005C1F 74 02            [12]11114 	mov	a,#0x02
      005C21 2A               [12]11115 	add	a,r2
      005C22 FA               [12]11116 	mov	r2,a
      005C23 74 00            [12]11117 	mov	a,#0x00
      005C25 3B               [12]11118 	addc	a,r3
      005C26 FB               [12]11119 	mov	r3,a
      005C27 8A 82            [24]11120 	mov	dpl,r2
      005C29 8B 83            [24]11121 	mov	dph,r3
      005C2B 8C F0            [24]11122 	mov	b,r4
      005C2D ED               [12]11123 	mov	a,r5
      005C2E 12 79 22         [24]11124 	lcall	__gptrput
      005C31 A3               [24]11125 	inc	dptr
      005C32 EE               [12]11126 	mov	a,r6
      005C33 12 79 22         [24]11127 	lcall	__gptrput
      005C36 A3               [24]11128 	inc	dptr
      005C37 EF               [12]11129 	mov	a,r7
      005C38 12 79 22         [24]11130 	lcall	__gptrput
      005C3B E5 0D            [12]11131 	mov	a,_bp
      005C3D 24 0A            [12]11132 	add	a,#0x0a
      005C3F F8               [12]11133 	mov	r0,a
      005C40 86 82            [24]11134 	mov	dpl,@r0
      005C42 08               [12]11135 	inc	r0
      005C43 86 83            [24]11136 	mov	dph,@r0
      005C45 08               [12]11137 	inc	r0
      005C46 86 F0            [24]11138 	mov	b,@r0
      005C48 ED               [12]11139 	mov	a,r5
      005C49 12 79 22         [24]11140 	lcall	__gptrput
      005C4C A3               [24]11141 	inc	dptr
      005C4D EE               [12]11142 	mov	a,r6
      005C4E 12 79 22         [24]11143 	lcall	__gptrput
      005C51 A3               [24]11144 	inc	dptr
      005C52 EF               [12]11145 	mov	a,r7
      005C53 12 79 22         [24]11146 	lcall	__gptrput
      005C56 E5 0D            [12]11147 	mov	a,_bp
      005C58 24 04            [12]11148 	add	a,#0x04
      005C5A F8               [12]11149 	mov	r0,a
      005C5B 86 82            [24]11150 	mov	dpl,@r0
      005C5D 08               [12]11151 	inc	r0
      005C5E 86 83            [24]11152 	mov	dph,@r0
      005C60 08               [12]11153 	inc	r0
      005C61 86 F0            [24]11154 	mov	b,@r0
      005C63 12 7C 4D         [24]11155 	lcall	__gptrget
      005C66 FF               [12]11156 	mov	r7,a
      005C67 EF               [12]11157 	mov	a,r7
      005C68 75 F0 0C         [24]11158 	mov	b,#0x0c
      005C6B A4               [48]11159 	mul	ab
      005C6C 24 16            [12]11160 	add	a,#_pxReadyTasksLists
      005C6E FE               [12]11161 	mov	r6,a
      005C6F 74 00            [12]11162 	mov	a,#(_pxReadyTasksLists >> 8)
      005C71 35 F0            [12]11163 	addc	a,b
      005C73 FF               [12]11164 	mov	r7,a
      005C74 7D 00            [12]11165 	mov	r5,#0x00
      005C76 E5 0D            [12]11166 	mov	a,_bp
      005C78 24 07            [12]11167 	add	a,#0x07
      005C7A F8               [12]11168 	mov	r0,a
      005C7B 86 82            [24]11169 	mov	dpl,@r0
      005C7D 08               [12]11170 	inc	r0
      005C7E 86 83            [24]11171 	mov	dph,@r0
      005C80 08               [12]11172 	inc	r0
      005C81 86 F0            [24]11173 	mov	b,@r0
      005C83 EE               [12]11174 	mov	a,r6
      005C84 12 79 22         [24]11175 	lcall	__gptrput
      005C87 A3               [24]11176 	inc	dptr
      005C88 EF               [12]11177 	mov	a,r7
      005C89 12 79 22         [24]11178 	lcall	__gptrput
      005C8C A3               [24]11179 	inc	dptr
      005C8D ED               [12]11180 	mov	a,r5
      005C8E 12 79 22         [24]11181 	lcall	__gptrput
      005C91 E5 0D            [12]11182 	mov	a,_bp
      005C93 24 04            [12]11183 	add	a,#0x04
      005C95 F8               [12]11184 	mov	r0,a
      005C96 86 82            [24]11185 	mov	dpl,@r0
      005C98 08               [12]11186 	inc	r0
      005C99 86 83            [24]11187 	mov	dph,@r0
      005C9B 08               [12]11188 	inc	r0
      005C9C 86 F0            [24]11189 	mov	b,@r0
      005C9E 12 7C 4D         [24]11190 	lcall	__gptrget
      005CA1 FF               [12]11191 	mov	r7,a
      005CA2 EF               [12]11192 	mov	a,r7
      005CA3 75 F0 0C         [24]11193 	mov	b,#0x0c
      005CA6 A4               [48]11194 	mul	ab
      005CA7 24 16            [12]11195 	add	a,#_pxReadyTasksLists
      005CA9 FE               [12]11196 	mov	r6,a
      005CAA 74 00            [12]11197 	mov	a,#(_pxReadyTasksLists >> 8)
      005CAC 35 F0            [12]11198 	addc	a,b
      005CAE FF               [12]11199 	mov	r7,a
      005CAF 8E 82            [24]11200 	mov	dpl,r6
      005CB1 8F 83            [24]11201 	mov	dph,r7
      005CB3 E0               [24]11202 	movx	a,@dptr
      005CB4 FD               [12]11203 	mov	r5,a
      005CB5 0D               [12]11204 	inc	r5
      005CB6 8E 82            [24]11205 	mov	dpl,r6
      005CB8 8F 83            [24]11206 	mov	dph,r7
      005CBA ED               [12]11207 	mov	a,r5
      005CBB F0               [24]11208 	movx	@dptr,a
                           003778 11209 	C$tasks.c$4959$3_0$397 ==.
                                  11210 ;	tasks.c:4959: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      005CBC 90 0C 7F         [24]11211 	mov	dptr,#_pxCurrentTCB
      005CBF E0               [24]11212 	movx	a,@dptr
      005CC0 A3               [24]11213 	inc	dptr
      005CC1 E0               [24]11214 	movx	a,@dptr
      005CC2 A3               [24]11215 	inc	dptr
      005CC3 E0               [24]11216 	movx	a,@dptr
      005CC4                      11217 00118$:
                           003780 11218 	C$tasks.c$4975$1_0$391 ==.
                                  11219 ;	tasks.c:4975: taskEXIT_CRITICAL();
      005CC4 D0 E0            [24]11220 	pop ACC 
      005CC6 53 E0 80         [24]11221 	anl	_ACC,#0x80
      005CC9 E5 E0            [12]11222 	mov	a,_ACC
      005CCB 42 A8            [12]11223 	orl	_IE,a
      005CCD D0 E0            [24]11224 	pop ACC 
                           00378B 11225 	C$tasks.c$4977$1_0$391 ==.
                                  11226 ;	tasks.c:4977: return xReturn;
      005CCF E5 0D            [12]11227 	mov	a,_bp
      005CD1 24 13            [12]11228 	add	a,#0x13
      005CD3 F8               [12]11229 	mov	r0,a
      005CD4 86 82            [24]11230 	mov	dpl,@r0
      005CD6                      11231 00119$:
                           003792 11232 	C$tasks.c$4978$1_0$391 ==.
                                  11233 ;	tasks.c:4978: }
      005CD6 85 0D 81         [24]11234 	mov	sp,_bp
      005CD9 D0 0D            [24]11235 	pop	_bp
                           003797 11236 	C$tasks.c$4978$1_0$391 ==.
                           003797 11237 	XG$xTaskGenericNotify$0$0 ==.
      005CDB 22               [24]11238 	ret
                                  11239 ;------------------------------------------------------------
                                  11240 ;Allocation info for local variables in function 'xTaskGenericNotifyFromISR'
                                  11241 ;------------------------------------------------------------
                                  11242 ;uxIndexToNotify           Allocated to stack - _bp -3
                                  11243 ;ulValue                   Allocated to stack - _bp -7
                                  11244 ;eAction                   Allocated to stack - _bp -8
                                  11245 ;pulPreviousNotificationValue Allocated to stack - _bp -11
                                  11246 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -14
                                  11247 ;xTaskToNotify             Allocated to registers r7 r6 r5 
                                  11248 ;pxTCB                     Allocated to stack - _bp +17
                                  11249 ;ucOriginalNotifyState     Allocated to registers r4 
                                  11250 ;xReturn                   Allocated to stack - _bp +16
                                  11251 ;uxSavedInterruptStatus    Allocated to registers 
                                  11252 ;pxList                    Allocated to stack - _bp +20
                                  11253 ;pxIndex                   Allocated to registers r2 r3 r4 
                                  11254 ;pxIndex                   Allocated to stack - _bp +20
                                  11255 ;sloc0                     Allocated to stack - _bp +7
                                  11256 ;sloc1                     Allocated to stack - _bp +10
                                  11257 ;sloc2                     Allocated to stack - _bp +4
                                  11258 ;sloc3                     Allocated to stack - _bp +1
                                  11259 ;sloc4                     Allocated to stack - _bp +13
                                  11260 ;------------------------------------------------------------
                           003798 11261 	G$xTaskGenericNotifyFromISR$0$0 ==.
                           003798 11262 	C$tasks.c$4985$1_0$407 ==.
                                  11263 ;	tasks.c:4985: BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
                                  11264 ;	-----------------------------------------
                                  11265 ;	 function xTaskGenericNotifyFromISR
                                  11266 ;	-----------------------------------------
      005CDC                      11267 _xTaskGenericNotifyFromISR:
      005CDC C0 0D            [24]11268 	push	_bp
      005CDE 85 81 0D         [24]11269 	mov	_bp,sp
      005CE1 E5 81            [12]11270 	mov	a,sp
      005CE3 24 16            [12]11271 	add	a,#0x16
      005CE5 F5 81            [12]11272 	mov	sp,a
      005CE7 AF 82            [24]11273 	mov	r7,dpl
      005CE9 AE 83            [24]11274 	mov	r6,dph
      005CEB AD F0            [24]11275 	mov	r5,b
                           0037A9 11276 	C$tasks.c$4994$2_0$407 ==.
                                  11277 ;	tasks.c:4994: BaseType_t xReturn = pdPASS;
      005CED E5 0D            [12]11278 	mov	a,_bp
      005CEF 24 10            [12]11279 	add	a,#0x10
      005CF1 F8               [12]11280 	mov	r0,a
      005CF2 76 01            [12]11281 	mov	@r0,#0x01
                           0037B0 11282 	C$tasks.c$5018$1_0$407 ==.
                                  11283 ;	tasks.c:5018: pxTCB = xTaskToNotify;
      005CF4 E5 0D            [12]11284 	mov	a,_bp
      005CF6 24 11            [12]11285 	add	a,#0x11
      005CF8 F8               [12]11286 	mov	r0,a
      005CF9 A6 07            [24]11287 	mov	@r0,ar7
      005CFB 08               [12]11288 	inc	r0
      005CFC A6 06            [24]11289 	mov	@r0,ar6
      005CFE 08               [12]11290 	inc	r0
      005CFF A6 05            [24]11291 	mov	@r0,ar5
                           0037BD 11292 	C$tasks.c$5022$2_0$408 ==.
                                  11293 ;	tasks.c:5022: if( pulPreviousNotificationValue != NULL )
      005D01 E5 0D            [12]11294 	mov	a,_bp
      005D03 24 F5            [12]11295 	add	a,#0xf5
      005D05 F8               [12]11296 	mov	r0,a
      005D06 E6               [12]11297 	mov	a,@r0
      005D07 08               [12]11298 	inc	r0
      005D08 46               [12]11299 	orl	a,@r0
      005D09 70 03            [24]11300 	jnz	00164$
      005D0B 02 5D 79         [24]11301 	ljmp	00102$
      005D0E                      11302 00164$:
                           0037CA 11303 	C$tasks.c$5024$1_0$407 ==.
                                  11304 ;	tasks.c:5024: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
      005D0E E5 0D            [12]11305 	mov	a,_bp
      005D10 24 F5            [12]11306 	add	a,#0xf5
      005D12 F8               [12]11307 	mov	r0,a
      005D13 E5 0D            [12]11308 	mov	a,_bp
      005D15 24 0A            [12]11309 	add	a,#0x0a
      005D17 F9               [12]11310 	mov	r1,a
      005D18 E6               [12]11311 	mov	a,@r0
      005D19 F7               [12]11312 	mov	@r1,a
      005D1A 08               [12]11313 	inc	r0
      005D1B E6               [12]11314 	mov	a,@r0
      005D1C 09               [12]11315 	inc	r1
      005D1D F7               [12]11316 	mov	@r1,a
      005D1E 08               [12]11317 	inc	r0
      005D1F E6               [12]11318 	mov	a,@r0
      005D20 09               [12]11319 	inc	r1
      005D21 F7               [12]11320 	mov	@r1,a
      005D22 74 2E            [12]11321 	mov	a,#0x2e
      005D24 2F               [12]11322 	add	a,r7
      005D25 FF               [12]11323 	mov	r7,a
      005D26 74 00            [12]11324 	mov	a,#0x00
      005D28 3E               [12]11325 	addc	a,r6
      005D29 FE               [12]11326 	mov	r6,a
      005D2A E5 0D            [12]11327 	mov	a,_bp
      005D2C 24 FD            [12]11328 	add	a,#0xfd
      005D2E F8               [12]11329 	mov	r0,a
      005D2F E6               [12]11330 	mov	a,@r0
      005D30 25 E0            [12]11331 	add	a,acc
      005D32 FC               [12]11332 	mov	r4,a
      005D33 EC               [12]11333 	mov	a,r4
      005D34 25 E0            [12]11334 	add	a,acc
      005D36 FC               [12]11335 	mov	r4,a
      005D37 EC               [12]11336 	mov	a,r4
      005D38 2F               [12]11337 	add	a,r7
      005D39 FA               [12]11338 	mov	r2,a
      005D3A 74 00            [12]11339 	mov	a,#0x00
      005D3C 3E               [12]11340 	addc	a,r6
      005D3D FB               [12]11341 	mov	r3,a
      005D3E 8D 04            [24]11342 	mov	ar4,r5
      005D40 8A 82            [24]11343 	mov	dpl,r2
      005D42 8B 83            [24]11344 	mov	dph,r3
      005D44 8C F0            [24]11345 	mov	b,r4
      005D46 12 7C 4D         [24]11346 	lcall	__gptrget
      005D49 FA               [12]11347 	mov	r2,a
      005D4A A3               [24]11348 	inc	dptr
      005D4B 12 7C 4D         [24]11349 	lcall	__gptrget
      005D4E FB               [12]11350 	mov	r3,a
      005D4F A3               [24]11351 	inc	dptr
      005D50 12 7C 4D         [24]11352 	lcall	__gptrget
      005D53 FC               [12]11353 	mov	r4,a
      005D54 A3               [24]11354 	inc	dptr
      005D55 12 7C 4D         [24]11355 	lcall	__gptrget
      005D58 FF               [12]11356 	mov	r7,a
      005D59 E5 0D            [12]11357 	mov	a,_bp
      005D5B 24 0A            [12]11358 	add	a,#0x0a
      005D5D F8               [12]11359 	mov	r0,a
      005D5E 86 82            [24]11360 	mov	dpl,@r0
      005D60 08               [12]11361 	inc	r0
      005D61 86 83            [24]11362 	mov	dph,@r0
      005D63 08               [12]11363 	inc	r0
      005D64 86 F0            [24]11364 	mov	b,@r0
      005D66 EA               [12]11365 	mov	a,r2
      005D67 12 79 22         [24]11366 	lcall	__gptrput
      005D6A A3               [24]11367 	inc	dptr
      005D6B EB               [12]11368 	mov	a,r3
      005D6C 12 79 22         [24]11369 	lcall	__gptrput
      005D6F A3               [24]11370 	inc	dptr
      005D70 EC               [12]11371 	mov	a,r4
      005D71 12 79 22         [24]11372 	lcall	__gptrput
      005D74 A3               [24]11373 	inc	dptr
      005D75 EF               [12]11374 	mov	a,r7
      005D76 12 79 22         [24]11375 	lcall	__gptrput
                           003835 11376 	C$tasks.c$5116$1_0$407 ==.
                                  11377 ;	tasks.c:5116: return xReturn;
                           003835 11378 	C$tasks.c$5024$2_0$408 ==.
                                  11379 ;	tasks.c:5024: *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
      005D79                      11380 00102$:
                           003835 11381 	C$tasks.c$5027$2_0$408 ==.
                                  11382 ;	tasks.c:5027: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
      005D79 E5 0D            [12]11383 	mov	a,_bp
      005D7B 24 11            [12]11384 	add	a,#0x11
      005D7D F8               [12]11385 	mov	r0,a
      005D7E 74 32            [12]11386 	mov	a,#0x32
      005D80 26               [12]11387 	add	a,@r0
      005D81 FD               [12]11388 	mov	r5,a
      005D82 74 00            [12]11389 	mov	a,#0x00
      005D84 08               [12]11390 	inc	r0
      005D85 36               [12]11391 	addc	a,@r0
      005D86 FE               [12]11392 	mov	r6,a
      005D87 08               [12]11393 	inc	r0
      005D88 86 07            [24]11394 	mov	ar7,@r0
      005D8A E5 0D            [12]11395 	mov	a,_bp
      005D8C 24 FD            [12]11396 	add	a,#0xfd
      005D8E F8               [12]11397 	mov	r0,a
      005D8F 86 02            [24]11398 	mov	ar2,@r0
      005D91 EA               [12]11399 	mov	a,r2
      005D92 2D               [12]11400 	add	a,r5
      005D93 FD               [12]11401 	mov	r5,a
      005D94 74 00            [12]11402 	mov	a,#0x00
      005D96 3E               [12]11403 	addc	a,r6
      005D97 FE               [12]11404 	mov	r6,a
      005D98 8D 82            [24]11405 	mov	dpl,r5
      005D9A 8E 83            [24]11406 	mov	dph,r6
      005D9C 8F F0            [24]11407 	mov	b,r7
      005D9E 12 7C 4D         [24]11408 	lcall	__gptrget
      005DA1 FC               [12]11409 	mov	r4,a
                           00385E 11410 	C$tasks.c$5028$2_0$408 ==.
                                  11411 ;	tasks.c:5028: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
      005DA2 8D 82            [24]11412 	mov	dpl,r5
      005DA4 8E 83            [24]11413 	mov	dph,r6
      005DA6 8F F0            [24]11414 	mov	b,r7
      005DA8 74 02            [12]11415 	mov	a,#0x02
      005DAA 12 79 22         [24]11416 	lcall	__gptrput
                           003869 11417 	C$tasks.c$5030$2_0$408 ==.
                                  11418 ;	tasks.c:5030: switch( eAction )
      005DAD E5 0D            [12]11419 	mov	a,_bp
      005DAF 24 F8            [12]11420 	add	a,#0xf8
      005DB1 F8               [12]11421 	mov	r0,a
      005DB2 C3               [12]11422 	clr	c
      005DB3 74 04            [12]11423 	mov	a,#0x04
      005DB5 96               [12]11424 	subb	a,@r0
      005DB6 50 03            [24]11425 	jnc	00165$
      005DB8 02 5F 6C         [24]11426 	ljmp	00112$
      005DBB                      11427 00165$:
      005DBB E5 0D            [12]11428 	mov	a,_bp
      005DBD 24 F8            [12]11429 	add	a,#0xf8
      005DBF F8               [12]11430 	mov	r0,a
      005DC0 E6               [12]11431 	mov	a,@r0
      005DC1 26               [12]11432 	add	a,@r0
      005DC2 26               [12]11433 	add	a,@r0
      005DC3 90 5D C7         [24]11434 	mov	dptr,#00166$
      005DC6 73               [24]11435 	jmp	@a+dptr
      005DC7                      11436 00166$:
      005DC7 02 5F 6C         [24]11437 	ljmp	00112$
      005DCA 02 5D D6         [24]11438 	ljmp	00103$
      005DCD 02 5E 5A         [24]11439 	ljmp	00104$
      005DD0 02 5E D7         [24]11440 	ljmp	00105$
      005DD3 02 5F 1B         [24]11441 	ljmp	00106$
                           003892 11442 	C$tasks.c$5032$3_0$410 ==.
                                  11443 ;	tasks.c:5032: case eSetBits:
      005DD6                      11444 00103$:
                           003892 11445 	C$tasks.c$5033$1_0$407 ==.
                                  11446 ;	tasks.c:5033: pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
      005DD6 C0 04            [24]11447 	push	ar4
      005DD8 E5 0D            [12]11448 	mov	a,_bp
      005DDA 24 11            [12]11449 	add	a,#0x11
      005DDC F8               [12]11450 	mov	r0,a
      005DDD 74 2E            [12]11451 	mov	a,#0x2e
      005DDF 26               [12]11452 	add	a,@r0
      005DE0 FD               [12]11453 	mov	r5,a
      005DE1 74 00            [12]11454 	mov	a,#0x00
      005DE3 08               [12]11455 	inc	r0
      005DE4 36               [12]11456 	addc	a,@r0
      005DE5 FE               [12]11457 	mov	r6,a
      005DE6 08               [12]11458 	inc	r0
      005DE7 86 07            [24]11459 	mov	ar7,@r0
      005DE9 EA               [12]11460 	mov	a,r2
      005DEA 25 E0            [12]11461 	add	a,acc
      005DEC FB               [12]11462 	mov	r3,a
      005DED EB               [12]11463 	mov	a,r3
      005DEE 25 E0            [12]11464 	add	a,acc
      005DF0 FB               [12]11465 	mov	r3,a
      005DF1 E5 0D            [12]11466 	mov	a,_bp
      005DF3 24 07            [12]11467 	add	a,#0x07
      005DF5 F8               [12]11468 	mov	r0,a
      005DF6 EB               [12]11469 	mov	a,r3
      005DF7 2D               [12]11470 	add	a,r5
      005DF8 F6               [12]11471 	mov	@r0,a
      005DF9 74 00            [12]11472 	mov	a,#0x00
      005DFB 3E               [12]11473 	addc	a,r6
      005DFC 08               [12]11474 	inc	r0
      005DFD F6               [12]11475 	mov	@r0,a
      005DFE 08               [12]11476 	inc	r0
      005DFF A6 07            [24]11477 	mov	@r0,ar7
      005E01 E5 0D            [12]11478 	mov	a,_bp
      005E03 24 07            [12]11479 	add	a,#0x07
      005E05 F8               [12]11480 	mov	r0,a
      005E06 86 82            [24]11481 	mov	dpl,@r0
      005E08 08               [12]11482 	inc	r0
      005E09 86 83            [24]11483 	mov	dph,@r0
      005E0B 08               [12]11484 	inc	r0
      005E0C 86 F0            [24]11485 	mov	b,@r0
      005E0E 12 7C 4D         [24]11486 	lcall	__gptrget
      005E11 FA               [12]11487 	mov	r2,a
      005E12 A3               [24]11488 	inc	dptr
      005E13 12 7C 4D         [24]11489 	lcall	__gptrget
      005E16 FB               [12]11490 	mov	r3,a
      005E17 A3               [24]11491 	inc	dptr
      005E18 12 7C 4D         [24]11492 	lcall	__gptrget
      005E1B FC               [12]11493 	mov	r4,a
      005E1C A3               [24]11494 	inc	dptr
      005E1D 12 7C 4D         [24]11495 	lcall	__gptrget
      005E20 FF               [12]11496 	mov	r7,a
      005E21 E5 0D            [12]11497 	mov	a,_bp
      005E23 24 F9            [12]11498 	add	a,#0xf9
      005E25 F8               [12]11499 	mov	r0,a
      005E26 E6               [12]11500 	mov	a,@r0
      005E27 42 02            [12]11501 	orl	ar2,a
      005E29 08               [12]11502 	inc	r0
      005E2A E6               [12]11503 	mov	a,@r0
      005E2B 42 03            [12]11504 	orl	ar3,a
      005E2D 08               [12]11505 	inc	r0
      005E2E E6               [12]11506 	mov	a,@r0
      005E2F 42 04            [12]11507 	orl	ar4,a
      005E31 08               [12]11508 	inc	r0
      005E32 E6               [12]11509 	mov	a,@r0
      005E33 42 07            [12]11510 	orl	ar7,a
      005E35 E5 0D            [12]11511 	mov	a,_bp
      005E37 24 07            [12]11512 	add	a,#0x07
      005E39 F8               [12]11513 	mov	r0,a
      005E3A 86 82            [24]11514 	mov	dpl,@r0
      005E3C 08               [12]11515 	inc	r0
      005E3D 86 83            [24]11516 	mov	dph,@r0
      005E3F 08               [12]11517 	inc	r0
      005E40 86 F0            [24]11518 	mov	b,@r0
      005E42 EA               [12]11519 	mov	a,r2
      005E43 12 79 22         [24]11520 	lcall	__gptrput
      005E46 A3               [24]11521 	inc	dptr
      005E47 EB               [12]11522 	mov	a,r3
      005E48 12 79 22         [24]11523 	lcall	__gptrput
      005E4B A3               [24]11524 	inc	dptr
      005E4C EC               [12]11525 	mov	a,r4
      005E4D 12 79 22         [24]11526 	lcall	__gptrput
      005E50 A3               [24]11527 	inc	dptr
      005E51 EF               [12]11528 	mov	a,r7
      005E52 12 79 22         [24]11529 	lcall	__gptrput
                           003911 11530 	C$tasks.c$5034$1_0$407 ==.
                                  11531 ;	tasks.c:5034: break;
      005E55 D0 04            [24]11532 	pop	ar4
      005E57 02 5F 6C         [24]11533 	ljmp	00112$
                           003916 11534 	C$tasks.c$5036$3_0$410 ==.
                                  11535 ;	tasks.c:5036: case eIncrement:
      005E5A                      11536 00104$:
                           003916 11537 	C$tasks.c$5037$1_0$407 ==.
                                  11538 ;	tasks.c:5037: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
      005E5A C0 04            [24]11539 	push	ar4
      005E5C E5 0D            [12]11540 	mov	a,_bp
      005E5E 24 11            [12]11541 	add	a,#0x11
      005E60 F8               [12]11542 	mov	r0,a
      005E61 74 2E            [12]11543 	mov	a,#0x2e
      005E63 26               [12]11544 	add	a,@r0
      005E64 FD               [12]11545 	mov	r5,a
      005E65 74 00            [12]11546 	mov	a,#0x00
      005E67 08               [12]11547 	inc	r0
      005E68 36               [12]11548 	addc	a,@r0
      005E69 FE               [12]11549 	mov	r6,a
      005E6A 08               [12]11550 	inc	r0
      005E6B 86 07            [24]11551 	mov	ar7,@r0
      005E6D EA               [12]11552 	mov	a,r2
      005E6E 25 E0            [12]11553 	add	a,acc
      005E70 FB               [12]11554 	mov	r3,a
      005E71 EB               [12]11555 	mov	a,r3
      005E72 25 E0            [12]11556 	add	a,acc
      005E74 FB               [12]11557 	mov	r3,a
      005E75 E5 0D            [12]11558 	mov	a,_bp
      005E77 24 07            [12]11559 	add	a,#0x07
      005E79 F8               [12]11560 	mov	r0,a
      005E7A EB               [12]11561 	mov	a,r3
      005E7B 2D               [12]11562 	add	a,r5
      005E7C F6               [12]11563 	mov	@r0,a
      005E7D 74 00            [12]11564 	mov	a,#0x00
      005E7F 3E               [12]11565 	addc	a,r6
      005E80 08               [12]11566 	inc	r0
      005E81 F6               [12]11567 	mov	@r0,a
      005E82 08               [12]11568 	inc	r0
      005E83 A6 07            [24]11569 	mov	@r0,ar7
      005E85 E5 0D            [12]11570 	mov	a,_bp
      005E87 24 07            [12]11571 	add	a,#0x07
      005E89 F8               [12]11572 	mov	r0,a
      005E8A 86 82            [24]11573 	mov	dpl,@r0
      005E8C 08               [12]11574 	inc	r0
      005E8D 86 83            [24]11575 	mov	dph,@r0
      005E8F 08               [12]11576 	inc	r0
      005E90 86 F0            [24]11577 	mov	b,@r0
      005E92 12 7C 4D         [24]11578 	lcall	__gptrget
      005E95 FA               [12]11579 	mov	r2,a
      005E96 A3               [24]11580 	inc	dptr
      005E97 12 7C 4D         [24]11581 	lcall	__gptrget
      005E9A FB               [12]11582 	mov	r3,a
      005E9B A3               [24]11583 	inc	dptr
      005E9C 12 7C 4D         [24]11584 	lcall	__gptrget
      005E9F FC               [12]11585 	mov	r4,a
      005EA0 A3               [24]11586 	inc	dptr
      005EA1 12 7C 4D         [24]11587 	lcall	__gptrget
      005EA4 FF               [12]11588 	mov	r7,a
      005EA5 0A               [12]11589 	inc	r2
      005EA6 BA 00 09         [24]11590 	cjne	r2,#0x00,00167$
      005EA9 0B               [12]11591 	inc	r3
      005EAA BB 00 05         [24]11592 	cjne	r3,#0x00,00167$
      005EAD 0C               [12]11593 	inc	r4
      005EAE BC 00 01         [24]11594 	cjne	r4,#0x00,00167$
      005EB1 0F               [12]11595 	inc	r7
      005EB2                      11596 00167$:
      005EB2 E5 0D            [12]11597 	mov	a,_bp
      005EB4 24 07            [12]11598 	add	a,#0x07
      005EB6 F8               [12]11599 	mov	r0,a
      005EB7 86 82            [24]11600 	mov	dpl,@r0
      005EB9 08               [12]11601 	inc	r0
      005EBA 86 83            [24]11602 	mov	dph,@r0
      005EBC 08               [12]11603 	inc	r0
      005EBD 86 F0            [24]11604 	mov	b,@r0
      005EBF EA               [12]11605 	mov	a,r2
      005EC0 12 79 22         [24]11606 	lcall	__gptrput
      005EC3 A3               [24]11607 	inc	dptr
      005EC4 EB               [12]11608 	mov	a,r3
      005EC5 12 79 22         [24]11609 	lcall	__gptrput
      005EC8 A3               [24]11610 	inc	dptr
      005EC9 EC               [12]11611 	mov	a,r4
      005ECA 12 79 22         [24]11612 	lcall	__gptrput
      005ECD A3               [24]11613 	inc	dptr
      005ECE EF               [12]11614 	mov	a,r7
      005ECF 12 79 22         [24]11615 	lcall	__gptrput
                           00398E 11616 	C$tasks.c$5038$1_0$407 ==.
                                  11617 ;	tasks.c:5038: break;
      005ED2 D0 04            [24]11618 	pop	ar4
      005ED4 02 5F 6C         [24]11619 	ljmp	00112$
                           003993 11620 	C$tasks.c$5040$3_0$410 ==.
                                  11621 ;	tasks.c:5040: case eSetValueWithOverwrite:
      005ED7                      11622 00105$:
                           003993 11623 	C$tasks.c$5041$3_0$410 ==.
                                  11624 ;	tasks.c:5041: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
      005ED7 E5 0D            [12]11625 	mov	a,_bp
      005ED9 24 11            [12]11626 	add	a,#0x11
      005EDB F8               [12]11627 	mov	r0,a
      005EDC 74 2E            [12]11628 	mov	a,#0x2e
      005EDE 26               [12]11629 	add	a,@r0
      005EDF FD               [12]11630 	mov	r5,a
      005EE0 74 00            [12]11631 	mov	a,#0x00
      005EE2 08               [12]11632 	inc	r0
      005EE3 36               [12]11633 	addc	a,@r0
      005EE4 FE               [12]11634 	mov	r6,a
      005EE5 08               [12]11635 	inc	r0
      005EE6 86 07            [24]11636 	mov	ar7,@r0
      005EE8 EA               [12]11637 	mov	a,r2
      005EE9 25 E0            [12]11638 	add	a,acc
      005EEB FB               [12]11639 	mov	r3,a
      005EEC EB               [12]11640 	mov	a,r3
      005EED 25 E0            [12]11641 	add	a,acc
      005EEF FB               [12]11642 	mov	r3,a
      005EF0 EB               [12]11643 	mov	a,r3
      005EF1 2D               [12]11644 	add	a,r5
      005EF2 FD               [12]11645 	mov	r5,a
      005EF3 74 00            [12]11646 	mov	a,#0x00
      005EF5 3E               [12]11647 	addc	a,r6
      005EF6 FE               [12]11648 	mov	r6,a
      005EF7 8D 82            [24]11649 	mov	dpl,r5
      005EF9 8E 83            [24]11650 	mov	dph,r6
      005EFB 8F F0            [24]11651 	mov	b,r7
      005EFD E5 0D            [12]11652 	mov	a,_bp
      005EFF 24 F9            [12]11653 	add	a,#0xf9
      005F01 F8               [12]11654 	mov	r0,a
      005F02 E6               [12]11655 	mov	a,@r0
      005F03 12 79 22         [24]11656 	lcall	__gptrput
      005F06 A3               [24]11657 	inc	dptr
      005F07 08               [12]11658 	inc	r0
      005F08 E6               [12]11659 	mov	a,@r0
      005F09 12 79 22         [24]11660 	lcall	__gptrput
      005F0C A3               [24]11661 	inc	dptr
      005F0D 08               [12]11662 	inc	r0
      005F0E E6               [12]11663 	mov	a,@r0
      005F0F 12 79 22         [24]11664 	lcall	__gptrput
      005F12 A3               [24]11665 	inc	dptr
      005F13 08               [12]11666 	inc	r0
      005F14 E6               [12]11667 	mov	a,@r0
      005F15 12 79 22         [24]11668 	lcall	__gptrput
                           0039D4 11669 	C$tasks.c$5042$3_0$410 ==.
                                  11670 ;	tasks.c:5042: break;
      005F18 02 5F 6C         [24]11671 	ljmp	00112$
                           0039D7 11672 	C$tasks.c$5044$3_0$410 ==.
                                  11673 ;	tasks.c:5044: case eSetValueWithoutOverwrite:
      005F1B                      11674 00106$:
                           0039D7 11675 	C$tasks.c$5046$3_0$410 ==.
                                  11676 ;	tasks.c:5046: if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
      005F1B BC 02 03         [24]11677 	cjne	r4,#0x02,00168$
      005F1E 02 5F 65         [24]11678 	ljmp	00108$
      005F21                      11679 00168$:
                           0039DD 11680 	C$tasks.c$5048$4_0$411 ==.
                                  11681 ;	tasks.c:5048: pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
      005F21 E5 0D            [12]11682 	mov	a,_bp
      005F23 24 11            [12]11683 	add	a,#0x11
      005F25 F8               [12]11684 	mov	r0,a
      005F26 74 2E            [12]11685 	mov	a,#0x2e
      005F28 26               [12]11686 	add	a,@r0
      005F29 FD               [12]11687 	mov	r5,a
      005F2A 74 00            [12]11688 	mov	a,#0x00
      005F2C 08               [12]11689 	inc	r0
      005F2D 36               [12]11690 	addc	a,@r0
      005F2E FE               [12]11691 	mov	r6,a
      005F2F 08               [12]11692 	inc	r0
      005F30 86 07            [24]11693 	mov	ar7,@r0
      005F32 EA               [12]11694 	mov	a,r2
      005F33 25 E0            [12]11695 	add	a,acc
      005F35 FB               [12]11696 	mov	r3,a
      005F36 EB               [12]11697 	mov	a,r3
      005F37 25 E0            [12]11698 	add	a,acc
      005F39 FB               [12]11699 	mov	r3,a
      005F3A EB               [12]11700 	mov	a,r3
      005F3B 2D               [12]11701 	add	a,r5
      005F3C FD               [12]11702 	mov	r5,a
      005F3D 74 00            [12]11703 	mov	a,#0x00
      005F3F 3E               [12]11704 	addc	a,r6
      005F40 FE               [12]11705 	mov	r6,a
      005F41 8D 82            [24]11706 	mov	dpl,r5
      005F43 8E 83            [24]11707 	mov	dph,r6
      005F45 8F F0            [24]11708 	mov	b,r7
      005F47 E5 0D            [12]11709 	mov	a,_bp
      005F49 24 F9            [12]11710 	add	a,#0xf9
      005F4B F8               [12]11711 	mov	r0,a
      005F4C E6               [12]11712 	mov	a,@r0
      005F4D 12 79 22         [24]11713 	lcall	__gptrput
      005F50 A3               [24]11714 	inc	dptr
      005F51 08               [12]11715 	inc	r0
      005F52 E6               [12]11716 	mov	a,@r0
      005F53 12 79 22         [24]11717 	lcall	__gptrput
      005F56 A3               [24]11718 	inc	dptr
      005F57 08               [12]11719 	inc	r0
      005F58 E6               [12]11720 	mov	a,@r0
      005F59 12 79 22         [24]11721 	lcall	__gptrput
      005F5C A3               [24]11722 	inc	dptr
      005F5D 08               [12]11723 	inc	r0
      005F5E E6               [12]11724 	mov	a,@r0
      005F5F 12 79 22         [24]11725 	lcall	__gptrput
      005F62 02 5F 6C         [24]11726 	ljmp	00112$
      005F65                      11727 00108$:
                           003A21 11728 	C$tasks.c$5053$4_0$412 ==.
                                  11729 ;	tasks.c:5053: xReturn = pdFAIL;
      005F65 E5 0D            [12]11730 	mov	a,_bp
      005F67 24 10            [12]11731 	add	a,#0x10
      005F69 F8               [12]11732 	mov	r0,a
      005F6A 76 00            [12]11733 	mov	@r0,#0x00
                           003A28 11734 	C$tasks.c$5071$2_0$408 ==.
                                  11735 ;	tasks.c:5071: }
      005F6C                      11736 00112$:
                           003A28 11737 	C$tasks.c$5077$2_0$408 ==.
                                  11738 ;	tasks.c:5077: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      005F6C BC 01 02         [24]11739 	cjne	r4,#0x01,00169$
      005F6F 80 03            [24]11740 	sjmp	00170$
      005F71                      11741 00169$:
      005F71 02 64 68         [24]11742 	ljmp	00125$
      005F74                      11743 00170$:
                           003A30 11744 	C$tasks.c$5082$3_0$413 ==.
                                  11745 ;	tasks.c:5082: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      005F74 90 0C 92         [24]11746 	mov	dptr,#_uxSchedulerSuspended
      005F77 E0               [24]11747 	movx	a,@dptr
      005F78 60 03            [24]11748 	jz	00171$
      005F7A 02 62 E2         [24]11749 	ljmp	00118$
      005F7D                      11750 00171$:
                           003A39 11751 	C$tasks.c$5084$5_0$415 ==.
                                  11752 ;	tasks.c:5084: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
      005F7D E5 0D            [12]11753 	mov	a,_bp
      005F7F 24 11            [12]11754 	add	a,#0x11
      005F81 F8               [12]11755 	mov	r0,a
      005F82 74 03            [12]11756 	mov	a,#0x03
      005F84 26               [12]11757 	add	a,@r0
      005F85 FD               [12]11758 	mov	r5,a
      005F86 74 00            [12]11759 	mov	a,#0x00
      005F88 08               [12]11760 	inc	r0
      005F89 36               [12]11761 	addc	a,@r0
      005F8A FE               [12]11762 	mov	r6,a
      005F8B 08               [12]11763 	inc	r0
      005F8C 86 07            [24]11764 	mov	ar7,@r0
      005F8E E5 0D            [12]11765 	mov	a,_bp
      005F90 24 0A            [12]11766 	add	a,#0x0a
      005F92 F8               [12]11767 	mov	r0,a
      005F93 74 0B            [12]11768 	mov	a,#0x0b
      005F95 2D               [12]11769 	add	a,r5
      005F96 F6               [12]11770 	mov	@r0,a
      005F97 74 00            [12]11771 	mov	a,#0x00
      005F99 3E               [12]11772 	addc	a,r6
      005F9A 08               [12]11773 	inc	r0
      005F9B F6               [12]11774 	mov	@r0,a
      005F9C 08               [12]11775 	inc	r0
      005F9D A6 07            [24]11776 	mov	@r0,ar7
      005F9F E5 0D            [12]11777 	mov	a,_bp
      005FA1 24 0A            [12]11778 	add	a,#0x0a
      005FA3 F8               [12]11779 	mov	r0,a
      005FA4 86 82            [24]11780 	mov	dpl,@r0
      005FA6 08               [12]11781 	inc	r0
      005FA7 86 83            [24]11782 	mov	dph,@r0
      005FA9 08               [12]11783 	inc	r0
      005FAA 86 F0            [24]11784 	mov	b,@r0
      005FAC E5 0D            [12]11785 	mov	a,_bp
      005FAE 24 14            [12]11786 	add	a,#0x14
      005FB0 F9               [12]11787 	mov	r1,a
      005FB1 12 7C 4D         [24]11788 	lcall	__gptrget
      005FB4 F7               [12]11789 	mov	@r1,a
      005FB5 A3               [24]11790 	inc	dptr
      005FB6 12 7C 4D         [24]11791 	lcall	__gptrget
      005FB9 09               [12]11792 	inc	r1
      005FBA F7               [12]11793 	mov	@r1,a
      005FBB A3               [24]11794 	inc	dptr
      005FBC 12 7C 4D         [24]11795 	lcall	__gptrget
      005FBF 09               [12]11796 	inc	r1
      005FC0 F7               [12]11797 	mov	@r1,a
      005FC1 E5 0D            [12]11798 	mov	a,_bp
      005FC3 24 07            [12]11799 	add	a,#0x07
      005FC5 F8               [12]11800 	mov	r0,a
      005FC6 74 02            [12]11801 	mov	a,#0x02
      005FC8 2D               [12]11802 	add	a,r5
      005FC9 F6               [12]11803 	mov	@r0,a
      005FCA 74 00            [12]11804 	mov	a,#0x00
      005FCC 3E               [12]11805 	addc	a,r6
      005FCD 08               [12]11806 	inc	r0
      005FCE F6               [12]11807 	mov	@r0,a
      005FCF 08               [12]11808 	inc	r0
      005FD0 A6 07            [24]11809 	mov	@r0,ar7
      005FD2 E5 0D            [12]11810 	mov	a,_bp
      005FD4 24 07            [12]11811 	add	a,#0x07
      005FD6 F8               [12]11812 	mov	r0,a
      005FD7 86 82            [24]11813 	mov	dpl,@r0
      005FD9 08               [12]11814 	inc	r0
      005FDA 86 83            [24]11815 	mov	dph,@r0
      005FDC 08               [12]11816 	inc	r0
      005FDD 86 F0            [24]11817 	mov	b,@r0
      005FDF 12 7C 4D         [24]11818 	lcall	__gptrget
      005FE2 FA               [12]11819 	mov	r2,a
      005FE3 A3               [24]11820 	inc	dptr
      005FE4 12 7C 4D         [24]11821 	lcall	__gptrget
      005FE7 FB               [12]11822 	mov	r3,a
      005FE8 A3               [24]11823 	inc	dptr
      005FE9 12 7C 4D         [24]11824 	lcall	__gptrget
      005FEC FC               [12]11825 	mov	r4,a
      005FED A8 0D            [24]11826 	mov	r0,_bp
      005FEF 08               [12]11827 	inc	r0
      005FF0 74 05            [12]11828 	mov	a,#0x05
      005FF2 2A               [12]11829 	add	a,r2
      005FF3 F6               [12]11830 	mov	@r0,a
      005FF4 74 00            [12]11831 	mov	a,#0x00
      005FF6 3B               [12]11832 	addc	a,r3
      005FF7 08               [12]11833 	inc	r0
      005FF8 F6               [12]11834 	mov	@r0,a
      005FF9 08               [12]11835 	inc	r0
      005FFA A6 04            [24]11836 	mov	@r0,ar4
      005FFC E5 0D            [12]11837 	mov	a,_bp
      005FFE 24 04            [12]11838 	add	a,#0x04
      006000 F8               [12]11839 	mov	r0,a
      006001 74 05            [12]11840 	mov	a,#0x05
      006003 2D               [12]11841 	add	a,r5
      006004 F6               [12]11842 	mov	@r0,a
      006005 74 00            [12]11843 	mov	a,#0x00
      006007 3E               [12]11844 	addc	a,r6
      006008 08               [12]11845 	inc	r0
      006009 F6               [12]11846 	mov	@r0,a
      00600A 08               [12]11847 	inc	r0
      00600B A6 07            [24]11848 	mov	@r0,ar7
      00600D E5 0D            [12]11849 	mov	a,_bp
      00600F 24 04            [12]11850 	add	a,#0x04
      006011 F8               [12]11851 	mov	r0,a
      006012 86 82            [24]11852 	mov	dpl,@r0
      006014 08               [12]11853 	inc	r0
      006015 86 83            [24]11854 	mov	dph,@r0
      006017 08               [12]11855 	inc	r0
      006018 86 F0            [24]11856 	mov	b,@r0
      00601A 12 7C 4D         [24]11857 	lcall	__gptrget
      00601D FA               [12]11858 	mov	r2,a
      00601E A3               [24]11859 	inc	dptr
      00601F 12 7C 4D         [24]11860 	lcall	__gptrget
      006022 FB               [12]11861 	mov	r3,a
      006023 A3               [24]11862 	inc	dptr
      006024 12 7C 4D         [24]11863 	lcall	__gptrget
      006027 FC               [12]11864 	mov	r4,a
      006028 A8 0D            [24]11865 	mov	r0,_bp
      00602A 08               [12]11866 	inc	r0
      00602B 86 82            [24]11867 	mov	dpl,@r0
      00602D 08               [12]11868 	inc	r0
      00602E 86 83            [24]11869 	mov	dph,@r0
      006030 08               [12]11870 	inc	r0
      006031 86 F0            [24]11871 	mov	b,@r0
      006033 EA               [12]11872 	mov	a,r2
      006034 12 79 22         [24]11873 	lcall	__gptrput
      006037 A3               [24]11874 	inc	dptr
      006038 EB               [12]11875 	mov	a,r3
      006039 12 79 22         [24]11876 	lcall	__gptrput
      00603C A3               [24]11877 	inc	dptr
      00603D EC               [12]11878 	mov	a,r4
      00603E 12 79 22         [24]11879 	lcall	__gptrput
      006041 E5 0D            [12]11880 	mov	a,_bp
      006043 24 04            [12]11881 	add	a,#0x04
      006045 F8               [12]11882 	mov	r0,a
      006046 86 82            [24]11883 	mov	dpl,@r0
      006048 08               [12]11884 	inc	r0
      006049 86 83            [24]11885 	mov	dph,@r0
      00604B 08               [12]11886 	inc	r0
      00604C 86 F0            [24]11887 	mov	b,@r0
      00604E 12 7C 4D         [24]11888 	lcall	__gptrget
      006051 FA               [12]11889 	mov	r2,a
      006052 A3               [24]11890 	inc	dptr
      006053 12 7C 4D         [24]11891 	lcall	__gptrget
      006056 FB               [12]11892 	mov	r3,a
      006057 A3               [24]11893 	inc	dptr
      006058 12 7C 4D         [24]11894 	lcall	__gptrget
      00605B FC               [12]11895 	mov	r4,a
      00605C A8 0D            [24]11896 	mov	r0,_bp
      00605E 08               [12]11897 	inc	r0
      00605F 74 02            [12]11898 	mov	a,#0x02
      006061 2A               [12]11899 	add	a,r2
      006062 F6               [12]11900 	mov	@r0,a
      006063 74 00            [12]11901 	mov	a,#0x00
      006065 3B               [12]11902 	addc	a,r3
      006066 08               [12]11903 	inc	r0
      006067 F6               [12]11904 	mov	@r0,a
      006068 08               [12]11905 	inc	r0
      006069 A6 04            [24]11906 	mov	@r0,ar4
      00606B E5 0D            [12]11907 	mov	a,_bp
      00606D 24 07            [12]11908 	add	a,#0x07
      00606F F8               [12]11909 	mov	r0,a
      006070 86 82            [24]11910 	mov	dpl,@r0
      006072 08               [12]11911 	inc	r0
      006073 86 83            [24]11912 	mov	dph,@r0
      006075 08               [12]11913 	inc	r0
      006076 86 F0            [24]11914 	mov	b,@r0
      006078 12 7C 4D         [24]11915 	lcall	__gptrget
      00607B FA               [12]11916 	mov	r2,a
      00607C A3               [24]11917 	inc	dptr
      00607D 12 7C 4D         [24]11918 	lcall	__gptrget
      006080 FB               [12]11919 	mov	r3,a
      006081 A3               [24]11920 	inc	dptr
      006082 12 7C 4D         [24]11921 	lcall	__gptrget
      006085 FC               [12]11922 	mov	r4,a
      006086 A8 0D            [24]11923 	mov	r0,_bp
      006088 08               [12]11924 	inc	r0
      006089 86 82            [24]11925 	mov	dpl,@r0
      00608B 08               [12]11926 	inc	r0
      00608C 86 83            [24]11927 	mov	dph,@r0
      00608E 08               [12]11928 	inc	r0
      00608F 86 F0            [24]11929 	mov	b,@r0
      006091 EA               [12]11930 	mov	a,r2
      006092 12 79 22         [24]11931 	lcall	__gptrput
      006095 A3               [24]11932 	inc	dptr
      006096 EB               [12]11933 	mov	a,r3
      006097 12 79 22         [24]11934 	lcall	__gptrput
      00609A A3               [24]11935 	inc	dptr
      00609B EC               [12]11936 	mov	a,r4
      00609C 12 79 22         [24]11937 	lcall	__gptrput
      00609F E5 0D            [12]11938 	mov	a,_bp
      0060A1 24 14            [12]11939 	add	a,#0x14
      0060A3 F8               [12]11940 	mov	r0,a
      0060A4 A9 0D            [24]11941 	mov	r1,_bp
      0060A6 09               [12]11942 	inc	r1
      0060A7 74 01            [12]11943 	mov	a,#0x01
      0060A9 26               [12]11944 	add	a,@r0
      0060AA F7               [12]11945 	mov	@r1,a
      0060AB 74 00            [12]11946 	mov	a,#0x00
      0060AD 08               [12]11947 	inc	r0
      0060AE 36               [12]11948 	addc	a,@r0
      0060AF 09               [12]11949 	inc	r1
      0060B0 F7               [12]11950 	mov	@r1,a
      0060B1 08               [12]11951 	inc	r0
      0060B2 E6               [12]11952 	mov	a,@r0
      0060B3 09               [12]11953 	inc	r1
      0060B4 F7               [12]11954 	mov	@r1,a
      0060B5 A8 0D            [24]11955 	mov	r0,_bp
      0060B7 08               [12]11956 	inc	r0
      0060B8 86 82            [24]11957 	mov	dpl,@r0
      0060BA 08               [12]11958 	inc	r0
      0060BB 86 83            [24]11959 	mov	dph,@r0
      0060BD 08               [12]11960 	inc	r0
      0060BE 86 F0            [24]11961 	mov	b,@r0
      0060C0 12 7C 4D         [24]11962 	lcall	__gptrget
      0060C3 FA               [12]11963 	mov	r2,a
      0060C4 A3               [24]11964 	inc	dptr
      0060C5 12 7C 4D         [24]11965 	lcall	__gptrget
      0060C8 FB               [12]11966 	mov	r3,a
      0060C9 A3               [24]11967 	inc	dptr
      0060CA 12 7C 4D         [24]11968 	lcall	__gptrget
      0060CD FC               [12]11969 	mov	r4,a
      0060CE C0 05            [24]11970 	push	ar5
      0060D0 C0 06            [24]11971 	push	ar6
      0060D2 C0 07            [24]11972 	push	ar7
      0060D4 8A 82            [24]11973 	mov	dpl,r2
      0060D6 8B 83            [24]11974 	mov	dph,r3
      0060D8 8C F0            [24]11975 	mov	b,r4
      0060DA 12 00 31         [24]11976 	lcall	___gptr_cmp
      0060DD 15 81            [12]11977 	dec	sp
      0060DF 15 81            [12]11978 	dec	sp
      0060E1 15 81            [12]11979 	dec	sp
      0060E3 70 02            [24]11980 	jnz	00172$
      0060E5 80 03            [24]11981 	sjmp	00173$
      0060E7                      11982 00172$:
      0060E7 02 61 1E         [24]11983 	ljmp	00114$
      0060EA                      11984 00173$:
      0060EA E5 0D            [12]11985 	mov	a,_bp
      0060EC 24 04            [12]11986 	add	a,#0x04
      0060EE F8               [12]11987 	mov	r0,a
      0060EF 86 82            [24]11988 	mov	dpl,@r0
      0060F1 08               [12]11989 	inc	r0
      0060F2 86 83            [24]11990 	mov	dph,@r0
      0060F4 08               [12]11991 	inc	r0
      0060F5 86 F0            [24]11992 	mov	b,@r0
      0060F7 12 7C 4D         [24]11993 	lcall	__gptrget
      0060FA FA               [12]11994 	mov	r2,a
      0060FB A3               [24]11995 	inc	dptr
      0060FC 12 7C 4D         [24]11996 	lcall	__gptrget
      0060FF FB               [12]11997 	mov	r3,a
      006100 A3               [24]11998 	inc	dptr
      006101 12 7C 4D         [24]11999 	lcall	__gptrget
      006104 FC               [12]12000 	mov	r4,a
      006105 A8 0D            [24]12001 	mov	r0,_bp
      006107 08               [12]12002 	inc	r0
      006108 86 82            [24]12003 	mov	dpl,@r0
      00610A 08               [12]12004 	inc	r0
      00610B 86 83            [24]12005 	mov	dph,@r0
      00610D 08               [12]12006 	inc	r0
      00610E 86 F0            [24]12007 	mov	b,@r0
      006110 EA               [12]12008 	mov	a,r2
      006111 12 79 22         [24]12009 	lcall	__gptrput
      006114 A3               [24]12010 	inc	dptr
      006115 EB               [12]12011 	mov	a,r3
      006116 12 79 22         [24]12012 	lcall	__gptrput
      006119 A3               [24]12013 	inc	dptr
      00611A EC               [12]12014 	mov	a,r4
      00611B 12 79 22         [24]12015 	lcall	__gptrput
      00611E                      12016 00114$:
      00611E C0 05            [24]12017 	push	ar5
      006120 C0 06            [24]12018 	push	ar6
      006122 C0 07            [24]12019 	push	ar7
      006124 E5 0D            [12]12020 	mov	a,_bp
      006126 24 0A            [12]12021 	add	a,#0x0a
      006128 F8               [12]12022 	mov	r0,a
      006129 86 82            [24]12023 	mov	dpl,@r0
      00612B 08               [12]12024 	inc	r0
      00612C 86 83            [24]12025 	mov	dph,@r0
      00612E 08               [12]12026 	inc	r0
      00612F 86 F0            [24]12027 	mov	b,@r0
      006131 74 00            [12]12028 	mov	a,#0x00
      006133 12 79 22         [24]12029 	lcall	__gptrput
      006136 A3               [24]12030 	inc	dptr
      006137 12 79 22         [24]12031 	lcall	__gptrput
      00613A A3               [24]12032 	inc	dptr
      00613B 12 79 22         [24]12033 	lcall	__gptrput
      00613E E5 0D            [12]12034 	mov	a,_bp
      006140 24 14            [12]12035 	add	a,#0x14
      006142 F8               [12]12036 	mov	r0,a
      006143 86 82            [24]12037 	mov	dpl,@r0
      006145 08               [12]12038 	inc	r0
      006146 86 83            [24]12039 	mov	dph,@r0
      006148 08               [12]12040 	inc	r0
      006149 86 F0            [24]12041 	mov	b,@r0
      00614B 12 7C 4D         [24]12042 	lcall	__gptrget
      00614E FC               [12]12043 	mov	r4,a
      00614F 1C               [12]12044 	dec	r4
      006150 E5 0D            [12]12045 	mov	a,_bp
      006152 24 14            [12]12046 	add	a,#0x14
      006154 F8               [12]12047 	mov	r0,a
      006155 86 82            [24]12048 	mov	dpl,@r0
      006157 08               [12]12049 	inc	r0
      006158 86 83            [24]12050 	mov	dph,@r0
      00615A 08               [12]12051 	inc	r0
      00615B 86 F0            [24]12052 	mov	b,@r0
      00615D EC               [12]12053 	mov	a,r4
      00615E 12 79 22         [24]12054 	lcall	__gptrput
                           003C1D 12055 	C$tasks.c$5085$5_0$417 ==.
                                  12056 ;	tasks.c:5085: prvAddTaskToReadyList( pxTCB );
      006161 E5 0D            [12]12057 	mov	a,_bp
      006163 24 11            [12]12058 	add	a,#0x11
      006165 F8               [12]12059 	mov	r0,a
      006166 E5 0D            [12]12060 	mov	a,_bp
      006168 24 0D            [12]12061 	add	a,#0x0d
      00616A F9               [12]12062 	mov	r1,a
      00616B 74 1F            [12]12063 	mov	a,#0x1f
      00616D 26               [12]12064 	add	a,@r0
      00616E F7               [12]12065 	mov	@r1,a
      00616F 74 00            [12]12066 	mov	a,#0x00
      006171 08               [12]12067 	inc	r0
      006172 36               [12]12068 	addc	a,@r0
      006173 09               [12]12069 	inc	r1
      006174 F7               [12]12070 	mov	@r1,a
      006175 08               [12]12071 	inc	r0
      006176 E6               [12]12072 	mov	a,@r0
      006177 09               [12]12073 	inc	r1
      006178 F7               [12]12074 	mov	@r1,a
      006179 E5 0D            [12]12075 	mov	a,_bp
      00617B 24 0D            [12]12076 	add	a,#0x0d
      00617D F8               [12]12077 	mov	r0,a
      00617E 86 82            [24]12078 	mov	dpl,@r0
      006180 08               [12]12079 	inc	r0
      006181 86 83            [24]12080 	mov	dph,@r0
      006183 08               [12]12081 	inc	r0
      006184 86 F0            [24]12082 	mov	b,@r0
      006186 12 7C 4D         [24]12083 	lcall	__gptrget
      006189 FC               [12]12084 	mov	r4,a
      00618A 90 0C 86         [24]12085 	mov	dptr,#_uxTopReadyPriority
      00618D E0               [24]12086 	movx	a,@dptr
      00618E FF               [12]12087 	mov	r7,a
      00618F C3               [12]12088 	clr	c
      006190 EF               [12]12089 	mov	a,r7
      006191 9C               [12]12090 	subb	a,r4
      006192 D0 07            [24]12091 	pop	ar7
      006194 D0 06            [24]12092 	pop	ar6
      006196 D0 05            [24]12093 	pop	ar5
      006198 40 03            [24]12094 	jc	00174$
      00619A 02 61 A2         [24]12095 	ljmp	00116$
      00619D                      12096 00174$:
      00619D 90 0C 86         [24]12097 	mov	dptr,#_uxTopReadyPriority
      0061A0 EC               [12]12098 	mov	a,r4
      0061A1 F0               [24]12099 	movx	@dptr,a
      0061A2                      12100 00116$:
      0061A2 E5 0D            [12]12101 	mov	a,_bp
      0061A4 24 0D            [12]12102 	add	a,#0x0d
      0061A6 F8               [12]12103 	mov	r0,a
      0061A7 86 82            [24]12104 	mov	dpl,@r0
      0061A9 08               [12]12105 	inc	r0
      0061AA 86 83            [24]12106 	mov	dph,@r0
      0061AC 08               [12]12107 	inc	r0
      0061AD 86 F0            [24]12108 	mov	b,@r0
      0061AF 12 7C 4D         [24]12109 	lcall	__gptrget
      0061B2 FC               [12]12110 	mov	r4,a
      0061B3 EC               [12]12111 	mov	a,r4
      0061B4 75 F0 0C         [24]12112 	mov	b,#0x0c
      0061B7 A4               [48]12113 	mul	ab
      0061B8 24 16            [12]12114 	add	a,#_pxReadyTasksLists
      0061BA FB               [12]12115 	mov	r3,a
      0061BB 74 00            [12]12116 	mov	a,#(_pxReadyTasksLists >> 8)
      0061BD 35 F0            [12]12117 	addc	a,b
      0061BF FC               [12]12118 	mov	r4,a
      0061C0 8B 82            [24]12119 	mov	dpl,r3
      0061C2 8C 83            [24]12120 	mov	dph,r4
      0061C4 A3               [24]12121 	inc	dptr
      0061C5 E0               [24]12122 	movx	a,@dptr
      0061C6 FA               [12]12123 	mov	r2,a
      0061C7 A3               [24]12124 	inc	dptr
      0061C8 E0               [24]12125 	movx	a,@dptr
      0061C9 FB               [12]12126 	mov	r3,a
      0061CA A3               [24]12127 	inc	dptr
      0061CB E0               [24]12128 	movx	a,@dptr
      0061CC FC               [12]12129 	mov	r4,a
      0061CD E5 0D            [12]12130 	mov	a,_bp
      0061CF 24 07            [12]12131 	add	a,#0x07
      0061D1 F8               [12]12132 	mov	r0,a
      0061D2 86 82            [24]12133 	mov	dpl,@r0
      0061D4 08               [12]12134 	inc	r0
      0061D5 86 83            [24]12135 	mov	dph,@r0
      0061D7 08               [12]12136 	inc	r0
      0061D8 86 F0            [24]12137 	mov	b,@r0
      0061DA EA               [12]12138 	mov	a,r2
      0061DB 12 79 22         [24]12139 	lcall	__gptrput
      0061DE A3               [24]12140 	inc	dptr
      0061DF EB               [12]12141 	mov	a,r3
      0061E0 12 79 22         [24]12142 	lcall	__gptrput
      0061E3 A3               [24]12143 	inc	dptr
      0061E4 EC               [12]12144 	mov	a,r4
      0061E5 12 79 22         [24]12145 	lcall	__gptrput
      0061E8 A8 0D            [24]12146 	mov	r0,_bp
      0061EA 08               [12]12147 	inc	r0
      0061EB 74 05            [12]12148 	mov	a,#0x05
      0061ED 2A               [12]12149 	add	a,r2
      0061EE F6               [12]12150 	mov	@r0,a
      0061EF 74 00            [12]12151 	mov	a,#0x00
      0061F1 3B               [12]12152 	addc	a,r3
      0061F2 08               [12]12153 	inc	r0
      0061F3 F6               [12]12154 	mov	@r0,a
      0061F4 08               [12]12155 	inc	r0
      0061F5 A6 04            [24]12156 	mov	@r0,ar4
      0061F7 A8 0D            [24]12157 	mov	r0,_bp
      0061F9 08               [12]12158 	inc	r0
      0061FA 86 82            [24]12159 	mov	dpl,@r0
      0061FC 08               [12]12160 	inc	r0
      0061FD 86 83            [24]12161 	mov	dph,@r0
      0061FF 08               [12]12162 	inc	r0
      006200 86 F0            [24]12163 	mov	b,@r0
      006202 12 7C 4D         [24]12164 	lcall	__gptrget
      006205 FA               [12]12165 	mov	r2,a
      006206 A3               [24]12166 	inc	dptr
      006207 12 7C 4D         [24]12167 	lcall	__gptrget
      00620A FB               [12]12168 	mov	r3,a
      00620B A3               [24]12169 	inc	dptr
      00620C 12 7C 4D         [24]12170 	lcall	__gptrget
      00620F FC               [12]12171 	mov	r4,a
      006210 E5 0D            [12]12172 	mov	a,_bp
      006212 24 04            [12]12173 	add	a,#0x04
      006214 F8               [12]12174 	mov	r0,a
      006215 86 82            [24]12175 	mov	dpl,@r0
      006217 08               [12]12176 	inc	r0
      006218 86 83            [24]12177 	mov	dph,@r0
      00621A 08               [12]12178 	inc	r0
      00621B 86 F0            [24]12179 	mov	b,@r0
      00621D EA               [12]12180 	mov	a,r2
      00621E 12 79 22         [24]12181 	lcall	__gptrput
      006221 A3               [24]12182 	inc	dptr
      006222 EB               [12]12183 	mov	a,r3
      006223 12 79 22         [24]12184 	lcall	__gptrput
      006226 A3               [24]12185 	inc	dptr
      006227 EC               [12]12186 	mov	a,r4
      006228 12 79 22         [24]12187 	lcall	__gptrput
      00622B A8 0D            [24]12188 	mov	r0,_bp
      00622D 08               [12]12189 	inc	r0
      00622E 86 82            [24]12190 	mov	dpl,@r0
      006230 08               [12]12191 	inc	r0
      006231 86 83            [24]12192 	mov	dph,@r0
      006233 08               [12]12193 	inc	r0
      006234 86 F0            [24]12194 	mov	b,@r0
      006236 12 7C 4D         [24]12195 	lcall	__gptrget
      006239 FA               [12]12196 	mov	r2,a
      00623A A3               [24]12197 	inc	dptr
      00623B 12 7C 4D         [24]12198 	lcall	__gptrget
      00623E FB               [12]12199 	mov	r3,a
      00623F A3               [24]12200 	inc	dptr
      006240 12 7C 4D         [24]12201 	lcall	__gptrget
      006243 FC               [12]12202 	mov	r4,a
      006244 74 02            [12]12203 	mov	a,#0x02
      006246 2A               [12]12204 	add	a,r2
      006247 FA               [12]12205 	mov	r2,a
      006248 74 00            [12]12206 	mov	a,#0x00
      00624A 3B               [12]12207 	addc	a,r3
      00624B FB               [12]12208 	mov	r3,a
      00624C 8A 82            [24]12209 	mov	dpl,r2
      00624E 8B 83            [24]12210 	mov	dph,r3
      006250 8C F0            [24]12211 	mov	b,r4
      006252 ED               [12]12212 	mov	a,r5
      006253 12 79 22         [24]12213 	lcall	__gptrput
      006256 A3               [24]12214 	inc	dptr
      006257 EE               [12]12215 	mov	a,r6
      006258 12 79 22         [24]12216 	lcall	__gptrput
      00625B A3               [24]12217 	inc	dptr
      00625C EF               [12]12218 	mov	a,r7
      00625D 12 79 22         [24]12219 	lcall	__gptrput
      006260 A8 0D            [24]12220 	mov	r0,_bp
      006262 08               [12]12221 	inc	r0
      006263 86 82            [24]12222 	mov	dpl,@r0
      006265 08               [12]12223 	inc	r0
      006266 86 83            [24]12224 	mov	dph,@r0
      006268 08               [12]12225 	inc	r0
      006269 86 F0            [24]12226 	mov	b,@r0
      00626B ED               [12]12227 	mov	a,r5
      00626C 12 79 22         [24]12228 	lcall	__gptrput
      00626F A3               [24]12229 	inc	dptr
      006270 EE               [12]12230 	mov	a,r6
      006271 12 79 22         [24]12231 	lcall	__gptrput
      006274 A3               [24]12232 	inc	dptr
      006275 EF               [12]12233 	mov	a,r7
      006276 12 79 22         [24]12234 	lcall	__gptrput
      006279 E5 0D            [12]12235 	mov	a,_bp
      00627B 24 0D            [12]12236 	add	a,#0x0d
      00627D F8               [12]12237 	mov	r0,a
      00627E 86 82            [24]12238 	mov	dpl,@r0
      006280 08               [12]12239 	inc	r0
      006281 86 83            [24]12240 	mov	dph,@r0
      006283 08               [12]12241 	inc	r0
      006284 86 F0            [24]12242 	mov	b,@r0
      006286 12 7C 4D         [24]12243 	lcall	__gptrget
      006289 FF               [12]12244 	mov	r7,a
      00628A EF               [12]12245 	mov	a,r7
      00628B 75 F0 0C         [24]12246 	mov	b,#0x0c
      00628E A4               [48]12247 	mul	ab
      00628F 24 16            [12]12248 	add	a,#_pxReadyTasksLists
      006291 FE               [12]12249 	mov	r6,a
      006292 74 00            [12]12250 	mov	a,#(_pxReadyTasksLists >> 8)
      006294 35 F0            [12]12251 	addc	a,b
      006296 FF               [12]12252 	mov	r7,a
      006297 7D 00            [12]12253 	mov	r5,#0x00
      006299 E5 0D            [12]12254 	mov	a,_bp
      00629B 24 0A            [12]12255 	add	a,#0x0a
      00629D F8               [12]12256 	mov	r0,a
      00629E 86 82            [24]12257 	mov	dpl,@r0
      0062A0 08               [12]12258 	inc	r0
      0062A1 86 83            [24]12259 	mov	dph,@r0
      0062A3 08               [12]12260 	inc	r0
      0062A4 86 F0            [24]12261 	mov	b,@r0
      0062A6 EE               [12]12262 	mov	a,r6
      0062A7 12 79 22         [24]12263 	lcall	__gptrput
      0062AA A3               [24]12264 	inc	dptr
      0062AB EF               [12]12265 	mov	a,r7
      0062AC 12 79 22         [24]12266 	lcall	__gptrput
      0062AF A3               [24]12267 	inc	dptr
      0062B0 ED               [12]12268 	mov	a,r5
      0062B1 12 79 22         [24]12269 	lcall	__gptrput
      0062B4 E5 0D            [12]12270 	mov	a,_bp
      0062B6 24 0D            [12]12271 	add	a,#0x0d
      0062B8 F8               [12]12272 	mov	r0,a
      0062B9 86 82            [24]12273 	mov	dpl,@r0
      0062BB 08               [12]12274 	inc	r0
      0062BC 86 83            [24]12275 	mov	dph,@r0
      0062BE 08               [12]12276 	inc	r0
      0062BF 86 F0            [24]12277 	mov	b,@r0
      0062C1 12 7C 4D         [24]12278 	lcall	__gptrget
      0062C4 FF               [12]12279 	mov	r7,a
      0062C5 EF               [12]12280 	mov	a,r7
      0062C6 75 F0 0C         [24]12281 	mov	b,#0x0c
      0062C9 A4               [48]12282 	mul	ab
      0062CA 24 16            [12]12283 	add	a,#_pxReadyTasksLists
      0062CC FE               [12]12284 	mov	r6,a
      0062CD 74 00            [12]12285 	mov	a,#(_pxReadyTasksLists >> 8)
      0062CF 35 F0            [12]12286 	addc	a,b
      0062D1 FF               [12]12287 	mov	r7,a
      0062D2 8E 82            [24]12288 	mov	dpl,r6
      0062D4 8F 83            [24]12289 	mov	dph,r7
      0062D6 E0               [24]12290 	movx	a,@dptr
      0062D7 FD               [12]12291 	mov	r5,a
      0062D8 0D               [12]12292 	inc	r5
      0062D9 8E 82            [24]12293 	mov	dpl,r6
      0062DB 8F 83            [24]12294 	mov	dph,r7
      0062DD ED               [12]12295 	mov	a,r5
      0062DE F0               [24]12296 	movx	@dptr,a
      0062DF 02 63 FD         [24]12297 	ljmp	00119$
      0062E2                      12298 00118$:
                           003D9E 12299 	C$tasks.c$5091$5_0$421 ==.
                                  12300 ;	tasks.c:5091: listINSERT_END( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
      0062E2 90 00 65         [24]12301 	mov	dptr,#(_xPendingReadyList + 0x0001)
      0062E5 E5 0D            [12]12302 	mov	a,_bp
      0062E7 24 14            [12]12303 	add	a,#0x14
      0062E9 F8               [12]12304 	mov	r0,a
      0062EA E0               [24]12305 	movx	a,@dptr
      0062EB F6               [12]12306 	mov	@r0,a
      0062EC A3               [24]12307 	inc	dptr
      0062ED E0               [24]12308 	movx	a,@dptr
      0062EE 08               [12]12309 	inc	r0
      0062EF F6               [12]12310 	mov	@r0,a
      0062F0 A3               [24]12311 	inc	dptr
      0062F1 E0               [24]12312 	movx	a,@dptr
      0062F2 08               [12]12313 	inc	r0
      0062F3 F6               [12]12314 	mov	@r0,a
      0062F4 E5 0D            [12]12315 	mov	a,_bp
      0062F6 24 11            [12]12316 	add	a,#0x11
      0062F8 F8               [12]12317 	mov	r0,a
      0062F9 74 11            [12]12318 	mov	a,#0x11
      0062FB 26               [12]12319 	add	a,@r0
      0062FC FA               [12]12320 	mov	r2,a
      0062FD 74 00            [12]12321 	mov	a,#0x00
      0062FF 08               [12]12322 	inc	r0
      006300 36               [12]12323 	addc	a,@r0
      006301 FB               [12]12324 	mov	r3,a
      006302 08               [12]12325 	inc	r0
      006303 86 04            [24]12326 	mov	ar4,@r0
      006305 74 02            [12]12327 	mov	a,#0x02
      006307 2A               [12]12328 	add	a,r2
      006308 FD               [12]12329 	mov	r5,a
      006309 74 00            [12]12330 	mov	a,#0x00
      00630B 3B               [12]12331 	addc	a,r3
      00630C FE               [12]12332 	mov	r6,a
      00630D 8C 07            [24]12333 	mov	ar7,r4
      00630F 8D 82            [24]12334 	mov	dpl,r5
      006311 8E 83            [24]12335 	mov	dph,r6
      006313 8F F0            [24]12336 	mov	b,r7
      006315 E5 0D            [12]12337 	mov	a,_bp
      006317 24 14            [12]12338 	add	a,#0x14
      006319 F8               [12]12339 	mov	r0,a
      00631A E6               [12]12340 	mov	a,@r0
      00631B 12 79 22         [24]12341 	lcall	__gptrput
      00631E A3               [24]12342 	inc	dptr
      00631F 08               [12]12343 	inc	r0
      006320 E6               [12]12344 	mov	a,@r0
      006321 12 79 22         [24]12345 	lcall	__gptrput
      006324 A3               [24]12346 	inc	dptr
      006325 08               [12]12347 	inc	r0
      006326 E6               [12]12348 	mov	a,@r0
      006327 12 79 22         [24]12349 	lcall	__gptrput
      00632A E5 0D            [12]12350 	mov	a,_bp
      00632C 24 0D            [12]12351 	add	a,#0x0d
      00632E F8               [12]12352 	mov	r0,a
      00632F 74 05            [12]12353 	mov	a,#0x05
      006331 2A               [12]12354 	add	a,r2
      006332 F6               [12]12355 	mov	@r0,a
      006333 74 00            [12]12356 	mov	a,#0x00
      006335 3B               [12]12357 	addc	a,r3
      006336 08               [12]12358 	inc	r0
      006337 F6               [12]12359 	mov	@r0,a
      006338 08               [12]12360 	inc	r0
      006339 A6 04            [24]12361 	mov	@r0,ar4
      00633B E5 0D            [12]12362 	mov	a,_bp
      00633D 24 14            [12]12363 	add	a,#0x14
      00633F F8               [12]12364 	mov	r0,a
      006340 A9 0D            [24]12365 	mov	r1,_bp
      006342 09               [12]12366 	inc	r1
      006343 74 05            [12]12367 	mov	a,#0x05
      006345 26               [12]12368 	add	a,@r0
      006346 F7               [12]12369 	mov	@r1,a
      006347 74 00            [12]12370 	mov	a,#0x00
      006349 08               [12]12371 	inc	r0
      00634A 36               [12]12372 	addc	a,@r0
      00634B 09               [12]12373 	inc	r1
      00634C F7               [12]12374 	mov	@r1,a
      00634D 08               [12]12375 	inc	r0
      00634E E6               [12]12376 	mov	a,@r0
      00634F 09               [12]12377 	inc	r1
      006350 F7               [12]12378 	mov	@r1,a
      006351 A8 0D            [24]12379 	mov	r0,_bp
      006353 08               [12]12380 	inc	r0
      006354 86 82            [24]12381 	mov	dpl,@r0
      006356 08               [12]12382 	inc	r0
      006357 86 83            [24]12383 	mov	dph,@r0
      006359 08               [12]12384 	inc	r0
      00635A 86 F0            [24]12385 	mov	b,@r0
      00635C 12 7C 4D         [24]12386 	lcall	__gptrget
      00635F FD               [12]12387 	mov	r5,a
      006360 A3               [24]12388 	inc	dptr
      006361 12 7C 4D         [24]12389 	lcall	__gptrget
      006364 FE               [12]12390 	mov	r6,a
      006365 A3               [24]12391 	inc	dptr
      006366 12 7C 4D         [24]12392 	lcall	__gptrget
      006369 FF               [12]12393 	mov	r7,a
      00636A E5 0D            [12]12394 	mov	a,_bp
      00636C 24 0D            [12]12395 	add	a,#0x0d
      00636E F8               [12]12396 	mov	r0,a
      00636F 86 82            [24]12397 	mov	dpl,@r0
      006371 08               [12]12398 	inc	r0
      006372 86 83            [24]12399 	mov	dph,@r0
      006374 08               [12]12400 	inc	r0
      006375 86 F0            [24]12401 	mov	b,@r0
      006377 ED               [12]12402 	mov	a,r5
      006378 12 79 22         [24]12403 	lcall	__gptrput
      00637B A3               [24]12404 	inc	dptr
      00637C EE               [12]12405 	mov	a,r6
      00637D 12 79 22         [24]12406 	lcall	__gptrput
      006380 A3               [24]12407 	inc	dptr
      006381 EF               [12]12408 	mov	a,r7
      006382 12 79 22         [24]12409 	lcall	__gptrput
      006385 A8 0D            [24]12410 	mov	r0,_bp
      006387 08               [12]12411 	inc	r0
      006388 86 82            [24]12412 	mov	dpl,@r0
      00638A 08               [12]12413 	inc	r0
      00638B 86 83            [24]12414 	mov	dph,@r0
      00638D 08               [12]12415 	inc	r0
      00638E 86 F0            [24]12416 	mov	b,@r0
      006390 12 7C 4D         [24]12417 	lcall	__gptrget
      006393 FD               [12]12418 	mov	r5,a
      006394 A3               [24]12419 	inc	dptr
      006395 12 7C 4D         [24]12420 	lcall	__gptrget
      006398 FE               [12]12421 	mov	r6,a
      006399 A3               [24]12422 	inc	dptr
      00639A 12 7C 4D         [24]12423 	lcall	__gptrget
      00639D FF               [12]12424 	mov	r7,a
      00639E 74 02            [12]12425 	mov	a,#0x02
      0063A0 2D               [12]12426 	add	a,r5
      0063A1 FD               [12]12427 	mov	r5,a
      0063A2 74 00            [12]12428 	mov	a,#0x00
      0063A4 3E               [12]12429 	addc	a,r6
      0063A5 FE               [12]12430 	mov	r6,a
      0063A6 8D 82            [24]12431 	mov	dpl,r5
      0063A8 8E 83            [24]12432 	mov	dph,r6
      0063AA 8F F0            [24]12433 	mov	b,r7
      0063AC EA               [12]12434 	mov	a,r2
      0063AD 12 79 22         [24]12435 	lcall	__gptrput
      0063B0 A3               [24]12436 	inc	dptr
      0063B1 EB               [12]12437 	mov	a,r3
      0063B2 12 79 22         [24]12438 	lcall	__gptrput
      0063B5 A3               [24]12439 	inc	dptr
      0063B6 EC               [12]12440 	mov	a,r4
      0063B7 12 79 22         [24]12441 	lcall	__gptrput
      0063BA A8 0D            [24]12442 	mov	r0,_bp
      0063BC 08               [12]12443 	inc	r0
      0063BD 86 82            [24]12444 	mov	dpl,@r0
      0063BF 08               [12]12445 	inc	r0
      0063C0 86 83            [24]12446 	mov	dph,@r0
      0063C2 08               [12]12447 	inc	r0
      0063C3 86 F0            [24]12448 	mov	b,@r0
      0063C5 EA               [12]12449 	mov	a,r2
      0063C6 12 79 22         [24]12450 	lcall	__gptrput
      0063C9 A3               [24]12451 	inc	dptr
      0063CA EB               [12]12452 	mov	a,r3
      0063CB 12 79 22         [24]12453 	lcall	__gptrput
      0063CE A3               [24]12454 	inc	dptr
      0063CF EC               [12]12455 	mov	a,r4
      0063D0 12 79 22         [24]12456 	lcall	__gptrput
      0063D3 74 0B            [12]12457 	mov	a,#0x0b
      0063D5 2A               [12]12458 	add	a,r2
      0063D6 FA               [12]12459 	mov	r2,a
      0063D7 74 00            [12]12460 	mov	a,#0x00
      0063D9 3B               [12]12461 	addc	a,r3
      0063DA FB               [12]12462 	mov	r3,a
      0063DB 8A 82            [24]12463 	mov	dpl,r2
      0063DD 8B 83            [24]12464 	mov	dph,r3
      0063DF 8C F0            [24]12465 	mov	b,r4
      0063E1 74 64            [12]12466 	mov	a,#_xPendingReadyList
      0063E3 12 79 22         [24]12467 	lcall	__gptrput
      0063E6 A3               [24]12468 	inc	dptr
      0063E7 74 00            [12]12469 	mov	a,#(_xPendingReadyList >> 8)
      0063E9 12 79 22         [24]12470 	lcall	__gptrput
      0063EC A3               [24]12471 	inc	dptr
      0063ED 74 00            [12]12472 	mov	a,#0x00
      0063EF 12 79 22         [24]12473 	lcall	__gptrput
      0063F2 90 00 64         [24]12474 	mov	dptr,#_xPendingReadyList
      0063F5 E0               [24]12475 	movx	a,@dptr
      0063F6 FF               [12]12476 	mov	r7,a
      0063F7 0F               [12]12477 	inc	r7
      0063F8 90 00 64         [24]12478 	mov	dptr,#_xPendingReadyList
      0063FB EF               [12]12479 	mov	a,r7
      0063FC F0               [24]12480 	movx	@dptr,a
      0063FD                      12481 00119$:
                           003EB9 12482 	C$tasks.c$5094$3_0$413 ==.
                                  12483 ;	tasks.c:5094: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      0063FD E5 0D            [12]12484 	mov	a,_bp
      0063FF 24 11            [12]12485 	add	a,#0x11
      006401 F8               [12]12486 	mov	r0,a
      006402 74 1F            [12]12487 	mov	a,#0x1f
      006404 26               [12]12488 	add	a,@r0
      006405 FD               [12]12489 	mov	r5,a
      006406 74 00            [12]12490 	mov	a,#0x00
      006408 08               [12]12491 	inc	r0
      006409 36               [12]12492 	addc	a,@r0
      00640A FE               [12]12493 	mov	r6,a
      00640B 08               [12]12494 	inc	r0
      00640C 86 07            [24]12495 	mov	ar7,@r0
      00640E 8D 82            [24]12496 	mov	dpl,r5
      006410 8E 83            [24]12497 	mov	dph,r6
      006412 8F F0            [24]12498 	mov	b,r7
      006414 12 7C 4D         [24]12499 	lcall	__gptrget
      006417 FD               [12]12500 	mov	r5,a
      006418 90 0C 7F         [24]12501 	mov	dptr,#_pxCurrentTCB
      00641B E0               [24]12502 	movx	a,@dptr
      00641C FC               [12]12503 	mov	r4,a
      00641D A3               [24]12504 	inc	dptr
      00641E E0               [24]12505 	movx	a,@dptr
      00641F FE               [12]12506 	mov	r6,a
      006420 A3               [24]12507 	inc	dptr
      006421 E0               [24]12508 	movx	a,@dptr
      006422 FF               [12]12509 	mov	r7,a
      006423 74 1F            [12]12510 	mov	a,#0x1f
      006425 2C               [12]12511 	add	a,r4
      006426 FC               [12]12512 	mov	r4,a
      006427 74 00            [12]12513 	mov	a,#0x00
      006429 3E               [12]12514 	addc	a,r6
      00642A FE               [12]12515 	mov	r6,a
      00642B 8C 82            [24]12516 	mov	dpl,r4
      00642D 8E 83            [24]12517 	mov	dph,r6
      00642F 8F F0            [24]12518 	mov	b,r7
      006431 12 7C 4D         [24]12519 	lcall	__gptrget
      006434 FC               [12]12520 	mov	r4,a
      006435 C3               [12]12521 	clr	c
      006436 EC               [12]12522 	mov	a,r4
      006437 9D               [12]12523 	subb	a,r5
      006438 40 03            [24]12524 	jc	00175$
      00643A 02 64 68         [24]12525 	ljmp	00125$
      00643D                      12526 00175$:
                           003EF9 12527 	C$tasks.c$5098$4_0$422 ==.
                                  12528 ;	tasks.c:5098: if( pxHigherPriorityTaskWoken != NULL )
      00643D E5 0D            [12]12529 	mov	a,_bp
      00643F 24 F2            [12]12530 	add	a,#0xf2
      006441 F8               [12]12531 	mov	r0,a
      006442 E6               [12]12532 	mov	a,@r0
      006443 08               [12]12533 	inc	r0
      006444 46               [12]12534 	orl	a,@r0
      006445 70 03            [24]12535 	jnz	00176$
      006447 02 64 62         [24]12536 	ljmp	00121$
      00644A                      12537 00176$:
                           003F06 12538 	C$tasks.c$5100$5_0$423 ==.
                                  12539 ;	tasks.c:5100: *pxHigherPriorityTaskWoken = pdTRUE;
      00644A E5 0D            [12]12540 	mov	a,_bp
      00644C 24 F2            [12]12541 	add	a,#0xf2
      00644E F8               [12]12542 	mov	r0,a
      00644F 86 05            [24]12543 	mov	ar5,@r0
      006451 08               [12]12544 	inc	r0
      006452 86 06            [24]12545 	mov	ar6,@r0
      006454 08               [12]12546 	inc	r0
      006455 86 07            [24]12547 	mov	ar7,@r0
      006457 8D 82            [24]12548 	mov	dpl,r5
      006459 8E 83            [24]12549 	mov	dph,r6
      00645B 8F F0            [24]12550 	mov	b,r7
      00645D 74 01            [12]12551 	mov	a,#0x01
      00645F 12 79 22         [24]12552 	lcall	__gptrput
      006462                      12553 00121$:
                           003F1E 12554 	C$tasks.c$5106$4_0$422 ==.
                                  12555 ;	tasks.c:5106: xYieldPending = pdTRUE;
      006462 90 0C 8A         [24]12556 	mov	dptr,#_xYieldPending
      006465 74 01            [12]12557 	mov	a,#0x01
      006467 F0               [24]12558 	movx	@dptr,a
      006468                      12559 00125$:
                           003F24 12560 	C$tasks.c$5116$1_0$407 ==.
                                  12561 ;	tasks.c:5116: return xReturn;
      006468 E5 0D            [12]12562 	mov	a,_bp
      00646A 24 10            [12]12563 	add	a,#0x10
      00646C F8               [12]12564 	mov	r0,a
      00646D 86 82            [24]12565 	mov	dpl,@r0
      00646F                      12566 00126$:
                           003F2B 12567 	C$tasks.c$5117$1_0$407 ==.
                                  12568 ;	tasks.c:5117: }
      00646F 85 0D 81         [24]12569 	mov	sp,_bp
      006472 D0 0D            [24]12570 	pop	_bp
                           003F30 12571 	C$tasks.c$5117$1_0$407 ==.
                           003F30 12572 	XG$xTaskGenericNotifyFromISR$0$0 ==.
      006474 22               [24]12573 	ret
                                  12574 ;------------------------------------------------------------
                                  12575 ;Allocation info for local variables in function 'vTaskGenericNotifyGiveFromISR'
                                  12576 ;------------------------------------------------------------
                                  12577 ;uxIndexToNotify           Allocated to stack - _bp -3
                                  12578 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -6
                                  12579 ;xTaskToNotify             Allocated to stack - _bp +1
                                  12580 ;pxTCB                     Allocated to stack - _bp +16
                                  12581 ;ucOriginalNotifyState     Allocated to stack - _bp +19
                                  12582 ;uxSavedInterruptStatus    Allocated to registers 
                                  12583 ;pxList                    Allocated to stack - _bp +20
                                  12584 ;pxIndex                   Allocated to stack - _bp +20
                                  12585 ;pxIndex                   Allocated to stack - _bp +20
                                  12586 ;sloc0                     Allocated to stack - _bp +4
                                  12587 ;sloc1                     Allocated to stack - _bp +7
                                  12588 ;sloc2                     Allocated to stack - _bp +13
                                  12589 ;sloc3                     Allocated to stack - _bp +10
                                  12590 ;------------------------------------------------------------
                           003F31 12591 	G$vTaskGenericNotifyGiveFromISR$0$0 ==.
                           003F31 12592 	C$tasks.c$5124$1_0$426 ==.
                                  12593 ;	tasks.c:5124: void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
                                  12594 ;	-----------------------------------------
                                  12595 ;	 function vTaskGenericNotifyGiveFromISR
                                  12596 ;	-----------------------------------------
      006475                      12597 _vTaskGenericNotifyGiveFromISR:
      006475 C0 0D            [24]12598 	push	_bp
      006477 85 81 0D         [24]12599 	mov	_bp,sp
      00647A C0 82            [24]12600 	push	dpl
      00647C C0 83            [24]12601 	push	dph
      00647E C0 F0            [24]12602 	push	b
      006480 E5 81            [12]12603 	mov	a,sp
      006482 24 13            [12]12604 	add	a,#0x13
      006484 F5 81            [12]12605 	mov	sp,a
                           003F42 12606 	C$tasks.c$5153$1_0$426 ==.
                                  12607 ;	tasks.c:5153: pxTCB = xTaskToNotify;
      006486 A8 0D            [24]12608 	mov	r0,_bp
      006488 08               [12]12609 	inc	r0
      006489 E5 0D            [12]12610 	mov	a,_bp
      00648B 24 10            [12]12611 	add	a,#0x10
      00648D F9               [12]12612 	mov	r1,a
      00648E E6               [12]12613 	mov	a,@r0
      00648F F7               [12]12614 	mov	@r1,a
      006490 08               [12]12615 	inc	r0
      006491 E6               [12]12616 	mov	a,@r0
      006492 09               [12]12617 	inc	r1
      006493 F7               [12]12618 	mov	@r1,a
      006494 08               [12]12619 	inc	r0
      006495 E6               [12]12620 	mov	a,@r0
      006496 09               [12]12621 	inc	r1
      006497 F7               [12]12622 	mov	@r1,a
                           003F54 12623 	C$tasks.c$5157$2_0$427 ==.
                                  12624 ;	tasks.c:5157: ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
      006498 A8 0D            [24]12625 	mov	r0,_bp
      00649A 08               [12]12626 	inc	r0
      00649B 74 32            [12]12627 	mov	a,#0x32
      00649D 26               [12]12628 	add	a,@r0
      00649E FA               [12]12629 	mov	r2,a
      00649F 74 00            [12]12630 	mov	a,#0x00
      0064A1 08               [12]12631 	inc	r0
      0064A2 36               [12]12632 	addc	a,@r0
      0064A3 FB               [12]12633 	mov	r3,a
      0064A4 08               [12]12634 	inc	r0
      0064A5 86 04            [24]12635 	mov	ar4,@r0
      0064A7 E5 0D            [12]12636 	mov	a,_bp
      0064A9 24 FD            [12]12637 	add	a,#0xfd
      0064AB F8               [12]12638 	mov	r0,a
      0064AC 86 07            [24]12639 	mov	ar7,@r0
      0064AE EF               [12]12640 	mov	a,r7
      0064AF 2A               [12]12641 	add	a,r2
      0064B0 FA               [12]12642 	mov	r2,a
      0064B1 74 00            [12]12643 	mov	a,#0x00
      0064B3 3B               [12]12644 	addc	a,r3
      0064B4 FB               [12]12645 	mov	r3,a
      0064B5 8A 82            [24]12646 	mov	dpl,r2
      0064B7 8B 83            [24]12647 	mov	dph,r3
      0064B9 8C F0            [24]12648 	mov	b,r4
      0064BB E5 0D            [12]12649 	mov	a,_bp
      0064BD 24 13            [12]12650 	add	a,#0x13
      0064BF F8               [12]12651 	mov	r0,a
      0064C0 12 7C 4D         [24]12652 	lcall	__gptrget
      0064C3 F6               [12]12653 	mov	@r0,a
                           003F80 12654 	C$tasks.c$5158$2_0$427 ==.
                                  12655 ;	tasks.c:5158: pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
      0064C4 8A 82            [24]12656 	mov	dpl,r2
      0064C6 8B 83            [24]12657 	mov	dph,r3
      0064C8 8C F0            [24]12658 	mov	b,r4
      0064CA 74 02            [12]12659 	mov	a,#0x02
      0064CC 12 79 22         [24]12660 	lcall	__gptrput
                           003F8B 12661 	C$tasks.c$5162$2_0$427 ==.
                                  12662 ;	tasks.c:5162: ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
      0064CF A8 0D            [24]12663 	mov	r0,_bp
      0064D1 08               [12]12664 	inc	r0
      0064D2 74 2E            [12]12665 	mov	a,#0x2e
      0064D4 26               [12]12666 	add	a,@r0
      0064D5 FB               [12]12667 	mov	r3,a
      0064D6 74 00            [12]12668 	mov	a,#0x00
      0064D8 08               [12]12669 	inc	r0
      0064D9 36               [12]12670 	addc	a,@r0
      0064DA FC               [12]12671 	mov	r4,a
      0064DB 08               [12]12672 	inc	r0
      0064DC 86 05            [24]12673 	mov	ar5,@r0
      0064DE EF               [12]12674 	mov	a,r7
      0064DF 25 E0            [12]12675 	add	a,acc
      0064E1 FF               [12]12676 	mov	r7,a
      0064E2 EF               [12]12677 	mov	a,r7
      0064E3 25 E0            [12]12678 	add	a,acc
      0064E5 FF               [12]12679 	mov	r7,a
      0064E6 E5 0D            [12]12680 	mov	a,_bp
      0064E8 24 04            [12]12681 	add	a,#0x04
      0064EA F8               [12]12682 	mov	r0,a
      0064EB EF               [12]12683 	mov	a,r7
      0064EC 2B               [12]12684 	add	a,r3
      0064ED F6               [12]12685 	mov	@r0,a
      0064EE 74 00            [12]12686 	mov	a,#0x00
      0064F0 3C               [12]12687 	addc	a,r4
      0064F1 08               [12]12688 	inc	r0
      0064F2 F6               [12]12689 	mov	@r0,a
      0064F3 08               [12]12690 	inc	r0
      0064F4 A6 05            [24]12691 	mov	@r0,ar5
      0064F6 E5 0D            [12]12692 	mov	a,_bp
      0064F8 24 04            [12]12693 	add	a,#0x04
      0064FA F8               [12]12694 	mov	r0,a
      0064FB 86 82            [24]12695 	mov	dpl,@r0
      0064FD 08               [12]12696 	inc	r0
      0064FE 86 83            [24]12697 	mov	dph,@r0
      006500 08               [12]12698 	inc	r0
      006501 86 F0            [24]12699 	mov	b,@r0
      006503 12 7C 4D         [24]12700 	lcall	__gptrget
      006506 FA               [12]12701 	mov	r2,a
      006507 A3               [24]12702 	inc	dptr
      006508 12 7C 4D         [24]12703 	lcall	__gptrget
      00650B FE               [12]12704 	mov	r6,a
      00650C A3               [24]12705 	inc	dptr
      00650D 12 7C 4D         [24]12706 	lcall	__gptrget
      006510 FD               [12]12707 	mov	r5,a
      006511 A3               [24]12708 	inc	dptr
      006512 12 7C 4D         [24]12709 	lcall	__gptrget
      006515 FF               [12]12710 	mov	r7,a
      006516 0A               [12]12711 	inc	r2
      006517 BA 00 09         [24]12712 	cjne	r2,#0x00,00140$
      00651A 0E               [12]12713 	inc	r6
      00651B BE 00 05         [24]12714 	cjne	r6,#0x00,00140$
      00651E 0D               [12]12715 	inc	r5
      00651F BD 00 01         [24]12716 	cjne	r5,#0x00,00140$
      006522 0F               [12]12717 	inc	r7
      006523                      12718 00140$:
      006523 E5 0D            [12]12719 	mov	a,_bp
      006525 24 04            [12]12720 	add	a,#0x04
      006527 F8               [12]12721 	mov	r0,a
      006528 86 82            [24]12722 	mov	dpl,@r0
      00652A 08               [12]12723 	inc	r0
      00652B 86 83            [24]12724 	mov	dph,@r0
      00652D 08               [12]12725 	inc	r0
      00652E 86 F0            [24]12726 	mov	b,@r0
      006530 EA               [12]12727 	mov	a,r2
      006531 12 79 22         [24]12728 	lcall	__gptrput
      006534 A3               [24]12729 	inc	dptr
      006535 EE               [12]12730 	mov	a,r6
      006536 12 79 22         [24]12731 	lcall	__gptrput
      006539 A3               [24]12732 	inc	dptr
      00653A ED               [12]12733 	mov	a,r5
      00653B 12 79 22         [24]12734 	lcall	__gptrput
      00653E A3               [24]12735 	inc	dptr
      00653F EF               [12]12736 	mov	a,r7
      006540 12 79 22         [24]12737 	lcall	__gptrput
                           003FFF 12738 	C$tasks.c$5168$2_0$427 ==.
                                  12739 ;	tasks.c:5168: if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
      006543 E5 0D            [12]12740 	mov	a,_bp
      006545 24 13            [12]12741 	add	a,#0x13
      006547 F8               [12]12742 	mov	r0,a
      006548 B6 01 02         [24]12743 	cjne	@r0,#0x01,00141$
      00654B 80 03            [24]12744 	sjmp	00142$
      00654D                      12745 00141$:
      00654D 02 6A 8F         [24]12746 	ljmp	00114$
      006550                      12747 00142$:
                           00400C 12748 	C$tasks.c$5173$3_0$428 ==.
                                  12749 ;	tasks.c:5173: if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
      006550 90 0C 92         [24]12750 	mov	dptr,#_uxSchedulerSuspended
      006553 E0               [24]12751 	movx	a,@dptr
      006554 60 03            [24]12752 	jz	00143$
      006556 02 69 03         [24]12753 	ljmp	00106$
      006559                      12754 00143$:
                           004015 12755 	C$tasks.c$5175$5_0$430 ==.
                                  12756 ;	tasks.c:5175: listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
      006559 A8 0D            [24]12757 	mov	r0,_bp
      00655B 08               [12]12758 	inc	r0
      00655C 74 03            [12]12759 	mov	a,#0x03
      00655E 26               [12]12760 	add	a,@r0
      00655F FD               [12]12761 	mov	r5,a
      006560 74 00            [12]12762 	mov	a,#0x00
      006562 08               [12]12763 	inc	r0
      006563 36               [12]12764 	addc	a,@r0
      006564 FE               [12]12765 	mov	r6,a
      006565 08               [12]12766 	inc	r0
      006566 86 07            [24]12767 	mov	ar7,@r0
      006568 74 0B            [12]12768 	mov	a,#0x0b
      00656A 2D               [12]12769 	add	a,r5
      00656B FA               [12]12770 	mov	r2,a
      00656C 74 00            [12]12771 	mov	a,#0x00
      00656E 3E               [12]12772 	addc	a,r6
      00656F FB               [12]12773 	mov	r3,a
      006570 8F 04            [24]12774 	mov	ar4,r7
      006572 8A 82            [24]12775 	mov	dpl,r2
      006574 8B 83            [24]12776 	mov	dph,r3
      006576 8C F0            [24]12777 	mov	b,r4
      006578 E5 0D            [12]12778 	mov	a,_bp
      00657A 24 14            [12]12779 	add	a,#0x14
      00657C F8               [12]12780 	mov	r0,a
      00657D 12 7C 4D         [24]12781 	lcall	__gptrget
      006580 F6               [12]12782 	mov	@r0,a
      006581 A3               [24]12783 	inc	dptr
      006582 12 7C 4D         [24]12784 	lcall	__gptrget
      006585 08               [12]12785 	inc	r0
      006586 F6               [12]12786 	mov	@r0,a
      006587 A3               [24]12787 	inc	dptr
      006588 12 7C 4D         [24]12788 	lcall	__gptrget
      00658B 08               [12]12789 	inc	r0
      00658C F6               [12]12790 	mov	@r0,a
      00658D E5 0D            [12]12791 	mov	a,_bp
      00658F 24 04            [12]12792 	add	a,#0x04
      006591 F8               [12]12793 	mov	r0,a
      006592 74 02            [12]12794 	mov	a,#0x02
      006594 2D               [12]12795 	add	a,r5
      006595 F6               [12]12796 	mov	@r0,a
      006596 74 00            [12]12797 	mov	a,#0x00
      006598 3E               [12]12798 	addc	a,r6
      006599 08               [12]12799 	inc	r0
      00659A F6               [12]12800 	mov	@r0,a
      00659B 08               [12]12801 	inc	r0
      00659C A6 07            [24]12802 	mov	@r0,ar7
      00659E E5 0D            [12]12803 	mov	a,_bp
      0065A0 24 04            [12]12804 	add	a,#0x04
      0065A2 F8               [12]12805 	mov	r0,a
      0065A3 86 82            [24]12806 	mov	dpl,@r0
      0065A5 08               [12]12807 	inc	r0
      0065A6 86 83            [24]12808 	mov	dph,@r0
      0065A8 08               [12]12809 	inc	r0
      0065A9 86 F0            [24]12810 	mov	b,@r0
      0065AB 12 7C 4D         [24]12811 	lcall	__gptrget
      0065AE FA               [12]12812 	mov	r2,a
      0065AF A3               [24]12813 	inc	dptr
      0065B0 12 7C 4D         [24]12814 	lcall	__gptrget
      0065B3 FB               [12]12815 	mov	r3,a
      0065B4 A3               [24]12816 	inc	dptr
      0065B5 12 7C 4D         [24]12817 	lcall	__gptrget
      0065B8 FC               [12]12818 	mov	r4,a
      0065B9 E5 0D            [12]12819 	mov	a,_bp
      0065BB 24 0D            [12]12820 	add	a,#0x0d
      0065BD F8               [12]12821 	mov	r0,a
      0065BE 74 05            [12]12822 	mov	a,#0x05
      0065C0 2A               [12]12823 	add	a,r2
      0065C1 F6               [12]12824 	mov	@r0,a
      0065C2 74 00            [12]12825 	mov	a,#0x00
      0065C4 3B               [12]12826 	addc	a,r3
      0065C5 08               [12]12827 	inc	r0
      0065C6 F6               [12]12828 	mov	@r0,a
      0065C7 08               [12]12829 	inc	r0
      0065C8 A6 04            [24]12830 	mov	@r0,ar4
      0065CA E5 0D            [12]12831 	mov	a,_bp
      0065CC 24 07            [12]12832 	add	a,#0x07
      0065CE F8               [12]12833 	mov	r0,a
      0065CF 74 05            [12]12834 	mov	a,#0x05
      0065D1 2D               [12]12835 	add	a,r5
      0065D2 F6               [12]12836 	mov	@r0,a
      0065D3 74 00            [12]12837 	mov	a,#0x00
      0065D5 3E               [12]12838 	addc	a,r6
      0065D6 08               [12]12839 	inc	r0
      0065D7 F6               [12]12840 	mov	@r0,a
      0065D8 08               [12]12841 	inc	r0
      0065D9 A6 07            [24]12842 	mov	@r0,ar7
      0065DB E5 0D            [12]12843 	mov	a,_bp
      0065DD 24 07            [12]12844 	add	a,#0x07
      0065DF F8               [12]12845 	mov	r0,a
      0065E0 86 82            [24]12846 	mov	dpl,@r0
      0065E2 08               [12]12847 	inc	r0
      0065E3 86 83            [24]12848 	mov	dph,@r0
      0065E5 08               [12]12849 	inc	r0
      0065E6 86 F0            [24]12850 	mov	b,@r0
      0065E8 12 7C 4D         [24]12851 	lcall	__gptrget
      0065EB FA               [12]12852 	mov	r2,a
      0065EC A3               [24]12853 	inc	dptr
      0065ED 12 7C 4D         [24]12854 	lcall	__gptrget
      0065F0 FB               [12]12855 	mov	r3,a
      0065F1 A3               [24]12856 	inc	dptr
      0065F2 12 7C 4D         [24]12857 	lcall	__gptrget
      0065F5 FC               [12]12858 	mov	r4,a
      0065F6 E5 0D            [12]12859 	mov	a,_bp
      0065F8 24 0D            [12]12860 	add	a,#0x0d
      0065FA F8               [12]12861 	mov	r0,a
      0065FB 86 82            [24]12862 	mov	dpl,@r0
      0065FD 08               [12]12863 	inc	r0
      0065FE 86 83            [24]12864 	mov	dph,@r0
      006600 08               [12]12865 	inc	r0
      006601 86 F0            [24]12866 	mov	b,@r0
      006603 EA               [12]12867 	mov	a,r2
      006604 12 79 22         [24]12868 	lcall	__gptrput
      006607 A3               [24]12869 	inc	dptr
      006608 EB               [12]12870 	mov	a,r3
      006609 12 79 22         [24]12871 	lcall	__gptrput
      00660C A3               [24]12872 	inc	dptr
      00660D EC               [12]12873 	mov	a,r4
      00660E 12 79 22         [24]12874 	lcall	__gptrput
      006611 E5 0D            [12]12875 	mov	a,_bp
      006613 24 07            [12]12876 	add	a,#0x07
      006615 F8               [12]12877 	mov	r0,a
      006616 86 82            [24]12878 	mov	dpl,@r0
      006618 08               [12]12879 	inc	r0
      006619 86 83            [24]12880 	mov	dph,@r0
      00661B 08               [12]12881 	inc	r0
      00661C 86 F0            [24]12882 	mov	b,@r0
      00661E 12 7C 4D         [24]12883 	lcall	__gptrget
      006621 FA               [12]12884 	mov	r2,a
      006622 A3               [24]12885 	inc	dptr
      006623 12 7C 4D         [24]12886 	lcall	__gptrget
      006626 FB               [12]12887 	mov	r3,a
      006627 A3               [24]12888 	inc	dptr
      006628 12 7C 4D         [24]12889 	lcall	__gptrget
      00662B FC               [12]12890 	mov	r4,a
      00662C E5 0D            [12]12891 	mov	a,_bp
      00662E 24 0D            [12]12892 	add	a,#0x0d
      006630 F8               [12]12893 	mov	r0,a
      006631 74 02            [12]12894 	mov	a,#0x02
      006633 2A               [12]12895 	add	a,r2
      006634 F6               [12]12896 	mov	@r0,a
      006635 74 00            [12]12897 	mov	a,#0x00
      006637 3B               [12]12898 	addc	a,r3
      006638 08               [12]12899 	inc	r0
      006639 F6               [12]12900 	mov	@r0,a
      00663A 08               [12]12901 	inc	r0
      00663B A6 04            [24]12902 	mov	@r0,ar4
      00663D E5 0D            [12]12903 	mov	a,_bp
      00663F 24 04            [12]12904 	add	a,#0x04
      006641 F8               [12]12905 	mov	r0,a
      006642 86 82            [24]12906 	mov	dpl,@r0
      006644 08               [12]12907 	inc	r0
      006645 86 83            [24]12908 	mov	dph,@r0
      006647 08               [12]12909 	inc	r0
      006648 86 F0            [24]12910 	mov	b,@r0
      00664A 12 7C 4D         [24]12911 	lcall	__gptrget
      00664D FA               [12]12912 	mov	r2,a
      00664E A3               [24]12913 	inc	dptr
      00664F 12 7C 4D         [24]12914 	lcall	__gptrget
      006652 FB               [12]12915 	mov	r3,a
      006653 A3               [24]12916 	inc	dptr
      006654 12 7C 4D         [24]12917 	lcall	__gptrget
      006657 FC               [12]12918 	mov	r4,a
      006658 E5 0D            [12]12919 	mov	a,_bp
      00665A 24 0D            [12]12920 	add	a,#0x0d
      00665C F8               [12]12921 	mov	r0,a
      00665D 86 82            [24]12922 	mov	dpl,@r0
      00665F 08               [12]12923 	inc	r0
      006660 86 83            [24]12924 	mov	dph,@r0
      006662 08               [12]12925 	inc	r0
      006663 86 F0            [24]12926 	mov	b,@r0
      006665 EA               [12]12927 	mov	a,r2
      006666 12 79 22         [24]12928 	lcall	__gptrput
      006669 A3               [24]12929 	inc	dptr
      00666A EB               [12]12930 	mov	a,r3
      00666B 12 79 22         [24]12931 	lcall	__gptrput
      00666E A3               [24]12932 	inc	dptr
      00666F EC               [12]12933 	mov	a,r4
      006670 12 79 22         [24]12934 	lcall	__gptrput
      006673 E5 0D            [12]12935 	mov	a,_bp
      006675 24 14            [12]12936 	add	a,#0x14
      006677 F8               [12]12937 	mov	r0,a
      006678 E5 0D            [12]12938 	mov	a,_bp
      00667A 24 0D            [12]12939 	add	a,#0x0d
      00667C F9               [12]12940 	mov	r1,a
      00667D 74 01            [12]12941 	mov	a,#0x01
      00667F 26               [12]12942 	add	a,@r0
      006680 F7               [12]12943 	mov	@r1,a
      006681 74 00            [12]12944 	mov	a,#0x00
      006683 08               [12]12945 	inc	r0
      006684 36               [12]12946 	addc	a,@r0
      006685 09               [12]12947 	inc	r1
      006686 F7               [12]12948 	mov	@r1,a
      006687 08               [12]12949 	inc	r0
      006688 E6               [12]12950 	mov	a,@r0
      006689 09               [12]12951 	inc	r1
      00668A F7               [12]12952 	mov	@r1,a
      00668B E5 0D            [12]12953 	mov	a,_bp
      00668D 24 0D            [12]12954 	add	a,#0x0d
      00668F F8               [12]12955 	mov	r0,a
      006690 86 82            [24]12956 	mov	dpl,@r0
      006692 08               [12]12957 	inc	r0
      006693 86 83            [24]12958 	mov	dph,@r0
      006695 08               [12]12959 	inc	r0
      006696 86 F0            [24]12960 	mov	b,@r0
      006698 12 7C 4D         [24]12961 	lcall	__gptrget
      00669B FA               [12]12962 	mov	r2,a
      00669C A3               [24]12963 	inc	dptr
      00669D 12 7C 4D         [24]12964 	lcall	__gptrget
      0066A0 FB               [12]12965 	mov	r3,a
      0066A1 A3               [24]12966 	inc	dptr
      0066A2 12 7C 4D         [24]12967 	lcall	__gptrget
      0066A5 FC               [12]12968 	mov	r4,a
      0066A6 C0 05            [24]12969 	push	ar5
      0066A8 C0 06            [24]12970 	push	ar6
      0066AA C0 07            [24]12971 	push	ar7
      0066AC 8A 82            [24]12972 	mov	dpl,r2
      0066AE 8B 83            [24]12973 	mov	dph,r3
      0066B0 8C F0            [24]12974 	mov	b,r4
      0066B2 12 00 31         [24]12975 	lcall	___gptr_cmp
      0066B5 15 81            [12]12976 	dec	sp
      0066B7 15 81            [12]12977 	dec	sp
      0066B9 15 81            [12]12978 	dec	sp
      0066BB 70 02            [24]12979 	jnz	00144$
      0066BD 80 03            [24]12980 	sjmp	00145$
      0066BF                      12981 00144$:
      0066BF 02 66 F8         [24]12982 	ljmp	00102$
      0066C2                      12983 00145$:
      0066C2 E5 0D            [12]12984 	mov	a,_bp
      0066C4 24 07            [12]12985 	add	a,#0x07
      0066C6 F8               [12]12986 	mov	r0,a
      0066C7 86 82            [24]12987 	mov	dpl,@r0
      0066C9 08               [12]12988 	inc	r0
      0066CA 86 83            [24]12989 	mov	dph,@r0
      0066CC 08               [12]12990 	inc	r0
      0066CD 86 F0            [24]12991 	mov	b,@r0
      0066CF 12 7C 4D         [24]12992 	lcall	__gptrget
      0066D2 FD               [12]12993 	mov	r5,a
      0066D3 A3               [24]12994 	inc	dptr
      0066D4 12 7C 4D         [24]12995 	lcall	__gptrget
      0066D7 FE               [12]12996 	mov	r6,a
      0066D8 A3               [24]12997 	inc	dptr
      0066D9 12 7C 4D         [24]12998 	lcall	__gptrget
      0066DC FF               [12]12999 	mov	r7,a
      0066DD E5 0D            [12]13000 	mov	a,_bp
      0066DF 24 0D            [12]13001 	add	a,#0x0d
      0066E1 F8               [12]13002 	mov	r0,a
      0066E2 86 82            [24]13003 	mov	dpl,@r0
      0066E4 08               [12]13004 	inc	r0
      0066E5 86 83            [24]13005 	mov	dph,@r0
      0066E7 08               [12]13006 	inc	r0
      0066E8 86 F0            [24]13007 	mov	b,@r0
      0066EA ED               [12]13008 	mov	a,r5
      0066EB 12 79 22         [24]13009 	lcall	__gptrput
      0066EE A3               [24]13010 	inc	dptr
      0066EF EE               [12]13011 	mov	a,r6
      0066F0 12 79 22         [24]13012 	lcall	__gptrput
      0066F3 A3               [24]13013 	inc	dptr
      0066F4 EF               [12]13014 	mov	a,r7
      0066F5 12 79 22         [24]13015 	lcall	__gptrput
      0066F8                      13016 00102$:
      0066F8 E5 0D            [12]13017 	mov	a,_bp
      0066FA 24 10            [12]13018 	add	a,#0x10
      0066FC F8               [12]13019 	mov	r0,a
      0066FD 74 03            [12]13020 	mov	a,#0x03
      0066FF 26               [12]13021 	add	a,@r0
      006700 FD               [12]13022 	mov	r5,a
      006701 74 00            [12]13023 	mov	a,#0x00
      006703 08               [12]13024 	inc	r0
      006704 36               [12]13025 	addc	a,@r0
      006705 FE               [12]13026 	mov	r6,a
      006706 08               [12]13027 	inc	r0
      006707 86 07            [24]13028 	mov	ar7,@r0
      006709 E5 0D            [12]13029 	mov	a,_bp
      00670B 24 0D            [12]13030 	add	a,#0x0d
      00670D F8               [12]13031 	mov	r0,a
      00670E 74 0B            [12]13032 	mov	a,#0x0b
      006710 2D               [12]13033 	add	a,r5
      006711 F6               [12]13034 	mov	@r0,a
      006712 74 00            [12]13035 	mov	a,#0x00
      006714 3E               [12]13036 	addc	a,r6
      006715 08               [12]13037 	inc	r0
      006716 F6               [12]13038 	mov	@r0,a
      006717 08               [12]13039 	inc	r0
      006718 A6 07            [24]13040 	mov	@r0,ar7
      00671A E5 0D            [12]13041 	mov	a,_bp
      00671C 24 0D            [12]13042 	add	a,#0x0d
      00671E F8               [12]13043 	mov	r0,a
      00671F 86 82            [24]13044 	mov	dpl,@r0
      006721 08               [12]13045 	inc	r0
      006722 86 83            [24]13046 	mov	dph,@r0
      006724 08               [12]13047 	inc	r0
      006725 86 F0            [24]13048 	mov	b,@r0
      006727 74 00            [12]13049 	mov	a,#0x00
      006729 12 79 22         [24]13050 	lcall	__gptrput
      00672C A3               [24]13051 	inc	dptr
      00672D 12 79 22         [24]13052 	lcall	__gptrput
      006730 A3               [24]13053 	inc	dptr
      006731 12 79 22         [24]13054 	lcall	__gptrput
      006734 E5 0D            [12]13055 	mov	a,_bp
      006736 24 14            [12]13056 	add	a,#0x14
      006738 F8               [12]13057 	mov	r0,a
      006739 86 82            [24]13058 	mov	dpl,@r0
      00673B 08               [12]13059 	inc	r0
      00673C 86 83            [24]13060 	mov	dph,@r0
      00673E 08               [12]13061 	inc	r0
      00673F 86 F0            [24]13062 	mov	b,@r0
      006741 12 7C 4D         [24]13063 	lcall	__gptrget
      006744 FC               [12]13064 	mov	r4,a
      006745 1C               [12]13065 	dec	r4
      006746 E5 0D            [12]13066 	mov	a,_bp
      006748 24 14            [12]13067 	add	a,#0x14
      00674A F8               [12]13068 	mov	r0,a
      00674B 86 82            [24]13069 	mov	dpl,@r0
      00674D 08               [12]13070 	inc	r0
      00674E 86 83            [24]13071 	mov	dph,@r0
      006750 08               [12]13072 	inc	r0
      006751 86 F0            [24]13073 	mov	b,@r0
      006753 EC               [12]13074 	mov	a,r4
      006754 12 79 22         [24]13075 	lcall	__gptrput
                           004213 13076 	C$tasks.c$5176$5_0$432 ==.
                                  13077 ;	tasks.c:5176: prvAddTaskToReadyList( pxTCB );
      006757 E5 0D            [12]13078 	mov	a,_bp
      006759 24 10            [12]13079 	add	a,#0x10
      00675B F8               [12]13080 	mov	r0,a
      00675C E5 0D            [12]13081 	mov	a,_bp
      00675E 24 04            [12]13082 	add	a,#0x04
      006760 F9               [12]13083 	mov	r1,a
      006761 74 1F            [12]13084 	mov	a,#0x1f
      006763 26               [12]13085 	add	a,@r0
      006764 F7               [12]13086 	mov	@r1,a
      006765 74 00            [12]13087 	mov	a,#0x00
      006767 08               [12]13088 	inc	r0
      006768 36               [12]13089 	addc	a,@r0
      006769 09               [12]13090 	inc	r1
      00676A F7               [12]13091 	mov	@r1,a
      00676B 08               [12]13092 	inc	r0
      00676C E6               [12]13093 	mov	a,@r0
      00676D 09               [12]13094 	inc	r1
      00676E F7               [12]13095 	mov	@r1,a
      00676F E5 0D            [12]13096 	mov	a,_bp
      006771 24 04            [12]13097 	add	a,#0x04
      006773 F8               [12]13098 	mov	r0,a
      006774 86 82            [24]13099 	mov	dpl,@r0
      006776 08               [12]13100 	inc	r0
      006777 86 83            [24]13101 	mov	dph,@r0
      006779 08               [12]13102 	inc	r0
      00677A 86 F0            [24]13103 	mov	b,@r0
      00677C 12 7C 4D         [24]13104 	lcall	__gptrget
      00677F FB               [12]13105 	mov	r3,a
      006780 90 0C 86         [24]13106 	mov	dptr,#_uxTopReadyPriority
      006783 E0               [24]13107 	movx	a,@dptr
      006784 FC               [12]13108 	mov	r4,a
      006785 C3               [12]13109 	clr	c
      006786 EC               [12]13110 	mov	a,r4
      006787 9B               [12]13111 	subb	a,r3
      006788 40 03            [24]13112 	jc	00146$
      00678A 02 67 92         [24]13113 	ljmp	00104$
      00678D                      13114 00146$:
      00678D 90 0C 86         [24]13115 	mov	dptr,#_uxTopReadyPriority
      006790 EB               [12]13116 	mov	a,r3
      006791 F0               [24]13117 	movx	@dptr,a
      006792                      13118 00104$:
      006792 E5 0D            [12]13119 	mov	a,_bp
      006794 24 04            [12]13120 	add	a,#0x04
      006796 F8               [12]13121 	mov	r0,a
      006797 86 82            [24]13122 	mov	dpl,@r0
      006799 08               [12]13123 	inc	r0
      00679A 86 83            [24]13124 	mov	dph,@r0
      00679C 08               [12]13125 	inc	r0
      00679D 86 F0            [24]13126 	mov	b,@r0
      00679F 12 7C 4D         [24]13127 	lcall	__gptrget
      0067A2 FC               [12]13128 	mov	r4,a
      0067A3 EC               [12]13129 	mov	a,r4
      0067A4 75 F0 0C         [24]13130 	mov	b,#0x0c
      0067A7 A4               [48]13131 	mul	ab
      0067A8 24 16            [12]13132 	add	a,#_pxReadyTasksLists
      0067AA FB               [12]13133 	mov	r3,a
      0067AB 74 00            [12]13134 	mov	a,#(_pxReadyTasksLists >> 8)
      0067AD 35 F0            [12]13135 	addc	a,b
      0067AF FC               [12]13136 	mov	r4,a
      0067B0 8B 82            [24]13137 	mov	dpl,r3
      0067B2 8C 83            [24]13138 	mov	dph,r4
      0067B4 A3               [24]13139 	inc	dptr
      0067B5 E5 0D            [12]13140 	mov	a,_bp
      0067B7 24 14            [12]13141 	add	a,#0x14
      0067B9 F8               [12]13142 	mov	r0,a
      0067BA E0               [24]13143 	movx	a,@dptr
      0067BB F6               [12]13144 	mov	@r0,a
      0067BC A3               [24]13145 	inc	dptr
      0067BD E0               [24]13146 	movx	a,@dptr
      0067BE 08               [12]13147 	inc	r0
      0067BF F6               [12]13148 	mov	@r0,a
      0067C0 A3               [24]13149 	inc	dptr
      0067C1 E0               [24]13150 	movx	a,@dptr
      0067C2 08               [12]13151 	inc	r0
      0067C3 F6               [12]13152 	mov	@r0,a
      0067C4 74 02            [12]13153 	mov	a,#0x02
      0067C6 2D               [12]13154 	add	a,r5
      0067C7 FA               [12]13155 	mov	r2,a
      0067C8 74 00            [12]13156 	mov	a,#0x00
      0067CA 3E               [12]13157 	addc	a,r6
      0067CB FB               [12]13158 	mov	r3,a
      0067CC 8F 04            [24]13159 	mov	ar4,r7
      0067CE 8A 82            [24]13160 	mov	dpl,r2
      0067D0 8B 83            [24]13161 	mov	dph,r3
      0067D2 8C F0            [24]13162 	mov	b,r4
      0067D4 E5 0D            [12]13163 	mov	a,_bp
      0067D6 24 14            [12]13164 	add	a,#0x14
      0067D8 F8               [12]13165 	mov	r0,a
      0067D9 E6               [12]13166 	mov	a,@r0
      0067DA 12 79 22         [24]13167 	lcall	__gptrput
      0067DD A3               [24]13168 	inc	dptr
      0067DE 08               [12]13169 	inc	r0
      0067DF E6               [12]13170 	mov	a,@r0
      0067E0 12 79 22         [24]13171 	lcall	__gptrput
      0067E3 A3               [24]13172 	inc	dptr
      0067E4 08               [12]13173 	inc	r0
      0067E5 E6               [12]13174 	mov	a,@r0
      0067E6 12 79 22         [24]13175 	lcall	__gptrput
      0067E9 E5 0D            [12]13176 	mov	a,_bp
      0067EB 24 07            [12]13177 	add	a,#0x07
      0067ED F8               [12]13178 	mov	r0,a
      0067EE 74 05            [12]13179 	mov	a,#0x05
      0067F0 2D               [12]13180 	add	a,r5
      0067F1 F6               [12]13181 	mov	@r0,a
      0067F2 74 00            [12]13182 	mov	a,#0x00
      0067F4 3E               [12]13183 	addc	a,r6
      0067F5 08               [12]13184 	inc	r0
      0067F6 F6               [12]13185 	mov	@r0,a
      0067F7 08               [12]13186 	inc	r0
      0067F8 A6 07            [24]13187 	mov	@r0,ar7
      0067FA E5 0D            [12]13188 	mov	a,_bp
      0067FC 24 14            [12]13189 	add	a,#0x14
      0067FE F8               [12]13190 	mov	r0,a
      0067FF E5 0D            [12]13191 	mov	a,_bp
      006801 24 0A            [12]13192 	add	a,#0x0a
      006803 F9               [12]13193 	mov	r1,a
      006804 74 05            [12]13194 	mov	a,#0x05
      006806 26               [12]13195 	add	a,@r0
      006807 F7               [12]13196 	mov	@r1,a
      006808 74 00            [12]13197 	mov	a,#0x00
      00680A 08               [12]13198 	inc	r0
      00680B 36               [12]13199 	addc	a,@r0
      00680C 09               [12]13200 	inc	r1
      00680D F7               [12]13201 	mov	@r1,a
      00680E 08               [12]13202 	inc	r0
      00680F E6               [12]13203 	mov	a,@r0
      006810 09               [12]13204 	inc	r1
      006811 F7               [12]13205 	mov	@r1,a
      006812 E5 0D            [12]13206 	mov	a,_bp
      006814 24 0A            [12]13207 	add	a,#0x0a
      006816 F8               [12]13208 	mov	r0,a
      006817 86 82            [24]13209 	mov	dpl,@r0
      006819 08               [12]13210 	inc	r0
      00681A 86 83            [24]13211 	mov	dph,@r0
      00681C 08               [12]13212 	inc	r0
      00681D 86 F0            [24]13213 	mov	b,@r0
      00681F 12 7C 4D         [24]13214 	lcall	__gptrget
      006822 FA               [12]13215 	mov	r2,a
      006823 A3               [24]13216 	inc	dptr
      006824 12 7C 4D         [24]13217 	lcall	__gptrget
      006827 FB               [12]13218 	mov	r3,a
      006828 A3               [24]13219 	inc	dptr
      006829 12 7C 4D         [24]13220 	lcall	__gptrget
      00682C FC               [12]13221 	mov	r4,a
      00682D E5 0D            [12]13222 	mov	a,_bp
      00682F 24 07            [12]13223 	add	a,#0x07
      006831 F8               [12]13224 	mov	r0,a
      006832 86 82            [24]13225 	mov	dpl,@r0
      006834 08               [12]13226 	inc	r0
      006835 86 83            [24]13227 	mov	dph,@r0
      006837 08               [12]13228 	inc	r0
      006838 86 F0            [24]13229 	mov	b,@r0
      00683A EA               [12]13230 	mov	a,r2
      00683B 12 79 22         [24]13231 	lcall	__gptrput
      00683E A3               [24]13232 	inc	dptr
      00683F EB               [12]13233 	mov	a,r3
      006840 12 79 22         [24]13234 	lcall	__gptrput
      006843 A3               [24]13235 	inc	dptr
      006844 EC               [12]13236 	mov	a,r4
      006845 12 79 22         [24]13237 	lcall	__gptrput
      006848 E5 0D            [12]13238 	mov	a,_bp
      00684A 24 0A            [12]13239 	add	a,#0x0a
      00684C F8               [12]13240 	mov	r0,a
      00684D 86 82            [24]13241 	mov	dpl,@r0
      00684F 08               [12]13242 	inc	r0
      006850 86 83            [24]13243 	mov	dph,@r0
      006852 08               [12]13244 	inc	r0
      006853 86 F0            [24]13245 	mov	b,@r0
      006855 12 7C 4D         [24]13246 	lcall	__gptrget
      006858 FA               [12]13247 	mov	r2,a
      006859 A3               [24]13248 	inc	dptr
      00685A 12 7C 4D         [24]13249 	lcall	__gptrget
      00685D FB               [12]13250 	mov	r3,a
      00685E A3               [24]13251 	inc	dptr
      00685F 12 7C 4D         [24]13252 	lcall	__gptrget
      006862 FC               [12]13253 	mov	r4,a
      006863 74 02            [12]13254 	mov	a,#0x02
      006865 2A               [12]13255 	add	a,r2
      006866 FA               [12]13256 	mov	r2,a
      006867 74 00            [12]13257 	mov	a,#0x00
      006869 3B               [12]13258 	addc	a,r3
      00686A FB               [12]13259 	mov	r3,a
      00686B 8A 82            [24]13260 	mov	dpl,r2
      00686D 8B 83            [24]13261 	mov	dph,r3
      00686F 8C F0            [24]13262 	mov	b,r4
      006871 ED               [12]13263 	mov	a,r5
      006872 12 79 22         [24]13264 	lcall	__gptrput
      006875 A3               [24]13265 	inc	dptr
      006876 EE               [12]13266 	mov	a,r6
      006877 12 79 22         [24]13267 	lcall	__gptrput
      00687A A3               [24]13268 	inc	dptr
      00687B EF               [12]13269 	mov	a,r7
      00687C 12 79 22         [24]13270 	lcall	__gptrput
      00687F E5 0D            [12]13271 	mov	a,_bp
      006881 24 0A            [12]13272 	add	a,#0x0a
      006883 F8               [12]13273 	mov	r0,a
      006884 86 82            [24]13274 	mov	dpl,@r0
      006886 08               [12]13275 	inc	r0
      006887 86 83            [24]13276 	mov	dph,@r0
      006889 08               [12]13277 	inc	r0
      00688A 86 F0            [24]13278 	mov	b,@r0
      00688C ED               [12]13279 	mov	a,r5
      00688D 12 79 22         [24]13280 	lcall	__gptrput
      006890 A3               [24]13281 	inc	dptr
      006891 EE               [12]13282 	mov	a,r6
      006892 12 79 22         [24]13283 	lcall	__gptrput
      006895 A3               [24]13284 	inc	dptr
      006896 EF               [12]13285 	mov	a,r7
      006897 12 79 22         [24]13286 	lcall	__gptrput
      00689A E5 0D            [12]13287 	mov	a,_bp
      00689C 24 04            [12]13288 	add	a,#0x04
      00689E F8               [12]13289 	mov	r0,a
      00689F 86 82            [24]13290 	mov	dpl,@r0
      0068A1 08               [12]13291 	inc	r0
      0068A2 86 83            [24]13292 	mov	dph,@r0
      0068A4 08               [12]13293 	inc	r0
      0068A5 86 F0            [24]13294 	mov	b,@r0
      0068A7 12 7C 4D         [24]13295 	lcall	__gptrget
      0068AA FF               [12]13296 	mov	r7,a
      0068AB EF               [12]13297 	mov	a,r7
      0068AC 75 F0 0C         [24]13298 	mov	b,#0x0c
      0068AF A4               [48]13299 	mul	ab
      0068B0 24 16            [12]13300 	add	a,#_pxReadyTasksLists
      0068B2 FE               [12]13301 	mov	r6,a
      0068B3 74 00            [12]13302 	mov	a,#(_pxReadyTasksLists >> 8)
      0068B5 35 F0            [12]13303 	addc	a,b
      0068B7 FF               [12]13304 	mov	r7,a
      0068B8 7D 00            [12]13305 	mov	r5,#0x00
      0068BA E5 0D            [12]13306 	mov	a,_bp
      0068BC 24 0D            [12]13307 	add	a,#0x0d
      0068BE F8               [12]13308 	mov	r0,a
      0068BF 86 82            [24]13309 	mov	dpl,@r0
      0068C1 08               [12]13310 	inc	r0
      0068C2 86 83            [24]13311 	mov	dph,@r0
      0068C4 08               [12]13312 	inc	r0
      0068C5 86 F0            [24]13313 	mov	b,@r0
      0068C7 EE               [12]13314 	mov	a,r6
      0068C8 12 79 22         [24]13315 	lcall	__gptrput
      0068CB A3               [24]13316 	inc	dptr
      0068CC EF               [12]13317 	mov	a,r7
      0068CD 12 79 22         [24]13318 	lcall	__gptrput
      0068D0 A3               [24]13319 	inc	dptr
      0068D1 ED               [12]13320 	mov	a,r5
      0068D2 12 79 22         [24]13321 	lcall	__gptrput
      0068D5 E5 0D            [12]13322 	mov	a,_bp
      0068D7 24 04            [12]13323 	add	a,#0x04
      0068D9 F8               [12]13324 	mov	r0,a
      0068DA 86 82            [24]13325 	mov	dpl,@r0
      0068DC 08               [12]13326 	inc	r0
      0068DD 86 83            [24]13327 	mov	dph,@r0
      0068DF 08               [12]13328 	inc	r0
      0068E0 86 F0            [24]13329 	mov	b,@r0
      0068E2 12 7C 4D         [24]13330 	lcall	__gptrget
      0068E5 FF               [12]13331 	mov	r7,a
      0068E6 EF               [12]13332 	mov	a,r7
      0068E7 75 F0 0C         [24]13333 	mov	b,#0x0c
      0068EA A4               [48]13334 	mul	ab
      0068EB 24 16            [12]13335 	add	a,#_pxReadyTasksLists
      0068ED FE               [12]13336 	mov	r6,a
      0068EE 74 00            [12]13337 	mov	a,#(_pxReadyTasksLists >> 8)
      0068F0 35 F0            [12]13338 	addc	a,b
      0068F2 FF               [12]13339 	mov	r7,a
      0068F3 8E 82            [24]13340 	mov	dpl,r6
      0068F5 8F 83            [24]13341 	mov	dph,r7
      0068F7 E0               [24]13342 	movx	a,@dptr
      0068F8 FD               [12]13343 	mov	r5,a
      0068F9 0D               [12]13344 	inc	r5
      0068FA 8E 82            [24]13345 	mov	dpl,r6
      0068FC 8F 83            [24]13346 	mov	dph,r7
      0068FE ED               [12]13347 	mov	a,r5
      0068FF F0               [24]13348 	movx	@dptr,a
      006900 02 6A 24         [24]13349 	ljmp	00107$
      006903                      13350 00106$:
                           0043BF 13351 	C$tasks.c$5182$5_0$436 ==.
                                  13352 ;	tasks.c:5182: listINSERT_END( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
      006903 90 00 65         [24]13353 	mov	dptr,#(_xPendingReadyList + 0x0001)
      006906 E5 0D            [12]13354 	mov	a,_bp
      006908 24 14            [12]13355 	add	a,#0x14
      00690A F8               [12]13356 	mov	r0,a
      00690B E0               [24]13357 	movx	a,@dptr
      00690C F6               [12]13358 	mov	@r0,a
      00690D A3               [24]13359 	inc	dptr
      00690E E0               [24]13360 	movx	a,@dptr
      00690F 08               [12]13361 	inc	r0
      006910 F6               [12]13362 	mov	@r0,a
      006911 A3               [24]13363 	inc	dptr
      006912 E0               [24]13364 	movx	a,@dptr
      006913 08               [12]13365 	inc	r0
      006914 F6               [12]13366 	mov	@r0,a
      006915 A8 0D            [24]13367 	mov	r0,_bp
      006917 08               [12]13368 	inc	r0
      006918 74 11            [12]13369 	mov	a,#0x11
      00691A 26               [12]13370 	add	a,@r0
      00691B FA               [12]13371 	mov	r2,a
      00691C 74 00            [12]13372 	mov	a,#0x00
      00691E 08               [12]13373 	inc	r0
      00691F 36               [12]13374 	addc	a,@r0
      006920 FB               [12]13375 	mov	r3,a
      006921 08               [12]13376 	inc	r0
      006922 86 04            [24]13377 	mov	ar4,@r0
      006924 74 02            [12]13378 	mov	a,#0x02
      006926 2A               [12]13379 	add	a,r2
      006927 FD               [12]13380 	mov	r5,a
      006928 74 00            [12]13381 	mov	a,#0x00
      00692A 3B               [12]13382 	addc	a,r3
      00692B FE               [12]13383 	mov	r6,a
      00692C 8C 07            [24]13384 	mov	ar7,r4
      00692E 8D 82            [24]13385 	mov	dpl,r5
      006930 8E 83            [24]13386 	mov	dph,r6
      006932 8F F0            [24]13387 	mov	b,r7
      006934 E5 0D            [12]13388 	mov	a,_bp
      006936 24 14            [12]13389 	add	a,#0x14
      006938 F8               [12]13390 	mov	r0,a
      006939 E6               [12]13391 	mov	a,@r0
      00693A 12 79 22         [24]13392 	lcall	__gptrput
      00693D A3               [24]13393 	inc	dptr
      00693E 08               [12]13394 	inc	r0
      00693F E6               [12]13395 	mov	a,@r0
      006940 12 79 22         [24]13396 	lcall	__gptrput
      006943 A3               [24]13397 	inc	dptr
      006944 08               [12]13398 	inc	r0
      006945 E6               [12]13399 	mov	a,@r0
      006946 12 79 22         [24]13400 	lcall	__gptrput
      006949 E5 0D            [12]13401 	mov	a,_bp
      00694B 24 0A            [12]13402 	add	a,#0x0a
      00694D F8               [12]13403 	mov	r0,a
      00694E 74 05            [12]13404 	mov	a,#0x05
      006950 2A               [12]13405 	add	a,r2
      006951 F6               [12]13406 	mov	@r0,a
      006952 74 00            [12]13407 	mov	a,#0x00
      006954 3B               [12]13408 	addc	a,r3
      006955 08               [12]13409 	inc	r0
      006956 F6               [12]13410 	mov	@r0,a
      006957 08               [12]13411 	inc	r0
      006958 A6 04            [24]13412 	mov	@r0,ar4
      00695A E5 0D            [12]13413 	mov	a,_bp
      00695C 24 14            [12]13414 	add	a,#0x14
      00695E F8               [12]13415 	mov	r0,a
      00695F E5 0D            [12]13416 	mov	a,_bp
      006961 24 0D            [12]13417 	add	a,#0x0d
      006963 F9               [12]13418 	mov	r1,a
      006964 74 05            [12]13419 	mov	a,#0x05
      006966 26               [12]13420 	add	a,@r0
      006967 F7               [12]13421 	mov	@r1,a
      006968 74 00            [12]13422 	mov	a,#0x00
      00696A 08               [12]13423 	inc	r0
      00696B 36               [12]13424 	addc	a,@r0
      00696C 09               [12]13425 	inc	r1
      00696D F7               [12]13426 	mov	@r1,a
      00696E 08               [12]13427 	inc	r0
      00696F E6               [12]13428 	mov	a,@r0
      006970 09               [12]13429 	inc	r1
      006971 F7               [12]13430 	mov	@r1,a
      006972 E5 0D            [12]13431 	mov	a,_bp
      006974 24 0D            [12]13432 	add	a,#0x0d
      006976 F8               [12]13433 	mov	r0,a
      006977 86 82            [24]13434 	mov	dpl,@r0
      006979 08               [12]13435 	inc	r0
      00697A 86 83            [24]13436 	mov	dph,@r0
      00697C 08               [12]13437 	inc	r0
      00697D 86 F0            [24]13438 	mov	b,@r0
      00697F 12 7C 4D         [24]13439 	lcall	__gptrget
      006982 FD               [12]13440 	mov	r5,a
      006983 A3               [24]13441 	inc	dptr
      006984 12 7C 4D         [24]13442 	lcall	__gptrget
      006987 FE               [12]13443 	mov	r6,a
      006988 A3               [24]13444 	inc	dptr
      006989 12 7C 4D         [24]13445 	lcall	__gptrget
      00698C FF               [12]13446 	mov	r7,a
      00698D E5 0D            [12]13447 	mov	a,_bp
      00698F 24 0A            [12]13448 	add	a,#0x0a
      006991 F8               [12]13449 	mov	r0,a
      006992 86 82            [24]13450 	mov	dpl,@r0
      006994 08               [12]13451 	inc	r0
      006995 86 83            [24]13452 	mov	dph,@r0
      006997 08               [12]13453 	inc	r0
      006998 86 F0            [24]13454 	mov	b,@r0
      00699A ED               [12]13455 	mov	a,r5
      00699B 12 79 22         [24]13456 	lcall	__gptrput
      00699E A3               [24]13457 	inc	dptr
      00699F EE               [12]13458 	mov	a,r6
      0069A0 12 79 22         [24]13459 	lcall	__gptrput
      0069A3 A3               [24]13460 	inc	dptr
      0069A4 EF               [12]13461 	mov	a,r7
      0069A5 12 79 22         [24]13462 	lcall	__gptrput
      0069A8 E5 0D            [12]13463 	mov	a,_bp
      0069AA 24 0D            [12]13464 	add	a,#0x0d
      0069AC F8               [12]13465 	mov	r0,a
      0069AD 86 82            [24]13466 	mov	dpl,@r0
      0069AF 08               [12]13467 	inc	r0
      0069B0 86 83            [24]13468 	mov	dph,@r0
      0069B2 08               [12]13469 	inc	r0
      0069B3 86 F0            [24]13470 	mov	b,@r0
      0069B5 12 7C 4D         [24]13471 	lcall	__gptrget
      0069B8 FD               [12]13472 	mov	r5,a
      0069B9 A3               [24]13473 	inc	dptr
      0069BA 12 7C 4D         [24]13474 	lcall	__gptrget
      0069BD FE               [12]13475 	mov	r6,a
      0069BE A3               [24]13476 	inc	dptr
      0069BF 12 7C 4D         [24]13477 	lcall	__gptrget
      0069C2 FF               [12]13478 	mov	r7,a
      0069C3 74 02            [12]13479 	mov	a,#0x02
      0069C5 2D               [12]13480 	add	a,r5
      0069C6 FD               [12]13481 	mov	r5,a
      0069C7 74 00            [12]13482 	mov	a,#0x00
      0069C9 3E               [12]13483 	addc	a,r6
      0069CA FE               [12]13484 	mov	r6,a
      0069CB 8D 82            [24]13485 	mov	dpl,r5
      0069CD 8E 83            [24]13486 	mov	dph,r6
      0069CF 8F F0            [24]13487 	mov	b,r7
      0069D1 EA               [12]13488 	mov	a,r2
      0069D2 12 79 22         [24]13489 	lcall	__gptrput
      0069D5 A3               [24]13490 	inc	dptr
      0069D6 EB               [12]13491 	mov	a,r3
      0069D7 12 79 22         [24]13492 	lcall	__gptrput
      0069DA A3               [24]13493 	inc	dptr
      0069DB EC               [12]13494 	mov	a,r4
      0069DC 12 79 22         [24]13495 	lcall	__gptrput
      0069DF E5 0D            [12]13496 	mov	a,_bp
      0069E1 24 0D            [12]13497 	add	a,#0x0d
      0069E3 F8               [12]13498 	mov	r0,a
      0069E4 86 82            [24]13499 	mov	dpl,@r0
      0069E6 08               [12]13500 	inc	r0
      0069E7 86 83            [24]13501 	mov	dph,@r0
      0069E9 08               [12]13502 	inc	r0
      0069EA 86 F0            [24]13503 	mov	b,@r0
      0069EC EA               [12]13504 	mov	a,r2
      0069ED 12 79 22         [24]13505 	lcall	__gptrput
      0069F0 A3               [24]13506 	inc	dptr
      0069F1 EB               [12]13507 	mov	a,r3
      0069F2 12 79 22         [24]13508 	lcall	__gptrput
      0069F5 A3               [24]13509 	inc	dptr
      0069F6 EC               [12]13510 	mov	a,r4
      0069F7 12 79 22         [24]13511 	lcall	__gptrput
      0069FA 74 0B            [12]13512 	mov	a,#0x0b
      0069FC 2A               [12]13513 	add	a,r2
      0069FD FA               [12]13514 	mov	r2,a
      0069FE 74 00            [12]13515 	mov	a,#0x00
      006A00 3B               [12]13516 	addc	a,r3
      006A01 FB               [12]13517 	mov	r3,a
      006A02 8A 82            [24]13518 	mov	dpl,r2
      006A04 8B 83            [24]13519 	mov	dph,r3
      006A06 8C F0            [24]13520 	mov	b,r4
      006A08 74 64            [12]13521 	mov	a,#_xPendingReadyList
      006A0A 12 79 22         [24]13522 	lcall	__gptrput
      006A0D A3               [24]13523 	inc	dptr
      006A0E 74 00            [12]13524 	mov	a,#(_xPendingReadyList >> 8)
      006A10 12 79 22         [24]13525 	lcall	__gptrput
      006A13 A3               [24]13526 	inc	dptr
      006A14 74 00            [12]13527 	mov	a,#0x00
      006A16 12 79 22         [24]13528 	lcall	__gptrput
      006A19 90 00 64         [24]13529 	mov	dptr,#_xPendingReadyList
      006A1C E0               [24]13530 	movx	a,@dptr
      006A1D FF               [12]13531 	mov	r7,a
      006A1E 0F               [12]13532 	inc	r7
      006A1F 90 00 64         [24]13533 	mov	dptr,#_xPendingReadyList
      006A22 EF               [12]13534 	mov	a,r7
      006A23 F0               [24]13535 	movx	@dptr,a
      006A24                      13536 00107$:
                           0044E0 13537 	C$tasks.c$5185$3_0$428 ==.
                                  13538 ;	tasks.c:5185: if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
      006A24 E5 0D            [12]13539 	mov	a,_bp
      006A26 24 10            [12]13540 	add	a,#0x10
      006A28 F8               [12]13541 	mov	r0,a
      006A29 74 1F            [12]13542 	mov	a,#0x1f
      006A2B 26               [12]13543 	add	a,@r0
      006A2C FD               [12]13544 	mov	r5,a
      006A2D 74 00            [12]13545 	mov	a,#0x00
      006A2F 08               [12]13546 	inc	r0
      006A30 36               [12]13547 	addc	a,@r0
      006A31 FE               [12]13548 	mov	r6,a
      006A32 08               [12]13549 	inc	r0
      006A33 86 07            [24]13550 	mov	ar7,@r0
      006A35 8D 82            [24]13551 	mov	dpl,r5
      006A37 8E 83            [24]13552 	mov	dph,r6
      006A39 8F F0            [24]13553 	mov	b,r7
      006A3B 12 7C 4D         [24]13554 	lcall	__gptrget
      006A3E FD               [12]13555 	mov	r5,a
      006A3F 90 0C 7F         [24]13556 	mov	dptr,#_pxCurrentTCB
      006A42 E0               [24]13557 	movx	a,@dptr
      006A43 FC               [12]13558 	mov	r4,a
      006A44 A3               [24]13559 	inc	dptr
      006A45 E0               [24]13560 	movx	a,@dptr
      006A46 FE               [12]13561 	mov	r6,a
      006A47 A3               [24]13562 	inc	dptr
      006A48 E0               [24]13563 	movx	a,@dptr
      006A49 FF               [12]13564 	mov	r7,a
      006A4A 74 1F            [12]13565 	mov	a,#0x1f
      006A4C 2C               [12]13566 	add	a,r4
      006A4D FC               [12]13567 	mov	r4,a
      006A4E 74 00            [12]13568 	mov	a,#0x00
      006A50 3E               [12]13569 	addc	a,r6
      006A51 FE               [12]13570 	mov	r6,a
      006A52 8C 82            [24]13571 	mov	dpl,r4
      006A54 8E 83            [24]13572 	mov	dph,r6
      006A56 8F F0            [24]13573 	mov	b,r7
      006A58 12 7C 4D         [24]13574 	lcall	__gptrget
      006A5B FC               [12]13575 	mov	r4,a
      006A5C C3               [12]13576 	clr	c
      006A5D EC               [12]13577 	mov	a,r4
      006A5E 9D               [12]13578 	subb	a,r5
      006A5F 40 03            [24]13579 	jc	00147$
      006A61 02 6A 8F         [24]13580 	ljmp	00114$
      006A64                      13581 00147$:
                           004520 13582 	C$tasks.c$5189$4_0$437 ==.
                                  13583 ;	tasks.c:5189: if( pxHigherPriorityTaskWoken != NULL )
      006A64 E5 0D            [12]13584 	mov	a,_bp
      006A66 24 FA            [12]13585 	add	a,#0xfa
      006A68 F8               [12]13586 	mov	r0,a
      006A69 E6               [12]13587 	mov	a,@r0
      006A6A 08               [12]13588 	inc	r0
      006A6B 46               [12]13589 	orl	a,@r0
      006A6C 70 03            [24]13590 	jnz	00148$
      006A6E 02 6A 89         [24]13591 	ljmp	00109$
      006A71                      13592 00148$:
                           00452D 13593 	C$tasks.c$5191$5_0$438 ==.
                                  13594 ;	tasks.c:5191: *pxHigherPriorityTaskWoken = pdTRUE;
      006A71 E5 0D            [12]13595 	mov	a,_bp
      006A73 24 FA            [12]13596 	add	a,#0xfa
      006A75 F8               [12]13597 	mov	r0,a
      006A76 86 05            [24]13598 	mov	ar5,@r0
      006A78 08               [12]13599 	inc	r0
      006A79 86 06            [24]13600 	mov	ar6,@r0
      006A7B 08               [12]13601 	inc	r0
      006A7C 86 07            [24]13602 	mov	ar7,@r0
      006A7E 8D 82            [24]13603 	mov	dpl,r5
      006A80 8E 83            [24]13604 	mov	dph,r6
      006A82 8F F0            [24]13605 	mov	b,r7
      006A84 74 01            [12]13606 	mov	a,#0x01
      006A86 12 79 22         [24]13607 	lcall	__gptrput
      006A89                      13608 00109$:
                           004545 13609 	C$tasks.c$5197$4_0$437 ==.
                                  13610 ;	tasks.c:5197: xYieldPending = pdTRUE;
      006A89 90 0C 8A         [24]13611 	mov	dptr,#_xYieldPending
      006A8C 74 01            [12]13612 	mov	a,#0x01
      006A8E F0               [24]13613 	movx	@dptr,a
                           00454B 13614 	C$tasks.c$5205$1_0$426 ==.
                                  13615 ;	tasks.c:5205: portCLEAR_INTERRUPT_MASK_FROM_ISR( uxSavedInterruptStatus );
      006A8F                      13616 00114$:
                           00454B 13617 	C$tasks.c$5206$1_0$426 ==.
                                  13618 ;	tasks.c:5206: }
      006A8F 85 0D 81         [24]13619 	mov	sp,_bp
      006A92 D0 0D            [24]13620 	pop	_bp
                           004550 13621 	C$tasks.c$5206$1_0$426 ==.
                           004550 13622 	XG$vTaskGenericNotifyGiveFromISR$0$0 ==.
      006A94 22               [24]13623 	ret
                                  13624 ;------------------------------------------------------------
                                  13625 ;Allocation info for local variables in function 'xTaskGenericNotifyStateClear'
                                  13626 ;------------------------------------------------------------
                                  13627 ;uxIndexToClear            Allocated to stack - _bp -3
                                  13628 ;xTask                     Allocated to registers r5 r6 r7 
                                  13629 ;pxTCB                     Allocated to registers r5 r6 r7 
                                  13630 ;xReturn                   Allocated to registers r7 
                                  13631 ;sloc0                     Allocated to stack - _bp +1
                                  13632 ;------------------------------------------------------------
                           004551 13633 	G$xTaskGenericNotifyStateClear$0$0 ==.
                           004551 13634 	C$tasks.c$5213$1_0$441 ==.
                                  13635 ;	tasks.c:5213: BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
                                  13636 ;	-----------------------------------------
                                  13637 ;	 function xTaskGenericNotifyStateClear
                                  13638 ;	-----------------------------------------
      006A95                      13639 _xTaskGenericNotifyStateClear:
      006A95 C0 0D            [24]13640 	push	_bp
      006A97 85 81 0D         [24]13641 	mov	_bp,sp
      006A9A 05 81            [12]13642 	inc	sp
      006A9C AD 82            [24]13643 	mov	r5,dpl
      006A9E AE 83            [24]13644 	mov	r6,dph
      006AA0 AF F0            [24]13645 	mov	r7,b
                           00455E 13646 	C$tasks.c$5223$1_0$441 ==.
                                  13647 ;	tasks.c:5223: pxTCB = prvGetTCBFromHandle( xTask );
      006AA2 ED               [12]13648 	mov	a,r5
      006AA3 4E               [12]13649 	orl	a,r6
      006AA4 60 03            [24]13650 	jz	00116$
      006AA6 02 6A B7         [24]13651 	ljmp	00106$
      006AA9                      13652 00116$:
      006AA9 90 0C 7F         [24]13653 	mov	dptr,#_pxCurrentTCB
      006AAC E0               [24]13654 	movx	a,@dptr
      006AAD FA               [12]13655 	mov	r2,a
      006AAE A3               [24]13656 	inc	dptr
      006AAF E0               [24]13657 	movx	a,@dptr
      006AB0 FB               [12]13658 	mov	r3,a
      006AB1 A3               [24]13659 	inc	dptr
      006AB2 E0               [24]13660 	movx	a,@dptr
      006AB3 FC               [12]13661 	mov	r4,a
      006AB4 02 6A BD         [24]13662 	ljmp	00107$
      006AB7                      13663 00106$:
      006AB7 8D 02            [24]13664 	mov	ar2,r5
      006AB9 8E 03            [24]13665 	mov	ar3,r6
      006ABB 8F 04            [24]13666 	mov	ar4,r7
      006ABD                      13667 00107$:
      006ABD 8A 05            [24]13668 	mov	ar5,r2
      006ABF 8B 06            [24]13669 	mov	ar6,r3
      006AC1 8C 07            [24]13670 	mov	ar7,r4
                           00457F 13671 	C$tasks.c$5225$1_0$441 ==.
                                  13672 ;	tasks.c:5225: taskENTER_CRITICAL();
      006AC3 C0 E0            [24]13673 	push ACC 
      006AC5 C0 A8            [24]13674 	push IE 
                                  13675 ;	assignBit
      006AC7 C2 AF            [12]13676 	clr	_EA
                           004585 13677 	C$tasks.c$5227$2_0$442 ==.
                                  13678 ;	tasks.c:5227: if( pxTCB->ucNotifyState[ uxIndexToClear ] == taskNOTIFICATION_RECEIVED )
      006AC9 74 32            [12]13679 	mov	a,#0x32
      006ACB 2D               [12]13680 	add	a,r5
      006ACC FA               [12]13681 	mov	r2,a
      006ACD 74 00            [12]13682 	mov	a,#0x00
      006ACF 3E               [12]13683 	addc	a,r6
      006AD0 FB               [12]13684 	mov	r3,a
      006AD1 8F 04            [24]13685 	mov	ar4,r7
      006AD3 E5 0D            [12]13686 	mov	a,_bp
      006AD5 24 FD            [12]13687 	add	a,#0xfd
      006AD7 F8               [12]13688 	mov	r0,a
      006AD8 A9 0D            [24]13689 	mov	r1,_bp
      006ADA 09               [12]13690 	inc	r1
      006ADB E6               [12]13691 	mov	a,@r0
      006ADC F7               [12]13692 	mov	@r1,a
      006ADD A8 0D            [24]13693 	mov	r0,_bp
      006ADF 08               [12]13694 	inc	r0
      006AE0 E6               [12]13695 	mov	a,@r0
      006AE1 2A               [12]13696 	add	a,r2
      006AE2 FA               [12]13697 	mov	r2,a
      006AE3 74 00            [12]13698 	mov	a,#0x00
      006AE5 3B               [12]13699 	addc	a,r3
      006AE6 FB               [12]13700 	mov	r3,a
      006AE7 8A 82            [24]13701 	mov	dpl,r2
      006AE9 8B 83            [24]13702 	mov	dph,r3
      006AEB 8C F0            [24]13703 	mov	b,r4
      006AED 12 7C 4D         [24]13704 	lcall	__gptrget
      006AF0 FA               [12]13705 	mov	r2,a
      006AF1 BA 02 02         [24]13706 	cjne	r2,#0x02,00117$
      006AF4 80 03            [24]13707 	sjmp	00118$
      006AF6                      13708 00117$:
      006AF6 02 6B 1B         [24]13709 	ljmp	00102$
      006AF9                      13710 00118$:
                           0045B5 13711 	C$tasks.c$5229$3_0$443 ==.
                                  13712 ;	tasks.c:5229: pxTCB->ucNotifyState[ uxIndexToClear ] = taskNOT_WAITING_NOTIFICATION;
      006AF9 74 32            [12]13713 	mov	a,#0x32
      006AFB 2D               [12]13714 	add	a,r5
      006AFC FD               [12]13715 	mov	r5,a
      006AFD 74 00            [12]13716 	mov	a,#0x00
      006AFF 3E               [12]13717 	addc	a,r6
      006B00 FE               [12]13718 	mov	r6,a
      006B01 A8 0D            [24]13719 	mov	r0,_bp
      006B03 08               [12]13720 	inc	r0
      006B04 E6               [12]13721 	mov	a,@r0
      006B05 2D               [12]13722 	add	a,r5
      006B06 FD               [12]13723 	mov	r5,a
      006B07 74 00            [12]13724 	mov	a,#0x00
      006B09 3E               [12]13725 	addc	a,r6
      006B0A FE               [12]13726 	mov	r6,a
      006B0B 8D 82            [24]13727 	mov	dpl,r5
      006B0D 8E 83            [24]13728 	mov	dph,r6
      006B0F 8F F0            [24]13729 	mov	b,r7
      006B11 74 00            [12]13730 	mov	a,#0x00
      006B13 12 79 22         [24]13731 	lcall	__gptrput
                           0045D2 13732 	C$tasks.c$5230$3_0$443 ==.
                                  13733 ;	tasks.c:5230: xReturn = pdPASS;
      006B16 7F 01            [12]13734 	mov	r7,#0x01
      006B18 02 6B 1D         [24]13735 	ljmp	00103$
      006B1B                      13736 00102$:
                           0045D7 13737 	C$tasks.c$5234$3_0$444 ==.
                                  13738 ;	tasks.c:5234: xReturn = pdFAIL;
      006B1B 7F 00            [12]13739 	mov	r7,#0x00
      006B1D                      13740 00103$:
                           0045D9 13741 	C$tasks.c$5237$1_0$441 ==.
                                  13742 ;	tasks.c:5237: taskEXIT_CRITICAL();
      006B1D D0 E0            [24]13743 	pop ACC 
      006B1F 53 E0 80         [24]13744 	anl	_ACC,#0x80
      006B22 E5 E0            [12]13745 	mov	a,_ACC
      006B24 42 A8            [12]13746 	orl	_IE,a
      006B26 D0 E0            [24]13747 	pop ACC 
                           0045E4 13748 	C$tasks.c$5239$1_0$441 ==.
                                  13749 ;	tasks.c:5239: return xReturn;
      006B28 8F 82            [24]13750 	mov	dpl,r7
      006B2A                      13751 00104$:
                           0045E6 13752 	C$tasks.c$5240$1_0$441 ==.
                                  13753 ;	tasks.c:5240: }
      006B2A 15 81            [12]13754 	dec	sp
      006B2C D0 0D            [24]13755 	pop	_bp
                           0045EA 13756 	C$tasks.c$5240$1_0$441 ==.
                           0045EA 13757 	XG$xTaskGenericNotifyStateClear$0$0 ==.
      006B2E 22               [24]13758 	ret
                                  13759 ;------------------------------------------------------------
                                  13760 ;Allocation info for local variables in function 'ulTaskGenericNotifyValueClear'
                                  13761 ;------------------------------------------------------------
                                  13762 ;uxIndexToClear            Allocated to stack - _bp -3
                                  13763 ;ulBitsToClear             Allocated to stack - _bp -7
                                  13764 ;xTask                     Allocated to registers r5 r6 r7 
                                  13765 ;pxTCB                     Allocated to registers r2 r3 r4 
                                  13766 ;ulReturn                  Allocated to stack - _bp +8
                                  13767 ;sloc0                     Allocated to stack - _bp +5
                                  13768 ;sloc1                     Allocated to stack - _bp +1
                                  13769 ;------------------------------------------------------------
                           0045EB 13770 	G$ulTaskGenericNotifyValueClear$0$0 ==.
                           0045EB 13771 	C$tasks.c$5247$1_0$446 ==.
                                  13772 ;	tasks.c:5247: uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
                                  13773 ;	-----------------------------------------
                                  13774 ;	 function ulTaskGenericNotifyValueClear
                                  13775 ;	-----------------------------------------
      006B2F                      13776 _ulTaskGenericNotifyValueClear:
      006B2F C0 0D            [24]13777 	push	_bp
      006B31 85 81 0D         [24]13778 	mov	_bp,sp
      006B34 E5 81            [12]13779 	mov	a,sp
      006B36 24 0B            [12]13780 	add	a,#0x0b
      006B38 F5 81            [12]13781 	mov	sp,a
      006B3A AD 82            [24]13782 	mov	r5,dpl
      006B3C AE 83            [24]13783 	mov	r6,dph
      006B3E AF F0            [24]13784 	mov	r7,b
                           0045FC 13785 	C$tasks.c$5256$1_0$446 ==.
                                  13786 ;	tasks.c:5256: pxTCB = prvGetTCBFromHandle( xTask );
      006B40 ED               [12]13787 	mov	a,r5
      006B41 4E               [12]13788 	orl	a,r6
      006B42 60 03            [24]13789 	jz	00109$
      006B44 02 6B 55         [24]13790 	ljmp	00103$
      006B47                      13791 00109$:
      006B47 90 0C 7F         [24]13792 	mov	dptr,#_pxCurrentTCB
      006B4A E0               [24]13793 	movx	a,@dptr
      006B4B FA               [12]13794 	mov	r2,a
      006B4C A3               [24]13795 	inc	dptr
      006B4D E0               [24]13796 	movx	a,@dptr
      006B4E FB               [12]13797 	mov	r3,a
      006B4F A3               [24]13798 	inc	dptr
      006B50 E0               [24]13799 	movx	a,@dptr
      006B51 FC               [12]13800 	mov	r4,a
      006B52 02 6B 5B         [24]13801 	ljmp	00104$
      006B55                      13802 00103$:
      006B55 8D 02            [24]13803 	mov	ar2,r5
      006B57 8E 03            [24]13804 	mov	ar3,r6
      006B59 8F 04            [24]13805 	mov	ar4,r7
      006B5B                      13806 00104$:
                           004617 13807 	C$tasks.c$5258$1_0$446 ==.
                                  13808 ;	tasks.c:5258: taskENTER_CRITICAL();
      006B5B C0 E0            [24]13809 	push ACC 
      006B5D C0 A8            [24]13810 	push IE 
                                  13811 ;	assignBit
      006B5F C2 AF            [12]13812 	clr	_EA
                           00461D 13813 	C$tasks.c$5262$2_0$447 ==.
                                  13814 ;	tasks.c:5262: ulReturn = pxTCB->ulNotifiedValue[ uxIndexToClear ];
      006B61 74 2E            [12]13815 	mov	a,#0x2e
      006B63 2A               [12]13816 	add	a,r2
      006B64 FA               [12]13817 	mov	r2,a
      006B65 74 00            [12]13818 	mov	a,#0x00
      006B67 3B               [12]13819 	addc	a,r3
      006B68 FB               [12]13820 	mov	r3,a
      006B69 E5 0D            [12]13821 	mov	a,_bp
      006B6B 24 FD            [12]13822 	add	a,#0xfd
      006B6D F8               [12]13823 	mov	r0,a
      006B6E E6               [12]13824 	mov	a,@r0
      006B6F 25 E0            [12]13825 	add	a,acc
      006B71 FF               [12]13826 	mov	r7,a
      006B72 EF               [12]13827 	mov	a,r7
      006B73 25 E0            [12]13828 	add	a,acc
      006B75 FF               [12]13829 	mov	r7,a
      006B76 E5 0D            [12]13830 	mov	a,_bp
      006B78 24 05            [12]13831 	add	a,#0x05
      006B7A F8               [12]13832 	mov	r0,a
      006B7B EF               [12]13833 	mov	a,r7
      006B7C 2A               [12]13834 	add	a,r2
      006B7D F6               [12]13835 	mov	@r0,a
      006B7E 74 00            [12]13836 	mov	a,#0x00
      006B80 3B               [12]13837 	addc	a,r3
      006B81 08               [12]13838 	inc	r0
      006B82 F6               [12]13839 	mov	@r0,a
      006B83 08               [12]13840 	inc	r0
      006B84 A6 04            [24]13841 	mov	@r0,ar4
      006B86 E5 0D            [12]13842 	mov	a,_bp
      006B88 24 05            [12]13843 	add	a,#0x05
      006B8A F8               [12]13844 	mov	r0,a
      006B8B 86 82            [24]13845 	mov	dpl,@r0
      006B8D 08               [12]13846 	inc	r0
      006B8E 86 83            [24]13847 	mov	dph,@r0
      006B90 08               [12]13848 	inc	r0
      006B91 86 F0            [24]13849 	mov	b,@r0
      006B93 E5 0D            [12]13850 	mov	a,_bp
      006B95 24 08            [12]13851 	add	a,#0x08
      006B97 F9               [12]13852 	mov	r1,a
      006B98 12 7C 4D         [24]13853 	lcall	__gptrget
      006B9B F7               [12]13854 	mov	@r1,a
      006B9C A3               [24]13855 	inc	dptr
      006B9D 12 7C 4D         [24]13856 	lcall	__gptrget
      006BA0 09               [12]13857 	inc	r1
      006BA1 F7               [12]13858 	mov	@r1,a
      006BA2 A3               [24]13859 	inc	dptr
      006BA3 12 7C 4D         [24]13860 	lcall	__gptrget
      006BA6 09               [12]13861 	inc	r1
      006BA7 F7               [12]13862 	mov	@r1,a
      006BA8 A3               [24]13863 	inc	dptr
      006BA9 12 7C 4D         [24]13864 	lcall	__gptrget
      006BAC 09               [12]13865 	inc	r1
      006BAD F7               [12]13866 	mov	@r1,a
                           00466A 13867 	C$tasks.c$5263$2_0$447 ==.
                                  13868 ;	tasks.c:5263: pxTCB->ulNotifiedValue[ uxIndexToClear ] &= ~ulBitsToClear;
      006BAE E5 0D            [12]13869 	mov	a,_bp
      006BB0 24 F9            [12]13870 	add	a,#0xf9
      006BB2 F8               [12]13871 	mov	r0,a
      006BB3 A9 0D            [24]13872 	mov	r1,_bp
      006BB5 09               [12]13873 	inc	r1
      006BB6 E6               [12]13874 	mov	a,@r0
      006BB7 F4               [12]13875 	cpl	a
      006BB8 F7               [12]13876 	mov	@r1,a
      006BB9 08               [12]13877 	inc	r0
      006BBA E6               [12]13878 	mov	a,@r0
      006BBB F4               [12]13879 	cpl	a
      006BBC 09               [12]13880 	inc	r1
      006BBD F7               [12]13881 	mov	@r1,a
      006BBE 08               [12]13882 	inc	r0
      006BBF E6               [12]13883 	mov	a,@r0
      006BC0 F4               [12]13884 	cpl	a
      006BC1 09               [12]13885 	inc	r1
      006BC2 F7               [12]13886 	mov	@r1,a
      006BC3 08               [12]13887 	inc	r0
      006BC4 E6               [12]13888 	mov	a,@r0
      006BC5 F4               [12]13889 	cpl	a
      006BC6 09               [12]13890 	inc	r1
      006BC7 F7               [12]13891 	mov	@r1,a
      006BC8 E5 0D            [12]13892 	mov	a,_bp
      006BCA 24 05            [12]13893 	add	a,#0x05
      006BCC F8               [12]13894 	mov	r0,a
      006BCD 86 82            [24]13895 	mov	dpl,@r0
      006BCF 08               [12]13896 	inc	r0
      006BD0 86 83            [24]13897 	mov	dph,@r0
      006BD2 08               [12]13898 	inc	r0
      006BD3 86 F0            [24]13899 	mov	b,@r0
      006BD5 12 7C 4D         [24]13900 	lcall	__gptrget
      006BD8 FA               [12]13901 	mov	r2,a
      006BD9 A3               [24]13902 	inc	dptr
      006BDA 12 7C 4D         [24]13903 	lcall	__gptrget
      006BDD FB               [12]13904 	mov	r3,a
      006BDE A3               [24]13905 	inc	dptr
      006BDF 12 7C 4D         [24]13906 	lcall	__gptrget
      006BE2 FE               [12]13907 	mov	r6,a
      006BE3 A3               [24]13908 	inc	dptr
      006BE4 12 7C 4D         [24]13909 	lcall	__gptrget
      006BE7 FF               [12]13910 	mov	r7,a
      006BE8 A8 0D            [24]13911 	mov	r0,_bp
      006BEA 08               [12]13912 	inc	r0
      006BEB E6               [12]13913 	mov	a,@r0
      006BEC 52 02            [12]13914 	anl	ar2,a
      006BEE 08               [12]13915 	inc	r0
      006BEF E6               [12]13916 	mov	a,@r0
      006BF0 52 03            [12]13917 	anl	ar3,a
      006BF2 08               [12]13918 	inc	r0
      006BF3 E6               [12]13919 	mov	a,@r0
      006BF4 52 06            [12]13920 	anl	ar6,a
      006BF6 08               [12]13921 	inc	r0
      006BF7 E6               [12]13922 	mov	a,@r0
      006BF8 52 07            [12]13923 	anl	ar7,a
      006BFA E5 0D            [12]13924 	mov	a,_bp
      006BFC 24 05            [12]13925 	add	a,#0x05
      006BFE F8               [12]13926 	mov	r0,a
      006BFF 86 82            [24]13927 	mov	dpl,@r0
      006C01 08               [12]13928 	inc	r0
      006C02 86 83            [24]13929 	mov	dph,@r0
      006C04 08               [12]13930 	inc	r0
      006C05 86 F0            [24]13931 	mov	b,@r0
      006C07 EA               [12]13932 	mov	a,r2
      006C08 12 79 22         [24]13933 	lcall	__gptrput
      006C0B A3               [24]13934 	inc	dptr
      006C0C EB               [12]13935 	mov	a,r3
      006C0D 12 79 22         [24]13936 	lcall	__gptrput
      006C10 A3               [24]13937 	inc	dptr
      006C11 EE               [12]13938 	mov	a,r6
      006C12 12 79 22         [24]13939 	lcall	__gptrput
      006C15 A3               [24]13940 	inc	dptr
      006C16 EF               [12]13941 	mov	a,r7
      006C17 12 79 22         [24]13942 	lcall	__gptrput
                           0046D6 13943 	C$tasks.c$5265$1_0$446 ==.
                                  13944 ;	tasks.c:5265: taskEXIT_CRITICAL();
      006C1A D0 E0            [24]13945 	pop ACC 
      006C1C 53 E0 80         [24]13946 	anl	_ACC,#0x80
      006C1F E5 E0            [12]13947 	mov	a,_ACC
      006C21 42 A8            [12]13948 	orl	_IE,a
      006C23 D0 E0            [24]13949 	pop ACC 
                           0046E1 13950 	C$tasks.c$5267$1_0$446 ==.
                                  13951 ;	tasks.c:5267: return ulReturn;
      006C25 E5 0D            [12]13952 	mov	a,_bp
      006C27 24 08            [12]13953 	add	a,#0x08
      006C29 F8               [12]13954 	mov	r0,a
      006C2A 86 82            [24]13955 	mov	dpl,@r0
      006C2C 08               [12]13956 	inc	r0
      006C2D 86 83            [24]13957 	mov	dph,@r0
      006C2F 08               [12]13958 	inc	r0
      006C30 86 F0            [24]13959 	mov	b,@r0
      006C32 08               [12]13960 	inc	r0
      006C33 E6               [12]13961 	mov	a,@r0
      006C34                      13962 00101$:
                           0046F0 13963 	C$tasks.c$5268$1_0$446 ==.
                                  13964 ;	tasks.c:5268: }
      006C34 85 0D 81         [24]13965 	mov	sp,_bp
      006C37 D0 0D            [24]13966 	pop	_bp
                           0046F5 13967 	C$tasks.c$5268$1_0$446 ==.
                           0046F5 13968 	XG$ulTaskGenericNotifyValueClear$0$0 ==.
      006C39 22               [24]13969 	ret
                                  13970 ;------------------------------------------------------------
                                  13971 ;Allocation info for local variables in function 'prvAddCurrentTaskToDelayedList'
                                  13972 ;------------------------------------------------------------
                                  13973 ;xCanBlockIndefinitely     Allocated to stack - _bp -3
                                  13974 ;xTicksToWait              Allocated to stack - _bp +1
                                  13975 ;xTimeToWake               Allocated to stack - _bp +3
                                  13976 ;xConstTickCount           Allocated to stack - _bp +5
                                  13977 ;sloc0                     Allocated to stack - _bp +7
                                  13978 ;------------------------------------------------------------
                           0046F6 13979 	Ftasks$prvAddCurrentTaskToDelayedList$0$0 ==.
                           0046F6 13980 	C$tasks.c$5310$1_0$449 ==.
                                  13981 ;	tasks.c:5310: static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait,
                                  13982 ;	-----------------------------------------
                                  13983 ;	 function prvAddCurrentTaskToDelayedList
                                  13984 ;	-----------------------------------------
      006C3A                      13985 _prvAddCurrentTaskToDelayedList:
      006C3A C0 0D            [24]13986 	push	_bp
      006C3C 85 81 0D         [24]13987 	mov	_bp,sp
      006C3F C0 82            [24]13988 	push	dpl
      006C41 C0 83            [24]13989 	push	dph
      006C43 E5 81            [12]13990 	mov	a,sp
      006C45 24 04            [12]13991 	add	a,#0x04
      006C47 F5 81            [12]13992 	mov	sp,a
                           004705 13993 	C$tasks.c$5314$2_0$449 ==.
                                  13994 ;	tasks.c:5314: const TickType_t xConstTickCount = xTickCount;
      006C49 90 0C 84         [24]13995 	mov	dptr,#_xTickCount
      006C4C E0               [24]13996 	movx	a,@dptr
      006C4D FC               [12]13997 	mov	r4,a
      006C4E A3               [24]13998 	inc	dptr
      006C4F E0               [24]13999 	movx	a,@dptr
      006C50 FD               [12]14000 	mov	r5,a
      006C51 E5 0D            [12]14001 	mov	a,_bp
      006C53 24 05            [12]14002 	add	a,#0x05
      006C55 F8               [12]14003 	mov	r0,a
      006C56 A6 04            [24]14004 	mov	@r0,ar4
      006C58 08               [12]14005 	inc	r0
      006C59 A6 05            [24]14006 	mov	@r0,ar5
                           004717 14007 	C$tasks.c$5327$1_0$449 ==.
                                  14008 ;	tasks.c:5327: if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
      006C5B 90 0C 7F         [24]14009 	mov	dptr,#_pxCurrentTCB
      006C5E E0               [24]14010 	movx	a,@dptr
      006C5F FA               [12]14011 	mov	r2,a
      006C60 A3               [24]14012 	inc	dptr
      006C61 E0               [24]14013 	movx	a,@dptr
      006C62 FB               [12]14014 	mov	r3,a
      006C63 A3               [24]14015 	inc	dptr
      006C64 E0               [24]14016 	movx	a,@dptr
      006C65 FF               [12]14017 	mov	r7,a
      006C66 74 03            [12]14018 	mov	a,#0x03
      006C68 2A               [12]14019 	add	a,r2
      006C69 FA               [12]14020 	mov	r2,a
      006C6A 74 00            [12]14021 	mov	a,#0x00
      006C6C 3B               [12]14022 	addc	a,r3
      006C6D FB               [12]14023 	mov	r3,a
      006C6E 8A 82            [24]14024 	mov	dpl,r2
      006C70 8B 83            [24]14025 	mov	dph,r3
      006C72 8F F0            [24]14026 	mov	b,r7
      006C74 12 71 E3         [24]14027 	lcall	_uxListRemove
                           004733 14028 	C$tasks.c$5388$2_0$452 ==.
                                  14029 ;	tasks.c:5388: xTimeToWake = xConstTickCount + xTicksToWait;
      006C77 E5 0D            [12]14030 	mov	a,_bp
      006C79 24 05            [12]14031 	add	a,#0x05
      006C7B F8               [12]14032 	mov	r0,a
      006C7C A9 0D            [24]14033 	mov	r1,_bp
      006C7E 09               [12]14034 	inc	r1
      006C7F E7               [12]14035 	mov	a,@r1
      006C80 26               [12]14036 	add	a,@r0
      006C81 FE               [12]14037 	mov	r6,a
      006C82 09               [12]14038 	inc	r1
      006C83 E7               [12]14039 	mov	a,@r1
      006C84 08               [12]14040 	inc	r0
      006C85 36               [12]14041 	addc	a,@r0
      006C86 FF               [12]14042 	mov	r7,a
      006C87 E5 0D            [12]14043 	mov	a,_bp
      006C89 24 03            [12]14044 	add	a,#0x03
      006C8B F8               [12]14045 	mov	r0,a
      006C8C A6 06            [24]14046 	mov	@r0,ar6
      006C8E 08               [12]14047 	inc	r0
      006C8F A6 07            [24]14048 	mov	@r0,ar7
                           00474D 14049 	C$tasks.c$5391$2_0$452 ==.
                                  14050 ;	tasks.c:5391: listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
      006C91 90 0C 7F         [24]14051 	mov	dptr,#_pxCurrentTCB
      006C94 E0               [24]14052 	movx	a,@dptr
      006C95 FA               [12]14053 	mov	r2,a
      006C96 A3               [24]14054 	inc	dptr
      006C97 E0               [24]14055 	movx	a,@dptr
      006C98 FB               [12]14056 	mov	r3,a
      006C99 A3               [24]14057 	inc	dptr
      006C9A E0               [24]14058 	movx	a,@dptr
      006C9B FD               [12]14059 	mov	r5,a
      006C9C 74 03            [12]14060 	mov	a,#0x03
      006C9E 2A               [12]14061 	add	a,r2
      006C9F FA               [12]14062 	mov	r2,a
      006CA0 74 00            [12]14063 	mov	a,#0x00
      006CA2 3B               [12]14064 	addc	a,r3
      006CA3 FB               [12]14065 	mov	r3,a
      006CA4 8A 82            [24]14066 	mov	dpl,r2
      006CA6 8B 83            [24]14067 	mov	dph,r3
      006CA8 8D F0            [24]14068 	mov	b,r5
      006CAA E5 0D            [12]14069 	mov	a,_bp
      006CAC 24 03            [12]14070 	add	a,#0x03
      006CAE F8               [12]14071 	mov	r0,a
      006CAF E6               [12]14072 	mov	a,@r0
      006CB0 12 79 22         [24]14073 	lcall	__gptrput
      006CB3 A3               [24]14074 	inc	dptr
      006CB4 08               [12]14075 	inc	r0
      006CB5 E6               [12]14076 	mov	a,@r0
      006CB6 12 79 22         [24]14077 	lcall	__gptrput
                           004775 14078 	C$tasks.c$5393$2_0$452 ==.
                                  14079 ;	tasks.c:5393: if( xTimeToWake < xConstTickCount )
      006CB9 E5 0D            [12]14080 	mov	a,_bp
      006CBB 24 03            [12]14081 	add	a,#0x03
      006CBD F8               [12]14082 	mov	r0,a
      006CBE E5 0D            [12]14083 	mov	a,_bp
      006CC0 24 05            [12]14084 	add	a,#0x05
      006CC2 F9               [12]14085 	mov	r1,a
      006CC3 C3               [12]14086 	clr	c
      006CC4 E6               [12]14087 	mov	a,@r0
      006CC5 97               [12]14088 	subb	a,@r1
      006CC6 08               [12]14089 	inc	r0
      006CC7 E6               [12]14090 	mov	a,@r0
      006CC8 09               [12]14091 	inc	r1
      006CC9 97               [12]14092 	subb	a,@r1
      006CCA 40 03            [24]14093 	jc	00118$
      006CCC 02 6D 07         [24]14094 	ljmp	00106$
      006CCF                      14095 00118$:
                           00478B 14096 	C$tasks.c$5396$3_0$453 ==.
                                  14097 ;	tasks.c:5396: vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
      006CCF 90 0C 7F         [24]14098 	mov	dptr,#_pxCurrentTCB
      006CD2 E0               [24]14099 	movx	a,@dptr
      006CD3 FB               [12]14100 	mov	r3,a
      006CD4 A3               [24]14101 	inc	dptr
      006CD5 E0               [24]14102 	movx	a,@dptr
      006CD6 FC               [12]14103 	mov	r4,a
      006CD7 A3               [24]14104 	inc	dptr
      006CD8 E0               [24]14105 	movx	a,@dptr
      006CD9 FD               [12]14106 	mov	r5,a
      006CDA 74 03            [12]14107 	mov	a,#0x03
      006CDC 2B               [12]14108 	add	a,r3
      006CDD FB               [12]14109 	mov	r3,a
      006CDE 74 00            [12]14110 	mov	a,#0x00
      006CE0 3C               [12]14111 	addc	a,r4
      006CE1 FE               [12]14112 	mov	r6,a
      006CE2 8D 07            [24]14113 	mov	ar7,r5
      006CE4 90 00 61         [24]14114 	mov	dptr,#_pxOverflowDelayedTaskList
      006CE7 E0               [24]14115 	movx	a,@dptr
      006CE8 FA               [12]14116 	mov	r2,a
      006CE9 A3               [24]14117 	inc	dptr
      006CEA E0               [24]14118 	movx	a,@dptr
      006CEB FC               [12]14119 	mov	r4,a
      006CEC A3               [24]14120 	inc	dptr
      006CED E0               [24]14121 	movx	a,@dptr
      006CEE FD               [12]14122 	mov	r5,a
      006CEF C0 03            [24]14123 	push	ar3
      006CF1 C0 06            [24]14124 	push	ar6
      006CF3 C0 07            [24]14125 	push	ar7
      006CF5 8A 82            [24]14126 	mov	dpl,r2
      006CF7 8C 83            [24]14127 	mov	dph,r4
      006CF9 8D F0            [24]14128 	mov	b,r5
      006CFB 12 6F D3         [24]14129 	lcall	_vListInsert
      006CFE 15 81            [12]14130 	dec	sp
      006D00 15 81            [12]14131 	dec	sp
      006D02 15 81            [12]14132 	dec	sp
      006D04 02 6D 60         [24]14133 	ljmp	00108$
      006D07                      14134 00106$:
                           0047C3 14135 	C$tasks.c$5401$3_0$454 ==.
                                  14136 ;	tasks.c:5401: vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
      006D07 90 0C 7F         [24]14137 	mov	dptr,#_pxCurrentTCB
      006D0A E0               [24]14138 	movx	a,@dptr
      006D0B FB               [12]14139 	mov	r3,a
      006D0C A3               [24]14140 	inc	dptr
      006D0D E0               [24]14141 	movx	a,@dptr
      006D0E FC               [12]14142 	mov	r4,a
      006D0F A3               [24]14143 	inc	dptr
      006D10 E0               [24]14144 	movx	a,@dptr
      006D11 FD               [12]14145 	mov	r5,a
      006D12 74 03            [12]14146 	mov	a,#0x03
      006D14 2B               [12]14147 	add	a,r3
      006D15 FB               [12]14148 	mov	r3,a
      006D16 74 00            [12]14149 	mov	a,#0x00
      006D18 3C               [12]14150 	addc	a,r4
      006D19 FC               [12]14151 	mov	r4,a
      006D1A 90 00 5E         [24]14152 	mov	dptr,#_pxDelayedTaskList
      006D1D E0               [24]14153 	movx	a,@dptr
      006D1E FA               [12]14154 	mov	r2,a
      006D1F A3               [24]14155 	inc	dptr
      006D20 E0               [24]14156 	movx	a,@dptr
      006D21 FE               [12]14157 	mov	r6,a
      006D22 A3               [24]14158 	inc	dptr
      006D23 E0               [24]14159 	movx	a,@dptr
      006D24 FF               [12]14160 	mov	r7,a
      006D25 C0 03            [24]14161 	push	ar3
      006D27 C0 04            [24]14162 	push	ar4
      006D29 C0 05            [24]14163 	push	ar5
      006D2B 8A 82            [24]14164 	mov	dpl,r2
      006D2D 8E 83            [24]14165 	mov	dph,r6
      006D2F 8F F0            [24]14166 	mov	b,r7
      006D31 12 6F D3         [24]14167 	lcall	_vListInsert
      006D34 15 81            [12]14168 	dec	sp
      006D36 15 81            [12]14169 	dec	sp
      006D38 15 81            [12]14170 	dec	sp
                           0047F6 14171 	C$tasks.c$5406$3_0$454 ==.
                                  14172 ;	tasks.c:5406: if( xTimeToWake < xNextTaskUnblockTime )
      006D3A 90 0C 8D         [24]14173 	mov	dptr,#_xNextTaskUnblockTime
      006D3D E0               [24]14174 	movx	a,@dptr
      006D3E FE               [12]14175 	mov	r6,a
      006D3F A3               [24]14176 	inc	dptr
      006D40 E0               [24]14177 	movx	a,@dptr
      006D41 FF               [12]14178 	mov	r7,a
      006D42 E5 0D            [12]14179 	mov	a,_bp
      006D44 24 03            [12]14180 	add	a,#0x03
      006D46 F8               [12]14181 	mov	r0,a
      006D47 C3               [12]14182 	clr	c
      006D48 E6               [12]14183 	mov	a,@r0
      006D49 9E               [12]14184 	subb	a,r6
      006D4A 08               [12]14185 	inc	r0
      006D4B E6               [12]14186 	mov	a,@r0
      006D4C 9F               [12]14187 	subb	a,r7
      006D4D 40 03            [24]14188 	jc	00119$
      006D4F 02 6D 60         [24]14189 	ljmp	00108$
      006D52                      14190 00119$:
                           00480E 14191 	C$tasks.c$5408$4_0$455 ==.
                                  14192 ;	tasks.c:5408: xNextTaskUnblockTime = xTimeToWake;
      006D52 E5 0D            [12]14193 	mov	a,_bp
      006D54 24 03            [12]14194 	add	a,#0x03
      006D56 F8               [12]14195 	mov	r0,a
      006D57 90 0C 8D         [24]14196 	mov	dptr,#_xNextTaskUnblockTime
      006D5A E6               [12]14197 	mov	a,@r0
      006D5B F0               [24]14198 	movx	@dptr,a
      006D5C 08               [12]14199 	inc	r0
      006D5D E6               [12]14200 	mov	a,@r0
      006D5E A3               [24]14201 	inc	dptr
      006D5F F0               [24]14202 	movx	@dptr,a
                           00481C 14203 	C$tasks.c$5417$2_0$449 ==.
                                  14204 ;	tasks.c:5417: ( void ) xCanBlockIndefinitely;
      006D60                      14205 00108$:
                           00481C 14206 	C$tasks.c$5420$2_0$449 ==.
                                  14207 ;	tasks.c:5420: }
      006D60 85 0D 81         [24]14208 	mov	sp,_bp
      006D63 D0 0D            [24]14209 	pop	_bp
                           004821 14210 	C$tasks.c$5420$2_0$449 ==.
                           004821 14211 	XFtasks$prvAddCurrentTaskToDelayedList$0$0 ==.
      006D65 22               [24]14212 	ret
                                  14213 	.area CSEG    (CODE)
                                  14214 	.area CONST   (CODE)
                           000000 14215 G$uxTopUsedPriority$0_0$0 == .
      007D40                      14216 _uxTopUsedPriority:
      007D40 03                   14217 	.db #0x03	; 3
                           000001 14218 Ftasks$__str_0$0_0$0 == .
                                  14219 	.area CONST   (CODE)
      007D41                      14220 ___str_0:
      007D41 49 44 4C 45          14221 	.ascii "IDLE"
      007D45 00                   14222 	.db 0x00
                                  14223 	.area CSEG    (CODE)
                                  14224 	.area XINIT   (CODE)
                           000000 14225 Ftasks$__xinit_pxCurrentTCB$0_0$0 == .
      007D46                      14226 __xinit__pxCurrentTCB:
                                  14227 ; generic printIvalPtr
      007D46 00 00 00             14228 	.byte #0x00,#0x00,#0x00
                           000003 14229 Ftasks$__xinit_uxDeletedTasksWaitingCleanUp$0_0$0 == .
      007D49                      14230 __xinit__uxDeletedTasksWaitingCleanUp:
      007D49 00                   14231 	.db #0x00	; 0
                           000004 14232 Ftasks$__xinit_uxCurrentNumberOfTasks$0_0$0 == .
      007D4A                      14233 __xinit__uxCurrentNumberOfTasks:
      007D4A 00                   14234 	.db #0x00	; 0
                           000005 14235 Ftasks$__xinit_xTickCount$0_0$0 == .
      007D4B                      14236 __xinit__xTickCount:
      007D4B 00 00                14237 	.byte #0x00, #0x00	; 0
                           000007 14238 Ftasks$__xinit_uxTopReadyPriority$0_0$0 == .
      007D4D                      14239 __xinit__uxTopReadyPriority:
      007D4D 00                   14240 	.db #0x00	; 0
                           000008 14241 Ftasks$__xinit_xSchedulerRunning$0_0$0 == .
      007D4E                      14242 __xinit__xSchedulerRunning:
      007D4E 00                   14243 	.db #0x00	;  0
                           000009 14244 Ftasks$__xinit_xPendedTicks$0_0$0 == .
      007D4F                      14245 __xinit__xPendedTicks:
      007D4F 00 00                14246 	.byte #0x00, #0x00	; 0
                           00000B 14247 Ftasks$__xinit_xYieldPending$0_0$0 == .
      007D51                      14248 __xinit__xYieldPending:
      007D51 00                   14249 	.db #0x00	;  0
                           00000C 14250 Ftasks$__xinit_xNumOfOverflows$0_0$0 == .
      007D52                      14251 __xinit__xNumOfOverflows:
      007D52 00                   14252 	.db #0x00	;  0
                           00000D 14253 Ftasks$__xinit_uxTaskNumber$0_0$0 == .
      007D53                      14254 __xinit__uxTaskNumber:
      007D53 00                   14255 	.db #0x00	; 0
                           00000E 14256 Ftasks$__xinit_xNextTaskUnblockTime$0_0$0 == .
      007D54                      14257 __xinit__xNextTaskUnblockTime:
      007D54 00 00                14258 	.byte #0x00, #0x00	; 0
                           000010 14259 Ftasks$__xinit_xIdleTaskHandle$0_0$0 == .
      007D56                      14260 __xinit__xIdleTaskHandle:
                                  14261 ; generic printIvalPtr
      007D56 00 00 00             14262 	.byte #0x00,#0x00,#0x00
                           000013 14263 Ftasks$__xinit_uxSchedulerSuspended$0_0$0 == .
      007D59                      14264 __xinit__uxSchedulerSuspended:
      007D59 00                   14265 	.db #0x00	; 0
                                  14266 	.area CABS    (ABS,CODE)
