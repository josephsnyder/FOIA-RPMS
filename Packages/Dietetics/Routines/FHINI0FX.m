FHINI0FX	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,9743,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9744,0)
	;;=SOUPS,PEA,SPLIT,'N HAM,CHUNKY,CAMPBELL'S^BC-03017^9.5-oz.^269
	;;^UTILITY(U,$J,112,9744,1)
	;;=4.201^1.599^10.818^74.721^^^^12.268^.781^^^176.208^353.532^^^^^1533.829^2.602^.052
	;;^UTILITY(U,$J,112,9744,2)
	;;=.041^.855^^^^^^^^^^^^^^^1.747
	;;^UTILITY(U,$J,112,9744,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9745,0)
	;;=SOUPS,PEA,SPLIT,'N HAM,LUNCH BUCKET^BC-03018^8.25-oz.^234
	;;^UTILITY(U,$J,112,9745,1)
	;;=3.419^1.282^7.692^55.556^^^^^^^^^303.419
	;;^UTILITY(U,$J,112,9745,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9746,0)
	;;=SOUPS,PEA,SPLIT,PROGRESSO^BC-03019^9.5-oz.^269
	;;^UTILITY(U,$J,112,9746,1)
	;;=4.089^.743^11.152^70.632^^^^^^^^159.851^390.335
	;;^UTILITY(U,$J,112,9746,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9747,0)
	;;=SOUPS,PEA,SPLIT,W/HAM,HOME COOKIN'^BC-03020^10.8-oz.^305
	;;^UTILITY(U,$J,112,9747,1)
	;;=5.148^.82^10.852^71.475^^^^13.77^.918^^^164.59^392.459^^^^^770.492^1.639^.056
	;;^UTILITY(U,$J,112,9747,2)
	;;=.049^1.016^^^^^^^^^^^^^^^2.656
	;;^UTILITY(U,$J,112,9747,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9748,0)
	;;=SOUPS,PEA,SPLIT,W/HAM,PROGRESSO^BC-03021^9.5-oz.^269
	;;^UTILITY(U,$J,112,9748,1)
	;;=3.717^1.487^9.665^63.197^^^^^^^^141.264^382.9
	;;^UTILITY(U,$J,112,9748,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9749,0)
	;;=SOUPS,PEPPER STEAK,CHUNKY,CAMPBELL'S^BC-03022^10.8-oz.^305
	;;^UTILITY(U,$J,112,9749,1)
	;;=4.754^.852^7.803^57.705^^^^11.148^.787^^^113.115^343.607^^^^^969.18^3.607^.02
	;;^UTILITY(U,$J,112,9749,2)
	;;=.052^.787
	;;^UTILITY(U,$J,112,9749,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9750,0)
	;;=SOUPS,SIRLOIN BURGER,CHUNKY,CAMPBELL'S^BC-03023^9.5-oz.^269
	;;^UTILITY(U,$J,112,9750,1)
	;;=4.126^2.788^7.621^72.119^^^^12.639^.892^^^151.301^398.141^^^^^1971.004^3.346^.019
	;;^UTILITY(U,$J,112,9750,2)
	;;=.059^1.078
	;;^UTILITY(U,$J,112,9750,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9751,0)
	;;=SOUPS,STEAK 'N POTATO,CHUNKY,CAMPBELL'S^BC-03024^9.5-oz.^269
	;;^UTILITY(U,$J,112,9751,1)
	;;=4.758^1.45^7.695^62.825^^^^5.948^.818^^^153.532^371.747^^^^^21.561^2.23^.019
	;;^UTILITY(U,$J,112,9751,2)
	;;=.071^1.078
	;;^UTILITY(U,$J,112,9751,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9752,0)
	;;=SOUPS,TOMATO,CAMPBELL'S^BC-03025^7.3-oz.^206
	;;^UTILITY(U,$J,112,9752,1)
	;;=1.068^.874^9.903^51.456^^^^16.019^.437^^^134.951^381.068^^^^^333.495^14.563^.024
	;;^UTILITY(U,$J,112,9752,2)
	;;=.024^.534
	;;^UTILITY(U,$J,112,9752,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9753,0)
	;;=SOUPS,TOMATO,CRM,HOMESTYLE^BC-03026^8-oz.^227
	;;^UTILITY(U,$J,112,9753,1)
	;;=.529^1.63^9.383^54.626^^^^21.586^.308^^^125.551^358.59^^^^^231.278^2.203^.031
	;;^UTILITY(U,$J,112,9753,2)
	;;=.035^.441
	;;^UTILITY(U,$J,112,9753,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9754,0)
	;;=SOUPS,TOMATO,GARDEN,HOME COOKIN'^BC-03027^9.5-oz.^269
	;;^UTILITY(U,$J,112,9754,1)
	;;=1.301^.929^9.368^50.929^^^^28.625^.632^^^133.086^303.717^^^^^909.665^2.974^.041
	;;^UTILITY(U,$J,112,9754,2)
	;;=.041^.483
	;;^UTILITY(U,$J,112,9754,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9755,0)
	;;=SOUPS,TOMATO,LOW NA,CAMPBELL'S^BC-03028^7.3-oz.^206
	;;^UTILITY(U,$J,112,9755,1)
	;;=1.311^1.796^11.117^65.534^^^^18.932^.485^^^183.495^14.078^^^^^458.738^15.049^.029
	;;^UTILITY(U,$J,112,9755,2)
	;;=.039^.68
	;;^UTILITY(U,$J,112,9755,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9756,0)
	;;=SOUPS,TOMATO,ROYALE,CAMPBELL'S SOUP-FOR-ONE^BC-03029^7.8-oz.^220
	;;^UTILITY(U,$J,112,9756,1)
	;;=1.5^1.227^15.682^80^^^^15.455^.591^^^218.182^584.545^^^^^504.091^5.455^.032
	;;^UTILITY(U,$J,112,9756,2)
	;;=.041^.818
	;;^UTILITY(U,$J,112,9756,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9757,0)
	;;=SOUPS,TOMATO W/MACARONI SHELLS,PROGRESSO^BC-03030^10.5-oz.^298
	;;^UTILITY(U,$J,112,9757,1)
	;;=1.342^.671^8.054^43.624^^^^^^^^^426.174
	;;^UTILITY(U,$J,112,9757,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9758,0)
	;;=SOUPS,TOMATO W/TOMATO PIECES,LOW NA,CAMPBELL'S^BC-03031^7.3-oz.^206
	;;^UTILITY(U,$J,112,9758,1)
	;;=1.262^1.796^10^61.165^^^^14.563^.534^^31.068^203.883^16.019^^^^^512.621^13.107^.053
