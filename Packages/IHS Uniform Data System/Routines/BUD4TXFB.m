BUD4TXFB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 02, 2004 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;;;BUD4;;NOV 02, 2004
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"314,12894-2 ",.01)
 ;;12894-2
 ;;9002226.02101,"314,12894-2 ",.02)
 ;;12894-2
 ;;9002226.02101,"314,12895-9 ",.01)
 ;;12895-9
 ;;9002226.02101,"314,12895-9 ",.02)
 ;;12895-9
 ;;9002226.02101,"314,13499-9 ",.01)
 ;;13499-9
 ;;9002226.02101,"314,13499-9 ",.02)
 ;;13499-9
 ;;9002226.02101,"314,13920-4 ",.01)
 ;;13920-4
 ;;9002226.02101,"314,13920-4 ",.02)
 ;;13920-4
 ;;9002226.02101,"314,14092-1 ",.01)
 ;;14092-1
 ;;9002226.02101,"314,14092-1 ",.02)
 ;;14092-1
 ;;9002226.02101,"314,14126-7 ",.01)
 ;;14126-7
 ;;9002226.02101,"314,14126-7 ",.02)
 ;;14126-7
 ;;9002226.02101,"314,16132-3 ",.01)
 ;;16132-3
 ;;9002226.02101,"314,16132-3 ",.02)
 ;;16132-3
 ;;9002226.02101,"314,16974-8 ",.01)
 ;;16974-8
 ;;9002226.02101,"314,16974-8 ",.02)
 ;;16974-8
 ;;9002226.02101,"314,16975-5 ",.01)
 ;;16975-5
 ;;9002226.02101,"314,16975-5 ",.02)
 ;;16975-5
 ;;9002226.02101,"314,16976-3 ",.01)
 ;;16976-3
 ;;9002226.02101,"314,16976-3 ",.02)
 ;;16976-3
 ;;9002226.02101,"314,16977-1 ",.01)
 ;;16977-1
 ;;9002226.02101,"314,16977-1 ",.02)
 ;;16977-1
 ;;9002226.02101,"314,16978-9 ",.01)
 ;;16978-9
 ;;9002226.02101,"314,16978-9 ",.02)
 ;;16978-9
 ;;9002226.02101,"314,16979-7 ",.01)
 ;;16979-7
 ;;9002226.02101,"314,16979-7 ",.02)
 ;;16979-7
 ;;9002226.02101,"314,18396-2 ",.01)
 ;;18396-2
 ;;9002226.02101,"314,18396-2 ",.02)
 ;;18396-2
 ;;9002226.02101,"314,19110-6 ",.01)
 ;;19110-6
 ;;9002226.02101,"314,19110-6 ",.02)
 ;;19110-6
 ;;9002226.02101,"314,20447-9 ",.01)
 ;;20447-9
 ;;9002226.02101,"314,20447-9 ",.02)
 ;;20447-9
 ;;9002226.02101,"314,21007-0 ",.01)
 ;;21007-0
 ;;9002226.02101,"314,21007-0 ",.02)
 ;;21007-0
 ;;9002226.02101,"314,21008-8 ",.01)
 ;;21008-8
 ;;9002226.02101,"314,21008-8 ",.02)
 ;;21008-8
 ;;9002226.02101,"314,21009-6 ",.01)
 ;;21009-6
 ;;9002226.02101,"314,21009-6 ",.02)
 ;;21009-6
 ;;9002226.02101,"314,21331-4 ",.01)
 ;;21331-4
 ;;9002226.02101,"314,21331-4 ",.02)
 ;;21331-4
 ;;9002226.02101,"314,21332-2 ",.01)
 ;;21332-2
 ;;9002226.02101,"314,21332-2 ",.02)
 ;;21332-2
 ;;9002226.02101,"314,21333-0 ",.01)
 ;;21333-0
 ;;9002226.02101,"314,21333-0 ",.02)
 ;;21333-0
 ;;9002226.02101,"314,21334-8 ",.01)
 ;;21334-8
 ;;9002226.02101,"314,21334-8 ",.02)
 ;;21334-8
 ;;9002226.02101,"314,21335-5 ",.01)
 ;;21335-5
 ;;9002226.02101,"314,21335-5 ",.02)
 ;;21335-5
 ;;9002226.02101,"314,21336-3 ",.01)
 ;;21336-3
 ;;9002226.02101,"314,21336-3 ",.02)
 ;;21336-3
 ;;9002226.02101,"314,21337-1 ",.01)
 ;;21337-1
 ;;9002226.02101,"314,21337-1 ",.02)
 ;;21337-1
 ;;9002226.02101,"314,21338-9 ",.01)
 ;;21338-9
 ;;9002226.02101,"314,21338-9 ",.02)
 ;;21338-9
 ;;9002226.02101,"314,21339-7 ",.01)
 ;;21339-7
 ;;9002226.02101,"314,21339-7 ",.02)
 ;;21339-7
 ;;9002226.02101,"314,21340-5 ",.01)
 ;;21340-5
 ;;9002226.02101,"314,21340-5 ",.02)
 ;;21340-5
 ;;9002226.02101,"314,22356-0 ",.01)
 ;;22356-0
 ;;9002226.02101,"314,22356-0 ",.02)
 ;;22356-0
 ;;9002226.02101,"314,22357-8 ",.01)
 ;;22357-8
 ;;9002226.02101,"314,22357-8 ",.02)
 ;;22357-8
 ;;9002226.02101,"314,22358-6 ",.01)
 ;;22358-6
 ;;9002226.02101,"314,22358-6 ",.02)
 ;;22358-6
 ;;9002226.02101,"314,23876-6 ",.01)
 ;;23876-6
 ;;9002226.02101,"314,23876-6 ",.02)
 ;;23876-6
 ;;9002226.02101,"314,24012-7 ",.01)
 ;;24012-7
 ;;9002226.02101,"314,24012-7 ",.02)
 ;;24012-7
 ;;9002226.02101,"314,24013-5 ",.01)
 ;;24013-5
 ;;9002226.02101,"314,24013-5 ",.02)
 ;;24013-5
 ;;9002226.02101,"314,25835-0 ",.01)
 ;;25835-0
 ;;9002226.02101,"314,25835-0 ",.02)
 ;;25835-0
 ;;9002226.02101,"314,25836-8 ",.01)
 ;;25836-8
 ;;9002226.02101,"314,25836-8 ",.02)
 ;;25836-8
 ;;9002226.02101,"314,25841-8 ",.01)
 ;;25841-8
 ;;9002226.02101,"314,25841-8 ",.02)
 ;;25841-8
 ;;9002226.02101,"314,25842-6 ",.01)
 ;;25842-6
 ;;9002226.02101,"314,25842-6 ",.02)
 ;;25842-6
 ;;9002226.02101,"314,28004-0 ",.01)
 ;;28004-0
 ;;9002226.02101,"314,28004-0 ",.02)
 ;;28004-0
 ;;9002226.02101,"314,28052-9 ",.01)
 ;;28052-9
 ;;9002226.02101,"314,28052-9 ",.02)
 ;;28052-9
 ;;9002226.02101,"314,29327-4 ",.01)
 ;;29327-4
 ;;9002226.02101,"314,29327-4 ",.02)
 ;;29327-4
 ;;9002226.02101,"314,29539-4 ",.01)
 ;;29539-4
 ;;9002226.02101,"314,29539-4 ",.02)
 ;;29539-4
 ;;9002226.02101,"314,29541-0 ",.01)
 ;;29541-0
 ;;9002226.02101,"314,29541-0 ",.02)
 ;;29541-0
 ;;9002226.02101,"314,29893-5 ",.01)
 ;;29893-5
 ;;9002226.02101,"314,29893-5 ",.02)
 ;;29893-5
 ;;9002226.02101,"314,30245-5 ",.01)
 ;;30245-5
 ;;9002226.02101,"314,30245-5 ",.02)
 ;;30245-5
 ;;9002226.02101,"314,30361-0 ",.01)
 ;;30361-0
 ;;9002226.02101,"314,30361-0 ",.02)
 ;;30361-0
 ;;9002226.02101,"314,30554-0 ",.01)
 ;;30554-0
 ;;9002226.02101,"314,30554-0 ",.02)
 ;;30554-0
 ;;9002226.02101,"314,31072-2 ",.01)
 ;;31072-2
 ;;9002226.02101,"314,31072-2 ",.02)
 ;;31072-2
 ;;9002226.02101,"314,31073-0 ",.01)
 ;;31073-0
 ;;9002226.02101,"314,31073-0 ",.02)
 ;;31073-0
 ;;9002226.02101,"314,31201-7 ",.01)
 ;;31201-7
 ;;9002226.02101,"314,31201-7 ",.02)
 ;;31201-7
 ;;9002226.02101,"314,31430-2 ",.01)
 ;;31430-2
 ;;9002226.02101,"314,31430-2 ",.02)
 ;;31430-2
 ;;9002226.02101,"314,32571-2 ",.01)
 ;;32571-2
