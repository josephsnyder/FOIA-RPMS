BGP8IXR ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;;BGP VARICELLA CONTRA
 ;
 ; This routine loads Taxonomy BGP VARICELLA CONTRA
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
 ;;21,"042. ")
 ;;1
 ;;21,"200.00 ")
 ;;2
 ;;21,"203.00 ")
 ;;3
 ;;21,"203.01 ")
 ;;4
 ;;21,"203.8 ")
 ;;5
 ;;21,"204.0 ")
 ;;6
 ;;21,"279.00 ")
 ;;7
 ;;21,"V08. ")
 ;;8
 ;;9002226,363,.01)
 ;;BGP VARICELLA CONTRA
 ;;9002226,363,.02)
 ;;@
 ;;9002226,363,.04)
 ;;n
 ;;9002226,363,.06)
 ;;@
 ;;9002226,363,.08)
 ;;0
 ;;9002226,363,.09)
 ;;3040527
 ;;9002226,363,.11)
 ;;@
 ;;9002226,363,.12)
 ;;31
 ;;9002226,363,.13)
 ;;1
 ;;9002226,363,.14)
 ;;@
 ;;9002226,363,.15)
 ;;80
 ;;9002226,363,.16)
 ;;@
 ;;9002226,363,.17)
 ;;@
 ;;9002226,363,3101)
 ;;@
 ;;9002226.02101,"363,042. ",.01)
 ;;042. 
 ;;9002226.02101,"363,042. ",.02)
 ;;042.9 
 ;;9002226.02101,"363,200.00 ",.01)
 ;;200.00 
 ;;9002226.02101,"363,200.00 ",.02)
 ;;202.98 
 ;;9002226.02101,"363,203.00 ",.01)
 ;;203.00 
 ;;9002226.02101,"363,203.00 ",.02)
 ;;203.00 
 ;;9002226.02101,"363,203.01 ",.01)
 ;;203.01 
 ;;9002226.02101,"363,203.01 ",.02)
 ;;203.01 
 ;;9002226.02101,"363,203.8 ",.01)
 ;;203.8 
 ;;9002226.02101,"363,203.8 ",.02)
 ;;203.81 
 ;;9002226.02101,"363,204.0 ",.01)
 ;;204.0 
 ;;9002226.02101,"363,204.0 ",.02)
 ;;208.91 
 ;;9002226.02101,"363,279.00 ",.01)
 ;;279.00 
 ;;9002226.02101,"363,279.00 ",.02)
 ;;279.9 
 ;;9002226.02101,"363,V08. ",.01)
 ;;V08. 
 ;;9002226.02101,"363,V08. ",.02)
 ;;V08. 
 ;
OTHER ; OTHER ROUTINES
 Q
