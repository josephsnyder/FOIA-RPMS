AQAOX853 ; COMPILED XREF FOR FILE #9002168.5 ; 02/13/06
 ; 
 S DIKZK=1
 S DIKZ(0)=$G(^AQAO(5,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" S ^AQAO(5,"B",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,5)
 I X'="" S ^AQAO(5,"AC",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,14)
 I X'="" S ^AQAO(5,"C",$E(X,1,30),DA)=""
END G ^AQAOX854
