FHINI04H	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1492,1)
	;;=9.5^7.1^35.4^245^45.8^^^156^2.4^^156^114^647^^^^^440^6^.26
	;;^UTILITY(U,$J,112,1492,2)
	;;=.31^2.7^^^^^.89^^18^2.57^^^^2.7
	;;^UTILITY(U,$J,112,1492,4)
	;;=^^^^^^3.1
	;;^UTILITY(U,$J,112,1492,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1493,0)
	;;=BEEF, TV DINNER, FRZ, UNHEAT, POT RST, POT, PEAS, &CORN^1635-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1493,1)
	;;=13.1^3.2^6.1^106^76.3^^^10^1.6^^76^244^259^^^^^110^5^.06
	;;^UTILITY(U,$J,112,1493,2)
	;;=.1^2.1^^^^^0^^50^2^^^^1.3
	;;^UTILITY(U,$J,112,1493,4)
	;;=^^^^^^1
	;;^UTILITY(U,$J,112,1493,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1494,0)
	;;=CHICKEN, TV DINNER, FRZ, UNHEAT, FRIED CHICK, MIXED VEG^1636-0^oz.^28.35^100^N
	;;^UTILITY(U,$J,112,1494,1)
	;;=12.8^8.5^11.3^173^66.1^^^41^1.2^^145^112^344^^^^^590^4^.07
	;;^UTILITY(U,$J,112,1494,2)
	;;=.18^5.2^^^^^1^^49^3^^^^1.3
	;;^UTILITY(U,$J,112,1494,4)
	;;=^^^^^^3
	;;^UTILITY(U,$J,112,1494,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1495,0)
	;;=MEATLOAF, TV DINNER, FRZ, UNHEAT, W/TOM SC, MASH POT, PEAS^1637-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1495,1)
	;;=8^6.7^9.8^131^73.7^^^19^1.3^^117^115^393^^^^^430^4^.1
	;;^UTILITY(U,$J,112,1495,2)
	;;=.14^1.7^^^^^0^^31^3^^^^1.8
	;;^UTILITY(U,$J,112,1495,4)
	;;=^^^^^^3
	;;^UTILITY(U,$J,112,1495,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1496,0)
	;;=TURKEY, TV DINNER, FRZ, UNHEAT, SLICED TURK, MASH POT, PEAS^1638-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1496,1)
	;;=8.4^3^12.7^112^74.7^^^26^1.1^^87^176^400^^^^^130^4^.07
	;;^UTILITY(U,$J,112,1496,2)
	;;=.09^2.3^^^^^0^^32^1^^^^1.2
	;;^UTILITY(U,$J,112,1496,4)
	;;=^^^^^^1
	;;^UTILITY(U,$J,112,1496,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1497,0)
	;;=POLLOCK, WALLEYE, COOKED, DRY HEAT^15-067^cups^250^100^N
	;;^UTILITY(U,$J,112,1497,1)
	;;=23.51^1.12^0^113^74.06^^^6^.28^73^482^387^116^.6^.055^.02^^76^0^.074
	;;^UTILITY(U,$J,112,1497,2)
	;;=.076^1.65^.16^.069^3.6^4.2^.012^.008^96^.231^.174^.524^23^1.48^^^0
	;;^UTILITY(U,$J,112,1497,3)
	;;=.263^1.031^1.083^1.911^2.159^.696^.252^.918^.794^1.211^1.407^.692^1.422^2.408^3.51^1.129^.831^.959
	;;^UTILITY(U,$J,112,1497,4)
	;;=^^.014^.173^.019^.038^.124^.016
	;;^UTILITY(U,$J,112,1497,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1498,0)
	;;=POMPANO, RAW^15-068^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1498,1)
	;;=18.48^9.47^0^164^71.12^^^22^.6^27^195^381^65^.72^.038^.013^^110^0^.56
	;;^UTILITY(U,$J,112,1498,2)
	;;=.12^3^.75^.2^15^1.3^.121^^50^3.509^2.586^1.137^33^1.1^^^0
	;;^UTILITY(U,$J,112,1498,3)
	;;=.207^.81^.851^1.502^1.697^.547^.198^.721^.624^.952^1.106^.544^1.117^1.892^2.758^.887^.653^.754
	;;^UTILITY(U,$J,112,1498,4)
	;;=^^.41^2.217^.563^.824^2.023^.246
	;;^UTILITY(U,$J,112,1498,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1499,0)
	;;=POPCORN, POPPED, PLAIN^19-034^cups^6^100^N
	;;^UTILITY(U,$J,112,1499,1)
	;;=12^4.2^77.9^382^4.1^^^10^2.66^131^300^301^4^3.44^.42^.943^^196^0^.203
	;;^UTILITY(U,$J,112,1499,2)
	;;=.283^1.944^.42^.245^23^0^1.84^.06^0^.57^1.1^1.9^20^1.8^^^15.1
	;;^UTILITY(U,$J,112,1499,3)
	;;=.085^.452^.431^1.473^.338^.252^.217^.59^.488^.607^.598^.367^.9^.836^2.255^.492^1.048^.571
	;;^UTILITY(U,$J,112,1499,4)
	;;=^^^.5^0^.07^1.1
	;;^UTILITY(U,$J,112,1499,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1500,0)
	;;=POPCORN, POPPED, W/BUTTER AND SALT ADDED^1655-2^cups^9^100^N
	;;^UTILITY(U,$J,112,1500,1)
	;;=9.8^21.8^59.1^456^3.1^^^8^2.1^^216^256^1940^^^^^0^0^.37
	;;^UTILITY(U,$J,112,1500,2)
	;;=.09^1.7^^^^^2.49^^45^10.36^^^^6.2
	;;^UTILITY(U,$J,112,1500,4)
	;;=^^^^^^7.01
	;;^UTILITY(U,$J,112,1500,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1501,0)
	;;=POPCORN, POPPED, SUGAR COATED^1656-0^cups^35^100^N
	;;^UTILITY(U,$J,112,1501,1)
	;;=6.1^3.5^85.4^383^4^^^5^1.3^^135^256^1^^^^^0^0^.37
	;;^UTILITY(U,$J,112,1501,2)
	;;=.06^1.1^^^^^1.27^^0^1.19^^^^1
	;;^UTILITY(U,$J,112,1501,4)
	;;=^^^^^^.75
	;;^UTILITY(U,$J,112,1501,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1502,0)
	;;=POPOVERS, BKD FR HOME RECIPE, ENR^18-341^popovers^40^100^N
	;;^UTILITY(U,$J,112,1502,1)
	;;=8.7^7.6^28^219^54.5^^^94^1.9^18^141^163^205^.76^.055^.229^^293^.4^.234
	;;^UTILITY(U,$J,112,1502,2)
	;;=.372^1.787^.585^.067^18^.33^2.25^.274^115^2.107^2.176^2.571^85^1.2
	;;^UTILITY(U,$J,112,1502,3)
	;;=.108^.336^.412^.701^.464^.21^.164^.436^.329^.464^.4^.205^.355^.616^1.963^.271^.709^.515
	;;^UTILITY(U,$J,112,1502,4)
	;;=.032^.036^.138^1.315^.112^.491^2.044^.037
	;;^UTILITY(U,$J,112,1502,20)
	;;=USDA Std. Reference, Release 10
