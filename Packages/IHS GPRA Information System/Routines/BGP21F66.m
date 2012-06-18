BGP21F66 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,65243-0232-18 ",.01)
 ;;65243-0232-18
 ;;9002226.02101,"1195,65243-0232-18 ",.02)
 ;;65243-0232-18
 ;;9002226.02101,"1195,65243-0265-03 ",.01)
 ;;65243-0265-03
 ;;9002226.02101,"1195,65243-0265-03 ",.02)
 ;;65243-0265-03
 ;;9002226.02101,"1195,65243-0265-06 ",.01)
 ;;65243-0265-06
 ;;9002226.02101,"1195,65243-0265-06 ",.02)
 ;;65243-0265-06
 ;;9002226.02101,"1195,65243-0265-09 ",.01)
 ;;65243-0265-09
 ;;9002226.02101,"1195,65243-0265-09 ",.02)
 ;;65243-0265-09
 ;;9002226.02101,"1195,65243-0265-18 ",.01)
 ;;65243-0265-18
 ;;9002226.02101,"1195,65243-0265-18 ",.02)
 ;;65243-0265-18
 ;;9002226.02101,"1195,65243-0265-45 ",.01)
 ;;65243-0265-45
 ;;9002226.02101,"1195,65243-0265-45 ",.02)
 ;;65243-0265-45
 ;;9002226.02101,"1195,65243-0308-03 ",.01)
 ;;65243-0308-03
 ;;9002226.02101,"1195,65243-0308-03 ",.02)
 ;;65243-0308-03
 ;;9002226.02101,"1195,65243-0308-09 ",.01)
 ;;65243-0308-09
 ;;9002226.02101,"1195,65243-0308-09 ",.02)
 ;;65243-0308-09
 ;;9002226.02101,"1195,65243-0308-18 ",.01)
 ;;65243-0308-18
 ;;9002226.02101,"1195,65243-0308-18 ",.02)
 ;;65243-0308-18
 ;;9002226.02101,"1195,65243-0329-03 ",.01)
 ;;65243-0329-03
 ;;9002226.02101,"1195,65243-0329-03 ",.02)
 ;;65243-0329-03
 ;;9002226.02101,"1195,65243-0329-09 ",.01)
 ;;65243-0329-09
 ;;9002226.02101,"1195,65243-0329-09 ",.02)
 ;;65243-0329-09
 ;;9002226.02101,"1195,65243-0329-18 ",.01)
 ;;65243-0329-18
 ;;9002226.02101,"1195,65243-0329-18 ",.02)
 ;;65243-0329-18
 ;;9002226.02101,"1195,65243-0347-09 ",.01)
 ;;65243-0347-09
 ;;9002226.02101,"1195,65243-0347-09 ",.02)
 ;;65243-0347-09
 ;;9002226.02101,"1195,65243-0379-09 ",.01)
 ;;65243-0379-09
 ;;9002226.02101,"1195,65243-0379-09 ",.02)
 ;;65243-0379-09
 ;;9002226.02101,"1195,65243-0382-09 ",.01)
 ;;65243-0382-09
 ;;9002226.02101,"1195,65243-0382-09 ",.02)
 ;;65243-0382-09
 ;;9002226.02101,"1195,65483-0391-10 ",.01)
 ;;65483-0391-10
 ;;9002226.02101,"1195,65483-0391-10 ",.02)
 ;;65483-0391-10
 ;;9002226.02101,"1195,65483-0391-11 ",.01)
 ;;65483-0391-11
 ;;9002226.02101,"1195,65483-0391-11 ",.02)
 ;;65483-0391-11
 ;;9002226.02101,"1195,65483-0391-50 ",.01)
 ;;65483-0391-50
 ;;9002226.02101,"1195,65483-0391-50 ",.02)
 ;;65483-0391-50
 ;;9002226.02101,"1195,65483-0392-10 ",.01)
 ;;65483-0392-10
 ;;9002226.02101,"1195,65483-0392-10 ",.02)
 ;;65483-0392-10
 ;;9002226.02101,"1195,65483-0392-22 ",.01)
 ;;65483-0392-22
 ;;9002226.02101,"1195,65483-0392-22 ",.02)
 ;;65483-0392-22
 ;;9002226.02101,"1195,65483-0392-50 ",.01)
 ;;65483-0392-50
 ;;9002226.02101,"1195,65483-0392-50 ",.02)
 ;;65483-0392-50
 ;;9002226.02101,"1195,65483-0393-10 ",.01)
 ;;65483-0393-10
 ;;9002226.02101,"1195,65483-0393-10 ",.02)
 ;;65483-0393-10
 ;;9002226.02101,"1195,65483-0393-33 ",.01)
 ;;65483-0393-33
 ;;9002226.02101,"1195,65483-0393-33 ",.02)
 ;;65483-0393-33
 ;;9002226.02101,"1195,65483-0393-50 ",.01)
 ;;65483-0393-50
 ;;9002226.02101,"1195,65483-0393-50 ",.02)
 ;;65483-0393-50
 ;;9002226.02101,"1195,65726-0250-10 ",.01)
 ;;65726-0250-10
 ;;9002226.02101,"1195,65726-0250-10 ",.02)
 ;;65726-0250-10
 ;;9002226.02101,"1195,65726-0250-25 ",.01)
 ;;65726-0250-25
 ;;9002226.02101,"1195,65726-0250-25 ",.02)
 ;;65726-0250-25
 ;;9002226.02101,"1195,65726-0251-10 ",.01)
 ;;65726-0251-10
 ;;9002226.02101,"1195,65726-0251-10 ",.02)
 ;;65726-0251-10
 ;;9002226.02101,"1195,65726-0251-25 ",.01)
 ;;65726-0251-25
 ;;9002226.02101,"1195,65726-0251-25 ",.02)
 ;;65726-0251-25
 ;;9002226.02101,"1195,65862-0062-01 ",.01)
 ;;65862-0062-01
 ;;9002226.02101,"1195,65862-0062-01 ",.02)
 ;;65862-0062-01
 ;;9002226.02101,"1195,65862-0062-99 ",.01)
 ;;65862-0062-99
 ;;9002226.02101,"1195,65862-0062-99 ",.02)
 ;;65862-0062-99
 ;;9002226.02101,"1195,65862-0063-01 ",.01)
 ;;65862-0063-01
 ;;9002226.02101,"1195,65862-0063-01 ",.02)
 ;;65862-0063-01
 ;;9002226.02101,"1195,65862-0063-99 ",.01)
 ;;65862-0063-99
 ;;9002226.02101,"1195,65862-0063-99 ",.02)
 ;;65862-0063-99
 ;;9002226.02101,"1195,65862-0064-01 ",.01)
 ;;65862-0064-01
 ;;9002226.02101,"1195,65862-0064-01 ",.02)
 ;;65862-0064-01
 ;;9002226.02101,"1195,65862-0064-99 ",.01)
 ;;65862-0064-99
 ;;9002226.02101,"1195,65862-0064-99 ",.02)
 ;;65862-0064-99
 ;;9002226.02101,"1195,65862-0086-01 ",.01)
 ;;65862-0086-01
 ;;9002226.02101,"1195,65862-0086-01 ",.02)
 ;;65862-0086-01
 ;;9002226.02101,"1195,65862-0086-30 ",.01)
 ;;65862-0086-30
 ;;9002226.02101,"1195,65862-0086-30 ",.02)
 ;;65862-0086-30
 ;;9002226.02101,"1195,65862-0087-01 ",.01)
 ;;65862-0087-01
 ;;9002226.02101,"1195,65862-0087-01 ",.02)
 ;;65862-0087-01
 ;;9002226.02101,"1195,65862-0087-30 ",.01)
 ;;65862-0087-30
 ;;9002226.02101,"1195,65862-0087-30 ",.02)
 ;;65862-0087-30
 ;;9002226.02101,"1195,65862-0142-01 ",.01)
 ;;65862-0142-01
 ;;9002226.02101,"1195,65862-0142-01 ",.02)
 ;;65862-0142-01
 ;;9002226.02101,"1195,65862-0142-05 ",.01)
 ;;65862-0142-05
 ;;9002226.02101,"1195,65862-0142-05 ",.02)
 ;;65862-0142-05
 ;;9002226.02101,"1195,65862-0143-01 ",.01)
 ;;65862-0143-01
 ;;9002226.02101,"1195,65862-0143-01 ",.02)
 ;;65862-0143-01
 ;;9002226.02101,"1195,65862-0143-05 ",.01)
 ;;65862-0143-05
 ;;9002226.02101,"1195,65862-0143-05 ",.02)
 ;;65862-0143-05
 ;;9002226.02101,"1195,65862-0144-01 ",.01)
 ;;65862-0144-01
