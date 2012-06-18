BGP6AXP ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP CD4 LOINC CODES
 ;
 ; This routine loads Taxonomy BGP CD4 LOINC CODES
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
 ;;21,"20605-2 ")
 ;;1
 ;;21,"20606-0 ")
 ;;2
 ;;21,"20607-8 ")
 ;;3
 ;;21,"24467-3 ")
 ;;4
 ;;21,"26569-4 ")
 ;;5
 ;;21,"26570-2 ")
 ;;6
 ;;21,"26573-6 ")
 ;;7
 ;;21,"26759-1 ")
 ;;8
 ;;21,"26922-5 ")
 ;;9
 ;;21,"26982-9 ")
 ;;10
 ;;21,"26983-7 ")
 ;;11
 ;;21,"32515-9 ")
 ;;12
 ;;21,"32516-7 ")
 ;;13
 ;;21,"32532-4 ")
 ;;14
 ;;21,"32533-2 ")
 ;;15
 ;;21,"32537-3 ")
 ;;16
 ;;21,"8123-2 ")
 ;;17
 ;;21,"8127-3 ")
 ;;18
 ;;21,"8128-1 ")
 ;;19
 ;;21,"8129-9 ")
 ;;20
 ;;9002226,325,.01)
 ;;BGP CD4 LOINC CODES
 ;;9002226,325,.02)
 ;;LOINC CODES FOR CD4 TESTS
 ;;9002226,325,.04)
 ;;n
 ;;9002226,325,.06)
 ;;@
 ;;9002226,325,.08)
 ;;@
 ;;9002226,325,.09)
 ;;3030709
 ;;9002226,325,.11)
 ;;@
 ;;9002226,325,.12)
 ;;@
 ;;9002226,325,.13)
 ;;1
 ;;9002226,325,.14)
 ;;FIHS
 ;;9002226,325,.15)
 ;;95.3
 ;;9002226,325,.16)
 ;;0
 ;;9002226,325,.17)
 ;;@
 ;;9002226,325,3101)
 ;;@
 ;;9002226.02101,"325,20605-2 ",.01)
 ;;20605-2
 ;;9002226.02101,"325,20605-2 ",.02)
 ;;20605-2
 ;;9002226.02101,"325,20606-0 ",.01)
 ;;20606-0
 ;;9002226.02101,"325,20606-0 ",.02)
 ;;20606-0
 ;;9002226.02101,"325,20607-8 ",.01)
 ;;20607-8
 ;;9002226.02101,"325,20607-8 ",.02)
 ;;20607-8
 ;;9002226.02101,"325,24467-3 ",.01)
 ;;24467-3
 ;;9002226.02101,"325,24467-3 ",.02)
 ;;24467-3
 ;;9002226.02101,"325,26569-4 ",.01)
 ;;26569-4
 ;;9002226.02101,"325,26569-4 ",.02)
 ;;26569-4
 ;;9002226.02101,"325,26570-2 ",.01)
 ;;26570-2
 ;;9002226.02101,"325,26570-2 ",.02)
 ;;26570-2
 ;;9002226.02101,"325,26573-6 ",.01)
 ;;26573-6
 ;;9002226.02101,"325,26573-6 ",.02)
 ;;26573-6
 ;;9002226.02101,"325,26759-1 ",.01)
 ;;26759-1
 ;;9002226.02101,"325,26759-1 ",.02)
 ;;26759-1
 ;;9002226.02101,"325,26922-5 ",.01)
 ;;26922-5
 ;;9002226.02101,"325,26922-5 ",.02)
 ;;26922-5
 ;;9002226.02101,"325,26982-9 ",.01)
 ;;26982-9
 ;;9002226.02101,"325,26982-9 ",.02)
 ;;26982-9
 ;;9002226.02101,"325,26983-7 ",.01)
 ;;26983-7
 ;;9002226.02101,"325,26983-7 ",.02)
 ;;26983-7
 ;;9002226.02101,"325,32515-9 ",.01)
 ;;32515-9
 ;;9002226.02101,"325,32515-9 ",.02)
 ;;32515-9
 ;;9002226.02101,"325,32516-7 ",.01)
 ;;32516-7
 ;;9002226.02101,"325,32516-7 ",.02)
 ;;32516-7
 ;;9002226.02101,"325,32532-4 ",.01)
 ;;32532-4
 ;;9002226.02101,"325,32532-4 ",.02)
 ;;32532-4
 ;;9002226.02101,"325,32533-2 ",.01)
 ;;32533-2
 ;;9002226.02101,"325,32533-2 ",.02)
 ;;32533-2
 ;;9002226.02101,"325,32537-3 ",.01)
 ;;32537-3
 ;;9002226.02101,"325,32537-3 ",.02)
 ;;32537-3
 ;;9002226.02101,"325,8123-2 ",.01)
 ;;8123-2
 ;;9002226.02101,"325,8123-2 ",.02)
 ;;8123-2
 ;;9002226.02101,"325,8127-3 ",.01)
 ;;8127-3
 ;;9002226.02101,"325,8127-3 ",.02)
 ;;8127-3
 ;;9002226.02101,"325,8128-1 ",.01)
 ;;8128-1
 ;;9002226.02101,"325,8128-1 ",.02)
 ;;8128-1
 ;;9002226.02101,"325,8129-9 ",.01)
 ;;8129-9
 ;;9002226.02101,"325,8129-9 ",.02)
 ;;8129-9
 ;
OTHER ; OTHER ROUTINES
 Q
