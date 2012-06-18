IS00001B ;Compiled from script 'Generated: HL IHS JVN O01 PACS-O' on DEC 03, 2002
 ;Part 3
 ;Copyright 2002 SAIC
EN S L1=$G(@INV@("PID8")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP) S L1=$G(@INV@("PID11.1"))
 S D0=INDA S X="" S L1=L1_X
 S L1=L1_$G(@INV@("PID11.2"))
 S D0=INDA S X="" S L1=L1_X
 S L1=L1_$G(@INV@("PID11.3"))
 S D0=INDA S X="" S L1=L1_X
 S L1=L1_$G(@INV@("PID11.4"))
 S D0=INDA S X="" S L1=L1_X
 S L1=L1_$G(@INV@("PID11.5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,12,L1,.CP) S L1=$G(@INV@("PID12")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,13,L1,.CP) S L1=$G(@INV@("PID13")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,14,L1,.CP) S L1=$G(@INV@("PID14"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,15,L1,.CP) S L1=$G(@INV@("PID17")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,18,L1,.CP)
 S L1=$G(@INV@("PID19")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,20,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 S INDA0=INDA,INI(1)=0  F  S INI(1)=$O(INDA(44,INI(1))) Q:'INI(1)  S INDA=$S(INDA(44,INI(1)):INDA(44,INI(1)),1:INI(1)) D
 .Q:'$D(^SC(INDA,0))
 .;SET PV11 = INSGX\^INTHL7F(14573,5)\\4\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(14573,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 .S @INV@("PV11")=X K DXS,D0
 .;SET PV12 = INSGX\^INTHL7F(15540,5)\\1\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15540,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,1)
 .S @INV@("PV12")=X K DXS,D0
 .;SET PV13 = INSGX\^INTHL7F(15544,5)\\12\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15544,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,12)
 .S @INV@("PV13")=X K DXS,D0
 .;SET PV18 = INSGX\^INTHL7F(15541,5)\\60\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15541,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,60)
 .S @INV@("PV18")=X K DXS,D0
 .;SET PV144 = INSGX\^INTHL7F(15542,5)\\26\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15542,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 .S @INV@("PV144")=X K DXS,D0
 .;SET PV145 = INSGX\^INTHL7F(15543,5)\\26\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15543,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 .S @INV@("PV145")=X K DXS,D0
 .D:'INVS MC^INHS
 .K LINE S LINE="",CP=0 S L1="PV1" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("PV11")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("PV12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("PV13"))
 .S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("PV18")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 .S L1=$G(@INV@("PV144")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,45,L1,.CP) S L1=$G(@INV@("PV145")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 .D SETPIECE^INHU(.LINE,DELIM,46,L1,.CP)
 .S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 .SET INSETID=0
 .;SET ORC1 = $E(INTERNAL("NW"),1,2)
 .S D0=INDA S X="NW",X=X S X=X,Y(1)=X S X=1,Y(2)=X S X=2,X=$E(Y(1),Y(2),X)
 .S @INV@("ORC1")=X K DXS,D0
 .;SET ORC2 = INSGX\^INTHL7F(15548,5)\\75\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15548,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,75)
 .S @INV@("ORC2")=X K DXS,D0
 .;SET ORC3 = INSGX\^INTHL7F(15549,5)\\75\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15549,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,75)
 .S @INV@("ORC3")=X K DXS,D0
 .;SET ORC5 = $E(INTERNAL("IP"),1,2)
 .S D0=INDA S X="IP",X=X S X=X,Y(1)=X S X=1,Y(2)=X S X=2,X=$E(Y(1),Y(2),X)
 .S @INV@("ORC5")=X K DXS,D0
 .;SET ORC7 = INSGX\^INTHL7F(15546,5)\\200\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15546,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,200)
 .S @INV@("ORC7")=X K DXS,D0
 .;SET ORC12 = INSGX\^INTHL7F(15547,5)\\80\"OUTPUT TRANSFORM"
 .S D0=INDA S X="OUTPUT TRANSFORM"
 .S X1="^INTHL7F(15547,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,80)
 .S @INV@("ORC12")=X K DXS,D0
 .D:'INVS MC^INHS
 .K LINE S LINE="",CP=0 S L1="ORC" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("ORC1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
9 .D EN^IS00001C
 G A1^IS00001C
