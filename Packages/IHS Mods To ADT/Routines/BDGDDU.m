BDGDDU ; IHS/ANMC/LJF - PIMS DD UTILITIES ;
 ;;5.3;PIMS;;APR 26, 2002
 ;
GROUP ;EP; list all fields in selected file with IHS under GROUP
 NEW FILE,FLD,DIR,Y,X,DIRUT
 S DIR(0)="NO^1:9999999.99",DIR("A")="Select FILE NUMBER"
 D ^DIR Q:Y<1  S FILE=+Y
 ;
 S FLD=0
 F  S FLD=$O(^DD(FILE,FLD)) Q:'FLD  D
 . S X=0 F  S X=$O(^DD(FILE,FLD,20,X)) Q:'X  D
 .. I $G(^DD(FILE,FLD,20,X,0))="IHS" D
 ... W !,FLD,?15,$P(^DD(FILE,FLD,0),U)
 .. I +$P(^DD(FILE,FLD,0),U,2) D SUBFILE(FILE,FLD)  ;multiple
 Q
 ;
SUBFILE(FILE,FLD) ; find subfile fields with IHS under GROUP
 NEW SUBFILE,SUBFLD,X
 S SUBFILE=+$P(^DD(FILE,FLD,0),U,2),SUBFLD=0
 F  S SUBFLD=$O(^DD(SUBFILE,SUBFLD)) Q:'SUBFLD  D
 . S X=0 F  S X=$O(^DD(SUBFILE,SUBFLD,20,X)) Q:'X  D
 .. I $G(^DD(SUBFILE,SUBFLD,20,X,0))="IHS" D
 ... W !?5,SUBFLD,?20,$P(^DD(SUBFILE,SUBFLD,0),U)
 .. I +$P(^DD(SUBFILE,SUBFLD,0),U,2) D SUBFILE(SUBFILE,SUBFLD)
 Q