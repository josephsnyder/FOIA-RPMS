BWMDE1 ;IHS/ANMC/MWR - COMPILED MDE EXPORT ROUTINE.;10-Apr-2003 13:10;PLS
 ;;2.0;WOMEN'S HEALTH;**5,7,8**;MAY 16, 1996
 ;;* MICHAEL REMILLARD, DDS * ALASKA NATIVE MEDICAL CENTER *
 ;;  CDC EXPORT, BUILDS ASCII FIXED LENGTH RECORDS FOR EXPORT.
 ;
 ;IHS/CMI/THL - new cdc format patch 5
 ;IHS/CMI/THL - removed historic reference to old format  - patch 7
 ;IHS/CMI/THL - use new routine BWMDE21 where appropriate - patch 7
 ;
BUILD(BWIEN,BWCDCV) ; EP
 ; Call with BWIEN = ien of entry in file
 ;          BWCDCV = CDC MDE version number (4.1, 5.0)
 ;
 N BWBSU,BWCBE,BWCDC,BWQUIT,BWRACE,BWX,I,J,X
 F I=0,.3,2 S BWIEN(I)=$G(^BWPCD(BWIEN,I))
 ;
 D MCARE^BWMDET1 ;IHS/CIM/THL PATCH 8
 I $D(BWQUIT) Q
 ;
 D ^BWUTL5,PCDVARS^BWUTL3(BWIEN,0,1)
 I 'BWMAM,'BWPAP Q
 ;
 ; Bethesda System Used
 S BWBSU=$$BSU^BWMDEU($P(BWIEN(0),"^",12),DUZ(2))
 ;
 S $E(BWCDC,1)=$$STSCR^BWMDE2(+DUZ(2))
 S $E(BWCDC,3)=$$CNTYSCR^BWMDE2(+DUZ(2))
 S $E(BWCDC,6)=$E($P($G(^AUTTLOC(DUZ(2),0)),U,13),1,15)
 S BWX=$P(BWIEN(0),U,10)
 I BWX'="" D
 . S BWX=$$RJ^XLFSTR(BWX,5,"0")
 . S $E(BWCDC,21)=BWX
 . I BWPAP S $E(BWCDC,26)=BWX
 . I BWMAM S $E(BWCDC,31)=BWX
 S $E(BWCDC,40)=$$PATID^BWMDE2
 S $E(BWCDC,55)=$$RECID^BWMDE2
 S $E(BWCDC,61)=2
 S $E(BWCDC,65)=$$STRES^BWMDE2
 S $E(BWCDC,67)=$$ZIP^BWMDE2
 S $E(BWCDC,72)=$$DOB^BWMDE2
 ;
 ; Code race and Hispanic/Latino origin based on MDE version
 ; If MDE v4.1 then return single race in position 80
 ; If MDE v5.0 then return up to 6 races in positions 82-87
 ; Hispanic origin returned in position 81
 D RACE^BWMDEU(BWDFN,BWCDCV,.BWRACE)
 I BWCDCV=41 D
 . S I=$O(BWRACE(0)) Q:'I
 . S $E(BWCDC,80)=BWRACE(I)
 S $E(BWCDC,81)=$$HISP^BWMDEU(BWDFN)
 I BWCDCV=50 D
 . S (I,J)=0
 . F  S I=$O(BWRACE(I)) Q:'I  S J=J+1,$E(BWCDC,J+81)=BWRACE(I) Q:J>6
 ;
 ; IHS/CIM/THL PATCH 8
 I DUZ(2)=1665,BWPAP,$P(BWIEN(0),"^",12)>2990930 D  Q:$D(BWQUIT)
 . K BWQUIT
 . I BWCDCV=41 S:$E(BWCDC,80)'=4 BWQUIT="" Q
 . I BWCDCV=50,$E(BWCDC,82,87)'["5" S BWQUIT=""
 ;
 S $E(BWCDC,88)=$$BRSYMP^BWMDE2
 S BWCBE=$$CBE^BWMDE2
 S $E(BWCDC,89)=BWCBE
 S $E(BWCDC,90)=$S(BWCBE&(BWCBE<3):$$CBEDT^BWMDE2,1:"")
 S $E(BWCDC,98)=$S(BWCBE&(BWCBE<3):1,1:"")
 S $E(BWCDC,99)=$$PPREV^BWMDE2
 ;
 I BWPAP D
 . N BWPDT,BWPPAY,BWPRESLT,BWPRTEXT,BWPWKUP,BWSAPT
 . S BWPRESLT=$$PRESLT^BWMDEU(BWIEN,BWBSU)
 . S BWPRTEXT=$$POTHR^BWMDEU(BWIEN,BWBSU,BWPRESLT)
 . S BWPDT=$$PSCRDT^BWMDEU($P(BWIEN(0),"^",12),BWBSU,BWPRESLT)
 . S BWPPAY=$$PPAY^BWMDEU(BWBSU,BWPRESLT)
 . S BWPWKUP=$$PWKUP^BWMDEU(BWIEN,BWBSU,BWPRESLT)
 . S BWSAPT=$$SAPT^BWMDEU(BWIEN,BWBSU,BWCDCV)
 . S $E(BWCDC,100,105)=$$PPREVDT^BWMDE2
 . I BWCDCV=50 D  Q
 . . S $E(BWCDC,106)=BWBSU
 . . S $E(BWCDC,107)=BWSAPT
 . . I BWBSU=1 S $E(BWCDC,108,109)=BWPRESLT
 . . S $E(BWCDC,110)=$P(BWIEN(.3),"^",2)
 . . I BWBSU=2 S $E(BWCDC,111,112)=BWPRESLT
 . . S $E(BWCDC,113,132)=BWPRTEXT
 . . S $E(BWCDC,133)=BWPWKUP
 . . S $E(BWCDC,134,141)=BWPDT
 . . S $E(BWCDC,142)=BWPPAY
 . . S $E(BWCDC,143)=3
 . . S $E(BWCDC,150,151)="08"
 . . S $E(BWCDC,152)=2
 . I BWCDCV=41 D
 . . S $E(BWCDC,106)=BWSAPT
 . . S $E(BWCDC,107,108)=BWPRESLT
 . . S $E(BWCDC,109,128)=BWPRTEXT
 . . S $E(BWCDC,129)=BWPWKUP
 . . S $E(BWCDC,130,137)=BWPDT
 . . S $E(BWCDC,138)=BWPPAY
 . . S $E(BWCDC,139)=3
 . . S $E(BWCDC,146,147)="08"
 . . S $E(BWCDC,148)=2
 ;
 I BWMAM D
 . N BWMDT,BWMRESLT,BWMWKUP,BWPAID,BWPMAMDT
 . S BWPMAMDT=$$MPREVDT^BWMDEU(BWIEN)
 . S BWMRESLT=$$MRESLT^BWMDEU2
 . S BWMWKUP=$$MWKUP^BWMDEU2
 . S BWMDT=$$MSCRDT^BWMDEU($P(BWIEN(0),"^",12),BWMRESLT)
 . S BWPAID=$$PAID^BWMDEU(BWDFN,$P(BWIEN(0),U,3),BWMDT,BWMRESLT,+DUZ(2))
 . I BWCDCV=50 D  Q
 . . S $E(BWCDC,106)=BWBSU
 . . I BWBSU=1 S $E(BWCDC,108,109)="09"
 . . I BWBSU=2 S $E(BWCDC,111,112)="09"
 . . S $E(BWCDC,133)=2
 . . S $E(BWCDC,143)=$S(BWPMAMDT<1:3,1:1)
 . . I $E(BWCDC,143)=1 S $E(BWCDC,144,149)=BWPMAMDT
 . . S $E(BWCDC,150,151)=BWMRESLT
 . . S $E(BWCDC,152)=BWMWKUP
 . . S $E(BWCDC,153,160)=BWMDT
 . . S $E(BWCDC,161)=BWPAID
 . I BWCDCV=41 D
 . . S $E(BWCDC,107)="09"
 . . S $E(BWCDC,129)=2
 . . S $E(BWCDC,139)=$S(BWPMAMDT<1:3,1:1)
 . . I $E(BWCDC,139)=1 S $E(BWCDC,140,145)=BWPMAMDT
 . . S $E(BWCDC,146,147)=BWMRESLT
 . . S $E(BWCDC,148)=BWMWKUP
 . . S $E(BWCDC,149,156)=BWMDT
 . . S $E(BWCDC,157)=BWPAID
 ;
 ; Abnormal Pap smear/Diagnostic workup section
 I BWPAP D
 . I BWCDCV=50,$E(BWCDC,133)='1 Q
 . I BWCDCV=41,$E(BWCDC,129)'=1 Q
 . N BWCDBX,BWCDXPAY,BWCWOBX,BWPABN,BWPFDXDT,BWPFNDX,BWPSTFDX,BWPSTGDX,BWPSTTX,BWPSTXDT
 . S BWPABN=$$PABN^BWMDEU(BWBSU,$S(BWBSU=50:$E(BWCDC,111,112),BWBSU=41:$E(BWCDC,108,109),1:""))
 . S BWCWOBX=$$CONOBX^BWMDEU2
 . S BWCDBX=$$COLPBX^BWMDEU2
 . S BWCDXPAY=$$CDXPAID^BWMDEU2
 . S BWPFNDX=$$PFNDX^BWMDEU2
 . S BWPSTGDX=$$PSTGDX^BWMDEU2(BWPFNDX,BWC0)
 . S BWPSTGDX(1)=$$PFNDXO^BWMDEU2
 . S BWPSTFDX=$P(BWIEN(2),"^",22)
 . S BWPFDXDT=$$CDCDT^BWMDEU2($P(BWIEN(2),"^",23))
 . S BWPSTTX=$P(BWIEN(2),"^",24)
 . S BWPSTXDT=$$CDCDT^BWMDEU2($P(BWIEN(2),"^",25))
 . I BWCDCV=50,$E(BWCDC,133)=1 D  Q
 . . S $E(BWCDC,169)=BWCWOBX
 . . S $E(BWCDC,170)=BWCDBX
 . . S $E(BWCDC,171)=$S($P(BWIEN(2),"^",21)="":2,1:1)
 . . S $E(BWCDC,172,191)=$E($P(BWIEN(2),"^",21),1,20)
 . . S $E(BWCDC,192,210)=""
 . . S $E(BWCDC,211)=BWCDXPAY
 . . S $E(BWCDC,212)=BWPFNDX
 . . S $E(BWCDC,213)=BWPSTGDX
 . . S $E(BWCDC,214,233)=BWPSTGDX(1)
 . . S $E(BWCDC,234)=BWPSTFDX
 . . S $E(BWCDC,235,242)=BWPFDXDT
 . . S $E(BWCDC,243)=BWPSTTX
 . . S $E(BWCDC,244,251)=BWPSTXDT
 . I BWCDCV=41,$E(BWCDC,129)=1 D
 . . S $E(BWCDC,160)=BWCWOBX
 . . S $E(BWCDC,161)=BWCDBX
 . . S $E(BWCDC,162)=$S($P(BWIEN(2),"^",21)="":2,1:1)
 . . S $E(BWCDC,163)=$E($P(BWIEN(2),"^",21),1,20)
 . . S $E(BWCDC,183)=""
 . . S $E(BWCDC,202)=BWCDXPAY
 . . S $E(BWCDC,203)=BWPFNDX
 . . S $E(BWCDC,204)=BWPSTGDX
 . . S $E(BWCDC,205)=BWPSTGDX(1)
 . . S $E(BWCDC,225)=BWPSTFDX
 . . S $E(BWCDC,226)=BWPFDXDT
 . . S $E(BWCDC,234)=BWPSTTX
 . . S $E(BWCDC,235)=BWPSTXDT
 ;
 ; Abnormal Initial Mammogram or CLinical Breast Exam/Diagnostic workup section
 I BWMAM D
 . I BWCDCV=50,$E(BWCDC,152)'=1 Q
 . I BWCDCV=41,$E(BWCDC,148)'=1 Q
 . N BWBDXPAY,BWMFDXDT,BWMFINDL,BWMFNDX,BWMFUDXV,BWMLUMP,BWMRBREX,BWMSTFDX,BWMSTGDX,BWMULTRA,BWSRGDX,BWMSTTX,BWMSTXDT,BWMTMRSZ
 . S BWMFUDXV=$P(BWIEN(2),"^",34)
 . S BWMRBREX=$P(BWIEN(2),"^",26)
 . S BWMULTRA=$P(BWIEN(2),"^",27)
 . S BWMLUMP=$P(BWIEN(2),"^",28)
 . S BWMFINDL=$P(BWIEN(2),"^",29)
 . S BWBDXPAY=$$BDXPAID^BWMDEU2
 . S BWMFNDX=$P(BWIEN(2),"^",30)
 . S BWMSTGDX=$P(BWIEN(0),"^",31)
 . S BWMTMRSZ=$P(BWIEN(2),"^",31)
 . S BWMSTFDX=$P(BWIEN(2),"^",22)
 . S BWMFDXDT=$$CDCDT^BWMDEU2($P(BWIEN(2),"^",23))
 . S BWMSTTX=$P(BWIEN(2),"^",24)
 . S BWMSTXDT=$$CDCDT^BWMDEU2($P(BWIEN(2),"^",25))
 . I BWCDCV=50,$E(BWCDC,152)=1 D  Q
 . . S $E(BWCDC,257)=BWMFUDXV
 . . S $E(BWCDC,258)=BWMRBREX
 . . S $E(BWCDC,259)=BWMULTRA
 . . S $E(BWCDC,260)=BWMLUMP
 . . S $E(BWCDC,261)=BWMFINDL
 . . S $E(BWCDC,262)=$S($P(BWIEN(2),"^",21)="":2,1:1)
 . . S $E(BWCDC,263,282)=$E($P(BWIEN(2),"^",21),1,20)
 . . S $E(BWCDC,282,301)=""
 . . S $E(BWCDC,302)=BWBDXPAY
 . . S $E(BWCDC,303)=BWMFNDX
 . . S $E(BWCDC,304)=BWMSTGDX
 . . S $E(BWCDC,305)=BWMTMRSZ
 . . S $E(BWCDC,306)=BWMSTFDX
 . . S $E(BWCDC,307,314)=BWMFDXDT
 . . S $E(BWCDC,315)=BWMSTTX
 . . S $E(BWCDC,316,323)=BWMSTXDT
 . I BWCDCV=41,$E(BWCDC,148)=1 D
 . . S $E(BWCDC,243)=BWMFUDXV
 . . S $E(BWCDC,244)=BWMRBREX
 . . S $E(BWCDC,245)=BWMULTRA
 . . S $E(BWCDC,246)=BWMLUMP
 . . S $E(BWCDC,247)=BWMFINDL
 . . S $E(BWCDC,248)=$S($P(BWIEN(2),"^",21)="":2,1:1)
 . . S $E(BWCDC,249,268)=$E($P(BWIEN(2),"^",21),1,20)
 . . S $E(BWCDC,269,287)=""
 . . S $E(BWCDC,288)=BWBDXPAY
 . . S $E(BWCDC,289)=BWMFNDX
 . . S $E(BWCDC,290)=BWMSTGDX
 . . S $E(BWCDC,291)=BWMTMRSZ
 . . S $E(BWCDC,292)=BWMSTFDX
 . . S $E(BWCDC,293)=BWMFDXDT
 . . S $E(BWCDC,301)=BWMSTTX
 . . S $E(BWCDC,302)=BWMSTXDT
 ;
 I BWCDCV=41 D
 . S $E(BWCDC,158,159)=BWCDCV
 . S $E(BWCDC,310,311)=$$EOR^BWMDE21
 I BWCDCV=50 D
 . S $E(BWCDC,162,163)=BWCDCV
 . S $E(BWCDC,329,330)=$$EOR^BWMDE21
 S ^BWTMP($J,BWDFN,BWIEN)=BWCDC
 ;
 I '$D(BWSILENT),'$D(ZTQUEUED) U IO(0) W "."
 Q
