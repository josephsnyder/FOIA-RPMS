ATXO1L ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP INJECTION ANTIBIOTIC PROCS
 ;
 ; This routine loads Taxonomy BGP INJECTION ANTIBIOTIC PROCS
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
 ;;21,"3E00X29 ")
 ;;1
 ;;21,"3E01329 ")
 ;;2
 ;;21,"3E02329 ")
 ;;3
 ;;21,"3E03029 ")
 ;;4
 ;;21,"3E03329 ")
 ;;5
 ;;21,"3E04029 ")
 ;;6
 ;;21,"3E04329 ")
 ;;7
 ;;21,"3E05029 ")
 ;;8
 ;;21,"3E05329 ")
 ;;9
 ;;21,"3E06029 ")
 ;;10
 ;;21,"3E06329 ")
 ;;11
 ;;21,"3E0E329 ")
 ;;12
 ;;21,"3E0E729 ")
 ;;13
 ;;21,"3E0E829 ")
 ;;14
 ;;21,"3E0F329 ")
 ;;15
 ;;21,"3E0F729 ")
 ;;16
 ;;21,"3E0F829 ")
 ;;17
 ;;21,"3E0G329 ")
 ;;18
 ;;21,"3E0G729 ")
 ;;19
 ;;21,"3E0G829 ")
 ;;20
 ;;21,"3E0H329 ")
 ;;21
 ;;21,"3E0H729 ")
 ;;22
 ;;21,"3E0H829 ")
 ;;23
 ;;21,"3E0J329 ")
 ;;24
 ;;21,"3E0J729 ")
 ;;25
 ;;21,"3E0J829 ")
 ;;26
 ;;21,"3E0K329 ")
 ;;27
 ;;21,"3E0K729 ")
 ;;28
 ;;21,"3E0K829 ")
 ;;29
 ;;21,"3E0L329 ")
 ;;30
 ;;21,"3E0M329 ")
 ;;31
 ;;21,"3E0N329 ")
 ;;32
 ;;21,"3E0N729 ")
 ;;33
 ;;21,"3E0N829 ")
 ;;34
 ;;21,"3E0P329 ")
 ;;35
 ;;21,"3E0P729 ")
 ;;36
 ;;21,"3E0P829 ")
 ;;37
 ;;21,"3E0Q329 ")
 ;;38
 ;;21,"3E0R329 ")
 ;;39
 ;;21,"3E0S329 ")
 ;;40
 ;;21,"3E0U029 ")
 ;;41
 ;;21,"3E0U329 ")
 ;;42
 ;;21,"3E0V329 ")
 ;;43
 ;;21,"3E0W329 ")
 ;;44
 ;;21,"3E0Y329 ")
 ;;45
 ;;21,"99.21 ")
 ;;46
 ;;9002226,1558,.01)
 ;;BGP INJECTION ANTIBIOTIC PROCS
 ;;9002226,1558,.02)
 ;;@
 ;;9002226,1558,.04)
 ;;n
 ;;9002226,1558,.06)
 ;;@
 ;;9002226,1558,.08)
 ;;0
 ;;9002226,1558,.09)
 ;;3130514
 ;;9002226,1558,.11)
 ;;@
 ;;9002226,1558,.12)
 ;;255
 ;;9002226,1558,.13)
 ;;1
 ;;9002226,1558,.14)
 ;;@
 ;;9002226,1558,.15)
 ;;80.1
 ;;9002226,1558,.16)
 ;;@
 ;;9002226,1558,.17)
 ;;@
 ;;9002226,1558,3101)
 ;;@
 ;;9002226.02101,"1558,3E00X29 ",.01)
 ;;3E00X29
 ;;9002226.02101,"1558,3E00X29 ",.02)
 ;;3E00X29
 ;;9002226.02101,"1558,3E00X29 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E01329 ",.01)
 ;;3E01329
 ;;9002226.02101,"1558,3E01329 ",.02)
 ;;3E01329
 ;;9002226.02101,"1558,3E01329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E02329 ",.01)
 ;;3E02329
 ;;9002226.02101,"1558,3E02329 ",.02)
 ;;3E02329
 ;;9002226.02101,"1558,3E02329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E03029 ",.01)
 ;;3E03029
 ;;9002226.02101,"1558,3E03029 ",.02)
 ;;3E03029
 ;;9002226.02101,"1558,3E03029 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E03329 ",.01)
 ;;3E03329
 ;;9002226.02101,"1558,3E03329 ",.02)
 ;;3E03329
 ;;9002226.02101,"1558,3E03329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E04029 ",.01)
 ;;3E04029
 ;;9002226.02101,"1558,3E04029 ",.02)
 ;;3E04029
 ;;9002226.02101,"1558,3E04029 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E04329 ",.01)
 ;;3E04329
 ;;9002226.02101,"1558,3E04329 ",.02)
 ;;3E04329
 ;;9002226.02101,"1558,3E04329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E05029 ",.01)
 ;;3E05029
 ;;9002226.02101,"1558,3E05029 ",.02)
 ;;3E05029
 ;;9002226.02101,"1558,3E05029 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E05329 ",.01)
 ;;3E05329
 ;;9002226.02101,"1558,3E05329 ",.02)
 ;;3E05329
 ;;9002226.02101,"1558,3E05329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E06029 ",.01)
 ;;3E06029
 ;;9002226.02101,"1558,3E06029 ",.02)
 ;;3E06029
 ;;9002226.02101,"1558,3E06029 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E06329 ",.01)
 ;;3E06329
 ;;9002226.02101,"1558,3E06329 ",.02)
 ;;3E06329
 ;;9002226.02101,"1558,3E06329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0E329 ",.01)
 ;;3E0E329
 ;;9002226.02101,"1558,3E0E329 ",.02)
 ;;3E0E329
 ;;9002226.02101,"1558,3E0E329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0E729 ",.01)
 ;;3E0E729
 ;;9002226.02101,"1558,3E0E729 ",.02)
 ;;3E0E729
 ;;9002226.02101,"1558,3E0E729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0E829 ",.01)
 ;;3E0E829
 ;;9002226.02101,"1558,3E0E829 ",.02)
 ;;3E0E829
 ;;9002226.02101,"1558,3E0E829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0F329 ",.01)
 ;;3E0F329
 ;;9002226.02101,"1558,3E0F329 ",.02)
 ;;3E0F329
 ;;9002226.02101,"1558,3E0F329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0F729 ",.01)
 ;;3E0F729
 ;;9002226.02101,"1558,3E0F729 ",.02)
 ;;3E0F729
 ;;9002226.02101,"1558,3E0F729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0F829 ",.01)
 ;;3E0F829
 ;;9002226.02101,"1558,3E0F829 ",.02)
 ;;3E0F829
 ;;9002226.02101,"1558,3E0F829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0G329 ",.01)
 ;;3E0G329
 ;;9002226.02101,"1558,3E0G329 ",.02)
 ;;3E0G329
 ;;9002226.02101,"1558,3E0G329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0G729 ",.01)
 ;;3E0G729
 ;;9002226.02101,"1558,3E0G729 ",.02)
 ;;3E0G729
 ;;9002226.02101,"1558,3E0G729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0G829 ",.01)
 ;;3E0G829
 ;;9002226.02101,"1558,3E0G829 ",.02)
 ;;3E0G829
 ;;9002226.02101,"1558,3E0G829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0H329 ",.01)
 ;;3E0H329
 ;;9002226.02101,"1558,3E0H329 ",.02)
 ;;3E0H329
 ;;9002226.02101,"1558,3E0H329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0H729 ",.01)
 ;;3E0H729
 ;;9002226.02101,"1558,3E0H729 ",.02)
 ;;3E0H729
 ;;9002226.02101,"1558,3E0H729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0H829 ",.01)
 ;;3E0H829
 ;;9002226.02101,"1558,3E0H829 ",.02)
 ;;3E0H829
 ;;9002226.02101,"1558,3E0H829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0J329 ",.01)
 ;;3E0J329
 ;;9002226.02101,"1558,3E0J329 ",.02)
 ;;3E0J329
 ;;9002226.02101,"1558,3E0J329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0J729 ",.01)
 ;;3E0J729
 ;;9002226.02101,"1558,3E0J729 ",.02)
 ;;3E0J729
 ;;9002226.02101,"1558,3E0J729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0J829 ",.01)
 ;;3E0J829
 ;;9002226.02101,"1558,3E0J829 ",.02)
 ;;3E0J829
 ;;9002226.02101,"1558,3E0J829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0K329 ",.01)
 ;;3E0K329
 ;;9002226.02101,"1558,3E0K329 ",.02)
 ;;3E0K329
 ;;9002226.02101,"1558,3E0K329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0K729 ",.01)
 ;;3E0K729
 ;;9002226.02101,"1558,3E0K729 ",.02)
 ;;3E0K729
 ;;9002226.02101,"1558,3E0K729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0K829 ",.01)
 ;;3E0K829
 ;;9002226.02101,"1558,3E0K829 ",.02)
 ;;3E0K829
 ;;9002226.02101,"1558,3E0K829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0L329 ",.01)
 ;;3E0L329
 ;;9002226.02101,"1558,3E0L329 ",.02)
 ;;3E0L329
 ;;9002226.02101,"1558,3E0L329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0M329 ",.01)
 ;;3E0M329
 ;;9002226.02101,"1558,3E0M329 ",.02)
 ;;3E0M329
 ;;9002226.02101,"1558,3E0M329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0N329 ",.01)
 ;;3E0N329
 ;;9002226.02101,"1558,3E0N329 ",.02)
 ;;3E0N329
 ;;9002226.02101,"1558,3E0N329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0N729 ",.01)
 ;;3E0N729
 ;;9002226.02101,"1558,3E0N729 ",.02)
 ;;3E0N729
 ;;9002226.02101,"1558,3E0N729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0N829 ",.01)
 ;;3E0N829
 ;;9002226.02101,"1558,3E0N829 ",.02)
 ;;3E0N829
 ;;9002226.02101,"1558,3E0N829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0P329 ",.01)
 ;;3E0P329
 ;;9002226.02101,"1558,3E0P329 ",.02)
 ;;3E0P329
 ;;9002226.02101,"1558,3E0P329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0P729 ",.01)
 ;;3E0P729
 ;;9002226.02101,"1558,3E0P729 ",.02)
 ;;3E0P729
 ;;9002226.02101,"1558,3E0P729 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0P829 ",.01)
 ;;3E0P829
 ;;9002226.02101,"1558,3E0P829 ",.02)
 ;;3E0P829
 ;;9002226.02101,"1558,3E0P829 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0Q329 ",.01)
 ;;3E0Q329
 ;;9002226.02101,"1558,3E0Q329 ",.02)
 ;;3E0Q329
 ;;9002226.02101,"1558,3E0Q329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0R329 ",.01)
 ;;3E0R329
 ;;9002226.02101,"1558,3E0R329 ",.02)
 ;;3E0R329
 ;;9002226.02101,"1558,3E0R329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0S329 ",.01)
 ;;3E0S329
 ;;9002226.02101,"1558,3E0S329 ",.02)
 ;;3E0S329
 ;;9002226.02101,"1558,3E0S329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0U029 ",.01)
 ;;3E0U029
 ;;9002226.02101,"1558,3E0U029 ",.02)
 ;;3E0U029
 ;;9002226.02101,"1558,3E0U029 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0U329 ",.01)
 ;;3E0U329
 ;;9002226.02101,"1558,3E0U329 ",.02)
 ;;3E0U329
 ;;9002226.02101,"1558,3E0U329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0V329 ",.01)
 ;;3E0V329
 ;;9002226.02101,"1558,3E0V329 ",.02)
 ;;3E0V329
 ;;9002226.02101,"1558,3E0V329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0W329 ",.01)
 ;;3E0W329
 ;;9002226.02101,"1558,3E0W329 ",.02)
 ;;3E0W329
 ;;9002226.02101,"1558,3E0W329 ",.03)
 ;;31
 ;;9002226.02101,"1558,3E0Y329 ",.01)
 ;;3E0Y329
 ;;9002226.02101,"1558,3E0Y329 ",.02)
 ;;3E0Y329
 ;;9002226.02101,"1558,3E0Y329 ",.03)
 ;;31
 ;;9002226.02101,"1558,99.21 ",.01)
 ;;99.21 
 ;;9002226.02101,"1558,99.21 ",.02)
 ;;99.21 
 ;;9002226.02101,"1558,99.21 ",.03)
 ;;2
 ;;9002226.04101,"1558,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
