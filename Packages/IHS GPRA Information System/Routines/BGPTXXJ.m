BGPTXXJ ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 19, 2004 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"781,16700-7 ",.02)
 ;;16700-7
 ;;9002226.02101,"781,1728-5 ",.01)
 ;;1728-5
 ;;9002226.02101,"781,1728-5 ",.02)
 ;;1728-5
 ;;9002226.02101,"781,17334-4 ",.01)
 ;;17334-4
 ;;9002226.02101,"781,17334-4 ",.02)
 ;;17334-4
 ;;9002226.02101,"781,17658-6 ",.01)
 ;;17658-6
 ;;9002226.02101,"781,17658-6 ",.02)
 ;;17658-6
 ;;9002226.02101,"781,17710-5 ",.01)
 ;;17710-5
 ;;9002226.02101,"781,17710-5 ",.02)
 ;;17710-5
 ;;9002226.02101,"781,17866-5 ",.01)
 ;;17866-5
 ;;9002226.02101,"781,17866-5 ",.02)
 ;;17866-5
 ;;9002226.02101,"781,17867-3 ",.01)
 ;;17867-3
 ;;9002226.02101,"781,17867-3 ",.02)
 ;;17867-3
 ;;9002226.02101,"781,17868-1 ",.01)
 ;;17868-1
 ;;9002226.02101,"781,17868-1 ",.02)
 ;;17868-1
 ;;9002226.02101,"781,17869-9 ",.01)
 ;;17869-9
 ;;9002226.02101,"781,17869-9 ",.02)
 ;;17869-9
 ;;9002226.02101,"781,17870-7 ",.01)
 ;;17870-7
 ;;9002226.02101,"781,17870-7 ",.02)
 ;;17870-7
 ;;9002226.02101,"781,1810-1 ",.01)
 ;;1810-1
 ;;9002226.02101,"781,1810-1 ",.02)
 ;;1810-1
 ;;9002226.02101,"781,1811-9 ",.01)
 ;;1811-9
 ;;9002226.02101,"781,1811-9 ",.02)
 ;;1811-9
 ;;9002226.02101,"781,18361-6 ",.01)
 ;;18361-6
 ;;9002226.02101,"781,18361-6 ",.02)
 ;;18361-6
 ;;9002226.02101,"781,18475-4 ",.01)
 ;;18475-4
 ;;9002226.02101,"781,18475-4 ",.02)
 ;;18475-4
 ;;9002226.02101,"781,19055-3 ",.01)
 ;;19055-3
 ;;9002226.02101,"781,19055-3 ",.02)
 ;;19055-3
 ;;9002226.02101,"781,19150-2 ",.01)
 ;;19150-2
 ;;9002226.02101,"781,19150-2 ",.02)
 ;;19150-2
 ;;9002226.02101,"781,2048-7 ",.01)
 ;;2048-7
 ;;9002226.02101,"781,2048-7 ",.02)
 ;;2048-7
 ;;9002226.02101,"781,20511-2 ",.01)
 ;;20511-2
 ;;9002226.02101,"781,20511-2 ",.02)
 ;;20511-2
 ;;9002226.02101,"781,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"781,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"781,20624-3 ",.01)
 ;;20624-3
 ;;9002226.02101,"781,20624-3 ",.02)
 ;;20624-3
 ;;9002226.02101,"781,21041-9 ",.01)
 ;;21041-9
 ;;9002226.02101,"781,21041-9 ",.02)
 ;;21041-9
 ;;9002226.02101,"781,21042-7 ",.01)
 ;;21042-7
 ;;9002226.02101,"781,21042-7 ",.02)
 ;;21042-7
 ;;9002226.02101,"781,21216-7 ",.01)
 ;;21216-7
 ;;9002226.02101,"781,21216-7 ",.02)
 ;;21216-7
 ;;9002226.02101,"781,21232-4 ",.01)
 ;;21232-4
 ;;9002226.02101,"781,21232-4 ",.02)
 ;;21232-4
 ;;9002226.02101,"781,21562-4 ",.01)
 ;;21562-4
 ;;9002226.02101,"781,21562-4 ",.02)
 ;;21562-4
 ;;9002226.02101,"781,2159-2 ",.01)
 ;;2159-2
 ;;9002226.02101,"781,2159-2 ",.02)
 ;;2159-2
 ;;9002226.02101,"781,2160-0 ",.01)
 ;;2160-0
 ;;9002226.02101,"781,2160-0 ",.02)
 ;;2160-0
 ;;9002226.02101,"781,2161-8 ",.01)
 ;;2161-8
 ;;9002226.02101,"781,2161-8 ",.02)
 ;;2161-8
 ;;9002226.02101,"781,2162-6 ",.01)
 ;;2162-6
 ;;9002226.02101,"781,2162-6 ",.02)
 ;;2162-6
 ;;9002226.02101,"781,2163-4 ",.01)
 ;;2163-4
 ;;9002226.02101,"781,2163-4 ",.02)
 ;;2163-4
 ;;9002226.02101,"781,2164-2 ",.01)
 ;;2164-2
 ;;9002226.02101,"781,2164-2 ",.02)
 ;;2164-2
 ;;9002226.02101,"781,22679-5 ",.01)
 ;;22679-5
 ;;9002226.02101,"781,22679-5 ",.02)
 ;;22679-5
 ;;9002226.02101,"781,22680-3 ",.01)
 ;;22680-3
 ;;9002226.02101,"781,22680-3 ",.02)
 ;;22680-3
 ;;9002226.02101,"781,22681-1 ",.01)
 ;;22681-1
 ;;9002226.02101,"781,22681-1 ",.02)
 ;;22681-1
 ;;9002226.02101,"781,22682-9 ",.01)
 ;;22682-9
 ;;9002226.02101,"781,22682-9 ",.02)
 ;;22682-9
 ;;9002226.02101,"781,22684-5 ",.01)
 ;;22684-5
 ;;9002226.02101,"781,22684-5 ",.02)
 ;;22684-5
 ;;9002226.02101,"781,22685-2 ",.01)
 ;;22685-2
 ;;9002226.02101,"781,22685-2 ",.02)
 ;;22685-2
 ;;9002226.02101,"781,22687-8 ",.01)
 ;;22687-8
 ;;9002226.02101,"781,22687-8 ",.02)
 ;;22687-8
 ;;9002226.02101,"781,22688-6 ",.01)
 ;;22688-6
 ;;9002226.02101,"781,22688-6 ",.02)
 ;;22688-6
 ;;9002226.02101,"781,22690-2 ",.01)
 ;;22690-2
 ;;9002226.02101,"781,22690-2 ",.02)
 ;;22690-2
 ;;9002226.02101,"781,22691-0 ",.01)
 ;;22691-0
 ;;9002226.02101,"781,22691-0 ",.02)
 ;;22691-0
 ;;9002226.02101,"781,22692-8 ",.01)
 ;;22692-8
 ;;9002226.02101,"781,22692-8 ",.02)
 ;;22692-8
 ;;9002226.02101,"781,22693-6 ",.01)
 ;;22693-6
 ;;9002226.02101,"781,22693-6 ",.02)
 ;;22693-6
 ;;9002226.02101,"781,22694-4 ",.01)
 ;;22694-4
 ;;9002226.02101,"781,22694-4 ",.02)
 ;;22694-4
 ;;9002226.02101,"781,22695-1 ",.01)
 ;;22695-1
 ;;9002226.02101,"781,22695-1 ",.02)
 ;;22695-1
 ;;9002226.02101,"781,22696-9 ",.01)
 ;;22696-9
 ;;9002226.02101,"781,22696-9 ",.02)
 ;;22696-9
 ;;9002226.02101,"781,22697-7 ",.01)
 ;;22697-7
 ;;9002226.02101,"781,22697-7 ",.02)
 ;;22697-7
 ;;9002226.02101,"781,22698-5 ",.01)
 ;;22698-5
 ;;9002226.02101,"781,22698-5 ",.02)
 ;;22698-5
 ;;9002226.02101,"781,22699-3 ",.01)
 ;;22699-3
 ;;9002226.02101,"781,22699-3 ",.02)
 ;;22699-3
 ;;9002226.02101,"781,22703-3 ",.01)
 ;;22703-3
 ;;9002226.02101,"781,22703-3 ",.02)
 ;;22703-3
 ;;9002226.02101,"781,22704-1 ",.01)
 ;;22704-1
 ;;9002226.02101,"781,22704-1 ",.02)
 ;;22704-1
 ;;9002226.02101,"781,22706-6 ",.01)
 ;;22706-6
 ;;9002226.02101,"781,22706-6 ",.02)
 ;;22706-6
 ;;9002226.02101,"781,22707-4 ",.01)
 ;;22707-4
 ;;9002226.02101,"781,22707-4 ",.02)
 ;;22707-4
 ;;9002226.02101,"781,22708-2 ",.01)
 ;;22708-2
