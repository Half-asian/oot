glabel func_80A7598C
/* 0167C 80A7598C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01680 80A75990 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01684 80A75994 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01688 80A75998 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0168C 80A7599C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01690 80A759A0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01694 80A759A4 24845944 */  addiu   $a0, $a0, 0x5944           ## $a0 = 06005944
/* 01698 80A759A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0169C 80A759AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 016A0 80A759B0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 016A4 80A759B4 468021A0 */  cvt.s.w $f6, $f4
/* 016A8 80A759B8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 016AC 80A759BC 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 016B0 80A759C0 A20002FE */  sb      $zero, 0x02FE($s0)         ## 000002FE
/* 016B4 80A759C4 A20E02F8 */  sb      $t6, 0x02F8($s0)           ## 000002F8
/* 016B8 80A759C8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 016BC 80A759CC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 016C0 80A759D0 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 016C4 80A759D4 44070000 */  mfc1    $a3, $f0
/* 016C8 80A759D8 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 016CC 80A759DC 24A55944 */  addiu   $a1, $a1, 0x5944           ## $a1 = 06005944
/* 016D0 80A759E0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 016D4 80A759E4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 016D8 80A759E8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 016DC 80A759EC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 016E0 80A759F0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 016E4 80A759F4 24180018 */  addiu   $t8, $zero, 0x0018         ## $t8 = 00000018
/* 016E8 80A759F8 A21802F9 */  sb      $t8, 0x02F9($s0)           ## 000002F9
/* 016EC 80A759FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016F0 80A75A00 0C00BE0A */  jal     Audio_PlayActorSound2

/* 016F4 80A75A04 240539C0 */  addiu   $a1, $zero, 0x39C0         ## $a1 = 000039C0
/* 016F8 80A75A08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016FC 80A75A0C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01700 80A75A10 2405393B */  addiu   $a1, $zero, 0x393B         ## $a1 = 0000393B
/* 01704 80A75A14 3C0580A7 */  lui     $a1, %hi(func_80A75A38)    ## $a1 = 80A70000
/* 01708 80A75A18 24A55A38 */  addiu   $a1, $a1, %lo(func_80A75A38) ## $a1 = 80A75A38
/* 0170C 80A75A1C 0C29D0E4 */  jal     func_80A74390
/* 01710 80A75A20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01714 80A75A24 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01718 80A75A28 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0171C 80A75A2C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01720 80A75A30 03E00008 */  jr      $ra
/* 01724 80A75A34 00000000 */  nop
