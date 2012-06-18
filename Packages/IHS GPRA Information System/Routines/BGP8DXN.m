BGP8DXN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP CPT FLU
 ;
 ; This routine loads Taxonomy BGP CPT FLU
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
 ;;21,"90655 ")
 ;;1
 ;;21,"90724 ")
 ;;2
 ;;21,"G0008 ")
 ;;3
 ;;21,"G8108 ")
 ;;4
 ;;9002226,297,.01)
 ;;BGP CPT FLU
 ;;9002226,297,.02)
 ;;@
 ;;9002226,297,.04)
 ;;@
 ;;9002226,297,.06)
 ;;@
 ;;9002226,297,.08)
 ;;0
 ;;9002226,297,.09)
 ;;3070604
 ;;9002226,297,.11)
 ;;@
 ;;9002226,297,.12)
 ;;455
 ;;9002226,297,.13)
 ;;1
 ;;9002226,297,.14)
 ;;@
 ;;9002226,297,.15)
 ;;81
 ;;9002226,297,.16)
 ;;@
 ;;9002226,297,.17)
 ;;@
 ;;9002226,297,3101)
 ;;@
 ;;9002226.02101,"297,90655 ",.01)
 ;;90655 
 ;;9002226.02101,"297,90655 ",.02)
 ;;90660 
 ;;9002226.02101,"297,90724 ",.01)
 ;;90724 
 ;;9002226.02101,"297,90724 ",.02)
 ;;90724 
 ;;9002226.02101,"297,G0008 ",.01)
 ;;G0008 
 ;;9002226.02101,"297,G0008 ",.02)
 ;;G0008 
 ;;9002226.02101,"297,G8108 ",.01)
 ;;G8108 
 ;;9002226.02101,"297,G8108 ",.02)
 ;;G8108 
 ;
OTHER ; OTHER ROUTINES
 Q
