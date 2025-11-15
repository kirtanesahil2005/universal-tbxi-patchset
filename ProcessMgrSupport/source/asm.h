#ifndef __ASM_H__
#define __ASM_H__

#ifdef _LANGUAGE_ASSEMBLY
/* Condition Register Bit Fields */

#define	cr0	0
#define	cr1	1
#define	cr2	2
#define	cr3	3
#define	cr4	4
#define	cr5	5
#define	cr6	6
#define	cr7	7


/* General Purpose Registers (GPRs) */

#define	r0	0
#define	r1	1
#define	sp	1
#define	r2	2
#define	toc	2
#define	r3	3
#define	r4	4
#define	r5	5
#define	r6	6
#define	r7	7
#define	r8	8
#define	r9	9
#define	r10	10
#define	r11	11
#define	r12	12
#define	r13	13
#define	r14	14
#define	r15	15
#define	r16	16
#define	r17	17
#define	r18	18
#define	r19	19
#define	r20	20
#define	r21	21
#define	r22	22
#define	r23	23
#define	r24	24
#define	r25	25
#define	r26	26
#define	r27	27
#define	r28	28
#define	r29	29
#define	r30	30
#define	r31	31


/* Floating Point Registers (FPRs) */

#define	f0		0
#define	f1		1
#define	f2		2
#define	f3		3
#define	f4		4
#define	f5		5
#define	f6		6
#define	f7		7
#define	f8		8
#define	f9		9
#define	f10	10
#define	f11	11
#define	f12	12
#define	f13	13
#define	f14	14
#define	f15	15
#define	f16	16
#define	f17	17
#define	f18	18
#define	f19	19
#define	f20	20
#define	f21	21
#define	f22	22
#define	f23	23
#define	f24	24
#define	f25	25
#define	f26	26
#define	f27	27
#define	f28	28
#define	f29	29
#define	f30	30
#define	f31	31

#define	v0		0
#define	v1		1
#define	v2		2
#define	v3		3
#define	v4		4
#define	v5		5
#define	v6		6
#define	v7		7
#define	v8		8
#define	v9		9
#define	v10	10
#define	v11	11
#define	v12	12
#define	v13	13
#define	v14	14
#define	v15	15
#define	v16	16
#define	v17	17
#define	v18	18
#define	v19	19
#define	v20	20
#define	v21	21
#define	v22	22
#define	v23	23
#define	v24	24
#define	v25	25
#define	v26	26
#define	v27	27
#define	v28	28
#define	v29	29
#define	v30	30
#define	v31	31

#endif		//_LANGUAGE_ASSEMBLY

#define SPRG0	272
#define SPRG1	273
#define SPRG2	274
#define SPRG3	275

#define DABR	1013

#define IABR	1010

#define PMC1    953
#define PMC2    954
#define PMC3    957
#define PMC4    958

#define MMCR0	952
#define MMCR1	956

#define vrsave  256


#define LINK_REGISTER_CALLEE_UPDATE_ROOM 4
#define EXCEPTION_NUMBER 8
#define SRR0_OFFSET 12
#define SRR1_OFFSET 16
#define GPR0_OFFSET 20
#define GPR1_OFFSET 24
#define GPR2_OFFSET 28
#define GPR3_OFFSET 32
#define GPR4_OFFSET 36
#define GPR5_OFFSET 40
#define GPR6_OFFSET 44
#define GPR7_OFFSET 48
#define GPR8_OFFSET 52
#define GPR9_OFFSET 56
#define GPR10_OFFSET 60
#define GPR11_OFFSET 64
#define GPR12_OFFSET 68
#define GPR13_OFFSET 72
#define GPR14_OFFSET 76
#define GPR15_OFFSET 80
#define GPR16_OFFSET 84
#define GPR17_OFFSET 88
#define GPR18_OFFSET 92
#define GPR19_OFFSET 96
#define GPR20_OFFSET 100
#define GPR21_OFFSET 104
#define GPR22_OFFSET 108
#define GPR23_OFFSET 112
#define GPR24_OFFSET 116
#define GPR25_OFFSET 120
#define GPR26_OFFSET 124
#define GPR27_OFFSET 128
#define GPR28_OFFSET 132
#define GPR29_OFFSET 136
#define GPR30_OFFSET 140
#define GPR31_OFFSET 144

#define GQR0_OFFSET 148
#define GQR1_OFFSET 152
#define GQR2_OFFSET 156
#define GQR3_OFFSET 160
#define GQR4_OFFSET 164
#define GQR5_OFFSET 168
#define GQR6_OFFSET 172
#define GQR7_OFFSET 176

#define CR_OFFSET	 180
#define LR_OFFSET	 184
#define CTR_OFFSET	 188
#define XER_OFFSET	 192
#define MSR_OFFSET	 196
#define DAR_OFFSET	 200

#define	STATE_OFFSET 204
#define MODE_OFFSET	 206
	 
#define FPR0_OFFSET	208
#define FPR1_OFFSET 216
#define FPR2_OFFSET 224
#define FPR3_OFFSET 232
#define FPR4_OFFSET 240
#define FPR5_OFFSET 248
#define FPR6_OFFSET 256
#define FPR7_OFFSET 264
#define FPR8_OFFSET 272
#define FPR9_OFFSET 280
#define FPR10_OFFSET 288
#define FPR11_OFFSET 296
#define FPR12_OFFSET 304
#define FPR13_OFFSET 312
#define FPR14_OFFSET 320
#define FPR15_OFFSET 328
#define FPR16_OFFSET 336
#define FPR17_OFFSET 344
#define FPR18_OFFSET 352
#define FPR19_OFFSET 360
#define FPR20_OFFSET 368
#define FPR21_OFFSET 376
#define FPR22_OFFSET 384
#define FPR23_OFFSET 392
#define FPR24_OFFSET 400
#define FPR25_OFFSET 408
#define FPR26_OFFSET 416
#define FPR27_OFFSET 424
#define FPR28_OFFSET 432
#define FPR29_OFFSET 440
#define FPR30_OFFSET 448
#define FPR31_OFFSET 456

#define FPSCR_OFFSET 464

#define PSR0_OFFSET 472
#define PSR1_OFFSET 480
#define PSR2_OFFSET 488
#define PSR3_OFFSET 496
#define PSR4_OFFSET 504
#define PSR5_OFFSET 512
#define PSR6_OFFSET 520
#define PSR7_OFFSET 528
#define PSR8_OFFSET 536
#define PSR9_OFFSET 544
#define PSR10_OFFSET 552
#define PSR11_OFFSET 560
#define PSR12_OFFSET 568
#define PSR13_OFFSET 576
#define PSR14_OFFSET 584
#define PSR15_OFFSET 592
#define PSR16_OFFSET 600
#define PSR17_OFFSET 608
#define PSR18_OFFSET 616
#define PSR19_OFFSET 624
#define PSR20_OFFSET 632
#define PSR21_OFFSET 640
#define PSR22_OFFSET 648
#define PSR23_OFFSET 656
#define PSR24_OFFSET 664
#define PSR25_OFFSET 672
#define PSR26_OFFSET 680
#define PSR27_OFFSET 688
#define PSR28_OFFSET 696
#define PSR29_OFFSET 704
#define PSR30_OFFSET 712
#define PSR31_OFFSET 720
/*
 * maintain the EABI requested 8 bytes aligment
 * As SVR4 ABI requires 16, make it 16 (as some
 * exception may need more registers to be processed...)
 */
#define EXCEPTION_FRAME_END 728

#define	IBAT0U		528
#define	IBAT0L		529	
#define	IBAT1U		530	
#define	IBAT1L		531	
#define	IBAT2U		532	
#define	IBAT2L		533	
#define	IBAT3U		534	
#define	IBAT3L		535	
#define	IBAT4U		560
#define	IBAT4L		561
#define	IBAT5U		562
#define	IBAT5L		563
#define	IBAT6U		564
#define	IBAT6L		565
#define	IBAT7U		566
#define	IBAT7L		567

#define	DBAT0U		536
#define	DBAT0L		537	
#define	DBAT1U		538	
#define	DBAT1L		539	
#define	DBAT2U		540	
#define	DBAT2L		541	
#define	DBAT3U		542	
#define	DBAT3L		543
#define DBAT4U		568
#define DBAT4L		569
#define DBAT5U		570
#define DBAT5L		571
#define DBAT6U		572
#define DBAT6L		573
#define DBAT7U		574
#define DBAT7L		575

#define HID0		1008
#define HID1		1009
#define HID2		920	
#define HID4		1011

#define GQR0		912
#define GQR1		913
#define GQR2		914
#define GQR3		915
#define GQR4		916
#define GQR5		917
#define GQR6		918
#define GQR7		919

#define L2CR		1017

#define WPAR		921

#define DMAU		922
#define DMAL		923

#define MSR_RI				0x00000002
#define MSR_DR				0x00000010
#define MSR_IR				0x00000020
#define MSR_IP				0x00000040
#define MSR_SE				0x00000400
#define MSR_ME				0x00001000
#define MSR_FP				0x00002000
#define MSR_POW				0x00004000
#define MSR_EE				0x00008000

#define PPC_ALIGNMENT		8

#define PPC_CACHE_ALIGNMENT	32

#endif		//__ASM_H__
