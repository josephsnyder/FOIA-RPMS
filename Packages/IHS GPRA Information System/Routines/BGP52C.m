BGP52C ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
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
 ;;51
 ;;21,"00085-1341-02 ")
 ;;57
 ;;21,"00085-1341-03 ")
 ;;56
 ;;21,"00085-1341-04 ")
 ;;52
 ;;21,"00085-1341-06 ")
 ;;53
 ;;21,"00085-1341-07 ")
 ;;55
 ;;21,"00085-1461-02 ")
 ;;49
 ;;21,"00085-1461-07 ")
 ;;50
 ;;21,"00173-0600-02 ")
 ;;25
 ;;21,"00173-0601-00 ")
 ;;31
 ;;21,"00173-0601-02 ")
 ;;32
 ;;21,"00173-0602-00 ")
 ;;27
 ;;21,"00173-0602-02 ")
 ;;28
 ;;21,"00173-0718-20 ")
 ;;33
 ;;21,"00173-0719-20 ")
 ;;43
 ;;21,"00173-0720-20 ")
 ;;44
 ;;21,"00186-0916-12 ")
 ;;16
 ;;21,"00186-0917-06 ")
 ;;15
 ;;21,"16590-0860-71 ")
 ;;6
 ;;21,"16590-0860-72 ")
 ;;7
 ;;21,"21695-0291-01 ")
 ;;14
 ;;21,"23490-7026-01 ")
 ;;45
 ;;21,"35356-0099-14 ")
 ;;54
 ;;21,"35356-0157-01 ")
 ;;34
 ;;21,"35356-0494-01 ")
 ;;26
 ;;21,"49999-0614-01 ")
 ;;41
 ;;21,"49999-0614-12 ")
 ;;42
 ;;21,"54569-5663-00 ")
 ;;40
 ;;21,"54569-5671-00 ")
 ;;35
 ;;21,"54569-5702-00 ")
 ;;46
 ;;21,"54569-5928-00 ")
 ;;17
 ;;21,"54569-6265-00 ")
 ;;24
 ;;21,"54569-6266-00 ")
 ;;29
 ;;21,"54569-6390-00 ")
 ;;13
 ;;21,"54868-5362-00 ")
 ;;38
 ;;21,"54868-5547-00 ")
 ;;58
 ;;21,"54868-5547-01 ")
 ;;59
 ;;21,"54868-5547-02 ")
 ;;60
 ;;21,"54868-5637-00 ")
 ;;48
 ;;21,"54868-5844-00 ")
 ;;18
 ;;21,"54868-5857-00 ")
 ;;1
 ;;21,"54868-5857-01 ")
 ;;2
 ;;21,"54868-5858-00 ")
 ;;11
 ;;21,"54868-5858-01 ")
 ;;12
 ;;21,"54868-5989-00 ")
 ;;19
 ;;21,"54868-5990-00 ")
 ;;22
 ;;21,"54868-5995-00 ")
 ;;36
 ;;21,"55045-3351-00 ")
 ;;39
 ;;21,"55045-3354-00 ")
 ;;47
 ;;21,"55045-3416-00 ")
 ;;37
 ;;21,"59310-0175-40 ")
 ;;3
 ;;21,"59310-0177-80 ")
 ;;10
 ;;21,"59310-0202-40 ")
 ;;5
 ;;21,"59310-0204-80 ")
 ;;8
 ;;21,"63402-0711-01 ")
 ;;20
 ;;21,"63402-0712-01 ")
 ;;21
 ;;21,"68258-8913-06 ")
 ;;30
 ;;21,"68258-8933-08 ")
 ;;9
 ;;21,"68258-8964-08 ")
 ;;4
 ;;21,"75989-0550-12 ")
 ;;23
 ;;9002226,1817,.01)
 ;;BGP PQA ASTHMA INHALE STER NDC
 ;;9002226,1817,.02)
 ;;RASA NDC
 ;;9002226,1817,.04)
 ;;n
 ;;9002226,1817,.06)
 ;;@
 ;;9002226,1817,.08)
 ;;@
 ;;9002226,1817,.09)
 ;;3140819
 ;;9002226,1817,.11)
 ;;@
 ;;9002226,1817,.12)
 ;;@
 ;;9002226,1817,.13)
 ;;1
 ;;9002226,1817,.14)
 ;;@
 ;;9002226,1817,.15)
 ;;50.67
 ;;9002226,1817,.16)
 ;;@
 ;;9002226,1817,.17)
 ;;@
 ;;9002226,1817,3101)
 ;;@
 ;;9002226.02101,"1817,00085-1341-01 ",.01)
 ;;00085-1341-01
 ;;9002226.02101,"1817,00085-1341-01 ",.02)
 ;;00085-1341-01
 ;;9002226.02101,"1817,00085-1341-02 ",.01)
 ;;00085-1341-02
 ;;9002226.02101,"1817,00085-1341-02 ",.02)
 ;;00085-1341-02
 ;;9002226.02101,"1817,00085-1341-03 ",.01)
 ;;00085-1341-03
 ;;9002226.02101,"1817,00085-1341-03 ",.02)
 ;;00085-1341-03
 ;;9002226.02101,"1817,00085-1341-04 ",.01)
 ;;00085-1341-04
 ;;9002226.02101,"1817,00085-1341-04 ",.02)
 ;;00085-1341-04
 ;;9002226.02101,"1817,00085-1341-06 ",.01)
 ;;00085-1341-06
 ;;9002226.02101,"1817,00085-1341-06 ",.02)
 ;;00085-1341-06
 ;;9002226.02101,"1817,00085-1341-07 ",.01)
 ;;00085-1341-07
 ;;9002226.02101,"1817,00085-1341-07 ",.02)
 ;;00085-1341-07
 ;;9002226.02101,"1817,00085-1461-02 ",.01)
 ;;00085-1461-02
 ;;9002226.02101,"1817,00085-1461-02 ",.02)
 ;;00085-1461-02
 ;;9002226.02101,"1817,00085-1461-07 ",.01)
 ;;00085-1461-07
 ;;9002226.02101,"1817,00085-1461-07 ",.02)
 ;;00085-1461-07
 ;;9002226.02101,"1817,00173-0600-02 ",.01)
 ;;00173-0600-02
 ;;9002226.02101,"1817,00173-0600-02 ",.02)
 ;;00173-0600-02
 ;;9002226.02101,"1817,00173-0601-00 ",.01)
 ;;00173-0601-00
 ;;9002226.02101,"1817,00173-0601-00 ",.02)
 ;;00173-0601-00
 ;;9002226.02101,"1817,00173-0601-02 ",.01)
 ;;00173-0601-02
 ;;9002226.02101,"1817,00173-0601-02 ",.02)
 ;;00173-0601-02
 ;;9002226.02101,"1817,00173-0602-00 ",.01)
 ;;00173-0602-00
 ;;9002226.02101,"1817,00173-0602-00 ",.02)
 ;;00173-0602-00
 ;;9002226.02101,"1817,00173-0602-02 ",.01)
 ;;00173-0602-02
 ;;9002226.02101,"1817,00173-0602-02 ",.02)
 ;;00173-0602-02
 ;;9002226.02101,"1817,00173-0718-20 ",.01)
 ;;00173-0718-20
 ;;9002226.02101,"1817,00173-0718-20 ",.02)
 ;;00173-0718-20
 ;;9002226.02101,"1817,00173-0719-20 ",.01)
 ;;00173-0719-20
 ;;9002226.02101,"1817,00173-0719-20 ",.02)
 ;;00173-0719-20
 ;;9002226.02101,"1817,00173-0720-20 ",.01)
 ;;00173-0720-20
 ;;9002226.02101,"1817,00173-0720-20 ",.02)
 ;;00173-0720-20
 ;;9002226.02101,"1817,00186-0916-12 ",.01)
 ;;00186-0916-12
 ;;9002226.02101,"1817,00186-0916-12 ",.02)
 ;;00186-0916-12
 ;;9002226.02101,"1817,00186-0917-06 ",.01)
 ;;00186-0917-06
 ;;9002226.02101,"1817,00186-0917-06 ",.02)
 ;;00186-0917-06
 ;;9002226.02101,"1817,16590-0860-71 ",.01)
 ;;16590-0860-71
 ;;9002226.02101,"1817,16590-0860-71 ",.02)
 ;;16590-0860-71
 ;;9002226.02101,"1817,16590-0860-72 ",.01)
 ;;16590-0860-72
 ;;9002226.02101,"1817,16590-0860-72 ",.02)
 ;;16590-0860-72
 ;;9002226.02101,"1817,21695-0291-01 ",.01)
 ;;21695-0291-01
 ;;9002226.02101,"1817,21695-0291-01 ",.02)
 ;;21695-0291-01
 ;;9002226.02101,"1817,23490-7026-01 ",.01)
 ;;23490-7026-01
 ;;9002226.02101,"1817,23490-7026-01 ",.02)
 ;;23490-7026-01
 ;;9002226.02101,"1817,35356-0099-14 ",.01)
 ;;35356-0099-14
 ;;9002226.02101,"1817,35356-0099-14 ",.02)
 ;;35356-0099-14
 ;;9002226.02101,"1817,35356-0157-01 ",.01)
 ;;35356-0157-01
 ;;9002226.02101,"1817,35356-0157-01 ",.02)
 ;;35356-0157-01
 ;;9002226.02101,"1817,35356-0494-01 ",.01)
 ;;35356-0494-01
 ;;9002226.02101,"1817,35356-0494-01 ",.02)
 ;;35356-0494-01
 ;;9002226.02101,"1817,49999-0614-01 ",.01)
 ;;49999-0614-01
 ;;9002226.02101,"1817,49999-0614-01 ",.02)
 ;;49999-0614-01
 ;;9002226.02101,"1817,49999-0614-12 ",.01)
 ;;49999-0614-12
 ;;9002226.02101,"1817,49999-0614-12 ",.02)
 ;;49999-0614-12
 ;;9002226.02101,"1817,54569-5663-00 ",.01)
 ;;54569-5663-00
 ;;9002226.02101,"1817,54569-5663-00 ",.02)
 ;;54569-5663-00
 ;;9002226.02101,"1817,54569-5671-00 ",.01)
 ;;54569-5671-00
 ;;9002226.02101,"1817,54569-5671-00 ",.02)
 ;;54569-5671-00
 ;;9002226.02101,"1817,54569-5702-00 ",.01)
 ;;54569-5702-00
 ;;9002226.02101,"1817,54569-5702-00 ",.02)
 ;;54569-5702-00
 ;;9002226.02101,"1817,54569-5928-00 ",.01)
 ;;54569-5928-00
 ;;9002226.02101,"1817,54569-5928-00 ",.02)
 ;;54569-5928-00
 ;;9002226.02101,"1817,54569-6265-00 ",.01)
 ;;54569-6265-00
 ;;9002226.02101,"1817,54569-6265-00 ",.02)
 ;;54569-6265-00
 ;;9002226.02101,"1817,54569-6266-00 ",.01)
 ;;54569-6266-00
 ;;9002226.02101,"1817,54569-6266-00 ",.02)
 ;;54569-6266-00
 ;;9002226.02101,"1817,54569-6390-00 ",.01)
 ;;54569-6390-00
 ;;9002226.02101,"1817,54569-6390-00 ",.02)
 ;;54569-6390-00
 ;;9002226.02101,"1817,54868-5362-00 ",.01)
 ;;54868-5362-00
 ;;9002226.02101,"1817,54868-5362-00 ",.02)
 ;;54868-5362-00
 ;;9002226.02101,"1817,54868-5547-00 ",.01)
 ;;54868-5547-00
 ;;9002226.02101,"1817,54868-5547-00 ",.02)
 ;;54868-5547-00
 ;;9002226.02101,"1817,54868-5547-01 ",.01)
 ;;54868-5547-01
 ;;9002226.02101,"1817,54868-5547-01 ",.02)
 ;;54868-5547-01
 ;;9002226.02101,"1817,54868-5547-02 ",.01)
 ;;54868-5547-02
 ;;9002226.02101,"1817,54868-5547-02 ",.02)
 ;;54868-5547-02
 ;;9002226.02101,"1817,54868-5637-00 ",.01)
 ;;54868-5637-00
 ;;9002226.02101,"1817,54868-5637-00 ",.02)
 ;;54868-5637-00
 ;;9002226.02101,"1817,54868-5844-00 ",.01)
 ;;54868-5844-00
 ;;9002226.02101,"1817,54868-5844-00 ",.02)
 ;;54868-5844-00
 ;;9002226.02101,"1817,54868-5857-00 ",.01)
 ;;54868-5857-00
 ;;9002226.02101,"1817,54868-5857-00 ",.02)
 ;;54868-5857-00
 ;;9002226.02101,"1817,54868-5857-01 ",.01)
 ;;54868-5857-01
 ;;9002226.02101,"1817,54868-5857-01 ",.02)
 ;;54868-5857-01
 ;;9002226.02101,"1817,54868-5858-00 ",.01)
 ;;54868-5858-00
 ;;9002226.02101,"1817,54868-5858-00 ",.02)
 ;;54868-5858-00
 ;;9002226.02101,"1817,54868-5858-01 ",.01)
 ;;54868-5858-01
 ;;9002226.02101,"1817,54868-5858-01 ",.02)
 ;;54868-5858-01
 ;;9002226.02101,"1817,54868-5989-00 ",.01)
 ;;54868-5989-00
 ;;9002226.02101,"1817,54868-5989-00 ",.02)
 ;;54868-5989-00
 ;;9002226.02101,"1817,54868-5990-00 ",.01)
 ;;54868-5990-00
 ;;9002226.02101,"1817,54868-5990-00 ",.02)
 ;;54868-5990-00
 ;;9002226.02101,"1817,54868-5995-00 ",.01)
 ;;54868-5995-00
 ;;9002226.02101,"1817,54868-5995-00 ",.02)
 ;;54868-5995-00
 ;;9002226.02101,"1817,55045-3351-00 ",.01)
 ;;55045-3351-00
 ;;9002226.02101,"1817,55045-3351-00 ",.02)
 ;;55045-3351-00
 ;;9002226.02101,"1817,55045-3354-00 ",.01)
 ;;55045-3354-00
 ;;9002226.02101,"1817,55045-3354-00 ",.02)
 ;;55045-3354-00
 ;;9002226.02101,"1817,55045-3416-00 ",.01)
 ;;55045-3416-00
 ;;9002226.02101,"1817,55045-3416-00 ",.02)
 ;;55045-3416-00
 ;;9002226.02101,"1817,59310-0175-40 ",.01)
 ;;59310-0175-40
 ;;9002226.02101,"1817,59310-0175-40 ",.02)
 ;;59310-0175-40
 ;;9002226.02101,"1817,59310-0177-80 ",.01)
 ;;59310-0177-80
 ;;9002226.02101,"1817,59310-0177-80 ",.02)
 ;;59310-0177-80
 ;;9002226.02101,"1817,59310-0202-40 ",.01)
 ;;59310-0202-40
 ;;9002226.02101,"1817,59310-0202-40 ",.02)
 ;;59310-0202-40
 ;;9002226.02101,"1817,59310-0204-80 ",.01)
 ;;59310-0204-80
 ;;9002226.02101,"1817,59310-0204-80 ",.02)
 ;;59310-0204-80
 ;;9002226.02101,"1817,63402-0711-01 ",.01)
 ;;63402-0711-01
 ;;9002226.02101,"1817,63402-0711-01 ",.02)
 ;;63402-0711-01
 ;;9002226.02101,"1817,63402-0712-01 ",.01)
 ;;63402-0712-01
 ;;9002226.02101,"1817,63402-0712-01 ",.02)
 ;;63402-0712-01
 ;;9002226.02101,"1817,68258-8913-06 ",.01)
 ;;68258-8913-06
 ;;9002226.02101,"1817,68258-8913-06 ",.02)
 ;;68258-8913-06
 ;;9002226.02101,"1817,68258-8933-08 ",.01)
 ;;68258-8933-08
 ;;9002226.02101,"1817,68258-8933-08 ",.02)
 ;;68258-8933-08
 ;;9002226.02101,"1817,68258-8964-08 ",.01)
 ;;68258-8964-08
 ;;9002226.02101,"1817,68258-8964-08 ",.02)
 ;;68258-8964-08
 ;;9002226.02101,"1817,75989-0550-12 ",.01)
 ;;75989-0550-12
 ;;9002226.02101,"1817,75989-0550-12 ",.02)
 ;;75989-0550-12
 ;
OTHER ; OTHER ROUTINES
 Q
