                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module queue
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _vTaskInternalSetTimeOutState
                                     12 	.globl _vTaskMissedYield
                                     13 	.globl _xTaskRemoveFromEventList
                                     14 	.globl _vTaskPlaceOnEventList
                                     15 	.globl _xTaskCheckForTimeOut
                                     16 	.globl _xTaskResumeAll
                                     17 	.globl _vTaskSuspendAll
                                     18 	.globl _vListInitialise
                                     19 	.globl _vPortFree
                                     20 	.globl _pvPortMalloc
                                     21 	.globl _vPortYield
                                     22 	.globl ___memcpy
                                     23 	.globl _SPIF
                                     24 	.globl _WCOL
                                     25 	.globl _MODF
                                     26 	.globl _RXOVRN
                                     27 	.globl _NSSMD1
                                     28 	.globl _NSSMD0
                                     29 	.globl _TXBMT
                                     30 	.globl _SPIEN
                                     31 	.globl _AD0EN
                                     32 	.globl _AD0TM
                                     33 	.globl _AD0INT
                                     34 	.globl _AD0BUSY
                                     35 	.globl _AD0WINT
                                     36 	.globl _AD0CM2
                                     37 	.globl _AD0CM1
                                     38 	.globl _AD0CM0
                                     39 	.globl _CF
                                     40 	.globl _CR
                                     41 	.globl _CCF4
                                     42 	.globl _CCF3
                                     43 	.globl _CCF2
                                     44 	.globl _CCF1
                                     45 	.globl _CCF0
                                     46 	.globl _CY
                                     47 	.globl _AC
                                     48 	.globl _F0
                                     49 	.globl _RS1
                                     50 	.globl _RS0
                                     51 	.globl _OV
                                     52 	.globl _F1
                                     53 	.globl _PARITY
                                     54 	.globl _TF2H
                                     55 	.globl _TF2
                                     56 	.globl _TF2L
                                     57 	.globl _TF2LEN
                                     58 	.globl _T2CE
                                     59 	.globl _T2SPLIT
                                     60 	.globl _TR2
                                     61 	.globl _T2CSS
                                     62 	.globl _T2XCLK
                                     63 	.globl _MASTER
                                     64 	.globl _TXMODE
                                     65 	.globl _STA
                                     66 	.globl _STO
                                     67 	.globl _ACKRQ
                                     68 	.globl _ARBLOST
                                     69 	.globl _ACK
                                     70 	.globl _SI
                                     71 	.globl _PSPI0
                                     72 	.globl _PT2
                                     73 	.globl _PS0
                                     74 	.globl _PS
                                     75 	.globl _PT1
                                     76 	.globl _PX1
                                     77 	.globl _PT0
                                     78 	.globl _PX0
                                     79 	.globl _P3_7
                                     80 	.globl _P3_6
                                     81 	.globl _P3_5
                                     82 	.globl _P3_4
                                     83 	.globl _P3_3
                                     84 	.globl _P3_2
                                     85 	.globl _P3_1
                                     86 	.globl _P3_0
                                     87 	.globl _EA
                                     88 	.globl _ESPI0
                                     89 	.globl _ET2
                                     90 	.globl _ES0
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _P2_7
                                     97 	.globl _P2_6
                                     98 	.globl _P2_5
                                     99 	.globl _P2_4
                                    100 	.globl _P2_3
                                    101 	.globl _P2_2
                                    102 	.globl _P2_1
                                    103 	.globl _P2_0
                                    104 	.globl _S0MODE
                                    105 	.globl _SM0
                                    106 	.globl _MCE0
                                    107 	.globl _SM2
                                    108 	.globl _REN0
                                    109 	.globl _REN
                                    110 	.globl _TB80
                                    111 	.globl _TB8
                                    112 	.globl _RB80
                                    113 	.globl _RB8
                                    114 	.globl _TI0
                                    115 	.globl _TI
                                    116 	.globl _RI0
                                    117 	.globl _RI
                                    118 	.globl _P1_7
                                    119 	.globl _P1_6
                                    120 	.globl _P1_5
                                    121 	.globl _P1_4
                                    122 	.globl _P1_3
                                    123 	.globl _P1_2
                                    124 	.globl _P1_1
                                    125 	.globl _P1_0
                                    126 	.globl _TF1
                                    127 	.globl _TR1
                                    128 	.globl _TF0
                                    129 	.globl _TR0
                                    130 	.globl _IE1
                                    131 	.globl _IT1
                                    132 	.globl _IE0
                                    133 	.globl _IT0
                                    134 	.globl _P0_7
                                    135 	.globl _P0_6
                                    136 	.globl _P0_5
                                    137 	.globl _P0_4
                                    138 	.globl _P0_3
                                    139 	.globl _P0_2
                                    140 	.globl _P0_1
                                    141 	.globl _P0_0
                                    142 	.globl _PCA0CP4
                                    143 	.globl _PCA0CP3
                                    144 	.globl _PCA0CP2
                                    145 	.globl _PCA0CP1
                                    146 	.globl _PCA0CP0
                                    147 	.globl _PCA0
                                    148 	.globl _ADC0LT
                                    149 	.globl _ADC0GT
                                    150 	.globl _ADC0
                                    151 	.globl _SBRL1
                                    152 	.globl _TMR3RL
                                    153 	.globl _TMR3
                                    154 	.globl _TMR2RL
                                    155 	.globl _RCAP2
                                    156 	.globl _TMR2
                                    157 	.globl _TMR1
                                    158 	.globl _TMR0
                                    159 	.globl _VDM0CN
                                    160 	.globl _PCA0CPH4
                                    161 	.globl _PCA0CPL4
                                    162 	.globl _PCA0CPH0
                                    163 	.globl _PCA0CPL0
                                    164 	.globl _PCA0H
                                    165 	.globl _PCA0L
                                    166 	.globl _SPI0CN
                                    167 	.globl _EIP2
                                    168 	.globl _EIP1
                                    169 	.globl _P4MDIN
                                    170 	.globl _P3MDIN
                                    171 	.globl _P3MODE
                                    172 	.globl _P2MDIN
                                    173 	.globl _P2MODE
                                    174 	.globl _P1MDIN
                                    175 	.globl _P1MODE
                                    176 	.globl _P0MDIN
                                    177 	.globl _P0MODE
                                    178 	.globl _B
                                    179 	.globl _RSTSRC
                                    180 	.globl _PCA0CPH3
                                    181 	.globl _PCA0CPL3
                                    182 	.globl _PCA0CPH2
                                    183 	.globl _PCA0CPL2
                                    184 	.globl _PCA0CPH1
                                    185 	.globl _PCA0CPL1
                                    186 	.globl _ADC0CN
                                    187 	.globl _EIE2
                                    188 	.globl _EIE1
                                    189 	.globl _SMOD1
                                    190 	.globl _INT01CF
                                    191 	.globl _IT01CF
                                    192 	.globl _XBR2
                                    193 	.globl _XBR1
                                    194 	.globl _XBR0
                                    195 	.globl _ACC
                                    196 	.globl _P3SKIP
                                    197 	.globl _PCA0CPM4
                                    198 	.globl _PCA0CPM3
                                    199 	.globl _PCA0CPM2
                                    200 	.globl _PCA0CPM1
                                    201 	.globl _PCA0CPM0
                                    202 	.globl _PCA0MD
                                    203 	.globl _PCA0CN
                                    204 	.globl _USB0XCN
                                    205 	.globl _P2SKIP
                                    206 	.globl _P1SKIP
                                    207 	.globl _P0SKIP
                                    208 	.globl _SBUF1
                                    209 	.globl _SCON1
                                    210 	.globl _REF0CN
                                    211 	.globl _PSW
                                    212 	.globl _TMR2H
                                    213 	.globl _TH2
                                    214 	.globl _TMR2L
                                    215 	.globl _TL2
                                    216 	.globl _TMR2RLH
                                    217 	.globl _RCAP2H
                                    218 	.globl _TMR2RLL
                                    219 	.globl _RCAP2L
                                    220 	.globl _REG0CN
                                    221 	.globl _TMR2CN
                                    222 	.globl _T2CON
                                    223 	.globl _P4
                                    224 	.globl _ADC0LTH
                                    225 	.globl _ADC0LTL
                                    226 	.globl _ADC0GTH
                                    227 	.globl _ADC0GTL
                                    228 	.globl _SMB0DAT
                                    229 	.globl _SMB0CF
                                    230 	.globl _SMB0CN
                                    231 	.globl _ADC0H
                                    232 	.globl _ADC0L
                                    233 	.globl _ADC0CF
                                    234 	.globl _AMX0P
                                    235 	.globl _AMX0N
                                    236 	.globl _CLKMUL
                                    237 	.globl _IP
                                    238 	.globl _FLKEY
                                    239 	.globl _FLSCL
                                    240 	.globl _SBRLH1
                                    241 	.globl _SBRLL1
                                    242 	.globl _OSCICL
                                    243 	.globl _OSCICN
                                    244 	.globl _OSCXCN
                                    245 	.globl _P3
                                    246 	.globl _PFE0CN
                                    247 	.globl _P4MDOUT
                                    248 	.globl _SBCON1
                                    249 	.globl __XPAGE
                                    250 	.globl _EMI0CN
                                    251 	.globl _CLKSEL
                                    252 	.globl _IE
                                    253 	.globl _P3MDOUT
                                    254 	.globl _P2MDOUT
                                    255 	.globl _P1MDOUT
                                    256 	.globl _P0MDOUT
                                    257 	.globl _SPI0DAT
                                    258 	.globl _SPI0CKR
                                    259 	.globl _SPI0CFG
                                    260 	.globl _P2
                                    261 	.globl _CPT0MX
                                    262 	.globl _CPT1MX
                                    263 	.globl _CPT0MD
                                    264 	.globl _CPT1MD
                                    265 	.globl _CPT0CN
                                    266 	.globl _CPT1CN
                                    267 	.globl _SBUF0
                                    268 	.globl _SBUF
                                    269 	.globl _SCON0
                                    270 	.globl _SCON
                                    271 	.globl _USB0DAT
                                    272 	.globl _USB0ADR
                                    273 	.globl _TMR3H
                                    274 	.globl _TMR3L
                                    275 	.globl _TMR3RLH
                                    276 	.globl _TMR3RLL
                                    277 	.globl _TMR3CN
                                    278 	.globl _P1
                                    279 	.globl _PSCTL
                                    280 	.globl _CKCON
                                    281 	.globl _TH1
                                    282 	.globl _TH0
                                    283 	.globl _TL1
                                    284 	.globl _TL0
                                    285 	.globl _TMOD
                                    286 	.globl _TCON
                                    287 	.globl _PCON
                                    288 	.globl _OSCLCN
                                    289 	.globl _EMI0CF
                                    290 	.globl _EMI0TC
                                    291 	.globl _DPH
                                    292 	.globl _DPL
                                    293 	.globl _SP
                                    294 	.globl _P0
                                    295 	.globl _xQueueGenericReset
                                    296 	.globl _xQueueGenericCreate
                                    297 	.globl _xQueueGenericSend
                                    298 	.globl _xQueueGenericSendFromISR
                                    299 	.globl _xQueueGiveFromISR
                                    300 	.globl _xQueueReceive
                                    301 	.globl _xQueueSemaphoreTake
                                    302 	.globl _xQueuePeek
                                    303 	.globl _xQueueReceiveFromISR
                                    304 	.globl _xQueuePeekFromISR
                                    305 	.globl _uxQueueMessagesWaiting
                                    306 	.globl _uxQueueSpacesAvailable
                                    307 	.globl _uxQueueMessagesWaitingFromISR
                                    308 	.globl _vQueueDelete
                                    309 	.globl _xQueueIsQueueEmptyFromISR
                                    310 	.globl _xQueueIsQueueFullFromISR
                                    311 ;--------------------------------------------------------
                                    312 ; special function registers
                                    313 ;--------------------------------------------------------
                                    314 	.area RSEG    (ABS,DATA)
      000000                        315 	.org 0x0000
                           000080   316 G$P0$0_0$0 == 0x0080
                           000080   317 _P0	=	0x0080
                           000081   318 G$SP$0_0$0 == 0x0081
                           000081   319 _SP	=	0x0081
                           000082   320 G$DPL$0_0$0 == 0x0082
                           000082   321 _DPL	=	0x0082
                           000083   322 G$DPH$0_0$0 == 0x0083
                           000083   323 _DPH	=	0x0083
                           000084   324 G$EMI0TC$0_0$0 == 0x0084
                           000084   325 _EMI0TC	=	0x0084
                           000085   326 G$EMI0CF$0_0$0 == 0x0085
                           000085   327 _EMI0CF	=	0x0085
                           000086   328 G$OSCLCN$0_0$0 == 0x0086
                           000086   329 _OSCLCN	=	0x0086
                           000087   330 G$PCON$0_0$0 == 0x0087
                           000087   331 _PCON	=	0x0087
                           000088   332 G$TCON$0_0$0 == 0x0088
                           000088   333 _TCON	=	0x0088
                           000089   334 G$TMOD$0_0$0 == 0x0089
                           000089   335 _TMOD	=	0x0089
                           00008A   336 G$TL0$0_0$0 == 0x008a
                           00008A   337 _TL0	=	0x008a
                           00008B   338 G$TL1$0_0$0 == 0x008b
                           00008B   339 _TL1	=	0x008b
                           00008C   340 G$TH0$0_0$0 == 0x008c
                           00008C   341 _TH0	=	0x008c
                           00008D   342 G$TH1$0_0$0 == 0x008d
                           00008D   343 _TH1	=	0x008d
                           00008E   344 G$CKCON$0_0$0 == 0x008e
                           00008E   345 _CKCON	=	0x008e
                           00008F   346 G$PSCTL$0_0$0 == 0x008f
                           00008F   347 _PSCTL	=	0x008f
                           000090   348 G$P1$0_0$0 == 0x0090
                           000090   349 _P1	=	0x0090
                           000091   350 G$TMR3CN$0_0$0 == 0x0091
                           000091   351 _TMR3CN	=	0x0091
                           000092   352 G$TMR3RLL$0_0$0 == 0x0092
                           000092   353 _TMR3RLL	=	0x0092
                           000093   354 G$TMR3RLH$0_0$0 == 0x0093
                           000093   355 _TMR3RLH	=	0x0093
                           000094   356 G$TMR3L$0_0$0 == 0x0094
                           000094   357 _TMR3L	=	0x0094
                           000095   358 G$TMR3H$0_0$0 == 0x0095
                           000095   359 _TMR3H	=	0x0095
                           000096   360 G$USB0ADR$0_0$0 == 0x0096
                           000096   361 _USB0ADR	=	0x0096
                           000097   362 G$USB0DAT$0_0$0 == 0x0097
                           000097   363 _USB0DAT	=	0x0097
                           000098   364 G$SCON$0_0$0 == 0x0098
                           000098   365 _SCON	=	0x0098
                           000098   366 G$SCON0$0_0$0 == 0x0098
                           000098   367 _SCON0	=	0x0098
                           000099   368 G$SBUF$0_0$0 == 0x0099
                           000099   369 _SBUF	=	0x0099
                           000099   370 G$SBUF0$0_0$0 == 0x0099
                           000099   371 _SBUF0	=	0x0099
                           00009A   372 G$CPT1CN$0_0$0 == 0x009a
                           00009A   373 _CPT1CN	=	0x009a
                           00009B   374 G$CPT0CN$0_0$0 == 0x009b
                           00009B   375 _CPT0CN	=	0x009b
                           00009C   376 G$CPT1MD$0_0$0 == 0x009c
                           00009C   377 _CPT1MD	=	0x009c
                           00009D   378 G$CPT0MD$0_0$0 == 0x009d
                           00009D   379 _CPT0MD	=	0x009d
                           00009E   380 G$CPT1MX$0_0$0 == 0x009e
                           00009E   381 _CPT1MX	=	0x009e
                           00009F   382 G$CPT0MX$0_0$0 == 0x009f
                           00009F   383 _CPT0MX	=	0x009f
                           0000A0   384 G$P2$0_0$0 == 0x00a0
                           0000A0   385 _P2	=	0x00a0
                           0000A1   386 G$SPI0CFG$0_0$0 == 0x00a1
                           0000A1   387 _SPI0CFG	=	0x00a1
                           0000A2   388 G$SPI0CKR$0_0$0 == 0x00a2
                           0000A2   389 _SPI0CKR	=	0x00a2
                           0000A3   390 G$SPI0DAT$0_0$0 == 0x00a3
                           0000A3   391 _SPI0DAT	=	0x00a3
                           0000A4   392 G$P0MDOUT$0_0$0 == 0x00a4
                           0000A4   393 _P0MDOUT	=	0x00a4
                           0000A5   394 G$P1MDOUT$0_0$0 == 0x00a5
                           0000A5   395 _P1MDOUT	=	0x00a5
                           0000A6   396 G$P2MDOUT$0_0$0 == 0x00a6
                           0000A6   397 _P2MDOUT	=	0x00a6
                           0000A7   398 G$P3MDOUT$0_0$0 == 0x00a7
                           0000A7   399 _P3MDOUT	=	0x00a7
                           0000A8   400 G$IE$0_0$0 == 0x00a8
                           0000A8   401 _IE	=	0x00a8
                           0000A9   402 G$CLKSEL$0_0$0 == 0x00a9
                           0000A9   403 _CLKSEL	=	0x00a9
                           0000AA   404 G$EMI0CN$0_0$0 == 0x00aa
                           0000AA   405 _EMI0CN	=	0x00aa
                           0000AA   406 G$_XPAGE$0_0$0 == 0x00aa
                           0000AA   407 __XPAGE	=	0x00aa
                           0000AC   408 G$SBCON1$0_0$0 == 0x00ac
                           0000AC   409 _SBCON1	=	0x00ac
                           0000AE   410 G$P4MDOUT$0_0$0 == 0x00ae
                           0000AE   411 _P4MDOUT	=	0x00ae
                           0000AF   412 G$PFE0CN$0_0$0 == 0x00af
                           0000AF   413 _PFE0CN	=	0x00af
                           0000B0   414 G$P3$0_0$0 == 0x00b0
                           0000B0   415 _P3	=	0x00b0
                           0000B1   416 G$OSCXCN$0_0$0 == 0x00b1
                           0000B1   417 _OSCXCN	=	0x00b1
                           0000B2   418 G$OSCICN$0_0$0 == 0x00b2
                           0000B2   419 _OSCICN	=	0x00b2
                           0000B3   420 G$OSCICL$0_0$0 == 0x00b3
                           0000B3   421 _OSCICL	=	0x00b3
                           0000B4   422 G$SBRLL1$0_0$0 == 0x00b4
                           0000B4   423 _SBRLL1	=	0x00b4
                           0000B5   424 G$SBRLH1$0_0$0 == 0x00b5
                           0000B5   425 _SBRLH1	=	0x00b5
                           0000B6   426 G$FLSCL$0_0$0 == 0x00b6
                           0000B6   427 _FLSCL	=	0x00b6
                           0000B7   428 G$FLKEY$0_0$0 == 0x00b7
                           0000B7   429 _FLKEY	=	0x00b7
                           0000B8   430 G$IP$0_0$0 == 0x00b8
                           0000B8   431 _IP	=	0x00b8
                           0000B9   432 G$CLKMUL$0_0$0 == 0x00b9
                           0000B9   433 _CLKMUL	=	0x00b9
                           0000BA   434 G$AMX0N$0_0$0 == 0x00ba
                           0000BA   435 _AMX0N	=	0x00ba
                           0000BB   436 G$AMX0P$0_0$0 == 0x00bb
                           0000BB   437 _AMX0P	=	0x00bb
                           0000BC   438 G$ADC0CF$0_0$0 == 0x00bc
                           0000BC   439 _ADC0CF	=	0x00bc
                           0000BD   440 G$ADC0L$0_0$0 == 0x00bd
                           0000BD   441 _ADC0L	=	0x00bd
                           0000BE   442 G$ADC0H$0_0$0 == 0x00be
                           0000BE   443 _ADC0H	=	0x00be
                           0000C0   444 G$SMB0CN$0_0$0 == 0x00c0
                           0000C0   445 _SMB0CN	=	0x00c0
                           0000C1   446 G$SMB0CF$0_0$0 == 0x00c1
                           0000C1   447 _SMB0CF	=	0x00c1
                           0000C2   448 G$SMB0DAT$0_0$0 == 0x00c2
                           0000C2   449 _SMB0DAT	=	0x00c2
                           0000C3   450 G$ADC0GTL$0_0$0 == 0x00c3
                           0000C3   451 _ADC0GTL	=	0x00c3
                           0000C4   452 G$ADC0GTH$0_0$0 == 0x00c4
                           0000C4   453 _ADC0GTH	=	0x00c4
                           0000C5   454 G$ADC0LTL$0_0$0 == 0x00c5
                           0000C5   455 _ADC0LTL	=	0x00c5
                           0000C6   456 G$ADC0LTH$0_0$0 == 0x00c6
                           0000C6   457 _ADC0LTH	=	0x00c6
                           0000C7   458 G$P4$0_0$0 == 0x00c7
                           0000C7   459 _P4	=	0x00c7
                           0000C8   460 G$T2CON$0_0$0 == 0x00c8
                           0000C8   461 _T2CON	=	0x00c8
                           0000C8   462 G$TMR2CN$0_0$0 == 0x00c8
                           0000C8   463 _TMR2CN	=	0x00c8
                           0000C9   464 G$REG0CN$0_0$0 == 0x00c9
                           0000C9   465 _REG0CN	=	0x00c9
                           0000CA   466 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   467 _RCAP2L	=	0x00ca
                           0000CA   468 G$TMR2RLL$0_0$0 == 0x00ca
                           0000CA   469 _TMR2RLL	=	0x00ca
                           0000CB   470 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   471 _RCAP2H	=	0x00cb
                           0000CB   472 G$TMR2RLH$0_0$0 == 0x00cb
                           0000CB   473 _TMR2RLH	=	0x00cb
                           0000CC   474 G$TL2$0_0$0 == 0x00cc
                           0000CC   475 _TL2	=	0x00cc
                           0000CC   476 G$TMR2L$0_0$0 == 0x00cc
                           0000CC   477 _TMR2L	=	0x00cc
                           0000CD   478 G$TH2$0_0$0 == 0x00cd
                           0000CD   479 _TH2	=	0x00cd
                           0000CD   480 G$TMR2H$0_0$0 == 0x00cd
                           0000CD   481 _TMR2H	=	0x00cd
                           0000D0   482 G$PSW$0_0$0 == 0x00d0
                           0000D0   483 _PSW	=	0x00d0
                           0000D1   484 G$REF0CN$0_0$0 == 0x00d1
                           0000D1   485 _REF0CN	=	0x00d1
                           0000D2   486 G$SCON1$0_0$0 == 0x00d2
                           0000D2   487 _SCON1	=	0x00d2
                           0000D3   488 G$SBUF1$0_0$0 == 0x00d3
                           0000D3   489 _SBUF1	=	0x00d3
                           0000D4   490 G$P0SKIP$0_0$0 == 0x00d4
                           0000D4   491 _P0SKIP	=	0x00d4
                           0000D5   492 G$P1SKIP$0_0$0 == 0x00d5
                           0000D5   493 _P1SKIP	=	0x00d5
                           0000D6   494 G$P2SKIP$0_0$0 == 0x00d6
                           0000D6   495 _P2SKIP	=	0x00d6
                           0000D7   496 G$USB0XCN$0_0$0 == 0x00d7
                           0000D7   497 _USB0XCN	=	0x00d7
                           0000D8   498 G$PCA0CN$0_0$0 == 0x00d8
                           0000D8   499 _PCA0CN	=	0x00d8
                           0000D9   500 G$PCA0MD$0_0$0 == 0x00d9
                           0000D9   501 _PCA0MD	=	0x00d9
                           0000DA   502 G$PCA0CPM0$0_0$0 == 0x00da
                           0000DA   503 _PCA0CPM0	=	0x00da
                           0000DB   504 G$PCA0CPM1$0_0$0 == 0x00db
                           0000DB   505 _PCA0CPM1	=	0x00db
                           0000DC   506 G$PCA0CPM2$0_0$0 == 0x00dc
                           0000DC   507 _PCA0CPM2	=	0x00dc
                           0000DD   508 G$PCA0CPM3$0_0$0 == 0x00dd
                           0000DD   509 _PCA0CPM3	=	0x00dd
                           0000DE   510 G$PCA0CPM4$0_0$0 == 0x00de
                           0000DE   511 _PCA0CPM4	=	0x00de
                           0000DF   512 G$P3SKIP$0_0$0 == 0x00df
                           0000DF   513 _P3SKIP	=	0x00df
                           0000E0   514 G$ACC$0_0$0 == 0x00e0
                           0000E0   515 _ACC	=	0x00e0
                           0000E1   516 G$XBR0$0_0$0 == 0x00e1
                           0000E1   517 _XBR0	=	0x00e1
                           0000E2   518 G$XBR1$0_0$0 == 0x00e2
                           0000E2   519 _XBR1	=	0x00e2
                           0000E3   520 G$XBR2$0_0$0 == 0x00e3
                           0000E3   521 _XBR2	=	0x00e3
                           0000E4   522 G$IT01CF$0_0$0 == 0x00e4
                           0000E4   523 _IT01CF	=	0x00e4
                           0000E4   524 G$INT01CF$0_0$0 == 0x00e4
                           0000E4   525 _INT01CF	=	0x00e4
                           0000E5   526 G$SMOD1$0_0$0 == 0x00e5
                           0000E5   527 _SMOD1	=	0x00e5
                           0000E6   528 G$EIE1$0_0$0 == 0x00e6
                           0000E6   529 _EIE1	=	0x00e6
                           0000E7   530 G$EIE2$0_0$0 == 0x00e7
                           0000E7   531 _EIE2	=	0x00e7
                           0000E8   532 G$ADC0CN$0_0$0 == 0x00e8
                           0000E8   533 _ADC0CN	=	0x00e8
                           0000E9   534 G$PCA0CPL1$0_0$0 == 0x00e9
                           0000E9   535 _PCA0CPL1	=	0x00e9
                           0000EA   536 G$PCA0CPH1$0_0$0 == 0x00ea
                           0000EA   537 _PCA0CPH1	=	0x00ea
                           0000EB   538 G$PCA0CPL2$0_0$0 == 0x00eb
                           0000EB   539 _PCA0CPL2	=	0x00eb
                           0000EC   540 G$PCA0CPH2$0_0$0 == 0x00ec
                           0000EC   541 _PCA0CPH2	=	0x00ec
                           0000ED   542 G$PCA0CPL3$0_0$0 == 0x00ed
                           0000ED   543 _PCA0CPL3	=	0x00ed
                           0000EE   544 G$PCA0CPH3$0_0$0 == 0x00ee
                           0000EE   545 _PCA0CPH3	=	0x00ee
                           0000EF   546 G$RSTSRC$0_0$0 == 0x00ef
                           0000EF   547 _RSTSRC	=	0x00ef
                           0000F0   548 G$B$0_0$0 == 0x00f0
                           0000F0   549 _B	=	0x00f0
                           0000F1   550 G$P0MODE$0_0$0 == 0x00f1
                           0000F1   551 _P0MODE	=	0x00f1
                           0000F1   552 G$P0MDIN$0_0$0 == 0x00f1
                           0000F1   553 _P0MDIN	=	0x00f1
                           0000F2   554 G$P1MODE$0_0$0 == 0x00f2
                           0000F2   555 _P1MODE	=	0x00f2
                           0000F2   556 G$P1MDIN$0_0$0 == 0x00f2
                           0000F2   557 _P1MDIN	=	0x00f2
                           0000F3   558 G$P2MODE$0_0$0 == 0x00f3
                           0000F3   559 _P2MODE	=	0x00f3
                           0000F3   560 G$P2MDIN$0_0$0 == 0x00f3
                           0000F3   561 _P2MDIN	=	0x00f3
                           0000F4   562 G$P3MODE$0_0$0 == 0x00f4
                           0000F4   563 _P3MODE	=	0x00f4
                           0000F4   564 G$P3MDIN$0_0$0 == 0x00f4
                           0000F4   565 _P3MDIN	=	0x00f4
                           0000F5   566 G$P4MDIN$0_0$0 == 0x00f5
                           0000F5   567 _P4MDIN	=	0x00f5
                           0000F6   568 G$EIP1$0_0$0 == 0x00f6
                           0000F6   569 _EIP1	=	0x00f6
                           0000F7   570 G$EIP2$0_0$0 == 0x00f7
                           0000F7   571 _EIP2	=	0x00f7
                           0000F8   572 G$SPI0CN$0_0$0 == 0x00f8
                           0000F8   573 _SPI0CN	=	0x00f8
                           0000F9   574 G$PCA0L$0_0$0 == 0x00f9
                           0000F9   575 _PCA0L	=	0x00f9
                           0000FA   576 G$PCA0H$0_0$0 == 0x00fa
                           0000FA   577 _PCA0H	=	0x00fa
                           0000FB   578 G$PCA0CPL0$0_0$0 == 0x00fb
                           0000FB   579 _PCA0CPL0	=	0x00fb
                           0000FC   580 G$PCA0CPH0$0_0$0 == 0x00fc
                           0000FC   581 _PCA0CPH0	=	0x00fc
                           0000FD   582 G$PCA0CPL4$0_0$0 == 0x00fd
                           0000FD   583 _PCA0CPL4	=	0x00fd
                           0000FE   584 G$PCA0CPH4$0_0$0 == 0x00fe
                           0000FE   585 _PCA0CPH4	=	0x00fe
                           0000FF   586 G$VDM0CN$0_0$0 == 0x00ff
                           0000FF   587 _VDM0CN	=	0x00ff
                           008C8A   588 G$TMR0$0_0$0 == 0x8c8a
                           008C8A   589 _TMR0	=	0x8c8a
                           008D8B   590 G$TMR1$0_0$0 == 0x8d8b
                           008D8B   591 _TMR1	=	0x8d8b
                           00CDCC   592 G$TMR2$0_0$0 == 0xcdcc
                           00CDCC   593 _TMR2	=	0xcdcc
                           00CBCA   594 G$RCAP2$0_0$0 == 0xcbca
                           00CBCA   595 _RCAP2	=	0xcbca
                           00CBCA   596 G$TMR2RL$0_0$0 == 0xcbca
                           00CBCA   597 _TMR2RL	=	0xcbca
                           009594   598 G$TMR3$0_0$0 == 0x9594
                           009594   599 _TMR3	=	0x9594
                           009392   600 G$TMR3RL$0_0$0 == 0x9392
                           009392   601 _TMR3RL	=	0x9392
                           00B5B4   602 G$SBRL1$0_0$0 == 0xb5b4
                           00B5B4   603 _SBRL1	=	0xb5b4
                           00BEBD   604 G$ADC0$0_0$0 == 0xbebd
                           00BEBD   605 _ADC0	=	0xbebd
                           00C4C3   606 G$ADC0GT$0_0$0 == 0xc4c3
                           00C4C3   607 _ADC0GT	=	0xc4c3
                           00C6C5   608 G$ADC0LT$0_0$0 == 0xc6c5
                           00C6C5   609 _ADC0LT	=	0xc6c5
                           00FAF9   610 G$PCA0$0_0$0 == 0xfaf9
                           00FAF9   611 _PCA0	=	0xfaf9
                           00FCFB   612 G$PCA0CP0$0_0$0 == 0xfcfb
                           00FCFB   613 _PCA0CP0	=	0xfcfb
                           00EAE9   614 G$PCA0CP1$0_0$0 == 0xeae9
                           00EAE9   615 _PCA0CP1	=	0xeae9
                           00ECEB   616 G$PCA0CP2$0_0$0 == 0xeceb
                           00ECEB   617 _PCA0CP2	=	0xeceb
                           00EEED   618 G$PCA0CP3$0_0$0 == 0xeeed
                           00EEED   619 _PCA0CP3	=	0xeeed
                           00FEFD   620 G$PCA0CP4$0_0$0 == 0xfefd
                           00FEFD   621 _PCA0CP4	=	0xfefd
                                    622 ;--------------------------------------------------------
                                    623 ; special function bits
                                    624 ;--------------------------------------------------------
                                    625 	.area RSEG    (ABS,DATA)
      000000                        626 	.org 0x0000
                           000080   627 G$P0_0$0_0$0 == 0x0080
                           000080   628 _P0_0	=	0x0080
                           000081   629 G$P0_1$0_0$0 == 0x0081
                           000081   630 _P0_1	=	0x0081
                           000082   631 G$P0_2$0_0$0 == 0x0082
                           000082   632 _P0_2	=	0x0082
                           000083   633 G$P0_3$0_0$0 == 0x0083
                           000083   634 _P0_3	=	0x0083
                           000084   635 G$P0_4$0_0$0 == 0x0084
                           000084   636 _P0_4	=	0x0084
                           000085   637 G$P0_5$0_0$0 == 0x0085
                           000085   638 _P0_5	=	0x0085
                           000086   639 G$P0_6$0_0$0 == 0x0086
                           000086   640 _P0_6	=	0x0086
                           000087   641 G$P0_7$0_0$0 == 0x0087
                           000087   642 _P0_7	=	0x0087
                           000088   643 G$IT0$0_0$0 == 0x0088
                           000088   644 _IT0	=	0x0088
                           000089   645 G$IE0$0_0$0 == 0x0089
                           000089   646 _IE0	=	0x0089
                           00008A   647 G$IT1$0_0$0 == 0x008a
                           00008A   648 _IT1	=	0x008a
                           00008B   649 G$IE1$0_0$0 == 0x008b
                           00008B   650 _IE1	=	0x008b
                           00008C   651 G$TR0$0_0$0 == 0x008c
                           00008C   652 _TR0	=	0x008c
                           00008D   653 G$TF0$0_0$0 == 0x008d
                           00008D   654 _TF0	=	0x008d
                           00008E   655 G$TR1$0_0$0 == 0x008e
                           00008E   656 _TR1	=	0x008e
                           00008F   657 G$TF1$0_0$0 == 0x008f
                           00008F   658 _TF1	=	0x008f
                           000090   659 G$P1_0$0_0$0 == 0x0090
                           000090   660 _P1_0	=	0x0090
                           000091   661 G$P1_1$0_0$0 == 0x0091
                           000091   662 _P1_1	=	0x0091
                           000092   663 G$P1_2$0_0$0 == 0x0092
                           000092   664 _P1_2	=	0x0092
                           000093   665 G$P1_3$0_0$0 == 0x0093
                           000093   666 _P1_3	=	0x0093
                           000094   667 G$P1_4$0_0$0 == 0x0094
                           000094   668 _P1_4	=	0x0094
                           000095   669 G$P1_5$0_0$0 == 0x0095
                           000095   670 _P1_5	=	0x0095
                           000096   671 G$P1_6$0_0$0 == 0x0096
                           000096   672 _P1_6	=	0x0096
                           000097   673 G$P1_7$0_0$0 == 0x0097
                           000097   674 _P1_7	=	0x0097
                           000098   675 G$RI$0_0$0 == 0x0098
                           000098   676 _RI	=	0x0098
                           000098   677 G$RI0$0_0$0 == 0x0098
                           000098   678 _RI0	=	0x0098
                           000099   679 G$TI$0_0$0 == 0x0099
                           000099   680 _TI	=	0x0099
                           000099   681 G$TI0$0_0$0 == 0x0099
                           000099   682 _TI0	=	0x0099
                           00009A   683 G$RB8$0_0$0 == 0x009a
                           00009A   684 _RB8	=	0x009a
                           00009A   685 G$RB80$0_0$0 == 0x009a
                           00009A   686 _RB80	=	0x009a
                           00009B   687 G$TB8$0_0$0 == 0x009b
                           00009B   688 _TB8	=	0x009b
                           00009B   689 G$TB80$0_0$0 == 0x009b
                           00009B   690 _TB80	=	0x009b
                           00009C   691 G$REN$0_0$0 == 0x009c
                           00009C   692 _REN	=	0x009c
                           00009C   693 G$REN0$0_0$0 == 0x009c
                           00009C   694 _REN0	=	0x009c
                           00009D   695 G$SM2$0_0$0 == 0x009d
                           00009D   696 _SM2	=	0x009d
                           00009D   697 G$MCE0$0_0$0 == 0x009d
                           00009D   698 _MCE0	=	0x009d
                           00009F   699 G$SM0$0_0$0 == 0x009f
                           00009F   700 _SM0	=	0x009f
                           00009F   701 G$S0MODE$0_0$0 == 0x009f
                           00009F   702 _S0MODE	=	0x009f
                           0000A0   703 G$P2_0$0_0$0 == 0x00a0
                           0000A0   704 _P2_0	=	0x00a0
                           0000A1   705 G$P2_1$0_0$0 == 0x00a1
                           0000A1   706 _P2_1	=	0x00a1
                           0000A2   707 G$P2_2$0_0$0 == 0x00a2
                           0000A2   708 _P2_2	=	0x00a2
                           0000A3   709 G$P2_3$0_0$0 == 0x00a3
                           0000A3   710 _P2_3	=	0x00a3
                           0000A4   711 G$P2_4$0_0$0 == 0x00a4
                           0000A4   712 _P2_4	=	0x00a4
                           0000A5   713 G$P2_5$0_0$0 == 0x00a5
                           0000A5   714 _P2_5	=	0x00a5
                           0000A6   715 G$P2_6$0_0$0 == 0x00a6
                           0000A6   716 _P2_6	=	0x00a6
                           0000A7   717 G$P2_7$0_0$0 == 0x00a7
                           0000A7   718 _P2_7	=	0x00a7
                           0000A8   719 G$EX0$0_0$0 == 0x00a8
                           0000A8   720 _EX0	=	0x00a8
                           0000A9   721 G$ET0$0_0$0 == 0x00a9
                           0000A9   722 _ET0	=	0x00a9
                           0000AA   723 G$EX1$0_0$0 == 0x00aa
                           0000AA   724 _EX1	=	0x00aa
                           0000AB   725 G$ET1$0_0$0 == 0x00ab
                           0000AB   726 _ET1	=	0x00ab
                           0000AC   727 G$ES$0_0$0 == 0x00ac
                           0000AC   728 _ES	=	0x00ac
                           0000AC   729 G$ES0$0_0$0 == 0x00ac
                           0000AC   730 _ES0	=	0x00ac
                           0000AD   731 G$ET2$0_0$0 == 0x00ad
                           0000AD   732 _ET2	=	0x00ad
                           0000AE   733 G$ESPI0$0_0$0 == 0x00ae
                           0000AE   734 _ESPI0	=	0x00ae
                           0000AF   735 G$EA$0_0$0 == 0x00af
                           0000AF   736 _EA	=	0x00af
                           0000B0   737 G$P3_0$0_0$0 == 0x00b0
                           0000B0   738 _P3_0	=	0x00b0
                           0000B1   739 G$P3_1$0_0$0 == 0x00b1
                           0000B1   740 _P3_1	=	0x00b1
                           0000B2   741 G$P3_2$0_0$0 == 0x00b2
                           0000B2   742 _P3_2	=	0x00b2
                           0000B3   743 G$P3_3$0_0$0 == 0x00b3
                           0000B3   744 _P3_3	=	0x00b3
                           0000B4   745 G$P3_4$0_0$0 == 0x00b4
                           0000B4   746 _P3_4	=	0x00b4
                           0000B5   747 G$P3_5$0_0$0 == 0x00b5
                           0000B5   748 _P3_5	=	0x00b5
                           0000B6   749 G$P3_6$0_0$0 == 0x00b6
                           0000B6   750 _P3_6	=	0x00b6
                           0000B7   751 G$P3_7$0_0$0 == 0x00b7
                           0000B7   752 _P3_7	=	0x00b7
                           0000B8   753 G$PX0$0_0$0 == 0x00b8
                           0000B8   754 _PX0	=	0x00b8
                           0000B9   755 G$PT0$0_0$0 == 0x00b9
                           0000B9   756 _PT0	=	0x00b9
                           0000BA   757 G$PX1$0_0$0 == 0x00ba
                           0000BA   758 _PX1	=	0x00ba
                           0000BB   759 G$PT1$0_0$0 == 0x00bb
                           0000BB   760 _PT1	=	0x00bb
                           0000BC   761 G$PS$0_0$0 == 0x00bc
                           0000BC   762 _PS	=	0x00bc
                           0000BC   763 G$PS0$0_0$0 == 0x00bc
                           0000BC   764 _PS0	=	0x00bc
                           0000BD   765 G$PT2$0_0$0 == 0x00bd
                           0000BD   766 _PT2	=	0x00bd
                           0000BE   767 G$PSPI0$0_0$0 == 0x00be
                           0000BE   768 _PSPI0	=	0x00be
                           0000C0   769 G$SI$0_0$0 == 0x00c0
                           0000C0   770 _SI	=	0x00c0
                           0000C1   771 G$ACK$0_0$0 == 0x00c1
                           0000C1   772 _ACK	=	0x00c1
                           0000C2   773 G$ARBLOST$0_0$0 == 0x00c2
                           0000C2   774 _ARBLOST	=	0x00c2
                           0000C3   775 G$ACKRQ$0_0$0 == 0x00c3
                           0000C3   776 _ACKRQ	=	0x00c3
                           0000C4   777 G$STO$0_0$0 == 0x00c4
                           0000C4   778 _STO	=	0x00c4
                           0000C5   779 G$STA$0_0$0 == 0x00c5
                           0000C5   780 _STA	=	0x00c5
                           0000C6   781 G$TXMODE$0_0$0 == 0x00c6
                           0000C6   782 _TXMODE	=	0x00c6
                           0000C7   783 G$MASTER$0_0$0 == 0x00c7
                           0000C7   784 _MASTER	=	0x00c7
                           0000C8   785 G$T2XCLK$0_0$0 == 0x00c8
                           0000C8   786 _T2XCLK	=	0x00c8
                           0000C9   787 G$T2CSS$0_0$0 == 0x00c9
                           0000C9   788 _T2CSS	=	0x00c9
                           0000CA   789 G$TR2$0_0$0 == 0x00ca
                           0000CA   790 _TR2	=	0x00ca
                           0000CB   791 G$T2SPLIT$0_0$0 == 0x00cb
                           0000CB   792 _T2SPLIT	=	0x00cb
                           0000CC   793 G$T2CE$0_0$0 == 0x00cc
                           0000CC   794 _T2CE	=	0x00cc
                           0000CD   795 G$TF2LEN$0_0$0 == 0x00cd
                           0000CD   796 _TF2LEN	=	0x00cd
                           0000CE   797 G$TF2L$0_0$0 == 0x00ce
                           0000CE   798 _TF2L	=	0x00ce
                           0000CF   799 G$TF2$0_0$0 == 0x00cf
                           0000CF   800 _TF2	=	0x00cf
                           0000CF   801 G$TF2H$0_0$0 == 0x00cf
                           0000CF   802 _TF2H	=	0x00cf
                           0000D0   803 G$PARITY$0_0$0 == 0x00d0
                           0000D0   804 _PARITY	=	0x00d0
                           0000D1   805 G$F1$0_0$0 == 0x00d1
                           0000D1   806 _F1	=	0x00d1
                           0000D2   807 G$OV$0_0$0 == 0x00d2
                           0000D2   808 _OV	=	0x00d2
                           0000D3   809 G$RS0$0_0$0 == 0x00d3
                           0000D3   810 _RS0	=	0x00d3
                           0000D4   811 G$RS1$0_0$0 == 0x00d4
                           0000D4   812 _RS1	=	0x00d4
                           0000D5   813 G$F0$0_0$0 == 0x00d5
                           0000D5   814 _F0	=	0x00d5
                           0000D6   815 G$AC$0_0$0 == 0x00d6
                           0000D6   816 _AC	=	0x00d6
                           0000D7   817 G$CY$0_0$0 == 0x00d7
                           0000D7   818 _CY	=	0x00d7
                           0000D8   819 G$CCF0$0_0$0 == 0x00d8
                           0000D8   820 _CCF0	=	0x00d8
                           0000D9   821 G$CCF1$0_0$0 == 0x00d9
                           0000D9   822 _CCF1	=	0x00d9
                           0000DA   823 G$CCF2$0_0$0 == 0x00da
                           0000DA   824 _CCF2	=	0x00da
                           0000DB   825 G$CCF3$0_0$0 == 0x00db
                           0000DB   826 _CCF3	=	0x00db
                           0000DC   827 G$CCF4$0_0$0 == 0x00dc
                           0000DC   828 _CCF4	=	0x00dc
                           0000DE   829 G$CR$0_0$0 == 0x00de
                           0000DE   830 _CR	=	0x00de
                           0000DF   831 G$CF$0_0$0 == 0x00df
                           0000DF   832 _CF	=	0x00df
                           0000E8   833 G$AD0CM0$0_0$0 == 0x00e8
                           0000E8   834 _AD0CM0	=	0x00e8
                           0000E9   835 G$AD0CM1$0_0$0 == 0x00e9
                           0000E9   836 _AD0CM1	=	0x00e9
                           0000EA   837 G$AD0CM2$0_0$0 == 0x00ea
                           0000EA   838 _AD0CM2	=	0x00ea
                           0000EB   839 G$AD0WINT$0_0$0 == 0x00eb
                           0000EB   840 _AD0WINT	=	0x00eb
                           0000EC   841 G$AD0BUSY$0_0$0 == 0x00ec
                           0000EC   842 _AD0BUSY	=	0x00ec
                           0000ED   843 G$AD0INT$0_0$0 == 0x00ed
                           0000ED   844 _AD0INT	=	0x00ed
                           0000EE   845 G$AD0TM$0_0$0 == 0x00ee
                           0000EE   846 _AD0TM	=	0x00ee
                           0000EF   847 G$AD0EN$0_0$0 == 0x00ef
                           0000EF   848 _AD0EN	=	0x00ef
                           0000F8   849 G$SPIEN$0_0$0 == 0x00f8
                           0000F8   850 _SPIEN	=	0x00f8
                           0000F9   851 G$TXBMT$0_0$0 == 0x00f9
                           0000F9   852 _TXBMT	=	0x00f9
                           0000FA   853 G$NSSMD0$0_0$0 == 0x00fa
                           0000FA   854 _NSSMD0	=	0x00fa
                           0000FB   855 G$NSSMD1$0_0$0 == 0x00fb
                           0000FB   856 _NSSMD1	=	0x00fb
                           0000FC   857 G$RXOVRN$0_0$0 == 0x00fc
                           0000FC   858 _RXOVRN	=	0x00fc
                           0000FD   859 G$MODF$0_0$0 == 0x00fd
                           0000FD   860 _MODF	=	0x00fd
                           0000FE   861 G$WCOL$0_0$0 == 0x00fe
                           0000FE   862 _WCOL	=	0x00fe
                           0000FF   863 G$SPIF$0_0$0 == 0x00ff
                           0000FF   864 _SPIF	=	0x00ff
                                    865 ;--------------------------------------------------------
                                    866 ; overlayable register banks
                                    867 ;--------------------------------------------------------
                                    868 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        869 	.ds 8
                                    870 ;--------------------------------------------------------
                                    871 ; internal ram data
                                    872 ;--------------------------------------------------------
                                    873 	.area DSEG    (DATA)
                                    874 ;--------------------------------------------------------
                                    875 ; overlayable items in internal ram
                                    876 ;--------------------------------------------------------
                                    877 ;--------------------------------------------------------
                                    878 ; indirectly addressable internal ram data
                                    879 ;--------------------------------------------------------
                                    880 	.area ISEG    (DATA)
                                    881 ;--------------------------------------------------------
                                    882 ; absolute internal ram data
                                    883 ;--------------------------------------------------------
                                    884 	.area IABS    (ABS,DATA)
                                    885 	.area IABS    (ABS,DATA)
                                    886 ;--------------------------------------------------------
                                    887 ; bit data
                                    888 ;--------------------------------------------------------
                                    889 	.area BSEG    (BIT)
                                    890 ;--------------------------------------------------------
                                    891 ; paged external ram data
                                    892 ;--------------------------------------------------------
                                    893 	.area PSEG    (PAG,XDATA)
                                    894 ;--------------------------------------------------------
                                    895 ; external ram data
                                    896 ;--------------------------------------------------------
                                    897 	.area XSEG    (XDATA)
                                    898 ;--------------------------------------------------------
                                    899 ; absolute external ram data
                                    900 ;--------------------------------------------------------
                                    901 	.area XABS    (ABS,XDATA)
                                    902 ;--------------------------------------------------------
                                    903 ; external initialized ram data
                                    904 ;--------------------------------------------------------
                                    905 	.area XISEG   (XDATA)
                                    906 	.area HOME    (CODE)
                                    907 	.area GSINIT0 (CODE)
                                    908 	.area GSINIT1 (CODE)
                                    909 	.area GSINIT2 (CODE)
                                    910 	.area GSINIT3 (CODE)
                                    911 	.area GSINIT4 (CODE)
                                    912 	.area GSINIT5 (CODE)
                                    913 	.area GSINIT  (CODE)
                                    914 	.area GSFINAL (CODE)
                                    915 	.area CSEG    (CODE)
                                    916 ;--------------------------------------------------------
                                    917 ; global & static initialisations
                                    918 ;--------------------------------------------------------
                                    919 	.area HOME    (CODE)
                                    920 	.area GSINIT  (CODE)
                                    921 	.area GSFINAL (CODE)
                                    922 	.area GSINIT  (CODE)
                                    923 ;--------------------------------------------------------
                                    924 ; Home
                                    925 ;--------------------------------------------------------
                                    926 	.area HOME    (CODE)
                                    927 	.area HOME    (CODE)
                                    928 ;--------------------------------------------------------
                                    929 ; code
                                    930 ;--------------------------------------------------------
                                    931 	.area CSEG    (CODE)
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'xQueueGenericReset'
                                    934 ;------------------------------------------------------------
                                    935 ;xNewQueue                 Allocated to stack - _bp -3
                                    936 ;xQueue                    Allocated to stack - _bp +1
                                    937 ;xReturn                   Allocated to stack - _bp +13
                                    938 ;pxQueue                   Allocated to registers 
                                    939 ;sloc0                     Allocated to stack - _bp +8
                                    940 ;sloc1                     Allocated to stack - _bp +7
                                    941 ;sloc2                     Allocated to stack - _bp +10
                                    942 ;sloc3                     Allocated to stack - _bp +4
                                    943 ;------------------------------------------------------------
                           000000   944 	G$xQueueGenericReset$0$0 ==.
                           000000   945 	C$queue.c$266$0_0$180 ==.
                                    946 ;	queue.c:266: BaseType_t xQueueGenericReset( QueueHandle_t xQueue,
                                    947 ;	-----------------------------------------
                                    948 ;	 function xQueueGenericReset
                                    949 ;	-----------------------------------------
      00093C                        950 _xQueueGenericReset:
                           000007   951 	ar7 = 0x07
                           000006   952 	ar6 = 0x06
                           000005   953 	ar5 = 0x05
                           000004   954 	ar4 = 0x04
                           000003   955 	ar3 = 0x03
                           000002   956 	ar2 = 0x02
                           000001   957 	ar1 = 0x01
                           000000   958 	ar0 = 0x00
      00093C C0 0D            [24]  959 	push	_bp
      00093E 85 81 0D         [24]  960 	mov	_bp,sp
      000941 C0 82            [24]  961 	push	dpl
      000943 C0 83            [24]  962 	push	dph
      000945 C0 F0            [24]  963 	push	b
      000947 E5 81            [12]  964 	mov	a,sp
      000949 24 0A            [12]  965 	add	a,#0x0a
      00094B F5 81            [12]  966 	mov	sp,a
                           000011   967 	C$queue.c$269$2_0$180 ==.
                                    968 ;	queue.c:269: BaseType_t xReturn = pdPASS;
      00094D E5 0D            [12]  969 	mov	a,_bp
      00094F 24 0D            [12]  970 	add	a,#0x0d
      000951 F8               [12]  971 	mov	r0,a
      000952 76 01            [12]  972 	mov	@r0,#0x01
                           000018   973 	C$queue.c$274$1_0$180 ==.
                                    974 ;	queue.c:274: if( ( pxQueue != NULL ) &&
      000954 A8 0D            [24]  975 	mov	r0,_bp
      000956 08               [12]  976 	inc	r0
      000957 E6               [12]  977 	mov	a,@r0
      000958 08               [12]  978 	inc	r0
      000959 46               [12]  979 	orl	a,@r0
      00095A 70 03            [24]  980 	jnz	00137$
      00095C 02 0C 1F         [24]  981 	ljmp	00109$
      00095F                        982 00137$:
                           000023   983 	C$queue.c$275$1_0$180 ==.
                                    984 ;	queue.c:275: ( pxQueue->uxLength >= 1U ) &&
      00095F A8 0D            [24]  985 	mov	r0,_bp
      000961 08               [12]  986 	inc	r0
      000962 74 25            [12]  987 	mov	a,#0x25
      000964 26               [12]  988 	add	a,@r0
      000965 FA               [12]  989 	mov	r2,a
      000966 74 00            [12]  990 	mov	a,#0x00
      000968 08               [12]  991 	inc	r0
      000969 36               [12]  992 	addc	a,@r0
      00096A FB               [12]  993 	mov	r3,a
      00096B 08               [12]  994 	inc	r0
      00096C 86 04            [24]  995 	mov	ar4,@r0
      00096E 8A 82            [24]  996 	mov	dpl,r2
      000970 8B 83            [24]  997 	mov	dph,r3
      000972 8C F0            [24]  998 	mov	b,r4
      000974 12 7C 4D         [24]  999 	lcall	__gptrget
      000977 FF               [12] 1000 	mov	r7,a
      000978 BF 01 00         [24] 1001 	cjne	r7,#0x01,00138$
      00097B                       1002 00138$:
      00097B 50 03            [24] 1003 	jnc	00139$
      00097D 02 0C 1F         [24] 1004 	ljmp	00109$
      000980                       1005 00139$:
                           000044  1006 	C$queue.c$277$1_0$180 ==.
                                   1007 ;	queue.c:277: ( ( SIZE_MAX / pxQueue->uxLength ) >= pxQueue->uxItemSize ) )
      000980 C0 02            [24] 1008 	push	ar2
      000982 C0 03            [24] 1009 	push	ar3
      000984 C0 04            [24] 1010 	push	ar4
      000986 8F 03            [24] 1011 	mov	ar3,r7
      000988 7C 00            [12] 1012 	mov	r4,#0x00
      00098A C0 02            [24] 1013 	push	ar2
      00098C C0 03            [24] 1014 	push	ar3
      00098E C0 04            [24] 1015 	push	ar4
      000990 75 82 FF         [24] 1016 	mov	dpl,#0xff
      000993 75 83 FF         [24] 1017 	mov	dph,#0xff
      000996 12 78 8A         [24] 1018 	lcall	__divuint
      000999 AB 82            [24] 1019 	mov	r3,dpl
      00099B AC 83            [24] 1020 	mov	r4,dph
      00099D 15 81            [12] 1021 	dec	sp
      00099F 15 81            [12] 1022 	dec	sp
      0009A1 D0 02            [24] 1023 	pop	ar2
      0009A3 A8 0D            [24] 1024 	mov	r0,_bp
      0009A5 08               [12] 1025 	inc	r0
      0009A6 E5 0D            [12] 1026 	mov	a,_bp
      0009A8 24 07            [12] 1027 	add	a,#0x07
      0009AA F9               [12] 1028 	mov	r1,a
      0009AB 74 26            [12] 1029 	mov	a,#0x26
      0009AD 26               [12] 1030 	add	a,@r0
      0009AE F7               [12] 1031 	mov	@r1,a
      0009AF 74 00            [12] 1032 	mov	a,#0x00
      0009B1 08               [12] 1033 	inc	r0
      0009B2 36               [12] 1034 	addc	a,@r0
      0009B3 09               [12] 1035 	inc	r1
      0009B4 F7               [12] 1036 	mov	@r1,a
      0009B5 08               [12] 1037 	inc	r0
      0009B6 E6               [12] 1038 	mov	a,@r0
      0009B7 09               [12] 1039 	inc	r1
      0009B8 F7               [12] 1040 	mov	@r1,a
      0009B9 E5 0D            [12] 1041 	mov	a,_bp
      0009BB 24 07            [12] 1042 	add	a,#0x07
      0009BD F8               [12] 1043 	mov	r0,a
      0009BE 86 82            [24] 1044 	mov	dpl,@r0
      0009C0 08               [12] 1045 	inc	r0
      0009C1 86 83            [24] 1046 	mov	dph,@r0
      0009C3 08               [12] 1047 	inc	r0
      0009C4 86 F0            [24] 1048 	mov	b,@r0
      0009C6 12 7C 4D         [24] 1049 	lcall	__gptrget
      0009C9 FA               [12] 1050 	mov	r2,a
      0009CA 7F 00            [12] 1051 	mov	r7,#0x00
      0009CC C3               [12] 1052 	clr	c
      0009CD EB               [12] 1053 	mov	a,r3
      0009CE 9A               [12] 1054 	subb	a,r2
      0009CF EC               [12] 1055 	mov	a,r4
      0009D0 9F               [12] 1056 	subb	a,r7
      0009D1 D0 04            [24] 1057 	pop	ar4
      0009D3 D0 03            [24] 1058 	pop	ar3
      0009D5 D0 02            [24] 1059 	pop	ar2
      0009D7 50 03            [24] 1060 	jnc	00140$
      0009D9 02 0C 1F         [24] 1061 	ljmp	00109$
      0009DC                       1062 00140$:
                           0000A0  1063 	C$queue.c$279$2_0$181 ==.
                                   1064 ;	queue.c:279: taskENTER_CRITICAL();
      0009DC C0 E0            [24] 1065 	push ACC 
      0009DE C0 A8            [24] 1066 	push IE 
                                   1067 ;	assignBit
      0009E0 C2 AF            [12] 1068 	clr	_EA
                           0000A6  1069 	C$queue.c$281$3_0$182 ==.
                                   1070 ;	queue.c:281: pxQueue->u.xQueue.pcTail = pxQueue->pcHead + ( pxQueue->uxLength * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      0009E2 A8 0D            [24] 1071 	mov	r0,_bp
      0009E4 08               [12] 1072 	inc	r0
      0009E5 E5 0D            [12] 1073 	mov	a,_bp
      0009E7 24 0A            [12] 1074 	add	a,#0x0a
      0009E9 F9               [12] 1075 	mov	r1,a
      0009EA 74 06            [12] 1076 	mov	a,#0x06
      0009EC 26               [12] 1077 	add	a,@r0
      0009ED F7               [12] 1078 	mov	@r1,a
      0009EE 74 00            [12] 1079 	mov	a,#0x00
      0009F0 08               [12] 1080 	inc	r0
      0009F1 36               [12] 1081 	addc	a,@r0
      0009F2 09               [12] 1082 	inc	r1
      0009F3 F7               [12] 1083 	mov	@r1,a
      0009F4 08               [12] 1084 	inc	r0
      0009F5 E6               [12] 1085 	mov	a,@r0
      0009F6 09               [12] 1086 	inc	r1
      0009F7 F7               [12] 1087 	mov	@r1,a
      0009F8 A8 0D            [24] 1088 	mov	r0,_bp
      0009FA 08               [12] 1089 	inc	r0
      0009FB 86 82            [24] 1090 	mov	dpl,@r0
      0009FD 08               [12] 1091 	inc	r0
      0009FE 86 83            [24] 1092 	mov	dph,@r0
      000A00 08               [12] 1093 	inc	r0
      000A01 86 F0            [24] 1094 	mov	b,@r0
      000A03 E5 0D            [12] 1095 	mov	a,_bp
      000A05 24 04            [12] 1096 	add	a,#0x04
      000A07 F9               [12] 1097 	mov	r1,a
      000A08 12 7C 4D         [24] 1098 	lcall	__gptrget
      000A0B F7               [12] 1099 	mov	@r1,a
      000A0C A3               [24] 1100 	inc	dptr
      000A0D 12 7C 4D         [24] 1101 	lcall	__gptrget
      000A10 09               [12] 1102 	inc	r1
      000A11 F7               [12] 1103 	mov	@r1,a
      000A12 A3               [24] 1104 	inc	dptr
      000A13 12 7C 4D         [24] 1105 	lcall	__gptrget
      000A16 09               [12] 1106 	inc	r1
      000A17 F7               [12] 1107 	mov	@r1,a
      000A18 8A 82            [24] 1108 	mov	dpl,r2
      000A1A 8B 83            [24] 1109 	mov	dph,r3
      000A1C 8C F0            [24] 1110 	mov	b,r4
      000A1E 12 7C 4D         [24] 1111 	lcall	__gptrget
      000A21 FF               [12] 1112 	mov	r7,a
      000A22 E5 0D            [12] 1113 	mov	a,_bp
      000A24 24 07            [12] 1114 	add	a,#0x07
      000A26 F8               [12] 1115 	mov	r0,a
      000A27 86 82            [24] 1116 	mov	dpl,@r0
      000A29 08               [12] 1117 	inc	r0
      000A2A 86 83            [24] 1118 	mov	dph,@r0
      000A2C 08               [12] 1119 	inc	r0
      000A2D 86 F0            [24] 1120 	mov	b,@r0
      000A2F 12 7C 4D         [24] 1121 	lcall	__gptrget
      000A32 FE               [12] 1122 	mov	r6,a
      000A33 8F F0            [24] 1123 	mov	b,r7
      000A35 EE               [12] 1124 	mov	a,r6
      000A36 A4               [48] 1125 	mul	ab
      000A37 C8               [12] 1126 	xch	a,r0
      000A38 E5 0D            [12] 1127 	mov	a,_bp
      000A3A 24 04            [12] 1128 	add	a,#0x04
      000A3C C8               [12] 1129 	xch	a,r0
      000A3D 26               [12] 1130 	add	a,@r0
      000A3E FD               [12] 1131 	mov	r5,a
      000A3F 08               [12] 1132 	inc	r0
      000A40 E6               [12] 1133 	mov	a,@r0
      000A41 35 F0            [12] 1134 	addc	a,b
      000A43 FE               [12] 1135 	mov	r6,a
      000A44 08               [12] 1136 	inc	r0
      000A45 86 07            [24] 1137 	mov	ar7,@r0
      000A47 E5 0D            [12] 1138 	mov	a,_bp
      000A49 24 0A            [12] 1139 	add	a,#0x0a
      000A4B F8               [12] 1140 	mov	r0,a
      000A4C 86 82            [24] 1141 	mov	dpl,@r0
      000A4E 08               [12] 1142 	inc	r0
      000A4F 86 83            [24] 1143 	mov	dph,@r0
      000A51 08               [12] 1144 	inc	r0
      000A52 86 F0            [24] 1145 	mov	b,@r0
      000A54 ED               [12] 1146 	mov	a,r5
      000A55 12 79 22         [24] 1147 	lcall	__gptrput
      000A58 A3               [24] 1148 	inc	dptr
      000A59 EE               [12] 1149 	mov	a,r6
      000A5A 12 79 22         [24] 1150 	lcall	__gptrput
      000A5D A3               [24] 1151 	inc	dptr
      000A5E EF               [12] 1152 	mov	a,r7
      000A5F 12 79 22         [24] 1153 	lcall	__gptrput
                           000126  1154 	C$queue.c$282$3_0$182 ==.
                                   1155 ;	queue.c:282: pxQueue->uxMessagesWaiting = ( UBaseType_t ) 0U;
      000A62 A8 0D            [24] 1156 	mov	r0,_bp
      000A64 08               [12] 1157 	inc	r0
      000A65 74 24            [12] 1158 	mov	a,#0x24
      000A67 26               [12] 1159 	add	a,@r0
      000A68 FD               [12] 1160 	mov	r5,a
      000A69 74 00            [12] 1161 	mov	a,#0x00
      000A6B 08               [12] 1162 	inc	r0
      000A6C 36               [12] 1163 	addc	a,@r0
      000A6D FE               [12] 1164 	mov	r6,a
      000A6E 08               [12] 1165 	inc	r0
      000A6F 86 07            [24] 1166 	mov	ar7,@r0
      000A71 8D 82            [24] 1167 	mov	dpl,r5
      000A73 8E 83            [24] 1168 	mov	dph,r6
      000A75 8F F0            [24] 1169 	mov	b,r7
      000A77 74 00            [12] 1170 	mov	a,#0x00
      000A79 12 79 22         [24] 1171 	lcall	__gptrput
                           000140  1172 	C$queue.c$283$3_0$182 ==.
                                   1173 ;	queue.c:283: pxQueue->pcWriteTo = pxQueue->pcHead;
      000A7C A8 0D            [24] 1174 	mov	r0,_bp
      000A7E 08               [12] 1175 	inc	r0
      000A7F E5 0D            [12] 1176 	mov	a,_bp
      000A81 24 04            [12] 1177 	add	a,#0x04
      000A83 F9               [12] 1178 	mov	r1,a
      000A84 74 03            [12] 1179 	mov	a,#0x03
      000A86 26               [12] 1180 	add	a,@r0
      000A87 F7               [12] 1181 	mov	@r1,a
      000A88 74 00            [12] 1182 	mov	a,#0x00
      000A8A 08               [12] 1183 	inc	r0
      000A8B 36               [12] 1184 	addc	a,@r0
      000A8C 09               [12] 1185 	inc	r1
      000A8D F7               [12] 1186 	mov	@r1,a
      000A8E 08               [12] 1187 	inc	r0
      000A8F E6               [12] 1188 	mov	a,@r0
      000A90 09               [12] 1189 	inc	r1
      000A91 F7               [12] 1190 	mov	@r1,a
      000A92 A8 0D            [24] 1191 	mov	r0,_bp
      000A94 08               [12] 1192 	inc	r0
      000A95 86 82            [24] 1193 	mov	dpl,@r0
      000A97 08               [12] 1194 	inc	r0
      000A98 86 83            [24] 1195 	mov	dph,@r0
      000A9A 08               [12] 1196 	inc	r0
      000A9B 86 F0            [24] 1197 	mov	b,@r0
      000A9D 12 7C 4D         [24] 1198 	lcall	__gptrget
      000AA0 FD               [12] 1199 	mov	r5,a
      000AA1 A3               [24] 1200 	inc	dptr
      000AA2 12 7C 4D         [24] 1201 	lcall	__gptrget
      000AA5 FE               [12] 1202 	mov	r6,a
      000AA6 A3               [24] 1203 	inc	dptr
      000AA7 12 7C 4D         [24] 1204 	lcall	__gptrget
      000AAA FF               [12] 1205 	mov	r7,a
      000AAB E5 0D            [12] 1206 	mov	a,_bp
      000AAD 24 04            [12] 1207 	add	a,#0x04
      000AAF F8               [12] 1208 	mov	r0,a
      000AB0 86 82            [24] 1209 	mov	dpl,@r0
      000AB2 08               [12] 1210 	inc	r0
      000AB3 86 83            [24] 1211 	mov	dph,@r0
      000AB5 08               [12] 1212 	inc	r0
      000AB6 86 F0            [24] 1213 	mov	b,@r0
      000AB8 ED               [12] 1214 	mov	a,r5
      000AB9 12 79 22         [24] 1215 	lcall	__gptrput
      000ABC A3               [24] 1216 	inc	dptr
      000ABD EE               [12] 1217 	mov	a,r6
      000ABE 12 79 22         [24] 1218 	lcall	__gptrput
      000AC1 A3               [24] 1219 	inc	dptr
      000AC2 EF               [12] 1220 	mov	a,r7
      000AC3 12 79 22         [24] 1221 	lcall	__gptrput
                           00018A  1222 	C$queue.c$284$3_0$182 ==.
                                   1223 ;	queue.c:284: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead + ( ( pxQueue->uxLength - 1U ) * pxQueue->uxItemSize ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      000AC6 E5 0D            [12] 1224 	mov	a,_bp
      000AC8 24 0A            [12] 1225 	add	a,#0x0a
      000ACA F8               [12] 1226 	mov	r0,a
      000ACB E5 0D            [12] 1227 	mov	a,_bp
      000ACD 24 04            [12] 1228 	add	a,#0x04
      000ACF F9               [12] 1229 	mov	r1,a
      000AD0 74 03            [12] 1230 	mov	a,#0x03
      000AD2 26               [12] 1231 	add	a,@r0
      000AD3 F7               [12] 1232 	mov	@r1,a
      000AD4 74 00            [12] 1233 	mov	a,#0x00
      000AD6 08               [12] 1234 	inc	r0
      000AD7 36               [12] 1235 	addc	a,@r0
      000AD8 09               [12] 1236 	inc	r1
      000AD9 F7               [12] 1237 	mov	@r1,a
      000ADA 08               [12] 1238 	inc	r0
      000ADB E6               [12] 1239 	mov	a,@r0
      000ADC 09               [12] 1240 	inc	r1
      000ADD F7               [12] 1241 	mov	@r1,a
      000ADE A8 0D            [24] 1242 	mov	r0,_bp
      000AE0 08               [12] 1243 	inc	r0
      000AE1 86 82            [24] 1244 	mov	dpl,@r0
      000AE3 08               [12] 1245 	inc	r0
      000AE4 86 83            [24] 1246 	mov	dph,@r0
      000AE6 08               [12] 1247 	inc	r0
      000AE7 86 F0            [24] 1248 	mov	b,@r0
      000AE9 12 7C 4D         [24] 1249 	lcall	__gptrget
      000AEC FD               [12] 1250 	mov	r5,a
      000AED A3               [24] 1251 	inc	dptr
      000AEE 12 7C 4D         [24] 1252 	lcall	__gptrget
      000AF1 FE               [12] 1253 	mov	r6,a
      000AF2 A3               [24] 1254 	inc	dptr
      000AF3 12 7C 4D         [24] 1255 	lcall	__gptrget
      000AF6 FF               [12] 1256 	mov	r7,a
      000AF7 8A 82            [24] 1257 	mov	dpl,r2
      000AF9 8B 83            [24] 1258 	mov	dph,r3
      000AFB 8C F0            [24] 1259 	mov	b,r4
      000AFD 12 7C 4D         [24] 1260 	lcall	__gptrget
      000B00 FA               [12] 1261 	mov	r2,a
      000B01 7C 00            [12] 1262 	mov	r4,#0x00
      000B03 E5 0D            [12] 1263 	mov	a,_bp
      000B05 24 0A            [12] 1264 	add	a,#0x0a
      000B07 F8               [12] 1265 	mov	r0,a
      000B08 EA               [12] 1266 	mov	a,r2
      000B09 24 FF            [12] 1267 	add	a,#0xff
      000B0B F6               [12] 1268 	mov	@r0,a
      000B0C EC               [12] 1269 	mov	a,r4
      000B0D 34 FF            [12] 1270 	addc	a,#0xff
      000B0F 08               [12] 1271 	inc	r0
      000B10 F6               [12] 1272 	mov	@r0,a
      000B11 E5 0D            [12] 1273 	mov	a,_bp
      000B13 24 07            [12] 1274 	add	a,#0x07
      000B15 F8               [12] 1275 	mov	r0,a
      000B16 86 82            [24] 1276 	mov	dpl,@r0
      000B18 08               [12] 1277 	inc	r0
      000B19 86 83            [24] 1278 	mov	dph,@r0
      000B1B 08               [12] 1279 	inc	r0
      000B1C 86 F0            [24] 1280 	mov	b,@r0
      000B1E 12 7C 4D         [24] 1281 	lcall	__gptrget
      000B21 FB               [12] 1282 	mov	r3,a
      000B22 7C 00            [12] 1283 	mov	r4,#0x00
      000B24 C0 07            [24] 1284 	push	ar7
      000B26 C0 06            [24] 1285 	push	ar6
      000B28 C0 05            [24] 1286 	push	ar5
      000B2A C0 03            [24] 1287 	push	ar3
      000B2C C0 04            [24] 1288 	push	ar4
      000B2E E5 0D            [12] 1289 	mov	a,_bp
      000B30 24 0A            [12] 1290 	add	a,#0x0a
      000B32 F8               [12] 1291 	mov	r0,a
      000B33 86 82            [24] 1292 	mov	dpl,@r0
      000B35 08               [12] 1293 	inc	r0
      000B36 86 83            [24] 1294 	mov	dph,@r0
      000B38 12 79 3D         [24] 1295 	lcall	__mulint
      000B3B AB 82            [24] 1296 	mov	r3,dpl
      000B3D AC 83            [24] 1297 	mov	r4,dph
      000B3F 15 81            [12] 1298 	dec	sp
      000B41 15 81            [12] 1299 	dec	sp
      000B43 D0 05            [24] 1300 	pop	ar5
      000B45 D0 06            [24] 1301 	pop	ar6
      000B47 D0 07            [24] 1302 	pop	ar7
      000B49 EB               [12] 1303 	mov	a,r3
      000B4A 2D               [12] 1304 	add	a,r5
      000B4B FD               [12] 1305 	mov	r5,a
      000B4C EC               [12] 1306 	mov	a,r4
      000B4D 3E               [12] 1307 	addc	a,r6
      000B4E FE               [12] 1308 	mov	r6,a
      000B4F E5 0D            [12] 1309 	mov	a,_bp
      000B51 24 04            [12] 1310 	add	a,#0x04
      000B53 F8               [12] 1311 	mov	r0,a
      000B54 86 82            [24] 1312 	mov	dpl,@r0
      000B56 08               [12] 1313 	inc	r0
      000B57 86 83            [24] 1314 	mov	dph,@r0
      000B59 08               [12] 1315 	inc	r0
      000B5A 86 F0            [24] 1316 	mov	b,@r0
      000B5C ED               [12] 1317 	mov	a,r5
      000B5D 12 79 22         [24] 1318 	lcall	__gptrput
      000B60 A3               [24] 1319 	inc	dptr
      000B61 EE               [12] 1320 	mov	a,r6
      000B62 12 79 22         [24] 1321 	lcall	__gptrput
      000B65 A3               [24] 1322 	inc	dptr
      000B66 EF               [12] 1323 	mov	a,r7
      000B67 12 79 22         [24] 1324 	lcall	__gptrput
                           00022E  1325 	C$queue.c$285$3_0$182 ==.
                                   1326 ;	queue.c:285: pxQueue->cRxLock = queueUNLOCKED;
      000B6A A8 0D            [24] 1327 	mov	r0,_bp
      000B6C 08               [12] 1328 	inc	r0
      000B6D 74 27            [12] 1329 	mov	a,#0x27
      000B6F 26               [12] 1330 	add	a,@r0
      000B70 FD               [12] 1331 	mov	r5,a
      000B71 74 00            [12] 1332 	mov	a,#0x00
      000B73 08               [12] 1333 	inc	r0
      000B74 36               [12] 1334 	addc	a,@r0
      000B75 FE               [12] 1335 	mov	r6,a
      000B76 08               [12] 1336 	inc	r0
      000B77 86 07            [24] 1337 	mov	ar7,@r0
      000B79 8D 82            [24] 1338 	mov	dpl,r5
      000B7B 8E 83            [24] 1339 	mov	dph,r6
      000B7D 8F F0            [24] 1340 	mov	b,r7
      000B7F 74 FF            [12] 1341 	mov	a,#0xff
      000B81 12 79 22         [24] 1342 	lcall	__gptrput
                           000248  1343 	C$queue.c$286$3_0$182 ==.
                                   1344 ;	queue.c:286: pxQueue->cTxLock = queueUNLOCKED;
      000B84 A8 0D            [24] 1345 	mov	r0,_bp
      000B86 08               [12] 1346 	inc	r0
      000B87 74 28            [12] 1347 	mov	a,#0x28
      000B89 26               [12] 1348 	add	a,@r0
      000B8A FD               [12] 1349 	mov	r5,a
      000B8B 74 00            [12] 1350 	mov	a,#0x00
      000B8D 08               [12] 1351 	inc	r0
      000B8E 36               [12] 1352 	addc	a,@r0
      000B8F FE               [12] 1353 	mov	r6,a
      000B90 08               [12] 1354 	inc	r0
      000B91 86 07            [24] 1355 	mov	ar7,@r0
      000B93 8D 82            [24] 1356 	mov	dpl,r5
      000B95 8E 83            [24] 1357 	mov	dph,r6
      000B97 8F F0            [24] 1358 	mov	b,r7
      000B99 74 FF            [12] 1359 	mov	a,#0xff
      000B9B 12 79 22         [24] 1360 	lcall	__gptrput
                           000262  1361 	C$queue.c$288$3_0$182 ==.
                                   1362 ;	queue.c:288: if( xNewQueue == pdFALSE )
      000B9E E5 0D            [12] 1363 	mov	a,_bp
      000BA0 24 FD            [12] 1364 	add	a,#0xfd
      000BA2 F8               [12] 1365 	mov	r0,a
      000BA3 E6               [12] 1366 	mov	a,@r0
      000BA4 60 03            [24] 1367 	jz	00141$
      000BA6 02 0B E1         [24] 1368 	ljmp	00106$
      000BA9                       1369 00141$:
                           00026D  1370 	C$queue.c$295$4_0$183 ==.
                                   1371 ;	queue.c:295: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      000BA9 A8 0D            [24] 1372 	mov	r0,_bp
      000BAB 08               [12] 1373 	inc	r0
      000BAC 74 0C            [12] 1374 	mov	a,#0x0c
      000BAE 26               [12] 1375 	add	a,@r0
      000BAF FD               [12] 1376 	mov	r5,a
      000BB0 74 00            [12] 1377 	mov	a,#0x00
      000BB2 08               [12] 1378 	inc	r0
      000BB3 36               [12] 1379 	addc	a,@r0
      000BB4 FE               [12] 1380 	mov	r6,a
      000BB5 08               [12] 1381 	inc	r0
      000BB6 86 07            [24] 1382 	mov	ar7,@r0
      000BB8 8D 82            [24] 1383 	mov	dpl,r5
      000BBA 8E 83            [24] 1384 	mov	dph,r6
      000BBC 8F F0            [24] 1385 	mov	b,r7
      000BBE 12 7C 4D         [24] 1386 	lcall	__gptrget
      000BC1 70 03            [24] 1387 	jnz	00142$
      000BC3 02 0C 11         [24] 1388 	ljmp	00107$
      000BC6                       1389 00142$:
                           00028A  1390 	C$queue.c$297$5_0$184 ==.
                                   1391 ;	queue.c:297: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      000BC6 A8 0D            [24] 1392 	mov	r0,_bp
      000BC8 08               [12] 1393 	inc	r0
      000BC9 74 0C            [12] 1394 	mov	a,#0x0c
      000BCB 26               [12] 1395 	add	a,@r0
      000BCC FD               [12] 1396 	mov	r5,a
      000BCD 74 00            [12] 1397 	mov	a,#0x00
      000BCF 08               [12] 1398 	inc	r0
      000BD0 36               [12] 1399 	addc	a,@r0
      000BD1 FE               [12] 1400 	mov	r6,a
      000BD2 08               [12] 1401 	inc	r0
      000BD3 86 07            [24] 1402 	mov	ar7,@r0
      000BD5 8D 82            [24] 1403 	mov	dpl,r5
      000BD7 8E 83            [24] 1404 	mov	dph,r6
      000BD9 8F F0            [24] 1405 	mov	b,r7
      000BDB 12 40 62         [24] 1406 	lcall	_xTaskRemoveFromEventList
      000BDE 02 0C 11         [24] 1407 	ljmp	00107$
      000BE1                       1408 00106$:
                           0002A5  1409 	C$queue.c$314$4_0$188 ==.
                                   1410 ;	queue.c:314: vListInitialise( &( pxQueue->xTasksWaitingToSend ) );
      000BE1 A8 0D            [24] 1411 	mov	r0,_bp
      000BE3 08               [12] 1412 	inc	r0
      000BE4 74 0C            [12] 1413 	mov	a,#0x0c
      000BE6 26               [12] 1414 	add	a,@r0
      000BE7 FD               [12] 1415 	mov	r5,a
      000BE8 74 00            [12] 1416 	mov	a,#0x00
      000BEA 08               [12] 1417 	inc	r0
      000BEB 36               [12] 1418 	addc	a,@r0
      000BEC FE               [12] 1419 	mov	r6,a
      000BED 08               [12] 1420 	inc	r0
      000BEE 86 07            [24] 1421 	mov	ar7,@r0
      000BF0 8D 82            [24] 1422 	mov	dpl,r5
      000BF2 8E 83            [24] 1423 	mov	dph,r6
      000BF4 8F F0            [24] 1424 	mov	b,r7
      000BF6 12 6D 66         [24] 1425 	lcall	_vListInitialise
                           0002BD  1426 	C$queue.c$315$4_0$188 ==.
                                   1427 ;	queue.c:315: vListInitialise( &( pxQueue->xTasksWaitingToReceive ) );
      000BF9 A8 0D            [24] 1428 	mov	r0,_bp
      000BFB 08               [12] 1429 	inc	r0
      000BFC 74 18            [12] 1430 	mov	a,#0x18
      000BFE 26               [12] 1431 	add	a,@r0
      000BFF FD               [12] 1432 	mov	r5,a
      000C00 74 00            [12] 1433 	mov	a,#0x00
      000C02 08               [12] 1434 	inc	r0
      000C03 36               [12] 1435 	addc	a,@r0
      000C04 FE               [12] 1436 	mov	r6,a
      000C05 08               [12] 1437 	inc	r0
      000C06 86 07            [24] 1438 	mov	ar7,@r0
      000C08 8D 82            [24] 1439 	mov	dpl,r5
      000C0A 8E 83            [24] 1440 	mov	dph,r6
      000C0C 8F F0            [24] 1441 	mov	b,r7
      000C0E 12 6D 66         [24] 1442 	lcall	_vListInitialise
      000C11                       1443 00107$:
                           0002D5  1444 	C$queue.c$318$2_0$181 ==.
                                   1445 ;	queue.c:318: taskEXIT_CRITICAL();
      000C11 D0 E0            [24] 1446 	pop ACC 
      000C13 53 E0 80         [24] 1447 	anl	_ACC,#0x80
      000C16 E5 E0            [12] 1448 	mov	a,_ACC
      000C18 42 A8            [12] 1449 	orl	_IE,a
      000C1A D0 E0            [24] 1450 	pop ACC 
      000C1C 02 0C 26         [24] 1451 	ljmp	00110$
      000C1F                       1452 00109$:
                           0002E3  1453 	C$queue.c$322$2_0$189 ==.
                                   1454 ;	queue.c:322: xReturn = pdFAIL;
      000C1F E5 0D            [12] 1455 	mov	a,_bp
      000C21 24 0D            [12] 1456 	add	a,#0x0d
      000C23 F8               [12] 1457 	mov	r0,a
      000C24 76 00            [12] 1458 	mov	@r0,#0x00
      000C26                       1459 00110$:
                           0002EA  1460 	C$queue.c$329$1_0$180 ==.
                                   1461 ;	queue.c:329: return xReturn;
      000C26 E5 0D            [12] 1462 	mov	a,_bp
      000C28 24 0D            [12] 1463 	add	a,#0x0d
      000C2A F8               [12] 1464 	mov	r0,a
      000C2B 86 82            [24] 1465 	mov	dpl,@r0
      000C2D                       1466 00113$:
                           0002F1  1467 	C$queue.c$330$1_0$180 ==.
                                   1468 ;	queue.c:330: }
      000C2D 85 0D 81         [24] 1469 	mov	sp,_bp
      000C30 D0 0D            [24] 1470 	pop	_bp
                           0002F6  1471 	C$queue.c$330$1_0$180 ==.
                           0002F6  1472 	XG$xQueueGenericReset$0$0 ==.
      000C32 22               [24] 1473 	ret
                                   1474 ;------------------------------------------------------------
                                   1475 ;Allocation info for local variables in function 'xQueueGenericCreate'
                                   1476 ;------------------------------------------------------------
                                   1477 ;uxItemSize                Allocated to stack - _bp -3
                                   1478 ;ucQueueType               Allocated to stack - _bp -4
                                   1479 ;uxQueueLength             Allocated to stack - _bp +1
                                   1480 ;pxNewQueue                Allocated to registers r4 r5 r6 
                                   1481 ;xQueueSizeInBytes         Allocated to registers 
                                   1482 ;pucQueueStorage           Allocated to registers r2 r3 r7 
                                   1483 ;------------------------------------------------------------
                           0002F7  1484 	G$xQueueGenericCreate$0$0 ==.
                           0002F7  1485 	C$queue.c$398$1_0$191 ==.
                                   1486 ;	queue.c:398: QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength,
                                   1487 ;	-----------------------------------------
                                   1488 ;	 function xQueueGenericCreate
                                   1489 ;	-----------------------------------------
      000C33                       1490 _xQueueGenericCreate:
      000C33 C0 0D            [24] 1491 	push	_bp
      000C35 85 81 0D         [24] 1492 	mov	_bp,sp
      000C38 C0 82            [24] 1493 	push	dpl
                           0002FE  1494 	C$queue.c$402$2_0$191 ==.
                                   1495 ;	queue.c:402: Queue_t * pxNewQueue = NULL;
      000C3A 7C 00            [12] 1496 	mov	r4,#0x00
      000C3C 7D 00            [12] 1497 	mov	r5,#0x00
      000C3E 7E 00            [12] 1498 	mov	r6,#0x00
                           000304  1499 	C$queue.c$406$1_0$191 ==.
                                   1500 ;	queue.c:406: if( ( uxQueueLength > ( UBaseType_t ) 0 ) &&
      000C40 A8 0D            [24] 1501 	mov	r0,_bp
      000C42 08               [12] 1502 	inc	r0
      000C43 E6               [12] 1503 	mov	a,@r0
      000C44 70 03            [24] 1504 	jnz	00131$
      000C46 02 0D 11         [24] 1505 	ljmp	00106$
      000C49                       1506 00131$:
                           00030D  1507 	C$queue.c$408$1_0$191 ==.
                                   1508 ;	queue.c:408: ( ( SIZE_MAX / uxQueueLength ) >= uxItemSize ) &&
      000C49 C0 04            [24] 1509 	push	ar4
      000C4B C0 05            [24] 1510 	push	ar5
      000C4D C0 06            [24] 1511 	push	ar6
      000C4F A8 0D            [24] 1512 	mov	r0,_bp
      000C51 08               [12] 1513 	inc	r0
      000C52 86 02            [24] 1514 	mov	ar2,@r0
      000C54 7B 00            [12] 1515 	mov	r3,#0x00
      000C56 C0 06            [24] 1516 	push	ar6
      000C58 C0 05            [24] 1517 	push	ar5
      000C5A C0 04            [24] 1518 	push	ar4
      000C5C C0 02            [24] 1519 	push	ar2
      000C5E C0 03            [24] 1520 	push	ar3
      000C60 75 82 FF         [24] 1521 	mov	dpl,#0xff
      000C63 75 83 FF         [24] 1522 	mov	dph,#0xff
      000C66 12 78 8A         [24] 1523 	lcall	__divuint
      000C69 AA 82            [24] 1524 	mov	r2,dpl
      000C6B AB 83            [24] 1525 	mov	r3,dph
      000C6D 15 81            [12] 1526 	dec	sp
      000C6F 15 81            [12] 1527 	dec	sp
      000C71 D0 04            [24] 1528 	pop	ar4
      000C73 D0 05            [24] 1529 	pop	ar5
      000C75 D0 06            [24] 1530 	pop	ar6
      000C77 E5 0D            [12] 1531 	mov	a,_bp
      000C79 24 FD            [12] 1532 	add	a,#0xfd
      000C7B F8               [12] 1533 	mov	r0,a
      000C7C 86 05            [24] 1534 	mov	ar5,@r0
      000C7E 7E 00            [12] 1535 	mov	r6,#0x00
      000C80 C3               [12] 1536 	clr	c
      000C81 EA               [12] 1537 	mov	a,r2
      000C82 9D               [12] 1538 	subb	a,r5
      000C83 EB               [12] 1539 	mov	a,r3
      000C84 9E               [12] 1540 	subb	a,r6
      000C85 D0 06            [24] 1541 	pop	ar6
      000C87 D0 05            [24] 1542 	pop	ar5
      000C89 D0 04            [24] 1543 	pop	ar4
      000C8B 50 03            [24] 1544 	jnc	00132$
      000C8D 02 0D 11         [24] 1545 	ljmp	00106$
      000C90                       1546 00132$:
                           000354  1547 	C$queue.c$410$1_0$191 ==.
                                   1548 ;	queue.c:410: ( ( SIZE_MAX - sizeof( Queue_t ) ) >= ( uxQueueLength * uxItemSize ) ) )
      000C90 A8 0D            [24] 1549 	mov	r0,_bp
      000C92 08               [12] 1550 	inc	r0
      000C93 E5 0D            [12] 1551 	mov	a,_bp
      000C95 24 FD            [12] 1552 	add	a,#0xfd
      000C97 F9               [12] 1553 	mov	r1,a
      000C98 86 F0            [24] 1554 	mov	b,@r0
      000C9A E7               [12] 1555 	mov	a,@r1
      000C9B A4               [48] 1556 	mul	ab
      000C9C FA               [12] 1557 	mov	r2,a
      000C9D AB F0            [24] 1558 	mov	r3,b
      000C9F C3               [12] 1559 	clr	c
      000CA0 74 D6            [12] 1560 	mov	a,#0xd6
      000CA2 9A               [12] 1561 	subb	a,r2
      000CA3 74 FF            [12] 1562 	mov	a,#0xff
      000CA5 9B               [12] 1563 	subb	a,r3
      000CA6 50 03            [24] 1564 	jnc	00133$
      000CA8 02 0D 11         [24] 1565 	ljmp	00106$
      000CAB                       1566 00133$:
                           00036F  1567 	C$queue.c$415$1_0$191 ==.
                                   1568 ;	queue.c:415: xQueueSizeInBytes = ( size_t ) ( uxQueueLength * uxItemSize ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
                           00036F  1569 	C$queue.c$426$2_0$192 ==.
                                   1570 ;	queue.c:426: pxNewQueue = ( Queue_t * ) pvPortMalloc( sizeof( Queue_t ) + xQueueSizeInBytes ); /*lint !e9087 !e9079 see comment above. */
      000CAB 74 29            [12] 1571 	mov	a,#0x29
      000CAD 2A               [12] 1572 	add	a,r2
      000CAE FA               [12] 1573 	mov	r2,a
      000CAF 74 00            [12] 1574 	mov	a,#0x00
      000CB1 3B               [12] 1575 	addc	a,r3
      000CB2 FB               [12] 1576 	mov	r3,a
      000CB3 8A 82            [24] 1577 	mov	dpl,r2
      000CB5 8B 83            [24] 1578 	mov	dph,r3
      000CB7 12 73 E7         [24] 1579 	lcall	_pvPortMalloc
      000CBA AA 82            [24] 1580 	mov	r2,dpl
      000CBC AB 83            [24] 1581 	mov	r3,dph
      000CBE AF F0            [24] 1582 	mov	r7,b
      000CC0 8A 04            [24] 1583 	mov	ar4,r2
      000CC2 8B 05            [24] 1584 	mov	ar5,r3
      000CC4 8F 06            [24] 1585 	mov	ar6,r7
                           00038A  1586 	C$queue.c$428$1_0$191 ==.
                                   1587 ;	queue.c:428: if( pxNewQueue != NULL )
      000CC6 EC               [12] 1588 	mov	a,r4
      000CC7 4D               [12] 1589 	orl	a,r5
      000CC8 70 03            [24] 1590 	jnz	00134$
      000CCA 02 0D 11         [24] 1591 	ljmp	00106$
      000CCD                       1592 00134$:
                           000391  1593 	C$queue.c$432$3_0$193 ==.
                                   1594 ;	queue.c:432: pucQueueStorage = ( uint8_t * ) pxNewQueue;
      000CCD 8C 02            [24] 1595 	mov	ar2,r4
      000CCF 8D 03            [24] 1596 	mov	ar3,r5
      000CD1 8E 07            [24] 1597 	mov	ar7,r6
                           000397  1598 	C$queue.c$433$3_0$193 ==.
                                   1599 ;	queue.c:433: pucQueueStorage += sizeof( Queue_t ); /*lint !e9016 Pointer arithmetic allowed on char types, especially when it assists conveying intent. */
      000CD3 74 29            [12] 1600 	mov	a,#0x29
      000CD5 2A               [12] 1601 	add	a,r2
      000CD6 FA               [12] 1602 	mov	r2,a
      000CD7 74 00            [12] 1603 	mov	a,#0x00
      000CD9 3B               [12] 1604 	addc	a,r3
      000CDA FB               [12] 1605 	mov	r3,a
                           00039F  1606 	C$queue.c$444$3_0$193 ==.
                                   1607 ;	queue.c:444: prvInitialiseNewQueue( uxQueueLength, uxItemSize, pucQueueStorage, ucQueueType, pxNewQueue );
      000CDB C0 06            [24] 1608 	push	ar6
      000CDD C0 05            [24] 1609 	push	ar5
      000CDF C0 04            [24] 1610 	push	ar4
      000CE1 C0 04            [24] 1611 	push	ar4
      000CE3 C0 05            [24] 1612 	push	ar5
      000CE5 C0 06            [24] 1613 	push	ar6
      000CE7 E5 0D            [12] 1614 	mov	a,_bp
      000CE9 24 FC            [12] 1615 	add	a,#0xfc
      000CEB F8               [12] 1616 	mov	r0,a
      000CEC E6               [12] 1617 	mov	a,@r0
      000CED C0 E0            [24] 1618 	push	acc
      000CEF C0 02            [24] 1619 	push	ar2
      000CF1 C0 03            [24] 1620 	push	ar3
      000CF3 C0 07            [24] 1621 	push	ar7
      000CF5 E5 0D            [12] 1622 	mov	a,_bp
      000CF7 24 FD            [12] 1623 	add	a,#0xfd
      000CF9 F8               [12] 1624 	mov	r0,a
      000CFA E6               [12] 1625 	mov	a,@r0
      000CFB C0 E0            [24] 1626 	push	acc
      000CFD A8 0D            [24] 1627 	mov	r0,_bp
      000CFF 08               [12] 1628 	inc	r0
      000D00 86 82            [24] 1629 	mov	dpl,@r0
      000D02 12 0D 1C         [24] 1630 	lcall	_prvInitialiseNewQueue
      000D05 E5 81            [12] 1631 	mov	a,sp
      000D07 24 F8            [12] 1632 	add	a,#0xf8
      000D09 F5 81            [12] 1633 	mov	sp,a
      000D0B D0 04            [24] 1634 	pop	ar4
      000D0D D0 05            [24] 1635 	pop	ar5
      000D0F D0 06            [24] 1636 	pop	ar6
                           0003D5  1637 	C$queue.c$455$1_0$191 ==.
                                   1638 ;	queue.c:455: mtCOVERAGE_TEST_MARKER();
      000D11                       1639 00106$:
                           0003D5  1640 	C$queue.c$458$1_0$191 ==.
                                   1641 ;	queue.c:458: return pxNewQueue;
      000D11 8C 82            [24] 1642 	mov	dpl,r4
      000D13 8D 83            [24] 1643 	mov	dph,r5
      000D15 8E F0            [24] 1644 	mov	b,r6
      000D17                       1645 00109$:
                           0003DB  1646 	C$queue.c$459$1_0$191 ==.
                                   1647 ;	queue.c:459: }
      000D17 15 81            [12] 1648 	dec	sp
      000D19 D0 0D            [24] 1649 	pop	_bp
                           0003DF  1650 	C$queue.c$459$1_0$191 ==.
                           0003DF  1651 	XG$xQueueGenericCreate$0$0 ==.
      000D1B 22               [24] 1652 	ret
                                   1653 ;------------------------------------------------------------
                                   1654 ;Allocation info for local variables in function 'prvInitialiseNewQueue'
                                   1655 ;------------------------------------------------------------
                                   1656 ;uxItemSize                Allocated to stack - _bp -3
                                   1657 ;pucQueueStorage           Allocated to stack - _bp -6
                                   1658 ;ucQueueType               Allocated to stack - _bp -7
                                   1659 ;pxNewQueue                Allocated to stack - _bp -10
                                   1660 ;uxQueueLength             Allocated to stack - _bp +1
                                   1661 ;------------------------------------------------------------
                           0003E0  1662 	Fqueue$prvInitialiseNewQueue$0$0 ==.
                           0003E0  1663 	C$queue.c$464$1_0$197 ==.
                                   1664 ;	queue.c:464: static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength,
                                   1665 ;	-----------------------------------------
                                   1666 ;	 function prvInitialiseNewQueue
                                   1667 ;	-----------------------------------------
      000D1C                       1668 _prvInitialiseNewQueue:
      000D1C C0 0D            [24] 1669 	push	_bp
      000D1E 85 81 0D         [24] 1670 	mov	_bp,sp
      000D21 C0 82            [24] 1671 	push	dpl
                           0003E7  1672 	C$queue.c$474$1_0$197 ==.
                                   1673 ;	queue.c:474: if( uxItemSize == ( UBaseType_t ) 0 )
      000D23 E5 0D            [12] 1674 	mov	a,_bp
      000D25 24 FD            [12] 1675 	add	a,#0xfd
      000D27 F8               [12] 1676 	mov	r0,a
      000D28 E6               [12] 1677 	mov	a,@r0
      000D29 60 03            [24] 1678 	jz	00110$
      000D2B 02 0D 5F         [24] 1679 	ljmp	00102$
      000D2E                       1680 00110$:
                           0003F2  1681 	C$queue.c$480$1_0$197 ==.
                                   1682 ;	queue.c:480: pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
      000D2E E5 0D            [12] 1683 	mov	a,_bp
      000D30 24 F6            [12] 1684 	add	a,#0xf6
      000D32 F8               [12] 1685 	mov	r0,a
      000D33 86 04            [24] 1686 	mov	ar4,@r0
      000D35 08               [12] 1687 	inc	r0
      000D36 86 05            [24] 1688 	mov	ar5,@r0
      000D38 08               [12] 1689 	inc	r0
      000D39 86 06            [24] 1690 	mov	ar6,@r0
      000D3B E5 0D            [12] 1691 	mov	a,_bp
      000D3D 24 F6            [12] 1692 	add	a,#0xf6
      000D3F F8               [12] 1693 	mov	r0,a
      000D40 86 02            [24] 1694 	mov	ar2,@r0
      000D42 08               [12] 1695 	inc	r0
      000D43 86 03            [24] 1696 	mov	ar3,@r0
      000D45 08               [12] 1697 	inc	r0
      000D46 86 07            [24] 1698 	mov	ar7,@r0
      000D48 8C 82            [24] 1699 	mov	dpl,r4
      000D4A 8D 83            [24] 1700 	mov	dph,r5
      000D4C 8E F0            [24] 1701 	mov	b,r6
      000D4E EA               [12] 1702 	mov	a,r2
      000D4F 12 79 22         [24] 1703 	lcall	__gptrput
      000D52 A3               [24] 1704 	inc	dptr
      000D53 EB               [12] 1705 	mov	a,r3
      000D54 12 79 22         [24] 1706 	lcall	__gptrput
      000D57 A3               [24] 1707 	inc	dptr
      000D58 EF               [12] 1708 	mov	a,r7
      000D59 12 79 22         [24] 1709 	lcall	__gptrput
      000D5C 02 0D 8D         [24] 1710 	ljmp	00103$
      000D5F                       1711 00102$:
                           000423  1712 	C$queue.c$485$2_0$199 ==.
                                   1713 ;	queue.c:485: pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
      000D5F E5 0D            [12] 1714 	mov	a,_bp
      000D61 24 F6            [12] 1715 	add	a,#0xf6
      000D63 F8               [12] 1716 	mov	r0,a
      000D64 86 04            [24] 1717 	mov	ar4,@r0
      000D66 08               [12] 1718 	inc	r0
      000D67 86 05            [24] 1719 	mov	ar5,@r0
      000D69 08               [12] 1720 	inc	r0
      000D6A 86 06            [24] 1721 	mov	ar6,@r0
      000D6C E5 0D            [12] 1722 	mov	a,_bp
      000D6E 24 FA            [12] 1723 	add	a,#0xfa
      000D70 F8               [12] 1724 	mov	r0,a
      000D71 86 02            [24] 1725 	mov	ar2,@r0
      000D73 08               [12] 1726 	inc	r0
      000D74 86 03            [24] 1727 	mov	ar3,@r0
      000D76 08               [12] 1728 	inc	r0
      000D77 86 07            [24] 1729 	mov	ar7,@r0
      000D79 8C 82            [24] 1730 	mov	dpl,r4
      000D7B 8D 83            [24] 1731 	mov	dph,r5
      000D7D 8E F0            [24] 1732 	mov	b,r6
      000D7F EA               [12] 1733 	mov	a,r2
      000D80 12 79 22         [24] 1734 	lcall	__gptrput
      000D83 A3               [24] 1735 	inc	dptr
      000D84 EB               [12] 1736 	mov	a,r3
      000D85 12 79 22         [24] 1737 	lcall	__gptrput
      000D88 A3               [24] 1738 	inc	dptr
      000D89 EF               [12] 1739 	mov	a,r7
      000D8A 12 79 22         [24] 1740 	lcall	__gptrput
      000D8D                       1741 00103$:
                           000451  1742 	C$queue.c$490$1_0$197 ==.
                                   1743 ;	queue.c:490: pxNewQueue->uxLength = uxQueueLength;
      000D8D E5 0D            [12] 1744 	mov	a,_bp
      000D8F 24 F6            [12] 1745 	add	a,#0xf6
      000D91 F8               [12] 1746 	mov	r0,a
      000D92 86 05            [24] 1747 	mov	ar5,@r0
      000D94 08               [12] 1748 	inc	r0
      000D95 86 06            [24] 1749 	mov	ar6,@r0
      000D97 08               [12] 1750 	inc	r0
      000D98 86 07            [24] 1751 	mov	ar7,@r0
      000D9A 74 25            [12] 1752 	mov	a,#0x25
      000D9C 2D               [12] 1753 	add	a,r5
      000D9D FA               [12] 1754 	mov	r2,a
      000D9E 74 00            [12] 1755 	mov	a,#0x00
      000DA0 3E               [12] 1756 	addc	a,r6
      000DA1 FB               [12] 1757 	mov	r3,a
      000DA2 8F 04            [24] 1758 	mov	ar4,r7
      000DA4 8A 82            [24] 1759 	mov	dpl,r2
      000DA6 8B 83            [24] 1760 	mov	dph,r3
      000DA8 8C F0            [24] 1761 	mov	b,r4
      000DAA A8 0D            [24] 1762 	mov	r0,_bp
      000DAC 08               [12] 1763 	inc	r0
      000DAD E6               [12] 1764 	mov	a,@r0
      000DAE 12 79 22         [24] 1765 	lcall	__gptrput
                           000475  1766 	C$queue.c$491$1_0$197 ==.
                                   1767 ;	queue.c:491: pxNewQueue->uxItemSize = uxItemSize;
      000DB1 74 26            [12] 1768 	mov	a,#0x26
      000DB3 2D               [12] 1769 	add	a,r5
      000DB4 FA               [12] 1770 	mov	r2,a
      000DB5 74 00            [12] 1771 	mov	a,#0x00
      000DB7 3E               [12] 1772 	addc	a,r6
      000DB8 FB               [12] 1773 	mov	r3,a
      000DB9 8F 04            [24] 1774 	mov	ar4,r7
      000DBB 8A 82            [24] 1775 	mov	dpl,r2
      000DBD 8B 83            [24] 1776 	mov	dph,r3
      000DBF 8C F0            [24] 1777 	mov	b,r4
      000DC1 E5 0D            [12] 1778 	mov	a,_bp
      000DC3 24 FD            [12] 1779 	add	a,#0xfd
      000DC5 F8               [12] 1780 	mov	r0,a
      000DC6 E6               [12] 1781 	mov	a,@r0
      000DC7 12 79 22         [24] 1782 	lcall	__gptrput
                           00048E  1783 	C$queue.c$492$1_0$197 ==.
                                   1784 ;	queue.c:492: ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
      000DCA 74 01            [12] 1785 	mov	a,#0x01
      000DCC C0 E0            [24] 1786 	push	acc
      000DCE 8D 82            [24] 1787 	mov	dpl,r5
      000DD0 8E 83            [24] 1788 	mov	dph,r6
      000DD2 8F F0            [24] 1789 	mov	b,r7
      000DD4 12 09 3C         [24] 1790 	lcall	_xQueueGenericReset
      000DD7 15 81            [12] 1791 	dec	sp
      000DD9                       1792 00104$:
                           00049D  1793 	C$queue.c$507$1_0$197 ==.
                                   1794 ;	queue.c:507: }
      000DD9 15 81            [12] 1795 	dec	sp
      000DDB D0 0D            [24] 1796 	pop	_bp
                           0004A1  1797 	C$queue.c$507$1_0$197 ==.
                           0004A1  1798 	XFqueue$prvInitialiseNewQueue$0$0 ==.
      000DDD 22               [24] 1799 	ret
                                   1800 ;------------------------------------------------------------
                                   1801 ;Allocation info for local variables in function 'xQueueGenericSend'
                                   1802 ;------------------------------------------------------------
                                   1803 ;pvItemToQueue             Allocated to stack - _bp -5
                                   1804 ;xTicksToWait              Allocated to stack - _bp -7
                                   1805 ;xCopyPosition             Allocated to stack - _bp -8
                                   1806 ;xQueue                    Allocated to registers r5 r3 r4 
                                   1807 ;xEntryTimeSet             Allocated to stack - _bp +17
                                   1808 ;xYieldRequired            Allocated to registers 
                                   1809 ;xTimeOut                  Allocated to stack - _bp +14
                                   1810 ;pxQueue                   Allocated to stack - _bp +11
                                   1811 ;sloc0                     Allocated to stack - _bp +1
                                   1812 ;sloc1                     Allocated to stack - _bp +8
                                   1813 ;sloc2                     Allocated to stack - _bp +4
                                   1814 ;sloc3                     Allocated to stack - _bp +5
                                   1815 ;------------------------------------------------------------
                           0004A2  1816 	G$xQueueGenericSend$0$0 ==.
                           0004A2  1817 	C$queue.c$805$1_0$201 ==.
                                   1818 ;	queue.c:805: BaseType_t xQueueGenericSend( QueueHandle_t xQueue,
                                   1819 ;	-----------------------------------------
                                   1820 ;	 function xQueueGenericSend
                                   1821 ;	-----------------------------------------
      000DDE                       1822 _xQueueGenericSend:
      000DDE C0 0D            [24] 1823 	push	_bp
      000DE0 85 81 0D         [24] 1824 	mov	_bp,sp
      000DE3 E5 81            [12] 1825 	mov	a,sp
      000DE5 24 11            [12] 1826 	add	a,#0x11
      000DE7 F5 81            [12] 1827 	mov	sp,a
      000DE9 AD 82            [24] 1828 	mov	r5,dpl
      000DEB AB 83            [24] 1829 	mov	r3,dph
      000DED AC F0            [24] 1830 	mov	r4,b
                           0004B3  1831 	C$queue.c$810$2_0$201 ==.
                                   1832 ;	queue.c:810: BaseType_t xEntryTimeSet = pdFALSE, xYieldRequired;
      000DEF E5 0D            [12] 1833 	mov	a,_bp
      000DF1 24 11            [12] 1834 	add	a,#0x11
      000DF3 F8               [12] 1835 	mov	r0,a
      000DF4 76 00            [12] 1836 	mov	@r0,#0x00
                           0004BA  1837 	C$queue.c$812$2_0$201 ==.
                                   1838 ;	queue.c:812: Queue_t * const pxQueue = xQueue;
      000DF6 E5 0D            [12] 1839 	mov	a,_bp
      000DF8 24 0B            [12] 1840 	add	a,#0x0b
      000DFA F8               [12] 1841 	mov	r0,a
      000DFB A6 05            [24] 1842 	mov	@r0,ar5
      000DFD 08               [12] 1843 	inc	r0
      000DFE A6 03            [24] 1844 	mov	@r0,ar3
      000E00 08               [12] 1845 	inc	r0
      000E01 A6 04            [24] 1846 	mov	@r0,ar4
                           0004C7  1847 	C$queue.c$815$4_0$204 ==.
                                   1848 ;	queue.c:815: configASSERT( !( ( pvItemToQueue == NULL ) && ( pxQueue->uxItemSize != ( UBaseType_t ) 0U ) ) );
      000E03 E5 0D            [12] 1849 	mov	a,_bp
      000E05 24 F8            [12] 1850 	add	a,#0xf8
      000E07 F8               [12] 1851 	mov	r0,a
      000E08 B6 02 04         [24] 1852 	cjne	@r0,#0x02,00174$
      000E0B 74 01            [12] 1853 	mov	a,#0x01
      000E0D 80 02            [24] 1854 	sjmp	00175$
      000E0F                       1855 00174$:
      000E0F 74 00            [12] 1856 	mov	a,#0x00
      000E11                       1857 00175$:
      000E11 FF               [12] 1858 	mov	r7,a
      000E12 E5 0D            [12] 1859 	mov	a,_bp
      000E14 24 0E            [12] 1860 	add	a,#0x0e
      000E16 FE               [12] 1861 	mov	r6,a
      000E17 E5 0D            [12] 1862 	mov	a,_bp
      000E19 24 04            [12] 1863 	add	a,#0x04
      000E1B F8               [12] 1864 	mov	r0,a
      000E1C A6 06            [24] 1865 	mov	@r0,ar6
      000E1E A8 0D            [24] 1866 	mov	r0,_bp
      000E20 08               [12] 1867 	inc	r0
      000E21 74 24            [12] 1868 	mov	a,#0x24
      000E23 2D               [12] 1869 	add	a,r5
      000E24 F6               [12] 1870 	mov	@r0,a
      000E25 74 00            [12] 1871 	mov	a,#0x00
      000E27 3B               [12] 1872 	addc	a,r3
      000E28 08               [12] 1873 	inc	r0
      000E29 F6               [12] 1874 	mov	@r0,a
      000E2A 08               [12] 1875 	inc	r0
      000E2B A6 04            [24] 1876 	mov	@r0,ar4
      000E2D E5 0D            [12] 1877 	mov	a,_bp
      000E2F 24 08            [12] 1878 	add	a,#0x08
      000E31 F8               [12] 1879 	mov	r0,a
      000E32 74 25            [12] 1880 	mov	a,#0x25
      000E34 2D               [12] 1881 	add	a,r5
      000E35 F6               [12] 1882 	mov	@r0,a
      000E36 74 00            [12] 1883 	mov	a,#0x00
      000E38 3B               [12] 1884 	addc	a,r3
      000E39 08               [12] 1885 	inc	r0
      000E3A F6               [12] 1886 	mov	@r0,a
      000E3B 08               [12] 1887 	inc	r0
      000E3C A6 04            [24] 1888 	mov	@r0,ar4
      000E3E                       1889 00128$:
                           000502  1890 	C$queue.c$828$2_0$201 ==.
                                   1891 ;	queue.c:828: taskENTER_CRITICAL();
      000E3E C0 E0            [24] 1892 	push ACC 
      000E40 C0 A8            [24] 1893 	push IE 
                                   1894 ;	assignBit
      000E42 C2 AF            [12] 1895 	clr	_EA
                           000508  1896 	C$queue.c$834$4_0$204 ==.
                                   1897 ;	queue.c:834: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
      000E44 A8 0D            [24] 1898 	mov	r0,_bp
      000E46 08               [12] 1899 	inc	r0
      000E47 86 82            [24] 1900 	mov	dpl,@r0
      000E49 08               [12] 1901 	inc	r0
      000E4A 86 83            [24] 1902 	mov	dph,@r0
      000E4C 08               [12] 1903 	inc	r0
      000E4D 86 F0            [24] 1904 	mov	b,@r0
      000E4F 12 7C 4D         [24] 1905 	lcall	__gptrget
      000E52 FD               [12] 1906 	mov	r5,a
      000E53 E5 0D            [12] 1907 	mov	a,_bp
      000E55 24 08            [12] 1908 	add	a,#0x08
      000E57 F8               [12] 1909 	mov	r0,a
      000E58 86 82            [24] 1910 	mov	dpl,@r0
      000E5A 08               [12] 1911 	inc	r0
      000E5B 86 83            [24] 1912 	mov	dph,@r0
      000E5D 08               [12] 1913 	inc	r0
      000E5E 86 F0            [24] 1914 	mov	b,@r0
      000E60 12 7C 4D         [24] 1915 	lcall	__gptrget
      000E63 FC               [12] 1916 	mov	r4,a
      000E64 C3               [12] 1917 	clr	c
      000E65 ED               [12] 1918 	mov	a,r5
      000E66 9C               [12] 1919 	subb	a,r4
      000E67 50 03            [24] 1920 	jnc	00176$
      000E69 02 0E 72         [24] 1921 	ljmp	00111$
      000E6C                       1922 00176$:
      000E6C EF               [12] 1923 	mov	a,r7
      000E6D 70 03            [24] 1924 	jnz	00177$
      000E6F 02 0E EA         [24] 1925 	ljmp	00112$
      000E72                       1926 00177$:
      000E72                       1927 00111$:
                           000536  1928 	C$queue.c$900$6_0$206 ==.
                                   1929 ;	queue.c:900: xYieldRequired = prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
      000E72 E5 0D            [12] 1930 	mov	a,_bp
      000E74 24 F8            [12] 1931 	add	a,#0xf8
      000E76 F8               [12] 1932 	mov	r0,a
      000E77 E6               [12] 1933 	mov	a,@r0
      000E78 C0 E0            [24] 1934 	push	acc
      000E7A E5 0D            [12] 1935 	mov	a,_bp
      000E7C 24 FB            [12] 1936 	add	a,#0xfb
      000E7E F8               [12] 1937 	mov	r0,a
      000E7F E6               [12] 1938 	mov	a,@r0
      000E80 C0 E0            [24] 1939 	push	acc
      000E82 08               [12] 1940 	inc	r0
      000E83 E6               [12] 1941 	mov	a,@r0
      000E84 C0 E0            [24] 1942 	push	acc
      000E86 08               [12] 1943 	inc	r0
      000E87 E6               [12] 1944 	mov	a,@r0
      000E88 C0 E0            [24] 1945 	push	acc
      000E8A E5 0D            [12] 1946 	mov	a,_bp
      000E8C 24 0B            [12] 1947 	add	a,#0x0b
      000E8E F8               [12] 1948 	mov	r0,a
      000E8F 86 82            [24] 1949 	mov	dpl,@r0
      000E91 08               [12] 1950 	inc	r0
      000E92 86 83            [24] 1951 	mov	dph,@r0
      000E94 08               [12] 1952 	inc	r0
      000E95 86 F0            [24] 1953 	mov	b,@r0
      000E97 12 1E 0F         [24] 1954 	lcall	_prvCopyDataToQueue
      000E9A E5 81            [12] 1955 	mov	a,sp
      000E9C 24 FC            [12] 1956 	add	a,#0xfc
      000E9E F5 81            [12] 1957 	mov	sp,a
                           000564  1958 	C$queue.c$904$6_0$206 ==.
                                   1959 ;	queue.c:904: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      000EA0 E5 0D            [12] 1960 	mov	a,_bp
      000EA2 24 0B            [12] 1961 	add	a,#0x0b
      000EA4 F8               [12] 1962 	mov	r0,a
      000EA5 74 18            [12] 1963 	mov	a,#0x18
      000EA7 26               [12] 1964 	add	a,@r0
      000EA8 FA               [12] 1965 	mov	r2,a
      000EA9 74 00            [12] 1966 	mov	a,#0x00
      000EAB 08               [12] 1967 	inc	r0
      000EAC 36               [12] 1968 	addc	a,@r0
      000EAD FB               [12] 1969 	mov	r3,a
      000EAE 08               [12] 1970 	inc	r0
      000EAF 86 04            [24] 1971 	mov	ar4,@r0
      000EB1 8A 82            [24] 1972 	mov	dpl,r2
      000EB3 8B 83            [24] 1973 	mov	dph,r3
      000EB5 8C F0            [24] 1974 	mov	b,r4
      000EB7 12 7C 4D         [24] 1975 	lcall	__gptrget
      000EBA 70 03            [24] 1976 	jnz	00178$
      000EBC 02 0E D9         [24] 1977 	ljmp	00105$
      000EBF                       1978 00178$:
                           000583  1979 	C$queue.c$906$7_0$207 ==.
                                   1980 ;	queue.c:906: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      000EBF E5 0D            [12] 1981 	mov	a,_bp
      000EC1 24 0B            [12] 1982 	add	a,#0x0b
      000EC3 F8               [12] 1983 	mov	r0,a
      000EC4 74 18            [12] 1984 	mov	a,#0x18
      000EC6 26               [12] 1985 	add	a,@r0
      000EC7 FA               [12] 1986 	mov	r2,a
      000EC8 74 00            [12] 1987 	mov	a,#0x00
      000ECA 08               [12] 1988 	inc	r0
      000ECB 36               [12] 1989 	addc	a,@r0
      000ECC FB               [12] 1990 	mov	r3,a
      000ECD 08               [12] 1991 	inc	r0
      000ECE 86 04            [24] 1992 	mov	ar4,@r0
      000ED0 8A 82            [24] 1993 	mov	dpl,r2
      000ED2 8B 83            [24] 1994 	mov	dph,r3
      000ED4 8C F0            [24] 1995 	mov	b,r4
      000ED6 12 40 62         [24] 1996 	lcall	_xTaskRemoveFromEventList
                           00059D  1997 	C$queue.c$919$6_0$206 ==.
                                   1998 ;	queue.c:919: else if( xYieldRequired != pdFALSE )
      000ED9                       1999 00105$:
                           00059D  2000 	C$queue.c$934$5_0$205 ==.
                                   2001 ;	queue.c:934: taskEXIT_CRITICAL();
      000ED9 D0 E0            [24] 2002 	pop ACC 
      000EDB 53 E0 80         [24] 2003 	anl	_ACC,#0x80
      000EDE E5 E0            [12] 2004 	mov	a,_ACC
      000EE0 42 A8            [12] 2005 	orl	_IE,a
      000EE2 D0 E0            [24] 2006 	pop ACC 
                           0005A8  2007 	C$queue.c$935$5_0$205 ==.
                                   2008 ;	queue.c:935: return pdPASS;
      000EE4 75 82 01         [24] 2009 	mov	dpl,#0x01
      000EE7 02 10 C5         [24] 2010 	ljmp	00130$
      000EEA                       2011 00112$:
                           0005AE  2012 	C$queue.c$939$5_0$212 ==.
                                   2013 ;	queue.c:939: if( xTicksToWait == ( TickType_t ) 0 )
      000EEA E5 0D            [12] 2014 	mov	a,_bp
      000EEC 24 F9            [12] 2015 	add	a,#0xf9
      000EEE F8               [12] 2016 	mov	r0,a
      000EEF E6               [12] 2017 	mov	a,@r0
      000EF0 08               [12] 2018 	inc	r0
      000EF1 46               [12] 2019 	orl	a,@r0
      000EF2 60 03            [24] 2020 	jz	00179$
      000EF4 02 0F 08         [24] 2021 	ljmp	00109$
      000EF7                       2022 00179$:
                           0005BB  2023 	C$queue.c$943$6_0$213 ==.
                                   2024 ;	queue.c:943: taskEXIT_CRITICAL();
      000EF7 D0 E0            [24] 2025 	pop ACC 
      000EF9 53 E0 80         [24] 2026 	anl	_ACC,#0x80
      000EFC E5 E0            [12] 2027 	mov	a,_ACC
      000EFE 42 A8            [12] 2028 	orl	_IE,a
      000F00 D0 E0            [24] 2029 	pop ACC 
                           0005C6  2030 	C$queue.c$948$6_0$213 ==.
                                   2031 ;	queue.c:948: return errQUEUE_FULL;
      000F02 75 82 00         [24] 2032 	mov	dpl,#0x00
      000F05 02 10 C5         [24] 2033 	ljmp	00130$
      000F08                       2034 00109$:
                           0005CC  2035 	C$queue.c$950$5_0$212 ==.
                                   2036 ;	queue.c:950: else if( xEntryTimeSet == pdFALSE )
      000F08 E5 0D            [12] 2037 	mov	a,_bp
      000F0A 24 11            [12] 2038 	add	a,#0x11
      000F0C F8               [12] 2039 	mov	r0,a
      000F0D E6               [12] 2040 	mov	a,@r0
      000F0E 60 03            [24] 2041 	jz	00180$
      000F10 02 0F 31         [24] 2042 	ljmp	00113$
      000F13                       2043 00180$:
                           0005D7  2044 	C$queue.c$954$6_0$214 ==.
                                   2045 ;	queue.c:954: vTaskInternalSetTimeOutState( &xTimeOut );
      000F13 8E 02            [24] 2046 	mov	ar2,r6
      000F15 7B 00            [12] 2047 	mov	r3,#0x00
      000F17 7C 40            [12] 2048 	mov	r4,#0x40
      000F19 8A 82            [24] 2049 	mov	dpl,r2
      000F1B 8B 83            [24] 2050 	mov	dph,r3
      000F1D 8C F0            [24] 2051 	mov	b,r4
      000F1F C0 07            [24] 2052 	push	ar7
      000F21 C0 06            [24] 2053 	push	ar6
      000F23 12 4E 56         [24] 2054 	lcall	_vTaskInternalSetTimeOutState
      000F26 D0 06            [24] 2055 	pop	ar6
      000F28 D0 07            [24] 2056 	pop	ar7
                           0005EE  2057 	C$queue.c$955$6_0$214 ==.
                                   2058 ;	queue.c:955: xEntryTimeSet = pdTRUE;
      000F2A E5 0D            [12] 2059 	mov	a,_bp
      000F2C 24 11            [12] 2060 	add	a,#0x11
      000F2E F8               [12] 2061 	mov	r0,a
      000F2F 76 01            [12] 2062 	mov	@r0,#0x01
      000F31                       2063 00113$:
                           0005F5  2064 	C$queue.c$964$2_0$201 ==.
                                   2065 ;	queue.c:964: taskEXIT_CRITICAL();
      000F31 D0 E0            [24] 2066 	pop ACC 
      000F33 53 E0 80         [24] 2067 	anl	_ACC,#0x80
      000F36 E5 E0            [12] 2068 	mov	a,_ACC
      000F38 42 A8            [12] 2069 	orl	_IE,a
      000F3A D0 E0            [24] 2070 	pop ACC 
                           000600  2071 	C$queue.c$969$3_0$203 ==.
                                   2072 ;	queue.c:969: vTaskSuspendAll();
      000F3C C0 07            [24] 2073 	push	ar7
      000F3E C0 06            [24] 2074 	push	ar6
      000F40 12 2E 9C         [24] 2075 	lcall	_vTaskSuspendAll
      000F43 D0 06            [24] 2076 	pop	ar6
      000F45 D0 07            [24] 2077 	pop	ar7
                           00060B  2078 	C$queue.c$970$3_0$203 ==.
                                   2079 ;	queue.c:970: prvLockQueue( pxQueue );
      000F47 C0 E0            [24] 2080 	push ACC 
      000F49 C0 A8            [24] 2081 	push IE 
                                   2082 ;	assignBit
      000F4B C2 AF            [12] 2083 	clr	_EA
      000F4D E5 0D            [12] 2084 	mov	a,_bp
      000F4F 24 0B            [12] 2085 	add	a,#0x0b
      000F51 F8               [12] 2086 	mov	r0,a
      000F52 74 27            [12] 2087 	mov	a,#0x27
      000F54 26               [12] 2088 	add	a,@r0
      000F55 FA               [12] 2089 	mov	r2,a
      000F56 74 00            [12] 2090 	mov	a,#0x00
      000F58 08               [12] 2091 	inc	r0
      000F59 36               [12] 2092 	addc	a,@r0
      000F5A FB               [12] 2093 	mov	r3,a
      000F5B 08               [12] 2094 	inc	r0
      000F5C 86 04            [24] 2095 	mov	ar4,@r0
      000F5E 8A 82            [24] 2096 	mov	dpl,r2
      000F60 8B 83            [24] 2097 	mov	dph,r3
      000F62 8C F0            [24] 2098 	mov	b,r4
      000F64 12 7C 4D         [24] 2099 	lcall	__gptrget
      000F67 FD               [12] 2100 	mov	r5,a
      000F68 BD FF 02         [24] 2101 	cjne	r5,#0xff,00181$
      000F6B 80 03            [24] 2102 	sjmp	00182$
      000F6D                       2103 00181$:
      000F6D 02 0F 7B         [24] 2104 	ljmp	00116$
      000F70                       2105 00182$:
      000F70 8A 82            [24] 2106 	mov	dpl,r2
      000F72 8B 83            [24] 2107 	mov	dph,r3
      000F74 8C F0            [24] 2108 	mov	b,r4
      000F76 74 00            [12] 2109 	mov	a,#0x00
      000F78 12 79 22         [24] 2110 	lcall	__gptrput
      000F7B                       2111 00116$:
      000F7B E5 0D            [12] 2112 	mov	a,_bp
      000F7D 24 0B            [12] 2113 	add	a,#0x0b
      000F7F F8               [12] 2114 	mov	r0,a
      000F80 74 28            [12] 2115 	mov	a,#0x28
      000F82 26               [12] 2116 	add	a,@r0
      000F83 FA               [12] 2117 	mov	r2,a
      000F84 74 00            [12] 2118 	mov	a,#0x00
      000F86 08               [12] 2119 	inc	r0
      000F87 36               [12] 2120 	addc	a,@r0
      000F88 FB               [12] 2121 	mov	r3,a
      000F89 08               [12] 2122 	inc	r0
      000F8A 86 04            [24] 2123 	mov	ar4,@r0
      000F8C 8A 82            [24] 2124 	mov	dpl,r2
      000F8E 8B 83            [24] 2125 	mov	dph,r3
      000F90 8C F0            [24] 2126 	mov	b,r4
      000F92 12 7C 4D         [24] 2127 	lcall	__gptrget
      000F95 FD               [12] 2128 	mov	r5,a
      000F96 BD FF 02         [24] 2129 	cjne	r5,#0xff,00183$
      000F99 80 03            [24] 2130 	sjmp	00184$
      000F9B                       2131 00183$:
      000F9B 02 0F A9         [24] 2132 	ljmp	00118$
      000F9E                       2133 00184$:
      000F9E 8A 82            [24] 2134 	mov	dpl,r2
      000FA0 8B 83            [24] 2135 	mov	dph,r3
      000FA2 8C F0            [24] 2136 	mov	b,r4
      000FA4 74 00            [12] 2137 	mov	a,#0x00
      000FA6 12 79 22         [24] 2138 	lcall	__gptrput
      000FA9                       2139 00118$:
      000FA9 C0 07            [24] 2140 	push	ar7
      000FAB D0 E0            [24] 2141 	pop ACC 
      000FAD 53 E0 80         [24] 2142 	anl	_ACC,#0x80
      000FB0 E5 E0            [12] 2143 	mov	a,_ACC
      000FB2 42 A8            [12] 2144 	orl	_IE,a
      000FB4 D0 E0            [24] 2145 	pop ACC 
                           00067A  2146 	C$queue.c$973$3_0$203 ==.
                                   2147 ;	queue.c:973: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      000FB6 E5 0D            [12] 2148 	mov	a,_bp
      000FB8 24 F9            [12] 2149 	add	a,#0xf9
      000FBA FC               [12] 2150 	mov	r4,a
      000FBB E5 0D            [12] 2151 	mov	a,_bp
      000FBD 24 05            [12] 2152 	add	a,#0x05
      000FBF F8               [12] 2153 	mov	r0,a
      000FC0 A6 04            [24] 2154 	mov	@r0,ar4
      000FC2 08               [12] 2155 	inc	r0
      000FC3 76 00            [12] 2156 	mov	@r0,#0x00
      000FC5 08               [12] 2157 	inc	r0
      000FC6 76 40            [12] 2158 	mov	@r0,#0x40
      000FC8 E5 0D            [12] 2159 	mov	a,_bp
      000FCA 24 04            [12] 2160 	add	a,#0x04
      000FCC F8               [12] 2161 	mov	r0,a
      000FCD 86 04            [24] 2162 	mov	ar4,@r0
      000FCF 7D 00            [12] 2163 	mov	r5,#0x00
      000FD1 7F 40            [12] 2164 	mov	r7,#0x40
      000FD3 C0 06            [24] 2165 	push	ar6
      000FD5 E5 0D            [12] 2166 	mov	a,_bp
      000FD7 24 05            [12] 2167 	add	a,#0x05
      000FD9 F8               [12] 2168 	mov	r0,a
      000FDA E6               [12] 2169 	mov	a,@r0
      000FDB C0 E0            [24] 2170 	push	acc
      000FDD 08               [12] 2171 	inc	r0
      000FDE E6               [12] 2172 	mov	a,@r0
      000FDF C0 E0            [24] 2173 	push	acc
      000FE1 08               [12] 2174 	inc	r0
      000FE2 E6               [12] 2175 	mov	a,@r0
      000FE3 C0 E0            [24] 2176 	push	acc
      000FE5 8C 82            [24] 2177 	mov	dpl,r4
      000FE7 8D 83            [24] 2178 	mov	dph,r5
      000FE9 8F F0            [24] 2179 	mov	b,r7
      000FEB 12 4E 88         [24] 2180 	lcall	_xTaskCheckForTimeOut
      000FEE AF 82            [24] 2181 	mov	r7,dpl
      000FF0 15 81            [12] 2182 	dec	sp
      000FF2 15 81            [12] 2183 	dec	sp
      000FF4 15 81            [12] 2184 	dec	sp
      000FF6 D0 06            [24] 2185 	pop	ar6
      000FF8 EF               [12] 2186 	mov	a,r7
      000FF9 D0 07            [24] 2187 	pop	ar7
      000FFB 60 03            [24] 2188 	jz	00185$
      000FFD 02 10 AF         [24] 2189 	ljmp	00125$
      001000                       2190 00185$:
                           0006C4  2191 	C$queue.c$975$4_0$219 ==.
                                   2192 ;	queue.c:975: if( prvIsQueueFull( pxQueue ) != pdFALSE )
      001000 E5 0D            [12] 2193 	mov	a,_bp
      001002 24 0B            [12] 2194 	add	a,#0x0b
      001004 F8               [12] 2195 	mov	r0,a
      001005 86 82            [24] 2196 	mov	dpl,@r0
      001007 08               [12] 2197 	inc	r0
      001008 86 83            [24] 2198 	mov	dph,@r0
      00100A 08               [12] 2199 	inc	r0
      00100B 86 F0            [24] 2200 	mov	b,@r0
      00100D C0 07            [24] 2201 	push	ar7
      00100F C0 06            [24] 2202 	push	ar6
      001011 12 24 B5         [24] 2203 	lcall	_prvIsQueueFull
      001014 E5 82            [12] 2204 	mov	a,dpl
      001016 D0 06            [24] 2205 	pop	ar6
      001018 D0 07            [24] 2206 	pop	ar7
      00101A 70 03            [24] 2207 	jnz	00186$
      00101C 02 10 89         [24] 2208 	ljmp	00122$
      00101F                       2209 00186$:
                           0006E3  2210 	C$queue.c$978$5_0$220 ==.
                                   2211 ;	queue.c:978: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToSend ), xTicksToWait );
      00101F E5 0D            [12] 2212 	mov	a,_bp
      001021 24 0B            [12] 2213 	add	a,#0x0b
      001023 F8               [12] 2214 	mov	r0,a
      001024 74 0C            [12] 2215 	mov	a,#0x0c
      001026 26               [12] 2216 	add	a,@r0
      001027 FB               [12] 2217 	mov	r3,a
      001028 74 00            [12] 2218 	mov	a,#0x00
      00102A 08               [12] 2219 	inc	r0
      00102B 36               [12] 2220 	addc	a,@r0
      00102C FC               [12] 2221 	mov	r4,a
      00102D 08               [12] 2222 	inc	r0
      00102E 86 05            [24] 2223 	mov	ar5,@r0
      001030 C0 07            [24] 2224 	push	ar7
      001032 C0 06            [24] 2225 	push	ar6
      001034 E5 0D            [12] 2226 	mov	a,_bp
      001036 24 F9            [12] 2227 	add	a,#0xf9
      001038 F8               [12] 2228 	mov	r0,a
      001039 E6               [12] 2229 	mov	a,@r0
      00103A C0 E0            [24] 2230 	push	acc
      00103C 08               [12] 2231 	inc	r0
      00103D E6               [12] 2232 	mov	a,@r0
      00103E C0 E0            [24] 2233 	push	acc
      001040 8B 82            [24] 2234 	mov	dpl,r3
      001042 8C 83            [24] 2235 	mov	dph,r4
      001044 8D F0            [24] 2236 	mov	b,r5
      001046 12 3E 46         [24] 2237 	lcall	_vTaskPlaceOnEventList
      001049 15 81            [12] 2238 	dec	sp
      00104B 15 81            [12] 2239 	dec	sp
      00104D D0 06            [24] 2240 	pop	ar6
      00104F D0 07            [24] 2241 	pop	ar7
                           000715  2242 	C$queue.c$985$5_0$220 ==.
                                   2243 ;	queue.c:985: prvUnlockQueue( pxQueue );
      001051 E5 0D            [12] 2244 	mov	a,_bp
      001053 24 0B            [12] 2245 	add	a,#0x0b
      001055 F8               [12] 2246 	mov	r0,a
      001056 86 82            [24] 2247 	mov	dpl,@r0
      001058 08               [12] 2248 	inc	r0
      001059 86 83            [24] 2249 	mov	dph,@r0
      00105B 08               [12] 2250 	inc	r0
      00105C 86 F0            [24] 2251 	mov	b,@r0
      00105E C0 07            [24] 2252 	push	ar7
      001060 C0 06            [24] 2253 	push	ar6
      001062 12 22 C0         [24] 2254 	lcall	_prvUnlockQueue
      001065 D0 06            [24] 2255 	pop	ar6
      001067 D0 07            [24] 2256 	pop	ar7
                           00072D  2257 	C$queue.c$992$5_0$220 ==.
                                   2258 ;	queue.c:992: if( xTaskResumeAll() == pdFALSE )
      001069 C0 07            [24] 2259 	push	ar7
      00106B C0 06            [24] 2260 	push	ar6
      00106D 12 2E A4         [24] 2261 	lcall	_xTaskResumeAll
      001070 E5 82            [12] 2262 	mov	a,dpl
      001072 D0 06            [24] 2263 	pop	ar6
      001074 D0 07            [24] 2264 	pop	ar7
      001076 60 03            [24] 2265 	jz	00187$
      001078 02 0E 3E         [24] 2266 	ljmp	00128$
      00107B                       2267 00187$:
                           00073F  2268 	C$queue.c$994$6_0$221 ==.
                                   2269 ;	queue.c:994: portYIELD_WITHIN_API();
      00107B C0 07            [24] 2270 	push	ar7
      00107D C0 06            [24] 2271 	push	ar6
      00107F 12 77 3C         [24] 2272 	lcall	_vPortYield
      001082 D0 06            [24] 2273 	pop	ar6
      001084 D0 07            [24] 2274 	pop	ar7
      001086 02 0E 3E         [24] 2275 	ljmp	00128$
      001089                       2276 00122$:
                           00074D  2277 	C$queue.c$1000$5_0$222 ==.
                                   2278 ;	queue.c:1000: prvUnlockQueue( pxQueue );
      001089 E5 0D            [12] 2279 	mov	a,_bp
      00108B 24 0B            [12] 2280 	add	a,#0x0b
      00108D F8               [12] 2281 	mov	r0,a
      00108E 86 82            [24] 2282 	mov	dpl,@r0
      001090 08               [12] 2283 	inc	r0
      001091 86 83            [24] 2284 	mov	dph,@r0
      001093 08               [12] 2285 	inc	r0
      001094 86 F0            [24] 2286 	mov	b,@r0
      001096 C0 07            [24] 2287 	push	ar7
      001098 C0 06            [24] 2288 	push	ar6
      00109A 12 22 C0         [24] 2289 	lcall	_prvUnlockQueue
      00109D D0 06            [24] 2290 	pop	ar6
      00109F D0 07            [24] 2291 	pop	ar7
                           000765  2292 	C$queue.c$1001$5_0$222 ==.
                                   2293 ;	queue.c:1001: ( void ) xTaskResumeAll();
      0010A1 C0 07            [24] 2294 	push	ar7
      0010A3 C0 06            [24] 2295 	push	ar6
      0010A5 12 2E A4         [24] 2296 	lcall	_xTaskResumeAll
      0010A8 D0 06            [24] 2297 	pop	ar6
      0010AA D0 07            [24] 2298 	pop	ar7
      0010AC 02 0E 3E         [24] 2299 	ljmp	00128$
      0010AF                       2300 00125$:
                           000773  2301 	C$queue.c$1007$4_0$223 ==.
                                   2302 ;	queue.c:1007: prvUnlockQueue( pxQueue );
      0010AF E5 0D            [12] 2303 	mov	a,_bp
      0010B1 24 0B            [12] 2304 	add	a,#0x0b
      0010B3 F8               [12] 2305 	mov	r0,a
      0010B4 86 82            [24] 2306 	mov	dpl,@r0
      0010B6 08               [12] 2307 	inc	r0
      0010B7 86 83            [24] 2308 	mov	dph,@r0
      0010B9 08               [12] 2309 	inc	r0
      0010BA 86 F0            [24] 2310 	mov	b,@r0
      0010BC 12 22 C0         [24] 2311 	lcall	_prvUnlockQueue
                           000783  2312 	C$queue.c$1008$4_0$223 ==.
                                   2313 ;	queue.c:1008: ( void ) xTaskResumeAll();
      0010BF 12 2E A4         [24] 2314 	lcall	_xTaskResumeAll
                           000786  2315 	C$queue.c$1011$4_0$223 ==.
                                   2316 ;	queue.c:1011: return errQUEUE_FULL;
      0010C2 75 82 00         [24] 2317 	mov	dpl,#0x00
      0010C5                       2318 00130$:
                           000789  2319 	C$queue.c$1014$2_0$201 ==.
                                   2320 ;	queue.c:1014: }
      0010C5 85 0D 81         [24] 2321 	mov	sp,_bp
      0010C8 D0 0D            [24] 2322 	pop	_bp
                           00078E  2323 	C$queue.c$1014$2_0$201 ==.
                           00078E  2324 	XG$xQueueGenericSend$0$0 ==.
      0010CA 22               [24] 2325 	ret
                                   2326 ;------------------------------------------------------------
                                   2327 ;Allocation info for local variables in function 'xQueueGenericSendFromISR'
                                   2328 ;------------------------------------------------------------
                                   2329 ;pvItemToQueue             Allocated to stack - _bp -5
                                   2330 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
                                   2331 ;xCopyPosition             Allocated to stack - _bp -9
                                   2332 ;xQueue                    Allocated to registers r2 r3 r4 
                                   2333 ;xReturn                   Allocated to registers r7 
                                   2334 ;uxSavedInterruptStatus    Allocated to registers 
                                   2335 ;pxQueue                   Allocated to stack - _bp +1
                                   2336 ;cTxLock                   Allocated to registers r7 
                                   2337 ;uxPreviousMessagesWaiting Allocated to registers 
                                   2338 ;------------------------------------------------------------
                           00078F  2339 	G$xQueueGenericSendFromISR$0$0 ==.
                           00078F  2340 	C$queue.c$1017$2_0$225 ==.
                                   2341 ;	queue.c:1017: BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue,
                                   2342 ;	-----------------------------------------
                                   2343 ;	 function xQueueGenericSendFromISR
                                   2344 ;	-----------------------------------------
      0010CB                       2345 _xQueueGenericSendFromISR:
      0010CB C0 0D            [24] 2346 	push	_bp
      0010CD 85 81 0D         [24] 2347 	mov	_bp,sp
      0010D0 05 81            [12] 2348 	inc	sp
      0010D2 05 81            [12] 2349 	inc	sp
      0010D4 05 81            [12] 2350 	inc	sp
      0010D6 AA 82            [24] 2351 	mov	r2,dpl
      0010D8 AB 83            [24] 2352 	mov	r3,dph
      0010DA AC F0            [24] 2353 	mov	r4,b
                           0007A0  2354 	C$queue.c$1024$2_0$225 ==.
                                   2355 ;	queue.c:1024: Queue_t * const pxQueue = xQueue;
      0010DC A8 0D            [24] 2356 	mov	r0,_bp
      0010DE 08               [12] 2357 	inc	r0
      0010DF A6 02            [24] 2358 	mov	@r0,ar2
      0010E1 08               [12] 2359 	inc	r0
      0010E2 A6 03            [24] 2360 	mov	@r0,ar3
      0010E4 08               [12] 2361 	inc	r0
      0010E5 A6 04            [24] 2362 	mov	@r0,ar4
                           0007AB  2363 	C$queue.c$1053$2_0$226 ==.
                                   2364 ;	queue.c:1053: if( ( pxQueue->uxMessagesWaiting < pxQueue->uxLength ) || ( xCopyPosition == queueOVERWRITE ) )
      0010E7 74 24            [12] 2365 	mov	a,#0x24
      0010E9 2A               [12] 2366 	add	a,r2
      0010EA FD               [12] 2367 	mov	r5,a
      0010EB 74 00            [12] 2368 	mov	a,#0x00
      0010ED 3B               [12] 2369 	addc	a,r3
      0010EE FE               [12] 2370 	mov	r6,a
      0010EF 8C 07            [24] 2371 	mov	ar7,r4
      0010F1 8D 82            [24] 2372 	mov	dpl,r5
      0010F3 8E 83            [24] 2373 	mov	dph,r6
      0010F5 8F F0            [24] 2374 	mov	b,r7
      0010F7 12 7C 4D         [24] 2375 	lcall	__gptrget
      0010FA FD               [12] 2376 	mov	r5,a
      0010FB 74 25            [12] 2377 	mov	a,#0x25
      0010FD 2A               [12] 2378 	add	a,r2
      0010FE FC               [12] 2379 	mov	r4,a
      0010FF 74 00            [12] 2380 	mov	a,#0x00
      001101 3B               [12] 2381 	addc	a,r3
      001102 FE               [12] 2382 	mov	r6,a
      001103 8C 07            [24] 2383 	mov	ar7,r4
      001105 8C 82            [24] 2384 	mov	dpl,r4
      001107 8E 83            [24] 2385 	mov	dph,r6
      001109 8F F0            [24] 2386 	mov	b,r7
      00110B 12 7C 4D         [24] 2387 	lcall	__gptrget
      00110E FC               [12] 2388 	mov	r4,a
      00110F C3               [12] 2389 	clr	c
      001110 ED               [12] 2390 	mov	a,r5
      001111 9C               [12] 2391 	subb	a,r4
      001112 50 03            [24] 2392 	jnc	00138$
      001114 02 11 24         [24] 2393 	ljmp	00110$
      001117                       2394 00138$:
      001117 E5 0D            [12] 2395 	mov	a,_bp
      001119 24 F7            [12] 2396 	add	a,#0xf7
      00111B F8               [12] 2397 	mov	r0,a
      00111C B6 02 02         [24] 2398 	cjne	@r0,#0x02,00139$
      00111F 80 03            [24] 2399 	sjmp	00140$
      001121                       2400 00139$:
      001121 02 12 10         [24] 2401 	ljmp	00111$
      001124                       2402 00140$:
      001124                       2403 00110$:
                           0007E8  2404 	C$queue.c$1055$3_0$227 ==.
                                   2405 ;	queue.c:1055: const int8_t cTxLock = pxQueue->cTxLock;
      001124 A8 0D            [24] 2406 	mov	r0,_bp
      001126 08               [12] 2407 	inc	r0
      001127 74 28            [12] 2408 	mov	a,#0x28
      001129 26               [12] 2409 	add	a,@r0
      00112A FD               [12] 2410 	mov	r5,a
      00112B 74 00            [12] 2411 	mov	a,#0x00
      00112D 08               [12] 2412 	inc	r0
      00112E 36               [12] 2413 	addc	a,@r0
      00112F FE               [12] 2414 	mov	r6,a
      001130 08               [12] 2415 	inc	r0
      001131 86 07            [24] 2416 	mov	ar7,@r0
      001133 8D 82            [24] 2417 	mov	dpl,r5
      001135 8E 83            [24] 2418 	mov	dph,r6
      001137 8F F0            [24] 2419 	mov	b,r7
      001139 12 7C 4D         [24] 2420 	lcall	__gptrget
      00113C FF               [12] 2421 	mov	r7,a
                           000801  2422 	C$queue.c$1056$3_0$227 ==.
                                   2423 ;	queue.c:1056: const UBaseType_t uxPreviousMessagesWaiting = pxQueue->uxMessagesWaiting;
      00113D A8 0D            [24] 2424 	mov	r0,_bp
      00113F 08               [12] 2425 	inc	r0
      001140 74 24            [12] 2426 	mov	a,#0x24
      001142 26               [12] 2427 	add	a,@r0
      001143 FC               [12] 2428 	mov	r4,a
      001144 74 00            [12] 2429 	mov	a,#0x00
      001146 08               [12] 2430 	inc	r0
      001147 36               [12] 2431 	addc	a,@r0
      001148 FD               [12] 2432 	mov	r5,a
      001149 08               [12] 2433 	inc	r0
      00114A 86 06            [24] 2434 	mov	ar6,@r0
      00114C 8C 82            [24] 2435 	mov	dpl,r4
      00114E 8D 83            [24] 2436 	mov	dph,r5
      001150 8E F0            [24] 2437 	mov	b,r6
      001152 12 7C 4D         [24] 2438 	lcall	__gptrget
                           000819  2439 	C$queue.c$1065$3_0$227 ==.
                                   2440 ;	queue.c:1065: ( void ) prvCopyDataToQueue( pxQueue, pvItemToQueue, xCopyPosition );
      001155 C0 07            [24] 2441 	push	ar7
      001157 E5 0D            [12] 2442 	mov	a,_bp
      001159 24 F7            [12] 2443 	add	a,#0xf7
      00115B F8               [12] 2444 	mov	r0,a
      00115C E6               [12] 2445 	mov	a,@r0
      00115D C0 E0            [24] 2446 	push	acc
      00115F E5 0D            [12] 2447 	mov	a,_bp
      001161 24 FB            [12] 2448 	add	a,#0xfb
      001163 F8               [12] 2449 	mov	r0,a
      001164 E6               [12] 2450 	mov	a,@r0
      001165 C0 E0            [24] 2451 	push	acc
      001167 08               [12] 2452 	inc	r0
      001168 E6               [12] 2453 	mov	a,@r0
      001169 C0 E0            [24] 2454 	push	acc
      00116B 08               [12] 2455 	inc	r0
      00116C E6               [12] 2456 	mov	a,@r0
      00116D C0 E0            [24] 2457 	push	acc
      00116F A8 0D            [24] 2458 	mov	r0,_bp
      001171 08               [12] 2459 	inc	r0
      001172 86 82            [24] 2460 	mov	dpl,@r0
      001174 08               [12] 2461 	inc	r0
      001175 86 83            [24] 2462 	mov	dph,@r0
      001177 08               [12] 2463 	inc	r0
      001178 86 F0            [24] 2464 	mov	b,@r0
      00117A 12 1E 0F         [24] 2465 	lcall	_prvCopyDataToQueue
      00117D E5 81            [12] 2466 	mov	a,sp
      00117F 24 FC            [12] 2467 	add	a,#0xfc
      001181 F5 81            [12] 2468 	mov	sp,a
      001183 D0 07            [24] 2469 	pop	ar7
                           000849  2470 	C$queue.c$1069$3_0$227 ==.
                                   2471 ;	queue.c:1069: if( cTxLock == queueUNLOCKED )
      001185 BF FF 02         [24] 2472 	cjne	r7,#0xff,00141$
      001188 80 03            [24] 2473 	sjmp	00142$
      00118A                       2474 00141$:
      00118A 02 11 F1         [24] 2475 	ljmp	00108$
      00118D                       2476 00142$:
                           000851  2477 	C$queue.c$1131$5_0$229 ==.
                                   2478 ;	queue.c:1131: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      00118D A8 0D            [24] 2479 	mov	r0,_bp
      00118F 08               [12] 2480 	inc	r0
      001190 74 18            [12] 2481 	mov	a,#0x18
      001192 26               [12] 2482 	add	a,@r0
      001193 FC               [12] 2483 	mov	r4,a
      001194 74 00            [12] 2484 	mov	a,#0x00
      001196 08               [12] 2485 	inc	r0
      001197 36               [12] 2486 	addc	a,@r0
      001198 FD               [12] 2487 	mov	r5,a
      001199 08               [12] 2488 	inc	r0
      00119A 86 06            [24] 2489 	mov	ar6,@r0
      00119C 8C 82            [24] 2490 	mov	dpl,r4
      00119E 8D 83            [24] 2491 	mov	dph,r5
      0011A0 8E F0            [24] 2492 	mov	b,r6
      0011A2 12 7C 4D         [24] 2493 	lcall	__gptrget
      0011A5 70 03            [24] 2494 	jnz	00143$
      0011A7 02 12 0B         [24] 2495 	ljmp	00109$
      0011AA                       2496 00143$:
                           00086E  2497 	C$queue.c$1133$6_0$230 ==.
                                   2498 ;	queue.c:1133: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      0011AA A8 0D            [24] 2499 	mov	r0,_bp
      0011AC 08               [12] 2500 	inc	r0
      0011AD 74 18            [12] 2501 	mov	a,#0x18
      0011AF 26               [12] 2502 	add	a,@r0
      0011B0 FC               [12] 2503 	mov	r4,a
      0011B1 74 00            [12] 2504 	mov	a,#0x00
      0011B3 08               [12] 2505 	inc	r0
      0011B4 36               [12] 2506 	addc	a,@r0
      0011B5 FD               [12] 2507 	mov	r5,a
      0011B6 08               [12] 2508 	inc	r0
      0011B7 86 06            [24] 2509 	mov	ar6,@r0
      0011B9 8C 82            [24] 2510 	mov	dpl,r4
      0011BB 8D 83            [24] 2511 	mov	dph,r5
      0011BD 8E F0            [24] 2512 	mov	b,r6
      0011BF 12 40 62         [24] 2513 	lcall	_xTaskRemoveFromEventList
      0011C2 E5 82            [12] 2514 	mov	a,dpl
      0011C4 70 03            [24] 2515 	jnz	00144$
      0011C6 02 12 0B         [24] 2516 	ljmp	00109$
      0011C9                       2517 00144$:
                           00088D  2518 	C$queue.c$1137$7_0$231 ==.
                                   2519 ;	queue.c:1137: if( pxHigherPriorityTaskWoken != NULL )
      0011C9 E5 0D            [12] 2520 	mov	a,_bp
      0011CB 24 F8            [12] 2521 	add	a,#0xf8
      0011CD F8               [12] 2522 	mov	r0,a
      0011CE E6               [12] 2523 	mov	a,@r0
      0011CF 08               [12] 2524 	inc	r0
      0011D0 46               [12] 2525 	orl	a,@r0
      0011D1 70 03            [24] 2526 	jnz	00145$
      0011D3 02 12 0B         [24] 2527 	ljmp	00109$
      0011D6                       2528 00145$:
                           00089A  2529 	C$queue.c$1139$8_0$232 ==.
                                   2530 ;	queue.c:1139: *pxHigherPriorityTaskWoken = pdTRUE;
      0011D6 E5 0D            [12] 2531 	mov	a,_bp
      0011D8 24 F8            [12] 2532 	add	a,#0xf8
      0011DA F8               [12] 2533 	mov	r0,a
      0011DB 86 04            [24] 2534 	mov	ar4,@r0
      0011DD 08               [12] 2535 	inc	r0
      0011DE 86 05            [24] 2536 	mov	ar5,@r0
      0011E0 08               [12] 2537 	inc	r0
      0011E1 86 06            [24] 2538 	mov	ar6,@r0
      0011E3 8C 82            [24] 2539 	mov	dpl,r4
      0011E5 8D 83            [24] 2540 	mov	dph,r5
      0011E7 8E F0            [24] 2541 	mov	b,r6
      0011E9 74 01            [12] 2542 	mov	a,#0x01
      0011EB 12 79 22         [24] 2543 	lcall	__gptrput
                           0008B2  2544 	C$queue.c$1157$3_0$227 ==.
                                   2545 ;	queue.c:1157: ( void ) uxPreviousMessagesWaiting;
      0011EE 02 12 0B         [24] 2546 	ljmp	00109$
      0011F1                       2547 00108$:
                           0008B5  2548 	C$queue.c$1167$4_0$236 ==.
                                   2549 ;	queue.c:1167: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
      0011F1 A8 0D            [24] 2550 	mov	r0,_bp
      0011F3 08               [12] 2551 	inc	r0
      0011F4 74 28            [12] 2552 	mov	a,#0x28
      0011F6 26               [12] 2553 	add	a,@r0
      0011F7 FC               [12] 2554 	mov	r4,a
      0011F8 74 00            [12] 2555 	mov	a,#0x00
      0011FA 08               [12] 2556 	inc	r0
      0011FB 36               [12] 2557 	addc	a,@r0
      0011FC FD               [12] 2558 	mov	r5,a
      0011FD 08               [12] 2559 	inc	r0
      0011FE 86 06            [24] 2560 	mov	ar6,@r0
      001200 0F               [12] 2561 	inc	r7
      001201 8C 82            [24] 2562 	mov	dpl,r4
      001203 8D 83            [24] 2563 	mov	dph,r5
      001205 8E F0            [24] 2564 	mov	b,r6
      001207 EF               [12] 2565 	mov	a,r7
      001208 12 79 22         [24] 2566 	lcall	__gptrput
      00120B                       2567 00109$:
                           0008CF  2568 	C$queue.c$1170$3_0$227 ==.
                                   2569 ;	queue.c:1170: xReturn = pdPASS;
      00120B 7F 01            [12] 2570 	mov	r7,#0x01
      00120D 02 12 12         [24] 2571 	ljmp	00112$
      001210                       2572 00111$:
                           0008D4  2573 	C$queue.c$1175$3_0$237 ==.
                                   2574 ;	queue.c:1175: xReturn = errQUEUE_FULL;
      001210 7F 00            [12] 2575 	mov	r7,#0x00
      001212                       2576 00112$:
                           0008D6  2577 	C$queue.c$1180$1_0$225 ==.
                                   2578 ;	queue.c:1180: return xReturn;
      001212 8F 82            [24] 2579 	mov	dpl,r7
      001214                       2580 00114$:
                           0008D8  2581 	C$queue.c$1181$1_0$225 ==.
                                   2582 ;	queue.c:1181: }
      001214 85 0D 81         [24] 2583 	mov	sp,_bp
      001217 D0 0D            [24] 2584 	pop	_bp
                           0008DD  2585 	C$queue.c$1181$1_0$225 ==.
                           0008DD  2586 	XG$xQueueGenericSendFromISR$0$0 ==.
      001219 22               [24] 2587 	ret
                                   2588 ;------------------------------------------------------------
                                   2589 ;Allocation info for local variables in function 'xQueueGiveFromISR'
                                   2590 ;------------------------------------------------------------
                                   2591 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -5
                                   2592 ;xQueue                    Allocated to stack - _bp +1
                                   2593 ;xReturn                   Allocated to registers r7 
                                   2594 ;uxSavedInterruptStatus    Allocated to registers 
                                   2595 ;pxQueue                   Allocated to registers 
                                   2596 ;uxMessagesWaiting         Allocated to stack - _bp +7
                                   2597 ;cTxLock                   Allocated to registers r7 
                                   2598 ;sloc0                     Allocated to stack - _bp +4
                                   2599 ;------------------------------------------------------------
                           0008DE  2600 	G$xQueueGiveFromISR$0$0 ==.
                           0008DE  2601 	C$queue.c$1184$1_0$239 ==.
                                   2602 ;	queue.c:1184: BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue,
                                   2603 ;	-----------------------------------------
                                   2604 ;	 function xQueueGiveFromISR
                                   2605 ;	-----------------------------------------
      00121A                       2606 _xQueueGiveFromISR:
      00121A C0 0D            [24] 2607 	push	_bp
      00121C 85 81 0D         [24] 2608 	mov	_bp,sp
      00121F C0 82            [24] 2609 	push	dpl
      001221 C0 83            [24] 2610 	push	dph
      001223 C0 F0            [24] 2611 	push	b
      001225 E5 81            [12] 2612 	mov	a,sp
      001227 24 04            [12] 2613 	add	a,#0x04
      001229 F5 81            [12] 2614 	mov	sp,a
                           0008EF  2615 	C$queue.c$1226$2_0$240 ==.
                                   2616 ;	queue.c:1226: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      00122B A8 0D            [24] 2617 	mov	r0,_bp
      00122D 08               [12] 2618 	inc	r0
      00122E 74 24            [12] 2619 	mov	a,#0x24
      001230 26               [12] 2620 	add	a,@r0
      001231 FA               [12] 2621 	mov	r2,a
      001232 74 00            [12] 2622 	mov	a,#0x00
      001234 08               [12] 2623 	inc	r0
      001235 36               [12] 2624 	addc	a,@r0
      001236 FB               [12] 2625 	mov	r3,a
      001237 08               [12] 2626 	inc	r0
      001238 86 04            [24] 2627 	mov	ar4,@r0
      00123A 8A 82            [24] 2628 	mov	dpl,r2
      00123C 8B 83            [24] 2629 	mov	dph,r3
      00123E 8C F0            [24] 2630 	mov	b,r4
      001240 E5 0D            [12] 2631 	mov	a,_bp
      001242 24 07            [12] 2632 	add	a,#0x07
      001244 F8               [12] 2633 	mov	r0,a
      001245 12 7C 4D         [24] 2634 	lcall	__gptrget
      001248 F6               [12] 2635 	mov	@r0,a
                           00090D  2636 	C$queue.c$1231$2_0$240 ==.
                                   2637 ;	queue.c:1231: if( uxMessagesWaiting < pxQueue->uxLength )
      001249 A8 0D            [24] 2638 	mov	r0,_bp
      00124B 08               [12] 2639 	inc	r0
      00124C 74 25            [12] 2640 	mov	a,#0x25
      00124E 26               [12] 2641 	add	a,@r0
      00124F FD               [12] 2642 	mov	r5,a
      001250 74 00            [12] 2643 	mov	a,#0x00
      001252 08               [12] 2644 	inc	r0
      001253 36               [12] 2645 	addc	a,@r0
      001254 FE               [12] 2646 	mov	r6,a
      001255 08               [12] 2647 	inc	r0
      001256 86 07            [24] 2648 	mov	ar7,@r0
      001258 8D 82            [24] 2649 	mov	dpl,r5
      00125A 8E 83            [24] 2650 	mov	dph,r6
      00125C 8F F0            [24] 2651 	mov	b,r7
      00125E 12 7C 4D         [24] 2652 	lcall	__gptrget
      001261 FD               [12] 2653 	mov	r5,a
      001262 E5 0D            [12] 2654 	mov	a,_bp
      001264 24 07            [12] 2655 	add	a,#0x07
      001266 F8               [12] 2656 	mov	r0,a
      001267 C3               [12] 2657 	clr	c
      001268 E6               [12] 2658 	mov	a,@r0
      001269 9D               [12] 2659 	subb	a,r5
      00126A 40 03            [24] 2660 	jc	00137$
      00126C 02 13 2B         [24] 2661 	ljmp	00111$
      00126F                       2662 00137$:
                           000933  2663 	C$queue.c$1233$3_0$241 ==.
                                   2664 ;	queue.c:1233: const int8_t cTxLock = pxQueue->cTxLock;
      00126F A8 0D            [24] 2665 	mov	r0,_bp
      001271 08               [12] 2666 	inc	r0
      001272 E5 0D            [12] 2667 	mov	a,_bp
      001274 24 04            [12] 2668 	add	a,#0x04
      001276 F9               [12] 2669 	mov	r1,a
      001277 74 28            [12] 2670 	mov	a,#0x28
      001279 26               [12] 2671 	add	a,@r0
      00127A F7               [12] 2672 	mov	@r1,a
      00127B 74 00            [12] 2673 	mov	a,#0x00
      00127D 08               [12] 2674 	inc	r0
      00127E 36               [12] 2675 	addc	a,@r0
      00127F 09               [12] 2676 	inc	r1
      001280 F7               [12] 2677 	mov	@r1,a
      001281 08               [12] 2678 	inc	r0
      001282 E6               [12] 2679 	mov	a,@r0
      001283 09               [12] 2680 	inc	r1
      001284 F7               [12] 2681 	mov	@r1,a
      001285 E5 0D            [12] 2682 	mov	a,_bp
      001287 24 04            [12] 2683 	add	a,#0x04
      001289 F8               [12] 2684 	mov	r0,a
      00128A 86 82            [24] 2685 	mov	dpl,@r0
      00128C 08               [12] 2686 	inc	r0
      00128D 86 83            [24] 2687 	mov	dph,@r0
      00128F 08               [12] 2688 	inc	r0
      001290 86 F0            [24] 2689 	mov	b,@r0
      001292 12 7C 4D         [24] 2690 	lcall	__gptrget
      001295 FF               [12] 2691 	mov	r7,a
                           00095A  2692 	C$queue.c$1243$3_0$241 ==.
                                   2693 ;	queue.c:1243: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
      001296 E5 0D            [12] 2694 	mov	a,_bp
      001298 24 07            [12] 2695 	add	a,#0x07
      00129A F8               [12] 2696 	mov	r0,a
      00129B E6               [12] 2697 	mov	a,@r0
      00129C 04               [12] 2698 	inc	a
      00129D FE               [12] 2699 	mov	r6,a
      00129E 8A 82            [24] 2700 	mov	dpl,r2
      0012A0 8B 83            [24] 2701 	mov	dph,r3
      0012A2 8C F0            [24] 2702 	mov	b,r4
      0012A4 EE               [12] 2703 	mov	a,r6
      0012A5 12 79 22         [24] 2704 	lcall	__gptrput
                           00096C  2705 	C$queue.c$1247$3_0$241 ==.
                                   2706 ;	queue.c:1247: if( cTxLock == queueUNLOCKED )
      0012A8 BF FF 02         [24] 2707 	cjne	r7,#0xff,00138$
      0012AB 80 03            [24] 2708 	sjmp	00139$
      0012AD                       2709 00138$:
      0012AD 02 13 14         [24] 2710 	ljmp	00108$
      0012B0                       2711 00139$:
                           000974  2712 	C$queue.c$1302$5_0$243 ==.
                                   2713 ;	queue.c:1302: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      0012B0 A8 0D            [24] 2714 	mov	r0,_bp
      0012B2 08               [12] 2715 	inc	r0
      0012B3 74 18            [12] 2716 	mov	a,#0x18
      0012B5 26               [12] 2717 	add	a,@r0
      0012B6 FC               [12] 2718 	mov	r4,a
      0012B7 74 00            [12] 2719 	mov	a,#0x00
      0012B9 08               [12] 2720 	inc	r0
      0012BA 36               [12] 2721 	addc	a,@r0
      0012BB FD               [12] 2722 	mov	r5,a
      0012BC 08               [12] 2723 	inc	r0
      0012BD 86 06            [24] 2724 	mov	ar6,@r0
      0012BF 8C 82            [24] 2725 	mov	dpl,r4
      0012C1 8D 83            [24] 2726 	mov	dph,r5
      0012C3 8E F0            [24] 2727 	mov	b,r6
      0012C5 12 7C 4D         [24] 2728 	lcall	__gptrget
      0012C8 70 03            [24] 2729 	jnz	00140$
      0012CA 02 13 26         [24] 2730 	ljmp	00109$
      0012CD                       2731 00140$:
                           000991  2732 	C$queue.c$1304$6_0$244 ==.
                                   2733 ;	queue.c:1304: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      0012CD A8 0D            [24] 2734 	mov	r0,_bp
      0012CF 08               [12] 2735 	inc	r0
      0012D0 74 18            [12] 2736 	mov	a,#0x18
      0012D2 26               [12] 2737 	add	a,@r0
      0012D3 FC               [12] 2738 	mov	r4,a
      0012D4 74 00            [12] 2739 	mov	a,#0x00
      0012D6 08               [12] 2740 	inc	r0
      0012D7 36               [12] 2741 	addc	a,@r0
      0012D8 FD               [12] 2742 	mov	r5,a
      0012D9 08               [12] 2743 	inc	r0
      0012DA 86 06            [24] 2744 	mov	ar6,@r0
      0012DC 8C 82            [24] 2745 	mov	dpl,r4
      0012DE 8D 83            [24] 2746 	mov	dph,r5
      0012E0 8E F0            [24] 2747 	mov	b,r6
      0012E2 12 40 62         [24] 2748 	lcall	_xTaskRemoveFromEventList
      0012E5 E5 82            [12] 2749 	mov	a,dpl
      0012E7 70 03            [24] 2750 	jnz	00141$
      0012E9 02 13 26         [24] 2751 	ljmp	00109$
      0012EC                       2752 00141$:
                           0009B0  2753 	C$queue.c$1308$7_0$245 ==.
                                   2754 ;	queue.c:1308: if( pxHigherPriorityTaskWoken != NULL )
      0012EC E5 0D            [12] 2755 	mov	a,_bp
      0012EE 24 FB            [12] 2756 	add	a,#0xfb
      0012F0 F8               [12] 2757 	mov	r0,a
      0012F1 E6               [12] 2758 	mov	a,@r0
      0012F2 08               [12] 2759 	inc	r0
      0012F3 46               [12] 2760 	orl	a,@r0
      0012F4 70 03            [24] 2761 	jnz	00142$
      0012F6 02 13 26         [24] 2762 	ljmp	00109$
      0012F9                       2763 00142$:
                           0009BD  2764 	C$queue.c$1310$8_0$246 ==.
                                   2765 ;	queue.c:1310: *pxHigherPriorityTaskWoken = pdTRUE;
      0012F9 E5 0D            [12] 2766 	mov	a,_bp
      0012FB 24 FB            [12] 2767 	add	a,#0xfb
      0012FD F8               [12] 2768 	mov	r0,a
      0012FE 86 04            [24] 2769 	mov	ar4,@r0
      001300 08               [12] 2770 	inc	r0
      001301 86 05            [24] 2771 	mov	ar5,@r0
      001303 08               [12] 2772 	inc	r0
      001304 86 06            [24] 2773 	mov	ar6,@r0
      001306 8C 82            [24] 2774 	mov	dpl,r4
      001308 8D 83            [24] 2775 	mov	dph,r5
      00130A 8E F0            [24] 2776 	mov	b,r6
      00130C 74 01            [12] 2777 	mov	a,#0x01
      00130E 12 79 22         [24] 2778 	lcall	__gptrput
      001311 02 13 26         [24] 2779 	ljmp	00109$
      001314                       2780 00108$:
                           0009D8  2781 	C$queue.c$1335$4_0$250 ==.
                                   2782 ;	queue.c:1335: pxQueue->cTxLock = ( int8_t ) ( cTxLock + 1 );
      001314 0F               [12] 2783 	inc	r7
      001315 E5 0D            [12] 2784 	mov	a,_bp
      001317 24 04            [12] 2785 	add	a,#0x04
      001319 F8               [12] 2786 	mov	r0,a
      00131A 86 82            [24] 2787 	mov	dpl,@r0
      00131C 08               [12] 2788 	inc	r0
      00131D 86 83            [24] 2789 	mov	dph,@r0
      00131F 08               [12] 2790 	inc	r0
      001320 86 F0            [24] 2791 	mov	b,@r0
      001322 EF               [12] 2792 	mov	a,r7
      001323 12 79 22         [24] 2793 	lcall	__gptrput
      001326                       2794 00109$:
                           0009EA  2795 	C$queue.c$1338$3_0$241 ==.
                                   2796 ;	queue.c:1338: xReturn = pdPASS;
      001326 7F 01            [12] 2797 	mov	r7,#0x01
      001328 02 13 2D         [24] 2798 	ljmp	00112$
      00132B                       2799 00111$:
                           0009EF  2800 	C$queue.c$1343$3_0$251 ==.
                                   2801 ;	queue.c:1343: xReturn = errQUEUE_FULL;
      00132B 7F 00            [12] 2802 	mov	r7,#0x00
      00132D                       2803 00112$:
                           0009F1  2804 	C$queue.c$1348$1_0$239 ==.
                                   2805 ;	queue.c:1348: return xReturn;
      00132D 8F 82            [24] 2806 	mov	dpl,r7
      00132F                       2807 00113$:
                           0009F3  2808 	C$queue.c$1349$1_0$239 ==.
                                   2809 ;	queue.c:1349: }
      00132F 85 0D 81         [24] 2810 	mov	sp,_bp
      001332 D0 0D            [24] 2811 	pop	_bp
                           0009F8  2812 	C$queue.c$1349$1_0$239 ==.
                           0009F8  2813 	XG$xQueueGiveFromISR$0$0 ==.
      001334 22               [24] 2814 	ret
                                   2815 ;------------------------------------------------------------
                                   2816 ;Allocation info for local variables in function 'xQueueReceive'
                                   2817 ;------------------------------------------------------------
                                   2818 ;pvBuffer                  Allocated to stack - _bp -5
                                   2819 ;xTicksToWait              Allocated to stack - _bp -7
                                   2820 ;xQueue                    Allocated to registers r4 r5 r7 
                                   2821 ;xEntryTimeSet             Allocated to stack - _bp +8
                                   2822 ;xTimeOut                  Allocated to stack - _bp +9
                                   2823 ;pxQueue                   Allocated to stack - _bp +5
                                   2824 ;uxMessagesWaiting         Allocated to registers r5 
                                   2825 ;sloc0                     Allocated to stack - _bp +1
                                   2826 ;sloc1                     Allocated to stack - _bp +15
                                   2827 ;sloc2                     Allocated to stack - _bp +4
                                   2828 ;------------------------------------------------------------
                           0009F9  2829 	G$xQueueReceive$0$0 ==.
                           0009F9  2830 	C$queue.c$1352$1_0$253 ==.
                                   2831 ;	queue.c:1352: BaseType_t xQueueReceive( QueueHandle_t xQueue,
                                   2832 ;	-----------------------------------------
                                   2833 ;	 function xQueueReceive
                                   2834 ;	-----------------------------------------
      001335                       2835 _xQueueReceive:
      001335 C0 0D            [24] 2836 	push	_bp
      001337 85 81 0D         [24] 2837 	mov	_bp,sp
      00133A E5 81            [12] 2838 	mov	a,sp
      00133C 24 0B            [12] 2839 	add	a,#0x0b
      00133E F5 81            [12] 2840 	mov	sp,a
      001340 AC 82            [24] 2841 	mov	r4,dpl
      001342 AD 83            [24] 2842 	mov	r5,dph
      001344 AF F0            [24] 2843 	mov	r7,b
                           000A0A  2844 	C$queue.c$1356$2_0$253 ==.
                                   2845 ;	queue.c:1356: BaseType_t xEntryTimeSet = pdFALSE;
      001346 E5 0D            [12] 2846 	mov	a,_bp
      001348 24 08            [12] 2847 	add	a,#0x08
      00134A F8               [12] 2848 	mov	r0,a
      00134B 76 00            [12] 2849 	mov	@r0,#0x00
                           000A11  2850 	C$queue.c$1358$2_0$253 ==.
                                   2851 ;	queue.c:1358: Queue_t * const pxQueue = xQueue;
      00134D E5 0D            [12] 2852 	mov	a,_bp
      00134F 24 05            [12] 2853 	add	a,#0x05
      001351 F8               [12] 2854 	mov	r0,a
      001352 A6 04            [24] 2855 	mov	@r0,ar4
      001354 08               [12] 2856 	inc	r0
      001355 A6 05            [24] 2857 	mov	@r0,ar5
      001357 08               [12] 2858 	inc	r0
      001358 A6 07            [24] 2859 	mov	@r0,ar7
                           000A1E  2860 	C$queue.c$1365$6_0$264 ==.
                                   2861 ;	queue.c:1365: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
      00135A E5 0D            [12] 2862 	mov	a,_bp
      00135C 24 09            [12] 2863 	add	a,#0x09
      00135E FE               [12] 2864 	mov	r6,a
      00135F E5 0D            [12] 2865 	mov	a,_bp
      001361 24 04            [12] 2866 	add	a,#0x04
      001363 F8               [12] 2867 	mov	r0,a
      001364 A6 06            [24] 2868 	mov	@r0,ar6
      001366 A8 0D            [24] 2869 	mov	r0,_bp
      001368 08               [12] 2870 	inc	r0
      001369 74 24            [12] 2871 	mov	a,#0x24
      00136B 2C               [12] 2872 	add	a,r4
      00136C F6               [12] 2873 	mov	@r0,a
      00136D 74 00            [12] 2874 	mov	a,#0x00
      00136F 3D               [12] 2875 	addc	a,r5
      001370 08               [12] 2876 	inc	r0
      001371 F6               [12] 2877 	mov	@r0,a
      001372 08               [12] 2878 	inc	r0
      001373 A6 07            [24] 2879 	mov	@r0,ar7
      001375                       2880 00128$:
                           000A39  2881 	C$queue.c$1379$3_0$255 ==.
                                   2882 ;	queue.c:1379: taskENTER_CRITICAL();
      001375 C0 E0            [24] 2883 	push ACC 
      001377 C0 A8            [24] 2884 	push IE 
                                   2885 ;	assignBit
      001379 C2 AF            [12] 2886 	clr	_EA
                           000A3F  2887 	C$queue.c$1381$4_0$256 ==.
                                   2888 ;	queue.c:1381: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      00137B A8 0D            [24] 2889 	mov	r0,_bp
      00137D 08               [12] 2890 	inc	r0
      00137E 86 82            [24] 2891 	mov	dpl,@r0
      001380 08               [12] 2892 	inc	r0
      001381 86 83            [24] 2893 	mov	dph,@r0
      001383 08               [12] 2894 	inc	r0
      001384 86 F0            [24] 2895 	mov	b,@r0
      001386 12 7C 4D         [24] 2896 	lcall	__gptrget
      001389 FC               [12] 2897 	mov	r4,a
      00138A 8C 05            [24] 2898 	mov	ar5,r4
                           000A50  2899 	C$queue.c$1385$4_0$256 ==.
                                   2900 ;	queue.c:1385: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      00138C EC               [12] 2901 	mov	a,r4
      00138D 70 03            [24] 2902 	jnz	00178$
      00138F 02 14 24         [24] 2903 	ljmp	00111$
      001392                       2904 00178$:
                           000A56  2905 	C$queue.c$1388$5_0$257 ==.
                                   2906 ;	queue.c:1388: prvCopyDataFromQueue( pxQueue, pvBuffer );
      001392 C0 05            [24] 2907 	push	ar5
      001394 E5 0D            [12] 2908 	mov	a,_bp
      001396 24 FB            [12] 2909 	add	a,#0xfb
      001398 F8               [12] 2910 	mov	r0,a
      001399 E6               [12] 2911 	mov	a,@r0
      00139A C0 E0            [24] 2912 	push	acc
      00139C 08               [12] 2913 	inc	r0
      00139D E6               [12] 2914 	mov	a,@r0
      00139E C0 E0            [24] 2915 	push	acc
      0013A0 08               [12] 2916 	inc	r0
      0013A1 E6               [12] 2917 	mov	a,@r0
      0013A2 C0 E0            [24] 2918 	push	acc
      0013A4 E5 0D            [12] 2919 	mov	a,_bp
      0013A6 24 05            [12] 2920 	add	a,#0x05
      0013A8 F8               [12] 2921 	mov	r0,a
      0013A9 86 82            [24] 2922 	mov	dpl,@r0
      0013AB 08               [12] 2923 	inc	r0
      0013AC 86 83            [24] 2924 	mov	dph,@r0
      0013AE 08               [12] 2925 	inc	r0
      0013AF 86 F0            [24] 2926 	mov	b,@r0
      0013B1 12 21 69         [24] 2927 	lcall	_prvCopyDataFromQueue
      0013B4 15 81            [12] 2928 	dec	sp
      0013B6 15 81            [12] 2929 	dec	sp
      0013B8 15 81            [12] 2930 	dec	sp
      0013BA D0 05            [24] 2931 	pop	ar5
                           000A80  2932 	C$queue.c$1390$5_0$257 ==.
                                   2933 ;	queue.c:1390: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
      0013BC E5 0D            [12] 2934 	mov	a,_bp
      0013BE 24 05            [12] 2935 	add	a,#0x05
      0013C0 F8               [12] 2936 	mov	r0,a
      0013C1 74 24            [12] 2937 	mov	a,#0x24
      0013C3 26               [12] 2938 	add	a,@r0
      0013C4 FB               [12] 2939 	mov	r3,a
      0013C5 74 00            [12] 2940 	mov	a,#0x00
      0013C7 08               [12] 2941 	inc	r0
      0013C8 36               [12] 2942 	addc	a,@r0
      0013C9 FC               [12] 2943 	mov	r4,a
      0013CA 08               [12] 2944 	inc	r0
      0013CB 86 07            [24] 2945 	mov	ar7,@r0
      0013CD ED               [12] 2946 	mov	a,r5
      0013CE 14               [12] 2947 	dec	a
      0013CF FA               [12] 2948 	mov	r2,a
      0013D0 8B 82            [24] 2949 	mov	dpl,r3
      0013D2 8C 83            [24] 2950 	mov	dph,r4
      0013D4 8F F0            [24] 2951 	mov	b,r7
      0013D6 EA               [12] 2952 	mov	a,r2
      0013D7 12 79 22         [24] 2953 	lcall	__gptrput
                           000A9E  2954 	C$queue.c$1395$5_0$257 ==.
                                   2955 ;	queue.c:1395: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      0013DA E5 0D            [12] 2956 	mov	a,_bp
      0013DC 24 05            [12] 2957 	add	a,#0x05
      0013DE F8               [12] 2958 	mov	r0,a
      0013DF 74 0C            [12] 2959 	mov	a,#0x0c
      0013E1 26               [12] 2960 	add	a,@r0
      0013E2 FB               [12] 2961 	mov	r3,a
      0013E3 74 00            [12] 2962 	mov	a,#0x00
      0013E5 08               [12] 2963 	inc	r0
      0013E6 36               [12] 2964 	addc	a,@r0
      0013E7 FC               [12] 2965 	mov	r4,a
      0013E8 08               [12] 2966 	inc	r0
      0013E9 86 07            [24] 2967 	mov	ar7,@r0
      0013EB 8B 82            [24] 2968 	mov	dpl,r3
      0013ED 8C 83            [24] 2969 	mov	dph,r4
      0013EF 8F F0            [24] 2970 	mov	b,r7
      0013F1 12 7C 4D         [24] 2971 	lcall	__gptrget
      0013F4 70 03            [24] 2972 	jnz	00179$
      0013F6 02 14 13         [24] 2973 	ljmp	00104$
      0013F9                       2974 00179$:
                           000ABD  2975 	C$queue.c$1397$6_0$258 ==.
                                   2976 ;	queue.c:1397: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      0013F9 E5 0D            [12] 2977 	mov	a,_bp
      0013FB 24 05            [12] 2978 	add	a,#0x05
      0013FD F8               [12] 2979 	mov	r0,a
      0013FE 74 0C            [12] 2980 	mov	a,#0x0c
      001400 26               [12] 2981 	add	a,@r0
      001401 FB               [12] 2982 	mov	r3,a
      001402 74 00            [12] 2983 	mov	a,#0x00
      001404 08               [12] 2984 	inc	r0
      001405 36               [12] 2985 	addc	a,@r0
      001406 FC               [12] 2986 	mov	r4,a
      001407 08               [12] 2987 	inc	r0
      001408 86 07            [24] 2988 	mov	ar7,@r0
      00140A 8B 82            [24] 2989 	mov	dpl,r3
      00140C 8C 83            [24] 2990 	mov	dph,r4
      00140E 8F F0            [24] 2991 	mov	b,r7
      001410 12 40 62         [24] 2992 	lcall	_xTaskRemoveFromEventList
      001413                       2993 00104$:
                           000AD7  2994 	C$queue.c$1411$5_0$257 ==.
                                   2995 ;	queue.c:1411: taskEXIT_CRITICAL();
      001413 D0 E0            [24] 2996 	pop ACC 
      001415 53 E0 80         [24] 2997 	anl	_ACC,#0x80
      001418 E5 E0            [12] 2998 	mov	a,_ACC
      00141A 42 A8            [12] 2999 	orl	_IE,a
      00141C D0 E0            [24] 3000 	pop ACC 
                           000AE2  3001 	C$queue.c$1412$5_0$257 ==.
                                   3002 ;	queue.c:1412: return pdPASS;
      00141E 75 82 01         [24] 3003 	mov	dpl,#0x01
      001421 02 15 EB         [24] 3004 	ljmp	00130$
      001424                       3005 00111$:
                           000AE8  3006 	C$queue.c$1416$5_0$262 ==.
                                   3007 ;	queue.c:1416: if( xTicksToWait == ( TickType_t ) 0 )
      001424 E5 0D            [12] 3008 	mov	a,_bp
      001426 24 F9            [12] 3009 	add	a,#0xf9
      001428 F8               [12] 3010 	mov	r0,a
      001429 E6               [12] 3011 	mov	a,@r0
      00142A 08               [12] 3012 	inc	r0
      00142B 46               [12] 3013 	orl	a,@r0
      00142C 60 03            [24] 3014 	jz	00180$
      00142E 02 14 42         [24] 3015 	ljmp	00108$
      001431                       3016 00180$:
                           000AF5  3017 	C$queue.c$1420$6_0$263 ==.
                                   3018 ;	queue.c:1420: taskEXIT_CRITICAL();
      001431 D0 E0            [24] 3019 	pop ACC 
      001433 53 E0 80         [24] 3020 	anl	_ACC,#0x80
      001436 E5 E0            [12] 3021 	mov	a,_ACC
      001438 42 A8            [12] 3022 	orl	_IE,a
      00143A D0 E0            [24] 3023 	pop ACC 
                           000B00  3024 	C$queue.c$1422$6_0$263 ==.
                                   3025 ;	queue.c:1422: return errQUEUE_EMPTY;
      00143C 75 82 00         [24] 3026 	mov	dpl,#0x00
      00143F 02 15 EB         [24] 3027 	ljmp	00130$
      001442                       3028 00108$:
                           000B06  3029 	C$queue.c$1424$5_0$262 ==.
                                   3030 ;	queue.c:1424: else if( xEntryTimeSet == pdFALSE )
      001442 E5 0D            [12] 3031 	mov	a,_bp
      001444 24 08            [12] 3032 	add	a,#0x08
      001446 F8               [12] 3033 	mov	r0,a
      001447 E6               [12] 3034 	mov	a,@r0
      001448 60 03            [24] 3035 	jz	00181$
      00144A 02 14 67         [24] 3036 	ljmp	00112$
      00144D                       3037 00181$:
                           000B11  3038 	C$queue.c$1428$6_0$264 ==.
                                   3039 ;	queue.c:1428: vTaskInternalSetTimeOutState( &xTimeOut );
      00144D 8E 03            [24] 3040 	mov	ar3,r6
      00144F 7C 00            [12] 3041 	mov	r4,#0x00
      001451 7F 40            [12] 3042 	mov	r7,#0x40
      001453 8B 82            [24] 3043 	mov	dpl,r3
      001455 8C 83            [24] 3044 	mov	dph,r4
      001457 8F F0            [24] 3045 	mov	b,r7
      001459 C0 06            [24] 3046 	push	ar6
      00145B 12 4E 56         [24] 3047 	lcall	_vTaskInternalSetTimeOutState
      00145E D0 06            [24] 3048 	pop	ar6
                           000B24  3049 	C$queue.c$1429$6_0$264 ==.
                                   3050 ;	queue.c:1429: xEntryTimeSet = pdTRUE;
      001460 E5 0D            [12] 3051 	mov	a,_bp
      001462 24 08            [12] 3052 	add	a,#0x08
      001464 F8               [12] 3053 	mov	r0,a
      001465 76 01            [12] 3054 	mov	@r0,#0x01
      001467                       3055 00112$:
                           000B2B  3056 	C$queue.c$1438$3_0$255 ==.
                                   3057 ;	queue.c:1438: taskEXIT_CRITICAL();
      001467 D0 E0            [24] 3058 	pop ACC 
      001469 53 E0 80         [24] 3059 	anl	_ACC,#0x80
      00146C E5 E0            [12] 3060 	mov	a,_ACC
      00146E 42 A8            [12] 3061 	orl	_IE,a
      001470 D0 E0            [24] 3062 	pop ACC 
                           000B36  3063 	C$queue.c$1443$3_0$255 ==.
                                   3064 ;	queue.c:1443: vTaskSuspendAll();
      001472 C0 06            [24] 3065 	push	ar6
      001474 12 2E 9C         [24] 3066 	lcall	_vTaskSuspendAll
      001477 D0 06            [24] 3067 	pop	ar6
                           000B3D  3068 	C$queue.c$1444$3_0$255 ==.
                                   3069 ;	queue.c:1444: prvLockQueue( pxQueue );
      001479 C0 E0            [24] 3070 	push ACC 
      00147B C0 A8            [24] 3071 	push IE 
                                   3072 ;	assignBit
      00147D C2 AF            [12] 3073 	clr	_EA
      00147F E5 0D            [12] 3074 	mov	a,_bp
      001481 24 05            [12] 3075 	add	a,#0x05
      001483 F8               [12] 3076 	mov	r0,a
      001484 74 27            [12] 3077 	mov	a,#0x27
      001486 26               [12] 3078 	add	a,@r0
      001487 FB               [12] 3079 	mov	r3,a
      001488 74 00            [12] 3080 	mov	a,#0x00
      00148A 08               [12] 3081 	inc	r0
      00148B 36               [12] 3082 	addc	a,@r0
      00148C FC               [12] 3083 	mov	r4,a
      00148D 08               [12] 3084 	inc	r0
      00148E 86 07            [24] 3085 	mov	ar7,@r0
      001490 8B 82            [24] 3086 	mov	dpl,r3
      001492 8C 83            [24] 3087 	mov	dph,r4
      001494 8F F0            [24] 3088 	mov	b,r7
      001496 12 7C 4D         [24] 3089 	lcall	__gptrget
      001499 FA               [12] 3090 	mov	r2,a
      00149A BA FF 02         [24] 3091 	cjne	r2,#0xff,00182$
      00149D 80 03            [24] 3092 	sjmp	00183$
      00149F                       3093 00182$:
      00149F 02 14 AD         [24] 3094 	ljmp	00114$
      0014A2                       3095 00183$:
      0014A2 8B 82            [24] 3096 	mov	dpl,r3
      0014A4 8C 83            [24] 3097 	mov	dph,r4
      0014A6 8F F0            [24] 3098 	mov	b,r7
      0014A8 74 00            [12] 3099 	mov	a,#0x00
      0014AA 12 79 22         [24] 3100 	lcall	__gptrput
      0014AD                       3101 00114$:
      0014AD E5 0D            [12] 3102 	mov	a,_bp
      0014AF 24 05            [12] 3103 	add	a,#0x05
      0014B1 F8               [12] 3104 	mov	r0,a
      0014B2 74 28            [12] 3105 	mov	a,#0x28
      0014B4 26               [12] 3106 	add	a,@r0
      0014B5 FB               [12] 3107 	mov	r3,a
      0014B6 74 00            [12] 3108 	mov	a,#0x00
      0014B8 08               [12] 3109 	inc	r0
      0014B9 36               [12] 3110 	addc	a,@r0
      0014BA FC               [12] 3111 	mov	r4,a
      0014BB 08               [12] 3112 	inc	r0
      0014BC 86 07            [24] 3113 	mov	ar7,@r0
      0014BE 8B 82            [24] 3114 	mov	dpl,r3
      0014C0 8C 83            [24] 3115 	mov	dph,r4
      0014C2 8F F0            [24] 3116 	mov	b,r7
      0014C4 12 7C 4D         [24] 3117 	lcall	__gptrget
      0014C7 FA               [12] 3118 	mov	r2,a
      0014C8 BA FF 02         [24] 3119 	cjne	r2,#0xff,00184$
      0014CB 80 03            [24] 3120 	sjmp	00185$
      0014CD                       3121 00184$:
      0014CD 02 14 DB         [24] 3122 	ljmp	00116$
      0014D0                       3123 00185$:
      0014D0 8B 82            [24] 3124 	mov	dpl,r3
      0014D2 8C 83            [24] 3125 	mov	dph,r4
      0014D4 8F F0            [24] 3126 	mov	b,r7
      0014D6 74 00            [12] 3127 	mov	a,#0x00
      0014D8 12 79 22         [24] 3128 	lcall	__gptrput
      0014DB                       3129 00116$:
      0014DB C0 06            [24] 3130 	push	ar6
      0014DD D0 E0            [24] 3131 	pop ACC 
      0014DF 53 E0 80         [24] 3132 	anl	_ACC,#0x80
      0014E2 E5 E0            [12] 3133 	mov	a,_ACC
      0014E4 42 A8            [12] 3134 	orl	_IE,a
      0014E6 D0 E0            [24] 3135 	pop ACC 
                           000BAC  3136 	C$queue.c$1447$3_0$255 ==.
                                   3137 ;	queue.c:1447: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      0014E8 E5 0D            [12] 3138 	mov	a,_bp
      0014EA 24 F9            [12] 3139 	add	a,#0xf9
      0014EC FF               [12] 3140 	mov	r7,a
      0014ED 7C 00            [12] 3141 	mov	r4,#0x00
      0014EF 7B 40            [12] 3142 	mov	r3,#0x40
      0014F1 E5 0D            [12] 3143 	mov	a,_bp
      0014F3 24 04            [12] 3144 	add	a,#0x04
      0014F5 F8               [12] 3145 	mov	r0,a
      0014F6 86 02            [24] 3146 	mov	ar2,@r0
      0014F8 7D 00            [12] 3147 	mov	r5,#0x00
      0014FA 7E 40            [12] 3148 	mov	r6,#0x40
      0014FC C0 06            [24] 3149 	push	ar6
      0014FE C0 07            [24] 3150 	push	ar7
      001500 C0 04            [24] 3151 	push	ar4
      001502 C0 03            [24] 3152 	push	ar3
      001504 8A 82            [24] 3153 	mov	dpl,r2
      001506 8D 83            [24] 3154 	mov	dph,r5
      001508 8E F0            [24] 3155 	mov	b,r6
      00150A 12 4E 88         [24] 3156 	lcall	_xTaskCheckForTimeOut
      00150D AF 82            [24] 3157 	mov	r7,dpl
      00150F 15 81            [12] 3158 	dec	sp
      001511 15 81            [12] 3159 	dec	sp
      001513 15 81            [12] 3160 	dec	sp
      001515 D0 06            [24] 3161 	pop	ar6
      001517 D0 06            [24] 3162 	pop	ar6
      001519 EF               [12] 3163 	mov	a,r7
      00151A 60 03            [24] 3164 	jz	00186$
      00151C 02 15 B2         [24] 3165 	ljmp	00125$
      00151F                       3166 00186$:
                           000BE3  3167 	C$queue.c$1451$4_0$269 ==.
                                   3168 ;	queue.c:1451: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      00151F E5 0D            [12] 3169 	mov	a,_bp
      001521 24 05            [12] 3170 	add	a,#0x05
      001523 F8               [12] 3171 	mov	r0,a
      001524 86 82            [24] 3172 	mov	dpl,@r0
      001526 08               [12] 3173 	inc	r0
      001527 86 83            [24] 3174 	mov	dph,@r0
      001529 08               [12] 3175 	inc	r0
      00152A 86 F0            [24] 3176 	mov	b,@r0
      00152C C0 06            [24] 3177 	push	ar6
      00152E 12 24 58         [24] 3178 	lcall	_prvIsQueueEmpty
      001531 E5 82            [12] 3179 	mov	a,dpl
      001533 D0 06            [24] 3180 	pop	ar6
      001535 70 03            [24] 3181 	jnz	00187$
      001537 02 15 94         [24] 3182 	ljmp	00120$
      00153A                       3183 00187$:
                           000BFE  3184 	C$queue.c$1454$5_0$270 ==.
                                   3185 ;	queue.c:1454: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      00153A E5 0D            [12] 3186 	mov	a,_bp
      00153C 24 05            [12] 3187 	add	a,#0x05
      00153E F8               [12] 3188 	mov	r0,a
      00153F 74 18            [12] 3189 	mov	a,#0x18
      001541 26               [12] 3190 	add	a,@r0
      001542 FC               [12] 3191 	mov	r4,a
      001543 74 00            [12] 3192 	mov	a,#0x00
      001545 08               [12] 3193 	inc	r0
      001546 36               [12] 3194 	addc	a,@r0
      001547 FD               [12] 3195 	mov	r5,a
      001548 08               [12] 3196 	inc	r0
      001549 86 07            [24] 3197 	mov	ar7,@r0
      00154B C0 06            [24] 3198 	push	ar6
      00154D E5 0D            [12] 3199 	mov	a,_bp
      00154F 24 F9            [12] 3200 	add	a,#0xf9
      001551 F8               [12] 3201 	mov	r0,a
      001552 E6               [12] 3202 	mov	a,@r0
      001553 C0 E0            [24] 3203 	push	acc
      001555 08               [12] 3204 	inc	r0
      001556 E6               [12] 3205 	mov	a,@r0
      001557 C0 E0            [24] 3206 	push	acc
      001559 8C 82            [24] 3207 	mov	dpl,r4
      00155B 8D 83            [24] 3208 	mov	dph,r5
      00155D 8F F0            [24] 3209 	mov	b,r7
      00155F 12 3E 46         [24] 3210 	lcall	_vTaskPlaceOnEventList
      001562 15 81            [12] 3211 	dec	sp
      001564 15 81            [12] 3212 	dec	sp
      001566 D0 06            [24] 3213 	pop	ar6
                           000C2C  3214 	C$queue.c$1455$5_0$270 ==.
                                   3215 ;	queue.c:1455: prvUnlockQueue( pxQueue );
      001568 E5 0D            [12] 3216 	mov	a,_bp
      00156A 24 05            [12] 3217 	add	a,#0x05
      00156C F8               [12] 3218 	mov	r0,a
      00156D 86 82            [24] 3219 	mov	dpl,@r0
      00156F 08               [12] 3220 	inc	r0
      001570 86 83            [24] 3221 	mov	dph,@r0
      001572 08               [12] 3222 	inc	r0
      001573 86 F0            [24] 3223 	mov	b,@r0
      001575 C0 06            [24] 3224 	push	ar6
      001577 12 22 C0         [24] 3225 	lcall	_prvUnlockQueue
      00157A D0 06            [24] 3226 	pop	ar6
                           000C40  3227 	C$queue.c$1457$5_0$270 ==.
                                   3228 ;	queue.c:1457: if( xTaskResumeAll() == pdFALSE )
      00157C C0 06            [24] 3229 	push	ar6
      00157E 12 2E A4         [24] 3230 	lcall	_xTaskResumeAll
      001581 E5 82            [12] 3231 	mov	a,dpl
      001583 D0 06            [24] 3232 	pop	ar6
      001585 60 03            [24] 3233 	jz	00188$
      001587 02 13 75         [24] 3234 	ljmp	00128$
      00158A                       3235 00188$:
                           000C4E  3236 	C$queue.c$1459$6_0$271 ==.
                                   3237 ;	queue.c:1459: portYIELD_WITHIN_API();
      00158A C0 06            [24] 3238 	push	ar6
      00158C 12 77 3C         [24] 3239 	lcall	_vPortYield
      00158F D0 06            [24] 3240 	pop	ar6
      001591 02 13 75         [24] 3241 	ljmp	00128$
      001594                       3242 00120$:
                           000C58  3243 	C$queue.c$1470$5_0$273 ==.
                                   3244 ;	queue.c:1470: prvUnlockQueue( pxQueue );
      001594 E5 0D            [12] 3245 	mov	a,_bp
      001596 24 05            [12] 3246 	add	a,#0x05
      001598 F8               [12] 3247 	mov	r0,a
      001599 86 82            [24] 3248 	mov	dpl,@r0
      00159B 08               [12] 3249 	inc	r0
      00159C 86 83            [24] 3250 	mov	dph,@r0
      00159E 08               [12] 3251 	inc	r0
      00159F 86 F0            [24] 3252 	mov	b,@r0
      0015A1 C0 06            [24] 3253 	push	ar6
      0015A3 12 22 C0         [24] 3254 	lcall	_prvUnlockQueue
      0015A6 D0 06            [24] 3255 	pop	ar6
                           000C6C  3256 	C$queue.c$1471$5_0$273 ==.
                                   3257 ;	queue.c:1471: ( void ) xTaskResumeAll();
      0015A8 C0 06            [24] 3258 	push	ar6
      0015AA 12 2E A4         [24] 3259 	lcall	_xTaskResumeAll
      0015AD D0 06            [24] 3260 	pop	ar6
      0015AF 02 13 75         [24] 3261 	ljmp	00128$
      0015B2                       3262 00125$:
                           000C76  3263 	C$queue.c$1478$4_0$274 ==.
                                   3264 ;	queue.c:1478: prvUnlockQueue( pxQueue );
      0015B2 E5 0D            [12] 3265 	mov	a,_bp
      0015B4 24 05            [12] 3266 	add	a,#0x05
      0015B6 F8               [12] 3267 	mov	r0,a
      0015B7 86 82            [24] 3268 	mov	dpl,@r0
      0015B9 08               [12] 3269 	inc	r0
      0015BA 86 83            [24] 3270 	mov	dph,@r0
      0015BC 08               [12] 3271 	inc	r0
      0015BD 86 F0            [24] 3272 	mov	b,@r0
      0015BF C0 06            [24] 3273 	push	ar6
      0015C1 12 22 C0         [24] 3274 	lcall	_prvUnlockQueue
      0015C4 D0 06            [24] 3275 	pop	ar6
                           000C8A  3276 	C$queue.c$1479$4_0$274 ==.
                                   3277 ;	queue.c:1479: ( void ) xTaskResumeAll();
      0015C6 C0 06            [24] 3278 	push	ar6
      0015C8 12 2E A4         [24] 3279 	lcall	_xTaskResumeAll
      0015CB D0 06            [24] 3280 	pop	ar6
                           000C91  3281 	C$queue.c$1481$4_0$274 ==.
                                   3282 ;	queue.c:1481: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      0015CD E5 0D            [12] 3283 	mov	a,_bp
      0015CF 24 05            [12] 3284 	add	a,#0x05
      0015D1 F8               [12] 3285 	mov	r0,a
      0015D2 86 82            [24] 3286 	mov	dpl,@r0
      0015D4 08               [12] 3287 	inc	r0
      0015D5 86 83            [24] 3288 	mov	dph,@r0
      0015D7 08               [12] 3289 	inc	r0
      0015D8 86 F0            [24] 3290 	mov	b,@r0
      0015DA C0 06            [24] 3291 	push	ar6
      0015DC 12 24 58         [24] 3292 	lcall	_prvIsQueueEmpty
      0015DF E5 82            [12] 3293 	mov	a,dpl
      0015E1 D0 06            [24] 3294 	pop	ar6
      0015E3 70 03            [24] 3295 	jnz	00189$
      0015E5 02 13 75         [24] 3296 	ljmp	00128$
      0015E8                       3297 00189$:
                           000CAC  3298 	C$queue.c$1484$5_0$275 ==.
                                   3299 ;	queue.c:1484: return errQUEUE_EMPTY;
      0015E8 75 82 00         [24] 3300 	mov	dpl,#0x00
      0015EB                       3301 00130$:
                           000CAF  3302 	C$queue.c$1492$2_0$253 ==.
                                   3303 ;	queue.c:1492: }
      0015EB 85 0D 81         [24] 3304 	mov	sp,_bp
      0015EE D0 0D            [24] 3305 	pop	_bp
                           000CB4  3306 	C$queue.c$1492$2_0$253 ==.
                           000CB4  3307 	XG$xQueueReceive$0$0 ==.
      0015F0 22               [24] 3308 	ret
                                   3309 ;------------------------------------------------------------
                                   3310 ;Allocation info for local variables in function 'xQueueSemaphoreTake'
                                   3311 ;------------------------------------------------------------
                                   3312 ;xTicksToWait              Allocated to stack - _bp -4
                                   3313 ;xQueue                    Allocated to registers r4 r5 r7 
                                   3314 ;xEntryTimeSet             Allocated to stack - _bp +5
                                   3315 ;xTimeOut                  Allocated to stack - _bp +6
                                   3316 ;pxQueue                   Allocated to stack - _bp +9
                                   3317 ;uxSemaphoreCount          Allocated to registers r7 
                                   3318 ;sloc0                     Allocated to stack - _bp +2
                                   3319 ;sloc1                     Allocated to stack - _bp +15
                                   3320 ;sloc2                     Allocated to stack - _bp +1
                                   3321 ;------------------------------------------------------------
                           000CB5  3322 	G$xQueueSemaphoreTake$0$0 ==.
                           000CB5  3323 	C$queue.c$1495$2_0$278 ==.
                                   3324 ;	queue.c:1495: BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue,
                                   3325 ;	-----------------------------------------
                                   3326 ;	 function xQueueSemaphoreTake
                                   3327 ;	-----------------------------------------
      0015F1                       3328 _xQueueSemaphoreTake:
      0015F1 C0 0D            [24] 3329 	push	_bp
      0015F3 85 81 0D         [24] 3330 	mov	_bp,sp
      0015F6 E5 81            [12] 3331 	mov	a,sp
      0015F8 24 0B            [12] 3332 	add	a,#0x0b
      0015FA F5 81            [12] 3333 	mov	sp,a
      0015FC AC 82            [24] 3334 	mov	r4,dpl
      0015FE AD 83            [24] 3335 	mov	r5,dph
      001600 AF F0            [24] 3336 	mov	r7,b
                           000CC6  3337 	C$queue.c$1498$2_0$278 ==.
                                   3338 ;	queue.c:1498: BaseType_t xEntryTimeSet = pdFALSE;
      001602 E5 0D            [12] 3339 	mov	a,_bp
      001604 24 05            [12] 3340 	add	a,#0x05
      001606 F8               [12] 3341 	mov	r0,a
      001607 76 00            [12] 3342 	mov	@r0,#0x00
                           000CCD  3343 	C$queue.c$1500$2_0$278 ==.
                                   3344 ;	queue.c:1500: Queue_t * const pxQueue = xQueue;
      001609 E5 0D            [12] 3345 	mov	a,_bp
      00160B 24 09            [12] 3346 	add	a,#0x09
      00160D F8               [12] 3347 	mov	r0,a
      00160E A6 04            [24] 3348 	mov	@r0,ar4
      001610 08               [12] 3349 	inc	r0
      001611 A6 05            [24] 3350 	mov	@r0,ar5
      001613 08               [12] 3351 	inc	r0
      001614 A6 07            [24] 3352 	mov	@r0,ar7
                           000CDA  3353 	C$queue.c$1511$6_0$289 ==.
                                   3354 ;	queue.c:1511: configASSERT( pxQueue->uxItemSize == 0 );
      001616 E5 0D            [12] 3355 	mov	a,_bp
      001618 24 06            [12] 3356 	add	a,#0x06
      00161A FE               [12] 3357 	mov	r6,a
      00161B A8 0D            [24] 3358 	mov	r0,_bp
      00161D 08               [12] 3359 	inc	r0
      00161E A6 06            [24] 3360 	mov	@r0,ar6
      001620 A8 0D            [24] 3361 	mov	r0,_bp
      001622 08               [12] 3362 	inc	r0
      001623 08               [12] 3363 	inc	r0
      001624 74 24            [12] 3364 	mov	a,#0x24
      001626 2C               [12] 3365 	add	a,r4
      001627 F6               [12] 3366 	mov	@r0,a
      001628 74 00            [12] 3367 	mov	a,#0x00
      00162A 3D               [12] 3368 	addc	a,r5
      00162B 08               [12] 3369 	inc	r0
      00162C F6               [12] 3370 	mov	@r0,a
      00162D 08               [12] 3371 	inc	r0
      00162E A6 07            [24] 3372 	mov	@r0,ar7
      001630                       3373 00128$:
                           000CF4  3374 	C$queue.c$1525$3_0$280 ==.
                                   3375 ;	queue.c:1525: taskENTER_CRITICAL();
      001630 C0 E0            [24] 3376 	push ACC 
      001632 C0 A8            [24] 3377 	push IE 
                                   3378 ;	assignBit
      001634 C2 AF            [12] 3379 	clr	_EA
                           000CFA  3380 	C$queue.c$1529$4_0$281 ==.
                                   3381 ;	queue.c:1529: const UBaseType_t uxSemaphoreCount = pxQueue->uxMessagesWaiting;
      001636 A8 0D            [24] 3382 	mov	r0,_bp
      001638 08               [12] 3383 	inc	r0
      001639 08               [12] 3384 	inc	r0
      00163A 86 82            [24] 3385 	mov	dpl,@r0
      00163C 08               [12] 3386 	inc	r0
      00163D 86 83            [24] 3387 	mov	dph,@r0
      00163F 08               [12] 3388 	inc	r0
      001640 86 F0            [24] 3389 	mov	b,@r0
      001642 12 7C 4D         [24] 3390 	lcall	__gptrget
      001645 FC               [12] 3391 	mov	r4,a
      001646 8C 07            [24] 3392 	mov	ar7,r4
                           000D0C  3393 	C$queue.c$1533$4_0$281 ==.
                                   3394 ;	queue.c:1533: if( uxSemaphoreCount > ( UBaseType_t ) 0 )
      001648 EC               [12] 3395 	mov	a,r4
      001649 70 03            [24] 3396 	jnz	00178$
      00164B 02 16 AB         [24] 3397 	ljmp	00111$
      00164E                       3398 00178$:
                           000D12  3399 	C$queue.c$1539$5_0$282 ==.
                                   3400 ;	queue.c:1539: pxQueue->uxMessagesWaiting = uxSemaphoreCount - ( UBaseType_t ) 1;
      00164E EF               [12] 3401 	mov	a,r7
      00164F 14               [12] 3402 	dec	a
      001650 FC               [12] 3403 	mov	r4,a
      001651 A8 0D            [24] 3404 	mov	r0,_bp
      001653 08               [12] 3405 	inc	r0
      001654 08               [12] 3406 	inc	r0
      001655 86 82            [24] 3407 	mov	dpl,@r0
      001657 08               [12] 3408 	inc	r0
      001658 86 83            [24] 3409 	mov	dph,@r0
      00165A 08               [12] 3410 	inc	r0
      00165B 86 F0            [24] 3411 	mov	b,@r0
      00165D EC               [12] 3412 	mov	a,r4
      00165E 12 79 22         [24] 3413 	lcall	__gptrput
                           000D25  3414 	C$queue.c$1558$5_0$282 ==.
                                   3415 ;	queue.c:1558: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      001661 E5 0D            [12] 3416 	mov	a,_bp
      001663 24 09            [12] 3417 	add	a,#0x09
      001665 F8               [12] 3418 	mov	r0,a
      001666 74 0C            [12] 3419 	mov	a,#0x0c
      001668 26               [12] 3420 	add	a,@r0
      001669 FB               [12] 3421 	mov	r3,a
      00166A 74 00            [12] 3422 	mov	a,#0x00
      00166C 08               [12] 3423 	inc	r0
      00166D 36               [12] 3424 	addc	a,@r0
      00166E FC               [12] 3425 	mov	r4,a
      00166F 08               [12] 3426 	inc	r0
      001670 86 07            [24] 3427 	mov	ar7,@r0
      001672 8B 82            [24] 3428 	mov	dpl,r3
      001674 8C 83            [24] 3429 	mov	dph,r4
      001676 8F F0            [24] 3430 	mov	b,r7
      001678 12 7C 4D         [24] 3431 	lcall	__gptrget
      00167B 70 03            [24] 3432 	jnz	00179$
      00167D 02 16 9A         [24] 3433 	ljmp	00104$
      001680                       3434 00179$:
                           000D44  3435 	C$queue.c$1560$6_0$283 ==.
                                   3436 ;	queue.c:1560: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      001680 E5 0D            [12] 3437 	mov	a,_bp
      001682 24 09            [12] 3438 	add	a,#0x09
      001684 F8               [12] 3439 	mov	r0,a
      001685 74 0C            [12] 3440 	mov	a,#0x0c
      001687 26               [12] 3441 	add	a,@r0
      001688 FB               [12] 3442 	mov	r3,a
      001689 74 00            [12] 3443 	mov	a,#0x00
      00168B 08               [12] 3444 	inc	r0
      00168C 36               [12] 3445 	addc	a,@r0
      00168D FC               [12] 3446 	mov	r4,a
      00168E 08               [12] 3447 	inc	r0
      00168F 86 07            [24] 3448 	mov	ar7,@r0
      001691 8B 82            [24] 3449 	mov	dpl,r3
      001693 8C 83            [24] 3450 	mov	dph,r4
      001695 8F F0            [24] 3451 	mov	b,r7
      001697 12 40 62         [24] 3452 	lcall	_xTaskRemoveFromEventList
      00169A                       3453 00104$:
                           000D5E  3454 	C$queue.c$1574$5_0$282 ==.
                                   3455 ;	queue.c:1574: taskEXIT_CRITICAL();
      00169A D0 E0            [24] 3456 	pop ACC 
      00169C 53 E0 80         [24] 3457 	anl	_ACC,#0x80
      00169F E5 E0            [12] 3458 	mov	a,_ACC
      0016A1 42 A8            [12] 3459 	orl	_IE,a
      0016A3 D0 E0            [24] 3460 	pop ACC 
                           000D69  3461 	C$queue.c$1575$5_0$282 ==.
                                   3462 ;	queue.c:1575: return pdPASS;
      0016A5 75 82 01         [24] 3463 	mov	dpl,#0x01
      0016A8 02 18 70         [24] 3464 	ljmp	00130$
      0016AB                       3465 00111$:
                           000D6F  3466 	C$queue.c$1579$5_0$287 ==.
                                   3467 ;	queue.c:1579: if( xTicksToWait == ( TickType_t ) 0 )
      0016AB E5 0D            [12] 3468 	mov	a,_bp
      0016AD 24 FC            [12] 3469 	add	a,#0xfc
      0016AF F8               [12] 3470 	mov	r0,a
      0016B0 E6               [12] 3471 	mov	a,@r0
      0016B1 08               [12] 3472 	inc	r0
      0016B2 46               [12] 3473 	orl	a,@r0
      0016B3 60 03            [24] 3474 	jz	00180$
      0016B5 02 16 C9         [24] 3475 	ljmp	00108$
      0016B8                       3476 00180$:
                           000D7C  3477 	C$queue.c$1592$6_0$288 ==.
                                   3478 ;	queue.c:1592: taskEXIT_CRITICAL();
      0016B8 D0 E0            [24] 3479 	pop ACC 
      0016BA 53 E0 80         [24] 3480 	anl	_ACC,#0x80
      0016BD E5 E0            [12] 3481 	mov	a,_ACC
      0016BF 42 A8            [12] 3482 	orl	_IE,a
      0016C1 D0 E0            [24] 3483 	pop ACC 
                           000D87  3484 	C$queue.c$1594$6_0$288 ==.
                                   3485 ;	queue.c:1594: return errQUEUE_EMPTY;
      0016C3 75 82 00         [24] 3486 	mov	dpl,#0x00
      0016C6 02 18 70         [24] 3487 	ljmp	00130$
      0016C9                       3488 00108$:
                           000D8D  3489 	C$queue.c$1596$5_0$287 ==.
                                   3490 ;	queue.c:1596: else if( xEntryTimeSet == pdFALSE )
      0016C9 E5 0D            [12] 3491 	mov	a,_bp
      0016CB 24 05            [12] 3492 	add	a,#0x05
      0016CD F8               [12] 3493 	mov	r0,a
      0016CE E6               [12] 3494 	mov	a,@r0
      0016CF 60 03            [24] 3495 	jz	00181$
      0016D1 02 16 EE         [24] 3496 	ljmp	00112$
      0016D4                       3497 00181$:
                           000D98  3498 	C$queue.c$1600$6_0$289 ==.
                                   3499 ;	queue.c:1600: vTaskInternalSetTimeOutState( &xTimeOut );
      0016D4 8E 03            [24] 3500 	mov	ar3,r6
      0016D6 7C 00            [12] 3501 	mov	r4,#0x00
      0016D8 7F 40            [12] 3502 	mov	r7,#0x40
      0016DA 8B 82            [24] 3503 	mov	dpl,r3
      0016DC 8C 83            [24] 3504 	mov	dph,r4
      0016DE 8F F0            [24] 3505 	mov	b,r7
      0016E0 C0 06            [24] 3506 	push	ar6
      0016E2 12 4E 56         [24] 3507 	lcall	_vTaskInternalSetTimeOutState
      0016E5 D0 06            [24] 3508 	pop	ar6
                           000DAB  3509 	C$queue.c$1601$6_0$289 ==.
                                   3510 ;	queue.c:1601: xEntryTimeSet = pdTRUE;
      0016E7 E5 0D            [12] 3511 	mov	a,_bp
      0016E9 24 05            [12] 3512 	add	a,#0x05
      0016EB F8               [12] 3513 	mov	r0,a
      0016EC 76 01            [12] 3514 	mov	@r0,#0x01
      0016EE                       3515 00112$:
                           000DB2  3516 	C$queue.c$1610$3_0$280 ==.
                                   3517 ;	queue.c:1610: taskEXIT_CRITICAL();
      0016EE D0 E0            [24] 3518 	pop ACC 
      0016F0 53 E0 80         [24] 3519 	anl	_ACC,#0x80
      0016F3 E5 E0            [12] 3520 	mov	a,_ACC
      0016F5 42 A8            [12] 3521 	orl	_IE,a
      0016F7 D0 E0            [24] 3522 	pop ACC 
                           000DBD  3523 	C$queue.c$1615$3_0$280 ==.
                                   3524 ;	queue.c:1615: vTaskSuspendAll();
      0016F9 C0 06            [24] 3525 	push	ar6
      0016FB 12 2E 9C         [24] 3526 	lcall	_vTaskSuspendAll
      0016FE D0 06            [24] 3527 	pop	ar6
                           000DC4  3528 	C$queue.c$1616$3_0$280 ==.
                                   3529 ;	queue.c:1616: prvLockQueue( pxQueue );
      001700 C0 E0            [24] 3530 	push ACC 
      001702 C0 A8            [24] 3531 	push IE 
                                   3532 ;	assignBit
      001704 C2 AF            [12] 3533 	clr	_EA
      001706 E5 0D            [12] 3534 	mov	a,_bp
      001708 24 09            [12] 3535 	add	a,#0x09
      00170A F8               [12] 3536 	mov	r0,a
      00170B 74 27            [12] 3537 	mov	a,#0x27
      00170D 26               [12] 3538 	add	a,@r0
      00170E FB               [12] 3539 	mov	r3,a
      00170F 74 00            [12] 3540 	mov	a,#0x00
      001711 08               [12] 3541 	inc	r0
      001712 36               [12] 3542 	addc	a,@r0
      001713 FC               [12] 3543 	mov	r4,a
      001714 08               [12] 3544 	inc	r0
      001715 86 07            [24] 3545 	mov	ar7,@r0
      001717 8B 82            [24] 3546 	mov	dpl,r3
      001719 8C 83            [24] 3547 	mov	dph,r4
      00171B 8F F0            [24] 3548 	mov	b,r7
      00171D 12 7C 4D         [24] 3549 	lcall	__gptrget
      001720 FA               [12] 3550 	mov	r2,a
      001721 BA FF 02         [24] 3551 	cjne	r2,#0xff,00182$
      001724 80 03            [24] 3552 	sjmp	00183$
      001726                       3553 00182$:
      001726 02 17 34         [24] 3554 	ljmp	00114$
      001729                       3555 00183$:
      001729 8B 82            [24] 3556 	mov	dpl,r3
      00172B 8C 83            [24] 3557 	mov	dph,r4
      00172D 8F F0            [24] 3558 	mov	b,r7
      00172F 74 00            [12] 3559 	mov	a,#0x00
      001731 12 79 22         [24] 3560 	lcall	__gptrput
      001734                       3561 00114$:
      001734 E5 0D            [12] 3562 	mov	a,_bp
      001736 24 09            [12] 3563 	add	a,#0x09
      001738 F8               [12] 3564 	mov	r0,a
      001739 74 28            [12] 3565 	mov	a,#0x28
      00173B 26               [12] 3566 	add	a,@r0
      00173C FB               [12] 3567 	mov	r3,a
      00173D 74 00            [12] 3568 	mov	a,#0x00
      00173F 08               [12] 3569 	inc	r0
      001740 36               [12] 3570 	addc	a,@r0
      001741 FC               [12] 3571 	mov	r4,a
      001742 08               [12] 3572 	inc	r0
      001743 86 07            [24] 3573 	mov	ar7,@r0
      001745 8B 82            [24] 3574 	mov	dpl,r3
      001747 8C 83            [24] 3575 	mov	dph,r4
      001749 8F F0            [24] 3576 	mov	b,r7
      00174B 12 7C 4D         [24] 3577 	lcall	__gptrget
      00174E FA               [12] 3578 	mov	r2,a
      00174F BA FF 02         [24] 3579 	cjne	r2,#0xff,00184$
      001752 80 03            [24] 3580 	sjmp	00185$
      001754                       3581 00184$:
      001754 02 17 62         [24] 3582 	ljmp	00116$
      001757                       3583 00185$:
      001757 8B 82            [24] 3584 	mov	dpl,r3
      001759 8C 83            [24] 3585 	mov	dph,r4
      00175B 8F F0            [24] 3586 	mov	b,r7
      00175D 74 00            [12] 3587 	mov	a,#0x00
      00175F 12 79 22         [24] 3588 	lcall	__gptrput
      001762                       3589 00116$:
      001762 C0 06            [24] 3590 	push	ar6
      001764 D0 E0            [24] 3591 	pop ACC 
      001766 53 E0 80         [24] 3592 	anl	_ACC,#0x80
      001769 E5 E0            [12] 3593 	mov	a,_ACC
      00176B 42 A8            [12] 3594 	orl	_IE,a
      00176D D0 E0            [24] 3595 	pop ACC 
                           000E33  3596 	C$queue.c$1619$3_0$280 ==.
                                   3597 ;	queue.c:1619: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      00176F E5 0D            [12] 3598 	mov	a,_bp
      001771 24 FC            [12] 3599 	add	a,#0xfc
      001773 FF               [12] 3600 	mov	r7,a
      001774 7C 00            [12] 3601 	mov	r4,#0x00
      001776 7B 40            [12] 3602 	mov	r3,#0x40
      001778 A8 0D            [24] 3603 	mov	r0,_bp
      00177A 08               [12] 3604 	inc	r0
      00177B 86 02            [24] 3605 	mov	ar2,@r0
      00177D 7D 00            [12] 3606 	mov	r5,#0x00
      00177F 7E 40            [12] 3607 	mov	r6,#0x40
      001781 C0 06            [24] 3608 	push	ar6
      001783 C0 07            [24] 3609 	push	ar7
      001785 C0 04            [24] 3610 	push	ar4
      001787 C0 03            [24] 3611 	push	ar3
      001789 8A 82            [24] 3612 	mov	dpl,r2
      00178B 8D 83            [24] 3613 	mov	dph,r5
      00178D 8E F0            [24] 3614 	mov	b,r6
      00178F 12 4E 88         [24] 3615 	lcall	_xTaskCheckForTimeOut
      001792 AF 82            [24] 3616 	mov	r7,dpl
      001794 15 81            [12] 3617 	dec	sp
      001796 15 81            [12] 3618 	dec	sp
      001798 15 81            [12] 3619 	dec	sp
      00179A D0 06            [24] 3620 	pop	ar6
      00179C D0 06            [24] 3621 	pop	ar6
      00179E EF               [12] 3622 	mov	a,r7
      00179F 60 03            [24] 3623 	jz	00186$
      0017A1 02 18 37         [24] 3624 	ljmp	00125$
      0017A4                       3625 00186$:
                           000E68  3626 	C$queue.c$1625$4_0$294 ==.
                                   3627 ;	queue.c:1625: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      0017A4 E5 0D            [12] 3628 	mov	a,_bp
      0017A6 24 09            [12] 3629 	add	a,#0x09
      0017A8 F8               [12] 3630 	mov	r0,a
      0017A9 86 82            [24] 3631 	mov	dpl,@r0
      0017AB 08               [12] 3632 	inc	r0
      0017AC 86 83            [24] 3633 	mov	dph,@r0
      0017AE 08               [12] 3634 	inc	r0
      0017AF 86 F0            [24] 3635 	mov	b,@r0
      0017B1 C0 06            [24] 3636 	push	ar6
      0017B3 12 24 58         [24] 3637 	lcall	_prvIsQueueEmpty
      0017B6 E5 82            [12] 3638 	mov	a,dpl
      0017B8 D0 06            [24] 3639 	pop	ar6
      0017BA 70 03            [24] 3640 	jnz	00187$
      0017BC 02 18 19         [24] 3641 	ljmp	00120$
      0017BF                       3642 00187$:
                           000E83  3643 	C$queue.c$1646$5_0$295 ==.
                                   3644 ;	queue.c:1646: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      0017BF E5 0D            [12] 3645 	mov	a,_bp
      0017C1 24 09            [12] 3646 	add	a,#0x09
      0017C3 F8               [12] 3647 	mov	r0,a
      0017C4 74 18            [12] 3648 	mov	a,#0x18
      0017C6 26               [12] 3649 	add	a,@r0
      0017C7 FC               [12] 3650 	mov	r4,a
      0017C8 74 00            [12] 3651 	mov	a,#0x00
      0017CA 08               [12] 3652 	inc	r0
      0017CB 36               [12] 3653 	addc	a,@r0
      0017CC FD               [12] 3654 	mov	r5,a
      0017CD 08               [12] 3655 	inc	r0
      0017CE 86 07            [24] 3656 	mov	ar7,@r0
      0017D0 C0 06            [24] 3657 	push	ar6
      0017D2 E5 0D            [12] 3658 	mov	a,_bp
      0017D4 24 FC            [12] 3659 	add	a,#0xfc
      0017D6 F8               [12] 3660 	mov	r0,a
      0017D7 E6               [12] 3661 	mov	a,@r0
      0017D8 C0 E0            [24] 3662 	push	acc
      0017DA 08               [12] 3663 	inc	r0
      0017DB E6               [12] 3664 	mov	a,@r0
      0017DC C0 E0            [24] 3665 	push	acc
      0017DE 8C 82            [24] 3666 	mov	dpl,r4
      0017E0 8D 83            [24] 3667 	mov	dph,r5
      0017E2 8F F0            [24] 3668 	mov	b,r7
      0017E4 12 3E 46         [24] 3669 	lcall	_vTaskPlaceOnEventList
      0017E7 15 81            [12] 3670 	dec	sp
      0017E9 15 81            [12] 3671 	dec	sp
      0017EB D0 06            [24] 3672 	pop	ar6
                           000EB1  3673 	C$queue.c$1647$5_0$295 ==.
                                   3674 ;	queue.c:1647: prvUnlockQueue( pxQueue );
      0017ED E5 0D            [12] 3675 	mov	a,_bp
      0017EF 24 09            [12] 3676 	add	a,#0x09
      0017F1 F8               [12] 3677 	mov	r0,a
      0017F2 86 82            [24] 3678 	mov	dpl,@r0
      0017F4 08               [12] 3679 	inc	r0
      0017F5 86 83            [24] 3680 	mov	dph,@r0
      0017F7 08               [12] 3681 	inc	r0
      0017F8 86 F0            [24] 3682 	mov	b,@r0
      0017FA C0 06            [24] 3683 	push	ar6
      0017FC 12 22 C0         [24] 3684 	lcall	_prvUnlockQueue
      0017FF D0 06            [24] 3685 	pop	ar6
                           000EC5  3686 	C$queue.c$1649$5_0$295 ==.
                                   3687 ;	queue.c:1649: if( xTaskResumeAll() == pdFALSE )
      001801 C0 06            [24] 3688 	push	ar6
      001803 12 2E A4         [24] 3689 	lcall	_xTaskResumeAll
      001806 E5 82            [12] 3690 	mov	a,dpl
      001808 D0 06            [24] 3691 	pop	ar6
      00180A 60 03            [24] 3692 	jz	00188$
      00180C 02 16 30         [24] 3693 	ljmp	00128$
      00180F                       3694 00188$:
                           000ED3  3695 	C$queue.c$1651$6_0$296 ==.
                                   3696 ;	queue.c:1651: portYIELD_WITHIN_API();
      00180F C0 06            [24] 3697 	push	ar6
      001811 12 77 3C         [24] 3698 	lcall	_vPortYield
      001814 D0 06            [24] 3699 	pop	ar6
      001816 02 16 30         [24] 3700 	ljmp	00128$
      001819                       3701 00120$:
                           000EDD  3702 	C$queue.c$1662$5_0$298 ==.
                                   3703 ;	queue.c:1662: prvUnlockQueue( pxQueue );
      001819 E5 0D            [12] 3704 	mov	a,_bp
      00181B 24 09            [12] 3705 	add	a,#0x09
      00181D F8               [12] 3706 	mov	r0,a
      00181E 86 82            [24] 3707 	mov	dpl,@r0
      001820 08               [12] 3708 	inc	r0
      001821 86 83            [24] 3709 	mov	dph,@r0
      001823 08               [12] 3710 	inc	r0
      001824 86 F0            [24] 3711 	mov	b,@r0
      001826 C0 06            [24] 3712 	push	ar6
      001828 12 22 C0         [24] 3713 	lcall	_prvUnlockQueue
      00182B D0 06            [24] 3714 	pop	ar6
                           000EF1  3715 	C$queue.c$1663$5_0$298 ==.
                                   3716 ;	queue.c:1663: ( void ) xTaskResumeAll();
      00182D C0 06            [24] 3717 	push	ar6
      00182F 12 2E A4         [24] 3718 	lcall	_xTaskResumeAll
      001832 D0 06            [24] 3719 	pop	ar6
      001834 02 16 30         [24] 3720 	ljmp	00128$
      001837                       3721 00125$:
                           000EFB  3722 	C$queue.c$1669$4_0$299 ==.
                                   3723 ;	queue.c:1669: prvUnlockQueue( pxQueue );
      001837 E5 0D            [12] 3724 	mov	a,_bp
      001839 24 09            [12] 3725 	add	a,#0x09
      00183B F8               [12] 3726 	mov	r0,a
      00183C 86 82            [24] 3727 	mov	dpl,@r0
      00183E 08               [12] 3728 	inc	r0
      00183F 86 83            [24] 3729 	mov	dph,@r0
      001841 08               [12] 3730 	inc	r0
      001842 86 F0            [24] 3731 	mov	b,@r0
      001844 C0 06            [24] 3732 	push	ar6
      001846 12 22 C0         [24] 3733 	lcall	_prvUnlockQueue
      001849 D0 06            [24] 3734 	pop	ar6
                           000F0F  3735 	C$queue.c$1670$4_0$299 ==.
                                   3736 ;	queue.c:1670: ( void ) xTaskResumeAll();
      00184B C0 06            [24] 3737 	push	ar6
      00184D 12 2E A4         [24] 3738 	lcall	_xTaskResumeAll
      001850 D0 06            [24] 3739 	pop	ar6
                           000F16  3740 	C$queue.c$1676$4_0$299 ==.
                                   3741 ;	queue.c:1676: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      001852 E5 0D            [12] 3742 	mov	a,_bp
      001854 24 09            [12] 3743 	add	a,#0x09
      001856 F8               [12] 3744 	mov	r0,a
      001857 86 82            [24] 3745 	mov	dpl,@r0
      001859 08               [12] 3746 	inc	r0
      00185A 86 83            [24] 3747 	mov	dph,@r0
      00185C 08               [12] 3748 	inc	r0
      00185D 86 F0            [24] 3749 	mov	b,@r0
      00185F C0 06            [24] 3750 	push	ar6
      001861 12 24 58         [24] 3751 	lcall	_prvIsQueueEmpty
      001864 E5 82            [12] 3752 	mov	a,dpl
      001866 D0 06            [24] 3753 	pop	ar6
      001868 70 03            [24] 3754 	jnz	00189$
      00186A 02 16 30         [24] 3755 	ljmp	00128$
      00186D                       3756 00189$:
                           000F31  3757 	C$queue.c$1703$5_0$300 ==.
                                   3758 ;	queue.c:1703: return errQUEUE_EMPTY;
      00186D 75 82 00         [24] 3759 	mov	dpl,#0x00
      001870                       3760 00130$:
                           000F34  3761 	C$queue.c$1711$2_0$278 ==.
                                   3762 ;	queue.c:1711: }
      001870 85 0D 81         [24] 3763 	mov	sp,_bp
      001873 D0 0D            [24] 3764 	pop	_bp
                           000F39  3765 	C$queue.c$1711$2_0$278 ==.
                           000F39  3766 	XG$xQueueSemaphoreTake$0$0 ==.
      001875 22               [24] 3767 	ret
                                   3768 ;------------------------------------------------------------
                                   3769 ;Allocation info for local variables in function 'xQueuePeek'
                                   3770 ;------------------------------------------------------------
                                   3771 ;pvBuffer                  Allocated to stack - _bp -5
                                   3772 ;xTicksToWait              Allocated to stack - _bp -7
                                   3773 ;xQueue                    Allocated to registers r5 r3 r7 
                                   3774 ;xEntryTimeSet             Allocated to registers r4 
                                   3775 ;xTimeOut                  Allocated to stack - _bp +8
                                   3776 ;pcOriginalReadPosition    Allocated to registers r6 r5 r4 
                                   3777 ;pxQueue                   Allocated to stack - _bp +11
                                   3778 ;uxMessagesWaiting         Allocated to registers 
                                   3779 ;sloc0                     Allocated to stack - _bp +5
                                   3780 ;sloc1                     Allocated to stack - _bp +1
                                   3781 ;sloc2                     Allocated to stack - _bp +2
                                   3782 ;------------------------------------------------------------
                           000F3A  3783 	G$xQueuePeek$0$0 ==.
                           000F3A  3784 	C$queue.c$1714$2_0$303 ==.
                                   3785 ;	queue.c:1714: BaseType_t xQueuePeek( QueueHandle_t xQueue,
                                   3786 ;	-----------------------------------------
                                   3787 ;	 function xQueuePeek
                                   3788 ;	-----------------------------------------
      001876                       3789 _xQueuePeek:
      001876 C0 0D            [24] 3790 	push	_bp
      001878 85 81 0D         [24] 3791 	mov	_bp,sp
      00187B E5 81            [12] 3792 	mov	a,sp
      00187D 24 0D            [12] 3793 	add	a,#0x0d
      00187F F5 81            [12] 3794 	mov	sp,a
      001881 AD 82            [24] 3795 	mov	r5,dpl
      001883 AB 83            [24] 3796 	mov	r3,dph
      001885 AF F0            [24] 3797 	mov	r7,b
                           000F4B  3798 	C$queue.c$1718$2_0$303 ==.
                                   3799 ;	queue.c:1718: BaseType_t xEntryTimeSet = pdFALSE;
      001887 7C 00            [12] 3800 	mov	r4,#0x00
                           000F4D  3801 	C$queue.c$1721$2_0$303 ==.
                                   3802 ;	queue.c:1721: Queue_t * const pxQueue = xQueue;
      001889 E5 0D            [12] 3803 	mov	a,_bp
      00188B 24 0B            [12] 3804 	add	a,#0x0b
      00188D F8               [12] 3805 	mov	r0,a
      00188E A6 05            [24] 3806 	mov	@r0,ar5
      001890 08               [12] 3807 	inc	r0
      001891 A6 03            [24] 3808 	mov	@r0,ar3
      001893 08               [12] 3809 	inc	r0
      001894 A6 07            [24] 3810 	mov	@r0,ar7
                           000F5A  3811 	C$queue.c$1728$6_0$314 ==.
                                   3812 ;	queue.c:1728: configASSERT( !( ( ( pvBuffer ) == NULL ) && ( ( pxQueue )->uxItemSize != ( UBaseType_t ) 0U ) ) );
      001896 E5 0D            [12] 3813 	mov	a,_bp
      001898 24 08            [12] 3814 	add	a,#0x08
      00189A FE               [12] 3815 	mov	r6,a
      00189B A8 0D            [24] 3816 	mov	r0,_bp
      00189D 08               [12] 3817 	inc	r0
      00189E A6 06            [24] 3818 	mov	@r0,ar6
      0018A0 E5 0D            [12] 3819 	mov	a,_bp
      0018A2 24 05            [12] 3820 	add	a,#0x05
      0018A4 F8               [12] 3821 	mov	r0,a
      0018A5 74 24            [12] 3822 	mov	a,#0x24
      0018A7 2D               [12] 3823 	add	a,r5
      0018A8 F6               [12] 3824 	mov	@r0,a
      0018A9 74 00            [12] 3825 	mov	a,#0x00
      0018AB 3B               [12] 3826 	addc	a,r3
      0018AC 08               [12] 3827 	inc	r0
      0018AD F6               [12] 3828 	mov	@r0,a
      0018AE 08               [12] 3829 	inc	r0
      0018AF A6 07            [24] 3830 	mov	@r0,ar7
      0018B1                       3831 00128$:
                           000F75  3832 	C$queue.c$1742$3_0$305 ==.
                                   3833 ;	queue.c:1742: taskENTER_CRITICAL();
      0018B1 C0 E0            [24] 3834 	push ACC 
      0018B3 C0 A8            [24] 3835 	push IE 
                                   3836 ;	assignBit
      0018B5 C2 AF            [12] 3837 	clr	_EA
                           000F7B  3838 	C$queue.c$1744$4_0$306 ==.
                                   3839 ;	queue.c:1744: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      0018B7 E5 0D            [12] 3840 	mov	a,_bp
      0018B9 24 05            [12] 3841 	add	a,#0x05
      0018BB F8               [12] 3842 	mov	r0,a
      0018BC 86 82            [24] 3843 	mov	dpl,@r0
      0018BE 08               [12] 3844 	inc	r0
      0018BF 86 83            [24] 3845 	mov	dph,@r0
      0018C1 08               [12] 3846 	inc	r0
      0018C2 86 F0            [24] 3847 	mov	b,@r0
      0018C4 12 7C 4D         [24] 3848 	lcall	__gptrget
      0018C7 70 03            [24] 3849 	jnz	00178$
      0018C9 02 19 A2         [24] 3850 	ljmp	00111$
      0018CC                       3851 00178$:
                           000F90  3852 	C$queue.c$1748$4_0$306 ==.
                                   3853 ;	queue.c:1748: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
                           000F90  3854 	C$queue.c$1753$5_0$307 ==.
                                   3855 ;	queue.c:1753: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
      0018CC E5 0D            [12] 3856 	mov	a,_bp
      0018CE 24 0B            [12] 3857 	add	a,#0x0b
      0018D0 F8               [12] 3858 	mov	r0,a
      0018D1 74 06            [12] 3859 	mov	a,#0x06
      0018D3 26               [12] 3860 	add	a,@r0
      0018D4 FA               [12] 3861 	mov	r2,a
      0018D5 74 00            [12] 3862 	mov	a,#0x00
      0018D7 08               [12] 3863 	inc	r0
      0018D8 36               [12] 3864 	addc	a,@r0
      0018D9 FB               [12] 3865 	mov	r3,a
      0018DA 08               [12] 3866 	inc	r0
      0018DB 86 07            [24] 3867 	mov	ar7,@r0
      0018DD 74 03            [12] 3868 	mov	a,#0x03
      0018DF 2A               [12] 3869 	add	a,r2
      0018E0 FA               [12] 3870 	mov	r2,a
      0018E1 74 00            [12] 3871 	mov	a,#0x00
      0018E3 3B               [12] 3872 	addc	a,r3
      0018E4 FB               [12] 3873 	mov	r3,a
      0018E5 8A 82            [24] 3874 	mov	dpl,r2
      0018E7 8B 83            [24] 3875 	mov	dph,r3
      0018E9 8F F0            [24] 3876 	mov	b,r7
      0018EB 12 7C 4D         [24] 3877 	lcall	__gptrget
      0018EE FE               [12] 3878 	mov	r6,a
      0018EF A3               [24] 3879 	inc	dptr
      0018F0 12 7C 4D         [24] 3880 	lcall	__gptrget
      0018F3 FD               [12] 3881 	mov	r5,a
      0018F4 A3               [24] 3882 	inc	dptr
      0018F5 12 7C 4D         [24] 3883 	lcall	__gptrget
      0018F8 FC               [12] 3884 	mov	r4,a
                           000FBD  3885 	C$queue.c$1755$5_0$307 ==.
                                   3886 ;	queue.c:1755: prvCopyDataFromQueue( pxQueue, pvBuffer );
      0018F9 C0 06            [24] 3887 	push	ar6
      0018FB C0 05            [24] 3888 	push	ar5
      0018FD C0 04            [24] 3889 	push	ar4
      0018FF E5 0D            [12] 3890 	mov	a,_bp
      001901 24 FB            [12] 3891 	add	a,#0xfb
      001903 F8               [12] 3892 	mov	r0,a
      001904 E6               [12] 3893 	mov	a,@r0
      001905 C0 E0            [24] 3894 	push	acc
      001907 08               [12] 3895 	inc	r0
      001908 E6               [12] 3896 	mov	a,@r0
      001909 C0 E0            [24] 3897 	push	acc
      00190B 08               [12] 3898 	inc	r0
      00190C E6               [12] 3899 	mov	a,@r0
      00190D C0 E0            [24] 3900 	push	acc
      00190F E5 0D            [12] 3901 	mov	a,_bp
      001911 24 0B            [12] 3902 	add	a,#0x0b
      001913 F8               [12] 3903 	mov	r0,a
      001914 86 82            [24] 3904 	mov	dpl,@r0
      001916 08               [12] 3905 	inc	r0
      001917 86 83            [24] 3906 	mov	dph,@r0
      001919 08               [12] 3907 	inc	r0
      00191A 86 F0            [24] 3908 	mov	b,@r0
      00191C 12 21 69         [24] 3909 	lcall	_prvCopyDataFromQueue
      00191F 15 81            [12] 3910 	dec	sp
      001921 15 81            [12] 3911 	dec	sp
      001923 15 81            [12] 3912 	dec	sp
      001925 D0 04            [24] 3913 	pop	ar4
      001927 D0 05            [24] 3914 	pop	ar5
      001929 D0 06            [24] 3915 	pop	ar6
                           000FEF  3916 	C$queue.c$1759$5_0$307 ==.
                                   3917 ;	queue.c:1759: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
      00192B E5 0D            [12] 3918 	mov	a,_bp
      00192D 24 0B            [12] 3919 	add	a,#0x0b
      00192F F8               [12] 3920 	mov	r0,a
      001930 74 06            [12] 3921 	mov	a,#0x06
      001932 26               [12] 3922 	add	a,@r0
      001933 FA               [12] 3923 	mov	r2,a
      001934 74 00            [12] 3924 	mov	a,#0x00
      001936 08               [12] 3925 	inc	r0
      001937 36               [12] 3926 	addc	a,@r0
      001938 FB               [12] 3927 	mov	r3,a
      001939 08               [12] 3928 	inc	r0
      00193A 86 07            [24] 3929 	mov	ar7,@r0
      00193C 74 03            [12] 3930 	mov	a,#0x03
      00193E 2A               [12] 3931 	add	a,r2
      00193F FA               [12] 3932 	mov	r2,a
      001940 74 00            [12] 3933 	mov	a,#0x00
      001942 3B               [12] 3934 	addc	a,r3
      001943 FB               [12] 3935 	mov	r3,a
      001944 8A 82            [24] 3936 	mov	dpl,r2
      001946 8B 83            [24] 3937 	mov	dph,r3
      001948 8F F0            [24] 3938 	mov	b,r7
      00194A EE               [12] 3939 	mov	a,r6
      00194B 12 79 22         [24] 3940 	lcall	__gptrput
      00194E A3               [24] 3941 	inc	dptr
      00194F ED               [12] 3942 	mov	a,r5
      001950 12 79 22         [24] 3943 	lcall	__gptrput
      001953 A3               [24] 3944 	inc	dptr
      001954 EC               [12] 3945 	mov	a,r4
      001955 12 79 22         [24] 3946 	lcall	__gptrput
                           00101C  3947 	C$queue.c$1763$5_0$307 ==.
                                   3948 ;	queue.c:1763: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      001958 E5 0D            [12] 3949 	mov	a,_bp
      00195A 24 0B            [12] 3950 	add	a,#0x0b
      00195C F8               [12] 3951 	mov	r0,a
      00195D 74 18            [12] 3952 	mov	a,#0x18
      00195F 26               [12] 3953 	add	a,@r0
      001960 FA               [12] 3954 	mov	r2,a
      001961 74 00            [12] 3955 	mov	a,#0x00
      001963 08               [12] 3956 	inc	r0
      001964 36               [12] 3957 	addc	a,@r0
      001965 FB               [12] 3958 	mov	r3,a
      001966 08               [12] 3959 	inc	r0
      001967 86 07            [24] 3960 	mov	ar7,@r0
      001969 8A 82            [24] 3961 	mov	dpl,r2
      00196B 8B 83            [24] 3962 	mov	dph,r3
      00196D 8F F0            [24] 3963 	mov	b,r7
      00196F 12 7C 4D         [24] 3964 	lcall	__gptrget
      001972 70 03            [24] 3965 	jnz	00179$
      001974 02 19 91         [24] 3966 	ljmp	00104$
      001977                       3967 00179$:
                           00103B  3968 	C$queue.c$1765$6_0$308 ==.
                                   3969 ;	queue.c:1765: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      001977 E5 0D            [12] 3970 	mov	a,_bp
      001979 24 0B            [12] 3971 	add	a,#0x0b
      00197B F8               [12] 3972 	mov	r0,a
      00197C 74 18            [12] 3973 	mov	a,#0x18
      00197E 26               [12] 3974 	add	a,@r0
      00197F FA               [12] 3975 	mov	r2,a
      001980 74 00            [12] 3976 	mov	a,#0x00
      001982 08               [12] 3977 	inc	r0
      001983 36               [12] 3978 	addc	a,@r0
      001984 FB               [12] 3979 	mov	r3,a
      001985 08               [12] 3980 	inc	r0
      001986 86 07            [24] 3981 	mov	ar7,@r0
      001988 8A 82            [24] 3982 	mov	dpl,r2
      00198A 8B 83            [24] 3983 	mov	dph,r3
      00198C 8F F0            [24] 3984 	mov	b,r7
      00198E 12 40 62         [24] 3985 	lcall	_xTaskRemoveFromEventList
      001991                       3986 00104$:
                           001055  3987 	C$queue.c$1780$5_0$307 ==.
                                   3988 ;	queue.c:1780: taskEXIT_CRITICAL();
      001991 D0 E0            [24] 3989 	pop ACC 
      001993 53 E0 80         [24] 3990 	anl	_ACC,#0x80
      001996 E5 E0            [12] 3991 	mov	a,_ACC
      001998 42 A8            [12] 3992 	orl	_IE,a
      00199A D0 E0            [24] 3993 	pop ACC 
                           001060  3994 	C$queue.c$1781$5_0$307 ==.
                                   3995 ;	queue.c:1781: return pdPASS;
      00199C 75 82 01         [24] 3996 	mov	dpl,#0x01
      00199F 02 1B 9E         [24] 3997 	ljmp	00130$
      0019A2                       3998 00111$:
                           001066  3999 	C$queue.c$1785$5_0$312 ==.
                                   4000 ;	queue.c:1785: if( xTicksToWait == ( TickType_t ) 0 )
      0019A2 E5 0D            [12] 4001 	mov	a,_bp
      0019A4 24 F9            [12] 4002 	add	a,#0xf9
      0019A6 F8               [12] 4003 	mov	r0,a
      0019A7 E6               [12] 4004 	mov	a,@r0
      0019A8 08               [12] 4005 	inc	r0
      0019A9 46               [12] 4006 	orl	a,@r0
      0019AA 60 03            [24] 4007 	jz	00180$
      0019AC 02 19 C0         [24] 4008 	ljmp	00108$
      0019AF                       4009 00180$:
                           001073  4010 	C$queue.c$1789$6_0$313 ==.
                                   4011 ;	queue.c:1789: taskEXIT_CRITICAL();
      0019AF D0 E0            [24] 4012 	pop ACC 
      0019B1 53 E0 80         [24] 4013 	anl	_ACC,#0x80
      0019B4 E5 E0            [12] 4014 	mov	a,_ACC
      0019B6 42 A8            [12] 4015 	orl	_IE,a
      0019B8 D0 E0            [24] 4016 	pop ACC 
                           00107E  4017 	C$queue.c$1791$6_0$313 ==.
                                   4018 ;	queue.c:1791: return errQUEUE_EMPTY;
      0019BA 75 82 00         [24] 4019 	mov	dpl,#0x00
      0019BD 02 1B 9E         [24] 4020 	ljmp	00130$
      0019C0                       4021 00108$:
                           001084  4022 	C$queue.c$1793$5_0$312 ==.
                                   4023 ;	queue.c:1793: else if( xEntryTimeSet == pdFALSE )
      0019C0 EC               [12] 4024 	mov	a,r4
      0019C1 60 03            [24] 4025 	jz	00181$
      0019C3 02 19 DB         [24] 4026 	ljmp	00112$
      0019C6                       4027 00181$:
                           00108A  4028 	C$queue.c$1798$6_0$314 ==.
                                   4029 ;	queue.c:1798: vTaskInternalSetTimeOutState( &xTimeOut );
      0019C6 8E 02            [24] 4030 	mov	ar2,r6
      0019C8 7B 00            [12] 4031 	mov	r3,#0x00
      0019CA 7F 40            [12] 4032 	mov	r7,#0x40
      0019CC 8A 82            [24] 4033 	mov	dpl,r2
      0019CE 8B 83            [24] 4034 	mov	dph,r3
      0019D0 8F F0            [24] 4035 	mov	b,r7
      0019D2 C0 06            [24] 4036 	push	ar6
      0019D4 12 4E 56         [24] 4037 	lcall	_vTaskInternalSetTimeOutState
      0019D7 D0 06            [24] 4038 	pop	ar6
                           00109D  4039 	C$queue.c$1799$6_0$314 ==.
                                   4040 ;	queue.c:1799: xEntryTimeSet = pdTRUE;
      0019D9 7C 01            [12] 4041 	mov	r4,#0x01
      0019DB                       4042 00112$:
                           00109F  4043 	C$queue.c$1808$2_0$303 ==.
                                   4044 ;	queue.c:1808: taskEXIT_CRITICAL();
      0019DB D0 E0            [24] 4045 	pop ACC 
      0019DD 53 E0 80         [24] 4046 	anl	_ACC,#0x80
      0019E0 E5 E0            [12] 4047 	mov	a,_ACC
      0019E2 42 A8            [12] 4048 	orl	_IE,a
      0019E4 D0 E0            [24] 4049 	pop ACC 
                           0010AA  4050 	C$queue.c$1813$3_0$305 ==.
                                   4051 ;	queue.c:1813: vTaskSuspendAll();
      0019E6 C0 06            [24] 4052 	push	ar6
      0019E8 C0 04            [24] 4053 	push	ar4
      0019EA 12 2E 9C         [24] 4054 	lcall	_vTaskSuspendAll
      0019ED D0 04            [24] 4055 	pop	ar4
      0019EF D0 06            [24] 4056 	pop	ar6
                           0010B5  4057 	C$queue.c$1814$3_0$305 ==.
                                   4058 ;	queue.c:1814: prvLockQueue( pxQueue );
      0019F1 C0 E0            [24] 4059 	push ACC 
      0019F3 C0 A8            [24] 4060 	push IE 
                                   4061 ;	assignBit
      0019F5 C2 AF            [12] 4062 	clr	_EA
      0019F7 E5 0D            [12] 4063 	mov	a,_bp
      0019F9 24 0B            [12] 4064 	add	a,#0x0b
      0019FB F8               [12] 4065 	mov	r0,a
      0019FC 74 27            [12] 4066 	mov	a,#0x27
      0019FE 26               [12] 4067 	add	a,@r0
      0019FF FA               [12] 4068 	mov	r2,a
      001A00 74 00            [12] 4069 	mov	a,#0x00
      001A02 08               [12] 4070 	inc	r0
      001A03 36               [12] 4071 	addc	a,@r0
      001A04 FB               [12] 4072 	mov	r3,a
      001A05 08               [12] 4073 	inc	r0
      001A06 86 07            [24] 4074 	mov	ar7,@r0
      001A08 8A 82            [24] 4075 	mov	dpl,r2
      001A0A 8B 83            [24] 4076 	mov	dph,r3
      001A0C 8F F0            [24] 4077 	mov	b,r7
      001A0E 12 7C 4D         [24] 4078 	lcall	__gptrget
      001A11 FD               [12] 4079 	mov	r5,a
      001A12 BD FF 02         [24] 4080 	cjne	r5,#0xff,00182$
      001A15 80 03            [24] 4081 	sjmp	00183$
      001A17                       4082 00182$:
      001A17 02 1A 25         [24] 4083 	ljmp	00114$
      001A1A                       4084 00183$:
      001A1A 8A 82            [24] 4085 	mov	dpl,r2
      001A1C 8B 83            [24] 4086 	mov	dph,r3
      001A1E 8F F0            [24] 4087 	mov	b,r7
      001A20 74 00            [12] 4088 	mov	a,#0x00
      001A22 12 79 22         [24] 4089 	lcall	__gptrput
      001A25                       4090 00114$:
      001A25 E5 0D            [12] 4091 	mov	a,_bp
      001A27 24 0B            [12] 4092 	add	a,#0x0b
      001A29 F8               [12] 4093 	mov	r0,a
      001A2A 74 28            [12] 4094 	mov	a,#0x28
      001A2C 26               [12] 4095 	add	a,@r0
      001A2D FA               [12] 4096 	mov	r2,a
      001A2E 74 00            [12] 4097 	mov	a,#0x00
      001A30 08               [12] 4098 	inc	r0
      001A31 36               [12] 4099 	addc	a,@r0
      001A32 FB               [12] 4100 	mov	r3,a
      001A33 08               [12] 4101 	inc	r0
      001A34 86 07            [24] 4102 	mov	ar7,@r0
      001A36 8A 82            [24] 4103 	mov	dpl,r2
      001A38 8B 83            [24] 4104 	mov	dph,r3
      001A3A 8F F0            [24] 4105 	mov	b,r7
      001A3C 12 7C 4D         [24] 4106 	lcall	__gptrget
      001A3F FD               [12] 4107 	mov	r5,a
      001A40 BD FF 02         [24] 4108 	cjne	r5,#0xff,00184$
      001A43 80 03            [24] 4109 	sjmp	00185$
      001A45                       4110 00184$:
      001A45 02 1A 53         [24] 4111 	ljmp	00116$
      001A48                       4112 00185$:
      001A48 8A 82            [24] 4113 	mov	dpl,r2
      001A4A 8B 83            [24] 4114 	mov	dph,r3
      001A4C 8F F0            [24] 4115 	mov	b,r7
      001A4E 74 00            [12] 4116 	mov	a,#0x00
      001A50 12 79 22         [24] 4117 	lcall	__gptrput
      001A53                       4118 00116$:
      001A53 C0 04            [24] 4119 	push	ar4
      001A55 D0 E0            [24] 4120 	pop ACC 
      001A57 53 E0 80         [24] 4121 	anl	_ACC,#0x80
      001A5A E5 E0            [12] 4122 	mov	a,_ACC
      001A5C 42 A8            [12] 4123 	orl	_IE,a
      001A5E D0 E0            [24] 4124 	pop ACC 
                           001124  4125 	C$queue.c$1817$3_0$305 ==.
                                   4126 ;	queue.c:1817: if( xTaskCheckForTimeOut( &xTimeOut, &xTicksToWait ) == pdFALSE )
      001A60 E5 0D            [12] 4127 	mov	a,_bp
      001A62 24 F9            [12] 4128 	add	a,#0xf9
      001A64 FF               [12] 4129 	mov	r7,a
      001A65 A8 0D            [24] 4130 	mov	r0,_bp
      001A67 08               [12] 4131 	inc	r0
      001A68 08               [12] 4132 	inc	r0
      001A69 A6 07            [24] 4133 	mov	@r0,ar7
      001A6B 08               [12] 4134 	inc	r0
      001A6C 76 00            [12] 4135 	mov	@r0,#0x00
      001A6E 08               [12] 4136 	inc	r0
      001A6F 76 40            [12] 4137 	mov	@r0,#0x40
      001A71 A8 0D            [24] 4138 	mov	r0,_bp
      001A73 08               [12] 4139 	inc	r0
      001A74 86 04            [24] 4140 	mov	ar4,@r0
      001A76 7D 00            [12] 4141 	mov	r5,#0x00
      001A78 7F 40            [12] 4142 	mov	r7,#0x40
      001A7A C0 06            [24] 4143 	push	ar6
      001A7C C0 04            [24] 4144 	push	ar4
      001A7E A8 0D            [24] 4145 	mov	r0,_bp
      001A80 08               [12] 4146 	inc	r0
      001A81 08               [12] 4147 	inc	r0
      001A82 E6               [12] 4148 	mov	a,@r0
      001A83 C0 E0            [24] 4149 	push	acc
      001A85 08               [12] 4150 	inc	r0
      001A86 E6               [12] 4151 	mov	a,@r0
      001A87 C0 E0            [24] 4152 	push	acc
      001A89 08               [12] 4153 	inc	r0
      001A8A E6               [12] 4154 	mov	a,@r0
      001A8B C0 E0            [24] 4155 	push	acc
      001A8D 8C 82            [24] 4156 	mov	dpl,r4
      001A8F 8D 83            [24] 4157 	mov	dph,r5
      001A91 8F F0            [24] 4158 	mov	b,r7
      001A93 12 4E 88         [24] 4159 	lcall	_xTaskCheckForTimeOut
      001A96 AF 82            [24] 4160 	mov	r7,dpl
      001A98 15 81            [12] 4161 	dec	sp
      001A9A 15 81            [12] 4162 	dec	sp
      001A9C 15 81            [12] 4163 	dec	sp
      001A9E D0 04            [24] 4164 	pop	ar4
      001AA0 D0 06            [24] 4165 	pop	ar6
      001AA2 D0 04            [24] 4166 	pop	ar4
      001AA4 EF               [12] 4167 	mov	a,r7
      001AA5 60 03            [24] 4168 	jz	00186$
      001AA7 02 1B 59         [24] 4169 	ljmp	00125$
      001AAA                       4170 00186$:
                           00116E  4171 	C$queue.c$1821$4_0$319 ==.
                                   4172 ;	queue.c:1821: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      001AAA E5 0D            [12] 4173 	mov	a,_bp
      001AAC 24 0B            [12] 4174 	add	a,#0x0b
      001AAE F8               [12] 4175 	mov	r0,a
      001AAF 86 82            [24] 4176 	mov	dpl,@r0
      001AB1 08               [12] 4177 	inc	r0
      001AB2 86 83            [24] 4178 	mov	dph,@r0
      001AB4 08               [12] 4179 	inc	r0
      001AB5 86 F0            [24] 4180 	mov	b,@r0
      001AB7 C0 06            [24] 4181 	push	ar6
      001AB9 C0 04            [24] 4182 	push	ar4
      001ABB 12 24 58         [24] 4183 	lcall	_prvIsQueueEmpty
      001ABE E5 82            [12] 4184 	mov	a,dpl
      001AC0 D0 04            [24] 4185 	pop	ar4
      001AC2 D0 06            [24] 4186 	pop	ar6
      001AC4 70 03            [24] 4187 	jnz	00187$
      001AC6 02 1B 33         [24] 4188 	ljmp	00120$
      001AC9                       4189 00187$:
                           00118D  4190 	C$queue.c$1824$5_0$320 ==.
                                   4191 ;	queue.c:1824: vTaskPlaceOnEventList( &( pxQueue->xTasksWaitingToReceive ), xTicksToWait );
      001AC9 E5 0D            [12] 4192 	mov	a,_bp
      001ACB 24 0B            [12] 4193 	add	a,#0x0b
      001ACD F8               [12] 4194 	mov	r0,a
      001ACE 74 18            [12] 4195 	mov	a,#0x18
      001AD0 26               [12] 4196 	add	a,@r0
      001AD1 FB               [12] 4197 	mov	r3,a
      001AD2 74 00            [12] 4198 	mov	a,#0x00
      001AD4 08               [12] 4199 	inc	r0
      001AD5 36               [12] 4200 	addc	a,@r0
      001AD6 FD               [12] 4201 	mov	r5,a
      001AD7 08               [12] 4202 	inc	r0
      001AD8 86 07            [24] 4203 	mov	ar7,@r0
      001ADA C0 06            [24] 4204 	push	ar6
      001ADC C0 04            [24] 4205 	push	ar4
      001ADE E5 0D            [12] 4206 	mov	a,_bp
      001AE0 24 F9            [12] 4207 	add	a,#0xf9
      001AE2 F8               [12] 4208 	mov	r0,a
      001AE3 E6               [12] 4209 	mov	a,@r0
      001AE4 C0 E0            [24] 4210 	push	acc
      001AE6 08               [12] 4211 	inc	r0
      001AE7 E6               [12] 4212 	mov	a,@r0
      001AE8 C0 E0            [24] 4213 	push	acc
      001AEA 8B 82            [24] 4214 	mov	dpl,r3
      001AEC 8D 83            [24] 4215 	mov	dph,r5
      001AEE 8F F0            [24] 4216 	mov	b,r7
      001AF0 12 3E 46         [24] 4217 	lcall	_vTaskPlaceOnEventList
      001AF3 15 81            [12] 4218 	dec	sp
      001AF5 15 81            [12] 4219 	dec	sp
      001AF7 D0 04            [24] 4220 	pop	ar4
      001AF9 D0 06            [24] 4221 	pop	ar6
                           0011BF  4222 	C$queue.c$1825$5_0$320 ==.
                                   4223 ;	queue.c:1825: prvUnlockQueue( pxQueue );
      001AFB E5 0D            [12] 4224 	mov	a,_bp
      001AFD 24 0B            [12] 4225 	add	a,#0x0b
      001AFF F8               [12] 4226 	mov	r0,a
      001B00 86 82            [24] 4227 	mov	dpl,@r0
      001B02 08               [12] 4228 	inc	r0
      001B03 86 83            [24] 4229 	mov	dph,@r0
      001B05 08               [12] 4230 	inc	r0
      001B06 86 F0            [24] 4231 	mov	b,@r0
      001B08 C0 06            [24] 4232 	push	ar6
      001B0A C0 04            [24] 4233 	push	ar4
      001B0C 12 22 C0         [24] 4234 	lcall	_prvUnlockQueue
      001B0F D0 04            [24] 4235 	pop	ar4
      001B11 D0 06            [24] 4236 	pop	ar6
                           0011D7  4237 	C$queue.c$1827$5_0$320 ==.
                                   4238 ;	queue.c:1827: if( xTaskResumeAll() == pdFALSE )
      001B13 C0 06            [24] 4239 	push	ar6
      001B15 C0 04            [24] 4240 	push	ar4
      001B17 12 2E A4         [24] 4241 	lcall	_xTaskResumeAll
      001B1A E5 82            [12] 4242 	mov	a,dpl
      001B1C D0 04            [24] 4243 	pop	ar4
      001B1E D0 06            [24] 4244 	pop	ar6
      001B20 60 03            [24] 4245 	jz	00188$
      001B22 02 18 B1         [24] 4246 	ljmp	00128$
      001B25                       4247 00188$:
                           0011E9  4248 	C$queue.c$1829$6_0$321 ==.
                                   4249 ;	queue.c:1829: portYIELD_WITHIN_API();
      001B25 C0 06            [24] 4250 	push	ar6
      001B27 C0 04            [24] 4251 	push	ar4
      001B29 12 77 3C         [24] 4252 	lcall	_vPortYield
      001B2C D0 04            [24] 4253 	pop	ar4
      001B2E D0 06            [24] 4254 	pop	ar6
      001B30 02 18 B1         [24] 4255 	ljmp	00128$
      001B33                       4256 00120$:
                           0011F7  4257 	C$queue.c$1840$5_0$323 ==.
                                   4258 ;	queue.c:1840: prvUnlockQueue( pxQueue );
      001B33 E5 0D            [12] 4259 	mov	a,_bp
      001B35 24 0B            [12] 4260 	add	a,#0x0b
      001B37 F8               [12] 4261 	mov	r0,a
      001B38 86 82            [24] 4262 	mov	dpl,@r0
      001B3A 08               [12] 4263 	inc	r0
      001B3B 86 83            [24] 4264 	mov	dph,@r0
      001B3D 08               [12] 4265 	inc	r0
      001B3E 86 F0            [24] 4266 	mov	b,@r0
      001B40 C0 06            [24] 4267 	push	ar6
      001B42 C0 04            [24] 4268 	push	ar4
      001B44 12 22 C0         [24] 4269 	lcall	_prvUnlockQueue
      001B47 D0 04            [24] 4270 	pop	ar4
      001B49 D0 06            [24] 4271 	pop	ar6
                           00120F  4272 	C$queue.c$1841$5_0$323 ==.
                                   4273 ;	queue.c:1841: ( void ) xTaskResumeAll();
      001B4B C0 06            [24] 4274 	push	ar6
      001B4D C0 04            [24] 4275 	push	ar4
      001B4F 12 2E A4         [24] 4276 	lcall	_xTaskResumeAll
      001B52 D0 04            [24] 4277 	pop	ar4
      001B54 D0 06            [24] 4278 	pop	ar6
      001B56 02 18 B1         [24] 4279 	ljmp	00128$
      001B59                       4280 00125$:
                           00121D  4281 	C$queue.c$1848$4_0$324 ==.
                                   4282 ;	queue.c:1848: prvUnlockQueue( pxQueue );
      001B59 E5 0D            [12] 4283 	mov	a,_bp
      001B5B 24 0B            [12] 4284 	add	a,#0x0b
      001B5D F8               [12] 4285 	mov	r0,a
      001B5E 86 82            [24] 4286 	mov	dpl,@r0
      001B60 08               [12] 4287 	inc	r0
      001B61 86 83            [24] 4288 	mov	dph,@r0
      001B63 08               [12] 4289 	inc	r0
      001B64 86 F0            [24] 4290 	mov	b,@r0
      001B66 C0 06            [24] 4291 	push	ar6
      001B68 C0 04            [24] 4292 	push	ar4
      001B6A 12 22 C0         [24] 4293 	lcall	_prvUnlockQueue
      001B6D D0 04            [24] 4294 	pop	ar4
      001B6F D0 06            [24] 4295 	pop	ar6
                           001235  4296 	C$queue.c$1849$4_0$324 ==.
                                   4297 ;	queue.c:1849: ( void ) xTaskResumeAll();
      001B71 C0 06            [24] 4298 	push	ar6
      001B73 C0 04            [24] 4299 	push	ar4
      001B75 12 2E A4         [24] 4300 	lcall	_xTaskResumeAll
      001B78 D0 04            [24] 4301 	pop	ar4
      001B7A D0 06            [24] 4302 	pop	ar6
                           001240  4303 	C$queue.c$1851$4_0$324 ==.
                                   4304 ;	queue.c:1851: if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
      001B7C E5 0D            [12] 4305 	mov	a,_bp
      001B7E 24 0B            [12] 4306 	add	a,#0x0b
      001B80 F8               [12] 4307 	mov	r0,a
      001B81 86 82            [24] 4308 	mov	dpl,@r0
      001B83 08               [12] 4309 	inc	r0
      001B84 86 83            [24] 4310 	mov	dph,@r0
      001B86 08               [12] 4311 	inc	r0
      001B87 86 F0            [24] 4312 	mov	b,@r0
      001B89 C0 06            [24] 4313 	push	ar6
      001B8B C0 04            [24] 4314 	push	ar4
      001B8D 12 24 58         [24] 4315 	lcall	_prvIsQueueEmpty
      001B90 E5 82            [12] 4316 	mov	a,dpl
      001B92 D0 04            [24] 4317 	pop	ar4
      001B94 D0 06            [24] 4318 	pop	ar6
      001B96 70 03            [24] 4319 	jnz	00189$
      001B98 02 18 B1         [24] 4320 	ljmp	00128$
      001B9B                       4321 00189$:
                           00125F  4322 	C$queue.c$1854$5_0$325 ==.
                                   4323 ;	queue.c:1854: return errQUEUE_EMPTY;
      001B9B 75 82 00         [24] 4324 	mov	dpl,#0x00
      001B9E                       4325 00130$:
                           001262  4326 	C$queue.c$1862$2_0$303 ==.
                                   4327 ;	queue.c:1862: }
      001B9E 85 0D 81         [24] 4328 	mov	sp,_bp
      001BA1 D0 0D            [24] 4329 	pop	_bp
                           001267  4330 	C$queue.c$1862$2_0$303 ==.
                           001267  4331 	XG$xQueuePeek$0$0 ==.
      001BA3 22               [24] 4332 	ret
                                   4333 ;------------------------------------------------------------
                                   4334 ;Allocation info for local variables in function 'xQueueReceiveFromISR'
                                   4335 ;------------------------------------------------------------
                                   4336 ;pvBuffer                  Allocated to stack - _bp -5
                                   4337 ;pxHigherPriorityTaskWoken Allocated to stack - _bp -8
                                   4338 ;xQueue                    Allocated to stack - _bp +1
                                   4339 ;xReturn                   Allocated to registers r7 
                                   4340 ;uxSavedInterruptStatus    Allocated to registers 
                                   4341 ;pxQueue                   Allocated to registers 
                                   4342 ;uxMessagesWaiting         Allocated to registers r4 
                                   4343 ;cRxLock                   Allocated to registers r7 
                                   4344 ;------------------------------------------------------------
                           001268  4345 	G$xQueueReceiveFromISR$0$0 ==.
                           001268  4346 	C$queue.c$1865$2_0$328 ==.
                                   4347 ;	queue.c:1865: BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue,
                                   4348 ;	-----------------------------------------
                                   4349 ;	 function xQueueReceiveFromISR
                                   4350 ;	-----------------------------------------
      001BA4                       4351 _xQueueReceiveFromISR:
      001BA4 C0 0D            [24] 4352 	push	_bp
      001BA6 85 81 0D         [24] 4353 	mov	_bp,sp
      001BA9 C0 82            [24] 4354 	push	dpl
      001BAB C0 83            [24] 4355 	push	dph
      001BAD C0 F0            [24] 4356 	push	b
                           001273  4357 	C$queue.c$1894$2_0$329 ==.
                                   4358 ;	queue.c:1894: const UBaseType_t uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      001BAF A8 0D            [24] 4359 	mov	r0,_bp
      001BB1 08               [12] 4360 	inc	r0
      001BB2 74 24            [12] 4361 	mov	a,#0x24
      001BB4 26               [12] 4362 	add	a,@r0
      001BB5 FA               [12] 4363 	mov	r2,a
      001BB6 74 00            [12] 4364 	mov	a,#0x00
      001BB8 08               [12] 4365 	inc	r0
      001BB9 36               [12] 4366 	addc	a,@r0
      001BBA FB               [12] 4367 	mov	r3,a
      001BBB 08               [12] 4368 	inc	r0
      001BBC 86 04            [24] 4369 	mov	ar4,@r0
      001BBE 8A 82            [24] 4370 	mov	dpl,r2
      001BC0 8B 83            [24] 4371 	mov	dph,r3
      001BC2 8C F0            [24] 4372 	mov	b,r4
      001BC4 12 7C 4D         [24] 4373 	lcall	__gptrget
      001BC7 FA               [12] 4374 	mov	r2,a
      001BC8 8A 04            [24] 4375 	mov	ar4,r2
                           00128E  4376 	C$queue.c$1897$2_0$329 ==.
                                   4377 ;	queue.c:1897: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      001BCA EA               [12] 4378 	mov	a,r2
      001BCB 70 03            [24] 4379 	jnz	00137$
      001BCD 02 1C BA         [24] 4380 	ljmp	00111$
      001BD0                       4381 00137$:
                           001294  4382 	C$queue.c$1899$3_0$330 ==.
                                   4383 ;	queue.c:1899: const int8_t cRxLock = pxQueue->cRxLock;
      001BD0 A8 0D            [24] 4384 	mov	r0,_bp
      001BD2 08               [12] 4385 	inc	r0
      001BD3 74 27            [12] 4386 	mov	a,#0x27
      001BD5 26               [12] 4387 	add	a,@r0
      001BD6 FA               [12] 4388 	mov	r2,a
      001BD7 74 00            [12] 4389 	mov	a,#0x00
      001BD9 08               [12] 4390 	inc	r0
      001BDA 36               [12] 4391 	addc	a,@r0
      001BDB FB               [12] 4392 	mov	r3,a
      001BDC 08               [12] 4393 	inc	r0
      001BDD 86 07            [24] 4394 	mov	ar7,@r0
      001BDF 8A 82            [24] 4395 	mov	dpl,r2
      001BE1 8B 83            [24] 4396 	mov	dph,r3
      001BE3 8F F0            [24] 4397 	mov	b,r7
      001BE5 12 7C 4D         [24] 4398 	lcall	__gptrget
      001BE8 FF               [12] 4399 	mov	r7,a
                           0012AD  4400 	C$queue.c$1903$3_0$330 ==.
                                   4401 ;	queue.c:1903: prvCopyDataFromQueue( pxQueue, pvBuffer );
      001BE9 C0 07            [24] 4402 	push	ar7
      001BEB C0 04            [24] 4403 	push	ar4
      001BED E5 0D            [12] 4404 	mov	a,_bp
      001BEF 24 FB            [12] 4405 	add	a,#0xfb
      001BF1 F8               [12] 4406 	mov	r0,a
      001BF2 E6               [12] 4407 	mov	a,@r0
      001BF3 C0 E0            [24] 4408 	push	acc
      001BF5 08               [12] 4409 	inc	r0
      001BF6 E6               [12] 4410 	mov	a,@r0
      001BF7 C0 E0            [24] 4411 	push	acc
      001BF9 08               [12] 4412 	inc	r0
      001BFA E6               [12] 4413 	mov	a,@r0
      001BFB C0 E0            [24] 4414 	push	acc
      001BFD A8 0D            [24] 4415 	mov	r0,_bp
      001BFF 08               [12] 4416 	inc	r0
      001C00 86 82            [24] 4417 	mov	dpl,@r0
      001C02 08               [12] 4418 	inc	r0
      001C03 86 83            [24] 4419 	mov	dph,@r0
      001C05 08               [12] 4420 	inc	r0
      001C06 86 F0            [24] 4421 	mov	b,@r0
      001C08 12 21 69         [24] 4422 	lcall	_prvCopyDataFromQueue
      001C0B 15 81            [12] 4423 	dec	sp
      001C0D 15 81            [12] 4424 	dec	sp
      001C0F 15 81            [12] 4425 	dec	sp
      001C11 D0 04            [24] 4426 	pop	ar4
      001C13 D0 07            [24] 4427 	pop	ar7
                           0012D9  4428 	C$queue.c$1904$3_0$330 ==.
                                   4429 ;	queue.c:1904: pxQueue->uxMessagesWaiting = uxMessagesWaiting - ( UBaseType_t ) 1;
      001C15 A8 0D            [24] 4430 	mov	r0,_bp
      001C17 08               [12] 4431 	inc	r0
      001C18 74 24            [12] 4432 	mov	a,#0x24
      001C1A 26               [12] 4433 	add	a,@r0
      001C1B FB               [12] 4434 	mov	r3,a
      001C1C 74 00            [12] 4435 	mov	a,#0x00
      001C1E 08               [12] 4436 	inc	r0
      001C1F 36               [12] 4437 	addc	a,@r0
      001C20 FD               [12] 4438 	mov	r5,a
      001C21 08               [12] 4439 	inc	r0
      001C22 86 06            [24] 4440 	mov	ar6,@r0
      001C24 1C               [12] 4441 	dec	r4
      001C25 8B 82            [24] 4442 	mov	dpl,r3
      001C27 8D 83            [24] 4443 	mov	dph,r5
      001C29 8E F0            [24] 4444 	mov	b,r6
      001C2B EC               [12] 4445 	mov	a,r4
      001C2C 12 79 22         [24] 4446 	lcall	__gptrput
                           0012F3  4447 	C$queue.c$1910$3_0$330 ==.
                                   4448 ;	queue.c:1910: if( cRxLock == queueUNLOCKED )
      001C2F BF FF 02         [24] 4449 	cjne	r7,#0xff,00138$
      001C32 80 03            [24] 4450 	sjmp	00139$
      001C34                       4451 00138$:
      001C34 02 1C 9B         [24] 4452 	ljmp	00108$
      001C37                       4453 00139$:
                           0012FB  4454 	C$queue.c$1912$4_0$331 ==.
                                   4455 ;	queue.c:1912: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      001C37 A8 0D            [24] 4456 	mov	r0,_bp
      001C39 08               [12] 4457 	inc	r0
      001C3A 74 0C            [12] 4458 	mov	a,#0x0c
      001C3C 26               [12] 4459 	add	a,@r0
      001C3D FC               [12] 4460 	mov	r4,a
      001C3E 74 00            [12] 4461 	mov	a,#0x00
      001C40 08               [12] 4462 	inc	r0
      001C41 36               [12] 4463 	addc	a,@r0
      001C42 FD               [12] 4464 	mov	r5,a
      001C43 08               [12] 4465 	inc	r0
      001C44 86 06            [24] 4466 	mov	ar6,@r0
      001C46 8C 82            [24] 4467 	mov	dpl,r4
      001C48 8D 83            [24] 4468 	mov	dph,r5
      001C4A 8E F0            [24] 4469 	mov	b,r6
      001C4C 12 7C 4D         [24] 4470 	lcall	__gptrget
      001C4F 70 03            [24] 4471 	jnz	00140$
      001C51 02 1C B5         [24] 4472 	ljmp	00109$
      001C54                       4473 00140$:
                           001318  4474 	C$queue.c$1914$5_0$332 ==.
                                   4475 ;	queue.c:1914: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      001C54 A8 0D            [24] 4476 	mov	r0,_bp
      001C56 08               [12] 4477 	inc	r0
      001C57 74 0C            [12] 4478 	mov	a,#0x0c
      001C59 26               [12] 4479 	add	a,@r0
      001C5A FC               [12] 4480 	mov	r4,a
      001C5B 74 00            [12] 4481 	mov	a,#0x00
      001C5D 08               [12] 4482 	inc	r0
      001C5E 36               [12] 4483 	addc	a,@r0
      001C5F FD               [12] 4484 	mov	r5,a
      001C60 08               [12] 4485 	inc	r0
      001C61 86 06            [24] 4486 	mov	ar6,@r0
      001C63 8C 82            [24] 4487 	mov	dpl,r4
      001C65 8D 83            [24] 4488 	mov	dph,r5
      001C67 8E F0            [24] 4489 	mov	b,r6
      001C69 12 40 62         [24] 4490 	lcall	_xTaskRemoveFromEventList
      001C6C E5 82            [12] 4491 	mov	a,dpl
      001C6E 70 03            [24] 4492 	jnz	00141$
      001C70 02 1C B5         [24] 4493 	ljmp	00109$
      001C73                       4494 00141$:
                           001337  4495 	C$queue.c$1918$6_0$333 ==.
                                   4496 ;	queue.c:1918: if( pxHigherPriorityTaskWoken != NULL )
      001C73 E5 0D            [12] 4497 	mov	a,_bp
      001C75 24 F8            [12] 4498 	add	a,#0xf8
      001C77 F8               [12] 4499 	mov	r0,a
      001C78 E6               [12] 4500 	mov	a,@r0
      001C79 08               [12] 4501 	inc	r0
      001C7A 46               [12] 4502 	orl	a,@r0
      001C7B 70 03            [24] 4503 	jnz	00142$
      001C7D 02 1C B5         [24] 4504 	ljmp	00109$
      001C80                       4505 00142$:
                           001344  4506 	C$queue.c$1920$7_0$334 ==.
                                   4507 ;	queue.c:1920: *pxHigherPriorityTaskWoken = pdTRUE;
      001C80 E5 0D            [12] 4508 	mov	a,_bp
      001C82 24 F8            [12] 4509 	add	a,#0xf8
      001C84 F8               [12] 4510 	mov	r0,a
      001C85 86 04            [24] 4511 	mov	ar4,@r0
      001C87 08               [12] 4512 	inc	r0
      001C88 86 05            [24] 4513 	mov	ar5,@r0
      001C8A 08               [12] 4514 	inc	r0
      001C8B 86 06            [24] 4515 	mov	ar6,@r0
      001C8D 8C 82            [24] 4516 	mov	dpl,r4
      001C8F 8D 83            [24] 4517 	mov	dph,r5
      001C91 8E F0            [24] 4518 	mov	b,r6
      001C93 74 01            [12] 4519 	mov	a,#0x01
      001C95 12 79 22         [24] 4520 	lcall	__gptrput
      001C98 02 1C B5         [24] 4521 	ljmp	00109$
      001C9B                       4522 00108$:
                           00135F  4523 	C$queue.c$1943$4_0$338 ==.
                                   4524 ;	queue.c:1943: pxQueue->cRxLock = ( int8_t ) ( cRxLock + 1 );
      001C9B A8 0D            [24] 4525 	mov	r0,_bp
      001C9D 08               [12] 4526 	inc	r0
      001C9E 74 27            [12] 4527 	mov	a,#0x27
      001CA0 26               [12] 4528 	add	a,@r0
      001CA1 FC               [12] 4529 	mov	r4,a
      001CA2 74 00            [12] 4530 	mov	a,#0x00
      001CA4 08               [12] 4531 	inc	r0
      001CA5 36               [12] 4532 	addc	a,@r0
      001CA6 FD               [12] 4533 	mov	r5,a
      001CA7 08               [12] 4534 	inc	r0
      001CA8 86 06            [24] 4535 	mov	ar6,@r0
      001CAA 0F               [12] 4536 	inc	r7
      001CAB 8C 82            [24] 4537 	mov	dpl,r4
      001CAD 8D 83            [24] 4538 	mov	dph,r5
      001CAF 8E F0            [24] 4539 	mov	b,r6
      001CB1 EF               [12] 4540 	mov	a,r7
      001CB2 12 79 22         [24] 4541 	lcall	__gptrput
      001CB5                       4542 00109$:
                           001379  4543 	C$queue.c$1946$3_0$330 ==.
                                   4544 ;	queue.c:1946: xReturn = pdPASS;
      001CB5 7F 01            [12] 4545 	mov	r7,#0x01
      001CB7 02 1C BC         [24] 4546 	ljmp	00112$
      001CBA                       4547 00111$:
                           00137E  4548 	C$queue.c$1950$3_0$339 ==.
                                   4549 ;	queue.c:1950: xReturn = pdFAIL;
      001CBA 7F 00            [12] 4550 	mov	r7,#0x00
      001CBC                       4551 00112$:
                           001380  4552 	C$queue.c$1956$1_0$328 ==.
                                   4553 ;	queue.c:1956: return xReturn;
      001CBC 8F 82            [24] 4554 	mov	dpl,r7
      001CBE                       4555 00113$:
                           001382  4556 	C$queue.c$1957$1_0$328 ==.
                                   4557 ;	queue.c:1957: }
      001CBE 85 0D 81         [24] 4558 	mov	sp,_bp
      001CC1 D0 0D            [24] 4559 	pop	_bp
                           001387  4560 	C$queue.c$1957$1_0$328 ==.
                           001387  4561 	XG$xQueueReceiveFromISR$0$0 ==.
      001CC3 22               [24] 4562 	ret
                                   4563 ;------------------------------------------------------------
                                   4564 ;Allocation info for local variables in function 'xQueuePeekFromISR'
                                   4565 ;------------------------------------------------------------
                                   4566 ;pvBuffer                  Allocated to stack - _bp -5
                                   4567 ;xQueue                    Allocated to registers r5 r6 r7 
                                   4568 ;xReturn                   Allocated to registers r7 
                                   4569 ;uxSavedInterruptStatus    Allocated to registers 
                                   4570 ;pcOriginalReadPosition    Allocated to registers r2 r3 r4 
                                   4571 ;pxQueue                   Allocated to registers 
                                   4572 ;------------------------------------------------------------
                           001388  4573 	G$xQueuePeekFromISR$0$0 ==.
                           001388  4574 	C$queue.c$1960$1_0$341 ==.
                                   4575 ;	queue.c:1960: BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,
                                   4576 ;	-----------------------------------------
                                   4577 ;	 function xQueuePeekFromISR
                                   4578 ;	-----------------------------------------
      001CC4                       4579 _xQueuePeekFromISR:
      001CC4 C0 0D            [24] 4580 	push	_bp
      001CC6 85 81 0D         [24] 4581 	mov	_bp,sp
      001CC9 AD 82            [24] 4582 	mov	r5,dpl
      001CCB AE 83            [24] 4583 	mov	r6,dph
      001CCD AF F0            [24] 4584 	mov	r7,b
                           001393  4585 	C$queue.c$1991$2_0$342 ==.
                                   4586 ;	queue.c:1991: if( pxQueue->uxMessagesWaiting > ( UBaseType_t ) 0 )
      001CCF 74 24            [12] 4587 	mov	a,#0x24
      001CD1 2D               [12] 4588 	add	a,r5
      001CD2 FA               [12] 4589 	mov	r2,a
      001CD3 74 00            [12] 4590 	mov	a,#0x00
      001CD5 3E               [12] 4591 	addc	a,r6
      001CD6 FB               [12] 4592 	mov	r3,a
      001CD7 8F 04            [24] 4593 	mov	ar4,r7
      001CD9 8A 82            [24] 4594 	mov	dpl,r2
      001CDB 8B 83            [24] 4595 	mov	dph,r3
      001CDD 8C F0            [24] 4596 	mov	b,r4
      001CDF 12 7C 4D         [24] 4597 	lcall	__gptrget
      001CE2 70 03            [24] 4598 	jnz	00110$
      001CE4 02 1D 6D         [24] 4599 	ljmp	00102$
      001CE7                       4600 00110$:
                           0013AB  4601 	C$queue.c$1997$3_0$343 ==.
                                   4602 ;	queue.c:1997: pcOriginalReadPosition = pxQueue->u.xQueue.pcReadFrom;
      001CE7 74 06            [12] 4603 	mov	a,#0x06
      001CE9 2D               [12] 4604 	add	a,r5
      001CEA FA               [12] 4605 	mov	r2,a
      001CEB 74 00            [12] 4606 	mov	a,#0x00
      001CED 3E               [12] 4607 	addc	a,r6
      001CEE FB               [12] 4608 	mov	r3,a
      001CEF 8F 04            [24] 4609 	mov	ar4,r7
      001CF1 74 03            [12] 4610 	mov	a,#0x03
      001CF3 2A               [12] 4611 	add	a,r2
      001CF4 FA               [12] 4612 	mov	r2,a
      001CF5 74 00            [12] 4613 	mov	a,#0x00
      001CF7 3B               [12] 4614 	addc	a,r3
      001CF8 FB               [12] 4615 	mov	r3,a
      001CF9 8A 82            [24] 4616 	mov	dpl,r2
      001CFB 8B 83            [24] 4617 	mov	dph,r3
      001CFD 8C F0            [24] 4618 	mov	b,r4
      001CFF 12 7C 4D         [24] 4619 	lcall	__gptrget
      001D02 FA               [12] 4620 	mov	r2,a
      001D03 A3               [24] 4621 	inc	dptr
      001D04 12 7C 4D         [24] 4622 	lcall	__gptrget
      001D07 FB               [12] 4623 	mov	r3,a
      001D08 A3               [24] 4624 	inc	dptr
      001D09 12 7C 4D         [24] 4625 	lcall	__gptrget
      001D0C FC               [12] 4626 	mov	r4,a
                           0013D1  4627 	C$queue.c$1998$3_0$343 ==.
                                   4628 ;	queue.c:1998: prvCopyDataFromQueue( pxQueue, pvBuffer );
      001D0D C0 07            [24] 4629 	push	ar7
      001D0F C0 06            [24] 4630 	push	ar6
      001D11 C0 05            [24] 4631 	push	ar5
      001D13 C0 04            [24] 4632 	push	ar4
      001D15 C0 03            [24] 4633 	push	ar3
      001D17 C0 02            [24] 4634 	push	ar2
      001D19 E5 0D            [12] 4635 	mov	a,_bp
      001D1B 24 FB            [12] 4636 	add	a,#0xfb
      001D1D F8               [12] 4637 	mov	r0,a
      001D1E E6               [12] 4638 	mov	a,@r0
      001D1F C0 E0            [24] 4639 	push	acc
      001D21 08               [12] 4640 	inc	r0
      001D22 E6               [12] 4641 	mov	a,@r0
      001D23 C0 E0            [24] 4642 	push	acc
      001D25 08               [12] 4643 	inc	r0
      001D26 E6               [12] 4644 	mov	a,@r0
      001D27 C0 E0            [24] 4645 	push	acc
      001D29 8D 82            [24] 4646 	mov	dpl,r5
      001D2B 8E 83            [24] 4647 	mov	dph,r6
      001D2D 8F F0            [24] 4648 	mov	b,r7
      001D2F 12 21 69         [24] 4649 	lcall	_prvCopyDataFromQueue
      001D32 15 81            [12] 4650 	dec	sp
      001D34 15 81            [12] 4651 	dec	sp
      001D36 15 81            [12] 4652 	dec	sp
      001D38 D0 02            [24] 4653 	pop	ar2
      001D3A D0 03            [24] 4654 	pop	ar3
      001D3C D0 04            [24] 4655 	pop	ar4
      001D3E D0 05            [24] 4656 	pop	ar5
      001D40 D0 06            [24] 4657 	pop	ar6
      001D42 D0 07            [24] 4658 	pop	ar7
                           001408  4659 	C$queue.c$1999$3_0$343 ==.
                                   4660 ;	queue.c:1999: pxQueue->u.xQueue.pcReadFrom = pcOriginalReadPosition;
      001D44 74 06            [12] 4661 	mov	a,#0x06
      001D46 2D               [12] 4662 	add	a,r5
      001D47 FD               [12] 4663 	mov	r5,a
      001D48 74 00            [12] 4664 	mov	a,#0x00
      001D4A 3E               [12] 4665 	addc	a,r6
      001D4B FE               [12] 4666 	mov	r6,a
      001D4C 74 03            [12] 4667 	mov	a,#0x03
      001D4E 2D               [12] 4668 	add	a,r5
      001D4F FD               [12] 4669 	mov	r5,a
      001D50 74 00            [12] 4670 	mov	a,#0x00
      001D52 3E               [12] 4671 	addc	a,r6
      001D53 FE               [12] 4672 	mov	r6,a
      001D54 8D 82            [24] 4673 	mov	dpl,r5
      001D56 8E 83            [24] 4674 	mov	dph,r6
      001D58 8F F0            [24] 4675 	mov	b,r7
      001D5A EA               [12] 4676 	mov	a,r2
      001D5B 12 79 22         [24] 4677 	lcall	__gptrput
      001D5E A3               [24] 4678 	inc	dptr
      001D5F EB               [12] 4679 	mov	a,r3
      001D60 12 79 22         [24] 4680 	lcall	__gptrput
      001D63 A3               [24] 4681 	inc	dptr
      001D64 EC               [12] 4682 	mov	a,r4
      001D65 12 79 22         [24] 4683 	lcall	__gptrput
                           00142C  4684 	C$queue.c$2001$3_0$343 ==.
                                   4685 ;	queue.c:2001: xReturn = pdPASS;
      001D68 7F 01            [12] 4686 	mov	r7,#0x01
      001D6A 02 1D 6F         [24] 4687 	ljmp	00103$
      001D6D                       4688 00102$:
                           001431  4689 	C$queue.c$2005$3_0$344 ==.
                                   4690 ;	queue.c:2005: xReturn = pdFAIL;
      001D6D 7F 00            [12] 4691 	mov	r7,#0x00
      001D6F                       4692 00103$:
                           001433  4693 	C$queue.c$2011$1_0$341 ==.
                                   4694 ;	queue.c:2011: return xReturn;
      001D6F 8F 82            [24] 4695 	mov	dpl,r7
      001D71                       4696 00104$:
                           001435  4697 	C$queue.c$2012$1_0$341 ==.
                                   4698 ;	queue.c:2012: }
      001D71 D0 0D            [24] 4699 	pop	_bp
                           001437  4700 	C$queue.c$2012$1_0$341 ==.
                           001437  4701 	XG$xQueuePeekFromISR$0$0 ==.
      001D73 22               [24] 4702 	ret
                                   4703 ;------------------------------------------------------------
                                   4704 ;Allocation info for local variables in function 'uxQueueMessagesWaiting'
                                   4705 ;------------------------------------------------------------
                                   4706 ;xQueue                    Allocated to registers r5 r6 r7 
                                   4707 ;uxReturn                  Allocated to registers r5 
                                   4708 ;------------------------------------------------------------
                           001438  4709 	G$uxQueueMessagesWaiting$0$0 ==.
                           001438  4710 	C$queue.c$2015$1_0$346 ==.
                                   4711 ;	queue.c:2015: UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue )
                                   4712 ;	-----------------------------------------
                                   4713 ;	 function uxQueueMessagesWaiting
                                   4714 ;	-----------------------------------------
      001D74                       4715 _uxQueueMessagesWaiting:
      001D74 AD 82            [24] 4716 	mov	r5,dpl
      001D76 AE 83            [24] 4717 	mov	r6,dph
      001D78 AF F0            [24] 4718 	mov	r7,b
                           00143E  4719 	C$queue.c$2021$1_0$346 ==.
                                   4720 ;	queue.c:2021: taskENTER_CRITICAL();
      001D7A C0 E0            [24] 4721 	push ACC 
      001D7C C0 A8            [24] 4722 	push IE 
                                   4723 ;	assignBit
      001D7E C2 AF            [12] 4724 	clr	_EA
                           001444  4725 	C$queue.c$2023$2_0$347 ==.
                                   4726 ;	queue.c:2023: uxReturn = ( ( Queue_t * ) xQueue )->uxMessagesWaiting;
      001D80 74 24            [12] 4727 	mov	a,#0x24
      001D82 2D               [12] 4728 	add	a,r5
      001D83 FD               [12] 4729 	mov	r5,a
      001D84 74 00            [12] 4730 	mov	a,#0x00
      001D86 3E               [12] 4731 	addc	a,r6
      001D87 FE               [12] 4732 	mov	r6,a
      001D88 8D 82            [24] 4733 	mov	dpl,r5
      001D8A 8E 83            [24] 4734 	mov	dph,r6
      001D8C 8F F0            [24] 4735 	mov	b,r7
      001D8E 12 7C 4D         [24] 4736 	lcall	__gptrget
      001D91 FD               [12] 4737 	mov	r5,a
                           001456  4738 	C$queue.c$2025$1_0$346 ==.
                                   4739 ;	queue.c:2025: taskEXIT_CRITICAL();
      001D92 D0 E0            [24] 4740 	pop ACC 
      001D94 53 E0 80         [24] 4741 	anl	_ACC,#0x80
      001D97 E5 E0            [12] 4742 	mov	a,_ACC
      001D99 42 A8            [12] 4743 	orl	_IE,a
      001D9B D0 E0            [24] 4744 	pop ACC 
                           001461  4745 	C$queue.c$2027$1_0$346 ==.
                                   4746 ;	queue.c:2027: return uxReturn;
      001D9D 8D 82            [24] 4747 	mov	dpl,r5
      001D9F                       4748 00101$:
                           001463  4749 	C$queue.c$2028$1_0$346 ==.
                                   4750 ;	queue.c:2028: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           001463  4751 	C$queue.c$2028$1_0$346 ==.
                           001463  4752 	XG$uxQueueMessagesWaiting$0$0 ==.
      001D9F 22               [24] 4753 	ret
                                   4754 ;------------------------------------------------------------
                                   4755 ;Allocation info for local variables in function 'uxQueueSpacesAvailable'
                                   4756 ;------------------------------------------------------------
                                   4757 ;xQueue                    Allocated to registers r5 r6 r7 
                                   4758 ;uxReturn                  Allocated to registers r2 
                                   4759 ;pxQueue                   Allocated to registers 
                                   4760 ;------------------------------------------------------------
                           001464  4761 	G$uxQueueSpacesAvailable$0$0 ==.
                           001464  4762 	C$queue.c$2031$1_0$349 ==.
                                   4763 ;	queue.c:2031: UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue )
                                   4764 ;	-----------------------------------------
                                   4765 ;	 function uxQueueSpacesAvailable
                                   4766 ;	-----------------------------------------
      001DA0                       4767 _uxQueueSpacesAvailable:
      001DA0 AD 82            [24] 4768 	mov	r5,dpl
      001DA2 AE 83            [24] 4769 	mov	r6,dph
      001DA4 AF F0            [24] 4770 	mov	r7,b
                           00146A  4771 	C$queue.c$2038$1_0$349 ==.
                                   4772 ;	queue.c:2038: taskENTER_CRITICAL();
      001DA6 C0 E0            [24] 4773 	push ACC 
      001DA8 C0 A8            [24] 4774 	push IE 
                                   4775 ;	assignBit
      001DAA C2 AF            [12] 4776 	clr	_EA
                           001470  4777 	C$queue.c$2040$2_0$350 ==.
                                   4778 ;	queue.c:2040: uxReturn = pxQueue->uxLength - pxQueue->uxMessagesWaiting;
      001DAC 74 25            [12] 4779 	mov	a,#0x25
      001DAE 2D               [12] 4780 	add	a,r5
      001DAF FA               [12] 4781 	mov	r2,a
      001DB0 74 00            [12] 4782 	mov	a,#0x00
      001DB2 3E               [12] 4783 	addc	a,r6
      001DB3 FB               [12] 4784 	mov	r3,a
      001DB4 8F 04            [24] 4785 	mov	ar4,r7
      001DB6 8A 82            [24] 4786 	mov	dpl,r2
      001DB8 8B 83            [24] 4787 	mov	dph,r3
      001DBA 8C F0            [24] 4788 	mov	b,r4
      001DBC 12 7C 4D         [24] 4789 	lcall	__gptrget
      001DBF FA               [12] 4790 	mov	r2,a
      001DC0 74 24            [12] 4791 	mov	a,#0x24
      001DC2 2D               [12] 4792 	add	a,r5
      001DC3 FD               [12] 4793 	mov	r5,a
      001DC4 74 00            [12] 4794 	mov	a,#0x00
      001DC6 3E               [12] 4795 	addc	a,r6
      001DC7 FE               [12] 4796 	mov	r6,a
      001DC8 8D 82            [24] 4797 	mov	dpl,r5
      001DCA 8E 83            [24] 4798 	mov	dph,r6
      001DCC 8F F0            [24] 4799 	mov	b,r7
      001DCE 12 7C 4D         [24] 4800 	lcall	__gptrget
      001DD1 FD               [12] 4801 	mov	r5,a
      001DD2 EA               [12] 4802 	mov	a,r2
      001DD3 C3               [12] 4803 	clr	c
      001DD4 9D               [12] 4804 	subb	a,r5
      001DD5 FA               [12] 4805 	mov	r2,a
                           00149A  4806 	C$queue.c$2042$1_0$349 ==.
                                   4807 ;	queue.c:2042: taskEXIT_CRITICAL();
      001DD6 D0 E0            [24] 4808 	pop ACC 
      001DD8 53 E0 80         [24] 4809 	anl	_ACC,#0x80
      001DDB E5 E0            [12] 4810 	mov	a,_ACC
      001DDD 42 A8            [12] 4811 	orl	_IE,a
      001DDF D0 E0            [24] 4812 	pop ACC 
                           0014A5  4813 	C$queue.c$2044$1_0$349 ==.
                                   4814 ;	queue.c:2044: return uxReturn;
      001DE1 8A 82            [24] 4815 	mov	dpl,r2
      001DE3                       4816 00101$:
                           0014A7  4817 	C$queue.c$2045$1_0$349 ==.
                                   4818 ;	queue.c:2045: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           0014A7  4819 	C$queue.c$2045$1_0$349 ==.
                           0014A7  4820 	XG$uxQueueSpacesAvailable$0$0 ==.
      001DE3 22               [24] 4821 	ret
                                   4822 ;------------------------------------------------------------
                                   4823 ;Allocation info for local variables in function 'uxQueueMessagesWaitingFromISR'
                                   4824 ;------------------------------------------------------------
                                   4825 ;xQueue                    Allocated to registers r5 r6 r7 
                                   4826 ;uxReturn                  Allocated to registers r5 
                                   4827 ;pxQueue                   Allocated to registers 
                                   4828 ;------------------------------------------------------------
                           0014A8  4829 	G$uxQueueMessagesWaitingFromISR$0$0 ==.
                           0014A8  4830 	C$queue.c$2048$1_0$352 ==.
                                   4831 ;	queue.c:2048: UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue )
                                   4832 ;	-----------------------------------------
                                   4833 ;	 function uxQueueMessagesWaitingFromISR
                                   4834 ;	-----------------------------------------
      001DE4                       4835 _uxQueueMessagesWaitingFromISR:
      001DE4 AD 82            [24] 4836 	mov	r5,dpl
      001DE6 AE 83            [24] 4837 	mov	r6,dph
      001DE8 AF F0            [24] 4838 	mov	r7,b
                           0014AE  4839 	C$queue.c$2054$1_0$352 ==.
                                   4840 ;	queue.c:2054: uxReturn = pxQueue->uxMessagesWaiting;
      001DEA 74 24            [12] 4841 	mov	a,#0x24
      001DEC 2D               [12] 4842 	add	a,r5
      001DED FD               [12] 4843 	mov	r5,a
      001DEE 74 00            [12] 4844 	mov	a,#0x00
      001DF0 3E               [12] 4845 	addc	a,r6
      001DF1 FE               [12] 4846 	mov	r6,a
      001DF2 8D 82            [24] 4847 	mov	dpl,r5
      001DF4 8E 83            [24] 4848 	mov	dph,r6
      001DF6 8F F0            [24] 4849 	mov	b,r7
      001DF8 12 7C 4D         [24] 4850 	lcall	__gptrget
      001DFB FD               [12] 4851 	mov	r5,a
                           0014C0  4852 	C$queue.c$2056$1_0$352 ==.
                                   4853 ;	queue.c:2056: return uxReturn;
      001DFC 8D 82            [24] 4854 	mov	dpl,r5
      001DFE                       4855 00101$:
                           0014C2  4856 	C$queue.c$2057$1_0$352 ==.
                                   4857 ;	queue.c:2057: } /*lint !e818 Pointer cannot be declared const as xQueue is a typedef not pointer. */
                           0014C2  4858 	C$queue.c$2057$1_0$352 ==.
                           0014C2  4859 	XG$uxQueueMessagesWaitingFromISR$0$0 ==.
      001DFE 22               [24] 4860 	ret
                                   4861 ;------------------------------------------------------------
                                   4862 ;Allocation info for local variables in function 'vQueueDelete'
                                   4863 ;------------------------------------------------------------
                                   4864 ;xQueue                    Allocated to registers r5 r6 r7 
                                   4865 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   4866 ;------------------------------------------------------------
                           0014C3  4867 	G$vQueueDelete$0$0 ==.
                           0014C3  4868 	C$queue.c$2060$1_0$354 ==.
                                   4869 ;	queue.c:2060: void vQueueDelete( QueueHandle_t xQueue )
                                   4870 ;	-----------------------------------------
                                   4871 ;	 function vQueueDelete
                                   4872 ;	-----------------------------------------
      001DFF                       4873 _vQueueDelete:
      001DFF AD 82            [24] 4874 	mov	r5,dpl
      001E01 AE 83            [24] 4875 	mov	r6,dph
      001E03 AF F0            [24] 4876 	mov	r7,b
                           0014C9  4877 	C$queue.c$2062$2_0$354 ==.
                                   4878 ;	queue.c:2062: Queue_t * const pxQueue = xQueue;
                           0014C9  4879 	C$queue.c$2077$2_0$355 ==.
                                   4880 ;	queue.c:2077: vPortFree( pxQueue );
      001E05 8D 82            [24] 4881 	mov	dpl,r5
      001E07 8E 83            [24] 4882 	mov	dph,r6
      001E09 8F F0            [24] 4883 	mov	b,r7
      001E0B 12 74 A7         [24] 4884 	lcall	_vPortFree
      001E0E                       4885 00101$:
                           0014D2  4886 	C$queue.c$2099$2_0$354 ==.
                                   4887 ;	queue.c:2099: }
                           0014D2  4888 	C$queue.c$2099$2_0$354 ==.
                           0014D2  4889 	XG$vQueueDelete$0$0 ==.
      001E0E 22               [24] 4890 	ret
                                   4891 ;------------------------------------------------------------
                                   4892 ;Allocation info for local variables in function 'prvCopyDataToQueue'
                                   4893 ;------------------------------------------------------------
                                   4894 ;pvItemToQueue             Allocated to stack - _bp -5
                                   4895 ;xPosition                 Allocated to stack - _bp -6
                                   4896 ;pxQueue                   Allocated to stack - _bp +1
                                   4897 ;xReturn                   Allocated to registers 
                                   4898 ;uxMessagesWaiting         Allocated to stack - _bp +13
                                   4899 ;sloc0                     Allocated to stack - _bp +10
                                   4900 ;sloc1                     Allocated to stack - _bp +7
                                   4901 ;sloc2                     Allocated to stack - _bp +4
                                   4902 ;------------------------------------------------------------
                           0014D3  4903 	Fqueue$prvCopyDataToQueue$0$0 ==.
                           0014D3  4904 	C$queue.c$2160$2_0$357 ==.
                                   4905 ;	queue.c:2160: static BaseType_t prvCopyDataToQueue( Queue_t * const pxQueue,
                                   4906 ;	-----------------------------------------
                                   4907 ;	 function prvCopyDataToQueue
                                   4908 ;	-----------------------------------------
      001E0F                       4909 _prvCopyDataToQueue:
      001E0F C0 0D            [24] 4910 	push	_bp
      001E11 85 81 0D         [24] 4911 	mov	_bp,sp
      001E14 C0 82            [24] 4912 	push	dpl
      001E16 C0 83            [24] 4913 	push	dph
      001E18 C0 F0            [24] 4914 	push	b
      001E1A E5 81            [12] 4915 	mov	a,sp
      001E1C 24 0A            [12] 4916 	add	a,#0x0a
      001E1E F5 81            [12] 4917 	mov	sp,a
                           0014E4  4918 	C$queue.c$2169$1_0$357 ==.
                                   4919 ;	queue.c:2169: uxMessagesWaiting = pxQueue->uxMessagesWaiting;
      001E20 A8 0D            [24] 4920 	mov	r0,_bp
      001E22 08               [12] 4921 	inc	r0
      001E23 74 24            [12] 4922 	mov	a,#0x24
      001E25 26               [12] 4923 	add	a,@r0
      001E26 FA               [12] 4924 	mov	r2,a
      001E27 74 00            [12] 4925 	mov	a,#0x00
      001E29 08               [12] 4926 	inc	r0
      001E2A 36               [12] 4927 	addc	a,@r0
      001E2B FB               [12] 4928 	mov	r3,a
      001E2C 08               [12] 4929 	inc	r0
      001E2D 86 04            [24] 4930 	mov	ar4,@r0
      001E2F 8A 82            [24] 4931 	mov	dpl,r2
      001E31 8B 83            [24] 4932 	mov	dph,r3
      001E33 8C F0            [24] 4933 	mov	b,r4
      001E35 E5 0D            [12] 4934 	mov	a,_bp
      001E37 24 0D            [12] 4935 	add	a,#0x0d
      001E39 F8               [12] 4936 	mov	r0,a
      001E3A 12 7C 4D         [24] 4937 	lcall	__gptrget
      001E3D F6               [12] 4938 	mov	@r0,a
                           001502  4939 	C$queue.c$2171$1_0$357 ==.
                                   4940 ;	queue.c:2171: if( pxQueue->uxItemSize == ( UBaseType_t ) 0 )
      001E3E A8 0D            [24] 4941 	mov	r0,_bp
      001E40 08               [12] 4942 	inc	r0
      001E41 E5 0D            [12] 4943 	mov	a,_bp
      001E43 24 0A            [12] 4944 	add	a,#0x0a
      001E45 F9               [12] 4945 	mov	r1,a
      001E46 74 26            [12] 4946 	mov	a,#0x26
      001E48 26               [12] 4947 	add	a,@r0
      001E49 F7               [12] 4948 	mov	@r1,a
      001E4A 74 00            [12] 4949 	mov	a,#0x00
      001E4C 08               [12] 4950 	inc	r0
      001E4D 36               [12] 4951 	addc	a,@r0
      001E4E 09               [12] 4952 	inc	r1
      001E4F F7               [12] 4953 	mov	@r1,a
      001E50 08               [12] 4954 	inc	r0
      001E51 E6               [12] 4955 	mov	a,@r0
      001E52 09               [12] 4956 	inc	r1
      001E53 F7               [12] 4957 	mov	@r1,a
      001E54 E5 0D            [12] 4958 	mov	a,_bp
      001E56 24 0A            [12] 4959 	add	a,#0x0a
      001E58 F8               [12] 4960 	mov	r0,a
      001E59 86 82            [24] 4961 	mov	dpl,@r0
      001E5B 08               [12] 4962 	inc	r0
      001E5C 86 83            [24] 4963 	mov	dph,@r0
      001E5E 08               [12] 4964 	inc	r0
      001E5F 86 F0            [24] 4965 	mov	b,@r0
      001E61 12 7C 4D         [24] 4966 	lcall	__gptrget
      001E64 FE               [12] 4967 	mov	r6,a
      001E65 EE               [12] 4968 	mov	a,r6
      001E66 70 03            [24] 4969 	jnz	00141$
      001E68 02 21 4E         [24] 4970 	ljmp	00114$
      001E6B                       4971 00141$:
                           00152F  4972 	C$queue.c$2188$1_0$357 ==.
                                   4973 ;	queue.c:2188: else if( xPosition == queueSEND_TO_BACK )
      001E6B E5 0D            [12] 4974 	mov	a,_bp
      001E6D 24 FA            [12] 4975 	add	a,#0xfa
      001E6F F8               [12] 4976 	mov	r0,a
      001E70 E6               [12] 4977 	mov	a,@r0
      001E71 60 03            [24] 4978 	jz	00142$
      001E73 02 1F CB         [24] 4979 	ljmp	00110$
      001E76                       4980 00142$:
                           00153A  4981 	C$queue.c$2190$1_0$357 ==.
                                   4982 ;	queue.c:2190: ( void ) memcpy( ( void * ) pxQueue->pcWriteTo, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports, plus previous logic ensures a null pointer can only be passed to memcpy() if the copy size is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
      001E76 C0 02            [24] 4983 	push	ar2
      001E78 C0 03            [24] 4984 	push	ar3
      001E7A C0 04            [24] 4985 	push	ar4
      001E7C 8E 04            [24] 4986 	mov	ar4,r6
      001E7E 7D 00            [12] 4987 	mov	r5,#0x00
      001E80 A8 0D            [24] 4988 	mov	r0,_bp
      001E82 08               [12] 4989 	inc	r0
      001E83 E5 0D            [12] 4990 	mov	a,_bp
      001E85 24 07            [12] 4991 	add	a,#0x07
      001E87 F9               [12] 4992 	mov	r1,a
      001E88 74 03            [12] 4993 	mov	a,#0x03
      001E8A 26               [12] 4994 	add	a,@r0
      001E8B F7               [12] 4995 	mov	@r1,a
      001E8C 74 00            [12] 4996 	mov	a,#0x00
      001E8E 08               [12] 4997 	inc	r0
      001E8F 36               [12] 4998 	addc	a,@r0
      001E90 09               [12] 4999 	inc	r1
      001E91 F7               [12] 5000 	mov	@r1,a
      001E92 08               [12] 5001 	inc	r0
      001E93 E6               [12] 5002 	mov	a,@r0
      001E94 09               [12] 5003 	inc	r1
      001E95 F7               [12] 5004 	mov	@r1,a
      001E96 E5 0D            [12] 5005 	mov	a,_bp
      001E98 24 07            [12] 5006 	add	a,#0x07
      001E9A F8               [12] 5007 	mov	r0,a
      001E9B 86 82            [24] 5008 	mov	dpl,@r0
      001E9D 08               [12] 5009 	inc	r0
      001E9E 86 83            [24] 5010 	mov	dph,@r0
      001EA0 08               [12] 5011 	inc	r0
      001EA1 86 F0            [24] 5012 	mov	b,@r0
      001EA3 12 7C 4D         [24] 5013 	lcall	__gptrget
      001EA6 FA               [12] 5014 	mov	r2,a
      001EA7 A3               [24] 5015 	inc	dptr
      001EA8 12 7C 4D         [24] 5016 	lcall	__gptrget
      001EAB FB               [12] 5017 	mov	r3,a
      001EAC A3               [24] 5018 	inc	dptr
      001EAD 12 7C 4D         [24] 5019 	lcall	__gptrget
      001EB0 FF               [12] 5020 	mov	r7,a
      001EB1 C0 04            [24] 5021 	push	ar4
      001EB3 C0 03            [24] 5022 	push	ar3
      001EB5 C0 02            [24] 5023 	push	ar2
      001EB7 C0 04            [24] 5024 	push	ar4
      001EB9 C0 05            [24] 5025 	push	ar5
      001EBB E5 0D            [12] 5026 	mov	a,_bp
      001EBD 24 FB            [12] 5027 	add	a,#0xfb
      001EBF F8               [12] 5028 	mov	r0,a
      001EC0 E6               [12] 5029 	mov	a,@r0
      001EC1 C0 E0            [24] 5030 	push	acc
      001EC3 08               [12] 5031 	inc	r0
      001EC4 E6               [12] 5032 	mov	a,@r0
      001EC5 C0 E0            [24] 5033 	push	acc
      001EC7 08               [12] 5034 	inc	r0
      001EC8 E6               [12] 5035 	mov	a,@r0
      001EC9 C0 E0            [24] 5036 	push	acc
      001ECB 8A 82            [24] 5037 	mov	dpl,r2
      001ECD 8B 83            [24] 5038 	mov	dph,r3
      001ECF 8F F0            [24] 5039 	mov	b,r7
      001ED1 12 7A 34         [24] 5040 	lcall	___memcpy
      001ED4 E5 81            [12] 5041 	mov	a,sp
      001ED6 24 FB            [12] 5042 	add	a,#0xfb
      001ED8 F5 81            [12] 5043 	mov	sp,a
      001EDA D0 02            [24] 5044 	pop	ar2
      001EDC D0 03            [24] 5045 	pop	ar3
      001EDE D0 04            [24] 5046 	pop	ar4
                           0015A4  5047 	C$queue.c$2191$2_0$359 ==.
                                   5048 ;	queue.c:2191: pxQueue->pcWriteTo += pxQueue->uxItemSize;                                                       /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
      001EE0 E5 0D            [12] 5049 	mov	a,_bp
      001EE2 24 07            [12] 5050 	add	a,#0x07
      001EE4 F8               [12] 5051 	mov	r0,a
      001EE5 86 82            [24] 5052 	mov	dpl,@r0
      001EE7 08               [12] 5053 	inc	r0
      001EE8 86 83            [24] 5054 	mov	dph,@r0
      001EEA 08               [12] 5055 	inc	r0
      001EEB 86 F0            [24] 5056 	mov	b,@r0
      001EED 12 7C 4D         [24] 5057 	lcall	__gptrget
      001EF0 FC               [12] 5058 	mov	r4,a
      001EF1 A3               [24] 5059 	inc	dptr
      001EF2 12 7C 4D         [24] 5060 	lcall	__gptrget
      001EF5 FD               [12] 5061 	mov	r5,a
      001EF6 A3               [24] 5062 	inc	dptr
      001EF7 12 7C 4D         [24] 5063 	lcall	__gptrget
      001EFA FF               [12] 5064 	mov	r7,a
      001EFB E5 0D            [12] 5065 	mov	a,_bp
      001EFD 24 0A            [12] 5066 	add	a,#0x0a
      001EFF F8               [12] 5067 	mov	r0,a
      001F00 86 82            [24] 5068 	mov	dpl,@r0
      001F02 08               [12] 5069 	inc	r0
      001F03 86 83            [24] 5070 	mov	dph,@r0
      001F05 08               [12] 5071 	inc	r0
      001F06 86 F0            [24] 5072 	mov	b,@r0
      001F08 12 7C 4D         [24] 5073 	lcall	__gptrget
      001F0B FB               [12] 5074 	mov	r3,a
      001F0C E5 0D            [12] 5075 	mov	a,_bp
      001F0E 24 04            [12] 5076 	add	a,#0x04
      001F10 F8               [12] 5077 	mov	r0,a
      001F11 EB               [12] 5078 	mov	a,r3
      001F12 2C               [12] 5079 	add	a,r4
      001F13 F6               [12] 5080 	mov	@r0,a
      001F14 74 00            [12] 5081 	mov	a,#0x00
      001F16 3D               [12] 5082 	addc	a,r5
      001F17 08               [12] 5083 	inc	r0
      001F18 F6               [12] 5084 	mov	@r0,a
      001F19 08               [12] 5085 	inc	r0
      001F1A A6 07            [24] 5086 	mov	@r0,ar7
      001F1C E5 0D            [12] 5087 	mov	a,_bp
      001F1E 24 07            [12] 5088 	add	a,#0x07
      001F20 F8               [12] 5089 	mov	r0,a
      001F21 86 82            [24] 5090 	mov	dpl,@r0
      001F23 08               [12] 5091 	inc	r0
      001F24 86 83            [24] 5092 	mov	dph,@r0
      001F26 08               [12] 5093 	inc	r0
      001F27 86 F0            [24] 5094 	mov	b,@r0
      001F29 E5 0D            [12] 5095 	mov	a,_bp
      001F2B 24 04            [12] 5096 	add	a,#0x04
      001F2D F9               [12] 5097 	mov	r1,a
      001F2E E7               [12] 5098 	mov	a,@r1
      001F2F 12 79 22         [24] 5099 	lcall	__gptrput
      001F32 A3               [24] 5100 	inc	dptr
      001F33 09               [12] 5101 	inc	r1
      001F34 E7               [12] 5102 	mov	a,@r1
      001F35 12 79 22         [24] 5103 	lcall	__gptrput
      001F38 A3               [24] 5104 	inc	dptr
      001F39 09               [12] 5105 	inc	r1
      001F3A E7               [12] 5106 	mov	a,@r1
      001F3B 12 79 22         [24] 5107 	lcall	__gptrput
                           001602  5108 	C$queue.c$2193$2_0$359 ==.
                                   5109 ;	queue.c:2193: if( pxQueue->pcWriteTo >= pxQueue->u.xQueue.pcTail )                                             /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
      001F3E A8 0D            [24] 5110 	mov	r0,_bp
      001F40 08               [12] 5111 	inc	r0
      001F41 74 06            [12] 5112 	mov	a,#0x06
      001F43 26               [12] 5113 	add	a,@r0
      001F44 FA               [12] 5114 	mov	r2,a
      001F45 74 00            [12] 5115 	mov	a,#0x00
      001F47 08               [12] 5116 	inc	r0
      001F48 36               [12] 5117 	addc	a,@r0
      001F49 FB               [12] 5118 	mov	r3,a
      001F4A 08               [12] 5119 	inc	r0
      001F4B 86 07            [24] 5120 	mov	ar7,@r0
      001F4D 8A 82            [24] 5121 	mov	dpl,r2
      001F4F 8B 83            [24] 5122 	mov	dph,r3
      001F51 8F F0            [24] 5123 	mov	b,r7
      001F53 12 7C 4D         [24] 5124 	lcall	__gptrget
      001F56 FA               [12] 5125 	mov	r2,a
      001F57 A3               [24] 5126 	inc	dptr
      001F58 12 7C 4D         [24] 5127 	lcall	__gptrget
      001F5B FB               [12] 5128 	mov	r3,a
      001F5C A3               [24] 5129 	inc	dptr
      001F5D 12 7C 4D         [24] 5130 	lcall	__gptrget
      001F60 FF               [12] 5131 	mov	r7,a
      001F61 E5 0D            [12] 5132 	mov	a,_bp
      001F63 24 04            [12] 5133 	add	a,#0x04
      001F65 F8               [12] 5134 	mov	r0,a
      001F66 C0 02            [24] 5135 	push	ar2
      001F68 C0 03            [24] 5136 	push	ar3
      001F6A C0 07            [24] 5137 	push	ar7
      001F6C 86 82            [24] 5138 	mov	dpl,@r0
      001F6E 08               [12] 5139 	inc	r0
      001F6F 86 83            [24] 5140 	mov	dph,@r0
      001F71 08               [12] 5141 	inc	r0
      001F72 86 F0            [24] 5142 	mov	b,@r0
      001F74 12 00 31         [24] 5143 	lcall	___gptr_cmp
      001F77 15 81            [12] 5144 	dec	sp
      001F79 15 81            [12] 5145 	dec	sp
      001F7B 15 81            [12] 5146 	dec	sp
      001F7D D0 04            [24] 5147 	pop	ar4
      001F7F D0 03            [24] 5148 	pop	ar3
      001F81 D0 02            [24] 5149 	pop	ar2
      001F83 50 03            [24] 5150 	jnc	00143$
      001F85 02 21 4E         [24] 5151 	ljmp	00114$
      001F88                       5152 00143$:
                           00164C  5153 	C$queue.c$2195$1_0$357 ==.
                                   5154 ;	queue.c:2195: pxQueue->pcWriteTo = pxQueue->pcHead;
      001F88 C0 02            [24] 5155 	push	ar2
      001F8A C0 03            [24] 5156 	push	ar3
      001F8C C0 04            [24] 5157 	push	ar4
      001F8E A8 0D            [24] 5158 	mov	r0,_bp
      001F90 08               [12] 5159 	inc	r0
      001F91 86 82            [24] 5160 	mov	dpl,@r0
      001F93 08               [12] 5161 	inc	r0
      001F94 86 83            [24] 5162 	mov	dph,@r0
      001F96 08               [12] 5163 	inc	r0
      001F97 86 F0            [24] 5164 	mov	b,@r0
      001F99 12 7C 4D         [24] 5165 	lcall	__gptrget
      001F9C FC               [12] 5166 	mov	r4,a
      001F9D A3               [24] 5167 	inc	dptr
      001F9E 12 7C 4D         [24] 5168 	lcall	__gptrget
      001FA1 FD               [12] 5169 	mov	r5,a
      001FA2 A3               [24] 5170 	inc	dptr
      001FA3 12 7C 4D         [24] 5171 	lcall	__gptrget
      001FA6 FF               [12] 5172 	mov	r7,a
      001FA7 E5 0D            [12] 5173 	mov	a,_bp
      001FA9 24 07            [12] 5174 	add	a,#0x07
      001FAB F8               [12] 5175 	mov	r0,a
      001FAC 86 82            [24] 5176 	mov	dpl,@r0
      001FAE 08               [12] 5177 	inc	r0
      001FAF 86 83            [24] 5178 	mov	dph,@r0
      001FB1 08               [12] 5179 	inc	r0
      001FB2 86 F0            [24] 5180 	mov	b,@r0
      001FB4 EC               [12] 5181 	mov	a,r4
      001FB5 12 79 22         [24] 5182 	lcall	__gptrput
      001FB8 A3               [24] 5183 	inc	dptr
      001FB9 ED               [12] 5184 	mov	a,r5
      001FBA 12 79 22         [24] 5185 	lcall	__gptrput
      001FBD A3               [24] 5186 	inc	dptr
      001FBE EF               [12] 5187 	mov	a,r7
      001FBF 12 79 22         [24] 5188 	lcall	__gptrput
      001FC2 D0 04            [24] 5189 	pop	ar4
      001FC4 D0 03            [24] 5190 	pop	ar3
      001FC6 D0 02            [24] 5191 	pop	ar2
      001FC8 02 21 4E         [24] 5192 	ljmp	00114$
      001FCB                       5193 00110$:
                           00168F  5194 	C$queue.c$2204$1_0$357 ==.
                                   5195 ;	queue.c:2204: ( void ) memcpy( ( void * ) pxQueue->u.xQueue.pcReadFrom, pvItemToQueue, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e9087 !e418 MISRA exception as the casts are only redundant for some ports.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes.  Assert checks null pointer only used when length is 0. */
      001FCB C0 02            [24] 5196 	push	ar2
      001FCD C0 03            [24] 5197 	push	ar3
      001FCF C0 04            [24] 5198 	push	ar4
      001FD1 7F 00            [12] 5199 	mov	r7,#0x00
      001FD3 A8 0D            [24] 5200 	mov	r0,_bp
      001FD5 08               [12] 5201 	inc	r0
      001FD6 E5 0D            [12] 5202 	mov	a,_bp
      001FD8 24 04            [12] 5203 	add	a,#0x04
      001FDA F9               [12] 5204 	mov	r1,a
      001FDB 74 06            [12] 5205 	mov	a,#0x06
      001FDD 26               [12] 5206 	add	a,@r0
      001FDE F7               [12] 5207 	mov	@r1,a
      001FDF 74 00            [12] 5208 	mov	a,#0x00
      001FE1 08               [12] 5209 	inc	r0
      001FE2 36               [12] 5210 	addc	a,@r0
      001FE3 09               [12] 5211 	inc	r1
      001FE4 F7               [12] 5212 	mov	@r1,a
      001FE5 08               [12] 5213 	inc	r0
      001FE6 E6               [12] 5214 	mov	a,@r0
      001FE7 09               [12] 5215 	inc	r1
      001FE8 F7               [12] 5216 	mov	@r1,a
      001FE9 E5 0D            [12] 5217 	mov	a,_bp
      001FEB 24 04            [12] 5218 	add	a,#0x04
      001FED F8               [12] 5219 	mov	r0,a
      001FEE E5 0D            [12] 5220 	mov	a,_bp
      001FF0 24 07            [12] 5221 	add	a,#0x07
      001FF2 F9               [12] 5222 	mov	r1,a
      001FF3 74 03            [12] 5223 	mov	a,#0x03
      001FF5 26               [12] 5224 	add	a,@r0
      001FF6 F7               [12] 5225 	mov	@r1,a
      001FF7 74 00            [12] 5226 	mov	a,#0x00
      001FF9 08               [12] 5227 	inc	r0
      001FFA 36               [12] 5228 	addc	a,@r0
      001FFB 09               [12] 5229 	inc	r1
      001FFC F7               [12] 5230 	mov	@r1,a
      001FFD 08               [12] 5231 	inc	r0
      001FFE E6               [12] 5232 	mov	a,@r0
      001FFF 09               [12] 5233 	inc	r1
      002000 F7               [12] 5234 	mov	@r1,a
      002001 E5 0D            [12] 5235 	mov	a,_bp
      002003 24 07            [12] 5236 	add	a,#0x07
      002005 F8               [12] 5237 	mov	r0,a
      002006 86 82            [24] 5238 	mov	dpl,@r0
      002008 08               [12] 5239 	inc	r0
      002009 86 83            [24] 5240 	mov	dph,@r0
      00200B 08               [12] 5241 	inc	r0
      00200C 86 F0            [24] 5242 	mov	b,@r0
      00200E 12 7C 4D         [24] 5243 	lcall	__gptrget
      002011 FB               [12] 5244 	mov	r3,a
      002012 A3               [24] 5245 	inc	dptr
      002013 12 7C 4D         [24] 5246 	lcall	__gptrget
      002016 FC               [12] 5247 	mov	r4,a
      002017 A3               [24] 5248 	inc	dptr
      002018 12 7C 4D         [24] 5249 	lcall	__gptrget
      00201B FD               [12] 5250 	mov	r5,a
      00201C C0 04            [24] 5251 	push	ar4
      00201E C0 03            [24] 5252 	push	ar3
      002020 C0 02            [24] 5253 	push	ar2
      002022 C0 06            [24] 5254 	push	ar6
      002024 C0 07            [24] 5255 	push	ar7
      002026 E5 0D            [12] 5256 	mov	a,_bp
      002028 24 FB            [12] 5257 	add	a,#0xfb
      00202A F8               [12] 5258 	mov	r0,a
      00202B E6               [12] 5259 	mov	a,@r0
      00202C C0 E0            [24] 5260 	push	acc
      00202E 08               [12] 5261 	inc	r0
      00202F E6               [12] 5262 	mov	a,@r0
      002030 C0 E0            [24] 5263 	push	acc
      002032 08               [12] 5264 	inc	r0
      002033 E6               [12] 5265 	mov	a,@r0
      002034 C0 E0            [24] 5266 	push	acc
      002036 8B 82            [24] 5267 	mov	dpl,r3
      002038 8C 83            [24] 5268 	mov	dph,r4
      00203A 8D F0            [24] 5269 	mov	b,r5
      00203C 12 7A 34         [24] 5270 	lcall	___memcpy
      00203F E5 81            [12] 5271 	mov	a,sp
      002041 24 FB            [12] 5272 	add	a,#0xfb
      002043 F5 81            [12] 5273 	mov	sp,a
      002045 D0 02            [24] 5274 	pop	ar2
      002047 D0 03            [24] 5275 	pop	ar3
      002049 D0 04            [24] 5276 	pop	ar4
                           00170F  5277 	C$queue.c$2205$2_0$362 ==.
                                   5278 ;	queue.c:2205: pxQueue->u.xQueue.pcReadFrom -= pxQueue->uxItemSize;
      00204B E5 0D            [12] 5279 	mov	a,_bp
      00204D 24 07            [12] 5280 	add	a,#0x07
      00204F F8               [12] 5281 	mov	r0,a
      002050 86 82            [24] 5282 	mov	dpl,@r0
      002052 08               [12] 5283 	inc	r0
      002053 86 83            [24] 5284 	mov	dph,@r0
      002055 08               [12] 5285 	inc	r0
      002056 86 F0            [24] 5286 	mov	b,@r0
      002058 12 7C 4D         [24] 5287 	lcall	__gptrget
      00205B FD               [12] 5288 	mov	r5,a
      00205C A3               [24] 5289 	inc	dptr
      00205D 12 7C 4D         [24] 5290 	lcall	__gptrget
      002060 FE               [12] 5291 	mov	r6,a
      002061 A3               [24] 5292 	inc	dptr
      002062 12 7C 4D         [24] 5293 	lcall	__gptrget
      002065 FF               [12] 5294 	mov	r7,a
      002066 E5 0D            [12] 5295 	mov	a,_bp
      002068 24 0A            [12] 5296 	add	a,#0x0a
      00206A F8               [12] 5297 	mov	r0,a
      00206B 86 82            [24] 5298 	mov	dpl,@r0
      00206D 08               [12] 5299 	inc	r0
      00206E 86 83            [24] 5300 	mov	dph,@r0
      002070 08               [12] 5301 	inc	r0
      002071 86 F0            [24] 5302 	mov	b,@r0
      002073 12 7C 4D         [24] 5303 	lcall	__gptrget
      002076 FC               [12] 5304 	mov	r4,a
      002077 7B 00            [12] 5305 	mov	r3,#0x00
      002079 ED               [12] 5306 	mov	a,r5
      00207A C3               [12] 5307 	clr	c
      00207B 9C               [12] 5308 	subb	a,r4
      00207C FD               [12] 5309 	mov	r5,a
      00207D EE               [12] 5310 	mov	a,r6
      00207E 9B               [12] 5311 	subb	a,r3
      00207F FE               [12] 5312 	mov	r6,a
      002080 E5 0D            [12] 5313 	mov	a,_bp
      002082 24 07            [12] 5314 	add	a,#0x07
      002084 F8               [12] 5315 	mov	r0,a
      002085 86 82            [24] 5316 	mov	dpl,@r0
      002087 08               [12] 5317 	inc	r0
      002088 86 83            [24] 5318 	mov	dph,@r0
      00208A 08               [12] 5319 	inc	r0
      00208B 86 F0            [24] 5320 	mov	b,@r0
      00208D ED               [12] 5321 	mov	a,r5
      00208E 12 79 22         [24] 5322 	lcall	__gptrput
      002091 A3               [24] 5323 	inc	dptr
      002092 EE               [12] 5324 	mov	a,r6
      002093 12 79 22         [24] 5325 	lcall	__gptrput
      002096 A3               [24] 5326 	inc	dptr
      002097 EF               [12] 5327 	mov	a,r7
      002098 12 79 22         [24] 5328 	lcall	__gptrput
                           00175F  5329 	C$queue.c$2207$2_0$362 ==.
                                   5330 ;	queue.c:2207: if( pxQueue->u.xQueue.pcReadFrom < pxQueue->pcHead ) /*lint !e946 MISRA exception justified as comparison of pointers is the cleanest solution. */
      00209B A8 0D            [24] 5331 	mov	r0,_bp
      00209D 08               [12] 5332 	inc	r0
      00209E 86 82            [24] 5333 	mov	dpl,@r0
      0020A0 08               [12] 5334 	inc	r0
      0020A1 86 83            [24] 5335 	mov	dph,@r0
      0020A3 08               [12] 5336 	inc	r0
      0020A4 86 F0            [24] 5337 	mov	b,@r0
      0020A6 12 7C 4D         [24] 5338 	lcall	__gptrget
      0020A9 FA               [12] 5339 	mov	r2,a
      0020AA A3               [24] 5340 	inc	dptr
      0020AB 12 7C 4D         [24] 5341 	lcall	__gptrget
      0020AE FB               [12] 5342 	mov	r3,a
      0020AF A3               [24] 5343 	inc	dptr
      0020B0 12 7C 4D         [24] 5344 	lcall	__gptrget
      0020B3 FC               [12] 5345 	mov	r4,a
      0020B4 C0 02            [24] 5346 	push	ar2
      0020B6 C0 03            [24] 5347 	push	ar3
      0020B8 C0 04            [24] 5348 	push	ar4
      0020BA 8D 82            [24] 5349 	mov	dpl,r5
      0020BC 8E 83            [24] 5350 	mov	dph,r6
      0020BE 8F F0            [24] 5351 	mov	b,r7
      0020C0 12 00 31         [24] 5352 	lcall	___gptr_cmp
      0020C3 15 81            [12] 5353 	dec	sp
      0020C5 15 81            [12] 5354 	dec	sp
      0020C7 15 81            [12] 5355 	dec	sp
      0020C9 D0 04            [24] 5356 	pop	ar4
      0020CB D0 03            [24] 5357 	pop	ar3
      0020CD D0 02            [24] 5358 	pop	ar2
      0020CF 40 03            [24] 5359 	jc	00144$
      0020D1 02 21 30         [24] 5360 	ljmp	00104$
      0020D4                       5361 00144$:
                           001798  5362 	C$queue.c$2209$1_0$357 ==.
                                   5363 ;	queue.c:2209: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
      0020D4 C0 02            [24] 5364 	push	ar2
      0020D6 C0 03            [24] 5365 	push	ar3
      0020D8 C0 04            [24] 5366 	push	ar4
      0020DA E5 0D            [12] 5367 	mov	a,_bp
      0020DC 24 04            [12] 5368 	add	a,#0x04
      0020DE F8               [12] 5369 	mov	r0,a
      0020DF 86 82            [24] 5370 	mov	dpl,@r0
      0020E1 08               [12] 5371 	inc	r0
      0020E2 86 83            [24] 5372 	mov	dph,@r0
      0020E4 08               [12] 5373 	inc	r0
      0020E5 86 F0            [24] 5374 	mov	b,@r0
      0020E7 12 7C 4D         [24] 5375 	lcall	__gptrget
      0020EA FD               [12] 5376 	mov	r5,a
      0020EB A3               [24] 5377 	inc	dptr
      0020EC 12 7C 4D         [24] 5378 	lcall	__gptrget
      0020EF FE               [12] 5379 	mov	r6,a
      0020F0 A3               [24] 5380 	inc	dptr
      0020F1 12 7C 4D         [24] 5381 	lcall	__gptrget
      0020F4 FF               [12] 5382 	mov	r7,a
      0020F5 E5 0D            [12] 5383 	mov	a,_bp
      0020F7 24 0A            [12] 5384 	add	a,#0x0a
      0020F9 F8               [12] 5385 	mov	r0,a
      0020FA 86 82            [24] 5386 	mov	dpl,@r0
      0020FC 08               [12] 5387 	inc	r0
      0020FD 86 83            [24] 5388 	mov	dph,@r0
      0020FF 08               [12] 5389 	inc	r0
      002100 86 F0            [24] 5390 	mov	b,@r0
      002102 12 7C 4D         [24] 5391 	lcall	__gptrget
      002105 FC               [12] 5392 	mov	r4,a
      002106 7B 00            [12] 5393 	mov	r3,#0x00
      002108 ED               [12] 5394 	mov	a,r5
      002109 C3               [12] 5395 	clr	c
      00210A 9C               [12] 5396 	subb	a,r4
      00210B FD               [12] 5397 	mov	r5,a
      00210C EE               [12] 5398 	mov	a,r6
      00210D 9B               [12] 5399 	subb	a,r3
      00210E FE               [12] 5400 	mov	r6,a
      00210F E5 0D            [12] 5401 	mov	a,_bp
      002111 24 07            [12] 5402 	add	a,#0x07
      002113 F8               [12] 5403 	mov	r0,a
      002114 86 82            [24] 5404 	mov	dpl,@r0
      002116 08               [12] 5405 	inc	r0
      002117 86 83            [24] 5406 	mov	dph,@r0
      002119 08               [12] 5407 	inc	r0
      00211A 86 F0            [24] 5408 	mov	b,@r0
      00211C ED               [12] 5409 	mov	a,r5
      00211D 12 79 22         [24] 5410 	lcall	__gptrput
      002120 A3               [24] 5411 	inc	dptr
      002121 EE               [12] 5412 	mov	a,r6
      002122 12 79 22         [24] 5413 	lcall	__gptrput
      002125 A3               [24] 5414 	inc	dptr
      002126 EF               [12] 5415 	mov	a,r7
      002127 12 79 22         [24] 5416 	lcall	__gptrput
                           0017EE  5417 	C$queue.c$2239$1_0$357 ==.
                                   5418 ;	queue.c:2239: return xReturn;
      00212A D0 04            [24] 5419 	pop	ar4
      00212C D0 03            [24] 5420 	pop	ar3
      00212E D0 02            [24] 5421 	pop	ar2
                           0017F4  5422 	C$queue.c$2209$2_0$362 ==.
                                   5423 ;	queue.c:2209: pxQueue->u.xQueue.pcReadFrom = ( pxQueue->u.xQueue.pcTail - pxQueue->uxItemSize );
      002130                       5424 00104$:
                           0017F4  5425 	C$queue.c$2216$2_0$362 ==.
                                   5426 ;	queue.c:2216: if( xPosition == queueOVERWRITE )
      002130 E5 0D            [12] 5427 	mov	a,_bp
      002132 24 FA            [12] 5428 	add	a,#0xfa
      002134 F8               [12] 5429 	mov	r0,a
      002135 B6 02 02         [24] 5430 	cjne	@r0,#0x02,00145$
      002138 80 03            [24] 5431 	sjmp	00146$
      00213A                       5432 00145$:
      00213A 02 21 4E         [24] 5433 	ljmp	00114$
      00213D                       5434 00146$:
                           001801  5435 	C$queue.c$2218$3_0$365 ==.
                                   5436 ;	queue.c:2218: if( uxMessagesWaiting > ( UBaseType_t ) 0 )
      00213D E5 0D            [12] 5437 	mov	a,_bp
      00213F 24 0D            [12] 5438 	add	a,#0x0d
      002141 F8               [12] 5439 	mov	r0,a
      002142 E6               [12] 5440 	mov	a,@r0
      002143 70 03            [24] 5441 	jnz	00147$
      002145 02 21 4E         [24] 5442 	ljmp	00114$
      002148                       5443 00147$:
                           00180C  5444 	C$queue.c$2224$4_0$366 ==.
                                   5445 ;	queue.c:2224: --uxMessagesWaiting;
      002148 E5 0D            [12] 5446 	mov	a,_bp
      00214A 24 0D            [12] 5447 	add	a,#0x0d
      00214C F8               [12] 5448 	mov	r0,a
      00214D 16               [12] 5449 	dec	@r0
      00214E                       5450 00114$:
                           001812  5451 	C$queue.c$2237$1_0$357 ==.
                                   5452 ;	queue.c:2237: pxQueue->uxMessagesWaiting = uxMessagesWaiting + ( UBaseType_t ) 1;
      00214E E5 0D            [12] 5453 	mov	a,_bp
      002150 24 0D            [12] 5454 	add	a,#0x0d
      002152 F8               [12] 5455 	mov	r0,a
      002153 E6               [12] 5456 	mov	a,@r0
      002154 04               [12] 5457 	inc	a
      002155 FF               [12] 5458 	mov	r7,a
      002156 8A 82            [24] 5459 	mov	dpl,r2
      002158 8B 83            [24] 5460 	mov	dph,r3
      00215A 8C F0            [24] 5461 	mov	b,r4
      00215C EF               [12] 5462 	mov	a,r7
      00215D 12 79 22         [24] 5463 	lcall	__gptrput
                           001824  5464 	C$queue.c$2239$1_0$357 ==.
                                   5465 ;	queue.c:2239: return xReturn;
      002160 75 82 00         [24] 5466 	mov	dpl,#0x00
      002163                       5467 00115$:
                           001827  5468 	C$queue.c$2240$1_0$357 ==.
                                   5469 ;	queue.c:2240: }
      002163 85 0D 81         [24] 5470 	mov	sp,_bp
      002166 D0 0D            [24] 5471 	pop	_bp
                           00182C  5472 	C$queue.c$2240$1_0$357 ==.
                           00182C  5473 	XFqueue$prvCopyDataToQueue$0$0 ==.
      002168 22               [24] 5474 	ret
                                   5475 ;------------------------------------------------------------
                                   5476 ;Allocation info for local variables in function 'prvCopyDataFromQueue'
                                   5477 ;------------------------------------------------------------
                                   5478 ;pvBuffer                  Allocated to stack - _bp -5
                                   5479 ;pxQueue                   Allocated to stack - _bp +1
                                   5480 ;sloc0                     Allocated to stack - _bp +4
                                   5481 ;sloc1                     Allocated to stack - _bp +5
                                   5482 ;------------------------------------------------------------
                           00182D  5483 	Fqueue$prvCopyDataFromQueue$0$0 ==.
                           00182D  5484 	C$queue.c$2243$1_0$370 ==.
                                   5485 ;	queue.c:2243: static void prvCopyDataFromQueue( Queue_t * const pxQueue,
                                   5486 ;	-----------------------------------------
                                   5487 ;	 function prvCopyDataFromQueue
                                   5488 ;	-----------------------------------------
      002169                       5489 _prvCopyDataFromQueue:
      002169 C0 0D            [24] 5490 	push	_bp
      00216B 85 81 0D         [24] 5491 	mov	_bp,sp
      00216E C0 82            [24] 5492 	push	dpl
      002170 C0 83            [24] 5493 	push	dph
      002172 C0 F0            [24] 5494 	push	b
      002174 E5 81            [12] 5495 	mov	a,sp
      002176 24 04            [12] 5496 	add	a,#0x04
      002178 F5 81            [12] 5497 	mov	sp,a
                           00183E  5498 	C$queue.c$2246$1_0$370 ==.
                                   5499 ;	queue.c:2246: if( pxQueue->uxItemSize != ( UBaseType_t ) 0 )
      00217A A8 0D            [24] 5500 	mov	r0,_bp
      00217C 08               [12] 5501 	inc	r0
      00217D 74 26            [12] 5502 	mov	a,#0x26
      00217F 26               [12] 5503 	add	a,@r0
      002180 FA               [12] 5504 	mov	r2,a
      002181 74 00            [12] 5505 	mov	a,#0x00
      002183 08               [12] 5506 	inc	r0
      002184 36               [12] 5507 	addc	a,@r0
      002185 FB               [12] 5508 	mov	r3,a
      002186 08               [12] 5509 	inc	r0
      002187 86 04            [24] 5510 	mov	ar4,@r0
      002189 8A 82            [24] 5511 	mov	dpl,r2
      00218B 8B 83            [24] 5512 	mov	dph,r3
      00218D 8C F0            [24] 5513 	mov	b,r4
      00218F E5 0D            [12] 5514 	mov	a,_bp
      002191 24 04            [12] 5515 	add	a,#0x04
      002193 F8               [12] 5516 	mov	r0,a
      002194 12 7C 4D         [24] 5517 	lcall	__gptrget
      002197 F6               [12] 5518 	mov	@r0,a
      002198 E5 0D            [12] 5519 	mov	a,_bp
      00219A 24 04            [12] 5520 	add	a,#0x04
      00219C F8               [12] 5521 	mov	r0,a
      00219D E6               [12] 5522 	mov	a,@r0
      00219E 70 03            [24] 5523 	jnz	00115$
      0021A0 02 22 BA         [24] 5524 	ljmp	00105$
      0021A3                       5525 00115$:
                           001867  5526 	C$queue.c$2248$1_0$370 ==.
                                   5527 ;	queue.c:2248: pxQueue->u.xQueue.pcReadFrom += pxQueue->uxItemSize;           /*lint !e9016 Pointer arithmetic on char types ok, especially in this use case where it is the clearest way of conveying intent. */
      0021A3 C0 02            [24] 5528 	push	ar2
      0021A5 C0 03            [24] 5529 	push	ar3
      0021A7 C0 04            [24] 5530 	push	ar4
      0021A9 A8 0D            [24] 5531 	mov	r0,_bp
      0021AB 08               [12] 5532 	inc	r0
      0021AC 74 06            [12] 5533 	mov	a,#0x06
      0021AE 26               [12] 5534 	add	a,@r0
      0021AF FA               [12] 5535 	mov	r2,a
      0021B0 74 00            [12] 5536 	mov	a,#0x00
      0021B2 08               [12] 5537 	inc	r0
      0021B3 36               [12] 5538 	addc	a,@r0
      0021B4 FB               [12] 5539 	mov	r3,a
      0021B5 08               [12] 5540 	inc	r0
      0021B6 86 04            [24] 5541 	mov	ar4,@r0
      0021B8 E5 0D            [12] 5542 	mov	a,_bp
      0021BA 24 05            [12] 5543 	add	a,#0x05
      0021BC F8               [12] 5544 	mov	r0,a
      0021BD 74 03            [12] 5545 	mov	a,#0x03
      0021BF 2A               [12] 5546 	add	a,r2
      0021C0 F6               [12] 5547 	mov	@r0,a
      0021C1 74 00            [12] 5548 	mov	a,#0x00
      0021C3 3B               [12] 5549 	addc	a,r3
      0021C4 08               [12] 5550 	inc	r0
      0021C5 F6               [12] 5551 	mov	@r0,a
      0021C6 08               [12] 5552 	inc	r0
      0021C7 A6 04            [24] 5553 	mov	@r0,ar4
      0021C9 E5 0D            [12] 5554 	mov	a,_bp
      0021CB 24 05            [12] 5555 	add	a,#0x05
      0021CD F8               [12] 5556 	mov	r0,a
      0021CE 86 82            [24] 5557 	mov	dpl,@r0
      0021D0 08               [12] 5558 	inc	r0
      0021D1 86 83            [24] 5559 	mov	dph,@r0
      0021D3 08               [12] 5560 	inc	r0
      0021D4 86 F0            [24] 5561 	mov	b,@r0
      0021D6 12 7C 4D         [24] 5562 	lcall	__gptrget
      0021D9 FD               [12] 5563 	mov	r5,a
      0021DA A3               [24] 5564 	inc	dptr
      0021DB 12 7C 4D         [24] 5565 	lcall	__gptrget
      0021DE FE               [12] 5566 	mov	r6,a
      0021DF A3               [24] 5567 	inc	dptr
      0021E0 12 7C 4D         [24] 5568 	lcall	__gptrget
      0021E3 FF               [12] 5569 	mov	r7,a
      0021E4 E5 0D            [12] 5570 	mov	a,_bp
      0021E6 24 04            [12] 5571 	add	a,#0x04
      0021E8 F8               [12] 5572 	mov	r0,a
      0021E9 E6               [12] 5573 	mov	a,@r0
      0021EA 2D               [12] 5574 	add	a,r5
      0021EB FD               [12] 5575 	mov	r5,a
      0021EC 74 00            [12] 5576 	mov	a,#0x00
      0021EE 3E               [12] 5577 	addc	a,r6
      0021EF FE               [12] 5578 	mov	r6,a
      0021F0 E5 0D            [12] 5579 	mov	a,_bp
      0021F2 24 05            [12] 5580 	add	a,#0x05
      0021F4 F8               [12] 5581 	mov	r0,a
      0021F5 86 82            [24] 5582 	mov	dpl,@r0
      0021F7 08               [12] 5583 	inc	r0
      0021F8 86 83            [24] 5584 	mov	dph,@r0
      0021FA 08               [12] 5585 	inc	r0
      0021FB 86 F0            [24] 5586 	mov	b,@r0
      0021FD ED               [12] 5587 	mov	a,r5
      0021FE 12 79 22         [24] 5588 	lcall	__gptrput
      002201 A3               [24] 5589 	inc	dptr
      002202 EE               [12] 5590 	mov	a,r6
      002203 12 79 22         [24] 5591 	lcall	__gptrput
      002206 A3               [24] 5592 	inc	dptr
      002207 EF               [12] 5593 	mov	a,r7
      002208 12 79 22         [24] 5594 	lcall	__gptrput
                           0018CF  5595 	C$queue.c$2250$2_0$371 ==.
                                   5596 ;	queue.c:2250: if( pxQueue->u.xQueue.pcReadFrom >= pxQueue->u.xQueue.pcTail ) /*lint !e946 MISRA exception justified as use of the relational operator is the cleanest solutions. */
      00220B 8A 82            [24] 5597 	mov	dpl,r2
      00220D 8B 83            [24] 5598 	mov	dph,r3
      00220F 8C F0            [24] 5599 	mov	b,r4
      002211 12 7C 4D         [24] 5600 	lcall	__gptrget
      002214 FA               [12] 5601 	mov	r2,a
      002215 A3               [24] 5602 	inc	dptr
      002216 12 7C 4D         [24] 5603 	lcall	__gptrget
      002219 FB               [12] 5604 	mov	r3,a
      00221A A3               [24] 5605 	inc	dptr
      00221B 12 7C 4D         [24] 5606 	lcall	__gptrget
      00221E FC               [12] 5607 	mov	r4,a
      00221F C0 02            [24] 5608 	push	ar2
      002221 C0 03            [24] 5609 	push	ar3
      002223 C0 04            [24] 5610 	push	ar4
      002225 8D 82            [24] 5611 	mov	dpl,r5
      002227 8E 83            [24] 5612 	mov	dph,r6
      002229 8F F0            [24] 5613 	mov	b,r7
      00222B 12 00 31         [24] 5614 	lcall	___gptr_cmp
      00222E 15 81            [12] 5615 	dec	sp
      002230 15 81            [12] 5616 	dec	sp
      002232 15 81            [12] 5617 	dec	sp
      002234 D0 04            [24] 5618 	pop	ar4
      002236 D0 03            [24] 5619 	pop	ar3
      002238 D0 02            [24] 5620 	pop	ar2
      00223A 50 03            [24] 5621 	jnc	00116$
      00223C 02 22 73         [24] 5622 	ljmp	00102$
      00223F                       5623 00116$:
                           001903  5624 	C$queue.c$2252$3_0$372 ==.
                                   5625 ;	queue.c:2252: pxQueue->u.xQueue.pcReadFrom = pxQueue->pcHead;
      00223F A8 0D            [24] 5626 	mov	r0,_bp
      002241 08               [12] 5627 	inc	r0
      002242 86 82            [24] 5628 	mov	dpl,@r0
      002244 08               [12] 5629 	inc	r0
      002245 86 83            [24] 5630 	mov	dph,@r0
      002247 08               [12] 5631 	inc	r0
      002248 86 F0            [24] 5632 	mov	b,@r0
      00224A 12 7C 4D         [24] 5633 	lcall	__gptrget
      00224D FD               [12] 5634 	mov	r5,a
      00224E A3               [24] 5635 	inc	dptr
      00224F 12 7C 4D         [24] 5636 	lcall	__gptrget
      002252 FE               [12] 5637 	mov	r6,a
      002253 A3               [24] 5638 	inc	dptr
      002254 12 7C 4D         [24] 5639 	lcall	__gptrget
      002257 FF               [12] 5640 	mov	r7,a
      002258 E5 0D            [12] 5641 	mov	a,_bp
      00225A 24 05            [12] 5642 	add	a,#0x05
      00225C F8               [12] 5643 	mov	r0,a
      00225D 86 82            [24] 5644 	mov	dpl,@r0
      00225F 08               [12] 5645 	inc	r0
      002260 86 83            [24] 5646 	mov	dph,@r0
      002262 08               [12] 5647 	inc	r0
      002263 86 F0            [24] 5648 	mov	b,@r0
      002265 ED               [12] 5649 	mov	a,r5
      002266 12 79 22         [24] 5650 	lcall	__gptrput
      002269 A3               [24] 5651 	inc	dptr
      00226A EE               [12] 5652 	mov	a,r6
      00226B 12 79 22         [24] 5653 	lcall	__gptrput
      00226E A3               [24] 5654 	inc	dptr
      00226F EF               [12] 5655 	mov	a,r7
      002270 12 79 22         [24] 5656 	lcall	__gptrput
      002273                       5657 00102$:
                           001937  5658 	C$queue.c$2259$2_0$371 ==.
                                   5659 ;	queue.c:2259: ( void ) memcpy( ( void * ) pvBuffer, ( void * ) pxQueue->u.xQueue.pcReadFrom, ( size_t ) pxQueue->uxItemSize ); /*lint !e961 !e418 !e9087 MISRA exception as the casts are only redundant for some ports.  Also previous logic ensures a null pointer can only be passed to memcpy() when the count is 0.  Cast to void required by function signature and safe as no alignment requirement and copy length specified in bytes. */
      002273 8A 82            [24] 5660 	mov	dpl,r2
      002275 8B 83            [24] 5661 	mov	dph,r3
      002277 8C F0            [24] 5662 	mov	b,r4
      002279 12 7C 4D         [24] 5663 	lcall	__gptrget
      00227C FA               [12] 5664 	mov	r2,a
      00227D 7F 00            [12] 5665 	mov	r7,#0x00
      00227F E5 0D            [12] 5666 	mov	a,_bp
      002281 24 05            [12] 5667 	add	a,#0x05
      002283 F8               [12] 5668 	mov	r0,a
      002284 86 82            [24] 5669 	mov	dpl,@r0
      002286 08               [12] 5670 	inc	r0
      002287 86 83            [24] 5671 	mov	dph,@r0
      002289 08               [12] 5672 	inc	r0
      00228A 86 F0            [24] 5673 	mov	b,@r0
      00228C 12 7C 4D         [24] 5674 	lcall	__gptrget
      00228F FC               [12] 5675 	mov	r4,a
      002290 A3               [24] 5676 	inc	dptr
      002291 12 7C 4D         [24] 5677 	lcall	__gptrget
      002294 FD               [12] 5678 	mov	r5,a
      002295 A3               [24] 5679 	inc	dptr
      002296 12 7C 4D         [24] 5680 	lcall	__gptrget
      002299 FE               [12] 5681 	mov	r6,a
      00229A C0 02            [24] 5682 	push	ar2
      00229C C0 07            [24] 5683 	push	ar7
      00229E C0 04            [24] 5684 	push	ar4
      0022A0 C0 05            [24] 5685 	push	ar5
      0022A2 C0 06            [24] 5686 	push	ar6
      0022A4 E5 0D            [12] 5687 	mov	a,_bp
      0022A6 24 FB            [12] 5688 	add	a,#0xfb
      0022A8 F8               [12] 5689 	mov	r0,a
      0022A9 86 82            [24] 5690 	mov	dpl,@r0
      0022AB 08               [12] 5691 	inc	r0
      0022AC 86 83            [24] 5692 	mov	dph,@r0
      0022AE 08               [12] 5693 	inc	r0
      0022AF 86 F0            [24] 5694 	mov	b,@r0
      0022B1 12 7A 34         [24] 5695 	lcall	___memcpy
      0022B4 E5 81            [12] 5696 	mov	a,sp
      0022B6 24 FB            [12] 5697 	add	a,#0xfb
      0022B8 F5 81            [12] 5698 	mov	sp,a
      0022BA                       5699 00105$:
                           00197E  5700 	C$queue.c$2261$1_0$370 ==.
                                   5701 ;	queue.c:2261: }
      0022BA 85 0D 81         [24] 5702 	mov	sp,_bp
      0022BD D0 0D            [24] 5703 	pop	_bp
                           001983  5704 	C$queue.c$2261$1_0$370 ==.
                           001983  5705 	XFqueue$prvCopyDataFromQueue$0$0 ==.
      0022BF 22               [24] 5706 	ret
                                   5707 ;------------------------------------------------------------
                                   5708 ;Allocation info for local variables in function 'prvUnlockQueue'
                                   5709 ;------------------------------------------------------------
                                   5710 ;pxQueue                   Allocated to stack - _bp +1
                                   5711 ;cTxLock                   Allocated to registers 
                                   5712 ;cRxLock                   Allocated to registers 
                                   5713 ;sloc0                     Allocated to stack - _bp +4
                                   5714 ;sloc1                     Allocated to stack - _bp +7
                                   5715 ;------------------------------------------------------------
                           001984  5716 	Fqueue$prvUnlockQueue$0$0 ==.
                           001984  5717 	C$queue.c$2264$1_0$375 ==.
                                   5718 ;	queue.c:2264: static void prvUnlockQueue( Queue_t * const pxQueue )
                                   5719 ;	-----------------------------------------
                                   5720 ;	 function prvUnlockQueue
                                   5721 ;	-----------------------------------------
      0022C0                       5722 _prvUnlockQueue:
      0022C0 C0 0D            [24] 5723 	push	_bp
      0022C2 85 81 0D         [24] 5724 	mov	_bp,sp
      0022C5 C0 82            [24] 5725 	push	dpl
      0022C7 C0 83            [24] 5726 	push	dph
      0022C9 C0 F0            [24] 5727 	push	b
      0022CB E5 81            [12] 5728 	mov	a,sp
      0022CD 24 04            [12] 5729 	add	a,#0x04
      0022CF F5 81            [12] 5730 	mov	sp,a
                           001995  5731 	C$queue.c$2272$1_0$375 ==.
                                   5732 ;	queue.c:2272: taskENTER_CRITICAL();
      0022D1 C0 E0            [24] 5733 	push ACC 
      0022D3 C0 A8            [24] 5734 	push IE 
                                   5735 ;	assignBit
      0022D5 C2 AF            [12] 5736 	clr	_EA
                           00199B  5737 	C$queue.c$2274$2_0$376 ==.
                                   5738 ;	queue.c:2274: int8_t cTxLock = pxQueue->cTxLock;
      0022D7 A8 0D            [24] 5739 	mov	r0,_bp
      0022D9 08               [12] 5740 	inc	r0
      0022DA 74 28            [12] 5741 	mov	a,#0x28
      0022DC 26               [12] 5742 	add	a,@r0
      0022DD FA               [12] 5743 	mov	r2,a
      0022DE 74 00            [12] 5744 	mov	a,#0x00
      0022E0 08               [12] 5745 	inc	r0
      0022E1 36               [12] 5746 	addc	a,@r0
      0022E2 FB               [12] 5747 	mov	r3,a
      0022E3 08               [12] 5748 	inc	r0
      0022E4 86 04            [24] 5749 	mov	ar4,@r0
      0022E6 8A 82            [24] 5750 	mov	dpl,r2
      0022E8 8B 83            [24] 5751 	mov	dph,r3
      0022EA 8C F0            [24] 5752 	mov	b,r4
      0022EC E5 0D            [12] 5753 	mov	a,_bp
      0022EE 24 07            [12] 5754 	add	a,#0x07
      0022F0 F8               [12] 5755 	mov	r0,a
      0022F1 12 7C 4D         [24] 5756 	lcall	__gptrget
      0022F4 F6               [12] 5757 	mov	@r0,a
                           0019B9  5758 	C$queue.c$2277$4_0$378 ==.
                                   5759 ;	queue.c:2277: while( cTxLock > queueLOCKED_UNMODIFIED )
      0022F5 A8 0D            [24] 5760 	mov	r0,_bp
      0022F7 08               [12] 5761 	inc	r0
      0022F8 E5 0D            [12] 5762 	mov	a,_bp
      0022FA 24 04            [12] 5763 	add	a,#0x04
      0022FC F9               [12] 5764 	mov	r1,a
      0022FD 74 18            [12] 5765 	mov	a,#0x18
      0022FF 26               [12] 5766 	add	a,@r0
      002300 F7               [12] 5767 	mov	@r1,a
      002301 74 00            [12] 5768 	mov	a,#0x00
      002303 08               [12] 5769 	inc	r0
      002304 36               [12] 5770 	addc	a,@r0
      002305 09               [12] 5771 	inc	r1
      002306 F7               [12] 5772 	mov	@r1,a
      002307 08               [12] 5773 	inc	r0
      002308 E6               [12] 5774 	mov	a,@r0
      002309 09               [12] 5775 	inc	r1
      00230A F7               [12] 5776 	mov	@r1,a
      00230B                       5777 00106$:
      00230B E5 0D            [12] 5778 	mov	a,_bp
      00230D 24 07            [12] 5779 	add	a,#0x07
      00230F F8               [12] 5780 	mov	r0,a
      002310 C3               [12] 5781 	clr	c
      002311 74 00            [12] 5782 	mov	a,#0x00
      002313 64 80            [12] 5783 	xrl	a,#0x80
      002315 86 F0            [24] 5784 	mov	b,@r0
      002317 63 F0 80         [24] 5785 	xrl	b,#0x80
      00231A 95 F0            [12] 5786 	subb	a,b
      00231C 40 03            [24] 5787 	jc	00155$
      00231E 02 23 79         [24] 5788 	ljmp	00108$
      002321                       5789 00155$:
                           0019E5  5790 	C$queue.c$2325$4_0$378 ==.
                                   5791 ;	queue.c:2325: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToReceive ) ) == pdFALSE )
      002321 E5 0D            [12] 5792 	mov	a,_bp
      002323 24 04            [12] 5793 	add	a,#0x04
      002325 F8               [12] 5794 	mov	r0,a
      002326 86 82            [24] 5795 	mov	dpl,@r0
      002328 08               [12] 5796 	inc	r0
      002329 86 83            [24] 5797 	mov	dph,@r0
      00232B 08               [12] 5798 	inc	r0
      00232C 86 F0            [24] 5799 	mov	b,@r0
      00232E 12 7C 4D         [24] 5800 	lcall	__gptrget
      002331 70 03            [24] 5801 	jnz	00156$
      002333 02 23 79         [24] 5802 	ljmp	00108$
      002336                       5803 00156$:
                           0019FA  5804 	C$queue.c$2327$5_0$379 ==.
                                   5805 ;	queue.c:2327: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToReceive ) ) != pdFALSE )
      002336 A8 0D            [24] 5806 	mov	r0,_bp
      002338 08               [12] 5807 	inc	r0
      002339 74 18            [12] 5808 	mov	a,#0x18
      00233B 26               [12] 5809 	add	a,@r0
      00233C FD               [12] 5810 	mov	r5,a
      00233D 74 00            [12] 5811 	mov	a,#0x00
      00233F 08               [12] 5812 	inc	r0
      002340 36               [12] 5813 	addc	a,@r0
      002341 FE               [12] 5814 	mov	r6,a
      002342 08               [12] 5815 	inc	r0
      002343 86 07            [24] 5816 	mov	ar7,@r0
      002345 8D 82            [24] 5817 	mov	dpl,r5
      002347 8E 83            [24] 5818 	mov	dph,r6
      002349 8F F0            [24] 5819 	mov	b,r7
      00234B C0 04            [24] 5820 	push	ar4
      00234D C0 03            [24] 5821 	push	ar3
      00234F C0 02            [24] 5822 	push	ar2
      002351 12 40 62         [24] 5823 	lcall	_xTaskRemoveFromEventList
      002354 E5 82            [12] 5824 	mov	a,dpl
      002356 D0 02            [24] 5825 	pop	ar2
      002358 D0 03            [24] 5826 	pop	ar3
      00235A D0 04            [24] 5827 	pop	ar4
      00235C 70 03            [24] 5828 	jnz	00157$
      00235E 02 23 70         [24] 5829 	ljmp	00105$
      002361                       5830 00157$:
                           001A25  5831 	C$queue.c$2331$6_0$380 ==.
                                   5832 ;	queue.c:2331: vTaskMissedYield();
      002361 C0 04            [24] 5833 	push	ar4
      002363 C0 03            [24] 5834 	push	ar3
      002365 C0 02            [24] 5835 	push	ar2
      002367 12 4F AF         [24] 5836 	lcall	_vTaskMissedYield
      00236A D0 02            [24] 5837 	pop	ar2
      00236C D0 03            [24] 5838 	pop	ar3
      00236E D0 04            [24] 5839 	pop	ar4
                           001A34  5840 	C$queue.c$2340$4_0$378 ==.
                                   5841 ;	queue.c:2340: break;
      002370                       5842 00105$:
                           001A34  5843 	C$queue.c$2345$3_0$377 ==.
                                   5844 ;	queue.c:2345: --cTxLock;
      002370 E5 0D            [12] 5845 	mov	a,_bp
      002372 24 07            [12] 5846 	add	a,#0x07
      002374 F8               [12] 5847 	mov	r0,a
      002375 16               [12] 5848 	dec	@r0
      002376 02 23 0B         [24] 5849 	ljmp	00106$
      002379                       5850 00108$:
                           001A3D  5851 	C$queue.c$2348$2_0$376 ==.
                                   5852 ;	queue.c:2348: pxQueue->cTxLock = queueUNLOCKED;
      002379 8A 82            [24] 5853 	mov	dpl,r2
      00237B 8B 83            [24] 5854 	mov	dph,r3
      00237D 8C F0            [24] 5855 	mov	b,r4
      00237F 74 FF            [12] 5856 	mov	a,#0xff
      002381 12 79 22         [24] 5857 	lcall	__gptrput
                           001A48  5858 	C$queue.c$2350$1_0$375 ==.
                                   5859 ;	queue.c:2350: taskEXIT_CRITICAL();
      002384 D0 E0            [24] 5860 	pop ACC 
      002386 53 E0 80         [24] 5861 	anl	_ACC,#0x80
      002389 E5 E0            [12] 5862 	mov	a,_ACC
      00238B 42 A8            [12] 5863 	orl	_IE,a
      00238D D0 E0            [24] 5864 	pop ACC 
                           001A53  5865 	C$queue.c$2353$1_0$375 ==.
                                   5866 ;	queue.c:2353: taskENTER_CRITICAL();
      00238F C0 E0            [24] 5867 	push ACC 
      002391 C0 A8            [24] 5868 	push IE 
                                   5869 ;	assignBit
      002393 C2 AF            [12] 5870 	clr	_EA
                           001A59  5871 	C$queue.c$2355$2_0$383 ==.
                                   5872 ;	queue.c:2355: int8_t cRxLock = pxQueue->cRxLock;
      002395 A8 0D            [24] 5873 	mov	r0,_bp
      002397 08               [12] 5874 	inc	r0
      002398 74 27            [12] 5875 	mov	a,#0x27
      00239A 26               [12] 5876 	add	a,@r0
      00239B FD               [12] 5877 	mov	r5,a
      00239C 74 00            [12] 5878 	mov	a,#0x00
      00239E 08               [12] 5879 	inc	r0
      00239F 36               [12] 5880 	addc	a,@r0
      0023A0 FE               [12] 5881 	mov	r6,a
      0023A1 08               [12] 5882 	inc	r0
      0023A2 86 07            [24] 5883 	mov	ar7,@r0
      0023A4 8D 82            [24] 5884 	mov	dpl,r5
      0023A6 8E 83            [24] 5885 	mov	dph,r6
      0023A8 8F F0            [24] 5886 	mov	b,r7
      0023AA 12 7C 4D         [24] 5887 	lcall	__gptrget
      0023AD FC               [12] 5888 	mov	r4,a
                           001A72  5889 	C$queue.c$2357$3_0$384 ==.
                                   5890 ;	queue.c:2357: while( cRxLock > queueLOCKED_UNMODIFIED )
      0023AE A8 0D            [24] 5891 	mov	r0,_bp
      0023B0 08               [12] 5892 	inc	r0
      0023B1 E5 0D            [12] 5893 	mov	a,_bp
      0023B3 24 04            [12] 5894 	add	a,#0x04
      0023B5 F9               [12] 5895 	mov	r1,a
      0023B6 74 0C            [12] 5896 	mov	a,#0x0c
      0023B8 26               [12] 5897 	add	a,@r0
      0023B9 F7               [12] 5898 	mov	@r1,a
      0023BA 74 00            [12] 5899 	mov	a,#0x00
      0023BC 08               [12] 5900 	inc	r0
      0023BD 36               [12] 5901 	addc	a,@r0
      0023BE 09               [12] 5902 	inc	r1
      0023BF F7               [12] 5903 	mov	@r1,a
      0023C0 08               [12] 5904 	inc	r0
      0023C1 E6               [12] 5905 	mov	a,@r0
      0023C2 09               [12] 5906 	inc	r1
      0023C3 F7               [12] 5907 	mov	@r1,a
      0023C4                       5908 00114$:
      0023C4 C3               [12] 5909 	clr	c
      0023C5 74 00            [12] 5910 	mov	a,#0x00
      0023C7 64 80            [12] 5911 	xrl	a,#0x80
      0023C9 8C F0            [24] 5912 	mov	b,r4
      0023CB 63 F0 80         [24] 5913 	xrl	b,#0x80
      0023CE 95 F0            [12] 5914 	subb	a,b
      0023D0 40 03            [24] 5915 	jc	00158$
      0023D2 02 24 3C         [24] 5916 	ljmp	00116$
      0023D5                       5917 00158$:
                           001A99  5918 	C$queue.c$2359$3_0$384 ==.
                                   5919 ;	queue.c:2359: if( listLIST_IS_EMPTY( &( pxQueue->xTasksWaitingToSend ) ) == pdFALSE )
      0023D5 E5 0D            [12] 5920 	mov	a,_bp
      0023D7 24 04            [12] 5921 	add	a,#0x04
      0023D9 F8               [12] 5922 	mov	r0,a
      0023DA 86 82            [24] 5923 	mov	dpl,@r0
      0023DC 08               [12] 5924 	inc	r0
      0023DD 86 83            [24] 5925 	mov	dph,@r0
      0023DF 08               [12] 5926 	inc	r0
      0023E0 86 F0            [24] 5927 	mov	b,@r0
      0023E2 12 7C 4D         [24] 5928 	lcall	__gptrget
      0023E5 70 03            [24] 5929 	jnz	00159$
      0023E7 02 24 3C         [24] 5930 	ljmp	00116$
      0023EA                       5931 00159$:
                           001AAE  5932 	C$queue.c$2361$1_0$375 ==.
                                   5933 ;	queue.c:2361: if( xTaskRemoveFromEventList( &( pxQueue->xTasksWaitingToSend ) ) != pdFALSE )
      0023EA C0 05            [24] 5934 	push	ar5
      0023EC C0 06            [24] 5935 	push	ar6
      0023EE C0 07            [24] 5936 	push	ar7
      0023F0 A8 0D            [24] 5937 	mov	r0,_bp
      0023F2 08               [12] 5938 	inc	r0
      0023F3 74 0C            [12] 5939 	mov	a,#0x0c
      0023F5 26               [12] 5940 	add	a,@r0
      0023F6 FA               [12] 5941 	mov	r2,a
      0023F7 74 00            [12] 5942 	mov	a,#0x00
      0023F9 08               [12] 5943 	inc	r0
      0023FA 36               [12] 5944 	addc	a,@r0
      0023FB FB               [12] 5945 	mov	r3,a
      0023FC 08               [12] 5946 	inc	r0
      0023FD 86 07            [24] 5947 	mov	ar7,@r0
      0023FF 8A 82            [24] 5948 	mov	dpl,r2
      002401 8B 83            [24] 5949 	mov	dph,r3
      002403 8F F0            [24] 5950 	mov	b,r7
      002405 C0 07            [24] 5951 	push	ar7
      002407 C0 06            [24] 5952 	push	ar6
      002409 C0 05            [24] 5953 	push	ar5
      00240B C0 04            [24] 5954 	push	ar4
      00240D 12 40 62         [24] 5955 	lcall	_xTaskRemoveFromEventList
      002410 E5 82            [12] 5956 	mov	a,dpl
      002412 D0 04            [24] 5957 	pop	ar4
      002414 D0 05            [24] 5958 	pop	ar5
      002416 D0 06            [24] 5959 	pop	ar6
      002418 D0 07            [24] 5960 	pop	ar7
      00241A D0 07            [24] 5961 	pop	ar7
      00241C D0 06            [24] 5962 	pop	ar6
      00241E D0 05            [24] 5963 	pop	ar5
      002420 70 03            [24] 5964 	jnz	00160$
      002422 02 24 38         [24] 5965 	ljmp	00110$
      002425                       5966 00160$:
                           001AE9  5967 	C$queue.c$2363$5_0$386 ==.
                                   5968 ;	queue.c:2363: vTaskMissedYield();
      002425 C0 07            [24] 5969 	push	ar7
      002427 C0 06            [24] 5970 	push	ar6
      002429 C0 05            [24] 5971 	push	ar5
      00242B C0 04            [24] 5972 	push	ar4
      00242D 12 4F AF         [24] 5973 	lcall	_vTaskMissedYield
      002430 D0 04            [24] 5974 	pop	ar4
      002432 D0 05            [24] 5975 	pop	ar5
      002434 D0 06            [24] 5976 	pop	ar6
      002436 D0 07            [24] 5977 	pop	ar7
      002438                       5978 00110$:
                           001AFC  5979 	C$queue.c$2370$4_0$385 ==.
                                   5980 ;	queue.c:2370: --cRxLock;
      002438 1C               [12] 5981 	dec	r4
      002439 02 23 C4         [24] 5982 	ljmp	00114$
                           001B00  5983 	C$queue.c$2374$2_0$383 ==.
                                   5984 ;	queue.c:2374: break;
      00243C                       5985 00116$:
                           001B00  5986 	C$queue.c$2378$2_0$383 ==.
                                   5987 ;	queue.c:2378: pxQueue->cRxLock = queueUNLOCKED;
      00243C 8D 82            [24] 5988 	mov	dpl,r5
      00243E 8E 83            [24] 5989 	mov	dph,r6
      002440 8F F0            [24] 5990 	mov	b,r7
      002442 74 FF            [12] 5991 	mov	a,#0xff
      002444 12 79 22         [24] 5992 	lcall	__gptrput
                           001B0B  5993 	C$queue.c$2380$1_0$375 ==.
                                   5994 ;	queue.c:2380: taskEXIT_CRITICAL();
      002447 D0 E0            [24] 5995 	pop ACC 
      002449 53 E0 80         [24] 5996 	anl	_ACC,#0x80
      00244C E5 E0            [12] 5997 	mov	a,_ACC
      00244E 42 A8            [12] 5998 	orl	_IE,a
      002450 D0 E0            [24] 5999 	pop ACC 
      002452                       6000 00117$:
                           001B16  6001 	C$queue.c$2381$1_0$375 ==.
                                   6002 ;	queue.c:2381: }
      002452 85 0D 81         [24] 6003 	mov	sp,_bp
      002455 D0 0D            [24] 6004 	pop	_bp
                           001B1B  6005 	C$queue.c$2381$1_0$375 ==.
                           001B1B  6006 	XFqueue$prvUnlockQueue$0$0 ==.
      002457 22               [24] 6007 	ret
                                   6008 ;------------------------------------------------------------
                                   6009 ;Allocation info for local variables in function 'prvIsQueueEmpty'
                                   6010 ;------------------------------------------------------------
                                   6011 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   6012 ;xReturn                   Allocated to registers r7 
                                   6013 ;------------------------------------------------------------
                           001B1C  6014 	Fqueue$prvIsQueueEmpty$0$0 ==.
                           001B1C  6015 	C$queue.c$2384$1_0$390 ==.
                                   6016 ;	queue.c:2384: static BaseType_t prvIsQueueEmpty( const Queue_t * pxQueue )
                                   6017 ;	-----------------------------------------
                                   6018 ;	 function prvIsQueueEmpty
                                   6019 ;	-----------------------------------------
      002458                       6020 _prvIsQueueEmpty:
      002458 AD 82            [24] 6021 	mov	r5,dpl
      00245A AE 83            [24] 6022 	mov	r6,dph
      00245C AF F0            [24] 6023 	mov	r7,b
                           001B22  6024 	C$queue.c$2388$1_0$390 ==.
                                   6025 ;	queue.c:2388: taskENTER_CRITICAL();
      00245E C0 E0            [24] 6026 	push ACC 
      002460 C0 A8            [24] 6027 	push IE 
                                   6028 ;	assignBit
      002462 C2 AF            [12] 6029 	clr	_EA
                           001B28  6030 	C$queue.c$2390$2_0$391 ==.
                                   6031 ;	queue.c:2390: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
      002464 74 24            [12] 6032 	mov	a,#0x24
      002466 2D               [12] 6033 	add	a,r5
      002467 FD               [12] 6034 	mov	r5,a
      002468 74 00            [12] 6035 	mov	a,#0x00
      00246A 3E               [12] 6036 	addc	a,r6
      00246B FE               [12] 6037 	mov	r6,a
      00246C 8D 82            [24] 6038 	mov	dpl,r5
      00246E 8E 83            [24] 6039 	mov	dph,r6
      002470 8F F0            [24] 6040 	mov	b,r7
      002472 12 7C 4D         [24] 6041 	lcall	__gptrget
      002475 60 03            [24] 6042 	jz	00110$
      002477 02 24 7F         [24] 6043 	ljmp	00102$
      00247A                       6044 00110$:
                           001B3E  6045 	C$queue.c$2392$3_0$392 ==.
                                   6046 ;	queue.c:2392: xReturn = pdTRUE;
      00247A 7F 01            [12] 6047 	mov	r7,#0x01
      00247C 02 24 81         [24] 6048 	ljmp	00103$
      00247F                       6049 00102$:
                           001B43  6050 	C$queue.c$2396$3_0$393 ==.
                                   6051 ;	queue.c:2396: xReturn = pdFALSE;
      00247F 7F 00            [12] 6052 	mov	r7,#0x00
      002481                       6053 00103$:
                           001B45  6054 	C$queue.c$2399$1_0$390 ==.
                                   6055 ;	queue.c:2399: taskEXIT_CRITICAL();
      002481 D0 E0            [24] 6056 	pop ACC 
      002483 53 E0 80         [24] 6057 	anl	_ACC,#0x80
      002486 E5 E0            [12] 6058 	mov	a,_ACC
      002488 42 A8            [12] 6059 	orl	_IE,a
      00248A D0 E0            [24] 6060 	pop ACC 
                           001B50  6061 	C$queue.c$2401$1_0$390 ==.
                                   6062 ;	queue.c:2401: return xReturn;
      00248C 8F 82            [24] 6063 	mov	dpl,r7
      00248E                       6064 00104$:
                           001B52  6065 	C$queue.c$2402$1_0$390 ==.
                                   6066 ;	queue.c:2402: }
                           001B52  6067 	C$queue.c$2402$1_0$390 ==.
                           001B52  6068 	XFqueue$prvIsQueueEmpty$0$0 ==.
      00248E 22               [24] 6069 	ret
                                   6070 ;------------------------------------------------------------
                                   6071 ;Allocation info for local variables in function 'xQueueIsQueueEmptyFromISR'
                                   6072 ;------------------------------------------------------------
                                   6073 ;xQueue                    Allocated to registers r5 r6 r7 
                                   6074 ;xReturn                   Allocated to registers r7 
                                   6075 ;pxQueue                   Allocated to registers 
                                   6076 ;------------------------------------------------------------
                           001B53  6077 	G$xQueueIsQueueEmptyFromISR$0$0 ==.
                           001B53  6078 	C$queue.c$2405$1_0$395 ==.
                                   6079 ;	queue.c:2405: BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue )
                                   6080 ;	-----------------------------------------
                                   6081 ;	 function xQueueIsQueueEmptyFromISR
                                   6082 ;	-----------------------------------------
      00248F                       6083 _xQueueIsQueueEmptyFromISR:
      00248F AD 82            [24] 6084 	mov	r5,dpl
      002491 AE 83            [24] 6085 	mov	r6,dph
      002493 AF F0            [24] 6086 	mov	r7,b
                           001B59  6087 	C$queue.c$2412$1_0$395 ==.
                                   6088 ;	queue.c:2412: if( pxQueue->uxMessagesWaiting == ( UBaseType_t ) 0 )
      002495 74 24            [12] 6089 	mov	a,#0x24
      002497 2D               [12] 6090 	add	a,r5
      002498 FD               [12] 6091 	mov	r5,a
      002499 74 00            [12] 6092 	mov	a,#0x00
      00249B 3E               [12] 6093 	addc	a,r6
      00249C FE               [12] 6094 	mov	r6,a
      00249D 8D 82            [24] 6095 	mov	dpl,r5
      00249F 8E 83            [24] 6096 	mov	dph,r6
      0024A1 8F F0            [24] 6097 	mov	b,r7
      0024A3 12 7C 4D         [24] 6098 	lcall	__gptrget
      0024A6 60 03            [24] 6099 	jz	00110$
      0024A8 02 24 B0         [24] 6100 	ljmp	00102$
      0024AB                       6101 00110$:
                           001B6F  6102 	C$queue.c$2414$2_0$396 ==.
                                   6103 ;	queue.c:2414: xReturn = pdTRUE;
      0024AB 7F 01            [12] 6104 	mov	r7,#0x01
      0024AD 02 24 B2         [24] 6105 	ljmp	00103$
      0024B0                       6106 00102$:
                           001B74  6107 	C$queue.c$2418$2_0$397 ==.
                                   6108 ;	queue.c:2418: xReturn = pdFALSE;
      0024B0 7F 00            [12] 6109 	mov	r7,#0x00
      0024B2                       6110 00103$:
                           001B76  6111 	C$queue.c$2421$1_0$395 ==.
                                   6112 ;	queue.c:2421: return xReturn;
      0024B2 8F 82            [24] 6113 	mov	dpl,r7
      0024B4                       6114 00104$:
                           001B78  6115 	C$queue.c$2422$1_0$395 ==.
                                   6116 ;	queue.c:2422: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
                           001B78  6117 	C$queue.c$2422$1_0$395 ==.
                           001B78  6118 	XG$xQueueIsQueueEmptyFromISR$0$0 ==.
      0024B4 22               [24] 6119 	ret
                                   6120 ;------------------------------------------------------------
                                   6121 ;Allocation info for local variables in function 'prvIsQueueFull'
                                   6122 ;------------------------------------------------------------
                                   6123 ;pxQueue                   Allocated to registers r5 r6 r7 
                                   6124 ;xReturn                   Allocated to registers r7 
                                   6125 ;------------------------------------------------------------
                           001B79  6126 	Fqueue$prvIsQueueFull$0$0 ==.
                           001B79  6127 	C$queue.c$2425$1_0$399 ==.
                                   6128 ;	queue.c:2425: static BaseType_t prvIsQueueFull( const Queue_t * pxQueue )
                                   6129 ;	-----------------------------------------
                                   6130 ;	 function prvIsQueueFull
                                   6131 ;	-----------------------------------------
      0024B5                       6132 _prvIsQueueFull:
      0024B5 AD 82            [24] 6133 	mov	r5,dpl
      0024B7 AE 83            [24] 6134 	mov	r6,dph
      0024B9 AF F0            [24] 6135 	mov	r7,b
                           001B7F  6136 	C$queue.c$2429$1_0$399 ==.
                                   6137 ;	queue.c:2429: taskENTER_CRITICAL();
      0024BB C0 E0            [24] 6138 	push ACC 
      0024BD C0 A8            [24] 6139 	push IE 
                                   6140 ;	assignBit
      0024BF C2 AF            [12] 6141 	clr	_EA
                           001B85  6142 	C$queue.c$2431$2_0$400 ==.
                                   6143 ;	queue.c:2431: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
      0024C1 74 24            [12] 6144 	mov	a,#0x24
      0024C3 2D               [12] 6145 	add	a,r5
      0024C4 FA               [12] 6146 	mov	r2,a
      0024C5 74 00            [12] 6147 	mov	a,#0x00
      0024C7 3E               [12] 6148 	addc	a,r6
      0024C8 FB               [12] 6149 	mov	r3,a
      0024C9 8F 04            [24] 6150 	mov	ar4,r7
      0024CB 8A 82            [24] 6151 	mov	dpl,r2
      0024CD 8B 83            [24] 6152 	mov	dph,r3
      0024CF 8C F0            [24] 6153 	mov	b,r4
      0024D1 12 7C 4D         [24] 6154 	lcall	__gptrget
      0024D4 FA               [12] 6155 	mov	r2,a
      0024D5 74 25            [12] 6156 	mov	a,#0x25
      0024D7 2D               [12] 6157 	add	a,r5
      0024D8 FD               [12] 6158 	mov	r5,a
      0024D9 74 00            [12] 6159 	mov	a,#0x00
      0024DB 3E               [12] 6160 	addc	a,r6
      0024DC FE               [12] 6161 	mov	r6,a
      0024DD 8D 82            [24] 6162 	mov	dpl,r5
      0024DF 8E 83            [24] 6163 	mov	dph,r6
      0024E1 8F F0            [24] 6164 	mov	b,r7
      0024E3 12 7C 4D         [24] 6165 	lcall	__gptrget
      0024E6 FD               [12] 6166 	mov	r5,a
      0024E7 EA               [12] 6167 	mov	a,r2
      0024E8 B5 05 02         [24] 6168 	cjne	a,ar5,00110$
      0024EB 80 03            [24] 6169 	sjmp	00111$
      0024ED                       6170 00110$:
      0024ED 02 24 F5         [24] 6171 	ljmp	00102$
      0024F0                       6172 00111$:
                           001BB4  6173 	C$queue.c$2433$3_0$401 ==.
                                   6174 ;	queue.c:2433: xReturn = pdTRUE;
      0024F0 7F 01            [12] 6175 	mov	r7,#0x01
      0024F2 02 24 F7         [24] 6176 	ljmp	00103$
      0024F5                       6177 00102$:
                           001BB9  6178 	C$queue.c$2437$3_0$402 ==.
                                   6179 ;	queue.c:2437: xReturn = pdFALSE;
      0024F5 7F 00            [12] 6180 	mov	r7,#0x00
      0024F7                       6181 00103$:
                           001BBB  6182 	C$queue.c$2440$1_0$399 ==.
                                   6183 ;	queue.c:2440: taskEXIT_CRITICAL();
      0024F7 D0 E0            [24] 6184 	pop ACC 
      0024F9 53 E0 80         [24] 6185 	anl	_ACC,#0x80
      0024FC E5 E0            [12] 6186 	mov	a,_ACC
      0024FE 42 A8            [12] 6187 	orl	_IE,a
      002500 D0 E0            [24] 6188 	pop ACC 
                           001BC6  6189 	C$queue.c$2442$1_0$399 ==.
                                   6190 ;	queue.c:2442: return xReturn;
      002502 8F 82            [24] 6191 	mov	dpl,r7
      002504                       6192 00104$:
                           001BC8  6193 	C$queue.c$2443$1_0$399 ==.
                                   6194 ;	queue.c:2443: }
                           001BC8  6195 	C$queue.c$2443$1_0$399 ==.
                           001BC8  6196 	XFqueue$prvIsQueueFull$0$0 ==.
      002504 22               [24] 6197 	ret
                                   6198 ;------------------------------------------------------------
                                   6199 ;Allocation info for local variables in function 'xQueueIsQueueFullFromISR'
                                   6200 ;------------------------------------------------------------
                                   6201 ;xQueue                    Allocated to registers r5 r6 r7 
                                   6202 ;xReturn                   Allocated to registers r7 
                                   6203 ;pxQueue                   Allocated to registers 
                                   6204 ;------------------------------------------------------------
                           001BC9  6205 	G$xQueueIsQueueFullFromISR$0$0 ==.
                           001BC9  6206 	C$queue.c$2446$1_0$404 ==.
                                   6207 ;	queue.c:2446: BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue )
                                   6208 ;	-----------------------------------------
                                   6209 ;	 function xQueueIsQueueFullFromISR
                                   6210 ;	-----------------------------------------
      002505                       6211 _xQueueIsQueueFullFromISR:
      002505 AD 82            [24] 6212 	mov	r5,dpl
      002507 AE 83            [24] 6213 	mov	r6,dph
      002509 AF F0            [24] 6214 	mov	r7,b
                           001BCF  6215 	C$queue.c$2453$1_0$404 ==.
                                   6216 ;	queue.c:2453: if( pxQueue->uxMessagesWaiting == pxQueue->uxLength )
      00250B 74 24            [12] 6217 	mov	a,#0x24
      00250D 2D               [12] 6218 	add	a,r5
      00250E FA               [12] 6219 	mov	r2,a
      00250F 74 00            [12] 6220 	mov	a,#0x00
      002511 3E               [12] 6221 	addc	a,r6
      002512 FB               [12] 6222 	mov	r3,a
      002513 8F 04            [24] 6223 	mov	ar4,r7
      002515 8A 82            [24] 6224 	mov	dpl,r2
      002517 8B 83            [24] 6225 	mov	dph,r3
      002519 8C F0            [24] 6226 	mov	b,r4
      00251B 12 7C 4D         [24] 6227 	lcall	__gptrget
      00251E FA               [12] 6228 	mov	r2,a
      00251F 74 25            [12] 6229 	mov	a,#0x25
      002521 2D               [12] 6230 	add	a,r5
      002522 FD               [12] 6231 	mov	r5,a
      002523 74 00            [12] 6232 	mov	a,#0x00
      002525 3E               [12] 6233 	addc	a,r6
      002526 FE               [12] 6234 	mov	r6,a
      002527 8D 82            [24] 6235 	mov	dpl,r5
      002529 8E 83            [24] 6236 	mov	dph,r6
      00252B 8F F0            [24] 6237 	mov	b,r7
      00252D 12 7C 4D         [24] 6238 	lcall	__gptrget
      002530 FD               [12] 6239 	mov	r5,a
      002531 EA               [12] 6240 	mov	a,r2
      002532 B5 05 02         [24] 6241 	cjne	a,ar5,00110$
      002535 80 03            [24] 6242 	sjmp	00111$
      002537                       6243 00110$:
      002537 02 25 3F         [24] 6244 	ljmp	00102$
      00253A                       6245 00111$:
                           001BFE  6246 	C$queue.c$2455$2_0$405 ==.
                                   6247 ;	queue.c:2455: xReturn = pdTRUE;
      00253A 7F 01            [12] 6248 	mov	r7,#0x01
      00253C 02 25 41         [24] 6249 	ljmp	00103$
      00253F                       6250 00102$:
                           001C03  6251 	C$queue.c$2459$2_0$406 ==.
                                   6252 ;	queue.c:2459: xReturn = pdFALSE;
      00253F 7F 00            [12] 6253 	mov	r7,#0x00
      002541                       6254 00103$:
                           001C05  6255 	C$queue.c$2462$1_0$404 ==.
                                   6256 ;	queue.c:2462: return xReturn;
      002541 8F 82            [24] 6257 	mov	dpl,r7
      002543                       6258 00104$:
                           001C07  6259 	C$queue.c$2463$1_0$404 ==.
                                   6260 ;	queue.c:2463: } /*lint !e818 xQueue could not be pointer to const because it is a typedef. */
                           001C07  6261 	C$queue.c$2463$1_0$404 ==.
                           001C07  6262 	XG$xQueueIsQueueFullFromISR$0$0 ==.
      002543 22               [24] 6263 	ret
                                   6264 	.area CSEG    (CODE)
                                   6265 	.area CONST   (CODE)
                                   6266 	.area XINIT   (CODE)
                                   6267 	.area CABS    (ABS,CODE)
