BUD8TXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 16, 2007 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD TABLE 6 LINE 17
 ;
 ; This routine loads Taxonomy BUD TABLE 6 LINE 17
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
 ;;21,"260. ")
 ;;1
 ;;21,"779.3 ")
 ;;2
 ;;21,"783.3 ")
 ;;3
 ;;9002226,610,.01)
 ;;BUD TABLE 6 LINE 17
 ;;9002226,610,.02)
 ;;@
 ;;9002226,610,.04)
 ;;n
 ;;9002226,610,.06)
 ;;@
 ;;9002226,610,.08)
 ;;0
 ;;9002226,610,.09)
 ;;3031023
 ;;9002226,610,.11)
 ;;@
 ;;9002226,610,.12)
 ;;31
 ;;9002226,610,.13)
 ;;1
 ;;9002226,610,.14)
 ;;@
 ;;9002226,610,.15)
 ;;80
 ;;9002226,610,.16)
 ;;@
 ;;9002226,610,.17)
 ;;@
 ;;9002226,610,3101)
 ;;@
 ;;9002226.02101,"610,260. ",.01)
 ;;260. 
 ;;9002226.02101,"610,260. ",.02)
 ;;269.9 
 ;;9002226.02101,"610,779.3 ",.01)
 ;;779.3 
 ;;9002226.02101,"610,779.3 ",.02)
 ;;779.3 
 ;;9002226.02101,"610,783.3 ",.01)
 ;;783.3 
 ;;9002226.02101,"610,783.3 ",.02)
 ;;783.43 
 ;
OTHER ; OTHER ROUTINES
 Q
