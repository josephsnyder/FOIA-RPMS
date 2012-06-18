BKMQQCRV ;VNGT/HS/ALA-HIVQUAL ; 09 Aug 2010  2:16 PM
 ;;2.1;HIV MANAGEMENT SYSTEM;;Feb 07, 2011
 ;
APP(BKMDFN,RPTDT) ;EP
 NEW QFL,STDT,IEN,RESULT,BKMIEN,BKMREG,REVPER,CT,STAT,REG,COM,DATE,HDATE,ARV,CT,I,BKLAB
 NEW UNP,UNPDT,HN,QFL
 D DTR^BKMQQCRU(RPTDT)
 S BKMIEN=$$BKMIEN^BKMIXX3(BKMDFN) I BKMIEN="" Q 0
 S BKMREG=$$BKMREG^BKMIXX3(BKMIEN)
 S QFL=0,STDT=RPTDT_.24
 F  S STDT=$O(^BKM(90451,BKMIEN,1,BKMREG,45,"B",STDT),-1) Q:STDT=""!(STDT\1<REVPER)  D  Q:QFL
 . S IEN=""
 . F  S IEN=$O(^BKM(90451,BKMIEN,1,BKMREG,45,"B",STDT,IEN),-1) Q:IEN=""  D  Q:QFL
 .. S STAT=$P(^BKM(90451,BKMIEN,1,BKMREG,45,IEN,0),U,2)
 .. S REG=$P(^BKM(90451,BKMIEN,1,BKMREG,45,IEN,0),U,3)
 .. S COM=$O(^BKM(90451,BKMIEN,1,BKMREG,45,IEN,20,0))
 .. S DATE=STDT\1
 .. S HDATE=$$FMTH^XLFDT(DATE,1)
 .. I HDATE'>HP1B,HDATE'<HP1E S ARV(STAT,"P1",STDT,IEN)=REG_U_COM
 .. I HDATE'>HP2B,HDATE'<HP2E S ARV(STAT,"P2",STDT,IEN)=REG_U_COM
 .. I HDATE'>HP3B,HDATE'<HP3E S ARV(STAT,"P3",STDT,IEN)=REG_U_COM
 ;
 ; If patient stable all 3 periods, appropriate
 S CT=0
 F I="P1","P2","P3" I $D(ARV("S",I))>0 S CT=CT+1
 ; "HIVCHK","ARVAPPCNT"
 I CT=3 S @TOTAPP=@TOTAPP+1 Q
 ;
 ; if unstable in any of the 3 periods and viral load is present w/i 8 weeks of change date
 K BKLAB
 S UNP=$O(ARV("U",""),-1)
 I UNP'="" D
 . S UNPDT=$O(ARV("U",UNP,""),-1)
 . I UNPDT'="" D
 .. S HN=""
 .. F  S HN=$O(ARV("U",UNP,UNPDT,HN)) Q:HN=""  D
 ... I $P(ARV("U",UNP,UNPDT,HN),U,1)'="C" Q
 ... D LAB^BKMQQCRU(BKMDFN,UNPDT,.BKLAB)
 I $D(BKLAB("ZLAB","VIRAL"))>0 S @TOTAPP=@TOTAPP+1 Q
 ;
 ; Unstable patient, discontinued
 S UNP=$O(ARV("U",""),-1)
 I UNP'="" D
 . S UNPDT=$O(ARV("U",UNP,""),-1)
 . I UNPDT'="" D  Q:QFL
 .. S HN=""
 .. F  S HN=$O(ARV("U",UNP,UNPDT,HN)) Q:HN=""  D  Q:QFL
 ... I $P(ARV("U",UNP,UNPDT,HN),U,1)'="D" Q
 ... S @TOTAPP=@TOTAPP+1,QFL=1
 ;
 ; Unstable patient, no change with comment
 S UNP=$O(ARV("U",""),-1)
 I UNP'="" D
 . S UNPDT=$O(ARV("U",UNP,""),-1)
 . I UNPDT'="" D  Q:QFL
 .. S HN=""
 .. F  S HN=$O(ARV("U",UNP,UNPDT,HN)) Q:HN=""  D  Q:QFL
 ... I $P(ARV("U",UNP,UNPDT,HN),U,1)'="N" Q
 ... I $P(ARV("U",UNP,UNPDT,HN),U,2)="" Q
 ... S @TOTAPP=@TOTAPP+1,QFL=1
 Q
