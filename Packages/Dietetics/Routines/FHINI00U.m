FHINI00U	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,131,1)
	;;=12^3.31^.64^84.057^82.75^^^53^2.1^8.72^121^330^177^1.3^.023^.007^^2160^0^.11
	;;^UTILITY(U,$J,112,131,2)
	;;=.3^.11^2.7^.003^14.9^.298^1.406^.184^1^.659^.896^1.603^216^1.3^^^0
	;;^UTILITY(U,$J,112,131,3)
	;;=.191^.553^.748^1.082^.788^.425^.292^.766^.495^.887^.784^.296^.762^1.197^1.897^.492^.525^.881
	;;^UTILITY(U,$J,112,131,4)
	;;=0^.003^.006^.35^.003^.308^.894^0
	;;^UTILITY(U,$J,112,131,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,132,0)
	;;=EGG SUBSTITUTE, POWDER^1-144^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,132,1)
	;;=55.5^13^21.8^443.606^3.86^^^326^3.16^64.9^478^744^800^1.82^.207^.08^^1228^.75^.226
	;;^UTILITY(U,$J,112,132,2)
	;;=1.76^.577^3.384^.143^125^3.523^1.413^.086^572^3.766^5.341^1.683^369^5.84^^^0
	;;^UTILITY(U,$J,112,132,3)
	;;=1.118^3.275^4.42^6.29^4.529^2.71^1.775^4.443^2.918^5.359^4.293^1.66^4.563^6.537^9.888^2.64^2.742^5.353
	;;^UTILITY(U,$J,112,132,4)
	;;=0^0^.065^2.687^.496^.993^4.845^.109
	;;^UTILITY(U,$J,112,132,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,133,0)
	;;=BUTTER, WO/SALT^1-145^pats^5^100^N
	;;^UTILITY(U,$J,112,133,1)
	;;=.85^81.11^.06^716.818^17.94^^^23.5^.16^2.18^22.8^26^11^.05^.016^.004^1.6^3058^0^.005
	;;^UTILITY(U,$J,112,133,2)
	;;=.034^.042^.11^.003^2.8^.125^1.832^1.18^218.9^50.489^23.426^3.012^754^.04^^^0^1.6
	;;^UTILITY(U,$J,112,133,3)
	;;=.012^.038^.051^.083^.067^.021^.008^.041^.041^.057^.031^.023^.029^.064^.178^.018^.082^.046
	;;^UTILITY(U,$J,112,133,4)
	;;=2.034^2.277^8.157^21.334^1.816^9.829^20.405^0
	;;^UTILITY(U,$J,112,133,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,134,0)
	;;=CHEESE, PARMESAN, SHREDDED^1-146^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,134,1)
	;;=37.86^27.34^3.41^415^25^^^1253^.87^50.8^735^97^1696^3.19^.037^.023^^639^0^.041
	;;^UTILITY(U,$J,112,134,2)
	;;=.352^.287^.527^.105^8^1.4^.29^.345^72^17.37^8.734^.661^173^6.39^^^0
	;;^UTILITY(U,$J,112,134,3)
	;;=.56^1.531^2.202^4.013^3.843^1.114^.274^2.234^2.319^2.853^1.531^1.609^1.218^2.599^9.543^.723^4.86^2.404
	;;^UTILITY(U,$J,112,134,4)
	;;=.753^1.015^3.383^8.096^.458^2.675^7.05^0
	;;^UTILITY(U,$J,112,134,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,135,0)
	;;=MILK, SKIM, PAST & RAW, FLUID, WO/ADDED VIT A^1-151^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,135,1)
	;;=3.41^.18^4.85^34.912^90.8^^^123.4^.04^11.36^100.9^165.6^51.5^.4^.011^.002^^7^.98^.036
	;;^UTILITY(U,$J,112,135,2)
	;;=.14^.088^.329^.04^5.2^.378^.005^.002^1.8^.117^.047^.007^61^.76^^^0
	;;^UTILITY(U,$J,112,135,3)
	;;=.048^.154^.206^.334^.27^.086^.032^.165^.165^.228^.123^.092^.118^.259^.714^.072^.33^.185
	;;^UTILITY(U,$J,112,135,4)
	;;=.004^.003^.017^.053^.007^.019^.038^0
	;;^UTILITY(U,$J,112,135,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,136,0)
	;;=MILK, LOWFAT, PAST & RAW, W/2% ADDED NFMS, WO/VIT A^1-152^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,136,1)
	;;=3.95^1.98^5.49^55.517^87.71^^^143.1^.06^14.51^112^181.7^58.8^.41^.011^.002^^75^1.12^.045
	;;^UTILITY(U,$J,112,136,2)
	;;=.194^.101^.339^.046^5.4^.386^.045^.003^7.7^1.232^.065^.009^61^.87^^^0
	;;^UTILITY(U,$J,112,136,3)
	;;=.05^.161^.216^.35^.283^.09^.033^.172^.172^.239^.129^.097^.123^.271^.748^.076^.346^.194
	;;^UTILITY(U,$J,112,136,4)
	;;=.005^.003^.024^.073^.009^.026^.498^0
	;;^UTILITY(U,$J,112,136,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,137,0)
	;;=MILK, CND, EVAPORATED, UNSW, W/ADDED VIT A^1-153^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,137,1)
	;;=6.81^7.56^10.04^134.386^74.04^^^260.8^.19^24.19^202.5^303.1^105.8^.77^.016^.006^^397^1.88^.047
	;;^UTILITY(U,$J,112,137,2)
	;;=.316^.194^.638^.05^7.9^.163^.167^.078^29.4^4.591^2.335^.245^54^1.55^^^0
	;;^UTILITY(U,$J,112,137,3)
	;;=.096^.307^.412^.667^.54^.171^.063^.329^.329^.456^.247^.185^.235^.517^1.426^.144^.66^.37
	;;^UTILITY(U,$J,112,137,4)
	;;=.11^.161^.733^2.027^.159^.921^2.101^0
	;;^UTILITY(U,$J,112,137,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,138,0)
	;;=MILK, DRY, SKIM, NON-FAT SOLIDS, REGULAR, W/ADDED VIT A^1-154^oz.^28.3^100^N
	;;^UTILITY(U,$J,112,138,1)
	;;=36.16^.77^51.98^362.334^3.16^^^1256.9^.32^110.1^968.2^1794.1^535.3^4.08^.041^.02^^2198^6.76^.415
	;;^UTILITY(U,$J,112,138,2)
	;;=1.55^.951^3.568^.361^50.1^4.033^.019^.011^19.6^.499^.201^.03^8^7.93^^^0
	;;^UTILITY(U,$J,112,138,3)
	;;=.51^1.632^2.188^3.542^2.868^.907^.334^1.746^1.746^2.42^1.309^.981^1.247^2.743^7.572^.765^3.503^1.967
	;;^UTILITY(U,$J,112,138,4)
	;;=.018^.014^.083^.235^.022^.085^.167^0
	;;^UTILITY(U,$J,112,138,20)
	;;=USDA Std. Reference, Release 10
	;;^UTILITY(U,$J,112,139,0)
	;;=MILK, DRY, SKIM, NON-FAT SOLIDS, INSTANT, WO/ADDED VIT A^1-155^oz.^28.3^100^N
