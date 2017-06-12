BHSP10 ; IHS/MSC/MGH - PRE-INSTALL ROUTINE FOR BHS PATCH 10 ;01-Sep-2015 08:48;DU
 ;;1.0;HEALTH SUMMARY COMPONENTS;**10**;March 17, 2006;Build 4
 ;
ENV ;EP; environment check
 N PATCH
 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 ;
 ;Check for released version added
 NEW IEN,PKG S PKG="HEALTH SUMMARY COMPONENTS 1.0",IEN=$O(^XPD(9.6,"B",PKG,0))
 I 'IEN W !,"You must first install "_PKG_"." S XPDQUIT=2 Q
 ;
 ;
 ;Check for the installation of other patches
 S PATCH="BHS*1.0*9"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 S PATCH="BJPC*2.0*11"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 S PATCH="TIU*1.0*1012"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 S PATCH="ATX*5.1*11"
 I '$$PATCH(PATCH) D  Q
 . W !,"You must first install "_PATCH_"." S XPDQUIT=2
 Q
 N IN,INSTDA,STAT
 S IN="IHS STANDARD TERMINOLOGY 1.0",INSTDA=""
 I '$D(^XPD(9.7,"B",IN)) D  Q
 .W !,"You must first install the IHS Standard Terminology 1.0  before installing this patch"
 S INSTDA=$O(^XPD(9.7,"B",IN,INSTDA),-1)
 S STAT=+$P($G(^XPD(9.7,INSTDA,0)),U,9)
 I STAT'=3 D  Q
 .W !,"IHS Standard Terminology 1.0 must be completely installed before installing this patch"
 S (XPDDIQ("XPZ1"),XPDDIQ("XPZ2"))=0
 ;
PATCH(X) ;return 1 if patch X was installed, X=aaaa*nn.nn*nnnn
 ;copy of code from XPDUTL but modified to handle 4 digit IHS patch numb
 Q:X'?1.4UN1"*"1.2N1"."1.2N.1(1"V",1"T").2N1"*"1.4N 0
 NEW NUM,I,J
 S I=$O(^DIC(9.4,"C",$P(X,"*"),0)) Q:'I 0
 S J=$O(^DIC(9.4,I,22,"B",$P(X,"*",2),0)),X=$P(X,"*",3) Q:'J 0
 ;check if patch is just a number
 Q:$O(^DIC(9.4,I,22,J,"PAH","B",X,0)) 1
 S NUM=$O(^DIC(9.4,I,22,J,"PAH","B",X_" SEQ"))
 Q (X=+NUM)
 ;
