IBDEI01B	; ; 18-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(358.5)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,358.5,309,2,2,0)
	;;=POLICY #^^I^^^9^30^19^3
	;;^UTILITY(U,$J,358.5,310,0)
	;;=INSURANCE 4^82^13^1^4
	;;^UTILITY(U,$J,358.5,310,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,310,2,1,0)
	;;=COMPANY^^I^^^10^1^28^1
	;;^UTILITY(U,$J,358.5,310,2,2,0)
	;;=POLICY #^^I^^^10^30^19^3
	;;^UTILITY(U,$J,358.5,311,0)
	;;=MARITAL STATUS^82^17
	;;^UTILITY(U,$J,358.5,311,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,311,2,1,0)
	;;=Marital Status:^^^1^11^11^17^15^1
	;;^UTILITY(U,$J,358.5,312,0)
	;;=EMPLOYER^82^18
	;;^UTILITY(U,$J,358.5,312,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,312,2,1,0)
	;;=Employer:^^U^1^12^13^4^45^1
	;;^UTILITY(U,$J,358.5,313,0)
	;;=EMPLOYMENT STATUS^82^19
	;;^UTILITY(U,$J,358.5,313,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,313,2,1,0)
	;;=Status:^^^20^12^12^28^20^1
	;;^UTILITY(U,$J,358.5,314,0)
	;;=SPOUSE'S EMPLOYER^82^20
	;;^UTILITY(U,$J,358.5,314,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,314,2,1,0)
	;;=Spouse's Employer:^^U^1^14^15^4^45^1
	;;^UTILITY(U,$J,358.5,315,0)
	;;=VITALS^83^3
	;;^UTILITY(U,$J,358.5,315,2,0)
	;;=^357.52I^6^5
	;;^UTILITY(U,$J,358.5,315,2,1,0)
	;;=WT:^^^15^1^1^19^14^1
	;;^UTILITY(U,$J,358.5,315,2,2,0)
	;;=BP:^^^37^1^1^41^14^1
	;;^UTILITY(U,$J,358.5,315,2,3,0)
	;;=T:^^^59^1^1^62^14^1
	;;^UTILITY(U,$J,358.5,315,2,4,0)
	;;=P:^^^15^3^3^19^14^1
	;;^UTILITY(U,$J,358.5,315,2,6,0)
	;;=INITIALS/TIME:^^^38^3^3^54^20^1
	;;^UTILITY(U,$J,358.5,316,0)
	;;=PATIENT NAME^84^6
	;;^UTILITY(U,$J,358.5,316,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,316,2,1,0)
	;;=Patient Name:^^^1^1^1^15^30^1
	;;^UTILITY(U,$J,358.5,317,0)
	;;=PATIENT DOB^84^22
	;;^UTILITY(U,$J,358.5,317,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,317,2,1,0)
	;;=DOB:^^^1^2^2^6^12^1
	;;^UTILITY(U,$J,358.5,318,0)
	;;=PID^84^7
	;;^UTILITY(U,$J,358.5,318,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,318,2,1,0)
	;;=PID:^^^19^2^2^24^15^1
	;;^UTILITY(U,$J,358.5,319,0)
	;;=SC CONDITION 1^84^11^^1
	;;^UTILITY(U,$J,358.5,319,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,319,2,1,0)
	;;=SC Conditions:^^U^1^4^5^1^40^1
	;;^UTILITY(U,$J,358.5,319,2,2,0)
	;;=%^^I^^^5^42^4^3
	;;^UTILITY(U,$J,358.5,320,0)
	;;=SC CONDITION 2^84^11^^2
	;;^UTILITY(U,$J,358.5,320,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,320,2,1,0)
	;;=CONDITION^^I^^^6^1^40^1
	;;^UTILITY(U,$J,358.5,320,2,2,0)
	;;=%^^I^^^6^42^4^3
	;;^UTILITY(U,$J,358.5,321,0)
	;;=SC CONDITION 3^84^11^^3
	;;^UTILITY(U,$J,358.5,321,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,321,2,1,0)
	;;=CONDITION^^I^^^7^1^40^1
	;;^UTILITY(U,$J,358.5,321,2,2,0)
	;;=%^^I^^^7^42^4^3
	;;^UTILITY(U,$J,358.5,322,0)
	;;=SC CONDITION 4^84^11^1^4
	;;^UTILITY(U,$J,358.5,322,2,0)
	;;=^357.52I^2^2
	;;^UTILITY(U,$J,358.5,322,2,1,0)
	;;=CONDITION^^I^^^8^1^40^1
	;;^UTILITY(U,$J,358.5,322,2,2,0)
	;;=%^^I^^^8^42^4^3
	;;^UTILITY(U,$J,358.5,323,0)
	;;=SEX^84^23
	;;^UTILITY(U,$J,358.5,323,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,323,2,1,0)
	;;=Sex:^^^40^2^2^45^1^2
	;;^UTILITY(U,$J,358.5,324,0)
	;;=ELIGIBILITY^84^8
	;;^UTILITY(U,$J,358.5,324,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,324,2,1,0)
	;;=Eligibility:^^^1^3^3^14^30^1
	;;^UTILITY(U,$J,358.5,325,0)
	;;=MEANS TEST CATEGORY^84^24
	;;^UTILITY(U,$J,358.5,325,2,0)
	;;=^357.52I^1^1
	;;^UTILITY(U,$J,358.5,325,2,1,0)
	;;=Means Test Cat:^^^29^4^4^45^1^3
	;;^UTILITY(U,$J,358.5,326,0)
	;;=SERVICE HISTORY DATA^84^25
	;;^UTILITY(U,$J,358.5,326,2,0)
	;;=^357.52I^4^4
	;;^UTILITY(U,$J,358.5,326,2,1,0)
	;;=AO:^^^1^9^9^5^3^2
	;;^UTILITY(U,$J,358.5,326,2,2,0)
	;;=IR:^^^9^9^9^13^3^3
	;;^UTILITY(U,$J,358.5,326,2,3,0)
	;;=POW:^^^17^9^9^22^3^4
	;;^UTILITY(U,$J,358.5,326,2,4,0)
	;;=EC:^^^26^9^9^30^3^6
