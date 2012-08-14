APCLD21P ; IHS/CMI/LAB - 2001 DIABETES AUDIT PRINT ;
 ;;2.0;IHS PCC SUITE;**2**;MAY 14, 2009
 ;
 ;
 S APCLQUIT=0
 I APCLPREP=3 G CUML
 ;print ind audits first
 S APCLPD=0 F  S APCLPD=$O(^XTMP("APCLDM21",APCLJOB,APCLBTH,"AUDIT",APCLPD)) Q:APCLPD'=+APCLPD!(APCLQUIT)  D
 .W:$D(IOF) @IOF
 .W !,$$CTR("ASSESSMENT OF DIABETES CARE, 2001         DATE AUDIT RUN: "_$$FMTE^XLFDT(APCLRED),80)
 .;W !,$$CTR("DATE AUDIT RUN: "_$$FMTE^XLFDT(DT),80)
 .W !,"AUDIT DATE: ",$$FMTE^XLFDT(APCLRED),?30,"FACILITY NAME: ",$P(^DIC(4,DUZ(2),0),U)
 .W !,"AREA: ",$$I(6),?12,"SU: ",$$I(8),?30,"FACILITY: ",$$I(10),?48,"# PTS ON DM REGISTER: ",$$I(12)
 .W !,"TRIBAL AFFIL: ",$P($$I(120),U,1)," ",$E($P($$I(120),U,2),1,20),"   ","COMMUNITY: ",$P($$I(121),U)," ",$E($P($$I(121),U,2),1,19)
 .W !,"REVIEWER: ",$$I(14),?17,"CHART #: ",$$I(16),?38,"DOB: ",$$I(18),?66,"SEX: ",$$I(20)
 .W !,"DESIGNATED PRIMARY CARE PROVIDER:  ",$$I(15)
 .W !!,"DATE OF DIABETES DIAGNOSIS:",?40,"IMMUNIZATIONS"
 .W !?1,"CMS Register: ",$$I(22),?40,"Flu vaccine (past yr): ",$$I(64)
 .W !?1,"Problem List: ",$$I(23),?40,"Pneumovax Ever: ",$$I(66)
 .W !?1,"1st DX recorded in PCC: ",$$I(21),?40,"Td in past 10 yrs: ",$$I(68)
 .W !,"Diabetes Type: ",$$I(29),?40,"PPD Status: ",$$I(70)
 .W !?1,"CMS Register: ",$$I(24),?40,"If PPD Pos, INH Tx Complete: "
 .W !?1,"Problem List: ",$$I(25),?42,$P($$I(72),U),"  ",$P($$I(72),U,2)
 .W !?1,"PCC POV's:    ",$$I(26),?40,"If PPD Neg, Last PPD date: " W $$FMTE^XLFDT($$I(114))
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !!,"TOBACCO USE: ",$$I(27),?40,"Date of Last EKG: ",$$I(76)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,"Referred for (or provided)"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,"cessation counseling: ",$$I(28),?40,"LABORATORY DATA"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?40,"HbA1c (most recent): ",$P($$I(78),U,1)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"VITAL STATISTICS",?41,"Date Obtained: ",$P($$I(78),U,2)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Height: ",$$I(30),?40,"HbA1c (next most recent): ",$P($$I(78),U,4)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Last Weight: ",$$I(32),?41,"Date Obtained: ",$P($$I(78),U,5)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"HTN (documented DX): ",$$I(34),?40,"Last 3 Blood Sugars (in past yr)"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Last 3 Blood Pressures (in past yr):",?42,$P($$I(82),U)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";"),?42,$P($$I(82),U,2)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";",2),?42,$P($$I(82),U,3)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$P($$I(36),";",3),?40,"MOST RECENT SERUM VALUE (in the"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?40,"past 12 months):"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"EXAMINATIONS (in past year)",?41,"Creatinine: ",$$I(84)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Foot exam-complete: ",?41,"Total Cholesterol: ",$$I(86)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(38)
 .W ?41,"HDL Cholesterol: ",$$I(89)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Eye exam (dilated/fundus): "
 .W ?41,"LDL Cholesterol: ",$$I(88)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(40)
 .W ?41,"Triglycerides: ",$$I(90)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Dental exam: "
 .W ?41,"Urinalysis: ",$$I(92)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?2,$$I(42)
 .W ?41,"Proteinuria: ",$$I(94)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"EDUCATION (in past year)"
 .W ?41,"Microalbum: ",$$I(96)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Diet Instruction: ",$$I(44)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Exercise Instruction: ",$$I(46)
 .W ?40,"Self monitoring of blood glucose"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"DM Education (Other): ",$$I(48)
 .W ?41,"documented in chart:  ",$$I(98)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !!,"DM THERAPY"
 .W ?40,"Is patient participating in SDM? ",$$I(100)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Select all that currently apply"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(51),?4,"1 Diet & Exercise Alone"
 .;W ?40,"Peridontal Exam: ",$$I(102)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(52),?4,"2 Insulin"
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(53),?4,"3 Sulfonylurea "
 .W ?40,"Last AST date: ",$$I(104)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(54),?4,"4 Metformin "
 .W ?40,"Last ALT: ",$$I(106)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(55),?4,"5 Acarbose "
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,$$I(56),?4,"6 Glitazones"
 .W ?40,"Pap Smear in past yr: ",$$I(108)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !?1,?4,"9 Unknown/Refused"
 .W ?40,"Mammogram in past yr: ",$$I(110)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"ACE Inhibitor Use: ",$$I(60)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Daily Aspirin Therapy: ",$$I(62)
 .W ?40,"BMI: ",$$I(112)
 .I $Y>(IOSL-1) D PAGE Q:APCLQUIT
 .W !,"Lipid Lowering Agent:  ",$$I(61)
CUML ;
 I APCLPREP=4!(APCLPREP=3) D CUML^APCLD214
DONE ;
 K ^TMP($J)
 K ^XTMP("APCLDM21",APCLJOB,APCLBTH),APCLJOB,APCLBTH
 Q
I(I) ;
 Q ^XTMP("APCLDM21",APCLJOB,APCLBTH,"AUDIT",APCLPD,I)
 ;
PAGE ;
 I $E(IOST)="C",IO=IO(0) W ! S DIR(0)="EO" D ^DIR K DIR I Y=0!(Y="^")!($D(DTOUT)) S APCLQUIT=1 Q
 W:$D(IOF) @IOF
 Q
CTR(X,Y) ;EP - Center X in a field Y wide.
 Q $J("",$S($D(Y):Y,1:IOM)-$L(X)\2)_X
 ;----------