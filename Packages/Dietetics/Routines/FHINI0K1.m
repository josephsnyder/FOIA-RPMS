FHINI0K1	; ; 11-OCT-1995
	;;5.0;Dietetics;;Oct 11, 1995
	Q:'DIFQR(114)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,114,425,"E",0)
	;;=^114.05P^1^1
	;;^UTILITY(U,$J,114,425,"E",1,0)
	;;=6
	;;^UTILITY(U,$J,114,425,"I",0)
	;;=^114.01PA^2^2
	;;^UTILITY(U,$J,114,425,"I",1,0)
	;;=331^2.25^1156^2.25
	;;^UTILITY(U,$J,114,425,"I",2,0)
	;;=847^1.25^2021
	;;^UTILITY(U,$J,114,425,"X",0)
	;;=^^3^3^2890727^^
	;;^UTILITY(U,$J,114,425,"X",1,0)
	;;=1) BRING WATER TO BOILING.
	;;^UTILITY(U,$J,114,425,"X",2,0)
	;;=2) ADD CEREAL GRADUALLY, STIRRING TO PREVENT LUMPING.
	;;^UTILITY(U,$J,114,425,"X",3,0)
	;;=3) BRING TO BOIL AND COOK REQUIRED TIME, STRRING AS NEEDED..
	;;^UTILITY(U,$J,114,426,0)
	;;=OYSTER CRACKERS IND^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,426,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,426,"I",1,0)
	;;=629^1
	;;^UTILITY(U,$J,114,427,0)
	;;=RYE CRACKERS IND^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,427,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,427,"I",1,0)
	;;=643^1
	;;^UTILITY(U,$J,114,428,0)
	;;=MELBA ROUNDS^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,428,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,428,"I",1,0)
	;;=644^1
	;;^UTILITY(U,$J,114,429,0)
	;;=SUGAR IND^1^1-EACH^^^^13^N^^^I^^.004
	;;^UTILITY(U,$J,114,429,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,429,"I",1,0)
	;;=647^1^1906
	;;^UTILITY(U,$J,114,430,0)
	;;=JAM, ASSORTED IND^1^1-EACH^^^^13^N^^^I
	;;^UTILITY(U,$J,114,430,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,430,"I",1,0)
	;;=715^1^1262
	;;^UTILITY(U,$J,114,431,0)
	;;=SKIM MILK, IND^1^1-EACH^^^^11^N
	;;^UTILITY(U,$J,114,431,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,431,"I",1,0)
	;;=980^1^82
	;;^UTILITY(U,$J,114,432,0)
	;;=GINGER ALE, IND^1^1-EACH^^^^11^N^^^I^^.17
	;;^UTILITY(U,$J,114,432,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,432,"I",1,0)
	;;=948^1^798^.807
	;;^UTILITY(U,$J,114,433,0)
	;;=HONEY, IND^1^1-EACH^^^^13^N^^^I
	;;^UTILITY(U,$J,114,433,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,433,"I",1,0)
	;;=930^1^1258
	;;^UTILITY(U,$J,114,434,0)
	;;=OATMEAL^50^4-FLOZ^20 MIN^^9^2^N^C-63^^S^^.013
	;;^UTILITY(U,$J,114,434,"E",0)
	;;=^114.05P^1^1
	;;^UTILITY(U,$J,114,434,"E",1,0)
	;;=6
	;;^UTILITY(U,$J,114,434,"I",0)
	;;=^114.01PA^3^3
	;;^UTILITY(U,$J,114,434,"I",1,0)
	;;=55^2.25^1171^2.25
	;;^UTILITY(U,$J,114,434,"I",2,0)
	;;=847^1.25^2021
	;;^UTILITY(U,$J,114,434,"I",3,0)
	;;=230^.09375^1598^.09375
	;;^UTILITY(U,$J,114,434,"X",0)
	;;=^^3^3^2950203^^
	;;^UTILITY(U,$J,114,434,"X",1,0)
	;;=1) ADD SALT TO WATER. BRING TO BOIL.
	;;^UTILITY(U,$J,114,434,"X",2,0)
	;;=2) ADD CEREAL GRADUALLY, STIRRING TO PREVENT LUMPING.
	;;^UTILITY(U,$J,114,434,"X",3,0)
	;;=3) BRING TO BOIL AND COOKREQUIRED TIME. STIRRING AS NEEDED.
	;;^UTILITY(U,$J,114,435,0)
	;;=BANANA IND^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,435,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,435,"I",1,0)
	;;=755^1^1635
	;;^UTILITY(U,$J,114,437,0)
	;;=LS OATMEAL^50^4-FLOZ^20 MIN^^9^2^N^C-64^^S^^.013
	;;^UTILITY(U,$J,114,437,"E",0)
	;;=^114.05P^1^1
	;;^UTILITY(U,$J,114,437,"E",1,0)
	;;=6
	;;^UTILITY(U,$J,114,437,"I",0)
	;;=^114.01PA^2^2
	;;^UTILITY(U,$J,114,437,"I",1,0)
	;;=55^2.25^1171^2.25
	;;^UTILITY(U,$J,114,437,"I",2,0)
	;;=847^1.25^2021
	;;^UTILITY(U,$J,114,437,"X",0)
	;;=^^3^3^2890727^
	;;^UTILITY(U,$J,114,437,"X",1,0)
	;;=1) HEAT WATER TO BOILING.
	;;^UTILITY(U,$J,114,437,"X",2,0)
	;;=2) GRADUALLY ADD CEREAL. STIRRING TO PREVENT LUMPING.
	;;^UTILITY(U,$J,114,437,"X",3,0)
	;;=3) BRING TO BOILING AND COOK REQUIRED TIME. STIRRING AS NEEDED.
	;;^UTILITY(U,$J,114,439,0)
	;;=DONUT^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,439,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,439,"I",1,0)
	;;=786^1^1096
	;;^UTILITY(U,$J,114,440,0)
	;;=DANISH^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,440,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,440,"I",1,0)
	;;=783^1^1569
	;;^UTILITY(U,$J,114,441,0)
	;;=LIME SHERBERT IND^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,441,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,441,"I",1,0)
	;;=812^1^65
	;;^UTILITY(U,$J,114,442,0)
	;;=LEMON WEDGE^1^1-EACH^^^^13^N^^^I
	;;^UTILITY(U,$J,114,442,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,442,"I",1,0)
	;;=809^1^2806^.53
	;;^UTILITY(U,$J,114,443,0)
	;;=CHEESE FLAV CRAX IND^1^1-EACH^^^^3^N
	;;^UTILITY(U,$J,114,443,"I",0)
	;;=^114.01PA^1^1
	;;^UTILITY(U,$J,114,443,"I",1,0)
	;;=926^1^1074
	;;^UTILITY(U,$J,114,444,0)
	;;=WHOLE WHEAT MEAL^50^4-FLOZ^20 MIN^^9^2^N^C-66^^S^^.042
	;;^UTILITY(U,$J,114,444,"E",0)
	;;=^114.05P^1^1
	;;^UTILITY(U,$J,114,444,"E",1,0)
	;;=6
	;;^UTILITY(U,$J,114,444,"I",0)
	;;=^114.01PA^3^3
	;;^UTILITY(U,$J,114,444,"I",1,0)
	;;=64^3^1180^3
	;;^UTILITY(U,$J,114,444,"I",2,0)
	;;=847^2.33333^2021
	;;^UTILITY(U,$J,114,444,"I",3,0)
	;;=230^.09375^1598^.09375
	;;^UTILITY(U,$J,114,444,"X",0)
	;;=^^3^3^2890727^