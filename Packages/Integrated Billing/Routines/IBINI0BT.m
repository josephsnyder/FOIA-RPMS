IBINI0BT	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(399.3)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,399.3)
	;;=^DGCR(399.3,
	;;^UTILITY(U,$J,399.3,0)
	;;=RATE TYPE^399.3I^13^13
	;;^UTILITY(U,$J,399.3,1,0)
	;;=CRIME VICTIM^THIRD PARTY^^CRIME^1^8^i^^1
	;;^UTILITY(U,$J,399.3,2,0)
	;;=DENTAL^DENTAL^^DENTAL^0^2^p^^1
	;;^UTILITY(U,$J,399.3,3,0)
	;;=HUMANITARIAN^HUMANITARIAN^^HUMAN^1^2^p^^1
	;;^UTILITY(U,$J,399.3,4,0)
	;;=INTERAGENCY^INTERAGENCY^^INTER^1^20^o^^1
	;;^UTILITY(U,$J,399.3,5,0)
	;;=MEANS TEST/CAT. C^MEANS TEST/CAT. C^^MT/CAT C^0^18^p^^1
	;;^UTILITY(U,$J,399.3,6,0)
	;;=MEDICARE ESRD^MEDICARE ESRD^^MEDICARE^1^20^o^^1
	;;^UTILITY(U,$J,399.3,7,0)
	;;=NO FAULT INS.^NO FAULT INS.^^NO FAULT^1^9^i^^1
	;;^UTILITY(U,$J,399.3,8,0)
	;;=REIMBURSABLE INS.^REIMBURSABLE INS.^^REIM INS^1^9^i^1^1
	;;^UTILITY(U,$J,399.3,9,0)
	;;=SHARING AGREEMENT^SHARING AGREEMENT^^SHARING^1^19^o^^1
	;;^UTILITY(U,$J,399.3,10,0)
	;;=TORT FEASOR^TORT FEASOR^^TORT^1^10^i^^1
	;;^UTILITY(U,$J,399.3,11,0)
	;;=WORKERS' COMP.^WORKERS' COMP.^^WORKERS^1^6^i^^1
	;;^UTILITY(U,$J,399.3,12,0)
	;;=CHAMPVA REIMB. INS.^REIMBURSABLE INS.^1^REIM INS^1^^i^1^1
	;;^UTILITY(U,$J,399.3,13,0)
	;;=CHAMPVA^CHAMPVA^0^CHAMPVA^1^^i^1^1
