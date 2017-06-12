BGP71D ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JUL 07, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;;BGP CHLAMYDIA LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CHLAMYDIA LOINC CODES
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
 ;;21,"14463-4 ")
 ;;1
 ;;21,"14464-2 ")
 ;;2
 ;;21,"14465-9 ")
 ;;3
 ;;21,"14467-5 ")
 ;;4
 ;;21,"14470-9 ")
 ;;5
 ;;21,"14471-7 ")
 ;;6
 ;;21,"14472-5 ")
 ;;7
 ;;21,"14474-1 ")
 ;;8
 ;;21,"14509-4 ")
 ;;9
 ;;21,"14510-2 ")
 ;;10
 ;;21,"14511-0 ")
 ;;11
 ;;21,"14513-6 ")
 ;;12
 ;;21,"16600-9 ")
 ;;13
 ;;21,"16601-7 ")
 ;;14
 ;;21,"16602-5 ")
 ;;15
 ;;21,"21189-6 ")
 ;;16
 ;;21,"21190-4 ")
 ;;17
 ;;21,"21191-2 ")
 ;;18
 ;;21,"21192-0 ")
 ;;19
 ;;21,"21613-5 ")
 ;;20
 ;;21,"23838-6 ")
 ;;21
 ;;21,"31771-9 ")
 ;;22
 ;;21,"31772-7 ")
 ;;23
 ;;21,"31775-0 ")
 ;;24
 ;;21,"31776-8 ")
 ;;25
 ;;21,"31777-6 ")
 ;;26
 ;;21,"34710-4 ")
 ;;27
 ;;21,"36902-5 ")
 ;;28
 ;;21,"36903-3 ")
 ;;29
 ;;21,"42931-6 ")
 ;;30
 ;;21,"43304-5 ")
 ;;31
 ;;21,"43404-3 ")
 ;;32
 ;;21,"43405-0 ")
 ;;33
 ;;21,"43406-8 ")
 ;;34
 ;;21,"44806-8 ")
 ;;35
 ;;21,"44807-6 ")
 ;;36
 ;;21,"45067-6 ")
 ;;37
 ;;21,"45068-4 ")
 ;;38
 ;;21,"45069-2 ")
 ;;39
 ;;21,"45070-0 ")
 ;;40
 ;;21,"45072-6 ")
 ;;41
 ;;21,"45074-2 ")
 ;;42
 ;;21,"45075-9 ")
 ;;43
 ;;21,"45076-7 ")
 ;;44
 ;;21,"45078-3 ")
 ;;45
 ;;21,"45079-1 ")
 ;;46
 ;;21,"45080-9 ")
 ;;47
 ;;21,"45081-7 ")
 ;;48
 ;;21,"45082-5 ")
 ;;49
 ;;21,"45083-3 ")
 ;;50
 ;;21,"45084-1 ")
 ;;51
 ;;21,"45089-0 ")
 ;;52
 ;;21,"45090-8 ")
 ;;53
 ;;21,"45091-6 ")
 ;;54
 ;;21,"45093-2 ")
 ;;55
 ;;21,"45095-7 ")
 ;;56
 ;;21,"45098-1 ")
 ;;57
 ;;21,"45100-5 ")
 ;;58
 ;;21,"47211-8 ")
 ;;59
 ;;21,"47212-6 ")
 ;;60
 ;;21,"49096-1 ")
 ;;61
 ;;21,"4993-2 ")
 ;;62
 ;;21,"50387-0 ")
 ;;63
 ;;21,"53925-4 ")
 ;;64
 ;;21,"53926-2 ")
 ;;65
 ;;21,"557-9 ")
 ;;66
 ;;21,"560-3 ")
 ;;67
 ;;21,"57287-5 ")
 ;;68
 ;;21,"6349-5 ")
 ;;69
 ;;21,"6354-5 ")
 ;;70
 ;;21,"6355-2 ")
 ;;71
 ;;21,"6356-0 ")
 ;;72
 ;;21,"6357-8 ")
 ;;73
 ;;21,"64017-7 ")
 ;;74
 ;;21,"70161-5 ")
 ;;75
 ;;21,"70162-3 ")
 ;;76
 ;;21,"70163-1 ")
 ;;77
 ;;21,"70164-9 ")
 ;;78
 ;;21,"72828-7 ")
 ;;79
 ;;21,"77577-5 ")
 ;;80
 ;;21,"80363-5 ")
 ;;81
 ;;21,"80364-3 ")
 ;;82
 ;;9002226,214,.01)
 ;;BGP CHLAMYDIA LOINC CODES
 ;;9002226,214,.02)
 ;;@
 ;;9002226,214,.04)
 ;;n
 ;;9002226,214,.06)
 ;;@
 ;;9002226,214,.08)
 ;;@
 ;;9002226,214,.09)
 ;;@
 ;;9002226,214,.11)
 ;;@
 ;;9002226,214,.12)
 ;;@
 ;;9002226,214,.13)
 ;;1
 ;;9002226,214,.14)
 ;;FIHS
 ;;9002226,214,.15)
 ;;95.3
 ;;9002226,214,.16)
 ;;@
 ;;9002226,214,.17)
 ;;@
 ;;9002226,214,.22)
 ;;1
 ;;9002226,214,3101)
 ;;@
 ;;9002226.02101,"214,14463-4 ",.01)
 ;;14463-4
 ;;9002226.02101,"214,14463-4 ",.02)
 ;;14463-4
 ;;9002226.02101,"214,14464-2 ",.01)
 ;;14464-2
 ;;9002226.02101,"214,14464-2 ",.02)
 ;;14464-2
 ;;9002226.02101,"214,14465-9 ",.01)
 ;;14465-9
 ;;9002226.02101,"214,14465-9 ",.02)
 ;;14465-9
 ;;9002226.02101,"214,14467-5 ",.01)
 ;;14467-5
 ;;9002226.02101,"214,14467-5 ",.02)
 ;;14467-5
 ;;9002226.02101,"214,14470-9 ",.01)
 ;;14470-9
 ;;9002226.02101,"214,14470-9 ",.02)
 ;;14470-9
 ;;9002226.02101,"214,14471-7 ",.01)
 ;;14471-7
 ;;9002226.02101,"214,14471-7 ",.02)
 ;;14471-7
 ;;9002226.02101,"214,14472-5 ",.01)
 ;;14472-5
 ;;9002226.02101,"214,14472-5 ",.02)
 ;;14472-5
 ;;9002226.02101,"214,14474-1 ",.01)
 ;;14474-1
 ;;9002226.02101,"214,14474-1 ",.02)
 ;;14474-1
 ;;9002226.02101,"214,14509-4 ",.01)
 ;;14509-4
 ;;9002226.02101,"214,14509-4 ",.02)
 ;;14509-4
 ;;9002226.02101,"214,14510-2 ",.01)
 ;;14510-2
 ;;9002226.02101,"214,14510-2 ",.02)
 ;;14510-2
 ;;9002226.02101,"214,14511-0 ",.01)
 ;;14511-0
 ;;9002226.02101,"214,14511-0 ",.02)
 ;;14511-0
 ;;9002226.02101,"214,14513-6 ",.01)
 ;;14513-6
 ;;9002226.02101,"214,14513-6 ",.02)
 ;;14513-6
 ;;9002226.02101,"214,16600-9 ",.01)
 ;;16600-9
 ;;9002226.02101,"214,16600-9 ",.02)
 ;;16600-9
 ;;9002226.02101,"214,16601-7 ",.01)
 ;;16601-7
 ;;9002226.02101,"214,16601-7 ",.02)
 ;;16601-7
 ;;9002226.02101,"214,16602-5 ",.01)
 ;;16602-5
 ;;9002226.02101,"214,16602-5 ",.02)
 ;;16602-5
 ;;9002226.02101,"214,21189-6 ",.01)
 ;;21189-6
 ;;9002226.02101,"214,21189-6 ",.02)
 ;;21189-6
 ;;9002226.02101,"214,21190-4 ",.01)
 ;;21190-4
 ;;9002226.02101,"214,21190-4 ",.02)
 ;;21190-4
 ;;9002226.02101,"214,21191-2 ",.01)
 ;;21191-2
 ;;9002226.02101,"214,21191-2 ",.02)
 ;;21191-2
 ;;9002226.02101,"214,21192-0 ",.01)
 ;;21192-0
 ;;9002226.02101,"214,21192-0 ",.02)
 ;;21192-0
 ;;9002226.02101,"214,21613-5 ",.01)
 ;;21613-5
 ;;9002226.02101,"214,21613-5 ",.02)
 ;;21613-5
 ;;9002226.02101,"214,23838-6 ",.01)
 ;;23838-6
 ;;9002226.02101,"214,23838-6 ",.02)
 ;;23838-6
 ;;9002226.02101,"214,31771-9 ",.01)
 ;;31771-9
 ;;9002226.02101,"214,31771-9 ",.02)
 ;;31771-9
 ;;9002226.02101,"214,31772-7 ",.01)
 ;;31772-7
 ;;9002226.02101,"214,31772-7 ",.02)
 ;;31772-7
 ;;9002226.02101,"214,31775-0 ",.01)
 ;;31775-0
 ;;9002226.02101,"214,31775-0 ",.02)
 ;;31775-0
 ;;9002226.02101,"214,31776-8 ",.01)
 ;;31776-8
 ;;9002226.02101,"214,31776-8 ",.02)
 ;;31776-8
 ;;9002226.02101,"214,31777-6 ",.01)
 ;;31777-6
 ;;9002226.02101,"214,31777-6 ",.02)
 ;;31777-6
 ;;9002226.02101,"214,34710-4 ",.01)
 ;;34710-4
 ;;9002226.02101,"214,34710-4 ",.02)
 ;;34710-4
 ;;9002226.02101,"214,36902-5 ",.01)
 ;;36902-5
 ;;9002226.02101,"214,36902-5 ",.02)
 ;;36902-5
 ;;9002226.02101,"214,36903-3 ",.01)
 ;;36903-3
 ;;9002226.02101,"214,36903-3 ",.02)
 ;;36903-3
 ;;9002226.02101,"214,42931-6 ",.01)
 ;;42931-6
 ;;9002226.02101,"214,42931-6 ",.02)
 ;;42931-6
 ;;9002226.02101,"214,43304-5 ",.01)
 ;;43304-5
 ;;9002226.02101,"214,43304-5 ",.02)
 ;;43304-5
 ;;9002226.02101,"214,43404-3 ",.01)
 ;;43404-3
 ;;9002226.02101,"214,43404-3 ",.02)
 ;;43404-3
 ;;9002226.02101,"214,43405-0 ",.01)
 ;;43405-0
 ;;9002226.02101,"214,43405-0 ",.02)
 ;;43405-0
 ;;9002226.02101,"214,43406-8 ",.01)
 ;;43406-8
 ;;9002226.02101,"214,43406-8 ",.02)
 ;;43406-8
 ;;9002226.02101,"214,44806-8 ",.01)
 ;;44806-8
 ;;9002226.02101,"214,44806-8 ",.02)
 ;;44806-8
 ;;9002226.02101,"214,44807-6 ",.01)
 ;;44807-6
 ;;9002226.02101,"214,44807-6 ",.02)
 ;;44807-6
 ;;9002226.02101,"214,45067-6 ",.01)
 ;;45067-6
 ;;9002226.02101,"214,45067-6 ",.02)
 ;;45067-6
 ;;9002226.02101,"214,45068-4 ",.01)
 ;;45068-4
 ;;9002226.02101,"214,45068-4 ",.02)
 ;;45068-4
 ;;9002226.02101,"214,45069-2 ",.01)
 ;;45069-2
 ;;9002226.02101,"214,45069-2 ",.02)
 ;;45069-2
 ;;9002226.02101,"214,45070-0 ",.01)
 ;;45070-0
 ;;9002226.02101,"214,45070-0 ",.02)
 ;;45070-0
 ;;9002226.02101,"214,45072-6 ",.01)
 ;;45072-6
 ;;9002226.02101,"214,45072-6 ",.02)
 ;;45072-6
 ;;9002226.02101,"214,45074-2 ",.01)
 ;;45074-2
 ;;9002226.02101,"214,45074-2 ",.02)
 ;;45074-2
 ;;9002226.02101,"214,45075-9 ",.01)
 ;;45075-9
 ;;9002226.02101,"214,45075-9 ",.02)
 ;;45075-9
 ;;9002226.02101,"214,45076-7 ",.01)
 ;;45076-7
 ;;9002226.02101,"214,45076-7 ",.02)
 ;;45076-7
 ;;9002226.02101,"214,45078-3 ",.01)
 ;;45078-3
 ;;9002226.02101,"214,45078-3 ",.02)
 ;;45078-3
 ;;9002226.02101,"214,45079-1 ",.01)
 ;;45079-1
 ;;9002226.02101,"214,45079-1 ",.02)
 ;;45079-1
 ;;9002226.02101,"214,45080-9 ",.01)
 ;;45080-9
 ;;9002226.02101,"214,45080-9 ",.02)
 ;;45080-9
 ;;9002226.02101,"214,45081-7 ",.01)
 ;;45081-7
 ;;9002226.02101,"214,45081-7 ",.02)
 ;;45081-7
 ;;9002226.02101,"214,45082-5 ",.01)
 ;;45082-5
 ;;9002226.02101,"214,45082-5 ",.02)
 ;;45082-5
 ;;9002226.02101,"214,45083-3 ",.01)
 ;;45083-3
 ;;9002226.02101,"214,45083-3 ",.02)
 ;;45083-3
 ;;9002226.02101,"214,45084-1 ",.01)
 ;;45084-1
 ;;9002226.02101,"214,45084-1 ",.02)
 ;;45084-1
 ;;9002226.02101,"214,45089-0 ",.01)
 ;;45089-0
 ;;9002226.02101,"214,45089-0 ",.02)
 ;;45089-0
 ;;9002226.02101,"214,45090-8 ",.01)
 ;;45090-8
 ;;9002226.02101,"214,45090-8 ",.02)
 ;;45090-8
 ;;9002226.02101,"214,45091-6 ",.01)
 ;;45091-6
 ;;9002226.02101,"214,45091-6 ",.02)
 ;;45091-6
 ;;9002226.02101,"214,45093-2 ",.01)
 ;;45093-2
 ;;9002226.02101,"214,45093-2 ",.02)
 ;;45093-2
 ;;9002226.02101,"214,45095-7 ",.01)
 ;;45095-7
 ;;9002226.02101,"214,45095-7 ",.02)
 ;;45095-7
 ;;9002226.02101,"214,45098-1 ",.01)
 ;;45098-1
 ;;9002226.02101,"214,45098-1 ",.02)
 ;;45098-1
 ;;9002226.02101,"214,45100-5 ",.01)
 ;;45100-5
 ;;9002226.02101,"214,45100-5 ",.02)
 ;;45100-5
 ;;9002226.02101,"214,47211-8 ",.01)
 ;;47211-8
 ;;9002226.02101,"214,47211-8 ",.02)
 ;;47211-8
 ;;9002226.02101,"214,47212-6 ",.01)
 ;;47212-6
 ;;9002226.02101,"214,47212-6 ",.02)
 ;;47212-6
 ;;9002226.02101,"214,49096-1 ",.01)
 ;;49096-1
 ;;9002226.02101,"214,49096-1 ",.02)
 ;;49096-1
 ;;9002226.02101,"214,4993-2 ",.01)
 ;;4993-2
 ;;9002226.02101,"214,4993-2 ",.02)
 ;;4993-2
 ;;9002226.02101,"214,50387-0 ",.01)
 ;;50387-0
 ;;9002226.02101,"214,50387-0 ",.02)
 ;;50387-0
 ;;9002226.02101,"214,53925-4 ",.01)
 ;;53925-4
 ;;9002226.02101,"214,53925-4 ",.02)
 ;;53925-4
 ;;9002226.02101,"214,53926-2 ",.01)
 ;;53926-2
 ;;9002226.02101,"214,53926-2 ",.02)
 ;;53926-2
 ;;9002226.02101,"214,557-9 ",.01)
 ;;557-9
 ;;9002226.02101,"214,557-9 ",.02)
 ;;557-9
 ;;9002226.02101,"214,560-3 ",.01)
 ;;560-3
 ;;9002226.02101,"214,560-3 ",.02)
 ;;560-3
 ;;9002226.02101,"214,57287-5 ",.01)
 ;;57287-5
 ;;9002226.02101,"214,57287-5 ",.02)
 ;;57287-5
 ;;9002226.02101,"214,6349-5 ",.01)
 ;;6349-5
 ;;9002226.02101,"214,6349-5 ",.02)
 ;;6349-5
 ;;9002226.02101,"214,6354-5 ",.01)
 ;;6354-5
 ;;9002226.02101,"214,6354-5 ",.02)
 ;;6354-5
 ;;9002226.02101,"214,6355-2 ",.01)
 ;;6355-2
 ;;9002226.02101,"214,6355-2 ",.02)
 ;;6355-2
 ;;9002226.02101,"214,6356-0 ",.01)
 ;;6356-0
 ;;9002226.02101,"214,6356-0 ",.02)
 ;;6356-0
 ;;9002226.02101,"214,6357-8 ",.01)
 ;;6357-8
 ;;9002226.02101,"214,6357-8 ",.02)
 ;;6357-8
 ;;9002226.02101,"214,64017-7 ",.01)
 ;;64017-7
 ;;9002226.02101,"214,64017-7 ",.02)
 ;;64017-7
 ;;9002226.02101,"214,70161-5 ",.01)
 ;;70161-5
 ;;9002226.02101,"214,70161-5 ",.02)
 ;;70161-5
 ;;9002226.02101,"214,70162-3 ",.01)
 ;;70162-3
 ;;9002226.02101,"214,70162-3 ",.02)
 ;;70162-3
 ;;9002226.02101,"214,70163-1 ",.01)
 ;;70163-1
 ;;9002226.02101,"214,70163-1 ",.02)
 ;;70163-1
 ;;9002226.02101,"214,70164-9 ",.01)
 ;;70164-9
 ;;9002226.02101,"214,70164-9 ",.02)
 ;;70164-9
 ;;9002226.02101,"214,72828-7 ",.01)
 ;;72828-7
 ;;9002226.02101,"214,72828-7 ",.02)
 ;;72828-7
 ;;9002226.02101,"214,77577-5 ",.01)
 ;;77577-5
 ;;9002226.02101,"214,77577-5 ",.02)
 ;;77577-5
 ;;9002226.02101,"214,80363-5 ",.01)
 ;;80363-5
 ;;9002226.02101,"214,80363-5 ",.02)
 ;;80363-5
 ;;9002226.02101,"214,80364-3 ",.01)
 ;;80364-3
 ;;9002226.02101,"214,80364-3 ",.02)
 ;;80364-3
 ;;9002226.04101,"214,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
