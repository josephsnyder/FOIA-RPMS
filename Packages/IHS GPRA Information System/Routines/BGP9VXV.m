BGP9VXV ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP CMS RENAL ART STEN DXS
 ;
 ; This routine loads Taxonomy BGP CMS RENAL ART STEN DXS
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
 ;;21,"403.0 ")
 ;;1
 ;;21,"440.1 ")
 ;;2
 ;;9002226,871,.01)
 ;;BGP CMS RENAL ART STEN DXS
 ;;9002226,871,.02)
 ;;@
 ;;9002226,871,.04)
 ;;n
 ;;9002226,871,.06)
 ;;@
 ;;9002226,871,.08)
 ;;0
 ;;9002226,871,.09)
 ;;3070524
 ;;9002226,871,.11)
 ;;@
 ;;9002226,871,.12)
 ;;31
 ;;9002226,871,.13)
 ;;1
 ;;9002226,871,.14)
 ;;@
 ;;9002226,871,.15)
 ;;80
 ;;9002226,871,.16)
 ;;@
 ;;9002226,871,.17)
 ;;@
 ;;9002226,871,3101)
 ;;@
 ;;9002226.02101,"871,403.0 ",.01)
 ;;403.0 
 ;;9002226.02101,"871,403.0 ",.02)
 ;;403.91 
 ;;9002226.02101,"871,440.1 ",.01)
 ;;440.1 
 ;;9002226.02101,"871,440.1 ",.02)
 ;;440.1 
 ;
OTHER ; OTHER ROUTINES
 Q
