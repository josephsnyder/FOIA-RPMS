BUD9TXK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 16, 2007 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;BUD TABLE 6 LINE 20
 ;
 ; This routine loads Taxonomy BUD TABLE 6 LINE 20
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
 ;;21,"290.0 ")
 ;;1
 ;;21,"293.0 ")
 ;;2
 ;;21,"300.10 ")
 ;;3
 ;;21,"300.4 ")
 ;;4
 ;;21,"306.0 ")
 ;;5
 ;;21,"308.4 ")
 ;;6
 ;;21,"309.82 ")
 ;;7
 ;;21,"312.9 ")
 ;;8
 ;;21,"313.82 ")
 ;;9
 ;;21,"315.00 ")
 ;;10
 ;;9002226,612,.01)
 ;;BUD TABLE 6 LINE 20
 ;;9002226,612,.02)
 ;;@
 ;;9002226,612,.04)
 ;;n
 ;;9002226,612,.06)
 ;;@
 ;;9002226,612,.08)
 ;;0
 ;;9002226,612,.09)
 ;;3031023
 ;;9002226,612,.11)
 ;;@
 ;;9002226,612,.12)
 ;;31
 ;;9002226,612,.13)
 ;;1
 ;;9002226,612,.14)
 ;;@
 ;;9002226,612,.15)
 ;;80
 ;;9002226,612,.16)
 ;;@
 ;;9002226,612,.17)
 ;;@
 ;;9002226,612,3101)
 ;;@
 ;;9002226.02101,"612,290.0 ",.01)
 ;;290.0 
 ;;9002226.02101,"612,290.0 ",.02)
 ;;290.9 
 ;;9002226.02101,"612,293.0 ",.01)
 ;;293.0 
 ;;9002226.02101,"612,293.0 ",.02)
 ;;299.91 
 ;;9002226.02101,"612,300.10 ",.01)
 ;;300.10 
 ;;9002226.02101,"612,300.10 ",.02)
 ;;300.20 
 ;;9002226.02101,"612,300.4 ",.01)
 ;;300.4 
 ;;9002226.02101,"612,300.4 ",.02)
 ;;302.9 
 ;;9002226.02101,"612,306.0 ",.01)
 ;;306.0 
 ;;9002226.02101,"612,306.0 ",.02)
 ;;308.2 
 ;;9002226.02101,"612,308.4 ",.01)
 ;;308.4 
 ;;9002226.02101,"612,308.4 ",.02)
 ;;309.4 
 ;;9002226.02101,"612,309.82 ",.01)
 ;;309.82 
 ;;9002226.02101,"612,309.82 ",.02)
 ;;312.4 
 ;;9002226.02101,"612,312.9 ",.01)
 ;;312.9 
 ;;9002226.02101,"612,312.9 ",.02)
 ;;313.3 
 ;;9002226.02101,"612,313.82 ",.01)
 ;;313.82 
 ;;9002226.02101,"612,313.82 ",.02)
 ;;313.9 
 ;;9002226.02101,"612,315.00 ",.01)
 ;;315.00 
 ;;9002226.02101,"612,315.00 ",.02)
 ;;319. 
 ;
OTHER ; OTHER ROUTINES
 Q
