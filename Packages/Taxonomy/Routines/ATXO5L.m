ATXO5L ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013; ; 25 Apr 2014  11:57 AM
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;APCH TONOMETRY PROCS
 ;
 ; This routine loads Taxonomy APCH TONOMETRY PROCS
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
 ;;21,"4A07XBZ")
 ;;3
 ;;21,"89.11 ")
 ;;1
 ;;21,"95.26 ")
 ;;2
 ;;9002226,1747,.01)
 ;;APCH TONOMETRY PROCS
 ;;9002226,1747,.02)
 ;;@
 ;;9002226,1747,.04)
 ;;@
 ;;9002226,1747,.06)
 ;;@
 ;;9002226,1747,.08)
 ;;@
 ;;9002226,1747,.09)
 ;;3131113
 ;;9002226,1747,.11)
 ;;@
 ;;9002226,1747,.12)
 ;;255
 ;;9002226,1747,.13)
 ;;1
 ;;9002226,1747,.14)
 ;;@
 ;;9002226,1747,.15)
 ;;80.1
 ;;9002226,1747,.16)
 ;;@
 ;;9002226,1747,.17)
 ;;@
 ;;9002226,1747,3101)
 ;;@
 ;;9002226.02101,"1747,4A07XBZ",.01)
 ;;4A07XBZ 
 ;;9002226.02101,"1747,4A07XBZ",.02)
 ;;4A07XBZ 
 ;;9002226.02101,"1747,4A07XBZ",.03)
 ;;31
 ;;9002226.02101,"1747,89.11 ",.01)
 ;;89.11 
 ;;9002226.02101,"1747,89.11 ",.02)
 ;;89.11 
 ;;9002226.02101,"1747,89.11 ",.03)
 ;;2
 ;;9002226.02101,"1747,95.26 ",.01)
 ;;95.26 
 ;;9002226.02101,"1747,95.26 ",.02)
 ;;95.26 
 ;;9002226.02101,"1747,95.26 ",.03)
 ;;2
 ;
OTHER ; OTHER ROUTINES
 Q
