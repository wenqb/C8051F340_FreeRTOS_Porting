                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module list
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SPIF
                                     12 	.globl _WCOL
                                     13 	.globl _MODF
                                     14 	.globl _RXOVRN
                                     15 	.globl _NSSMD1
                                     16 	.globl _NSSMD0
                                     17 	.globl _TXBMT
                                     18 	.globl _SPIEN
                                     19 	.globl _AD0EN
                                     20 	.globl _AD0TM
                                     21 	.globl _AD0INT
                                     22 	.globl _AD0BUSY
                                     23 	.globl _AD0WINT
                                     24 	.globl _AD0CM2
                                     25 	.globl _AD0CM1
                                     26 	.globl _AD0CM0
                                     27 	.globl _CF
                                     28 	.globl _CR
                                     29 	.globl _CCF4
                                     30 	.globl _CCF3
                                     31 	.globl _CCF2
                                     32 	.globl _CCF1
                                     33 	.globl _CCF0
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _PARITY
                                     42 	.globl _TF2H
                                     43 	.globl _TF2
                                     44 	.globl _TF2L
                                     45 	.globl _TF2LEN
                                     46 	.globl _T2CE
                                     47 	.globl _T2SPLIT
                                     48 	.globl _TR2
                                     49 	.globl _T2CSS
                                     50 	.globl _T2XCLK
                                     51 	.globl _MASTER
                                     52 	.globl _TXMODE
                                     53 	.globl _STA
                                     54 	.globl _STO
                                     55 	.globl _ACKRQ
                                     56 	.globl _ARBLOST
                                     57 	.globl _ACK
                                     58 	.globl _SI
                                     59 	.globl _PSPI0
                                     60 	.globl _PT2
                                     61 	.globl _PS0
                                     62 	.globl _PS
                                     63 	.globl _PT1
                                     64 	.globl _PX1
                                     65 	.globl _PT0
                                     66 	.globl _PX0
                                     67 	.globl _P3_7
                                     68 	.globl _P3_6
                                     69 	.globl _P3_5
                                     70 	.globl _P3_4
                                     71 	.globl _P3_3
                                     72 	.globl _P3_2
                                     73 	.globl _P3_1
                                     74 	.globl _P3_0
                                     75 	.globl _EA
                                     76 	.globl _ESPI0
                                     77 	.globl _ET2
                                     78 	.globl _ES0
                                     79 	.globl _ES
                                     80 	.globl _ET1
                                     81 	.globl _EX1
                                     82 	.globl _ET0
                                     83 	.globl _EX0
                                     84 	.globl _P2_7
                                     85 	.globl _P2_6
                                     86 	.globl _P2_5
                                     87 	.globl _P2_4
                                     88 	.globl _P2_3
                                     89 	.globl _P2_2
                                     90 	.globl _P2_1
                                     91 	.globl _P2_0
                                     92 	.globl _S0MODE
                                     93 	.globl _SM0
                                     94 	.globl _MCE0
                                     95 	.globl _SM2
                                     96 	.globl _REN0
                                     97 	.globl _REN
                                     98 	.globl _TB80
                                     99 	.globl _TB8
                                    100 	.globl _RB80
                                    101 	.globl _RB8
                                    102 	.globl _TI0
                                    103 	.globl _TI
                                    104 	.globl _RI0
                                    105 	.globl _RI
                                    106 	.globl _P1_7
                                    107 	.globl _P1_6
                                    108 	.globl _P1_5
                                    109 	.globl _P1_4
                                    110 	.globl _P1_3
                                    111 	.globl _P1_2
                                    112 	.globl _P1_1
                                    113 	.globl _P1_0
                                    114 	.globl _TF1
                                    115 	.globl _TR1
                                    116 	.globl _TF0
                                    117 	.globl _TR0
                                    118 	.globl _IE1
                                    119 	.globl _IT1
                                    120 	.globl _IE0
                                    121 	.globl _IT0
                                    122 	.globl _P0_7
                                    123 	.globl _P0_6
                                    124 	.globl _P0_5
                                    125 	.globl _P0_4
                                    126 	.globl _P0_3
                                    127 	.globl _P0_2
                                    128 	.globl _P0_1
                                    129 	.globl _P0_0
                                    130 	.globl _PCA0CP4
                                    131 	.globl _PCA0CP3
                                    132 	.globl _PCA0CP2
                                    133 	.globl _PCA0CP1
                                    134 	.globl _PCA0CP0
                                    135 	.globl _PCA0
                                    136 	.globl _ADC0LT
                                    137 	.globl _ADC0GT
                                    138 	.globl _ADC0
                                    139 	.globl _SBRL1
                                    140 	.globl _TMR3RL
                                    141 	.globl _TMR3
                                    142 	.globl _TMR2RL
                                    143 	.globl _RCAP2
                                    144 	.globl _TMR2
                                    145 	.globl _TMR1
                                    146 	.globl _TMR0
                                    147 	.globl _VDM0CN
                                    148 	.globl _PCA0CPH4
                                    149 	.globl _PCA0CPL4
                                    150 	.globl _PCA0CPH0
                                    151 	.globl _PCA0CPL0
                                    152 	.globl _PCA0H
                                    153 	.globl _PCA0L
                                    154 	.globl _SPI0CN
                                    155 	.globl _EIP2
                                    156 	.globl _EIP1
                                    157 	.globl _P4MDIN
                                    158 	.globl _P3MDIN
                                    159 	.globl _P3MODE
                                    160 	.globl _P2MDIN
                                    161 	.globl _P2MODE
                                    162 	.globl _P1MDIN
                                    163 	.globl _P1MODE
                                    164 	.globl _P0MDIN
                                    165 	.globl _P0MODE
                                    166 	.globl _B
                                    167 	.globl _RSTSRC
                                    168 	.globl _PCA0CPH3
                                    169 	.globl _PCA0CPL3
                                    170 	.globl _PCA0CPH2
                                    171 	.globl _PCA0CPL2
                                    172 	.globl _PCA0CPH1
                                    173 	.globl _PCA0CPL1
                                    174 	.globl _ADC0CN
                                    175 	.globl _EIE2
                                    176 	.globl _EIE1
                                    177 	.globl _SMOD1
                                    178 	.globl _INT01CF
                                    179 	.globl _IT01CF
                                    180 	.globl _XBR2
                                    181 	.globl _XBR1
                                    182 	.globl _XBR0
                                    183 	.globl _ACC
                                    184 	.globl _P3SKIP
                                    185 	.globl _PCA0CPM4
                                    186 	.globl _PCA0CPM3
                                    187 	.globl _PCA0CPM2
                                    188 	.globl _PCA0CPM1
                                    189 	.globl _PCA0CPM0
                                    190 	.globl _PCA0MD
                                    191 	.globl _PCA0CN
                                    192 	.globl _USB0XCN
                                    193 	.globl _P2SKIP
                                    194 	.globl _P1SKIP
                                    195 	.globl _P0SKIP
                                    196 	.globl _SBUF1
                                    197 	.globl _SCON1
                                    198 	.globl _REF0CN
                                    199 	.globl _PSW
                                    200 	.globl _TMR2H
                                    201 	.globl _TH2
                                    202 	.globl _TMR2L
                                    203 	.globl _TL2
                                    204 	.globl _TMR2RLH
                                    205 	.globl _RCAP2H
                                    206 	.globl _TMR2RLL
                                    207 	.globl _RCAP2L
                                    208 	.globl _REG0CN
                                    209 	.globl _TMR2CN
                                    210 	.globl _T2CON
                                    211 	.globl _P4
                                    212 	.globl _ADC0LTH
                                    213 	.globl _ADC0LTL
                                    214 	.globl _ADC0GTH
                                    215 	.globl _ADC0GTL
                                    216 	.globl _SMB0DAT
                                    217 	.globl _SMB0CF
                                    218 	.globl _SMB0CN
                                    219 	.globl _ADC0H
                                    220 	.globl _ADC0L
                                    221 	.globl _ADC0CF
                                    222 	.globl _AMX0P
                                    223 	.globl _AMX0N
                                    224 	.globl _CLKMUL
                                    225 	.globl _IP
                                    226 	.globl _FLKEY
                                    227 	.globl _FLSCL
                                    228 	.globl _SBRLH1
                                    229 	.globl _SBRLL1
                                    230 	.globl _OSCICL
                                    231 	.globl _OSCICN
                                    232 	.globl _OSCXCN
                                    233 	.globl _P3
                                    234 	.globl _PFE0CN
                                    235 	.globl _P4MDOUT
                                    236 	.globl _SBCON1
                                    237 	.globl __XPAGE
                                    238 	.globl _EMI0CN
                                    239 	.globl _CLKSEL
                                    240 	.globl _IE
                                    241 	.globl _P3MDOUT
                                    242 	.globl _P2MDOUT
                                    243 	.globl _P1MDOUT
                                    244 	.globl _P0MDOUT
                                    245 	.globl _SPI0DAT
                                    246 	.globl _SPI0CKR
                                    247 	.globl _SPI0CFG
                                    248 	.globl _P2
                                    249 	.globl _CPT0MX
                                    250 	.globl _CPT1MX
                                    251 	.globl _CPT0MD
                                    252 	.globl _CPT1MD
                                    253 	.globl _CPT0CN
                                    254 	.globl _CPT1CN
                                    255 	.globl _SBUF0
                                    256 	.globl _SBUF
                                    257 	.globl _SCON0
                                    258 	.globl _SCON
                                    259 	.globl _USB0DAT
                                    260 	.globl _USB0ADR
                                    261 	.globl _TMR3H
                                    262 	.globl _TMR3L
                                    263 	.globl _TMR3RLH
                                    264 	.globl _TMR3RLL
                                    265 	.globl _TMR3CN
                                    266 	.globl _P1
                                    267 	.globl _PSCTL
                                    268 	.globl _CKCON
                                    269 	.globl _TH1
                                    270 	.globl _TH0
                                    271 	.globl _TL1
                                    272 	.globl _TL0
                                    273 	.globl _TMOD
                                    274 	.globl _TCON
                                    275 	.globl _PCON
                                    276 	.globl _OSCLCN
                                    277 	.globl _EMI0CF
                                    278 	.globl _EMI0TC
                                    279 	.globl _DPH
                                    280 	.globl _DPL
                                    281 	.globl _SP
                                    282 	.globl _P0
                                    283 	.globl _vListInitialise
                                    284 	.globl _vListInitialiseItem
                                    285 	.globl _vListInsertEnd
                                    286 	.globl _vListInsert
                                    287 	.globl _uxListRemove
                                    288 ;--------------------------------------------------------
                                    289 ; special function registers
                                    290 ;--------------------------------------------------------
                                    291 	.area RSEG    (ABS,DATA)
      000000                        292 	.org 0x0000
                           000080   293 G$P0$0_0$0 == 0x0080
                           000080   294 _P0	=	0x0080
                           000081   295 G$SP$0_0$0 == 0x0081
                           000081   296 _SP	=	0x0081
                           000082   297 G$DPL$0_0$0 == 0x0082
                           000082   298 _DPL	=	0x0082
                           000083   299 G$DPH$0_0$0 == 0x0083
                           000083   300 _DPH	=	0x0083
                           000084   301 G$EMI0TC$0_0$0 == 0x0084
                           000084   302 _EMI0TC	=	0x0084
                           000085   303 G$EMI0CF$0_0$0 == 0x0085
                           000085   304 _EMI0CF	=	0x0085
                           000086   305 G$OSCLCN$0_0$0 == 0x0086
                           000086   306 _OSCLCN	=	0x0086
                           000087   307 G$PCON$0_0$0 == 0x0087
                           000087   308 _PCON	=	0x0087
                           000088   309 G$TCON$0_0$0 == 0x0088
                           000088   310 _TCON	=	0x0088
                           000089   311 G$TMOD$0_0$0 == 0x0089
                           000089   312 _TMOD	=	0x0089
                           00008A   313 G$TL0$0_0$0 == 0x008a
                           00008A   314 _TL0	=	0x008a
                           00008B   315 G$TL1$0_0$0 == 0x008b
                           00008B   316 _TL1	=	0x008b
                           00008C   317 G$TH0$0_0$0 == 0x008c
                           00008C   318 _TH0	=	0x008c
                           00008D   319 G$TH1$0_0$0 == 0x008d
                           00008D   320 _TH1	=	0x008d
                           00008E   321 G$CKCON$0_0$0 == 0x008e
                           00008E   322 _CKCON	=	0x008e
                           00008F   323 G$PSCTL$0_0$0 == 0x008f
                           00008F   324 _PSCTL	=	0x008f
                           000090   325 G$P1$0_0$0 == 0x0090
                           000090   326 _P1	=	0x0090
                           000091   327 G$TMR3CN$0_0$0 == 0x0091
                           000091   328 _TMR3CN	=	0x0091
                           000092   329 G$TMR3RLL$0_0$0 == 0x0092
                           000092   330 _TMR3RLL	=	0x0092
                           000093   331 G$TMR3RLH$0_0$0 == 0x0093
                           000093   332 _TMR3RLH	=	0x0093
                           000094   333 G$TMR3L$0_0$0 == 0x0094
                           000094   334 _TMR3L	=	0x0094
                           000095   335 G$TMR3H$0_0$0 == 0x0095
                           000095   336 _TMR3H	=	0x0095
                           000096   337 G$USB0ADR$0_0$0 == 0x0096
                           000096   338 _USB0ADR	=	0x0096
                           000097   339 G$USB0DAT$0_0$0 == 0x0097
                           000097   340 _USB0DAT	=	0x0097
                           000098   341 G$SCON$0_0$0 == 0x0098
                           000098   342 _SCON	=	0x0098
                           000098   343 G$SCON0$0_0$0 == 0x0098
                           000098   344 _SCON0	=	0x0098
                           000099   345 G$SBUF$0_0$0 == 0x0099
                           000099   346 _SBUF	=	0x0099
                           000099   347 G$SBUF0$0_0$0 == 0x0099
                           000099   348 _SBUF0	=	0x0099
                           00009A   349 G$CPT1CN$0_0$0 == 0x009a
                           00009A   350 _CPT1CN	=	0x009a
                           00009B   351 G$CPT0CN$0_0$0 == 0x009b
                           00009B   352 _CPT0CN	=	0x009b
                           00009C   353 G$CPT1MD$0_0$0 == 0x009c
                           00009C   354 _CPT1MD	=	0x009c
                           00009D   355 G$CPT0MD$0_0$0 == 0x009d
                           00009D   356 _CPT0MD	=	0x009d
                           00009E   357 G$CPT1MX$0_0$0 == 0x009e
                           00009E   358 _CPT1MX	=	0x009e
                           00009F   359 G$CPT0MX$0_0$0 == 0x009f
                           00009F   360 _CPT0MX	=	0x009f
                           0000A0   361 G$P2$0_0$0 == 0x00a0
                           0000A0   362 _P2	=	0x00a0
                           0000A1   363 G$SPI0CFG$0_0$0 == 0x00a1
                           0000A1   364 _SPI0CFG	=	0x00a1
                           0000A2   365 G$SPI0CKR$0_0$0 == 0x00a2
                           0000A2   366 _SPI0CKR	=	0x00a2
                           0000A3   367 G$SPI0DAT$0_0$0 == 0x00a3
                           0000A3   368 _SPI0DAT	=	0x00a3
                           0000A4   369 G$P0MDOUT$0_0$0 == 0x00a4
                           0000A4   370 _P0MDOUT	=	0x00a4
                           0000A5   371 G$P1MDOUT$0_0$0 == 0x00a5
                           0000A5   372 _P1MDOUT	=	0x00a5
                           0000A6   373 G$P2MDOUT$0_0$0 == 0x00a6
                           0000A6   374 _P2MDOUT	=	0x00a6
                           0000A7   375 G$P3MDOUT$0_0$0 == 0x00a7
                           0000A7   376 _P3MDOUT	=	0x00a7
                           0000A8   377 G$IE$0_0$0 == 0x00a8
                           0000A8   378 _IE	=	0x00a8
                           0000A9   379 G$CLKSEL$0_0$0 == 0x00a9
                           0000A9   380 _CLKSEL	=	0x00a9
                           0000AA   381 G$EMI0CN$0_0$0 == 0x00aa
                           0000AA   382 _EMI0CN	=	0x00aa
                           0000AA   383 G$_XPAGE$0_0$0 == 0x00aa
                           0000AA   384 __XPAGE	=	0x00aa
                           0000AC   385 G$SBCON1$0_0$0 == 0x00ac
                           0000AC   386 _SBCON1	=	0x00ac
                           0000AE   387 G$P4MDOUT$0_0$0 == 0x00ae
                           0000AE   388 _P4MDOUT	=	0x00ae
                           0000AF   389 G$PFE0CN$0_0$0 == 0x00af
                           0000AF   390 _PFE0CN	=	0x00af
                           0000B0   391 G$P3$0_0$0 == 0x00b0
                           0000B0   392 _P3	=	0x00b0
                           0000B1   393 G$OSCXCN$0_0$0 == 0x00b1
                           0000B1   394 _OSCXCN	=	0x00b1
                           0000B2   395 G$OSCICN$0_0$0 == 0x00b2
                           0000B2   396 _OSCICN	=	0x00b2
                           0000B3   397 G$OSCICL$0_0$0 == 0x00b3
                           0000B3   398 _OSCICL	=	0x00b3
                           0000B4   399 G$SBRLL1$0_0$0 == 0x00b4
                           0000B4   400 _SBRLL1	=	0x00b4
                           0000B5   401 G$SBRLH1$0_0$0 == 0x00b5
                           0000B5   402 _SBRLH1	=	0x00b5
                           0000B6   403 G$FLSCL$0_0$0 == 0x00b6
                           0000B6   404 _FLSCL	=	0x00b6
                           0000B7   405 G$FLKEY$0_0$0 == 0x00b7
                           0000B7   406 _FLKEY	=	0x00b7
                           0000B8   407 G$IP$0_0$0 == 0x00b8
                           0000B8   408 _IP	=	0x00b8
                           0000B9   409 G$CLKMUL$0_0$0 == 0x00b9
                           0000B9   410 _CLKMUL	=	0x00b9
                           0000BA   411 G$AMX0N$0_0$0 == 0x00ba
                           0000BA   412 _AMX0N	=	0x00ba
                           0000BB   413 G$AMX0P$0_0$0 == 0x00bb
                           0000BB   414 _AMX0P	=	0x00bb
                           0000BC   415 G$ADC0CF$0_0$0 == 0x00bc
                           0000BC   416 _ADC0CF	=	0x00bc
                           0000BD   417 G$ADC0L$0_0$0 == 0x00bd
                           0000BD   418 _ADC0L	=	0x00bd
                           0000BE   419 G$ADC0H$0_0$0 == 0x00be
                           0000BE   420 _ADC0H	=	0x00be
                           0000C0   421 G$SMB0CN$0_0$0 == 0x00c0
                           0000C0   422 _SMB0CN	=	0x00c0
                           0000C1   423 G$SMB0CF$0_0$0 == 0x00c1
                           0000C1   424 _SMB0CF	=	0x00c1
                           0000C2   425 G$SMB0DAT$0_0$0 == 0x00c2
                           0000C2   426 _SMB0DAT	=	0x00c2
                           0000C3   427 G$ADC0GTL$0_0$0 == 0x00c3
                           0000C3   428 _ADC0GTL	=	0x00c3
                           0000C4   429 G$ADC0GTH$0_0$0 == 0x00c4
                           0000C4   430 _ADC0GTH	=	0x00c4
                           0000C5   431 G$ADC0LTL$0_0$0 == 0x00c5
                           0000C5   432 _ADC0LTL	=	0x00c5
                           0000C6   433 G$ADC0LTH$0_0$0 == 0x00c6
                           0000C6   434 _ADC0LTH	=	0x00c6
                           0000C7   435 G$P4$0_0$0 == 0x00c7
                           0000C7   436 _P4	=	0x00c7
                           0000C8   437 G$T2CON$0_0$0 == 0x00c8
                           0000C8   438 _T2CON	=	0x00c8
                           0000C8   439 G$TMR2CN$0_0$0 == 0x00c8
                           0000C8   440 _TMR2CN	=	0x00c8
                           0000C9   441 G$REG0CN$0_0$0 == 0x00c9
                           0000C9   442 _REG0CN	=	0x00c9
                           0000CA   443 G$RCAP2L$0_0$0 == 0x00ca
                           0000CA   444 _RCAP2L	=	0x00ca
                           0000CA   445 G$TMR2RLL$0_0$0 == 0x00ca
                           0000CA   446 _TMR2RLL	=	0x00ca
                           0000CB   447 G$RCAP2H$0_0$0 == 0x00cb
                           0000CB   448 _RCAP2H	=	0x00cb
                           0000CB   449 G$TMR2RLH$0_0$0 == 0x00cb
                           0000CB   450 _TMR2RLH	=	0x00cb
                           0000CC   451 G$TL2$0_0$0 == 0x00cc
                           0000CC   452 _TL2	=	0x00cc
                           0000CC   453 G$TMR2L$0_0$0 == 0x00cc
                           0000CC   454 _TMR2L	=	0x00cc
                           0000CD   455 G$TH2$0_0$0 == 0x00cd
                           0000CD   456 _TH2	=	0x00cd
                           0000CD   457 G$TMR2H$0_0$0 == 0x00cd
                           0000CD   458 _TMR2H	=	0x00cd
                           0000D0   459 G$PSW$0_0$0 == 0x00d0
                           0000D0   460 _PSW	=	0x00d0
                           0000D1   461 G$REF0CN$0_0$0 == 0x00d1
                           0000D1   462 _REF0CN	=	0x00d1
                           0000D2   463 G$SCON1$0_0$0 == 0x00d2
                           0000D2   464 _SCON1	=	0x00d2
                           0000D3   465 G$SBUF1$0_0$0 == 0x00d3
                           0000D3   466 _SBUF1	=	0x00d3
                           0000D4   467 G$P0SKIP$0_0$0 == 0x00d4
                           0000D4   468 _P0SKIP	=	0x00d4
                           0000D5   469 G$P1SKIP$0_0$0 == 0x00d5
                           0000D5   470 _P1SKIP	=	0x00d5
                           0000D6   471 G$P2SKIP$0_0$0 == 0x00d6
                           0000D6   472 _P2SKIP	=	0x00d6
                           0000D7   473 G$USB0XCN$0_0$0 == 0x00d7
                           0000D7   474 _USB0XCN	=	0x00d7
                           0000D8   475 G$PCA0CN$0_0$0 == 0x00d8
                           0000D8   476 _PCA0CN	=	0x00d8
                           0000D9   477 G$PCA0MD$0_0$0 == 0x00d9
                           0000D9   478 _PCA0MD	=	0x00d9
                           0000DA   479 G$PCA0CPM0$0_0$0 == 0x00da
                           0000DA   480 _PCA0CPM0	=	0x00da
                           0000DB   481 G$PCA0CPM1$0_0$0 == 0x00db
                           0000DB   482 _PCA0CPM1	=	0x00db
                           0000DC   483 G$PCA0CPM2$0_0$0 == 0x00dc
                           0000DC   484 _PCA0CPM2	=	0x00dc
                           0000DD   485 G$PCA0CPM3$0_0$0 == 0x00dd
                           0000DD   486 _PCA0CPM3	=	0x00dd
                           0000DE   487 G$PCA0CPM4$0_0$0 == 0x00de
                           0000DE   488 _PCA0CPM4	=	0x00de
                           0000DF   489 G$P3SKIP$0_0$0 == 0x00df
                           0000DF   490 _P3SKIP	=	0x00df
                           0000E0   491 G$ACC$0_0$0 == 0x00e0
                           0000E0   492 _ACC	=	0x00e0
                           0000E1   493 G$XBR0$0_0$0 == 0x00e1
                           0000E1   494 _XBR0	=	0x00e1
                           0000E2   495 G$XBR1$0_0$0 == 0x00e2
                           0000E2   496 _XBR1	=	0x00e2
                           0000E3   497 G$XBR2$0_0$0 == 0x00e3
                           0000E3   498 _XBR2	=	0x00e3
                           0000E4   499 G$IT01CF$0_0$0 == 0x00e4
                           0000E4   500 _IT01CF	=	0x00e4
                           0000E4   501 G$INT01CF$0_0$0 == 0x00e4
                           0000E4   502 _INT01CF	=	0x00e4
                           0000E5   503 G$SMOD1$0_0$0 == 0x00e5
                           0000E5   504 _SMOD1	=	0x00e5
                           0000E6   505 G$EIE1$0_0$0 == 0x00e6
                           0000E6   506 _EIE1	=	0x00e6
                           0000E7   507 G$EIE2$0_0$0 == 0x00e7
                           0000E7   508 _EIE2	=	0x00e7
                           0000E8   509 G$ADC0CN$0_0$0 == 0x00e8
                           0000E8   510 _ADC0CN	=	0x00e8
                           0000E9   511 G$PCA0CPL1$0_0$0 == 0x00e9
                           0000E9   512 _PCA0CPL1	=	0x00e9
                           0000EA   513 G$PCA0CPH1$0_0$0 == 0x00ea
                           0000EA   514 _PCA0CPH1	=	0x00ea
                           0000EB   515 G$PCA0CPL2$0_0$0 == 0x00eb
                           0000EB   516 _PCA0CPL2	=	0x00eb
                           0000EC   517 G$PCA0CPH2$0_0$0 == 0x00ec
                           0000EC   518 _PCA0CPH2	=	0x00ec
                           0000ED   519 G$PCA0CPL3$0_0$0 == 0x00ed
                           0000ED   520 _PCA0CPL3	=	0x00ed
                           0000EE   521 G$PCA0CPH3$0_0$0 == 0x00ee
                           0000EE   522 _PCA0CPH3	=	0x00ee
                           0000EF   523 G$RSTSRC$0_0$0 == 0x00ef
                           0000EF   524 _RSTSRC	=	0x00ef
                           0000F0   525 G$B$0_0$0 == 0x00f0
                           0000F0   526 _B	=	0x00f0
                           0000F1   527 G$P0MODE$0_0$0 == 0x00f1
                           0000F1   528 _P0MODE	=	0x00f1
                           0000F1   529 G$P0MDIN$0_0$0 == 0x00f1
                           0000F1   530 _P0MDIN	=	0x00f1
                           0000F2   531 G$P1MODE$0_0$0 == 0x00f2
                           0000F2   532 _P1MODE	=	0x00f2
                           0000F2   533 G$P1MDIN$0_0$0 == 0x00f2
                           0000F2   534 _P1MDIN	=	0x00f2
                           0000F3   535 G$P2MODE$0_0$0 == 0x00f3
                           0000F3   536 _P2MODE	=	0x00f3
                           0000F3   537 G$P2MDIN$0_0$0 == 0x00f3
                           0000F3   538 _P2MDIN	=	0x00f3
                           0000F4   539 G$P3MODE$0_0$0 == 0x00f4
                           0000F4   540 _P3MODE	=	0x00f4
                           0000F4   541 G$P3MDIN$0_0$0 == 0x00f4
                           0000F4   542 _P3MDIN	=	0x00f4
                           0000F5   543 G$P4MDIN$0_0$0 == 0x00f5
                           0000F5   544 _P4MDIN	=	0x00f5
                           0000F6   545 G$EIP1$0_0$0 == 0x00f6
                           0000F6   546 _EIP1	=	0x00f6
                           0000F7   547 G$EIP2$0_0$0 == 0x00f7
                           0000F7   548 _EIP2	=	0x00f7
                           0000F8   549 G$SPI0CN$0_0$0 == 0x00f8
                           0000F8   550 _SPI0CN	=	0x00f8
                           0000F9   551 G$PCA0L$0_0$0 == 0x00f9
                           0000F9   552 _PCA0L	=	0x00f9
                           0000FA   553 G$PCA0H$0_0$0 == 0x00fa
                           0000FA   554 _PCA0H	=	0x00fa
                           0000FB   555 G$PCA0CPL0$0_0$0 == 0x00fb
                           0000FB   556 _PCA0CPL0	=	0x00fb
                           0000FC   557 G$PCA0CPH0$0_0$0 == 0x00fc
                           0000FC   558 _PCA0CPH0	=	0x00fc
                           0000FD   559 G$PCA0CPL4$0_0$0 == 0x00fd
                           0000FD   560 _PCA0CPL4	=	0x00fd
                           0000FE   561 G$PCA0CPH4$0_0$0 == 0x00fe
                           0000FE   562 _PCA0CPH4	=	0x00fe
                           0000FF   563 G$VDM0CN$0_0$0 == 0x00ff
                           0000FF   564 _VDM0CN	=	0x00ff
                           008C8A   565 G$TMR0$0_0$0 == 0x8c8a
                           008C8A   566 _TMR0	=	0x8c8a
                           008D8B   567 G$TMR1$0_0$0 == 0x8d8b
                           008D8B   568 _TMR1	=	0x8d8b
                           00CDCC   569 G$TMR2$0_0$0 == 0xcdcc
                           00CDCC   570 _TMR2	=	0xcdcc
                           00CBCA   571 G$RCAP2$0_0$0 == 0xcbca
                           00CBCA   572 _RCAP2	=	0xcbca
                           00CBCA   573 G$TMR2RL$0_0$0 == 0xcbca
                           00CBCA   574 _TMR2RL	=	0xcbca
                           009594   575 G$TMR3$0_0$0 == 0x9594
                           009594   576 _TMR3	=	0x9594
                           009392   577 G$TMR3RL$0_0$0 == 0x9392
                           009392   578 _TMR3RL	=	0x9392
                           00B5B4   579 G$SBRL1$0_0$0 == 0xb5b4
                           00B5B4   580 _SBRL1	=	0xb5b4
                           00BEBD   581 G$ADC0$0_0$0 == 0xbebd
                           00BEBD   582 _ADC0	=	0xbebd
                           00C4C3   583 G$ADC0GT$0_0$0 == 0xc4c3
                           00C4C3   584 _ADC0GT	=	0xc4c3
                           00C6C5   585 G$ADC0LT$0_0$0 == 0xc6c5
                           00C6C5   586 _ADC0LT	=	0xc6c5
                           00FAF9   587 G$PCA0$0_0$0 == 0xfaf9
                           00FAF9   588 _PCA0	=	0xfaf9
                           00FCFB   589 G$PCA0CP0$0_0$0 == 0xfcfb
                           00FCFB   590 _PCA0CP0	=	0xfcfb
                           00EAE9   591 G$PCA0CP1$0_0$0 == 0xeae9
                           00EAE9   592 _PCA0CP1	=	0xeae9
                           00ECEB   593 G$PCA0CP2$0_0$0 == 0xeceb
                           00ECEB   594 _PCA0CP2	=	0xeceb
                           00EEED   595 G$PCA0CP3$0_0$0 == 0xeeed
                           00EEED   596 _PCA0CP3	=	0xeeed
                           00FEFD   597 G$PCA0CP4$0_0$0 == 0xfefd
                           00FEFD   598 _PCA0CP4	=	0xfefd
                                    599 ;--------------------------------------------------------
                                    600 ; special function bits
                                    601 ;--------------------------------------------------------
                                    602 	.area RSEG    (ABS,DATA)
      000000                        603 	.org 0x0000
                           000080   604 G$P0_0$0_0$0 == 0x0080
                           000080   605 _P0_0	=	0x0080
                           000081   606 G$P0_1$0_0$0 == 0x0081
                           000081   607 _P0_1	=	0x0081
                           000082   608 G$P0_2$0_0$0 == 0x0082
                           000082   609 _P0_2	=	0x0082
                           000083   610 G$P0_3$0_0$0 == 0x0083
                           000083   611 _P0_3	=	0x0083
                           000084   612 G$P0_4$0_0$0 == 0x0084
                           000084   613 _P0_4	=	0x0084
                           000085   614 G$P0_5$0_0$0 == 0x0085
                           000085   615 _P0_5	=	0x0085
                           000086   616 G$P0_6$0_0$0 == 0x0086
                           000086   617 _P0_6	=	0x0086
                           000087   618 G$P0_7$0_0$0 == 0x0087
                           000087   619 _P0_7	=	0x0087
                           000088   620 G$IT0$0_0$0 == 0x0088
                           000088   621 _IT0	=	0x0088
                           000089   622 G$IE0$0_0$0 == 0x0089
                           000089   623 _IE0	=	0x0089
                           00008A   624 G$IT1$0_0$0 == 0x008a
                           00008A   625 _IT1	=	0x008a
                           00008B   626 G$IE1$0_0$0 == 0x008b
                           00008B   627 _IE1	=	0x008b
                           00008C   628 G$TR0$0_0$0 == 0x008c
                           00008C   629 _TR0	=	0x008c
                           00008D   630 G$TF0$0_0$0 == 0x008d
                           00008D   631 _TF0	=	0x008d
                           00008E   632 G$TR1$0_0$0 == 0x008e
                           00008E   633 _TR1	=	0x008e
                           00008F   634 G$TF1$0_0$0 == 0x008f
                           00008F   635 _TF1	=	0x008f
                           000090   636 G$P1_0$0_0$0 == 0x0090
                           000090   637 _P1_0	=	0x0090
                           000091   638 G$P1_1$0_0$0 == 0x0091
                           000091   639 _P1_1	=	0x0091
                           000092   640 G$P1_2$0_0$0 == 0x0092
                           000092   641 _P1_2	=	0x0092
                           000093   642 G$P1_3$0_0$0 == 0x0093
                           000093   643 _P1_3	=	0x0093
                           000094   644 G$P1_4$0_0$0 == 0x0094
                           000094   645 _P1_4	=	0x0094
                           000095   646 G$P1_5$0_0$0 == 0x0095
                           000095   647 _P1_5	=	0x0095
                           000096   648 G$P1_6$0_0$0 == 0x0096
                           000096   649 _P1_6	=	0x0096
                           000097   650 G$P1_7$0_0$0 == 0x0097
                           000097   651 _P1_7	=	0x0097
                           000098   652 G$RI$0_0$0 == 0x0098
                           000098   653 _RI	=	0x0098
                           000098   654 G$RI0$0_0$0 == 0x0098
                           000098   655 _RI0	=	0x0098
                           000099   656 G$TI$0_0$0 == 0x0099
                           000099   657 _TI	=	0x0099
                           000099   658 G$TI0$0_0$0 == 0x0099
                           000099   659 _TI0	=	0x0099
                           00009A   660 G$RB8$0_0$0 == 0x009a
                           00009A   661 _RB8	=	0x009a
                           00009A   662 G$RB80$0_0$0 == 0x009a
                           00009A   663 _RB80	=	0x009a
                           00009B   664 G$TB8$0_0$0 == 0x009b
                           00009B   665 _TB8	=	0x009b
                           00009B   666 G$TB80$0_0$0 == 0x009b
                           00009B   667 _TB80	=	0x009b
                           00009C   668 G$REN$0_0$0 == 0x009c
                           00009C   669 _REN	=	0x009c
                           00009C   670 G$REN0$0_0$0 == 0x009c
                           00009C   671 _REN0	=	0x009c
                           00009D   672 G$SM2$0_0$0 == 0x009d
                           00009D   673 _SM2	=	0x009d
                           00009D   674 G$MCE0$0_0$0 == 0x009d
                           00009D   675 _MCE0	=	0x009d
                           00009F   676 G$SM0$0_0$0 == 0x009f
                           00009F   677 _SM0	=	0x009f
                           00009F   678 G$S0MODE$0_0$0 == 0x009f
                           00009F   679 _S0MODE	=	0x009f
                           0000A0   680 G$P2_0$0_0$0 == 0x00a0
                           0000A0   681 _P2_0	=	0x00a0
                           0000A1   682 G$P2_1$0_0$0 == 0x00a1
                           0000A1   683 _P2_1	=	0x00a1
                           0000A2   684 G$P2_2$0_0$0 == 0x00a2
                           0000A2   685 _P2_2	=	0x00a2
                           0000A3   686 G$P2_3$0_0$0 == 0x00a3
                           0000A3   687 _P2_3	=	0x00a3
                           0000A4   688 G$P2_4$0_0$0 == 0x00a4
                           0000A4   689 _P2_4	=	0x00a4
                           0000A5   690 G$P2_5$0_0$0 == 0x00a5
                           0000A5   691 _P2_5	=	0x00a5
                           0000A6   692 G$P2_6$0_0$0 == 0x00a6
                           0000A6   693 _P2_6	=	0x00a6
                           0000A7   694 G$P2_7$0_0$0 == 0x00a7
                           0000A7   695 _P2_7	=	0x00a7
                           0000A8   696 G$EX0$0_0$0 == 0x00a8
                           0000A8   697 _EX0	=	0x00a8
                           0000A9   698 G$ET0$0_0$0 == 0x00a9
                           0000A9   699 _ET0	=	0x00a9
                           0000AA   700 G$EX1$0_0$0 == 0x00aa
                           0000AA   701 _EX1	=	0x00aa
                           0000AB   702 G$ET1$0_0$0 == 0x00ab
                           0000AB   703 _ET1	=	0x00ab
                           0000AC   704 G$ES$0_0$0 == 0x00ac
                           0000AC   705 _ES	=	0x00ac
                           0000AC   706 G$ES0$0_0$0 == 0x00ac
                           0000AC   707 _ES0	=	0x00ac
                           0000AD   708 G$ET2$0_0$0 == 0x00ad
                           0000AD   709 _ET2	=	0x00ad
                           0000AE   710 G$ESPI0$0_0$0 == 0x00ae
                           0000AE   711 _ESPI0	=	0x00ae
                           0000AF   712 G$EA$0_0$0 == 0x00af
                           0000AF   713 _EA	=	0x00af
                           0000B0   714 G$P3_0$0_0$0 == 0x00b0
                           0000B0   715 _P3_0	=	0x00b0
                           0000B1   716 G$P3_1$0_0$0 == 0x00b1
                           0000B1   717 _P3_1	=	0x00b1
                           0000B2   718 G$P3_2$0_0$0 == 0x00b2
                           0000B2   719 _P3_2	=	0x00b2
                           0000B3   720 G$P3_3$0_0$0 == 0x00b3
                           0000B3   721 _P3_3	=	0x00b3
                           0000B4   722 G$P3_4$0_0$0 == 0x00b4
                           0000B4   723 _P3_4	=	0x00b4
                           0000B5   724 G$P3_5$0_0$0 == 0x00b5
                           0000B5   725 _P3_5	=	0x00b5
                           0000B6   726 G$P3_6$0_0$0 == 0x00b6
                           0000B6   727 _P3_6	=	0x00b6
                           0000B7   728 G$P3_7$0_0$0 == 0x00b7
                           0000B7   729 _P3_7	=	0x00b7
                           0000B8   730 G$PX0$0_0$0 == 0x00b8
                           0000B8   731 _PX0	=	0x00b8
                           0000B9   732 G$PT0$0_0$0 == 0x00b9
                           0000B9   733 _PT0	=	0x00b9
                           0000BA   734 G$PX1$0_0$0 == 0x00ba
                           0000BA   735 _PX1	=	0x00ba
                           0000BB   736 G$PT1$0_0$0 == 0x00bb
                           0000BB   737 _PT1	=	0x00bb
                           0000BC   738 G$PS$0_0$0 == 0x00bc
                           0000BC   739 _PS	=	0x00bc
                           0000BC   740 G$PS0$0_0$0 == 0x00bc
                           0000BC   741 _PS0	=	0x00bc
                           0000BD   742 G$PT2$0_0$0 == 0x00bd
                           0000BD   743 _PT2	=	0x00bd
                           0000BE   744 G$PSPI0$0_0$0 == 0x00be
                           0000BE   745 _PSPI0	=	0x00be
                           0000C0   746 G$SI$0_0$0 == 0x00c0
                           0000C0   747 _SI	=	0x00c0
                           0000C1   748 G$ACK$0_0$0 == 0x00c1
                           0000C1   749 _ACK	=	0x00c1
                           0000C2   750 G$ARBLOST$0_0$0 == 0x00c2
                           0000C2   751 _ARBLOST	=	0x00c2
                           0000C3   752 G$ACKRQ$0_0$0 == 0x00c3
                           0000C3   753 _ACKRQ	=	0x00c3
                           0000C4   754 G$STO$0_0$0 == 0x00c4
                           0000C4   755 _STO	=	0x00c4
                           0000C5   756 G$STA$0_0$0 == 0x00c5
                           0000C5   757 _STA	=	0x00c5
                           0000C6   758 G$TXMODE$0_0$0 == 0x00c6
                           0000C6   759 _TXMODE	=	0x00c6
                           0000C7   760 G$MASTER$0_0$0 == 0x00c7
                           0000C7   761 _MASTER	=	0x00c7
                           0000C8   762 G$T2XCLK$0_0$0 == 0x00c8
                           0000C8   763 _T2XCLK	=	0x00c8
                           0000C9   764 G$T2CSS$0_0$0 == 0x00c9
                           0000C9   765 _T2CSS	=	0x00c9
                           0000CA   766 G$TR2$0_0$0 == 0x00ca
                           0000CA   767 _TR2	=	0x00ca
                           0000CB   768 G$T2SPLIT$0_0$0 == 0x00cb
                           0000CB   769 _T2SPLIT	=	0x00cb
                           0000CC   770 G$T2CE$0_0$0 == 0x00cc
                           0000CC   771 _T2CE	=	0x00cc
                           0000CD   772 G$TF2LEN$0_0$0 == 0x00cd
                           0000CD   773 _TF2LEN	=	0x00cd
                           0000CE   774 G$TF2L$0_0$0 == 0x00ce
                           0000CE   775 _TF2L	=	0x00ce
                           0000CF   776 G$TF2$0_0$0 == 0x00cf
                           0000CF   777 _TF2	=	0x00cf
                           0000CF   778 G$TF2H$0_0$0 == 0x00cf
                           0000CF   779 _TF2H	=	0x00cf
                           0000D0   780 G$PARITY$0_0$0 == 0x00d0
                           0000D0   781 _PARITY	=	0x00d0
                           0000D1   782 G$F1$0_0$0 == 0x00d1
                           0000D1   783 _F1	=	0x00d1
                           0000D2   784 G$OV$0_0$0 == 0x00d2
                           0000D2   785 _OV	=	0x00d2
                           0000D3   786 G$RS0$0_0$0 == 0x00d3
                           0000D3   787 _RS0	=	0x00d3
                           0000D4   788 G$RS1$0_0$0 == 0x00d4
                           0000D4   789 _RS1	=	0x00d4
                           0000D5   790 G$F0$0_0$0 == 0x00d5
                           0000D5   791 _F0	=	0x00d5
                           0000D6   792 G$AC$0_0$0 == 0x00d6
                           0000D6   793 _AC	=	0x00d6
                           0000D7   794 G$CY$0_0$0 == 0x00d7
                           0000D7   795 _CY	=	0x00d7
                           0000D8   796 G$CCF0$0_0$0 == 0x00d8
                           0000D8   797 _CCF0	=	0x00d8
                           0000D9   798 G$CCF1$0_0$0 == 0x00d9
                           0000D9   799 _CCF1	=	0x00d9
                           0000DA   800 G$CCF2$0_0$0 == 0x00da
                           0000DA   801 _CCF2	=	0x00da
                           0000DB   802 G$CCF3$0_0$0 == 0x00db
                           0000DB   803 _CCF3	=	0x00db
                           0000DC   804 G$CCF4$0_0$0 == 0x00dc
                           0000DC   805 _CCF4	=	0x00dc
                           0000DE   806 G$CR$0_0$0 == 0x00de
                           0000DE   807 _CR	=	0x00de
                           0000DF   808 G$CF$0_0$0 == 0x00df
                           0000DF   809 _CF	=	0x00df
                           0000E8   810 G$AD0CM0$0_0$0 == 0x00e8
                           0000E8   811 _AD0CM0	=	0x00e8
                           0000E9   812 G$AD0CM1$0_0$0 == 0x00e9
                           0000E9   813 _AD0CM1	=	0x00e9
                           0000EA   814 G$AD0CM2$0_0$0 == 0x00ea
                           0000EA   815 _AD0CM2	=	0x00ea
                           0000EB   816 G$AD0WINT$0_0$0 == 0x00eb
                           0000EB   817 _AD0WINT	=	0x00eb
                           0000EC   818 G$AD0BUSY$0_0$0 == 0x00ec
                           0000EC   819 _AD0BUSY	=	0x00ec
                           0000ED   820 G$AD0INT$0_0$0 == 0x00ed
                           0000ED   821 _AD0INT	=	0x00ed
                           0000EE   822 G$AD0TM$0_0$0 == 0x00ee
                           0000EE   823 _AD0TM	=	0x00ee
                           0000EF   824 G$AD0EN$0_0$0 == 0x00ef
                           0000EF   825 _AD0EN	=	0x00ef
                           0000F8   826 G$SPIEN$0_0$0 == 0x00f8
                           0000F8   827 _SPIEN	=	0x00f8
                           0000F9   828 G$TXBMT$0_0$0 == 0x00f9
                           0000F9   829 _TXBMT	=	0x00f9
                           0000FA   830 G$NSSMD0$0_0$0 == 0x00fa
                           0000FA   831 _NSSMD0	=	0x00fa
                           0000FB   832 G$NSSMD1$0_0$0 == 0x00fb
                           0000FB   833 _NSSMD1	=	0x00fb
                           0000FC   834 G$RXOVRN$0_0$0 == 0x00fc
                           0000FC   835 _RXOVRN	=	0x00fc
                           0000FD   836 G$MODF$0_0$0 == 0x00fd
                           0000FD   837 _MODF	=	0x00fd
                           0000FE   838 G$WCOL$0_0$0 == 0x00fe
                           0000FE   839 _WCOL	=	0x00fe
                           0000FF   840 G$SPIF$0_0$0 == 0x00ff
                           0000FF   841 _SPIF	=	0x00ff
                                    842 ;--------------------------------------------------------
                                    843 ; overlayable register banks
                                    844 ;--------------------------------------------------------
                                    845 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        846 	.ds 8
                                    847 ;--------------------------------------------------------
                                    848 ; internal ram data
                                    849 ;--------------------------------------------------------
                                    850 	.area DSEG    (DATA)
                                    851 ;--------------------------------------------------------
                                    852 ; overlayable items in internal ram
                                    853 ;--------------------------------------------------------
                                    854 ;--------------------------------------------------------
                                    855 ; indirectly addressable internal ram data
                                    856 ;--------------------------------------------------------
                                    857 	.area ISEG    (DATA)
                                    858 ;--------------------------------------------------------
                                    859 ; absolute internal ram data
                                    860 ;--------------------------------------------------------
                                    861 	.area IABS    (ABS,DATA)
                                    862 	.area IABS    (ABS,DATA)
                                    863 ;--------------------------------------------------------
                                    864 ; bit data
                                    865 ;--------------------------------------------------------
                                    866 	.area BSEG    (BIT)
                                    867 ;--------------------------------------------------------
                                    868 ; paged external ram data
                                    869 ;--------------------------------------------------------
                                    870 	.area PSEG    (PAG,XDATA)
                                    871 ;--------------------------------------------------------
                                    872 ; external ram data
                                    873 ;--------------------------------------------------------
                                    874 	.area XSEG    (XDATA)
                                    875 ;--------------------------------------------------------
                                    876 ; absolute external ram data
                                    877 ;--------------------------------------------------------
                                    878 	.area XABS    (ABS,XDATA)
                                    879 ;--------------------------------------------------------
                                    880 ; external initialized ram data
                                    881 ;--------------------------------------------------------
                                    882 	.area XISEG   (XDATA)
                                    883 	.area HOME    (CODE)
                                    884 	.area GSINIT0 (CODE)
                                    885 	.area GSINIT1 (CODE)
                                    886 	.area GSINIT2 (CODE)
                                    887 	.area GSINIT3 (CODE)
                                    888 	.area GSINIT4 (CODE)
                                    889 	.area GSINIT5 (CODE)
                                    890 	.area GSINIT  (CODE)
                                    891 	.area GSFINAL (CODE)
                                    892 	.area CSEG    (CODE)
                                    893 ;--------------------------------------------------------
                                    894 ; global & static initialisations
                                    895 ;--------------------------------------------------------
                                    896 	.area HOME    (CODE)
                                    897 	.area GSINIT  (CODE)
                                    898 	.area GSFINAL (CODE)
                                    899 	.area GSINIT  (CODE)
                                    900 ;--------------------------------------------------------
                                    901 ; Home
                                    902 ;--------------------------------------------------------
                                    903 	.area HOME    (CODE)
                                    904 	.area HOME    (CODE)
                                    905 ;--------------------------------------------------------
                                    906 ; code
                                    907 ;--------------------------------------------------------
                                    908 	.area CSEG    (CODE)
                                    909 ;------------------------------------------------------------
                                    910 ;Allocation info for local variables in function 'vListInitialise'
                                    911 ;------------------------------------------------------------
                                    912 ;pxList                    Allocated to stack - _bp +1
                                    913 ;sloc0                     Allocated to stack - _bp +4
                                    914 ;sloc1                     Allocated to stack - _bp +7
                                    915 ;------------------------------------------------------------
                           000000   916 	G$vListInitialise$0$0 ==.
                           000000   917 	C$list.c$50$0_0$49 ==.
                                    918 ;	list.c:50: void vListInitialise( List_t * const pxList )
                                    919 ;	-----------------------------------------
                                    920 ;	 function vListInitialise
                                    921 ;	-----------------------------------------
      006D66                        922 _vListInitialise:
                           000007   923 	ar7 = 0x07
                           000006   924 	ar6 = 0x06
                           000005   925 	ar5 = 0x05
                           000004   926 	ar4 = 0x04
                           000003   927 	ar3 = 0x03
                           000002   928 	ar2 = 0x02
                           000001   929 	ar1 = 0x01
                           000000   930 	ar0 = 0x00
      006D66 C0 0D            [24]  931 	push	_bp
      006D68 85 81 0D         [24]  932 	mov	_bp,sp
      006D6B C0 82            [24]  933 	push	dpl
      006D6D C0 83            [24]  934 	push	dph
      006D6F C0 F0            [24]  935 	push	b
      006D71 05 81            [12]  936 	inc	sp
      006D73 05 81            [12]  937 	inc	sp
      006D75 05 81            [12]  938 	inc	sp
                           000011   939 	C$list.c$55$1_0$49 ==.
                                    940 ;	list.c:55: pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      006D77 A8 0D            [24]  941 	mov	r0,_bp
      006D79 08               [12]  942 	inc	r0
      006D7A 74 01            [12]  943 	mov	a,#0x01
      006D7C 26               [12]  944 	add	a,@r0
      006D7D FF               [12]  945 	mov	r7,a
      006D7E 74 00            [12]  946 	mov	a,#0x00
      006D80 08               [12]  947 	inc	r0
      006D81 36               [12]  948 	addc	a,@r0
      006D82 FB               [12]  949 	mov	r3,a
      006D83 08               [12]  950 	inc	r0
      006D84 86 02            [24]  951 	mov	ar2,@r0
      006D86 A8 0D            [24]  952 	mov	r0,_bp
      006D88 08               [12]  953 	inc	r0
      006D89 E5 0D            [12]  954 	mov	a,_bp
      006D8B 24 04            [12]  955 	add	a,#0x04
      006D8D F9               [12]  956 	mov	r1,a
      006D8E 74 04            [12]  957 	mov	a,#0x04
      006D90 26               [12]  958 	add	a,@r0
      006D91 F7               [12]  959 	mov	@r1,a
      006D92 74 00            [12]  960 	mov	a,#0x00
      006D94 08               [12]  961 	inc	r0
      006D95 36               [12]  962 	addc	a,@r0
      006D96 09               [12]  963 	inc	r1
      006D97 F7               [12]  964 	mov	@r1,a
      006D98 08               [12]  965 	inc	r0
      006D99 E6               [12]  966 	mov	a,@r0
      006D9A 09               [12]  967 	inc	r1
      006D9B F7               [12]  968 	mov	@r1,a
      006D9C E5 0D            [12]  969 	mov	a,_bp
      006D9E 24 04            [12]  970 	add	a,#0x04
      006DA0 F8               [12]  971 	mov	r0,a
      006DA1 86 04            [24]  972 	mov	ar4,@r0
      006DA3 08               [12]  973 	inc	r0
      006DA4 86 05            [24]  974 	mov	ar5,@r0
      006DA6 08               [12]  975 	inc	r0
      006DA7 86 06            [24]  976 	mov	ar6,@r0
      006DA9 8F 82            [24]  977 	mov	dpl,r7
      006DAB 8B 83            [24]  978 	mov	dph,r3
      006DAD 8A F0            [24]  979 	mov	b,r2
      006DAF EC               [12]  980 	mov	a,r4
      006DB0 12 79 22         [24]  981 	lcall	__gptrput
      006DB3 A3               [24]  982 	inc	dptr
      006DB4 ED               [12]  983 	mov	a,r5
      006DB5 12 79 22         [24]  984 	lcall	__gptrput
      006DB8 A3               [24]  985 	inc	dptr
      006DB9 EE               [12]  986 	mov	a,r6
      006DBA 12 79 22         [24]  987 	lcall	__gptrput
                           000057   988 	C$list.c$59$1_0$49 ==.
                                    989 ;	list.c:59: pxList->xListEnd.xItemValue = portMAX_DELAY;
      006DBD E5 0D            [12]  990 	mov	a,_bp
      006DBF 24 04            [12]  991 	add	a,#0x04
      006DC1 F8               [12]  992 	mov	r0,a
      006DC2 86 82            [24]  993 	mov	dpl,@r0
      006DC4 08               [12]  994 	inc	r0
      006DC5 86 83            [24]  995 	mov	dph,@r0
      006DC7 08               [12]  996 	inc	r0
      006DC8 86 F0            [24]  997 	mov	b,@r0
      006DCA 74 FF            [12]  998 	mov	a,#0xff
      006DCC 12 79 22         [24]  999 	lcall	__gptrput
      006DCF A3               [24] 1000 	inc	dptr
      006DD0 12 79 22         [24] 1001 	lcall	__gptrput
                           00006D  1002 	C$list.c$63$1_0$49 ==.
                                   1003 ;	list.c:63: pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );     /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      006DD3 E5 0D            [12] 1004 	mov	a,_bp
      006DD5 24 04            [12] 1005 	add	a,#0x04
      006DD7 F8               [12] 1006 	mov	r0,a
      006DD8 74 02            [12] 1007 	mov	a,#0x02
      006DDA 26               [12] 1008 	add	a,@r0
      006DDB FF               [12] 1009 	mov	r7,a
      006DDC 74 00            [12] 1010 	mov	a,#0x00
      006DDE 08               [12] 1011 	inc	r0
      006DDF 36               [12] 1012 	addc	a,@r0
      006DE0 FD               [12] 1013 	mov	r5,a
      006DE1 08               [12] 1014 	inc	r0
      006DE2 86 04            [24] 1015 	mov	ar4,@r0
      006DE4 E5 0D            [12] 1016 	mov	a,_bp
      006DE6 24 04            [12] 1017 	add	a,#0x04
      006DE8 F8               [12] 1018 	mov	r0,a
      006DE9 86 02            [24] 1019 	mov	ar2,@r0
      006DEB 08               [12] 1020 	inc	r0
      006DEC 86 03            [24] 1021 	mov	ar3,@r0
      006DEE 08               [12] 1022 	inc	r0
      006DEF 86 06            [24] 1023 	mov	ar6,@r0
      006DF1 8F 82            [24] 1024 	mov	dpl,r7
      006DF3 8D 83            [24] 1025 	mov	dph,r5
      006DF5 8C F0            [24] 1026 	mov	b,r4
      006DF7 EA               [12] 1027 	mov	a,r2
      006DF8 12 79 22         [24] 1028 	lcall	__gptrput
      006DFB A3               [24] 1029 	inc	dptr
      006DFC EB               [12] 1030 	mov	a,r3
      006DFD 12 79 22         [24] 1031 	lcall	__gptrput
      006E00 A3               [24] 1032 	inc	dptr
      006E01 EE               [12] 1033 	mov	a,r6
      006E02 12 79 22         [24] 1034 	lcall	__gptrput
                           00009F  1035 	C$list.c$64$1_0$49 ==.
                                   1036 ;	list.c:64: pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
      006E05 E5 0D            [12] 1037 	mov	a,_bp
      006E07 24 04            [12] 1038 	add	a,#0x04
      006E09 F8               [12] 1039 	mov	r0,a
      006E0A 74 05            [12] 1040 	mov	a,#0x05
      006E0C 26               [12] 1041 	add	a,@r0
      006E0D FF               [12] 1042 	mov	r7,a
      006E0E 74 00            [12] 1043 	mov	a,#0x00
      006E10 08               [12] 1044 	inc	r0
      006E11 36               [12] 1045 	addc	a,@r0
      006E12 FD               [12] 1046 	mov	r5,a
      006E13 08               [12] 1047 	inc	r0
      006E14 86 04            [24] 1048 	mov	ar4,@r0
      006E16 E5 0D            [12] 1049 	mov	a,_bp
      006E18 24 04            [12] 1050 	add	a,#0x04
      006E1A F8               [12] 1051 	mov	r0,a
      006E1B 86 02            [24] 1052 	mov	ar2,@r0
      006E1D 08               [12] 1053 	inc	r0
      006E1E 86 03            [24] 1054 	mov	ar3,@r0
      006E20 08               [12] 1055 	inc	r0
      006E21 86 06            [24] 1056 	mov	ar6,@r0
      006E23 8F 82            [24] 1057 	mov	dpl,r7
      006E25 8D 83            [24] 1058 	mov	dph,r5
      006E27 8C F0            [24] 1059 	mov	b,r4
      006E29 EA               [12] 1060 	mov	a,r2
      006E2A 12 79 22         [24] 1061 	lcall	__gptrput
      006E2D A3               [24] 1062 	inc	dptr
      006E2E EB               [12] 1063 	mov	a,r3
      006E2F 12 79 22         [24] 1064 	lcall	__gptrput
      006E32 A3               [24] 1065 	inc	dptr
      006E33 EE               [12] 1066 	mov	a,r6
      006E34 12 79 22         [24] 1067 	lcall	__gptrput
                           0000D1  1068 	C$list.c$66$1_0$49 ==.
                                   1069 ;	list.c:66: pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
      006E37 A8 0D            [24] 1070 	mov	r0,_bp
      006E39 08               [12] 1071 	inc	r0
      006E3A 86 82            [24] 1072 	mov	dpl,@r0
      006E3C 08               [12] 1073 	inc	r0
      006E3D 86 83            [24] 1074 	mov	dph,@r0
      006E3F 08               [12] 1075 	inc	r0
      006E40 86 F0            [24] 1076 	mov	b,@r0
      006E42 74 00            [12] 1077 	mov	a,#0x00
      006E44 12 79 22         [24] 1078 	lcall	__gptrput
      006E47                       1079 00101$:
                           0000E1  1080 	C$list.c$72$1_0$49 ==.
                                   1081 ;	list.c:72: }
      006E47 85 0D 81         [24] 1082 	mov	sp,_bp
      006E4A D0 0D            [24] 1083 	pop	_bp
                           0000E6  1084 	C$list.c$72$1_0$49 ==.
                           0000E6  1085 	XG$vListInitialise$0$0 ==.
      006E4C 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'vListInitialiseItem'
                                   1089 ;------------------------------------------------------------
                                   1090 ;pxItem                    Allocated to registers r5 r6 r7 
                                   1091 ;------------------------------------------------------------
                           0000E7  1092 	G$vListInitialiseItem$0$0 ==.
                           0000E7  1093 	C$list.c$75$1_0$51 ==.
                                   1094 ;	list.c:75: void vListInitialiseItem( ListItem_t * const pxItem )
                                   1095 ;	-----------------------------------------
                                   1096 ;	 function vListInitialiseItem
                                   1097 ;	-----------------------------------------
      006E4D                       1098 _vListInitialiseItem:
      006E4D AD 82            [24] 1099 	mov	r5,dpl
      006E4F AE 83            [24] 1100 	mov	r6,dph
      006E51 AF F0            [24] 1101 	mov	r7,b
                           0000ED  1102 	C$list.c$78$1_0$51 ==.
                                   1103 ;	list.c:78: pxItem->pxContainer = NULL;
      006E53 74 0B            [12] 1104 	mov	a,#0x0b
      006E55 2D               [12] 1105 	add	a,r5
      006E56 FD               [12] 1106 	mov	r5,a
      006E57 74 00            [12] 1107 	mov	a,#0x00
      006E59 3E               [12] 1108 	addc	a,r6
      006E5A FE               [12] 1109 	mov	r6,a
      006E5B 8D 82            [24] 1110 	mov	dpl,r5
      006E5D 8E 83            [24] 1111 	mov	dph,r6
      006E5F 8F F0            [24] 1112 	mov	b,r7
      006E61 74 00            [12] 1113 	mov	a,#0x00
      006E63 12 79 22         [24] 1114 	lcall	__gptrput
      006E66 A3               [24] 1115 	inc	dptr
      006E67 12 79 22         [24] 1116 	lcall	__gptrput
      006E6A A3               [24] 1117 	inc	dptr
      006E6B 12 79 22         [24] 1118 	lcall	__gptrput
      006E6E                       1119 00101$:
                           000108  1120 	C$list.c$84$1_0$51 ==.
                                   1121 ;	list.c:84: }
                           000108  1122 	C$list.c$84$1_0$51 ==.
                           000108  1123 	XG$vListInitialiseItem$0$0 ==.
      006E6E 22               [24] 1124 	ret
                                   1125 ;------------------------------------------------------------
                                   1126 ;Allocation info for local variables in function 'vListInsertEnd'
                                   1127 ;------------------------------------------------------------
                                   1128 ;pxNewListItem             Allocated to stack - _bp -5
                                   1129 ;pxList                    Allocated to stack - _bp +1
                                   1130 ;pxIndex                   Allocated to stack - _bp +10
                                   1131 ;sloc0                     Allocated to stack - _bp +4
                                   1132 ;sloc1                     Allocated to stack - _bp +7
                                   1133 ;------------------------------------------------------------
                           000109  1134 	G$vListInsertEnd$0$0 ==.
                           000109  1135 	C$list.c$87$1_0$53 ==.
                                   1136 ;	list.c:87: void vListInsertEnd( List_t * const pxList,
                                   1137 ;	-----------------------------------------
                                   1138 ;	 function vListInsertEnd
                                   1139 ;	-----------------------------------------
      006E6F                       1140 _vListInsertEnd:
      006E6F C0 0D            [24] 1141 	push	_bp
      006E71 85 81 0D         [24] 1142 	mov	_bp,sp
      006E74 C0 82            [24] 1143 	push	dpl
      006E76 C0 83            [24] 1144 	push	dph
      006E78 C0 F0            [24] 1145 	push	b
      006E7A E5 81            [12] 1146 	mov	a,sp
      006E7C 24 09            [12] 1147 	add	a,#0x09
      006E7E F5 81            [12] 1148 	mov	sp,a
                           00011A  1149 	C$list.c$90$1_0$53 ==.
                                   1150 ;	list.c:90: ListItem_t * const pxIndex = pxList->pxIndex;
      006E80 A8 0D            [24] 1151 	mov	r0,_bp
      006E82 08               [12] 1152 	inc	r0
      006E83 74 01            [12] 1153 	mov	a,#0x01
      006E85 26               [12] 1154 	add	a,@r0
      006E86 FA               [12] 1155 	mov	r2,a
      006E87 74 00            [12] 1156 	mov	a,#0x00
      006E89 08               [12] 1157 	inc	r0
      006E8A 36               [12] 1158 	addc	a,@r0
      006E8B FB               [12] 1159 	mov	r3,a
      006E8C 08               [12] 1160 	inc	r0
      006E8D 86 04            [24] 1161 	mov	ar4,@r0
      006E8F 8A 82            [24] 1162 	mov	dpl,r2
      006E91 8B 83            [24] 1163 	mov	dph,r3
      006E93 8C F0            [24] 1164 	mov	b,r4
      006E95 E5 0D            [12] 1165 	mov	a,_bp
      006E97 24 0A            [12] 1166 	add	a,#0x0a
      006E99 F8               [12] 1167 	mov	r0,a
      006E9A 12 7C 4D         [24] 1168 	lcall	__gptrget
      006E9D F6               [12] 1169 	mov	@r0,a
      006E9E A3               [24] 1170 	inc	dptr
      006E9F 12 7C 4D         [24] 1171 	lcall	__gptrget
      006EA2 08               [12] 1172 	inc	r0
      006EA3 F6               [12] 1173 	mov	@r0,a
      006EA4 A3               [24] 1174 	inc	dptr
      006EA5 12 7C 4D         [24] 1175 	lcall	__gptrget
      006EA8 08               [12] 1176 	inc	r0
      006EA9 F6               [12] 1177 	mov	@r0,a
                           000144  1178 	C$list.c$101$1_0$53 ==.
                                   1179 ;	list.c:101: pxNewListItem->pxNext = pxIndex;
      006EAA E5 0D            [12] 1180 	mov	a,_bp
      006EAC 24 FB            [12] 1181 	add	a,#0xfb
      006EAE F8               [12] 1182 	mov	r0,a
      006EAF 86 02            [24] 1183 	mov	ar2,@r0
      006EB1 08               [12] 1184 	inc	r0
      006EB2 86 03            [24] 1185 	mov	ar3,@r0
      006EB4 08               [12] 1186 	inc	r0
      006EB5 86 04            [24] 1187 	mov	ar4,@r0
      006EB7 74 02            [12] 1188 	mov	a,#0x02
      006EB9 2A               [12] 1189 	add	a,r2
      006EBA FD               [12] 1190 	mov	r5,a
      006EBB 74 00            [12] 1191 	mov	a,#0x00
      006EBD 3B               [12] 1192 	addc	a,r3
      006EBE FE               [12] 1193 	mov	r6,a
      006EBF 8C 07            [24] 1194 	mov	ar7,r4
      006EC1 8D 82            [24] 1195 	mov	dpl,r5
      006EC3 8E 83            [24] 1196 	mov	dph,r6
      006EC5 8F F0            [24] 1197 	mov	b,r7
      006EC7 E5 0D            [12] 1198 	mov	a,_bp
      006EC9 24 0A            [12] 1199 	add	a,#0x0a
      006ECB F8               [12] 1200 	mov	r0,a
      006ECC E6               [12] 1201 	mov	a,@r0
      006ECD 12 79 22         [24] 1202 	lcall	__gptrput
      006ED0 A3               [24] 1203 	inc	dptr
      006ED1 08               [12] 1204 	inc	r0
      006ED2 E6               [12] 1205 	mov	a,@r0
      006ED3 12 79 22         [24] 1206 	lcall	__gptrput
      006ED6 A3               [24] 1207 	inc	dptr
      006ED7 08               [12] 1208 	inc	r0
      006ED8 E6               [12] 1209 	mov	a,@r0
      006ED9 12 79 22         [24] 1210 	lcall	__gptrput
                           000176  1211 	C$list.c$102$1_0$53 ==.
                                   1212 ;	list.c:102: pxNewListItem->pxPrevious = pxIndex->pxPrevious;
      006EDC E5 0D            [12] 1213 	mov	a,_bp
      006EDE 24 04            [12] 1214 	add	a,#0x04
      006EE0 F8               [12] 1215 	mov	r0,a
      006EE1 74 05            [12] 1216 	mov	a,#0x05
      006EE3 2A               [12] 1217 	add	a,r2
      006EE4 F6               [12] 1218 	mov	@r0,a
      006EE5 74 00            [12] 1219 	mov	a,#0x00
      006EE7 3B               [12] 1220 	addc	a,r3
      006EE8 08               [12] 1221 	inc	r0
      006EE9 F6               [12] 1222 	mov	@r0,a
      006EEA 08               [12] 1223 	inc	r0
      006EEB A6 04            [24] 1224 	mov	@r0,ar4
      006EED E5 0D            [12] 1225 	mov	a,_bp
      006EEF 24 0A            [12] 1226 	add	a,#0x0a
      006EF1 F8               [12] 1227 	mov	r0,a
      006EF2 E5 0D            [12] 1228 	mov	a,_bp
      006EF4 24 07            [12] 1229 	add	a,#0x07
      006EF6 F9               [12] 1230 	mov	r1,a
      006EF7 74 05            [12] 1231 	mov	a,#0x05
      006EF9 26               [12] 1232 	add	a,@r0
      006EFA F7               [12] 1233 	mov	@r1,a
      006EFB 74 00            [12] 1234 	mov	a,#0x00
      006EFD 08               [12] 1235 	inc	r0
      006EFE 36               [12] 1236 	addc	a,@r0
      006EFF 09               [12] 1237 	inc	r1
      006F00 F7               [12] 1238 	mov	@r1,a
      006F01 08               [12] 1239 	inc	r0
      006F02 E6               [12] 1240 	mov	a,@r0
      006F03 09               [12] 1241 	inc	r1
      006F04 F7               [12] 1242 	mov	@r1,a
      006F05 E5 0D            [12] 1243 	mov	a,_bp
      006F07 24 07            [12] 1244 	add	a,#0x07
      006F09 F8               [12] 1245 	mov	r0,a
      006F0A 86 82            [24] 1246 	mov	dpl,@r0
      006F0C 08               [12] 1247 	inc	r0
      006F0D 86 83            [24] 1248 	mov	dph,@r0
      006F0F 08               [12] 1249 	inc	r0
      006F10 86 F0            [24] 1250 	mov	b,@r0
      006F12 12 7C 4D         [24] 1251 	lcall	__gptrget
      006F15 FD               [12] 1252 	mov	r5,a
      006F16 A3               [24] 1253 	inc	dptr
      006F17 12 7C 4D         [24] 1254 	lcall	__gptrget
      006F1A FE               [12] 1255 	mov	r6,a
      006F1B A3               [24] 1256 	inc	dptr
      006F1C 12 7C 4D         [24] 1257 	lcall	__gptrget
      006F1F FF               [12] 1258 	mov	r7,a
      006F20 E5 0D            [12] 1259 	mov	a,_bp
      006F22 24 04            [12] 1260 	add	a,#0x04
      006F24 F8               [12] 1261 	mov	r0,a
      006F25 86 82            [24] 1262 	mov	dpl,@r0
      006F27 08               [12] 1263 	inc	r0
      006F28 86 83            [24] 1264 	mov	dph,@r0
      006F2A 08               [12] 1265 	inc	r0
      006F2B 86 F0            [24] 1266 	mov	b,@r0
      006F2D ED               [12] 1267 	mov	a,r5
      006F2E 12 79 22         [24] 1268 	lcall	__gptrput
      006F31 A3               [24] 1269 	inc	dptr
      006F32 EE               [12] 1270 	mov	a,r6
      006F33 12 79 22         [24] 1271 	lcall	__gptrput
      006F36 A3               [24] 1272 	inc	dptr
      006F37 EF               [12] 1273 	mov	a,r7
      006F38 12 79 22         [24] 1274 	lcall	__gptrput
                           0001D5  1275 	C$list.c$107$1_0$53 ==.
                                   1276 ;	list.c:107: pxIndex->pxPrevious->pxNext = pxNewListItem;
      006F3B E5 0D            [12] 1277 	mov	a,_bp
      006F3D 24 07            [12] 1278 	add	a,#0x07
      006F3F F8               [12] 1279 	mov	r0,a
      006F40 86 82            [24] 1280 	mov	dpl,@r0
      006F42 08               [12] 1281 	inc	r0
      006F43 86 83            [24] 1282 	mov	dph,@r0
      006F45 08               [12] 1283 	inc	r0
      006F46 86 F0            [24] 1284 	mov	b,@r0
      006F48 12 7C 4D         [24] 1285 	lcall	__gptrget
      006F4B FD               [12] 1286 	mov	r5,a
      006F4C A3               [24] 1287 	inc	dptr
      006F4D 12 7C 4D         [24] 1288 	lcall	__gptrget
      006F50 FE               [12] 1289 	mov	r6,a
      006F51 A3               [24] 1290 	inc	dptr
      006F52 12 7C 4D         [24] 1291 	lcall	__gptrget
      006F55 FF               [12] 1292 	mov	r7,a
      006F56 74 02            [12] 1293 	mov	a,#0x02
      006F58 2D               [12] 1294 	add	a,r5
      006F59 FD               [12] 1295 	mov	r5,a
      006F5A 74 00            [12] 1296 	mov	a,#0x00
      006F5C 3E               [12] 1297 	addc	a,r6
      006F5D FE               [12] 1298 	mov	r6,a
      006F5E 8D 82            [24] 1299 	mov	dpl,r5
      006F60 8E 83            [24] 1300 	mov	dph,r6
      006F62 8F F0            [24] 1301 	mov	b,r7
      006F64 EA               [12] 1302 	mov	a,r2
      006F65 12 79 22         [24] 1303 	lcall	__gptrput
      006F68 A3               [24] 1304 	inc	dptr
      006F69 EB               [12] 1305 	mov	a,r3
      006F6A 12 79 22         [24] 1306 	lcall	__gptrput
      006F6D A3               [24] 1307 	inc	dptr
      006F6E EC               [12] 1308 	mov	a,r4
      006F6F 12 79 22         [24] 1309 	lcall	__gptrput
                           00020C  1310 	C$list.c$108$1_0$53 ==.
                                   1311 ;	list.c:108: pxIndex->pxPrevious = pxNewListItem;
      006F72 E5 0D            [12] 1312 	mov	a,_bp
      006F74 24 07            [12] 1313 	add	a,#0x07
      006F76 F8               [12] 1314 	mov	r0,a
      006F77 86 82            [24] 1315 	mov	dpl,@r0
      006F79 08               [12] 1316 	inc	r0
      006F7A 86 83            [24] 1317 	mov	dph,@r0
      006F7C 08               [12] 1318 	inc	r0
      006F7D 86 F0            [24] 1319 	mov	b,@r0
      006F7F EA               [12] 1320 	mov	a,r2
      006F80 12 79 22         [24] 1321 	lcall	__gptrput
      006F83 A3               [24] 1322 	inc	dptr
      006F84 EB               [12] 1323 	mov	a,r3
      006F85 12 79 22         [24] 1324 	lcall	__gptrput
      006F88 A3               [24] 1325 	inc	dptr
      006F89 EC               [12] 1326 	mov	a,r4
      006F8A 12 79 22         [24] 1327 	lcall	__gptrput
                           000227  1328 	C$list.c$111$1_0$53 ==.
                                   1329 ;	list.c:111: pxNewListItem->pxContainer = pxList;
      006F8D 74 0B            [12] 1330 	mov	a,#0x0b
      006F8F 2A               [12] 1331 	add	a,r2
      006F90 FA               [12] 1332 	mov	r2,a
      006F91 74 00            [12] 1333 	mov	a,#0x00
      006F93 3B               [12] 1334 	addc	a,r3
      006F94 FB               [12] 1335 	mov	r3,a
      006F95 8A 82            [24] 1336 	mov	dpl,r2
      006F97 8B 83            [24] 1337 	mov	dph,r3
      006F99 8C F0            [24] 1338 	mov	b,r4
      006F9B A8 0D            [24] 1339 	mov	r0,_bp
      006F9D 08               [12] 1340 	inc	r0
      006F9E E6               [12] 1341 	mov	a,@r0
      006F9F 12 79 22         [24] 1342 	lcall	__gptrput
      006FA2 A3               [24] 1343 	inc	dptr
      006FA3 08               [12] 1344 	inc	r0
      006FA4 E6               [12] 1345 	mov	a,@r0
      006FA5 12 79 22         [24] 1346 	lcall	__gptrput
      006FA8 A3               [24] 1347 	inc	dptr
      006FA9 08               [12] 1348 	inc	r0
      006FAA E6               [12] 1349 	mov	a,@r0
      006FAB 12 79 22         [24] 1350 	lcall	__gptrput
                           000248  1351 	C$list.c$113$1_0$53 ==.
                                   1352 ;	list.c:113: ( pxList->uxNumberOfItems )++;
      006FAE A8 0D            [24] 1353 	mov	r0,_bp
      006FB0 08               [12] 1354 	inc	r0
      006FB1 86 82            [24] 1355 	mov	dpl,@r0
      006FB3 08               [12] 1356 	inc	r0
      006FB4 86 83            [24] 1357 	mov	dph,@r0
      006FB6 08               [12] 1358 	inc	r0
      006FB7 86 F0            [24] 1359 	mov	b,@r0
      006FB9 12 7C 4D         [24] 1360 	lcall	__gptrget
      006FBC FF               [12] 1361 	mov	r7,a
      006FBD 0F               [12] 1362 	inc	r7
      006FBE A8 0D            [24] 1363 	mov	r0,_bp
      006FC0 08               [12] 1364 	inc	r0
      006FC1 86 82            [24] 1365 	mov	dpl,@r0
      006FC3 08               [12] 1366 	inc	r0
      006FC4 86 83            [24] 1367 	mov	dph,@r0
      006FC6 08               [12] 1368 	inc	r0
      006FC7 86 F0            [24] 1369 	mov	b,@r0
      006FC9 EF               [12] 1370 	mov	a,r7
      006FCA 12 79 22         [24] 1371 	lcall	__gptrput
      006FCD                       1372 00101$:
                           000267  1373 	C$list.c$114$1_0$53 ==.
                                   1374 ;	list.c:114: }
      006FCD 85 0D 81         [24] 1375 	mov	sp,_bp
      006FD0 D0 0D            [24] 1376 	pop	_bp
                           00026C  1377 	C$list.c$114$1_0$53 ==.
                           00026C  1378 	XG$vListInsertEnd$0$0 ==.
      006FD2 22               [24] 1379 	ret
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function 'vListInsert'
                                   1382 ;------------------------------------------------------------
                                   1383 ;pxNewListItem             Allocated to stack - _bp -5
                                   1384 ;pxList                    Allocated to stack - _bp +1
                                   1385 ;pxIterator                Allocated to stack - _bp +12
                                   1386 ;xValueOfInsertion         Allocated to stack - _bp +10
                                   1387 ;sloc0                     Allocated to stack - _bp +4
                                   1388 ;sloc1                     Allocated to stack - _bp +7
                                   1389 ;------------------------------------------------------------
                           00026D  1390 	G$vListInsert$0$0 ==.
                           00026D  1391 	C$list.c$117$1_0$55 ==.
                                   1392 ;	list.c:117: void vListInsert( List_t * const pxList,
                                   1393 ;	-----------------------------------------
                                   1394 ;	 function vListInsert
                                   1395 ;	-----------------------------------------
      006FD3                       1396 _vListInsert:
      006FD3 C0 0D            [24] 1397 	push	_bp
      006FD5 85 81 0D         [24] 1398 	mov	_bp,sp
      006FD8 C0 82            [24] 1399 	push	dpl
      006FDA C0 83            [24] 1400 	push	dph
      006FDC C0 F0            [24] 1401 	push	b
      006FDE E5 81            [12] 1402 	mov	a,sp
      006FE0 24 0B            [12] 1403 	add	a,#0x0b
      006FE2 F5 81            [12] 1404 	mov	sp,a
                           00027E  1405 	C$list.c$121$1_0$55 ==.
                                   1406 ;	list.c:121: const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
      006FE4 E5 0D            [12] 1407 	mov	a,_bp
      006FE6 24 FB            [12] 1408 	add	a,#0xfb
      006FE8 F8               [12] 1409 	mov	r0,a
      006FE9 86 02            [24] 1410 	mov	ar2,@r0
      006FEB 08               [12] 1411 	inc	r0
      006FEC 86 03            [24] 1412 	mov	ar3,@r0
      006FEE 08               [12] 1413 	inc	r0
      006FEF 86 04            [24] 1414 	mov	ar4,@r0
      006FF1 8A 82            [24] 1415 	mov	dpl,r2
      006FF3 8B 83            [24] 1416 	mov	dph,r3
      006FF5 8C F0            [24] 1417 	mov	b,r4
      006FF7 E5 0D            [12] 1418 	mov	a,_bp
      006FF9 24 0A            [12] 1419 	add	a,#0x0a
      006FFB F8               [12] 1420 	mov	r0,a
      006FFC 12 7C 4D         [24] 1421 	lcall	__gptrget
      006FFF F6               [12] 1422 	mov	@r0,a
      007000 A3               [24] 1423 	inc	dptr
      007001 12 7C 4D         [24] 1424 	lcall	__gptrget
      007004 08               [12] 1425 	inc	r0
      007005 F6               [12] 1426 	mov	@r0,a
                           0002A0  1427 	C$list.c$137$1_0$55 ==.
                                   1428 ;	list.c:137: if( xValueOfInsertion == portMAX_DELAY )
      007006 E5 0D            [12] 1429 	mov	a,_bp
      007008 24 0A            [12] 1430 	add	a,#0x0a
      00700A F8               [12] 1431 	mov	r0,a
      00700B B6 FF 06         [24] 1432 	cjne	@r0,#0xff,00122$
      00700E 08               [12] 1433 	inc	r0
      00700F B6 FF 02         [24] 1434 	cjne	@r0,#0xff,00122$
      007012 80 03            [24] 1435 	sjmp	00123$
      007014                       1436 00122$:
      007014 02 70 58         [24] 1437 	ljmp	00103$
      007017                       1438 00123$:
                           0002B1  1439 	C$list.c$139$1_0$55 ==.
                                   1440 ;	list.c:139: pxIterator = pxList->xListEnd.pxPrevious;
      007017 C0 02            [24] 1441 	push	ar2
      007019 C0 03            [24] 1442 	push	ar3
      00701B C0 04            [24] 1443 	push	ar4
      00701D A8 0D            [24] 1444 	mov	r0,_bp
      00701F 08               [12] 1445 	inc	r0
      007020 74 04            [12] 1446 	mov	a,#0x04
      007022 26               [12] 1447 	add	a,@r0
      007023 FA               [12] 1448 	mov	r2,a
      007024 74 00            [12] 1449 	mov	a,#0x00
      007026 08               [12] 1450 	inc	r0
      007027 36               [12] 1451 	addc	a,@r0
      007028 FB               [12] 1452 	mov	r3,a
      007029 08               [12] 1453 	inc	r0
      00702A 86 04            [24] 1454 	mov	ar4,@r0
      00702C 74 05            [12] 1455 	mov	a,#0x05
      00702E 2A               [12] 1456 	add	a,r2
      00702F FA               [12] 1457 	mov	r2,a
      007030 74 00            [12] 1458 	mov	a,#0x00
      007032 3B               [12] 1459 	addc	a,r3
      007033 FB               [12] 1460 	mov	r3,a
      007034 8A 82            [24] 1461 	mov	dpl,r2
      007036 8B 83            [24] 1462 	mov	dph,r3
      007038 8C F0            [24] 1463 	mov	b,r4
      00703A E5 0D            [12] 1464 	mov	a,_bp
      00703C 24 0C            [12] 1465 	add	a,#0x0c
      00703E F8               [12] 1466 	mov	r0,a
      00703F 12 7C 4D         [24] 1467 	lcall	__gptrget
      007042 F6               [12] 1468 	mov	@r0,a
      007043 A3               [24] 1469 	inc	dptr
      007044 12 7C 4D         [24] 1470 	lcall	__gptrget
      007047 08               [12] 1471 	inc	r0
      007048 F6               [12] 1472 	mov	@r0,a
      007049 A3               [24] 1473 	inc	dptr
      00704A 12 7C 4D         [24] 1474 	lcall	__gptrget
      00704D 08               [12] 1475 	inc	r0
      00704E F6               [12] 1476 	mov	@r0,a
      00704F D0 04            [24] 1477 	pop	ar4
      007051 D0 03            [24] 1478 	pop	ar3
      007053 D0 02            [24] 1479 	pop	ar2
      007055 02 70 E2         [24] 1480 	ljmp	00104$
      007058                       1481 00103$:
                           0002F2  1482 	C$list.c$168$3_0$58 ==.
                                   1483 ;	list.c:168: for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
      007058 A8 0D            [24] 1484 	mov	r0,_bp
      00705A 08               [12] 1485 	inc	r0
      00705B 74 04            [12] 1486 	mov	a,#0x04
      00705D 26               [12] 1487 	add	a,@r0
      00705E FD               [12] 1488 	mov	r5,a
      00705F 74 00            [12] 1489 	mov	a,#0x00
      007061 08               [12] 1490 	inc	r0
      007062 36               [12] 1491 	addc	a,@r0
      007063 FE               [12] 1492 	mov	r6,a
      007064 08               [12] 1493 	inc	r0
      007065 86 07            [24] 1494 	mov	ar7,@r0
      007067 E5 0D            [12] 1495 	mov	a,_bp
      007069 24 0C            [12] 1496 	add	a,#0x0c
      00706B F8               [12] 1497 	mov	r0,a
      00706C A6 05            [24] 1498 	mov	@r0,ar5
      00706E 08               [12] 1499 	inc	r0
      00706F A6 06            [24] 1500 	mov	@r0,ar6
      007071 08               [12] 1501 	inc	r0
      007072 A6 07            [24] 1502 	mov	@r0,ar7
      007074                       1503 00106$:
      007074 C0 02            [24] 1504 	push	ar2
      007076 C0 03            [24] 1505 	push	ar3
      007078 C0 04            [24] 1506 	push	ar4
      00707A E5 0D            [12] 1507 	mov	a,_bp
      00707C 24 0C            [12] 1508 	add	a,#0x0c
      00707E F8               [12] 1509 	mov	r0,a
      00707F 74 02            [12] 1510 	mov	a,#0x02
      007081 26               [12] 1511 	add	a,@r0
      007082 FD               [12] 1512 	mov	r5,a
      007083 74 00            [12] 1513 	mov	a,#0x00
      007085 08               [12] 1514 	inc	r0
      007086 36               [12] 1515 	addc	a,@r0
      007087 FE               [12] 1516 	mov	r6,a
      007088 08               [12] 1517 	inc	r0
      007089 86 07            [24] 1518 	mov	ar7,@r0
      00708B 8D 82            [24] 1519 	mov	dpl,r5
      00708D 8E 83            [24] 1520 	mov	dph,r6
      00708F 8F F0            [24] 1521 	mov	b,r7
      007091 12 7C 4D         [24] 1522 	lcall	__gptrget
      007094 FA               [12] 1523 	mov	r2,a
      007095 A3               [24] 1524 	inc	dptr
      007096 12 7C 4D         [24] 1525 	lcall	__gptrget
      007099 FB               [12] 1526 	mov	r3,a
      00709A A3               [24] 1527 	inc	dptr
      00709B 12 7C 4D         [24] 1528 	lcall	__gptrget
      00709E FC               [12] 1529 	mov	r4,a
      00709F 8A 82            [24] 1530 	mov	dpl,r2
      0070A1 8B 83            [24] 1531 	mov	dph,r3
      0070A3 8C F0            [24] 1532 	mov	b,r4
      0070A5 12 7C 4D         [24] 1533 	lcall	__gptrget
      0070A8 FA               [12] 1534 	mov	r2,a
      0070A9 A3               [24] 1535 	inc	dptr
      0070AA 12 7C 4D         [24] 1536 	lcall	__gptrget
      0070AD FB               [12] 1537 	mov	r3,a
      0070AE E5 0D            [12] 1538 	mov	a,_bp
      0070B0 24 0A            [12] 1539 	add	a,#0x0a
      0070B2 F8               [12] 1540 	mov	r0,a
      0070B3 C3               [12] 1541 	clr	c
      0070B4 E6               [12] 1542 	mov	a,@r0
      0070B5 9A               [12] 1543 	subb	a,r2
      0070B6 08               [12] 1544 	inc	r0
      0070B7 E6               [12] 1545 	mov	a,@r0
      0070B8 9B               [12] 1546 	subb	a,r3
      0070B9 D0 04            [24] 1547 	pop	ar4
      0070BB D0 03            [24] 1548 	pop	ar3
      0070BD D0 02            [24] 1549 	pop	ar2
      0070BF 50 03            [24] 1550 	jnc	00124$
      0070C1 02 70 E2         [24] 1551 	ljmp	00104$
      0070C4                       1552 00124$:
      0070C4 8D 82            [24] 1553 	mov	dpl,r5
      0070C6 8E 83            [24] 1554 	mov	dph,r6
      0070C8 8F F0            [24] 1555 	mov	b,r7
      0070CA E5 0D            [12] 1556 	mov	a,_bp
      0070CC 24 0C            [12] 1557 	add	a,#0x0c
      0070CE F8               [12] 1558 	mov	r0,a
      0070CF 12 7C 4D         [24] 1559 	lcall	__gptrget
      0070D2 F6               [12] 1560 	mov	@r0,a
      0070D3 A3               [24] 1561 	inc	dptr
      0070D4 12 7C 4D         [24] 1562 	lcall	__gptrget
      0070D7 08               [12] 1563 	inc	r0
      0070D8 F6               [12] 1564 	mov	@r0,a
      0070D9 A3               [24] 1565 	inc	dptr
      0070DA 12 7C 4D         [24] 1566 	lcall	__gptrget
      0070DD 08               [12] 1567 	inc	r0
      0070DE F6               [12] 1568 	mov	@r0,a
      0070DF 02 70 74         [24] 1569 	ljmp	00106$
      0070E2                       1570 00104$:
                           00037C  1571 	C$list.c$175$1_0$55 ==.
                                   1572 ;	list.c:175: pxNewListItem->pxNext = pxIterator->pxNext;
      0070E2 E5 0D            [12] 1573 	mov	a,_bp
      0070E4 24 04            [12] 1574 	add	a,#0x04
      0070E6 F8               [12] 1575 	mov	r0,a
      0070E7 74 02            [12] 1576 	mov	a,#0x02
      0070E9 2A               [12] 1577 	add	a,r2
      0070EA F6               [12] 1578 	mov	@r0,a
      0070EB 74 00            [12] 1579 	mov	a,#0x00
      0070ED 3B               [12] 1580 	addc	a,r3
      0070EE 08               [12] 1581 	inc	r0
      0070EF F6               [12] 1582 	mov	@r0,a
      0070F0 08               [12] 1583 	inc	r0
      0070F1 A6 04            [24] 1584 	mov	@r0,ar4
      0070F3 E5 0D            [12] 1585 	mov	a,_bp
      0070F5 24 0C            [12] 1586 	add	a,#0x0c
      0070F7 F8               [12] 1587 	mov	r0,a
      0070F8 E5 0D            [12] 1588 	mov	a,_bp
      0070FA 24 07            [12] 1589 	add	a,#0x07
      0070FC F9               [12] 1590 	mov	r1,a
      0070FD 74 02            [12] 1591 	mov	a,#0x02
      0070FF 26               [12] 1592 	add	a,@r0
      007100 F7               [12] 1593 	mov	@r1,a
      007101 74 00            [12] 1594 	mov	a,#0x00
      007103 08               [12] 1595 	inc	r0
      007104 36               [12] 1596 	addc	a,@r0
      007105 09               [12] 1597 	inc	r1
      007106 F7               [12] 1598 	mov	@r1,a
      007107 08               [12] 1599 	inc	r0
      007108 E6               [12] 1600 	mov	a,@r0
      007109 09               [12] 1601 	inc	r1
      00710A F7               [12] 1602 	mov	@r1,a
      00710B E5 0D            [12] 1603 	mov	a,_bp
      00710D 24 07            [12] 1604 	add	a,#0x07
      00710F F8               [12] 1605 	mov	r0,a
      007110 86 82            [24] 1606 	mov	dpl,@r0
      007112 08               [12] 1607 	inc	r0
      007113 86 83            [24] 1608 	mov	dph,@r0
      007115 08               [12] 1609 	inc	r0
      007116 86 F0            [24] 1610 	mov	b,@r0
      007118 12 7C 4D         [24] 1611 	lcall	__gptrget
      00711B FD               [12] 1612 	mov	r5,a
      00711C A3               [24] 1613 	inc	dptr
      00711D 12 7C 4D         [24] 1614 	lcall	__gptrget
      007120 FE               [12] 1615 	mov	r6,a
      007121 A3               [24] 1616 	inc	dptr
      007122 12 7C 4D         [24] 1617 	lcall	__gptrget
      007125 FF               [12] 1618 	mov	r7,a
      007126 E5 0D            [12] 1619 	mov	a,_bp
      007128 24 04            [12] 1620 	add	a,#0x04
      00712A F8               [12] 1621 	mov	r0,a
      00712B 86 82            [24] 1622 	mov	dpl,@r0
      00712D 08               [12] 1623 	inc	r0
      00712E 86 83            [24] 1624 	mov	dph,@r0
      007130 08               [12] 1625 	inc	r0
      007131 86 F0            [24] 1626 	mov	b,@r0
      007133 ED               [12] 1627 	mov	a,r5
      007134 12 79 22         [24] 1628 	lcall	__gptrput
      007137 A3               [24] 1629 	inc	dptr
      007138 EE               [12] 1630 	mov	a,r6
      007139 12 79 22         [24] 1631 	lcall	__gptrput
      00713C A3               [24] 1632 	inc	dptr
      00713D EF               [12] 1633 	mov	a,r7
      00713E 12 79 22         [24] 1634 	lcall	__gptrput
                           0003DB  1635 	C$list.c$176$1_0$55 ==.
                                   1636 ;	list.c:176: pxNewListItem->pxNext->pxPrevious = pxNewListItem;
      007141 74 05            [12] 1637 	mov	a,#0x05
      007143 2D               [12] 1638 	add	a,r5
      007144 FD               [12] 1639 	mov	r5,a
      007145 74 00            [12] 1640 	mov	a,#0x00
      007147 3E               [12] 1641 	addc	a,r6
      007148 FE               [12] 1642 	mov	r6,a
      007149 8D 82            [24] 1643 	mov	dpl,r5
      00714B 8E 83            [24] 1644 	mov	dph,r6
      00714D 8F F0            [24] 1645 	mov	b,r7
      00714F EA               [12] 1646 	mov	a,r2
      007150 12 79 22         [24] 1647 	lcall	__gptrput
      007153 A3               [24] 1648 	inc	dptr
      007154 EB               [12] 1649 	mov	a,r3
      007155 12 79 22         [24] 1650 	lcall	__gptrput
      007158 A3               [24] 1651 	inc	dptr
      007159 EC               [12] 1652 	mov	a,r4
      00715A 12 79 22         [24] 1653 	lcall	__gptrput
                           0003F7  1654 	C$list.c$177$1_0$55 ==.
                                   1655 ;	list.c:177: pxNewListItem->pxPrevious = pxIterator;
      00715D 74 05            [12] 1656 	mov	a,#0x05
      00715F 2A               [12] 1657 	add	a,r2
      007160 FD               [12] 1658 	mov	r5,a
      007161 74 00            [12] 1659 	mov	a,#0x00
      007163 3B               [12] 1660 	addc	a,r3
      007164 FE               [12] 1661 	mov	r6,a
      007165 8C 07            [24] 1662 	mov	ar7,r4
      007167 8D 82            [24] 1663 	mov	dpl,r5
      007169 8E 83            [24] 1664 	mov	dph,r6
      00716B 8F F0            [24] 1665 	mov	b,r7
      00716D E5 0D            [12] 1666 	mov	a,_bp
      00716F 24 0C            [12] 1667 	add	a,#0x0c
      007171 F8               [12] 1668 	mov	r0,a
      007172 E6               [12] 1669 	mov	a,@r0
      007173 12 79 22         [24] 1670 	lcall	__gptrput
      007176 A3               [24] 1671 	inc	dptr
      007177 08               [12] 1672 	inc	r0
      007178 E6               [12] 1673 	mov	a,@r0
      007179 12 79 22         [24] 1674 	lcall	__gptrput
      00717C A3               [24] 1675 	inc	dptr
      00717D 08               [12] 1676 	inc	r0
      00717E E6               [12] 1677 	mov	a,@r0
      00717F 12 79 22         [24] 1678 	lcall	__gptrput
                           00041C  1679 	C$list.c$178$1_0$55 ==.
                                   1680 ;	list.c:178: pxIterator->pxNext = pxNewListItem;
      007182 E5 0D            [12] 1681 	mov	a,_bp
      007184 24 07            [12] 1682 	add	a,#0x07
      007186 F8               [12] 1683 	mov	r0,a
      007187 86 82            [24] 1684 	mov	dpl,@r0
      007189 08               [12] 1685 	inc	r0
      00718A 86 83            [24] 1686 	mov	dph,@r0
      00718C 08               [12] 1687 	inc	r0
      00718D 86 F0            [24] 1688 	mov	b,@r0
      00718F EA               [12] 1689 	mov	a,r2
      007190 12 79 22         [24] 1690 	lcall	__gptrput
      007193 A3               [24] 1691 	inc	dptr
      007194 EB               [12] 1692 	mov	a,r3
      007195 12 79 22         [24] 1693 	lcall	__gptrput
      007198 A3               [24] 1694 	inc	dptr
      007199 EC               [12] 1695 	mov	a,r4
      00719A 12 79 22         [24] 1696 	lcall	__gptrput
                           000437  1697 	C$list.c$182$1_0$55 ==.
                                   1698 ;	list.c:182: pxNewListItem->pxContainer = pxList;
      00719D 74 0B            [12] 1699 	mov	a,#0x0b
      00719F 2A               [12] 1700 	add	a,r2
      0071A0 FA               [12] 1701 	mov	r2,a
      0071A1 74 00            [12] 1702 	mov	a,#0x00
      0071A3 3B               [12] 1703 	addc	a,r3
      0071A4 FB               [12] 1704 	mov	r3,a
      0071A5 8A 82            [24] 1705 	mov	dpl,r2
      0071A7 8B 83            [24] 1706 	mov	dph,r3
      0071A9 8C F0            [24] 1707 	mov	b,r4
      0071AB A8 0D            [24] 1708 	mov	r0,_bp
      0071AD 08               [12] 1709 	inc	r0
      0071AE E6               [12] 1710 	mov	a,@r0
      0071AF 12 79 22         [24] 1711 	lcall	__gptrput
      0071B2 A3               [24] 1712 	inc	dptr
      0071B3 08               [12] 1713 	inc	r0
      0071B4 E6               [12] 1714 	mov	a,@r0
      0071B5 12 79 22         [24] 1715 	lcall	__gptrput
      0071B8 A3               [24] 1716 	inc	dptr
      0071B9 08               [12] 1717 	inc	r0
      0071BA E6               [12] 1718 	mov	a,@r0
      0071BB 12 79 22         [24] 1719 	lcall	__gptrput
                           000458  1720 	C$list.c$184$1_0$55 ==.
                                   1721 ;	list.c:184: ( pxList->uxNumberOfItems )++;
      0071BE A8 0D            [24] 1722 	mov	r0,_bp
      0071C0 08               [12] 1723 	inc	r0
      0071C1 86 82            [24] 1724 	mov	dpl,@r0
      0071C3 08               [12] 1725 	inc	r0
      0071C4 86 83            [24] 1726 	mov	dph,@r0
      0071C6 08               [12] 1727 	inc	r0
      0071C7 86 F0            [24] 1728 	mov	b,@r0
      0071C9 12 7C 4D         [24] 1729 	lcall	__gptrget
      0071CC FF               [12] 1730 	mov	r7,a
      0071CD 0F               [12] 1731 	inc	r7
      0071CE A8 0D            [24] 1732 	mov	r0,_bp
      0071D0 08               [12] 1733 	inc	r0
      0071D1 86 82            [24] 1734 	mov	dpl,@r0
      0071D3 08               [12] 1735 	inc	r0
      0071D4 86 83            [24] 1736 	mov	dph,@r0
      0071D6 08               [12] 1737 	inc	r0
      0071D7 86 F0            [24] 1738 	mov	b,@r0
      0071D9 EF               [12] 1739 	mov	a,r7
      0071DA 12 79 22         [24] 1740 	lcall	__gptrput
      0071DD                       1741 00108$:
                           000477  1742 	C$list.c$185$1_0$55 ==.
                                   1743 ;	list.c:185: }
      0071DD 85 0D 81         [24] 1744 	mov	sp,_bp
      0071E0 D0 0D            [24] 1745 	pop	_bp
                           00047C  1746 	C$list.c$185$1_0$55 ==.
                           00047C  1747 	XG$vListInsert$0$0 ==.
      0071E2 22               [24] 1748 	ret
                                   1749 ;------------------------------------------------------------
                                   1750 ;Allocation info for local variables in function 'uxListRemove'
                                   1751 ;------------------------------------------------------------
                                   1752 ;pxItemToRemove            Allocated to stack - _bp +1
                                   1753 ;pxList                    Allocated to stack - _bp +13
                                   1754 ;sloc0                     Allocated to stack - _bp +7
                                   1755 ;sloc1                     Allocated to stack - _bp +4
                                   1756 ;sloc2                     Allocated to stack - _bp +10
                                   1757 ;------------------------------------------------------------
                           00047D  1758 	G$uxListRemove$0$0 ==.
                           00047D  1759 	C$list.c$188$1_0$61 ==.
                                   1760 ;	list.c:188: UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove )
                                   1761 ;	-----------------------------------------
                                   1762 ;	 function uxListRemove
                                   1763 ;	-----------------------------------------
      0071E3                       1764 _uxListRemove:
      0071E3 C0 0D            [24] 1765 	push	_bp
      0071E5 85 81 0D         [24] 1766 	mov	_bp,sp
      0071E8 C0 82            [24] 1767 	push	dpl
      0071EA C0 83            [24] 1768 	push	dph
      0071EC C0 F0            [24] 1769 	push	b
      0071EE E5 81            [12] 1770 	mov	a,sp
      0071F0 24 0C            [12] 1771 	add	a,#0x0c
      0071F2 F5 81            [12] 1772 	mov	sp,a
                           00048E  1773 	C$list.c$192$1_0$61 ==.
                                   1774 ;	list.c:192: List_t * const pxList = pxItemToRemove->pxContainer;
      0071F4 A8 0D            [24] 1775 	mov	r0,_bp
      0071F6 08               [12] 1776 	inc	r0
      0071F7 74 0B            [12] 1777 	mov	a,#0x0b
      0071F9 26               [12] 1778 	add	a,@r0
      0071FA FA               [12] 1779 	mov	r2,a
      0071FB 74 00            [12] 1780 	mov	a,#0x00
      0071FD 08               [12] 1781 	inc	r0
      0071FE 36               [12] 1782 	addc	a,@r0
      0071FF FB               [12] 1783 	mov	r3,a
      007200 08               [12] 1784 	inc	r0
      007201 86 04            [24] 1785 	mov	ar4,@r0
      007203 8A 82            [24] 1786 	mov	dpl,r2
      007205 8B 83            [24] 1787 	mov	dph,r3
      007207 8C F0            [24] 1788 	mov	b,r4
      007209 E5 0D            [12] 1789 	mov	a,_bp
      00720B 24 0D            [12] 1790 	add	a,#0x0d
      00720D F8               [12] 1791 	mov	r0,a
      00720E 12 7C 4D         [24] 1792 	lcall	__gptrget
      007211 F6               [12] 1793 	mov	@r0,a
      007212 A3               [24] 1794 	inc	dptr
      007213 12 7C 4D         [24] 1795 	lcall	__gptrget
      007216 08               [12] 1796 	inc	r0
      007217 F6               [12] 1797 	mov	@r0,a
      007218 A3               [24] 1798 	inc	dptr
      007219 12 7C 4D         [24] 1799 	lcall	__gptrget
      00721C 08               [12] 1800 	inc	r0
      00721D F6               [12] 1801 	mov	@r0,a
                           0004B8  1802 	C$list.c$194$1_0$61 ==.
                                   1803 ;	list.c:194: pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
      00721E A8 0D            [24] 1804 	mov	r0,_bp
      007220 08               [12] 1805 	inc	r0
      007221 E5 0D            [12] 1806 	mov	a,_bp
      007223 24 07            [12] 1807 	add	a,#0x07
      007225 F9               [12] 1808 	mov	r1,a
      007226 74 02            [12] 1809 	mov	a,#0x02
      007228 26               [12] 1810 	add	a,@r0
      007229 F7               [12] 1811 	mov	@r1,a
      00722A 74 00            [12] 1812 	mov	a,#0x00
      00722C 08               [12] 1813 	inc	r0
      00722D 36               [12] 1814 	addc	a,@r0
      00722E 09               [12] 1815 	inc	r1
      00722F F7               [12] 1816 	mov	@r1,a
      007230 08               [12] 1817 	inc	r0
      007231 E6               [12] 1818 	mov	a,@r0
      007232 09               [12] 1819 	inc	r1
      007233 F7               [12] 1820 	mov	@r1,a
      007234 E5 0D            [12] 1821 	mov	a,_bp
      007236 24 07            [12] 1822 	add	a,#0x07
      007238 F8               [12] 1823 	mov	r0,a
      007239 86 82            [24] 1824 	mov	dpl,@r0
      00723B 08               [12] 1825 	inc	r0
      00723C 86 83            [24] 1826 	mov	dph,@r0
      00723E 08               [12] 1827 	inc	r0
      00723F 86 F0            [24] 1828 	mov	b,@r0
      007241 12 7C 4D         [24] 1829 	lcall	__gptrget
      007244 FD               [12] 1830 	mov	r5,a
      007245 A3               [24] 1831 	inc	dptr
      007246 12 7C 4D         [24] 1832 	lcall	__gptrget
      007249 FE               [12] 1833 	mov	r6,a
      00724A A3               [24] 1834 	inc	dptr
      00724B 12 7C 4D         [24] 1835 	lcall	__gptrget
      00724E FF               [12] 1836 	mov	r7,a
      00724F E5 0D            [12] 1837 	mov	a,_bp
      007251 24 0A            [12] 1838 	add	a,#0x0a
      007253 F8               [12] 1839 	mov	r0,a
      007254 74 05            [12] 1840 	mov	a,#0x05
      007256 2D               [12] 1841 	add	a,r5
      007257 F6               [12] 1842 	mov	@r0,a
      007258 74 00            [12] 1843 	mov	a,#0x00
      00725A 3E               [12] 1844 	addc	a,r6
      00725B 08               [12] 1845 	inc	r0
      00725C F6               [12] 1846 	mov	@r0,a
      00725D 08               [12] 1847 	inc	r0
      00725E A6 07            [24] 1848 	mov	@r0,ar7
      007260 A8 0D            [24] 1849 	mov	r0,_bp
      007262 08               [12] 1850 	inc	r0
      007263 E5 0D            [12] 1851 	mov	a,_bp
      007265 24 04            [12] 1852 	add	a,#0x04
      007267 F9               [12] 1853 	mov	r1,a
      007268 74 05            [12] 1854 	mov	a,#0x05
      00726A 26               [12] 1855 	add	a,@r0
      00726B F7               [12] 1856 	mov	@r1,a
      00726C 74 00            [12] 1857 	mov	a,#0x00
      00726E 08               [12] 1858 	inc	r0
      00726F 36               [12] 1859 	addc	a,@r0
      007270 09               [12] 1860 	inc	r1
      007271 F7               [12] 1861 	mov	@r1,a
      007272 08               [12] 1862 	inc	r0
      007273 E6               [12] 1863 	mov	a,@r0
      007274 09               [12] 1864 	inc	r1
      007275 F7               [12] 1865 	mov	@r1,a
      007276 E5 0D            [12] 1866 	mov	a,_bp
      007278 24 04            [12] 1867 	add	a,#0x04
      00727A F8               [12] 1868 	mov	r0,a
      00727B 86 82            [24] 1869 	mov	dpl,@r0
      00727D 08               [12] 1870 	inc	r0
      00727E 86 83            [24] 1871 	mov	dph,@r0
      007280 08               [12] 1872 	inc	r0
      007281 86 F0            [24] 1873 	mov	b,@r0
      007283 12 7C 4D         [24] 1874 	lcall	__gptrget
      007286 FD               [12] 1875 	mov	r5,a
      007287 A3               [24] 1876 	inc	dptr
      007288 12 7C 4D         [24] 1877 	lcall	__gptrget
      00728B FE               [12] 1878 	mov	r6,a
      00728C A3               [24] 1879 	inc	dptr
      00728D 12 7C 4D         [24] 1880 	lcall	__gptrget
      007290 FF               [12] 1881 	mov	r7,a
      007291 E5 0D            [12] 1882 	mov	a,_bp
      007293 24 0A            [12] 1883 	add	a,#0x0a
      007295 F8               [12] 1884 	mov	r0,a
      007296 86 82            [24] 1885 	mov	dpl,@r0
      007298 08               [12] 1886 	inc	r0
      007299 86 83            [24] 1887 	mov	dph,@r0
      00729B 08               [12] 1888 	inc	r0
      00729C 86 F0            [24] 1889 	mov	b,@r0
      00729E ED               [12] 1890 	mov	a,r5
      00729F 12 79 22         [24] 1891 	lcall	__gptrput
      0072A2 A3               [24] 1892 	inc	dptr
      0072A3 EE               [12] 1893 	mov	a,r6
      0072A4 12 79 22         [24] 1894 	lcall	__gptrput
      0072A7 A3               [24] 1895 	inc	dptr
      0072A8 EF               [12] 1896 	mov	a,r7
      0072A9 12 79 22         [24] 1897 	lcall	__gptrput
                           000546  1898 	C$list.c$195$1_0$61 ==.
                                   1899 ;	list.c:195: pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
      0072AC E5 0D            [12] 1900 	mov	a,_bp
      0072AE 24 04            [12] 1901 	add	a,#0x04
      0072B0 F8               [12] 1902 	mov	r0,a
      0072B1 86 82            [24] 1903 	mov	dpl,@r0
      0072B3 08               [12] 1904 	inc	r0
      0072B4 86 83            [24] 1905 	mov	dph,@r0
      0072B6 08               [12] 1906 	inc	r0
      0072B7 86 F0            [24] 1907 	mov	b,@r0
      0072B9 12 7C 4D         [24] 1908 	lcall	__gptrget
      0072BC FD               [12] 1909 	mov	r5,a
      0072BD A3               [24] 1910 	inc	dptr
      0072BE 12 7C 4D         [24] 1911 	lcall	__gptrget
      0072C1 FE               [12] 1912 	mov	r6,a
      0072C2 A3               [24] 1913 	inc	dptr
      0072C3 12 7C 4D         [24] 1914 	lcall	__gptrget
      0072C6 FF               [12] 1915 	mov	r7,a
      0072C7 E5 0D            [12] 1916 	mov	a,_bp
      0072C9 24 0A            [12] 1917 	add	a,#0x0a
      0072CB F8               [12] 1918 	mov	r0,a
      0072CC 74 02            [12] 1919 	mov	a,#0x02
      0072CE 2D               [12] 1920 	add	a,r5
      0072CF F6               [12] 1921 	mov	@r0,a
      0072D0 74 00            [12] 1922 	mov	a,#0x00
      0072D2 3E               [12] 1923 	addc	a,r6
      0072D3 08               [12] 1924 	inc	r0
      0072D4 F6               [12] 1925 	mov	@r0,a
      0072D5 08               [12] 1926 	inc	r0
      0072D6 A6 07            [24] 1927 	mov	@r0,ar7
      0072D8 E5 0D            [12] 1928 	mov	a,_bp
      0072DA 24 07            [12] 1929 	add	a,#0x07
      0072DC F8               [12] 1930 	mov	r0,a
      0072DD 86 82            [24] 1931 	mov	dpl,@r0
      0072DF 08               [12] 1932 	inc	r0
      0072E0 86 83            [24] 1933 	mov	dph,@r0
      0072E2 08               [12] 1934 	inc	r0
      0072E3 86 F0            [24] 1935 	mov	b,@r0
      0072E5 12 7C 4D         [24] 1936 	lcall	__gptrget
      0072E8 FD               [12] 1937 	mov	r5,a
      0072E9 A3               [24] 1938 	inc	dptr
      0072EA 12 7C 4D         [24] 1939 	lcall	__gptrget
      0072ED FE               [12] 1940 	mov	r6,a
      0072EE A3               [24] 1941 	inc	dptr
      0072EF 12 7C 4D         [24] 1942 	lcall	__gptrget
      0072F2 FF               [12] 1943 	mov	r7,a
      0072F3 E5 0D            [12] 1944 	mov	a,_bp
      0072F5 24 0A            [12] 1945 	add	a,#0x0a
      0072F7 F8               [12] 1946 	mov	r0,a
      0072F8 86 82            [24] 1947 	mov	dpl,@r0
      0072FA 08               [12] 1948 	inc	r0
      0072FB 86 83            [24] 1949 	mov	dph,@r0
      0072FD 08               [12] 1950 	inc	r0
      0072FE 86 F0            [24] 1951 	mov	b,@r0
      007300 ED               [12] 1952 	mov	a,r5
      007301 12 79 22         [24] 1953 	lcall	__gptrput
      007304 A3               [24] 1954 	inc	dptr
      007305 EE               [12] 1955 	mov	a,r6
      007306 12 79 22         [24] 1956 	lcall	__gptrput
      007309 A3               [24] 1957 	inc	dptr
      00730A EF               [12] 1958 	mov	a,r7
      00730B 12 79 22         [24] 1959 	lcall	__gptrput
                           0005A8  1960 	C$list.c$201$1_0$61 ==.
                                   1961 ;	list.c:201: if( pxList->pxIndex == pxItemToRemove )
      00730E E5 0D            [12] 1962 	mov	a,_bp
      007310 24 0D            [12] 1963 	add	a,#0x0d
      007312 F8               [12] 1964 	mov	r0,a
      007313 E5 0D            [12] 1965 	mov	a,_bp
      007315 24 0A            [12] 1966 	add	a,#0x0a
      007317 F9               [12] 1967 	mov	r1,a
      007318 74 01            [12] 1968 	mov	a,#0x01
      00731A 26               [12] 1969 	add	a,@r0
      00731B F7               [12] 1970 	mov	@r1,a
      00731C 74 00            [12] 1971 	mov	a,#0x00
      00731E 08               [12] 1972 	inc	r0
      00731F 36               [12] 1973 	addc	a,@r0
      007320 09               [12] 1974 	inc	r1
      007321 F7               [12] 1975 	mov	@r1,a
      007322 08               [12] 1976 	inc	r0
      007323 E6               [12] 1977 	mov	a,@r0
      007324 09               [12] 1978 	inc	r1
      007325 F7               [12] 1979 	mov	@r1,a
      007326 E5 0D            [12] 1980 	mov	a,_bp
      007328 24 0A            [12] 1981 	add	a,#0x0a
      00732A F8               [12] 1982 	mov	r0,a
      00732B 86 82            [24] 1983 	mov	dpl,@r0
      00732D 08               [12] 1984 	inc	r0
      00732E 86 83            [24] 1985 	mov	dph,@r0
      007330 08               [12] 1986 	inc	r0
      007331 86 F0            [24] 1987 	mov	b,@r0
      007333 12 7C 4D         [24] 1988 	lcall	__gptrget
      007336 FD               [12] 1989 	mov	r5,a
      007337 A3               [24] 1990 	inc	dptr
      007338 12 7C 4D         [24] 1991 	lcall	__gptrget
      00733B FE               [12] 1992 	mov	r6,a
      00733C A3               [24] 1993 	inc	dptr
      00733D 12 7C 4D         [24] 1994 	lcall	__gptrget
      007340 FF               [12] 1995 	mov	r7,a
      007341 A8 0D            [24] 1996 	mov	r0,_bp
      007343 08               [12] 1997 	inc	r0
      007344 C0 05            [24] 1998 	push	ar5
      007346 C0 06            [24] 1999 	push	ar6
      007348 C0 07            [24] 2000 	push	ar7
      00734A 86 82            [24] 2001 	mov	dpl,@r0
      00734C 08               [12] 2002 	inc	r0
      00734D 86 83            [24] 2003 	mov	dph,@r0
      00734F 08               [12] 2004 	inc	r0
      007350 86 F0            [24] 2005 	mov	b,@r0
      007352 12 00 31         [24] 2006 	lcall	___gptr_cmp
      007355 15 81            [12] 2007 	dec	sp
      007357 15 81            [12] 2008 	dec	sp
      007359 15 81            [12] 2009 	dec	sp
      00735B 70 02            [24] 2010 	jnz	00109$
      00735D 80 03            [24] 2011 	sjmp	00110$
      00735F                       2012 00109$:
      00735F 02 73 98         [24] 2013 	ljmp	00102$
      007362                       2014 00110$:
                           0005FC  2015 	C$list.c$203$2_0$62 ==.
                                   2016 ;	list.c:203: pxList->pxIndex = pxItemToRemove->pxPrevious;
      007362 E5 0D            [12] 2017 	mov	a,_bp
      007364 24 04            [12] 2018 	add	a,#0x04
      007366 F8               [12] 2019 	mov	r0,a
      007367 86 82            [24] 2020 	mov	dpl,@r0
      007369 08               [12] 2021 	inc	r0
      00736A 86 83            [24] 2022 	mov	dph,@r0
      00736C 08               [12] 2023 	inc	r0
      00736D 86 F0            [24] 2024 	mov	b,@r0
      00736F 12 7C 4D         [24] 2025 	lcall	__gptrget
      007372 FD               [12] 2026 	mov	r5,a
      007373 A3               [24] 2027 	inc	dptr
      007374 12 7C 4D         [24] 2028 	lcall	__gptrget
      007377 FE               [12] 2029 	mov	r6,a
      007378 A3               [24] 2030 	inc	dptr
      007379 12 7C 4D         [24] 2031 	lcall	__gptrget
      00737C FF               [12] 2032 	mov	r7,a
      00737D E5 0D            [12] 2033 	mov	a,_bp
      00737F 24 0A            [12] 2034 	add	a,#0x0a
      007381 F8               [12] 2035 	mov	r0,a
      007382 86 82            [24] 2036 	mov	dpl,@r0
      007384 08               [12] 2037 	inc	r0
      007385 86 83            [24] 2038 	mov	dph,@r0
      007387 08               [12] 2039 	inc	r0
      007388 86 F0            [24] 2040 	mov	b,@r0
      00738A ED               [12] 2041 	mov	a,r5
      00738B 12 79 22         [24] 2042 	lcall	__gptrput
      00738E A3               [24] 2043 	inc	dptr
      00738F EE               [12] 2044 	mov	a,r6
      007390 12 79 22         [24] 2045 	lcall	__gptrput
      007393 A3               [24] 2046 	inc	dptr
      007394 EF               [12] 2047 	mov	a,r7
      007395 12 79 22         [24] 2048 	lcall	__gptrput
      007398                       2049 00102$:
                           000632  2050 	C$list.c$210$1_0$61 ==.
                                   2051 ;	list.c:210: pxItemToRemove->pxContainer = NULL;
      007398 8A 82            [24] 2052 	mov	dpl,r2
      00739A 8B 83            [24] 2053 	mov	dph,r3
      00739C 8C F0            [24] 2054 	mov	b,r4
      00739E 74 00            [12] 2055 	mov	a,#0x00
      0073A0 12 79 22         [24] 2056 	lcall	__gptrput
      0073A3 A3               [24] 2057 	inc	dptr
      0073A4 12 79 22         [24] 2058 	lcall	__gptrput
      0073A7 A3               [24] 2059 	inc	dptr
      0073A8 12 79 22         [24] 2060 	lcall	__gptrput
                           000645  2061 	C$list.c$211$1_0$61 ==.
                                   2062 ;	list.c:211: ( pxList->uxNumberOfItems )--;
      0073AB E5 0D            [12] 2063 	mov	a,_bp
      0073AD 24 0D            [12] 2064 	add	a,#0x0d
      0073AF F8               [12] 2065 	mov	r0,a
      0073B0 86 82            [24] 2066 	mov	dpl,@r0
      0073B2 08               [12] 2067 	inc	r0
      0073B3 86 83            [24] 2068 	mov	dph,@r0
      0073B5 08               [12] 2069 	inc	r0
      0073B6 86 F0            [24] 2070 	mov	b,@r0
      0073B8 12 7C 4D         [24] 2071 	lcall	__gptrget
      0073BB FF               [12] 2072 	mov	r7,a
      0073BC 1F               [12] 2073 	dec	r7
      0073BD E5 0D            [12] 2074 	mov	a,_bp
      0073BF 24 0D            [12] 2075 	add	a,#0x0d
      0073C1 F8               [12] 2076 	mov	r0,a
      0073C2 86 82            [24] 2077 	mov	dpl,@r0
      0073C4 08               [12] 2078 	inc	r0
      0073C5 86 83            [24] 2079 	mov	dph,@r0
      0073C7 08               [12] 2080 	inc	r0
      0073C8 86 F0            [24] 2081 	mov	b,@r0
      0073CA EF               [12] 2082 	mov	a,r7
      0073CB 12 79 22         [24] 2083 	lcall	__gptrput
                           000668  2084 	C$list.c$213$1_0$61 ==.
                                   2085 ;	list.c:213: return pxList->uxNumberOfItems;
      0073CE E5 0D            [12] 2086 	mov	a,_bp
      0073D0 24 0D            [12] 2087 	add	a,#0x0d
      0073D2 F8               [12] 2088 	mov	r0,a
      0073D3 86 82            [24] 2089 	mov	dpl,@r0
      0073D5 08               [12] 2090 	inc	r0
      0073D6 86 83            [24] 2091 	mov	dph,@r0
      0073D8 08               [12] 2092 	inc	r0
      0073D9 86 F0            [24] 2093 	mov	b,@r0
      0073DB 12 7C 4D         [24] 2094 	lcall	__gptrget
      0073DE FF               [12] 2095 	mov	r7,a
      0073DF 8F 82            [24] 2096 	mov	dpl,r7
      0073E1                       2097 00103$:
                           00067B  2098 	C$list.c$214$1_0$61 ==.
                                   2099 ;	list.c:214: }
      0073E1 85 0D 81         [24] 2100 	mov	sp,_bp
      0073E4 D0 0D            [24] 2101 	pop	_bp
                           000680  2102 	C$list.c$214$1_0$61 ==.
                           000680  2103 	XG$uxListRemove$0$0 ==.
      0073E6 22               [24] 2104 	ret
                                   2105 	.area CSEG    (CODE)
                                   2106 	.area CONST   (CODE)
                                   2107 	.area XINIT   (CODE)
                                   2108 	.area CABS    (ABS,CODE)
