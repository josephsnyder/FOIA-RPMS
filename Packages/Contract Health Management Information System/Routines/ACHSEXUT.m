ACHSEXUT ; IHS/ITSC/PMF - GENERIC PRE EXPORT (SPLIT-OUT) PROCESSING PROGRAM ;   [ 12/06/2002  10:36 AM ]
 ;;3.1;CONTRACT HEALTH MGMT SYSTEM;**5,22**;JUN 11, 2001;Build 37
 ;IHS/SET/GTH ACHS*3.1*5 12/06/2002 - Clarify error message. Remove ref to non-package global.
 ;ACHS*3.1*22 OS test when writing to the directory
 ;
FILESEL ;EP
 ;
 I $D(DTOUT) S ACHSOUT=1 Q
 D PARMCHK^ACHSTUT2
 I $D(ACHSJFLG) Q
A9 ;S X="EXPORT PROCESSING OF "_ACHSTXNM_" DATA TO "_ACHSCCTR
 ;W !,?80-$L(X)/2,X,!
 ;F ACHSI=1:1:79 W "*"
 S ACHSXXX=""
 S:$D(ACHSHBCL) ACHSXXX=ACHSHBCL
 S ACHSXX="ibm"
 S:$L(ACHSHDNM>1) ACHSXX=ACHSHDNM_ACHSXXX
 S ACHSZFN=ACHSUXFP_ACHSXX,ACHSZOPT=1,ACHSFNLN=$L(ACHSZFN)
 K ACHSJFLG
 D ARCHLIST^ACHSARCH
 Q:$D(DUOUT)!$D(DTOUT)
 I $D(ACHSJFLG) Q
 S ACHSDTJL=$E(DT,2,3)_$$JDT^ACHS(DT,1)
 I '$D(ACHSFILE("N",ACHSDTJL)) S X=$C(97) G NAMEGEN
FILEDSP ;
 W @IOF
A10 ;
 W !!,"The following data has been processed TODAY: ",!
A20 ;
 S (ACHSR,ACHSRR,ACHSSEQ)=0
 W !,"SEQ #  ","# RCDS    EXPORT - DATE  FILE NAME - SFX  OK-TX?  COLOR",!!
FILEDSPA ;
 S ACHSR=$O(ACHSFILE("N",ACHSDTJL,ACHSR))
 G DSPEND:ACHSR=""
FILEDSPB ;
 S ACHSRR=$O(ACHSFILE("N",ACHSDTJL,ACHSR,ACHSRR))
 G FILEDSPA:ACHSRR=""
 S ACHSFNAM=$P(ACHSFILE(ACHSRR),U,2),ACHSXPT=0,ACHSXPT=$O(^AFSTXLOG(DUZ(2),1,"B",ACHSFNAM,ACHSXPT))
 ;I +ACHSXPT<1 S ACHSEMSG="ERROR IN TX/EXPORT DATA STRUCTURE  -- NOTIFY SUPERVISOR  ",ACHSJFLG=1 G JCANCEL;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 I +ACHSXPT<1 W !,"No entries for '",ACHSFNAM,"' for ",$$LOC^ACHS," in IHS DATA TRANSMISSION LOG file" G FILEDSPB ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 S ACHSZ=ACHSFILE(ACHSRR),ACHSTXST="N",$P(ACHSFILE(ACHSRR),U,3)="N"
 ;S:+ACHSXPT>0 ACHSTXST=$P(^AFSTXLOG(DUZ(2),1,ACHSXPT,0),U,4),$P(ACHSFILE(ACHSRR),U,3)=ACHSTXST;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 S:+ACHSXPT>0 ACHSTXST=$$GET1^DIQ(9002320.52,ACHSXPT_","_DUZ(2)_",",3,"I"),$P(ACHSFILE(ACHSRR),U,3)=ACHSTXST ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 ;S ACHSHCLR=$P(^AFSTXLOG(DUZ(2),1,ACHSXPT,0),U,5);IHS/SET/GTH ACHS*3.1*5 12/06/2002
 ;S ACHSHCLR=$S(ACHSHCLR="R":"RED",ACHSHCLR="B":"BLUE",1:"");IHS/SET/GTH ACHS*3.1*5 12/06/2002
 S ACHSHCLR=$$GET1^DIQ(9002320.52,ACHSXPT_","_DUZ(2)_",",3.11) ;IHS/SET/GTH ACHS*3.1*5 12/06/2002
 S X=$P($P(ACHSFILE(ACHSRR),".",2),U,1)
 S Y=$$GDT^ACHS(X)
 S X=$P(ACHSFILE(ACHSRR),U,1),Z=X/81,X=$J(Z,0,0)
 S ACHSSEQ=ACHSSEQ+1
 W $J(ACHSSEQ,3),?6,$J(X,6),?17,Y
 S Z=$P(ACHSFILE(ACHSRR),U,2),ACHSZZ1=$P($P(ACHSZ,U,2),".",1),X=$P(Z,".",1)
 W ?33,$E(X,1,ACHSFNLN),?45,$E(X,ACHSFNLN+1,ACHSFNLN+1),?51,ACHSTXST,?57,ACHSHCLR,!
 G FILEDSPB
 ;
DSPEND ;
 S Y=$$DIR^XBDIR("Y","Do you want to Continue","Y")
 I Y=0 S %="M9",ACHSEMSG=$P($T(@%^ACHSTCK1),";;",2),ACHSJFLG=1 G JCANCEL
 S X=$E(ACHSZZ1,$L(ACHSZZ1),$L(ACHSZZ1)),Y=$A(X),X=$C(Y+1)
NAMEGEN ;
 ;S ACHSEXFN=ACHSZDIR_"/"_ACHSUXFP_ACHSXX_X_"."_ACHSDTJL,ACHSEXFS=ACHSUXFP_ACHSXX_X_"."_ACHSDTJL  ;ACHS*3.1*22
 S ACHSEXFN=ACHSZDIR_$S($$OS^ACHS=2:"\",1:"/")_ACHSUXFP_ACHSXX_X_"."_ACHSDTJL   ;ACHS*3.1*22 IHS.OIT.FCJ
 S ACHSEXFS=ACHSUXFP_ACHSXX_X_"."_ACHSDTJL   ;ACHS*3.1*22
 Q
 ;
JCANCEL ;
 U IO(0)
 W *7,!!,ACHSEMSG,!
 I $$DIR^XBDIR("E","Press RETURN...")
 S ACHSJFLG=1
 Q
 ;
