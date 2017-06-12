DICUIX ;SEA/TOAD,SF/TKW-FileMan: Lookup Tools, Indexes ;19APR2011
 ;;22.0;VA FileMan;**20,28,67,164,165**;Mar 30, 1999;Build 34
 ;Per VHA Directive 2004-038, this routine should not be modified.
 ;
INDEX(DIFILE,DIFLAGS,DINDEX,DIFROM,DIPART,DINUMBER,DISCREEN,DILIST,DIOUT) ;
 ;
 ; build DINDEX array data for index
 ;
I1 ; try to find Index in Index file
 ;
 N DICODE,DIGET,DILENGTH,DINODE,DISUB,DITEMP,DITEMP2,DITO,DITOIEN,DITYPE,DIWAY,DIXIEN
 S DINDEX("FLIST")="",DINDEX("AT")=1,DIFROM("IEN")=+$G(DIFROM("IEN")),DIXIEN="",DIGET=1
 S:DINDEX'="#" DIXIEN=$O(^DD("IX","BB",DIFILE,DINDEX,""))
 I 'DIXIEN D XREF(.DIFILE,.DIFLAGS,.DINDEX,.DIPART,.DIFROM) Q
 ;
I2 ; in Index file, build list of subscript data
 ;
 S DINODE=^DD("IX",DIXIEN,0)
 S DINDEX("IXTYPE")=$P(DINODE,U,4) S:DIFLAGS["4" DINDEX("IXFILE")=DIXIEN
 S DINDEX("#")=0
 S DISUB=$O(^DD("IX",DIXIEN,11.1,"AC","Z"),-1)
 I $G(DIFROM(DISUB+1)) M DIFROM("IEN")=DIFROM(DISUB+1)
 S (DISUB,DIOUT)=0 N S
 F  D  Q:'DISUB  Q:DIOUT
 . S DISUB=$O(^DD("IX",DIXIEN,11.1,"AC",DISUB)) Q:'DISUB  S S=$O(^(DISUB,0)) Q:'S
 . S DINDEX("#")=DISUB,DIGET=1
 . S DINODE=$G(^DD("IX",DIXIEN,11.1,S,0))
 . I DIFLAGS["l" N X D  S DINDEX(DISUB,"PROMPT")=X
 . . S X=$P(DINODE,U,8) Q:X]""
 . . I $P(DINODE,U,3),$P(DINODE,U,4) S X=$P($G(^DD($P(DINODE,U,3),$P(DINODE,U,4),0)),U)
 . . Q
 . S DINDEX(DISUB,"FIELD")=$P(DINODE,U,4)
 . S DINDEX(DISUB,"FILE")=$P(DINODE,U,3)
 . I $P(DINODE,U,2)["C"!(DINDEX(DISUB,"FILE")="") S DINDEX(DISUB,"FIELD")=""
 . I DINDEX(DISUB,"FILE"),DINDEX(DISUB,"FIELD") D
 . . I $G(^DD("IX",DIXIEN,11.1,S,4))]"" S DINDEX(DISUB,"TRANCODE")=^(4)
 . . I $G(^DD("IX",DIXIEN,11.1,S,2))]"" D
 . . . I $G(^DD("IX",DIXIEN,11.1,S,3))="" S DIGET=0 Q
 . . . S DINDEX(DISUB,"TRANOUT")=^DD("IX",DIXIEN,11.1,S,3),DIGET=3 Q
 . . I "KSMU"[DINDEX("IXTYPE") S DIGET=2
 . . Q
 . S DILENGTH=$P(DINODE,U,5) I 'DILENGTH S DILENGTH=30 ;GFT
 . S DIWAY=$S($P(DINODE,U,7)="B":-1,1:1)
 . D COMMON1^DICUIX2
 . Q
 I DIOUT S @DILIST@(0)="0^"_DINUMBER_"^0" D OUT^DICL Q
 D:DIFLAGS'["q" COMMON2^DICUIX2
 S DINDEX("FLIST")=DINDEX("FLIST")_"^"
 I DIFLAGS'["l",DIFLAGS'["h" Q
 N F,F1,F2,I S F=DINDEX("FLIST")
 F I=1:1:DINDEX("#") I $G(DINDEX(I,"GETEXT"))=0 S F1=$G(DINDEX(I,"FILE")),F2=$G(DINDEX(I,"FIELD")) I F1=DIFILEI,F2 D
 . S F1=$F(F,("^"_F2_"^")) Q:'F1  S F1=F1-2
 . S $E(F,(F1-$L(F2)),F1)="" Q
 S DINDEX("FLISTD")=F Q
 ;
XREF(DIFILE,DIFLAGS,DINDEX,DIPART,DIFROM) ;
 ; Index is in "IX" nodes
 ;
X1 ; Set DINDEX for search through upright file
 ;
 I DINDEX="#" D  Q
 . S DINDEX("#")=0,DINDEX(1,"FILE")=DIFILE,DINDEX(1,"ROOT")=DIFILE(DIFILE),DINDEX(1,"TYPE")="N"
 . N X S X=$S($G(DIFROM(1)):DIFROM(1),DIPART(1):DIPART(1),1:$G(DIFROM("IEN")))
 . S (DIFROM,DIFROM(1))=X S:X DIFROM("IEN")=X
 . I DIFLAGS["l"!(DIFLAGS["h") S DINDEX("FLISTD")=""
 . D:DIFLAGS'["q" COMMON2^DICUIX2 Q
 S DINDEX("#")=1,DINDEX("IXTYPE")="R"
 S DINDEX(1,"FILE")=$O(^DD(DIFILE,0,"IX",DINDEX,""))
 ;
X2 ; Build DINDEX for index in IX nodes.
 ;
 S DIOUT=0,DILENGTH=30
 S DINDEX(1,"FIELD")=""
 I DINDEX(1,"FILE") S DINDEX(1,"FIELD")=$O(^DD(DIFILE,0,"IX",DINDEX,DINDEX(1,"FILE"),""))
 I DINDEX(1,"FIELD")="",DINDEX="B" D
 . S DINDEX(1,"FILE")=DIFILE
 . S DINDEX(1,"FIELD")=.01 Q
 I DIFLAGS[3,DINDEX="B",'$D(@DIFILE(DIFILE)@("B")) D
 . D TMPB^DICUIX1(.DITEMP,DIFILE)
 . S DIFILE(DIFILE,"NO B")=DITEMP Q
 I DIFLAGS["l" S DINDEX(1,"PROMPT")=""
 I DINDEX(1,"FILE"),DINDEX(1,"FIELD") D  I DINDEX("IXTYPE")="*" K DINDEX S DINDEX="" Q
 . I DIFLAGS["l" S DINDEX(1,"PROMPT")=$P($G(^DD(DINDEX(1,"FILE"),DINDEX(1,"FIELD"),0)),U)
 . N I,X,Y
 . F I=0:0 S I=$O(^DD(DINDEX(1,"FILE"),DINDEX(1,"FIELD"),1,I)) Q:'I  S X=$G(^(I,0)) I $P(X,U,2)=DINDEX S Y=$G(^(1)) D  Q
 . . S X=$E($P(X,U,3),1,2)
 . . S DINDEX("IXTYPE")=$S(X="":"R",X="KW":"K",X="SO":"S",(X="TR")!(X="BU"):"*",X]"":X,1:"R")
 . . I "KSMU"[DINDEX("IXTYPE") S DIGET=2
 . . S DILENGTH=+$P(Y,"$E(X,1,",2)
 . . S:'DILENGTH DILENGTH=30 Q  ;!(DILENGTH>100)
 . Q
 I $G(DIFROM(2)) S DIFROM("IEN")=DIFROM(2)
 S DISUB=1,DIWAY=1,DIOUT=0
 N I,X,Y
 D COMMON1^DICUIX2
 I DIOUT S @DILIST@(0)="0^"_DINUMBER_"^0" D OUT^DICL Q
 D:DIFLAGS'["q" COMMON2^DICUIX2
 S DINDEX("FLIST")=DINDEX("FLIST")_"^"
 I DIFLAGS["l"!(DIFLAGS["h") D
 . I DIGET=2 S DINDEX("FLISTD")="^^" Q
 . S DINDEX("FLISTD")=DINDEX("FLIST") Q
 S DITEMP=$G(DIFILE(DIFILE,"NO B")) I DITEMP]"" D BLDB^DICUIX1(DIFILE(DIFILE),DITEMP)
 Q
 ;
 ;
