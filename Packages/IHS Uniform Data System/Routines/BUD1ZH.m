BUD1ZH ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD IPV EVID DISEASE
 ;
 ; This routine loads Taxonomy BUD IPV EVID DISEASE
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
 ;;21,"045.00 ")
 ;;1
 ;;21,"V12.02 ")
 ;;2
 ;;9002226,814,.01)
 ;;BUD IPV EVID DISEASE
 ;;9002226,814,.02)
 ;;@
 ;;9002226,814,.04)
 ;;@
 ;;9002226,814,.06)
 ;;@
 ;;9002226,814,.08)
 ;;0
 ;;9002226,814,.09)
 ;;3091223
 ;;9002226,814,.11)
 ;;@
 ;;9002226,814,.12)
 ;;31
 ;;9002226,814,.13)
 ;;1
 ;;9002226,814,.14)
 ;;@
 ;;9002226,814,.15)
 ;;80
 ;;9002226,814,.16)
 ;;@
 ;;9002226,814,.17)
 ;;@
 ;;9002226,814,3101)
 ;;@
 ;;9002226.02101,"814,045.00 ",.01)
 ;;045.00 
 ;;9002226.02101,"814,045.00 ",.02)
 ;;045.92 
 ;;9002226.02101,"814,V12.02 ",.01)
 ;;V12.02 
 ;;9002226.02101,"814,V12.02 ",.02)
 ;;V12.02 
 ;
OTHER ; OTHER ROUTINES
 Q
