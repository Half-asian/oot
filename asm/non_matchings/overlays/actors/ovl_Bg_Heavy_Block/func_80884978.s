glabel func_80884978
/* 011E8 80884978 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 011EC 8088497C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 011F0 80884980 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011F4 80884984 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 011F8 80884988 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 011FC 8088498C 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01200 80884990 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 01204 80884994 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01208 80884998 24058AD0 */  addiu   $a1, $zero, 0x8AD0         ## $a1 = FFFF8AD0
/* 0120C 8088499C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 01210 808849A0 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01214 808849A4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01218 808849A8 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 0121C 808849AC 10400083 */  beq     $v0, $zero, .L80884BBC     
/* 01220 808849B0 2401FFCF */  addiu   $at, $zero, 0xFFCF         ## $at = FFFFFFCF
/* 01224 808849B4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 01228 808849B8 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0122C 808849BC 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 01230 808849C0 4405A000 */  mfc1    $a1, $f20                  
/* 01234 808849C4 0C01DE80 */  jal     Math_ApproxF
              
/* 01238 808849C8 00000000 */  nop
/* 0123C 808849CC 4405A000 */  mfc1    $a1, $f20                  
/* 01240 808849D0 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 01244 808849D4 0C01DE80 */  jal     Math_ApproxF
              
/* 01248 808849D8 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 0124C 808849DC E614006C */  swc1    $f20, 0x006C($s0)          ## 0000006C
/* 01250 808849E0 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 01254 808849E4 8CB80000 */  lw      $t8, 0x0000($a1)           ## 00000008
/* 01258 808849E8 26030024 */  addiu   $v1, $s0, 0x0024           ## $v1 = 00000024
/* 0125C 808849EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01260 808849F0 AC780000 */  sw      $t8, 0x0000($v1)           ## 00000024
/* 01264 808849F4 8CAF0004 */  lw      $t7, 0x0004($a1)           ## 0000000C
/* 01268 808849F8 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000028
/* 0126C 808849FC 8CB80008 */  lw      $t8, 0x0008($a1)           ## 00000010
/* 01270 80884A00 AC780008 */  sw      $t8, 0x0008($v1)           ## 0000002C
/* 01274 80884A04 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01278 80884A08 0C00B638 */  jal     Actor_MoveForward
              
/* 0127C 80884A0C AFA30040 */  sw      $v1, 0x0040($sp)           
/* 01280 80884A10 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 01284 80884A14 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01288 80884A18 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0128C 80884A1C 8C680000 */  lw      $t0, 0x0000($v1)           ## 00000000
/* 01290 80884A20 ACA80000 */  sw      $t0, 0x0000($a1)           ## 00000000
/* 01294 80884A24 8C790004 */  lw      $t9, 0x0004($v1)           ## 00000004
/* 01298 80884A28 ACB90004 */  sw      $t9, 0x0004($a1)           ## 00000004
/* 0129C 80884A2C 8C680008 */  lw      $t0, 0x0008($v1)           ## 00000008
/* 012A0 80884A30 ACA80008 */  sw      $t0, 0x0008($a1)           ## 00000008
/* 012A4 80884A34 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 012A8 80884A38 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 012AC 80884A3C 50400046 */  beql    $v0, $zero, .L80884B58     
/* 012B0 80884A40 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 012B4 80884A44 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 012B8 80884A48 14410062 */  bne     $v0, $at, .L80884BD4       
/* 012BC 80884A4C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 012C0 80884A50 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 012C4 80884A54 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 012C8 80884A58 00000000 */  nop
/* 012CC 80884A5C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 012D0 80884A60 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 012D4 80884A64 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 012D8 80884A68 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 012DC 80884A6C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 012E0 80884A70 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 012E4 80884A74 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 012E8 80884A78 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 012EC 80884A7C 3C018088 */  lui     $at, %hi(D_80884FC8)       ## $at = 80880000
/* 012F0 80884A80 C4264FC8 */  lwc1    $f6, %lo(D_80884FC8)($at)  
/* 012F4 80884A84 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 012F8 80884A88 3C018088 */  lui     $at, %hi(D_80884FCC)       ## $at = 80880000
/* 012FC 80884A8C C4304FCC */  lwc1    $f16, %lo(D_80884FCC)($at) 
/* 01300 80884A90 46062200 */  add.s   $f8, $f4, $f6              
/* 01304 80884A94 3C01440A */  lui     $at, 0x440A                ## $at = 440A0000
/* 01308 80884A98 44812000 */  mtc1    $at, $f4                   ## $f4 = 552.00
/* 0130C 80884A9C C7AA0048 */  lwc1    $f10, 0x0048($sp)          
/* 01310 80884AA0 44054000 */  mfc1    $a1, $f8                   
/* 01314 80884AA4 46040180 */  add.s   $f6, $f0, $f4              
/* 01318 80884AA8 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 0131C 80884AAC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01320 80884AB0 46105480 */  add.s   $f18, $f10, $f16           
/* 01324 80884AB4 44073000 */  mfc1    $a3, $f6                   
/* 01328 80884AB8 E7B40014 */  swc1    $f20, 0x0014($sp)          
/* 0132C 80884ABC E7B40018 */  swc1    $f20, 0x0018($sp)          
/* 01330 80884AC0 44069000 */  mfc1    $a2, $f18                  
/* 01334 80884AC4 0C220F95 */  jal     func_80883E54              
/* 01338 80884AC8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0133C 80884ACC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01340 80884AD0 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 01344 80884AD4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01348 80884AD8 00000000 */  nop
/* 0134C 80884ADC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 01350 80884AE0 44816000 */  mtc1    $at, $f12                  ## $f12 = 80.00
/* 01354 80884AE4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01358 80884AE8 E7A00044 */  swc1    $f0, 0x0044($sp)           
/* 0135C 80884AEC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01360 80884AF0 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 01364 80884AF4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01368 80884AF8 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 0136C 80884AFC 3C018088 */  lui     $at, %hi(D_80884FD0)       ## $at = 80880000
/* 01370 80884B00 C42A4FD0 */  lwc1    $f10, %lo(D_80884FD0)($at) 
/* 01374 80884B04 C7A80044 */  lwc1    $f8, 0x0044($sp)           
/* 01378 80884B08 3C018088 */  lui     $at, %hi(D_80884FD4)       ## $at = 80880000
/* 0137C 80884B0C C4244FD4 */  lwc1    $f4, %lo(D_80884FD4)($at)  
/* 01380 80884B10 460A4400 */  add.s   $f16, $f8, $f10            
/* 01384 80884B14 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 01388 80884B18 44814000 */  mtc1    $at, $f8                   ## $f8 = 600.00
/* 0138C 80884B1C C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 01390 80884B20 44058000 */  mfc1    $a1, $f16                  
/* 01394 80884B24 46080280 */  add.s   $f10, $f0, $f8             
/* 01398 80884B28 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 0139C 80884B2C E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 013A0 80884B30 46049180 */  add.s   $f6, $f18, $f4             
/* 013A4 80884B34 44075000 */  mfc1    $a3, $f10                  
/* 013A8 80884B38 E7B40014 */  swc1    $f20, 0x0014($sp)          
/* 013AC 80884B3C E7B40018 */  swc1    $f20, 0x0018($sp)          
/* 013B0 80884B40 44063000 */  mfc1    $a2, $f6                   
/* 013B4 80884B44 0C220F95 */  jal     func_80883E54              
/* 013B8 80884B48 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 013BC 80884B4C 10000022 */  beq     $zero, $zero, .L80884BD8   
/* 013C0 80884B50 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 013C4 80884B54 44816000 */  mtc1    $at, $f12                  ## $f12 = 0.00
.L80884B58:
/* 013C8 80884B58 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 013CC 80884B5C 00000000 */  nop
/* 013D0 80884B60 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 013D4 80884B64 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 013D8 80884B68 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 013DC 80884B6C E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 013E0 80884B70 3C018088 */  lui     $at, %hi(D_80884FD8)       ## $at = 80880000
/* 013E4 80884B74 C4324FD8 */  lwc1    $f18, %lo(D_80884FD8)($at) 
/* 013E8 80884B78 3C018088 */  lui     $at, %hi(D_80884FDC)       ## $at = 80880000
/* 013EC 80884B7C C4264FDC */  lwc1    $f6, %lo(D_80884FDC)($at)  
/* 013F0 80884B80 C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 013F4 80884B84 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 013F8 80884B88 46060200 */  add.s   $f8, $f0, $f6              
/* 013FC 80884B8C AFA9001C */  sw      $t1, 0x001C($sp)           
/* 01400 80884B90 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01404 80884B94 46128100 */  add.s   $f4, $f16, $f18            
/* 01408 80884B98 44074000 */  mfc1    $a3, $f8                   
/* 0140C 80884B9C 3C0641E8 */  lui     $a2, 0x41E8                ## $a2 = 41E80000
/* 01410 80884BA0 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01414 80884BA4 44052000 */  mfc1    $a1, $f4                   
/* 01418 80884BA8 E7B40014 */  swc1    $f20, 0x0014($sp)          
/* 0141C 80884BAC 0C220F95 */  jal     func_80883E54              
/* 01420 80884BB0 E7B40018 */  swc1    $f20, 0x0018($sp)          
/* 01424 80884BB4 10000008 */  beq     $zero, $zero, .L80884BD8   
/* 01428 80884BB8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80884BBC:
/* 0142C 80884BBC 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 01430 80884BC0 3C0C8088 */  lui     $t4, %hi(func_8088496C)    ## $t4 = 80880000
/* 01434 80884BC4 258C496C */  addiu   $t4, $t4, %lo(func_8088496C) ## $t4 = 8088496C
/* 01438 80884BC8 01415824 */  and     $t3, $t2, $at              
/* 0143C 80884BCC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 01440 80884BD0 AE0C0174 */  sw      $t4, 0x0174($s0)           ## 00000174
.L80884BD4:
/* 01444 80884BD4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80884BD8:
/* 01448 80884BD8 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 0144C 80884BDC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01450 80884BE0 03E00008 */  jr      $ra                        
/* 01454 80884BE4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000

