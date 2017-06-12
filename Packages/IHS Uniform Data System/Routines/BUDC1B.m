BUDC1B ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON DEC 02, 2015;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD PAP CPT UDS15
 ;
 ; This routine loads Taxonomy BUD PAP CPT UDS15
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
 ;;21,"3015F ")
 ;;1
 ;;21,"88141 ")
 ;;2
 ;;21,"88164 ")
 ;;3
 ;;21,"88174 ")
 ;;4
 ;;21,"G0101 ")
 ;;5
 ;;21,"G0123 ")
 ;;6
 ;;21,"G0141 ")
 ;;7
 ;;21,"P3000 ")
 ;;8
 ;;21,"Q0091 ")
 ;;9
 ;;9002226,2110,.01)
 ;;BUD PAP CPT UDS15
 ;;9002226,2110,.02)
 ;;@
 ;;9002226,2110,.04)
 ;;@
 ;;9002226,2110,.06)
 ;;@
 ;;9002226,2110,.08)
 ;;0
 ;;9002226,2110,.09)
 ;;3151202
 ;;9002226,2110,.11)
 ;;@
 ;;9002226,2110,.12)
 ;;455
 ;;9002226,2110,.13)
 ;;1
 ;;9002226,2110,.14)
 ;;@
 ;;9002226,2110,.15)
 ;;81
 ;;9002226,2110,.16)
 ;;@
 ;;9002226,2110,.17)
 ;;@
 ;;9002226,2110,3101)
 ;;@
 ;;9002226.02101,"2110,3015F ",.01)
 ;;3015F 
 ;;9002226.02101,"2110,3015F ",.02)
 ;;3015F 
 ;;9002226.02101,"2110,88141 ",.01)
 ;;88141 
 ;;9002226.02101,"2110,88141 ",.02)
 ;;88155 
 ;;9002226.02101,"2110,88164 ",.01)
 ;;88164 
 ;;9002226.02101,"2110,88164 ",.02)
 ;;88167 
 ;;9002226.02101,"2110,88174 ",.01)
 ;;88174 
 ;;9002226.02101,"2110,88174 ",.02)
 ;;88175 
 ;;9002226.02101,"2110,G0101 ",.01)
 ;;G0101 
 ;;9002226.02101,"2110,G0101 ",.02)
 ;;G0101 
 ;;9002226.02101,"2110,G0123 ",.01)
 ;;G0123 
 ;;9002226.02101,"2110,G0123 ",.02)
 ;;G0124 
 ;;9002226.02101,"2110,G0141 ",.01)
 ;;G0141 
 ;;9002226.02101,"2110,G0141 ",.02)
 ;;G0148 
 ;;9002226.02101,"2110,P3000 ",.01)
 ;;P3000 
 ;;9002226.02101,"2110,P3000 ",.02)
 ;;P3001 
 ;;9002226.02101,"2110,Q0091 ",.01)
 ;;Q0091 
 ;;9002226.02101,"2110,Q0091 ",.02)
 ;;Q0091 
 ;
OTHER ; OTHER ROUTINES
 Q
