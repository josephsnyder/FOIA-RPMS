IS00004E ;Compiled from script 'Generated: X1 IHS 276-O' on DEC 09, 2002
 ;Part 6
 ;Copyright 2002 SAIC
EN S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("HL3")=X K DXS,D0
 ;SET HL4 = INSGX\^INTHL7FT(1,3)\\999\@2762000CHL4
 S D0=INDA S X=$G(INA("2762000CHL4"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("HL4")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="HL" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("HL1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("HL2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("HL3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("HL4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET NM11 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM11
 S D0=INDA S X=$G(INA("2762100CNM11"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM11")=X K DXS,D0
 ;SET NM12 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM12
 S D0=INDA S X=$G(INA("2762100CNM12"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM12")=X K DXS,D0
 ;SET NM13 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM13
 S D0=INDA S X=$G(INA("2762100CNM13"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM13")=X K DXS,D0
 ;SET NM14 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM14
 S D0=INDA S X=$G(INA("2762100CNM14"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM14")=X K DXS,D0
 ;SET NM15 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM15
 S D0=INDA S X=$G(INA("2762100CNM15"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM15")=X K DXS,D0
 ;SET NM16 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM16
 S D0=INDA S X=$G(INA("2762100CNM16"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM16")=X K DXS,D0
 ;SET NM17 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM17
 S D0=INDA S X=$G(INA("2762100CNM17"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM17")=X K DXS,D0
 ;SET NM18 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM18
 S D0=INDA S X=$G(INA("2762100CNM18"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM18")=X K DXS,D0
 ;SET NM19 = INSGX\^INTHL7FT(1,3)\\999\@2762100CNM19
 S D0=INDA S X=$G(INA("2762100CNM19"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("NM19")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="NM1" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("NM11")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("NM12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("NM13"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("NM14")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("NM15")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("NM16")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S L1=$G(@INV@("NM17")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,8,L1,.CP) S L1=$G(@INV@("NM18")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP)
 S L1=$G(@INV@("NM19")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP)
 D LINE^INHUT11(.LINE,DELIM,LCT)
 I $L(LINE)'=0 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET HL1 = INSGX\^INTHL7FT(1,3)\\999\@2762000DHL1
 S D0=INDA S X=$G(INA("2762000DHL1"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("HL1")=X K DXS,D0
 ;SET HL2 = INSGX\^INTHL7FT(1,3)\\999\@2762000DHL2
 S D0=INDA S X=$G(INA("2762000DHL2"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("HL2")=X K DXS,D0
 ;SET HL3 = INSGX\^INTHL7FT(1,3)\\999\@2762000DHL3
 S D0=INDA S X=$G(INA("2762000DHL3"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("HL3")=X K DXS,D0
 ;SET HL4 = INSGX\^INTHL7FT(1,3)\\999\@2762000DHL4
 S D0=INDA S X=$G(INA("2762000DHL4"))
9 G EN^IS00004F