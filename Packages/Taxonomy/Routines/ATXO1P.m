ATXO1P ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP SIG PROCS
 ;
 ; This routine loads Taxonomy BGP SIG PROCS
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
 ;;21,"0DJD8ZZ ")
 ;;1
 ;;21,"45.24 ")
 ;;2
 ;;9002226,799,.01)
 ;;BGP SIG PROCS
 ;;9002226,799,.02)
 ;;@
 ;;9002226,799,.04)
 ;;n
 ;;9002226,799,.06)
 ;;@
 ;;9002226,799,.08)
 ;;@
 ;;9002226,799,.09)
 ;;3080626
 ;;9002226,799,.11)
 ;;@
 ;;9002226,799,.12)
 ;;255
 ;;9002226,799,.13)
 ;;1
 ;;9002226,799,.14)
 ;;@
 ;;9002226,799,.15)
 ;;80.1
 ;;9002226,799,.16)
 ;;@
 ;;9002226,799,.17)
 ;;@
 ;;9002226,799,3101)
 ;;@
 ;;9002226.02101,"799,0DJD8ZZ ",.01)
 ;;0DJD8ZZ 
 ;;9002226.02101,"799,0DJD8ZZ ",.02)
 ;;0DJD8ZZ 
 ;;9002226.02101,"799,0DJD8ZZ ",.03)
 ;;31
 ;;9002226.02101,"799,45.24 ",.01)
 ;;45.24 
 ;;9002226.02101,"799,45.24 ",.02)
 ;;45.24 
 ;;9002226.02101,"799,45.24 ",.03)
 ;;2
 ;;9002226.04101,"799,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
