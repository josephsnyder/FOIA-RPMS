BGUAPI ; IHS/OIT/MJL - Call back for API/RPC Query Utility ;
 ;;1.5;BGU;;MAY 26, 2005
APICALL(RESULT,BGUFILE,BGUIEN,BGUMSG,BGUPARAM) ;PEP CALL FROM REMOTE PROCEDURE BGU APICALL
 ; Has to return data in RESULT(n)
 S BGUIEN=+BGUIEN
 I BGUMSG="" S RESULT(1)=-1,RESULT(2)="No Message Sent To API Call!" Q
 I '$D(^BGUMCD("C",BGUMSG)) S RESULT(1)=-1,RESULT(2)=BGUMSG_" Is Not Defined In BGU MUMPS CODE File!" Q
 S BGUACT="",BGUCIEN=$O(^BGUMCD("C",BGUMSG,"")) S:BGUCIEN'="" BGUACT=$P(^BGUMCD(BGUCIEN,0),"^",4) I BGUACT'="A" S RESULT(1)=-1,RESULT(2)=BGUMSG_" Is Not Active!" Q
 F  S X=$P(BGUMSG,"|",2) Q:'$L(X)  S X=$P(BGUMSG,"|",1)_"^"_$P(BGUMSG,"|",2,99) S BGUMSG=X
 X BGUMSG
 Q
RPCCALL(RESULT,BGUMSG,BGUPARAM) ;PEP CALL FROM REMOTE PROCEDURE BGU RPCCALL
 I BGUMSG="" S RESULT(1)=-1,RESULT(2)="No Message Sent To RPC Call!" Q
 I '$D(^BGUMCD("C",BGUMSG)) S RESULT(1)=-1,RESULT(2)=BGUMSG_" Is Not Defined In BGU MUMPS CODE File!" Q
 S BGUACT="",BGUCIEN=$O(^BGUMCD("C",BGUMSG,"")) S:BGUCIEN'="" BGUACT=$P(^BGUMCD(BGUCIEN,0),"^",4) I BGUACT'="A" S RESULT(1)=-1,RESULT(2)=BGUMSG_" Is Not Active!" Q
 ; Has to return data in RESULT(n)
 F  S X=$P(BGUMSG,"|",2) Q:'$L(X)  S X=$P(BGUMSG,"|",1)_"^"_$P(BGUMSG,"|",2,99) S BGUMSG=X
 X BGUMSG
 Q
OLD ;
 S X=$P(MSG,"|",1) I $L(X) S X=$P(MSG,"|",1)_"^"_$P(MSG,"|",2,99) S MSG=X
 X MSG
 ; Has to return data in RESULT(n)
 Q
 ;
