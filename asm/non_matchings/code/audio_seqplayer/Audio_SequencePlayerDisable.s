glabel Audio_SequencePlayerDisable
/* B60D0C 800E9B6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B60D10 800E9B70 AFBF001C */  sw    $ra, 0x1c($sp)
/* B60D14 800E9B74 AFB00018 */  sw    $s0, 0x18($sp)
/* B60D18 800E9B78 00808025 */  move  $s0, $a0
/* B60D1C 800E9B7C 0C03A68B */  jal   func_800E9A2C
/* B60D20 800E9B80 3405FFFF */   li    $a1, 65535
/* B60D24 800E9B84 0C039F80 */  jal   Audio_NotePoolClear
/* B60D28 800E9B88 2604009C */   addiu $a0, $s0, 0x9c
/* B60D2C 800E9B8C 8E0E0000 */  lw    $t6, ($s0)
/* B60D30 800E9B90 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B60D34 800E9B94 51E00020 */  beql  $t7, $zero, .L800E9C18
/* B60D38 800E9B98 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60D3C 800E9B9C 92180000 */  lbu   $t8, ($s0)
/* B60D40 800E9BA0 92040004 */  lbu   $a0, 4($s0)
/* B60D44 800E9BA4 3309FF7F */  andi  $t1, $t8, 0xff7f
/* B60D48 800E9BA8 A2090000 */  sb    $t1, ($s0)
/* B60D4C 800E9BAC 352A0040 */  ori   $t2, $t1, 0x40
/* B60D50 800E9BB0 0C03864A */  jal   func_800E1928
/* B60D54 800E9BB4 A20A0000 */   sb    $t2, ($s0)
/* B60D58 800E9BB8 10400003 */  beqz  $v0, .L800E9BC8
/* B60D5C 800E9BBC 24050003 */   li    $a1, 3
/* B60D60 800E9BC0 0C038692 */  jal   func_800E1A48
/* B60D64 800E9BC4 92040004 */   lbu   $a0, 4($s0)
.L800E9BC8:
/* B60D68 800E9BC8 0C03862C */  jal   func_800E18B0
/* B60D6C 800E9BCC 92040005 */   lbu   $a0, 5($s0)
/* B60D70 800E9BD0 10400003 */  beqz  $v0, .L800E9BE0
/* B60D74 800E9BD4 24050004 */   li    $a1, 4
/* B60D78 800E9BD8 0C038686 */  jal   func_800E1A18
/* B60D7C 800E9BDC 92040005 */   lbu   $a0, 5($s0)
.L800E9BE0:
/* B60D80 800E9BE0 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B60D84 800E9BE4 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B60D88 800E9BE8 846B2C22 */  lh    $t3, 0x2c22($v1)
/* B60D8C 800E9BEC 92020005 */  lbu   $v0, 5($s0)
/* B60D90 800E9BF0 544B0004 */  bnel  $v0, $t3, .L800E9C04
/* B60D94 800E9BF4 846C2C2E */   lh    $t4, 0x2c2e($v1)
/* B60D98 800E9BF8 10000006 */  b     .L800E9C14
/* B60D9C 800E9BFC AC602C04 */   sw    $zero, 0x2c04($v1)
/* B60DA0 800E9C00 846C2C2E */  lh    $t4, 0x2c2e($v1)
.L800E9C04:
/* B60DA4 800E9C04 240D0001 */  li    $t5, 1
/* B60DA8 800E9C08 544C0003 */  bnel  $v0, $t4, .L800E9C18
/* B60DAC 800E9C0C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B60DB0 800E9C10 AC6D2C04 */  sw    $t5, 0x2c04($v1)
.L800E9C14:
/* B60DB4 800E9C14 8FBF001C */  lw    $ra, 0x1c($sp)
.L800E9C18:
/* B60DB8 800E9C18 8FB00018 */  lw    $s0, 0x18($sp)
/* B60DBC 800E9C1C 27BD0020 */  addiu $sp, $sp, 0x20
/* B60DC0 800E9C20 03E00008 */  jr    $ra
/* B60DC4 800E9C24 00000000 */   nop   

