IBINI01L	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	Q:'DIFQR(350.2)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,350.2)
	;;=^IBE(350.2,
	;;^UTILITY(U,$J,350.2,0)
	;;=IB ACTION CHARGE^350.2I^35^29
	;;^UTILITY(U,$J,350.2,1,0)
	;;=RX1^2901001^1^2
	;;^UTILITY(U,$J,350.2,2,0)
	;;=RX2^2901001^2^2
	;;^UTILITY(U,$J,350.2,3,0)
	;;=RX3^2901001^3^2
	;;^UTILITY(U,$J,350.2,4,0)
	;;=RX4^2901001^4^2
	;;^UTILITY(U,$J,350.2,5,0)
	;;=RX5^2901001^5^2
	;;^UTILITY(U,$J,350.2,6,0)
	;;=RX6^2901001^6^2
	;;^UTILITY(U,$J,350.2,7,0)
	;;=MEDICARE 1^2920101^7^285
	;;^UTILITY(U,$J,350.2,7,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,8,0)
	;;=MEDICARE 2^2920101^8^382
	;;^UTILITY(U,$J,350.2,8,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,9,0)
	;;=MEDICARE 3^2920101^9^438
	;;^UTILITY(U,$J,350.2,9,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,10,0)
	;;=MEDICARE 4^2920101^10^539
	;;^UTILITY(U,$J,350.2,10,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,11,0)
	;;=MEDICARE 5^2920101^11^615
	;;^UTILITY(U,$J,350.2,11,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,12,0)
	;;=MEDICARE 6^2920101^12^580^^200
	;;^UTILITY(U,$J,350.2,12,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,13,0)
	;;=MEDICARE 7^2920101^13^853
	;;^UTILITY(U,$J,350.2,13,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,14,0)
	;;=MEDICARE 8^2920101^14^705^^200
	;;^UTILITY(U,$J,350.2,14,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,15,0)
	;;=MEDICARE 9^2920101^63^0
	;;^UTILITY(U,$J,350.2,15,10)
	;;=S IBNOD=^IBE(350.2,DA,0) D VAR^IBAUTL1 Q:Y<0  S Y=(($P(Y,"^",2)*$P(IBNOD,"^",4))+(+Y*$P(Y,"^",3)*$P(IBNOD,"^",4))+$P(IBNOD,"^",6))+.005\.01/100
	;;^UTILITY(U,$J,350.2,19,0)
	;;=INPT PER DIEM^2901001^45^10
	;;^UTILITY(U,$J,350.2,20,0)
	;;=NHCU PER DIEM^2901001^48^5
	;;^UTILITY(U,$J,350.2,24,0)
	;;=MEDICARE DEDUCTIBLE^2860701^54^492
	;;^UTILITY(U,$J,350.2,25,0)
	;;=MEDICARE DEDUCTIBLE^2870101^54^520
	;;^UTILITY(U,$J,350.2,26,0)
	;;=MEDICARE DEDUCTIBLE^2880101^54^540
	;;^UTILITY(U,$J,350.2,27,0)
	;;=MEDICARE DEDUCTIBLE^2890101^54^560
	;;^UTILITY(U,$J,350.2,28,0)
	;;=MEDICARE DEDUCTIBLE^2900101^54^592
	;;^UTILITY(U,$J,350.2,29,0)
	;;=MEDICARE DEDUCTIBLE^2910101^54^628
	;;^UTILITY(U,$J,350.2,30,0)
	;;=MEDICARE DEDUCTIBLE^2920101^54^652
	;;^UTILITY(U,$J,350.2,32,0)
	;;=MEDICARE DEDUCTIBLE^2930101^54^676
	;;^UTILITY(U,$J,350.2,33,0)
	;;=CHAMPVA SUBSISTENCE LIMIT^2911001^64^25
	;;^UTILITY(U,$J,350.2,34,0)
	;;=CHAMPVA PER DIEM^2911001^65^8.95
	;;^UTILITY(U,$J,350.2,35,0)
	;;=CHAMPVA PER DIEM^2921001^65^9.30
	;;^UTILITY(U,$J,350.2,36,0)
	;;=MEDICARE DEDUCTIBLE^2940101^54^696
