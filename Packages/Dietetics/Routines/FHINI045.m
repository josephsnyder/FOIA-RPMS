FHINI045	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1355,0)
	;;=MUSTARD SPINACH, RAW^11-274^cups^150^93^N
	;;^UTILITY(U,$J,112,1355,1)
	;;=2.2^.3^3.9^22^92.2^^^210^1.5^11^28^449^21^.17^.075^.407^^9900^130^.068
	;;^UTILITY(U,$J,112,1355,2)
	;;=.093^.678^.178^.153^158.9^0^^^0^^^^990^1.4
	;;^UTILITY(U,$J,112,1355,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1356,0)
	;;=MUSTARD SPINACH, BOILED, WO/SALT^11-275^cups^180^100^N
	;;^UTILITY(U,$J,112,1356,1)
	;;=1.7^.2^2.8^16^94.5^^^158^.8^7^18^285^14^.11^.05^.27^^8200^65^.041
	;;^UTILITY(U,$J,112,1356,2)
	;;=.062^.43^.119^.097^72.8^0^^^0^^^^820^.8
	;;^UTILITY(U,$J,112,1356,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1357,0)
	;;=MUSTARD SPINACH, BOILED, W/SALT^11-801^cups^180^100^N
	;;^UTILITY(U,$J,112,1357,1)
	;;=1.7^.2^2.8^16^94.5^^^158^.8^7^18^285^250^.11^.05^.27^^8200^65^.041
	;;^UTILITY(U,$J,112,1357,2)
	;;=.062^.43^.119^.097^72.8^0^^^0^^^^820^.8
	;;^UTILITY(U,$J,112,1357,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1358,0)
	;;=MUSTARD, PREPARED, BROWN^1372-0^tsp.^5^100^N
	;;^UTILITY(U,$J,112,1358,1)
	;;=5.9^6.3^5.3^91^78.1^^^124^1.8^^134^130^1307^^^^^0^0^0
	;;^UTILITY(U,$J,112,1358,2)
	;;=0^0^^^^^4^^0^1^^^^4.4
	;;^UTILITY(U,$J,112,1358,4)
	;;=^^^^^^1
	;;^UTILITY(U,$J,112,1358,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1359,0)
	;;=MUSTARD, PREPARED, YELLOW^1373-0^tsp.^5^100^N
	;;^UTILITY(U,$J,112,1359,1)
	;;=4.7^4.4^6.4^75^80.2^^^84^2^^73^130^1252^^^^^0^0^0
	;;^UTILITY(U,$J,112,1359,2)
	;;=0^0^^^^^.4^^0^.2^^^^4.3
	;;^UTILITY(U,$J,112,1359,4)
	;;=^^^^^^.9
	;;^UTILITY(U,$J,112,1359,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1363,0)
	;;=NOODLES, EGG, ENR, CKD^20-110^cups^160^319^N
	;;^UTILITY(U,$J,112,1363,1)
	;;=4.75^1.47^24.84^133^68.7^^^12^1.59^19^69^28^7^.62^.086^.262^^20^0^.186
	;;^UTILITY(U,$J,112,1363,2)
	;;=.083^1.487^.145^.036^7^.09^.386^.021^33^.31^.43^.408^6^.24^^^1.8
	;;^UTILITY(U,$J,112,1363,3)
	;;=.063^.144^.202^.339^.13^.087^.13^.236^.137^.225^.196^.099^.162^.241^1.516^.151^.463^.246
	;;^UTILITY(U,$J,112,1363,4)
	;;=^^.004^.252^.033^.054^.397^.001^^21.7
	;;^UTILITY(U,$J,112,1363,20)
	;;=USDA Std. Reference, Release 10;HCF Nutrition Research Foundation, Inc, 1990
	;;^UTILITY(U,$J,112,1364,0)
	;;=NOODLES, EGG, UNENR, CKD^20-410^cups^160^319^N
	;;^UTILITY(U,$J,112,1364,1)
	;;=4.75^1.47^24.84^133^68.7^^^12^.6^19^69^28^7^.62^.086^.262^^20^0^.03
	;;^UTILITY(U,$J,112,1364,2)
	;;=.02^.4^.145^.036^7^.09^.386^.021^33^.31^.43^.408^6^.24^^^1.1
	;;^UTILITY(U,$J,112,1364,3)
	;;=.063^.144^.202^.339^.13^.087^.13^.236^.137^.225^.196^.099^.162^.241^1.516^.151^.463^.246
	;;^UTILITY(U,$J,112,1364,4)
	;;=^^.004^.252^.033^.054^.397^.001
	;;^UTILITY(U,$J,112,1364,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1365,0)
	;;=NOODLES, CHOW MEIN, CND^20-113^cups^45^100^N
	;;^UTILITY(U,$J,112,1365,1)
	;;=8.38^30.76^57.54^527^.73^^^20^4.73^52^161^120^439^1.4^.167^1.357^^85^0^.578
	;;^UTILITY(U,$J,112,1365,2)
	;;=.421^5.95^.533^.11^22^0^15.354^1.976^0^4.384^7.689^17.331^9^2.6^^^3.9
	;;^UTILITY(U,$J,112,1365,3)
	;;=.107^.22^.323^.57^.16^.13^.235^.405^.219^.355^.307^.169^.245^.341^3.006^.264^.917^.393
	;;^UTILITY(U,$J,112,1365,4)
	;;=^^.028^3.264^.057^1.091^7.576^^^43
	;;^UTILITY(U,$J,112,1365,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1366,0)
	;;=OCEAN PERCH, FRIED^1397-0^oz.^28.3^^N
	;;^UTILITY(U,$J,112,1366,1)
	;;=19^13.3^6.8^227^59^^^33^1.3^^226^284^153^^^^^0^0^.1
	;;^UTILITY(U,$J,112,1366,2)
	;;=.11^1.8^^^^^0^^58^2
	;;^UTILITY(U,$J,112,1366,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1367,0)
	;;=OCEAN PERCH, ATLANTIC, COOKED, DRY HEAT^15-058^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1367,1)
	;;=23.88^2.09^0^121^72.69^^^137^1.18^39^277^350^96^.61^.033^.02^^46^.8^.13
	;;^UTILITY(U,$J,112,1367,2)
	;;=.134^2.436^.42^.27^10.4^1.154^.036^.073^54^.313^.801^.547^14^1.54^^^0
	;;^UTILITY(U,$J,112,1367,3)
	;;=.267^1.047^1.1^1.941^2.193^.707^.256^.932^.806^1.23^1.429^.703^1.444^2.445^3.564^1.146^.844^.974
	;;^UTILITY(U,$J,112,1367,4)
	;;=^.004^.081^.178^.11^.044^.265^.005
	;;^UTILITY(U,$J,112,1367,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1368,0)
	;;=OKRA, CKD WO/SALT^11-279^cups^160^100^N
	;;^UTILITY(U,$J,112,1368,1)
	;;=1.87^.17^7.21^32^89.91^^^63^.45^57^56^322^5^.55^.086^.911^^575^16.3^.132
	;;^UTILITY(U,$J,112,1368,2)
	;;=.055^.871^.213^.187^45.7^0^.045^.001^0^.045^.028^.046^58^.84^^^2.5
	;;^UTILITY(U,$J,112,1368,3)
	;;=.016^.061^.065^.098^.075^.02^.018^.061^.081^.085^.078^.029^.068^.135^.253^.041^.042^.041
	;;^UTILITY(U,$J,112,1368,4)
	;;=^^0^.038^0^.004^.028^0
