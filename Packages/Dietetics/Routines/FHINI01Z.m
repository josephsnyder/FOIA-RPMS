FHINI01Z	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,512,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,513,0)
	;;=SOUP, BEEF BROTH, CUBED, DRY^6-076^cups^4.8^100^N
	;;^UTILITY(U,$J,112,513,1)
	;;=17.3^4^16.1^170^3.3^^^60^2.23^50^225^403^24000^.209^0^.386^^50^0^.2
	;;^UTILITY(U,$J,112,513,2)
	;;=.24^3.3^.3^.2^32^1^.12^.02^4^1.99^1.67^.16^15^59.3^^^0
	;;^UTILITY(U,$J,112,513,4)
	;;=^.04^.15^1^.17^.76^1.44
	;;^UTILITY(U,$J,112,513,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,514,0)
	;;=SOUP, CHICKEN BROTH OR BOUILLON, DEHYDRATED, DRY^6-080^cups^8^100^N
	;;^UTILITY(U,$J,112,514,1)
	;;=16.66^13.88^18.01^267^2.27^^^187^1.03^56^166^309^18586^.09^0^.15^^500^1.1^.1
	;;^UTILITY(U,$J,112,514,2)
	;;=.43^2.46^.6^.1^32^.3^4.32^.13^13^3.43^5.36^4.48^150^49.18^^^0
	;;^UTILITY(U,$J,112,514,4)
	;;=^.01^.01^2.56^.6^.66^4.64^.01
	;;^UTILITY(U,$J,112,514,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,515,0)
	;;=SOUP, CHICKEN BROTH CUBES, DEHYDRATED, DRY^6-081^cups^6.4^100^N
	;;^UTILITY(U,$J,112,515,1)
	;;=14.6^4.7^23.5^198^2.5^^^190^1.87^56^191^374^24000^.203^0^.377^^250^1^.19
	;;^UTILITY(U,$J,112,515,2)
	;;=.38^3.9^.6^.1^32^.3^1.57^.05^13^1.25^1.95^1.63^75^54.7^^^0
	;;^UTILITY(U,$J,112,515,4)
	;;=^0^.03^.93^.2^.24^1.68^0
	;;^UTILITY(U,$J,112,515,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,516,0)
	;;=SAUCE, TERIYAKI, READY-TO-SERVE^6-112^tbsp.^18^100^N
	;;^UTILITY(U,$J,112,516,1)
	;;=5.93^0^15.95^84^67.69^^^25^1.7^61^154^225^3833^.1^.1^0^^0^0^.03
	;;^UTILITY(U,$J,112,516,2)
	;;=.07^1.27^.2^.1^20^0^0^^0^0^0^0^0^10.43^^^.1
	;;^UTILITY(U,$J,112,516,4)
	;;=^^^0^^0^0
	;;^UTILITY(U,$J,112,516,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,517,0)
	;;=GRAVY, AU JUS, CND^6-114^cups^238.4^100^N
	;;^UTILITY(U,$J,112,517,1)
	;;=1.2^.2^2.5^16^87^^^4^.6^2^30^81^50^1^.1^.2^^0^1^.02
	;;^UTILITY(U,$J,112,517,2)
	;;=.06^.9^.02^.01^2^.1^.01^0^0^.1^.08^.01^0^1.6
	;;^UTILITY(U,$J,112,517,4)
	;;=^0^.01^.05^.01^.04^.07
	;;^UTILITY(U,$J,112,517,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,518,0)
	;;=GRAVY, BEEF, CND^6-116^cups^232.8^100^N
	;;^UTILITY(U,$J,112,518,1)
	;;=3.75^2.36^4.81^53^87.48^^^6^.7^2^30^81^560^1^.1^.2^^0^0^.032
	;;^UTILITY(U,$J,112,518,2)
	;;=.036^.66^.02^.01^2^.1^.07^.01^3^1.153^.962^.08^0^1.6^^^.4
	;;^UTILITY(U,$J,112,518,4)
	;;=^.02^.09^.591^.1^.451^.852^^^1
	;;^UTILITY(U,$J,112,518,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,519,0)
	;;=GRAVY, CHICKEN, CND^6-119^cups^238.4^100^N
	;;^UTILITY(U,$J,112,519,1)
	;;=1.93^5.71^5.42^79^85.34^^^20^.47^2^29^109^577^.8^.1^.2^^369^0^.017
	;;^UTILITY(U,$J,112,519,2)
	;;=.043^.443^.02^.01^2^.1^1.42^.07^2^1.41^2.55^1.5^111^1.6^^^.4
	;;^UTILITY(U,$J,112,519,4)
	;;=^0^.04^.98^.16^.38^2.34^0^^.8
	;;^UTILITY(U,$J,112,519,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,520,0)
	;;=GRAVY, MUSHROOM, CND^6-121^cups^238.4^100^N
	;;^UTILITY(U,$J,112,520,1)
	;;=1.26^2.71^5.47^50^89^^^7^.66^2^15^106^570^.7^.1^.3^^0^0^.033
	;;^UTILITY(U,$J,112,520,2)
	;;=.063^.671^1.1^.02^12^0^.95^.07^0^.4^1.17^1.02^0^1.56^^^.4
	;;^UTILITY(U,$J,112,520,4)
	;;=^^0^.27^.01^.14^1.15
	;;^UTILITY(U,$J,112,520,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,521,0)
	;;=GRAVY, TURKEY, CND^6-125^cups^238.4^100^N
	;;^UTILITY(U,$J,112,521,1)
	;;=2.6^2.1^5.1^51^88.6^^^4^.7^2^29^109^577^.8^.1^.2^^0^0^.02
	;;^UTILITY(U,$J,112,521,2)
	;;=.08^1.3^.02^.01^2^.1^.45^.03^2^.62^.9^.49^0^1.6^^^.4
	;;^UTILITY(U,$J,112,521,4)
	;;=^^.02^.43^.13^.13^.75^.01
	;;^UTILITY(U,$J,112,521,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,522,0)
	;;=SAUCE, SOY SAUCE^6-134^tbsp.^18^100^N
	;;^UTILITY(U,$J,112,522,1)
	;;=5.17^.08^8.51^53^71.09^^^17^2.02^34^110^180^5715^.37^.115^.424^^0^0^.05
	;;^UTILITY(U,$J,112,522,2)
	;;=.13^3.36^.32^.17^15.5^0^.032^.004^0^.01^.012^.036^0^15.15^^^0
	;;^UTILITY(U,$J,112,522,3)
	;;=.074^.209^.245^.414^.294^.075^.091^.272^.188^.256^.357^.134^.227^.555^1.218^.229^.38^.299
	;;^UTILITY(U,$J,112,522,4)
	;;=^^0^.008^0^.001^.011
	;;^UTILITY(U,$J,112,522,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,523,0)
	;;=SAUCE, BARBECUE SAUCE^6-150^cups^250^100^N
	;;^UTILITY(U,$J,112,523,1)
	;;=1.8^1.8^12.8^75^80.9^^^19^.9^18^20^174^815^.2^.2^.3^^868^7^.03
	;;^UTILITY(U,$J,112,523,2)
	;;=.02^.9^.3^.075^4^0^.63^.05^0^.27^.77^.68^87^2.7^^^1.2
	;;^UTILITY(U,$J,112,523,4)
	;;=^^0^.18^.01^.09^.77^^^1.3
	;;^UTILITY(U,$J,112,523,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,524,0)
	;;=SOUP, CREAM OF ASPARAGUS, CND, PREP W/EQ VOL MILK^6-201^cups^248^100^N
	;;^UTILITY(U,$J,112,524,1)
	;;=2.55^3.3^6.61^65^86^^^70^.35^8^62^145^420^.373^.056^.153^^242^1.6^.041
