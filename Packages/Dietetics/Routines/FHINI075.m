FHINI075	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,2498,4)
	;;=.1^.81^.54^4.05^.46^2.62^8.54^.08
	;;^UTILITY(U,$J,112,2498,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2499,0)
	;;=FF, BISCUIT, WITH EGG AND STEAK^21-006^biscuits^148^100^N
	;;^UTILITY(U,$J,112,2499,1)
	;;=12.12^19.21^14.37^277^52.51^^^93^3.58^17^152^207^600^1.89^.072^.165^^476^.1^.24
	;;^UTILITY(U,$J,112,2499,2)
	;;=.35^2.07^.73^.12^19^.95^^^184^5.81^7.91^3.95^129^1.78
	;;^UTILITY(U,$J,112,2499,3)
	;;=.155^.505^.589^.965^.799^.311^.2^.56^.433^.662^.685^.339^.629^.999^2.148^.503^.705^.633
	;;^UTILITY(U,$J,112,2499,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2500,0)
	;;=FF, BISCUIT, WITH EGG, CHEESE, AND BACON^21-007^biscuits^144^100^N
	;;^UTILITY(U,$J,112,2500,1)
	;;=11.29^21.8^23.21^331^41.2^^^114^1.77^14^319^160^875^1.07^.052^.177^^450^1.1^.21
	;;^UTILITY(U,$J,112,2500,2)
	;;=.3^1.6^.82^.07^26^.73^2.236^.101^181^7.915^9.879^2.427^115^2.5
	;;^UTILITY(U,$J,112,2500,3)
	;;=.148^.43^.536^.894^.77^.281^.168^.544^.441^.637^.584^.321^.492^.837^2.09^.436^.815^.6
	;;^UTILITY(U,$J,112,2500,4)
	;;=.235^1.284^1.045^4.678^.474^.316^9.264^.091
	;;^UTILITY(U,$J,112,2500,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2501,0)
	;;=FF, BISCUIT, WITH HAM^21-008^biscuits^113^100^N
	;;^UTILITY(U,$J,112,2501,1)
	;;=11.85^16.3^38.75^342^28.4^^^142^2.41^20^490^174^1268^1.46^.032^.32^^118^.1^.45
	;;^UTILITY(U,$J,112,2501,2)
	;;=.28^3.08^.36^.12^7^.03^.808^.081^22^10.096^4.277^.918^30^4.7
	;;^UTILITY(U,$J,112,2501,3)
	;;=.147^.481^.513^.937^.818^.289^.196^.547^.4^.533^.68^.382^.604^.957^2.558^.549^.794^.533
	;;^UTILITY(U,$J,112,2501,4)
	;;=.346^2.997^1.28^2.357^.182^2.644^4.064^.029
	;;^UTILITY(U,$J,112,2501,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2502,0)
	;;=FF, BISCUIT, WITH SAUSAGE^21-009^biscuits^124^100^N
	;;^UTILITY(U,$J,112,2502,1)
	;;=9.77^25.63^32.29^391^29.3^^^103^2.08^16^360^160^864^1.25^.04^.29^^45^.1^.32
	;;^UTILITY(U,$J,112,2502,2)
	;;=.23^2.64^.29^.09^7^.41^2.188^.214^28^11.468^10.339^2.44^11^3^^^1.1
	;;^UTILITY(U,$J,112,2502,3)
	;;=.113^.345^.391^.724^.523^.21^.15^.431^.318^.443^.483^.26^.43^.638^2.398^.458^.846^.455
	;;^UTILITY(U,$J,112,2502,4)
	;;=.206^1.951^.901^4.477^.485^3.412^9.699^.038
	;;^UTILITY(U,$J,112,2502,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2503,0)
	;;=FF, BISCUIT, WITH STEAK^21-010^biscuits^141^100^N
	;;^UTILITY(U,$J,112,2503,1)
	;;=9.29^18.43^31.48^323^32.75^^^82^3.05^19^145^166^564^1.89^.084^.299^^46^.1^.25
	;;^UTILITY(U,$J,112,2503,2)
	;;=.28^2.95^.29^.11^8^.67^^^18^4.918^7.855^4.551^11^2.15
	;;^UTILITY(U,$J,112,2503,3)
	;;=.111^.351^.397^.713^.563^.211^.135^.407^.312^.438^.484^.272^.44^.667^2.07^.412^.697^.407
	;;^UTILITY(U,$J,112,2503,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2504,0)
	;;=FF, CROISSANT, WITH EGG AND CHEESE^21-011^croissants^127^100^N
	;;^UTILITY(U,$J,112,2504,1)
	;;=10.07^19.45^19.14^290^45.47^^^192^1.73^17^274^137^434^1.38^.072^.178^^788^.1^.15
	;;^UTILITY(U,$J,112,2504,2)
	;;=.3^1.19^.83^.08^29^.61^^^170^11.075^5.938^1.076^201^2.56
	;;^UTILITY(U,$J,112,2504,3)
	;;=.145^.375^.499^.846^.734^.262^.148^.522^.454^.601^.481^.311^.375^.704^2.065^.26^.841^.573
	;;^UTILITY(U,$J,112,2504,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2505,0)
	;;=FF, CROISSANT, WITH EGG, CHEESE, AND BACON^21-012^croissants^129^100^N
	;;^UTILITY(U,$J,112,2505,1)
	;;=12.58^21.98^18.33^320^43.92^^^117^1.7^18^214^156^689^1.47^.077^.172^^366^1.7^.27
	;;^UTILITY(U,$J,112,2505,2)
	;;=.26^1.7^.83^.09^27^.67^^^167^11.963^7.113^1.363^93^2.74
	;;^UTILITY(U,$J,112,2505,3)
	;;=.174^.47^.61^1.036^.919^.322^.179^.632^.544^.735^.62^.386^.497^.899^2.485^.39^1.01^.688
	;;^UTILITY(U,$J,112,2505,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2506,0)
	;;=FF, CROISSANT, WITH EGG, CHEESE, AND HAM^21-013^croissants^152^100^N
	;;^UTILITY(U,$J,112,2506,1)
	;;=12.45^22.09^15.92^312^51.14^^^95^1.4^17^221^179^711^1.43^.083^.145^^297^7.5^.34
	;;^UTILITY(U,$J,112,2506,2)
	;;=.2^2.1^.82^.15^24^.66^^^140^11.497^7.495^1.552^77^2.48
	;;^UTILITY(U,$J,112,2506,3)
	;;=.168^.505^.594^1.013^.904^.325^.202^.606^.481^.665^.685^.386^.59^1.003^2.349^.461^.811^.651
	;;^UTILITY(U,$J,112,2506,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,2507,0)
	;;=FF, CROISSANT, WITH EGG, CHEESE, AND SAUSAGE^21-014^croissants^160^100^N
	;;^UTILITY(U,$J,112,2507,1)
	;;=12.69^23.85^15.45^327^45.87^^^90^1.9^15^181^177^697^1.34^.068^.158^^264^.1^.62
	;;^UTILITY(U,$J,112,2507,2)
	;;=.2^2.5^.82^.07^24^.56^^^135^11.391^8.908^1.881^68^2.27
