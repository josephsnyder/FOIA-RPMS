FHINI0FO	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(112)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,112,9616,0)
	;;=SOUPS,CHICKEN RICE,SPECIAL REQUEST^BC-02889^8-oz.^226
	;;^UTILITY(U,$J,112,9616,1)
	;;=1.15^.885^2.92^24.336^^^^6.637^.177^^^87.611^211.504^^^^^236.726^0^.004
	;;^UTILITY(U,$J,112,9616,2)
	;;=.009^.354^^^^^^^2.655^.265^^.221
	;;^UTILITY(U,$J,112,9616,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9617,0)
	;;=SOUPS,CHICKEN VEG,CAMPBELL'S^BC-02890^8-oz.^226
	;;^UTILITY(U,$J,112,9617,1)
	;;=1.327^1.062^3.319^28.319^^^^7.965^.354^^^45.575^377.434^^^^^1282.743^.442^.022
	;;^UTILITY(U,$J,112,9617,2)
	;;=.027^.487^^^^^^^3.982^.265^^.221
	;;^UTILITY(U,$J,112,9617,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9618,0)
	;;=SOUPS,CHICKEN VEG W/WILD RICE,GOLDEN CLASSIC^BC-02891^8-oz.^226
	;;^UTILITY(U,$J,112,9618,1)
	;;=1.416^.885^5.487^35.398^^^^8.85^.221^^^53.982^315.929^^^^^550.885^.885^.022
	;;^UTILITY(U,$J,112,9618,2)
	;;=.04^.575
	;;^UTILITY(U,$J,112,9618,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9619,0)
	;;=SOUPS,CHILI BEEF W/BEANS,CAMPBELL'S^BC-02985^7.5-oz.^213
	;;^UTILITY(U,$J,112,9619,1)
	;;=2.582^2.3^7.84^62.441^^^^19.718^.798^^^142.254^452.582^^^^^338.967^0^.033
	;;^UTILITY(U,$J,112,9619,2)
	;;=.019^.329^^^^^^^3.982^1.062^^.265
	;;^UTILITY(U,$J,112,9619,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9620,0)
	;;=SOUPS,CLAM CHOWDER,MANHATTAO STYLE,CAMPBELL'S^BC-02893^8-oz.^226
	;;^UTILITY(U,$J,112,9620,1)
	;;=.885^.796^4.646^29.204^^^^9.735^.354^^^100.442^362.389^^^^^753.54^2.655^.009
	;;^UTILITY(U,$J,112,9620,2)
	;;=.018^.354^^^^^^^.442^.221^^.31
	;;^UTILITY(U,$J,112,9620,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9621,0)
	;;=SOUPS,CLAM CHOWDER,NEW ENGLAND STYLE,CAMPBELL'S^BC-02894^8-oz.^226
	;;^UTILITY(U,$J,112,9621,1)
	;;=1.726^.973^4.956^35.398^^^^11.062^.398^^^49.115^388.053^^^^^.442^.885^.004
	;;^UTILITY(U,$J,112,9621,2)
	;;=.013^.265^^^^^^^1.327^.221^^.31
	;;^UTILITY(U,$J,112,9621,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9622,0)
	;;=SOUPS,CONSOMME W/GELATIN,CAMPBELL'S^BC-02895^8-oz.^226
	;;^UTILITY(U,$J,112,9622,1)
	;;=1.858^.044^.487^9.735^^^^3.097^.177^^^24.779^332.743^^^^^0^0^.009
	;;^UTILITY(U,$J,112,9622,2)
	;;=.018^.398^^^^^^^0
	;;^UTILITY(U,$J,112,9622,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9623,0)
	;;=SOUPS,CURLY NOODLE W/CHICKEN,CAMPBELL'S^BC-02896^8-oz.^226
	;;^UTILITY(U,$J,112,9623,1)
	;;=1.46^1.018^3.673^29.646^^^^5.752^.354^^^30.531^423.894^^^^^611.062^0^.031
	;;^UTILITY(U,$J,112,9623,2)
	;;=.031^.531^^^^^^^5.31^.221^^.221
	;;^UTILITY(U,$J,112,9623,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9624,0)
	;;=SOUPS,FRENCH ONION,CAMPBELL'S^BC-02897^8-oz.^226
	;;^UTILITY(U,$J,112,9624,1)
	;;=1.018^.796^3.496^25.221^^^^10.177^.221^^^57.965^399.115^^^^^0^.885^.018
	;;^UTILITY(U,$J,112,9624,2)
	;;=.013^.265^^^^^^^.442^.133^^.133
	;;^UTILITY(U,$J,112,9624,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9625,0)
	;;=SOUPS,GARDEN VEG,CAMPBELL'S^BC-02898^cup^233
	;;^UTILITY(U,$J,112,9625,1)
	;;=.944^.773^4.163^27.039^^^^7.725^.258^^^71.674^343.777^^^^^1487.124^1.288^.013
	;;^UTILITY(U,$J,112,9625,2)
	;;=.017^.343
	;;^UTILITY(U,$J,112,9625,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9626,0)
	;;=SOUPS,GAZPACHO,CRISPY CAMPBELL'S^BC-02899^8-oz.^226
	;;^UTILITY(U,$J,112,9626,1)
	;;=.398^.088^3.894^18.142^^^^12.832^.31^^^93.805^257.965^^^^^907.08^2.655^.013
	;;^UTILITY(U,$J,112,9626,2)
	;;=.013^.221^^^^^^^0^.044^^.044
	;;^UTILITY(U,$J,112,9626,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9627,0)
	;;=SOUPS,MEATBALL ALPHABET W/VEG,CAMPBELL'S^BC-02900^8-oz.^226
	;;^UTILITY(U,$J,112,9627,1)
	;;=2.124^1.681^4.912^43.363^^^^7.08^.442^^^70.354^397.345^^^^^823.451^.885^.027
	;;^UTILITY(U,$J,112,9627,2)
	;;=.031^.619^^^^^^^3.097^1.018^^.221
	;;^UTILITY(U,$J,112,9627,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9628,0)
	;;=SOUPS,MINESTRONE,CAMPBELL'S,PREP W/WATER^BC-02901^8-oz.^226
	;;^UTILITY(U,$J,112,9628,1)
	;;=1.416^.664^5.531^34.071^^^^11.504^.442^^^82.743^397.788^^^^^979.646^1.327^.027
	;;^UTILITY(U,$J,112,9628,2)
	;;=.022^.442^^^^^^^.442^.31^^.044^^^^^1.15
	;;^UTILITY(U,$J,112,9628,20)
	;;=Bowes & Church's Food Values, Sixteenth Edition.
	;;^UTILITY(U,$J,112,9629,0)
	;;=SOUPS,MUSHROOM CHICKEN,CREAMY,CAMPBELL'S^BC-02902^8-oz.^226
	;;^UTILITY(U,$J,112,9629,1)
	;;=1.504^3.186^3.584^49.115^^^^9.292^.221^^^40.265^408.407^^^^^352.212^0^.004
