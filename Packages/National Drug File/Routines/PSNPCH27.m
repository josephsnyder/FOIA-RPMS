PSNPCH27 ;BIR/WRT-POST INSTALL routine ; 03/21/00 10:54
 ;;4.0; NATIONAL DRUG FILE;**27**; 30 Oct 98
 ;
 ;Reference to ^PSDRUG supported by DBIA #2352
 ;
 D START,KILL
 Q
START U IO W !,"Converting DRUG file (#50)" F IFN=0:0 S IFN=$O(^PSDRUG(IFN)) Q:'IFN  U IO W:'(IFN#100) "." S LINK=$P($G(^PSDRUG(IFN,"ND")),"^",3) I LINK D BRANCH1
 Q
BRANCH1 S FORMI=$P($G(^PSNDF(50.68,LINK,5)),"^") I FORMI]"" S $P(^PSDRUG(IFN,"ND"),"^",11)=FORMI
 Q
KILL K IFN,LINK,FORMI
 Q
