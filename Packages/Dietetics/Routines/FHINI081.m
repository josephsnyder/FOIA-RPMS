FHINI081	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,2787,1)
	;;=12.43^14.01^41.57^332^2.36^^^190^1^56^210^567^10050^.702^.12^.2^^0^7^.14
	;;^UTILITY(U,$J,112,2787,2)
	;;=.42^6.3^.1^.1^14^.7^.43^.08^15^6.98^5.86^.56^0^29.64
	;;^UTILITY(U,$J,112,2787,4)
	;;=^.13^.52^3.49^.59^2.65^5.04
	;;^UTILITY(U,$J,112,2787,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2788,0)
	;;=GRAVY, BROWN, DEHYDRATED, DRY^6-118^cups^21.9^100^N
	;;^UTILITY(U,$J,112,2788,1)
	;;=10.99^7.92^59.67^342^5.13^^^281^.98^34^203^262^4893^1.11^.19^.412^^0^7^.18
	;;^UTILITY(U,$J,112,2788,2)
	;;=.39^3.7^.1^.1^14^.7^.251^.05^9^3.849^3.216^.301^0^16.29
	;;^UTILITY(U,$J,112,2788,4)
	;;=^.07^.291^1.98^.332^1.507^2.864
	;;^UTILITY(U,$J,112,2788,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2789,0)
	;;=GRAVY, CHICKEN, DEHYDRATED, DRY^6-120^cups^23.1^100^N
	;;^UTILITY(U,$J,112,2789,1)
	;;=11.32^8.3^62.06^361^3.8^^^170^1^45^203^262^4904^1.388^.112^.4^^0^7^.18
	;;^UTILITY(U,$J,112,2789,2)
	;;=.634^3.7^.1^.1^14^.7^1.83^.11^7^2.28^3.71^1.95^0^14.52
	;;^UTILITY(U,$J,112,2789,4)
	;;=^0^.06^1.49^.24^.69^3.4^.01
	;;^UTILITY(U,$J,112,2789,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2790,0)
	;;=GRAVY, MUSHROOM, DEHYDRATED, DRY^6-122^cups^21.3^100^N
	;;^UTILITY(U,$J,112,2790,1)
	;;=10^4^64.66^328^3.34^^^230^1^34^203^262^6580^1.54^.535^.4^^0^7^.2
	;;^UTILITY(U,$J,112,2790,2)
	;;=.4^3.7^.1^.1^14^.7^.11^.02^3^2.36^1.31^.14^0^18
	;;^UTILITY(U,$J,112,2790,4)
	;;=.06^.48^.28^.83^.13^.6^1.14
	;;^UTILITY(U,$J,112,2790,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2791,0)
	;;=GRAVY, ONION, DEHYDRATED, DRY^6-123^cups^24^100^N
	;;^UTILITY(U,$J,112,2791,1)
	;;=9^3^67.64^322^4.36^^^280^1^34^203^262^4186^.876^.17^.4^^0^7^.2
	;;^UTILITY(U,$J,112,2791,2)
	;;=.4^3.7^.1^.1^14^.7^.08^.01^2^1.86^.9^.14^0^16^^^6
	;;^UTILITY(U,$J,112,2791,4)
	;;=.06^.47^.24^.58^.08^.41^.72
	;;^UTILITY(U,$J,112,2791,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2792,0)
	;;=GRAVY, PORK, DEHYDRATED, DRY^6-124^cups^21.3^100^N
	;;^UTILITY(U,$J,112,2792,1)
	;;=9^9^63^358^4^^^150^1^45^203^262^5800^1.4^.1^.4^^0^7^.2
	;;^UTILITY(U,$J,112,2792,2)
	;;=.283^3.7^.1^.1^14^.7^.92^.09^9^3.53^4.06^1.01^0^15
	;;^UTILITY(U,$J,112,2792,4)
	;;=.01^.02^.12^2.14^.24^1.22^3.71
	;;^UTILITY(U,$J,112,2792,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2793,0)
	;;=GRAVY, TURKEY, DEHYDRATED, DRY^6-126^cups^24.8^100^N
	;;^UTILITY(U,$J,112,2793,1)
	;;=11.83^7.55^60.72^350^4.09^^^200^1^45^203^262^6050^1.4^.1^.4^^0^7^.2
	;;^UTILITY(U,$J,112,2793,2)
	;;=.45^3.7^.1^.1^14^.7^1.6^.11^8^2.22^3.24^1.75^0^15.83
	;;^UTILITY(U,$J,112,2793,4)
	;;=^^.07^1.56^.45^.47^2.71
	;;^UTILITY(U,$J,112,2793,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2794,0)
	;;=GRAVY, UNSPECIFIED TYPE, DRY^6-127^cups^24.8^100^N
	;;^UTILITY(U,$J,112,2794,1)
	;;=13^8^58^344^4^^^150^1^45^203^262^5730^1.4^.1^.4^^0^7^.2
	;;^UTILITY(U,$J,112,2794,2)
	;;=.432^3.7^.1^.1^14^.7^1.52^.1^4^2.86^3.15^1.62^0^17
	;;^UTILITY(U,$J,112,2794,4)
	;;=.06^.46^.23^1.18^.04^.85^3.09
	;;^UTILITY(U,$J,112,2794,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2795,0)
	;;=HADDOCK, COOKED, DRY HEAT^15-034^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,2795,1)
	;;=24.24^.93^0^112^74.25^^^42^1.35^50^241^399^87^.48^.033^.03^^63^0^.04
	;;^UTILITY(U,$J,112,2795,2)
	;;=.045^4.632^.15^.346^13.3^1.387^.012^.003^74^.167^.151^.309^19^1.55^^^0
	;;^UTILITY(U,$J,112,2795,3)
	;;=.272^1.063^1.117^1.971^2.227^.718^.26^.946^.818^1.249^1.451^.714^1.466^2.483^3.619^1.164^.857^.989
	;;^UTILITY(U,$J,112,2795,4)
	;;=^^.01^.113^.022^.042^.086^.029^^40.5
	;;^UTILITY(U,$J,112,2795,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2796,0)
	;;=HERRING, ATLANTIC, COOKED, DRY HEAT^15-040^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,2796,1)
	;;=23.03^11.59^0^203^64.16^^^74^1.41^41^303^419^115^1.27^.118^.04^^102^.7^.112
	;;^UTILITY(U,$J,112,2796,2)
	;;=.299^4.124^.74^.348^11.5^13.141^.167^.132^77^2.615^4.79^2.735^31^1.87^^^0
	;;^UTILITY(U,$J,112,2796,3)
	;;=.258^1.01^1.061^1.872^2.115^.682^.247^.899^.778^1.187^1.378^.678^1.393^2.358^3.438^1.106^.814^.94
	;;^UTILITY(U,$J,112,2796,4)
	;;=^.015^.71^1.735^.797^.14^1.944^.077
	;;^UTILITY(U,$J,112,2796,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2797,0)
	;;=HOMINY, CANNED, WHITE^20-030^cups^160^100^N
	;;^UTILITY(U,$J,112,2797,1)
	;;=1.48^.88^14.26^72^82.53^^^10^.62^16^35^9^210^1.05^.03^.07^^0^0^.003
	;;^UTILITY(U,$J,112,2797,2)
	;;=.006^.033^.154^.005^1^0^.387^.012^0^.123^.231^.399^0^.86^^^2.5
	;;^UTILITY(U,$J,112,2797,3)
	;;=.008^.05^.058^.202^.033^.031^.033^.076^.056^.077^.068^.045^.107^.115^.299^.052^.138^.065
