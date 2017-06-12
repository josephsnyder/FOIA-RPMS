ATXO5W ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 13, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;SURVEILLANCE H1N1 DEL PROC
 ;
 ; This routine loads Taxonomy SURVEILLANCE H1N1 DEL PROC
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
 ;;21,"0Q820ZZ ")
 ;;32
 ;;21,"0Q823ZZ ")
 ;;33
 ;;21,"0Q824ZZ ")
 ;;34
 ;;21,"0Q830ZZ ")
 ;;35
 ;;21,"0Q833ZZ ")
 ;;36
 ;;21,"0Q834ZZ ")
 ;;37
 ;;21,"0U7C7ZZ ")
 ;;14
 ;;21,"0W8NXZZ ")
 ;;3
 ;;21,"10900ZC ")
 ;;9
 ;;21,"10903ZC ")
 ;;10
 ;;21,"10904ZC ")
 ;;11
 ;;21,"10907ZA ")
 ;;27
 ;;21,"10907ZC ")
 ;;12
 ;;21,"10908ZA ")
 ;;28
 ;;21,"10908ZC ")
 ;;13
 ;;21,"10D00Z0 ")
 ;;38
 ;;21,"10D00Z1 ")
 ;;39
 ;;21,"10D00Z2 ")
 ;;40
 ;;21,"10D07Z3 ")
 ;;2
 ;;21,"10D07Z4 ")
 ;;4
 ;;21,"10D07Z5 ")
 ;;5
 ;;21,"10D07Z6 ")
 ;;7
 ;;21,"10D07Z7 ")
 ;;15
 ;;21,"10D07Z8 ")
 ;;8
 ;;21,"10E0XZZ ")
 ;;26
 ;;21,"10J07ZZ ")
 ;;16
 ;;21,"10S07ZZ ")
 ;;6
 ;;21,"10S0XZZ ")
 ;;31
 ;;21,"10T20ZZ ")
 ;;41
 ;;21,"10T23ZZ ")
 ;;42
 ;;21,"10T24ZZ ")
 ;;43
 ;;21,"3E030VJ ")
 ;;17
 ;;21,"3E033VJ ")
 ;;18
 ;;21,"3E040VJ ")
 ;;19
 ;;21,"3E043VJ ")
 ;;20
 ;;21,"3E050VJ ")
 ;;21
 ;;21,"3E053VJ ")
 ;;22
 ;;21,"3E060VJ ")
 ;;23
 ;;21,"3E063VJ ")
 ;;24
 ;;21,"3E0DXGC ")
 ;;25
 ;;21,"72.0 ")
 ;;1
 ;;9002226,909,.01)
 ;;SURVEILLANCE H1N1 DEL PROC
 ;;9002226,909,.02)
 ;;Preg delivery procedures
 ;;9002226,909,.04)
 ;;n
 ;;9002226,909,.06)
 ;;@
 ;;9002226,909,.08)
 ;;0
 ;;9002226,909,.09)
 ;;3090820
 ;;9002226,909,.11)
 ;;@
 ;;9002226,909,.12)
 ;;255
 ;;9002226,909,.13)
 ;;1
 ;;9002226,909,.14)
 ;;@
 ;;9002226,909,.15)
 ;;80.1
 ;;9002226,909,.16)
 ;;@
 ;;9002226,909,.17)
 ;;@
 ;;9002226,909,3101)
 ;;@
 ;;9002226.02101,"909,0Q820ZZ ",.01)
 ;;0Q820ZZ 
 ;;9002226.02101,"909,0Q820ZZ ",.02)
 ;;0Q820ZZ 
 ;;9002226.02101,"909,0Q820ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0Q823ZZ ",.01)
 ;;0Q823ZZ 
 ;;9002226.02101,"909,0Q823ZZ ",.02)
 ;;0Q823ZZ 
 ;;9002226.02101,"909,0Q823ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0Q824ZZ ",.01)
 ;;0Q824ZZ 
 ;;9002226.02101,"909,0Q824ZZ ",.02)
 ;;0Q824ZZ 
 ;;9002226.02101,"909,0Q824ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0Q830ZZ ",.01)
 ;;0Q830ZZ 
 ;;9002226.02101,"909,0Q830ZZ ",.02)
 ;;0Q830ZZ 
 ;;9002226.02101,"909,0Q830ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0Q833ZZ ",.01)
 ;;0Q833ZZ 
 ;;9002226.02101,"909,0Q833ZZ ",.02)
 ;;0Q833ZZ 
 ;;9002226.02101,"909,0Q833ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0Q834ZZ ",.01)
 ;;0Q834ZZ 
 ;;9002226.02101,"909,0Q834ZZ ",.02)
 ;;0Q834ZZ 
 ;;9002226.02101,"909,0Q834ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0U7C7ZZ ",.01)
 ;;0U7C7ZZ 
 ;;9002226.02101,"909,0U7C7ZZ ",.02)
 ;;0U7C7ZZ 
 ;;9002226.02101,"909,0U7C7ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,0W8NXZZ ",.01)
 ;;0W8NXZZ 
 ;;9002226.02101,"909,0W8NXZZ ",.02)
 ;;0W8NXZZ 
 ;;9002226.02101,"909,0W8NXZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10900ZC ",.01)
 ;;10900ZC 
 ;;9002226.02101,"909,10900ZC ",.02)
 ;;10900ZC 
 ;;9002226.02101,"909,10900ZC ",.03)
 ;;31
 ;;9002226.02101,"909,10903ZC ",.01)
 ;;10903ZC 
 ;;9002226.02101,"909,10903ZC ",.02)
 ;;10903ZC 
 ;;9002226.02101,"909,10903ZC ",.03)
 ;;31
 ;;9002226.02101,"909,10904ZC ",.01)
 ;;10904ZC 
 ;;9002226.02101,"909,10904ZC ",.02)
 ;;10904ZC 
 ;;9002226.02101,"909,10904ZC ",.03)
 ;;31
 ;;9002226.02101,"909,10907ZA ",.01)
 ;;10907ZA 
 ;;9002226.02101,"909,10907ZA ",.02)
 ;;10907ZA 
 ;;9002226.02101,"909,10907ZA ",.03)
 ;;31
 ;;9002226.02101,"909,10907ZC ",.01)
 ;;10907ZC 
 ;;9002226.02101,"909,10907ZC ",.02)
 ;;10907ZC 
 ;;9002226.02101,"909,10907ZC ",.03)
 ;;31
 ;;9002226.02101,"909,10908ZA ",.01)
 ;;10908ZA 
 ;;9002226.02101,"909,10908ZA ",.02)
 ;;10908ZA 
 ;;9002226.02101,"909,10908ZA ",.03)
 ;;31
 ;;9002226.02101,"909,10908ZC ",.01)
 ;;10908ZC 
 ;;9002226.02101,"909,10908ZC ",.02)
 ;;10908ZC 
 ;;9002226.02101,"909,10908ZC ",.03)
 ;;31
 ;;9002226.02101,"909,10D00Z0 ",.01)
 ;;10D00Z0 
 ;;9002226.02101,"909,10D00Z0 ",.02)
 ;;10D00Z0 
 ;;9002226.02101,"909,10D00Z0 ",.03)
 ;;31
 ;;9002226.02101,"909,10D00Z1 ",.01)
 ;;10D00Z1 
 ;;9002226.02101,"909,10D00Z1 ",.02)
 ;;10D00Z1 
 ;;9002226.02101,"909,10D00Z1 ",.03)
 ;;31
 ;;9002226.02101,"909,10D00Z2 ",.01)
 ;;10D00Z2 
 ;;9002226.02101,"909,10D00Z2 ",.02)
 ;;10D00Z2 
 ;;9002226.02101,"909,10D00Z2 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z3 ",.01)
 ;;10D07Z3 
 ;;9002226.02101,"909,10D07Z3 ",.02)
 ;;10D07Z3 
 ;;9002226.02101,"909,10D07Z3 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z4 ",.01)
 ;;10D07Z4 
 ;;9002226.02101,"909,10D07Z4 ",.02)
 ;;10D07Z4 
 ;;9002226.02101,"909,10D07Z4 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z5 ",.01)
 ;;10D07Z5 
 ;;9002226.02101,"909,10D07Z5 ",.02)
 ;;10D07Z5 
 ;;9002226.02101,"909,10D07Z5 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z6 ",.01)
 ;;10D07Z6 
 ;;9002226.02101,"909,10D07Z6 ",.02)
 ;;10D07Z6 
 ;;9002226.02101,"909,10D07Z6 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z7 ",.01)
 ;;10D07Z7 
 ;;9002226.02101,"909,10D07Z7 ",.02)
 ;;10D07Z7 
 ;;9002226.02101,"909,10D07Z7 ",.03)
 ;;31
 ;;9002226.02101,"909,10D07Z8 ",.01)
 ;;10D07Z8 
 ;;9002226.02101,"909,10D07Z8 ",.02)
 ;;10D07Z8 
 ;;9002226.02101,"909,10D07Z8 ",.03)
 ;;31
 ;;9002226.02101,"909,10E0XZZ ",.01)
 ;;10E0XZZ 
 ;;9002226.02101,"909,10E0XZZ ",.02)
 ;;10E0XZZ 
 ;;9002226.02101,"909,10E0XZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10J07ZZ ",.01)
 ;;10J07ZZ 
 ;;9002226.02101,"909,10J07ZZ ",.02)
 ;;10J07ZZ 
 ;;9002226.02101,"909,10J07ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10S07ZZ ",.01)
 ;;10S07ZZ 
 ;;9002226.02101,"909,10S07ZZ ",.02)
 ;;10S07ZZ 
 ;;9002226.02101,"909,10S07ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10S0XZZ ",.01)
 ;;10S0XZZ 
 ;;9002226.02101,"909,10S0XZZ ",.02)
 ;;10S0XZZ 
 ;;9002226.02101,"909,10S0XZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10T20ZZ ",.01)
 ;;10T20ZZ 
 ;;9002226.02101,"909,10T20ZZ ",.02)
 ;;10T20ZZ 
 ;;9002226.02101,"909,10T20ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10T23ZZ ",.01)
 ;;10T23ZZ 
 ;;9002226.02101,"909,10T23ZZ ",.02)
 ;;10T23ZZ 
 ;;9002226.02101,"909,10T23ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,10T24ZZ ",.01)
 ;;10T24ZZ 
 ;;9002226.02101,"909,10T24ZZ ",.02)
 ;;10T24ZZ 
 ;;9002226.02101,"909,10T24ZZ ",.03)
 ;;31
 ;;9002226.02101,"909,3E030VJ ",.01)
 ;;3E030VJ 
 ;;9002226.02101,"909,3E030VJ ",.02)
 ;;3E030VJ 
 ;;9002226.02101,"909,3E030VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E033VJ ",.01)
 ;;3E033VJ 
 ;;9002226.02101,"909,3E033VJ ",.02)
 ;;3E033VJ 
 ;;9002226.02101,"909,3E033VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E040VJ ",.01)
 ;;3E040VJ 
 ;;9002226.02101,"909,3E040VJ ",.02)
 ;;3E040VJ 
 ;;9002226.02101,"909,3E040VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E043VJ ",.01)
 ;;3E043VJ 
 ;;9002226.02101,"909,3E043VJ ",.02)
 ;;3E043VJ 
 ;;9002226.02101,"909,3E043VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E050VJ ",.01)
 ;;3E050VJ 
 ;;9002226.02101,"909,3E050VJ ",.02)
 ;;3E050VJ 
 ;;9002226.02101,"909,3E050VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E053VJ ",.01)
 ;;3E053VJ 
 ;;9002226.02101,"909,3E053VJ ",.02)
 ;;3E053VJ 
 ;;9002226.02101,"909,3E053VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E060VJ ",.01)
 ;;3E060VJ 
 ;;9002226.02101,"909,3E060VJ ",.02)
 ;;3E060VJ 
 ;;9002226.02101,"909,3E060VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E063VJ ",.01)
 ;;3E063VJ 
 ;;9002226.02101,"909,3E063VJ ",.02)
 ;;3E063VJ 
 ;;9002226.02101,"909,3E063VJ ",.03)
 ;;31
 ;;9002226.02101,"909,3E0DXGC ",.01)
 ;;3E0DXGC 
 ;;9002226.02101,"909,3E0DXGC ",.02)
 ;;3E0DXGC 
 ;;9002226.02101,"909,3E0DXGC ",.03)
 ;;31
 ;;9002226.02101,"909,72.0 ",.01)
 ;;72.0
 ;;9002226.02101,"909,72.0 ",.02)
 ;;74.99
 ;;9002226.02101,"909,72.0 ",.03)
 ;;2
 ;;9002226.04101,"909,1",.01)
 ;;BGP
 ;;9002226.04101,"909,2",.01)
 ;;BQI
 ;;9002226.05101,"909,1",.01)
 ;;PREGNANT
 ;
OTHER ; OTHER ROUTINES
 Q
