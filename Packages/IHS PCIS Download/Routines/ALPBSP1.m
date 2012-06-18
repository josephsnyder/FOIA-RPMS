ALPBSP1 ;OIFO-DALLAS MW,SED,KC-LIST AND SELECT PATIENT'S ORDERS ;01/01/03
 ;;2.0;BAR CODE MED ADMIN;**17**;May 2002
 ;
 ; **NOTE:  THIS ROUTINE IS CALLED BY A LIST MANAGER
 ;          PROTOCOL IN WHICH A PATIENT HAS ALREADY BEEN
 ;          SELECTED -- THIS ROUTINE SHOULD NOT BE RUN
 ;          DIRECTLY.
 ;
EN ; -- main entry point for ALPB PATIENT ORDERS
 D EN^VALM("PSB SELECT ORDERS")
 Q
 ;
HDR ; -- header code
 I +$G(ALPBIEN)'>0 Q
 S ALPBPT(0)=$G(^ALPB(53.7,ALPBIEN,0))
 M ALPBPT(1)=^ALPB(53.7,ALPBIEN,1)
 D HDR^ALPBFRM2(.ALPBPT,"A",0,.ALPBHDR)
 S ALPBX=1
 F  S ALPBX=$O(ALPBHDR(ALPBX)) Q:'ALPBX  D
 .S VALMHDR(ALPBX-1)=ALPBHDR(ALPBX)
 K ALPBHDR,ALPBPT,ALPBX
 Q
 ;
INIT ; -- init variables and list array
 I +$G(ALPBIEN)'>0 Q
 K ALPBORDS,^TMP("ALPBORDS",$J)
 D ORDS^ALPBUTL(ALPBIEN,"",.ALPBORDS)
 K ALPBORDS("B")
 I $G(ALPBLTYP)="" S ALPBLTYP="Active"
 S ALPBX=0
 F  S ALPBX=$O(ALPBORDS(ALPBX)) Q:'ALPBX  D
 .I $G(ALPBORDS(ALPBX,2))="" S ALPBORDS(ALPBX,2)="XX"
 .S ALPBORDS("B",ALPBORDS(ALPBX,2),ALPBORDS(ALPBX),ALPBX)=""
 S ALPBLINE=0
 S ALPBSTAT=""
 F  S ALPBSTAT=$O(ALPBORDS("B",ALPBSTAT)) Q:ALPBSTAT=""  D
 .S ALPBSTN=$$STAT2^ALPBUTL1(ALPBSTAT)
 .I ALPBLTYP'="ALL"&(ALPBSTN'="Active") K ALPBSTN Q
 .S ALPBORDN=""
 .F  S ALPBORDN=$O(ALPBORDS("B",ALPBSTAT,ALPBORDN)) Q:ALPBORDN=""  D
 ..S ALPBX=0
 ..F  S ALPBX=$O(ALPBORDS("B",ALPBSTAT,ALPBORDN,ALPBX)) Q:'ALPBX  D
 ...S ^TMP("ALPBORDS",$J,"B",ALPBORDN)=ALPBX
 ...S ALPBLINE=ALPBLINE+1
 ...S ALPBDATA=" "_ALPBORDN
 ...S ALPBDATA=$$PAD^ALPBUTL(ALPBDATA,12)_ALPBSTN
 ...S ALPBDATA=$$PAD^ALPBUTL(ALPBDATA,21)_ALPBORDS(ALPBX,1)
 ...I +$G(ALPBORDS(ALPBX,3,0)) D
 ....S ALPBDATA=$$PAD^ALPBUTL(ALPBDATA,26)_ALPBORDS(ALPBX,3,1)
 ...I $G(ALPBORDS(ALPBX,4))'="" D
 ....S ALPBY=$P(ALPBORDS(ALPBX,4),"^",1,3)
 ....S ALPBY=$TR(ALPBY,"^"," ")
 ....S ALPBDATA=ALPBDATA_" ("_ALPBY_")"
 ....K ALPBY
 ...S ^TMP("ALPBORDS",$J,ALPBLINE,0)=ALPBDATA
 ...K ALPBDATA
 ...S ALPBY=1
 ...F  S ALPBY=$O(ALPBORDS(ALPBX,3,ALPBY)) Q:'ALPBY  D
 ....S ALPBDATA=$$PAD^ALPBUTL($G(ALPBDATA),27)_ALPBORDS(ALPBX,3,ALPBY)
 ....S ALPBLINE=ALPBLINE+1
 ....S ^TMP("ALPBORDS",$J,ALPBLINE,0)=ALPBDATA
 ....K ALPBDATA
 ...K ALPBY
 ..K ALPBX
 .K ALPBORDN,ALPBSTN
 S VALMCNT=ALPBLINE
 I +$O(^TMP("ALPBORDS",$J,0))=0&(ALPBLTYP="Active") D
 .S ALPBLTYP="ALL"
 .S VALM("TITLE")="BCMAbu ALL Orders List"
 .D INIT
 .S VALMBCK="R"
 K ALPBLINE,ALPBLTYP,ALPBORDS,ALPBSTAT
 Q
 ;
HELP ; -- help code
 S X="?" D DISP^XQORM1 W !!
 Q
 ;
EXIT ; -- exit code
 K ^TMP("ALPBORDS",$J)
 Q
 ;
EXPND ; -- expand code
 Q
 ;
SELORD ; select an order...
 I '$D(^TMP("ALPBORDS",$J)) Q
 S DIR(0)="FAO^1:45"
 S DIR("A")="Select ORDER#: "
 S DIR("A",1)="Select order number, more than one separated by a comma, or 'ALL': "
 S DIR("B")="ALL"
 S DIR("?")="Select order numbers from the list or 'ALL'."
 S DIR("?",1)="Separate multiple order numbers with a comma."
 D ^DIR K DIR
 I $D(DIRUT) K DIRUT,DTOUT,X,Y Q
 S ALPBOSEL=$$UP^XLFSTR($$STRIP^XLFSTR(Y," "))
 I ALPBOSEL="ALL" D
 .S I=0
 .S ALPBOSEL=""
 .F  S ALPBOSEL=$O(^TMP("ALPBORDS",$J,"B",ALPBOSEL)) Q:ALPBOSEL=""  D
 ..S I=I+1
 ..S ALPBOSEL(I)=^TMP("ALPBORDS",$J,"B",ALPBOSEL)
 .S ALPBOSEL(0)=I
 I ALPBOSEL'="ALL" D
 .; make sure the input is separated by a comma...
 .S ALPBOSEL=$$REPL^ALPBUTL2(ALPBOSEL,",")
 .; parse out the user's input...
 .F I=1:1 Q:$P(ALPBOSEL,",",I)=""  D
 ..I $G(^TMP("ALPBORDS",$J,"B",$P(ALPBOSEL,",",I)))="" Q
 ..S ALPBOSEL(I)=^TMP("ALPBORDS",$J,"B",$P(ALPBOSEL,",",I))
 I +$O(ALPBOSEL(0))=0 D  Q
 .W $C(7)
 .W !,"Invalid selection."
 .S DIR(0)="EA"
 .S DIR("A")="Press <enter> to continue..."
 .D ^DIR K DIR,DIRUT,DTOUT,X,Y
 D EN^ALPBSP2
 K ALPBOSEL
 Q
 ;
SELALL ; set list type to ALL orders...
 S ALPBLTYP="ALL"
 S VALM("TITLE")="BCMAbu ALL Orders List"
 D INIT
 Q
 ;
SELACT ; set list type to Active orders...
 S ALPBLTYP="Active"
 S VALM("TITLE")="BCMAbu ACTIVE Orders List"
 D INIT
 Q
