BGP62T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP ESTIMATED GFR LOINC
 ;
 ; This routine loads Taxonomy BGP ESTIMATED GFR LOINC
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
 ;;21,"24362-6 ")
 ;;1
 ;;21,"33914-3 ")
 ;;2
 ;;21,"45064-3 ")
 ;;3
 ;;21,"45065-0 ")
 ;;4
 ;;21,"45066-8 ")
 ;;5
 ;;21,"48642-3 ")
 ;;6
 ;;21,"50044-7 ")
 ;;7
 ;;21,"50261-7 ")
 ;;8
 ;;21,"50383-9 ")
 ;;9
 ;;21,"50384-7 ")
 ;;10
 ;;21,"62238-1 ")
 ;;11
 ;;21,"69405-9 ")
 ;;12
 ;;21,"70969-1 ")
 ;;13
 ;;21,"76633-7 ")
 ;;14
 ;;21,"77147-7 ")
 ;;15
 ;;9002226,643,.01)
 ;;BGP ESTIMATED GFR LOINC
 ;;9002226,643,.02)
 ;;@
 ;;9002226,643,.04)
 ;;n
 ;;9002226,643,.06)
 ;;@
 ;;9002226,643,.08)
 ;;@
 ;;9002226,643,.09)
 ;;3060830
 ;;9002226,643,.11)
 ;;@
 ;;9002226,643,.12)
 ;;@
 ;;9002226,643,.13)
 ;;1
 ;;9002226,643,.14)
 ;;FIHS
 ;;9002226,643,.15)
 ;;95.3
 ;;9002226,643,.16)
 ;;@
 ;;9002226,643,.17)
 ;;@
 ;;9002226,643,3101)
 ;;@
 ;;9002226.02101,"643,24362-6 ",.01)
 ;;24362-6
 ;;9002226.02101,"643,24362-6 ",.02)
 ;;24362-6
 ;;9002226.02101,"643,33914-3 ",.01)
 ;;33914-3
 ;;9002226.02101,"643,33914-3 ",.02)
 ;;33914-3
 ;;9002226.02101,"643,45064-3 ",.01)
 ;;45064-3
 ;;9002226.02101,"643,45064-3 ",.02)
 ;;45064-3
 ;;9002226.02101,"643,45065-0 ",.01)
 ;;45065-0
 ;;9002226.02101,"643,45065-0 ",.02)
 ;;45065-0
 ;;9002226.02101,"643,45066-8 ",.01)
 ;;45066-8
 ;;9002226.02101,"643,45066-8 ",.02)
 ;;45066-8
 ;;9002226.02101,"643,48642-3 ",.01)
 ;;48642-3
 ;;9002226.02101,"643,48642-3 ",.02)
 ;;48642-3
 ;;9002226.02101,"643,50044-7 ",.01)
 ;;50044-7
 ;;9002226.02101,"643,50044-7 ",.02)
 ;;50044-7
 ;;9002226.02101,"643,50261-7 ",.01)
 ;;50261-7
 ;;9002226.02101,"643,50261-7 ",.02)
 ;;50261-7
 ;;9002226.02101,"643,50383-9 ",.01)
 ;;50383-9
 ;;9002226.02101,"643,50383-9 ",.02)
 ;;50383-9
 ;;9002226.02101,"643,50384-7 ",.01)
 ;;50384-7
 ;;9002226.02101,"643,50384-7 ",.02)
 ;;50384-7
 ;;9002226.02101,"643,62238-1 ",.01)
 ;;62238-1
 ;;9002226.02101,"643,62238-1 ",.02)
 ;;62238-1
 ;;9002226.02101,"643,69405-9 ",.01)
 ;;69405-9
 ;;9002226.02101,"643,69405-9 ",.02)
 ;;69405-9
 ;;9002226.02101,"643,70969-1 ",.01)
 ;;70969-1
 ;;9002226.02101,"643,70969-1 ",.02)
 ;;70969-1
 ;;9002226.02101,"643,76633-7 ",.01)
 ;;76633-7
 ;;9002226.02101,"643,76633-7 ",.02)
 ;;76633-7
 ;;9002226.02101,"643,77147-7 ",.01)
 ;;77147-7
 ;;9002226.02101,"643,77147-7 ",.02)
 ;;77147-7
 ;;9002226.04101,"643,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
