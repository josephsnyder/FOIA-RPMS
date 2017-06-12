BGP51J19 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,52959-0514-30 ",.02)
 ;;52959-0514-30
 ;;9002226.02101,"730,52959-0514-60 ",.01)
 ;;52959-0514-60
 ;;9002226.02101,"730,52959-0514-60 ",.02)
 ;;52959-0514-60
 ;;9002226.02101,"730,52959-0514-90 ",.01)
 ;;52959-0514-90
 ;;9002226.02101,"730,52959-0514-90 ",.02)
 ;;52959-0514-90
 ;;9002226.02101,"730,52959-0537-30 ",.01)
 ;;52959-0537-30
 ;;9002226.02101,"730,52959-0537-30 ",.02)
 ;;52959-0537-30
 ;;9002226.02101,"730,52959-0537-90 ",.01)
 ;;52959-0537-90
 ;;9002226.02101,"730,52959-0537-90 ",.02)
 ;;52959-0537-90
 ;;9002226.02101,"730,52959-0541-10 ",.01)
 ;;52959-0541-10
 ;;9002226.02101,"730,52959-0541-10 ",.02)
 ;;52959-0541-10
 ;;9002226.02101,"730,52959-0541-20 ",.01)
 ;;52959-0541-20
 ;;9002226.02101,"730,52959-0541-20 ",.02)
 ;;52959-0541-20
 ;;9002226.02101,"730,52959-0541-30 ",.01)
 ;;52959-0541-30
 ;;9002226.02101,"730,52959-0541-30 ",.02)
 ;;52959-0541-30
 ;;9002226.02101,"730,52959-0541-60 ",.01)
 ;;52959-0541-60
 ;;9002226.02101,"730,52959-0541-60 ",.02)
 ;;52959-0541-60
 ;;9002226.02101,"730,52959-0542-14 ",.01)
 ;;52959-0542-14
 ;;9002226.02101,"730,52959-0542-14 ",.02)
 ;;52959-0542-14
 ;;9002226.02101,"730,52959-0542-15 ",.01)
 ;;52959-0542-15
 ;;9002226.02101,"730,52959-0542-15 ",.02)
 ;;52959-0542-15
 ;;9002226.02101,"730,52959-0542-21 ",.01)
 ;;52959-0542-21
 ;;9002226.02101,"730,52959-0542-21 ",.02)
 ;;52959-0542-21
 ;;9002226.02101,"730,52959-0542-28 ",.01)
 ;;52959-0542-28
 ;;9002226.02101,"730,52959-0542-28 ",.02)
 ;;52959-0542-28
 ;;9002226.02101,"730,52959-0542-30 ",.01)
 ;;52959-0542-30
 ;;9002226.02101,"730,52959-0542-30 ",.02)
 ;;52959-0542-30
 ;;9002226.02101,"730,52959-0542-40 ",.01)
 ;;52959-0542-40
 ;;9002226.02101,"730,52959-0542-40 ",.02)
 ;;52959-0542-40
 ;;9002226.02101,"730,52959-0542-42 ",.01)
 ;;52959-0542-42
 ;;9002226.02101,"730,52959-0542-42 ",.02)
 ;;52959-0542-42
 ;;9002226.02101,"730,52959-0662-30 ",.01)
 ;;52959-0662-30
 ;;9002226.02101,"730,52959-0662-30 ",.02)
 ;;52959-0662-30
 ;;9002226.02101,"730,52959-0727-00 ",.01)
 ;;52959-0727-00
 ;;9002226.02101,"730,52959-0727-00 ",.02)
 ;;52959-0727-00
 ;;9002226.02101,"730,52959-0727-10 ",.01)
 ;;52959-0727-10
 ;;9002226.02101,"730,52959-0727-10 ",.02)
 ;;52959-0727-10
 ;;9002226.02101,"730,52959-0727-30 ",.01)
 ;;52959-0727-30
 ;;9002226.02101,"730,52959-0727-30 ",.02)
 ;;52959-0727-30
 ;;9002226.02101,"730,52959-0767-30 ",.01)
 ;;52959-0767-30
 ;;9002226.02101,"730,52959-0767-30 ",.02)
 ;;52959-0767-30
 ;;9002226.02101,"730,52959-0767-60 ",.01)
 ;;52959-0767-60
 ;;9002226.02101,"730,52959-0767-60 ",.02)
 ;;52959-0767-60
 ;;9002226.02101,"730,52959-0791-30 ",.01)
 ;;52959-0791-30
 ;;9002226.02101,"730,52959-0791-30 ",.02)
 ;;52959-0791-30
 ;;9002226.02101,"730,52959-0852-00 ",.01)
 ;;52959-0852-00
 ;;9002226.02101,"730,52959-0852-00 ",.02)
 ;;52959-0852-00
 ;;9002226.02101,"730,52959-0852-10 ",.01)
 ;;52959-0852-10
 ;;9002226.02101,"730,52959-0852-10 ",.02)
 ;;52959-0852-10
 ;;9002226.02101,"730,52959-0852-12 ",.01)
 ;;52959-0852-12
 ;;9002226.02101,"730,52959-0852-12 ",.02)
 ;;52959-0852-12
 ;;9002226.02101,"730,52959-0852-30 ",.01)
 ;;52959-0852-30
 ;;9002226.02101,"730,52959-0852-30 ",.02)
 ;;52959-0852-30
 ;;9002226.02101,"730,52959-0852-60 ",.01)
 ;;52959-0852-60
 ;;9002226.02101,"730,52959-0852-60 ",.02)
 ;;52959-0852-60
 ;;9002226.02101,"730,52959-0865-00 ",.01)
 ;;52959-0865-00
 ;;9002226.02101,"730,52959-0865-00 ",.02)
 ;;52959-0865-00
 ;;9002226.02101,"730,52959-0865-30 ",.01)
 ;;52959-0865-30
 ;;9002226.02101,"730,52959-0865-30 ",.02)
 ;;52959-0865-30
 ;;9002226.02101,"730,52959-0870-30 ",.01)
 ;;52959-0870-30
 ;;9002226.02101,"730,52959-0870-30 ",.02)
 ;;52959-0870-30
 ;;9002226.02101,"730,52959-0879-02 ",.01)
 ;;52959-0879-02
 ;;9002226.02101,"730,52959-0879-02 ",.02)
 ;;52959-0879-02
 ;;9002226.02101,"730,52959-0879-10 ",.01)
 ;;52959-0879-10
 ;;9002226.02101,"730,52959-0879-10 ",.02)
 ;;52959-0879-10
 ;;9002226.02101,"730,52959-0879-14 ",.01)
 ;;52959-0879-14
 ;;9002226.02101,"730,52959-0879-14 ",.02)
 ;;52959-0879-14
 ;;9002226.02101,"730,52959-0879-15 ",.01)
 ;;52959-0879-15
 ;;9002226.02101,"730,52959-0879-15 ",.02)
 ;;52959-0879-15
 ;;9002226.02101,"730,52959-0879-20 ",.01)
 ;;52959-0879-20
 ;;9002226.02101,"730,52959-0879-20 ",.02)
 ;;52959-0879-20
 ;;9002226.02101,"730,52959-0879-28 ",.01)
 ;;52959-0879-28
 ;;9002226.02101,"730,52959-0879-28 ",.02)
 ;;52959-0879-28
 ;;9002226.02101,"730,52959-0879-30 ",.01)
 ;;52959-0879-30
 ;;9002226.02101,"730,52959-0879-30 ",.02)
 ;;52959-0879-30
 ;;9002226.02101,"730,52959-0879-42 ",.01)
 ;;52959-0879-42
 ;;9002226.02101,"730,52959-0879-42 ",.02)
 ;;52959-0879-42
 ;;9002226.02101,"730,52959-0879-60 ",.01)
 ;;52959-0879-60
 ;;9002226.02101,"730,52959-0879-60 ",.02)
 ;;52959-0879-60
 ;;9002226.02101,"730,52959-0879-90 ",.01)
 ;;52959-0879-90
 ;;9002226.02101,"730,52959-0879-90 ",.02)
 ;;52959-0879-90
 ;;9002226.02101,"730,52959-0880-00 ",.01)
 ;;52959-0880-00
 ;;9002226.02101,"730,52959-0880-00 ",.02)
 ;;52959-0880-00
 ;;9002226.02101,"730,52959-0880-02 ",.01)
 ;;52959-0880-02
 ;;9002226.02101,"730,52959-0880-02 ",.02)
 ;;52959-0880-02
 ;;9002226.02101,"730,52959-0880-10 ",.01)
 ;;52959-0880-10
 ;;9002226.02101,"730,52959-0880-10 ",.02)
 ;;52959-0880-10
 ;;9002226.02101,"730,52959-0880-14 ",.01)
 ;;52959-0880-14
 ;;9002226.02101,"730,52959-0880-14 ",.02)
 ;;52959-0880-14
 ;;9002226.02101,"730,52959-0880-15 ",.01)
 ;;52959-0880-15
 ;;9002226.02101,"730,52959-0880-15 ",.02)
 ;;52959-0880-15
 ;;9002226.02101,"730,52959-0880-20 ",.01)
 ;;52959-0880-20
 ;;9002226.02101,"730,52959-0880-20 ",.02)
 ;;52959-0880-20
 ;;9002226.02101,"730,52959-0880-28 ",.01)
 ;;52959-0880-28
 ;;9002226.02101,"730,52959-0880-28 ",.02)
 ;;52959-0880-28
 ;;9002226.02101,"730,52959-0880-30 ",.01)
 ;;52959-0880-30
 ;;9002226.02101,"730,52959-0880-30 ",.02)
 ;;52959-0880-30
 ;;9002226.02101,"730,52959-0880-45 ",.01)
 ;;52959-0880-45
 ;;9002226.02101,"730,52959-0880-45 ",.02)
 ;;52959-0880-45
 ;;9002226.02101,"730,52959-0880-60 ",.01)
 ;;52959-0880-60
 ;;9002226.02101,"730,52959-0880-60 ",.02)
 ;;52959-0880-60
 ;;9002226.02101,"730,52959-0880-90 ",.01)
 ;;52959-0880-90
 ;;9002226.02101,"730,52959-0880-90 ",.02)
 ;;52959-0880-90
 ;;9002226.02101,"730,52959-0881-30 ",.01)
 ;;52959-0881-30
 ;;9002226.02101,"730,52959-0881-30 ",.02)
 ;;52959-0881-30
 ;;9002226.02101,"730,52959-0900-30 ",.01)
 ;;52959-0900-30
 ;;9002226.02101,"730,52959-0900-30 ",.02)
 ;;52959-0900-30
 ;;9002226.02101,"730,52959-0912-60 ",.01)
 ;;52959-0912-60
 ;;9002226.02101,"730,52959-0912-60 ",.02)
 ;;52959-0912-60
 ;;9002226.02101,"730,52959-0913-02 ",.01)
 ;;52959-0913-02
 ;;9002226.02101,"730,52959-0913-02 ",.02)
 ;;52959-0913-02
 ;;9002226.02101,"730,52959-0913-30 ",.01)
 ;;52959-0913-30
 ;;9002226.02101,"730,52959-0913-30 ",.02)
 ;;52959-0913-30
 ;;9002226.02101,"730,52959-0913-90 ",.01)
 ;;52959-0913-90
 ;;9002226.02101,"730,52959-0913-90 ",.02)
 ;;52959-0913-90
 ;;9002226.02101,"730,52959-0919-00 ",.01)
 ;;52959-0919-00
 ;;9002226.02101,"730,52959-0919-00 ",.02)
 ;;52959-0919-00
 ;;9002226.02101,"730,52959-0919-30 ",.01)
 ;;52959-0919-30
 ;;9002226.02101,"730,52959-0919-30 ",.02)
 ;;52959-0919-30
 ;;9002226.02101,"730,52959-0919-60 ",.01)
 ;;52959-0919-60
 ;;9002226.02101,"730,52959-0919-60 ",.02)
 ;;52959-0919-60
 ;;9002226.02101,"730,52959-0957-30 ",.01)
 ;;52959-0957-30
 ;;9002226.02101,"730,52959-0957-30 ",.02)
 ;;52959-0957-30
 ;;9002226.02101,"730,52959-0971-30 ",.01)
 ;;52959-0971-30
 ;;9002226.02101,"730,52959-0971-30 ",.02)
 ;;52959-0971-30
 ;;9002226.02101,"730,53002-0339-00 ",.01)
 ;;53002-0339-00
 ;;9002226.02101,"730,53002-0339-00 ",.02)
 ;;53002-0339-00
 ;;9002226.02101,"730,53002-0339-30 ",.01)
 ;;53002-0339-30
 ;;9002226.02101,"730,53002-0339-30 ",.02)
 ;;53002-0339-30
 ;;9002226.02101,"730,53002-0339-60 ",.01)
 ;;53002-0339-60
 ;;9002226.02101,"730,53002-0339-60 ",.02)
 ;;53002-0339-60
 ;;9002226.02101,"730,53002-0491-00 ",.01)
 ;;53002-0491-00
 ;;9002226.02101,"730,53002-0491-00 ",.02)
 ;;53002-0491-00
 ;;9002226.02101,"730,53002-0491-30 ",.01)
 ;;53002-0491-30
 ;;9002226.02101,"730,53002-0491-30 ",.02)
 ;;53002-0491-30
 ;;9002226.02101,"730,53002-0491-60 ",.01)
 ;;53002-0491-60
 ;;9002226.02101,"730,53002-0491-60 ",.02)
 ;;53002-0491-60
 ;;9002226.02101,"730,53002-0502-05 ",.01)
 ;;53002-0502-05
 ;;9002226.02101,"730,53002-0502-05 ",.02)
 ;;53002-0502-05
 ;;9002226.02101,"730,53002-0502-10 ",.01)
 ;;53002-0502-10
 ;;9002226.02101,"730,53002-0502-10 ",.02)
 ;;53002-0502-10
 ;;9002226.02101,"730,53002-0502-20 ",.01)
 ;;53002-0502-20
 ;;9002226.02101,"730,53002-0502-20 ",.02)
 ;;53002-0502-20
 ;;9002226.02101,"730,53002-0502-30 ",.01)
 ;;53002-0502-30
 ;;9002226.02101,"730,53002-0502-30 ",.02)
 ;;53002-0502-30
 ;;9002226.02101,"730,53002-1292-01 ",.01)
 ;;53002-1292-01
 ;;9002226.02101,"730,53002-1292-01 ",.02)
 ;;53002-1292-01
 ;;9002226.02101,"730,53002-1292-02 ",.01)
 ;;53002-1292-02
 ;;9002226.02101,"730,53002-1292-02 ",.02)
 ;;53002-1292-02
 ;;9002226.02101,"730,53002-1292-03 ",.01)
 ;;53002-1292-03
 ;;9002226.02101,"730,53002-1292-03 ",.02)
 ;;53002-1292-03
 ;;9002226.02101,"730,53002-1594-01 ",.01)
 ;;53002-1594-01
 ;;9002226.02101,"730,53002-1594-01 ",.02)
 ;;53002-1594-01
 ;;9002226.02101,"730,53217-0070-20 ",.01)
 ;;53217-0070-20
 ;;9002226.02101,"730,53217-0070-20 ",.02)
 ;;53217-0070-20
 ;;9002226.02101,"730,53217-0070-30 ",.01)
 ;;53217-0070-30
 ;;9002226.02101,"730,53217-0070-30 ",.02)
 ;;53217-0070-30
 ;;9002226.02101,"730,53217-0070-60 ",.01)
 ;;53217-0070-60
 ;;9002226.02101,"730,53217-0070-60 ",.02)
 ;;53217-0070-60
 ;;9002226.02101,"730,53217-0075-30 ",.01)
 ;;53217-0075-30
 ;;9002226.02101,"730,53217-0075-30 ",.02)
 ;;53217-0075-30
 ;;9002226.02101,"730,53217-0075-60 ",.01)
 ;;53217-0075-60
 ;;9002226.02101,"730,53217-0075-60 ",.02)
 ;;53217-0075-60
 ;;9002226.02101,"730,53217-0125-02 ",.01)
 ;;53217-0125-02
 ;;9002226.02101,"730,53217-0125-02 ",.02)
 ;;53217-0125-02
 ;;9002226.02101,"730,53217-0125-28 ",.01)
 ;;53217-0125-28
 ;;9002226.02101,"730,53217-0125-28 ",.02)
 ;;53217-0125-28
 ;;9002226.02101,"730,53217-0125-30 ",.01)
 ;;53217-0125-30
 ;;9002226.02101,"730,53217-0125-30 ",.02)
 ;;53217-0125-30
 ;;9002226.02101,"730,53217-0125-40 ",.01)
 ;;53217-0125-40
 ;;9002226.02101,"730,53217-0125-40 ",.02)
 ;;53217-0125-40
 ;;9002226.02101,"730,53217-0125-56 ",.01)
 ;;53217-0125-56
 ;;9002226.02101,"730,53217-0125-56 ",.02)
 ;;53217-0125-56
 ;;9002226.02101,"730,53217-0125-60 ",.01)
 ;;53217-0125-60
 ;;9002226.02101,"730,53217-0125-60 ",.02)
 ;;53217-0125-60
 ;;9002226.02101,"730,53217-0125-84 ",.01)
 ;;53217-0125-84
 ;;9002226.02101,"730,53217-0125-84 ",.02)
 ;;53217-0125-84
 ;;9002226.02101,"730,53217-0125-90 ",.01)
 ;;53217-0125-90
 ;;9002226.02101,"730,53217-0125-90 ",.02)
 ;;53217-0125-90
 ;;9002226.02101,"730,53489-0148-01 ",.01)
 ;;53489-0148-01
 ;;9002226.02101,"730,53489-0148-01 ",.02)
 ;;53489-0148-01
 ;;9002226.02101,"730,53489-0148-10 ",.01)
 ;;53489-0148-10
 ;;9002226.02101,"730,53489-0148-10 ",.02)
 ;;53489-0148-10
 ;;9002226.02101,"730,53489-0149-01 ",.01)
 ;;53489-0149-01
 ;;9002226.02101,"730,53489-0149-01 ",.02)
 ;;53489-0149-01
 ;;9002226.02101,"730,53489-0149-10 ",.01)
 ;;53489-0149-10
 ;;9002226.02101,"730,53489-0149-10 ",.02)
 ;;53489-0149-10
 ;;9002226.02101,"730,53489-0150-01 ",.01)
 ;;53489-0150-01
 ;;9002226.02101,"730,53489-0150-01 ",.02)
 ;;53489-0150-01
 ;;9002226.02101,"730,53489-0150-10 ",.01)
 ;;53489-0150-10
 ;;9002226.02101,"730,53489-0150-10 ",.02)
 ;;53489-0150-10
 ;;9002226.02101,"730,53489-0281-01 ",.01)
 ;;53489-0281-01
 ;;9002226.02101,"730,53489-0281-01 ",.02)
 ;;53489-0281-01
 ;;9002226.02101,"730,53489-0281-05 ",.01)
 ;;53489-0281-05
 ;;9002226.02101,"730,53489-0281-05 ",.02)
 ;;53489-0281-05
 ;;9002226.02101,"730,53489-0281-10 ",.01)
 ;;53489-0281-10
 ;;9002226.02101,"730,53489-0281-10 ",.02)
 ;;53489-0281-10
 ;;9002226.02101,"730,53489-0330-01 ",.01)
 ;;53489-0330-01
 ;;9002226.02101,"730,53489-0330-01 ",.02)
 ;;53489-0330-01
 ;;9002226.02101,"730,53489-0331-01 ",.01)
 ;;53489-0331-01
 ;;9002226.02101,"730,53489-0331-01 ",.02)
 ;;53489-0331-01
 ;;9002226.02101,"730,53489-0332-01 ",.01)
 ;;53489-0332-01
 ;;9002226.02101,"730,53489-0332-01 ",.02)
 ;;53489-0332-01
 ;;9002226.02101,"730,53489-0500-01 ",.01)
 ;;53489-0500-01
 ;;9002226.02101,"730,53489-0500-01 ",.02)
 ;;53489-0500-01
 ;;9002226.02101,"730,54348-0507-30 ",.01)
 ;;54348-0507-30
 ;;9002226.02101,"730,54348-0507-30 ",.02)
 ;;54348-0507-30
 ;;9002226.02101,"730,54348-0987-16 ",.01)
 ;;54348-0987-16
 ;;9002226.02101,"730,54348-0987-16 ",.02)
 ;;54348-0987-16
 ;;9002226.02101,"730,54569-0172-00 ",.01)
 ;;54569-0172-00
 ;;9002226.02101,"730,54569-0172-00 ",.02)
 ;;54569-0172-00
 ;;9002226.02101,"730,54569-0172-01 ",.01)
 ;;54569-0172-01
 ;;9002226.02101,"730,54569-0172-01 ",.02)
 ;;54569-0172-01
 ;;9002226.02101,"730,54569-0172-04 ",.01)
 ;;54569-0172-04
 ;;9002226.02101,"730,54569-0172-04 ",.02)
 ;;54569-0172-04
 ;;9002226.02101,"730,54569-0172-06 ",.01)
 ;;54569-0172-06
 ;;9002226.02101,"730,54569-0172-06 ",.02)
 ;;54569-0172-06
 ;;9002226.02101,"730,54569-0172-07 ",.01)
 ;;54569-0172-07
 ;;9002226.02101,"730,54569-0172-07 ",.02)
 ;;54569-0172-07
 ;;9002226.02101,"730,54569-0172-08 ",.01)
 ;;54569-0172-08
 ;;9002226.02101,"730,54569-0172-08 ",.02)
 ;;54569-0172-08
 ;;9002226.02101,"730,54569-0175-00 ",.01)
 ;;54569-0175-00
