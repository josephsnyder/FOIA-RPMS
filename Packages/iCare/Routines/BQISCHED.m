BQISCHED ;PRXM/HC/ALA - Set scheduled tasks ; 22 Feb 2016  7:27 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
EN ; Entry point
 NEW DR,DIE,DA,DIC,DLAYGO,BI,FREQ,I,OPT,OPTN,OPTION,SAT,SUN,SDATM,SDOW,TIME,X
 NEW DIFROM,CIEN,CDATM,CDATE,CTIME,DIFF,ERROR,Y
 F BI=1:1 S OPT=$P($T(TSK+BI)," ;;",2,99) Q:OPT=""  D
 . S OPTION=$P(OPT,U,1),FREQ=$P(OPT,U,2)
 . I OPT["BQI UPDATE MEAN USE",'$$PATCH^XPDUTL("BJPC*2.0*6") Q
 . I OPT["BQI UPDATE MU CQM",'$$PATCH^XPDUTL("BGP*11.0*2") Q
 . S OPTN=$$FIND(OPTION) Q:OPTN'>0
 . I $O(^DIC(19.2,"B",OPTN,""))'="" D  Q
 .. S CIEN=$O(^DIC(19.2,"B",OPTN,""))
 .. S CDATM=$P(^DIC(19.2,CIEN,0),U,2)
 .. S CDATE=$P(CDATM,".",1),CTIME=$P(CDATM,".",2)
 .. I CDATE>DT Q
 .. S DIFF=$$FMDIFF^XLFDT(DT,CDATE,1)
 .. S SDOW=$P(OPT,U,3)
 .. ; If day of week is defined and the difference between today
 .. ; and the time scheduled to run is not greater than 14 days, quit
 .. I SDOW'="",DIFF'>14 Q
 .. I SDOW="",DIFF'>2 Q
 .. S SAT=$$SAT(DT)
 .. S SUN=$$FMADD^XLFDT(SAT,1)
 .. S FRI=$$FMADD^XLFDT(SAT,-1)
 .. I SDOW="" S SDATM=$$FMADD^XLFDT(DT,1)_"."_CTIME
 .. I SDOW="SAT" S SDATM=SAT_"."_CTIME
 .. I SDOW="SUN" S SDATM=SUN_"."_CTIME
 .. I SDOW="FRI" S SDATM=FRI_"."_CTIME
 .. D RESCH^XUTMOPT(OPTION,SDATM,"",FREQ,"L",.ERROR)
 . ;
 . S OPTION=$P(OPT,U,1)
 . S FREQ=$P(OPT,U,2)
 . S SDOW=$P(OPT,U,3) I SDOW'="" D
 .. S SAT=$$SAT(DT)
 .. S SUN=$$FMADD^XLFDT(SAT,1)
 .. S FRI=$$FMADD^XLFDT(SAT,-1)
 . S TIME=$P(OPT,U,4),TIME=$$STRIP^BQIUL1(TIME,"0")
 . I SDOW="" S SDATM=$$FMADD^XLFDT(DT,1)_"."_TIME
 . I SDOW="SAT" S SDATM=SAT_"."_TIME
 . I SDOW="SUN" S SDATM=SUN_"."_TIME
 . I SDOW="FRI" S SDATM=FRI_"."_TIME
 . D RESCH^XUTMOPT(OPTION,SDATM,"",FREQ,"L",.ERROR)
 . S OPTN=$$FIND(OPTION) Q:OPTN'>0
 . NEW DA,DIC,X,DLAYGO,Y
 . S DA=$O(^DIC(19.2,"B",OPTN,"")) I DA="" D
 .. S X=OPTION,DIC(0)="NL",DIC="^DIC(19.2,",DLAYGO=19.2
 .. D ^DIC
 .. S DA=+Y
 . ;S BQIUPD(19.2,DA_",",9)="P"
 . I $D(BQIUPD) D FILE^DIE("","BQIUPD","ERROR")
 . K SDOW,SAT,SUN,TIME
 K BQIUPD
 Q
 ;
FIND(X,F) ;EP - Find an option
 S X=$O(^DIC(19,"B",X,0)) I X'>0 Q -1
 Q X
 ;
SAT(RDATE) ;EP - Find the next Saturday date from the passed in date
 NEW CDOW,FDATE,NDAYS
 S CDOW=$$DOW^XLFDT(RDATE,1),NDAYS=6-CDOW
 I NDAYS=0 S NDAYS=7
 S FDATE=$$FMADD^XLFDT(RDATE,NDAYS)
 Q FDATE
 ;
 ;
TSK ; TASK STRUCTURE - OPTION^FREQUENCY^DOW^TIME
 ;;BQI NIGHTLY BACKGROUND^1D^^2000
 ;;BQI UPDATE ALL REMINDERS^7D^FRI^1900
 ;;BQI UPDATE TASK^7D^SAT^0200
 ;;BQI UPDATE TREATMENT^7D^SUN^0900
 ;;BQI UPDATE CARE MGMT^7D^SAT^1500
