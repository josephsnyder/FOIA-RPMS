XMXPARMB ;ISC-SF/GMB-Parameter check for XMXAPIB ;04/17/2002  14:12
 ;;8.0;MailMan;;Jun 28, 2002
CRE8MBOX(XMDUZ,XMDATE) ; Create a mailbox for a user
 K XMERR,^TMP("XMERR",$J)
 D CHKUSER^XMXPARM1(.XMDUZ,1)
 I $D(XMDATE) S XMDATE=$$XMDATE("XMDATE",XMDATE)
 Q
XMDATE(XMPARM,XMDATE) ;
 N %DT,Y,X
 S X=XMDATE ;,%DT(0)="-NOW"
 S %DT="X"
 D ^%DT
 Q:Y>0 Y
 N XMP
 S XMP("PARAM","ID")=XMPARM
 S XMP("PARAM","VALUE")=XMDATE
 D ERRSET^XMXUTIL(39420,.XMP) ; Must be an exact date.
 Q XMDATE
VA200(XMDUZ) ; Make sure DUZ exists
 Q:$D(^VA(200,XMDUZ,0))
 N XMP
 S XMP("PARAM","ID")="XMDUZ"
 S XMP("PARAM","VALUE")=XMDUZ,XMP(1)=XMDUZ
 D ERRSET^XMXUTIL(39433,.XMP) ; User '|1|' not found.
 Q
TERMMBOX(XMDUZ) ; Terminate a mailbox (delete all traces of user in MailMan)
 K XMERR,^TMP("XMERR",$J)
 D CHKUSER^XMXPARM1(.XMDUZ,1)
 Q
MBOX(XMDUZ) ; 
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 Q
LISTBSKT(XMDUZ,XMFLAGS,XMAMT,XMSTART,XMPART,XMTROOT) ;
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 I $D(XMFLAGS) D XMFLAG^XMXPARM("XMFLAGS",XMFLAGS,"BN")
 I $D(XMAMT) D XMAMT("XMAMT",.XMAMT)
 Q
LISTMSGS(XMDUZ,XMK,XMFLDS,XMFLAGS,XMAMT,XMSTART,XMF,XMTROOT) ;
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 I $D(XMK) S:"^*^!^"'[(U_XMK_U) XMK=$$XMK^XMXPARM(XMDUZ,"XMK",XMK)
 I $D(XMFLAGS) D XMFLAG^XMXPARM("XMFLAGS",XMFLAGS,"BCNP")
 I $D(XMAMT) D XMAMT("XMAMT",.XMAMT)
 Q
DELBSKT(XMDUZ,XMK,XMFLAGS) ;
 D BSKT(.XMDUZ,.XMK)
 I $D(XMFLAGS) D XMFLAG^XMXPARM("XMFLAGS",XMFLAGS,"D")
 Q
BSKT(XMDUZ,XMK) ; Make sure basket exists
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 S:$D(XMK) XMK=$$XMK^XMXPARM(XMDUZ,"XMK",XMK)
 Q
CRE8BSKT(XMDUZ,XMKN) ;
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 S XMKN=$$XMKN(XMDUZ,"XMKN",XMKN)
 Q
NAMEBSKT(XMDUZ,XMK,XMKN) ;
 K XMERR,^TMP("XMERR",$J)
 D XMDUZ^XMXPARM(.XMDUZ,.XMV)
 S XMK=$$XMK^XMXPARM(XMDUZ,"XMK",.XMK)
 S XMKN=$$XMKN(XMDUZ,"XMKN",XMKN)
 Q
XMKN(XMDUZ,XMPARM,XMKN,XMOKXST) ; Validate a prospective basket name
 ; XMKN     prospective basket name
 ; XMOKXST  is it OK if a basket with that name already exists? (0=no; 1=yes)
 N XMOK
 I '$G(XMOKXST) D  Q:$D(XMERR) XMKN
 . Q:'$$FIND1^DIC(3.701,","_XMDUZ_",","XQ",XMKN)
 . N XMP
 . S XMP("PARAM","ID")=XMPARM
 . S XMP("PARAM","VALUE")=XMKN,XMP(1)=XMKN
 . D ERRSET^XMXUTIL(39440,.XMP) ; Basket '|1|' already exists.
 D VAL^DIE(3.701,"1,"_XMDUZ_",",.01,"",XMKN,.XMOK) Q:XMOK'=U XMKN
 N XMP
 S XMP("PARAM","ID")=XMPARM
 S XMP("PARAM","VALUE")=XMKN,XMP(1)=2,XMP(2)=30
 D ERRSET^XMXUTIL(39437,.XMP) ; Must be |1|-|2| characters, no ^.
 Q XMKN
XMAMT(XMPARM,XMAMT) ;
 Q:'$D(XMAMT)
 Q:XMAMT=""
 Q:XMAMT="*"
 Q:XMAMT=+XMAMT&(XMAMT>0)
 N XMP
 S XMP("PARAM","ID")=XMPARM
 S XMP("PARAM","VALUE")=XMAMT,XMP(1)=XMAMT
 D ERRSET^XMXUTIL(39441,.XMP) ; Must be a positive number OR *.
 Q
SERV(XMKN,XMZ) ;
 K XMERR,^TMP("XMERR",$J)
 D XMSERV(.XMKN)
 D XMZ^XMXPARM(.XMZ)
 Q
XMSERV(XMKN) ;
 I $E(XMKN,1,2)'="S." D  Q
 . N XMP
 . S XMP("PARAM","ID")="XMKN"
 . S XMP("PARAM","VALUE")=XMKN,XMP(1)=XMKN
 . D ERRSET^XMXUTIL(39442,.XMP) ; Server basket name must begin with 'S.'.
 Q:$O(^DIC(19,"B",$E(XMKN,3,999),0))
 N XMP
 S XMP("PARAM","ID")="XMKN"
 S XMP("PARAM","VALUE")=XMKN,XMP(1)=XMKN
 D ERRSET^XMXUTIL(39443,.XMP) ; Server basket '|1|' not found.  Name must be exact.
 Q
