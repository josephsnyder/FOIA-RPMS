XMRMSM ;(WASH ISC)/CAP-MSM TCP/IP Front End ;04/30/2002  07:24
 ;;8.0;MailMan;**27**;Jun 28, 2002;Build 1
 Q
 ;%=socket number
SOC25 ;
 N DIQUIET
 S XMRPORT=$G(%),IOT="TCP",(IO,IO(0))=56,DIQUIET=1
 I $$NEWERR^%ZTER N $ETRAP,$ESTACK S $ETRAP="D TRP^XMCTRAP"
 E  S X="TRP^XMCTRAP",@^%ZOSF("TRAP")
 D DT^DICRW,DUZ^XUP(.5)
 S ER=0
 U IO
 S XMCHAN="TCP/IP-MAILMAN",XMNO220=""
 D ENT^XMR
HALT ;Unlock all locks, disconnect the connection and quit
 G ^XUSCLEAN
