glabel func_80B26E9C
/* 007EC 80B26E9C 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 007F0 80B26EA0 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 007F4 80B26EA4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 007F8 80B26EA8 4481E000 */  mtc1    $at, $f28                  ## $f28 = 10.00
/* 007FC 80B26EAC F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00800 80B26EB0 3C014640 */  lui     $at, 0x4640                ## $at = 46400000
/* 00804 80B26EB4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 12288.00
/* 00808 80B26EB8 AFB7006C */  sw      $s7, 0x006C($sp)           
/* 0080C 80B26EBC AFB60068 */  sw      $s6, 0x0068($sp)           
/* 00810 80B26EC0 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00814 80B26EC4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00818 80B26EC8 AFBE0070 */  sw      $s8, 0x0070($sp)           
/* 0081C 80B26ECC AFB50064 */  sw      $s5, 0x0064($sp)           
/* 00820 80B26ED0 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 00824 80B26ED4 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00828 80B26ED8 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 0082C 80B26EDC 3C1680B3 */  lui     $s6, %hi(D_80B28950)       ## $s6 = 80B30000
/* 00830 80B26EE0 3C1780B3 */  lui     $s7, %hi(D_80B28954)       ## $s7 = 80B30000
/* 00834 80B26EE4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 12.00
/* 00838 80B26EE8 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 0083C 80B26EEC 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00840 80B26EF0 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00844 80B26EF4 AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00848 80B26EF8 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 0084C 80B26EFC F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00850 80B26F00 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00854 80B26F04 26F78954 */  addiu   $s7, $s7, %lo(D_80B28954)  ## $s7 = 80B28954
/* 00858 80B26F08 26D68950 */  addiu   $s6, $s6, %lo(D_80B28950)  ## $s6 = 80B28950
/* 0085C 80B26F0C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00860 80B26F10 27B5008C */  addiu   $s5, $sp, 0x008C           ## $s5 = FFFFFFF4
/* 00864 80B26F14 241E0004 */  addiu   $s8, $zero, 0x0004         ## $s8 = 00000004
/* 00868 80B26F18 864E07A0 */  lh      $t6, 0x07A0($s2)           ## 000007A0
.L80B26F1C:
/* 0086C 80B26F1C 000E7880 */  sll     $t7, $t6,  2               
/* 00870 80B26F20 024FC021 */  addu    $t8, $s2, $t7              
/* 00874 80B26F24 0C016A7D */  jal     func_8005A9F4              
/* 00878 80B26F28 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 0087C 80B26F2C 00022400 */  sll     $a0, $v0, 16               
/* 00880 80B26F30 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00884 80B26F34 00042403 */  sra     $a0, $a0, 16               
/* 00888 80B26F38 865907A0 */  lh      $t9, 0x07A0($s2)           ## 000007A0
/* 0088C 80B26F3C 46000587 */  neg.s   $f22, $f0                  
/* 00890 80B26F40 00194080 */  sll     $t0, $t9,  2               
/* 00894 80B26F44 02484821 */  addu    $t1, $s2, $t0              
/* 00898 80B26F48 0C016A7D */  jal     func_8005A9F4              
/* 0089C 80B26F4C 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 008A0 80B26F50 00022400 */  sll     $a0, $v0, 16               
/* 008A4 80B26F54 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 008A8 80B26F58 00042403 */  sra     $a0, $a0, 16               
/* 008AC 80B26F5C 928A0194 */  lbu     $t2, 0x0194($s4)           ## 00000194
/* 008B0 80B26F60 00115840 */  sll     $t3, $s1,  1               
/* 008B4 80B26F64 46000606 */  mov.s   $f24, $f0                  
/* 008B8 80B26F68 014B6021 */  addu    $t4, $t2, $t3              
/* 008BC 80B26F6C 05810004 */  bgez    $t4, .L80B26F80            
/* 008C0 80B26F70 318D0003 */  andi    $t5, $t4, 0x0003           ## $t5 = 00000000
/* 008C4 80B26F74 11A00002 */  beq     $t5, $zero, .L80B26F80     
/* 008C8 80B26F78 00000000 */  nop
/* 008CC 80B26F7C 25ADFFFC */  addiu   $t5, $t5, 0xFFFC           ## $t5 = FFFFFFFC
.L80B26F80:
/* 008D0 80B26F80 15A0002E */  bne     $t5, $zero, .L80B2703C     
/* 008D4 80B26F84 00119B80 */  sll     $s3, $s1, 14               
/* 008D8 80B26F88 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 008DC 80B26F8C 4600D306 */  mov.s   $f12, $f26                 
/* 008E0 80B26F90 4600010D */  trunc.w.s $f4, $f0                   
/* 008E4 80B26F94 44192000 */  mfc1    $t9, $f4                   
/* 008E8 80B26F98 00000000 */  nop
/* 008EC 80B26F9C 03331021 */  addu    $v0, $t9, $s3              
/* 008F0 80B26FA0 24422000 */  addiu   $v0, $v0, 0x2000           ## $v0 = 00002000
/* 008F4 80B26FA4 00028400 */  sll     $s0, $v0, 16               
/* 008F8 80B26FA8 00022400 */  sll     $a0, $v0, 16               
/* 008FC 80B26FAC 00108403 */  sra     $s0, $s0, 16               
/* 00900 80B26FB0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00904 80B26FB4 00042403 */  sra     $a0, $a0, 16               
/* 00908 80B26FB8 46140182 */  mul.s   $f6, $f0, $f20             
/* 0090C 80B26FBC C68A0024 */  lwc1    $f10, 0x0024($s4)          ## 00000024
/* 00910 80B26FC0 00102400 */  sll     $a0, $s0, 16               
/* 00914 80B26FC4 00042403 */  sra     $a0, $a0, 16               
/* 00918 80B26FC8 46163202 */  mul.s   $f8, $f6, $f22             
/* 0091C 80B26FCC 460A4400 */  add.s   $f16, $f8, $f10            
/* 00920 80B26FD0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00924 80B26FD4 E7B0008C */  swc1    $f16, 0x008C($sp)          
/* 00928 80B26FD8 46140102 */  mul.s   $f4, $f0, $f20             
/* 0092C 80B26FDC C6920028 */  lwc1    $f18, 0x0028($s4)          ## 00000028
/* 00930 80B26FE0 00102400 */  sll     $a0, $s0, 16               
/* 00934 80B26FE4 00042403 */  sra     $a0, $a0, 16               
/* 00938 80B26FE8 46049181 */  sub.s   $f6, $f18, $f4             
/* 0093C 80B26FEC 461C3200 */  add.s   $f8, $f6, $f28             
/* 00940 80B26FF0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00944 80B26FF4 E7A80090 */  swc1    $f8, 0x0090($sp)           
/* 00948 80B26FF8 46140282 */  mul.s   $f10, $f0, $f20            
/* 0094C 80B26FFC C692002C */  lwc1    $f18, 0x002C($s4)          ## 0000002C
/* 00950 80B27000 24080011 */  addiu   $t0, $zero, 0x0011         ## $t0 = 00000011
/* 00954 80B27004 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 00958 80B27008 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 0095C 80B2700C AFAA001C */  sw      $t2, 0x001C($sp)           
/* 00960 80B27010 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00964 80B27014 46185402 */  mul.s   $f16, $f10, $f24           
/* 00968 80B27018 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0096C 80B2701C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00970 80B27020 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00974 80B27024 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF4
/* 00978 80B27028 02C03025 */  or      $a2, $s6, $zero            ## $a2 = 80B28950
/* 0097C 80B2702C 02E03825 */  or      $a3, $s7, $zero            ## $a3 = 80B28954
/* 00980 80B27030 46128100 */  add.s   $f4, $f16, $f18            
/* 00984 80B27034 0C00A568 */  jal     func_800295A0              
/* 00988 80B27038 E7A40094 */  swc1    $f4, 0x0094($sp)           
.L80B2703C:
/* 0098C 80B2703C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00990 80B27040 563EFFB6 */  bnel    $s1, $s8, .L80B26F1C       
/* 00994 80B27044 864E07A0 */  lh      $t6, 0x07A0($s2)           ## 000007A0
/* 00998 80B27048 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0099C 80B2704C 0C00BE5D */  jal     func_8002F974              
/* 009A0 80B27050 2405309A */  addiu   $a1, $zero, 0x309A         ## $a1 = 0000309A
/* 009A4 80B27054 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 009A8 80B27058 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 009AC 80B2705C D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 009B0 80B27060 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 009B4 80B27064 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 009B8 80B27068 D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 009BC 80B2706C 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 009C0 80B27070 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 009C4 80B27074 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 009C8 80B27078 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 009CC 80B2707C 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 009D0 80B27080 8FB50064 */  lw      $s5, 0x0064($sp)           
/* 009D4 80B27084 8FB60068 */  lw      $s6, 0x0068($sp)           
/* 009D8 80B27088 8FB7006C */  lw      $s7, 0x006C($sp)           
/* 009DC 80B2708C 8FBE0070 */  lw      $s8, 0x0070($sp)           
/* 009E0 80B27090 03E00008 */  jr      $ra                        
/* 009E4 80B27094 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000

