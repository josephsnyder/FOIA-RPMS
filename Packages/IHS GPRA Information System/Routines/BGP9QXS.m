BGP9QXS ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP NEPHROPATHY CPTS
 ;
 ; This routine loads Taxonomy BGP NEPHROPATHY CPTS
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
 ;;21,"3066F ")
 ;;1
 ;;21,"36145 ")
 ;;2
 ;;21,"36800 ")
 ;;3
 ;;21,"36818 ")
 ;;4
 ;;21,"36819 ")
 ;;5
 ;;21,"36821 ")
 ;;6
 ;;21,"36831 ")
 ;;7
 ;;21,"50300 ")
 ;;8
 ;;21,"50320 ")
 ;;9
 ;;21,"50340 ")
 ;;10
 ;;21,"50360 ")
 ;;11
 ;;21,"50365 ")
 ;;12
 ;;21,"50370 ")
 ;;13
 ;;21,"90920 ")
 ;;14
 ;;21,"90924 ")
 ;;15
 ;;21,"90939 ")
 ;;16
 ;;21,"90940 ")
 ;;17
 ;;21,"90945 ")
 ;;18
 ;;21,"90989 ")
 ;;19
 ;;21,"90993 ")
 ;;20
 ;;21,"90997 ")
 ;;21
 ;;21,"90999 ")
 ;;22
 ;;21,"99512 ")
 ;;23
 ;;21,"G0257 ")
 ;;24
 ;;21,"G0314 ")
 ;;25
 ;;21,"G0322 ")
 ;;26
 ;;21,"G0326 ")
 ;;27
 ;;21,"G0392 ")
 ;;28
 ;;21,"G0393 ")
 ;;29
 ;;21,"S9339 ")
 ;;30
 ;;9002226,443,.01)
 ;;BGP NEPHROPATHY CPTS
 ;;9002226,443,.02)
 ;;@
 ;;9002226,443,.04)
 ;;@
 ;;9002226,443,.06)
 ;;@
 ;;9002226,443,.08)
 ;;0
 ;;9002226,443,.09)
 ;;3090414
 ;;9002226,443,.11)
 ;;@
 ;;9002226,443,.12)
 ;;455
 ;;9002226,443,.13)
 ;;1
 ;;9002226,443,.14)
 ;;@
 ;;9002226,443,.15)
 ;;81
 ;;9002226,443,.16)
 ;;@
 ;;9002226,443,.17)
 ;;@
 ;;9002226,443,3101)
 ;;@
 ;;9002226.02101,"443,3066F ",.01)
 ;;3066F 
 ;;9002226.02101,"443,3066F ",.02)
 ;;3066F 
 ;;9002226.02101,"443,36145 ",.01)
 ;;36145 
 ;;9002226.02101,"443,36145 ",.02)
 ;;36145 
 ;;9002226.02101,"443,36800 ",.01)
 ;;36800 
 ;;9002226.02101,"443,36800 ",.02)
 ;;36815 
 ;;9002226.02101,"443,36818 ",.01)
 ;;36818 
 ;;9002226.02101,"443,36818 ",.02)
 ;;36818 
 ;;9002226.02101,"443,36819 ",.01)
 ;;36819 
 ;;9002226.02101,"443,36819 ",.02)
 ;;36820 
 ;;9002226.02101,"443,36821 ",.01)
 ;;36821 
 ;;9002226.02101,"443,36821 ",.02)
 ;;36821 
 ;;9002226.02101,"443,36831 ",.01)
 ;;36831 
 ;;9002226.02101,"443,36831 ",.02)
 ;;36833 
 ;;9002226.02101,"443,50300 ",.01)
 ;;50300 
 ;;9002226.02101,"443,50300 ",.02)
 ;;50300 
 ;;9002226.02101,"443,50320 ",.01)
 ;;50320 
 ;;9002226.02101,"443,50320 ",.02)
 ;;50320 
 ;;9002226.02101,"443,50340 ",.01)
 ;;50340 
 ;;9002226.02101,"443,50340 ",.02)
 ;;50340 
 ;;9002226.02101,"443,50360 ",.01)
 ;;50360 
 ;;9002226.02101,"443,50360 ",.02)
 ;;50360 
 ;;9002226.02101,"443,50365 ",.01)
 ;;50365 
 ;;9002226.02101,"443,50365 ",.02)
 ;;50365 
 ;;9002226.02101,"443,50370 ",.01)
 ;;50370 
 ;;9002226.02101,"443,50370 ",.02)
 ;;50380 
 ;;9002226.02101,"443,90920 ",.01)
 ;;90920 
 ;;9002226.02101,"443,90920 ",.02)
 ;;90921 
 ;;9002226.02101,"443,90924 ",.01)
 ;;90924 
 ;;9002226.02101,"443,90924 ",.02)
 ;;90937 
 ;;9002226.02101,"443,90939 ",.01)
 ;;90939 
 ;;9002226.02101,"443,90939 ",.02)
 ;;90939 
 ;;9002226.02101,"443,90940 ",.01)
 ;;90940 
 ;;9002226.02101,"443,90940 ",.02)
 ;;90940 
 ;;9002226.02101,"443,90945 ",.01)
 ;;90945 
 ;;9002226.02101,"443,90945 ",.02)
 ;;90947 
 ;;9002226.02101,"443,90989 ",.01)
 ;;90989 
 ;;9002226.02101,"443,90989 ",.02)
 ;;90989 
 ;;9002226.02101,"443,90993 ",.01)
 ;;90993 
 ;;9002226.02101,"443,90993 ",.02)
 ;;90993 
 ;;9002226.02101,"443,90997 ",.01)
 ;;90997 
 ;;9002226.02101,"443,90997 ",.02)
 ;;90997 
 ;;9002226.02101,"443,90999 ",.01)
 ;;90999 
 ;;9002226.02101,"443,90999 ",.02)
 ;;90999 
 ;;9002226.02101,"443,99512 ",.01)
 ;;99512 
 ;;9002226.02101,"443,99512 ",.02)
 ;;99512 
 ;;9002226.02101,"443,G0257 ",.01)
 ;;G0257 
 ;;9002226.02101,"443,G0257 ",.02)
 ;;G0257 
 ;;9002226.02101,"443,G0314 ",.01)
 ;;G0314 
 ;;9002226.02101,"443,G0314 ",.02)
 ;;G0319 
 ;;9002226.02101,"443,G0322 ",.01)
 ;;G0322 
 ;;9002226.02101,"443,G0322 ",.02)
 ;;G0323 
 ;;9002226.02101,"443,G0326 ",.01)
 ;;G0326 
 ;;9002226.02101,"443,G0326 ",.02)
 ;;G0327 
 ;;9002226.02101,"443,G0392 ",.01)
 ;;G0392 
 ;;9002226.02101,"443,G0392 ",.02)
 ;;G0392 
 ;;9002226.02101,"443,G0393 ",.01)
 ;;G0393 
 ;;9002226.02101,"443,G0393 ",.02)
 ;;G0393 
 ;;9002226.02101,"443,S9339 ",.01)
 ;;S9339 
 ;;9002226.02101,"443,S9339 ",.02)
 ;;S9339 
 ;
OTHER ; OTHER ROUTINES
 Q
