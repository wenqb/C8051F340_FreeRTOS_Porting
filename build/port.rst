                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module port
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _vTaskSwitchContext
                                     12 	.globl _xTaskIncrementTick
                                     13 	.globl _SPIF
                                     14 	.globl _WCOL
                                     15 	.globl _MODF
                                     16 	.globl _RXOVRN
                                     17 	.globl _NSSMD1
                                     18 	.globl _NSSMD0
                                     19 	.globl _TXBMT
                                     20 	.globl _SPIEN
                                     21 	.globl _AD0EN
                                     22 	.globl _AD0TM
                                     23 	.globl _AD0INT
                                     24 	.globl _AD0BUSY
                                     25 	.globl _AD0WINT
                                     26 	.globl _AD0CM2
                                     27 	.globl _AD0CM1
                                     28 	.globl _AD0CM0
                                     29 	.globl _CF
                                     30 	.globl _CR
                                     31 	.globl _CCF4
                                     32 	.globl _CCF3
                                     33 	.globl _CCF2
                                     34 	.globl _CCF1
                                     35 	.globl _CCF0
                                     36 	.globl _CY
                                     37 	.globl _AC
                                     38 	.globl _F0
                                     39 	.globl _RS1
                                     40 	.globl _RS0
                                     41 	.globl _OV
                                     42 	.globl _F1
                                     43 	.globl _PARITY
                                     44 	.globl _TF2H
                                     45 	.globl _TF2
                                     46 	.globl _TF2L
                                     47 	.globl _TF2LEN
                                     48 	.globl _T2CE
                                     49 	.globl _T2SPLIT
                                     50 	.globl _TR2
                                     51 	.globl _T2CSS
                                     52 	.globl _T2XCLK
                                     53 	.globl _MASTER
                                     54 	.globl _TXMODE
                                     55 	.globl _STA
                                     56 	.globl _STO
                                     57 	.globl _ACKRQ
                                     58 	.globl _ARBLOST
                                     59 	.globl _ACK
                                     60 	.globl _SI
                                     61 	.globl _PSPI0
                                     62 	.globl _PT2
                                     63 	.globl _PS0
                                     64 	.globl _PS
                                     65 	.globl _PT1
                                     66 	.globl _PX1
                                     67 	.globl _PT0
                                     68 	.globl _PX0
                                     69 	.globl _P3_7
                                     70 	.globl _P3_6
                                     71 	.globl _P3_5
                                     72 	.globl _P3_4
                                     73 	.globl _P3_3
                                     74 	.globl _P3_2
                                     75 	.globl _P3_1
                                     76 	.globl _P3_0
                                     77 	.globl _EA
                                     78 	.globl _ESPI0
                                     79 	.globl _ET2
                                     80 	.globl _ES0
                                     81 	.globl _ES
                                     82 	.globl _ET1
                                     83 	.globl _EX1
                                     84 	.globl _ET0
                                     85 	.globl _EX0
                                     86 	.globl _P2_7
                                     87 	.globl _P2_6
                                     88 	.globl _P2_5
                                     89 	.globl _P2_4
                                     90 	.globl _P2_3
                                     91 	.globl _P2_2
                                     92 	.globl _P2_1
                                     93 	.globl _P2_0
                                     94 	.globl _S0MODE
                                     95 	.globl _SM0
                                     96 	.globl _MCE0
                                     97 	.globl _SM2
                                     98 	.globl _REN0
                                     99 	.globl _REN
                                    100 	.globl _TB80
                                    101 	.globl _TB8
                                    102 	.globl _RB80
                                    103 	.globl _RB8
                                    104 	.globl _TI0
                                    105 	.globl _TI
                                    106 	.globl _RI0
                                    107 	.globl _RI
                                    108 	.globl _P1_7
                                    109 	.globl _P1_6
                                    110 	.globl _P1_5
                                    111 	.globl _P1_4
                                    112 	.globl _P1_3
                                    113 	.globl _P1_2
                                    114 	.globl _P1_1
                                    115 	.globl _P1_0
                                    116 	.globl _TF1
                                    117 	.globl _TR1
                                    118 	.globl _TF0
                                    119 	.globl _TR0
                                    120 	.globl _IE1
                                    121 	.globl _IT1
                                    122 	.globl _IE0
                                    123 	.globl _IT0
                                    124 	.globl _P0_7
                                    125 	.globl _P0_6
                                    126 	.globl _P0_5
                                    127 	.globl _P0_4
                                    128 	.globl _P0_3
                                    129 	.globl _P0_2
                                    130 	.globl _P0_1
                                    131 	.globl _P0_0
                                    132 	.globl _PCA0CP4
                                    133 	.globl _PCA0CP3
                                    134 	.globl _PCA0CP2
                                    135 	.globl _PCA0CP1
                                    136 	.globl _PCA0CP0
                                    137 	.globl _PCA0
                                    138 	.globl _ADC0LT
                                    139 	.globl _ADC0GT
                                    140 	.globl _ADC0
                                    141 	.globl _SBRL1
                                    142 	.globl _TMR3RL
                                    143 	.globl _TMR3
                                    144 	.globl _TMR2RL
                                    145 	.globl _RCAP2
                                    146 	.globl _TMR2
                                    147 	.globl _TMR1
                                    148 	.globl _TMR0
                                    149 	.globl _VDM0CN
                                    150 	.globl _PCA0CPH4
                                    151 	.globl _PCA0CPL4
                                    152 	.globl _PCA0CPH0
                                    153 	.globl _PCA0CPL0
                                    154 	.globl _PCA0H
                                    155 	.globl _PCA0L
                                    156 	.globl _SPI0CN
                                    157 	.globl _EIP2
                                    158 	.globl _EIP1
                                    159 	.globl _P4MDIN
                                    160 	.globl _P3MDIN
                                    161 	.globl _P3MODE
                                    162 	.globl _P2MDIN
                                    163 	.globl _P2MODE
                                    164 	.globl _P1MDIN
                                    165 	.globl _P1MODE
                                    166 	.globl _P0MDIN
                                    167 	.globl _P0MODE
                                    168 	.globl _B
                                    169 	.globl _RSTSRC
                                    170 	.globl _PCA0CPH3
                                    171 	.globl _PCA0CPL3
                                    172 	.globl _PCA0CPH2
                                    173 	.globl _PCA0CPL2
                                    174 	.globl _PCA0CPH1
                                    175 	.globl _PCA0CPL1
                                    176 	.globl _ADC0CN
                                    177 	.globl _EIE2
                                    178 	.globl _EIE1
                                    179 	.globl _SMOD1
                                    180 	.globl _INT01CF
                                    181 	.globl _IT01CF
                                    182 	.globl _XBR2
                                    183 	.globl _XBR1
                                    184 	.globl _XBR0
                                    185 	.globl _ACC
                                    186 	.globl _P3SKIP
                                    187 	.globl _PCA0CPM4
                                    188 	.globl _PCA0CPM3
                                    189 	.globl _PCA0CPM2
                                    190 	.globl _PCA0CPM1
                                    191 	.globl _PCA0CPM0
                                    192 	.globl _PCA0MD
                                    193 	.globl _PCA0CN
                                    194 	.globl _USB0XCN
                                    195 	.globl _P2SKIP
                                    196 	.globl _P1SKIP
                                    197 	.globl _P0SKIP
                                    198 	.globl _SBUF1
                                    199 	.globl _SCON1
                                    200 	.globl _REF0CN
                                    201 	.globl _PSW
                                    202 	.globl _TMR2H
                                    203 	.globl _TH2
                                    204 	.globl _TMR2L
                                    205 	.globl _TL2
                                    206 	.globl _TMR2RLH
                                    207 	.globl _RCAP2H
                                    208 	.globl _TMR2RLL
                                    209 	.globl _RCAP2L
                                    210 	.globl _REG0CN
                                    211 	.globl _TMR2CN
                                    212 	.globl _T2CON
                                    213 	.globl _P4
                                    214 	.globl _ADC0LTH
                                    215 	.globl _ADC0LTL
                                    216 	.globl _ADC0GTH
                                    217 	.globl _ADC0GTL
                                    218 	.globl _SMB0DAT
                                    219 	.globl _SMB0CF
                                    220 	.globl _SMB0CN
                                    221 	.globl _ADC0H
                                    222 	.globl _ADC0L
                                    223 	.globl _ADC0CF
                                    224 	.globl _AMX0P
                                    225 	.globl _AMX0N
                                    226 	.globl _CLKMUL
                                    227 	.globl _IP
                                    228 	.globl _FLKEY
                                    229 	.globl _FLSCL
                                    230 	.globl _SBRLH1
                                    231 	.globl _SBRLL1
                                    232 	.globl _OSCICL
                                    233 	.globl _OSCICN
                                    234 	.globl _OSCXCN
                                    235 	.globl _P3
                                    236 	.globl _PFE0CN
                                    237 	.globl _P4MDOUT
                                    238 	.globl _SBCON1
                                    239 	.globl __XPAGE
                                    240 	.globl _EMI0CN
                                    241 	.globl _CLKSEL
                                    242 	.globl _IE
                                    243 	.globl _P3MDOUT
                                    244 	.globl _P2MDOUT
                                    245 	.globl _P1MDOUT
                                    246 	.globl _P0MDOUT
                                    247 	.globl _SPI0DAT
                                    248 	.globl _SPI0CKR
                                    249 	.globl _SPI0CFG
                                    250 	.globl _P2
                                    251 	.globl _CPT0MX
                                    252 	.globl _CPT1MX
                                    253 	.globl _CPT0MD
                                    254 	.globl _CPT1MD
                                    255 	.globl _CPT0CN
                                    256 	.globl _CPT1CN
                                    257 	.globl _SBUF0
                                    258 	.globl _SBUF
                                    259 	.globl _SCON0
                                    260 	.globl _SCON
                                    261 	.globl _USB0DAT
                                    262 	.globl _USB0ADR
                                    263 	.globl _TMR3H
                                    264 	.globl _TMR3L
                                    265 	.globl _TMR3RLH
                                    266 	.globl _TMR3RLL
                                    267 	.globl _TMR3CN
                                    268 	.globl _P1
                                    269 	.globl _PSCTL
                                    270 	.globl _CKCON
                                    271 	.globl _TH1
                                    272 	.globl _TH0
                                    273 	.globl _TL1
                                    274 	.globl _TL0
                                    275 	.globl _TMOD
                                    276 	.globl _TCON
                                    277 	.globl _PCON
                                    278 	.globl _OSCLCN
                                    279 	.globl _EMI0CF
                                    280 	.globl _EMI0TC
                                    281 	.globl _DPH
                                    282 	.globl _DPL
                                    283 	.globl _SP
                                    284 	.globl _P0
                                    285 	.globl _pxPortInitialiseStack
                                    286 	.globl _xPortStartScheduler
                                    287 	.globl _vPortEndScheduler
                                    288 	.globl _vPortYield
                                    289 	.globl _vTimer2ISR
                                    290 ;--------------------------------------------------------
                                    291 ; special function registers
                                    292 ;--------------------------------------------------------
                                    293 	.area RSEG    (ABS,DATA)
      000000                        294 	.org 0x0000
                           000080   295 G$P0$0_0$0 == 0x0080
                           000080   296 _P0	=	0x0080
                           000081   297 G$SP$0_0$0 == 0x0081
                           000081   298 _SP	=	0x0081
                           000082   299 G$DPL$0_0$0 == 0x0082
                           000082   300 _DPL	=	0x0082
                           000083   301 G$DPH$0_0$0 == 0x0083
                           000083   302 _DPH	=	0x0083
                           000084   303 G$EMI0TC$0_0$0 == 0x0084
                           000084   304 _EMI0TC	=	0x0084
                           000085   305 G$EMI0CF$0_0$0 == 0x0085
                           000085   306 _EMI0CF	=	0x0085
                           000086   307 G$OSCLCN$0_0$0 == 0x0086
                           000086   308 _OSCLCN	=	0x0086
                           000087   309 G$PCON$0_0$0 == 0x0087
                           000087   310 _PCON	=	0x0087
                           000088   311 G$TCON$0_0$0 == 0x0088
                           000088   312 _TCON	=	0x0088
                           000089   313 G$TMOD$0_0$0 == 0x0089
                           000089   314 _TMOD	=	0x0089
                           00008A   315 G$TL0$0_0$0 == 0x008a
                           00008A   316 _TL0	=	0x008a
                           00008B   317 G$TL1$0_0$0 == 0x008b
                           00008B   318 _TL1	=	0x008b
                           00008C   319 G$TH0$0_0$0 == 0x008c
                           00008C   320 _TH0	=	0x008c
                           00008D   321 G$TH1$0_0$0 == 0x008d
                           00008D   322 _TH1	=	0x008d
                           00008E   323 G$CKCON$0_0$0 == 0x008e
                           00008E   324 _CKCON	=	0x008e
                           00008F   325 G$PSCTL$0_0$0 == 0x008f
                           00008F   326 _PSCTL	=	0x008f
                           000090   327 G$P1$0_0$0 == 0x0090
                           000090   328 _P1	=	0x0090
                           000091   329 G$TMR3CN$0_0$0 == 0x0091
                           000091   330 _TMR3CN	=	0x0091
                           000092   331 G$TMR3RLL$0_0$0 == 0x0092
                           000092   332 _TMR3RLL	=	0x0092
                           000093   333 G$TMR3RLH$0_0$0 == 0x0093
                           000093   334 _TMR3RLH	=	0x0093
                           000094   335 G$TMR3L$0_0$0 == 0x0094
                           000094   336 _TMR3L	=	0x0094
                           000095   337 G$TMR3H$0_0$0 == 0x0095
                           000095   338 _TMR3H	=	0x0095
                           000096   339 G$USB0ADR$0_0$0 == 0x0096
                           000096   340 _USB0ADR	=	0x0096
                           000097   341 G$USB0DAT$0_0$0 == 0x0097
                           000097   342 _USB0DAT	=	0x0097
                           000098   343 G$SCON$0_0$0 == 0x0098
                           000098   344 _SCON	=	0x0098
                           000098   345 G$SCON0$0_0$0 == 0x0098
                           000098   346 _SCON0	=	0x0098
                           000099   347 G$SBUF$0_0$0 == 0x0099
                           000099   348 _SBUF	=	0x0099
                           000099   349 G$SBUF0$0_0$0 == 0x0099
                           000099   350 _SBUF0	=	0x0099
                           00009A   351 G$CPT1CN$0_0$0 == 0x009a
                           00009A   352 _CPT1CN	=	0x009a
                           00009B   353 G$CPT0CN$0_0$0 == 0x009b
                           00009B   354 _CPT0CN	=	0x009b
                           00009C   355 G$CPT1MD$0_0$0 == 0x009c
                           00009C   356 _CPT1MD	=	0x009c
                           00009D   357 G$CPT0MD$0_0$0 == 0x009d
                           00009D   358 _CPT0MD	=	0x009d
                           00009E   359 G$CPT1MX$0_0$0 == 0x009e
                           00009E   360 _CPT1MX	=	0x009e
                           00009F   361 G$CPT0MX$0_0$0 == 0x009f
                           00009F   362 _CPT0MX	=	0x009f
                           0000A0   363 G$P2$0_0$0 == 0x00a0
                           0000A0   364 _P2	=	0x00a0
                           0000A1   365 G$SPI0CFG$0_0$0 == 0x00a1
                           0000A1   366 _SPI0CFG	=	0x00a1
                           0000A2   367 G$SPI0CKR$0_0$0 == 0x00a2
                           0000A2   368 _SPI0CKR	=	0x00a2
                           0000A3   369 G$SPI0DAT$0_0$0 == 0x00a3
                           0000A3   370 _SPI0DAT	=	0x00a3
                           0000A4   371 G$P0MDOUT$0_0$0 == 0x00a4
                           0000A4   372 _P0MDOUT	=	0x00a4
                           0000A5   373 G$P1MDOUT$0_0$0 == 0x00a5
                           0000A5   374 _P1MDOUT	=	0x00a5
                           0000A6   375 G$P2MDOUT$0_0$0 == 0x00a6
                           0000A6   376 _P2MDOUT	=	0x00a6
                           0000A7   377 G$P3MDOUT$0_0$0 == 0x00a7
                           0000A7   378 _P3MDOUT	=	0x00a7
                           0000A8   379 G$IE$0_0$0 == 0x00a8
                           0000A8   380 _IE	=	0x00a8
                           0000A9   381 G$CLKSEL$0_0$0 == 0x00a9
                           0000A9   382 _CLKSEL	=	0x00a9
                           0000AA   383 G$EMI0CN$0_0$0 == 0x00aa
                           0000AA   384 _EMI0CN	=	0x00aa
                           0000AA   385 G$_XPAGE$0_0$0 == 0x00aa
                           0000AA   386 __XPAGE	=	0x00aa
                           0000AC   387 G$SBCON1$0_0$0 == 0x00ac
                           0000AC   388 _SBCON1	=	0x00ac
                           0000AE   389 G$P4MDOUT$0_0$0 == 0x00ae
                           0000AE   390 _P4MDOUT	=	0x00ae
                           0000AF   391 G$PFE0CN$0_0$0 == 0x00af
                           0000AF   392 _PFE0CN	=	0x00af
                           0000B0   393 G$P3$0_0$0 == 0x00b0
                           0000B0   394 _P3	=	0x00b0
                           0000B1   395 G$OSCXCN$0_0$0 == 0x00b1
                           0000B1   396 _OSCXCN	=	0x00b1
                           0000B2   397 G$OSCICN$0_0$0 == 0x00b2
                           0000B2   398 _OSCICN	=	0x00b2
                           0000B3   399 G$OSCICL$0_0$0 == 0x00b3
                           0000B3   400 _OSCICL	=	0x00b3
                           0000B4   401 G$SBRLL1$0_0$0 == 0x00b4
                           0000B4   402 _SBRLL1	=	0x00b4
                           0000B5   403 G$SBRLH1$0_0$0 == 0x00b5
                           0000B5   404 _SBRLH1	=	0x00b5
                           0000B6   405 G$FLSCL$0_0$0 == 0x00b6
                           0000B6   406 _FLSCL	=	0x00b6
                           0000B7   407 G$FLKEY$0_0$0 == 0x00b7
                           0000B7   408 _FLKEY	=	0x00b7
                           0000B8   409 G$IP$0_0$0 == 0x00b8
                           0000B8   410 _IP	=	0x00b8
                           0000B9   411 G$CLKMUL$0_0$0 == 0x00b9
                           0000B9   412 _CLKMUL	=	0x00b9
                           0000BA   413 G$AMX0N$0_0$0 == 0x00ba
                           0000BA   414 _AMX0N	=	0x00ba
                           0000BB   415 G$AMX0P$0_0$0 == 0x00bb
                           0000BB   416 _AMX0P	=	0x00bb
                           0000BC   417 G$ADC0CF$0_0$0 == 0x00bc
                           0000BC   418 _ADC0CF	=	0x00bc
                           0000BD   419 G$ADC0L$0_0$0 == 0x00bd
                           0000BD   420 _ADC0L	=	0x00bd
                           0000BE   421 G$ADC0H$0_0$0 == 0x00be
                           0000BE   422 _ADC0H	=	0x00be
                           0000C0   423 G$SMB0CN$0_0$0 == 0x00c0
                           0000C0   424 _SMB0CN	=	0x00c0
                           0000C1   425 G$SMB0CF$0_0$0 == 0x00c1
                           0000C1   426 _SMB0CF	=	0x00c1
                           0000C2   427 G$SMB0DAT$0_0$0 == 0x00c2
                           0000C2   428 _SMB0DAT	=	0x00c2
                           0000C3   429 G$ADC0GTL$0_0$0 == 0x00c3
                           0000C3   430 _ADC0GTL	=	0x00c3
                           0000C4   431 G$ADC0GTH$0_0$0 == 0x00c4
                           0000C4   432 _ADC0GTH	=	0x00c4
                           0000C5   433 G$ADC0LTL$0_0$0 == 0x00c5
                           0000C5   434 _ADC0LTL	=	0x00c5
                           0000C6   435 G$ADC0LTH$0_0$0 == 0x00c6
                           0000C6   436 _ADC0LTH	=	0x00c6
                           0000C7   437 G$P4$0_0$0 == 0x00c7
                           0000C7   438 _P4	=	0x00c7
                           0000C8   439 G$T2CON$0_0$0 == 0x00c8
                           0000C8   440 _T2CON	=	0x00c8
                           0000C8   441 G$TMR2CN$0_0$0 == 0x00c8
                           0000C8   442 _TMR2CN	=	0x00c8
                           0000C9   443 G$REG0CN$0_0$0 == 0x00c9
                           0000C9   444 _REG0CN	=	0x00c9
                           0000CA   445 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   446 _RCAP2L	=	0x00ca
                           0000CA   447 G$TMR2RLL$0_0$0 == 0x00ca
                           0000CA   448 _TMR2RLL	=	0x00ca
                           0000CB   449 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   450 _RCAP2H	=	0x00cb
                           0000CB   451 G$TMR2RLH$0_0$0 == 0x00cb
                           0000CB   452 _TMR2RLH	=	0x00cb
                           0000CC   453 G$TL2$0_0$0 == 0x00cc
                           0000CC   454 _TL2	=	0x00cc
                           0000CC   455 G$TMR2L$0_0$0 == 0x00cc
                           0000CC   456 _TMR2L	=	0x00cc
                           0000CD   457 G$TH2$0_0$0 == 0x00cd
                           0000CD   458 _TH2	=	0x00cd
                           0000CD   459 G$TMR2H$0_0$0 == 0x00cd
                           0000CD   460 _TMR2H	=	0x00cd
                           0000D0   461 G$PSW$0_0$0 == 0x00d0
                           0000D0   462 _PSW	=	0x00d0
                           0000D1   463 G$REF0CN$0_0$0 == 0x00d1
                           0000D1   464 _REF0CN	=	0x00d1
                           0000D2   465 G$SCON1$0_0$0 == 0x00d2
                           0000D2   466 _SCON1	=	0x00d2
                           0000D3   467 G$SBUF1$0_0$0 == 0x00d3
                           0000D3   468 _SBUF1	=	0x00d3
                           0000D4   469 G$P0SKIP$0_0$0 == 0x00d4
                           0000D4   470 _P0SKIP	=	0x00d4
                           0000D5   471 G$P1SKIP$0_0$0 == 0x00d5
                           0000D5   472 _P1SKIP	=	0x00d5
                           0000D6   473 G$P2SKIP$0_0$0 == 0x00d6
                           0000D6   474 _P2SKIP	=	0x00d6
                           0000D7   475 G$USB0XCN$0_0$0 == 0x00d7
                           0000D7   476 _USB0XCN	=	0x00d7
                           0000D8   477 G$PCA0CN$0_0$0 == 0x00d8
                           0000D8   478 _PCA0CN	=	0x00d8
                           0000D9   479 G$PCA0MD$0_0$0 == 0x00d9
                           0000D9   480 _PCA0MD	=	0x00d9
                           0000DA   481 G$PCA0CPM0$0_0$0 == 0x00da
                           0000DA   482 _PCA0CPM0	=	0x00da
                           0000DB   483 G$PCA0CPM1$0_0$0 == 0x00db
                           0000DB   484 _PCA0CPM1	=	0x00db
                           0000DC   485 G$PCA0CPM2$0_0$0 == 0x00dc
                           0000DC   486 _PCA0CPM2	=	0x00dc
                           0000DD   487 G$PCA0CPM3$0_0$0 == 0x00dd
                           0000DD   488 _PCA0CPM3	=	0x00dd
                           0000DE   489 G$PCA0CPM4$0_0$0 == 0x00de
                           0000DE   490 _PCA0CPM4	=	0x00de
                           0000DF   491 G$P3SKIP$0_0$0 == 0x00df
                           0000DF   492 _P3SKIP	=	0x00df
                           0000E0   493 G$ACC$0_0$0 == 0x00e0
                           0000E0   494 _ACC	=	0x00e0
                           0000E1   495 G$XBR0$0_0$0 == 0x00e1
                           0000E1   496 _XBR0	=	0x00e1
                           0000E2   497 G$XBR1$0_0$0 == 0x00e2
                           0000E2   498 _XBR1	=	0x00e2
                           0000E3   499 G$XBR2$0_0$0 == 0x00e3
                           0000E3   500 _XBR2	=	0x00e3
                           0000E4   501 G$IT01CF$0_0$0 == 0x00e4
                           0000E4   502 _IT01CF	=	0x00e4
                           0000E4   503 G$INT01CF$0_0$0 == 0x00e4
                           0000E4   504 _INT01CF	=	0x00e4
                           0000E5   505 G$SMOD1$0_0$0 == 0x00e5
                           0000E5   506 _SMOD1	=	0x00e5
                           0000E6   507 G$EIE1$0_0$0 == 0x00e6
                           0000E6   508 _EIE1	=	0x00e6
                           0000E7   509 G$EIE2$0_0$0 == 0x00e7
                           0000E7   510 _EIE2	=	0x00e7
                           0000E8   511 G$ADC0CN$0_0$0 == 0x00e8
                           0000E8   512 _ADC0CN	=	0x00e8
                           0000E9   513 G$PCA0CPL1$0_0$0 == 0x00e9
                           0000E9   514 _PCA0CPL1	=	0x00e9
                           0000EA   515 G$PCA0CPH1$0_0$0 == 0x00ea
                           0000EA   516 _PCA0CPH1	=	0x00ea
                           0000EB   517 G$PCA0CPL2$0_0$0 == 0x00eb
                           0000EB   518 _PCA0CPL2	=	0x00eb
                           0000EC   519 G$PCA0CPH2$0_0$0 == 0x00ec
                           0000EC   520 _PCA0CPH2	=	0x00ec
                           0000ED   521 G$PCA0CPL3$0_0$0 == 0x00ed
                           0000ED   522 _PCA0CPL3	=	0x00ed
                           0000EE   523 G$PCA0CPH3$0_0$0 == 0x00ee
                           0000EE   524 _PCA0CPH3	=	0x00ee
                           0000EF   525 G$RSTSRC$0_0$0 == 0x00ef
                           0000EF   526 _RSTSRC	=	0x00ef
                           0000F0   527 G$B$0_0$0 == 0x00f0
                           0000F0   528 _B	=	0x00f0
                           0000F1   529 G$P0MODE$0_0$0 == 0x00f1
                           0000F1   530 _P0MODE	=	0x00f1
                           0000F1   531 G$P0MDIN$0_0$0 == 0x00f1
                           0000F1   532 _P0MDIN	=	0x00f1
                           0000F2   533 G$P1MODE$0_0$0 == 0x00f2
                           0000F2   534 _P1MODE	=	0x00f2
                           0000F2   535 G$P1MDIN$0_0$0 == 0x00f2
                           0000F2   536 _P1MDIN	=	0x00f2
                           0000F3   537 G$P2MODE$0_0$0 == 0x00f3
                           0000F3   538 _P2MODE	=	0x00f3
                           0000F3   539 G$P2MDIN$0_0$0 == 0x00f3
                           0000F3   540 _P2MDIN	=	0x00f3
                           0000F4   541 G$P3MODE$0_0$0 == 0x00f4
                           0000F4   542 _P3MODE	=	0x00f4
                           0000F4   543 G$P3MDIN$0_0$0 == 0x00f4
                           0000F4   544 _P3MDIN	=	0x00f4
                           0000F5   545 G$P4MDIN$0_0$0 == 0x00f5
                           0000F5   546 _P4MDIN	=	0x00f5
                           0000F6   547 G$EIP1$0_0$0 == 0x00f6
                           0000F6   548 _EIP1	=	0x00f6
                           0000F7   549 G$EIP2$0_0$0 == 0x00f7
                           0000F7   550 _EIP2	=	0x00f7
                           0000F8   551 G$SPI0CN$0_0$0 == 0x00f8
                           0000F8   552 _SPI0CN	=	0x00f8
                           0000F9   553 G$PCA0L$0_0$0 == 0x00f9
                           0000F9   554 _PCA0L	=	0x00f9
                           0000FA   555 G$PCA0H$0_0$0 == 0x00fa
                           0000FA   556 _PCA0H	=	0x00fa
                           0000FB   557 G$PCA0CPL0$0_0$0 == 0x00fb
                           0000FB   558 _PCA0CPL0	=	0x00fb
                           0000FC   559 G$PCA0CPH0$0_0$0 == 0x00fc
                           0000FC   560 _PCA0CPH0	=	0x00fc
                           0000FD   561 G$PCA0CPL4$0_0$0 == 0x00fd
                           0000FD   562 _PCA0CPL4	=	0x00fd
                           0000FE   563 G$PCA0CPH4$0_0$0 == 0x00fe
                           0000FE   564 _PCA0CPH4	=	0x00fe
                           0000FF   565 G$VDM0CN$0_0$0 == 0x00ff
                           0000FF   566 _VDM0CN	=	0x00ff
                           008C8A   567 G$TMR0$0_0$0 == 0x8c8a
                           008C8A   568 _TMR0	=	0x8c8a
                           008D8B   569 G$TMR1$0_0$0 == 0x8d8b
                           008D8B   570 _TMR1	=	0x8d8b
                           00CDCC   571 G$TMR2$0_0$0 == 0xcdcc
                           00CDCC   572 _TMR2	=	0xcdcc
                           00CBCA   573 G$RCAP2$0_0$0 == 0xcbca
                           00CBCA   574 _RCAP2	=	0xcbca
                           00CBCA   575 G$TMR2RL$0_0$0 == 0xcbca
                           00CBCA   576 _TMR2RL	=	0xcbca
                           009594   577 G$TMR3$0_0$0 == 0x9594
                           009594   578 _TMR3	=	0x9594
                           009392   579 G$TMR3RL$0_0$0 == 0x9392
                           009392   580 _TMR3RL	=	0x9392
                           00B5B4   581 G$SBRL1$0_0$0 == 0xb5b4
                           00B5B4   582 _SBRL1	=	0xb5b4
                           00BEBD   583 G$ADC0$0_0$0 == 0xbebd
                           00BEBD   584 _ADC0	=	0xbebd
                           00C4C3   585 G$ADC0GT$0_0$0 == 0xc4c3
                           00C4C3   586 _ADC0GT	=	0xc4c3
                           00C6C5   587 G$ADC0LT$0_0$0 == 0xc6c5
                           00C6C5   588 _ADC0LT	=	0xc6c5
                           00FAF9   589 G$PCA0$0_0$0 == 0xfaf9
                           00FAF9   590 _PCA0	=	0xfaf9
                           00FCFB   591 G$PCA0CP0$0_0$0 == 0xfcfb
                           00FCFB   592 _PCA0CP0	=	0xfcfb
                           00EAE9   593 G$PCA0CP1$0_0$0 == 0xeae9
                           00EAE9   594 _PCA0CP1	=	0xeae9
                           00ECEB   595 G$PCA0CP2$0_0$0 == 0xeceb
                           00ECEB   596 _PCA0CP2	=	0xeceb
                           00EEED   597 G$PCA0CP3$0_0$0 == 0xeeed
                           00EEED   598 _PCA0CP3	=	0xeeed
                           00FEFD   599 G$PCA0CP4$0_0$0 == 0xfefd
                           00FEFD   600 _PCA0CP4	=	0xfefd
                                    601 ;--------------------------------------------------------
                                    602 ; special function bits
                                    603 ;--------------------------------------------------------
                                    604 	.area RSEG    (ABS,DATA)
      000000                        605 	.org 0x0000
                           000080   606 G$P0_0$0_0$0 == 0x0080
                           000080   607 _P0_0	=	0x0080
                           000081   608 G$P0_1$0_0$0 == 0x0081
                           000081   609 _P0_1	=	0x0081
                           000082   610 G$P0_2$0_0$0 == 0x0082
                           000082   611 _P0_2	=	0x0082
                           000083   612 G$P0_3$0_0$0 == 0x0083
                           000083   613 _P0_3	=	0x0083
                           000084   614 G$P0_4$0_0$0 == 0x0084
                           000084   615 _P0_4	=	0x0084
                           000085   616 G$P0_5$0_0$0 == 0x0085
                           000085   617 _P0_5	=	0x0085
                           000086   618 G$P0_6$0_0$0 == 0x0086
                           000086   619 _P0_6	=	0x0086
                           000087   620 G$P0_7$0_0$0 == 0x0087
                           000087   621 _P0_7	=	0x0087
                           000088   622 G$IT0$0_0$0 == 0x0088
                           000088   623 _IT0	=	0x0088
                           000089   624 G$IE0$0_0$0 == 0x0089
                           000089   625 _IE0	=	0x0089
                           00008A   626 G$IT1$0_0$0 == 0x008a
                           00008A   627 _IT1	=	0x008a
                           00008B   628 G$IE1$0_0$0 == 0x008b
                           00008B   629 _IE1	=	0x008b
                           00008C   630 G$TR0$0_0$0 == 0x008c
                           00008C   631 _TR0	=	0x008c
                           00008D   632 G$TF0$0_0$0 == 0x008d
                           00008D   633 _TF0	=	0x008d
                           00008E   634 G$TR1$0_0$0 == 0x008e
                           00008E   635 _TR1	=	0x008e
                           00008F   636 G$TF1$0_0$0 == 0x008f
                           00008F   637 _TF1	=	0x008f
                           000090   638 G$P1_0$0_0$0 == 0x0090
                           000090   639 _P1_0	=	0x0090
                           000091   640 G$P1_1$0_0$0 == 0x0091
                           000091   641 _P1_1	=	0x0091
                           000092   642 G$P1_2$0_0$0 == 0x0092
                           000092   643 _P1_2	=	0x0092
                           000093   644 G$P1_3$0_0$0 == 0x0093
                           000093   645 _P1_3	=	0x0093
                           000094   646 G$P1_4$0_0$0 == 0x0094
                           000094   647 _P1_4	=	0x0094
                           000095   648 G$P1_5$0_0$0 == 0x0095
                           000095   649 _P1_5	=	0x0095
                           000096   650 G$P1_6$0_0$0 == 0x0096
                           000096   651 _P1_6	=	0x0096
                           000097   652 G$P1_7$0_0$0 == 0x0097
                           000097   653 _P1_7	=	0x0097
                           000098   654 G$RI$0_0$0 == 0x0098
                           000098   655 _RI	=	0x0098
                           000098   656 G$RI0$0_0$0 == 0x0098
                           000098   657 _RI0	=	0x0098
                           000099   658 G$TI$0_0$0 == 0x0099
                           000099   659 _TI	=	0x0099
                           000099   660 G$TI0$0_0$0 == 0x0099
                           000099   661 _TI0	=	0x0099
                           00009A   662 G$RB8$0_0$0 == 0x009a
                           00009A   663 _RB8	=	0x009a
                           00009A   664 G$RB80$0_0$0 == 0x009a
                           00009A   665 _RB80	=	0x009a
                           00009B   666 G$TB8$0_0$0 == 0x009b
                           00009B   667 _TB8	=	0x009b
                           00009B   668 G$TB80$0_0$0 == 0x009b
                           00009B   669 _TB80	=	0x009b
                           00009C   670 G$REN$0_0$0 == 0x009c
                           00009C   671 _REN	=	0x009c
                           00009C   672 G$REN0$0_0$0 == 0x009c
                           00009C   673 _REN0	=	0x009c
                           00009D   674 G$SM2$0_0$0 == 0x009d
                           00009D   675 _SM2	=	0x009d
                           00009D   676 G$MCE0$0_0$0 == 0x009d
                           00009D   677 _MCE0	=	0x009d
                           00009F   678 G$SM0$0_0$0 == 0x009f
                           00009F   679 _SM0	=	0x009f
                           00009F   680 G$S0MODE$0_0$0 == 0x009f
                           00009F   681 _S0MODE	=	0x009f
                           0000A0   682 G$P2_0$0_0$0 == 0x00a0
                           0000A0   683 _P2_0	=	0x00a0
                           0000A1   684 G$P2_1$0_0$0 == 0x00a1
                           0000A1   685 _P2_1	=	0x00a1
                           0000A2   686 G$P2_2$0_0$0 == 0x00a2
                           0000A2   687 _P2_2	=	0x00a2
                           0000A3   688 G$P2_3$0_0$0 == 0x00a3
                           0000A3   689 _P2_3	=	0x00a3
                           0000A4   690 G$P2_4$0_0$0 == 0x00a4
                           0000A4   691 _P2_4	=	0x00a4
                           0000A5   692 G$P2_5$0_0$0 == 0x00a5
                           0000A5   693 _P2_5	=	0x00a5
                           0000A6   694 G$P2_6$0_0$0 == 0x00a6
                           0000A6   695 _P2_6	=	0x00a6
                           0000A7   696 G$P2_7$0_0$0 == 0x00a7
                           0000A7   697 _P2_7	=	0x00a7
                           0000A8   698 G$EX0$0_0$0 == 0x00a8
                           0000A8   699 _EX0	=	0x00a8
                           0000A9   700 G$ET0$0_0$0 == 0x00a9
                           0000A9   701 _ET0	=	0x00a9
                           0000AA   702 G$EX1$0_0$0 == 0x00aa
                           0000AA   703 _EX1	=	0x00aa
                           0000AB   704 G$ET1$0_0$0 == 0x00ab
                           0000AB   705 _ET1	=	0x00ab
                           0000AC   706 G$ES$0_0$0 == 0x00ac
                           0000AC   707 _ES	=	0x00ac
                           0000AC   708 G$ES0$0_0$0 == 0x00ac
                           0000AC   709 _ES0	=	0x00ac
                           0000AD   710 G$ET2$0_0$0 == 0x00ad
                           0000AD   711 _ET2	=	0x00ad
                           0000AE   712 G$ESPI0$0_0$0 == 0x00ae
                           0000AE   713 _ESPI0	=	0x00ae
                           0000AF   714 G$EA$0_0$0 == 0x00af
                           0000AF   715 _EA	=	0x00af
                           0000B0   716 G$P3_0$0_0$0 == 0x00b0
                           0000B0   717 _P3_0	=	0x00b0
                           0000B1   718 G$P3_1$0_0$0 == 0x00b1
                           0000B1   719 _P3_1	=	0x00b1
                           0000B2   720 G$P3_2$0_0$0 == 0x00b2
                           0000B2   721 _P3_2	=	0x00b2
                           0000B3   722 G$P3_3$0_0$0 == 0x00b3
                           0000B3   723 _P3_3	=	0x00b3
                           0000B4   724 G$P3_4$0_0$0 == 0x00b4
                           0000B4   725 _P3_4	=	0x00b4
                           0000B5   726 G$P3_5$0_0$0 == 0x00b5
                           0000B5   727 _P3_5	=	0x00b5
                           0000B6   728 G$P3_6$0_0$0 == 0x00b6
                           0000B6   729 _P3_6	=	0x00b6
                           0000B7   730 G$P3_7$0_0$0 == 0x00b7
                           0000B7   731 _P3_7	=	0x00b7
                           0000B8   732 G$PX0$0_0$0 == 0x00b8
                           0000B8   733 _PX0	=	0x00b8
                           0000B9   734 G$PT0$0_0$0 == 0x00b9
                           0000B9   735 _PT0	=	0x00b9
                           0000BA   736 G$PX1$0_0$0 == 0x00ba
                           0000BA   737 _PX1	=	0x00ba
                           0000BB   738 G$PT1$0_0$0 == 0x00bb
                           0000BB   739 _PT1	=	0x00bb
                           0000BC   740 G$PS$0_0$0 == 0x00bc
                           0000BC   741 _PS	=	0x00bc
                           0000BC   742 G$PS0$0_0$0 == 0x00bc
                           0000BC   743 _PS0	=	0x00bc
                           0000BD   744 G$PT2$0_0$0 == 0x00bd
                           0000BD   745 _PT2	=	0x00bd
                           0000BE   746 G$PSPI0$0_0$0 == 0x00be
                           0000BE   747 _PSPI0	=	0x00be
                           0000C0   748 G$SI$0_0$0 == 0x00c0
                           0000C0   749 _SI	=	0x00c0
                           0000C1   750 G$ACK$0_0$0 == 0x00c1
                           0000C1   751 _ACK	=	0x00c1
                           0000C2   752 G$ARBLOST$0_0$0 == 0x00c2
                           0000C2   753 _ARBLOST	=	0x00c2
                           0000C3   754 G$ACKRQ$0_0$0 == 0x00c3
                           0000C3   755 _ACKRQ	=	0x00c3
                           0000C4   756 G$STO$0_0$0 == 0x00c4
                           0000C4   757 _STO	=	0x00c4
                           0000C5   758 G$STA$0_0$0 == 0x00c5
                           0000C5   759 _STA	=	0x00c5
                           0000C6   760 G$TXMODE$0_0$0 == 0x00c6
                           0000C6   761 _TXMODE	=	0x00c6
                           0000C7   762 G$MASTER$0_0$0 == 0x00c7
                           0000C7   763 _MASTER	=	0x00c7
                           0000C8   764 G$T2XCLK$0_0$0 == 0x00c8
                           0000C8   765 _T2XCLK	=	0x00c8
                           0000C9   766 G$T2CSS$0_0$0 == 0x00c9
                           0000C9   767 _T2CSS	=	0x00c9
                           0000CA   768 G$TR2$0_0$0 == 0x00ca
                           0000CA   769 _TR2	=	0x00ca
                           0000CB   770 G$T2SPLIT$0_0$0 == 0x00cb
                           0000CB   771 _T2SPLIT	=	0x00cb
                           0000CC   772 G$T2CE$0_0$0 == 0x00cc
                           0000CC   773 _T2CE	=	0x00cc
                           0000CD   774 G$TF2LEN$0_0$0 == 0x00cd
                           0000CD   775 _TF2LEN	=	0x00cd
                           0000CE   776 G$TF2L$0_0$0 == 0x00ce
                           0000CE   777 _TF2L	=	0x00ce
                           0000CF   778 G$TF2$0_0$0 == 0x00cf
                           0000CF   779 _TF2	=	0x00cf
                           0000CF   780 G$TF2H$0_0$0 == 0x00cf
                           0000CF   781 _TF2H	=	0x00cf
                           0000D0   782 G$PARITY$0_0$0 == 0x00d0
                           0000D0   783 _PARITY	=	0x00d0
                           0000D1   784 G$F1$0_0$0 == 0x00d1
                           0000D1   785 _F1	=	0x00d1
                           0000D2   786 G$OV$0_0$0 == 0x00d2
                           0000D2   787 _OV	=	0x00d2
                           0000D3   788 G$RS0$0_0$0 == 0x00d3
                           0000D3   789 _RS0	=	0x00d3
                           0000D4   790 G$RS1$0_0$0 == 0x00d4
                           0000D4   791 _RS1	=	0x00d4
                           0000D5   792 G$F0$0_0$0 == 0x00d5
                           0000D5   793 _F0	=	0x00d5
                           0000D6   794 G$AC$0_0$0 == 0x00d6
                           0000D6   795 _AC	=	0x00d6
                           0000D7   796 G$CY$0_0$0 == 0x00d7
                           0000D7   797 _CY	=	0x00d7
                           0000D8   798 G$CCF0$0_0$0 == 0x00d8
                           0000D8   799 _CCF0	=	0x00d8
                           0000D9   800 G$CCF1$0_0$0 == 0x00d9
                           0000D9   801 _CCF1	=	0x00d9
                           0000DA   802 G$CCF2$0_0$0 == 0x00da
                           0000DA   803 _CCF2	=	0x00da
                           0000DB   804 G$CCF3$0_0$0 == 0x00db
                           0000DB   805 _CCF3	=	0x00db
                           0000DC   806 G$CCF4$0_0$0 == 0x00dc
                           0000DC   807 _CCF4	=	0x00dc
                           0000DE   808 G$CR$0_0$0 == 0x00de
                           0000DE   809 _CR	=	0x00de
                           0000DF   810 G$CF$0_0$0 == 0x00df
                           0000DF   811 _CF	=	0x00df
                           0000E8   812 G$AD0CM0$0_0$0 == 0x00e8
                           0000E8   813 _AD0CM0	=	0x00e8
                           0000E9   814 G$AD0CM1$0_0$0 == 0x00e9
                           0000E9   815 _AD0CM1	=	0x00e9
                           0000EA   816 G$AD0CM2$0_0$0 == 0x00ea
                           0000EA   817 _AD0CM2	=	0x00ea
                           0000EB   818 G$AD0WINT$0_0$0 == 0x00eb
                           0000EB   819 _AD0WINT	=	0x00eb
                           0000EC   820 G$AD0BUSY$0_0$0 == 0x00ec
                           0000EC   821 _AD0BUSY	=	0x00ec
                           0000ED   822 G$AD0INT$0_0$0 == 0x00ed
                           0000ED   823 _AD0INT	=	0x00ed
                           0000EE   824 G$AD0TM$0_0$0 == 0x00ee
                           0000EE   825 _AD0TM	=	0x00ee
                           0000EF   826 G$AD0EN$0_0$0 == 0x00ef
                           0000EF   827 _AD0EN	=	0x00ef
                           0000F8   828 G$SPIEN$0_0$0 == 0x00f8
                           0000F8   829 _SPIEN	=	0x00f8
                           0000F9   830 G$TXBMT$0_0$0 == 0x00f9
                           0000F9   831 _TXBMT	=	0x00f9
                           0000FA   832 G$NSSMD0$0_0$0 == 0x00fa
                           0000FA   833 _NSSMD0	=	0x00fa
                           0000FB   834 G$NSSMD1$0_0$0 == 0x00fb
                           0000FB   835 _NSSMD1	=	0x00fb
                           0000FC   836 G$RXOVRN$0_0$0 == 0x00fc
                           0000FC   837 _RXOVRN	=	0x00fc
                           0000FD   838 G$MODF$0_0$0 == 0x00fd
                           0000FD   839 _MODF	=	0x00fd
                           0000FE   840 G$WCOL$0_0$0 == 0x00fe
                           0000FE   841 _WCOL	=	0x00fe
                           0000FF   842 G$SPIF$0_0$0 == 0x00ff
                           0000FF   843 _SPIF	=	0x00ff
                                    844 ;--------------------------------------------------------
                                    845 ; overlayable register banks
                                    846 ;--------------------------------------------------------
                                    847 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        848 	.ds 8
                                    849 ;--------------------------------------------------------
                                    850 ; overlayable bit register bank
                                    851 ;--------------------------------------------------------
                                    852 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        853 bits:
      000020                        854 	.ds 1
                           008000   855 	b0 = bits[0]
                           008100   856 	b1 = bits[1]
                           008200   857 	b2 = bits[2]
                           008300   858 	b3 = bits[3]
                           008400   859 	b4 = bits[4]
                           008500   860 	b5 = bits[5]
                           008600   861 	b6 = bits[6]
                           008700   862 	b7 = bits[7]
                                    863 ;--------------------------------------------------------
                                    864 ; internal ram data
                                    865 ;--------------------------------------------------------
                                    866 	.area DSEG    (DATA)
                           000000   867 Fport$ucStackBytes$0_0$0==.
      000009                        868 _ucStackBytes:
      000009                        869 	.ds 1
                           000001   870 Fport$pxXRAMStack$0_0$0==.
      00000A                        871 _pxXRAMStack:
      00000A                        872 	.ds 2
                           000003   873 Fport$pxRAMStack$0_0$0==.
      00000C                        874 _pxRAMStack:
      00000C                        875 	.ds 1
                                    876 ;--------------------------------------------------------
                                    877 ; overlayable items in internal ram
                                    878 ;--------------------------------------------------------
                                    879 ;--------------------------------------------------------
                                    880 ; indirectly addressable internal ram data
                                    881 ;--------------------------------------------------------
                                    882 	.area ISEG    (DATA)
                                    883 ;--------------------------------------------------------
                                    884 ; absolute internal ram data
                                    885 ;--------------------------------------------------------
                                    886 	.area IABS    (ABS,DATA)
                                    887 	.area IABS    (ABS,DATA)
                                    888 ;--------------------------------------------------------
                                    889 ; bit data
                                    890 ;--------------------------------------------------------
                                    891 	.area BSEG    (BIT)
                                    892 ;--------------------------------------------------------
                                    893 ; paged external ram data
                                    894 ;--------------------------------------------------------
                                    895 	.area PSEG    (PAG,XDATA)
                                    896 ;--------------------------------------------------------
                                    897 ; external ram data
                                    898 ;--------------------------------------------------------
                                    899 	.area XSEG    (XDATA)
                                    900 ;--------------------------------------------------------
                                    901 ; absolute external ram data
                                    902 ;--------------------------------------------------------
                                    903 	.area XABS    (ABS,XDATA)
                                    904 ;--------------------------------------------------------
                                    905 ; external initialized ram data
                                    906 ;--------------------------------------------------------
                                    907 	.area XISEG   (XDATA)
                                    908 	.area HOME    (CODE)
                                    909 	.area GSINIT0 (CODE)
                                    910 	.area GSINIT1 (CODE)
                                    911 	.area GSINIT2 (CODE)
                                    912 	.area GSINIT3 (CODE)
                                    913 	.area GSINIT4 (CODE)
                                    914 	.area GSINIT5 (CODE)
                                    915 	.area GSINIT  (CODE)
                                    916 	.area GSFINAL (CODE)
                                    917 	.area CSEG    (CODE)
                                    918 ;--------------------------------------------------------
                                    919 ; global & static initialisations
                                    920 ;--------------------------------------------------------
                                    921 	.area HOME    (CODE)
                                    922 	.area GSINIT  (CODE)
                                    923 	.area GSFINAL (CODE)
                                    924 	.area GSINIT  (CODE)
                                    925 ;--------------------------------------------------------
                                    926 ; Home
                                    927 ;--------------------------------------------------------
                                    928 	.area HOME    (CODE)
                                    929 	.area HOME    (CODE)
                                    930 ;--------------------------------------------------------
                                    931 ; code
                                    932 ;--------------------------------------------------------
                                    933 	.area CSEG    (CODE)
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'pxPortInitialiseStack'
                                    936 ;------------------------------------------------------------
                                    937 ;pxCode                    Allocated to stack - _bp -4
                                    938 ;pvParameters              Allocated to stack - _bp -7
                                    939 ;pxTopOfStack              Allocated to registers r5 r6 r7 
                                    940 ;ulAddress                 Allocated to registers r2 r3 r4 r7 
                                    941 ;pxStartOfStack            Allocated to stack - _bp +12
                                    942 ;sloc0                     Allocated to stack - _bp +5
                                    943 ;sloc1                     Allocated to stack - _bp +8
                                    944 ;sloc2                     Allocated to stack - _bp +1
                                    945 ;------------------------------------------------------------
                           000000   946 	G$pxPortInitialiseStack$0$0 ==.
                           000000   947 	C$port.c$219$0_0$117 ==.
                                    948 ;	port.c:219: StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters )
                                    949 ;	-----------------------------------------
                                    950 ;	 function pxPortInitialiseStack
                                    951 ;	-----------------------------------------
      0074C7                        952 _pxPortInitialiseStack:
                           000007   953 	ar7 = 0x07
                           000006   954 	ar6 = 0x06
                           000005   955 	ar5 = 0x05
                           000004   956 	ar4 = 0x04
                           000003   957 	ar3 = 0x03
                           000002   958 	ar2 = 0x02
                           000001   959 	ar1 = 0x01
                           000000   960 	ar0 = 0x00
      0074C7 C0 0D            [24]  961 	push	_bp
      0074C9 85 81 0D         [24]  962 	mov	_bp,sp
      0074CC E5 81            [12]  963 	mov	a,sp
      0074CE 24 0E            [12]  964 	add	a,#0x0e
      0074D0 F5 81            [12]  965 	mov	sp,a
      0074D2 AD 82            [24]  966 	mov	r5,dpl
      0074D4 AE 83            [24]  967 	mov	r6,dph
      0074D6 AF F0            [24]  968 	mov	r7,b
                           000011   969 	C$port.c$225$1_0$117 ==.
                                    970 ;	port.c:225: pxStartOfStack = pxTopOfStack;
      0074D8 E5 0D            [12]  971 	mov	a,_bp
      0074DA 24 0C            [12]  972 	add	a,#0x0c
      0074DC F8               [12]  973 	mov	r0,a
      0074DD A6 05            [24]  974 	mov	@r0,ar5
      0074DF 08               [12]  975 	inc	r0
      0074E0 A6 06            [24]  976 	mov	@r0,ar6
      0074E2 08               [12]  977 	inc	r0
      0074E3 A6 07            [24]  978 	mov	@r0,ar7
                           00001E   979 	C$port.c$226$1_0$117 ==.
                                    980 ;	port.c:226: pxTopOfStack++;
      0074E5 E5 0D            [12]  981 	mov	a,_bp
      0074E7 24 05            [12]  982 	add	a,#0x05
      0074E9 F8               [12]  983 	mov	r0,a
      0074EA 74 01            [12]  984 	mov	a,#0x01
      0074EC 2D               [12]  985 	add	a,r5
      0074ED F6               [12]  986 	mov	@r0,a
      0074EE 74 00            [12]  987 	mov	a,#0x00
      0074F0 3E               [12]  988 	addc	a,r6
      0074F1 08               [12]  989 	inc	r0
      0074F2 F6               [12]  990 	mov	@r0,a
      0074F3 08               [12]  991 	inc	r0
      0074F4 A6 07            [24]  992 	mov	@r0,ar7
                           00002F   993 	C$port.c$242$1_0$117 ==.
                                    994 ;	port.c:242: ulAddress = ( uint32_t ) pxCode;
      0074F6 E5 0D            [12]  995 	mov	a,_bp
      0074F8 24 FC            [12]  996 	add	a,#0xfc
      0074FA F8               [12]  997 	mov	r0,a
      0074FB 86 02            [24]  998 	mov	ar2,@r0
      0074FD 08               [12]  999 	inc	r0
      0074FE 86 03            [24] 1000 	mov	ar3,@r0
      007500 7C 80            [12] 1001 	mov	r4,#0x80
      007502 7F 00            [12] 1002 	mov	r7,#0x00
                           00003D  1003 	C$port.c$243$1_0$117 ==.
                                   1004 ;	port.c:243: *pxTopOfStack = ( StackType_t ) ulAddress;
      007504 8A 06            [24] 1005 	mov	ar6,r2
      007506 E5 0D            [12] 1006 	mov	a,_bp
      007508 24 05            [12] 1007 	add	a,#0x05
      00750A F8               [12] 1008 	mov	r0,a
      00750B 86 82            [24] 1009 	mov	dpl,@r0
      00750D 08               [12] 1010 	inc	r0
      00750E 86 83            [24] 1011 	mov	dph,@r0
      007510 08               [12] 1012 	inc	r0
      007511 86 F0            [24] 1013 	mov	b,@r0
      007513 EE               [12] 1014 	mov	a,r6
      007514 12 79 22         [24] 1015 	lcall	__gptrput
                           000050  1016 	C$port.c$244$1_0$117 ==.
                                   1017 ;	port.c:244: ulAddress >>= 8;
      007517 E5 0D            [12] 1018 	mov	a,_bp
      007519 24 08            [12] 1019 	add	a,#0x08
      00751B F8               [12] 1020 	mov	r0,a
      00751C A6 03            [24] 1021 	mov	@r0,ar3
      00751E 08               [12] 1022 	inc	r0
      00751F A6 04            [24] 1023 	mov	@r0,ar4
      007521 08               [12] 1024 	inc	r0
      007522 A6 07            [24] 1025 	mov	@r0,ar7
      007524 08               [12] 1026 	inc	r0
      007525 76 00            [12] 1027 	mov	@r0,#0x00
                           000060  1028 	C$port.c$245$1_0$117 ==.
                                   1029 ;	port.c:245: pxTopOfStack++;
      007527 E5 0D            [12] 1030 	mov	a,_bp
      007529 24 05            [12] 1031 	add	a,#0x05
      00752B F8               [12] 1032 	mov	r0,a
      00752C 74 01            [12] 1033 	mov	a,#0x01
      00752E 26               [12] 1034 	add	a,@r0
      00752F FD               [12] 1035 	mov	r5,a
      007530 74 00            [12] 1036 	mov	a,#0x00
      007532 08               [12] 1037 	inc	r0
      007533 36               [12] 1038 	addc	a,@r0
      007534 FE               [12] 1039 	mov	r6,a
      007535 08               [12] 1040 	inc	r0
      007536 86 07            [24] 1041 	mov	ar7,@r0
                           000071  1042 	C$port.c$246$1_0$117 ==.
                                   1043 ;	port.c:246: *pxTopOfStack = ( StackType_t ) ( ulAddress );
      007538 E5 0D            [12] 1044 	mov	a,_bp
      00753A 24 08            [12] 1045 	add	a,#0x08
      00753C F8               [12] 1046 	mov	r0,a
      00753D 86 02            [24] 1047 	mov	ar2,@r0
      00753F 8D 82            [24] 1048 	mov	dpl,r5
      007541 8E 83            [24] 1049 	mov	dph,r6
      007543 8F F0            [24] 1050 	mov	b,r7
      007545 EA               [12] 1051 	mov	a,r2
      007546 12 79 22         [24] 1052 	lcall	__gptrput
                           000082  1053 	C$port.c$247$1_0$117 ==.
                                   1054 ;	port.c:247: pxTopOfStack++;
      007549 0D               [12] 1055 	inc	r5
      00754A BD 00 01         [24] 1056 	cjne	r5,#0x00,00103$
      00754D 0E               [12] 1057 	inc	r6
      00754E                       1058 00103$:
                           000087  1059 	C$port.c$250$1_0$117 ==.
                                   1060 ;	port.c:250: *pxTopOfStack = 0xaa;        /* acc */
      00754E 8D 82            [24] 1061 	mov	dpl,r5
      007550 8E 83            [24] 1062 	mov	dph,r6
      007552 8F F0            [24] 1063 	mov	b,r7
      007554 74 AA            [12] 1064 	mov	a,#0xaa
      007556 12 79 22         [24] 1065 	lcall	__gptrput
                           000092  1066 	C$port.c$251$1_0$117 ==.
                                   1067 ;	port.c:251: pxTopOfStack++;
      007559 0D               [12] 1068 	inc	r5
      00755A BD 00 01         [24] 1069 	cjne	r5,#0x00,00104$
      00755D 0E               [12] 1070 	inc	r6
      00755E                       1071 00104$:
                           000097  1072 	C$port.c$254$1_0$117 ==.
                                   1073 ;	port.c:254: *pxTopOfStack = portGLOBAL_INTERRUPT_BIT;
      00755E 8D 82            [24] 1074 	mov	dpl,r5
      007560 8E 83            [24] 1075 	mov	dph,r6
      007562 8F F0            [24] 1076 	mov	b,r7
      007564 74 80            [12] 1077 	mov	a,#0x80
      007566 12 79 22         [24] 1078 	lcall	__gptrput
                           0000A2  1079 	C$port.c$255$1_0$117 ==.
                                   1080 ;	port.c:255: pxTopOfStack++;
      007569 E5 0D            [12] 1081 	mov	a,_bp
      00756B 24 08            [12] 1082 	add	a,#0x08
      00756D F8               [12] 1083 	mov	r0,a
      00756E 74 01            [12] 1084 	mov	a,#0x01
      007570 2D               [12] 1085 	add	a,r5
      007571 F6               [12] 1086 	mov	@r0,a
      007572 74 00            [12] 1087 	mov	a,#0x00
      007574 3E               [12] 1088 	addc	a,r6
      007575 08               [12] 1089 	inc	r0
      007576 F6               [12] 1090 	mov	@r0,a
      007577 08               [12] 1091 	inc	r0
      007578 A6 07            [24] 1092 	mov	@r0,ar7
                           0000B3  1093 	C$port.c$259$1_0$117 ==.
                                   1094 ;	port.c:259: ulAddress = ( uint32_t ) pvParameters;
      00757A E5 0D            [12] 1095 	mov	a,_bp
      00757C 24 F9            [12] 1096 	add	a,#0xf9
      00757E F8               [12] 1097 	mov	r0,a
      00757F 86 02            [24] 1098 	mov	ar2,@r0
      007581 08               [12] 1099 	inc	r0
      007582 86 03            [24] 1100 	mov	ar3,@r0
      007584 08               [12] 1101 	inc	r0
      007585 86 04            [24] 1102 	mov	ar4,@r0
      007587 7F 00            [12] 1103 	mov	r7,#0x00
                           0000C2  1104 	C$port.c$260$1_0$117 ==.
                                   1105 ;	port.c:260: *pxTopOfStack = ( StackType_t ) ulAddress;        /* DPL */
      007589 8A 06            [24] 1106 	mov	ar6,r2
      00758B E5 0D            [12] 1107 	mov	a,_bp
      00758D 24 08            [12] 1108 	add	a,#0x08
      00758F F8               [12] 1109 	mov	r0,a
      007590 86 82            [24] 1110 	mov	dpl,@r0
      007592 08               [12] 1111 	inc	r0
      007593 86 83            [24] 1112 	mov	dph,@r0
      007595 08               [12] 1113 	inc	r0
      007596 86 F0            [24] 1114 	mov	b,@r0
      007598 EE               [12] 1115 	mov	a,r6
      007599 12 79 22         [24] 1116 	lcall	__gptrput
                           0000D5  1117 	C$port.c$261$1_0$117 ==.
                                   1118 ;	port.c:261: ulAddress >>= 8;
      00759C A8 0D            [24] 1119 	mov	r0,_bp
      00759E 08               [12] 1120 	inc	r0
      00759F A6 03            [24] 1121 	mov	@r0,ar3
      0075A1 08               [12] 1122 	inc	r0
      0075A2 A6 04            [24] 1123 	mov	@r0,ar4
      0075A4 08               [12] 1124 	inc	r0
      0075A5 A6 07            [24] 1125 	mov	@r0,ar7
      0075A7 08               [12] 1126 	inc	r0
      0075A8 76 00            [12] 1127 	mov	@r0,#0x00
                           0000E3  1128 	C$port.c$262$1_0$117 ==.
                                   1129 ;	port.c:262: *pxTopOfStack++;
      0075AA E5 0D            [12] 1130 	mov	a,_bp
      0075AC 24 08            [12] 1131 	add	a,#0x08
      0075AE F8               [12] 1132 	mov	r0,a
      0075AF 74 01            [12] 1133 	mov	a,#0x01
      0075B1 26               [12] 1134 	add	a,@r0
      0075B2 FD               [12] 1135 	mov	r5,a
      0075B3 74 00            [12] 1136 	mov	a,#0x00
      0075B5 08               [12] 1137 	inc	r0
      0075B6 36               [12] 1138 	addc	a,@r0
      0075B7 FE               [12] 1139 	mov	r6,a
      0075B8 08               [12] 1140 	inc	r0
      0075B9 86 07            [24] 1141 	mov	ar7,@r0
                           0000F4  1142 	C$port.c$263$1_0$117 ==.
                                   1143 ;	port.c:263: *pxTopOfStack = ( StackType_t ) ulAddress;        /* DPH */
      0075BB A8 0D            [24] 1144 	mov	r0,_bp
      0075BD 08               [12] 1145 	inc	r0
      0075BE 86 02            [24] 1146 	mov	ar2,@r0
      0075C0 8D 82            [24] 1147 	mov	dpl,r5
      0075C2 8E 83            [24] 1148 	mov	dph,r6
      0075C4 8F F0            [24] 1149 	mov	b,r7
      0075C6 EA               [12] 1150 	mov	a,r2
      0075C7 12 79 22         [24] 1151 	lcall	__gptrput
                           000103  1152 	C$port.c$264$1_0$117 ==.
                                   1153 ;	port.c:264: ulAddress >>= 8;
      0075CA A8 0D            [24] 1154 	mov	r0,_bp
      0075CC 08               [12] 1155 	inc	r0
      0075CD 08               [12] 1156 	inc	r0
      0075CE E6               [12] 1157 	mov	a,@r0
      0075CF 18               [12] 1158 	dec	r0
      0075D0 F6               [12] 1159 	mov	@r0,a
      0075D1 08               [12] 1160 	inc	r0
      0075D2 08               [12] 1161 	inc	r0
      0075D3 E6               [12] 1162 	mov	a,@r0
      0075D4 18               [12] 1163 	dec	r0
      0075D5 F6               [12] 1164 	mov	@r0,a
      0075D6 08               [12] 1165 	inc	r0
      0075D7 08               [12] 1166 	inc	r0
      0075D8 E6               [12] 1167 	mov	a,@r0
      0075D9 18               [12] 1168 	dec	r0
      0075DA F6               [12] 1169 	mov	@r0,a
      0075DB 08               [12] 1170 	inc	r0
      0075DC 76 00            [12] 1171 	mov	@r0,#0x00
                           000117  1172 	C$port.c$265$1_0$117 ==.
                                   1173 ;	port.c:265: pxTopOfStack++;
      0075DE 0D               [12] 1174 	inc	r5
      0075DF BD 00 01         [24] 1175 	cjne	r5,#0x00,00105$
      0075E2 0E               [12] 1176 	inc	r6
      0075E3                       1177 00105$:
                           00011C  1178 	C$port.c$266$1_0$117 ==.
                                   1179 ;	port.c:266: *pxTopOfStack = ( StackType_t ) ulAddress;        /* b */
      0075E3 A8 0D            [24] 1180 	mov	r0,_bp
      0075E5 08               [12] 1181 	inc	r0
      0075E6 86 02            [24] 1182 	mov	ar2,@r0
      0075E8 8D 82            [24] 1183 	mov	dpl,r5
      0075EA 8E 83            [24] 1184 	mov	dph,r6
      0075EC 8F F0            [24] 1185 	mov	b,r7
      0075EE EA               [12] 1186 	mov	a,r2
      0075EF 12 79 22         [24] 1187 	lcall	__gptrput
                           00012B  1188 	C$port.c$267$1_0$117 ==.
                                   1189 ;	port.c:267: pxTopOfStack++;
      0075F2 0D               [12] 1190 	inc	r5
      0075F3 BD 00 01         [24] 1191 	cjne	r5,#0x00,00106$
      0075F6 0E               [12] 1192 	inc	r6
      0075F7                       1193 00106$:
                           000130  1194 	C$port.c$270$1_0$117 ==.
                                   1195 ;	port.c:270: *pxTopOfStack = 0x02;        /* R2 */
      0075F7 8D 82            [24] 1196 	mov	dpl,r5
      0075F9 8E 83            [24] 1197 	mov	dph,r6
      0075FB 8F F0            [24] 1198 	mov	b,r7
      0075FD 74 02            [12] 1199 	mov	a,#0x02
      0075FF 12 79 22         [24] 1200 	lcall	__gptrput
                           00013B  1201 	C$port.c$271$1_0$117 ==.
                                   1202 ;	port.c:271: pxTopOfStack++;
      007602 0D               [12] 1203 	inc	r5
      007603 BD 00 01         [24] 1204 	cjne	r5,#0x00,00107$
      007606 0E               [12] 1205 	inc	r6
      007607                       1206 00107$:
                           000140  1207 	C$port.c$272$1_0$117 ==.
                                   1208 ;	port.c:272: *pxTopOfStack = 0x03;        /* R3 */
      007607 8D 82            [24] 1209 	mov	dpl,r5
      007609 8E 83            [24] 1210 	mov	dph,r6
      00760B 8F F0            [24] 1211 	mov	b,r7
      00760D 74 03            [12] 1212 	mov	a,#0x03
      00760F 12 79 22         [24] 1213 	lcall	__gptrput
                           00014B  1214 	C$port.c$273$1_0$117 ==.
                                   1215 ;	port.c:273: pxTopOfStack++;
      007612 0D               [12] 1216 	inc	r5
      007613 BD 00 01         [24] 1217 	cjne	r5,#0x00,00108$
      007616 0E               [12] 1218 	inc	r6
      007617                       1219 00108$:
                           000150  1220 	C$port.c$274$1_0$117 ==.
                                   1221 ;	port.c:274: *pxTopOfStack = 0x04;        /* R4 */
      007617 8D 82            [24] 1222 	mov	dpl,r5
      007619 8E 83            [24] 1223 	mov	dph,r6
      00761B 8F F0            [24] 1224 	mov	b,r7
      00761D 74 04            [12] 1225 	mov	a,#0x04
      00761F 12 79 22         [24] 1226 	lcall	__gptrput
                           00015B  1227 	C$port.c$275$1_0$117 ==.
                                   1228 ;	port.c:275: pxTopOfStack++;
      007622 0D               [12] 1229 	inc	r5
      007623 BD 00 01         [24] 1230 	cjne	r5,#0x00,00109$
      007626 0E               [12] 1231 	inc	r6
      007627                       1232 00109$:
                           000160  1233 	C$port.c$276$1_0$117 ==.
                                   1234 ;	port.c:276: *pxTopOfStack = 0x05;        /* R5 */
      007627 8D 82            [24] 1235 	mov	dpl,r5
      007629 8E 83            [24] 1236 	mov	dph,r6
      00762B 8F F0            [24] 1237 	mov	b,r7
      00762D 74 05            [12] 1238 	mov	a,#0x05
      00762F 12 79 22         [24] 1239 	lcall	__gptrput
                           00016B  1240 	C$port.c$277$1_0$117 ==.
                                   1241 ;	port.c:277: pxTopOfStack++;
      007632 0D               [12] 1242 	inc	r5
      007633 BD 00 01         [24] 1243 	cjne	r5,#0x00,00110$
      007636 0E               [12] 1244 	inc	r6
      007637                       1245 00110$:
                           000170  1246 	C$port.c$278$1_0$117 ==.
                                   1247 ;	port.c:278: *pxTopOfStack = 0x06;        /* R6 */
      007637 8D 82            [24] 1248 	mov	dpl,r5
      007639 8E 83            [24] 1249 	mov	dph,r6
      00763B 8F F0            [24] 1250 	mov	b,r7
      00763D 74 06            [12] 1251 	mov	a,#0x06
      00763F 12 79 22         [24] 1252 	lcall	__gptrput
                           00017B  1253 	C$port.c$279$1_0$117 ==.
                                   1254 ;	port.c:279: pxTopOfStack++;
      007642 0D               [12] 1255 	inc	r5
      007643 BD 00 01         [24] 1256 	cjne	r5,#0x00,00111$
      007646 0E               [12] 1257 	inc	r6
      007647                       1258 00111$:
                           000180  1259 	C$port.c$280$1_0$117 ==.
                                   1260 ;	port.c:280: *pxTopOfStack = 0x07;        /* R7 */
      007647 8D 82            [24] 1261 	mov	dpl,r5
      007649 8E 83            [24] 1262 	mov	dph,r6
      00764B 8F F0            [24] 1263 	mov	b,r7
      00764D 74 07            [12] 1264 	mov	a,#0x07
      00764F 12 79 22         [24] 1265 	lcall	__gptrput
                           00018B  1266 	C$port.c$281$1_0$117 ==.
                                   1267 ;	port.c:281: pxTopOfStack++;
      007652 0D               [12] 1268 	inc	r5
      007653 BD 00 01         [24] 1269 	cjne	r5,#0x00,00112$
      007656 0E               [12] 1270 	inc	r6
      007657                       1271 00112$:
                           000190  1272 	C$port.c$282$1_0$117 ==.
                                   1273 ;	port.c:282: *pxTopOfStack = 0x00;        /* R0 */
      007657 8D 82            [24] 1274 	mov	dpl,r5
      007659 8E 83            [24] 1275 	mov	dph,r6
      00765B 8F F0            [24] 1276 	mov	b,r7
      00765D 74 00            [12] 1277 	mov	a,#0x00
      00765F 12 79 22         [24] 1278 	lcall	__gptrput
                           00019B  1279 	C$port.c$283$1_0$117 ==.
                                   1280 ;	port.c:283: pxTopOfStack++;
      007662 0D               [12] 1281 	inc	r5
      007663 BD 00 01         [24] 1282 	cjne	r5,#0x00,00113$
      007666 0E               [12] 1283 	inc	r6
      007667                       1284 00113$:
                           0001A0  1285 	C$port.c$284$1_0$117 ==.
                                   1286 ;	port.c:284: *pxTopOfStack = 0x01;        /* R1 */
      007667 8D 82            [24] 1287 	mov	dpl,r5
      007669 8E 83            [24] 1288 	mov	dph,r6
      00766B 8F F0            [24] 1289 	mov	b,r7
      00766D 74 01            [12] 1290 	mov	a,#0x01
      00766F 12 79 22         [24] 1291 	lcall	__gptrput
                           0001AB  1292 	C$port.c$285$1_0$117 ==.
                                   1293 ;	port.c:285: pxTopOfStack++;
      007672 0D               [12] 1294 	inc	r5
      007673 BD 00 01         [24] 1295 	cjne	r5,#0x00,00114$
      007676 0E               [12] 1296 	inc	r6
      007677                       1297 00114$:
                           0001B0  1298 	C$port.c$286$1_0$117 ==.
                                   1299 ;	port.c:286: *pxTopOfStack = 0x00;        /* PSW */
      007677 8D 82            [24] 1300 	mov	dpl,r5
      007679 8E 83            [24] 1301 	mov	dph,r6
      00767B 8F F0            [24] 1302 	mov	b,r7
      00767D 74 00            [12] 1303 	mov	a,#0x00
      00767F 12 79 22         [24] 1304 	lcall	__gptrput
                           0001BB  1305 	C$port.c$287$1_0$117 ==.
                                   1306 ;	port.c:287: pxTopOfStack++;
      007682 0D               [12] 1307 	inc	r5
      007683 BD 00 01         [24] 1308 	cjne	r5,#0x00,00115$
      007686 0E               [12] 1309 	inc	r6
      007687                       1310 00115$:
                           0001C0  1311 	C$port.c$288$1_0$117 ==.
                                   1312 ;	port.c:288: *pxTopOfStack = 0xbb;        /* BP */
      007687 8D 82            [24] 1313 	mov	dpl,r5
      007689 8E 83            [24] 1314 	mov	dph,r6
      00768B 8F F0            [24] 1315 	mov	b,r7
      00768D 74 BB            [12] 1316 	mov	a,#0xbb
      00768F 12 79 22         [24] 1317 	lcall	__gptrput
                           0001CB  1318 	C$port.c$294$1_0$117 ==.
                                   1319 ;	port.c:294: *pxStartOfStack = ( StackType_t ) ( pxTopOfStack - pxStartOfStack );
      007692 E5 0D            [12] 1320 	mov	a,_bp
      007694 24 0C            [12] 1321 	add	a,#0x0c
      007696 F8               [12] 1322 	mov	r0,a
      007697 86 02            [24] 1323 	mov	ar2,@r0
      007699 ED               [12] 1324 	mov	a,r5
      00769A C3               [12] 1325 	clr	c
      00769B 9A               [12] 1326 	subb	a,r2
      00769C FD               [12] 1327 	mov	r5,a
      00769D E5 0D            [12] 1328 	mov	a,_bp
      00769F 24 0C            [12] 1329 	add	a,#0x0c
      0076A1 F8               [12] 1330 	mov	r0,a
      0076A2 86 82            [24] 1331 	mov	dpl,@r0
      0076A4 08               [12] 1332 	inc	r0
      0076A5 86 83            [24] 1333 	mov	dph,@r0
      0076A7 08               [12] 1334 	inc	r0
      0076A8 86 F0            [24] 1335 	mov	b,@r0
      0076AA ED               [12] 1336 	mov	a,r5
      0076AB 12 79 22         [24] 1337 	lcall	__gptrput
                           0001E7  1338 	C$port.c$298$1_0$117 ==.
                                   1339 ;	port.c:298: return pxStartOfStack;
      0076AE E5 0D            [12] 1340 	mov	a,_bp
      0076B0 24 0C            [12] 1341 	add	a,#0x0c
      0076B2 F8               [12] 1342 	mov	r0,a
      0076B3 86 82            [24] 1343 	mov	dpl,@r0
      0076B5 08               [12] 1344 	inc	r0
      0076B6 86 83            [24] 1345 	mov	dph,@r0
      0076B8 08               [12] 1346 	inc	r0
      0076B9 86 F0            [24] 1347 	mov	b,@r0
      0076BB                       1348 00101$:
                           0001F4  1349 	C$port.c$299$1_0$117 ==.
                                   1350 ;	port.c:299: }
      0076BB 85 0D 81         [24] 1351 	mov	sp,_bp
      0076BE D0 0D            [24] 1352 	pop	_bp
                           0001F9  1353 	C$port.c$299$1_0$117 ==.
                           0001F9  1354 	XG$pxPortInitialiseStack$0$0 ==.
      0076C0 22               [24] 1355 	ret
                                   1356 ;------------------------------------------------------------
                                   1357 ;Allocation info for local variables in function 'xPortStartScheduler'
                                   1358 ;------------------------------------------------------------
                           0001FA  1359 	G$xPortStartScheduler$0$0 ==.
                           0001FA  1360 	C$port.c$305$1_0$119 ==.
                                   1361 ;	port.c:305: BaseType_t xPortStartScheduler( void )
                                   1362 ;	-----------------------------------------
                                   1363 ;	 function xPortStartScheduler
                                   1364 ;	-----------------------------------------
      0076C1                       1365 _xPortStartScheduler:
                           0001FA  1366 	C$port.c$308$1_0$119 ==.
                                   1367 ;	port.c:308: prvSetupTimerInterrupt();
      0076C1 12 78 69         [24] 1368 	lcall	_prvSetupTimerInterrupt
                           0001FD  1369 	C$port.c$316$2_0$120 ==.
                                   1370 ;	port.c:316: portCOPY_XRAM_TO_STACK();
      0076C4 90 0C 7F         [24] 1371 	mov	dptr,#_pxCurrentTCB
      0076C7 E0               [24] 1372 	movx	a,@dptr
      0076C8 FD               [12] 1373 	mov	r5,a
      0076C9 A3               [24] 1374 	inc	dptr
      0076CA E0               [24] 1375 	movx	a,@dptr
      0076CB FE               [12] 1376 	mov	r6,a
      0076CC A3               [24] 1377 	inc	dptr
      0076CD E0               [24] 1378 	movx	a,@dptr
      0076CE FF               [12] 1379 	mov	r7,a
      0076CF 8D 82            [24] 1380 	mov	dpl,r5
      0076D1 8E 83            [24] 1381 	mov	dph,r6
      0076D3 8F F0            [24] 1382 	mov	b,r7
      0076D5 12 7C 4D         [24] 1383 	lcall	__gptrget
      0076D8 F5 0A            [12] 1384 	mov	_pxXRAMStack,a
      0076DA A3               [24] 1385 	inc	dptr
      0076DB 12 7C 4D         [24] 1386 	lcall	__gptrget
      0076DE F5 0B            [12] 1387 	mov	(_pxXRAMStack + 1),a
      0076E0 75 0C 20         [24] 1388 	mov	_pxRAMStack,#0x20
      0076E3 85 0A 82         [24] 1389 	mov	dpl,_pxXRAMStack
      0076E6 85 0B 83         [24] 1390 	mov	dph,(_pxXRAMStack + 1)
      0076E9 E0               [24] 1391 	movx	a,@dptr
      0076EA F5 09            [12] 1392 	mov	_ucStackBytes,a
      0076EC                       1393 00101$:
      0076EC 05 0A            [12] 1394 	inc	_pxXRAMStack
      0076EE E4               [12] 1395 	clr	a
      0076EF B5 0A 02         [24] 1396 	cjne	a,_pxXRAMStack,00114$
      0076F2 05 0B            [12] 1397 	inc	(_pxXRAMStack + 1)
      0076F4                       1398 00114$:
      0076F4 05 0C            [12] 1399 	inc	_pxRAMStack
      0076F6 A9 0C            [24] 1400 	mov	r1,_pxRAMStack
      0076F8 85 0A 82         [24] 1401 	mov	dpl,_pxXRAMStack
      0076FB 85 0B 83         [24] 1402 	mov	dph,(_pxXRAMStack + 1)
      0076FE E0               [24] 1403 	movx	a,@dptr
      0076FF FF               [12] 1404 	mov	r7,a
      007700 A7 07            [24] 1405 	mov	@r1,ar7
      007702 15 09            [12] 1406 	dec	_ucStackBytes
      007704 E5 09            [12] 1407 	mov	a,_ucStackBytes
      007706 60 03            [24] 1408 	jz	00115$
      007708 02 76 EC         [24] 1409 	ljmp	00101$
      00770B                       1410 00115$:
      00770B 85 0C 81         [24] 1411 	mov	_SP,_pxRAMStack
                           000247  1412 	C$port.c$317$2_0$122 ==.
                                   1413 ;	port.c:317: portRESTORE_CONTEXT();
      00770E D0 0D            [24] 1414 	pop _bp 
      007710 D0 D0            [24] 1415 	pop PSW 
      007712 D0 01            [24] 1416 	pop ar1 
      007714 D0 00            [24] 1417 	pop ar0 
      007716 D0 07            [24] 1418 	pop ar7 
      007718 D0 06            [24] 1419 	pop ar6 
      00771A D0 05            [24] 1420 	pop ar5 
      00771C D0 04            [24] 1421 	pop ar4 
      00771E D0 03            [24] 1422 	pop ar3 
      007720 D0 02            [24] 1423 	pop ar2 
      007722 D0 F0            [24] 1424 	pop b 
      007724 D0 83            [24] 1425 	pop DPH 
      007726 D0 82            [24] 1426 	pop DPL 
      007728 D0 E0            [24] 1427 	pop ACC 
      00772A 20 E7 05         [24] 1428 	JB ACC.7,0098$ 
      00772D C2 AF            [12] 1429 	CLR IE.7 
      00772F 02 77 34         [24] 1430 	LJMP 0099$ 
      007732                       1431 	 0098$:
      007732 D2 AF            [12] 1432 	SETB IE.7 
      007734                       1433 	 0099$:
      007734 D0 E0            [24] 1434 	pop ACC 
      007736 32               [24] 1435 	reti 
                           000270  1436 	C$port.c$320$1_0$119 ==.
                                   1437 ;	port.c:320: return pdTRUE;
      007737 75 82 01         [24] 1438 	mov	dpl,#0x01
      00773A                       1439 00104$:
                           000273  1440 	C$port.c$321$1_0$119 ==.
                                   1441 ;	port.c:321: }
                           000273  1442 	C$port.c$321$1_0$119 ==.
                           000273  1443 	XG$xPortStartScheduler$0$0 ==.
      00773A 22               [24] 1444 	ret
                                   1445 ;------------------------------------------------------------
                                   1446 ;Allocation info for local variables in function 'vPortEndScheduler'
                                   1447 ;------------------------------------------------------------
                           000274  1448 	G$vPortEndScheduler$0$0 ==.
                           000274  1449 	C$port.c$324$1_0$125 ==.
                                   1450 ;	port.c:324: void vPortEndScheduler( void )
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function vPortEndScheduler
                                   1453 ;	-----------------------------------------
      00773B                       1454 _vPortEndScheduler:
                           000274  1455 	C$port.c$327$1_0$125 ==.
                                   1456 ;	port.c:327: }
      00773B                       1457 00101$:
                           000274  1458 	C$port.c$327$1_0$125 ==.
                           000274  1459 	XG$vPortEndScheduler$0$0 ==.
      00773B 22               [24] 1460 	ret
                                   1461 ;------------------------------------------------------------
                                   1462 ;Allocation info for local variables in function 'vPortYield'
                                   1463 ;------------------------------------------------------------
                           000275  1464 	G$vPortYield$0$0 ==.
                           000275  1465 	C$port.c$334$1_0$127 ==.
                                   1466 ;	port.c:334: void vPortYield( void ) _naked
                                   1467 ;	-----------------------------------------
                                   1468 ;	 function vPortYield
                                   1469 ;	-----------------------------------------
      00773C                       1470 _vPortYield:
                           000275  1471 	C$port.c$342$2_0$128 ==.
                                   1472 ;	port.c:342: portSAVE_CONTEXT();
      00773C C0 E0            [24] 1473 	push ACC 
      00773E C0 A8            [24] 1474 	push IE 
      007740 C2 AF            [12] 1475 	clr _EA 
      007742 C0 82            [24] 1476 	push DPL 
      007744 C0 83            [24] 1477 	push DPH 
      007746 C0 F0            [24] 1478 	push b 
      007748 C0 02            [24] 1479 	push ar2 
      00774A C0 03            [24] 1480 	push ar3 
      00774C C0 04            [24] 1481 	push ar4 
      00774E C0 05            [24] 1482 	push ar5 
      007750 C0 06            [24] 1483 	push ar6 
      007752 C0 07            [24] 1484 	push ar7 
      007754 C0 00            [24] 1485 	push ar0 
      007756 C0 01            [24] 1486 	push ar1 
      007758 C0 D0            [24] 1487 	push PSW 
      00775A 75 D0 00         [24] 1488 	mov	_PSW,#0x00
      00775D C0 0D            [24] 1489 	push _bp 
                           000298  1490 	C$port.c$343$2_0$129 ==.
                                   1491 ;	port.c:343: portCOPY_STACK_TO_XRAM();
      00775F 90 0C 7F         [24] 1492 	mov	dptr,#_pxCurrentTCB
      007762 E0               [24] 1493 	movx	a,@dptr
      007763 FD               [12] 1494 	mov	r5,a
      007764 A3               [24] 1495 	inc	dptr
      007765 E0               [24] 1496 	movx	a,@dptr
      007766 FE               [12] 1497 	mov	r6,a
      007767 A3               [24] 1498 	inc	dptr
      007768 E0               [24] 1499 	movx	a,@dptr
      007769 FF               [12] 1500 	mov	r7,a
      00776A 8D 82            [24] 1501 	mov	dpl,r5
      00776C 8E 83            [24] 1502 	mov	dph,r6
      00776E 8F F0            [24] 1503 	mov	b,r7
      007770 12 7C 4D         [24] 1504 	lcall	__gptrget
      007773 F5 0A            [12] 1505 	mov	_pxXRAMStack,a
      007775 A3               [24] 1506 	inc	dptr
      007776 12 7C 4D         [24] 1507 	lcall	__gptrget
      007779 F5 0B            [12] 1508 	mov	(_pxXRAMStack + 1),a
      00777B 75 0C 21         [24] 1509 	mov	_pxRAMStack,#0x21
      00777E AF 81            [24] 1510 	mov	r7,_SP
      007780 EF               [12] 1511 	mov	a,r7
      007781 24 E0            [12] 1512 	add	a,#0xe0
      007783 F5 09            [12] 1513 	mov	_ucStackBytes,a
      007785 85 0A 82         [24] 1514 	mov	dpl,_pxXRAMStack
      007788 85 0B 83         [24] 1515 	mov	dph,(_pxXRAMStack + 1)
      00778B E5 09            [12] 1516 	mov	a,_ucStackBytes
      00778D F0               [24] 1517 	movx	@dptr,a
      00778E                       1518 00101$:
      00778E E5 09            [12] 1519 	mov	a,_ucStackBytes
      007790 70 03            [24] 1520 	jnz	00125$
      007792 02 77 B0         [24] 1521 	ljmp	00103$
      007795                       1522 00125$:
      007795 05 0A            [12] 1523 	inc	_pxXRAMStack
      007797 E4               [12] 1524 	clr	a
      007798 B5 0A 02         [24] 1525 	cjne	a,_pxXRAMStack,00126$
      00779B 05 0B            [12] 1526 	inc	(_pxXRAMStack + 1)
      00779D                       1527 00126$:
      00779D 85 0A 82         [24] 1528 	mov	dpl,_pxXRAMStack
      0077A0 85 0B 83         [24] 1529 	mov	dph,(_pxXRAMStack + 1)
      0077A3 A9 0C            [24] 1530 	mov	r1,_pxRAMStack
      0077A5 87 07            [24] 1531 	mov	ar7,@r1
      0077A7 EF               [12] 1532 	mov	a,r7
      0077A8 F0               [24] 1533 	movx	@dptr,a
      0077A9 05 0C            [12] 1534 	inc	_pxRAMStack
      0077AB 15 09            [12] 1535 	dec	_ucStackBytes
      0077AD 02 77 8E         [24] 1536 	ljmp	00101$
      0077B0                       1537 00103$:
                           0002E9  1538 	C$port.c$346$1_0$127 ==.
                                   1539 ;	port.c:346: vTaskSwitchContext();
      0077B0 12 3C B3         [24] 1540 	lcall	_vTaskSwitchContext
                           0002EC  1541 	C$port.c$350$2_0$131 ==.
                                   1542 ;	port.c:350: portCOPY_XRAM_TO_STACK();
      0077B3 90 0C 7F         [24] 1543 	mov	dptr,#_pxCurrentTCB
      0077B6 E0               [24] 1544 	movx	a,@dptr
      0077B7 FD               [12] 1545 	mov	r5,a
      0077B8 A3               [24] 1546 	inc	dptr
      0077B9 E0               [24] 1547 	movx	a,@dptr
      0077BA FE               [12] 1548 	mov	r6,a
      0077BB A3               [24] 1549 	inc	dptr
      0077BC E0               [24] 1550 	movx	a,@dptr
      0077BD FF               [12] 1551 	mov	r7,a
      0077BE 8D 82            [24] 1552 	mov	dpl,r5
      0077C0 8E 83            [24] 1553 	mov	dph,r6
      0077C2 8F F0            [24] 1554 	mov	b,r7
      0077C4 12 7C 4D         [24] 1555 	lcall	__gptrget
      0077C7 F5 0A            [12] 1556 	mov	_pxXRAMStack,a
      0077C9 A3               [24] 1557 	inc	dptr
      0077CA 12 7C 4D         [24] 1558 	lcall	__gptrget
      0077CD F5 0B            [12] 1559 	mov	(_pxXRAMStack + 1),a
      0077CF 75 0C 20         [24] 1560 	mov	_pxRAMStack,#0x20
      0077D2 85 0A 82         [24] 1561 	mov	dpl,_pxXRAMStack
      0077D5 85 0B 83         [24] 1562 	mov	dph,(_pxXRAMStack + 1)
      0077D8 E0               [24] 1563 	movx	a,@dptr
      0077D9 F5 09            [12] 1564 	mov	_ucStackBytes,a
      0077DB                       1565 00104$:
      0077DB 05 0A            [12] 1566 	inc	_pxXRAMStack
      0077DD E4               [12] 1567 	clr	a
      0077DE B5 0A 02         [24] 1568 	cjne	a,_pxXRAMStack,00127$
      0077E1 05 0B            [12] 1569 	inc	(_pxXRAMStack + 1)
      0077E3                       1570 00127$:
      0077E3 05 0C            [12] 1571 	inc	_pxRAMStack
      0077E5 A9 0C            [24] 1572 	mov	r1,_pxRAMStack
      0077E7 85 0A 82         [24] 1573 	mov	dpl,_pxXRAMStack
      0077EA 85 0B 83         [24] 1574 	mov	dph,(_pxXRAMStack + 1)
      0077ED E0               [24] 1575 	movx	a,@dptr
      0077EE FF               [12] 1576 	mov	r7,a
      0077EF A7 07            [24] 1577 	mov	@r1,ar7
      0077F1 15 09            [12] 1578 	dec	_ucStackBytes
      0077F3 E5 09            [12] 1579 	mov	a,_ucStackBytes
      0077F5 60 03            [24] 1580 	jz	00128$
      0077F7 02 77 DB         [24] 1581 	ljmp	00104$
      0077FA                       1582 00128$:
      0077FA 85 0C 81         [24] 1583 	mov	_SP,_pxRAMStack
                           000336  1584 	C$port.c$351$2_0$133 ==.
                                   1585 ;	port.c:351: portRESTORE_CONTEXT();
      0077FD D0 0D            [24] 1586 	pop _bp 
      0077FF D0 D0            [24] 1587 	pop PSW 
      007801 D0 01            [24] 1588 	pop ar1 
      007803 D0 00            [24] 1589 	pop ar0 
      007805 D0 07            [24] 1590 	pop ar7 
      007807 D0 06            [24] 1591 	pop ar6 
      007809 D0 05            [24] 1592 	pop ar5 
      00780B D0 04            [24] 1593 	pop ar4 
      00780D D0 03            [24] 1594 	pop ar3 
      00780F D0 02            [24] 1595 	pop ar2 
      007811 D0 F0            [24] 1596 	pop b 
      007813 D0 83            [24] 1597 	pop DPH 
      007815 D0 82            [24] 1598 	pop DPL 
      007817 D0 E0            [24] 1599 	pop ACC 
      007819 20 E7 05         [24] 1600 	JB ACC.7,0098$ 
      00781C C2 AF            [12] 1601 	CLR IE.7 
      00781E 02 78 23         [24] 1602 	LJMP 0099$ 
      007821                       1603 	 0098$:
      007821 D2 AF            [12] 1604 	SETB IE.7 
      007823                       1605 	 0099$:
      007823 D0 E0            [24] 1606 	pop ACC 
      007825 32               [24] 1607 	reti 
      007826                       1608 00107$:
                           00035F  1609 	C$port.c$352$2_0$127 ==.
                                   1610 ;	port.c:352: }
                           00035F  1611 	C$port.c$352$2_0$127 ==.
                           00035F  1612 	XG$vPortYield$0$0 ==.
      007826 22               [24] 1613 	ret
                                   1614 ;------------------------------------------------------------
                                   1615 ;Allocation info for local variables in function 'vTimer2ISR'
                                   1616 ;------------------------------------------------------------
                           000360  1617 	G$vTimer2ISR$0$0 ==.
                           000360  1618 	C$port.c$375$2_0$135 ==.
                                   1619 ;	port.c:375: void vTimer2ISR( void ) __interrupt 5
                                   1620 ;	-----------------------------------------
                                   1621 ;	 function vTimer2ISR
                                   1622 ;	-----------------------------------------
      007827                       1623 _vTimer2ISR:
      007827 C0 20            [24] 1624 	push	bits
      007829 C0 E0            [24] 1625 	push	acc
      00782B C0 F0            [24] 1626 	push	b
      00782D C0 82            [24] 1627 	push	dpl
      00782F C0 83            [24] 1628 	push	dph
      007831 C0 07            [24] 1629 	push	(0+7)
      007833 C0 06            [24] 1630 	push	(0+6)
      007835 C0 05            [24] 1631 	push	(0+5)
      007837 C0 04            [24] 1632 	push	(0+4)
      007839 C0 03            [24] 1633 	push	(0+3)
      00783B C0 02            [24] 1634 	push	(0+2)
      00783D C0 01            [24] 1635 	push	(0+1)
      00783F C0 00            [24] 1636 	push	(0+0)
      007841 C0 D0            [24] 1637 	push	psw
      007843 75 D0 00         [24] 1638 	mov	psw,#0x00
                           00037F  1639 	C$port.c$386$1_0$135 ==.
                                   1640 ;	port.c:386: xTaskIncrementTick();
      007846 12 35 A6         [24] 1641 	lcall	_xTaskIncrementTick
                           000382  1642 	C$port.c$387$1_0$135 ==.
                                   1643 ;	port.c:387: portCLEAR_INTERRUPT_FLAG();
      007849 53 C8 7F         [24] 1644 	anl	_TMR2CN,#0x7f
      00784C                       1645 00101$:
                           000385  1646 	C$port.c$392$1_0$135 ==.
                                   1647 ;	port.c:392: }
      00784C D0 D0            [24] 1648 	pop	psw
      00784E D0 00            [24] 1649 	pop	(0+0)
      007850 D0 01            [24] 1650 	pop	(0+1)
      007852 D0 02            [24] 1651 	pop	(0+2)
      007854 D0 03            [24] 1652 	pop	(0+3)
      007856 D0 04            [24] 1653 	pop	(0+4)
      007858 D0 05            [24] 1654 	pop	(0+5)
      00785A D0 06            [24] 1655 	pop	(0+6)
      00785C D0 07            [24] 1656 	pop	(0+7)
      00785E D0 83            [24] 1657 	pop	dph
      007860 D0 82            [24] 1658 	pop	dpl
      007862 D0 F0            [24] 1659 	pop	b
      007864 D0 E0            [24] 1660 	pop	acc
      007866 D0 20            [24] 1661 	pop	bits
                           0003A1  1662 	C$port.c$392$1_0$135 ==.
                           0003A1  1663 	XG$vTimer2ISR$0$0 ==.
      007868 32               [24] 1664 	reti
                                   1665 ;------------------------------------------------------------
                                   1666 ;Allocation info for local variables in function 'prvSetupTimerInterrupt'
                                   1667 ;------------------------------------------------------------
                                   1668 ;ucOriginalSFRPage         Allocated to stack - _bp +1
                                   1669 ;ulTicksPerSecond          Allocated to registers 
                                   1670 ;ulCaptureTime             Allocated to registers 
                                   1671 ;ulCaptureValue            Allocated to registers 
                                   1672 ;ucLowCaptureByte          Allocated to registers 
                                   1673 ;ucHighCaptureByte         Allocated to registers 
                                   1674 ;------------------------------------------------------------
                           0003A2  1675 	Fport$prvSetupTimerInterrupt$0$0 ==.
                           0003A2  1676 	C$port.c$396$1_0$137 ==.
                                   1677 ;	port.c:396: static void prvSetupTimerInterrupt( void )
                                   1678 ;	-----------------------------------------
                                   1679 ;	 function prvSetupTimerInterrupt
                                   1680 ;	-----------------------------------------
      007869                       1681 _prvSetupTimerInterrupt:
                           0003A2  1682 	C$port.c$417$1_0$137 ==.
                                   1683 ;	port.c:417: TMR2CN  &= ~(portENABLE_TIMER | 0x1);                     // Stop Timer2; Clear TF2;
      007869 53 C8 FA         [24] 1684 	anl	_TMR2CN,#0xfa
                           0003A5  1685 	C$port.c$425$1_0$137 ==.
                                   1686 ;	port.c:425: TMR2RLL = ucLowCaptureByte;
      00786C 75 CA 77         [24] 1687 	mov	_TMR2RLL,#0x77
                           0003A8  1688 	C$port.c$426$1_0$137 ==.
                                   1689 ;	port.c:426: TMR2RLH = ucHighCaptureByte;
      00786F 75 CB EC         [24] 1690 	mov	_TMR2RLH,#0xec
                           0003AB  1691 	C$port.c$429$1_0$137 ==.
                                   1692 ;	port.c:429: TMR2L = ucLowCaptureByte;
      007872 75 CC 77         [24] 1693 	mov	_TMR2L,#0x77
                           0003AE  1694 	C$port.c$430$1_0$137 ==.
                                   1695 ;	port.c:430: TMR2H = ucHighCaptureByte;
      007875 75 CD EC         [24] 1696 	mov	_TMR2H,#0xec
                           0003B1  1697 	C$port.c$433$1_0$137 ==.
                                   1698 ;	port.c:433: IE |= portTIMER_2_INTERRUPT_ENABLE;
      007878 43 A8 20         [24] 1699 	orl	_IE,#0x20
                           0003B4  1700 	C$port.c$437$1_0$137 ==.
                                   1701 ;	port.c:437: TMR2CN |= portENABLE_TIMER;
      00787B 43 C8 04         [24] 1702 	orl	_TMR2CN,#0x04
      00787E                       1703 00101$:
                           0003B7  1704 	C$port.c$442$1_0$137 ==.
                                   1705 ;	port.c:442: }
                           0003B7  1706 	C$port.c$442$1_0$137 ==.
                           0003B7  1707 	XFport$prvSetupTimerInterrupt$0$0 ==.
      00787E 22               [24] 1708 	ret
                                   1709 	.area CSEG    (CODE)
                                   1710 	.area CONST   (CODE)
                                   1711 	.area XINIT   (CODE)
                                   1712 	.area CABS    (ABS,CODE)
