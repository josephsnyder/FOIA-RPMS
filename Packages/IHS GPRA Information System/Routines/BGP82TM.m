BGP82TM ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 09, 2008;
 ;;8.0;IHS CLINICAL REPORTING;**2**;MAR 12, 2008
 ;;BGP HEDIS ASTHMA LEUK NDC
 ;
 ; This routine loads Taxonomy BGP HEDIS ASTHMA LEUK NDC
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
 ;;21,"00006-0117-28 ")
 ;;1
 ;;21,"00006-0117-31 ")
 ;;2
 ;;21,"00006-0117-54 ")
 ;;3
 ;;21,"00006-0117-80 ")
 ;;4
 ;;21,"00006-0275-28 ")
 ;;5
 ;;21,"00006-0275-31 ")
 ;;6
 ;;21,"00006-0275-54 ")
 ;;7
 ;;21,"00006-0711-28 ")
 ;;8
 ;;21,"00006-0711-31 ")
 ;;9
 ;;21,"00006-0711-54 ")
 ;;10
 ;;21,"00006-3841-30 ")
 ;;11
 ;;21,"00074-8036-22 ")
 ;;12
 ;;21,"00247-1897-00 ")
 ;;13
 ;;21,"00247-1897-30 ")
 ;;14
 ;;21,"00247-1897-60 ")
 ;;15
 ;;21,"00247-1897-77 ")
 ;;16
 ;;21,"00247-1897-90 ")
 ;;17
 ;;21,"00247-1898-00 ")
 ;;18
 ;;21,"00247-1898-14 ")
 ;;19
 ;;21,"00247-1898-30 ")
 ;;20
 ;;21,"00247-1898-60 ")
 ;;21
 ;;21,"00247-1898-77 ")
 ;;22
 ;;21,"00247-1898-90 ")
 ;;23
 ;;21,"00247-1988-30 ")
 ;;24
 ;;21,"00310-0401-39 ")
 ;;25
 ;;21,"00310-0401-60 ")
 ;;26
 ;;21,"00310-0402-39 ")
 ;;27
 ;;21,"00310-0402-60 ")
 ;;28
 ;;21,"12280-0042-90 ")
 ;;29
 ;;21,"13411-0151-01 ")
 ;;30
 ;;21,"13411-0151-03 ")
 ;;31
 ;;21,"13411-0151-06 ")
 ;;32
 ;;21,"13411-0151-09 ")
 ;;33
 ;;21,"13411-0151-15 ")
 ;;34
 ;;21,"13411-0160-01 ")
 ;;35
 ;;21,"13411-0160-03 ")
 ;;36
 ;;21,"13411-0160-06 ")
 ;;37
 ;;21,"13411-0160-09 ")
 ;;38
 ;;21,"13411-0160-15 ")
 ;;39
 ;;21,"49999-0533-30 ")
 ;;40
 ;;21,"49999-0533-90 ")
 ;;41
 ;;21,"49999-0884-30 ")
 ;;42
 ;;21,"49999-0884-90 ")
 ;;43
 ;;21,"54569-4604-01 ")
 ;;44
 ;;21,"54569-4605-00 ")
 ;;45
 ;;21,"54569-4736-00 ")
 ;;46
 ;;21,"54868-3283-00 ")
 ;;47
 ;;21,"54868-3283-01 ")
 ;;48
 ;;21,"54868-3283-02 ")
 ;;49
 ;;21,"54868-4172-00 ")
 ;;50
 ;;21,"54868-4172-01 ")
 ;;51
 ;;21,"54868-4172-02 ")
 ;;52
 ;;21,"54868-4630-00 ")
 ;;53
 ;;21,"54868-4847-00 ")
 ;;54
 ;;21,"55289-0961-15 ")
 ;;55
 ;;21,"55289-0961-30 ")
 ;;56
 ;;21,"55289-0989-21 ")
 ;;57
 ;;21,"55289-0989-30 ")
 ;;58
 ;;21,"55289-0990-21 ")
 ;;59
 ;;21,"55289-0990-30 ")
 ;;60
 ;;21,"58864-0658-30 ")
 ;;61
 ;;21,"58864-0694-30 ")
 ;;62
 ;;21,"68115-0638-60 ")
 ;;63
 ;;21,"68115-0923-90 ")
 ;;64
 ;;21,"68734-0700-10 ")
 ;;65
 ;;21,"68734-0710-10 ")
 ;;66
 ;;9002226,532,.01)
 ;;BGP HEDIS ASTHMA LEUK NDC
 ;;9002226,532,.02)
 ;;@
 ;;9002226,532,.04)
 ;;n
 ;;9002226,532,.06)
 ;;@
 ;;9002226,532,.08)
 ;;@
 ;;9002226,532,.09)
 ;;3080528
 ;;9002226,532,.11)
 ;;@
 ;;9002226,532,.12)
 ;;@
 ;;9002226,532,.13)
 ;;1
 ;;9002226,532,.14)
 ;;@
 ;;9002226,532,.15)
 ;;@
 ;;9002226,532,.16)
 ;;@
 ;;9002226,532,.17)
 ;;@
 ;;9002226,532,3101)
 ;;@
 ;;9002226.02101,"532,00006-0117-28 ",.01)
 ;;00006-0117-28
 ;;9002226.02101,"532,00006-0117-28 ",.02)
 ;;00006-0117-28
 ;;9002226.02101,"532,00006-0117-31 ",.01)
 ;;00006-0117-31
 ;;9002226.02101,"532,00006-0117-31 ",.02)
 ;;00006-0117-31
 ;;9002226.02101,"532,00006-0117-54 ",.01)
 ;;00006-0117-54
 ;;9002226.02101,"532,00006-0117-54 ",.02)
 ;;00006-0117-54
 ;;9002226.02101,"532,00006-0117-80 ",.01)
 ;;00006-0117-80
 ;;9002226.02101,"532,00006-0117-80 ",.02)
 ;;00006-0117-80
 ;;9002226.02101,"532,00006-0275-28 ",.01)
 ;;00006-0275-28
 ;;9002226.02101,"532,00006-0275-28 ",.02)
 ;;00006-0275-28
 ;;9002226.02101,"532,00006-0275-31 ",.01)
 ;;00006-0275-31
 ;;9002226.02101,"532,00006-0275-31 ",.02)
 ;;00006-0275-31
 ;;9002226.02101,"532,00006-0275-54 ",.01)
 ;;00006-0275-54
 ;;9002226.02101,"532,00006-0275-54 ",.02)
 ;;00006-0275-54
 ;;9002226.02101,"532,00006-0711-28 ",.01)
 ;;00006-0711-28
 ;;9002226.02101,"532,00006-0711-28 ",.02)
 ;;00006-0711-28
 ;;9002226.02101,"532,00006-0711-31 ",.01)
 ;;00006-0711-31
 ;;9002226.02101,"532,00006-0711-31 ",.02)
 ;;00006-0711-31
 ;;9002226.02101,"532,00006-0711-54 ",.01)
 ;;00006-0711-54
 ;;9002226.02101,"532,00006-0711-54 ",.02)
 ;;00006-0711-54
 ;;9002226.02101,"532,00006-3841-30 ",.01)
 ;;00006-3841-30
 ;;9002226.02101,"532,00006-3841-30 ",.02)
 ;;00006-3841-30
 ;;9002226.02101,"532,00074-8036-22 ",.01)
 ;;00074-8036-22
 ;;9002226.02101,"532,00074-8036-22 ",.02)
 ;;00074-8036-22
 ;;9002226.02101,"532,00247-1897-00 ",.01)
 ;;00247-1897-00
 ;;9002226.02101,"532,00247-1897-00 ",.02)
 ;;00247-1897-00
 ;;9002226.02101,"532,00247-1897-30 ",.01)
 ;;00247-1897-30
 ;;9002226.02101,"532,00247-1897-30 ",.02)
 ;;00247-1897-30
 ;;9002226.02101,"532,00247-1897-60 ",.01)
 ;;00247-1897-60
 ;;9002226.02101,"532,00247-1897-60 ",.02)
 ;;00247-1897-60
 ;;9002226.02101,"532,00247-1897-77 ",.01)
 ;;00247-1897-77
 ;;9002226.02101,"532,00247-1897-77 ",.02)
 ;;00247-1897-77
 ;;9002226.02101,"532,00247-1897-90 ",.01)
 ;;00247-1897-90
 ;;9002226.02101,"532,00247-1897-90 ",.02)
 ;;00247-1897-90
 ;;9002226.02101,"532,00247-1898-00 ",.01)
 ;;00247-1898-00
 ;;9002226.02101,"532,00247-1898-00 ",.02)
 ;;00247-1898-00
 ;;9002226.02101,"532,00247-1898-14 ",.01)
 ;;00247-1898-14
 ;;9002226.02101,"532,00247-1898-14 ",.02)
 ;;00247-1898-14
 ;;9002226.02101,"532,00247-1898-30 ",.01)
 ;;00247-1898-30
 ;;9002226.02101,"532,00247-1898-30 ",.02)
 ;;00247-1898-30
 ;
OTHER ; OTHER ROUTINES
 D ^BGP82TMB
 D ^BGP82TMC
 Q
