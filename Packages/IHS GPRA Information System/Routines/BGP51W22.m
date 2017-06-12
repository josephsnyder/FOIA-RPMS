BGP51W22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1774,55045-2905-08 ",.02)
 ;;55045-2905-08
 ;;9002226.02101,"1774,55045-2906-00 ",.01)
 ;;55045-2906-00
 ;;9002226.02101,"1774,55045-2906-00 ",.02)
 ;;55045-2906-00
 ;;9002226.02101,"1774,55045-2906-01 ",.01)
 ;;55045-2906-01
 ;;9002226.02101,"1774,55045-2906-01 ",.02)
 ;;55045-2906-01
 ;;9002226.02101,"1774,55045-2906-02 ",.01)
 ;;55045-2906-02
 ;;9002226.02101,"1774,55045-2906-02 ",.02)
 ;;55045-2906-02
 ;;9002226.02101,"1774,55045-2906-06 ",.01)
 ;;55045-2906-06
 ;;9002226.02101,"1774,55045-2906-06 ",.02)
 ;;55045-2906-06
 ;;9002226.02101,"1774,55045-2906-08 ",.01)
 ;;55045-2906-08
 ;;9002226.02101,"1774,55045-2906-08 ",.02)
 ;;55045-2906-08
 ;;9002226.02101,"1774,55045-2906-09 ",.01)
 ;;55045-2906-09
 ;;9002226.02101,"1774,55045-2906-09 ",.02)
 ;;55045-2906-09
 ;;9002226.02101,"1774,55045-3045-01 ",.01)
 ;;55045-3045-01
 ;;9002226.02101,"1774,55045-3045-01 ",.02)
 ;;55045-3045-01
 ;;9002226.02101,"1774,55045-3045-06 ",.01)
 ;;55045-3045-06
 ;;9002226.02101,"1774,55045-3045-06 ",.02)
 ;;55045-3045-06
 ;;9002226.02101,"1774,55045-3045-08 ",.01)
 ;;55045-3045-08
 ;;9002226.02101,"1774,55045-3045-08 ",.02)
 ;;55045-3045-08
 ;;9002226.02101,"1774,55045-3300-01 ",.01)
 ;;55045-3300-01
 ;;9002226.02101,"1774,55045-3300-01 ",.02)
 ;;55045-3300-01
 ;;9002226.02101,"1774,55045-3434-08 ",.01)
 ;;55045-3434-08
 ;;9002226.02101,"1774,55045-3434-08 ",.02)
 ;;55045-3434-08
 ;;9002226.02101,"1774,55045-3761-08 ",.01)
 ;;55045-3761-08
 ;;9002226.02101,"1774,55045-3761-08 ",.02)
 ;;55045-3761-08
 ;;9002226.02101,"1774,55048-0241-30 ",.01)
 ;;55048-0241-30
 ;;9002226.02101,"1774,55048-0241-30 ",.02)
 ;;55048-0241-30
 ;;9002226.02101,"1774,55048-0242-30 ",.01)
 ;;55048-0242-30
 ;;9002226.02101,"1774,55048-0242-30 ",.02)
 ;;55048-0242-30
 ;;9002226.02101,"1774,55048-0243-30 ",.01)
 ;;55048-0243-30
 ;;9002226.02101,"1774,55048-0243-30 ",.02)
 ;;55048-0243-30
 ;;9002226.02101,"1774,55048-0243-60 ",.01)
 ;;55048-0243-60
 ;;9002226.02101,"1774,55048-0243-60 ",.02)
 ;;55048-0243-60
 ;;9002226.02101,"1774,55048-0244-30 ",.01)
 ;;55048-0244-30
 ;;9002226.02101,"1774,55048-0244-30 ",.02)
 ;;55048-0244-30
 ;;9002226.02101,"1774,55048-0245-30 ",.01)
 ;;55048-0245-30
 ;;9002226.02101,"1774,55048-0245-30 ",.02)
 ;;55048-0245-30
 ;;9002226.02101,"1774,55048-0245-60 ",.01)
 ;;55048-0245-60
 ;;9002226.02101,"1774,55048-0245-60 ",.02)
 ;;55048-0245-60
 ;;9002226.02101,"1774,55048-0246-30 ",.01)
 ;;55048-0246-30
 ;;9002226.02101,"1774,55048-0246-30 ",.02)
 ;;55048-0246-30
 ;;9002226.02101,"1774,55048-0247-30 ",.01)
 ;;55048-0247-30
 ;;9002226.02101,"1774,55048-0247-30 ",.02)
 ;;55048-0247-30
 ;;9002226.02101,"1774,55048-0248-30 ",.01)
 ;;55048-0248-30
 ;;9002226.02101,"1774,55048-0248-30 ",.02)
 ;;55048-0248-30
 ;;9002226.02101,"1774,55048-0248-90 ",.01)
 ;;55048-0248-90
 ;;9002226.02101,"1774,55048-0248-90 ",.02)
 ;;55048-0248-90
 ;;9002226.02101,"1774,55048-0269-30 ",.01)
 ;;55048-0269-30
 ;;9002226.02101,"1774,55048-0269-30 ",.02)
 ;;55048-0269-30
 ;;9002226.02101,"1774,55048-0270-30 ",.01)
 ;;55048-0270-30
 ;;9002226.02101,"1774,55048-0270-30 ",.02)
 ;;55048-0270-30
 ;;9002226.02101,"1774,55048-0273-60 ",.01)
 ;;55048-0273-60
 ;;9002226.02101,"1774,55048-0273-60 ",.02)
 ;;55048-0273-60
 ;;9002226.02101,"1774,55048-0273-71 ",.01)
 ;;55048-0273-71
 ;;9002226.02101,"1774,55048-0273-71 ",.02)
 ;;55048-0273-71
 ;;9002226.02101,"1774,55048-0288-60 ",.01)
 ;;55048-0288-60
 ;;9002226.02101,"1774,55048-0288-60 ",.02)
 ;;55048-0288-60
 ;;9002226.02101,"1774,55048-0289-60 ",.01)
 ;;55048-0289-60
 ;;9002226.02101,"1774,55048-0289-60 ",.02)
 ;;55048-0289-60
 ;;9002226.02101,"1774,55048-0434-60 ",.01)
 ;;55048-0434-60
 ;;9002226.02101,"1774,55048-0434-60 ",.02)
 ;;55048-0434-60
 ;;9002226.02101,"1774,55048-0437-60 ",.01)
 ;;55048-0437-60
 ;;9002226.02101,"1774,55048-0437-60 ",.02)
 ;;55048-0437-60
 ;;9002226.02101,"1774,55048-0508-30 ",.01)
 ;;55048-0508-30
 ;;9002226.02101,"1774,55048-0508-30 ",.02)
 ;;55048-0508-30
 ;;9002226.02101,"1774,55048-0508-60 ",.01)
 ;;55048-0508-60
 ;;9002226.02101,"1774,55048-0508-60 ",.02)
 ;;55048-0508-60
 ;;9002226.02101,"1774,55048-0509-30 ",.01)
 ;;55048-0509-30
 ;;9002226.02101,"1774,55048-0509-30 ",.02)
 ;;55048-0509-30
 ;;9002226.02101,"1774,55048-0509-60 ",.01)
 ;;55048-0509-60
 ;;9002226.02101,"1774,55048-0509-60 ",.02)
 ;;55048-0509-60
 ;;9002226.02101,"1774,55048-0509-71 ",.01)
 ;;55048-0509-71
 ;;9002226.02101,"1774,55048-0509-71 ",.02)
 ;;55048-0509-71
 ;;9002226.02101,"1774,55048-0509-74 ",.01)
 ;;55048-0509-74
 ;;9002226.02101,"1774,55048-0509-74 ",.02)
 ;;55048-0509-74
 ;;9002226.02101,"1774,55048-0509-90 ",.01)
 ;;55048-0509-90
 ;;9002226.02101,"1774,55048-0509-90 ",.02)
 ;;55048-0509-90
 ;;9002226.02101,"1774,55048-0510-30 ",.01)
 ;;55048-0510-30
 ;;9002226.02101,"1774,55048-0510-30 ",.02)
 ;;55048-0510-30
 ;;9002226.02101,"1774,55048-0510-60 ",.01)
 ;;55048-0510-60
 ;;9002226.02101,"1774,55048-0510-60 ",.02)
 ;;55048-0510-60
 ;;9002226.02101,"1774,55048-0510-71 ",.01)
 ;;55048-0510-71
 ;;9002226.02101,"1774,55048-0510-71 ",.02)
 ;;55048-0510-71
 ;;9002226.02101,"1774,55048-0510-74 ",.01)
 ;;55048-0510-74
 ;;9002226.02101,"1774,55048-0510-74 ",.02)
 ;;55048-0510-74
 ;;9002226.02101,"1774,55048-0510-90 ",.01)
 ;;55048-0510-90
 ;;9002226.02101,"1774,55048-0510-90 ",.02)
 ;;55048-0510-90
 ;;9002226.02101,"1774,55048-0583-30 ",.01)
 ;;55048-0583-30
 ;;9002226.02101,"1774,55048-0583-30 ",.02)
 ;;55048-0583-30
 ;;9002226.02101,"1774,55048-0584-30 ",.01)
 ;;55048-0584-30
 ;;9002226.02101,"1774,55048-0584-30 ",.02)
 ;;55048-0584-30
 ;;9002226.02101,"1774,55048-0585-30 ",.01)
 ;;55048-0585-30
 ;;9002226.02101,"1774,55048-0585-30 ",.02)
 ;;55048-0585-30
 ;;9002226.02101,"1774,55048-0611-60 ",.01)
 ;;55048-0611-60
 ;;9002226.02101,"1774,55048-0611-60 ",.02)
 ;;55048-0611-60
 ;;9002226.02101,"1774,55048-0611-74 ",.01)
 ;;55048-0611-74
 ;;9002226.02101,"1774,55048-0611-74 ",.02)
 ;;55048-0611-74
 ;;9002226.02101,"1774,55048-0612-30 ",.01)
 ;;55048-0612-30
 ;;9002226.02101,"1774,55048-0612-30 ",.02)
 ;;55048-0612-30
 ;;9002226.02101,"1774,55048-0629-60 ",.01)
 ;;55048-0629-60
 ;;9002226.02101,"1774,55048-0629-60 ",.02)
 ;;55048-0629-60
 ;;9002226.02101,"1774,55048-0629-71 ",.01)
 ;;55048-0629-71
 ;;9002226.02101,"1774,55048-0629-71 ",.02)
 ;;55048-0629-71
 ;;9002226.02101,"1774,55048-0630-60 ",.01)
 ;;55048-0630-60
 ;;9002226.02101,"1774,55048-0630-60 ",.02)
 ;;55048-0630-60
 ;;9002226.02101,"1774,55048-0630-71 ",.01)
 ;;55048-0630-71
 ;;9002226.02101,"1774,55048-0630-71 ",.02)
 ;;55048-0630-71
 ;;9002226.02101,"1774,55048-0631-60 ",.01)
 ;;55048-0631-60
 ;;9002226.02101,"1774,55048-0631-60 ",.02)
 ;;55048-0631-60
 ;;9002226.02101,"1774,55048-0631-71 ",.01)
 ;;55048-0631-71
 ;;9002226.02101,"1774,55048-0631-71 ",.02)
 ;;55048-0631-71
 ;;9002226.02101,"1774,55048-0632-60 ",.01)
 ;;55048-0632-60
 ;;9002226.02101,"1774,55048-0632-60 ",.02)
 ;;55048-0632-60
 ;;9002226.02101,"1774,55048-0632-71 ",.01)
 ;;55048-0632-71
 ;;9002226.02101,"1774,55048-0632-71 ",.02)
 ;;55048-0632-71
 ;;9002226.02101,"1774,55048-0764-60 ",.01)
 ;;55048-0764-60
 ;;9002226.02101,"1774,55048-0764-60 ",.02)
 ;;55048-0764-60
 ;;9002226.02101,"1774,55048-0765-30 ",.01)
 ;;55048-0765-30
 ;;9002226.02101,"1774,55048-0765-30 ",.02)
 ;;55048-0765-30
 ;;9002226.02101,"1774,55048-0766-30 ",.01)
 ;;55048-0766-30
 ;;9002226.02101,"1774,55048-0766-30 ",.02)
 ;;55048-0766-30
 ;;9002226.02101,"1774,55048-0777-30 ",.01)
 ;;55048-0777-30
 ;;9002226.02101,"1774,55048-0777-30 ",.02)
 ;;55048-0777-30
 ;;9002226.02101,"1774,55111-0320-01 ",.01)
 ;;55111-0320-01
 ;;9002226.02101,"1774,55111-0320-01 ",.02)
 ;;55111-0320-01
 ;;9002226.02101,"1774,55111-0320-05 ",.01)
 ;;55111-0320-05
 ;;9002226.02101,"1774,55111-0320-05 ",.02)
 ;;55111-0320-05
 ;;9002226.02101,"1774,55111-0321-01 ",.01)
 ;;55111-0321-01
 ;;9002226.02101,"1774,55111-0321-01 ",.02)
 ;;55111-0321-01
 ;;9002226.02101,"1774,55111-0321-05 ",.01)
 ;;55111-0321-05
 ;;9002226.02101,"1774,55111-0321-05 ",.02)
 ;;55111-0321-05
 ;;9002226.02101,"1774,55111-0322-01 ",.01)
 ;;55111-0322-01
 ;;9002226.02101,"1774,55111-0322-01 ",.02)
 ;;55111-0322-01
 ;;9002226.02101,"1774,55111-0322-05 ",.01)
 ;;55111-0322-05
 ;;9002226.02101,"1774,55111-0322-05 ",.02)
 ;;55111-0322-05
 ;;9002226.02101,"1774,55111-0328-90 ",.01)
 ;;55111-0328-90
 ;;9002226.02101,"1774,55111-0328-90 ",.02)
 ;;55111-0328-90
 ;;9002226.02101,"1774,55111-0329-90 ",.01)
 ;;55111-0329-90
 ;;9002226.02101,"1774,55111-0329-90 ",.02)
 ;;55111-0329-90
 ;;9002226.02101,"1774,55111-0695-01 ",.01)
 ;;55111-0695-01
 ;;9002226.02101,"1774,55111-0695-01 ",.02)
 ;;55111-0695-01
 ;;9002226.02101,"1774,55111-0696-01 ",.01)
 ;;55111-0696-01
 ;;9002226.02101,"1774,55111-0696-01 ",.02)
 ;;55111-0696-01
 ;;9002226.02101,"1774,55111-0696-10 ",.01)
 ;;55111-0696-10
 ;;9002226.02101,"1774,55111-0696-10 ",.02)
 ;;55111-0696-10
 ;;9002226.02101,"1774,55111-0697-01 ",.01)
 ;;55111-0697-01
 ;;9002226.02101,"1774,55111-0697-01 ",.02)
 ;;55111-0697-01
 ;;9002226.02101,"1774,55111-0697-10 ",.01)
 ;;55111-0697-10
 ;;9002226.02101,"1774,55111-0697-10 ",.02)
 ;;55111-0697-10
 ;;9002226.02101,"1774,55289-0066-90 ",.01)
 ;;55289-0066-90
 ;;9002226.02101,"1774,55289-0066-90 ",.02)
 ;;55289-0066-90
 ;;9002226.02101,"1774,55289-0125-30 ",.01)
 ;;55289-0125-30
 ;;9002226.02101,"1774,55289-0125-30 ",.02)
 ;;55289-0125-30
 ;;9002226.02101,"1774,55289-0211-60 ",.01)
 ;;55289-0211-60
 ;;9002226.02101,"1774,55289-0211-60 ",.02)
 ;;55289-0211-60
 ;;9002226.02101,"1774,55289-0265-90 ",.01)
 ;;55289-0265-90
 ;;9002226.02101,"1774,55289-0265-90 ",.02)
 ;;55289-0265-90
 ;;9002226.02101,"1774,55289-0281-30 ",.01)
 ;;55289-0281-30
 ;;9002226.02101,"1774,55289-0281-30 ",.02)
 ;;55289-0281-30
 ;;9002226.02101,"1774,55289-0281-60 ",.01)
 ;;55289-0281-60
 ;;9002226.02101,"1774,55289-0281-60 ",.02)
 ;;55289-0281-60
 ;;9002226.02101,"1774,55289-0281-86 ",.01)
 ;;55289-0281-86
 ;;9002226.02101,"1774,55289-0281-86 ",.02)
 ;;55289-0281-86
 ;;9002226.02101,"1774,55289-0281-90 ",.01)
 ;;55289-0281-90
 ;;9002226.02101,"1774,55289-0281-90 ",.02)
 ;;55289-0281-90
 ;;9002226.02101,"1774,55289-0301-93 ",.01)
 ;;55289-0301-93
 ;;9002226.02101,"1774,55289-0301-93 ",.02)
 ;;55289-0301-93
 ;;9002226.02101,"1774,55289-0384-30 ",.01)
 ;;55289-0384-30
 ;;9002226.02101,"1774,55289-0384-30 ",.02)
 ;;55289-0384-30
 ;;9002226.02101,"1774,55289-0384-60 ",.01)
 ;;55289-0384-60
 ;;9002226.02101,"1774,55289-0384-60 ",.02)
 ;;55289-0384-60
 ;;9002226.02101,"1774,55289-0384-86 ",.01)
 ;;55289-0384-86
 ;;9002226.02101,"1774,55289-0384-86 ",.02)
 ;;55289-0384-86
 ;;9002226.02101,"1774,55289-0384-90 ",.01)
 ;;55289-0384-90
 ;;9002226.02101,"1774,55289-0384-90 ",.02)
 ;;55289-0384-90
 ;;9002226.02101,"1774,55289-0384-93 ",.01)
 ;;55289-0384-93
 ;;9002226.02101,"1774,55289-0384-93 ",.02)
 ;;55289-0384-93
 ;;9002226.02101,"1774,55289-0384-94 ",.01)
 ;;55289-0384-94
 ;;9002226.02101,"1774,55289-0384-94 ",.02)
 ;;55289-0384-94
 ;;9002226.02101,"1774,55289-0424-30 ",.01)
 ;;55289-0424-30
 ;;9002226.02101,"1774,55289-0424-30 ",.02)
 ;;55289-0424-30
 ;;9002226.02101,"1774,55289-0606-30 ",.01)
 ;;55289-0606-30
 ;;9002226.02101,"1774,55289-0606-30 ",.02)
 ;;55289-0606-30
 ;;9002226.02101,"1774,55289-0606-90 ",.01)
 ;;55289-0606-90
 ;;9002226.02101,"1774,55289-0606-90 ",.02)
 ;;55289-0606-90
 ;;9002226.02101,"1774,55289-0615-14 ",.01)
 ;;55289-0615-14
 ;;9002226.02101,"1774,55289-0615-14 ",.02)
 ;;55289-0615-14
 ;;9002226.02101,"1774,55289-0615-30 ",.01)
 ;;55289-0615-30
 ;;9002226.02101,"1774,55289-0615-30 ",.02)
 ;;55289-0615-30
 ;;9002226.02101,"1774,55289-0615-60 ",.01)
 ;;55289-0615-60
 ;;9002226.02101,"1774,55289-0615-60 ",.02)
 ;;55289-0615-60
 ;;9002226.02101,"1774,55289-0615-86 ",.01)
 ;;55289-0615-86
 ;;9002226.02101,"1774,55289-0615-86 ",.02)
 ;;55289-0615-86
 ;;9002226.02101,"1774,55289-0615-90 ",.01)
 ;;55289-0615-90
 ;;9002226.02101,"1774,55289-0615-90 ",.02)
 ;;55289-0615-90
 ;;9002226.02101,"1774,55289-0615-93 ",.01)
 ;;55289-0615-93
 ;;9002226.02101,"1774,55289-0615-93 ",.02)
 ;;55289-0615-93
 ;;9002226.02101,"1774,55289-0615-94 ",.01)
 ;;55289-0615-94
 ;;9002226.02101,"1774,55289-0615-94 ",.02)
 ;;55289-0615-94
 ;;9002226.02101,"1774,55289-0615-98 ",.01)
 ;;55289-0615-98
 ;;9002226.02101,"1774,55289-0615-98 ",.02)
 ;;55289-0615-98
 ;;9002226.02101,"1774,55289-0779-07 ",.01)
 ;;55289-0779-07
 ;;9002226.02101,"1774,55289-0779-07 ",.02)
 ;;55289-0779-07
 ;;9002226.02101,"1774,55289-0806-14 ",.01)
 ;;55289-0806-14
 ;;9002226.02101,"1774,55289-0806-14 ",.02)
 ;;55289-0806-14
 ;;9002226.02101,"1774,55289-0806-30 ",.01)
 ;;55289-0806-30
 ;;9002226.02101,"1774,55289-0806-30 ",.02)
 ;;55289-0806-30
 ;;9002226.02101,"1774,55289-0806-60 ",.01)
 ;;55289-0806-60
 ;;9002226.02101,"1774,55289-0806-60 ",.02)
 ;;55289-0806-60
 ;;9002226.02101,"1774,55289-0806-86 ",.01)
 ;;55289-0806-86
 ;;9002226.02101,"1774,55289-0806-86 ",.02)
 ;;55289-0806-86
 ;;9002226.02101,"1774,55289-0806-90 ",.01)
 ;;55289-0806-90
 ;;9002226.02101,"1774,55289-0806-90 ",.02)
 ;;55289-0806-90
 ;;9002226.02101,"1774,55289-0892-01 ",.01)
 ;;55289-0892-01
 ;;9002226.02101,"1774,55289-0892-01 ",.02)
 ;;55289-0892-01
 ;;9002226.02101,"1774,55289-0892-14 ",.01)
 ;;55289-0892-14
 ;;9002226.02101,"1774,55289-0892-14 ",.02)
 ;;55289-0892-14
 ;;9002226.02101,"1774,55289-0892-15 ",.01)
 ;;55289-0892-15
 ;;9002226.02101,"1774,55289-0892-15 ",.02)
 ;;55289-0892-15
