FHINI05D	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1818,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1819,0)
	;;=FRANKFURTERS, CND^2000-0^franks^48^100^N
	;;^UTILITY(U,$J,112,1819,1)
	;;=13.4^18.1^.2^221^66^^^9^2.2^^145^220^1100^^^^^0^0^.03
	;;^UTILITY(U,$J,112,1819,2)
	;;=.12^2.4^^^^^1^^62^8^^^^2.3
	;;^UTILITY(U,$J,112,1819,4)
	;;=^^^^^^8
	;;^UTILITY(U,$J,112,1819,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1820,0)
	;;=SAUSAGE, PORK, CND, DRAINED SOLIDS^2016-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1820,1)
	;;=18.3^32.8^1.9^381^43.2^^^11^1.2^^210^269^958^^^^^0^0^.19
	;;^UTILITY(U,$J,112,1820,2)
	;;=.19^3.3^^^^^2.95^^89^11.81^^^^3.8
	;;^UTILITY(U,$J,112,1820,4)
	;;=^^^^^^13.78
	;;^UTILITY(U,$J,112,1820,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1821,0)
	;;=SAUSAGE, SCRAPPLE^2019-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1821,1)
	;;=8.8^13.6^14.6^215^61.3^^^5^1.2^^64^269^958^^^^^0^0^.19
	;;^UTILITY(U,$J,112,1821,2)
	;;=.09^1.8^^^^^2^^44^5^^^^1.7
	;;^UTILITY(U,$J,112,1821,4)
	;;=^^^^^^5
	;;^UTILITY(U,$J,112,1821,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1822,0)
	;;=SAUSAGE, SOUSE^2020-0^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1822,1)
	;;=13^13.4^1.2^181^70.3^^^9^2.3^^173^220^1100^^^^^0^0^.04
	;;^UTILITY(U,$J,112,1822,2)
	;;=.1^.9^^^^^1.21^^65^4.82^^^^2.1
	;;^UTILITY(U,$J,112,1822,4)
	;;=^^^^^^5.63
	;;^UTILITY(U,$J,112,1822,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1823,0)
	;;=SCALLOPS, STEAMED^2024-0^oz.^28.3^^N
	;;^UTILITY(U,$J,112,1823,1)
	;;=23.2^1.4^3.3^112^73.1^^^115^3^^338^476^265^^^^^100^0^.1
	;;^UTILITY(U,$J,112,1823,2)
	;;=.06^1.3^^^^^0^^53^0
	;;^UTILITY(U,$J,112,1823,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1824,0)
	;;=SCALLOPS, FRZ, FRIED, REHEATED^15-173^scallops^10^100^N
	;;^UTILITY(U,$J,112,1824,1)
	;;=18.07^10.94^10.13^215^58.44^^^42^.82^59^236^333^464^1.06^.078^.14^^75^2.3^.042
	;;^UTILITY(U,$J,112,1824,2)
	;;=.11^1.505^.2^.14^18.2^1.318^2.443^.156^61^2.669^4.498^2.856^22^1.83
	;;^UTILITY(U,$J,112,1824,3)
	;;=.21^.768^.8^1.295^1.28^.407^.25^.687^.588^.818^1.266^.355^1.059^1.679^2.765^1.074^.85^.847
	;;^UTILITY(U,$J,112,1824,4)
	;;=^^.056^1.546^.031^1.063^4.456^.027
	;;^UTILITY(U,$J,112,1824,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1825,0)
	;;=SEA BASS, WHITE, RAW^15-091^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1825,1)
	;;=18.43^2^0^97^78.27^^^10^.29^41^194^256^68^.4^.019^.015^^184^0^.11
	;;^UTILITY(U,$J,112,1825,2)
	;;=.12^1.6^.75^.4^5^.3^.024^^41^.511^.424^.743^55^1.09^^^0
	;;^UTILITY(U,$J,112,1825,3)
	;;=.206^.808^.849^1.498^1.693^.546^.198^.72^.622^.95^1.103^.543^1.115^1.887^2.751^.885^.652^.752
	;;^UTILITY(U,$J,112,1825,4)
	;;=^^.049^.322^.13^.138^.294
	;;^UTILITY(U,$J,112,1825,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1826,0)
	;;=SESAME SEEDS, DRY, WHOLE^12-023^tsp.^2.7^100^N
	;;^UTILITY(U,$J,112,1826,1)
	;;=17.73^49.67^23.45^573^4.69^^^975^14.55^351^629^468^11^7.75^4.082^2.46^^9^0^.791
	;;^UTILITY(U,$J,112,1826,2)
	;;=.247^4.515^.05^.79^96.7^0^21.375^.376^0^6.957^18.759^21.773^1^4.45^^^9.1
	;;^UTILITY(U,$J,112,1826,3)
	;;=.388^.736^.763^1.358^.569^.586^.358^.94^.743^.99^2.63^.522^.927^1.646^3.955^1.215^.81^.967
	;;^UTILITY(U,$J,112,1826,4)
	;;=^^.124^4.441^.149^2.09^18.521^^8
	;;^UTILITY(U,$J,112,1826,20)
	;;=USDA Std. Reference, Release 10;HCF Nutrition Research Foundation, Inc, 1990
	;;^UTILITY(U,$J,112,1827,0)
	;;=SHALLOTS, RAW^11-677^tbsp.^10^88^N
	;;^UTILITY(U,$J,112,1827,1)
	;;=2.5^.1^16.8^72^79.8^^^37^1.2^21^60^334^12^.4^.088^.292^^12484^8^.06
	;;^UTILITY(U,$J,112,1827,2)
	;;=.02^.2^.29^.345^34.2^0^.037^.002^0^.017^.014^.039^1248^.8
	;;^UTILITY(U,$J,112,1827,3)
	;;=.028^.098^.106^.149^.125^.027^^.081^.072^.11^.181^.043^.113^.231^.517^.124^.165^.113
	;;^UTILITY(U,$J,112,1827,4)
	;;=^^0^.015^^.001^.014
	;;^UTILITY(U,$J,112,1827,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1828,0)
	;;=SHRIMP, FRENCH-FRIED^15-150^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1828,1)
	;;=21.39^12.28^11.47^242^52.86^^^67^1.26^40^218^225^344^1.38^.274^.1^^189^1.5^.129
	;;^UTILITY(U,$J,112,1828,2)
	;;=.136^3.07^.35^.098^8.1^1.87^4.511^.267^177^2.087^3.812^5.085^56^1.99
	;;^UTILITY(U,$J,112,1828,3)
	;;=.299^.86^1.042^1.698^1.764^.591^.258^.928^.719^1.025^1.784^.437^1.183^2.132^3.878^1.238^.829^.89
	;;^UTILITY(U,$J,112,1828,4)
	;;=^^.035^1.463^.076^.541^3.753^.059^^41.7
	;;^UTILITY(U,$J,112,1828,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1829,0)
	;;=SHRIMP, CND, WET PK, SOL+LIQ^2044-0^oz.^28.3^^N
	;;^UTILITY(U,$J,112,1829,1)
	;;=16.2^.8^.8^80^78.2^^^59^1.8^^152^122^140^^^^^50^0^.01
