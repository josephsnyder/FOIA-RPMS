ANSUDW ;IHS/OIRM/DSD/CSC - DISPLAY CARE AREA DESCRIPTIONS; [ 02/25/98  10:32 AM ]
 ;;3.0;NURSING PATIENT ACUITY;;APR 01, 1996
 ;;DISPLAY CARE AREA DESCRIPTIONS
Z Q:'$D(^ANSD(59,+$G(ANC),0))
 S A=^ANSD(59,ANC,0),N=$P(A,U,2),ANW=78
 W !,$P(A,U)," (",N," levels)."
 F I=1:1:N S S="D"_I D SB1
 Q
XSB1 ;EP;
 S:'$D(ANW) ANW=0
 I ANW<20!(ANW>78) S ANW=40
XALL F I=1:1:10 S ANC=I,S=$P(ANSCL,U,I) I S D
 .W !
 .I $D(^ANSD(59,ANC,0)) W $P(^(0),U),"  ",S S S="D"_S D SB1
 Q
SB1 S X=$G(^ANSD(59,ANC,S))
 W !,?2,$E(S,2),?4
 S M=$L(X," ")+1
 F J=1:1:M D
 .W $P(X," ",J)," "
 .Q:$P(X," ",J+1)=""
 .W:$X+$L($P(X," ",J+1))>75 !,?4
 Q
