DGRPTX31 ; ;05/27/04
 S X=DG(DQ),DIC=DIE
 X ^DD(2,.322013,1,1,1.3) I X S X=DIV S Y(1)=$S($D(^DPT(D0,.322)):^(.322),1:"") S X=$P(Y(1),U,14),X=X S DIU=X K Y S X="" X ^DD(2,.322013,1,1,1.4)
 S X=DG(DQ),DIC=DIE
 X ^DD(2,.322013,1,2,1.3) I X S X=DIV S Y(1)=$S($D(^DPT(D0,.322)):^(.322),1:"") S X=$P(Y(1),U,15),X=X S DIU=X K Y S X="" X ^DD(2,.322013,1,2,1.4)
 S X=DG(DQ),DIC=DIE
 D AUTOUPD^DGENA2(DA)
