glabel func_800EAEF4
/* B62094 800EAEF4 30A200FF */  andi  $v0, $a1, 0xff
/* B62098 800EAEF8 3043000F */  andi  $v1, $v0, 0xf
/* B6209C 800EAEFC 10600002 */  beqz  $v1, .L800EAF08
/* B620A0 800EAF00 AFA50004 */   sw    $a1, 4($sp)
/* B620A4 800EAF04 A0830005 */  sb    $v1, 5($a0)
.L800EAF08:
/* B620A8 800EAF08 00022903 */  sra   $a1, $v0, 4
/* B620AC 800EAF0C 30A500FF */  andi  $a1, $a1, 0xff
/* B620B0 800EAF10 10A00002 */  beqz  $a1, .L800EAF1C
/* B620B4 800EAF14 00000000 */   nop   
/* B620B8 800EAF18 A0850006 */  sb    $a1, 6($a0)
.L800EAF1C:
/* B620BC 800EAF1C 03E00008 */  jr    $ra
/* B620C0 800EAF20 00000000 */   nop   

