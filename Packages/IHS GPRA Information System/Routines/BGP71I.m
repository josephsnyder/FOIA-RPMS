BGP71I ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;;BGP ASTHMA LABA NDC
 ;
 ; This routine loads Taxonomy BGP ASTHMA LABA NDC
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
 ;;21,"00085-1401-01 ")
 ;;1
 ;;21,"00085-1402-01 ")
 ;;2
 ;;21,"00085-1402-02 ")
 ;;3
 ;;21,"00085-4610-01 ")
 ;;4
 ;;21,"00085-4610-05 ")
 ;;5
 ;;21,"00085-7206-01 ")
 ;;6
 ;;21,"00085-7206-07 ")
 ;;7
 ;;21,"00173-0520-00 ")
 ;;8
 ;;21,"00173-0521-00 ")
 ;;9
 ;;21,"00173-0695-00 ")
 ;;10
 ;;21,"00173-0695-04 ")
 ;;11
 ;;21,"00173-0696-00 ")
 ;;12
 ;;21,"00173-0696-04 ")
 ;;13
 ;;21,"00173-0697-00 ")
 ;;14
 ;;21,"00173-0697-04 ")
 ;;15
 ;;21,"00173-0715-20 ")
 ;;16
 ;;21,"00173-0715-22 ")
 ;;17
 ;;21,"00173-0716-20 ")
 ;;18
 ;;21,"00173-0716-22 ")
 ;;19
 ;;21,"00173-0717-20 ")
 ;;20
 ;;21,"00173-0717-22 ")
 ;;21
 ;;21,"00173-0859-10 ")
 ;;22
 ;;21,"00173-0859-14 ")
 ;;23
 ;;21,"00173-0882-10 ")
 ;;24
 ;;21,"00173-0882-14 ")
 ;;25
 ;;21,"00186-0370-20 ")
 ;;26
 ;;21,"00186-0370-28 ")
 ;;27
 ;;21,"00186-0372-20 ")
 ;;28
 ;;21,"00186-0372-28 ")
 ;;29
 ;;21,"21695-0196-01 ")
 ;;30
 ;;21,"21695-0197-01 ")
 ;;31
 ;;21,"21695-0361-60 ")
 ;;32
 ;;21,"33261-0873-01 ")
 ;;33
 ;;21,"33261-0874-01 ")
 ;;34
 ;;21,"49999-0300-28 ")
 ;;35
 ;;21,"49999-0819-60 ")
 ;;36
 ;;21,"49999-0984-60 ")
 ;;37
 ;;21,"49999-0985-60 ")
 ;;38
 ;;21,"54569-4867-00 ")
 ;;39
 ;;21,"54569-5241-00 ")
 ;;40
 ;;21,"54569-5242-00 ")
 ;;41
 ;;21,"54569-5243-00 ")
 ;;42
 ;;21,"54569-6466-00 ")
 ;;43
 ;;21,"54569-6611-00 ")
 ;;44
 ;;21,"54569-6612-00 ")
 ;;45
 ;;21,"54868-4481-00 ")
 ;;46
 ;;21,"54868-4516-00 ")
 ;;47
 ;;21,"54868-4517-00 ")
 ;;48
 ;;21,"54868-4518-00 ")
 ;;49
 ;;21,"54868-4972-01 ")
 ;;50
 ;;21,"54868-5936-00 ")
 ;;51
 ;;21,"54868-5937-00 ")
 ;;52
 ;;21,"68258-3031-01 ")
 ;;53
 ;;21,"68258-8961-06 ")
 ;;54
 ;;9002226,1462,.01)
 ;;BGP ASTHMA LABA NDC
 ;;9002226,1462,.02)
 ;;@
 ;;9002226,1462,.04)
 ;;n
 ;;9002226,1462,.06)
 ;;@
 ;;9002226,1462,.08)
 ;;@
 ;;9002226,1462,.09)
 ;;3160811
 ;;9002226,1462,.11)
 ;;@
 ;;9002226,1462,.12)
 ;;@
 ;;9002226,1462,.13)
 ;;1
 ;;9002226,1462,.14)
 ;;@
 ;;9002226,1462,.15)
 ;;50.67
 ;;9002226,1462,.16)
 ;;@
 ;;9002226,1462,.17)
 ;;@
 ;;9002226,1462,.22)
 ;;1
 ;;9002226,1462,3101)
 ;;@
 ;;9002226.02101,"1462,00085-1401-01 ",.01)
 ;;00085-1401-01
 ;;9002226.02101,"1462,00085-1401-01 ",.02)
 ;;00085-1401-01
 ;;9002226.02101,"1462,00085-1402-01 ",.01)
 ;;00085-1402-01
 ;;9002226.02101,"1462,00085-1402-01 ",.02)
 ;;00085-1402-01
 ;;9002226.02101,"1462,00085-1402-02 ",.01)
 ;;00085-1402-02
 ;;9002226.02101,"1462,00085-1402-02 ",.02)
 ;;00085-1402-02
 ;;9002226.02101,"1462,00085-4610-01 ",.01)
 ;;00085-4610-01
 ;;9002226.02101,"1462,00085-4610-01 ",.02)
 ;;00085-4610-01
 ;;9002226.02101,"1462,00085-4610-05 ",.01)
 ;;00085-4610-05
 ;;9002226.02101,"1462,00085-4610-05 ",.02)
 ;;00085-4610-05
 ;;9002226.02101,"1462,00085-7206-01 ",.01)
 ;;00085-7206-01
 ;;9002226.02101,"1462,00085-7206-01 ",.02)
 ;;00085-7206-01
 ;;9002226.02101,"1462,00085-7206-07 ",.01)
 ;;00085-7206-07
 ;;9002226.02101,"1462,00085-7206-07 ",.02)
 ;;00085-7206-07
 ;;9002226.02101,"1462,00173-0520-00 ",.01)
 ;;00173-0520-00
 ;;9002226.02101,"1462,00173-0520-00 ",.02)
 ;;00173-0520-00
 ;;9002226.02101,"1462,00173-0521-00 ",.01)
 ;;00173-0521-00
 ;;9002226.02101,"1462,00173-0521-00 ",.02)
 ;;00173-0521-00
 ;;9002226.02101,"1462,00173-0695-00 ",.01)
 ;;00173-0695-00
 ;;9002226.02101,"1462,00173-0695-00 ",.02)
 ;;00173-0695-00
 ;;9002226.02101,"1462,00173-0695-04 ",.01)
 ;;00173-0695-04
 ;;9002226.02101,"1462,00173-0695-04 ",.02)
 ;;00173-0695-04
 ;;9002226.02101,"1462,00173-0696-00 ",.01)
 ;;00173-0696-00
 ;;9002226.02101,"1462,00173-0696-00 ",.02)
 ;;00173-0696-00
 ;;9002226.02101,"1462,00173-0696-04 ",.01)
 ;;00173-0696-04
 ;;9002226.02101,"1462,00173-0696-04 ",.02)
 ;;00173-0696-04
 ;;9002226.02101,"1462,00173-0697-00 ",.01)
 ;;00173-0697-00
 ;;9002226.02101,"1462,00173-0697-00 ",.02)
 ;;00173-0697-00
 ;;9002226.02101,"1462,00173-0697-04 ",.01)
 ;;00173-0697-04
 ;;9002226.02101,"1462,00173-0697-04 ",.02)
 ;;00173-0697-04
 ;;9002226.02101,"1462,00173-0715-20 ",.01)
 ;;00173-0715-20
 ;;9002226.02101,"1462,00173-0715-20 ",.02)
 ;;00173-0715-20
 ;;9002226.02101,"1462,00173-0715-22 ",.01)
 ;;00173-0715-22
 ;;9002226.02101,"1462,00173-0715-22 ",.02)
 ;;00173-0715-22
 ;;9002226.02101,"1462,00173-0716-20 ",.01)
 ;;00173-0716-20
 ;;9002226.02101,"1462,00173-0716-20 ",.02)
 ;;00173-0716-20
 ;;9002226.02101,"1462,00173-0716-22 ",.01)
 ;;00173-0716-22
 ;;9002226.02101,"1462,00173-0716-22 ",.02)
 ;;00173-0716-22
 ;;9002226.02101,"1462,00173-0717-20 ",.01)
 ;;00173-0717-20
 ;;9002226.02101,"1462,00173-0717-20 ",.02)
 ;;00173-0717-20
 ;;9002226.02101,"1462,00173-0717-22 ",.01)
 ;;00173-0717-22
 ;;9002226.02101,"1462,00173-0717-22 ",.02)
 ;;00173-0717-22
 ;;9002226.02101,"1462,00173-0859-10 ",.01)
 ;;00173-0859-10
 ;;9002226.02101,"1462,00173-0859-10 ",.02)
 ;;00173-0859-10
 ;;9002226.02101,"1462,00173-0859-14 ",.01)
 ;;00173-0859-14
 ;;9002226.02101,"1462,00173-0859-14 ",.02)
 ;;00173-0859-14
 ;;9002226.02101,"1462,00173-0882-10 ",.01)
 ;;00173-0882-10
 ;;9002226.02101,"1462,00173-0882-10 ",.02)
 ;;00173-0882-10
 ;;9002226.02101,"1462,00173-0882-14 ",.01)
 ;;00173-0882-14
 ;;9002226.02101,"1462,00173-0882-14 ",.02)
 ;;00173-0882-14
 ;;9002226.02101,"1462,00186-0370-20 ",.01)
 ;;00186-0370-20
 ;;9002226.02101,"1462,00186-0370-20 ",.02)
 ;;00186-0370-20
 ;;9002226.02101,"1462,00186-0370-28 ",.01)
 ;;00186-0370-28
 ;;9002226.02101,"1462,00186-0370-28 ",.02)
 ;;00186-0370-28
 ;;9002226.02101,"1462,00186-0372-20 ",.01)
 ;;00186-0372-20
 ;;9002226.02101,"1462,00186-0372-20 ",.02)
 ;;00186-0372-20
 ;;9002226.02101,"1462,00186-0372-28 ",.01)
 ;;00186-0372-28
 ;;9002226.02101,"1462,00186-0372-28 ",.02)
 ;;00186-0372-28
 ;;9002226.02101,"1462,21695-0196-01 ",.01)
 ;;21695-0196-01
 ;;9002226.02101,"1462,21695-0196-01 ",.02)
 ;;21695-0196-01
 ;;9002226.02101,"1462,21695-0197-01 ",.01)
 ;;21695-0197-01
 ;;9002226.02101,"1462,21695-0197-01 ",.02)
 ;;21695-0197-01
 ;;9002226.02101,"1462,21695-0361-60 ",.01)
 ;;21695-0361-60
 ;;9002226.02101,"1462,21695-0361-60 ",.02)
 ;;21695-0361-60
 ;;9002226.02101,"1462,33261-0873-01 ",.01)
 ;;33261-0873-01
 ;;9002226.02101,"1462,33261-0873-01 ",.02)
 ;;33261-0873-01
 ;;9002226.02101,"1462,33261-0874-01 ",.01)
 ;;33261-0874-01
 ;;9002226.02101,"1462,33261-0874-01 ",.02)
 ;;33261-0874-01
 ;;9002226.02101,"1462,49999-0300-28 ",.01)
 ;;49999-0300-28
 ;;9002226.02101,"1462,49999-0300-28 ",.02)
 ;;49999-0300-28
 ;;9002226.02101,"1462,49999-0819-60 ",.01)
 ;;49999-0819-60
 ;;9002226.02101,"1462,49999-0819-60 ",.02)
 ;;49999-0819-60
 ;;9002226.02101,"1462,49999-0984-60 ",.01)
 ;;49999-0984-60
 ;;9002226.02101,"1462,49999-0984-60 ",.02)
 ;;49999-0984-60
 ;;9002226.02101,"1462,49999-0985-60 ",.01)
 ;;49999-0985-60
 ;;9002226.02101,"1462,49999-0985-60 ",.02)
 ;;49999-0985-60
 ;;9002226.02101,"1462,54569-4867-00 ",.01)
 ;;54569-4867-00
 ;;9002226.02101,"1462,54569-4867-00 ",.02)
 ;;54569-4867-00
 ;;9002226.02101,"1462,54569-5241-00 ",.01)
 ;;54569-5241-00
 ;;9002226.02101,"1462,54569-5241-00 ",.02)
 ;;54569-5241-00
 ;;9002226.02101,"1462,54569-5242-00 ",.01)
 ;;54569-5242-00
 ;;9002226.02101,"1462,54569-5242-00 ",.02)
 ;;54569-5242-00
 ;;9002226.02101,"1462,54569-5243-00 ",.01)
 ;;54569-5243-00
 ;;9002226.02101,"1462,54569-5243-00 ",.02)
 ;;54569-5243-00
 ;;9002226.02101,"1462,54569-6466-00 ",.01)
 ;;54569-6466-00
 ;;9002226.02101,"1462,54569-6466-00 ",.02)
 ;;54569-6466-00
 ;;9002226.02101,"1462,54569-6611-00 ",.01)
 ;;54569-6611-00
 ;;9002226.02101,"1462,54569-6611-00 ",.02)
 ;;54569-6611-00
 ;;9002226.02101,"1462,54569-6612-00 ",.01)
 ;;54569-6612-00
 ;;9002226.02101,"1462,54569-6612-00 ",.02)
 ;;54569-6612-00
 ;;9002226.02101,"1462,54868-4481-00 ",.01)
 ;;54868-4481-00
 ;;9002226.02101,"1462,54868-4481-00 ",.02)
 ;;54868-4481-00
 ;;9002226.02101,"1462,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"1462,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"1462,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"1462,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"1462,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"1462,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"1462,54868-4972-01 ",.01)
 ;;54868-4972-01
 ;;9002226.02101,"1462,54868-4972-01 ",.02)
 ;;54868-4972-01
 ;;9002226.02101,"1462,54868-5936-00 ",.01)
 ;;54868-5936-00
 ;;9002226.02101,"1462,54868-5936-00 ",.02)
 ;;54868-5936-00
 ;;9002226.02101,"1462,54868-5937-00 ",.01)
 ;;54868-5937-00
 ;;9002226.02101,"1462,54868-5937-00 ",.02)
 ;;54868-5937-00
 ;;9002226.02101,"1462,68258-3031-01 ",.01)
 ;;68258-3031-01
 ;;9002226.02101,"1462,68258-3031-01 ",.02)
 ;;68258-3031-01
 ;;9002226.02101,"1462,68258-8961-06 ",.01)
 ;;68258-8961-06
 ;;9002226.02101,"1462,68258-8961-06 ",.02)
 ;;68258-8961-06
 ;;9002226.04101,"1462,1",.01)
 ;;BGP
 ;
OTHER ; OTHER ROUTINES
 Q
