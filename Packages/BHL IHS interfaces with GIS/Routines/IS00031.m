IS00031(INTT,INDA,INA,INDEST,INQUE,INORDUZ,INORDIV) ;Compiled from script 'Generated: HL IHS DW1ALPMR A08-O' on MAY 21, 2015
 ;Part 1
 ;Copyright 2015 SAIC
EN S X="ERROR^IS00031",@^%ZOSF("TRAP")
 G START
ERROR ;
 S X="",@^%ZOSF("TRAP") X ^INTHOS(1,3) D ERROR^INHS($$GETERR^%ZTOS)
 Q 2
START ;Initialize variables
 K ^UTILITY("INH",$J) S (MESSID,INA("MESSID"))=$$MESSID^INHD
 K INUIF6 M INUIF6=INDA
 K INREQERR,INHERR,INHERCNT,INV D SETDT^UTDT S DUZ(0)="@",DUZ("AG")="^1",DTIME=1 S (LCT,GERR)=0,INMODE="O",INVS=$P(^INRHSITE(1,0),U,12),INV=$S(INVS<2:"INV",1:"^UTILITY(""INV"",$J)"),(MULT,INSTERR)=0
 S INHLDUZ=$O(^VA(200,"B","GIS,USER",0)),DUZ=$S($G(INHLDUZ):INHLDUZ,1:.5)
 S BHLMIEN="12447"
 I $G(^INTHL7M(BHLMIEN,4,1,0))]"" X $G(^INTHL7M(BHLMIEN,4,1,0))
 K INSETID
 S INSMIN=$S($P($G(^INRHSITE(1,0)),U,14):$P(^(0),U,14),1:2500)
 S (DELIM,INDELIM)=$$FIELD^INHUT(),(SUBDELIM,INSUBDEL)=$$COMP^INHUT(),INSUBCOM=$$SUBCOMP^INHUT()
 S INDELIMS=$$FIELD^INHUT_$$COMP^INHUT_$$REP^INHUT_$$ESC^INHUT_$$SUBCOMP^INHUT
 ;Entering MUMPS section.
 D VST^BHLV,DW1^BHLV,^BDWALPMR
 ;Entering DATA section.
 S DELIM="|"
 S SUBDELIM="^"
 SET INSETID=0
 D ^BHLMSH
 ;SET MSH1 = INSGX\^INTHL7FT(1,3)\\4\@ENC
 S D0=INDA S X=$G(INA("ENC"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,4)
 S @INV@("MSH1")=X K DXS,D0
 ;SET MSH2 = INSGX\^INTHL7FT(1,3)\\180\@SAP
 S D0=INDA S X=$G(INA("SAP"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("MSH2")=X K DXS,D0
 ;SET MSH3 = INSGX\^INTHL7FT(1,3)\\180\@SF
 S D0=INDA S X=$G(INA("SF"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("MSH3")=X K DXS,D0
 ;SET MSH4 = INSGX\^INTHL7FT(1,3)\\180\@RAP
 S D0=INDA S X=$G(INA("RAP"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("MSH4")=X K DXS,D0
 ;SET MSH5 = INSGX\^INTHL7FT(1,3)\\180\@RF
 S D0=INDA S X=$G(INA("RF"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,180)
 S @INV@("MSH5")=X K DXS,D0
 ;SET MSH6 = INSGX\^INTHL7FT(6,3)\\26\@EVDT
 S D0=INDA S X=$G(INA("EVDT"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 S @INV@("MSH6")=X K DXS,D0
 ;SET MSH8 = $E(INTERNAL(@MET),1,7)
 S D0=INDA S X=$G(INA("MET")),X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=7,X=$E(Y(1),Y(2),X)
 S @INV@("MSH8")=X K DXS,D0
 ;SET MSH9 = INSGX\^INTHL7FT(1,3)\\20\@MESSID
 S D0=INDA S X=$G(INA("MESSID"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,20)
 S @INV@("MSH9")=X K DXS,D0
 ;SET MSH10 = $E(INTERNAL(@PRID),1,1)
 S D0=INDA S X=$G(INA("PRID")),X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=1,X=$E(Y(1),Y(2),X)
 S @INV@("MSH10")=X K DXS,D0
 ;SET MSH11 = @VER
 S D0=INDA S X=$G(INA("VER"))
 S @INV@("MSH11")=X K DXS,D0
 ;SET MSH12 = ""
 S D0=INDA S X=""
 S @INV@("MSH12")=X K DXS,D0
 ;SET MSH13 = ""
 S D0=INDA S X=""
 S @INV@("MSH13")=X K DXS,D0
 ;SET MSH14 = $E(INTERNAL(@ACA),1,2)
 S D0=INDA S X=$G(INA("ACA")),X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=2,X=$E(Y(1),Y(2),X)
 S @INV@("MSH14")=X K DXS,D0
 ;SET MSH15 = $E(INTERNAL(@APA),1,2)
 S D0=INDA S X=$G(INA("APA")),X=X S X=X,Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=2,X=$E(Y(1),Y(2),X)
 S @INV@("MSH15")=X K DXS,D0
 ;SET MSH16 = ""
 S D0=INDA S X=""
 S @INV@("MSH16")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="MSH" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("MSH1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("MSH2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("MSH3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("MSH4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S L1=$G(@INV@("MSH5")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,6,L1,.CP) S L1=$G(@INV@("MSH6")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,7,L1,.CP)
 S L1=$G(@INV@("MSH8")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,9,L1,.CP) S L1=$G(@INV@("MSH9")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,10,L1,.CP)
 S L1=$G(@INV@("MSH10")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,11,L1,.CP)
 S D0=INDA S X=@INV@("MSH11"),Y(1)=$G(X) S X=1,Y(2)=$G(X) S X=8,X=$E(Y(1),Y(2),X) S L1=X
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,12,L1,.CP) S L1=$G(@INV@("MSH12")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,13,L1,.CP)
 S L1=$G(@INV@("MSH13")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,14,L1,.CP) S L1=$G(@INV@("MSH14")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,15,L1,.CP) S L1=$G(@INV@("MSH15")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,16,L1,.CP) S L1=$G(@INV@("MSH16"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,17,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET EVN1 = INSGX\^INTHL7FT(1,3)\\3\@ET
 S D0=INDA S X=$G(INA("ET"))
 S X1="^INTHL7FT(1,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,3)
 S @INV@("EVN1")=X K DXS,D0
 ;SET EVN2 = INSGX\^INTHL7FT(6,3)\\26\@EVDT
 S D0=INDA S X=$G(INA("EVDT"))
 S X1="^INTHL7FT(6,3)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,26)
 S @INV@("EVN2")=X K DXS,D0
 ;SET EVN3 = ""
 S D0=INDA S X=""
 S @INV@("EVN3")=X K DXS,D0
 ;SET EVN4 = ""
 S D0=INDA S X=""
 S @INV@("EVN4")=X K DXS,D0
 D:'INVS MC^INHS
 K LINE S LINE="",CP=0 S L1="EVN" S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,1,L1,.CP) S L1=$G(@INV@("EVN1")) S:$TR(L1,$G(SUBDELIM))="" L1=""
 D SETPIECE^INHU(.LINE,DELIM,2,L1,.CP) S L1=$G(@INV@("EVN2")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,3,L1,.CP) S L1=$G(@INV@("EVN3"))
 S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,4,L1,.CP) S L1=$G(@INV@("EVN4")) S:$TR(L1,$G(SUBDELIM))="" L1="" D SETPIECE^INHU(.LINE,DELIM,5,L1,.CP)
 S LCT=LCT+1,^UTILITY("INH",$J,LCT)=LINE I $D(LINE)>9 M ^UTILITY("INH",$J,LCT)=LINE
 SET INSETID=0
 ;SET PID1 = ""
 S D0=INDA S X=""
 S @INV@("PID1")=X K DXS,D0
 ;SET PID2 = ""
 S D0=INDA S X=""
 S @INV@("PID2")=X K DXS,D0
 ;SET PID3 = INSGX\^INTHL7F(16246,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16246,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID3")=X K DXS,D0
 ;SET PID4 = INSGX\^INTHL7F(16247,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16247,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID4")=X K DXS,D0
 ;SET PID5 = INSGX\^INTHL7F(16248,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16248,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID5")=X K DXS,D0
 ;SET PID6 = ""
 S D0=INDA S X=""
 S @INV@("PID6")=X K DXS,D0
 ;SET PID7 = INSGX\^INTHL7F(16250,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16250,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID7")=X K DXS,D0
 ;SET PID8 = INSGX\^INTHL7F(16251,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16251,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID8")=X K DXS,D0
 ;SET PID9 = ""
 S D0=INDA S X=""
 S @INV@("PID9")=X K DXS,D0
 ;SET PID10 = ""
 S D0=INDA S X=""
 S @INV@("PID10")=X K DXS,D0
 ;SET PID11 = INSGX\^INTHL7F(16254,5)\\999\"OUTPUT TRANSFORM"
 S D0=INDA S X="OUTPUT TRANSFORM"
 S X1="^INTHL7F(16254,5)" X:$L($G(@X1)) $G(@X1) S X=$E(X,1,999)
 S @INV@("PID11")=X K DXS,D0
 ;SET PID12 = ""
 S D0=INDA S X=""
 S @INV@("PID12")=X K DXS,D0
 ;SET PID13 = ""
 S D0=INDA S X=""
9 G EN^IS00031A
