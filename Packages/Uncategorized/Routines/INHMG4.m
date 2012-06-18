INHMG4 ;KN; 19 Aug 95 06:59;Script Message Generator - 'INHSG MESSAGE' TEMPLATE
 ;;3.01;BHL IHS Interfaces with GIS;;JUL 01, 2001
 ;COPYRIGHT 1991-2000 SAIC
 ;
 ; MODULE NAME: Script Message Generator (INHMG4) - INHMG3 Extension
 ;
 ; DESCRIPTION:  
 ; This module is an extension of INHMG3 module, which is used to build 
 ; the DXS array.
 ;
 ;Code begins
 S DXS(12,9.3)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(12,9.2) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(12,9.4)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(12,9.3):D0>0 S X="""" S D0=I(0,0)"
 S DXS(13,9.2)="S I(101,0)=$G(D1),I(100,0)=$G(D0),DIP(101)=$G(^INTHL7S(D0,1,D1,0)),D0=$P(DIP(101),U) S:'$D(^INTHL7F(+D0,0)) D0=-1 S DIP(201)=$G(^INTHL7F(D0,4)) S X=$E(DIP(201),1,245)"
 S DXS(13,9.3)="N D N DIP X DXS(13,9.2) S D0=I(100,0) S D1=I(101,0)"
 S DXS(13,9.4)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(13,9.3) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(13,9.5)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(13,9.4):D0>0 S X="""" S D0=I(0,0)"
 S DXS(14,9.2)="S I(101,0)=$G(D1),I(100,0)=$G(D0),DIP(101)=$G(^INTHL7S(D0,1,D1,0)),D0=$P(DIP(101),U) S:'$D(^INTHL7F(+D0,0)) D0=-1 S DIP(202)=$C(59)_$P($G(^DD(4012,.05,0)),U,3)"
 S DXS(14,9.3)="N D N DIP X DXS(14,9.2) S DIP(201)=$G(^INTHL7F(D0,0)) S X=$P($P(DIP(202),$C(59)_$P(DIP(201),U,5)_"":"",2),$C(59)) S D0=I(100,0) S D1=I(101,0)"
 S DXS(14,9.4)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(14,9.3) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(14,9.5)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(14,9.4):D0>0 S X="""" S D0=I(0,0)"
 S DXS(15,9.2)="S I(101,0)=$G(D1),I(100,0)=$G(D0),DIP(101)=$G(^INTHL7S(D0,1,D1,0)),D0=$P(DIP(101),U) S:'$D(^INTHL7F(+D0,0)) D0=-1 S DIP(201)=$G(^INTHL7F(D0,""I"")) S X=$E(DIP(201),1,245)"
 S DXS(15,9.3)="N D N DIP X DXS(15,9.2) S D0=I(100,0) S D1=I(101,0)"
 S DXS(15,9.4)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(15,9.3) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(15,9.5)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(15,9.4):D0>0 S X="""" S D0=I(0,0)"
 S DXS(16,9.2)="S I(101,0)=$G(D1),I(100,0)=$G(D0),DIP(101)=$G(^INTHL7S(D0,1,D1,0)),D0=$P(DIP(101),U) S:'$D(^INTHL7F(+D0,0)) D0=-1 S DIP(201)=$G(^INTHL7F(D0,5)) S X=$E(DIP(201),1,245)"
 S DXS(16,9.3)="N D N DIP X DXS(16,9.2) S D0=I(100,0) S D1=I(101,0)"
 S DXS(16,9.4)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(16,9.3) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(16,9.5)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(16,9.4):D0>0 S X="""" S D0=I(0,0)"
 S DXS(17,9.2)="S I(101,0)=$G(D1),I(100,0)=$G(D0),DIP(101)=$G(^INTHL7S(D0,1,D1,0)),D0=$P(DIP(101),U) S:'$D(^INTHL7F(+D0,0)) D0=-1 S DIP(201)=$G(^INTHL7F(D0,50))"
 S DXS(17,9.3)="N D N DIP X DXS(17,9.2) S X=$P($G(^INVD(4090.2,+$P(DIP(201),U),0)),U) S D0=I(100,0) S D1=I(101,0)"
 S DXS(17,9.4)="S I(100)=""^INTHL7S("",J(100)=4010 F D=0:0 S (D,D1)=$O(^INTHL7S(D0,1,D)) Q:'D  I $D(^(D,0))#2 X DXS(17,9.3) X DICMX  Q:'$D(D)  S D=D1"
 S DXS(17,9.5)="S I(1,0)=$G(D1),I(0,0)=$G(D0),DIP(1)=$G(^INTHL7M(D0,1,D1,0)),D0=$P(DIP(1),U) S:'$D(^INTHL7S(+D0,0)) D0=-1 S I(101,0)=$G(D1) X DXS(17,9.4):D0>0 S X="""" S D0=I(0,0)"
 S DXS(18,0)="NO"
 S DXS(18,1)="YES"
 S DXS(19,"D")="DEBUG"
 S DXS(19,"P")="PRODUCTION"
 S DXS(19,"T")="TRAINING"
 S DXS(20,"F")="FORCED LAYGO"
 S DXS(20,"L")="LAYGO ALLOWED"
 S DXS(20,"N")="NO LAYGO"
 S DXS(20,"O")="LOOKUP ONLY"
 S DXS(20,"P")="PARSE ONLY"
 S DXS(21,"AL")="ALWAYS"
 S DXS(21,"ER")="ERROR/REJECT"
 S DXS(21,"NE")="NEVER"
 S DXS(21,"SU")="SUCCESS ONLY"
 S DXS(22,"AL")="ALWAYS"
 S DXS(22,"ER")="ERROR/REJECT"
 S DXS(22,"NE")="NEVER"
 S DXS(22,"SU")="SUCCESS ONLY"
 S DXS(23,0)="NO"
 S DXS(23,1)="YES"
 S DXS(24,0)="NO"
 S DXS(24,1)="YES"
 S DXS(25,0)="NO"
 S DXS(25,1)="YES"
 S DXS(26,0)="NO"
 S DXS(26,1)="YES"
 S DXS(27,"F")="FORCED LAYGO"
 S DXS(27,"L")="LAYGO ALLOWED"
 S DXS(27,"N")="NO LAYGO"
 S DXS(27,"O")="LOOKUP ONLY"
 S DXS(27,"P")="PARSE ONLY"
 S DXS(28,0)="NO"
 S DXS(28,1)="YES"
 Q
