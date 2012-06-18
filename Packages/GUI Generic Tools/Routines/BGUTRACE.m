BGUTRACE ; IHS/OIT/MJL - DEBUGGING TRACE FACILITY ;
 ;;1.5;BGU;;MAY 26, 2005
MAIN ; -- main message processing loop
 S BGUMXL=200,BGUAPID=$G(BGUAPID,"OE-2"),BGUTCK=$P(BGUMSG,"TRACE=",2),BGUHIT=$G(BGUHIT)
 I BGUTCK'="" D CKPAR Q:'BGUTRACE   I 'BGUTCK,BGUAPD2'="" S BGUAPID=BGUAPD2
 I $D(BGUTRACE) Q:'BGUTRACE
 S BGURTN=BGUTRTN,BGUMSG1=$P(BGUMSG,U,2,999) S:$E(BGUMSG1,$L(BGUMSG1))=U BGUMSG1=$E(BGUMSG1,1,$L(BGUMSG1)-1)
 S BGUSTR="" F BGUN=1:1:$L(BGUMSG1,U)  S:BGUN>1 BGUSTR=BGUSTR_"," S BGUSTR=BGUSTR_""""_$P(BGUMSG1,U,BGUN)_""""
 S BGUSTR=$P(BGURTN,"(",1)_"("_BGUSTR_")"
 K BGUMSG1
 D TRACE
 D KILL
 Q
 ;
CKPAR ; -- Check parameter string to see if TRACE is turned on or off.
 ;   TRACE on=1, off=0 
 ;   TRACE = string  - turns TRACE on and sets APID = string
 ;   TRACE = HITS    - saves only the buffer string coming from the 
 ;                     client
 ;                   - If a string follows HITS then APID is set equal
 ;                     to the string
 S BGUTCK=$P($P(BGUTCK,U),";"),BGUTRACE=$S(BGUTCK=0:0,1:1),BGUAPD2=""
 I 'BGUTRACE D KILL Q
 I 'BGUTCK S BGUHIT=$E(BGUTCK,1,4)="HITS",BGUAPD2=$S('BGUHIT:BGUTCK,$P(BGUTCK,"HITS",2)'="":$P(BGUTCK,"HITS",2),1:"")
 Q
 ;
TRACE ;
 ; Save the following varaibles in ^BGUTRACE for this job:
 ;     $J
 ;     APPID   -- Application ID
 ;     BGUBUF  -- Buffer string
 ;     BGUSTR  -- Routine that is called by BGUTCPH, along with
 ;                values of the passed parameters
 ;     BGUDATA -- Output variable for the remote procedure routines
 ;
 L +^BGUTRACE(0):10 Q:'$T
 S BGUIEN(1)=$P($G(^BGUTRACE(0)),"^",3)+1
 ; Save data into ^BGUTRACE(SEQ)
 S BGUFDA="BGUFDA(1)"
 ; Need to get the APPID field passed in the string from the client
 S BGUFDA(1,90061,"+1,",.01)=BGUIEN(1),BGUFDA(1,90061,"+1,",".02")=BGUAPID,BGUFDA(1,90061,"+1,",".03")=$J
 D NOW^%DTC S BGUFDA(1,90061,"+1,",".04")=% K %,%H,%I
 D UPDATE^DIE("",BGUFDA,"BGUIEN","BGUEMSG")
 L -^BGUTRACE(0):1
 I BGUTYPE=4 D TRACEGLO Q
 ;S BGUY=BGUMSG,BGUN2=.05 D PARSE
 S BGUN2=.05 D PARSE(.BGUMSG)
 ;I 'BGUHIT S BGUY=BGUSTR,BGUN2=.06 S:$E(BGUY)=U BGUY=$C(30)_BGUY D PARSE S BGUN="" F  S BGUN=$O(BGUDATA(BGUN)) Q:BGUN=""  S BGUDTA=$S($L(BGUDATA(BGUN))>200:$E(BGUDATA(BGUN),1,200)_"...",1:BGUDATA(BGUN)) S BGUWPD(.07,BGUN)=BGUDTA
 I 'BGUHIT S BGUN2=.06 D PARSE(.BGUSTR,$S($E(BGUSTR)=U:$C(30),1:"")) S BGUN="" F  S BGUN=$O(BGUDATA(BGUN)) Q:BGUN=""  S BGUDTA=$S($L(BGUDATA(BGUN))>200:$E(BGUDATA(BGUN),1,200)_"...",1:BGUDATA(BGUN)) S BGUWPD(.07,BGUN)=BGUDTA
 S BGUN=0 F  S BGUN=$O(BGUWPD(BGUN)) Q:BGUN=""  D WP^DIE(90061,BGUIEN(1)_",",BGUN,"","BGUWPD("_BGUN_")","BGUWMSG")
 Q
 ;
PARSE(BGUY,BGUZ) ;
 S BGUY=$G(BGUZ)_BGUY
 S BGUYLN=$L(BGUY),BGUN1=BGUYLN\BGUMXL+(BGUYLN#BGUMXL>0)
 F BGUN=1:1:BGUN1 S BGUY1=$E(BGUY,BGUN*BGUMXL-199,BGUN*BGUMXL),BGUWPD(BGUN2,BGUN)=BGUY1
 Q
 ;
TRACEGLO ;
 Q:$G(BGUDATA)=""
 K ^BGUWPD($J)
 S BGUY=BGUMSG,BGUN2=.05 D PARSEGLO
 S BGUGLO=BGUDATA,BGUCK=$P(BGUGLO,")",1),BGUN=1
 S:$D(@BGUGLO)>10 ^BGUWPD($J,.07,BGUN)=@BGUGLO,BGUN=2
 I 'BGUHIT S BGUY=BGUSTR,BGUN2=.06 S:$E(BGUY)=U BGUY=$C(30)_BGUY D PARSEGLO F  S BGUGLO=$Q(@BGUGLO) Q:BGUGLO=""!(BGUGLO'[BGUCK)  S ^BGUWPD($J,.07,BGUN)=@BGUGLO,BGUN=BGUN+1
 S BGUN=0 F  S BGUN=$O(^BGUWPD($J,BGUN)) Q:BGUN=""  D WP^DIE(90061,BGUIEN(1)_",",BGUN,"","^BGUWPD("_$J_","_BGUN_")","BGUWMSG")
 K ^BGUWPD($J)
 Q
PARSEGLO ;
 S BGUYLN=$L(BGUY),BGUN1=BGUYLN\BGUMXL+(BGUYLN#BGUMXL>0)
 F BGUN=1:1:BGUN1 S BGUY1=$E(BGUY,BGUN*BGUMXL-199,BGUN*BGUMXL),^BGUWPD($J,BGUN2,BGUN)=BGUY1
 Q
KILL ;
 K BGUAPD2,BGUDTA,BGUEMSG,BGUMXL,BGUFLGS,BGUFDA,BGUFN,BGUIEN,BGUM,BGUMSG1,BGUMSG2,BGUN,BGUN1,BGUN2,BGUREF,BGURTN,BGUSTR,BGUTCK,BGUTCK1,BGUY,BGUY1,BGUYLN,BGUWMSG,BGUWPD,DIC,DIR,BGUGLO,BGUCK
 Q
