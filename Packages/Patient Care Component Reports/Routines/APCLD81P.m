APCLD81P ; IHS/CMI/LAB - 2008 DIABETES AUDIT PRINT ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;
 ;
 S APCLQUIT=0,APCLPG=0,APCLIOSL=$S($G(APCLGUI):55,1:IOSL)
 I APCLPREP=3 G CUML
 ;print ind audits first
 S APCLPD=0,APCLGUIC=0 F  S APCLPD=$O(^XTMP("APCLDM81",APCLJOB,APCLBTH,"AUDIT",APCLPD)) Q:APCLPD'=+APCLPD!(APCLQUIT)  D
 .I $G(APCLGUI),APCLGUIC W !,"ZZZZZZZ",!  ;maw
 .S APCLGUIC=1
 .W:$D(IOF) @IOF
 .W $$CTR("ASSESSMENT OF DIABETES CARE, 2008         DATE AUDIT RUN: "_$$FMTE^XLFDT(DT),80)
 .;W !,$$CTR("DATE AUDIT RUN: "_$$FMTE^XLFDT(DT),80)
 .W !,"AUDIT DATE: ",$$FMTE^XLFDT(APCLRED),?30,"FACILITY NAME: ",$P(^DIC(4,DUZ(2),0),U)
 .W !,"AREA: ",$$I(6),?12,"SU: ",$$I(8),?30,"FACILITY: ",$$I(10),?48,"# PTS ON DM REGISTER: ",$$I(12)
 .I $G(APCLSDPI)]"" W !,"Does you community receive SDPI grant funds?  "_$S(APCLSDPI=1:"Yes",APCLSDPI=2:"No",APCLSDPI=3:"Don't know",1:"")
 .I $G(APCLSDPI)=1 W "   ",APCLSDPG
 .;W !!,"TRIBAL AFFIL: ",$P($$I(120),U,1)," ",$E($P($$I(120),U,2),1,20),"   ","COMMUNITY: ",$P($$I(121),U)," ",$E($P($$I(121),U,2),1,19)
 .W !,"TRIBAL AFFIL: ",$P($$I(120),U,1)," ",$E($P($$I(120),U,2),1,20),"   ","STATE of Residence: ",$P($$I(121),U)  ;cmi/maw 12/17/2007 DM2008
 .W !,"REVIEWER: ",$$I(14),?17,"CHART #: ",$$I(16),?35,"DOB: ",$$I(18),?55,"SEX: ",$$I(20)
 .W !,$S($G(APCLPPN):"NAME: "_$P($G(^DPT(APCLPD,0)),U),1:"") S J=$S($G(APCLPPN):$L($P(^DPT(APCLPD,0),U))+10,1:0) W ?J,"DESIGNATED PCP:  ",$$I(15)
 .W !,"DATE OF DIABETES DIAGNOSIS:"
 .W ?42,"Lipid Lowering Agent:  " ;,$$I(61)
 .W !?1,"CMS Register: ",$$I(22),?45,$$I(61)
 .W !?1,"Problem List: ",$$I(23)
 .W ?42,"IMMUNIZATIONS"
 .W !?1,"1st DX recorded in PCC: ",$$I(21)
 .W ?42,"Flu vaccine (past yr): ",$$I(64)
 .W !,"Diabetes Type: ",$$I(29)
 .W ?42,"Pneumovax Ever: ",$$I(66)
 .W !?1,"CMS Register: ",$$I(24)
 .W ?42,"Td in past 10 yrs: ",$$I(68)
 .W !?1,"Problem List: ",$$I(25)
 .W ?42,"PPD Status: ",$$I(70)
 .W !?1,"PCC POV's:    ",$$I(26)
 .W ?42,"If PPD Pos, INH Tx Complete: "
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !
 .W ?44,$P($$I(72),U),"  ",$P($$I(72),U,2)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"TOBACCO USE: ",$$I(27)
 .W ?42,"If PPD Neg, Last PPD: " W $$FMTE^XLFDT($$I(114))
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,"Referred for (or provided) Cessation"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,"Counseling: ",$$I(28)
 .W ?42,"Date of Last EKG: ",$$I(76)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"VITAL STATISTICS"
 .W ?42,"LABORATORY DATA"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Height: ",$$I(30)
 .W ?42,"HbA1c (most recent): ",$P($$I(78),U,1)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .S %=$P($$I(32)," ",1),%=$$STRIP^XLFSTR($J(%,6,2)," ")
 .W !,"Last Weight (in 2 yrs): ",%," ",$P($$I(32)," ",2,99)
 .W ?45,"Date Obtained: ",$P($$I(78),U,2)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"  BMI: ",$$I(112)
 .;W ?42,"HbA1c (next most recent): ",$P($$I(78),U,4)  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"HTN (documented DX): ",$$I(34)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Last 3 Blood Pressures (in past yr):"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";")
 .W ?42,"MOST RECENT SERUM VALUE (in the"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";",2)
 .W ?42,"past 12 months):"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";",3)
 .W ?43,"Creatinine: ",$$I(84)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,?43,"  Estimated GFR: "_$$I(79)  ;documented in the"  ;cmi/maw 12/18/2007 DM2008
 .;W !,?43,"medical record during the audit"  ;cmi/maw 12/18/2007 DM2008
 .;W !,?43,"period: "_$$I(79)  ;cmi/maw 12/18/2007 DM2008
 .W !,?43,"Tot Cholesterol: ",$$I(86)
 .W !,"EXAMINATIONS (in past year)"
 .W ?43,"HDL Cholesterol: ",$$I(89)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Foot exam-complete: "
 .W ?43,"LDL Cholesterol: ",$$I(88)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(38)
 .W ?43,"Triglycerides: ",$$I(90)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Eye exam (dilated/fundus): "
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(40)
 .;W ?43,"Urinalysis or A/C Ratio: "  ;cmi/maw 12/18/2007 DM2008
 .W ?43,"Albumin:Creatinine Ratio (UACR): "_$P($$I(91),U)  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Dental exam: "
 .;W ?44,$$I(92)  ;cmi/maw 12/18/2007 DM2008
 .W ?43,"Protein:Creatinine Ratio (UPCR): "_$S($P($$I(91),U)="":$P($$I(93),U),1:"")  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(42)
 .;W ?43,"Proteinuria: "  ;cmi/maw 12/18/2007 DM2008
 .W ?43,"Other quantitative urine"  ;cmi/maw 12/18/2007 DM2008
 .W !,?43,"protein test: "_$$QUANCHK   ;cmi/maw 12/18/2007 DM2008
 .W !,?43,"None: "_$$ACPCOQ  ;cmi/maw 12/18/2007 DM2008
 .W !,?50,$$ACPCRES
 .;I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .;W !
 .;W ?44,$$I(94)  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"EDUCATION (in past year)"
 .;W ?43,"Microalbuminuria: "  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Diet Instruction: ",$$I(44)
 .;W ?44,$$I(96)  ;cmi/maw 12/18/2007 DM2008
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Exercise Instruction: ",$$I(46)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"DM Education (Other): ",$$I(48)
 .;W ?42,"Self monitoring of blood glucose"
 .;I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .;W !
 .;W ?43,"documented in chart:  ",$$I(98)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"DM THERAPY"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Select all that currently apply"
 .W ?42,"Supplemental Section"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(51),?4,"1 Diet & Exercise Alone"
 .W ?42,"Does pt have depression as an active"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(52),?4,"2 Insulin"
 .W ?43,"problem?  ",$$I(200)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(53),?4,"3 Sulfonylurea "
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(54),?4,"4 Metformin "
 .W ?42,"If 'No', has pt been screened for"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(55),?4,"5 Acarbose "
 .W ?43,"depression in the past year?"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(56),?4,"6 Glitazones"
 .W !?1,$$I(58),?4,"7 Incretin Mimetics"  ;cmi/maw 12/18/2007 DM2008
 .W !?1,$$I(59),?4,"8 DPP4 inhibitors"  ;cmi/maw 12/18/2007 DM2008
 .W ?44,$$I(210)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$P($$I(57),U),?4,"9 Unknown/Refused" I $$I(57)]"" W "  ",$P($$I(57),U,2)
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"ACE Inhibitor/ARB Use: ",$$I(60)
 .W ?43,"Local Option question:"
 .I $Y>(APCLIOSL-1) D PAGE Q:APCLQUIT
 .W !,"Aspirin/AntiPlatelet Therapy: ",$$I(62)
 .I $E(IOST,1,2)'="P-" W !! S DIR(0)="E" D ^DIR K DIR ;CMI/GRL 1/18/07
 .;D PAGE Q:APCLQUIT
CUML ;
 I APCLPREP=4!(APCLPREP=3) D CUML^APCLD814
DONE ;
 K ^TMP($J)
 K ^XTMP("APCLDM81",APCLJOB,APCLBTH),APCLJOB,APCLBTH
 Q
I(I) ;
 Q ^XTMP("APCLDM81",APCLJOB,APCLBTH,"AUDIT",APCLPD,I)
 ;
PAGE ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT=1 Q
 W:$D(IOF) @IOF
 Q
 ;
ACPCOQ() ;-- return none if no UACR, UPCR, Quant
 I $P($$I(91),U)="X" Q ""
 I $P($$I(93),U)="X" Q ""
 I $P($$I(95),U)="X" Q ""
 Q "X"
 ;
ACPCRES() ;-- return result from UACR UPCR
 I $P($$I(91),U)="X" Q $P($$I(91),U,2)
 I $P($$I(93),U)="X" Q $P($$I(93),U,2)
 Q ""
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------
QUANCHK() ;--check quantitative
 I $P($$I(91),U)]"" Q ""
 I $P($$I(93),U)]"" Q ""
 Q $$I(95)
 ;