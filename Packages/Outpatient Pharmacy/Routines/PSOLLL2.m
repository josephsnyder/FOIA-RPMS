PSOLLL2 ;BIR/JLC-LASER LABEL ;29-Oct-2007 15:29;SM
 ;;7.0;OUTPATIENT PHARMACY;**120,138,141,1006**;DEC 1997
 ;
 ; Modified - IHS/CIA/PLS - 03/05/04
 ;            IHS/MSC/PLS - 09/11/07 - Line L11
L1 I $G(PSOIO("PFDI"))]"" X PSOIO("PFDI")
 N PGY
 M PGY=SGY I $D(OSGY) K PGY M PGY=OSGY
 S PFM=0,T=$S($D(REPRINT)&($G(PSOBLALL)):"(GROUP REPRINT)",$D(REPRINT):"(REPRINT)",1:"")
 S T=T_$S($G(RXP):"(PARTIAL)",1:"")_$S($D(REPRINT):" ",$G(RXP):" ",1:"")_$P(PS2,"^",2)_"  "_TECH_"  "_PSONOWT D PRINT(T)
 S T="Rx# "_RXN_"  "_DATE_"  "_$S('PFF:"Fill "_(RXF+1)_" of "_(1+$P(RXY,"^",9)),1:"(fill document continued)") D PRINT(T)
 S T=PNM_"  "_$G(SSNPN) D PRINT(T)
 S LENGTH=0,PTEXT="",PFF=0,XFONT=$E(PSOFONT,2,99)
 N DP,TEXTP,TEXTL,MORE
 F DR=PFF("DR"):1 Q:$G(PGY(DR))=""  S TEXT=PGY(DR) D  Q:PFF
 . F I=1:1 Q:$E(TEXT,I)'=" "  S TEXT=$E(TEXT,2,255)
 . S DP=$S(TEXT[" ":" ",TEXT[",":",",1:" ")
 . F I=PFF("T"):1:$L(TEXT,DP) D  Q:PFF
 .. S TEXTP=$P(TEXT,DP,I) Q:TEXTP=""  I $D(PFF("J")) S TEXTP=$E(TEXTP,PFF("J"),255) K PFF("J")
 .. D STRT^PSOLLU1("SIG2",TEXTP_" ",.L) I L(XFONT)>3.7 D
 ... S MORE=0
 ... F J=$L(TEXTP):-1:1 S TEXTL=PTEXT_$E(TEXTP,1,J) D STRT^PSOLLU1("SIG2",TEXTL,.L) D  Q:PFF!MORE
 .... Q:L(XFONT)>3.7
 .... D PRINT(TEXTL) S TEXT=$E(TEXT,J+1,512),(PTEXT,TEXTL)=""
 .... I PSOY>PSOYM S PFF=1,PFF("DR")=DR,PFF("T")=I,PFF("J")=J+1 Q
 .... D STRT^PSOLLU1("SIG2",TEXT_" ",.L) S TEXTP=TEXT,J=$L(TEXTP) I L(XFONT)<3.7 S MORE=1,LENGTH=0
 .. I LENGTH+L(XFONT)<3.7 S PTEXT=PTEXT_TEXTP_" ",LENGTH=LENGTH+L(XFONT) Q
 .. S LENGTH=0,I=I-1
 .. D PRINT(PTEXT) S PTEXT=""
 .. I PSOY>PSOYM S PFF=1,PFF("DR")=DR,PFF("T")=I+1,PTEXT="" Q
 . I 'PFF S PFF("T")=1
 I PTEXT]"" D
 . D PRINT(PTEXT)
 I $G(PSOIO("PFDQ"))]"" X PSOIO("PFDQ")
 I PFF S PSOX=PSOCX,T="(continued on next fill document)" S PFM=1 D PRINT(T) Q
 S XFONT=$E(PSOQFONT,2,99)
 S TEXT="Qty: " D STRT^PSOLLU1("SIG2",TEXT,.L) S Q(1)=L(XFONT)
 S TEXT=" "_PSDU D STRT^PSOLLU1("SIG2",TEXT,.L) S Q(2)=L(XFONT)
 S TEXT="       "_$G(PHYS) D STRT^PSOLLU1("SIG2",TEXT,.L) S Q(3)=L(XFONT)
 S PPHYS=$G(PHYS)
 S TEXT=$G(QTY) D STRT^PSOLLU1("SIG2",TEXT,.L) S LENGTH=Q(1)+Q(2)+Q(3)+L(XFONT+2),Q(4)=L(XFONT+2)
 I LENGTH>3.7 F I=$L(PHYS)-1:-1:1 S PPHYS=$E(PHYS,1,I),TEXT="       "_PPHYS D STRT^PSOLLU1("SIG2",TEXT,.L) I Q(1)+Q(2)+Q(4)+L(XFONT)<3.7 Q
 S OPSOX=PSOX,PSOX=Q(1)*300+OPSOX,T=$G(QTY) D PRINT(T) S PSOX=OPSOX
 S PSOFONT=PSOQFONT,PSOY=PSOY-PSOYI,T="Qty: " D PRINT(T)
 S PSOY=PSOY-PSOYI,PSOX=Q(1)+Q(4)*300+OPSOX,T=" "_$G(PSDU)_"       "_$G(PPHYS) D PRINT(T)
 I $G(PSOIO("PFDT"))]"" X PSOIO("PFDT")
 S T=DRUG D PRINT(T)
L11 ; IHS/MSC/PLS - 09/11/07
 I $$GET1^DIQ(9009033,PSOSITE,311,"I") D
 .S T="NDC "_$$NDCVAL^APSPFUNC(RX,+$G(RXFL(RX))) S T=$$PAD^APSPFUNC(T," ",27)_" Lot# _______________________" D PRINT(T)  ;IHS/MSC/PLS - 09/11/07
 E  S T="Mfr ___________________ Lot# _______________________" D PRINT(T)
L12 S T="Tech__________________ RPh _______________________" D PRINT(T)
 S PSOFONT=PSOTFONT
 S T="Routing: "_$S("W"[$E(MW):MW,PS55=2:"DO NOT MAIL",1:MW_" MAIL")_"    Days supply: "_$G(DAYS)_"     Cap: "_$S(PSCAP:"**NON-SFTY**",1:"SAFETY") D PRINT(T)
 S T="Isd: "_ISD_"    Exp: "_EXPDT_"    Last Fill: "_$G(PSOFLAST) D PRINT(T)
 S PSOYI=PSOBYI,PSOY=PSOBY
 ; IHS/CIA/PLS - 03/08/04 - Barcode initialization not needed
 ;I $G(PSOIO("SBT"))]"" X PSOIO("SBT")
 S X2=PSOINST_"-"_RX
 ; IHS/CIA/PLS - 03/08/04 - Changed to use barcode output routine
 ;W X2
 ;S PSOY=PSOY+PSOYI
 W $$BC^CIAUBC28(X2,0,50,PSOX,PSOY)
 I $G(PSOIO("EBT"))]"" X PSOIO("EBT")
 I $G(PSOIO("PFDW"))]"" X PSOIO("PFDW")
 S XFONT=$E(PSOFONT,2,99)
 I $G(WARN) S PTEXT="DRUG WARNING " D STRT^PSOLLU1("SIG2",PTEXT,.L) S LENGTH=L(XFONT) D
 . F I=1:1:$L(WARN,",") S TEXT=$P(WARN,",",I)_"," D
 .. D STRT^PSOLLU1("SIG2",TEXT,.L)
 .. I LENGTH+L(XFONT)<1.8 S PTEXT=PTEXT_TEXT,LENGTH=LENGTH+L(XFONT) Q
 .. S LENGTH=0,I=I-1
 .. S T=$P(PTEXT,",",1,$L(PTEXT,",")-1) D PRINT(T) S PTEXT=""
 .. I PSOY>PSOYM W "*"
 . I PTEXT]"" S T=$P(PTEXT,",",1,$L(PTEXT,",")-1) D PRINT(T)
 Q
PRINT(T) ;
 I $G(PSOIO(PSOFONT))]"" X PSOIO(PSOFONT)
 I $G(PSOIO("ST"))]"" X PSOIO("ST")
 W T,!
 I $G(PSOIO("ET"))]"" X PSOIO("ET")
 Q
