.rdata
glabel D_80144A68
    .asciz "this"
    .balign 4

glabel D_80144A70
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A80
    .asciz "glistpp"
    .balign 4

glabel D_80144A88
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A98
    .asciz "glistp"
    .balign 4

glabel D_80144AA0
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C1258
/* B383F8 800C1258 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B383FC 800C125C AFB00018 */  sw    $s0, 0x18($sp)
/* B38400 800C1260 00808025 */  move  $s0, $a0
/* B38404 800C1264 AFBF001C */  sw    $ra, 0x1c($sp)
/* B38408 800C1268 AFA5002C */  sw    $a1, 0x2c($sp)
/* B3840C 800C126C 3C048014 */  lui   $a0, %hi(D_80144A68) # $a0, 0x8014
/* B38410 800C1270 3C068014 */  lui   $a2, %hi(D_80144A70) # $a2, 0x8014
/* B38414 800C1274 24C64A70 */  addiu $a2, %lo(D_80144A70) # addiu $a2, $a2, 0x4a70
/* B38418 800C1278 24844A68 */  addiu $a0, %lo(D_80144A68) # addiu $a0, $a0, 0x4a68
/* B3841C 800C127C 02002825 */  move  $a1, $s0
/* B38420 800C1280 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38424 800C1284 24070116 */   li    $a3, 278
/* B38428 800C1288 3C048014 */  lui   $a0, %hi(D_80144A80) # $a0, 0x8014
/* B3842C 800C128C 3C068014 */  lui   $a2, %hi(D_80144A88) # $a2, 0x8014
/* B38430 800C1290 24C64A88 */  addiu $a2, %lo(D_80144A88) # addiu $a2, $a2, 0x4a88
/* B38434 800C1294 24844A80 */  addiu $a0, %lo(D_80144A80) # addiu $a0, $a0, 0x4a80
/* B38438 800C1298 8FA5002C */  lw    $a1, 0x2c($sp)
/* B3843C 800C129C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38440 800C12A0 24070117 */   li    $a3, 279
/* B38444 800C12A4 8FAE002C */  lw    $t6, 0x2c($sp)
/* B38448 800C12A8 3C048014 */  lui   $a0, %hi(D_80144A98) # $a0, 0x8014
/* B3844C 800C12AC 3C068014 */  lui   $a2, %hi(D_80144AA0) # $a2, 0x8014
/* B38450 800C12B0 8DC50000 */  lw    $a1, ($t6)
/* B38454 800C12B4 24C64AA0 */  addiu $a2, %lo(D_80144AA0) # addiu $a2, $a2, 0x4aa0
/* B38458 800C12B8 24844A98 */  addiu $a0, %lo(D_80144A98) # addiu $a0, $a0, 0x4a98
/* B3845C 800C12BC 24070119 */  li    $a3, 281
/* B38460 800C12C0 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B38464 800C12C4 AFA50024 */   sw    $a1, 0x24($sp)
/* B38468 800C12C8 8FA50024 */  lw    $a1, 0x24($sp)
/* B3846C 800C12CC 3C0FE700 */  lui   $t7, 0xe700
/* B38470 800C12D0 3C18EF20 */  lui   $t8, 0xef20
/* B38474 800C12D4 00A01025 */  move  $v0, $a1
/* B38478 800C12D8 AC4F0000 */  sw    $t7, ($v0)
/* B3847C 800C12DC AC400004 */  sw    $zero, 4($v0)
/* B38480 800C12E0 24A50008 */  addiu $a1, $a1, 8
/* B38484 800C12E4 00A01025 */  move  $v0, $a1
/* B38488 800C12E8 AC580000 */  sw    $t8, ($v0)
/* B3848C 800C12EC AC400004 */  sw    $zero, 4($v0)
/* B38490 800C12F0 8E190000 */  lw    $t9, ($s0)
/* B38494 800C12F4 24A50008 */  addiu $a1, $a1, 8
/* B38498 800C12F8 3C01FF10 */  lui   $at, 0xff10
/* B3849C 800C12FC 272EFFFF */  addiu $t6, $t9, -1
/* B384A0 800C1300 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B384A4 800C1304 01E1C025 */  or    $t8, $t7, $at
/* B384A8 800C1308 00A01025 */  move  $v0, $a1
/* B384AC 800C130C AC580000 */  sw    $t8, ($v0)
/* B384B0 800C1310 8E190010 */  lw    $t9, 0x10($s0)
/* B384B4 800C1314 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B384B8 800C1318 44810000 */  mtc1  $at, $f0
/* B384BC 800C131C AC590004 */  sw    $t9, 4($v0)
/* B384C0 800C1320 8E0E0034 */  lw    $t6, 0x34($s0)
/* B384C4 800C1324 3C01ED00 */  li    $at, 0xED000000 # 0.000000
/* B384C8 800C1328 24A50008 */  addiu $a1, $a1, 8
/* B384CC 800C132C 448E2000 */  mtc1  $t6, $f4
/* B384D0 800C1330 00A01025 */  move  $v0, $a1
/* B384D4 800C1334 24A50008 */  addiu $a1, $a1, 8
/* B384D8 800C1338 468021A0 */  cvt.s.w $f6, $f4
/* B384DC 800C133C 00004825 */  move  $t1, $zero
/* B384E0 800C1340 3C1FE600 */  lui   $ra, 0xe600
/* B384E4 800C1344 3C0DFD10 */  lui   $t5, 0xfd10
/* B384E8 800C1348 3C0C0700 */  lui   $t4, 0x700
/* B384EC 800C134C 3C0BF510 */  lui   $t3, 0xf510
/* B384F0 800C1350 46003202 */  mul.s $f8, $f6, $f0
/* B384F4 800C1354 4600428D */  trunc.w.s $f10, $f8
/* B384F8 800C1358 44185000 */  mfc1  $t8, $f10
/* B384FC 800C135C 00000000 */  nop   
/* B38500 800C1360 33190FFF */  andi  $t9, $t8, 0xfff
/* B38504 800C1364 8E180038 */  lw    $t8, 0x38($s0)
/* B38508 800C1368 00197300 */  sll   $t6, $t9, 0xc
/* B3850C 800C136C 01C17825 */  or    $t7, $t6, $at
/* B38510 800C1370 44988000 */  mtc1  $t8, $f16
/* B38514 800C1374 00000000 */  nop   
/* B38518 800C1378 468084A0 */  cvt.s.w $f18, $f16
/* B3851C 800C137C 46009102 */  mul.s $f4, $f18, $f0
/* B38520 800C1380 4600218D */  trunc.w.s $f6, $f4
/* B38524 800C1384 440E3000 */  mfc1  $t6, $f6
/* B38528 800C1388 00000000 */  nop   
/* B3852C 800C138C 31D80FFF */  andi  $t8, $t6, 0xfff
/* B38530 800C1390 01F8C825 */  or    $t9, $t7, $t8
/* B38534 800C1394 AC590000 */  sw    $t9, ($v0)
/* B38538 800C1398 8E0E003C */  lw    $t6, 0x3c($s0)
/* B3853C 800C139C 8E180040 */  lw    $t8, 0x40($s0)
/* B38540 800C13A0 25CF0001 */  addiu $t7, $t6, 1
/* B38544 800C13A4 448F4000 */  mtc1  $t7, $f8
/* B38548 800C13A8 00000000 */  nop   
/* B3854C 800C13AC 468042A0 */  cvt.s.w $f10, $f8
/* B38550 800C13B0 46005402 */  mul.s $f16, $f10, $f0
/* B38554 800C13B4 4600848D */  trunc.w.s $f18, $f16
/* B38558 800C13B8 44199000 */  mfc1  $t9, $f18
/* B3855C 800C13BC 00000000 */  nop   
/* B38560 800C13C0 332E0FFF */  andi  $t6, $t9, 0xfff
/* B38564 800C13C4 27190001 */  addiu $t9, $t8, 1
/* B38568 800C13C8 44992000 */  mtc1  $t9, $f4
/* B3856C 800C13CC 000E7B00 */  sll   $t7, $t6, 0xc
/* B38570 800C13D0 468021A0 */  cvt.s.w $f6, $f4
/* B38574 800C13D4 46003202 */  mul.s $f8, $f6, $f0
/* B38578 800C13D8 4600428D */  trunc.w.s $f10, $f8
/* B3857C 800C13DC 44185000 */  mfc1  $t8, $f10
/* B38580 800C13E0 00000000 */  nop   
/* B38584 800C13E4 33190FFF */  andi  $t9, $t8, 0xfff
/* B38588 800C13E8 01F97025 */  or    $t6, $t7, $t9
/* B3858C 800C13EC AC4E0004 */  sw    $t6, 4($v0)
/* B38590 800C13F0 8E0F0024 */  lw    $t7, 0x24($s0)
/* B38594 800C13F4 8E18002C */  lw    $t8, 0x2c($s0)
/* B38598 800C13F8 030FC823 */  subu  $t9, $t8, $t7
/* B3859C 800C13FC 00197040 */  sll   $t6, $t9, 1
/* B385A0 800C1400 25D80002 */  addiu $t8, $t6, 2
/* B385A4 800C1404 240F1000 */  li    $t7, 4096
/* B385A8 800C1408 01F8001A */  div   $zero, $t7, $t8
/* B385AC 800C140C 8E0E0028 */  lw    $t6, 0x28($s0)
/* B385B0 800C1410 8E190030 */  lw    $t9, 0x30($s0)
/* B385B4 800C1414 00003012 */  mflo  $a2
/* B385B8 800C1418 032E4023 */  subu  $t0, $t9, $t6
/* B385BC 800C141C 17000002 */  bnez  $t8, .L800C1428
/* B385C0 800C1420 00000000 */   nop   
/* B385C4 800C1424 0007000D */  break 7
.L800C1428:
/* B385C8 800C1428 2401FFFF */  li    $at, -1
/* B385CC 800C142C 17010004 */  bne   $t8, $at, .L800C1440
/* B385D0 800C1430 3C018000 */   lui   $at, 0x8000
/* B385D4 800C1434 15E10002 */  bne   $t7, $at, .L800C1440
/* B385D8 800C1438 00000000 */   nop   
/* B385DC 800C143C 0006000D */  break 6
.L800C1440:
/* B385E0 800C1440 25080001 */  addiu $t0, $t0, 1
/* B385E4 800C1444 19000084 */  blez  $t0, .L800C1658
.L800C1448:
/* B385E8 800C1448 0106082A */   slt   $at, $t0, $a2
/* B385EC 800C144C 10200002 */  beqz  $at, .L800C1458
/* B385F0 800C1450 8E020028 */   lw    $v0, 0x28($s0)
/* B385F4 800C1454 01003025 */  move  $a2, $t0
.L800C1458:
/* B385F8 800C1458 8E180008 */  lw    $t8, 8($s0)
/* B385FC 800C145C 8E0F0038 */  lw    $t7, 0x38($s0)
/* B38600 800C1460 00493821 */  addu  $a3, $v0, $t1
/* B38604 800C1464 2719FFFF */  addiu $t9, $t8, -1
/* B38608 800C1468 332E0FFF */  andi  $t6, $t9, 0xfff
/* B3860C 800C146C 01E95021 */  addu  $t2, $t7, $t1
/* B38610 800C1470 01CD7825 */  or    $t7, $t6, $t5
/* B38614 800C1474 00A01025 */  move  $v0, $a1
/* B38618 800C1478 AC4F0000 */  sw    $t7, ($v0)
/* B3861C 800C147C 8E180014 */  lw    $t8, 0x14($s0)
/* B38620 800C1480 24A50008 */  addiu $a1, $a1, 8
/* B38624 800C1484 00071880 */  sll   $v1, $a3, 2
/* B38628 800C1488 AC580004 */  sw    $t8, 4($v0)
/* B3862C 800C148C 8E0E0024 */  lw    $t6, 0x24($s0)
/* B38630 800C1490 8E19002C */  lw    $t9, 0x2c($s0)
/* B38634 800C1494 00A01025 */  move  $v0, $a1
/* B38638 800C1498 AC4C0004 */  sw    $t4, 4($v0)
/* B3863C 800C149C 032E7823 */  subu  $t7, $t9, $t6
/* B38640 800C14A0 000FC040 */  sll   $t8, $t7, 1
/* B38644 800C14A4 27190009 */  addiu $t9, $t8, 9
/* B38648 800C14A8 001970C3 */  sra   $t6, $t9, 3
/* B3864C 800C14AC 31CF01FF */  andi  $t7, $t6, 0x1ff
/* B38650 800C14B0 000FC240 */  sll   $t8, $t7, 9
/* B38654 800C14B4 030BC825 */  or    $t9, $t8, $t3
/* B38658 800C14B8 AC590000 */  sw    $t9, ($v0)
/* B3865C 800C14BC 24A50008 */  addiu $a1, $a1, 8
/* B38660 800C14C0 00A01025 */  move  $v0, $a1
/* B38664 800C14C4 AC5F0000 */  sw    $ra, ($v0)
/* B38668 800C14C8 AC400004 */  sw    $zero, 4($v0)
/* B3866C 800C14CC 8E0E0024 */  lw    $t6, 0x24($s0)
/* B38670 800C14D0 3C01F400 */  lui   $at, 0xf400
/* B38674 800C14D4 24A50008 */  addiu $a1, $a1, 8
/* B38678 800C14D8 000E7880 */  sll   $t7, $t6, 2
/* B3867C 800C14DC 31F80FFF */  andi  $t8, $t7, 0xfff
/* B38680 800C14E0 0018CB00 */  sll   $t9, $t8, 0xc
/* B38684 800C14E4 03217025 */  or    $t6, $t9, $at
/* B38688 800C14E8 30630FFF */  andi  $v1, $v1, 0xfff
/* B3868C 800C14EC 01C37825 */  or    $t7, $t6, $v1
/* B38690 800C14F0 00A01025 */  move  $v0, $a1
/* B38694 800C14F4 AC4F0000 */  sw    $t7, ($v0)
/* B38698 800C14F8 8E18002C */  lw    $t8, 0x2c($s0)
/* B3869C 800C14FC 00E62021 */  addu  $a0, $a3, $a2
/* B386A0 800C1500 2484FFFF */  addiu $a0, $a0, -1
/* B386A4 800C1504 0018C880 */  sll   $t9, $t8, 2
/* B386A8 800C1508 332E0FFF */  andi  $t6, $t9, 0xfff
/* B386AC 800C150C 000E7B00 */  sll   $t7, $t6, 0xc
/* B386B0 800C1510 00042080 */  sll   $a0, $a0, 2
/* B386B4 800C1514 30840FFF */  andi  $a0, $a0, 0xfff
/* B386B8 800C1518 01ECC025 */  or    $t8, $t7, $t4
/* B386BC 800C151C 0304C825 */  or    $t9, $t8, $a0
/* B386C0 800C1520 AC590004 */  sw    $t9, 4($v0)
/* B386C4 800C1524 24A50008 */  addiu $a1, $a1, 8
/* B386C8 800C1528 00A01025 */  move  $v0, $a1
/* B386CC 800C152C 3C0EE700 */  lui   $t6, 0xe700
/* B386D0 800C1530 AC4E0000 */  sw    $t6, ($v0)
/* B386D4 800C1534 AC400004 */  sw    $zero, 4($v0)
/* B386D8 800C1538 8E180024 */  lw    $t8, 0x24($s0)
/* B386DC 800C153C 8E0F002C */  lw    $t7, 0x2c($s0)
/* B386E0 800C1540 24A50008 */  addiu $a1, $a1, 8
/* B386E4 800C1544 00A01025 */  move  $v0, $a1
/* B386E8 800C1548 01F8C823 */  subu  $t9, $t7, $t8
/* B386EC 800C154C 00197040 */  sll   $t6, $t9, 1
/* B386F0 800C1550 25CF0009 */  addiu $t7, $t6, 9
/* B386F4 800C1554 000FC0C3 */  sra   $t8, $t7, 3
/* B386F8 800C1558 331901FF */  andi  $t9, $t8, 0x1ff
/* B386FC 800C155C 00197240 */  sll   $t6, $t9, 9
/* B38700 800C1560 01CB7825 */  or    $t7, $t6, $t3
/* B38704 800C1564 AC4F0000 */  sw    $t7, ($v0)
/* B38708 800C1568 AC400004 */  sw    $zero, 4($v0)
/* B3870C 800C156C 8E180024 */  lw    $t8, 0x24($s0)
/* B38710 800C1570 3C01F200 */  lui   $at, 0xf200
/* B38714 800C1574 24A50008 */  addiu $a1, $a1, 8
/* B38718 800C1578 0018C880 */  sll   $t9, $t8, 2
/* B3871C 800C157C 332E0FFF */  andi  $t6, $t9, 0xfff
/* B38720 800C1580 000E7B00 */  sll   $t7, $t6, 0xc
/* B38724 800C1584 01E1C025 */  or    $t8, $t7, $at
/* B38728 800C1588 0303C825 */  or    $t9, $t8, $v1
/* B3872C 800C158C 00A01025 */  move  $v0, $a1
/* B38730 800C1590 AC590000 */  sw    $t9, ($v0)
/* B38734 800C1594 8E0E002C */  lw    $t6, 0x2c($s0)
/* B38738 800C1598 3C01E400 */  lui   $at, 0xe400
/* B3873C 800C159C 24A50008 */  addiu $a1, $a1, 8
/* B38740 800C15A0 000E7880 */  sll   $t7, $t6, 2
/* B38744 800C15A4 31F80FFF */  andi  $t8, $t7, 0xfff
/* B38748 800C15A8 0018CB00 */  sll   $t9, $t8, 0xc
/* B3874C 800C15AC 03247025 */  or    $t6, $t9, $a0
/* B38750 800C15B0 AC4E0004 */  sw    $t6, 4($v0)
/* B38754 800C15B4 8E0F003C */  lw    $t7, 0x3c($s0)
/* B38758 800C15B8 00A01025 */  move  $v0, $a1
/* B3875C 800C15BC 24A50008 */  addiu $a1, $a1, 8
/* B38760 800C15C0 000FC080 */  sll   $t8, $t7, 2
/* B38764 800C15C4 33190FFF */  andi  $t9, $t8, 0xfff
/* B38768 800C15C8 00197300 */  sll   $t6, $t9, 0xc
/* B3876C 800C15CC 0146C021 */  addu  $t8, $t2, $a2
/* B38770 800C15D0 2719FFFF */  addiu $t9, $t8, -1
/* B38774 800C15D4 01C17825 */  or    $t7, $t6, $at
/* B38778 800C15D8 00197080 */  sll   $t6, $t9, 2
/* B3877C 800C15DC 31D80FFF */  andi  $t8, $t6, 0xfff
/* B38780 800C15E0 01F8C825 */  or    $t9, $t7, $t8
/* B38784 800C15E4 AC590000 */  sw    $t9, ($v0)
/* B38788 800C15E8 8E0E0034 */  lw    $t6, 0x34($s0)
/* B3878C 800C15EC 01064023 */  subu  $t0, $t0, $a2
/* B38790 800C15F0 01264821 */  addu  $t1, $t1, $a2
/* B38794 800C15F4 000E7880 */  sll   $t7, $t6, 2
/* B38798 800C15F8 31F80FFF */  andi  $t8, $t7, 0xfff
/* B3879C 800C15FC 000A7080 */  sll   $t6, $t2, 2
/* B387A0 800C1600 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B387A4 800C1604 0018CB00 */  sll   $t9, $t8, 0xc
/* B387A8 800C1608 032FC025 */  or    $t8, $t9, $t7
/* B387AC 800C160C AC580004 */  sw    $t8, 4($v0)
/* B387B0 800C1610 00A01025 */  move  $v0, $a1
/* B387B4 800C1614 3C0EE100 */  lui   $t6, 0xe100
/* B387B8 800C1618 AC4E0000 */  sw    $t6, ($v0)
/* B387BC 800C161C 8E180024 */  lw    $t8, 0x24($s0)
/* B387C0 800C1620 0007C940 */  sll   $t9, $a3, 5
/* B387C4 800C1624 332FFFFF */  andi  $t7, $t9, 0xffff
/* B387C8 800C1628 00187540 */  sll   $t6, $t8, 0x15
/* B387CC 800C162C 01CFC025 */  or    $t8, $t6, $t7
/* B387D0 800C1630 AC580004 */  sw    $t8, 4($v0)
/* B387D4 800C1634 24A50008 */  addiu $a1, $a1, 8
/* B387D8 800C1638 00A01025 */  move  $v0, $a1
/* B387DC 800C163C 3C0E1000 */  lui   $t6, (0x10000400 >> 16) # lui $t6, 0x1000
/* B387E0 800C1640 35CE0400 */  ori   $t6, (0x10000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* B387E4 800C1644 3C19F100 */  lui   $t9, 0xf100
/* B387E8 800C1648 AC590000 */  sw    $t9, ($v0)
/* B387EC 800C164C AC4E0004 */  sw    $t6, 4($v0)
/* B387F0 800C1650 1D00FF7D */  bgtz  $t0, .L800C1448
/* B387F4 800C1654 24A50008 */   addiu $a1, $a1, 8
.L800C1658:
/* B387F8 800C1658 00A01025 */  move  $v0, $a1
/* B387FC 800C165C 3C0FE700 */  lui   $t7, 0xe700
/* B38800 800C1660 AC4F0000 */  sw    $t7, ($v0)
/* B38804 800C1664 AC400004 */  sw    $zero, 4($v0)
/* B38808 800C1668 8E180000 */  lw    $t8, ($s0)
/* B3880C 800C166C 24A50008 */  addiu $a1, $a1, 8
/* B38810 800C1670 3C01FF10 */  lui   $at, 0xff10
/* B38814 800C1674 2719FFFF */  addiu $t9, $t8, -1
/* B38818 800C1678 332E0FFF */  andi  $t6, $t9, 0xfff
/* B3881C 800C167C 01C17825 */  or    $t7, $t6, $at
/* B38820 800C1680 00A01025 */  move  $v0, $a1
/* B38824 800C1684 AC4F0000 */  sw    $t7, ($v0)
/* B38828 800C1688 8E180010 */  lw    $t8, 0x10($s0)
/* B3882C 800C168C 24A50008 */  addiu $a1, $a1, 8
/* B38830 800C1690 3C19ED00 */  lui   $t9, 0xed00
/* B38834 800C1694 AC580004 */  sw    $t8, 4($v0)
/* B38838 800C1698 00A01025 */  move  $v0, $a1
/* B3883C 800C169C AC590000 */  sw    $t9, ($v0)
/* B38840 800C16A0 8E0E0000 */  lw    $t6, ($s0)
/* B38844 800C16A4 8E0F0004 */  lw    $t7, 4($s0)
/* B38848 800C16A8 24A50008 */  addiu $a1, $a1, 8
/* B3884C 800C16AC 448E8000 */  mtc1  $t6, $f16
/* B38850 800C16B0 448F4000 */  mtc1  $t7, $f8
/* B38854 800C16B4 468084A0 */  cvt.s.w $f18, $f16
/* B38858 800C16B8 468042A0 */  cvt.s.w $f10, $f8
/* B3885C 800C16BC 46009102 */  mul.s $f4, $f18, $f0
/* B38860 800C16C0 4600218D */  trunc.w.s $f6, $f4
/* B38864 800C16C4 46005402 */  mul.s $f16, $f10, $f0
/* B38868 800C16C8 44183000 */  mfc1  $t8, $f6
/* B3886C 800C16CC 00000000 */  nop   
/* B38870 800C16D0 33190FFF */  andi  $t9, $t8, 0xfff
/* B38874 800C16D4 4600848D */  trunc.w.s $f18, $f16
/* B38878 800C16D8 00197300 */  sll   $t6, $t9, 0xc
/* B3887C 800C16DC 44199000 */  mfc1  $t9, $f18
/* B38880 800C16E0 00000000 */  nop   
/* B38884 800C16E4 332F0FFF */  andi  $t7, $t9, 0xfff
/* B38888 800C16E8 01CFC025 */  or    $t8, $t6, $t7
/* B3888C 800C16EC AC580004 */  sw    $t8, 4($v0)
/* B38890 800C16F0 8FB9002C */  lw    $t9, 0x2c($sp)
/* B38894 800C16F4 AF250000 */  sw    $a1, ($t9)
/* B38898 800C16F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3889C 800C16FC 8FB00018 */  lw    $s0, 0x18($sp)
/* B388A0 800C1700 27BD0028 */  addiu $sp, $sp, 0x28
/* B388A4 800C1704 03E00008 */  jr    $ra
/* B388A8 800C1708 00000000 */   nop   

