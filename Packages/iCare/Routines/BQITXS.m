BQITXS ;PRXM/HC/ALA-CREATED BY ^ATXSTX ON SEP 06, 2006;
 ;;2.1;ICARE MANAGEMENT SYSTEM;;Feb 07, 2011
 ;;BGP NEPHROPATHY PROCEDURES
 ;
 ; This routine loads Taxonomy BGP NEPHROPATHY PROCEDURES
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
 ;;21,"39.27 ")
 ;;1
 ;;21,"39.42 ")
 ;;2
 ;;21,"39.53 ")
 ;;3
 ;;21,"39.93 ")
 ;;4
 ;;21,"54.98 ")
 ;;5
 ;;21,"55.4 ")
 ;;6
 ;;9002226,328,.01)
 ;;BGP NEPHROPATHY PROCEDURES
 ;;9002226,328,.02)
 ;;@
 ;;9002226,328,.04)
 ;;n
 ;;9002226,328,.06)
 ;;@
 ;;9002226,328,.08)
 ;;0
 ;;9002226,328,.09)
 ;;3040808
 ;;9002226,328,.11)
 ;;@
 ;;9002226,328,.12)
 ;;255
 ;;9002226,328,.13)
 ;;1
 ;;9002226,328,.14)
 ;;@
 ;;9002226,328,.15)
 ;;80.1
 ;;9002226,328,.16)
 ;;@
 ;;9002226,328,.17)
 ;;@
 ;;9002226,328,3101)
 ;;@
 ;;9002226.02101,"328,39.27 ",.01)
 ;;39.27 
 ;;9002226.02101,"328,39.27 ",.02)
 ;;39.27 
 ;;9002226.02101,"328,39.42 ",.01)
 ;;39.42 
 ;;9002226.02101,"328,39.42 ",.02)
 ;;39.43 
 ;;9002226.02101,"328,39.53 ",.01)
 ;;39.53 
 ;;9002226.02101,"328,39.53 ",.02)
 ;;39.53 
 ;;9002226.02101,"328,39.93 ",.01)
 ;;39.93 
 ;;9002226.02101,"328,39.93 ",.02)
 ;;39.95 
 ;;9002226.02101,"328,54.98 ",.01)
 ;;54.98 
 ;;9002226.02101,"328,54.98 ",.02)
 ;;54.98 
 ;;9002226.02101,"328,55.4 ",.01)
 ;;55.4 
 ;;9002226.02101,"328,55.4 ",.02)
 ;;55.69 
 ;
OTHER ; OTHER ROUTINES
 Q