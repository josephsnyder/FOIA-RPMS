APC4I002 ; ; 17-JUN-2002
 ;;2.0;IHS RPMS/PCC Data Entry;**4**;MAR 09, 1999
 F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,999) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,"DIE",1785,"DR",2,9000010)
 ;;=S APCDSWD=9000010.07,APCDSWV=DA D ^APCDSW S:APCDLOOK APCDLOOK="`"_APCDLOOK;
 ;;^UTILITY(U,$J,"DIE",1785,"DR",2,9000010,1)
 ;;=^9000010.07^AUPNVPOV(^^X DR(99,2,9.2) S Y(201)=$S($D(^AUPNVPOV(D0,0)):^(0),1:"") S X=$S('$D(^ICD9(+$P(Y(201),U,1),0)):"",1:$P(^(0),U,1)) S D0=I(100,0) S X=$S(D(0)>0:D(0),1:"");
 ;;^UTILITY(U,$J,"DIE",1785,"DR",3,9000010.07)
 ;;=.18Enter 2nd E-CODE~;
 ;;^UTILITY(U,$J,"DIE",1785,"DR",99,1,9.2)
 ;;=X $P(^DD(9000001,9999,0),U,5,99) S Y(1)=X S I(0,0)=$S($D(D0):D0,1:"") S X=Y(1) K DIC S DIC="^AUPNVSIT(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",1785,"DR",99,2,9.2)
 ;;=X $P(^DD(9000010,9999,0),U,5,99) S Y(101)=X S I(100,0)=$S($D(D0):D0,1:"") S X=Y(101) K DIC S DIC="^AUPNVPOV(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",1786,0)
 ;;=APCD ECO3 (ECO3)^3010109.0953^@^9000010^3^@^3010109
 ;;^UTILITY(U,$J,"DIE",1786,"DIAB",1,0,9000010,1)
 ;;=LOOKUP:V POV:
 ;;^UTILITY(U,$J,"DIE",1786,"DIAB",1,1,9000010.07,0)
 ;;=.19;"Enter 3rd E-CODE"
 ;;^UTILITY(U,$J,"DIE",1786,"DR",1,9000010)
 ;;=S APCDSWD=9000010.07,APCDSWV=APCDVSIT D ^APCDSW S:APCDLOOK APCDLOOK="`"_APCDLOOK;
 ;;^UTILITY(U,$J,"DIE",1786,"DR",1,9000010,1)
 ;;=^9000010.07^AUPNVPOV(^^X DR(99,1,9.2) S Y(101)=$S($D(^AUPNVPOV(D0,0)):^(0),1:"") S X=$S('$D(^ICD9(+$P(Y(101),U,1),0)):"",1:$P(^(0),U,1)) S D0=I(0,0) S X=$S(D(0)>0:D(0),1:"");K APCDLOOK,APCDSWV,APCDSWD;
 ;;^UTILITY(U,$J,"DIE",1786,"DR",2,9000010.07)
 ;;=.19Enter 3rd E-CODE~;
 ;;^UTILITY(U,$J,"DIE",1786,"DR",99,1,9.2)
 ;;=X $P(^DD(9000010,9999,0),U,5,99) S Y(1)=X S I(0,0)=$S($D(D0):D0,1:"") S X=Y(1) K DIC S DIC="^AUPNVPOV(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",1787,0)
 ;;=APCD ECO3 (ECO3)^3010109.0954^@^9000001^3^@^3010109
 ;;^UTILITY(U,$J,"DIE",1787,"DIAB",1,1,9000010,1)
 ;;=LOOKUP:V POV:
 ;;^UTILITY(U,$J,"DIE",1787,"DIAB",1,2,9000010.07,0)
 ;;=.19;"Enter 3rd E-CODE"
 ;;^UTILITY(U,$J,"DIE",1787,"DIAB",2,0,9000001,0)
 ;;=LOOKUP:VISIT:
 ;;^UTILITY(U,$J,"DIE",1787,"DR",1,9000001)
 ;;=S APCDPAT=DA D ^APCDVLK S:APCDLOOK APCDLOOK="`"_APCDLOOK;^9000010^AUPNVSIT(^^X DR(99,1,9.2) S Y(101)=$S($D(^AUPNVSIT(D0,0)):^(0),1:"") S X=$P(Y(101),U,1) S D0=I(0,0) S X=$S(D(0)>0:D(0),1:"");
 ;;^UTILITY(U,$J,"DIE",1787,"DR",2,9000010)
 ;;=S APCDSWD=9000010.07,APCDSWV=DA D ^APCDSW S:APCDLOOK APCDLOOK="`"_APCDLOOK;
 ;;^UTILITY(U,$J,"DIE",1787,"DR",2,9000010,1)
 ;;=^9000010.07^AUPNVPOV(^^X DR(99,2,9.2) S Y(201)=$S($D(^AUPNVPOV(D0,0)):^(0),1:"") S X=$S('$D(^ICD9(+$P(Y(201),U,1),0)):"",1:$P(^(0),U,1)) S D0=I(100,0) S X=$S(D(0)>0:D(0),1:"");
 ;;^UTILITY(U,$J,"DIE",1787,"DR",3,9000010.07)
 ;;=.19Enter 3rd E-CODE~;
 ;;^UTILITY(U,$J,"DIE",1787,"DR",99,1,9.2)
 ;;=X $P(^DD(9000001,9999,0),U,5,99) S Y(1)=X S I(0,0)=$S($D(D0):D0,1:"") S X=Y(1) K DIC S DIC="^AUPNVSIT(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"DIE",1787,"DR",99,2,9.2)
 ;;=X $P(^DD(9000010,9999,0),U,5,99) S Y(101)=X S I(100,0)=$S($D(D0):D0,1:"") S X=Y(101) K DIC S DIC="^AUPNVPOV(",DIC(0)="NMF" D ^DIC S (D,D0,D(0))=+Y
 ;;^UTILITY(U,$J,"PKG",326,0)
 ;;=APC4 - PCC DATA ENTRY V2.0 P4^APC4^APC4 - DATA ENTRY PATCH 4
 ;;^UTILITY(U,$J,"PKG",326,22,0)
 ;;=^9.49I^1^1
 ;;^UTILITY(U,$J,"PKG",326,22,1,0)
 ;;=1.0^3020617^3010327
 ;;^UTILITY(U,$J,"PKG",326,22,"B","1.0",1)
 ;;=
 ;;^UTILITY(U,$J,"PKG",326,"DIE",0)
 ;;=^9.47^8^8
 ;;^UTILITY(U,$J,"PKG",326,"DIE",1,0)
 ;;=APCD ECO2 (ECO2)^9000010
 ;;^UTILITY(U,$J,"PKG",326,"DIE",2,0)
 ;;=APCD ECO2 (ECO2)^9000001
 ;;^UTILITY(U,$J,"PKG",326,"DIE",3,0)
 ;;=APCD ECO3 (ECO3)^9000010
 ;;^UTILITY(U,$J,"PKG",326,"DIE",4,0)
 ;;=APCD ECO3 (ECO3)^9000001
 ;;^UTILITY(U,$J,"PKG",326,"DIE",5,0)
 ;;=APCD ECOD (ECOD)^9000010
 ;;^UTILITY(U,$J,"PKG",326,"DIE",6,0)
 ;;=APCD ECOD (ECOD)^9000001
 ;;^UTILITY(U,$J,"PKG",326,"DIE",7,0)
 ;;=APCD CC (CC)^9000010
 ;;^UTILITY(U,$J,"PKG",326,"DIE",8,0)
 ;;=APCD CC (CC)^9000001