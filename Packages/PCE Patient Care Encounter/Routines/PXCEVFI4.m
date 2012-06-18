PXCEVFI4 ;ISL/dee - Routine to display a visit or v-file entry and input providers in to V PROVIDER from other V Files ;6/20/96
 ;;1.0;PCE PATIENT CARE ENCOUNTER;;Aug 12, 1996
 Q
DISPLAY ; -- display the data
 Q:PXCECAT="CSTP"
 N PXCELINE,PXCETEXT,PXCEINT,PXCEEXT
 I PXCECAT="APPM"!(PXCECAT="HIST") N PXCECODE S PXCECODE="PXCESIT"
 W !
 F PXCELINE=1:1 S PXCETEXT=$P($T(FORMAT+PXCELINE^@PXCECODE),";;",2) Q:PXCETEXT']""  D
 . S (PXCEINT,PXCEEXT)=$P(PXCEAFTR($P(PXCETEXT,"~",1)),"^",$P(PXCETEXT,"~",2))
 . I PXCEINT="@" S PXCEEXT="<deleted>"
 . E  I PXCEINT'="" D
 .. I $P(PXCETEXT,"~",6)]"" S @("PXCEEXT="_$P(PXCETEXT,"~",6)_"("""_PXCEINT_""")")
 .. E  D
 ... N DIERR,PXCEDILF
 ... S PXCEEXT=$$EXTERNAL^DILFD(PXCEFILE,$P(PXCETEXT,"~",3),"",PXCEINT,"PXCEDILF")
 ... S PXCEEXT=$S('$D(DIERR):PXCEEXT,1:PXCEINT)
 . I ($L($P(PXCETEXT,"~",5))+$L(PXCEEXT))'>80 D
 .. W !,$P(PXCETEXT,"~",5),PXCEEXT
 . E  D
 .. N PXCEWRAP,PXCECOUN
 .. D WRAP(PXCEEXT,80-$L($P(PXCETEXT,"~",5)),.PXCEWRAP)
 .. W !,$P(PXCETEXT,"~",5),$G(PXCEWRAP(1))
 .. S PXCECOUN=1
 .. F  S PXCECOUN=$O(PXCEWRAP(PXCECOUN)) Q:PXCECOUN']""  D
 ... W !,$J("",$L($P(PXCETEXT,"~",5))),PXCEWRAP(PXCECOUN)
 Q
 ;
WRAP(X,DIWR,WRAPPED) ;Copies the text in X into the array WRAPPED
 N DIWL,DIWF,PXCEINDX
 K ^UTILITY($J,"W")
 S DIWL=1
 S DIRF=""
 D ^DIWP
 S PXCEINDX=0
 F  S PXCEINDX=$O(^UTILITY($J,"W",DIWL,PXCEINDX)) Q:'PXCEINDX  S WRAPPED(PXCEINDX)=^UTILITY($J,"W",DIWL,PXCEINDX,0)
 K ^UTILITY($J,"W")
 Q
 ;
PROVIDER(PXCEPRV) ;See if it is a new provider and if it is add them.
 N PXCEVPRV,PXCEKPRV,PXCENPRV,PXCEPRIM
 N DIR,DA,X,Y
 S (PXCEVPRV,PXCEKPRV)=""
 S PXCEPRIM=0
 ;See if this provider is already in V Provider for this Encounter
 F  S PXCEVPRV=$O(^AUPNVPRV("AD",PXCEVIEN,PXCEVPRV)) Q:PXCEVPRV'>0  Q:PXCEPRV=$P(^AUPNVPRV(PXCEVPRV,0),"^",1)  S:"P"=$P(^AUPNVPRV(PXCEVPRV,0),"^",4) PXCEPRIM=1
 Q:PXCEVPRV>0
 ;See if this provider is in the ^TMP("PXK",$J,
 F  S PXCEKPRV=$O(^TMP("PXK",$J,"PRV",PXCEKPRV)) Q:PXCEKPRV'>0  Q:PXCEPRV=+^TMP("PXK",$J,"PRV",PXCEKPRV,0,"AFTER")  S:"P"=$P(^TMP("PXK",$J,"PRV",PXCEKPRV,0,"AFTER"),"^",4) PXCEPRIM=1
 Q:PXCEKPRV>0
 I 'PXCEPRIM D  I $D(DTOUT)!$D(DUOUT) Q
 . N DIR,DA
 . S DIR(0)="9000010.06,.04A"
 . S DIR("A")="Is this provider Primary or Secondary?  "
 . S DIR("B")=$S(PXCEPRIM:"S",1:"P")
 . D ^DIR
 I PXCEPRIM S Y="S"
 ;Set PXCENPRV to the next provider in ^TMP("PXK",$J,"PRV",
 I $Q(^TMP("PXK",$J,"PRV"))["PXK,"_$J_",PRV" S PXCENPRV=+$O(^TMP("PXK",$J,"PRV",""),-1)+1
 E  S PXCENPRV=1
 S ^TMP("PXK",$J,"PRV",PXCENPRV,"IEN")=""
 S ^TMP("PXK",$J,"PRV",PXCENPRV,0,"BEFORE")=""
 S ^TMP("PXK",$J,"PRV",PXCENPRV,0,"AFTER")=PXCEPRV_"^"_PXCEPAT_"^"_PXCEVIEN_"^"_$P(Y,"^")
 S ^TMP("PXK",$J,"PRV",PXCENPRV,812,"BEFORE")=""
 S ^TMP("PXK",$J,"PRV",PXCENPRV,812,"AFTER")="^"_PXCEPKG_"^"_PXCESOR
 Q
 ;
