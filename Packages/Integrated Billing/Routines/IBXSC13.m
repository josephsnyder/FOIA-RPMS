IBXSC13 ; ;11/29/04
 S X=DE(12),DIC=DIE
 S DFN=DA D EN^DGMTCOR K DGMTCOR
 S X=DE(12),DIC=DIE
 ;
 S X=DE(12),DIC=DIE
 D AUTOUPD^DGENA2(DA)
 S X=DE(12),DIC=DIE
 I ($T(AVAFC^VAFCDD01)'="") S VAFCF="1901;" D AVAFC^VAFCDD01(DA)
 S X=DE(12),DIC=DIE
 D:($T(ADGRU^DGRUDD01)'="") ADGRU^DGRUDD01(DA)
 S X=DE(12),DIC=DIE
 D KILL^AUPNDWXR(DA,"DEMO")