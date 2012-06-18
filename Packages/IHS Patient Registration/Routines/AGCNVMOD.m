AGCNVMOD ;IHS/SD/EFG - CONVERT AUPNPAT FIELD 3401 TO A POINTER ;   
 ;;7.1;PATIENT REGISTRATION;;AUG 25,2005
 ;
EMOD ;CHANGE FIELD 3401 OF AUPNPAT TO USE POINTER TO ELIGIBILITY
 ;MODIFIER FILE NOT DESCRIPTION
 K AG("DFN"),AG("MODPTR")
 S AG("DFN")=0
 F  S AG("DFN")=$O(^AUPNPAT(AG("DFN"))) Q:'AG("DFN")  D
 . Q:'$D(^AUPNPAT(AG("DFN"),34,0))
 . S AG("MODPTR")=0
 . F  S AG("MODPTR")=$O(^AUPNPAT(AG("DFN"),34,AG("MODPTR"))) Q:'AG("MODPTR")  D
 . . Q:$P(^AUPNPAT(AG("DFN"),34,AG("MODPTR"),0),U)>0
 . . D FIXMOD
 Q
FIXMOD ;CHANGE .01 FIELD TO A POINTER
 S DA(1)=AG("DFN")
 S DA=AG("MODPTR")
 S DIK="^AUPNPAT("_DA(1)_",34,"
 D ^DIK
 N DA,DIC,DD,DLAYGO,DO,X,Y
 K DD,DO
 S X=AG("MODPTR")
 S DINUM=+AG("MODPTR")
 S DA(1)=AG("DFN")
 S DIC="^AUPNPAT("_DA(1)_",34,"
 S DIC(0)="L"
 S DIC("P")=$P($G(^DD(9000001,3401,0)),U,2)
 S DLAYGO=9000001.03401
 D FILE^DICN
 Q
