ATXXB229 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,DD139BZ ",.01)
 ;;DD139BZ 
 ;;9002226.02101,"1804,DD139BZ ",.02)
 ;;DD139BZ 
 ;;9002226.02101,"1804,DD139BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD139CZ ",.01)
 ;;DD139CZ 
 ;;9002226.02101,"1804,DD139CZ ",.02)
 ;;DD139CZ 
 ;;9002226.02101,"1804,DD139CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD139YZ ",.01)
 ;;DD139YZ 
 ;;9002226.02101,"1804,DD139YZ ",.02)
 ;;DD139YZ 
 ;;9002226.02101,"1804,DD139YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13B7Z ",.01)
 ;;DD13B7Z 
 ;;9002226.02101,"1804,DD13B7Z ",.02)
 ;;DD13B7Z 
 ;;9002226.02101,"1804,DD13B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13B8Z ",.01)
 ;;DD13B8Z 
 ;;9002226.02101,"1804,DD13B8Z ",.02)
 ;;DD13B8Z 
 ;;9002226.02101,"1804,DD13B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13B9Z ",.01)
 ;;DD13B9Z 
 ;;9002226.02101,"1804,DD13B9Z ",.02)
 ;;DD13B9Z 
 ;;9002226.02101,"1804,DD13B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13BBZ ",.01)
 ;;DD13BBZ 
 ;;9002226.02101,"1804,DD13BBZ ",.02)
 ;;DD13BBZ 
 ;;9002226.02101,"1804,DD13BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13BCZ ",.01)
 ;;DD13BCZ 
 ;;9002226.02101,"1804,DD13BCZ ",.02)
 ;;DD13BCZ 
 ;;9002226.02101,"1804,DD13BCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD13BYZ ",.01)
 ;;DD13BYZ 
 ;;9002226.02101,"1804,DD13BYZ ",.02)
 ;;DD13BYZ 
 ;;9002226.02101,"1804,DD13BYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1497Z ",.01)
 ;;DD1497Z 
 ;;9002226.02101,"1804,DD1497Z ",.02)
 ;;DD1497Z 
 ;;9002226.02101,"1804,DD1497Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1498Z ",.01)
 ;;DD1498Z 
 ;;9002226.02101,"1804,DD1498Z ",.02)
 ;;DD1498Z 
 ;;9002226.02101,"1804,DD1498Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1499Z ",.01)
 ;;DD1499Z 
 ;;9002226.02101,"1804,DD1499Z ",.02)
 ;;DD1499Z 
 ;;9002226.02101,"1804,DD1499Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD149BZ ",.01)
 ;;DD149BZ 
 ;;9002226.02101,"1804,DD149BZ ",.02)
 ;;DD149BZ 
 ;;9002226.02101,"1804,DD149BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD149CZ ",.01)
 ;;DD149CZ 
 ;;9002226.02101,"1804,DD149CZ ",.02)
 ;;DD149CZ 
 ;;9002226.02101,"1804,DD149CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD149YZ ",.01)
 ;;DD149YZ 
 ;;9002226.02101,"1804,DD149YZ ",.02)
 ;;DD149YZ 
 ;;9002226.02101,"1804,DD149YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14B7Z ",.01)
 ;;DD14B7Z 
 ;;9002226.02101,"1804,DD14B7Z ",.02)
 ;;DD14B7Z 
 ;;9002226.02101,"1804,DD14B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14B8Z ",.01)
 ;;DD14B8Z 
 ;;9002226.02101,"1804,DD14B8Z ",.02)
 ;;DD14B8Z 
 ;;9002226.02101,"1804,DD14B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14B9Z ",.01)
 ;;DD14B9Z 
 ;;9002226.02101,"1804,DD14B9Z ",.02)
 ;;DD14B9Z 
 ;;9002226.02101,"1804,DD14B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14BBZ ",.01)
 ;;DD14BBZ 
 ;;9002226.02101,"1804,DD14BBZ ",.02)
 ;;DD14BBZ 
 ;;9002226.02101,"1804,DD14BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14BCZ ",.01)
 ;;DD14BCZ 
 ;;9002226.02101,"1804,DD14BCZ ",.02)
 ;;DD14BCZ 
 ;;9002226.02101,"1804,DD14BCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD14BYZ ",.01)
 ;;DD14BYZ 
 ;;9002226.02101,"1804,DD14BYZ ",.02)
 ;;DD14BYZ 
 ;;9002226.02101,"1804,DD14BYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1597Z ",.01)
 ;;DD1597Z 
 ;;9002226.02101,"1804,DD1597Z ",.02)
 ;;DD1597Z 
 ;;9002226.02101,"1804,DD1597Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1598Z ",.01)
 ;;DD1598Z 
 ;;9002226.02101,"1804,DD1598Z ",.02)
 ;;DD1598Z 
 ;;9002226.02101,"1804,DD1598Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1599Z ",.01)
 ;;DD1599Z 
 ;;9002226.02101,"1804,DD1599Z ",.02)
 ;;DD1599Z 
 ;;9002226.02101,"1804,DD1599Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD159BZ ",.01)
 ;;DD159BZ 
 ;;9002226.02101,"1804,DD159BZ ",.02)
 ;;DD159BZ 
 ;;9002226.02101,"1804,DD159BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD159CZ ",.01)
 ;;DD159CZ 
 ;;9002226.02101,"1804,DD159CZ ",.02)
 ;;DD159CZ 
 ;;9002226.02101,"1804,DD159CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD159YZ ",.01)
 ;;DD159YZ 
 ;;9002226.02101,"1804,DD159YZ ",.02)
 ;;DD159YZ 
 ;;9002226.02101,"1804,DD159YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15B7Z ",.01)
 ;;DD15B7Z 
 ;;9002226.02101,"1804,DD15B7Z ",.02)
 ;;DD15B7Z 
 ;;9002226.02101,"1804,DD15B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15B8Z ",.01)
 ;;DD15B8Z 
 ;;9002226.02101,"1804,DD15B8Z ",.02)
 ;;DD15B8Z 
 ;;9002226.02101,"1804,DD15B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15B9Z ",.01)
 ;;DD15B9Z 
 ;;9002226.02101,"1804,DD15B9Z ",.02)
 ;;DD15B9Z 
 ;;9002226.02101,"1804,DD15B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15BBZ ",.01)
 ;;DD15BBZ 
 ;;9002226.02101,"1804,DD15BBZ ",.02)
 ;;DD15BBZ 
 ;;9002226.02101,"1804,DD15BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15BCZ ",.01)
 ;;DD15BCZ 
 ;;9002226.02101,"1804,DD15BCZ ",.02)
 ;;DD15BCZ 
 ;;9002226.02101,"1804,DD15BCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD15BYZ ",.01)
 ;;DD15BYZ 
 ;;9002226.02101,"1804,DD15BYZ ",.02)
 ;;DD15BYZ 
 ;;9002226.02101,"1804,DD15BYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1797Z ",.01)
 ;;DD1797Z 
 ;;9002226.02101,"1804,DD1797Z ",.02)
 ;;DD1797Z 
 ;;9002226.02101,"1804,DD1797Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1798Z ",.01)
 ;;DD1798Z 
 ;;9002226.02101,"1804,DD1798Z ",.02)
 ;;DD1798Z 
 ;;9002226.02101,"1804,DD1798Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD1799Z ",.01)
 ;;DD1799Z 
 ;;9002226.02101,"1804,DD1799Z ",.02)
 ;;DD1799Z 
 ;;9002226.02101,"1804,DD1799Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD179BZ ",.01)
 ;;DD179BZ 
 ;;9002226.02101,"1804,DD179BZ ",.02)
 ;;DD179BZ 
 ;;9002226.02101,"1804,DD179BZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD179CZ ",.01)
 ;;DD179CZ 
 ;;9002226.02101,"1804,DD179CZ ",.02)
 ;;DD179CZ 
 ;;9002226.02101,"1804,DD179CZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD179YZ ",.01)
 ;;DD179YZ 
 ;;9002226.02101,"1804,DD179YZ ",.02)
 ;;DD179YZ 
 ;;9002226.02101,"1804,DD179YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17B7Z ",.01)
 ;;DD17B7Z 
 ;;9002226.02101,"1804,DD17B7Z ",.02)
 ;;DD17B7Z 
 ;;9002226.02101,"1804,DD17B7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17B8Z ",.01)
 ;;DD17B8Z 
 ;;9002226.02101,"1804,DD17B8Z ",.02)
 ;;DD17B8Z 
 ;;9002226.02101,"1804,DD17B8Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17B9Z ",.01)
 ;;DD17B9Z 
 ;;9002226.02101,"1804,DD17B9Z ",.02)
 ;;DD17B9Z 
 ;;9002226.02101,"1804,DD17B9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17BBZ ",.01)
 ;;DD17BBZ 
 ;;9002226.02101,"1804,DD17BBZ ",.02)
 ;;DD17BBZ 
 ;;9002226.02101,"1804,DD17BBZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17BCZ ",.01)
 ;;DD17BCZ 
 ;;9002226.02101,"1804,DD17BCZ ",.02)
 ;;DD17BCZ 
 ;;9002226.02101,"1804,DD17BCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD17BYZ ",.01)
 ;;DD17BYZ 
 ;;9002226.02101,"1804,DD17BYZ ",.02)
 ;;DD17BYZ 
 ;;9002226.02101,"1804,DD17BYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD20DZZ ",.01)
 ;;DD20DZZ 
 ;;9002226.02101,"1804,DD20DZZ ",.02)
 ;;DD20DZZ 
 ;;9002226.02101,"1804,DD20DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD20HZZ ",.01)
 ;;DD20HZZ 
 ;;9002226.02101,"1804,DD20HZZ ",.02)
 ;;DD20HZZ 
 ;;9002226.02101,"1804,DD20HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD20JZZ ",.01)
 ;;DD20JZZ 
 ;;9002226.02101,"1804,DD20JZZ ",.02)
 ;;DD20JZZ 
 ;;9002226.02101,"1804,DD20JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD21DZZ ",.01)
 ;;DD21DZZ 
 ;;9002226.02101,"1804,DD21DZZ ",.02)
 ;;DD21DZZ 
 ;;9002226.02101,"1804,DD21DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD21HZZ ",.01)
 ;;DD21HZZ 
 ;;9002226.02101,"1804,DD21HZZ ",.02)
 ;;DD21HZZ 
 ;;9002226.02101,"1804,DD21HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD21JZZ ",.01)
 ;;DD21JZZ 
 ;;9002226.02101,"1804,DD21JZZ ",.02)
 ;;DD21JZZ 
 ;;9002226.02101,"1804,DD21JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD22DZZ ",.01)
 ;;DD22DZZ 
 ;;9002226.02101,"1804,DD22DZZ ",.02)
 ;;DD22DZZ 
 ;;9002226.02101,"1804,DD22DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD22HZZ ",.01)
 ;;DD22HZZ 
 ;;9002226.02101,"1804,DD22HZZ ",.02)
 ;;DD22HZZ 
 ;;9002226.02101,"1804,DD22HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD22JZZ ",.01)
 ;;DD22JZZ 
 ;;9002226.02101,"1804,DD22JZZ ",.02)
 ;;DD22JZZ 
 ;;9002226.02101,"1804,DD22JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD23DZZ ",.01)
 ;;DD23DZZ 
 ;;9002226.02101,"1804,DD23DZZ ",.02)
 ;;DD23DZZ 
 ;;9002226.02101,"1804,DD23DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD23HZZ ",.01)
 ;;DD23HZZ 
 ;;9002226.02101,"1804,DD23HZZ ",.02)
 ;;DD23HZZ 
 ;;9002226.02101,"1804,DD23HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD23JZZ ",.01)
 ;;DD23JZZ 
 ;;9002226.02101,"1804,DD23JZZ ",.02)
 ;;DD23JZZ 
 ;;9002226.02101,"1804,DD23JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD24DZZ ",.01)
 ;;DD24DZZ 
 ;;9002226.02101,"1804,DD24DZZ ",.02)
 ;;DD24DZZ 
 ;;9002226.02101,"1804,DD24DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD24HZZ ",.01)
 ;;DD24HZZ 
 ;;9002226.02101,"1804,DD24HZZ ",.02)
 ;;DD24HZZ 
 ;;9002226.02101,"1804,DD24HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD24JZZ ",.01)
 ;;DD24JZZ 
 ;;9002226.02101,"1804,DD24JZZ ",.02)
 ;;DD24JZZ 
 ;;9002226.02101,"1804,DD24JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD25DZZ ",.01)
 ;;DD25DZZ 
 ;;9002226.02101,"1804,DD25DZZ ",.02)
 ;;DD25DZZ 
 ;;9002226.02101,"1804,DD25DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD25HZZ ",.01)
 ;;DD25HZZ 
 ;;9002226.02101,"1804,DD25HZZ ",.02)
 ;;DD25HZZ 
 ;;9002226.02101,"1804,DD25HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD25JZZ ",.01)
 ;;DD25JZZ 
 ;;9002226.02101,"1804,DD25JZZ ",.02)
 ;;DD25JZZ 
 ;;9002226.02101,"1804,DD25JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD27DZZ ",.01)
 ;;DD27DZZ 
 ;;9002226.02101,"1804,DD27DZZ ",.02)
 ;;DD27DZZ 
 ;;9002226.02101,"1804,DD27DZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD27HZZ ",.01)
 ;;DD27HZZ 
 ;;9002226.02101,"1804,DD27HZZ ",.02)
 ;;DD27HZZ 
 ;;9002226.02101,"1804,DD27HZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DD27JZZ ",.01)
 ;;DD27JZZ 
 ;;9002226.02101,"1804,DD27JZZ ",.02)
 ;;DD27JZZ 
 ;;9002226.02101,"1804,DD27JZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY07ZZ ",.01)
 ;;DDY07ZZ 
 ;;9002226.02101,"1804,DDY07ZZ ",.02)
 ;;DDY07ZZ 
 ;;9002226.02101,"1804,DDY07ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY08ZZ ",.01)
 ;;DDY08ZZ 
 ;;9002226.02101,"1804,DDY08ZZ ",.02)
 ;;DDY08ZZ 
 ;;9002226.02101,"1804,DDY08ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY0FZZ ",.01)
 ;;DDY0FZZ 
 ;;9002226.02101,"1804,DDY0FZZ ",.02)
 ;;DDY0FZZ 
 ;;9002226.02101,"1804,DDY0FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY17ZZ ",.01)
 ;;DDY17ZZ 
 ;;9002226.02101,"1804,DDY17ZZ ",.02)
 ;;DDY17ZZ 
 ;;9002226.02101,"1804,DDY17ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY18ZZ ",.01)
 ;;DDY18ZZ 
 ;;9002226.02101,"1804,DDY18ZZ ",.02)
 ;;DDY18ZZ 
 ;;9002226.02101,"1804,DDY18ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY1CZZ ",.01)
 ;;DDY1CZZ 
 ;;9002226.02101,"1804,DDY1CZZ ",.02)
 ;;DDY1CZZ 
 ;;9002226.02101,"1804,DDY1CZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY1FZZ ",.01)
 ;;DDY1FZZ 
 ;;9002226.02101,"1804,DDY1FZZ ",.02)
 ;;DDY1FZZ 
 ;;9002226.02101,"1804,DDY1FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY27ZZ ",.01)
 ;;DDY27ZZ 
 ;;9002226.02101,"1804,DDY27ZZ ",.02)
 ;;DDY27ZZ 
 ;;9002226.02101,"1804,DDY27ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY28ZZ ",.01)
 ;;DDY28ZZ 
 ;;9002226.02101,"1804,DDY28ZZ ",.02)
 ;;DDY28ZZ 
 ;;9002226.02101,"1804,DDY28ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY2CZZ ",.01)
 ;;DDY2CZZ 
 ;;9002226.02101,"1804,DDY2CZZ ",.02)
 ;;DDY2CZZ 
 ;;9002226.02101,"1804,DDY2CZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY2FZZ ",.01)
 ;;DDY2FZZ 
 ;;9002226.02101,"1804,DDY2FZZ ",.02)
 ;;DDY2FZZ 
 ;;9002226.02101,"1804,DDY2FZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY37ZZ ",.01)
 ;;DDY37ZZ 
 ;;9002226.02101,"1804,DDY37ZZ ",.02)
 ;;DDY37ZZ 
 ;;9002226.02101,"1804,DDY37ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,DDY38ZZ ",.01)
 ;;DDY38ZZ 
