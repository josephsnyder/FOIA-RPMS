AQAOX672 ; COMPILED XREF FOR FILE #9002166.7 ; 02/13/06
 ; 
 S DIKZK=1
 S DIKZ(0)=$G(^AQAOCC(7,DA,0))
 S X=$P(DIKZ(0),U,1)
 I X'="" S ^AQAOCC(7,"B",$E(X,1,30),DA)=""
 S X=$P(DIKZ(0),U,2)
 I X'="" S ^AQAOCC(7,"AB",$E(X,1,30),DA)=""
END Q
