                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl __sdcc_external_startup
                                     13 	.globl _xSerialPutChar
                                     14 	.globl _xSerialPortInitMinimal
                                     15 	.globl _vTaskStartScheduler
                                     16 	.globl _vTaskDelay
                                     17 	.globl _vTaskDelete
                                     18 	.globl _xTaskCreate
                                     19 	.globl _SPIF
                                     20 	.globl _WCOL
                                     21 	.globl _MODF
                                     22 	.globl _RXOVRN
                                     23 	.globl _NSSMD1
                                     24 	.globl _NSSMD0
                                     25 	.globl _TXBMT
                                     26 	.globl _SPIEN
                                     27 	.globl _AD0EN
                                     28 	.globl _AD0TM
                                     29 	.globl _AD0INT
                                     30 	.globl _AD0BUSY
                                     31 	.globl _AD0WINT
                                     32 	.globl _AD0CM2
                                     33 	.globl _AD0CM1
                                     34 	.globl _AD0CM0
                                     35 	.globl _CF
                                     36 	.globl _CR
                                     37 	.globl _CCF4
                                     38 	.globl _CCF3
                                     39 	.globl _CCF2
                                     40 	.globl _CCF1
                                     41 	.globl _CCF0
                                     42 	.globl _CY
                                     43 	.globl _AC
                                     44 	.globl _F0
                                     45 	.globl _RS1
                                     46 	.globl _RS0
                                     47 	.globl _OV
                                     48 	.globl _F1
                                     49 	.globl _PARITY
                                     50 	.globl _TF2H
                                     51 	.globl _TF2
                                     52 	.globl _TF2L
                                     53 	.globl _TF2LEN
                                     54 	.globl _T2CE
                                     55 	.globl _T2SPLIT
                                     56 	.globl _TR2
                                     57 	.globl _T2CSS
                                     58 	.globl _T2XCLK
                                     59 	.globl _MASTER
                                     60 	.globl _TXMODE
                                     61 	.globl _STA
                                     62 	.globl _STO
                                     63 	.globl _ACKRQ
                                     64 	.globl _ARBLOST
                                     65 	.globl _ACK
                                     66 	.globl _SI
                                     67 	.globl _PSPI0
                                     68 	.globl _PT2
                                     69 	.globl _PS0
                                     70 	.globl _PS
                                     71 	.globl _PT1
                                     72 	.globl _PX1
                                     73 	.globl _PT0
                                     74 	.globl _PX0
                                     75 	.globl _P3_7
                                     76 	.globl _P3_6
                                     77 	.globl _P3_5
                                     78 	.globl _P3_4
                                     79 	.globl _P3_3
                                     80 	.globl _P3_2
                                     81 	.globl _P3_1
                                     82 	.globl _P3_0
                                     83 	.globl _EA
                                     84 	.globl _ESPI0
                                     85 	.globl _ET2
                                     86 	.globl _ES0
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _P2_7
                                     93 	.globl _P2_6
                                     94 	.globl _P2_5
                                     95 	.globl _P2_4
                                     96 	.globl _P2_3
                                     97 	.globl _P2_2
                                     98 	.globl _P2_1
                                     99 	.globl _P2_0
                                    100 	.globl _S0MODE
                                    101 	.globl _SM0
                                    102 	.globl _MCE0
                                    103 	.globl _SM2
                                    104 	.globl _REN0
                                    105 	.globl _REN
                                    106 	.globl _TB80
                                    107 	.globl _TB8
                                    108 	.globl _RB80
                                    109 	.globl _RB8
                                    110 	.globl _TI0
                                    111 	.globl _TI
                                    112 	.globl _RI0
                                    113 	.globl _RI
                                    114 	.globl _P1_7
                                    115 	.globl _P1_6
                                    116 	.globl _P1_5
                                    117 	.globl _P1_4
                                    118 	.globl _P1_3
                                    119 	.globl _P1_2
                                    120 	.globl _P1_1
                                    121 	.globl _P1_0
                                    122 	.globl _TF1
                                    123 	.globl _TR1
                                    124 	.globl _TF0
                                    125 	.globl _TR0
                                    126 	.globl _IE1
                                    127 	.globl _IT1
                                    128 	.globl _IE0
                                    129 	.globl _IT0
                                    130 	.globl _P0_7
                                    131 	.globl _P0_6
                                    132 	.globl _P0_5
                                    133 	.globl _P0_4
                                    134 	.globl _P0_3
                                    135 	.globl _P0_2
                                    136 	.globl _P0_1
                                    137 	.globl _P0_0
                                    138 	.globl _PCA0CP4
                                    139 	.globl _PCA0CP3
                                    140 	.globl _PCA0CP2
                                    141 	.globl _PCA0CP1
                                    142 	.globl _PCA0CP0
                                    143 	.globl _PCA0
                                    144 	.globl _ADC0LT
                                    145 	.globl _ADC0GT
                                    146 	.globl _ADC0
                                    147 	.globl _SBRL1
                                    148 	.globl _TMR3RL
                                    149 	.globl _TMR3
                                    150 	.globl _TMR2RL
                                    151 	.globl _RCAP2
                                    152 	.globl _TMR2
                                    153 	.globl _TMR1
                                    154 	.globl _TMR0
                                    155 	.globl _VDM0CN
                                    156 	.globl _PCA0CPH4
                                    157 	.globl _PCA0CPL4
                                    158 	.globl _PCA0CPH0
                                    159 	.globl _PCA0CPL0
                                    160 	.globl _PCA0H
                                    161 	.globl _PCA0L
                                    162 	.globl _SPI0CN
                                    163 	.globl _EIP2
                                    164 	.globl _EIP1
                                    165 	.globl _P4MDIN
                                    166 	.globl _P3MDIN
                                    167 	.globl _P3MODE
                                    168 	.globl _P2MDIN
                                    169 	.globl _P2MODE
                                    170 	.globl _P1MDIN
                                    171 	.globl _P1MODE
                                    172 	.globl _P0MDIN
                                    173 	.globl _P0MODE
                                    174 	.globl _B
                                    175 	.globl _RSTSRC
                                    176 	.globl _PCA0CPH3
                                    177 	.globl _PCA0CPL3
                                    178 	.globl _PCA0CPH2
                                    179 	.globl _PCA0CPL2
                                    180 	.globl _PCA0CPH1
                                    181 	.globl _PCA0CPL1
                                    182 	.globl _ADC0CN
                                    183 	.globl _EIE2
                                    184 	.globl _EIE1
                                    185 	.globl _SMOD1
                                    186 	.globl _INT01CF
                                    187 	.globl _IT01CF
                                    188 	.globl _XBR2
                                    189 	.globl _XBR1
                                    190 	.globl _XBR0
                                    191 	.globl _ACC
                                    192 	.globl _P3SKIP
                                    193 	.globl _PCA0CPM4
                                    194 	.globl _PCA0CPM3
                                    195 	.globl _PCA0CPM2
                                    196 	.globl _PCA0CPM1
                                    197 	.globl _PCA0CPM0
                                    198 	.globl _PCA0MD
                                    199 	.globl _PCA0CN
                                    200 	.globl _USB0XCN
                                    201 	.globl _P2SKIP
                                    202 	.globl _P1SKIP
                                    203 	.globl _P0SKIP
                                    204 	.globl _SBUF1
                                    205 	.globl _SCON1
                                    206 	.globl _REF0CN
                                    207 	.globl _PSW
                                    208 	.globl _TMR2H
                                    209 	.globl _TH2
                                    210 	.globl _TMR2L
                                    211 	.globl _TL2
                                    212 	.globl _TMR2RLH
                                    213 	.globl _RCAP2H
                                    214 	.globl _TMR2RLL
                                    215 	.globl _RCAP2L
                                    216 	.globl _REG0CN
                                    217 	.globl _TMR2CN
                                    218 	.globl _T2CON
                                    219 	.globl _P4
                                    220 	.globl _ADC0LTH
                                    221 	.globl _ADC0LTL
                                    222 	.globl _ADC0GTH
                                    223 	.globl _ADC0GTL
                                    224 	.globl _SMB0DAT
                                    225 	.globl _SMB0CF
                                    226 	.globl _SMB0CN
                                    227 	.globl _ADC0H
                                    228 	.globl _ADC0L
                                    229 	.globl _ADC0CF
                                    230 	.globl _AMX0P
                                    231 	.globl _AMX0N
                                    232 	.globl _CLKMUL
                                    233 	.globl _IP
                                    234 	.globl _FLKEY
                                    235 	.globl _FLSCL
                                    236 	.globl _SBRLH1
                                    237 	.globl _SBRLL1
                                    238 	.globl _OSCICL
                                    239 	.globl _OSCICN
                                    240 	.globl _OSCXCN
                                    241 	.globl _P3
                                    242 	.globl _PFE0CN
                                    243 	.globl _P4MDOUT
                                    244 	.globl _SBCON1
                                    245 	.globl __XPAGE
                                    246 	.globl _EMI0CN
                                    247 	.globl _CLKSEL
                                    248 	.globl _IE
                                    249 	.globl _P3MDOUT
                                    250 	.globl _P2MDOUT
                                    251 	.globl _P1MDOUT
                                    252 	.globl _P0MDOUT
                                    253 	.globl _SPI0DAT
                                    254 	.globl _SPI0CKR
                                    255 	.globl _SPI0CFG
                                    256 	.globl _P2
                                    257 	.globl _CPT0MX
                                    258 	.globl _CPT1MX
                                    259 	.globl _CPT0MD
                                    260 	.globl _CPT1MD
                                    261 	.globl _CPT0CN
                                    262 	.globl _CPT1CN
                                    263 	.globl _SBUF0
                                    264 	.globl _SBUF
                                    265 	.globl _SCON0
                                    266 	.globl _SCON
                                    267 	.globl _USB0DAT
                                    268 	.globl _USB0ADR
                                    269 	.globl _TMR3H
                                    270 	.globl _TMR3L
                                    271 	.globl _TMR3RLH
                                    272 	.globl _TMR3RLL
                                    273 	.globl _TMR3CN
                                    274 	.globl _P1
                                    275 	.globl _PSCTL
                                    276 	.globl _CKCON
                                    277 	.globl _TH1
                                    278 	.globl _TH0
                                    279 	.globl _TL1
                                    280 	.globl _TL0
                                    281 	.globl _TMOD
                                    282 	.globl _TCON
                                    283 	.globl _PCON
                                    284 	.globl _OSCLCN
                                    285 	.globl _EMI0CF
                                    286 	.globl _EMI0TC
                                    287 	.globl _DPH
                                    288 	.globl _DPL
                                    289 	.globl _SP
                                    290 	.globl _P0
                                    291 	.globl _LED3Task_Handler
                                    292 	.globl _LED2Task_Handler
                                    293 	.globl _LED1Task_Handler
                                    294 	.globl _LED0Task_Handler
                                    295 	.globl _StartTask_Handler
                                    296 	.globl _start_task
                                    297 	.globl _led0_task
                                    298 	.globl _led1_task
                                    299 	.globl _led2_task
                                    300 	.globl _led3_task
                                    301 ;--------------------------------------------------------
                                    302 ; special function registers
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 G$P0$0_0$0 == 0x0080
                           000080   307 _P0	=	0x0080
                           000081   308 G$SP$0_0$0 == 0x0081
                           000081   309 _SP	=	0x0081
                           000082   310 G$DPL$0_0$0 == 0x0082
                           000082   311 _DPL	=	0x0082
                           000083   312 G$DPH$0_0$0 == 0x0083
                           000083   313 _DPH	=	0x0083
                           000084   314 G$EMI0TC$0_0$0 == 0x0084
                           000084   315 _EMI0TC	=	0x0084
                           000085   316 G$EMI0CF$0_0$0 == 0x0085
                           000085   317 _EMI0CF	=	0x0085
                           000086   318 G$OSCLCN$0_0$0 == 0x0086
                           000086   319 _OSCLCN	=	0x0086
                           000087   320 G$PCON$0_0$0 == 0x0087
                           000087   321 _PCON	=	0x0087
                           000088   322 G$TCON$0_0$0 == 0x0088
                           000088   323 _TCON	=	0x0088
                           000089   324 G$TMOD$0_0$0 == 0x0089
                           000089   325 _TMOD	=	0x0089
                           00008A   326 G$TL0$0_0$0 == 0x008a
                           00008A   327 _TL0	=	0x008a
                           00008B   328 G$TL1$0_0$0 == 0x008b
                           00008B   329 _TL1	=	0x008b
                           00008C   330 G$TH0$0_0$0 == 0x008c
                           00008C   331 _TH0	=	0x008c
                           00008D   332 G$TH1$0_0$0 == 0x008d
                           00008D   333 _TH1	=	0x008d
                           00008E   334 G$CKCON$0_0$0 == 0x008e
                           00008E   335 _CKCON	=	0x008e
                           00008F   336 G$PSCTL$0_0$0 == 0x008f
                           00008F   337 _PSCTL	=	0x008f
                           000090   338 G$P1$0_0$0 == 0x0090
                           000090   339 _P1	=	0x0090
                           000091   340 G$TMR3CN$0_0$0 == 0x0091
                           000091   341 _TMR3CN	=	0x0091
                           000092   342 G$TMR3RLL$0_0$0 == 0x0092
                           000092   343 _TMR3RLL	=	0x0092
                           000093   344 G$TMR3RLH$0_0$0 == 0x0093
                           000093   345 _TMR3RLH	=	0x0093
                           000094   346 G$TMR3L$0_0$0 == 0x0094
                           000094   347 _TMR3L	=	0x0094
                           000095   348 G$TMR3H$0_0$0 == 0x0095
                           000095   349 _TMR3H	=	0x0095
                           000096   350 G$USB0ADR$0_0$0 == 0x0096
                           000096   351 _USB0ADR	=	0x0096
                           000097   352 G$USB0DAT$0_0$0 == 0x0097
                           000097   353 _USB0DAT	=	0x0097
                           000098   354 G$SCON$0_0$0 == 0x0098
                           000098   355 _SCON	=	0x0098
                           000098   356 G$SCON0$0_0$0 == 0x0098
                           000098   357 _SCON0	=	0x0098
                           000099   358 G$SBUF$0_0$0 == 0x0099
                           000099   359 _SBUF	=	0x0099
                           000099   360 G$SBUF0$0_0$0 == 0x0099
                           000099   361 _SBUF0	=	0x0099
                           00009A   362 G$CPT1CN$0_0$0 == 0x009a
                           00009A   363 _CPT1CN	=	0x009a
                           00009B   364 G$CPT0CN$0_0$0 == 0x009b
                           00009B   365 _CPT0CN	=	0x009b
                           00009C   366 G$CPT1MD$0_0$0 == 0x009c
                           00009C   367 _CPT1MD	=	0x009c
                           00009D   368 G$CPT0MD$0_0$0 == 0x009d
                           00009D   369 _CPT0MD	=	0x009d
                           00009E   370 G$CPT1MX$0_0$0 == 0x009e
                           00009E   371 _CPT1MX	=	0x009e
                           00009F   372 G$CPT0MX$0_0$0 == 0x009f
                           00009F   373 _CPT0MX	=	0x009f
                           0000A0   374 G$P2$0_0$0 == 0x00a0
                           0000A0   375 _P2	=	0x00a0
                           0000A1   376 G$SPI0CFG$0_0$0 == 0x00a1
                           0000A1   377 _SPI0CFG	=	0x00a1
                           0000A2   378 G$SPI0CKR$0_0$0 == 0x00a2
                           0000A2   379 _SPI0CKR	=	0x00a2
                           0000A3   380 G$SPI0DAT$0_0$0 == 0x00a3
                           0000A3   381 _SPI0DAT	=	0x00a3
                           0000A4   382 G$P0MDOUT$0_0$0 == 0x00a4
                           0000A4   383 _P0MDOUT	=	0x00a4
                           0000A5   384 G$P1MDOUT$0_0$0 == 0x00a5
                           0000A5   385 _P1MDOUT	=	0x00a5
                           0000A6   386 G$P2MDOUT$0_0$0 == 0x00a6
                           0000A6   387 _P2MDOUT	=	0x00a6
                           0000A7   388 G$P3MDOUT$0_0$0 == 0x00a7
                           0000A7   389 _P3MDOUT	=	0x00a7
                           0000A8   390 G$IE$0_0$0 == 0x00a8
                           0000A8   391 _IE	=	0x00a8
                           0000A9   392 G$CLKSEL$0_0$0 == 0x00a9
                           0000A9   393 _CLKSEL	=	0x00a9
                           0000AA   394 G$EMI0CN$0_0$0 == 0x00aa
                           0000AA   395 _EMI0CN	=	0x00aa
                           0000AA   396 G$_XPAGE$0_0$0 == 0x00aa
                           0000AA   397 __XPAGE	=	0x00aa
                           0000AC   398 G$SBCON1$0_0$0 == 0x00ac
                           0000AC   399 _SBCON1	=	0x00ac
                           0000AE   400 G$P4MDOUT$0_0$0 == 0x00ae
                           0000AE   401 _P4MDOUT	=	0x00ae
                           0000AF   402 G$PFE0CN$0_0$0 == 0x00af
                           0000AF   403 _PFE0CN	=	0x00af
                           0000B0   404 G$P3$0_0$0 == 0x00b0
                           0000B0   405 _P3	=	0x00b0
                           0000B1   406 G$OSCXCN$0_0$0 == 0x00b1
                           0000B1   407 _OSCXCN	=	0x00b1
                           0000B2   408 G$OSCICN$0_0$0 == 0x00b2
                           0000B2   409 _OSCICN	=	0x00b2
                           0000B3   410 G$OSCICL$0_0$0 == 0x00b3
                           0000B3   411 _OSCICL	=	0x00b3
                           0000B4   412 G$SBRLL1$0_0$0 == 0x00b4
                           0000B4   413 _SBRLL1	=	0x00b4
                           0000B5   414 G$SBRLH1$0_0$0 == 0x00b5
                           0000B5   415 _SBRLH1	=	0x00b5
                           0000B6   416 G$FLSCL$0_0$0 == 0x00b6
                           0000B6   417 _FLSCL	=	0x00b6
                           0000B7   418 G$FLKEY$0_0$0 == 0x00b7
                           0000B7   419 _FLKEY	=	0x00b7
                           0000B8   420 G$IP$0_0$0 == 0x00b8
                           0000B8   421 _IP	=	0x00b8
                           0000B9   422 G$CLKMUL$0_0$0 == 0x00b9
                           0000B9   423 _CLKMUL	=	0x00b9
                           0000BA   424 G$AMX0N$0_0$0 == 0x00ba
                           0000BA   425 _AMX0N	=	0x00ba
                           0000BB   426 G$AMX0P$0_0$0 == 0x00bb
                           0000BB   427 _AMX0P	=	0x00bb
                           0000BC   428 G$ADC0CF$0_0$0 == 0x00bc
                           0000BC   429 _ADC0CF	=	0x00bc
                           0000BD   430 G$ADC0L$0_0$0 == 0x00bd
                           0000BD   431 _ADC0L	=	0x00bd
                           0000BE   432 G$ADC0H$0_0$0 == 0x00be
                           0000BE   433 _ADC0H	=	0x00be
                           0000C0   434 G$SMB0CN$0_0$0 == 0x00c0
                           0000C0   435 _SMB0CN	=	0x00c0
                           0000C1   436 G$SMB0CF$0_0$0 == 0x00c1
                           0000C1   437 _SMB0CF	=	0x00c1
                           0000C2   438 G$SMB0DAT$0_0$0 == 0x00c2
                           0000C2   439 _SMB0DAT	=	0x00c2
                           0000C3   440 G$ADC0GTL$0_0$0 == 0x00c3
                           0000C3   441 _ADC0GTL	=	0x00c3
                           0000C4   442 G$ADC0GTH$0_0$0 == 0x00c4
                           0000C4   443 _ADC0GTH	=	0x00c4
                           0000C5   444 G$ADC0LTL$0_0$0 == 0x00c5
                           0000C5   445 _ADC0LTL	=	0x00c5
                           0000C6   446 G$ADC0LTH$0_0$0 == 0x00c6
                           0000C6   447 _ADC0LTH	=	0x00c6
                           0000C7   448 G$P4$0_0$0 == 0x00c7
                           0000C7   449 _P4	=	0x00c7
                           0000C8   450 G$T2CON$0_0$0 == 0x00c8
                           0000C8   451 _T2CON	=	0x00c8
                           0000C8   452 G$TMR2CN$0_0$0 == 0x00c8
                           0000C8   453 _TMR2CN	=	0x00c8
                           0000C9   454 G$REG0CN$0_0$0 == 0x00c9
                           0000C9   455 _REG0CN	=	0x00c9
                           0000CA   456 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   457 _RCAP2L	=	0x00ca
                           0000CA   458 G$TMR2RLL$0_0$0 == 0x00ca
                           0000CA   459 _TMR2RLL	=	0x00ca
                           0000CB   460 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   461 _RCAP2H	=	0x00cb
                           0000CB   462 G$TMR2RLH$0_0$0 == 0x00cb
                           0000CB   463 _TMR2RLH	=	0x00cb
                           0000CC   464 G$TL2$0_0$0 == 0x00cc
                           0000CC   465 _TL2	=	0x00cc
                           0000CC   466 G$TMR2L$0_0$0 == 0x00cc
                           0000CC   467 _TMR2L	=	0x00cc
                           0000CD   468 G$TH2$0_0$0 == 0x00cd
                           0000CD   469 _TH2	=	0x00cd
                           0000CD   470 G$TMR2H$0_0$0 == 0x00cd
                           0000CD   471 _TMR2H	=	0x00cd
                           0000D0   472 G$PSW$0_0$0 == 0x00d0
                           0000D0   473 _PSW	=	0x00d0
                           0000D1   474 G$REF0CN$0_0$0 == 0x00d1
                           0000D1   475 _REF0CN	=	0x00d1
                           0000D2   476 G$SCON1$0_0$0 == 0x00d2
                           0000D2   477 _SCON1	=	0x00d2
                           0000D3   478 G$SBUF1$0_0$0 == 0x00d3
                           0000D3   479 _SBUF1	=	0x00d3
                           0000D4   480 G$P0SKIP$0_0$0 == 0x00d4
                           0000D4   481 _P0SKIP	=	0x00d4
                           0000D5   482 G$P1SKIP$0_0$0 == 0x00d5
                           0000D5   483 _P1SKIP	=	0x00d5
                           0000D6   484 G$P2SKIP$0_0$0 == 0x00d6
                           0000D6   485 _P2SKIP	=	0x00d6
                           0000D7   486 G$USB0XCN$0_0$0 == 0x00d7
                           0000D7   487 _USB0XCN	=	0x00d7
                           0000D8   488 G$PCA0CN$0_0$0 == 0x00d8
                           0000D8   489 _PCA0CN	=	0x00d8
                           0000D9   490 G$PCA0MD$0_0$0 == 0x00d9
                           0000D9   491 _PCA0MD	=	0x00d9
                           0000DA   492 G$PCA0CPM0$0_0$0 == 0x00da
                           0000DA   493 _PCA0CPM0	=	0x00da
                           0000DB   494 G$PCA0CPM1$0_0$0 == 0x00db
                           0000DB   495 _PCA0CPM1	=	0x00db
                           0000DC   496 G$PCA0CPM2$0_0$0 == 0x00dc
                           0000DC   497 _PCA0CPM2	=	0x00dc
                           0000DD   498 G$PCA0CPM3$0_0$0 == 0x00dd
                           0000DD   499 _PCA0CPM3	=	0x00dd
                           0000DE   500 G$PCA0CPM4$0_0$0 == 0x00de
                           0000DE   501 _PCA0CPM4	=	0x00de
                           0000DF   502 G$P3SKIP$0_0$0 == 0x00df
                           0000DF   503 _P3SKIP	=	0x00df
                           0000E0   504 G$ACC$0_0$0 == 0x00e0
                           0000E0   505 _ACC	=	0x00e0
                           0000E1   506 G$XBR0$0_0$0 == 0x00e1
                           0000E1   507 _XBR0	=	0x00e1
                           0000E2   508 G$XBR1$0_0$0 == 0x00e2
                           0000E2   509 _XBR1	=	0x00e2
                           0000E3   510 G$XBR2$0_0$0 == 0x00e3
                           0000E3   511 _XBR2	=	0x00e3
                           0000E4   512 G$IT01CF$0_0$0 == 0x00e4
                           0000E4   513 _IT01CF	=	0x00e4
                           0000E4   514 G$INT01CF$0_0$0 == 0x00e4
                           0000E4   515 _INT01CF	=	0x00e4
                           0000E5   516 G$SMOD1$0_0$0 == 0x00e5
                           0000E5   517 _SMOD1	=	0x00e5
                           0000E6   518 G$EIE1$0_0$0 == 0x00e6
                           0000E6   519 _EIE1	=	0x00e6
                           0000E7   520 G$EIE2$0_0$0 == 0x00e7
                           0000E7   521 _EIE2	=	0x00e7
                           0000E8   522 G$ADC0CN$0_0$0 == 0x00e8
                           0000E8   523 _ADC0CN	=	0x00e8
                           0000E9   524 G$PCA0CPL1$0_0$0 == 0x00e9
                           0000E9   525 _PCA0CPL1	=	0x00e9
                           0000EA   526 G$PCA0CPH1$0_0$0 == 0x00ea
                           0000EA   527 _PCA0CPH1	=	0x00ea
                           0000EB   528 G$PCA0CPL2$0_0$0 == 0x00eb
                           0000EB   529 _PCA0CPL2	=	0x00eb
                           0000EC   530 G$PCA0CPH2$0_0$0 == 0x00ec
                           0000EC   531 _PCA0CPH2	=	0x00ec
                           0000ED   532 G$PCA0CPL3$0_0$0 == 0x00ed
                           0000ED   533 _PCA0CPL3	=	0x00ed
                           0000EE   534 G$PCA0CPH3$0_0$0 == 0x00ee
                           0000EE   535 _PCA0CPH3	=	0x00ee
                           0000EF   536 G$RSTSRC$0_0$0 == 0x00ef
                           0000EF   537 _RSTSRC	=	0x00ef
                           0000F0   538 G$B$0_0$0 == 0x00f0
                           0000F0   539 _B	=	0x00f0
                           0000F1   540 G$P0MODE$0_0$0 == 0x00f1
                           0000F1   541 _P0MODE	=	0x00f1
                           0000F1   542 G$P0MDIN$0_0$0 == 0x00f1
                           0000F1   543 _P0MDIN	=	0x00f1
                           0000F2   544 G$P1MODE$0_0$0 == 0x00f2
                           0000F2   545 _P1MODE	=	0x00f2
                           0000F2   546 G$P1MDIN$0_0$0 == 0x00f2
                           0000F2   547 _P1MDIN	=	0x00f2
                           0000F3   548 G$P2MODE$0_0$0 == 0x00f3
                           0000F3   549 _P2MODE	=	0x00f3
                           0000F3   550 G$P2MDIN$0_0$0 == 0x00f3
                           0000F3   551 _P2MDIN	=	0x00f3
                           0000F4   552 G$P3MODE$0_0$0 == 0x00f4
                           0000F4   553 _P3MODE	=	0x00f4
                           0000F4   554 G$P3MDIN$0_0$0 == 0x00f4
                           0000F4   555 _P3MDIN	=	0x00f4
                           0000F5   556 G$P4MDIN$0_0$0 == 0x00f5
                           0000F5   557 _P4MDIN	=	0x00f5
                           0000F6   558 G$EIP1$0_0$0 == 0x00f6
                           0000F6   559 _EIP1	=	0x00f6
                           0000F7   560 G$EIP2$0_0$0 == 0x00f7
                           0000F7   561 _EIP2	=	0x00f7
                           0000F8   562 G$SPI0CN$0_0$0 == 0x00f8
                           0000F8   563 _SPI0CN	=	0x00f8
                           0000F9   564 G$PCA0L$0_0$0 == 0x00f9
                           0000F9   565 _PCA0L	=	0x00f9
                           0000FA   566 G$PCA0H$0_0$0 == 0x00fa
                           0000FA   567 _PCA0H	=	0x00fa
                           0000FB   568 G$PCA0CPL0$0_0$0 == 0x00fb
                           0000FB   569 _PCA0CPL0	=	0x00fb
                           0000FC   570 G$PCA0CPH0$0_0$0 == 0x00fc
                           0000FC   571 _PCA0CPH0	=	0x00fc
                           0000FD   572 G$PCA0CPL4$0_0$0 == 0x00fd
                           0000FD   573 _PCA0CPL4	=	0x00fd
                           0000FE   574 G$PCA0CPH4$0_0$0 == 0x00fe
                           0000FE   575 _PCA0CPH4	=	0x00fe
                           0000FF   576 G$VDM0CN$0_0$0 == 0x00ff
                           0000FF   577 _VDM0CN	=	0x00ff
                           008C8A   578 G$TMR0$0_0$0 == 0x8c8a
                           008C8A   579 _TMR0	=	0x8c8a
                           008D8B   580 G$TMR1$0_0$0 == 0x8d8b
                           008D8B   581 _TMR1	=	0x8d8b
                           00CDCC   582 G$TMR2$0_0$0 == 0xcdcc
                           00CDCC   583 _TMR2	=	0xcdcc
                           00CBCA   584 G$RCAP2$0_0$0 == 0xcbca
                           00CBCA   585 _RCAP2	=	0xcbca
                           00CBCA   586 G$TMR2RL$0_0$0 == 0xcbca
                           00CBCA   587 _TMR2RL	=	0xcbca
                           009594   588 G$TMR3$0_0$0 == 0x9594
                           009594   589 _TMR3	=	0x9594
                           009392   590 G$TMR3RL$0_0$0 == 0x9392
                           009392   591 _TMR3RL	=	0x9392
                           00B5B4   592 G$SBRL1$0_0$0 == 0xb5b4
                           00B5B4   593 _SBRL1	=	0xb5b4
                           00BEBD   594 G$ADC0$0_0$0 == 0xbebd
                           00BEBD   595 _ADC0	=	0xbebd
                           00C4C3   596 G$ADC0GT$0_0$0 == 0xc4c3
                           00C4C3   597 _ADC0GT	=	0xc4c3
                           00C6C5   598 G$ADC0LT$0_0$0 == 0xc6c5
                           00C6C5   599 _ADC0LT	=	0xc6c5
                           00FAF9   600 G$PCA0$0_0$0 == 0xfaf9
                           00FAF9   601 _PCA0	=	0xfaf9
                           00FCFB   602 G$PCA0CP0$0_0$0 == 0xfcfb
                           00FCFB   603 _PCA0CP0	=	0xfcfb
                           00EAE9   604 G$PCA0CP1$0_0$0 == 0xeae9
                           00EAE9   605 _PCA0CP1	=	0xeae9
                           00ECEB   606 G$PCA0CP2$0_0$0 == 0xeceb
                           00ECEB   607 _PCA0CP2	=	0xeceb
                           00EEED   608 G$PCA0CP3$0_0$0 == 0xeeed
                           00EEED   609 _PCA0CP3	=	0xeeed
                           00FEFD   610 G$PCA0CP4$0_0$0 == 0xfefd
                           00FEFD   611 _PCA0CP4	=	0xfefd
                                    612 ;--------------------------------------------------------
                                    613 ; special function bits
                                    614 ;--------------------------------------------------------
                                    615 	.area RSEG    (ABS,DATA)
      000000                        616 	.org 0x0000
                           000080   617 G$P0_0$0_0$0 == 0x0080
                           000080   618 _P0_0	=	0x0080
                           000081   619 G$P0_1$0_0$0 == 0x0081
                           000081   620 _P0_1	=	0x0081
                           000082   621 G$P0_2$0_0$0 == 0x0082
                           000082   622 _P0_2	=	0x0082
                           000083   623 G$P0_3$0_0$0 == 0x0083
                           000083   624 _P0_3	=	0x0083
                           000084   625 G$P0_4$0_0$0 == 0x0084
                           000084   626 _P0_4	=	0x0084
                           000085   627 G$P0_5$0_0$0 == 0x0085
                           000085   628 _P0_5	=	0x0085
                           000086   629 G$P0_6$0_0$0 == 0x0086
                           000086   630 _P0_6	=	0x0086
                           000087   631 G$P0_7$0_0$0 == 0x0087
                           000087   632 _P0_7	=	0x0087
                           000088   633 G$IT0$0_0$0 == 0x0088
                           000088   634 _IT0	=	0x0088
                           000089   635 G$IE0$0_0$0 == 0x0089
                           000089   636 _IE0	=	0x0089
                           00008A   637 G$IT1$0_0$0 == 0x008a
                           00008A   638 _IT1	=	0x008a
                           00008B   639 G$IE1$0_0$0 == 0x008b
                           00008B   640 _IE1	=	0x008b
                           00008C   641 G$TR0$0_0$0 == 0x008c
                           00008C   642 _TR0	=	0x008c
                           00008D   643 G$TF0$0_0$0 == 0x008d
                           00008D   644 _TF0	=	0x008d
                           00008E   645 G$TR1$0_0$0 == 0x008e
                           00008E   646 _TR1	=	0x008e
                           00008F   647 G$TF1$0_0$0 == 0x008f
                           00008F   648 _TF1	=	0x008f
                           000090   649 G$P1_0$0_0$0 == 0x0090
                           000090   650 _P1_0	=	0x0090
                           000091   651 G$P1_1$0_0$0 == 0x0091
                           000091   652 _P1_1	=	0x0091
                           000092   653 G$P1_2$0_0$0 == 0x0092
                           000092   654 _P1_2	=	0x0092
                           000093   655 G$P1_3$0_0$0 == 0x0093
                           000093   656 _P1_3	=	0x0093
                           000094   657 G$P1_4$0_0$0 == 0x0094
                           000094   658 _P1_4	=	0x0094
                           000095   659 G$P1_5$0_0$0 == 0x0095
                           000095   660 _P1_5	=	0x0095
                           000096   661 G$P1_6$0_0$0 == 0x0096
                           000096   662 _P1_6	=	0x0096
                           000097   663 G$P1_7$0_0$0 == 0x0097
                           000097   664 _P1_7	=	0x0097
                           000098   665 G$RI$0_0$0 == 0x0098
                           000098   666 _RI	=	0x0098
                           000098   667 G$RI0$0_0$0 == 0x0098
                           000098   668 _RI0	=	0x0098
                           000099   669 G$TI$0_0$0 == 0x0099
                           000099   670 _TI	=	0x0099
                           000099   671 G$TI0$0_0$0 == 0x0099
                           000099   672 _TI0	=	0x0099
                           00009A   673 G$RB8$0_0$0 == 0x009a
                           00009A   674 _RB8	=	0x009a
                           00009A   675 G$RB80$0_0$0 == 0x009a
                           00009A   676 _RB80	=	0x009a
                           00009B   677 G$TB8$0_0$0 == 0x009b
                           00009B   678 _TB8	=	0x009b
                           00009B   679 G$TB80$0_0$0 == 0x009b
                           00009B   680 _TB80	=	0x009b
                           00009C   681 G$REN$0_0$0 == 0x009c
                           00009C   682 _REN	=	0x009c
                           00009C   683 G$REN0$0_0$0 == 0x009c
                           00009C   684 _REN0	=	0x009c
                           00009D   685 G$SM2$0_0$0 == 0x009d
                           00009D   686 _SM2	=	0x009d
                           00009D   687 G$MCE0$0_0$0 == 0x009d
                           00009D   688 _MCE0	=	0x009d
                           00009F   689 G$SM0$0_0$0 == 0x009f
                           00009F   690 _SM0	=	0x009f
                           00009F   691 G$S0MODE$0_0$0 == 0x009f
                           00009F   692 _S0MODE	=	0x009f
                           0000A0   693 G$P2_0$0_0$0 == 0x00a0
                           0000A0   694 _P2_0	=	0x00a0
                           0000A1   695 G$P2_1$0_0$0 == 0x00a1
                           0000A1   696 _P2_1	=	0x00a1
                           0000A2   697 G$P2_2$0_0$0 == 0x00a2
                           0000A2   698 _P2_2	=	0x00a2
                           0000A3   699 G$P2_3$0_0$0 == 0x00a3
                           0000A3   700 _P2_3	=	0x00a3
                           0000A4   701 G$P2_4$0_0$0 == 0x00a4
                           0000A4   702 _P2_4	=	0x00a4
                           0000A5   703 G$P2_5$0_0$0 == 0x00a5
                           0000A5   704 _P2_5	=	0x00a5
                           0000A6   705 G$P2_6$0_0$0 == 0x00a6
                           0000A6   706 _P2_6	=	0x00a6
                           0000A7   707 G$P2_7$0_0$0 == 0x00a7
                           0000A7   708 _P2_7	=	0x00a7
                           0000A8   709 G$EX0$0_0$0 == 0x00a8
                           0000A8   710 _EX0	=	0x00a8
                           0000A9   711 G$ET0$0_0$0 == 0x00a9
                           0000A9   712 _ET0	=	0x00a9
                           0000AA   713 G$EX1$0_0$0 == 0x00aa
                           0000AA   714 _EX1	=	0x00aa
                           0000AB   715 G$ET1$0_0$0 == 0x00ab
                           0000AB   716 _ET1	=	0x00ab
                           0000AC   717 G$ES$0_0$0 == 0x00ac
                           0000AC   718 _ES	=	0x00ac
                           0000AC   719 G$ES0$0_0$0 == 0x00ac
                           0000AC   720 _ES0	=	0x00ac
                           0000AD   721 G$ET2$0_0$0 == 0x00ad
                           0000AD   722 _ET2	=	0x00ad
                           0000AE   723 G$ESPI0$0_0$0 == 0x00ae
                           0000AE   724 _ESPI0	=	0x00ae
                           0000AF   725 G$EA$0_0$0 == 0x00af
                           0000AF   726 _EA	=	0x00af
                           0000B0   727 G$P3_0$0_0$0 == 0x00b0
                           0000B0   728 _P3_0	=	0x00b0
                           0000B1   729 G$P3_1$0_0$0 == 0x00b1
                           0000B1   730 _P3_1	=	0x00b1
                           0000B2   731 G$P3_2$0_0$0 == 0x00b2
                           0000B2   732 _P3_2	=	0x00b2
                           0000B3   733 G$P3_3$0_0$0 == 0x00b3
                           0000B3   734 _P3_3	=	0x00b3
                           0000B4   735 G$P3_4$0_0$0 == 0x00b4
                           0000B4   736 _P3_4	=	0x00b4
                           0000B5   737 G$P3_5$0_0$0 == 0x00b5
                           0000B5   738 _P3_5	=	0x00b5
                           0000B6   739 G$P3_6$0_0$0 == 0x00b6
                           0000B6   740 _P3_6	=	0x00b6
                           0000B7   741 G$P3_7$0_0$0 == 0x00b7
                           0000B7   742 _P3_7	=	0x00b7
                           0000B8   743 G$PX0$0_0$0 == 0x00b8
                           0000B8   744 _PX0	=	0x00b8
                           0000B9   745 G$PT0$0_0$0 == 0x00b9
                           0000B9   746 _PT0	=	0x00b9
                           0000BA   747 G$PX1$0_0$0 == 0x00ba
                           0000BA   748 _PX1	=	0x00ba
                           0000BB   749 G$PT1$0_0$0 == 0x00bb
                           0000BB   750 _PT1	=	0x00bb
                           0000BC   751 G$PS$0_0$0 == 0x00bc
                           0000BC   752 _PS	=	0x00bc
                           0000BC   753 G$PS0$0_0$0 == 0x00bc
                           0000BC   754 _PS0	=	0x00bc
                           0000BD   755 G$PT2$0_0$0 == 0x00bd
                           0000BD   756 _PT2	=	0x00bd
                           0000BE   757 G$PSPI0$0_0$0 == 0x00be
                           0000BE   758 _PSPI0	=	0x00be
                           0000C0   759 G$SI$0_0$0 == 0x00c0
                           0000C0   760 _SI	=	0x00c0
                           0000C1   761 G$ACK$0_0$0 == 0x00c1
                           0000C1   762 _ACK	=	0x00c1
                           0000C2   763 G$ARBLOST$0_0$0 == 0x00c2
                           0000C2   764 _ARBLOST	=	0x00c2
                           0000C3   765 G$ACKRQ$0_0$0 == 0x00c3
                           0000C3   766 _ACKRQ	=	0x00c3
                           0000C4   767 G$STO$0_0$0 == 0x00c4
                           0000C4   768 _STO	=	0x00c4
                           0000C5   769 G$STA$0_0$0 == 0x00c5
                           0000C5   770 _STA	=	0x00c5
                           0000C6   771 G$TXMODE$0_0$0 == 0x00c6
                           0000C6   772 _TXMODE	=	0x00c6
                           0000C7   773 G$MASTER$0_0$0 == 0x00c7
                           0000C7   774 _MASTER	=	0x00c7
                           0000C8   775 G$T2XCLK$0_0$0 == 0x00c8
                           0000C8   776 _T2XCLK	=	0x00c8
                           0000C9   777 G$T2CSS$0_0$0 == 0x00c9
                           0000C9   778 _T2CSS	=	0x00c9
                           0000CA   779 G$TR2$0_0$0 == 0x00ca
                           0000CA   780 _TR2	=	0x00ca
                           0000CB   781 G$T2SPLIT$0_0$0 == 0x00cb
                           0000CB   782 _T2SPLIT	=	0x00cb
                           0000CC   783 G$T2CE$0_0$0 == 0x00cc
                           0000CC   784 _T2CE	=	0x00cc
                           0000CD   785 G$TF2LEN$0_0$0 == 0x00cd
                           0000CD   786 _TF2LEN	=	0x00cd
                           0000CE   787 G$TF2L$0_0$0 == 0x00ce
                           0000CE   788 _TF2L	=	0x00ce
                           0000CF   789 G$TF2$0_0$0 == 0x00cf
                           0000CF   790 _TF2	=	0x00cf
                           0000CF   791 G$TF2H$0_0$0 == 0x00cf
                           0000CF   792 _TF2H	=	0x00cf
                           0000D0   793 G$PARITY$0_0$0 == 0x00d0
                           0000D0   794 _PARITY	=	0x00d0
                           0000D1   795 G$F1$0_0$0 == 0x00d1
                           0000D1   796 _F1	=	0x00d1
                           0000D2   797 G$OV$0_0$0 == 0x00d2
                           0000D2   798 _OV	=	0x00d2
                           0000D3   799 G$RS0$0_0$0 == 0x00d3
                           0000D3   800 _RS0	=	0x00d3
                           0000D4   801 G$RS1$0_0$0 == 0x00d4
                           0000D4   802 _RS1	=	0x00d4
                           0000D5   803 G$F0$0_0$0 == 0x00d5
                           0000D5   804 _F0	=	0x00d5
                           0000D6   805 G$AC$0_0$0 == 0x00d6
                           0000D6   806 _AC	=	0x00d6
                           0000D7   807 G$CY$0_0$0 == 0x00d7
                           0000D7   808 _CY	=	0x00d7
                           0000D8   809 G$CCF0$0_0$0 == 0x00d8
                           0000D8   810 _CCF0	=	0x00d8
                           0000D9   811 G$CCF1$0_0$0 == 0x00d9
                           0000D9   812 _CCF1	=	0x00d9
                           0000DA   813 G$CCF2$0_0$0 == 0x00da
                           0000DA   814 _CCF2	=	0x00da
                           0000DB   815 G$CCF3$0_0$0 == 0x00db
                           0000DB   816 _CCF3	=	0x00db
                           0000DC   817 G$CCF4$0_0$0 == 0x00dc
                           0000DC   818 _CCF4	=	0x00dc
                           0000DE   819 G$CR$0_0$0 == 0x00de
                           0000DE   820 _CR	=	0x00de
                           0000DF   821 G$CF$0_0$0 == 0x00df
                           0000DF   822 _CF	=	0x00df
                           0000E8   823 G$AD0CM0$0_0$0 == 0x00e8
                           0000E8   824 _AD0CM0	=	0x00e8
                           0000E9   825 G$AD0CM1$0_0$0 == 0x00e9
                           0000E9   826 _AD0CM1	=	0x00e9
                           0000EA   827 G$AD0CM2$0_0$0 == 0x00ea
                           0000EA   828 _AD0CM2	=	0x00ea
                           0000EB   829 G$AD0WINT$0_0$0 == 0x00eb
                           0000EB   830 _AD0WINT	=	0x00eb
                           0000EC   831 G$AD0BUSY$0_0$0 == 0x00ec
                           0000EC   832 _AD0BUSY	=	0x00ec
                           0000ED   833 G$AD0INT$0_0$0 == 0x00ed
                           0000ED   834 _AD0INT	=	0x00ed
                           0000EE   835 G$AD0TM$0_0$0 == 0x00ee
                           0000EE   836 _AD0TM	=	0x00ee
                           0000EF   837 G$AD0EN$0_0$0 == 0x00ef
                           0000EF   838 _AD0EN	=	0x00ef
                           0000F8   839 G$SPIEN$0_0$0 == 0x00f8
                           0000F8   840 _SPIEN	=	0x00f8
                           0000F9   841 G$TXBMT$0_0$0 == 0x00f9
                           0000F9   842 _TXBMT	=	0x00f9
                           0000FA   843 G$NSSMD0$0_0$0 == 0x00fa
                           0000FA   844 _NSSMD0	=	0x00fa
                           0000FB   845 G$NSSMD1$0_0$0 == 0x00fb
                           0000FB   846 _NSSMD1	=	0x00fb
                           0000FC   847 G$RXOVRN$0_0$0 == 0x00fc
                           0000FC   848 _RXOVRN	=	0x00fc
                           0000FD   849 G$MODF$0_0$0 == 0x00fd
                           0000FD   850 _MODF	=	0x00fd
                           0000FE   851 G$WCOL$0_0$0 == 0x00fe
                           0000FE   852 _WCOL	=	0x00fe
                           0000FF   853 G$SPIF$0_0$0 == 0x00ff
                           0000FF   854 _SPIF	=	0x00ff
                                    855 ;--------------------------------------------------------
                                    856 ; overlayable register banks
                                    857 ;--------------------------------------------------------
                                    858 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        859 	.ds 8
                                    860 ;--------------------------------------------------------
                                    861 ; internal ram data
                                    862 ;--------------------------------------------------------
                                    863 	.area DSEG    (DATA)
                                    864 ;--------------------------------------------------------
                                    865 ; overlayable items in internal ram
                                    866 ;--------------------------------------------------------
                                    867 ;--------------------------------------------------------
                                    868 ; Stack segment in internal ram
                                    869 ;--------------------------------------------------------
                                    870 	.area	SSEG
      000021                        871 __start__stack:
      000021                        872 	.ds	1
                                    873 
                                    874 ;--------------------------------------------------------
                                    875 ; indirectly addressable internal ram data
                                    876 ;--------------------------------------------------------
                                    877 	.area ISEG    (DATA)
                                    878 ;--------------------------------------------------------
                                    879 ; absolute internal ram data
                                    880 ;--------------------------------------------------------
                                    881 	.area IABS    (ABS,DATA)
                                    882 	.area IABS    (ABS,DATA)
                                    883 ;--------------------------------------------------------
                                    884 ; bit data
                                    885 ;--------------------------------------------------------
                                    886 	.area BSEG    (BIT)
                                    887 ;--------------------------------------------------------
                                    888 ; paged external ram data
                                    889 ;--------------------------------------------------------
                                    890 	.area PSEG    (PAG,XDATA)
                                    891 ;--------------------------------------------------------
                                    892 ; external ram data
                                    893 ;--------------------------------------------------------
                                    894 	.area XSEG    (XDATA)
                           000000   895 G$StartTask_Handler$0_0$0==.
      000001                        896 _StartTask_Handler::
      000001                        897 	.ds 3
                           000003   898 G$LED0Task_Handler$0_0$0==.
      000004                        899 _LED0Task_Handler::
      000004                        900 	.ds 3
                           000006   901 G$LED1Task_Handler$0_0$0==.
      000007                        902 _LED1Task_Handler::
      000007                        903 	.ds 3
                           000009   904 G$LED2Task_Handler$0_0$0==.
      00000A                        905 _LED2Task_Handler::
      00000A                        906 	.ds 3
                           00000C   907 G$LED3Task_Handler$0_0$0==.
      00000D                        908 _LED3Task_Handler::
      00000D                        909 	.ds 3
                                    910 ;--------------------------------------------------------
                                    911 ; absolute external ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XABS    (ABS,XDATA)
                                    914 ;--------------------------------------------------------
                                    915 ; external initialized ram data
                                    916 ;--------------------------------------------------------
                                    917 	.area XISEG   (XDATA)
                                    918 	.area HOME    (CODE)
                                    919 	.area GSINIT0 (CODE)
                                    920 	.area GSINIT1 (CODE)
                                    921 	.area GSINIT2 (CODE)
                                    922 	.area GSINIT3 (CODE)
                                    923 	.area GSINIT4 (CODE)
                                    924 	.area GSINIT5 (CODE)
                                    925 	.area GSINIT  (CODE)
                                    926 	.area GSFINAL (CODE)
                                    927 	.area CSEG    (CODE)
                                    928 ;--------------------------------------------------------
                                    929 ; interrupt vector
                                    930 ;--------------------------------------------------------
                                    931 	.area HOME    (CODE)
      000000                        932 __interrupt_vect:
      000000 02 00 5F         [24]  933 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  934 	reti
      000004                        935 	.ds	7
      00000B 32               [24]  936 	reti
      00000C                        937 	.ds	7
      000013 32               [24]  938 	reti
      000014                        939 	.ds	7
      00001B 32               [24]  940 	reti
      00001C                        941 	.ds	7
      000023 02 07 3C         [24]  942 	ljmp	_vSerialISR
      000026                        943 	.ds	5
      00002B 02 78 27         [24]  944 	ljmp	_vTimer2ISR
                                    945 ;--------------------------------------------------------
                                    946 ; global & static initialisations
                                    947 ;--------------------------------------------------------
                                    948 	.area HOME    (CODE)
                                    949 	.area GSINIT  (CODE)
                                    950 	.area GSFINAL (CODE)
                                    951 	.area GSINIT  (CODE)
                                    952 	.globl __sdcc_gsinit_startup
                                    953 	.globl __sdcc_program_startup
                                    954 	.globl __start__stack
                                    955 	.globl __mcs51_genXINIT
                                    956 	.globl __mcs51_genXRAMCLEAR
                                    957 	.globl __mcs51_genRAMCLEAR
                                    958 	.area GSFINAL (CODE)
      0000C2 02 00 2E         [24]  959 	ljmp	__sdcc_program_startup
                                    960 ;--------------------------------------------------------
                                    961 ; Home
                                    962 ;--------------------------------------------------------
                                    963 	.area HOME    (CODE)
                                    964 	.area HOME    (CODE)
      00002E                        965 __sdcc_program_startup:
      00002E 02 00 C9         [24]  966 	ljmp	_main
                                    967 ;	return from main will return to caller
                                    968 ;--------------------------------------------------------
                                    969 ; code
                                    970 ;--------------------------------------------------------
                                    971 	.area CSEG    (CODE)
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    974 ;------------------------------------------------------------
                           000000   975 	G$_sdcc_external_startup$0$0 ==.
                           000000   976 	C$main.c$57$0_0$133 ==.
                                    977 ;	main.c:57: void _sdcc_external_startup(void){
                                    978 ;	-----------------------------------------
                                    979 ;	 function _sdcc_external_startup
                                    980 ;	-----------------------------------------
      0000C5                        981 __sdcc_external_startup:
                           000007   982 	ar7 = 0x07
                           000006   983 	ar6 = 0x06
                           000005   984 	ar5 = 0x05
                           000004   985 	ar4 = 0x04
                           000003   986 	ar3 = 0x03
                           000002   987 	ar2 = 0x02
                           000001   988 	ar1 = 0x01
                           000000   989 	ar0 = 0x00
                           000000   990 	C$main.c$59$1_0$133 ==.
                                    991 ;	main.c:59: PCA0MD &= ~0x40;
      0000C5 53 D9 BF         [24]  992 	anl	_PCA0MD,#0xbf
      0000C8                        993 00101$:
                           000003   994 	C$main.c$60$1_0$133 ==.
                                    995 ;	main.c:60: }
                           000003   996 	C$main.c$60$1_0$133 ==.
                           000003   997 	XG$_sdcc_external_startup$0$0 ==.
      0000C8 22               [24]  998 	ret
                                    999 ;------------------------------------------------------------
                                   1000 ;Allocation info for local variables in function 'main'
                                   1001 ;------------------------------------------------------------
                                   1002 ;myStr                     Allocated to stack - _bp +14
                                   1003 ;myStr2                    Allocated to stack - _bp +1
                                   1004 ;myStrPtr                  Allocated to registers r5 r6 r7 
                                   1005 ;myStrPtr2                 Allocated to registers 
                                   1006 ;i                         Allocated to registers r3 r4 
                                   1007 ;------------------------------------------------------------
                           000004  1008 	G$main$0$0 ==.
                           000004  1009 	C$main.c$62$1_0$135 ==.
                                   1010 ;	main.c:62: int main(void)
                                   1011 ;	-----------------------------------------
                                   1012 ;	 function main
                                   1013 ;	-----------------------------------------
      0000C9                       1014 _main:
      0000C9 C0 0D            [24] 1015 	push	_bp
      0000CB 85 81 0D         [24] 1016 	mov	_bp,sp
      0000CE E5 81            [12] 1017 	mov	a,sp
      0000D0 24 1F            [12] 1018 	add	a,#0x1f
      0000D2 F5 81            [12] 1019 	mov	sp,a
                           00000F  1020 	C$main.c$64$2_0$135 ==.
                                   1021 ;	main.c:64: char myStr[] = "System start...\r\n";
      0000D4 E5 0D            [12] 1022 	mov	a,_bp
      0000D6 24 0E            [12] 1023 	add	a,#0x0e
      0000D8 F9               [12] 1024 	mov	r1,a
      0000D9 77 53            [12] 1025 	mov	@r1,#0x53
      0000DB E9               [12] 1026 	mov	a,r1
      0000DC 04               [12] 1027 	inc	a
      0000DD A8 E0            [24] 1028 	mov	r0,acc
      0000DF 76 79            [12] 1029 	mov	@r0,#0x79
      0000E1 74 02            [12] 1030 	mov	a,#0x02
      0000E3 29               [12] 1031 	add	a,r1
      0000E4 A8 E0            [24] 1032 	mov	r0,acc
      0000E6 76 73            [12] 1033 	mov	@r0,#0x73
      0000E8 74 03            [12] 1034 	mov	a,#0x03
      0000EA 29               [12] 1035 	add	a,r1
      0000EB A8 E0            [24] 1036 	mov	r0,acc
      0000ED 76 74            [12] 1037 	mov	@r0,#0x74
      0000EF 74 04            [12] 1038 	mov	a,#0x04
      0000F1 29               [12] 1039 	add	a,r1
      0000F2 A8 E0            [24] 1040 	mov	r0,acc
      0000F4 76 65            [12] 1041 	mov	@r0,#0x65
      0000F6 74 05            [12] 1042 	mov	a,#0x05
      0000F8 29               [12] 1043 	add	a,r1
      0000F9 A8 E0            [24] 1044 	mov	r0,acc
      0000FB 76 6D            [12] 1045 	mov	@r0,#0x6d
      0000FD 74 06            [12] 1046 	mov	a,#0x06
      0000FF 29               [12] 1047 	add	a,r1
      000100 A8 E0            [24] 1048 	mov	r0,acc
      000102 76 20            [12] 1049 	mov	@r0,#0x20
      000104 74 07            [12] 1050 	mov	a,#0x07
      000106 29               [12] 1051 	add	a,r1
      000107 A8 E0            [24] 1052 	mov	r0,acc
      000109 76 73            [12] 1053 	mov	@r0,#0x73
      00010B 74 08            [12] 1054 	mov	a,#0x08
      00010D 29               [12] 1055 	add	a,r1
      00010E A8 E0            [24] 1056 	mov	r0,acc
      000110 76 74            [12] 1057 	mov	@r0,#0x74
      000112 74 09            [12] 1058 	mov	a,#0x09
      000114 29               [12] 1059 	add	a,r1
      000115 A8 E0            [24] 1060 	mov	r0,acc
      000117 76 61            [12] 1061 	mov	@r0,#0x61
      000119 74 0A            [12] 1062 	mov	a,#0x0a
      00011B 29               [12] 1063 	add	a,r1
      00011C A8 E0            [24] 1064 	mov	r0,acc
      00011E 76 72            [12] 1065 	mov	@r0,#0x72
      000120 74 0B            [12] 1066 	mov	a,#0x0b
      000122 29               [12] 1067 	add	a,r1
      000123 A8 E0            [24] 1068 	mov	r0,acc
      000125 76 74            [12] 1069 	mov	@r0,#0x74
      000127 74 0C            [12] 1070 	mov	a,#0x0c
      000129 29               [12] 1071 	add	a,r1
      00012A A8 E0            [24] 1072 	mov	r0,acc
      00012C 76 2E            [12] 1073 	mov	@r0,#0x2e
      00012E 74 0D            [12] 1074 	mov	a,#0x0d
      000130 29               [12] 1075 	add	a,r1
      000131 A8 E0            [24] 1076 	mov	r0,acc
      000133 76 2E            [12] 1077 	mov	@r0,#0x2e
      000135 74 0E            [12] 1078 	mov	a,#0x0e
      000137 29               [12] 1079 	add	a,r1
      000138 A8 E0            [24] 1080 	mov	r0,acc
      00013A 76 2E            [12] 1081 	mov	@r0,#0x2e
      00013C 74 0F            [12] 1082 	mov	a,#0x0f
      00013E 29               [12] 1083 	add	a,r1
      00013F A8 E0            [24] 1084 	mov	r0,acc
      000141 76 0D            [12] 1085 	mov	@r0,#0x0d
      000143 74 10            [12] 1086 	mov	a,#0x10
      000145 29               [12] 1087 	add	a,r1
      000146 A8 E0            [24] 1088 	mov	r0,acc
      000148 76 0A            [12] 1089 	mov	@r0,#0x0a
      00014A 74 11            [12] 1090 	mov	a,#0x11
      00014C 29               [12] 1091 	add	a,r1
      00014D A8 E0            [24] 1092 	mov	r0,acc
      00014F 76 00            [12] 1093 	mov	@r0,#0x00
                           00008C  1094 	C$main.c$65$2_0$135 ==.
                                   1095 ;	main.c:65: char myStr2[] = "Running...\r\n";
      000151 A8 0D            [24] 1096 	mov	r0,_bp
      000153 08               [12] 1097 	inc	r0
      000154 76 52            [12] 1098 	mov	@r0,#0x52
      000156 E8               [12] 1099 	mov	a,r0
      000157 04               [12] 1100 	inc	a
      000158 C0 00            [24] 1101 	push	ar0
      00015A A8 E0            [24] 1102 	mov	r0,acc
      00015C 76 75            [12] 1103 	mov	@r0,#0x75
      00015E D0 00            [24] 1104 	pop	ar0
      000160 74 02            [12] 1105 	mov	a,#0x02
      000162 28               [12] 1106 	add	a,r0
      000163 C0 00            [24] 1107 	push	ar0
      000165 A8 E0            [24] 1108 	mov	r0,acc
      000167 76 6E            [12] 1109 	mov	@r0,#0x6e
      000169 D0 00            [24] 1110 	pop	ar0
      00016B 74 03            [12] 1111 	mov	a,#0x03
      00016D 28               [12] 1112 	add	a,r0
      00016E C0 00            [24] 1113 	push	ar0
      000170 A8 E0            [24] 1114 	mov	r0,acc
      000172 76 6E            [12] 1115 	mov	@r0,#0x6e
      000174 D0 00            [24] 1116 	pop	ar0
      000176 74 04            [12] 1117 	mov	a,#0x04
      000178 28               [12] 1118 	add	a,r0
      000179 C0 00            [24] 1119 	push	ar0
      00017B A8 E0            [24] 1120 	mov	r0,acc
      00017D 76 69            [12] 1121 	mov	@r0,#0x69
      00017F D0 00            [24] 1122 	pop	ar0
      000181 74 05            [12] 1123 	mov	a,#0x05
      000183 28               [12] 1124 	add	a,r0
      000184 C0 00            [24] 1125 	push	ar0
      000186 A8 E0            [24] 1126 	mov	r0,acc
      000188 76 6E            [12] 1127 	mov	@r0,#0x6e
      00018A D0 00            [24] 1128 	pop	ar0
      00018C 74 06            [12] 1129 	mov	a,#0x06
      00018E 28               [12] 1130 	add	a,r0
      00018F C0 00            [24] 1131 	push	ar0
      000191 A8 E0            [24] 1132 	mov	r0,acc
      000193 76 67            [12] 1133 	mov	@r0,#0x67
      000195 D0 00            [24] 1134 	pop	ar0
      000197 74 07            [12] 1135 	mov	a,#0x07
      000199 28               [12] 1136 	add	a,r0
      00019A C0 00            [24] 1137 	push	ar0
      00019C A8 E0            [24] 1138 	mov	r0,acc
      00019E 76 2E            [12] 1139 	mov	@r0,#0x2e
      0001A0 D0 00            [24] 1140 	pop	ar0
      0001A2 74 08            [12] 1141 	mov	a,#0x08
      0001A4 28               [12] 1142 	add	a,r0
      0001A5 C0 00            [24] 1143 	push	ar0
      0001A7 A8 E0            [24] 1144 	mov	r0,acc
      0001A9 76 2E            [12] 1145 	mov	@r0,#0x2e
      0001AB D0 00            [24] 1146 	pop	ar0
      0001AD 74 09            [12] 1147 	mov	a,#0x09
      0001AF 28               [12] 1148 	add	a,r0
      0001B0 C0 00            [24] 1149 	push	ar0
      0001B2 A8 E0            [24] 1150 	mov	r0,acc
      0001B4 76 2E            [12] 1151 	mov	@r0,#0x2e
      0001B6 D0 00            [24] 1152 	pop	ar0
      0001B8 74 0A            [12] 1153 	mov	a,#0x0a
      0001BA 28               [12] 1154 	add	a,r0
      0001BB C0 00            [24] 1155 	push	ar0
      0001BD A8 E0            [24] 1156 	mov	r0,acc
      0001BF 76 0D            [12] 1157 	mov	@r0,#0x0d
      0001C1 D0 00            [24] 1158 	pop	ar0
      0001C3 74 0B            [12] 1159 	mov	a,#0x0b
      0001C5 28               [12] 1160 	add	a,r0
      0001C6 C0 00            [24] 1161 	push	ar0
      0001C8 A8 E0            [24] 1162 	mov	r0,acc
      0001CA 76 0A            [12] 1163 	mov	@r0,#0x0a
      0001CC D0 00            [24] 1164 	pop	ar0
      0001CE 74 0C            [12] 1165 	mov	a,#0x0c
      0001D0 28               [12] 1166 	add	a,r0
      0001D1 A8 E0            [24] 1167 	mov	r0,acc
      0001D3 76 00            [12] 1168 	mov	@r0,#0x00
                           000110  1169 	C$main.c$66$2_0$135 ==.
                                   1170 ;	main.c:66: char *myStrPtr = myStr;
      0001D5 89 07            [24] 1171 	mov	ar7,r1
      0001D7 8F 05            [24] 1172 	mov	ar5,r7
      0001D9 7E 00            [12] 1173 	mov	r6,#0x00
      0001DB 7F 40            [12] 1174 	mov	r7,#0x40
                           000118  1175 	C$main.c$82$1_0$135 ==.
                                   1176 ;	main.c:82: OSCICN = 0x83;
      0001DD 75 B2 83         [24] 1177 	mov	_OSCICN,#0x83
                           00011B  1178 	C$main.c$85$1_0$135 ==.
                                   1179 ;	main.c:85: for(i=0;i<256;i++);
      0001E0 7B 00            [12] 1180 	mov	r3,#0x00
      0001E2 7C 01            [12] 1181 	mov	r4,#0x01
      0001E4                       1182 00113$:
      0001E4 1B               [12] 1183 	dec	r3
      0001E5 BB FF 01         [24] 1184 	cjne	r3,#0xff,00143$
      0001E8 1C               [12] 1185 	dec	r4
      0001E9                       1186 00143$:
      0001E9 EB               [12] 1187 	mov	a,r3
      0001EA 4C               [12] 1188 	orl	a,r4
      0001EB 60 03            [24] 1189 	jz	00144$
      0001ED 02 01 E4         [24] 1190 	ljmp	00113$
      0001F0                       1191 00144$:
                           00012B  1192 	C$main.c$86$1_0$135 ==.
                                   1193 ;	main.c:86: while(!(OSCICN | 0x40));
      0001F0                       1194 00102$:
                           00012B  1195 	C$main.c$89$1_0$135 ==.
                                   1196 ;	main.c:89: RSTSRC = 0x04;	//Enable missing clock detector
      0001F0 75 EF 04         [24] 1197 	mov	_RSTSRC,#0x04
                           00012E  1198 	C$main.c$91$1_0$135 ==.
                                   1199 ;	main.c:91: P3MDOUT = 0xFF;
      0001F3 75 A7 FF         [24] 1200 	mov	_P3MDOUT,#0xff
                           000131  1201 	C$main.c$92$1_0$135 ==.
                                   1202 ;	main.c:92: P0MDOUT |= 0x10;
      0001F6 43 A4 10         [24] 1203 	orl	_P0MDOUT,#0x10
                           000134  1204 	C$main.c$95$1_0$135 ==.
                                   1205 ;	main.c:95: XBR0 = 0x01;	// Skip all pins in crossbar selection
      0001F9 75 E1 01         [24] 1206 	mov	_XBR0,#0x01
                           000137  1207 	C$main.c$96$1_0$135 ==.
                                   1208 ;	main.c:96: XBR1 = 0x40;	// Enable the crossbar
      0001FC 75 E2 40         [24] 1209 	mov	_XBR1,#0x40
                           00013A  1210 	C$main.c$99$1_0$135 ==.
                                   1211 ;	main.c:99: xSerialPortInitMinimal(9600, 128);
      0001FF C0 07            [24] 1212 	push	ar7
      000201 C0 06            [24] 1213 	push	ar6
      000203 C0 05            [24] 1214 	push	ar5
      000205 74 80            [12] 1215 	mov	a,#0x80
      000207 C0 E0            [24] 1216 	push	acc
      000209 75 82 80         [24] 1217 	mov	dpl,#0x80
      00020C 75 83 25         [24] 1218 	mov	dph,#0x25
      00020F 75 F0 00         [24] 1219 	mov	b,#0x00
      000212 74 00            [12] 1220 	mov	a,#0x00
      000214 12 05 F4         [24] 1221 	lcall	_xSerialPortInitMinimal
      000217 15 81            [12] 1222 	dec	sp
      000219 D0 05            [24] 1223 	pop	ar5
      00021B D0 06            [24] 1224 	pop	ar6
      00021D D0 07            [24] 1225 	pop	ar7
                           00015A  1226 	C$main.c$102$1_0$135 ==.
                                   1227 ;	main.c:102: while(*myStrPtr){
      00021F                       1228 00105$:
      00021F 8D 82            [24] 1229 	mov	dpl,r5
      000221 8E 83            [24] 1230 	mov	dph,r6
      000223 8F F0            [24] 1231 	mov	b,r7
      000225 12 7C 4D         [24] 1232 	lcall	__gptrget
      000228 FC               [12] 1233 	mov	r4,a
      000229 EC               [12] 1234 	mov	a,r4
      00022A 70 03            [24] 1235 	jnz	00145$
      00022C 02 02 5F         [24] 1236 	ljmp	00107$
      00022F                       1237 00145$:
                           00016A  1238 	C$main.c$103$2_0$137 ==.
                                   1239 ;	main.c:103: xSerialPutChar(0, *myStrPtr, 300);
      00022F C0 07            [24] 1240 	push	ar7
      000231 C0 06            [24] 1241 	push	ar6
      000233 C0 05            [24] 1242 	push	ar5
      000235 74 2C            [12] 1243 	mov	a,#0x2c
      000237 C0 E0            [24] 1244 	push	acc
      000239 74 01            [12] 1245 	mov	a,#0x01
      00023B C0 E0            [24] 1246 	push	acc
      00023D C0 04            [24] 1247 	push	ar4
      00023F 75 82 00         [24] 1248 	mov	dpl,#0x00
      000242 75 83 00         [24] 1249 	mov	dph,#0x00
      000245 75 F0 00         [24] 1250 	mov	b,#0x00
      000248 12 08 C0         [24] 1251 	lcall	_xSerialPutChar
      00024B 15 81            [12] 1252 	dec	sp
      00024D 15 81            [12] 1253 	dec	sp
      00024F 15 81            [12] 1254 	dec	sp
      000251 D0 05            [24] 1255 	pop	ar5
      000253 D0 06            [24] 1256 	pop	ar6
      000255 D0 07            [24] 1257 	pop	ar7
                           000192  1258 	C$main.c$104$2_0$137 ==.
                                   1259 ;	main.c:104: myStrPtr = myStrPtr + 1;
      000257 0D               [12] 1260 	inc	r5
      000258 BD 00 01         [24] 1261 	cjne	r5,#0x00,00146$
      00025B 0E               [12] 1262 	inc	r6
      00025C                       1263 00146$:
      00025C 02 02 1F         [24] 1264 	ljmp	00105$
      00025F                       1265 00107$:
                           00019A  1266 	C$main.c$115$1_0$135 ==.
                                   1267 ;	main.c:115: (TaskHandle_t*  )&StartTask_Handler);   //任务句柄              
                           00019A  1268 	C$main.c$111$1_0$135 ==.
                                   1269 ;	main.c:111: (const char*    )"start_task",          //任务名称
                           00019A  1270 	C$main.c$110$1_0$135 ==.
                                   1271 ;	main.c:110: xTaskCreate((TaskFunction_t )start_task,            //任务函数
      00025F 74 01            [12] 1272 	mov	a,#_StartTask_Handler
      000261 C0 E0            [24] 1273 	push	acc
      000263 74 00            [12] 1274 	mov	a,#(_StartTask_Handler >> 8)
      000265 C0 E0            [24] 1275 	push	acc
      000267 74 00            [12] 1276 	mov	a,#0x00
      000269 C0 E0            [24] 1277 	push	acc
      00026B 04               [12] 1278 	inc	a
      00026C C0 E0            [24] 1279 	push	acc
      00026E 74 00            [12] 1280 	mov	a,#0x00
      000270 C0 E0            [24] 1281 	push	acc
      000272 C0 E0            [24] 1282 	push	acc
      000274 C0 E0            [24] 1283 	push	acc
      000276 74 80            [12] 1284 	mov	a,#0x80
      000278 C0 E0            [24] 1285 	push	acc
      00027A 74 00            [12] 1286 	mov	a,#0x00
      00027C C0 E0            [24] 1287 	push	acc
      00027E 74 0D            [12] 1288 	mov	a,#___str_2
      000280 C0 E0            [24] 1289 	push	acc
      000282 74 7D            [12] 1290 	mov	a,#(___str_2 >> 8)
      000284 C0 E0            [24] 1291 	push	acc
      000286 74 80            [12] 1292 	mov	a,#0x80
      000288 C0 E0            [24] 1293 	push	acc
      00028A 75 82 A5         [24] 1294 	mov	dpl,#_start_task
      00028D 75 83 02         [24] 1295 	mov	dph,#(_start_task >> 8)
      000290 12 25 44         [24] 1296 	lcall	_xTaskCreate
      000293 E5 81            [12] 1297 	mov	a,sp
      000295 24 F4            [12] 1298 	add	a,#0xf4
      000297 F5 81            [12] 1299 	mov	sp,a
                           0001D4  1300 	C$main.c$116$1_0$135 ==.
                                   1301 ;	main.c:116: vTaskStartScheduler();          //开启任务调度
      000299 12 2E 2E         [24] 1302 	lcall	_vTaskStartScheduler
                           0001D7  1303 	C$main.c$117$1_0$135 ==.
                                   1304 ;	main.c:117: while(1){;}
      00029C                       1305 00109$:
      00029C 02 02 9C         [24] 1306 	ljmp	00109$
      00029F                       1307 00114$:
                           0001DA  1308 	C$main.c$119$1_0$135 ==.
                                   1309 ;	main.c:119: }
      00029F 85 0D 81         [24] 1310 	mov	sp,_bp
      0002A2 D0 0D            [24] 1311 	pop	_bp
                           0001DF  1312 	C$main.c$119$1_0$135 ==.
                           0001DF  1313 	XG$main$0$0 ==.
      0002A4 22               [24] 1314 	ret
                                   1315 ;------------------------------------------------------------
                                   1316 ;Allocation info for local variables in function 'start_task'
                                   1317 ;------------------------------------------------------------
                                   1318 ;pvParameters              Allocated to registers 
                                   1319 ;------------------------------------------------------------
                           0001E0  1320 	G$start_task$0$0 ==.
                           0001E0  1321 	C$main.c$122$1_0$140 ==.
                                   1322 ;	main.c:122: void start_task(void *pvParameters)
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function start_task
                                   1325 ;	-----------------------------------------
      0002A5                       1326 _start_task:
                           0001E0  1327 	C$main.c$124$1_0$140 ==.
                                   1328 ;	main.c:124: taskENTER_CRITICAL();           //进入临界区
      0002A5 C0 E0            [24] 1329 	push ACC 
      0002A7 C0 A8            [24] 1330 	push IE 
                                   1331 ;	assignBit
      0002A9 C2 AF            [12] 1332 	clr	_EA
                           0001E6  1333 	C$main.c$131$1_0$140 ==.
                                   1334 ;	main.c:131: (TaskHandle_t*  )&LED0Task_Handler);   
                           0001E6  1335 	C$main.c$127$1_0$140 ==.
                                   1336 ;	main.c:127: (const char*    )"led0_task",   	
                           0001E6  1337 	C$main.c$126$1_0$140 ==.
                                   1338 ;	main.c:126: xTaskCreate((TaskFunction_t )led0_task,     	
      0002AB 74 04            [12] 1339 	mov	a,#_LED0Task_Handler
      0002AD C0 E0            [24] 1340 	push	acc
      0002AF 74 00            [12] 1341 	mov	a,#(_LED0Task_Handler >> 8)
      0002B1 C0 E0            [24] 1342 	push	acc
      0002B3 74 00            [12] 1343 	mov	a,#0x00
      0002B5 C0 E0            [24] 1344 	push	acc
      0002B7 74 02            [12] 1345 	mov	a,#0x02
      0002B9 C0 E0            [24] 1346 	push	acc
      0002BB 74 00            [12] 1347 	mov	a,#0x00
      0002BD C0 E0            [24] 1348 	push	acc
      0002BF C0 E0            [24] 1349 	push	acc
      0002C1 C0 E0            [24] 1350 	push	acc
      0002C3 74 32            [12] 1351 	mov	a,#0x32
      0002C5 C0 E0            [24] 1352 	push	acc
      0002C7 74 00            [12] 1353 	mov	a,#0x00
      0002C9 C0 E0            [24] 1354 	push	acc
      0002CB 74 18            [12] 1355 	mov	a,#___str_3
      0002CD C0 E0            [24] 1356 	push	acc
      0002CF 74 7D            [12] 1357 	mov	a,#(___str_3 >> 8)
      0002D1 C0 E0            [24] 1358 	push	acc
      0002D3 74 80            [12] 1359 	mov	a,#0x80
      0002D5 C0 E0            [24] 1360 	push	acc
      0002D7 75 82 B7         [24] 1361 	mov	dpl,#_led0_task
      0002DA 75 83 03         [24] 1362 	mov	dph,#(_led0_task >> 8)
      0002DD 12 25 44         [24] 1363 	lcall	_xTaskCreate
      0002E0 E5 81            [12] 1364 	mov	a,sp
      0002E2 24 F4            [12] 1365 	add	a,#0xf4
      0002E4 F5 81            [12] 1366 	mov	sp,a
                           000221  1367 	C$main.c$138$1_0$140 ==.
                                   1368 ;	main.c:138: (TaskHandle_t*  )&LED1Task_Handler);         
                           000221  1369 	C$main.c$134$1_0$140 ==.
                                   1370 ;	main.c:134: (const char*    )"led1_task",   
                           000221  1371 	C$main.c$133$1_0$140 ==.
                                   1372 ;	main.c:133: xTaskCreate((TaskFunction_t )led1_task,     
      0002E6 74 07            [12] 1373 	mov	a,#_LED1Task_Handler
      0002E8 C0 E0            [24] 1374 	push	acc
      0002EA 74 00            [12] 1375 	mov	a,#(_LED1Task_Handler >> 8)
      0002EC C0 E0            [24] 1376 	push	acc
      0002EE 74 00            [12] 1377 	mov	a,#0x00
      0002F0 C0 E0            [24] 1378 	push	acc
      0002F2 74 03            [12] 1379 	mov	a,#0x03
      0002F4 C0 E0            [24] 1380 	push	acc
      0002F6 74 00            [12] 1381 	mov	a,#0x00
      0002F8 C0 E0            [24] 1382 	push	acc
      0002FA C0 E0            [24] 1383 	push	acc
      0002FC C0 E0            [24] 1384 	push	acc
      0002FE 74 32            [12] 1385 	mov	a,#0x32
      000300 C0 E0            [24] 1386 	push	acc
      000302 74 00            [12] 1387 	mov	a,#0x00
      000304 C0 E0            [24] 1388 	push	acc
      000306 74 22            [12] 1389 	mov	a,#___str_4
      000308 C0 E0            [24] 1390 	push	acc
      00030A 74 7D            [12] 1391 	mov	a,#(___str_4 >> 8)
      00030C C0 E0            [24] 1392 	push	acc
      00030E 74 80            [12] 1393 	mov	a,#0x80
      000310 C0 E0            [24] 1394 	push	acc
      000312 75 82 3E         [24] 1395 	mov	dpl,#_led1_task
      000315 75 83 04         [24] 1396 	mov	dph,#(_led1_task >> 8)
      000318 12 25 44         [24] 1397 	lcall	_xTaskCreate
      00031B E5 81            [12] 1398 	mov	a,sp
      00031D 24 F4            [12] 1399 	add	a,#0xf4
      00031F F5 81            [12] 1400 	mov	sp,a
                           00025C  1401 	C$main.c$145$1_0$140 ==.
                                   1402 ;	main.c:145: (TaskHandle_t*  )&LED2Task_Handler); 
                           00025C  1403 	C$main.c$141$1_0$140 ==.
                                   1404 ;	main.c:141: (const char*    )"led2_task",   
                           00025C  1405 	C$main.c$140$1_0$140 ==.
                                   1406 ;	main.c:140: xTaskCreate((TaskFunction_t )led2_task,     
      000321 74 0A            [12] 1407 	mov	a,#_LED2Task_Handler
      000323 C0 E0            [24] 1408 	push	acc
      000325 74 00            [12] 1409 	mov	a,#(_LED2Task_Handler >> 8)
      000327 C0 E0            [24] 1410 	push	acc
      000329 74 00            [12] 1411 	mov	a,#0x00
      00032B C0 E0            [24] 1412 	push	acc
      00032D 74 02            [12] 1413 	mov	a,#0x02
      00032F C0 E0            [24] 1414 	push	acc
      000331 74 00            [12] 1415 	mov	a,#0x00
      000333 C0 E0            [24] 1416 	push	acc
      000335 C0 E0            [24] 1417 	push	acc
      000337 C0 E0            [24] 1418 	push	acc
      000339 74 32            [12] 1419 	mov	a,#0x32
      00033B C0 E0            [24] 1420 	push	acc
      00033D 74 00            [12] 1421 	mov	a,#0x00
      00033F C0 E0            [24] 1422 	push	acc
      000341 74 2C            [12] 1423 	mov	a,#___str_5
      000343 C0 E0            [24] 1424 	push	acc
      000345 74 7D            [12] 1425 	mov	a,#(___str_5 >> 8)
      000347 C0 E0            [24] 1426 	push	acc
      000349 74 80            [12] 1427 	mov	a,#0x80
      00034B C0 E0            [24] 1428 	push	acc
      00034D 75 82 D0         [24] 1429 	mov	dpl,#_led2_task
      000350 75 83 04         [24] 1430 	mov	dph,#(_led2_task >> 8)
      000353 12 25 44         [24] 1431 	lcall	_xTaskCreate
      000356 E5 81            [12] 1432 	mov	a,sp
      000358 24 F4            [12] 1433 	add	a,#0xf4
      00035A F5 81            [12] 1434 	mov	sp,a
                           000297  1435 	C$main.c$152$1_0$140 ==.
                                   1436 ;	main.c:152: (TaskHandle_t*  )&LED3Task_Handler); 
                           000297  1437 	C$main.c$148$1_0$140 ==.
                                   1438 ;	main.c:148: (const char*    )"led3_task",   
                           000297  1439 	C$main.c$147$1_0$140 ==.
                                   1440 ;	main.c:147: xTaskCreate((TaskFunction_t )led3_task,     
      00035C 74 0D            [12] 1441 	mov	a,#_LED3Task_Handler
      00035E C0 E0            [24] 1442 	push	acc
      000360 74 00            [12] 1443 	mov	a,#(_LED3Task_Handler >> 8)
      000362 C0 E0            [24] 1444 	push	acc
      000364 74 00            [12] 1445 	mov	a,#0x00
      000366 C0 E0            [24] 1446 	push	acc
      000368 74 03            [12] 1447 	mov	a,#0x03
      00036A C0 E0            [24] 1448 	push	acc
      00036C 74 00            [12] 1449 	mov	a,#0x00
      00036E C0 E0            [24] 1450 	push	acc
      000370 C0 E0            [24] 1451 	push	acc
      000372 C0 E0            [24] 1452 	push	acc
      000374 74 32            [12] 1453 	mov	a,#0x32
      000376 C0 E0            [24] 1454 	push	acc
      000378 74 00            [12] 1455 	mov	a,#0x00
      00037A C0 E0            [24] 1456 	push	acc
      00037C 74 36            [12] 1457 	mov	a,#___str_6
      00037E C0 E0            [24] 1458 	push	acc
      000380 74 7D            [12] 1459 	mov	a,#(___str_6 >> 8)
      000382 C0 E0            [24] 1460 	push	acc
      000384 74 80            [12] 1461 	mov	a,#0x80
      000386 C0 E0            [24] 1462 	push	acc
      000388 75 82 62         [24] 1463 	mov	dpl,#_led3_task
      00038B 75 83 05         [24] 1464 	mov	dph,#(_led3_task >> 8)
      00038E 12 25 44         [24] 1465 	lcall	_xTaskCreate
      000391 E5 81            [12] 1466 	mov	a,sp
      000393 24 F4            [12] 1467 	add	a,#0xf4
      000395 F5 81            [12] 1468 	mov	sp,a
                           0002D2  1469 	C$main.c$153$1_0$140 ==.
                                   1470 ;	main.c:153: vTaskDelete(StartTask_Handler); //删除开始任务
      000397 90 00 01         [24] 1471 	mov	dptr,#_StartTask_Handler
      00039A E0               [24] 1472 	movx	a,@dptr
      00039B FD               [12] 1473 	mov	r5,a
      00039C A3               [24] 1474 	inc	dptr
      00039D E0               [24] 1475 	movx	a,@dptr
      00039E FE               [12] 1476 	mov	r6,a
      00039F A3               [24] 1477 	inc	dptr
      0003A0 E0               [24] 1478 	movx	a,@dptr
      0003A1 FF               [12] 1479 	mov	r7,a
      0003A2 8D 82            [24] 1480 	mov	dpl,r5
      0003A4 8E 83            [24] 1481 	mov	dph,r6
      0003A6 8F F0            [24] 1482 	mov	b,r7
      0003A8 12 2C 73         [24] 1483 	lcall	_vTaskDelete
                           0002E6  1484 	C$main.c$154$1_0$140 ==.
                                   1485 ;	main.c:154: taskEXIT_CRITICAL();            //退出临界区
      0003AB D0 E0            [24] 1486 	pop ACC 
      0003AD 53 E0 80         [24] 1487 	anl	_ACC,#0x80
      0003B0 E5 E0            [12] 1488 	mov	a,_ACC
      0003B2 42 A8            [12] 1489 	orl	_IE,a
      0003B4 D0 E0            [24] 1490 	pop ACC 
      0003B6                       1491 00101$:
                           0002F1  1492 	C$main.c$155$1_0$140 ==.
                                   1493 ;	main.c:155: }
                           0002F1  1494 	C$main.c$155$1_0$140 ==.
                           0002F1  1495 	XG$start_task$0$0 ==.
      0003B6 22               [24] 1496 	ret
                                   1497 ;------------------------------------------------------------
                                   1498 ;Allocation info for local variables in function 'led0_task'
                                   1499 ;------------------------------------------------------------
                                   1500 ;pvParameters              Allocated to registers 
                                   1501 ;------------------------------------------------------------
                           0002F2  1502 	G$led0_task$0$0 ==.
                           0002F2  1503 	C$main.c$158$1_0$142 ==.
                                   1504 ;	main.c:158: void led0_task(void *pvParameters)
                                   1505 ;	-----------------------------------------
                                   1506 ;	 function led0_task
                                   1507 ;	-----------------------------------------
      0003B7                       1508 _led0_task:
                           0002F2  1509 	C$main.c$160$1_0$142 ==.
                                   1510 ;	main.c:160: while(1)
      0003B7                       1511 00102$:
                           0002F2  1512 	C$main.c$162$2_0$143 ==.
                                   1513 ;	main.c:162: xSerialPutChar(0, 'T', 300);
      0003B7 74 2C            [12] 1514 	mov	a,#0x2c
      0003B9 C0 E0            [24] 1515 	push	acc
      0003BB 74 01            [12] 1516 	mov	a,#0x01
      0003BD C0 E0            [24] 1517 	push	acc
      0003BF 74 54            [12] 1518 	mov	a,#0x54
      0003C1 C0 E0            [24] 1519 	push	acc
      0003C3 75 82 00         [24] 1520 	mov	dpl,#0x00
      0003C6 75 83 00         [24] 1521 	mov	dph,#0x00
      0003C9 75 F0 00         [24] 1522 	mov	b,#0x00
      0003CC 12 08 C0         [24] 1523 	lcall	_xSerialPutChar
      0003CF 15 81            [12] 1524 	dec	sp
      0003D1 15 81            [12] 1525 	dec	sp
      0003D3 15 81            [12] 1526 	dec	sp
                           000310  1527 	C$main.c$163$2_0$143 ==.
                                   1528 ;	main.c:163: xSerialPutChar(0, '0', 300);
      0003D5 74 2C            [12] 1529 	mov	a,#0x2c
      0003D7 C0 E0            [24] 1530 	push	acc
      0003D9 74 01            [12] 1531 	mov	a,#0x01
      0003DB C0 E0            [24] 1532 	push	acc
      0003DD 74 30            [12] 1533 	mov	a,#0x30
      0003DF C0 E0            [24] 1534 	push	acc
      0003E1 75 82 00         [24] 1535 	mov	dpl,#0x00
      0003E4 75 83 00         [24] 1536 	mov	dph,#0x00
      0003E7 75 F0 00         [24] 1537 	mov	b,#0x00
      0003EA 12 08 C0         [24] 1538 	lcall	_xSerialPutChar
      0003ED 15 81            [12] 1539 	dec	sp
      0003EF 15 81            [12] 1540 	dec	sp
      0003F1 15 81            [12] 1541 	dec	sp
                           00032E  1542 	C$main.c$164$2_0$143 ==.
                                   1543 ;	main.c:164: xSerialPutChar(0, '\r', 300);
      0003F3 74 2C            [12] 1544 	mov	a,#0x2c
      0003F5 C0 E0            [24] 1545 	push	acc
      0003F7 74 01            [12] 1546 	mov	a,#0x01
      0003F9 C0 E0            [24] 1547 	push	acc
      0003FB 74 0D            [12] 1548 	mov	a,#0x0d
      0003FD C0 E0            [24] 1549 	push	acc
      0003FF 75 82 00         [24] 1550 	mov	dpl,#0x00
      000402 75 83 00         [24] 1551 	mov	dph,#0x00
      000405 75 F0 00         [24] 1552 	mov	b,#0x00
      000408 12 08 C0         [24] 1553 	lcall	_xSerialPutChar
      00040B 15 81            [12] 1554 	dec	sp
      00040D 15 81            [12] 1555 	dec	sp
      00040F 15 81            [12] 1556 	dec	sp
                           00034C  1557 	C$main.c$165$2_0$143 ==.
                                   1558 ;	main.c:165: xSerialPutChar(0, '\n', 300);		
      000411 74 2C            [12] 1559 	mov	a,#0x2c
      000413 C0 E0            [24] 1560 	push	acc
      000415 74 01            [12] 1561 	mov	a,#0x01
      000417 C0 E0            [24] 1562 	push	acc
      000419 74 0A            [12] 1563 	mov	a,#0x0a
      00041B C0 E0            [24] 1564 	push	acc
      00041D 75 82 00         [24] 1565 	mov	dpl,#0x00
      000420 75 83 00         [24] 1566 	mov	dph,#0x00
      000423 75 F0 00         [24] 1567 	mov	b,#0x00
      000426 12 08 C0         [24] 1568 	lcall	_xSerialPutChar
      000429 15 81            [12] 1569 	dec	sp
      00042B 15 81            [12] 1570 	dec	sp
      00042D 15 81            [12] 1571 	dec	sp
                           00036A  1572 	C$main.c$166$2_0$143 ==.
                                   1573 ;	main.c:166: LED0=!LED0;
      00042F B2 B3            [12] 1574 	cpl	_P3_3
                           00036C  1575 	C$main.c$167$2_0$143 ==.
                                   1576 ;	main.c:167: vTaskDelay(100);
      000431 75 82 64         [24] 1577 	mov	dpl,#0x64
      000434 75 83 00         [24] 1578 	mov	dph,#0x00
      000437 12 2D F8         [24] 1579 	lcall	_vTaskDelay
      00043A 02 03 B7         [24] 1580 	ljmp	00102$
      00043D                       1581 00104$:
                           000378  1582 	C$main.c$171$1_0$142 ==.
                                   1583 ;	main.c:171: }   
                           000378  1584 	C$main.c$171$1_0$142 ==.
                           000378  1585 	XG$led0_task$0$0 ==.
      00043D 22               [24] 1586 	ret
                                   1587 ;------------------------------------------------------------
                                   1588 ;Allocation info for local variables in function 'led1_task'
                                   1589 ;------------------------------------------------------------
                                   1590 ;pvParameters              Allocated to registers 
                                   1591 ;------------------------------------------------------------
                           000379  1592 	G$led1_task$0$0 ==.
                           000379  1593 	C$main.c$174$1_0$145 ==.
                                   1594 ;	main.c:174: void led1_task(void *pvParameters)
                                   1595 ;	-----------------------------------------
                                   1596 ;	 function led1_task
                                   1597 ;	-----------------------------------------
      00043E                       1598 _led1_task:
                           000379  1599 	C$main.c$176$1_0$145 ==.
                                   1600 ;	main.c:176: while(1)
      00043E                       1601 00102$:
                           000379  1602 	C$main.c$178$2_0$146 ==.
                                   1603 ;	main.c:178: xSerialPutChar(0, 'T', 300);
      00043E 74 2C            [12] 1604 	mov	a,#0x2c
      000440 C0 E0            [24] 1605 	push	acc
      000442 74 01            [12] 1606 	mov	a,#0x01
      000444 C0 E0            [24] 1607 	push	acc
      000446 74 54            [12] 1608 	mov	a,#0x54
      000448 C0 E0            [24] 1609 	push	acc
      00044A 75 82 00         [24] 1610 	mov	dpl,#0x00
      00044D 75 83 00         [24] 1611 	mov	dph,#0x00
      000450 75 F0 00         [24] 1612 	mov	b,#0x00
      000453 12 08 C0         [24] 1613 	lcall	_xSerialPutChar
      000456 15 81            [12] 1614 	dec	sp
      000458 15 81            [12] 1615 	dec	sp
      00045A 15 81            [12] 1616 	dec	sp
                           000397  1617 	C$main.c$179$2_0$146 ==.
                                   1618 ;	main.c:179: xSerialPutChar(0, '1', 300);
      00045C 74 2C            [12] 1619 	mov	a,#0x2c
      00045E C0 E0            [24] 1620 	push	acc
      000460 74 01            [12] 1621 	mov	a,#0x01
      000462 C0 E0            [24] 1622 	push	acc
      000464 74 31            [12] 1623 	mov	a,#0x31
      000466 C0 E0            [24] 1624 	push	acc
      000468 75 82 00         [24] 1625 	mov	dpl,#0x00
      00046B 75 83 00         [24] 1626 	mov	dph,#0x00
      00046E 75 F0 00         [24] 1627 	mov	b,#0x00
      000471 12 08 C0         [24] 1628 	lcall	_xSerialPutChar
      000474 15 81            [12] 1629 	dec	sp
      000476 15 81            [12] 1630 	dec	sp
      000478 15 81            [12] 1631 	dec	sp
                           0003B5  1632 	C$main.c$180$2_0$146 ==.
                                   1633 ;	main.c:180: xSerialPutChar(0, '\r', 300);
      00047A 74 2C            [12] 1634 	mov	a,#0x2c
      00047C C0 E0            [24] 1635 	push	acc
      00047E 74 01            [12] 1636 	mov	a,#0x01
      000480 C0 E0            [24] 1637 	push	acc
      000482 74 0D            [12] 1638 	mov	a,#0x0d
      000484 C0 E0            [24] 1639 	push	acc
      000486 75 82 00         [24] 1640 	mov	dpl,#0x00
      000489 75 83 00         [24] 1641 	mov	dph,#0x00
      00048C 75 F0 00         [24] 1642 	mov	b,#0x00
      00048F 12 08 C0         [24] 1643 	lcall	_xSerialPutChar
      000492 15 81            [12] 1644 	dec	sp
      000494 15 81            [12] 1645 	dec	sp
      000496 15 81            [12] 1646 	dec	sp
                           0003D3  1647 	C$main.c$181$2_0$146 ==.
                                   1648 ;	main.c:181: xSerialPutChar(0, '\n', 300);
      000498 74 2C            [12] 1649 	mov	a,#0x2c
      00049A C0 E0            [24] 1650 	push	acc
      00049C 74 01            [12] 1651 	mov	a,#0x01
      00049E C0 E0            [24] 1652 	push	acc
      0004A0 74 0A            [12] 1653 	mov	a,#0x0a
      0004A2 C0 E0            [24] 1654 	push	acc
      0004A4 75 82 00         [24] 1655 	mov	dpl,#0x00
      0004A7 75 83 00         [24] 1656 	mov	dph,#0x00
      0004AA 75 F0 00         [24] 1657 	mov	b,#0x00
      0004AD 12 08 C0         [24] 1658 	lcall	_xSerialPutChar
      0004B0 15 81            [12] 1659 	dec	sp
      0004B2 15 81            [12] 1660 	dec	sp
      0004B4 15 81            [12] 1661 	dec	sp
                           0003F1  1662 	C$main.c$182$2_0$146 ==.
                                   1663 ;	main.c:182: LED1=0;
                                   1664 ;	assignBit
      0004B6 C2 B4            [12] 1665 	clr	_P3_4
                           0003F3  1666 	C$main.c$183$2_0$146 ==.
                                   1667 ;	main.c:183: vTaskDelay(30);
      0004B8 75 82 1E         [24] 1668 	mov	dpl,#0x1e
      0004BB 75 83 00         [24] 1669 	mov	dph,#0x00
      0004BE 12 2D F8         [24] 1670 	lcall	_vTaskDelay
                           0003FC  1671 	C$main.c$184$2_0$146 ==.
                                   1672 ;	main.c:184: LED1=1;
                                   1673 ;	assignBit
      0004C1 D2 B4            [12] 1674 	setb	_P3_4
                           0003FE  1675 	C$main.c$185$2_0$146 ==.
                                   1676 ;	main.c:185: vTaskDelay(70);		
      0004C3 75 82 46         [24] 1677 	mov	dpl,#0x46
      0004C6 75 83 00         [24] 1678 	mov	dph,#0x00
      0004C9 12 2D F8         [24] 1679 	lcall	_vTaskDelay
      0004CC 02 04 3E         [24] 1680 	ljmp	00102$
      0004CF                       1681 00104$:
                           00040A  1682 	C$main.c$187$1_0$145 ==.
                                   1683 ;	main.c:187: }
                           00040A  1684 	C$main.c$187$1_0$145 ==.
                           00040A  1685 	XG$led1_task$0$0 ==.
      0004CF 22               [24] 1686 	ret
                                   1687 ;------------------------------------------------------------
                                   1688 ;Allocation info for local variables in function 'led2_task'
                                   1689 ;------------------------------------------------------------
                                   1690 ;pvParameters              Allocated to registers 
                                   1691 ;------------------------------------------------------------
                           00040B  1692 	G$led2_task$0$0 ==.
                           00040B  1693 	C$main.c$189$1_0$148 ==.
                                   1694 ;	main.c:189: void led2_task(void *pvParameters)
                                   1695 ;	-----------------------------------------
                                   1696 ;	 function led2_task
                                   1697 ;	-----------------------------------------
      0004D0                       1698 _led2_task:
                           00040B  1699 	C$main.c$191$1_0$148 ==.
                                   1700 ;	main.c:191: while(1)
      0004D0                       1701 00102$:
                           00040B  1702 	C$main.c$193$2_0$149 ==.
                                   1703 ;	main.c:193: xSerialPutChar(0, 'T', 300);
      0004D0 74 2C            [12] 1704 	mov	a,#0x2c
      0004D2 C0 E0            [24] 1705 	push	acc
      0004D4 74 01            [12] 1706 	mov	a,#0x01
      0004D6 C0 E0            [24] 1707 	push	acc
      0004D8 74 54            [12] 1708 	mov	a,#0x54
      0004DA C0 E0            [24] 1709 	push	acc
      0004DC 75 82 00         [24] 1710 	mov	dpl,#0x00
      0004DF 75 83 00         [24] 1711 	mov	dph,#0x00
      0004E2 75 F0 00         [24] 1712 	mov	b,#0x00
      0004E5 12 08 C0         [24] 1713 	lcall	_xSerialPutChar
      0004E8 15 81            [12] 1714 	dec	sp
      0004EA 15 81            [12] 1715 	dec	sp
      0004EC 15 81            [12] 1716 	dec	sp
                           000429  1717 	C$main.c$194$2_0$149 ==.
                                   1718 ;	main.c:194: xSerialPutChar(0, '2', 300);
      0004EE 74 2C            [12] 1719 	mov	a,#0x2c
      0004F0 C0 E0            [24] 1720 	push	acc
      0004F2 74 01            [12] 1721 	mov	a,#0x01
      0004F4 C0 E0            [24] 1722 	push	acc
      0004F6 74 32            [12] 1723 	mov	a,#0x32
      0004F8 C0 E0            [24] 1724 	push	acc
      0004FA 75 82 00         [24] 1725 	mov	dpl,#0x00
      0004FD 75 83 00         [24] 1726 	mov	dph,#0x00
      000500 75 F0 00         [24] 1727 	mov	b,#0x00
      000503 12 08 C0         [24] 1728 	lcall	_xSerialPutChar
      000506 15 81            [12] 1729 	dec	sp
      000508 15 81            [12] 1730 	dec	sp
      00050A 15 81            [12] 1731 	dec	sp
                           000447  1732 	C$main.c$195$2_0$149 ==.
                                   1733 ;	main.c:195: xSerialPutChar(0, '\r', 300);
      00050C 74 2C            [12] 1734 	mov	a,#0x2c
      00050E C0 E0            [24] 1735 	push	acc
      000510 74 01            [12] 1736 	mov	a,#0x01
      000512 C0 E0            [24] 1737 	push	acc
      000514 74 0D            [12] 1738 	mov	a,#0x0d
      000516 C0 E0            [24] 1739 	push	acc
      000518 75 82 00         [24] 1740 	mov	dpl,#0x00
      00051B 75 83 00         [24] 1741 	mov	dph,#0x00
      00051E 75 F0 00         [24] 1742 	mov	b,#0x00
      000521 12 08 C0         [24] 1743 	lcall	_xSerialPutChar
      000524 15 81            [12] 1744 	dec	sp
      000526 15 81            [12] 1745 	dec	sp
      000528 15 81            [12] 1746 	dec	sp
                           000465  1747 	C$main.c$196$2_0$149 ==.
                                   1748 ;	main.c:196: xSerialPutChar(0, '\n', 300);
      00052A 74 2C            [12] 1749 	mov	a,#0x2c
      00052C C0 E0            [24] 1750 	push	acc
      00052E 74 01            [12] 1751 	mov	a,#0x01
      000530 C0 E0            [24] 1752 	push	acc
      000532 74 0A            [12] 1753 	mov	a,#0x0a
      000534 C0 E0            [24] 1754 	push	acc
      000536 75 82 00         [24] 1755 	mov	dpl,#0x00
      000539 75 83 00         [24] 1756 	mov	dph,#0x00
      00053C 75 F0 00         [24] 1757 	mov	b,#0x00
      00053F 12 08 C0         [24] 1758 	lcall	_xSerialPutChar
      000542 15 81            [12] 1759 	dec	sp
      000544 15 81            [12] 1760 	dec	sp
      000546 15 81            [12] 1761 	dec	sp
                           000483  1762 	C$main.c$197$2_0$149 ==.
                                   1763 ;	main.c:197: LED2=0;
                                   1764 ;	assignBit
      000548 C2 B5            [12] 1765 	clr	_P3_5
                           000485  1766 	C$main.c$198$2_0$149 ==.
                                   1767 ;	main.c:198: vTaskDelay(100);
      00054A 75 82 64         [24] 1768 	mov	dpl,#0x64
      00054D 75 83 00         [24] 1769 	mov	dph,#0x00
      000550 12 2D F8         [24] 1770 	lcall	_vTaskDelay
                           00048E  1771 	C$main.c$199$2_0$149 ==.
                                   1772 ;	main.c:199: LED2=1;
                                   1773 ;	assignBit
      000553 D2 B5            [12] 1774 	setb	_P3_5
                           000490  1775 	C$main.c$200$2_0$149 ==.
                                   1776 ;	main.c:200: vTaskDelay(50);		
      000555 75 82 32         [24] 1777 	mov	dpl,#0x32
      000558 75 83 00         [24] 1778 	mov	dph,#0x00
      00055B 12 2D F8         [24] 1779 	lcall	_vTaskDelay
      00055E 02 04 D0         [24] 1780 	ljmp	00102$
      000561                       1781 00104$:
                           00049C  1782 	C$main.c$202$1_0$148 ==.
                                   1783 ;	main.c:202: }
                           00049C  1784 	C$main.c$202$1_0$148 ==.
                           00049C  1785 	XG$led2_task$0$0 ==.
      000561 22               [24] 1786 	ret
                                   1787 ;------------------------------------------------------------
                                   1788 ;Allocation info for local variables in function 'led3_task'
                                   1789 ;------------------------------------------------------------
                                   1790 ;pvParameters              Allocated to registers 
                                   1791 ;------------------------------------------------------------
                           00049D  1792 	G$led3_task$0$0 ==.
                           00049D  1793 	C$main.c$204$1_0$151 ==.
                                   1794 ;	main.c:204: void led3_task(void *pvParameters)
                                   1795 ;	-----------------------------------------
                                   1796 ;	 function led3_task
                                   1797 ;	-----------------------------------------
      000562                       1798 _led3_task:
                           00049D  1799 	C$main.c$206$1_0$151 ==.
                                   1800 ;	main.c:206: while(1)
      000562                       1801 00102$:
                           00049D  1802 	C$main.c$208$2_0$152 ==.
                                   1803 ;	main.c:208: xSerialPutChar(0, 'T', 300);
      000562 74 2C            [12] 1804 	mov	a,#0x2c
      000564 C0 E0            [24] 1805 	push	acc
      000566 74 01            [12] 1806 	mov	a,#0x01
      000568 C0 E0            [24] 1807 	push	acc
      00056A 74 54            [12] 1808 	mov	a,#0x54
      00056C C0 E0            [24] 1809 	push	acc
      00056E 75 82 00         [24] 1810 	mov	dpl,#0x00
      000571 75 83 00         [24] 1811 	mov	dph,#0x00
      000574 75 F0 00         [24] 1812 	mov	b,#0x00
      000577 12 08 C0         [24] 1813 	lcall	_xSerialPutChar
      00057A 15 81            [12] 1814 	dec	sp
      00057C 15 81            [12] 1815 	dec	sp
      00057E 15 81            [12] 1816 	dec	sp
                           0004BB  1817 	C$main.c$209$2_0$152 ==.
                                   1818 ;	main.c:209: xSerialPutChar(0, '3', 300);
      000580 74 2C            [12] 1819 	mov	a,#0x2c
      000582 C0 E0            [24] 1820 	push	acc
      000584 74 01            [12] 1821 	mov	a,#0x01
      000586 C0 E0            [24] 1822 	push	acc
      000588 74 33            [12] 1823 	mov	a,#0x33
      00058A C0 E0            [24] 1824 	push	acc
      00058C 75 82 00         [24] 1825 	mov	dpl,#0x00
      00058F 75 83 00         [24] 1826 	mov	dph,#0x00
      000592 75 F0 00         [24] 1827 	mov	b,#0x00
      000595 12 08 C0         [24] 1828 	lcall	_xSerialPutChar
      000598 15 81            [12] 1829 	dec	sp
      00059A 15 81            [12] 1830 	dec	sp
      00059C 15 81            [12] 1831 	dec	sp
                           0004D9  1832 	C$main.c$210$2_0$152 ==.
                                   1833 ;	main.c:210: xSerialPutChar(0, '\r', 300);
      00059E 74 2C            [12] 1834 	mov	a,#0x2c
      0005A0 C0 E0            [24] 1835 	push	acc
      0005A2 74 01            [12] 1836 	mov	a,#0x01
      0005A4 C0 E0            [24] 1837 	push	acc
      0005A6 74 0D            [12] 1838 	mov	a,#0x0d
      0005A8 C0 E0            [24] 1839 	push	acc
      0005AA 75 82 00         [24] 1840 	mov	dpl,#0x00
      0005AD 75 83 00         [24] 1841 	mov	dph,#0x00
      0005B0 75 F0 00         [24] 1842 	mov	b,#0x00
      0005B3 12 08 C0         [24] 1843 	lcall	_xSerialPutChar
      0005B6 15 81            [12] 1844 	dec	sp
      0005B8 15 81            [12] 1845 	dec	sp
      0005BA 15 81            [12] 1846 	dec	sp
                           0004F7  1847 	C$main.c$211$2_0$152 ==.
                                   1848 ;	main.c:211: xSerialPutChar(0, '\n', 300);
      0005BC 74 2C            [12] 1849 	mov	a,#0x2c
      0005BE C0 E0            [24] 1850 	push	acc
      0005C0 74 01            [12] 1851 	mov	a,#0x01
      0005C2 C0 E0            [24] 1852 	push	acc
      0005C4 74 0A            [12] 1853 	mov	a,#0x0a
      0005C6 C0 E0            [24] 1854 	push	acc
      0005C8 75 82 00         [24] 1855 	mov	dpl,#0x00
      0005CB 75 83 00         [24] 1856 	mov	dph,#0x00
      0005CE 75 F0 00         [24] 1857 	mov	b,#0x00
      0005D1 12 08 C0         [24] 1858 	lcall	_xSerialPutChar
      0005D4 15 81            [12] 1859 	dec	sp
      0005D6 15 81            [12] 1860 	dec	sp
      0005D8 15 81            [12] 1861 	dec	sp
                           000515  1862 	C$main.c$212$2_0$152 ==.
                                   1863 ;	main.c:212: LED3=0;
                                   1864 ;	assignBit
      0005DA C2 B6            [12] 1865 	clr	_P3_6
                           000517  1866 	C$main.c$213$2_0$152 ==.
                                   1867 ;	main.c:213: vTaskDelay(70);
      0005DC 75 82 46         [24] 1868 	mov	dpl,#0x46
      0005DF 75 83 00         [24] 1869 	mov	dph,#0x00
      0005E2 12 2D F8         [24] 1870 	lcall	_vTaskDelay
                           000520  1871 	C$main.c$214$2_0$152 ==.
                                   1872 ;	main.c:214: LED3=1;
                                   1873 ;	assignBit
      0005E5 D2 B6            [12] 1874 	setb	_P3_6
                           000522  1875 	C$main.c$215$2_0$152 ==.
                                   1876 ;	main.c:215: vTaskDelay(30);		
      0005E7 75 82 1E         [24] 1877 	mov	dpl,#0x1e
      0005EA 75 83 00         [24] 1878 	mov	dph,#0x00
      0005ED 12 2D F8         [24] 1879 	lcall	_vTaskDelay
      0005F0 02 05 62         [24] 1880 	ljmp	00102$
      0005F3                       1881 00104$:
                           00052E  1882 	C$main.c$217$1_0$151 ==.
                                   1883 ;	main.c:217: }
                           00052E  1884 	C$main.c$217$1_0$151 ==.
                           00052E  1885 	XG$led3_task$0$0 ==.
      0005F3 22               [24] 1886 	ret
                                   1887 	.area CSEG    (CODE)
                                   1888 	.area CONST   (CODE)
                           000000  1889 Fmain$__str_2$0_0$0 == .
                                   1890 	.area CONST   (CODE)
      007D0D                       1891 ___str_2:
      007D0D 73 74 61 72 74 5F 74  1892 	.ascii "start_task"
             61 73 6B
      007D17 00                    1893 	.db 0x00
                                   1894 	.area CSEG    (CODE)
                           00052F  1895 Fmain$__str_3$0_0$0 == .
                                   1896 	.area CONST   (CODE)
      007D18                       1897 ___str_3:
      007D18 6C 65 64 30 5F 74 61  1898 	.ascii "led0_task"
             73 6B
      007D21 00                    1899 	.db 0x00
                                   1900 	.area CSEG    (CODE)
                           00052F  1901 Fmain$__str_4$0_0$0 == .
                                   1902 	.area CONST   (CODE)
      007D22                       1903 ___str_4:
      007D22 6C 65 64 31 5F 74 61  1904 	.ascii "led1_task"
             73 6B
      007D2B 00                    1905 	.db 0x00
                                   1906 	.area CSEG    (CODE)
                           00052F  1907 Fmain$__str_5$0_0$0 == .
                                   1908 	.area CONST   (CODE)
      007D2C                       1909 ___str_5:
      007D2C 6C 65 64 32 5F 74 61  1910 	.ascii "led2_task"
             73 6B
      007D35 00                    1911 	.db 0x00
                                   1912 	.area CSEG    (CODE)
                           00052F  1913 Fmain$__str_6$0_0$0 == .
                                   1914 	.area CONST   (CODE)
      007D36                       1915 ___str_6:
      007D36 6C 65 64 33 5F 74 61  1916 	.ascii "led3_task"
             73 6B
      007D3F 00                    1917 	.db 0x00
                                   1918 	.area CSEG    (CODE)
                                   1919 	.area XINIT   (CODE)
                                   1920 	.area CABS    (ABS,CODE)
