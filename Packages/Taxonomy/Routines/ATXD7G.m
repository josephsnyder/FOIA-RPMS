ATXD7G ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BTPW PREGNANCY TEST ICDS
 ;
 ; This routine loads Taxonomy BTPW PREGNANCY TEST ICDS
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
 ;;21,"V72.40 ")
 ;;1
 ;;21,"V72.41 ")
 ;;2
 ;;21,"V72.42 ")
 ;;3
 ;;21,"Z32.00 ")
 ;;4
 ;;21,"Z32.01 ")
 ;;5
 ;;21,"Z32.02 ")
 ;;6
 ;;9002226,1446,.01)
 ;;BTPW PREGNANCY TEST ICDS
 ;;9002226,1446,.02)
 ;;@
 ;;9002226,1446,.04)
 ;;n
 ;;9002226,1446,.06)
 ;;@
 ;;9002226,1446,.08)
 ;;@
 ;;9002226,1446,.09)
 ;;3131112
 ;;9002226,1446,.11)
 ;;@
 ;;9002226,1446,.12)
 ;;31
 ;;9002226,1446,.13)
 ;;1
 ;;9002226,1446,.14)
 ;;@
 ;;9002226,1446,.15)
 ;;80
 ;;9002226,1446,.16)
 ;;@
 ;;9002226,1446,.17)
 ;;@
 ;;9002226,1446,3101)
 ;;@
 ;;9002226.02101,"1446,V72.40 ",.01)
 ;;V72.40
 ;;9002226.02101,"1446,V72.40 ",.02)
 ;;V72.40
 ;;9002226.02101,"1446,V72.40 ",.03)
 ;;1
 ;;9002226.02101,"1446,V72.41 ",.01)
 ;;V72.41
 ;;9002226.02101,"1446,V72.41 ",.02)
 ;;V72.41
 ;;9002226.02101,"1446,V72.41 ",.03)
 ;;1
 ;;9002226.02101,"1446,V72.42 ",.01)
 ;;V72.42
 ;;9002226.02101,"1446,V72.42 ",.02)
 ;;V72.42
 ;;9002226.02101,"1446,V72.42 ",.03)
 ;;1
 ;;9002226.02101,"1446,Z32.00 ",.01)
 ;;Z32.00 
 ;;9002226.02101,"1446,Z32.00 ",.02)
 ;;Z32.00 
 ;;9002226.02101,"1446,Z32.00 ",.03)
 ;;30
 ;;9002226.02101,"1446,Z32.01 ",.01)
 ;;Z32.01 
 ;;9002226.02101,"1446,Z32.01 ",.02)
 ;;Z32.01 
 ;;9002226.02101,"1446,Z32.01 ",.03)
 ;;30
 ;;9002226.02101,"1446,Z32.02 ",.01)
 ;;Z32.02 
 ;;9002226.02101,"1446,Z32.02 ",.02)
 ;;Z32.02 
 ;;9002226.02101,"1446,Z32.02 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
