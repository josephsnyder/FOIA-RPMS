FHINI03C	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,1042,0)
	;;=CORN, WHITE, FRZ, BOILED, WO/SALT^11-911^cups^165^100^N
	;;^UTILITY(U,$J,112,1042,1)
	;;=3.02^.07^20.52^81^75.75^^^2^.3^18^47^139^5^.35^.033^.18^^0^2.6^.069
	;;^UTILITY(U,$J,112,1042,2)
	;;=.073^1.283^.217^.1^22.8^0^.033^.001^0^.011^.021^.034^0^.64
	;;^UTILITY(U,$J,112,1042,3)
	;;=.021^.121^.121^.326^.128^.063^.025^.141^.115^.173^.123^.083^.276^.229^.596^.119^.274^.143
	;;^UTILITY(U,$J,112,1042,4)
	;;=^^^.011^^.001^.021
	;;^UTILITY(U,$J,112,1042,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1043,0)
	;;=CORN, WHITE, FRZ, BOILED, W/SALT^11-912^cups^165^100^N
	;;^UTILITY(U,$J,112,1043,1)
	;;=3.02^.07^20.52^81^75.75^^^2^.3^18^47^139^241^.35^.033^.18^^0^2.6^.069
	;;^UTILITY(U,$J,112,1043,2)
	;;=.073^1.283^.217^.1^22.8^0^.033^.001^0^.011^.021^.034^0^.64
	;;^UTILITY(U,$J,112,1043,3)
	;;=.021^.121^.121^.326^.128^.063^.025^.141^.115^.173^.123^.083^.276^.229^.596^.119^.274^.143
	;;^UTILITY(U,$J,112,1043,4)
	;;=^^^.011^^.001^.021
	;;^UTILITY(U,$J,112,1043,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1044,0)
	;;=CORN, YEL, FRZ, ON COB, CKD WO/SALT^11-181^ears^126^55^N
	;;^UTILITY(U,$J,112,1044,1)
	;;=3.11^.74^22.33^93^73.2^^^3^.61^29^75^251^4^.63^.046^.142^^211^4.8^.174
	;;^UTILITY(U,$J,112,1044,2)
	;;=.069^1.517^.25^.224^30.5^0^.338^.01^0^.114^.216^.348^21^.62
	;;^UTILITY(U,$J,112,1044,3)
	;;=.022^.125^.125^.336^.132^.065^.025^.145^.119^.179^.126^.086^.285^.236^.615^.123^.282^.148
	;;^UTILITY(U,$J,112,1044,4)
	;;=^^^.107^^.007^.216
	;;^UTILITY(U,$J,112,1044,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1046,0)
	;;=FLOUR, CORN, YELLOW VARIETY^20-316^tbsp.^7.3^100^N
	;;^UTILITY(U,$J,112,1046,1)
	;;=6.93^3.86^76.85^361^10.91^^^7^2.38^93^272^315^5^1.73^.23^.46^^0^0^.246
	;;^UTILITY(U,$J,112,1046,2)
	;;=.08^1.9^.658^^25^0^1.706^.053^0^.543^1.018^1.759^0^1.45^^^9.6
	;;^UTILITY(U,$J,112,1046,3)
	;;=.049^.261^.248^.85^.195^.145^.125^.34^.282^.351^.345^.211^.518^.482^1.3^.284^.605^.329
	;;^UTILITY(U,$J,112,1046,4)
	;;=^^^.463^.003^.061^1.015
	;;^UTILITY(U,$J,112,1046,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1047,0)
	;;=FLOUR, CORN, WHITE VARIETY^860-2^tbsp.^7.3^^N
	;;^UTILITY(U,$J,112,1047,1)
	;;=7.8^2.6^76.8^368^12^^^6^1.8^^164^231^1^^^^^0^0^.2
	;;^UTILITY(U,$J,112,1047,2)
	;;=.06^1.4^^^^^1.14^^0^.29
	;;^UTILITY(U,$J,112,1047,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1048,0)
	;;=CORN FRITTERS, YELLOW VARIETY^861-1^fritters^35^100^N
	;;^UTILITY(U,$J,112,1048,1)
	;;=7.8^21.5^39.7^377^29.1^^^64^1.7^^155^133^477^^^^^400^2^.23
	;;^UTILITY(U,$J,112,1048,2)
	;;=.25^2.2^^^^^4.34^^88^5.81^^^^1.9
	;;^UTILITY(U,$J,112,1048,4)
	;;=^^^^^^10.32
	;;^UTILITY(U,$J,112,1048,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1049,0)
	;;=CORN FRITTERS, WHITE VARIETY^861-2^fritters^35^100^N
	;;^UTILITY(U,$J,112,1049,1)
	;;=7.8^21.5^39.7^377^29.1^^^64^1.7^^155^133^477^^^^^230^2^.23
	;;^UTILITY(U,$J,112,1049,2)
	;;=.25^2.2^^^^^4.34^^88^5.81^^^^1.9
	;;^UTILITY(U,$J,112,1049,4)
	;;=^^^^^^10.32
	;;^UTILITY(U,$J,112,1049,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1050,0)
	;;=CORN PUDDING^11-656^cups^245^100^N
	;;^UTILITY(U,$J,112,1050,1)
	;;=4.39^5.32^12.76^109^76.32^^^40^.56^15^57^161^55^.5^.043^.536^^246^2.8^.413
	;;^UTILITY(U,$J,112,1050,2)
	;;=.128^.987^.246^.118^25.3^.09^.626^.058^100^2.537^1.721^.684^36^1.2
	;;^UTILITY(U,$J,112,1050,3)
	;;=.053^.198^.235^.43^.263^.117^.065^.224^.182^.287^.217^.115^.295^.377^.752^.147^.311^.268
	;;^UTILITY(U,$J,112,1050,4)
	;;=.079^.088^.321^1.269^.126^.517^1.547
	;;^UTILITY(U,$J,112,1050,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,1051,0)
	;;=CORNBREAD, HOME REC, WHL GRND YEL MEAL^876-4^pieces^78^100^N
	;;^UTILITY(U,$J,112,1051,1)
	;;=7.4^7.2^29.1^207^53.9^^^120^1.1^^211^157^628^^^^^310^1^.13
	;;^UTILITY(U,$J,112,1051,2)
	;;=.19^.6^^^^^1.61^^77^1.76^^^^2.4
	;;^UTILITY(U,$J,112,1051,4)
	;;=^^^^^^3.28
	;;^UTILITY(U,$J,112,1051,20)
	;;=USDA  Std. Reference, Release 8
	;;^UTILITY(U,$J,112,1052,0)
	;;=CORNBREAD, JOHNNYCAKE, HOME REC, ENR^18-024^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,1052,1)
	;;=6.7^7.1^43.5^266^39.1^^^249^2.5^25^169^147^658^.6^.051^.118^^277^.3^.291
	;;^UTILITY(U,$J,112,1052,2)
	;;=.294^2.254^.339^.113^19^.15^2.841^.349^40^1.555^1.83^3.206^54^3.6
	;;^UTILITY(U,$J,112,1052,3)
	;;=.067^.259^.29^.678^.296^.152^.117^.33^.268^.357^.312^.181^.372^.472^1.376^.231^.571^.356
	;;^UTILITY(U,$J,112,1052,4)
	;;=.021^.025^.093^.991^.056^.362^1.759^.012
	;;^UTILITY(U,$J,112,1052,20)
	;;=USDA Std. Reference, Release 10
