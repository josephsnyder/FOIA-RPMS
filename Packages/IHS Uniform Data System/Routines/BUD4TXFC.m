BUD4TXFC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 02, 2004 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;;BUD4;;NOV 02, 2004
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"314,32571-2 ",.02)
 ;;32571-2
 ;;9002226.02101,"314,32602-5 ",.01)
 ;;32602-5
 ;;9002226.02101,"314,32602-5 ",.02)
 ;;32602-5
 ;;9002226.02101,"314,5017-9 ",.01)
 ;;5017-9
 ;;9002226.02101,"314,5017-9 ",.02)
 ;;5017-9
 ;;9002226.02101,"314,5018-7 ",.01)
 ;;5018-7
 ;;9002226.02101,"314,5018-7 ",.02)
 ;;5018-7
 ;;9002226.02101,"314,5220-9 ",.01)
 ;;5220-9
 ;;9002226.02101,"314,5220-9 ",.02)
 ;;5220-9
 ;;9002226.02101,"314,5221-7 ",.01)
 ;;5221-7
 ;;9002226.02101,"314,5221-7 ",.02)
 ;;5221-7
 ;;9002226.02101,"314,5222-5 ",.01)
 ;;5222-5
 ;;9002226.02101,"314,5222-5 ",.02)
 ;;5222-5
 ;;9002226.02101,"314,5223-3 ",.01)
 ;;5223-3
 ;;9002226.02101,"314,5223-3 ",.02)
 ;;5223-3
 ;;9002226.02101,"314,5224-1 ",.01)
 ;;5224-1
 ;;9002226.02101,"314,5224-1 ",.02)
 ;;5224-1
 ;;9002226.02101,"314,5225-8 ",.01)
 ;;5225-8
 ;;9002226.02101,"314,5225-8 ",.02)
 ;;5225-8
 ;;9002226.02101,"314,6429-5 ",.01)
 ;;6429-5
 ;;9002226.02101,"314,6429-5 ",.02)
 ;;6429-5
 ;;9002226.02101,"314,6430-3 ",.01)
 ;;6430-3
 ;;9002226.02101,"314,6430-3 ",.02)
 ;;6430-3
 ;;9002226.02101,"314,6431-1 ",.01)
 ;;6431-1
 ;;9002226.02101,"314,6431-1 ",.02)
 ;;6431-1
 ;;9002226.02101,"314,7917-8 ",.01)
 ;;7917-8
 ;;9002226.02101,"314,7917-8 ",.02)
 ;;7917-8
 ;;9002226.02101,"314,7918-6 ",.01)
 ;;7918-6
 ;;9002226.02101,"314,7918-6 ",.02)
 ;;7918-6
 ;;9002226.02101,"314,7919-4 ",.01)
 ;;7919-4
 ;;9002226.02101,"314,7919-4 ",.02)
 ;;7919-4
 ;;9002226.02101,"314,9660-2 ",.01)
 ;;9660-2
 ;;9002226.02101,"314,9660-2 ",.02)
 ;;9660-2
 ;;9002226.02101,"314,9661-0 ",.01)
 ;;9661-0
 ;;9002226.02101,"314,9661-0 ",.02)
 ;;9661-0
 ;;9002226.02101,"314,9662-8 ",.01)
 ;;9662-8
 ;;9002226.02101,"314,9662-8 ",.02)
 ;;9662-8
 ;;9002226.02101,"314,9663-6 ",.01)
 ;;9663-6
 ;;9002226.02101,"314,9663-6 ",.02)
 ;;9663-6
 ;;9002226.02101,"314,9664-4 ",.01)
 ;;9664-4
 ;;9002226.02101,"314,9664-4 ",.02)
 ;;9664-4
 ;;9002226.02101,"314,9665-1 ",.01)
 ;;9665-1
 ;;9002226.02101,"314,9665-1 ",.02)
 ;;9665-1
 ;;9002226.02101,"314,9666-9 ",.01)
 ;;9666-9
 ;;9002226.02101,"314,9666-9 ",.02)
 ;;9666-9
 ;;9002226.02101,"314,9667-7 ",.01)
 ;;9667-7
 ;;9002226.02101,"314,9667-7 ",.02)
 ;;9667-7
 ;;9002226.02101,"314,9668-5 ",.01)
 ;;9668-5
 ;;9002226.02101,"314,9668-5 ",.02)
 ;;9668-5
 ;;9002226.02101,"314,9669-3 ",.01)
 ;;9669-3
 ;;9002226.02101,"314,9669-3 ",.02)
 ;;9669-3
 ;;9002226.02101,"314,9821-0 ",.01)
 ;;9821-0
 ;;9002226.02101,"314,9821-0 ",.02)
 ;;9821-0
 ;;9002226.02101,"314,9836-8 ",.01)
 ;;9836-8
 ;;9002226.02101,"314,9836-8 ",.02)
 ;;9836-8
 ;;9002226.02101,"314,9837-6 ",.01)
 ;;9837-6
 ;;9002226.02101,"314,9837-6 ",.02)
 ;;9837-6
