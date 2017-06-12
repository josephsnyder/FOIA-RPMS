ATXD7N ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;DM AUDIT SMOKING RELATED DXS
 ;
 ; This routine loads Taxonomy DM AUDIT SMOKING RELATED DXS
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
 ;;21,"305.1 ")
 ;;1
 ;;21,"649.01 ")
 ;;2
 ;;21,"F17.200 ")
 ;;9
 ;;21,"F17.210 ")
 ;;10
 ;;21,"F17.220 ")
 ;;11
 ;;21,"F17.290 ")
 ;;12
 ;;21,"O99.330 ")
 ;;13
 ;;21,"O99.331 ")
 ;;14
 ;;21,"O99.332 ")
 ;;15
 ;;21,"O99.333 ")
 ;;16
 ;;21,"O99.334 ")
 ;;17
 ;;21,"O99.335 ")
 ;;18
 ;;21,"V15.82 ")
 ;;8
 ;;21,"Z87.891 ")
 ;;19
 ;;9002226,15,.01)
 ;;DM AUDIT SMOKING RELATED DXS
 ;;9002226,15,.02)
 ;;@
 ;;9002226,15,.04)
 ;;n
 ;;9002226,15,.06)
 ;;@
 ;;9002226,15,.08)
 ;;0
 ;;9002226,15,.09)
 ;;3131112
 ;;9002226,15,.11)
 ;;@
 ;;9002226,15,.12)
 ;;31
 ;;9002226,15,.13)
 ;;1
 ;;9002226,15,.14)
 ;;@
 ;;9002226,15,.15)
 ;;80
 ;;9002226,15,.16)
 ;;@
 ;;9002226,15,.17)
 ;;@
 ;;9002226,15,3101)
 ;;@
 ;;9002226.02101,"15,305.1 ",.01)
 ;;305.1 
 ;;9002226.02101,"15,305.1 ",.02)
 ;;305.13 
 ;;9002226.02101,"15,305.1 ",.03)
 ;;1
 ;;9002226.02101,"15,649.01 ",.01)
 ;;649.01 
 ;;9002226.02101,"15,649.01 ",.02)
 ;;649.04 
 ;;9002226.02101,"15,649.01 ",.03)
 ;;1
 ;;9002226.02101,"15,F17.200 ",.01)
 ;;F17.200 
 ;;9002226.02101,"15,F17.200 ",.02)
 ;;F17.200 
 ;;9002226.02101,"15,F17.200 ",.03)
 ;;30
 ;;9002226.02101,"15,F17.210 ",.01)
 ;;F17.210 
 ;;9002226.02101,"15,F17.210 ",.02)
 ;;F17.210 
 ;;9002226.02101,"15,F17.210 ",.03)
 ;;30
 ;;9002226.02101,"15,F17.220 ",.01)
 ;;F17.220 
 ;;9002226.02101,"15,F17.220 ",.02)
 ;;F17.220 
 ;;9002226.02101,"15,F17.220 ",.03)
 ;;30
 ;;9002226.02101,"15,F17.290 ",.01)
 ;;F17.290 
 ;;9002226.02101,"15,F17.290 ",.02)
 ;;F17.290 
 ;;9002226.02101,"15,F17.290 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.330 ",.01)
 ;;O99.330 
 ;;9002226.02101,"15,O99.330 ",.02)
 ;;O99.330 
 ;;9002226.02101,"15,O99.330 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.331 ",.01)
 ;;O99.331 
 ;;9002226.02101,"15,O99.331 ",.02)
 ;;O99.331 
 ;;9002226.02101,"15,O99.331 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.332 ",.01)
 ;;O99.332 
 ;;9002226.02101,"15,O99.332 ",.02)
 ;;O99.332 
 ;;9002226.02101,"15,O99.332 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.333 ",.01)
 ;;O99.333 
 ;;9002226.02101,"15,O99.333 ",.02)
 ;;O99.333 
 ;;9002226.02101,"15,O99.333 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.334 ",.01)
 ;;O99.334 
 ;;9002226.02101,"15,O99.334 ",.02)
 ;;O99.334 
 ;;9002226.02101,"15,O99.334 ",.03)
 ;;30
 ;;9002226.02101,"15,O99.335 ",.01)
 ;;O99.335 
 ;;9002226.02101,"15,O99.335 ",.02)
 ;;O99.335 
 ;;9002226.02101,"15,O99.335 ",.03)
 ;;30
 ;;9002226.02101,"15,V15.82 ",.01)
 ;;V15.82 
 ;;9002226.02101,"15,V15.82 ",.02)
 ;;V15.82 
 ;;9002226.02101,"15,V15.82 ",.03)
 ;;1
 ;;9002226.02101,"15,Z87.891 ",.01)
 ;;Z87.891 
 ;;9002226.02101,"15,Z87.891 ",.02)
 ;;Z87.891 
 ;;9002226.02101,"15,Z87.891 ",.03)
 ;;30
 ;
OTHER ; OTHER ROUTINES
 Q
