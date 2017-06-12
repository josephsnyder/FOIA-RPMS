BGP51Y ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;;BGP PQA SABA NDC
 ;
 ; This routine loads Taxonomy BGP PQA SABA NDC
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
 ;;21,"00085-1132-01 ")
 ;;22
 ;;21,"00173-0682-20 ")
 ;;23
 ;;21,"00173-0682-21 ")
 ;;24
 ;;21,"00173-0682-24 ")
 ;;25
 ;;21,"00173-0682-54 ")
 ;;26
 ;;21,"00173-0682-81 ")
 ;;27
 ;;21,"16590-0339-08 ")
 ;;34
 ;;21,"16590-0339-60 ")
 ;;35
 ;;21,"21695-0198-01 ")
 ;;1
 ;;21,"21695-0423-08 ")
 ;;32
 ;;21,"21695-0423-18 ")
 ;;33
 ;;21,"21695-0851-85 ")
 ;;2
 ;;21,"23490-7022-01 ")
 ;;31
 ;;21,"23490-7972-01 ")
 ;;3
 ;;21,"29336-0815-21 ")
 ;;51
 ;;21,"33261-0875-01 ")
 ;;4
 ;;21,"33261-0893-01 ")
 ;;30
 ;;21,"35356-0166-01 ")
 ;;28
 ;;21,"35356-0166-08 ")
 ;;29
 ;;21,"42254-0004-67 ")
 ;;21
 ;;21,"49999-0907-67 ")
 ;;20
 ;;21,"49999-0908-85 ")
 ;;5
 ;;21,"49999-0922-15 ")
 ;;44
 ;;21,"50436-6050-00 ")
 ;;43
 ;;21,"52959-0569-01 ")
 ;;16
 ;;21,"52959-0978-01 ")
 ;;14
 ;;21,"53002-1550-01 ")
 ;;13
 ;;21,"54569-4621-00 ")
 ;;17
 ;;21,"54569-5777-00 ")
 ;;12
 ;;21,"54569-5853-00 ")
 ;;45
 ;;21,"54569-6166-00 ")
 ;;41
 ;;21,"54569-6167-00 ")
 ;;42
 ;;21,"54569-6370-00 ")
 ;;15
 ;;21,"54868-2821-01 ")
 ;;50
 ;;21,"54868-5646-00 ")
 ;;9
 ;;21,"54868-5689-00 ")
 ;;46
 ;;21,"54868-6050-00 ")
 ;;38
 ;;21,"54868-6050-01 ")
 ;;39
 ;;21,"54868-6051-00 ")
 ;;18
 ;;21,"55045-3494-01 ")
 ;;10
 ;;21,"58118-0037-01 ")
 ;;40
 ;;21,"58118-9897-01 ")
 ;;47
 ;;21,"58118-9917-08 ")
 ;;11
 ;;21,"59310-0579-20 ")
 ;;7
 ;;21,"59310-0579-22 ")
 ;;8
 ;;21,"63402-0510-01 ")
 ;;48
 ;;21,"68071-1525-05 ")
 ;;6
 ;;21,"68258-3037-01 ")
 ;;36
 ;;21,"68258-3037-06 ")
 ;;37
 ;;21,"68258-8974-06 ")
 ;;19
 ;;21,"99207-0280-40 ")
 ;;49
 ;;9002226,1203,.01)
 ;;BGP PQA SABA NDC
 ;;9002226,1203,.02)
 ;;@
 ;;9002226,1203,.04)
 ;;n
 ;;9002226,1203,.06)
 ;;@
 ;;9002226,1203,.08)
 ;;@
 ;;9002226,1203,.09)
 ;;3140819
 ;;9002226,1203,.11)
 ;;@
 ;;9002226,1203,.12)
 ;;@
 ;;9002226,1203,.13)
 ;;1
 ;;9002226,1203,.14)
 ;;@
 ;;9002226,1203,.15)
 ;;50.67
 ;;9002226,1203,.16)
 ;;@
 ;;9002226,1203,.17)
 ;;@
 ;;9002226,1203,3101)
 ;;@
 ;;9002226.02101,"1203,00085-1132-01 ",.01)
 ;;00085-1132-01
 ;;9002226.02101,"1203,00085-1132-01 ",.02)
 ;;00085-1132-01
 ;;9002226.02101,"1203,00173-0682-20 ",.01)
 ;;00173-0682-20
 ;;9002226.02101,"1203,00173-0682-20 ",.02)
 ;;00173-0682-20
 ;;9002226.02101,"1203,00173-0682-21 ",.01)
 ;;00173-0682-21
 ;;9002226.02101,"1203,00173-0682-21 ",.02)
 ;;00173-0682-21
 ;;9002226.02101,"1203,00173-0682-24 ",.01)
 ;;00173-0682-24
 ;;9002226.02101,"1203,00173-0682-24 ",.02)
 ;;00173-0682-24
 ;;9002226.02101,"1203,00173-0682-54 ",.01)
 ;;00173-0682-54
 ;;9002226.02101,"1203,00173-0682-54 ",.02)
 ;;00173-0682-54
 ;;9002226.02101,"1203,00173-0682-81 ",.01)
 ;;00173-0682-81
 ;;9002226.02101,"1203,00173-0682-81 ",.02)
 ;;00173-0682-81
 ;;9002226.02101,"1203,16590-0339-08 ",.01)
 ;;16590-0339-08
 ;;9002226.02101,"1203,16590-0339-08 ",.02)
 ;;16590-0339-08
 ;;9002226.02101,"1203,16590-0339-60 ",.01)
 ;;16590-0339-60
 ;;9002226.02101,"1203,16590-0339-60 ",.02)
 ;;16590-0339-60
 ;;9002226.02101,"1203,21695-0198-01 ",.01)
 ;;21695-0198-01
 ;;9002226.02101,"1203,21695-0198-01 ",.02)
 ;;21695-0198-01
 ;;9002226.02101,"1203,21695-0423-08 ",.01)
 ;;21695-0423-08
 ;;9002226.02101,"1203,21695-0423-08 ",.02)
 ;;21695-0423-08
 ;;9002226.02101,"1203,21695-0423-18 ",.01)
 ;;21695-0423-18
 ;;9002226.02101,"1203,21695-0423-18 ",.02)
 ;;21695-0423-18
 ;;9002226.02101,"1203,21695-0851-85 ",.01)
 ;;21695-0851-85
 ;;9002226.02101,"1203,21695-0851-85 ",.02)
 ;;21695-0851-85
 ;;9002226.02101,"1203,23490-7022-01 ",.01)
 ;;23490-7022-01
 ;;9002226.02101,"1203,23490-7022-01 ",.02)
 ;;23490-7022-01
 ;;9002226.02101,"1203,23490-7972-01 ",.01)
 ;;23490-7972-01
 ;;9002226.02101,"1203,23490-7972-01 ",.02)
 ;;23490-7972-01
 ;;9002226.02101,"1203,29336-0815-21 ",.01)
 ;;29336-0815-21
 ;;9002226.02101,"1203,29336-0815-21 ",.02)
 ;;29336-0815-21
 ;;9002226.02101,"1203,33261-0875-01 ",.01)
 ;;33261-0875-01
 ;;9002226.02101,"1203,33261-0875-01 ",.02)
 ;;33261-0875-01
 ;;9002226.02101,"1203,33261-0893-01 ",.01)
 ;;33261-0893-01
 ;;9002226.02101,"1203,33261-0893-01 ",.02)
 ;;33261-0893-01
 ;;9002226.02101,"1203,35356-0166-01 ",.01)
 ;;35356-0166-01
 ;;9002226.02101,"1203,35356-0166-01 ",.02)
 ;;35356-0166-01
 ;;9002226.02101,"1203,35356-0166-08 ",.01)
 ;;35356-0166-08
 ;;9002226.02101,"1203,35356-0166-08 ",.02)
 ;;35356-0166-08
 ;;9002226.02101,"1203,42254-0004-67 ",.01)
 ;;42254-0004-67
 ;;9002226.02101,"1203,42254-0004-67 ",.02)
 ;;42254-0004-67
 ;;9002226.02101,"1203,49999-0907-67 ",.01)
 ;;49999-0907-67
 ;;9002226.02101,"1203,49999-0907-67 ",.02)
 ;;49999-0907-67
 ;;9002226.02101,"1203,49999-0908-85 ",.01)
 ;;49999-0908-85
 ;;9002226.02101,"1203,49999-0908-85 ",.02)
 ;;49999-0908-85
 ;;9002226.02101,"1203,49999-0922-15 ",.01)
 ;;49999-0922-15
 ;;9002226.02101,"1203,49999-0922-15 ",.02)
 ;;49999-0922-15
 ;;9002226.02101,"1203,50436-6050-00 ",.01)
 ;;50436-6050-00
 ;;9002226.02101,"1203,50436-6050-00 ",.02)
 ;;50436-6050-00
 ;;9002226.02101,"1203,52959-0569-01 ",.01)
 ;;52959-0569-01
 ;;9002226.02101,"1203,52959-0569-01 ",.02)
 ;;52959-0569-01
 ;;9002226.02101,"1203,52959-0978-01 ",.01)
 ;;52959-0978-01
 ;;9002226.02101,"1203,52959-0978-01 ",.02)
 ;;52959-0978-01
 ;;9002226.02101,"1203,53002-1550-01 ",.01)
 ;;53002-1550-01
 ;;9002226.02101,"1203,53002-1550-01 ",.02)
 ;;53002-1550-01
 ;;9002226.02101,"1203,54569-4621-00 ",.01)
 ;;54569-4621-00
 ;;9002226.02101,"1203,54569-4621-00 ",.02)
 ;;54569-4621-00
 ;;9002226.02101,"1203,54569-5777-00 ",.01)
 ;;54569-5777-00
 ;;9002226.02101,"1203,54569-5777-00 ",.02)
 ;;54569-5777-00
 ;;9002226.02101,"1203,54569-5853-00 ",.01)
 ;;54569-5853-00
 ;;9002226.02101,"1203,54569-5853-00 ",.02)
 ;;54569-5853-00
 ;;9002226.02101,"1203,54569-6166-00 ",.01)
 ;;54569-6166-00
 ;;9002226.02101,"1203,54569-6166-00 ",.02)
 ;;54569-6166-00
 ;;9002226.02101,"1203,54569-6167-00 ",.01)
 ;;54569-6167-00
 ;;9002226.02101,"1203,54569-6167-00 ",.02)
 ;;54569-6167-00
 ;;9002226.02101,"1203,54569-6370-00 ",.01)
 ;;54569-6370-00
 ;;9002226.02101,"1203,54569-6370-00 ",.02)
 ;;54569-6370-00
 ;;9002226.02101,"1203,54868-2821-01 ",.01)
 ;;54868-2821-01
 ;;9002226.02101,"1203,54868-2821-01 ",.02)
 ;;54868-2821-01
 ;;9002226.02101,"1203,54868-5646-00 ",.01)
 ;;54868-5646-00
 ;;9002226.02101,"1203,54868-5646-00 ",.02)
 ;;54868-5646-00
 ;;9002226.02101,"1203,54868-5689-00 ",.01)
 ;;54868-5689-00
 ;;9002226.02101,"1203,54868-5689-00 ",.02)
 ;;54868-5689-00
 ;;9002226.02101,"1203,54868-6050-00 ",.01)
 ;;54868-6050-00
 ;;9002226.02101,"1203,54868-6050-00 ",.02)
 ;;54868-6050-00
 ;;9002226.02101,"1203,54868-6050-01 ",.01)
 ;;54868-6050-01
 ;;9002226.02101,"1203,54868-6050-01 ",.02)
 ;;54868-6050-01
 ;;9002226.02101,"1203,54868-6051-00 ",.01)
 ;;54868-6051-00
 ;;9002226.02101,"1203,54868-6051-00 ",.02)
 ;;54868-6051-00
 ;;9002226.02101,"1203,55045-3494-01 ",.01)
 ;;55045-3494-01
 ;;9002226.02101,"1203,55045-3494-01 ",.02)
 ;;55045-3494-01
 ;;9002226.02101,"1203,58118-0037-01 ",.01)
 ;;58118-0037-01
 ;;9002226.02101,"1203,58118-0037-01 ",.02)
 ;;58118-0037-01
 ;;9002226.02101,"1203,58118-9897-01 ",.01)
 ;;58118-9897-01
 ;;9002226.02101,"1203,58118-9897-01 ",.02)
 ;;58118-9897-01
 ;;9002226.02101,"1203,58118-9917-08 ",.01)
 ;;58118-9917-08
 ;;9002226.02101,"1203,58118-9917-08 ",.02)
 ;;58118-9917-08
 ;;9002226.02101,"1203,59310-0579-20 ",.01)
 ;;59310-0579-20
 ;;9002226.02101,"1203,59310-0579-20 ",.02)
 ;;59310-0579-20
 ;;9002226.02101,"1203,59310-0579-22 ",.01)
 ;;59310-0579-22
 ;;9002226.02101,"1203,59310-0579-22 ",.02)
 ;;59310-0579-22
 ;;9002226.02101,"1203,63402-0510-01 ",.01)
 ;;63402-0510-01
 ;;9002226.02101,"1203,63402-0510-01 ",.02)
 ;;63402-0510-01
 ;;9002226.02101,"1203,68071-1525-05 ",.01)
 ;;68071-1525-05
 ;;9002226.02101,"1203,68071-1525-05 ",.02)
 ;;68071-1525-05
 ;;9002226.02101,"1203,68258-3037-01 ",.01)
 ;;68258-3037-01
 ;;9002226.02101,"1203,68258-3037-01 ",.02)
 ;;68258-3037-01
 ;;9002226.02101,"1203,68258-3037-06 ",.01)
 ;;68258-3037-06
 ;;9002226.02101,"1203,68258-3037-06 ",.02)
 ;;68258-3037-06
 ;;9002226.02101,"1203,68258-8974-06 ",.01)
 ;;68258-8974-06
 ;;9002226.02101,"1203,68258-8974-06 ",.02)
 ;;68258-8974-06
 ;;9002226.02101,"1203,99207-0280-40 ",.01)
 ;;99207-0280-40
 ;;9002226.02101,"1203,99207-0280-40 ",.02)
 ;;99207-0280-40
 ;
OTHER ; OTHER ROUTINES
 Q
