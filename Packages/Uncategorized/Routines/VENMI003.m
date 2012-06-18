VENMI003 ; ; 28-NOV-2006
 ;;2.6;PCC+;;NOV 12, 2007
 Q:'DIFQ(9000010.46)  F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,999) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^DD(9000010.46,80102,23,7,0)
 ;;=automatically used if the filing logic finds the data has been edited.  If
 ;;^DD(9000010.46,80102,23,8,0)
 ;;="E" is used, then the Edited Flag field is automatically set to 1.
 ;;^DD(9000010.46,80102,23,9,0)
 ;;=  
 ;;^DD(9000010.46,80102,23,10,0)
 ;;=The DUZ is stored in its internal format to represent the user who
 ;;^DD(9000010.46,80102,23,11,0)
 ;;=performed the addition or editing of data for this record.
 ;;^DD(9000010.46,80102,23,12,0)
 ;;= 
 ;;^DD(9000010.46,80102,23,13,0)
 ;;=Iterations of editing will be concatenated to the previous Data Source
 ;;^DD(9000010.46,80102,23,14,0)
 ;;=value, up to 85 characters.
 ;;^DD(9000010.46,80102,23,15,0)
 ;;=
 ;;^DD(9000010.46,80102,"DT")
 ;;=2960509
 ;;^DD(9000010.46,81101,0)
 ;;=COMMENTS^F^^811;1^K:$L(X)>245!($L(X)<1) X
 ;;^DD(9000010.46,81101,3)
 ;;=Enter a comment 1-245 characters in length.
 ;;^DD(9000010.46,81101,21,0)
 ;;=^^2^2^2950901^
 ;;^DD(9000010.46,81101,21,1,0)
 ;;=This is a comment related to the patient's exam.  The provider may enter this
 ;;^DD(9000010.46,81101,21,2,0)
 ;;=manually via the PCE User Interface.
 ;;^DD(9000010.46,81101,"DT")
 ;;=2950711
 ;;^DD(9000010.46,81201,0)
 ;;=VERIFIED^SI^1:ELECTRONICALLY SIGNED;2:VERIFIED BY PACKAGE;^812;1^Q
 ;;^DD(9000010.46,81201,"DT")
 ;;=2960509
 ;;^DD(9000010.46,81202,0)
 ;;=PACKAGE^P9.4'I^DIC(9.4,^812;2^Q
 ;;^DD(9000010.46,81202,"DT")
 ;;=2960509
 ;;^DD(9000010.46,81203,0)
 ;;=DATA SOURCE^P839.7'I^PX(839.7,^812;3^Q
 ;;^DD(9000010.46,81203,"DT")
 ;;=2960509
 ;;^DD(9000010.461,0)
 ;;=ANTICIPATORY GUIDANCE TOPICS SUB-FIELD^^.01^1
 ;;^DD(9000010.461,0,"DT")
 ;;=3051007
 ;;^DD(9000010.461,0,"IX","B",9000010.461,.01)
 ;;=
 ;;^DD(9000010.461,0,"NM","ANTICIPATORY GUIDANCE TOPICS")
 ;;=
 ;;^DD(9000010.461,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.461,.01,0)
 ;;=ANTICIPATORY GUIDANCE TOPICS^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.461,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.461,.01,1,1,0)
 ;;=9000010.461^B
 ;;^DD(9000010.461,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),1,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.461,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),1,"B",$E(X,1,30),DA)
 ;;^DD(9000010.461,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.461,.01,"DT")
 ;;=3051007
 ;;^DD(9000010.464,0)
 ;;=SPECIAL RISK SCREEN SUB-FIELD^^.02^2
 ;;^DD(9000010.464,0,"DT")
 ;;=3051226
 ;;^DD(9000010.464,0,"IX","B",9000010.464,.01)
 ;;=
 ;;^DD(9000010.464,0,"NM","SPECIAL RISK SCREEN")
 ;;=
 ;;^DD(9000010.464,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.464,.01,0)
 ;;=SPECIAL SCREENING EXAMS^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.464,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.464,.01,1,1,0)
 ;;=9000010.464^B
 ;;^DD(9000010.464,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),4,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.464,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),4,"B",$E(X,1,30),DA)
 ;;^DD(9000010.464,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.464,.01,"DT")
 ;;=3051007
 ;;^DD(9000010.464,.02,0)
 ;;=RESULT^S^N:NORMAL;A:ABNORMAL;^0;2^Q
 ;;^DD(9000010.464,.02,"DT")
 ;;=3051226
 ;;^DD(9000010.465,0)
 ;;=NUTRITION TOPICS SUB-FIELD^^.01^1
 ;;^DD(9000010.465,0,"DT")
 ;;=3051007
 ;;^DD(9000010.465,0,"IX","B",9000010.465,.01)
 ;;=
 ;;^DD(9000010.465,0,"NM","NUTRITION TOPICS")
 ;;=
 ;;^DD(9000010.465,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.465,.01,0)
 ;;=NUTRITION TOPICS^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.465,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.465,.01,1,1,0)
 ;;=9000010.465^B
 ;;^DD(9000010.465,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),5,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.465,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),5,"B",$E(X,1,30),DA)
 ;;^DD(9000010.465,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.465,.01,"DT")
 ;;=3051007
 ;;^DD(9000010.466,0)
 ;;=AGE SPECIFIC PHYSICAL EXAM SUB-FIELD^^.02^2
 ;;^DD(9000010.466,0,"DT")
 ;;=3051226
 ;;^DD(9000010.466,0,"IX","B",9000010.466,.01)
 ;;=
 ;;^DD(9000010.466,0,"NM","AGE SPECIFIC PHYSICAL EXAM")
 ;;=
 ;;^DD(9000010.466,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.466,.01,0)
 ;;=AGE-SPECIFIC PHYSICAL EXAM^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.466,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.466,.01,1,1,0)
 ;;=9000010.466^B
 ;;^DD(9000010.466,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),6,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.466,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),6,"B",$E(X,1,30),DA)
 ;;^DD(9000010.466,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.466,.01,"DT")
 ;;=3051226
 ;;^DD(9000010.466,.02,0)
 ;;=RESULT^S^A:ABNORMAL;N:NORMAL;^0;2^Q
 ;;^DD(9000010.466,.02,"DT")
 ;;=3051226
 ;;^DD(9000010.467,0)
 ;;=BEHAVIORAL HEALTH SCREEN SUB-FIELD^^.02^2
 ;;^DD(9000010.467,0,"DT")
 ;;=3051226
 ;;^DD(9000010.467,0,"IX","B",9000010.467,.01)
 ;;=
 ;;^DD(9000010.467,0,"NM","BEHAVIORAL HEALTH SCREEN")
 ;;=
 ;;^DD(9000010.467,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.467,.01,0)
 ;;=BEHAVIORAL HEALTH SCREEN^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.467,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.467,.01,1,1,0)
 ;;=9000010.467^B
 ;;^DD(9000010.467,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),7,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.467,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),7,"B",$E(X,1,30),DA)
 ;;^DD(9000010.467,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.467,.01,21,0)
 ;;=^^1^1^3051226^
 ;;^DD(9000010.467,.01,21,1,0)
 ;;=Age specific behavioral health screening items
 ;;^DD(9000010.467,.01,"DT")
 ;;=3051226
 ;;^DD(9000010.467,.02,0)
 ;;=RESULT^S^N:NORMAL;A:ABNORMAL;^0;2^Q
 ;;^DD(9000010.467,.02,"DT")
 ;;=3051226
 ;;^DD(9000010.468,0)
 ;;=GENERAL HEALTH SCREEN SUB-FIELD^^.02^2
 ;;^DD(9000010.468,0,"DT")
 ;;=3051227
 ;;^DD(9000010.468,0,"IX","B",9000010.468,.01)
 ;;=
 ;;^DD(9000010.468,0,"NM","GENERAL HEALTH SCREEN")
 ;;=
 ;;^DD(9000010.468,0,"UP")
 ;;=9000010.46
 ;;^DD(9000010.468,.01,0)
 ;;=GENERAL HEALTH SCREEN^MF^^0;1^K:$L(X)>80!($L(X)<1) X
 ;;^DD(9000010.468,.01,1,0)
 ;;=^.1
 ;;^DD(9000010.468,.01,1,1,0)
 ;;=9000010.468^B
 ;;^DD(9000010.468,.01,1,1,1)
 ;;=S ^AUPNVWC(DA(1),8,"B",$E(X,1,30),DA)=""
 ;;^DD(9000010.468,.01,1,1,2)
 ;;=K ^AUPNVWC(DA(1),8,"B",$E(X,1,30),DA)
 ;;^DD(9000010.468,.01,3)
 ;;=Answer must be 1-80 characters in length.
 ;;^DD(9000010.468,.01,21,0)
 ;;=^^1^1^3051227^
 ;;^DD(9000010.468,.01,21,1,0)
 ;;=NATL STANDARDS FOR GENERAL HEALTH SCREENING BEYOND THE PHYSICAL EXAM
 ;;^DD(9000010.468,.01,"DT")
 ;;=3051227
 ;;^DD(9000010.468,.02,0)
 ;;=RESULT^S^N:NORMAL;A:ABNORMAL;^0;2^Q
 ;;^DD(9000010.468,.02,"DT")
 ;;=3051227
