ACGSIE1 ;IHS/OIRM/DSD/THL,AEF - INTERRELATIONSHIP EDITS - CONT'D; [ 03/27/2000   2:22 PM ]
 ;;2.0t1;CONTRACT INFORMATION SYSTEM;;FEB 16, 2000
 ;;INTERRELATIONSHIP EDITS
ACG1 S ACG1=$P(^ACGS(DA,"DT"),U) S:ACG1]"" ACG1=$P(^ACGTPA(ACG1,0),U) Q
ACG12 S ACG12=$P(^ACGS(DA,"DT"),U,12) Q
ACG13 ;EP
 S ACG13=$P(^ACGS(DA,"DT"),U,13) S:ACG13]"" ACG13=$S($D(^AUTTTOB(ACG13,0)):$P(^(0),U),1:"") Q
ACG15 S ACG15=$P(^ACGS(DA,"DT"),U,15) S:ACG15]"" ACG15=$S($D(^ACGTOC(ACG15,0)):$P(^(0),U),1:"") Q
ACG16 S ACG16=$P(^ACGS(DA,"DT"),U,16) Q
ACG17 S ACG17=$P(^ACGS(DA,"DT"),U,17) S:ACG17]"" ACG17=$S($D(^ACGSP(ACG17,0)):$P(^(0),U),1:"") Q
ACG18 S ACG18=$P(^ACGS(DA,"DT"),U,18) S:ACG18]"" ACG18=$S($D(^ACGFAO(ACG18,0)):$P(^(0),U),1:"") Q
ACG19 S ACG19=$P(^ACGS(DA,"DT"),U,19) S:ACG19]"" ACG19=$S($D(^ACGEOC(ACG19,0)):$P(^(0),U),1:"") Q
ACG20 S ACG20=$P(^ACGS(DA,"DT"),U,20) S:ACG20]"" ACG20=$S($D(^ACGMOC(ACG20,0)):$P(^(0),U),1:"") Q
ACG21 S ACG21=$P(^ACGS(DA,"DT"),U,21) Q
ACG26 S ACG26=$P(^ACGS(DA,"DT1"),U,5) Q
ACG27 S ACG27=$P(^ACGS(DA,"DT1"),U,6) S:ACG27]"" ACG27=$S($D(^ACGPPC(ACG27,0)):$P(^(0),U),1:"") Q
ACG271 S ACG271=$P(^ACGS(DA,"DT1"),U,6) S:ACG271]"" ACG271=$S($D(^ACGPPC(ACG271,0)):$P(^(0),U,4),1:"") Q
ACG30 S ACG30=$P(^ACGS(DA,"DT1"),U,9) Q
ACG31 S ACG31=$P(^ACGS(DA,"DT1"),U,10) Q
ACG34 S ACG34=$P(^ACGS(DA,"DT1"),U,13) Q
ACG45 S ACG45=$P(^ACGS(DA,"DT2"),U,10) Q
ACG52 S ACG52=$P(^ACGS(DA,"DT2"),U,17) Q
ACG53 S ACG52=$P(^ACGS(DA,"DT2"),U,18) Q
ACG56 S ACG56=$P(^ACGS(DA,"DT3"),U,1) Q
ACG62 S ACG62=$P(^ACGS(DA,"DT3"),U,7) Q
ACG63 S ACG63=$P(^ACGS(DA,"DT3"),U,8) Q
