BGP8AXI ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;BGP AMI IND 30
 ;
 ; This routine loads Taxonomy BGP AMI IND 30
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
 ;;21,"410.01 ")
 ;;1
 ;;21,"410.11 ")
 ;;2
 ;;21,"410.21 ")
 ;;3
 ;;21,"410.31 ")
 ;;4
 ;;21,"410.41 ")
 ;;5
 ;;21,"410.51 ")
 ;;6
 ;;21,"410.61 ")
 ;;7
 ;;21,"410.71 ")
 ;;8
 ;;21,"410.81 ")
 ;;9
 ;;21,"410.91 ")
 ;;10
 ;;9002226,451,.01)
 ;;BGP AMI IND 30
 ;;9002226,451,.02)
 ;;@
 ;;9002226,451,.04)
 ;;n
 ;;9002226,451,.06)
 ;;@
 ;;9002226,451,.08)
 ;;@
 ;;9002226,451,.09)
 ;;3050323
 ;;9002226,451,.11)
 ;;@
 ;;9002226,451,.12)
 ;;31
 ;;9002226,451,.13)
 ;;1
 ;;9002226,451,.14)
 ;;@
 ;;9002226,451,.15)
 ;;80
 ;;9002226,451,.16)
 ;;@
 ;;9002226,451,.17)
 ;;@
 ;;9002226,451,3101)
 ;;@
 ;;9002226.02101,"451,410.01 ",.01)
 ;;410.01
 ;;9002226.02101,"451,410.01 ",.02)
 ;;410.01
 ;;9002226.02101,"451,410.11 ",.01)
 ;;410.11
 ;;9002226.02101,"451,410.11 ",.02)
 ;;410.11
 ;;9002226.02101,"451,410.21 ",.01)
 ;;410.21
 ;;9002226.02101,"451,410.21 ",.02)
 ;;410.21
 ;;9002226.02101,"451,410.31 ",.01)
 ;;410.31
 ;;9002226.02101,"451,410.31 ",.02)
 ;;410.31
 ;;9002226.02101,"451,410.41 ",.01)
 ;;410.41
 ;;9002226.02101,"451,410.41 ",.02)
 ;;410.41
 ;;9002226.02101,"451,410.51 ",.01)
 ;;410.51
 ;;9002226.02101,"451,410.51 ",.02)
 ;;410.51
 ;;9002226.02101,"451,410.61 ",.01)
 ;;410.61
 ;;9002226.02101,"451,410.61 ",.02)
 ;;410.61
 ;;9002226.02101,"451,410.71 ",.01)
 ;;410.71
 ;;9002226.02101,"451,410.71 ",.02)
 ;;410.71
 ;;9002226.02101,"451,410.81 ",.01)
 ;;410.81
 ;;9002226.02101,"451,410.81 ",.02)
 ;;410.81
 ;;9002226.02101,"451,410.91 ",.01)
 ;;410.91
 ;;9002226.02101,"451,410.91 ",.02)
 ;;410.91
 ;
OTHER ; OTHER ROUTINES
 Q
