glabel func_8083F524
/* 0D314 8083F524 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0D318 8083F528 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0D31C 8083F52C 8CAE0678 */  lw      $t6, 0x0678($a1)           ## 00000678
/* 0D320 8083F530 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0D324 8083F534 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 0D328 8083F538 C5C40038 */  lwc1    $f4, 0x0038($t6)           ## 00000038
/* 0D32C 8083F53C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0D330 8083F540 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 0D334 8083F544 46062200 */  add.s   $f8, $f4, $f6              
/* 0D338 8083F548 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0D33C 8083F54C 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 0D340 8083F550 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 0D344 8083F554 44074000 */  mfc1    $a3, $f8                   
/* 0D348 8083F558 0C20FCD8 */  jal     func_8083F360              
/* 0D34C 8083F55C E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 0D350 8083F560 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0D354 8083F564 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0D358 8083F568 03E00008 */  jr      $ra                        
/* 0D35C 8083F56C 00000000 */  nop

