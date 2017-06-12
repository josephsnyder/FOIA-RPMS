BGP62L ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 05, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP UNI RIGHT MASTECTOMY PROCS
 ;
 ; This routine loads Taxonomy BGP UNI RIGHT MASTECTOMY PROCS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"07T50ZZ ")
 ;;1
 ;;21,"07T80ZZ ")
 ;;2
 ;;21,"0HBT0ZZ ")
 ;;3
 ;;21,"0HCT0ZZ ")
 ;;4
 ;;21,"0HTT0ZZ ")
 ;;5
 ;;9002226,638,.01)
 ;;BGP UNI RIGHT MASTECTOMY PROCS
 ;;9002226,638,.02)
 ;;@
 ;;9002226,638,.04)
 ;;@
 ;;9002226,638,.06)
 ;;@
 ;;9002226,638,.08)
 ;;0
 ;;9002226,638,.09)
 ;;3160105
 ;;9002226,638,.11)
 ;;@
 ;;9002226,638,.12)
 ;;255
 ;;9002226,638,.13)
 ;;1
 ;;9002226,638,.14)
 ;;@
 ;;9002226,638,.15)
 ;;80.1
 ;;9002226,638,.16)
 ;;@
 ;;9002226,638,.17)
 ;;@
 ;;9002226,638,3101)
 ;;@
 ;;9002226.02101,"638,07T50ZZ ",.01)
 ;;07T50ZZ 
 ;;9002226.02101,"638,07T50ZZ ",.02)
 ;;07T50ZZ 
 ;;9002226.02101,"638,07T50ZZ ",.03)
 ;;31
 ;;9002226.02101,"638,07T80ZZ ",.01)
 ;;07T80ZZ 
 ;;9002226.02101,"638,07T80ZZ ",.02)
 ;;07T80ZZ 
 ;;9002226.02101,"638,07T80ZZ ",.03)
 ;;31
 ;;9002226.02101,"638,0HBT0ZZ ",.01)
 ;;0HBT0ZZ 
 ;;9002226.02101,"638,0HBT0ZZ ",.02)
 ;;0HBT0ZZ 
 ;;9002226.02101,"638,0HBT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"638,0HCT0ZZ ",.01)
 ;;0HCT0ZZ 
 ;;9002226.02101,"638,0HCT0ZZ ",.02)
 ;;0HCT0ZZ 
 ;;9002226.02101,"638,0HCT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"638,0HTT0ZZ ",.01)
 ;;0HTT0ZZ 
 ;;9002226.02101,"638,0HTT0ZZ ",.02)
 ;;0HTT0ZZ 
 ;;9002226.02101,"638,0HTT0ZZ ",.03)
 ;;31
 ;
OTHER ; OTHER ROUTINES
 Q
