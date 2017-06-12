BGP50T ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 18, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP FLU IZ CVX CODES
 ;
 ; This routine loads Taxonomy BGP FLU IZ CVX CODES
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
 ;;21,"111 ")
 ;;1
 ;;21,"135 ")
 ;;2
 ;;21,"140 ")
 ;;3
 ;;21,"141 ")
 ;;4
 ;;21,"144 ")
 ;;5
 ;;21,"149 ")
 ;;6
 ;;21,"15 ")
 ;;7
 ;;21,"150 ")
 ;;8
 ;;21,"151 ")
 ;;9
 ;;21,"153 ")
 ;;10
 ;;21,"155 ")
 ;;11
 ;;21,"158 ")
 ;;12
 ;;21,"16 ")
 ;;13
 ;;21,"161 ")
 ;;15
 ;;21,"88 ")
 ;;14
 ;;9002226,623,.01)
 ;;BGP FLU IZ CVX CODES
 ;;9002226,623,.02)
 ;;FLU IZ CVX CODES
 ;;9002226,623,.04)
 ;;n
 ;;9002226,623,.06)
 ;;@
 ;;9002226,623,.08)
 ;;0
 ;;9002226,623,.09)
 ;;3100216
 ;;9002226,623,.11)
 ;;@
 ;;9002226,623,.12)
 ;;145
 ;;9002226,623,.13)
 ;;1
 ;;9002226,623,.14)
 ;;@
 ;;9002226,623,.15)
 ;;9999999.14
 ;;9002226,623,.16)
 ;;@
 ;;9002226,623,.17)
 ;;@
 ;;9002226,623,3101)
 ;;@
 ;;9002226.02101,"623,111 ",.01)
 ;;111
 ;;9002226.02101,"623,111 ",.02)
 ;;111
 ;;9002226.02101,"623,135 ",.01)
 ;;135
 ;;9002226.02101,"623,135 ",.02)
 ;;135
 ;;9002226.02101,"623,140 ",.01)
 ;;140
 ;;9002226.02101,"623,140 ",.02)
 ;;140
 ;;9002226.02101,"623,141 ",.01)
 ;;141
 ;;9002226.02101,"623,141 ",.02)
 ;;141
 ;;9002226.02101,"623,144 ",.01)
 ;;144
 ;;9002226.02101,"623,144 ",.02)
 ;;144
 ;;9002226.02101,"623,149 ",.01)
 ;;149
 ;;9002226.02101,"623,149 ",.02)
 ;;149
 ;;9002226.02101,"623,15 ",.01)
 ;;15
 ;;9002226.02101,"623,15 ",.02)
 ;;15
 ;;9002226.02101,"623,150 ",.01)
 ;;150
 ;;9002226.02101,"623,150 ",.02)
 ;;150
 ;;9002226.02101,"623,151 ",.01)
 ;;151
 ;;9002226.02101,"623,151 ",.02)
 ;;151
 ;;9002226.02101,"623,153 ",.01)
 ;;153
 ;;9002226.02101,"623,153 ",.02)
 ;;153
 ;;9002226.02101,"623,155 ",.01)
 ;;155
 ;;9002226.02101,"623,155 ",.02)
 ;;155
 ;;9002226.02101,"623,158 ",.01)
 ;;158
 ;;9002226.02101,"623,158 ",.02)
 ;;158
 ;;9002226.02101,"623,16 ",.01)
 ;;16
 ;;9002226.02101,"623,16 ",.02)
 ;;16
 ;;9002226.02101,"623,161 ",.01)
 ;;161
 ;;9002226.02101,"623,161 ",.02)
 ;;161
 ;;9002226.02101,"623,88 ",.01)
 ;;88
 ;;9002226.02101,"623,88 ",.02)
 ;;88
 ;
OTHER ; OTHER ROUTINES
 Q
