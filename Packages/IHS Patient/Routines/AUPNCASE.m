AUPNCASE ; IHS/CMI/LAB - Up-cases lower case input for X-ref ;
 ;;99.1;IHS DICTIONARIES (PATIENT);;MAR 09, 1999
 ; CALLED FROM File 2 B CROSS REFERENCE
 ;N I,J,C,NX
 S AUPNCASJ=$L(X),AUPNCANX="" F AUPNCASI=1:1:AUPNCASJ S AUPNCASC=$E(X,AUPNCASI),AUPNCANX=AUPNCANX_$S(AUPNCASC?1L:$C($A(AUPNCASC)-32),1:AUPNCASC)
 S X=AUPNCANX
 K AUPNCASI,AUPNCASJ,AUPNCANX,AUPNCASC
 Q
