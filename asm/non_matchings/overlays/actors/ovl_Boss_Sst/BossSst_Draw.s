glabel BossSst_Draw
/* 08098 80934668 27BDFF38 */  addiu   $sp, $sp, 0xFF38           ## $sp = FFFFFF38
/* 0809C 8093466C AFBF005C */  sw      $ra, 0x005C($sp)           
/* 080A0 80934670 AFBE0058 */  sw      $s8, 0x0058($sp)           
/* 080A4 80934674 AFB70054 */  sw      $s7, 0x0054($sp)           
/* 080A8 80934678 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 080AC 8093467C AFB5004C */  sw      $s5, 0x004C($sp)           
/* 080B0 80934680 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 080B4 80934684 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 080B8 80934688 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 080BC 8093468C AFB1003C */  sw      $s1, 0x003C($sp)           
/* 080C0 80934690 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 080C4 80934694 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 080C8 80934698 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 080CC 8093469C AFA500CC */  sw      $a1, 0x00CC($sp)           
/* 080D0 809346A0 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 080D4 809346A4 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 080D8 809346A8 3C068093 */  lui     $a2, %hi(D_809378F0)       ## $a2 = 80930000
/* 080DC 809346AC 24C678F0 */  addiu   $a2, $a2, %lo(D_809378F0)  ## $a2 = 809378F0
/* 080E0 809346B0 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE8
/* 080E4 809346B4 240719A3 */  addiu   $a3, $zero, 0x19A3         ## $a3 = 000019A3
/* 080E8 809346B8 0C031AB1 */  jal     func_800C6AC4              
/* 080EC 809346BC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 080F0 809346C0 8FAF00CC */  lw      $t7, 0x00CC($sp)           
/* 080F4 809346C4 0C024F46 */  jal     func_80093D18              
/* 080F8 809346C8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 080FC 809346CC 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 08100 809346D0 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 08104 809346D4 37390080 */  ori     $t9, $t9, 0x0080           ## $t9 = FA000080
/* 08108 809346D8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0810C 809346DC AE9802C0 */  sw      $t8, 0x02C0($s4)           ## 000002C0
/* 08110 809346E0 3C048093 */  lui     $a0, %hi(D_80937464)       ## $a0 = 80930000
/* 08114 809346E4 24847464 */  addiu   $a0, $a0, %lo(D_80937464)  ## $a0 = 80937464
/* 08118 809346E8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0811C 809346EC 908C0001 */  lbu     $t4, 0x0001($a0)           ## 80937465
/* 08120 809346F0 90890000 */  lbu     $t1, 0x0000($a0)           ## 80937464
/* 08124 809346F4 90980002 */  lbu     $t8, 0x0002($a0)           ## 80937466
/* 08128 809346F8 000C6C00 */  sll     $t5, $t4, 16               
/* 0812C 809346FC 00095600 */  sll     $t2, $t1, 24               
/* 08130 80934700 014D7025 */  or      $t6, $t2, $t5              ## $t6 = 00000000
/* 08134 80934704 0018CA00 */  sll     $t9, $t8,  8               
/* 08138 80934708 01D94025 */  or      $t0, $t6, $t9              ## $t0 = FA000080
/* 0813C 8093470C 350900FF */  ori     $t1, $t0, 0x00FF           ## $t1 = FA0000FF
/* 08140 80934710 3C0B8093 */  lui     $t3, %hi(D_80937448)       ## $t3 = 80930000
/* 08144 80934714 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 08148 80934718 8D6B7448 */  lw      $t3, %lo(D_80937448)($t3)  
/* 0814C 8093471C 3C048093 */  lui     $a0, %hi(D_80937468)       ## $a0 = 80930000
/* 08150 80934720 24847468 */  addiu   $a0, $a0, %lo(D_80937468)  ## $a0 = 80937468
/* 08154 80934724 1560000B */  bne     $t3, $zero, .L80934754     
/* 08158 80934728 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 0815C 8093472C 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 08160 80934730 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 08164 80934734 3C0D8011 */  lui     $t5, 0x8011                ## $t5 = 80110000
/* 08168 80934738 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0816C 8093473C AE8C02C0 */  sw      $t4, 0x02C0($s4)           ## 000002C0
/* 08170 80934740 25AD6290 */  addiu   $t5, $t5, 0x6290           ## $t5 = 80116290
/* 08174 80934744 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 08178 80934748 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0817C 8093474C 10000017 */  beq     $zero, $zero, .L809347AC   
/* 08180 80934750 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L80934754:
/* 08184 80934754 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 08188 80934758 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 0818C 8093475C 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 08190 80934760 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 08194 80934764 AE8F02C0 */  sw      $t7, 0x02C0($s4)           ## 000002C0
/* 08198 80934768 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0819C 8093476C 908B0001 */  lbu     $t3, 0x0001($a0)           ## 80937469
/* 081A0 80934770 90990000 */  lbu     $t9, 0x0000($a0)           ## 80937468
/* 081A4 80934774 908F0002 */  lbu     $t7, 0x0002($a0)           ## 8093746A
/* 081A8 80934778 000B6400 */  sll     $t4, $t3, 16               
/* 081AC 8093477C 00194600 */  sll     $t0, $t9, 24               
/* 081B0 80934780 010C5025 */  or      $t2, $t0, $t4              ## $t2 = FA000088
/* 081B4 80934784 000FC200 */  sll     $t8, $t7,  8               
/* 081B8 80934788 01587025 */  or      $t6, $t2, $t8              ## $t6 = FB000088
/* 081BC 8093478C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 081C0 80934790 8E8202C0 */  lw      $v0, 0x02C0($s4)           ## 000002C0
/* 081C4 80934794 3C0B8093 */  lui     $t3, %hi(D_80936990)       ## $t3 = 80930000
/* 081C8 80934798 256B6990 */  addiu   $t3, $t3, %lo(D_80936990)  ## $t3 = 80936990
/* 081CC 8093479C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 081D0 809347A0 AE9902C0 */  sw      $t9, 0x02C0($s4)           ## 000002C0
/* 081D4 809347A4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 081D8 809347A8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
.L809347AC:
/* 081DC 809347AC 8E650150 */  lw      $a1, 0x0150($s3)           ## 00000150
/* 081E0 809347B0 8E66016C */  lw      $a2, 0x016C($s3)           ## 0000016C
/* 081E4 809347B4 9267014E */  lbu     $a3, 0x014E($s3)           ## 0000014E
/* 081E8 809347B8 3C088093 */  lui     $t0, %hi(func_809345A4)    ## $t0 = 80930000
/* 081EC 809347BC 3C0C8093 */  lui     $t4, %hi(func_809345F0)    ## $t4 = 80930000
/* 081F0 809347C0 258C45F0 */  addiu   $t4, $t4, %lo(func_809345F0) ## $t4 = 809345F0
/* 081F4 809347C4 250845A4 */  addiu   $t0, $t0, %lo(func_809345A4) ## $t0 = 809345A4
/* 081F8 809347C8 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 081FC 809347CC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 08200 809347D0 AFB30018 */  sw      $s3, 0x0018($sp)           
/* 08204 809347D4 0C0286B2 */  jal     func_800A1AC8              
/* 08208 809347D8 8FA400CC */  lw      $a0, 0x00CC($sp)           
/* 0820C 809347DC 866D09D2 */  lh      $t5, 0x09D2($s3)           ## 000009D2
/* 08210 809347E0 8FAF00CC */  lw      $t7, 0x00CC($sp)           
/* 08214 809347E4 29A10002 */  slti    $at, $t5, 0x0002           
/* 08218 809347E8 5420007F */  bnel    $at, $zero, .L809349E8     
/* 0821C 809347EC 8FA900CC */  lw      $t1, 0x00CC($sp)           
/* 08220 809347F0 0C024F61 */  jal     func_80093D84              
/* 08224 809347F4 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 08228 809347F8 866A09D0 */  lh      $t2, 0x09D0($s3)           ## 000009D0
/* 0822C 809347FC 24030007 */  addiu   $v1, $zero, 0x0007         ## $v1 = 00000007
/* 08230 80934800 2406001C */  addiu   $a2, $zero, 0x001C         ## $a2 = 0000001C
/* 08234 80934804 25580004 */  addiu   $t8, $t2, 0x0004           ## $t8 = 00000004
/* 08238 80934808 0303001A */  div     $zero, $t8, $v1            
/* 0823C 8093480C 0000A810 */  mfhi    $s5                        
/* 08240 80934810 26B90002 */  addiu   $t9, $s5, 0x0002           ## $t9 = 00000002
/* 08244 80934814 866209D2 */  lh      $v0, 0x09D2($s3)           ## 000009D2
/* 08248 80934818 02A60019 */  multu   $s5, $a2                   
/* 0824C 8093481C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 08250 80934820 00021043 */  sra     $v0, $v0,  1               
/* 08254 80934824 14600002 */  bne     $v1, $zero, .L80934830     
/* 08258 80934828 00000000 */  nop
/* 0825C 8093482C 0007000D */  break 7
.L80934830:
/* 08260 80934830 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 08264 80934834 14610004 */  bne     $v1, $at, .L80934848       
/* 08268 80934838 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0826C 8093483C 17010002 */  bne     $t8, $at, .L80934848       
/* 08270 80934840 00000000 */  nop
/* 08274 80934844 0006000D */  break 6
.L80934848:
/* 08278 80934848 00007012 */  mflo    $t6                        
/* 0827C 8093484C 026E8021 */  addu    $s0, $s3, $t6              
/* 08280 80934850 261009D4 */  addiu   $s0, $s0, 0x09D4           ## $s0 = 000009D4
/* 08284 80934854 0323001A */  div     $zero, $t9, $v1            
/* 08288 80934858 00004810 */  mfhi    $t1                        
/* 0828C 8093485C AFB0009C */  sw      $s0, 0x009C($sp)           
/* 08290 80934860 14600002 */  bne     $v1, $zero, .L8093486C     
/* 08294 80934864 00000000 */  nop
/* 08298 80934868 0007000D */  break 7
.L8093486C:
/* 0829C 8093486C 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 082A0 80934870 14610004 */  bne     $v1, $at, .L80934884       
/* 082A4 80934874 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 082A8 80934878 17210002 */  bne     $t9, $at, .L80934884       
/* 082AC 8093487C 00000000 */  nop
/* 082B0 80934880 0006000D */  break 6
.L80934884:
/* 082B4 80934884 01260019 */  multu   $t1, $a2                   
/* 082B8 80934888 3C014461 */  lui     $at, 0x4461                ## $at = 44610000
/* 082BC 8093488C 00005812 */  mflo    $t3                        
/* 082C0 80934890 026B2021 */  addu    $a0, $s3, $t3              
/* 082C4 80934894 18400053 */  blez    $v0, .L809349E4            
/* 082C8 80934898 248409D4 */  addiu   $a0, $a0, 0x09D4           ## $a0 = 000009D4
/* 082CC 8093489C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 900.00
/* 082D0 809348A0 3C018093 */  lui     $at, %hi(D_80937A18)       ## $at = 80930000
/* 082D4 809348A4 C4347A18 */  lwc1    $f20, %lo(D_80937A18)($at) 
/* 082D8 809348A8 AFA2008C */  sw      $v0, 0x008C($sp)           
.L809348AC:
/* 082DC 809348AC 0C032D94 */  jal     func_800CB650              
/* 082E0 809348B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 000009D4
/* 082E4 809348B4 4600B03C */  c.lt.s  $f22, $f0                  
/* 082E8 809348B8 3C128093 */  lui     $s2, %hi(D_809369A8)       ## $s2 = 80930000
/* 082EC 809348BC 265269A8 */  addiu   $s2, $s2, %lo(D_809369A8)  ## $s2 = 809369A8
/* 082F0 809348C0 2607000C */  addiu   $a3, $s0, 0x000C           ## $a3 = 000009E0
/* 082F4 809348C4 45000039 */  bc1f    .L809349AC                 
/* 082F8 809348C8 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 082FC 809348CC 01111023 */  subu    $v0, $t0, $s1              
/* 08300 809348D0 0002B080 */  sll     $s6, $v0,  2               
/* 08304 809348D4 0002B880 */  sll     $s7, $v0,  2               
/* 08308 809348D8 0002F100 */  sll     $s8, $v0,  4               
/* 0830C 809348DC 03C2F023 */  subu    $s8, $s8, $v0              
/* 08310 809348E0 02E2B821 */  addu    $s7, $s7, $v0              
/* 08314 809348E4 02C2B021 */  addu    $s6, $s6, $v0              
/* 08318 809348E8 3C0C8093 */  lui     $t4, %hi(func_80934628)    ## $t4 = 80930000
/* 0831C 809348EC 258C4628 */  addiu   $t4, $t4, %lo(func_80934628) ## $t4 = 80934628
/* 08320 809348F0 0016B040 */  sll     $s6, $s6,  1               
/* 08324 809348F4 0017B880 */  sll     $s7, $s7,  2               
/* 08328 809348F8 001EF040 */  sll     $s8, $s8,  1               
/* 0832C 809348FC C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 000009D4
/* 08330 80934900 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 000009D8
/* 08334 80934904 8E060008 */  lw      $a2, 0x0008($s0)           ## 000009DC
/* 08338 80934908 AFAC0068 */  sw      $t4, 0x0068($sp)           
/* 0833C 8093490C 27DE0046 */  addiu   $s8, $s8, 0x0046           ## $s8 = 00000046
/* 08340 80934910 26F70032 */  addiu   $s7, $s7, 0x0032           ## $s7 = 00000032
/* 08344 80934914 0C0345A5 */  jal     func_800D1694              
/* 08348 80934918 26D60014 */  addiu   $s6, $s6, 0x0014           ## $s6 = 00000014
/* 0834C 8093491C 4406A000 */  mfc1    $a2, $f20                  
/* 08350 80934920 4600A306 */  mov.s   $f12, $f20                 
/* 08354 80934924 4600A386 */  mov.s   $f14, $f20                 
/* 08358 80934928 0C0342A3 */  jal     Matrix_Scale              
/* 0835C 8093492C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 08360 80934930 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 08364 80934934 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 08368 80934938 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 0836C 8093493C 246D0008 */  addiu   $t5, $v1, 0x0008           ## $t5 = 00000008
/* 08370 80934940 AE8D02D0 */  sw      $t5, 0x02D0($s4)           ## 000002D0
/* 08374 80934944 AC720004 */  sw      $s2, 0x0004($v1)           ## 00000004
/* 08378 80934948 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 0837C 8093494C 8E8302D0 */  lw      $v1, 0x02D0($s4)           ## 000002D0
/* 08380 80934950 32E900FF */  andi    $t1, $s7, 0x00FF           ## $t1 = 00000032
/* 08384 80934954 00095A00 */  sll     $t3, $t1,  8               
/* 08388 80934958 0016CE00 */  sll     $t9, $s6, 24               
/* 0838C 8093495C 246A0008 */  addiu   $t2, $v1, 0x0008           ## $t2 = 00000008
/* 08390 80934960 AE8A02D0 */  sw      $t2, 0x02D0($s4)           ## 000002D0
/* 08394 80934964 032B4025 */  or      $t0, $t9, $t3              ## $t0 = 00000000
/* 08398 80934968 33CC00FF */  andi    $t4, $s8, 0x00FF           ## $t4 = 00000046
/* 0839C 8093496C 010C6825 */  or      $t5, $t0, $t4              ## $t5 = 00000046
/* 083A0 80934970 3C18FA00 */  lui     $t8, 0xFA00                ## $t8 = FA000000
/* 083A4 80934974 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000000
/* 083A8 80934978 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 083AC 8093497C 8FAF0068 */  lw      $t7, 0x0068($sp)           
/* 083B0 80934980 9267014E */  lbu     $a3, 0x014E($s3)           ## 0000014E
/* 083B4 80934984 8E66016C */  lw      $a2, 0x016C($s3)           ## 0000016C
/* 083B8 80934988 8E650150 */  lw      $a1, 0x0150($s3)           ## 00000150
/* 083BC 8093498C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 083C0 80934990 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 083C4 80934994 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 083C8 80934998 8E8A02D0 */  lw      $t2, 0x02D0($s4)           ## 000002D0
/* 083CC 8093499C 8FA400CC */  lw      $a0, 0x00CC($sp)           
/* 083D0 809349A0 0C0289CF */  jal     func_800A273C              
/* 083D4 809349A4 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 083D8 809349A8 AE8202D0 */  sw      $v0, 0x02D0($s4)           ## 000002D0
.L809349AC:
/* 083DC 809349AC 26B50005 */  addiu   $s5, $s5, 0x0005           ## $s5 = 00000005
/* 083E0 809349B0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 083E4 809349B4 02A1001A */  div     $zero, $s5, $at            
/* 083E8 809349B8 0000A810 */  mfhi    $s5                        
/* 083EC 809349BC 0015C0C0 */  sll     $t8, $s5,  3               
/* 083F0 809349C0 0315C023 */  subu    $t8, $t8, $s5              
/* 083F4 809349C4 8FAE008C */  lw      $t6, 0x008C($sp)           
/* 083F8 809349C8 0018C080 */  sll     $t8, $t8,  2               
/* 083FC 809349CC 02788021 */  addu    $s0, $s3, $t8              
/* 08400 809349D0 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 08404 809349D4 8FA4009C */  lw      $a0, 0x009C($sp)           
/* 08408 809349D8 261009D4 */  addiu   $s0, $s0, 0x09D4           ## $s0 = 000013A8
/* 0840C 809349DC 162EFFB3 */  bne     $s1, $t6, .L809348AC       
/* 08410 809349E0 AFB0009C */  sw      $s0, 0x009C($sp)           
.L809349E4:
/* 08414 809349E4 8FA900CC */  lw      $t1, 0x00CC($sp)           
.L809349E8:
/* 08418 809349E8 3C068093 */  lui     $a2, %hi(D_80937900)       ## $a2 = 80930000
/* 0841C 809349EC 24C67900 */  addiu   $a2, $a2, %lo(D_80937900)  ## $a2 = 80937900
/* 08420 809349F0 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE8
/* 08424 809349F4 240719FE */  addiu   $a3, $zero, 0x19FE         ## $a3 = 000019FE
/* 08428 809349F8 0C031AD5 */  jal     func_800C6B54              
/* 0842C 809349FC 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 08430 80934A00 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 08434 80934A04 0C24D8E7 */  jal     func_8093639C              
/* 08438 80934A08 8FA500CC */  lw      $a1, 0x00CC($sp)           
/* 0843C 80934A0C 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 08440 80934A10 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 08444 80934A14 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 08448 80934A18 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0844C 80934A1C 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 08450 80934A20 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 08454 80934A24 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 08458 80934A28 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 0845C 80934A2C 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 08460 80934A30 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 08464 80934A34 8FB70054 */  lw      $s7, 0x0054($sp)           
/* 08468 80934A38 8FBE0058 */  lw      $s8, 0x0058($sp)           
/* 0846C 80934A3C 03E00008 */  jr      $ra                        
/* 08470 80934A40 27BD00C8 */  addiu   $sp, $sp, 0x00C8           ## $sp = 00000000

