BGPM3AC ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;;BGPMU ATRIAL FIB DX
 ;
 ; This routine loads Taxonomy BGPMU ATRIAL FIB DX
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
 ;;21,"427.31 ")
 ;;1
 ;;21,"427.32 ")
 ;;2
 ;;9002226,777,.01)
 ;;BGPMU ATRIAL FIB DX
 ;;9002226,777,.02)
 ;;Atrial Fib DX ICD9s
 ;;9002226,777,.04)
 ;;n
 ;;9002226,777,.06)
 ;;@
 ;;9002226,777,.08)
 ;;@
 ;;9002226,777,.09)
 ;;3110217
 ;;9002226,777,.11)
 ;;@
 ;;9002226,777,.12)
 ;;@
 ;;9002226,777,.13)
 ;;@
 ;;9002226,777,.14)
 ;;@
 ;;9002226,777,.15)
 ;;80
 ;;9002226,777,.16)
 ;;1
 ;;9002226,777,.17)
 ;;@
 ;;9002226,777,3101)
 ;;@
 ;;9002226.02101,"777,427.31 ",.01)
 ;;427.31
 ;;9002226.02101,"777,427.31 ",.02)
 ;;427.31
 ;;9002226.02101,"777,427.32 ",.01)
 ;;427.32
 ;;9002226.02101,"777,427.32 ",.02)
 ;;427.32
 ;
OTHER ; OTHER ROUTINES
 Q
