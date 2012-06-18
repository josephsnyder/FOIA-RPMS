BGP7IXD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 11, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;BGP AMI DXS (HEDIS)
 ;
 ; This routine loads Taxonomy BGP AMI DXS (HEDIS)
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
 ;;21,"410.0 ")
 ;;1
 ;;21,"410.10 ")
 ;;2
 ;;21,"410.20 ")
 ;;3
 ;;21,"410.30 ")
 ;;4
 ;;21,"410.40 ")
 ;;5
 ;;21,"410.50 ")
 ;;6
 ;;21,"410.60 ")
 ;;7
 ;;21,"410.70 ")
 ;;8
 ;;21,"410.80 ")
 ;;9
 ;;21,"410.90 ")
 ;;10
 ;;9002226,450,.01)
 ;;BGP AMI DXS (HEDIS)
 ;;9002226,450,.02)
 ;;@
 ;;9002226,450,.04)
 ;;n
 ;;9002226,450,.06)
 ;;@
 ;;9002226,450,.08)
 ;;0
 ;;9002226,450,.09)
 ;;3050321
 ;;9002226,450,.11)
 ;;@
 ;;9002226,450,.12)
 ;;31
 ;;9002226,450,.13)
 ;;1
 ;;9002226,450,.14)
 ;;@
 ;;9002226,450,.15)
 ;;80
 ;;9002226,450,.16)
 ;;@
 ;;9002226,450,.17)
 ;;@
 ;;9002226,450,3101)
 ;;@
 ;;9002226.02101,"450,410.0 ",.01)
 ;;410.0 
 ;;9002226.02101,"450,410.0 ",.02)
 ;;410.01 
 ;;9002226.02101,"450,410.10 ",.01)
 ;;410.10 
 ;;9002226.02101,"450,410.10 ",.02)
 ;;410.11 
 ;;9002226.02101,"450,410.20 ",.01)
 ;;410.20 
 ;;9002226.02101,"450,410.20 ",.02)
 ;;410.21 
 ;;9002226.02101,"450,410.30 ",.01)
 ;;410.30 
 ;;9002226.02101,"450,410.30 ",.02)
 ;;410.31 
 ;;9002226.02101,"450,410.40 ",.01)
 ;;410.40 
 ;;9002226.02101,"450,410.40 ",.02)
 ;;410.41 
 ;;9002226.02101,"450,410.50 ",.01)
 ;;410.50 
 ;;9002226.02101,"450,410.50 ",.02)
 ;;410.51 
 ;;9002226.02101,"450,410.60 ",.01)
 ;;410.60 
 ;;9002226.02101,"450,410.60 ",.02)
 ;;410.61 
 ;;9002226.02101,"450,410.70 ",.01)
 ;;410.70 
 ;;9002226.02101,"450,410.70 ",.02)
 ;;410.71 
 ;;9002226.02101,"450,410.80 ",.01)
 ;;410.80 
 ;;9002226.02101,"450,410.80 ",.02)
 ;;410.81 
 ;;9002226.02101,"450,410.90 ",.01)
 ;;410.90 
 ;;9002226.02101,"450,410.90 ",.02)
 ;;410.91 
 ;
OTHER ; OTHER ROUTINES
 Q
