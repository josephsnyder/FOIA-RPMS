FHINI03D	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1053,0)
	;;=CORN PONE, HOME REC, WHITE GRND MEAL^879-2^sectors^60^100^N
	;;^UTILITY(U,$J,112,1053,1)
	;;=4.5^5.3^36.2^204^51.8^^^62^1.2^^163^61^396^^^^^0^0^.15
	;;^UTILITY(U,$J,112,1053,2)
	;;=.05^.9^^^^^1.58^^0^1.06^^^^2.2
	;;^UTILITY(U,$J,112,1053,4)
	;;=^^^^^^2.35
	;;^UTILITY(U,$J,112,1053,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1054,0)
	;;=CORNBREAD, SPOONBREAD, HOME REC^880-2^cups^240^100^N
	;;^UTILITY(U,$J,112,1054,1)
	;;=6.7^11.4^16.9^195^63^^^96^1^^164^132^482^^^^^290^.4^.09
	;;^UTILITY(U,$J,112,1054,2)
	;;=.18^.4^^^^^1.84^^122^3.61^^^^2
	;;^UTILITY(U,$J,112,1054,4)
	;;=^^^^^^5.05
	;;^UTILITY(U,$J,112,1054,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1055,0)
	;;=CORNBREAD MIX, BAKED^18-023^pieces^55^100^N
	;;^UTILITY(U,$J,112,1055,1)
	;;=7.2^10^48.1^314^31.9^^^73^1.9^20^376^128^778^.63^.061^.216^^205^.1^.244
	;;^UTILITY(U,$J,112,1055,2)
	;;=.27^2.057^.441^.104^11^.16^1.135^.063^61^2.739^5.14^1.224^44^2.7^^^2.4
	;;^UTILITY(U,$J,112,1055,3)
	;;=.079^.267^.31^.646^.317^.163^.136^.359^.269^.371^.334^.181^.349^.488^1.625^.245^.621^.396
	;;^UTILITY(U,$J,112,1055,4)
	;;=.013^.015^.094^1.476^.053^1.101^5.081^.02^^9.9
	;;^UTILITY(U,$J,112,1055,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1056,0)
	;;=CORNMEAL, YEL, DRY, DEGERMED, ENR^20-322^cups^138^100^N
	;;^UTILITY(U,$J,112,1056,1)
	;;=8.48^1.65^77.68^366^11.59^^^5^4.13^40^84^162^3^.72^.078^.105^^0^0^.715
	;;^UTILITY(U,$J,112,1056,2)
	;;=.407^5.034^.312^.257^48^0^.69^.02^0^.225^.412^.71^0^.6^^^7.4
	;;^UTILITY(U,$J,112,1056,4)
	;;=0^.001^.001^.186^.005^.025^.407
	;;^UTILITY(U,$J,112,1056,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1057,0)
	;;=CORNMEAL, WHOLE-GRAIN, WHITE^20-320^cups^138^100^N
	;;^UTILITY(U,$J,112,1057,1)
	;;=8.12^3.59^76.89^362^10.26^^^6^3.45^127^241^287^35^1.82^.193^.498^^0^0^.385
	;;^UTILITY(U,$J,112,1057,2)
	;;=.201^3.632^.425^.304^^0^1.589^.049^0^.505^.948^1.638^0^1.13^^^7.3
	;;^UTILITY(U,$J,112,1057,3)
	;;=.057^.305^.291^.996^.228^.17^.146^.399^.33^.411^.405^.248^.608^.565^1.525^.333^.709^.386
	;;^UTILITY(U,$J,112,1057,4)
	;;=^^^.431^.003^.057^.945
	;;^UTILITY(U,$J,112,1057,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1058,0)
	;;=CORNMEAL, SELF-RISING, BOLTED, PLAIN, ENRICHED, YELLOW^20-023^cups^134^100^N
	;;^UTILITY(U,$J,112,1058,1)
	;;=8.28^3.4^70.28^334^12.59^^^361^5.76^86^804^255^1247^2^.15^.498^^469^0^.661
	;;^UTILITY(U,$J,112,1058,2)
	;;=.4^5.291^.425^.54^57^0^1.503^.047^0^.478^.897^1.55^47^5.45
	;;^UTILITY(U,$J,112,1058,3)
	;;=.058^.311^.296^1.015^.233^.174^.149^.407^.337^.419^.413^.253^.62^.576^1.554^.339^.723^.393
	;;^UTILITY(U,$J,112,1058,4)
	;;=^^^.408^.003^.054^.894
	;;^UTILITY(U,$J,112,1058,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1059,0)
	;;=CORNMEAL, SELF-RISING, BOLTED, PLAIN, ENRICHED, WHITE^20-323^cups^134^100^N
	;;^UTILITY(U,$J,112,1059,1)
	;;=8.28^3.4^70.28^334^12.59^^^361^5.76^86^804^255^1247^2^.15^^^0^0^.661
	;;^UTILITY(U,$J,112,1059,2)
	;;=.4^5.291^.425^.54^57^0^1.503^.047^0^.478^.897^1.55^0^5.45
	;;^UTILITY(U,$J,112,1059,3)
	;;=.058^.311^.296^1.015^.233^.174^.149^.407^.337^.419^.413^.253^.62^.576^1.554^.339^.723^.393
	;;^UTILITY(U,$J,112,1059,4)
	;;=^^^.408^.003^.054^.894
	;;^UTILITY(U,$J,112,1059,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1061,0)
	;;=CORNSTARCH^20-027^tbsp.^8^100^N
	;;^UTILITY(U,$J,112,1061,1)
	;;=.26^.05^91.27^381^8.32^^^2^.47^3^13^3^9^.06^.05^.053^0^0^0^0
	;;^UTILITY(U,$J,112,1061,2)
	;;=0^0^0^0^0^0^.025^0^0^.009^.016^.025^0^.09^^^.9
	;;^UTILITY(U,$J,112,1061,3)
	;;=.001^.009^.01^.036^.006^.006^.006^.013^.01^.014^.012^.008^.019^.02^.053^.009^.024^.012
	;;^UTILITY(U,$J,112,1061,4)
	;;=^^^.009^^.001^.016^^^2.8
	;;^UTILITY(U,$J,112,1061,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1062,0)
	;;=PEAS, BLACKEYE, CKD WO/SALT^11-192^cups^165^100^N
	;;^UTILITY(U,$J,112,1062,1)
	;;=3.17^.38^20.33^97^75.48^^^128^1.12^52^51^418^4^1.03^.133^.572^^791^2.2^.101
	;;^UTILITY(U,$J,112,1062,2)
	;;=.148^1.403^.154^.065^127^0^.093^.068^0^.096^.034^.161^79^.65^^^5
	;;^UTILITY(U,$J,112,1062,3)
	;;=.037^.118^.17^.226^.209^.045^.047^.174^.13^.184^.222^.103
	;;^UTILITY(U,$J,112,1062,4)
	;;=^^.001^.082^.001^.013^.021
	;;^UTILITY(U,$J,112,1062,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1063,0)
	;;=PEAS, BLACKEYE, CKD W/SALT^11-777^cups^165^100^N
	;;^UTILITY(U,$J,112,1063,1)
	;;=3.17^.38^20.33^97^75.48^^^128^1.12^52^51^418^240^1.03^.133^.572^^791^2.2^.101
	;;^UTILITY(U,$J,112,1063,2)
	;;=.148^1.403^.154^.065^127^0^.093^.068^0^.096^.034^.161^79^.65
