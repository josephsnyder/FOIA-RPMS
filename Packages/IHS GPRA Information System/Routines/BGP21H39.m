BGP21H39 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,52544-0694-30 ",.01)
 ;;52544-0694-30
 ;;9002226.02101,"1197,52544-0694-30 ",.02)
 ;;52544-0694-30
 ;;9002226.02101,"1197,52544-0695-19 ",.01)
 ;;52544-0695-19
 ;;9002226.02101,"1197,52544-0695-19 ",.02)
 ;;52544-0695-19
 ;;9002226.02101,"1197,52544-0695-30 ",.01)
 ;;52544-0695-30
 ;;9002226.02101,"1197,52544-0695-30 ",.02)
 ;;52544-0695-30
 ;;9002226.02101,"1197,52544-0775-01 ",.01)
 ;;52544-0775-01
 ;;9002226.02101,"1197,52544-0775-01 ",.02)
 ;;52544-0775-01
 ;;9002226.02101,"1197,52544-0775-05 ",.01)
 ;;52544-0775-05
 ;;9002226.02101,"1197,52544-0775-05 ",.02)
 ;;52544-0775-05
 ;;9002226.02101,"1197,52544-0776-01 ",.01)
 ;;52544-0776-01
 ;;9002226.02101,"1197,52544-0776-01 ",.02)
 ;;52544-0776-01
 ;;9002226.02101,"1197,52544-0776-05 ",.01)
 ;;52544-0776-05
 ;;9002226.02101,"1197,52544-0776-05 ",.02)
 ;;52544-0776-05
 ;;9002226.02101,"1197,52544-0777-01 ",.01)
 ;;52544-0777-01
 ;;9002226.02101,"1197,52544-0777-01 ",.02)
 ;;52544-0777-01
 ;;9002226.02101,"1197,52544-0778-01 ",.01)
 ;;52544-0778-01
 ;;9002226.02101,"1197,52544-0778-01 ",.02)
 ;;52544-0778-01
 ;;9002226.02101,"1197,52544-0865-10 ",.01)
 ;;52544-0865-10
 ;;9002226.02101,"1197,52544-0865-10 ",.02)
 ;;52544-0865-10
 ;;9002226.02101,"1197,52959-0050-30 ",.01)
 ;;52959-0050-30
 ;;9002226.02101,"1197,52959-0050-30 ",.02)
 ;;52959-0050-30
 ;;9002226.02101,"1197,52959-0072-01 ",.01)
 ;;52959-0072-01
 ;;9002226.02101,"1197,52959-0072-01 ",.02)
 ;;52959-0072-01
 ;;9002226.02101,"1197,52959-0209-90 ",.01)
 ;;52959-0209-90
 ;;9002226.02101,"1197,52959-0209-90 ",.02)
 ;;52959-0209-90
 ;;9002226.02101,"1197,52959-0910-90 ",.01)
 ;;52959-0910-90
 ;;9002226.02101,"1197,52959-0910-90 ",.02)
 ;;52959-0910-90
 ;;9002226.02101,"1197,52959-0911-30 ",.01)
 ;;52959-0911-30
 ;;9002226.02101,"1197,52959-0911-30 ",.02)
 ;;52959-0911-30
 ;;9002226.02101,"1197,52959-0911-90 ",.01)
 ;;52959-0911-90
 ;;9002226.02101,"1197,52959-0911-90 ",.02)
 ;;52959-0911-90
 ;;9002226.02101,"1197,52959-0982-60 ",.01)
 ;;52959-0982-60
 ;;9002226.02101,"1197,52959-0982-60 ",.02)
 ;;52959-0982-60
 ;;9002226.02101,"1197,52959-0996-60 ",.01)
 ;;52959-0996-60
 ;;9002226.02101,"1197,52959-0996-60 ",.02)
 ;;52959-0996-60
 ;;9002226.02101,"1197,53002-1129-00 ",.01)
 ;;53002-1129-00
 ;;9002226.02101,"1197,53002-1129-00 ",.02)
 ;;53002-1129-00
 ;;9002226.02101,"1197,53002-1129-03 ",.01)
 ;;53002-1129-03
 ;;9002226.02101,"1197,53002-1129-03 ",.02)
 ;;53002-1129-03
 ;;9002226.02101,"1197,53002-1205-00 ",.01)
 ;;53002-1205-00
 ;;9002226.02101,"1197,53002-1205-00 ",.02)
 ;;53002-1205-00
 ;;9002226.02101,"1197,53002-1205-03 ",.01)
 ;;53002-1205-03
 ;;9002226.02101,"1197,53002-1205-03 ",.02)
 ;;53002-1205-03
 ;;9002226.02101,"1197,53002-1467-00 ",.01)
 ;;53002-1467-00
 ;;9002226.02101,"1197,53002-1467-00 ",.02)
 ;;53002-1467-00
 ;;9002226.02101,"1197,53002-1467-03 ",.01)
 ;;53002-1467-03
 ;;9002226.02101,"1197,53002-1467-03 ",.02)
 ;;53002-1467-03
 ;;9002226.02101,"1197,53489-0368-01 ",.01)
 ;;53489-0368-01
 ;;9002226.02101,"1197,53489-0368-01 ",.02)
 ;;53489-0368-01
 ;;9002226.02101,"1197,53489-0369-01 ",.01)
 ;;53489-0369-01
 ;;9002226.02101,"1197,53489-0369-01 ",.02)
 ;;53489-0369-01
 ;;9002226.02101,"1197,53489-0370-01 ",.01)
 ;;53489-0370-01
 ;;9002226.02101,"1197,53489-0370-01 ",.02)
 ;;53489-0370-01
 ;;9002226.02101,"1197,53746-0006-01 ",.01)
 ;;53746-0006-01
 ;;9002226.02101,"1197,53746-0006-01 ",.02)
 ;;53746-0006-01
 ;;9002226.02101,"1197,53746-0006-05 ",.01)
 ;;53746-0006-05
 ;;9002226.02101,"1197,53746-0006-05 ",.02)
 ;;53746-0006-05
 ;;9002226.02101,"1197,53746-0007-01 ",.01)
 ;;53746-0007-01
 ;;9002226.02101,"1197,53746-0007-01 ",.02)
 ;;53746-0007-01
 ;;9002226.02101,"1197,53746-0007-05 ",.01)
 ;;53746-0007-05
 ;;9002226.02101,"1197,53746-0007-05 ",.02)
 ;;53746-0007-05
 ;;9002226.02101,"1197,53746-0008-01 ",.01)
 ;;53746-0008-01
 ;;9002226.02101,"1197,53746-0008-01 ",.02)
 ;;53746-0008-01
 ;;9002226.02101,"1197,53746-0008-05 ",.01)
 ;;53746-0008-05
 ;;9002226.02101,"1197,53746-0008-05 ",.02)
 ;;53746-0008-05
 ;;9002226.02101,"1197,54458-0948-08 ",.01)
 ;;54458-0948-08
 ;;9002226.02101,"1197,54458-0948-08 ",.02)
 ;;54458-0948-08
 ;;9002226.02101,"1197,54458-0950-10 ",.01)
 ;;54458-0950-10
 ;;9002226.02101,"1197,54458-0950-10 ",.02)
 ;;54458-0950-10
 ;;9002226.02101,"1197,54569-0639-00 ",.01)
 ;;54569-0639-00
 ;;9002226.02101,"1197,54569-0639-00 ",.02)
 ;;54569-0639-00
 ;;9002226.02101,"1197,54569-0639-01 ",.01)
 ;;54569-0639-01
 ;;9002226.02101,"1197,54569-0639-01 ",.02)
 ;;54569-0639-01
 ;;9002226.02101,"1197,54569-0639-02 ",.01)
 ;;54569-0639-02
 ;;9002226.02101,"1197,54569-0639-02 ",.02)
 ;;54569-0639-02
 ;;9002226.02101,"1197,54569-0646-00 ",.01)
 ;;54569-0646-00
 ;;9002226.02101,"1197,54569-0646-00 ",.02)
 ;;54569-0646-00
 ;;9002226.02101,"1197,54569-0646-01 ",.01)
 ;;54569-0646-01
 ;;9002226.02101,"1197,54569-0646-01 ",.02)
 ;;54569-0646-01
 ;;9002226.02101,"1197,54569-0646-02 ",.01)
 ;;54569-0646-02
 ;;9002226.02101,"1197,54569-0646-02 ",.02)
 ;;54569-0646-02
 ;;9002226.02101,"1197,54569-2780-00 ",.01)
 ;;54569-2780-00
 ;;9002226.02101,"1197,54569-2780-00 ",.02)
 ;;54569-2780-00
 ;;9002226.02101,"1197,54569-2780-01 ",.01)
 ;;54569-2780-01
