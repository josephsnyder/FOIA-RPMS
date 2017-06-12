BGP51D ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP URINE PROTEIN LOINC CODES
 ;
 ; This routine loads Taxonomy BGP URINE PROTEIN LOINC CODES
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
 ;;21,"11218-5 ")
 ;;65
 ;;21,"12842-1 ")
 ;;1
 ;;21,"13705-9 ")
 ;;2
 ;;21,"13801-6 ")
 ;;3
 ;;21,"13986-5 ")
 ;;66
 ;;21,"13992-3 ")
 ;;67
 ;;21,"14585-4 ")
 ;;4
 ;;21,"14956-7 ")
 ;;5
 ;;21,"14957-5 ")
 ;;6
 ;;21,"14958-3 ")
 ;;7
 ;;21,"14959-1 ")
 ;;8
 ;;21,"16285-9 ")
 ;;53
 ;;21,"1753-3 ")
 ;;9
 ;;21,"1754-1 ")
 ;;10
 ;;21,"1755-8 ")
 ;;11
 ;;21,"1757-4 ")
 ;;12
 ;;21,"17819-4 ")
 ;;68
 ;;21,"18373-1 ")
 ;;13
 ;;21,"20454-5 ")
 ;;14
 ;;21,"20621-9 ")
 ;;15
 ;;21,"21028-6 ")
 ;;54
 ;;21,"21059-1 ")
 ;;16
 ;;21,"21482-5 ")
 ;;17
 ;;21,"26034-9 ")
 ;;18
 ;;21,"26801-1 ")
 ;;19
 ;;21,"27298-9 ")
 ;;20
 ;;21,"2887-8 ")
 ;;21
 ;;21,"2888-6 ")
 ;;22
 ;;21,"2889-4 ")
 ;;23
 ;;21,"2890-2 ")
 ;;24
 ;;21,"29946-1 ")
 ;;69
 ;;21,"30000-4 ")
 ;;25
 ;;21,"30001-2 ")
 ;;26
 ;;21,"30003-8 ")
 ;;27
 ;;21,"32209-9 ")
 ;;28
 ;;21,"32294-1 ")
 ;;29
 ;;21,"32551-4 ")
 ;;30
 ;;21,"34366-5 ")
 ;;31
 ;;21,"34535-5 ")
 ;;32
 ;;21,"35663-4 ")
 ;;33
 ;;21,"40486-3 ")
 ;;34
 ;;21,"40662-9 ")
 ;;35
 ;;21,"40663-7 ")
 ;;36
 ;;21,"43605-5 ")
 ;;37
 ;;21,"43606-3 ")
 ;;38
 ;;21,"43607-1 ")
 ;;39
 ;;21,"44292-1 ")
 ;;40
 ;;21,"47558-2 ")
 ;;70
 ;;21,"49002-9 ")
 ;;55
 ;;21,"49023-5 ")
 ;;71
 ;;21,"50209-6 ")
 ;;56
 ;;21,"50561-0 ")
 ;;41
 ;;21,"50749-1 ")
 ;;57
 ;;21,"50949-7 ")
 ;;45
 ;;21,"51190-7 ")
 ;;46
 ;;21,"53121-0 ")
 ;;58
 ;;21,"53525-2 ")
 ;;42
 ;;21,"53530-2 ")
 ;;47
 ;;21,"53531-0 ")
 ;;48
 ;;21,"53532-8 ")
 ;;49
 ;;21,"56553-1 ")
 ;;50
 ;;21,"57369-1 ")
 ;;51
 ;;21,"57735-3 ")
 ;;52
 ;;21,"5804-0 ")
 ;;43
 ;;21,"58431-8 ")
 ;;59
 ;;21,"58447-4 ")
 ;;60
 ;;21,"58992-9 ")
 ;;61
 ;;21,"59159-4 ")
 ;;72
 ;;21,"60678-0 ")
 ;;62
 ;;21,"63474-1 ")
 ;;73
 ;;21,"6941-9 ")
 ;;74
 ;;21,"6942-7 ")
 ;;75
 ;;21,"72596-0 ")
 ;;63
 ;;21,"72597-8 ")
 ;;64
 ;;21,"9318-7 ")
 ;;44
 ;;9002226,340,.01)
 ;;BGP URINE PROTEIN LOINC CODES
 ;;9002226,340,.02)
 ;;@
 ;;9002226,340,.04)
 ;;n
 ;;9002226,340,.06)
 ;;@
 ;;9002226,340,.08)
 ;;@
 ;;9002226,340,.09)
 ;;3121106
 ;;9002226,340,.11)
 ;;@
 ;;9002226,340,.12)
 ;;@
 ;;9002226,340,.13)
 ;;1
 ;;9002226,340,.14)
 ;;FIHS
 ;;9002226,340,.15)
 ;;95.3
 ;;9002226,340,.16)
 ;;@
 ;;9002226,340,.17)
 ;;@
 ;;9002226,340,3101)
 ;;@
 ;;9002226.02101,"340,11218-5 ",.01)
 ;;11218-5
 ;;9002226.02101,"340,11218-5 ",.02)
 ;;11218-5
 ;;9002226.02101,"340,12842-1 ",.01)
 ;;12842-1
 ;;9002226.02101,"340,12842-1 ",.02)
 ;;12842-1
 ;;9002226.02101,"340,13705-9 ",.01)
 ;;13705-9
 ;;9002226.02101,"340,13705-9 ",.02)
 ;;13705-9
 ;;9002226.02101,"340,13801-6 ",.01)
 ;;13801-6
 ;;9002226.02101,"340,13801-6 ",.02)
 ;;13801-6
 ;;9002226.02101,"340,13986-5 ",.01)
 ;;13986-5
 ;;9002226.02101,"340,13986-5 ",.02)
 ;;13986-5
 ;;9002226.02101,"340,13992-3 ",.01)
 ;;13992-3
 ;;9002226.02101,"340,13992-3 ",.02)
 ;;13992-3
 ;;9002226.02101,"340,14585-4 ",.01)
 ;;14585-4
 ;;9002226.02101,"340,14585-4 ",.02)
 ;;14585-4
 ;;9002226.02101,"340,14956-7 ",.01)
 ;;14956-7
 ;;9002226.02101,"340,14956-7 ",.02)
 ;;14956-7
 ;;9002226.02101,"340,14957-5 ",.01)
 ;;14957-5
 ;;9002226.02101,"340,14957-5 ",.02)
 ;;14957-5
 ;;9002226.02101,"340,14958-3 ",.01)
 ;;14958-3
 ;;9002226.02101,"340,14958-3 ",.02)
 ;;14958-3
 ;;9002226.02101,"340,14959-1 ",.01)
 ;;14959-1
 ;;9002226.02101,"340,14959-1 ",.02)
 ;;14959-1
 ;;9002226.02101,"340,16285-9 ",.01)
 ;;16285-9
 ;;9002226.02101,"340,16285-9 ",.02)
 ;;16285-9
 ;;9002226.02101,"340,1753-3 ",.01)
 ;;1753-3
 ;;9002226.02101,"340,1753-3 ",.02)
 ;;1753-3
 ;;9002226.02101,"340,1754-1 ",.01)
 ;;1754-1
 ;;9002226.02101,"340,1754-1 ",.02)
 ;;1754-1
 ;;9002226.02101,"340,1755-8 ",.01)
 ;;1755-8
 ;;9002226.02101,"340,1755-8 ",.02)
 ;;1755-8
 ;;9002226.02101,"340,1757-4 ",.01)
 ;;1757-4
 ;;9002226.02101,"340,1757-4 ",.02)
 ;;1757-4
 ;;9002226.02101,"340,17819-4 ",.01)
 ;;17819-4
 ;;9002226.02101,"340,17819-4 ",.02)
 ;;17819-4
 ;;9002226.02101,"340,18373-1 ",.01)
 ;;18373-1
 ;;9002226.02101,"340,18373-1 ",.02)
 ;;18373-1
 ;;9002226.02101,"340,20454-5 ",.01)
 ;;20454-5
 ;;9002226.02101,"340,20454-5 ",.02)
 ;;20454-5
 ;;9002226.02101,"340,20621-9 ",.01)
 ;;20621-9
 ;;9002226.02101,"340,20621-9 ",.02)
 ;;20621-9
 ;;9002226.02101,"340,21028-6 ",.01)
 ;;21028-6
 ;;9002226.02101,"340,21028-6 ",.02)
 ;;21028-6
 ;;9002226.02101,"340,21059-1 ",.01)
 ;;21059-1
 ;;9002226.02101,"340,21059-1 ",.02)
 ;;21059-1
 ;;9002226.02101,"340,21482-5 ",.01)
 ;;21482-5
 ;;9002226.02101,"340,21482-5 ",.02)
 ;;21482-5
 ;;9002226.02101,"340,26034-9 ",.01)
 ;;26034-9
 ;;9002226.02101,"340,26034-9 ",.02)
 ;;26034-9
 ;;9002226.02101,"340,26801-1 ",.01)
 ;;26801-1
 ;;9002226.02101,"340,26801-1 ",.02)
 ;;26801-1
 ;;9002226.02101,"340,27298-9 ",.01)
 ;;27298-9
 ;;9002226.02101,"340,27298-9 ",.02)
 ;;27298-9
 ;;9002226.02101,"340,2887-8 ",.01)
 ;;2887-8
 ;;9002226.02101,"340,2887-8 ",.02)
 ;;2887-8
 ;;9002226.02101,"340,2888-6 ",.01)
 ;;2888-6
 ;;9002226.02101,"340,2888-6 ",.02)
 ;;2888-6
 ;;9002226.02101,"340,2889-4 ",.01)
 ;;2889-4
 ;;9002226.02101,"340,2889-4 ",.02)
 ;;2889-4
 ;;9002226.02101,"340,2890-2 ",.01)
 ;;2890-2
 ;;9002226.02101,"340,2890-2 ",.02)
 ;;2890-2
 ;;9002226.02101,"340,29946-1 ",.01)
 ;;29946-1
 ;;9002226.02101,"340,29946-1 ",.02)
 ;;29946-1
 ;;9002226.02101,"340,30000-4 ",.01)
 ;;30000-4
 ;;9002226.02101,"340,30000-4 ",.02)
 ;;30000-4
 ;;9002226.02101,"340,30001-2 ",.01)
 ;;30001-2
 ;;9002226.02101,"340,30001-2 ",.02)
 ;;30001-2
 ;;9002226.02101,"340,30003-8 ",.01)
 ;;30003-8
 ;;9002226.02101,"340,30003-8 ",.02)
 ;;30003-8
 ;;9002226.02101,"340,32209-9 ",.01)
 ;;32209-9
 ;;9002226.02101,"340,32209-9 ",.02)
 ;;32209-9
 ;;9002226.02101,"340,32294-1 ",.01)
 ;;32294-1
 ;;9002226.02101,"340,32294-1 ",.02)
 ;;32294-1
 ;;9002226.02101,"340,32551-4 ",.01)
 ;;32551-4
 ;;9002226.02101,"340,32551-4 ",.02)
 ;;32551-4
 ;;9002226.02101,"340,34366-5 ",.01)
 ;;34366-5
 ;;9002226.02101,"340,34366-5 ",.02)
 ;;34366-5
 ;;9002226.02101,"340,34535-5 ",.01)
 ;;34535-5
 ;;9002226.02101,"340,34535-5 ",.02)
 ;;34535-5
 ;;9002226.02101,"340,35663-4 ",.01)
 ;;35663-4
 ;;9002226.02101,"340,35663-4 ",.02)
 ;;35663-4
 ;;9002226.02101,"340,40486-3 ",.01)
 ;;40486-3
 ;;9002226.02101,"340,40486-3 ",.02)
 ;;40486-3
 ;;9002226.02101,"340,40662-9 ",.01)
 ;;40662-9
 ;;9002226.02101,"340,40662-9 ",.02)
 ;;40662-9
 ;;9002226.02101,"340,40663-7 ",.01)
 ;;40663-7
 ;;9002226.02101,"340,40663-7 ",.02)
 ;;40663-7
 ;;9002226.02101,"340,43605-5 ",.01)
 ;;43605-5
 ;;9002226.02101,"340,43605-5 ",.02)
 ;;43605-5
 ;;9002226.02101,"340,43606-3 ",.01)
 ;;43606-3
 ;;9002226.02101,"340,43606-3 ",.02)
 ;;43606-3
 ;;9002226.02101,"340,43607-1 ",.01)
 ;;43607-1
 ;;9002226.02101,"340,43607-1 ",.02)
 ;;43607-1
 ;;9002226.02101,"340,44292-1 ",.01)
 ;;44292-1
 ;;9002226.02101,"340,44292-1 ",.02)
 ;;44292-1
 ;;9002226.02101,"340,47558-2 ",.01)
 ;;47558-2
 ;;9002226.02101,"340,47558-2 ",.02)
 ;;47558-2
 ;;9002226.02101,"340,49002-9 ",.01)
 ;;49002-9
 ;;9002226.02101,"340,49002-9 ",.02)
 ;;49002-9
 ;;9002226.02101,"340,49023-5 ",.01)
 ;;49023-5
 ;;9002226.02101,"340,49023-5 ",.02)
 ;;49023-5
 ;;9002226.02101,"340,50209-6 ",.01)
 ;;50209-6
 ;;9002226.02101,"340,50209-6 ",.02)
 ;;50209-6
 ;;9002226.02101,"340,50561-0 ",.01)
 ;;50561-0
 ;;9002226.02101,"340,50561-0 ",.02)
 ;;50561-0
 ;;9002226.02101,"340,50749-1 ",.01)
 ;;50749-1
 ;;9002226.02101,"340,50749-1 ",.02)
 ;;50749-1
 ;;9002226.02101,"340,50949-7 ",.01)
 ;;50949-7
 ;;9002226.02101,"340,50949-7 ",.02)
 ;;50949-7
 ;;9002226.02101,"340,51190-7 ",.01)
 ;;51190-7
 ;;9002226.02101,"340,51190-7 ",.02)
 ;;51190-7
 ;;9002226.02101,"340,53121-0 ",.01)
 ;;53121-0
 ;;9002226.02101,"340,53121-0 ",.02)
 ;;53121-0
 ;;9002226.02101,"340,53525-2 ",.01)
 ;;53525-2
 ;;9002226.02101,"340,53525-2 ",.02)
 ;;53525-2
 ;;9002226.02101,"340,53530-2 ",.01)
 ;;53530-2
 ;;9002226.02101,"340,53530-2 ",.02)
 ;;53530-2
 ;;9002226.02101,"340,53531-0 ",.01)
 ;;53531-0
 ;;9002226.02101,"340,53531-0 ",.02)
 ;;53531-0
 ;;9002226.02101,"340,53532-8 ",.01)
 ;;53532-8
 ;;9002226.02101,"340,53532-8 ",.02)
 ;;53532-8
 ;;9002226.02101,"340,56553-1 ",.01)
 ;;56553-1
 ;;9002226.02101,"340,56553-1 ",.02)
 ;;56553-1
 ;;9002226.02101,"340,57369-1 ",.01)
 ;;57369-1
 ;;9002226.02101,"340,57369-1 ",.02)
 ;;57369-1
 ;;9002226.02101,"340,57735-3 ",.01)
 ;;57735-3
 ;;9002226.02101,"340,57735-3 ",.02)
 ;;57735-3
 ;;9002226.02101,"340,5804-0 ",.01)
 ;;5804-0
 ;;9002226.02101,"340,5804-0 ",.02)
 ;;5804-0
 ;;9002226.02101,"340,58431-8 ",.01)
 ;;58431-8
 ;;9002226.02101,"340,58431-8 ",.02)
 ;;58431-8
 ;;9002226.02101,"340,58447-4 ",.01)
 ;;58447-4
 ;;9002226.02101,"340,58447-4 ",.02)
 ;;58447-4
 ;;9002226.02101,"340,58992-9 ",.01)
 ;;58992-9
 ;;9002226.02101,"340,58992-9 ",.02)
 ;;58992-9
 ;;9002226.02101,"340,59159-4 ",.01)
 ;;59159-4
 ;;9002226.02101,"340,59159-4 ",.02)
 ;;59159-4
 ;;9002226.02101,"340,60678-0 ",.01)
 ;;60678-0
 ;;9002226.02101,"340,60678-0 ",.02)
 ;;60678-0
 ;;9002226.02101,"340,63474-1 ",.01)
 ;;63474-1
 ;;9002226.02101,"340,63474-1 ",.02)
 ;;63474-1
 ;;9002226.02101,"340,6941-9 ",.01)
 ;;6941-9
 ;;9002226.02101,"340,6941-9 ",.02)
 ;;6941-9
 ;;9002226.02101,"340,6942-7 ",.01)
 ;;6942-7
 ;;9002226.02101,"340,6942-7 ",.02)
 ;;6942-7
 ;;9002226.02101,"340,72596-0 ",.01)
 ;;72596-0
 ;;9002226.02101,"340,72596-0 ",.02)
 ;;72596-0
 ;;9002226.02101,"340,72597-8 ",.01)
 ;;72597-8
 ;;9002226.02101,"340,72597-8 ",.02)
 ;;72597-8
 ;;9002226.02101,"340,9318-7 ",.01)
 ;;9318-7
 ;;9002226.02101,"340,9318-7 ",.02)
 ;;9318-7
 ;
OTHER ; OTHER ROUTINES
 Q
