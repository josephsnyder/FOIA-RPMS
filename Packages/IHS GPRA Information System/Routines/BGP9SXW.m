BGP9SXW ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;;BGP HEDIS RETINAL SCREENING
 ;
 ; This routine loads Taxonomy BGP HEDIS RETINAL SCREENING
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
 ;;21,"2022F ")
 ;;1
 ;;21,"2024F ")
 ;;2
 ;;21,"2026F ")
 ;;3
 ;;21,"67028 ")
 ;;4
 ;;21,"67030 ")
 ;;5
 ;;21,"67031 ")
 ;;6
 ;;21,"67036 ")
 ;;7
 ;;21,"67039 ")
 ;;8
 ;;21,"67040 ")
 ;;9
 ;;21,"67041 ")
 ;;10
 ;;21,"67101 ")
 ;;11
 ;;21,"67105 ")
 ;;12
 ;;21,"67107 ")
 ;;13
 ;;21,"67113 ")
 ;;14
 ;;21,"67121 ")
 ;;15
 ;;21,"67145 ")
 ;;16
 ;;21,"67208 ")
 ;;17
 ;;21,"67218 ")
 ;;18
 ;;21,"67220 ")
 ;;19
 ;;21,"67221 ")
 ;;20
 ;;21,"67227 ")
 ;;21
 ;;21,"92002 ")
 ;;22
 ;;21,"92018 ")
 ;;23
 ;;21,"92225 ")
 ;;24
 ;;21,"92287 ")
 ;;25
 ;;21,"S0620 ")
 ;;26
 ;;21,"S3000 ")
 ;;27
 ;;9002226,498,.01)
 ;;BGP HEDIS RETINAL SCREENING
 ;;9002226,498,.02)
 ;;@
 ;;9002226,498,.04)
 ;;@
 ;;9002226,498,.06)
 ;;@
 ;;9002226,498,.08)
 ;;0
 ;;9002226,498,.09)
 ;;3090414
 ;;9002226,498,.11)
 ;;@
 ;;9002226,498,.12)
 ;;455
 ;;9002226,498,.13)
 ;;1
 ;;9002226,498,.14)
 ;;@
 ;;9002226,498,.15)
 ;;81
 ;;9002226,498,.16)
 ;;@
 ;;9002226,498,.17)
 ;;@
 ;;9002226,498,3101)
 ;;@
 ;;9002226.02101,"498,2022F ",.01)
 ;;2022F 
 ;;9002226.02101,"498,2022F ",.02)
 ;;2022F 
 ;;9002226.02101,"498,2024F ",.01)
 ;;2024F 
 ;;9002226.02101,"498,2024F ",.02)
 ;;2024F 
 ;;9002226.02101,"498,2026F ",.01)
 ;;2026F 
 ;;9002226.02101,"498,2026F ",.02)
 ;;2026F 
 ;;9002226.02101,"498,67028 ",.01)
 ;;67028 
 ;;9002226.02101,"498,67028 ",.02)
 ;;67028 
 ;;9002226.02101,"498,67030 ",.01)
 ;;67030 
 ;;9002226.02101,"498,67030 ",.02)
 ;;67030 
 ;;9002226.02101,"498,67031 ",.01)
 ;;67031 
 ;;9002226.02101,"498,67031 ",.02)
 ;;67031 
 ;;9002226.02101,"498,67036 ",.01)
 ;;67036 
 ;;9002226.02101,"498,67036 ",.02)
 ;;67038 
 ;;9002226.02101,"498,67039 ",.01)
 ;;67039 
 ;;9002226.02101,"498,67039 ",.02)
 ;;67039 
 ;;9002226.02101,"498,67040 ",.01)
 ;;67040 
 ;;9002226.02101,"498,67040 ",.02)
 ;;67040 
 ;;9002226.02101,"498,67041 ",.01)
 ;;67041 
 ;;9002226.02101,"498,67041 ",.02)
 ;;67043 
 ;;9002226.02101,"498,67101 ",.01)
 ;;67101 
 ;;9002226.02101,"498,67101 ",.02)
 ;;67101 
 ;;9002226.02101,"498,67105 ",.01)
 ;;67105 
 ;;9002226.02101,"498,67105 ",.02)
 ;;67105 
 ;;9002226.02101,"498,67107 ",.01)
 ;;67107 
 ;;9002226.02101,"498,67107 ",.02)
 ;;67112 
 ;;9002226.02101,"498,67113 ",.01)
 ;;67113 
 ;;9002226.02101,"498,67113 ",.02)
 ;;67113 
 ;;9002226.02101,"498,67121 ",.01)
 ;;67121 
 ;;9002226.02101,"498,67121 ",.02)
 ;;67141 
 ;;9002226.02101,"498,67145 ",.01)
 ;;67145 
 ;;9002226.02101,"498,67145 ",.02)
 ;;67145 
 ;;9002226.02101,"498,67208 ",.01)
 ;;67208 
 ;;9002226.02101,"498,67208 ",.02)
 ;;67210 
 ;;9002226.02101,"498,67218 ",.01)
 ;;67218 
 ;;9002226.02101,"498,67218 ",.02)
 ;;67218 
 ;;9002226.02101,"498,67220 ",.01)
 ;;67220 
 ;;9002226.02101,"498,67220 ",.02)
 ;;67220 
 ;;9002226.02101,"498,67221 ",.01)
 ;;67221 
 ;;9002226.02101,"498,67221 ",.02)
 ;;67221 
 ;;9002226.02101,"498,67227 ",.01)
 ;;67227 
 ;;9002226.02101,"498,67227 ",.02)
 ;;67228 
 ;;9002226.02101,"498,92002 ",.01)
 ;;92002 
 ;;9002226.02101,"498,92002 ",.02)
 ;;92014 
 ;;9002226.02101,"498,92018 ",.01)
 ;;92018 
 ;;9002226.02101,"498,92018 ",.02)
 ;;92019 
 ;;9002226.02101,"498,92225 ",.01)
 ;;92225 
 ;;9002226.02101,"498,92225 ",.02)
 ;;92260 
 ;;9002226.02101,"498,92287 ",.01)
 ;;92287 
 ;;9002226.02101,"498,92287 ",.02)
 ;;92287 
 ;;9002226.02101,"498,S0620 ",.01)
 ;;S0620 
 ;;9002226.02101,"498,S0620 ",.02)
 ;;S0621 
 ;;9002226.02101,"498,S3000 ",.01)
 ;;S3000 
 ;;9002226.02101,"498,S3000 ",.02)
 ;;S3000 
 ;
OTHER ; OTHER ROUTINES
 Q