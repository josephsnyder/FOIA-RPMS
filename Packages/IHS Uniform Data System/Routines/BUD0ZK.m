BUD0ZK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD GEST/STEROID DM DX
 ;
 ; This routine loads Taxonomy BUD GEST/STEROID DM DX
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
 ;;21,"251.8 ")
 ;;1
 ;;21,"648.80 ")
 ;;2
 ;;21,"962.0 ")
 ;;3
 ;;9002226,896,.01)
 ;;BUD GEST/STEROID DM DX
 ;;9002226,896,.02)
 ;;@
 ;;9002226,896,.04)
 ;;@
 ;;9002226,896,.06)
 ;;@
 ;;9002226,896,.08)
 ;;0
 ;;9002226,896,.09)
 ;;3081211
 ;;9002226,896,.11)
 ;;@
 ;;9002226,896,.12)
 ;;31
 ;;9002226,896,.13)
 ;;1
 ;;9002226,896,.14)
 ;;@
 ;;9002226,896,.15)
 ;;80
 ;;9002226,896,.16)
 ;;@
 ;;9002226,896,.17)
 ;;@
 ;;9002226,896,3101)
 ;;@
 ;;9002226.02101,"896,251.8 ",.01)
 ;;251.8 
 ;;9002226.02101,"896,251.8 ",.02)
 ;;251.8 
 ;;9002226.02101,"896,648.80 ",.01)
 ;;648.80 
 ;;9002226.02101,"896,648.80 ",.02)
 ;;648.84 
 ;;9002226.02101,"896,962.0 ",.01)
 ;;962.0 
 ;;9002226.02101,"896,962.0 ",.02)
 ;;962.0 
 ;
OTHER ; OTHER ROUTINES
 Q
