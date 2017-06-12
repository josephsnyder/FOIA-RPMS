BGP50P ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 07, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP CHLAMYDIA CPTS
 ;
 ; This routine loads Taxonomy BGP CHLAMYDIA CPTS
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
 ;;21,"3511F ")
 ;;1
 ;;21,"86631 ")
 ;;2
 ;;21,"86632 ")
 ;;3
 ;;21,"87110 ")
 ;;4
 ;;21,"87270 ")
 ;;5
 ;;21,"87320 ")
 ;;6
 ;;21,"87490 ")
 ;;7
 ;;21,"87810 ")
 ;;8
 ;;21,"G9228 ")
 ;;9
 ;;9002226,328,.01)
 ;;BGP CHLAMYDIA CPTS
 ;;9002226,328,.02)
 ;;Chlamydia CPT Codes
 ;;9002226,328,.04)
 ;;n
 ;;9002226,328,.06)
 ;;@
 ;;9002226,328,.08)
 ;;0
 ;;9002226,328,.09)
 ;;3050410
 ;;9002226,328,.11)
 ;;@
 ;;9002226,328,.12)
 ;;455
 ;;9002226,328,.13)
 ;;1
 ;;9002226,328,.14)
 ;;@
 ;;9002226,328,.15)
 ;;81
 ;;9002226,328,.16)
 ;;@
 ;;9002226,328,.17)
 ;;@
 ;;9002226,328,3101)
 ;;@
 ;;9002226.02101,"328,3511F ",.01)
 ;;3511F
 ;;9002226.02101,"328,3511F ",.02)
 ;;3511F
 ;;9002226.02101,"328,86631 ",.01)
 ;;86631
 ;;9002226.02101,"328,86631 ",.02)
 ;;86631
 ;;9002226.02101,"328,86632 ",.01)
 ;;86632
 ;;9002226.02101,"328,86632 ",.02)
 ;;86632
 ;;9002226.02101,"328,87110 ",.01)
 ;;87110 
 ;;9002226.02101,"328,87110 ",.02)
 ;;87110 
 ;;9002226.02101,"328,87270 ",.01)
 ;;87270 
 ;;9002226.02101,"328,87270 ",.02)
 ;;87270 
 ;;9002226.02101,"328,87320 ",.01)
 ;;87320 
 ;;9002226.02101,"328,87320 ",.02)
 ;;87320 
 ;;9002226.02101,"328,87490 ",.01)
 ;;87490 
 ;;9002226.02101,"328,87490 ",.02)
 ;;87492 
 ;;9002226.02101,"328,87810 ",.01)
 ;;87810 
 ;;9002226.02101,"328,87810 ",.02)
 ;;87810 
 ;;9002226.02101,"328,G9228 ",.01)
 ;;G9228 
 ;;9002226.02101,"328,G9228 ",.02)
 ;;G9228 
 ;
OTHER ; OTHER ROUTINES
 Q
