.late_rodata
glabel D_80A3A234
    .float -0.8

glabel D_80A3A238
    .float -0.8

glabel D_80A3A23C
    .float -0.85

.text
glabel func_80A36AE4
/* 017D4 80A36AE4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 017D8 80A36AE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 017DC 80A36AEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 017E0 80A36AF0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 017E4 80A36AF4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 017E8 80A36AF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017EC 80A36AFC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 017F0 80A36B00 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 017F4 80A36B04 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 017F8 80A36B08 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 017FC 80A36B0C 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 01800 80A36B10 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01804 80A36B14 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01808 80A36B18 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 0180C 80A36B1C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01810 80A36B20 0C28E78B */  jal     func_80A39E2C              
/* 01814 80A36B24 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01818 80A36B28 1440015F */  bne     $v0, $zero, .L80A370A8     
/* 0181C 80A36B2C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01820 80A36B30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01824 80A36B34 0C28D567 */  jal     func_80A3559C              
/* 01828 80A36B38 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0182C 80A36B3C 5440015B */  bnel    $v0, $zero, .L80A370AC     
/* 01830 80A36B40 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01834 80A36B44 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 01838 80A36B48 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0183C 80A36B4C 24593A98 */  addiu   $t9, $v0, 0x3A98           ## $t9 = 00003A98
/* 01840 80A36B50 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 01844 80A36B54 8FA80028 */  lw      $t0, 0x0028($sp)           
/* 01848 80A36B58 850300B6 */  lh      $v1, 0x00B6($t0)           ## 000000B6
/* 0184C 80A36B5C 00611821 */  addu    $v1, $v1, $at              
/* 01850 80A36B60 00031C00 */  sll     $v1, $v1, 16               
/* 01854 80A36B64 00031C03 */  sra     $v1, $v1, 16               
/* 01858 80A36B68 00622023 */  subu    $a0, $v1, $v0              
/* 0185C 80A36B6C 00042400 */  sll     $a0, $a0, 16               
/* 01860 80A36B70 00042403 */  sra     $a0, $a0, 16               
/* 01864 80A36B74 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01868 80A36B78 A7A3003E */  sh      $v1, 0x003E($sp)           
/* 0186C 80A36B7C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01870 80A36B80 00000000 */  nop
/* 01874 80A36B84 4600103E */  c.le.s  $f2, $f0                   
/* 01878 80A36B88 00000000 */  nop
/* 0187C 80A36B8C 4500000E */  bc1f    .L80A36BC8                 
/* 01880 80A36B90 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01884 80A36B94 44810000 */  mtc1    $at, $f0                   ## $f0 = -8.00
/* 01888 80A36B98 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 0188C 80A36B9C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 01890 80A36BA0 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 01894 80A36BA4 46062201 */  sub.s   $f8, $f4, $f6              
/* 01898 80A36BA8 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 0189C 80A36BAC C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 018A0 80A36BB0 4600503C */  c.lt.s  $f10, $f0                  
/* 018A4 80A36BB4 00000000 */  nop
/* 018A8 80A36BB8 4502001C */  bc1fl   .L80A36C2C                 
/* 018AC 80A36BBC 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 018B0 80A36BC0 10000019 */  beq     $zero, $zero, .L80A36C28   
/* 018B4 80A36BC4 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80A36BC8:
/* 018B8 80A36BC8 87A9003E */  lh      $t1, 0x003E($sp)           
/* 018BC 80A36BCC 860A00B6 */  lh      $t2, 0x00B6($s0)           ## 000000B6
/* 018C0 80A36BD0 012A2023 */  subu    $a0, $t1, $t2              
/* 018C4 80A36BD4 00042400 */  sll     $a0, $a0, 16               
/* 018C8 80A36BD8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 018CC 80A36BDC 00042403 */  sra     $a0, $a0, 16               
/* 018D0 80A36BE0 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 018D4 80A36BE4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 018D8 80A36BE8 4612003C */  c.lt.s  $f0, $f18                  
/* 018DC 80A36BEC 00000000 */  nop
/* 018E0 80A36BF0 4502000E */  bc1fl   .L80A36C2C                 
/* 018E4 80A36BF4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 018E8 80A36BF8 44810000 */  mtc1    $at, $f0                   ## $f0 = 8.00
/* 018EC 80A36BFC 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 018F0 80A36C00 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 018F4 80A36C04 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 018F8 80A36C08 46062200 */  add.s   $f8, $f4, $f6              
/* 018FC 80A36C0C E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 01900 80A36C10 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 01904 80A36C14 460A003C */  c.lt.s  $f0, $f10                  
/* 01908 80A36C18 00000000 */  nop
/* 0190C 80A36C1C 45020003 */  bc1fl   .L80A36C2C                 
/* 01910 80A36C20 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 01914 80A36C24 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L80A36C28:
/* 01918 80A36C28 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A36C2C:
/* 0191C 80A36C2C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01920 80A36C30 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 01924 80A36C34 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
/* 01928 80A36C38 1440000F */  bne     $v0, $zero, .L80A36C78     
/* 0192C 80A36C3C 00000000 */  nop
/* 01930 80A36C40 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 01934 80A36C44 44060000 */  mfc1    $a2, $f0                   
/* 01938 80A36C48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0193C 80A36C4C 24E73E80 */  addiu   $a3, $a3, 0x3E80           ## $a3 = 00003E80
/* 01940 80A36C50 00073C00 */  sll     $a3, $a3, 16               
/* 01944 80A36C54 00073C03 */  sra     $a3, $a3, 16               
/* 01948 80A36C58 0C00CE6E */  jal     func_800339B8              
/* 0194C 80A36C5C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01950 80A36C60 54400039 */  bnel    $v0, $zero, .L80A36D48     
/* 01954 80A36C64 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01958 80A36C68 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 0195C 80A36C6C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01960 80A36C70 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 01964 80A36C74 30420008 */  andi    $v0, $v0, 0x0008           ## $v0 = 00000000
.L80A36C78:
/* 01968 80A36C78 10400013 */  beq     $v0, $zero, .L80A36CC8     
/* 0196C 80A36C7C 3C0180A4 */  lui     $at, %hi(D_80A3A234)       ## $at = 80A40000
/* 01970 80A36C80 4600103E */  c.le.s  $f2, $f0                   
/* 01974 80A36C84 00000000 */  nop
/* 01978 80A36C88 45020007 */  bc1fl   .L80A36CA8                 
/* 0197C 80A36C8C 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 01980 80A36C90 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
/* 01984 80A36C94 24423E80 */  addiu   $v0, $v0, 0x3E80           ## $v0 = 00003E80
/* 01988 80A36C98 00021400 */  sll     $v0, $v0, 16               
/* 0198C 80A36C9C 10000005 */  beq     $zero, $zero, .L80A36CB4   
/* 01990 80A36CA0 00021403 */  sra     $v0, $v0, 16               
/* 01994 80A36CA4 860200B6 */  lh      $v0, 0x00B6($s0)           ## 000000B6
.L80A36CA8:
/* 01998 80A36CA8 2442C180 */  addiu   $v0, $v0, 0xC180           ## $v0 = 00000000
/* 0199C 80A36CAC 00021400 */  sll     $v0, $v0, 16               
/* 019A0 80A36CB0 00021403 */  sra     $v0, $v0, 16               
.L80A36CB4:
/* 019A4 80A36CB4 860B007E */  lh      $t3, 0x007E($s0)           ## 0000007E
/* 019A8 80A36CB8 01621023 */  subu    $v0, $t3, $v0              
/* 019AC 80A36CBC 00021400 */  sll     $v0, $v0, 16               
/* 019B0 80A36CC0 10000005 */  beq     $zero, $zero, .L80A36CD8   
/* 019B4 80A36CC4 00021403 */  sra     $v0, $v0, 16               
.L80A36CC8:
/* 019B8 80A36CC8 C432A234 */  lwc1    $f18, %lo(D_80A3A234)($at) 
/* 019BC 80A36CCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 019C0 80A36CD0 46120102 */  mul.s   $f4, $f0, $f18             
/* 019C4 80A36CD4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A36CD8:
/* 019C8 80A36CD8 04400003 */  bltz    $v0, .L80A36CE8            
/* 019CC 80A36CDC 00021823 */  subu    $v1, $zero, $v0            
/* 019D0 80A36CE0 10000001 */  beq     $zero, $zero, .L80A36CE8   
/* 019D4 80A36CE4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A36CE8:
/* 019D8 80A36CE8 28614001 */  slti    $at, $v1, 0x4001           
/* 019DC 80A36CEC 14200015 */  bne     $at, $zero, .L80A36D44     
/* 019E0 80A36CF0 3C0180A4 */  lui     $at, %hi(D_80A3A238)       ## $at = 80A40000
/* 019E4 80A36CF4 C428A238 */  lwc1    $f8, %lo(D_80A3A238)($at)  
/* 019E8 80A36CF8 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 019EC 80A36CFC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 019F0 80A36D00 46083282 */  mul.s   $f10, $f6, $f8             
/* 019F4 80A36D04 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
/* 019F8 80A36D08 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 019FC 80A36D0C 4602003C */  c.lt.s  $f0, $f2                   
/* 01A00 80A36D10 00000000 */  nop
/* 01A04 80A36D14 45020008 */  bc1fl   .L80A36D38                 
/* 01A08 80A36D18 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01A0C 80A36D1C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01A10 80A36D20 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01A14 80A36D24 00000000 */  nop
/* 01A18 80A36D28 46120101 */  sub.s   $f4, $f0, $f18             
/* 01A1C 80A36D2C 10000005 */  beq     $zero, $zero, .L80A36D44   
/* 01A20 80A36D30 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01A24 80A36D34 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
.L80A36D38:
/* 01A28 80A36D38 00000000 */  nop
/* 01A2C 80A36D3C 46060200 */  add.s   $f8, $f0, $f6              
/* 01A30 80A36D40 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
.L80A36D44:
/* 01A34 80A36D44 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
.L80A36D48:
/* 01A38 80A36D48 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 01A3C 80A36D4C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01A40 80A36D50 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01A44 80A36D54 460A003E */  c.le.s  $f0, $f10                  
/* 01A48 80A36D58 00000000 */  nop
/* 01A4C 80A36D5C 45000008 */  bc1f    .L80A36D80                 
/* 01A50 80A36D60 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 01A54 80A36D64 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
/* 01A58 80A36D68 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A5C 80A36D6C 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 01A60 80A36D70 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01A64 80A36D74 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01A68 80A36D78 10000016 */  beq     $zero, $zero, .L80A36DD4   
/* 01A6C 80A36D7C C60C0304 */  lwc1    $f12, 0x0304($s0)          ## 00000304
.L80A36D80:
/* 01A70 80A36D80 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01A74 80A36D84 44819000 */  mtc1    $at, $f18                  ## $f18 = 40.00
/* 01A78 80A36D88 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 01A7C 80A36D8C 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 01A80 80A36D90 4600903C */  c.lt.s  $f18, $f0                  
/* 01A84 80A36D94 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 40D4CCCD
/* 01A88 80A36D98 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 01A8C 80A36D9C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A90 80A36DA0 45020009 */  bc1fl   .L80A36DC8                 
/* 01A94 80A36DA4 44051000 */  mfc1    $a1, $f2                   
/* 01A98 80A36DA8 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 01A9C 80A36DAC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01AA0 80A36DB0 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 01AA4 80A36DB4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01AA8 80A36DB8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01AAC 80A36DBC 10000005 */  beq     $zero, $zero, .L80A36DD4   
/* 01AB0 80A36DC0 C60C0304 */  lwc1    $f12, 0x0304($s0)          ## 00000304
/* 01AB4 80A36DC4 44051000 */  mfc1    $a1, $f2                   
.L80A36DC8:
/* 01AB8 80A36DC8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01ABC 80A36DCC E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01AC0 80A36DD0 C60C0304 */  lwc1    $f12, 0x0304($s0)          ## 00000304
.L80A36DD4:
/* 01AC4 80A36DD4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01AC8 80A36DD8 00000000 */  nop
/* 01ACC 80A36DDC 460C2032 */  c.eq.s  $f4, $f12                  
/* 01AD0 80A36DE0 00000000 */  nop
/* 01AD4 80A36DE4 45030010 */  bc1tl   .L80A36E28                 
/* 01AD8 80A36DE8 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01ADC 80A36DEC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01AE0 80A36DF0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01AE4 80A36DF4 C6080304 */  lwc1    $f8, 0x0304($s0)           ## 00000304
/* 01AE8 80A36DF8 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01AEC 80A36DFC 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 01AF0 80A36E00 46080282 */  mul.s   $f10, $f0, $f8             
/* 01AF4 80A36E04 460A3480 */  add.s   $f18, $f6, $f10            
/* 01AF8 80A36E08 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01AFC 80A36E0C E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 01B00 80A36E10 C60C0304 */  lwc1    $f12, 0x0304($s0)          ## 00000304
/* 01B04 80A36E14 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01B08 80A36E18 460C0202 */  mul.s   $f8, $f0, $f12             
/* 01B0C 80A36E1C 46082180 */  add.s   $f6, $f4, $f8              
/* 01B10 80A36E20 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 01B14 80A36E24 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
.L80A36E28:
/* 01B18 80A36E28 00000000 */  nop
/* 01B1C 80A36E2C 460C803E */  c.le.s  $f16, $f12                 
/* 01B20 80A36E30 00000000 */  nop
/* 01B24 80A36E34 45020004 */  bc1fl   .L80A36E48                 
/* 01B28 80A36E38 46006387 */  neg.s   $f14, $f12                 
/* 01B2C 80A36E3C 10000002 */  beq     $zero, $zero, .L80A36E48   
/* 01B30 80A36E40 46006386 */  mov.s   $f14, $f12                 
/* 01B34 80A36E44 46006387 */  neg.s   $f14, $f12                 
.L80A36E48:
/* 01B38 80A36E48 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 01B3C 80A36E4C 4600803E */  c.le.s  $f16, $f0                  
/* 01B40 80A36E50 00000000 */  nop
/* 01B44 80A36E54 45020004 */  bc1fl   .L80A36E68                 
/* 01B48 80A36E58 46000087 */  neg.s   $f2, $f0                   
/* 01B4C 80A36E5C 10000002 */  beq     $zero, $zero, .L80A36E68   
/* 01B50 80A36E60 46000086 */  mov.s   $f2, $f0                   
/* 01B54 80A36E64 46000087 */  neg.s   $f2, $f0                   
.L80A36E68:
/* 01B58 80A36E68 4602703C */  c.lt.s  $f14, $f2                  
/* 01B5C 80A36E6C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01B60 80A36E70 45020008 */  bc1fl   .L80A36E94                 
/* 01B64 80A36E74 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 01B68 80A36E78 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01B6C 80A36E7C 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01B70 80A36E80 46000287 */  neg.s   $f10, $f0                  
/* 01B74 80A36E84 46125102 */  mul.s   $f4, $f10, $f18            
/* 01B78 80A36E88 10000005 */  beq     $zero, $zero, .L80A36EA0   
/* 01B7C 80A36E8C E60401A4 */  swc1    $f4, 0x01A4($s0)           ## 000001A4
/* 01B80 80A36E90 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
.L80A36E94:
/* 01B84 80A36E94 46006207 */  neg.s   $f8, $f12                  
/* 01B88 80A36E98 46064282 */  mul.s   $f10, $f8, $f6             
/* 01B8C 80A36E9C E60A01A4 */  swc1    $f10, 0x01A4($s0)          ## 000001A4
.L80A36EA0:
/* 01B90 80A36EA0 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01B94 80A36EA4 44811000 */  mtc1    $at, $f2                   ## $f2 = -3.00
/* 01B98 80A36EA8 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 01B9C 80A36EAC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 01BA0 80A36EB0 4602003C */  c.lt.s  $f0, $f2                   
/* 01BA4 80A36EB4 00000000 */  nop
/* 01BA8 80A36EB8 45020004 */  bc1fl   .L80A36ECC                 
/* 01BAC 80A36EBC 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
/* 01BB0 80A36EC0 1000000B */  beq     $zero, $zero, .L80A36EF0   
/* 01BB4 80A36EC4 E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
/* 01BB8 80A36EC8 44816000 */  mtc1    $at, $f12                  ## $f12 = 3.00
.L80A36ECC:
/* 01BBC 80A36ECC 00000000 */  nop
/* 01BC0 80A36ED0 4600603C */  c.lt.s  $f12, $f0                  
/* 01BC4 80A36ED4 00000000 */  nop
/* 01BC8 80A36ED8 45020004 */  bc1fl   .L80A36EEC                 
/* 01BCC 80A36EDC 46000086 */  mov.s   $f2, $f0                   
/* 01BD0 80A36EE0 10000002 */  beq     $zero, $zero, .L80A36EEC   
/* 01BD4 80A36EE4 46006086 */  mov.s   $f2, $f12                  
/* 01BD8 80A36EE8 46000086 */  mov.s   $f2, $f0                   
.L80A36EEC:
/* 01BDC 80A36EEC E60201A4 */  swc1    $f2, 0x01A4($s0)           ## 000001A4
.L80A36EF0:
/* 01BE0 80A36EF0 C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 01BE4 80A36EF4 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 01BE8 80A36EF8 4600910D */  trunc.w.s $f4, $f18                  
/* 01BEC 80A36EFC 44032000 */  mfc1    $v1, $f4                   
/* 01BF0 80A36F00 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01BF4 80A36F04 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 01BF8 80A36F08 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 01BFC 80A36F0C C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 01C00 80A36F10 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 01C04 80A36F14 4600803E */  c.le.s  $f16, $f0                  
/* 01C08 80A36F18 00000000 */  nop
/* 01C0C 80A36F1C 45020004 */  bc1fl   .L80A36F30                 
/* 01C10 80A36F20 46000087 */  neg.s   $f2, $f0                   
/* 01C14 80A36F24 10000002 */  beq     $zero, $zero, .L80A36F30   
/* 01C18 80A36F28 46000086 */  mov.s   $f2, $f0                   
/* 01C1C 80A36F2C 46000087 */  neg.s   $f2, $f0                   
.L80A36F30:
/* 01C20 80A36F30 C60C01A0 */  lwc1    $f12, 0x01A0($s0)          ## 000001A0
/* 01C24 80A36F34 4600803E */  c.le.s  $f16, $f0                  
/* 01C28 80A36F38 46026201 */  sub.s   $f8, $f12, $f2             
/* 01C2C 80A36F3C 4600628D */  trunc.w.s $f10, $f12                 
/* 01C30 80A36F40 4600418D */  trunc.w.s $f6, $f8                   
/* 01C34 80A36F44 440F5000 */  mfc1    $t7, $f10                  
/* 01C38 80A36F48 44023000 */  mfc1    $v0, $f6                   
/* 01C3C 80A36F4C 45020004 */  bc1fl   .L80A36F60                 
/* 01C40 80A36F50 46000087 */  neg.s   $f2, $f0                   
/* 01C44 80A36F54 10000002 */  beq     $zero, $zero, .L80A36F60   
/* 01C48 80A36F58 46000086 */  mov.s   $f2, $f0                   
/* 01C4C 80A36F5C 46000087 */  neg.s   $f2, $f0                   
.L80A36F60:
/* 01C50 80A36F60 506F0015 */  beql    $v1, $t7, .L80A36FB8       
/* 01C54 80A36F64 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 01C58 80A36F68 04410007 */  bgez    $v0, .L80A36F88            
/* 01C5C 80A36F6C 28410005 */  slti    $at, $v0, 0x0005           
/* 01C60 80A36F70 4600148D */  trunc.w.s $f18, $f2                  
/* 01C64 80A36F74 44199000 */  mfc1    $t9, $f18                  
/* 01C68 80A36F78 00000000 */  nop
/* 01C6C 80A36F7C 03234021 */  addu    $t0, $t9, $v1              
/* 01C70 80A36F80 5D00000A */  bgtzl   $t0, .L80A36FAC            
/* 01C74 80A36F84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A36F88:
/* 01C78 80A36F88 5020000B */  beql    $at, $zero, .L80A36FB8     
/* 01C7C 80A36F8C 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 01C80 80A36F90 4600110D */  trunc.w.s $f4, $f2                   
/* 01C84 80A36F94 440A2000 */  mfc1    $t2, $f4                   
/* 01C88 80A36F98 00000000 */  nop
/* 01C8C 80A36F9C 01435821 */  addu    $t3, $t2, $v1              
/* 01C90 80A36FA0 29610006 */  slti    $at, $t3, 0x0006           
/* 01C94 80A36FA4 14200003 */  bne     $at, $zero, .L80A36FB4     
/* 01C98 80A36FA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A36FAC:
/* 01C9C 80A36FAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01CA0 80A36FB0 240539A0 */  addiu   $a1, $zero, 0x39A0         ## $a1 = 000039A0
.L80A36FB4:
/* 01CA4 80A36FB4 8FAC0044 */  lw      $t4, 0x0044($sp)           
.L80A36FB8:
/* 01CA8 80A36FB8 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 01CAC 80A36FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CB0 80A36FC0 01AC6821 */  addu    $t5, $t5, $t4              
/* 01CB4 80A36FC4 8DAD1DE4 */  lw      $t5, 0x1DE4($t5)           ## 00011DE4
/* 01CB8 80A36FC8 31AE005F */  andi    $t6, $t5, 0x005F           ## $t6 = 00000000
/* 01CBC 80A36FCC 55C00004 */  bnel    $t6, $zero, .L80A36FE0     
/* 01CC0 80A36FD0 87AF003E */  lh      $t7, 0x003E($sp)           
/* 01CC4 80A36FD4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01CC8 80A36FD8 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
/* 01CCC 80A36FDC 87AF003E */  lh      $t7, 0x003E($sp)           
.L80A36FE0:
/* 01CD0 80A36FE0 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 01CD4 80A36FE4 01F82023 */  subu    $a0, $t7, $t8              
/* 01CD8 80A36FE8 00042400 */  sll     $a0, $a0, 16               
/* 01CDC 80A36FEC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01CE0 80A36FF0 00042403 */  sra     $a0, $a0, 16               
/* 01CE4 80A36FF4 3C0180A4 */  lui     $at, %hi(D_80A3A23C)       ## $at = 80A40000
/* 01CE8 80A36FF8 C428A23C */  lwc1    $f8, %lo(D_80A3A23C)($at)  
/* 01CEC 80A36FFC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01CF0 80A37000 4608003C */  c.lt.s  $f0, $f8                   
/* 01CF4 80A37004 00000000 */  nop
/* 01CF8 80A37008 45020010 */  bc1fl   .L80A3704C                 
/* 01CFC 80A3700C 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
/* 01D00 80A37010 0C00CEAE */  jal     func_80033AB8              
/* 01D04 80A37014 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D08 80A37018 1440000B */  bne     $v0, $zero, .L80A37048     
/* 01D0C 80A3701C 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 01D10 80A37020 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 01D14 80A37024 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 01D18 80A37028 4606503E */  c.le.s  $f10, $f6                  
/* 01D1C 80A3702C 00000000 */  nop
/* 01D20 80A37030 45020006 */  bc1fl   .L80A3704C                 
/* 01D24 80A37034 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
/* 01D28 80A37038 0C28DD9C */  jal     func_80A37670              
/* 01D2C 80A3703C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D30 80A37040 1000001A */  beq     $zero, $zero, .L80A370AC   
/* 01D34 80A37044 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A37048:
/* 01D38 80A37048 8E190300 */  lw      $t9, 0x0300($s0)           ## 00000300
.L80A3704C:
/* 01D3C 80A3704C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D40 80A37050 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 01D44 80A37054 15000014 */  bne     $t0, $zero, .L80A370A8     
/* 01D48 80A37058 AE080300 */  sw      $t0, 0x0300($s0)           ## 00000300
/* 01D4C 80A3705C 0C00CEAE */  jal     func_80033AB8              
/* 01D50 80A37060 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01D54 80A37064 1040000E */  beq     $v0, $zero, .L80A370A0     
/* 01D58 80A37068 00000000 */  nop
/* 01D5C 80A3706C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01D60 80A37070 00000000 */  nop
/* 01D64 80A37074 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01D68 80A37078 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 01D6C 80A3707C 00000000 */  nop
/* 01D70 80A37080 4600903C */  c.lt.s  $f18, $f0                  
/* 01D74 80A37084 00000000 */  nop
/* 01D78 80A37088 45000005 */  bc1f    .L80A370A0                 
/* 01D7C 80A3708C 00000000 */  nop
/* 01D80 80A37090 0C28DF5C */  jal     func_80A37D70              
/* 01D84 80A37094 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D88 80A37098 10000004 */  beq     $zero, $zero, .L80A370AC   
/* 01D8C 80A3709C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A370A0:
/* 01D90 80A370A0 0C28D752 */  jal     func_80A35D48              
/* 01D94 80A370A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A370A8:
/* 01D98 80A370A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A370AC:
/* 01D9C 80A370AC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01DA0 80A370B0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01DA4 80A370B4 03E00008 */  jr      $ra                        
/* 01DA8 80A370B8 00000000 */  nop
