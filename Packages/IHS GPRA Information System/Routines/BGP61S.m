BGP61S ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;;BGP PQA ASTHMA INHALE STER NDC
 ;
 ; This routine loads Taxonomy BGP PQA ASTHMA INHALE STER NDC
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
 ;;21,"00085-1341-01 ")
 ;;1
 ;;21,"00085-1341-02 ")
 ;;2
 ;;21,"00085-1341-03 ")
 ;;3
 ;;21,"00085-1341-04 ")
 ;;4
 ;;21,"00085-1341-06 ")
 ;;5
 ;;21,"00085-1341-07 ")
 ;;6
 ;;21,"00085-1461-02 ")
 ;;7
 ;;21,"00085-1461-07 ")
 ;;8
 ;;21,"00085-4333-01 ")
 ;;9
 ;;21,"00085-4334-01 ")
 ;;10
 ;;21,"00173-0600-02 ")
 ;;11
 ;;21,"00173-0601-00 ")
 ;;12
 ;;21,"00173-0601-02 ")
 ;;13
 ;;21,"00173-0602-00 ")
 ;;14
 ;;21,"00173-0602-02 ")
 ;;15
 ;;21,"00173-0718-20 ")
 ;;16
 ;;21,"00173-0719-20 ")
 ;;17
 ;;21,"00173-0720-20 ")
 ;;18
 ;;21,"00173-0874-10 ")
 ;;19
 ;;21,"00173-0874-14 ")
 ;;20
 ;;21,"00173-0876-10 ")
 ;;21
 ;;21,"00173-0876-14 ")
 ;;22
 ;;21,"00186-0916-12 ")
 ;;23
 ;;21,"00186-0917-06 ")
 ;;24
 ;;21,"16590-0860-71 ")
 ;;25
 ;;21,"16590-0860-72 ")
 ;;26
 ;;21,"21695-0291-01 ")
 ;;27
 ;;21,"35356-0099-14 ")
 ;;28
 ;;21,"35356-0157-01 ")
 ;;29
 ;;21,"35356-0494-01 ")
 ;;30
 ;;21,"49999-0614-01 ")
 ;;31
 ;;21,"49999-0614-12 ")
 ;;32
 ;;21,"54569-5663-00 ")
 ;;33
 ;;21,"54569-5671-00 ")
 ;;34
 ;;21,"54569-5702-00 ")
 ;;35
 ;;21,"54569-5928-00 ")
 ;;36
 ;;21,"54569-6265-00 ")
 ;;37
 ;;21,"54569-6266-00 ")
 ;;38
 ;;21,"54569-6390-00 ")
 ;;39
 ;;21,"54868-5362-00 ")
 ;;40
 ;;21,"54868-5547-00 ")
 ;;41
 ;;21,"54868-5547-01 ")
 ;;42
 ;;21,"54868-5547-02 ")
 ;;43
 ;;21,"54868-5637-00 ")
 ;;44
 ;;21,"54868-5844-00 ")
 ;;45
 ;;21,"54868-5857-00 ")
 ;;46
 ;;21,"54868-5857-01 ")
 ;;47
 ;;21,"54868-5858-00 ")
 ;;48
 ;;21,"54868-5858-01 ")
 ;;49
 ;;21,"54868-5989-00 ")
 ;;50
 ;;21,"54868-5990-00 ")
 ;;51
 ;;21,"54868-5995-00 ")
 ;;52
 ;;21,"55045-3351-00 ")
 ;;53
 ;;21,"55045-3354-00 ")
 ;;54
 ;;21,"55045-3416-00 ")
 ;;55
 ;;21,"59310-0175-40 ")
 ;;56
 ;;21,"59310-0177-80 ")
 ;;57
 ;;21,"59310-0202-12 ")
 ;;58
 ;;21,"59310-0202-40 ")
 ;;59
 ;;21,"59310-0204-12 ")
 ;;60
 ;;21,"59310-0204-80 ")
 ;;61
 ;;21,"63402-0711-01 ")
 ;;62
 ;;21,"63402-0712-01 ")
 ;;63
 ;;21,"68258-8913-06 ")
 ;;64
 ;;21,"68258-8933-08 ")
 ;;65
 ;;21,"68258-8964-08 ")
 ;;66
 ;;21,"75989-0550-06 ")
 ;;67
 ;;21,"75989-0550-12 ")
 ;;68
 ;;9002226,1906,.01)
 ;;BGP PQA ASTHMA INHALE STER NDC
 ;;9002226,1906,.02)
 ;;RASA NDC
 ;;9002226,1906,.04)
 ;;n
 ;;9002226,1906,.06)
 ;;@
 ;;9002226,1906,.08)
 ;;@
 ;;9002226,1906,.09)
 ;;3150818
 ;;9002226,1906,.11)
 ;;@
 ;;9002226,1906,.12)
 ;;@
 ;;9002226,1906,.13)
 ;;1
 ;;9002226,1906,.14)
 ;;@
 ;;9002226,1906,.15)
 ;;50.67
 ;;9002226,1906,.16)
 ;;@
 ;;9002226,1906,.17)
 ;;@
 ;;9002226,1906,3101)
 ;;@
 ;;9002226.02101,"1906,00085-1341-01 ",.01)
 ;;00085-1341-01
 ;;9002226.02101,"1906,00085-1341-01 ",.02)
 ;;00085-1341-01
 ;;9002226.02101,"1906,00085-1341-02 ",.01)
 ;;00085-1341-02
 ;;9002226.02101,"1906,00085-1341-02 ",.02)
 ;;00085-1341-02
 ;;9002226.02101,"1906,00085-1341-03 ",.01)
 ;;00085-1341-03
 ;;9002226.02101,"1906,00085-1341-03 ",.02)
 ;;00085-1341-03
 ;;9002226.02101,"1906,00085-1341-04 ",.01)
 ;;00085-1341-04
 ;;9002226.02101,"1906,00085-1341-04 ",.02)
 ;;00085-1341-04
 ;;9002226.02101,"1906,00085-1341-06 ",.01)
 ;;00085-1341-06
 ;;9002226.02101,"1906,00085-1341-06 ",.02)
 ;;00085-1341-06
 ;;9002226.02101,"1906,00085-1341-07 ",.01)
 ;;00085-1341-07
 ;;9002226.02101,"1906,00085-1341-07 ",.02)
 ;;00085-1341-07
 ;;9002226.02101,"1906,00085-1461-02 ",.01)
 ;;00085-1461-02
 ;;9002226.02101,"1906,00085-1461-02 ",.02)
 ;;00085-1461-02
 ;;9002226.02101,"1906,00085-1461-07 ",.01)
 ;;00085-1461-07
 ;;9002226.02101,"1906,00085-1461-07 ",.02)
 ;;00085-1461-07
 ;;9002226.02101,"1906,00085-4333-01 ",.01)
 ;;00085-4333-01
 ;;9002226.02101,"1906,00085-4333-01 ",.02)
 ;;00085-4333-01
 ;;9002226.02101,"1906,00085-4334-01 ",.01)
 ;;00085-4334-01
 ;;9002226.02101,"1906,00085-4334-01 ",.02)
 ;;00085-4334-01
 ;;9002226.02101,"1906,00173-0600-02 ",.01)
 ;;00173-0600-02
 ;;9002226.02101,"1906,00173-0600-02 ",.02)
 ;;00173-0600-02
 ;;9002226.02101,"1906,00173-0601-00 ",.01)
 ;;00173-0601-00
 ;;9002226.02101,"1906,00173-0601-00 ",.02)
 ;;00173-0601-00
 ;;9002226.02101,"1906,00173-0601-02 ",.01)
 ;;00173-0601-02
 ;;9002226.02101,"1906,00173-0601-02 ",.02)
 ;;00173-0601-02
 ;;9002226.02101,"1906,00173-0602-00 ",.01)
 ;;00173-0602-00
 ;;9002226.02101,"1906,00173-0602-00 ",.02)
 ;;00173-0602-00
 ;;9002226.02101,"1906,00173-0602-02 ",.01)
 ;;00173-0602-02
 ;;9002226.02101,"1906,00173-0602-02 ",.02)
 ;;00173-0602-02
 ;;9002226.02101,"1906,00173-0718-20 ",.01)
 ;;00173-0718-20
 ;;9002226.02101,"1906,00173-0718-20 ",.02)
 ;;00173-0718-20
 ;;9002226.02101,"1906,00173-0719-20 ",.01)
 ;;00173-0719-20
 ;;9002226.02101,"1906,00173-0719-20 ",.02)
 ;;00173-0719-20
 ;;9002226.02101,"1906,00173-0720-20 ",.01)
 ;;00173-0720-20
 ;;9002226.02101,"1906,00173-0720-20 ",.02)
 ;;00173-0720-20
 ;;9002226.02101,"1906,00173-0874-10 ",.01)
 ;;00173-0874-10
 ;;9002226.02101,"1906,00173-0874-10 ",.02)
 ;;00173-0874-10
 ;;9002226.02101,"1906,00173-0874-14 ",.01)
 ;;00173-0874-14
 ;;9002226.02101,"1906,00173-0874-14 ",.02)
 ;;00173-0874-14
 ;;9002226.02101,"1906,00173-0876-10 ",.01)
 ;;00173-0876-10
 ;;9002226.02101,"1906,00173-0876-10 ",.02)
 ;;00173-0876-10
 ;;9002226.02101,"1906,00173-0876-14 ",.01)
 ;;00173-0876-14
 ;;9002226.02101,"1906,00173-0876-14 ",.02)
 ;;00173-0876-14
 ;;9002226.02101,"1906,00186-0916-12 ",.01)
 ;;00186-0916-12
 ;;9002226.02101,"1906,00186-0916-12 ",.02)
 ;;00186-0916-12
 ;;9002226.02101,"1906,00186-0917-06 ",.01)
 ;;00186-0917-06
 ;;9002226.02101,"1906,00186-0917-06 ",.02)
 ;;00186-0917-06
 ;;9002226.02101,"1906,16590-0860-71 ",.01)
 ;;16590-0860-71
 ;;9002226.02101,"1906,16590-0860-71 ",.02)
 ;;16590-0860-71
 ;;9002226.02101,"1906,16590-0860-72 ",.01)
 ;;16590-0860-72
 ;;9002226.02101,"1906,16590-0860-72 ",.02)
 ;;16590-0860-72
 ;;9002226.02101,"1906,21695-0291-01 ",.01)
 ;;21695-0291-01
 ;;9002226.02101,"1906,21695-0291-01 ",.02)
 ;;21695-0291-01
 ;;9002226.02101,"1906,35356-0099-14 ",.01)
 ;;35356-0099-14
 ;;9002226.02101,"1906,35356-0099-14 ",.02)
 ;;35356-0099-14
 ;;9002226.02101,"1906,35356-0157-01 ",.01)
 ;;35356-0157-01
 ;;9002226.02101,"1906,35356-0157-01 ",.02)
 ;;35356-0157-01
 ;;9002226.02101,"1906,35356-0494-01 ",.01)
 ;;35356-0494-01
 ;;9002226.02101,"1906,35356-0494-01 ",.02)
 ;;35356-0494-01
 ;;9002226.02101,"1906,49999-0614-01 ",.01)
 ;;49999-0614-01
 ;;9002226.02101,"1906,49999-0614-01 ",.02)
 ;;49999-0614-01
 ;;9002226.02101,"1906,49999-0614-12 ",.01)
 ;;49999-0614-12
 ;;9002226.02101,"1906,49999-0614-12 ",.02)
 ;;49999-0614-12
 ;;9002226.02101,"1906,54569-5663-00 ",.01)
 ;;54569-5663-00
 ;;9002226.02101,"1906,54569-5663-00 ",.02)
 ;;54569-5663-00
 ;;9002226.02101,"1906,54569-5671-00 ",.01)
 ;;54569-5671-00
 ;;9002226.02101,"1906,54569-5671-00 ",.02)
 ;;54569-5671-00
 ;;9002226.02101,"1906,54569-5702-00 ",.01)
 ;;54569-5702-00
 ;;9002226.02101,"1906,54569-5702-00 ",.02)
 ;;54569-5702-00
 ;;9002226.02101,"1906,54569-5928-00 ",.01)
 ;;54569-5928-00
 ;;9002226.02101,"1906,54569-5928-00 ",.02)
 ;;54569-5928-00
 ;;9002226.02101,"1906,54569-6265-00 ",.01)
 ;;54569-6265-00
 ;;9002226.02101,"1906,54569-6265-00 ",.02)
 ;;54569-6265-00
 ;;9002226.02101,"1906,54569-6266-00 ",.01)
 ;;54569-6266-00
 ;;9002226.02101,"1906,54569-6266-00 ",.02)
 ;;54569-6266-00
 ;;9002226.02101,"1906,54569-6390-00 ",.01)
 ;;54569-6390-00
 ;;9002226.02101,"1906,54569-6390-00 ",.02)
 ;;54569-6390-00
 ;;9002226.02101,"1906,54868-5362-00 ",.01)
 ;;54868-5362-00
 ;;9002226.02101,"1906,54868-5362-00 ",.02)
 ;;54868-5362-00
 ;;9002226.02101,"1906,54868-5547-00 ",.01)
 ;;54868-5547-00
 ;;9002226.02101,"1906,54868-5547-00 ",.02)
 ;;54868-5547-00
 ;;9002226.02101,"1906,54868-5547-01 ",.01)
 ;;54868-5547-01
 ;;9002226.02101,"1906,54868-5547-01 ",.02)
 ;;54868-5547-01
 ;;9002226.02101,"1906,54868-5547-02 ",.01)
 ;;54868-5547-02
 ;;9002226.02101,"1906,54868-5547-02 ",.02)
 ;;54868-5547-02
 ;;9002226.02101,"1906,54868-5637-00 ",.01)
 ;;54868-5637-00
 ;;9002226.02101,"1906,54868-5637-00 ",.02)
 ;;54868-5637-00
 ;;9002226.02101,"1906,54868-5844-00 ",.01)
 ;;54868-5844-00
 ;;9002226.02101,"1906,54868-5844-00 ",.02)
 ;;54868-5844-00
 ;;9002226.02101,"1906,54868-5857-00 ",.01)
 ;;54868-5857-00
 ;;9002226.02101,"1906,54868-5857-00 ",.02)
 ;;54868-5857-00
 ;;9002226.02101,"1906,54868-5857-01 ",.01)
 ;;54868-5857-01
 ;;9002226.02101,"1906,54868-5857-01 ",.02)
 ;;54868-5857-01
 ;;9002226.02101,"1906,54868-5858-00 ",.01)
 ;;54868-5858-00
 ;;9002226.02101,"1906,54868-5858-00 ",.02)
 ;;54868-5858-00
 ;;9002226.02101,"1906,54868-5858-01 ",.01)
 ;;54868-5858-01
 ;;9002226.02101,"1906,54868-5858-01 ",.02)
 ;;54868-5858-01
 ;;9002226.02101,"1906,54868-5989-00 ",.01)
 ;;54868-5989-00
 ;;9002226.02101,"1906,54868-5989-00 ",.02)
 ;;54868-5989-00
 ;;9002226.02101,"1906,54868-5990-00 ",.01)
 ;;54868-5990-00
 ;;9002226.02101,"1906,54868-5990-00 ",.02)
 ;;54868-5990-00
 ;;9002226.02101,"1906,54868-5995-00 ",.01)
 ;;54868-5995-00
 ;;9002226.02101,"1906,54868-5995-00 ",.02)
 ;;54868-5995-00
 ;;9002226.02101,"1906,55045-3351-00 ",.01)
 ;;55045-3351-00
 ;;9002226.02101,"1906,55045-3351-00 ",.02)
 ;;55045-3351-00
 ;;9002226.02101,"1906,55045-3354-00 ",.01)
 ;;55045-3354-00
 ;;9002226.02101,"1906,55045-3354-00 ",.02)
 ;;55045-3354-00
 ;;9002226.02101,"1906,55045-3416-00 ",.01)
 ;;55045-3416-00
 ;;9002226.02101,"1906,55045-3416-00 ",.02)
 ;;55045-3416-00
 ;;9002226.02101,"1906,59310-0175-40 ",.01)
 ;;59310-0175-40
 ;;9002226.02101,"1906,59310-0175-40 ",.02)
 ;;59310-0175-40
 ;;9002226.02101,"1906,59310-0177-80 ",.01)
 ;;59310-0177-80
 ;;9002226.02101,"1906,59310-0177-80 ",.02)
 ;;59310-0177-80
 ;;9002226.02101,"1906,59310-0202-12 ",.01)
 ;;59310-0202-12
 ;;9002226.02101,"1906,59310-0202-12 ",.02)
 ;;59310-0202-12
 ;;9002226.02101,"1906,59310-0202-40 ",.01)
 ;;59310-0202-40
 ;;9002226.02101,"1906,59310-0202-40 ",.02)
 ;;59310-0202-40
 ;;9002226.02101,"1906,59310-0204-12 ",.01)
 ;;59310-0204-12
 ;;9002226.02101,"1906,59310-0204-12 ",.02)
 ;;59310-0204-12
 ;;9002226.02101,"1906,59310-0204-80 ",.01)
 ;;59310-0204-80
 ;;9002226.02101,"1906,59310-0204-80 ",.02)
 ;;59310-0204-80
 ;;9002226.02101,"1906,63402-0711-01 ",.01)
 ;;63402-0711-01
 ;;9002226.02101,"1906,63402-0711-01 ",.02)
 ;;63402-0711-01
 ;;9002226.02101,"1906,63402-0712-01 ",.01)
 ;;63402-0712-01
 ;;9002226.02101,"1906,63402-0712-01 ",.02)
 ;;63402-0712-01
 ;;9002226.02101,"1906,68258-8913-06 ",.01)
 ;;68258-8913-06
 ;;9002226.02101,"1906,68258-8913-06 ",.02)
 ;;68258-8913-06
 ;;9002226.02101,"1906,68258-8933-08 ",.01)
 ;;68258-8933-08
 ;;9002226.02101,"1906,68258-8933-08 ",.02)
 ;;68258-8933-08
 ;;9002226.02101,"1906,68258-8964-08 ",.01)
 ;;68258-8964-08
 ;;9002226.02101,"1906,68258-8964-08 ",.02)
 ;;68258-8964-08
 ;;9002226.02101,"1906,75989-0550-06 ",.01)
 ;;75989-0550-06
 ;;9002226.02101,"1906,75989-0550-06 ",.02)
 ;;75989-0550-06
 ;;9002226.02101,"1906,75989-0550-12 ",.01)
 ;;75989-0550-12
 ;;9002226.02101,"1906,75989-0550-12 ",.02)
 ;;75989-0550-12
 ;
OTHER ; OTHER ROUTINES
 Q
