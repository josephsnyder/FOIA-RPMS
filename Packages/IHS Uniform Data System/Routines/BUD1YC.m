BUD1YC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON JAN 19, 2012 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
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
 ;;21,"00085-0614-02 ")
 ;;1
 ;;21,"00085-0614-03 ")
 ;;2
 ;;21,"00085-1132-01 ")
 ;;3
 ;;21,"00089-0790-21 ")
 ;;4
 ;;21,"00089-0815-21 ")
 ;;5
 ;;21,"00172-4390-18 ")
 ;;6
 ;;21,"00173-0321-88 ")
 ;;7
 ;;21,"00173-0321-98 ")
 ;;8
 ;;21,"00173-0682-00 ")
 ;;9
 ;;21,"00173-0682-20 ")
 ;;10
 ;;21,"00173-0682-21 ")
 ;;11
 ;;21,"00173-0682-24 ")
 ;;12
 ;;21,"00173-0682-54 ")
 ;;13
 ;;21,"00173-0682-81 ")
 ;;14
 ;;21,"12280-0409-15 ")
 ;;15
 ;;21,"16590-0004-17 ")
 ;;16
 ;;21,"16590-0339-60 ")
 ;;17
 ;;21,"17270-0721-01 ")
 ;;18
 ;;21,"21695-0198-01 ")
 ;;19
 ;;21,"21695-0423-08 ")
 ;;20
 ;;21,"21695-0851-85 ")
 ;;21
 ;;21,"23490-5019-01 ")
 ;;22
 ;;21,"23490-7972-01 ")
 ;;23
 ;;21,"29336-0815-21 ")
 ;;24
 ;;21,"35356-0166-01 ")
 ;;25
 ;;21,"49502-0333-17 ")
 ;;26
 ;;21,"49999-0171-17 ")
 ;;27
 ;;21,"49999-0907-67 ")
 ;;28
 ;;21,"49999-0908-85 ")
 ;;29
 ;;21,"49999-0922-15 ")
 ;;30
 ;;21,"50111-0801-31 ")
 ;;31
 ;;21,"50111-0801-32 ")
 ;;32
 ;;21,"52555-0594-17 ")
 ;;33
 ;;21,"52959-0094-03 ")
 ;;34
 ;;21,"52959-0293-00 ")
 ;;35
 ;;21,"52959-0569-01 ")
 ;;36
 ;;21,"52959-0978-01 ")
 ;;37
 ;;21,"52959-1121-00 ")
 ;;38
 ;;21,"52959-1293-01 ")
 ;;39
 ;;21,"52959-1467-01 ")
 ;;40
 ;;21,"53002-1550-01 ")
 ;;41
 ;;21,"54569-0052-00 ")
 ;;42
 ;;21,"54569-1003-00 ")
 ;;43
 ;;21,"54569-1008-00 ")
 ;;44
 ;;21,"54569-1011-00 ")
 ;;45
 ;;21,"54569-2253-00 ")
 ;;46
 ;;21,"54569-4245-00 ")
 ;;47
 ;;21,"54569-4615-00 ")
 ;;48
 ;;21,"54569-4621-00 ")
 ;;49
 ;;21,"54569-5777-00 ")
 ;;50
 ;;21,"54569-5853-00 ")
 ;;51
 ;;21,"54569-6166-00 ")
 ;;52
 ;;21,"54569-6167-00 ")
 ;;53
 ;;21,"54868-0730-01 ")
 ;;54
 ;;21,"54868-1041-01 ")
 ;;55
 ;;21,"54868-1903-00 ")
 ;;56
 ;;21,"54868-2821-01 ")
 ;;57
 ;;21,"54868-3709-00 ")
 ;;58
 ;;21,"54868-3739-00 ")
 ;;59
 ;;21,"54868-5646-00 ")
 ;;60
 ;;21,"54868-5646-01 ")
 ;;61
 ;;21,"54868-5646-02 ")
 ;;62
 ;;21,"54868-5689-00 ")
 ;;63
 ;;21,"54868-6050-00 ")
 ;;64
 ;;21,"54868-6050-01 ")
 ;;65
 ;;21,"54868-6051-00 ")
 ;;66
 ;;21,"55045-1486-05 ")
 ;;67
 ;;21,"55045-2390-05 ")
 ;;68
 ;;21,"55045-3494-01 ")
 ;;69
 ;;21,"55887-0812-18 ")
 ;;70
 ;;21,"57866-0051-01 ")
 ;;71
 ;;21,"58016-6099-01 ")
 ;;72
 ;;21,"58016-6569-01 ")
 ;;73
 ;;21,"59310-0579-20 ")
 ;;74
 ;;21,"59930-1560-01 ")
 ;;75
 ;;21,"59930-1560-02 ")
 ;;76
 ;;21,"62037-0794-44 ")
 ;;77
 ;;21,"63402-0510-01 ")
 ;;78
 ;;21,"66116-0664-17 ")
 ;;79
 ;;21,"66267-0995-17 ")
 ;;80
 ;;21,"68115-0769-17 ")
 ;;81
 ;;21,"68115-0995-17 ")
 ;;82
 ;;21,"68258-3037-01 ")
 ;;83
 ;;21,"68258-3037-06 ")
 ;;84
 ;;21,"68258-8974-06 ")
 ;;85
 ;;9002226,1112,.01)
 ;;BGP PQA SABA NDC
 ;;9002226,1112,.02)
 ;;@
 ;;9002226,1112,.04)
 ;;n
 ;;9002226,1112,.06)
 ;;@
 ;;9002226,1112,.08)
 ;;@
 ;;9002226,1112,.09)
 ;;@
 ;;9002226,1112,.11)
 ;;@
 ;;9002226,1112,.12)
 ;;@
 ;;9002226,1112,.13)
 ;;1
 ;;9002226,1112,.14)
 ;;@
 ;;9002226,1112,.15)
 ;;@
 ;;9002226,1112,.16)
 ;;@
 ;;9002226,1112,.17)
 ;;@
 ;;9002226,1112,3101)
 ;;@
 ;;9002226.02101,"1112,00085-0614-02 ",.01)
 ;;00085-0614-02
 ;;9002226.02101,"1112,00085-0614-02 ",.02)
 ;;00085-0614-02
 ;;9002226.02101,"1112,00085-0614-03 ",.01)
 ;;00085-0614-03
 ;;9002226.02101,"1112,00085-0614-03 ",.02)
 ;;00085-0614-03
 ;;9002226.02101,"1112,00085-1132-01 ",.01)
 ;;00085-1132-01
 ;;9002226.02101,"1112,00085-1132-01 ",.02)
 ;;00085-1132-01
 ;;9002226.02101,"1112,00089-0790-21 ",.01)
 ;;00089-0790-21
 ;;9002226.02101,"1112,00089-0790-21 ",.02)
 ;;00089-0790-21
 ;;9002226.02101,"1112,00089-0815-21 ",.01)
 ;;00089-0815-21
 ;;9002226.02101,"1112,00089-0815-21 ",.02)
 ;;00089-0815-21
 ;;9002226.02101,"1112,00172-4390-18 ",.01)
 ;;00172-4390-18
 ;;9002226.02101,"1112,00172-4390-18 ",.02)
 ;;00172-4390-18
 ;;9002226.02101,"1112,00173-0321-88 ",.01)
 ;;00173-0321-88
 ;;9002226.02101,"1112,00173-0321-88 ",.02)
 ;;00173-0321-88
 ;;9002226.02101,"1112,00173-0321-98 ",.01)
 ;;00173-0321-98
 ;;9002226.02101,"1112,00173-0321-98 ",.02)
 ;;00173-0321-98
 ;;9002226.02101,"1112,00173-0682-00 ",.01)
 ;;00173-0682-00
 ;;9002226.02101,"1112,00173-0682-00 ",.02)
 ;;00173-0682-00
 ;;9002226.02101,"1112,00173-0682-20 ",.01)
 ;;00173-0682-20
 ;;9002226.02101,"1112,00173-0682-20 ",.02)
 ;;00173-0682-20
 ;;9002226.02101,"1112,00173-0682-21 ",.01)
 ;;00173-0682-21
 ;;9002226.02101,"1112,00173-0682-21 ",.02)
 ;;00173-0682-21
 ;;9002226.02101,"1112,00173-0682-24 ",.01)
 ;;00173-0682-24
 ;;9002226.02101,"1112,00173-0682-24 ",.02)
 ;;00173-0682-24
 ;;9002226.02101,"1112,00173-0682-54 ",.01)
 ;;00173-0682-54
 ;;9002226.02101,"1112,00173-0682-54 ",.02)
 ;;00173-0682-54
 ;;9002226.02101,"1112,00173-0682-81 ",.01)
 ;;00173-0682-81
 ;;9002226.02101,"1112,00173-0682-81 ",.02)
 ;;00173-0682-81
 ;;9002226.02101,"1112,12280-0409-15 ",.01)
 ;;12280-0409-15
 ;;9002226.02101,"1112,12280-0409-15 ",.02)
 ;;12280-0409-15
 ;;9002226.02101,"1112,16590-0004-17 ",.01)
 ;;16590-0004-17
 ;;9002226.02101,"1112,16590-0004-17 ",.02)
 ;;16590-0004-17
 ;;9002226.02101,"1112,16590-0339-60 ",.01)
 ;;16590-0339-60
 ;;9002226.02101,"1112,16590-0339-60 ",.02)
 ;;16590-0339-60
 ;;9002226.02101,"1112,17270-0721-01 ",.01)
 ;;17270-0721-01
 ;;9002226.02101,"1112,17270-0721-01 ",.02)
 ;;17270-0721-01
 ;;9002226.02101,"1112,21695-0198-01 ",.01)
 ;;21695-0198-01
 ;;9002226.02101,"1112,21695-0198-01 ",.02)
 ;;21695-0198-01
 ;;9002226.02101,"1112,21695-0423-08 ",.01)
 ;;21695-0423-08
 ;;9002226.02101,"1112,21695-0423-08 ",.02)
 ;;21695-0423-08
 ;;9002226.02101,"1112,21695-0851-85 ",.01)
 ;;21695-0851-85
 ;;9002226.02101,"1112,21695-0851-85 ",.02)
 ;;21695-0851-85
 ;;9002226.02101,"1112,23490-5019-01 ",.01)
 ;;23490-5019-01
 ;;9002226.02101,"1112,23490-5019-01 ",.02)
 ;;23490-5019-01
 ;;9002226.02101,"1112,23490-7972-01 ",.01)
 ;;23490-7972-01
 ;;9002226.02101,"1112,23490-7972-01 ",.02)
 ;;23490-7972-01
 ;;9002226.02101,"1112,29336-0815-21 ",.01)
 ;;29336-0815-21
 ;;9002226.02101,"1112,29336-0815-21 ",.02)
 ;;29336-0815-21
 ;;9002226.02101,"1112,35356-0166-01 ",.01)
 ;;35356-0166-01
 ;;9002226.02101,"1112,35356-0166-01 ",.02)
 ;;35356-0166-01
 ;;9002226.02101,"1112,49502-0333-17 ",.01)
 ;;49502-0333-17
 ;;9002226.02101,"1112,49502-0333-17 ",.02)
 ;;49502-0333-17
 ;;9002226.02101,"1112,49999-0171-17 ",.01)
 ;;49999-0171-17
 ;;9002226.02101,"1112,49999-0171-17 ",.02)
 ;;49999-0171-17
 ;;9002226.02101,"1112,49999-0907-67 ",.01)
 ;;49999-0907-67
 ;;9002226.02101,"1112,49999-0907-67 ",.02)
 ;;49999-0907-67
 ;;9002226.02101,"1112,49999-0908-85 ",.01)
 ;;49999-0908-85
 ;;9002226.02101,"1112,49999-0908-85 ",.02)
 ;;49999-0908-85
 ;;9002226.02101,"1112,49999-0922-15 ",.01)
 ;;49999-0922-15
 ;;9002226.02101,"1112,49999-0922-15 ",.02)
 ;;49999-0922-15
 ;;9002226.02101,"1112,50111-0801-31 ",.01)
 ;;50111-0801-31
 ;;9002226.02101,"1112,50111-0801-31 ",.02)
 ;;50111-0801-31
 ;;9002226.02101,"1112,50111-0801-32 ",.01)
 ;;50111-0801-32
 ;;9002226.02101,"1112,50111-0801-32 ",.02)
 ;;50111-0801-32
 ;;9002226.02101,"1112,52555-0594-17 ",.01)
 ;;52555-0594-17
 ;;9002226.02101,"1112,52555-0594-17 ",.02)
 ;;52555-0594-17
 ;;9002226.02101,"1112,52959-0094-03 ",.01)
 ;;52959-0094-03
 ;;9002226.02101,"1112,52959-0094-03 ",.02)
 ;;52959-0094-03
 ;;9002226.02101,"1112,52959-0293-00 ",.01)
 ;;52959-0293-00
 ;;9002226.02101,"1112,52959-0293-00 ",.02)
 ;;52959-0293-00
 ;;9002226.02101,"1112,52959-0569-01 ",.01)
 ;;52959-0569-01
 ;;9002226.02101,"1112,52959-0569-01 ",.02)
 ;;52959-0569-01
 ;;9002226.02101,"1112,52959-0978-01 ",.01)
 ;;52959-0978-01
 ;;9002226.02101,"1112,52959-0978-01 ",.02)
 ;;52959-0978-01
 ;;9002226.02101,"1112,52959-1121-00 ",.01)
 ;;52959-1121-00
 ;;9002226.02101,"1112,52959-1121-00 ",.02)
 ;;52959-1121-00
 ;;9002226.02101,"1112,52959-1293-01 ",.01)
 ;;52959-1293-01
 ;;9002226.02101,"1112,52959-1293-01 ",.02)
 ;;52959-1293-01
 ;;9002226.02101,"1112,52959-1467-01 ",.01)
 ;;52959-1467-01
 ;;9002226.02101,"1112,52959-1467-01 ",.02)
 ;;52959-1467-01
 ;;9002226.02101,"1112,53002-1550-01 ",.01)
 ;;53002-1550-01
 ;;9002226.02101,"1112,53002-1550-01 ",.02)
 ;;53002-1550-01
 ;;9002226.02101,"1112,54569-0052-00 ",.01)
 ;;54569-0052-00
 ;;9002226.02101,"1112,54569-0052-00 ",.02)
 ;;54569-0052-00
 ;;9002226.02101,"1112,54569-1003-00 ",.01)
 ;;54569-1003-00
 ;;9002226.02101,"1112,54569-1003-00 ",.02)
 ;;54569-1003-00
 ;;9002226.02101,"1112,54569-1008-00 ",.01)
 ;;54569-1008-00
 ;;9002226.02101,"1112,54569-1008-00 ",.02)
 ;;54569-1008-00
 ;;9002226.02101,"1112,54569-1011-00 ",.01)
 ;;54569-1011-00
 ;;9002226.02101,"1112,54569-1011-00 ",.02)
 ;;54569-1011-00
 ;;9002226.02101,"1112,54569-2253-00 ",.01)
 ;;54569-2253-00
 ;;9002226.02101,"1112,54569-2253-00 ",.02)
 ;;54569-2253-00
 ;;9002226.02101,"1112,54569-4245-00 ",.01)
 ;;54569-4245-00
 ;;9002226.02101,"1112,54569-4245-00 ",.02)
 ;;54569-4245-00
 ;;9002226.02101,"1112,54569-4615-00 ",.01)
 ;;54569-4615-00
 ;;9002226.02101,"1112,54569-4615-00 ",.02)
 ;;54569-4615-00
 ;;9002226.02101,"1112,54569-4621-00 ",.01)
 ;;54569-4621-00
 ;;9002226.02101,"1112,54569-4621-00 ",.02)
 ;;54569-4621-00
 ;;9002226.02101,"1112,54569-5777-00 ",.01)
 ;;54569-5777-00
 ;;9002226.02101,"1112,54569-5777-00 ",.02)
 ;;54569-5777-00
 ;;9002226.02101,"1112,54569-5853-00 ",.01)
 ;;54569-5853-00
 ;;9002226.02101,"1112,54569-5853-00 ",.02)
 ;;54569-5853-00
 ;;9002226.02101,"1112,54569-6166-00 ",.01)
 ;;54569-6166-00
 ;;9002226.02101,"1112,54569-6166-00 ",.02)
 ;;54569-6166-00
 ;;9002226.02101,"1112,54569-6167-00 ",.01)
 ;;54569-6167-00
 ;;9002226.02101,"1112,54569-6167-00 ",.02)
 ;;54569-6167-00
 ;;9002226.02101,"1112,54868-0730-01 ",.01)
 ;;54868-0730-01
 ;;9002226.02101,"1112,54868-0730-01 ",.02)
 ;;54868-0730-01
 ;;9002226.02101,"1112,54868-1041-01 ",.01)
 ;;54868-1041-01
 ;;9002226.02101,"1112,54868-1041-01 ",.02)
 ;;54868-1041-01
 ;;9002226.02101,"1112,54868-1903-00 ",.01)
 ;;54868-1903-00
 ;;9002226.02101,"1112,54868-1903-00 ",.02)
 ;;54868-1903-00
 ;;9002226.02101,"1112,54868-2821-01 ",.01)
 ;;54868-2821-01
 ;;9002226.02101,"1112,54868-2821-01 ",.02)
 ;;54868-2821-01
 ;;9002226.02101,"1112,54868-3709-00 ",.01)
 ;;54868-3709-00
 ;;9002226.02101,"1112,54868-3709-00 ",.02)
 ;;54868-3709-00
 ;;9002226.02101,"1112,54868-3739-00 ",.01)
 ;;54868-3739-00
 ;;9002226.02101,"1112,54868-3739-00 ",.02)
 ;;54868-3739-00
 ;;9002226.02101,"1112,54868-5646-00 ",.01)
 ;;54868-5646-00
 ;;9002226.02101,"1112,54868-5646-00 ",.02)
 ;;54868-5646-00
 ;;9002226.02101,"1112,54868-5646-01 ",.01)
 ;;54868-5646-01
 ;;9002226.02101,"1112,54868-5646-01 ",.02)
 ;;54868-5646-01
 ;;9002226.02101,"1112,54868-5646-02 ",.01)
 ;;54868-5646-02
 ;;9002226.02101,"1112,54868-5646-02 ",.02)
 ;;54868-5646-02
 ;;9002226.02101,"1112,54868-5689-00 ",.01)
 ;;54868-5689-00
 ;;9002226.02101,"1112,54868-5689-00 ",.02)
 ;;54868-5689-00
 ;;9002226.02101,"1112,54868-6050-00 ",.01)
 ;;54868-6050-00
 ;;9002226.02101,"1112,54868-6050-00 ",.02)
 ;;54868-6050-00
 ;;9002226.02101,"1112,54868-6050-01 ",.01)
 ;;54868-6050-01
 ;;9002226.02101,"1112,54868-6050-01 ",.02)
 ;;54868-6050-01
 ;;9002226.02101,"1112,54868-6051-00 ",.01)
 ;;54868-6051-00
 ;;9002226.02101,"1112,54868-6051-00 ",.02)
 ;;54868-6051-00
 ;;9002226.02101,"1112,55045-1486-05 ",.01)
 ;;55045-1486-05
 ;;9002226.02101,"1112,55045-1486-05 ",.02)
 ;;55045-1486-05
 ;;9002226.02101,"1112,55045-2390-05 ",.01)
 ;;55045-2390-05
 ;;9002226.02101,"1112,55045-2390-05 ",.02)
 ;;55045-2390-05
 ;;9002226.02101,"1112,55045-3494-01 ",.01)
 ;;55045-3494-01
 ;;9002226.02101,"1112,55045-3494-01 ",.02)
 ;;55045-3494-01
 ;;9002226.02101,"1112,55887-0812-18 ",.01)
 ;;55887-0812-18
 ;;9002226.02101,"1112,55887-0812-18 ",.02)
 ;;55887-0812-18
 ;;9002226.02101,"1112,57866-0051-01 ",.01)
 ;;57866-0051-01
 ;;9002226.02101,"1112,57866-0051-01 ",.02)
 ;;57866-0051-01
 ;;9002226.02101,"1112,58016-6099-01 ",.01)
 ;;58016-6099-01
 ;;9002226.02101,"1112,58016-6099-01 ",.02)
 ;;58016-6099-01
 ;;9002226.02101,"1112,58016-6569-01 ",.01)
 ;;58016-6569-01
 ;;9002226.02101,"1112,58016-6569-01 ",.02)
 ;;58016-6569-01
 ;;9002226.02101,"1112,59310-0579-20 ",.01)
 ;;59310-0579-20
 ;;9002226.02101,"1112,59310-0579-20 ",.02)
 ;;59310-0579-20
 ;;9002226.02101,"1112,59930-1560-01 ",.01)
 ;;59930-1560-01
 ;;9002226.02101,"1112,59930-1560-01 ",.02)
 ;;59930-1560-01
 ;;9002226.02101,"1112,59930-1560-02 ",.01)
 ;;59930-1560-02
 ;;9002226.02101,"1112,59930-1560-02 ",.02)
 ;;59930-1560-02
 ;;9002226.02101,"1112,62037-0794-44 ",.01)
 ;;62037-0794-44
 ;;9002226.02101,"1112,62037-0794-44 ",.02)
 ;;62037-0794-44
 ;;9002226.02101,"1112,63402-0510-01 ",.01)
 ;;63402-0510-01
 ;;9002226.02101,"1112,63402-0510-01 ",.02)
 ;;63402-0510-01
 ;;9002226.02101,"1112,66116-0664-17 ",.01)
 ;;66116-0664-17
 ;;9002226.02101,"1112,66116-0664-17 ",.02)
 ;;66116-0664-17
 ;;9002226.02101,"1112,66267-0995-17 ",.01)
 ;;66267-0995-17
 ;;9002226.02101,"1112,66267-0995-17 ",.02)
 ;;66267-0995-17
 ;;9002226.02101,"1112,68115-0769-17 ",.01)
 ;;68115-0769-17
 ;;9002226.02101,"1112,68115-0769-17 ",.02)
 ;;68115-0769-17
 ;;9002226.02101,"1112,68115-0995-17 ",.01)
 ;;68115-0995-17
 ;
OTHER ; OTHER ROUTINES
 D ^BUD1YCB
 Q
