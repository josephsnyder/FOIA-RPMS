IS00015B ;Compiled from script 'Generated: HL IHS LAB O01 LABCORP-O' on AUG 14, 2006
 ;Part 3
 ;Copyright 2006 SAIC
EN S D0=INDA S X=$G(INA("OBX3LABOL2",INI(1),INI(2)))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("OBX3.2")=X K DXS,D0
 ;SET OBX3.3 = INSGX\^INTHL7FT(1,3)\\999\@OBX3LABLC3
 S D0=INDA S X=$G(INA("OBX3LABLC3",INI(1),INI(2)))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("OBX3.3")=X K DXS,D0
 ;SET OBX5 = INSGX\^INTHL7FT(1,3)\\999\@OBX5LABO
 S D0=INDA S X=$G(INA("OBX5LABO",INI(1),INI(2)))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("OBX5")=X K DXS,D0
 ;SET OBX14 = INSGX\^INTHL7FT(6,3)\\999\@OBX14LABO
 S D0=INDA S X=$G(INA("OBX14LABO",INI(1),INI(2)))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("OBX14")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="OBX" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("OBX1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("OBX2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("OBX3.1"))
 S D0=INDA S X="^" S L1=L1_X
 S L1=L1_$G(@INV@("OBX3.2"))
 S D0=INDA S X="^" S L1=L1_X
 S L1=L1_$G(@INV@("OBX3.3")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("OBX5")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("OBX14")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,15,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 Q
B2 S INDA=INDA1 K INDA1
 Q
B1 S INDA=INDA0 K INDA0
 D:'INVS MC^INHS
 ;Entering END section.
 I $G(INSTERR) Q $S($G(INREQERR)>INSTERR:INREQERR,1:INSTERR)
 S UIF=$$NEWO^INHD(INDEST,"^UTILITY(""INH"",$J)",+$P($G(^INRHT(INTT,0)),U,12),INTT,MESSID,$G(INQUE),$G(INORDUZ),$G(INORDIV),.INUIF6,.INUIF7,$G(INA("INMIDGEN")))
 I UIF<0 D ERROR^INHS("UIF creation failed",2) Q 2
 Q 0
