BGP21I13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1198,00591-2775-25 ",.02)
 ;;00591-2775-25
 ;;9002226.02101,"1198,00591-3971-01 ",.01)
 ;;00591-3971-01
 ;;9002226.02101,"1198,00591-3971-01 ",.02)
 ;;00591-3971-01
 ;;9002226.02101,"1198,00591-3972-01 ",.01)
 ;;00591-3972-01
 ;;9002226.02101,"1198,00591-3972-01 ",.02)
 ;;00591-3972-01
 ;;9002226.02101,"1198,00591-3973-01 ",.01)
 ;;00591-3973-01
 ;;9002226.02101,"1198,00591-3973-01 ",.02)
 ;;00591-3973-01
 ;;9002226.02101,"1198,00615-4580-53 ",.01)
 ;;00615-4580-53
 ;;9002226.02101,"1198,00615-4580-53 ",.02)
 ;;00615-4580-53
 ;;9002226.02101,"1198,00615-4580-63 ",.01)
 ;;00615-4580-63
 ;;9002226.02101,"1198,00615-4580-63 ",.02)
 ;;00615-4580-63
 ;;9002226.02101,"1198,00781-5050-01 ",.01)
 ;;00781-5050-01
 ;;9002226.02101,"1198,00781-5050-01 ",.02)
 ;;00781-5050-01
 ;;9002226.02101,"1198,00781-5050-05 ",.01)
 ;;00781-5050-05
 ;;9002226.02101,"1198,00781-5050-05 ",.02)
 ;;00781-5050-05
 ;;9002226.02101,"1198,00781-5050-10 ",.01)
 ;;00781-5050-10
 ;;9002226.02101,"1198,00781-5050-10 ",.02)
 ;;00781-5050-10
 ;;9002226.02101,"1198,00781-5050-61 ",.01)
 ;;00781-5050-61
 ;;9002226.02101,"1198,00781-5050-61 ",.02)
 ;;00781-5050-61
 ;;9002226.02101,"1198,00781-5051-01 ",.01)
 ;;00781-5051-01
 ;;9002226.02101,"1198,00781-5051-01 ",.02)
 ;;00781-5051-01
 ;;9002226.02101,"1198,00781-5051-05 ",.01)
 ;;00781-5051-05
 ;;9002226.02101,"1198,00781-5051-05 ",.02)
 ;;00781-5051-05
 ;;9002226.02101,"1198,00781-5051-61 ",.01)
 ;;00781-5051-61
 ;;9002226.02101,"1198,00781-5051-61 ",.02)
 ;;00781-5051-61
 ;;9002226.02101,"1198,00781-5052-01 ",.01)
 ;;00781-5052-01
 ;;9002226.02101,"1198,00781-5052-01 ",.02)
 ;;00781-5052-01
 ;;9002226.02101,"1198,00781-5052-05 ",.01)
 ;;00781-5052-05
 ;;9002226.02101,"1198,00781-5052-05 ",.02)
 ;;00781-5052-05
 ;;9002226.02101,"1198,00781-5052-61 ",.01)
 ;;00781-5052-61
 ;;9002226.02101,"1198,00781-5052-61 ",.02)
 ;;00781-5052-61
 ;;9002226.02101,"1198,00781-5055-01 ",.01)
 ;;00781-5055-01
 ;;9002226.02101,"1198,00781-5055-01 ",.02)
 ;;00781-5055-01
 ;;9002226.02101,"1198,00781-5170-01 ",.01)
 ;;00781-5170-01
 ;;9002226.02101,"1198,00781-5170-01 ",.02)
 ;;00781-5170-01
 ;;9002226.02101,"1198,00781-5171-01 ",.01)
 ;;00781-5171-01
 ;;9002226.02101,"1198,00781-5171-01 ",.02)
 ;;00781-5171-01
 ;;9002226.02101,"1198,00781-5171-05 ",.01)
 ;;00781-5171-05
 ;;9002226.02101,"1198,00781-5171-05 ",.02)
 ;;00781-5171-05
 ;;9002226.02101,"1198,00781-5172-01 ",.01)
 ;;00781-5172-01
 ;;9002226.02101,"1198,00781-5172-01 ",.02)
 ;;00781-5172-01
 ;;9002226.02101,"1198,00781-5172-05 ",.01)
 ;;00781-5172-05
 ;;9002226.02101,"1198,00781-5172-05 ",.02)
 ;;00781-5172-05
 ;;9002226.02101,"1198,00781-5304-01 ",.01)
 ;;00781-5304-01
 ;;9002226.02101,"1198,00781-5304-01 ",.02)
 ;;00781-5304-01
 ;;9002226.02101,"1198,00781-5305-01 ",.01)
 ;;00781-5305-01
 ;;9002226.02101,"1198,00781-5305-01 ",.02)
 ;;00781-5305-01
 ;;9002226.02101,"1198,00781-5306-01 ",.01)
 ;;00781-5306-01
 ;;9002226.02101,"1198,00781-5306-01 ",.02)
 ;;00781-5306-01
 ;;9002226.02101,"1198,00904-5601-18 ",.01)
 ;;00904-5601-18
 ;;9002226.02101,"1198,00904-5601-18 ",.02)
 ;;00904-5601-18
 ;;9002226.02101,"1198,00904-5601-52 ",.01)
 ;;00904-5601-52
 ;;9002226.02101,"1198,00904-5601-52 ",.02)
 ;;00904-5601-52
 ;;9002226.02101,"1198,00904-5601-54 ",.01)
 ;;00904-5601-54
 ;;9002226.02101,"1198,00904-5601-54 ",.02)
 ;;00904-5601-54
 ;;9002226.02101,"1198,00904-5601-61 ",.01)
 ;;00904-5601-61
 ;;9002226.02101,"1198,00904-5601-61 ",.02)
 ;;00904-5601-61
 ;;9002226.02101,"1198,00904-5601-80 ",.01)
 ;;00904-5601-80
 ;;9002226.02101,"1198,00904-5601-80 ",.02)
 ;;00904-5601-80
 ;;9002226.02101,"1198,00904-5601-89 ",.01)
 ;;00904-5601-89
 ;;9002226.02101,"1198,00904-5601-89 ",.02)
 ;;00904-5601-89
 ;;9002226.02101,"1198,00904-5601-93 ",.01)
 ;;00904-5601-93
 ;;9002226.02101,"1198,00904-5601-93 ",.02)
 ;;00904-5601-93
 ;;9002226.02101,"1198,00904-5602-40 ",.01)
 ;;00904-5602-40
 ;;9002226.02101,"1198,00904-5602-40 ",.02)
 ;;00904-5602-40
 ;;9002226.02101,"1198,00904-5602-53 ",.01)
 ;;00904-5602-53
 ;;9002226.02101,"1198,00904-5602-53 ",.02)
 ;;00904-5602-53
 ;;9002226.02101,"1198,00904-5602-61 ",.01)
 ;;00904-5602-61
 ;;9002226.02101,"1198,00904-5602-61 ",.02)
 ;;00904-5602-61
 ;;9002226.02101,"1198,00904-5602-89 ",.01)
 ;;00904-5602-89
 ;;9002226.02101,"1198,00904-5602-89 ",.02)
 ;;00904-5602-89
 ;;9002226.02101,"1198,00904-5602-93 ",.01)
 ;;00904-5602-93
 ;;9002226.02101,"1198,00904-5602-93 ",.02)
 ;;00904-5602-93
 ;;9002226.02101,"1198,00904-5603-40 ",.01)
 ;;00904-5603-40
 ;;9002226.02101,"1198,00904-5603-40 ",.02)
 ;;00904-5603-40
 ;;9002226.02101,"1198,00904-5603-52 ",.01)
 ;;00904-5603-52
 ;;9002226.02101,"1198,00904-5603-52 ",.02)
 ;;00904-5603-52
 ;;9002226.02101,"1198,00904-5603-61 ",.01)
 ;;00904-5603-61
 ;;9002226.02101,"1198,00904-5603-61 ",.02)
 ;;00904-5603-61
 ;;9002226.02101,"1198,00904-5603-89 ",.01)
 ;;00904-5603-89
 ;;9002226.02101,"1198,00904-5603-89 ",.02)
 ;;00904-5603-89
 ;;9002226.02101,"1198,00904-5603-93 ",.01)
 ;;00904-5603-93
 ;;9002226.02101,"1198,00904-5603-93 ",.02)
 ;;00904-5603-93
 ;;9002226.02101,"1198,00904-5634-61 ",.01)
 ;;00904-5634-61
 ;;9002226.02101,"1198,00904-5634-61 ",.02)
 ;;00904-5634-61
