APCL8XE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON FEB 04, 2008 ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;;DM AUDIT ESTIMATED GFR LOINC
 ;
 ; This routine loads Taxonomy DM AUDIT ESTIMATED GFR LOINC
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
 ;;21,"33914-3 ")
 ;;3
 ;;21,"45064-3 ")
 ;;4
 ;;21,"45065-0 ")
 ;;5
 ;;21,"45066-8 ")
 ;;6
 ;;21,"48642-3 ")
 ;;7
 ;;21,"48643-1 ")
 ;;8
 ;;9002226,556,.01)
 ;;DM AUDIT ESTIMATED GFR LOINC
 ;;9002226,556,.02)
 ;;@
 ;;9002226,556,.04)
 ;;n
 ;;9002226,556,.06)
 ;;@
 ;;9002226,556,.08)
 ;;@
 ;;9002226,556,.09)
 ;;@
 ;;9002226,556,.11)
 ;;@
 ;;9002226,556,.12)
 ;;@
 ;;9002226,556,.13)
 ;;1
 ;;9002226,556,.14)
 ;;FIHS
 ;;9002226,556,.15)
 ;;95.3
 ;;9002226,556,.16)
 ;;@
 ;;9002226,556,.17)
 ;;@
 ;;9002226,556,3101)
 ;;@
 ;;9002226.02101,"556,33914-3 ",.01)
 ;;33914-3
 ;;9002226.02101,"556,33914-3 ",.02)
 ;;33914-3
 ;;9002226.02101,"556,45064-3 ",.01)
 ;;45064-3
 ;;9002226.02101,"556,45064-3 ",.02)
 ;;45064-3
 ;;9002226.02101,"556,45065-0 ",.01)
 ;;45065-0
 ;;9002226.02101,"556,45065-0 ",.02)
 ;;45065-0
 ;;9002226.02101,"556,45066-8 ",.01)
 ;;45066-8
 ;;9002226.02101,"556,45066-8 ",.02)
 ;;45066-8
 ;;9002226.02101,"556,48642-3 ",.01)
 ;;48642-3
 ;;9002226.02101,"556,48642-3 ",.02)
 ;;48642-3
 ;;9002226.02101,"556,48643-1 ",.01)
 ;;48643-1
 ;;9002226.02101,"556,48643-1 ",.02)
 ;;48643-1
 ;
OTHER ; OTHER ROUTINES
 Q
