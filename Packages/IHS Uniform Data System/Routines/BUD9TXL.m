BUD9TXL ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON OCT 29, 2009 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;;BUD CPT PAP 08
 ;
 ; This routine loads Taxonomy BUD CPT PAP 08
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
 ;;21,"88141 ")
 ;;1
 ;;21,"88160 ")
 ;;2
 ;;21,"88161 ")
 ;;3
 ;;21,"88162 ")
 ;;4
 ;;21,"88174 ")
 ;;5
 ;;21,"G0101 ")
 ;;6
 ;;21,"G0123 ")
 ;;7
 ;;21,"G0124 ")
 ;;8
 ;;21,"G0141 ")
 ;;9
 ;;21,"G0143 ")
 ;;10
 ;;21,"G0144 ")
 ;;11
 ;;21,"G0145 ")
 ;;12
 ;;21,"G0147 ")
 ;;13
 ;;21,"G0148 ")
 ;;14
 ;;21,"P3000 ")
 ;;15
 ;;21,"P3001 ")
 ;;16
 ;;21,"Q0091 ")
 ;;17
 ;;9002226,590,.01)
 ;;BUD CPT PAP 08
 ;;9002226,590,.02)
 ;;@
 ;;9002226,590,.04)
 ;;@
 ;;9002226,590,.06)
 ;;@
 ;;9002226,590,.08)
 ;;0
 ;;9002226,590,.09)
 ;;3081029
 ;;9002226,590,.11)
 ;;@
 ;;9002226,590,.12)
 ;;455
 ;;9002226,590,.13)
 ;;1
 ;;9002226,590,.14)
 ;;@
 ;;9002226,590,.15)
 ;;81
 ;;9002226,590,.16)
 ;;@
 ;;9002226,590,.17)
 ;;@
 ;;9002226,590,3101)
 ;;@
 ;;9002226.02101,"590,88141 ",.01)
 ;;88141 
 ;;9002226.02101,"590,88141 ",.02)
 ;;88155 
 ;;9002226.02101,"590,88160 ",.01)
 ;;88160 
 ;;9002226.02101,"590,88160 ",.02)
 ;;88160 
 ;;9002226.02101,"590,88161 ",.01)
 ;;88161 
 ;;9002226.02101,"590,88161 ",.02)
 ;;88161 
 ;;9002226.02101,"590,88162 ",.01)
 ;;88162 
 ;;9002226.02101,"590,88162 ",.02)
 ;;88167 
 ;;9002226.02101,"590,88174 ",.01)
 ;;88174 
 ;;9002226.02101,"590,88174 ",.02)
 ;;88175 
 ;;9002226.02101,"590,G0101 ",.01)
 ;;G0101 
 ;;9002226.02101,"590,G0101 ",.02)
 ;;G0101 
 ;;9002226.02101,"590,G0123 ",.01)
 ;;G0123 
 ;;9002226.02101,"590,G0123 ",.02)
 ;;G0123 
 ;;9002226.02101,"590,G0124 ",.01)
 ;;G0124 
 ;;9002226.02101,"590,G0124 ",.02)
 ;;G0124 
 ;;9002226.02101,"590,G0141 ",.01)
 ;;G0141 
 ;;9002226.02101,"590,G0141 ",.02)
 ;;G0141 
 ;;9002226.02101,"590,G0143 ",.01)
 ;;G0143 
 ;;9002226.02101,"590,G0143 ",.02)
 ;;G0143 
 ;;9002226.02101,"590,G0144 ",.01)
 ;;G0144 
 ;;9002226.02101,"590,G0144 ",.02)
 ;;G0144 
 ;;9002226.02101,"590,G0145 ",.01)
 ;;G0145 
 ;;9002226.02101,"590,G0145 ",.02)
 ;;G0145 
 ;;9002226.02101,"590,G0147 ",.01)
 ;;G0147 
 ;;9002226.02101,"590,G0147 ",.02)
 ;;G0147 
 ;;9002226.02101,"590,G0148 ",.01)
 ;;G0148 
 ;;9002226.02101,"590,G0148 ",.02)
 ;;G0148 
 ;;9002226.02101,"590,P3000 ",.01)
 ;;P3000 
 ;;9002226.02101,"590,P3000 ",.02)
 ;;P3000 
 ;;9002226.02101,"590,P3001 ",.01)
 ;;P3001 
 ;;9002226.02101,"590,P3001 ",.02)
 ;;P3001 
 ;;9002226.02101,"590,Q0091 ",.01)
 ;;Q0091 
 ;;9002226.02101,"590,Q0091 ",.02)
 ;;Q0091 
 ;
OTHER ; OTHER ROUTINES
 Q
