TIUUPEDT ; SLC/JER - Upload Parameter Edit ;4/23/93  14:53
 ;;1.0;TEXT INTEGRATION UTILITIES;;Jun 20, 1997
 ;IHS/ITSC/LJF 02/27/2003 added code for IHS parameters
 ;
MAIN ; Controls branching
 N DIC,DA,DIE,DLAYGO,DR,TIUPRM0,TIUPRM1,TIUPRM3,TIUUSRC,TIU1ST,X,Y
 N TIUQUIT
 D:'$D(TIUPRM0) SETPARM^TIULE
 W !,"First edit Institution-wide upload parameters:",!
 S (DIC,DLAYGO)=8925.99,DIC(0)="AEMQL",DIC("A")="Select INSTITUTION: "
 D ^DIC K DLAYGO Q:+Y'>0  S DA=+Y
 S DIE=8925.99,DR="[TIU UPLOAD PARAMETER EDIT]"
 D ^DIE
 S DR="[BTIU UPLOAD]" D ^DIE    ;IHS/ITSC/LJF 02/27/2003 added call to IHS template
 D SETPARM^TIULE
 W !,"Now edit the DOCUMENT DEFINITION file:"
 F  D  Q:+$G(TIUQUIT)
 . N TIUREP,TIUX,X,Y,DA,DIE,DR
 . S Y=$$ASKTYP^TIULA2(38,"LAST","I $P(^TIU(8925.1,+Y,0),U,4)'=""O""","DOCUMENT DEFINITION: ")
 . I +Y'>0 S TIUQUIT=1 Q
 . S DA=+Y,TIUREP=+Y_U_$$PNAME^TIULC1(+DA)
 . S TIUREP(0)=$G(^TIU(8925.1,+DA,0))
 . S DIE="^TIU(8925.1,",DR="[TIU UPLOAD FIELD EDIT]"
 . D ^DIE S Y=1
 . I $D(^TIU(8925.1,+DA,"HEAD"))>9!($D(^TIU(8925.1,+DA,"ITEM"))>9) D
 . . W !!,"The header for the ",$P(TIUREP,U,2)," ",$$DDH(TIUREP(0))," is now defined as:"
 . . I $P(TIUPRM0,U,16)="D" D DHDR^TIUTHLP(.TIUREP,TIUPRM0,TIUPRM1)
 . . I $P(TIUPRM0,U,16)="C" D CHDR^TIUTHLP(.TIUREP,TIUPRM0,TIUPRM1)
 . . W !
 Q
DDH(TIUDDEF) ; Translate position in DDH
 N TIUY
 S TIUY=$S($P(TIUDDEF,U,4)="DOC":"TITLE",$P(TIUDDEF,U,4)="DC":"DOCUMENT CLASS",$P(TIUDDEF,U,4)="CL":"CLASS",1:"Document Definition")
 Q TIUY
TXTFLD(TFILE,TIUFLT) ; Get Text Field # from ^DD(Target file #,
 N DIC,X,Y
 S DIC="^DD("_TFILE_",",DIC(0)="AEMQZ",DIC("A")="Select TARGET TEXT FIELD: "
 S DIC("S")="I +$$ISWP^TIUUPEDT(TFILE,+Y)"
 I $D(TIUFLT),(+$G(TIUFLT)>0) S DIC("B")=TIUFLT
 D ^DIC K DIC("S") G:+Y'>0 TXTFLDX
 S Y=+Y_";"_$P($P(Y(0),U,4),";")
TXTFLDX Q Y
ISWP(TFILE,TFLD) ; Is a given field a Word-processing type field
 N X,Y S Y=0
 I +$P(^DD(TFILE,TFLD,0),U,2)>0 D
 . N SFILE S SFILE=+$P(^DD(TFILE,TFLD,0),U,2)
 . S Y=$S($P(^DD(SFILE,.01,0),U,2)["W":1,1:0)
 Q Y
