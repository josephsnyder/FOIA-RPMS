ATXO1R ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP UNI MASTECTOMY PROCEDURES
 ;
 ; This routine loads Taxonomy BGP UNI MASTECTOMY PROCEDURES
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
 ;;21,"07T50ZZ ")
 ;;1
 ;;21,"07T60ZZ ")
 ;;2
 ;;21,"07T70ZZ ")
 ;;3
 ;;21,"07T80ZZ ")
 ;;4
 ;;21,"07T90ZZ ")
 ;;5
 ;;21,"0HTT0ZZ ")
 ;;6
 ;;21,"0HTU0ZZ ")
 ;;7
 ;;21,"0KTH0ZZ ")
 ;;8
 ;;21,"0KTJ0ZZ ")
 ;;9
 ;;21,"85.41 ")
 ;;10
 ;;21,"85.43 ")
 ;;11
 ;;21,"85.45 ")
 ;;12
 ;;21,"85.47 ")
 ;;13
 ;;9002226,372,.01)
 ;;BGP UNI MASTECTOMY PROCEDURES
 ;;9002226,372,.02)
 ;;@
 ;;9002226,372,.04)
 ;;n
 ;;9002226,372,.06)
 ;;@
 ;;9002226,372,.08)
 ;;0
 ;;9002226,372,.09)
 ;;3130514
 ;;9002226,372,.11)
 ;;@
 ;;9002226,372,.12)
 ;;255
 ;;9002226,372,.13)
 ;;1
 ;;9002226,372,.14)
 ;;@
 ;;9002226,372,.15)
 ;;80.1
 ;;9002226,372,.16)
 ;;@
 ;;9002226,372,.17)
 ;;@
 ;;9002226,372,3101)
 ;;@
 ;;9002226.02101,"372,07T50ZZ ",.01)
 ;;07T50ZZ 
 ;;9002226.02101,"372,07T50ZZ ",.02)
 ;;07T50ZZ 
 ;;9002226.02101,"372,07T50ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,07T60ZZ ",.01)
 ;;07T60ZZ 
 ;;9002226.02101,"372,07T60ZZ ",.02)
 ;;07T60ZZ 
 ;;9002226.02101,"372,07T60ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,07T70ZZ ",.01)
 ;;07T70ZZ 
 ;;9002226.02101,"372,07T70ZZ ",.02)
 ;;07T70ZZ 
 ;;9002226.02101,"372,07T70ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,07T80ZZ ",.01)
 ;;07T80ZZ 
 ;;9002226.02101,"372,07T80ZZ ",.02)
 ;;07T80ZZ 
 ;;9002226.02101,"372,07T80ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,07T90ZZ ",.01)
 ;;07T90ZZ 
 ;;9002226.02101,"372,07T90ZZ ",.02)
 ;;07T90ZZ 
 ;;9002226.02101,"372,07T90ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,0HTT0ZZ ",.01)
 ;;0HTT0ZZ 
 ;;9002226.02101,"372,0HTT0ZZ ",.02)
 ;;0HTT0ZZ 
 ;;9002226.02101,"372,0HTT0ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,0HTU0ZZ ",.01)
 ;;0HTU0ZZ 
 ;;9002226.02101,"372,0HTU0ZZ ",.02)
 ;;0HTU0ZZ 
 ;;9002226.02101,"372,0HTU0ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,0KTH0ZZ ",.01)
 ;;0KTH0ZZ 
 ;;9002226.02101,"372,0KTH0ZZ ",.02)
 ;;0KTH0ZZ 
 ;;9002226.02101,"372,0KTH0ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,0KTJ0ZZ ",.01)
 ;;0KTJ0ZZ 
 ;;9002226.02101,"372,0KTJ0ZZ ",.02)
 ;;0KTJ0ZZ 
 ;;9002226.02101,"372,0KTJ0ZZ ",.03)
 ;;31
 ;;9002226.02101,"372,85.41 ",.01)
 ;;85.41 
 ;;9002226.02101,"372,85.41 ",.02)
 ;;85.41 
 ;;9002226.02101,"372,85.41 ",.03)
 ;;2
 ;;9002226.02101,"372,85.43 ",.01)
 ;;85.43 
 ;;9002226.02101,"372,85.43 ",.02)
 ;;85.43 
 ;;9002226.02101,"372,85.43 ",.03)
 ;;2
 ;;9002226.02101,"372,85.45 ",.01)
 ;;85.45 
 ;;9002226.02101,"372,85.45 ",.02)
 ;;85.45 
 ;;9002226.02101,"372,85.45 ",.03)
 ;;2
 ;;9002226.02101,"372,85.47 ",.01)
 ;;85.47 
 ;;9002226.02101,"372,85.47 ",.02)
 ;;85.47 
 ;;9002226.02101,"372,85.47 ",.03)
 ;;2
 ;;9002226.04101,"372,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
