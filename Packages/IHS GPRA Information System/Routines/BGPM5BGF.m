BGPM5BGF ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON OCT 28, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU PAP ICD0
 ;
 ; This routine loads Taxonomy BGPMU PAP ICD0
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
 ;;21,"91.46 ")
 ;;1
 ;;9002226,1089,.01)
 ;;BGPMU PAP ICD0
 ;;9002226,1089,.02)
 ;;Pap Smear ICD proc code
 ;;9002226,1089,.04)
 ;;@
 ;;9002226,1089,.06)
 ;;@
 ;;9002226,1089,.08)
 ;;@
 ;;9002226,1089,.09)
 ;;@
 ;;9002226,1089,.11)
 ;;@
 ;;9002226,1089,.12)
 ;;@
 ;;9002226,1089,.13)
 ;;@
 ;;9002226,1089,.14)
 ;;@
 ;;9002226,1089,.15)
 ;;80.1
 ;;9002226,1089,.16)
 ;;@
 ;;9002226,1089,.17)
 ;;@
 ;;9002226,1089,3101)
 ;;@
 ;;9002226.02101,"1089,91.46 ",.01)
 ;;91.46
 ;;9002226.02101,"1089,91.46 ",.02)
 ;;91.46
 ;
OTHER ; OTHER ROUTINES
 Q
