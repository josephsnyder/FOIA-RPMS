BUD9TXP ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 23, 2009 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD CPT PAP TABLE 6B 09
 ;
 ; This routine loads Taxonomy BUD CPT PAP TABLE 6B 09
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
 ;;21,"88141 ")
 ;;1
 ;;21,"88148 ")
 ;;2
 ;;21,"88152 ")
 ;;3
 ;;21,"88164 ")
 ;;4
 ;;21,"88174 ")
 ;;5
 ;;9002226,903,.01)
 ;;BUD CPT PAP TABLE 6B 09
 ;;9002226,903,.02)
 ;;@
 ;;9002226,903,.04)
 ;;@
 ;;9002226,903,.06)
 ;;@
 ;;9002226,903,.08)
 ;;0
 ;;9002226,903,.09)
 ;;3091223
 ;;9002226,903,.11)
 ;;@
 ;;9002226,903,.12)
 ;;455
 ;;9002226,903,.13)
 ;;1
 ;;9002226,903,.14)
 ;;@
 ;;9002226,903,.15)
 ;;81
 ;;9002226,903,.16)
 ;;@
 ;;9002226,903,.17)
 ;;@
 ;;9002226,903,3101)
 ;;@
 ;;9002226.02101,"903,88141 ",.01)
 ;;88141 
 ;;9002226.02101,"903,88141 ",.02)
 ;;88145 
 ;;9002226.02101,"903,88148 ",.01)
 ;;88148 
 ;;9002226.02101,"903,88148 ",.02)
 ;;88150 
 ;;9002226.02101,"903,88152 ",.01)
 ;;88152 
 ;;9002226.02101,"903,88152 ",.02)
 ;;88155 
 ;;9002226.02101,"903,88164 ",.01)
 ;;88164 
 ;;9002226.02101,"903,88164 ",.02)
 ;;88167 
 ;;9002226.02101,"903,88174 ",.01)
 ;;88174 
 ;;9002226.02101,"903,88174 ",.02)
 ;;88175 
 ;
OTHER ; OTHER ROUTINES
 Q
