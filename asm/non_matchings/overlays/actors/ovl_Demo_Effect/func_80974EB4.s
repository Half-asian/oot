.rdata
glabel D_80976A00
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A14
    .asciz "../z_demo_effect.c"
    .balign 4

glabel D_80976A28
    .asciz "../z_demo_effect.c"
    .balign 4

.text
glabel func_80974EB4
/* 03F64 80974EB4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 03F68 80974EB8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 03F6C 80974EBC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 03F70 80974EC0 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 03F74 80974EC4 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 03F78 80974EC8 AFA40080 */  sw      $a0, 0x0080($sp)           
/* 03F7C 80974ECC 00A11021 */  addu    $v0, $a1, $at              
/* 03F80 80974ED0 8C4E1DE4 */  lw      $t6, 0x1DE4($v0)           ## 00001DE4
/* 03F84 80974ED4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 03F88 80974ED8 3C068097 */  lui     $a2, %hi(D_80976A00)       ## $a2 = 80970000
/* 03F8C 80974EDC AFAE0078 */  sw      $t6, 0x0078($sp)           
/* 03F90 80974EE0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03F94 80974EE4 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 03F98 80974EE8 24C66A00 */  addiu   $a2, $a2, %lo(D_80976A00)  ## $a2 = 80976A00
/* 03F9C 80974EEC 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 03FA0 80974EF0 24070A8D */  addiu   $a3, $zero, 0x0A8D         ## $a3 = 00000A8D
/* 03FA4 80974EF4 0C031AB1 */  jal     Graph_OpenDisps              
/* 03FA8 80974EF8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03FAC 80974EFC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03FB0 80974F00 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 03FB4 80974F04 3C19FFC8 */  lui     $t9, 0xFFC8                ## $t9 = FFC80000
/* 03FB8 80974F08 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03FBC 80974F0C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 03FC0 80974F10 373900FF */  ori     $t9, $t9, 0x00FF           ## $t9 = FFC800FF
/* 03FC4 80974F14 37184040 */  ori     $t8, $t8, 0x4040           ## $t8 = FA004040
/* 03FC8 80974F18 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03FCC 80974F1C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03FD0 80974F20 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03FD4 80974F24 3C0AFF00 */  lui     $t2, 0xFF00                ## $t2 = FF000000
/* 03FD8 80974F28 354A00FF */  ori     $t2, $t2, 0x00FF           ## $t2 = FF0000FF
/* 03FDC 80974F2C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 03FE0 80974F30 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 03FE4 80974F34 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 03FE8 80974F38 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 03FEC 80974F3C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 03FF0 80974F40 0C024F61 */  jal     func_80093D84              
/* 03FF4 80974F44 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 03FF8 80974F48 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03FFC 80974F4C 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 04000 80974F50 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 04004 80974F54 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04008 80974F58 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0400C 80974F5C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 04010 80974F60 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 04014 80974F64 3C058097 */  lui     $a1, %hi(D_80976A14)       ## $a1 = 80970000
/* 04018 80974F68 24A56A14 */  addiu   $a1, $a1, %lo(D_80976A14)  ## $a1 = 80976A14
/* 0401C 80974F6C 24060A95 */  addiu   $a2, $zero, 0x0A95         ## $a2 = 00000A95
/* 04020 80974F70 0C0346A2 */  jal     Matrix_NewMtx              
/* 04024 80974F74 AFA20058 */  sw      $v0, 0x0058($sp)           
/* 04028 80974F78 8FA30058 */  lw      $v1, 0x0058($sp)           
/* 0402C 80974F7C 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 04030 80974F80 35CE0001 */  ori     $t6, $t6, 0x0001           ## $t6 = DA380001
/* 04034 80974F84 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 04038 80974F88 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0403C 80974F8C 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 04040 80974F90 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 04044 80974F94 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 04048 80974F98 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 0404C 80974F9C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 04050 80974FA0 8FAF0048 */  lw      $t7, 0x0048($sp)           
/* 04054 80974FA4 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 04058 80974FA8 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 0405C 80974FAC 8DF81DE0 */  lw      $t8, 0x1DE0($t7)           ## 00001DE0
/* 04060 80974FB0 240F007F */  addiu   $t7, $zero, 0x007F         ## $t7 = 0000007F
/* 04064 80974FB4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 04068 80974FB8 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0406C 80974FBC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 04070 80974FC0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 04074 80974FC4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04078 80974FC8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0407C 80974FCC AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 04080 80974FD0 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 04084 80974FD4 8FAC0078 */  lw      $t4, 0x0078($sp)           
/* 04088 80974FD8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0408C 80974FDC 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 04090 80974FE0 000C6880 */  sll     $t5, $t4,  2               
/* 04094 80974FE4 01AC6821 */  addu    $t5, $t5, $t4              
/* 04098 80974FE8 000D6880 */  sll     $t5, $t5,  2               
/* 0409C 80974FEC 31AE007F */  andi    $t6, $t5, 0x007F           ## $t6 = 00000008
/* 040A0 80974FF0 01EEC023 */  subu    $t8, $t7, $t6              
/* 040A4 80974FF4 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 040A8 80974FF8 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 040AC 80974FFC AFB80020 */  sw      $t8, 0x0020($sp)           
/* 040B0 80975000 AFA80028 */  sw      $t0, 0x0028($sp)           
/* 040B4 80975004 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 040B8 80975008 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 040BC 8097500C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 040C0 80975010 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 040C4 80975014 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 040C8 80975018 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 040CC 8097501C AFA20050 */  sw      $v0, 0x0050($sp)           
/* 040D0 80975020 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 040D4 80975024 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 040D8 80975028 256B0040 */  addiu   $t3, $t3, 0x0040           ## $t3 = 06000040
/* 040DC 8097502C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 040E0 80975030 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 040E4 80975034 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 040E8 80975038 3C068097 */  lui     $a2, %hi(D_80976A28)       ## $a2 = 80970000
/* 040EC 8097503C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 040F0 80975040 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 040F4 80975044 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 040F8 80975048 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 040FC 8097504C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 04100 80975050 24C66A28 */  addiu   $a2, $a2, %lo(D_80976A28)  ## $a2 = 80976A28
/* 04104 80975054 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFFE4
/* 04108 80975058 0C031AD5 */  jal     Graph_CloseDisps              
/* 0410C 8097505C 24070AA3 */  addiu   $a3, $zero, 0x0AA3         ## $a3 = 00000AA3
/* 04110 80975060 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 04114 80975064 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 04118 80975068 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0411C 8097506C 03E00008 */  jr      $ra                        
/* 04120 80975070 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
