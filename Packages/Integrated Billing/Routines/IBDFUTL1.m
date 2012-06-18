IBDFUTL1 ;ALB/MAF - Maintenance Utility cont. - 4 20 95
 ;;3.0;AUTOMATED INFO COLLECTION SYS;**32,23**;APR 24, 1997
 ;
 ;
SETSTR(S,V,X,L) ; -- insert text(S) into variable(V)
 ;    S := string
 ;    V := destination
 ;    X := @ col X
 ;    L := # of chars
 ;
 Q $E(V_$J("",X-1),1,X-1)_$E(S_$J("",L),1,L)_$E(V,X+L,999)
 ;
 ;
SETARR ;  -- Set up Listman array
 S IBDCNT1=IBDCNT1+1
 S IBDCNT=IBDCNT+1,VALMCNT=VALMCNT+1
 S X=""
 S IBDFVAL=$J(IBDCNT1_")",5)
 S X=$$SETSTR^VALM1(IBDFVAL,X,1,5)
 S IBDFVAL=IBDFX
 S X=$$SETSTR^VALM1(IBDFVAL,X,7,8)
 S IBDFVAL=$P(IBDFTMP,"^",3)
 S X=$$SETSTR^VALM1(IBDFVAL,X,17,15)
 S IBDFVAL=$P(^IBE(357.1,IBDFBLK,0),"^",1)
 S X=$$SETSTR^VALM1(IBDFVAL,X,34,14)
 S IBDFVAL=$P(^IBE(357,IBDFORM1,0),"^",1)
 S X=$$SETSTR^VALM1(IBDFVAL,X,50,14)
 I $D(VAUTC)!($D(VAUTG)) S IBDFVAL=$P(IBDFTMP,"^",6) S X=$$SETSTR^VALM1(IBDFVAL,X,66,14)
 ;
 ;
TMP ; -- Set up TMP Array
 S ^TMP("CPT",$J,IBDCNT,0)=$$LOWER^VALM1(X),^TMP("CPT",$J,"IDX",VALMCNT,IBDCNT1)=""
 S ^TMP("CPTIDX",$J,IBDCNT1)=VALMCNT_"^"_IBDFX_"^"_$P(IBDFTMP,"^",4)_"^"_$P(IBDFTMP,"^",5)_"^"_$P(IBDFTMP,"^",1)_"^"_$P(IBDFTMP,"^",2)
 Q
SETARR1 ;  -- Set up Listman array
 N IBDPRIM,IBDSELP
 S IBDSELP=$P($G(IBDFTMP),"^",5)
 Q:IBDSELP']""
 S IBDPRIM=$P($G(^IBE(357.3,IBDSELP,0)),"^")
 I IBDPRIM=IBDFX Q
 ;S IBDCNT1=IBDCNT1+1
 S IBDCNT=IBDCNT+1,VALMCNT=VALMCNT+1
 S X=""
 S IBDFVAL="Primary Diagnosis: "_IBDPRIM
 S X=$$SETSTR^VALM1(IBDFVAL,X,17,40)
 ;
 ;
TMP1 ; -- Set up TMP Array
 S ^TMP("CPT",$J,IBDCNT,0)=$$LOWER^VALM1(X),^TMP("CPT",$J,"IDX",VALMCNT,IBDCNT1)=""
 Q
 ;
 ;
SET ;  -- Loop thru to see if codes are valid
 F IBDFBLK=0:0 S IBDFBLK=$O(^IBE(357.1,"C",IBDFORM,IBDFBLK)) Q:'IBDFBLK  D
 .F IBDFLST=0:0 S IBDFLST=$O(^IBE(357.2,"C",IBDFBLK,IBDFLST)) Q:'IBDFLST  S IBDFNODE=$G(^IBE(357.2,IBDFLST,0)) I $P(IBDFNODE,"^",11)=IBDFINT D
 ..F IBDFSEL=0:0 S IBDFSEL=$O(^IBE(357.3,"C",IBDFLST,IBDFSEL)) Q:'IBDFSEL  S IBDFX=$G(^IBE(357.3,IBDFSEL,0)) I $P(IBDFX,"^",2)']"" D
 ...S IBDFX1=$P(IBDFX,"^",1),IBDFX2=$P($G(^IBE(357.3,IBDFSEL,2)),"^",3),IBDFX3=$P($G(^IBE(357.3,IBDFSEL,2)),"^",4)
 ...F IBI=IBDFX1,IBDFX2,IBDFX3 I IBI]"" D
 ....I IBDFACT=1 D
 .....S (X,IBDFX)=IBI
 .....X $G(^IBE(357.6,IBDFINT,11))
 .....Q:'$D(X)
 .....;;----change to api cpt;dhh
 .....I $G(IBDFCODE)="CPT " N IBY,XX D
 ......S XX=$$CPT^ICPTCOD(X)
 ......S IBY=$S(+XX=-1:"",1:$P(XX,"^",3))
 .....I $G(IBDFCODE)="ICD-9 " N IBY S IBY=$P($G(^ICD9(X,0)),"^",3)
 .....I $G(IBDFCODE)="Type of Visit " N IBY S IBY=$P($G(^IBE(357.69,X,0)),"^",2)
 .....Q:'$D(VAUTJ(X))
 .....S ^TMP("UTIL",$J,IBDFNAME,IBDFX,$P(^IBE(357,IBDFORM,0),"^",1),$P(^IBE(357.1,IBDFBLK,0),"^",1),IBDFSEL)=IBDFORM_"^"_IBDFBLK_"^"_$S(IBY]"":IBY,1:"INVALID")_"^"_IBDFLST_"^"_IBDFSEL_"^"_$S($D(VAUTC):IBDFNAME,$D(VAUTG):IBDFCLNM,1:"")
 ....I IBDFACT=2 D
 .....S (X,IBDFX)=IBI
 .....X $G(^IBE(357.6,IBDFINT,11))
 .....I '$D(X) S ^TMP("UTIL",$J,IBDFNAME,IBDFX,$P(^IBE(357,IBDFORM,0),"^",1),$P(^IBE(357.1,IBDFBLK,0),"^",1),IBDFSEL)=IBDFORM_"^"_IBDFBLK_"^"_$S(Y]"":Y,1:"INVALID")_"^"_IBDFLST_"^"_IBDFSEL_"^"_$S($D(VAUTC):IBDFNAME,$D(VAUTG):IBDFCLNM,1:"")
 Q
 ;
 ;
 ;  -- Set up alphabetical listing
SET1 S (IBDFORM1,IBDFBLK,IBDFLG,IBDFX,IBDFNAME,IBDORM,IBDBLK)=0
 F IBDFNM=0:0 S IBDFNAME=$O(^TMP("UTIL",$J,IBDFNAME)) Q:IBDFNAME']""  S IBDFX="" F  S IBDFX=$O(^TMP("UTIL",$J,IBDFNAME,IBDFX)) D:(IBDFX="")&($D(VAUTF)) CLINICS^IBDFUTL2 Q:IBDFX=""  D
 .F IBDFRM=0:0 S IBDORM=$O(^TMP("UTIL",$J,IBDFNAME,IBDFX,IBDORM)) Q:IBDORM']""  F IBDFBK=0:0 S IBDBLK=$O(^TMP("UTIL",$J,IBDFNAME,IBDFX,IBDORM,IBDBLK)) Q:IBDBLK']""  D
 ..F  S IBDFSEL=$O(^TMP("UTIL",$J,IBDFNAME,IBDFX,IBDORM,IBDBLK,IBDFSEL)) Q:IBDFSEL']""  D
 ...S IBDFTMP=^TMP("UTIL",$J,IBDFNAME,IBDFX,IBDORM,IBDBLK,IBDFSEL),IBDFORM1=$P(IBDFTMP,"^",1),IBDFBLK=$P(IBDFTMP,"^",2) D:'$D(IBDF(IBDFNAME)) HEADER^IBDFUTL2 D SETARR D:IBDBLK="DIAGNOSIS" SETARR1
 Q
 ;
 ;
CLIN1 ;  -- Sort Display by clinic
 N IBDFBLK,IBDFLST,IBDFORM,VAUTF
 I VAUTC=1 F X=0:0 S X=$O(^SC(X)) Q:'X  I $D(^SC(X,0)) S ^TMP("CLN",$J,X)=$P(^SC(X,0),"^",1)
 I VAUTC=0 K ^TMP("CLN",$J) F IBDFCLIN=0:0 S IBDFCLIN=$O(VAUTC(IBDFCLIN)) Q:'IBDFCLIN  S X=$G(VAUTC(IBDFCLIN)) S ^TMP("CLN",$J,IBDFCLIN)=X
 I '$D(IBDFNCNG) K ^TMP("CLN1",$J)
 F IBDFCLIN=0:0 S IBDFCLIN=$O(^TMP("CLN",$J,IBDFCLIN)) Q:'IBDFCLIN  S X=$G(^TMP("CLN",$J,IBDFCLIN)) S ^TMP("CLN1",$J,X)=IBDFCLIN
 S IBDCLNM=0 F IBDCLN=0:0 S IBDCLNM=$O(^TMP("CLN1",$J,IBDCLNM)) Q:IBDCLNM']""  S IBDFCLIN=^TMP("CLN1",$J,IBDCLNM) S IBDFCIFN=$O(^SD(409.95,"B",IBDFCLIN,0)) S IBDCNODE=$G(^SD(409.95,+IBDFCIFN,0)),IBDFNAME=IBDCLNM I $D(IBDCNODE) D
 .F IBDFN=2:1:9 S IBDFORM=$P(IBDCNODE,"^",IBDFN) I IBDFORM D SET
 D SET1 Q
 ;
 ;
FORM1 ;  -- Sort Display by form
 N IBDFBLK,IBDFLST,IBDFORM
 I VAUTF=1 S IBDFRNM=0 F IBDFRM=0:0 S IBDFRNM=$O(^IBE(357,"B",IBDFRNM)) Q:IBDFRNM']""  F IBDFORM=0:0 S IBDFORM=$O(^IBE(357,"B",IBDFRNM,IBDFORM)) Q:'IBDFORM  S IBDFNAME=IBDFRNM D SET
 I '$D(IBDFNCNG) K ^TMP("FRM1",$J)
 I VAUTF=0 F IBDFORM=0:0 S IBDFORM=$O(VAUTF(IBDFORM)) Q:'IBDFORM  S X=$G(VAUTF(IBDFORM)) S ^TMP("FRM1",$J,X)=IBDFORM
 I VAUTF=0 S IBDFRNM=0 F IBDFRM=0:0 S IBDFRNM=$O(^TMP("FRM1",$J,IBDFRNM)) Q:IBDFRNM']""  S IBDFORM=^TMP("FRM1",$J,IBDFRNM),IBDFNAME=IBDFRNM D SET
 D SET1
 Q
 ;
 ;
GROUP1 ;  -- Sort Display by clinic group
 N IBDFBLK,IBDFLST,IBDFORM,VAUTF
 I VAUTG=1 S IBDFGNM=0 F IBDFGN=0:0 S IBDFGNM=$O(^IBD(357.99,"B",IBDFGNM)) Q:IBDFGNM']""  F IBDFGIFN=0:0 S IBDFGIFN=$O(^IBD(357.99,"B",IBDFGNM,IBDFGIFN)) Q:'IBDFGIFN  S ^TMP("GRP1",$J,IBDFGNM)=IBDFGIFN
 I VAUTG=0,'$D(IBDFNCNG) K ^TMP("GRP1",$J)
 I VAUTG=0 F IBDFGIFN=0:0 S IBDFGIFN=$O(VAUTG(IBDFGIFN)) Q:'IBDFGIFN  S ^TMP("GRP1",$J,VAUTG(IBDFGIFN))=IBDFGIFN
 S IBDFGNM=0 F IBDFGN=0:0 S IBDFGNM=$O(^TMP("GRP1",$J,IBDFGNM)) Q:IBDFGNM']""  S IBDFGIFN=^TMP("GRP1",$J,IBDFGNM) D
 .S IEN=0 F  S IEN=$O(^IBD(357.99,IBDFGIFN,10,IEN)) Q:'IEN  S IBCLN=+$G(^IBD(357.99,IBDFGIFN,10,IEN,0)) S:$D(^SC(IBCLN,0)) ^TMP("IBDF",$J,"C",IBDFGNM,$P(^SC(IBCLN,0),"^",1))=IBCLN
 .S IEN=0 F  S IEN=$O(^IBD(357.99,IBDFGIFN,11,IEN)) Q:'IEN  S IBDIV=+$G(^IBD(357.99,IBDFGIFN,11,IEN,0)) S:IBDIV ^TMP("IBDF",$J,"D",IBDFGNM,IBDIV)=""
 D:$D(^TMP("IBDF",$J,"D")) ENDV^IBDFUTL2
 S IBDFGNM=0 F IBDFGN=0:0 S IBDFGNM=$O(^TMP("IBDF",$J,"C",IBDFGNM)) Q:IBDFGNM']""  S IBDFCLNM=0 F IBDFCLN=0:0 S IBDFCLNM=$O(^TMP("IBDF",$J,"C",IBDFGNM,IBDFCLNM)) Q:IBDFCLNM']""  D
 .S IBDFCLIN=$G(^TMP("IBDF",$J,"C",IBDFGNM,IBDFCLNM)),IBDFCIFN=$O(^SD(409.95,"B",IBDFCLIN,0)) S IBDCNODE=$G(^SD(409.95,+IBDFCIFN,0)) I $D(IBDCNODE) S IBDFNAME=IBDFGNM F IBDFN=2:1:9 S IBDFORM=$P(IBDCNODE,"^",IBDFN) I IBDFORM D SET
 D SET1 Q
