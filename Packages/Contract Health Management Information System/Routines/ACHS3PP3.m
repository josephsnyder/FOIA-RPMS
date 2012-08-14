ACHS3PP3 ; IHS/ITSC/PMF - COMPILE CHS THIRD PARTY PAYMENT (ALL PATIENTS) ;  [ 10/16/2001   8:16 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;;JUN 11, 2001
 ;
 ;TPF RE-WRITTEN FROM ACHS3PPC
 ;
 ;
 I $D(ACHSPAT) D ^ACHS3PP1 Q
 S ACHSFAC=DUZ(2)
GETFY ;
 S ACHSFY1=""
 F  S ACHSFY1=$O(^ACHSF(ACHSFAC,"D","B",ACHSFY1)) Q:ACHSFY1=""  D
 .I '$D(^TMP("ACHS3PP",$J,ACHSFAC)) S ^TMP("ACHS3PP",$J,ACHSFAC,0)=""
 .S ACHSFYA=$E(ACHSFY1,2),ACHSFYB=$E(ACHSFY,4)
 .I ACHSFYA'=ACHSFYB Q
 .D GETDIEN
 K ACHSDOCR,X,Y,Z
 D ^ACHS3PP4    ;DO ALL PATIENTS
 Q
GETDIEN ;
 S ACHSDIEN=""
 F  S ACHSDIEN=$O(^ACHSF(ACHSFAC,"D","B",ACHSFY1,ACHSDIEN)) Q:ACHSDIEN=""  D
 .Q:'$D(^ACHSF(ACHSFAC,"D",ACHSDIEN,0))!'$D(^ACHSF(ACHSFAC,"D",ACHSDIEN,"PA"))
 .I $P($G(^ACHSF(ACHSFAC,"D",ACHSDIEN,0)),U,9)'>0 Q
 .S ACHSDOCR=$G(^ACHSF(ACHSFAC,"D",ACHSDIEN,0))
 .Q:ACHSDOCR=""
 .S ACHSSERV=$S($P(ACHSDOCR,U,4):$P(ACHSDOCR,U,4),1:"UNKN")
 .I '(ACHSSER=4),ACHSSERV'=ACHSSER Q
 .D GETIDT
 Q
GETIDT ;GET TRANSACTION RECORD INFORMATION
 S ACHSIDT=$P(ACHSDOCR,U,2),ACHSOBL=$P(ACHSDOCR,U,9)
 K Z
 ;
 S ACHSTRAN=0
 F  S ACHSTRAN=$O(^ACHSF(ACHSFAC,"D",ACHSDIEN,"T",ACHSTRAN)) Q:'ACHSTRAN  D
 .S X=$G(^ACHSF(ACHSFAC,"D",ACHSDIEN,"T",ACHSTRAN,0)) Q:X=""
 .S Y=$P(X,U,2)
 .I Y'="I",Y'="C" S Z("I")=$G(Z("I"))+$P(X,U,4),Z("3")=$G(Z("3"))+$P(X,U,8)
 Q:'$D(Z)
 S:$P($G(^AUTTLOC(ACHSFAC,0)),U,4)'="" ACHSAREA=$P($G(^AUTTLOC(ACHSFAC,0)),U,4)
 S ACHSDOC=$P(ACHSDOCR,U,14)_"-"_$P($G(^AUTTAREA(ACHSAREA,0)),U,3)_$E($P($G(^AUTTLOC(ACHSFAC,0)),U,17),2,3)_"-"_$P(ACHSDOCR,U)
 S ^TMP("ACHS3PP",$J,ACHSFAC,ACHSDOC)=ACHSIDT_U_ACHSOBL_U_Z("3")_U_Z("I")_U_ACHSSERV
 Q
 ;