IBINI06G	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(356.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,356.3)
	;;=^IBE(356.3,
	;;^UTILITY(U,$J,356.3,0)
	;;=CLAIMS TRACKING SI/IS CATEGORIES^356.3I^23^21
	;;^UTILITY(U,$J,356.3,1,0)
	;;=GENERIC^2^01
	;;^UTILITY(U,$J,356.3,2,0)
	;;=CARDIOVASCULAR^2^03
	;;^UTILITY(U,$J,356.3,3,0)
	;;=CENTRAL NERVOUS SYSTEM/HEAD^2^04
	;;^UTILITY(U,$J,356.3,4,0)
	;;=ENDOCRINE/METABOLIC^2^05
	;;^UTILITY(U,$J,356.3,5,0)
	;;=EYE, EAR, NOSE, AND THROAT^2^06
	;;^UTILITY(U,$J,356.3,6,0)
	;;=FEMALE REPRODUCTIVE^2^07
	;;^UTILITY(U,$J,356.3,7,0)
	;;=GASTROINTESTINAL TRACT AND ABDOMEN^2^08
	;;^UTILITY(U,$J,356.3,10,0)
	;;=MUSCULOSKELETAL/SPINE^2^09
	;;^UTILITY(U,$J,356.3,11,0)
	;;=PERIPHERAL VASCULAR^2^10
	;;^UTILITY(U,$J,356.3,12,0)
	;;=PSYCHIATRIC^2^11
	;;^UTILITY(U,$J,356.3,13,0)
	;;=RESPIRATORY/CHEST^2^12
	;;^UTILITY(U,$J,356.3,14,0)
	;;=SKIN/CONNECTIVE TISSUE^2^13
	;;^UTILITY(U,$J,356.3,15,0)
	;;=SUBSTANCE ABUSE (MEDICAL DETOXIFICATION)^2^14
	;;^UTILITY(U,$J,356.3,16,0)
	;;=URINARY TRACT^2^15
	;;^UTILITY(U,$J,356.3,17,0)
	;;=CORONARY CARE^1^30
	;;^UTILITY(U,$J,356.3,18,0)
	;;=INTENSIVE CARE (MED AND SURG)^1^31
	;;^UTILITY(U,$J,356.3,19,0)
	;;=OBSERVATION^1^32
	;;^UTILITY(U,$J,356.3,20,0)
	;;=REHABILITATION^1^33
	;;^UTILITY(U,$J,356.3,21,0)
	;;=SUBSTANCE ABUSE^1^34
	;;^UTILITY(U,$J,356.3,22,0)
	;;=TELEMETRY^1^35
	;;^UTILITY(U,$J,356.3,23,0)
	;;=BLOOD AND LYMPHATICS^2^02