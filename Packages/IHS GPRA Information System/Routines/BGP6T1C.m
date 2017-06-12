BGP6T1C ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUL 30, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP BNI CPTS
 ;
 ; This routine loads Taxonomy BGP BNI CPTS
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
 ;;21,"96150 ")
 ;;4
 ;;21,"99408 ")
 ;;1
 ;;21,"G0396 ")
 ;;2
 ;;21,"H0050 ")
 ;;3
 ;;9002226,820,.01)
 ;;BGP BNI CPTS
 ;;9002226,820,.02)
 ;;@
 ;;9002226,820,.04)
 ;;n
 ;;9002226,820,.06)
 ;;@
 ;;9002226,820,.08)
 ;;0
 ;;9002226,820,.09)
 ;;3080505
 ;;9002226,820,.11)
 ;;@
 ;;9002226,820,.12)
 ;;455
 ;;9002226,820,.13)
 ;;1
 ;;9002226,820,.14)
 ;;@
 ;;9002226,820,.15)
 ;;81
 ;;9002226,820,.16)
 ;;@
 ;;9002226,820,.17)
 ;;@
 ;;9002226,820,3101)
 ;;@
 ;;9002226.02101,"820,96150 ",.01)
 ;;96150 
 ;;9002226.02101,"820,96150 ",.02)
 ;;96155 
 ;;9002226.02101,"820,99408 ",.01)
 ;;99408 
 ;;9002226.02101,"820,99408 ",.02)
 ;;99409 
 ;;9002226.02101,"820,G0396 ",.01)
 ;;G0396 
 ;;9002226.02101,"820,G0396 ",.02)
 ;;G0397 
 ;;9002226.02101,"820,H0050 ",.01)
 ;;H0050 
 ;;9002226.02101,"820,H0050 ",.02)
 ;;H0050 
 ;;9002226.04101,"820,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
