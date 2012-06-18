BGP21J21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,52959-0822-30 ",.02)
 ;;52959-0822-30
 ;;9002226.02101,"1199,52959-0822-60 ",.01)
 ;;52959-0822-60
 ;;9002226.02101,"1199,52959-0822-60 ",.02)
 ;;52959-0822-60
 ;;9002226.02101,"1199,52959-0823-20 ",.01)
 ;;52959-0823-20
 ;;9002226.02101,"1199,52959-0823-20 ",.02)
 ;;52959-0823-20
 ;;9002226.02101,"1199,52959-0823-60 ",.01)
 ;;52959-0823-60
 ;;9002226.02101,"1199,52959-0823-60 ",.02)
 ;;52959-0823-60
 ;;9002226.02101,"1199,52959-0888-00 ",.01)
 ;;52959-0888-00
 ;;9002226.02101,"1199,52959-0888-00 ",.02)
 ;;52959-0888-00
 ;;9002226.02101,"1199,52959-0888-30 ",.01)
 ;;52959-0888-30
 ;;9002226.02101,"1199,52959-0888-30 ",.02)
 ;;52959-0888-30
 ;;9002226.02101,"1199,52959-0936-30 ",.01)
 ;;52959-0936-30
 ;;9002226.02101,"1199,52959-0936-30 ",.02)
 ;;52959-0936-30
 ;;9002226.02101,"1199,52959-0936-60 ",.01)
 ;;52959-0936-60
 ;;9002226.02101,"1199,52959-0936-60 ",.02)
 ;;52959-0936-60
 ;;9002226.02101,"1199,53002-0446-00 ",.01)
 ;;53002-0446-00
 ;;9002226.02101,"1199,53002-0446-00 ",.02)
 ;;53002-0446-00
 ;;9002226.02101,"1199,53002-0446-30 ",.01)
 ;;53002-0446-30
 ;;9002226.02101,"1199,53002-0446-30 ",.02)
 ;;53002-0446-30
 ;;9002226.02101,"1199,53002-0446-60 ",.01)
 ;;53002-0446-60
 ;;9002226.02101,"1199,53002-0446-60 ",.02)
 ;;53002-0446-60
 ;;9002226.02101,"1199,53002-1111-00 ",.01)
 ;;53002-1111-00
 ;;9002226.02101,"1199,53002-1111-00 ",.02)
 ;;53002-1111-00
 ;;9002226.02101,"1199,53002-1111-03 ",.01)
 ;;53002-1111-03
 ;;9002226.02101,"1199,53002-1111-03 ",.02)
 ;;53002-1111-03
 ;;9002226.02101,"1199,53002-1111-06 ",.01)
 ;;53002-1111-06
 ;;9002226.02101,"1199,53002-1111-06 ",.02)
 ;;53002-1111-06
 ;;9002226.02101,"1199,54348-0098-30 ",.01)
 ;;54348-0098-30
 ;;9002226.02101,"1199,54348-0098-30 ",.02)
 ;;54348-0098-30
 ;;9002226.02101,"1199,54348-0104-30 ",.01)
 ;;54348-0104-30
 ;;9002226.02101,"1199,54348-0104-30 ",.02)
 ;;54348-0104-30
 ;;9002226.02101,"1199,54458-0966-10 ",.01)
 ;;54458-0966-10
 ;;9002226.02101,"1199,54458-0966-10 ",.02)
 ;;54458-0966-10
 ;;9002226.02101,"1199,54458-0967-10 ",.01)
 ;;54458-0967-10
 ;;9002226.02101,"1199,54458-0967-10 ",.02)
 ;;54458-0967-10
 ;;9002226.02101,"1199,54458-0968-10 ",.01)
 ;;54458-0968-10
 ;;9002226.02101,"1199,54458-0968-10 ",.02)
 ;;54458-0968-10
 ;;9002226.02101,"1199,54458-0971-10 ",.01)
 ;;54458-0971-10
 ;;9002226.02101,"1199,54458-0971-10 ",.02)
 ;;54458-0971-10
 ;;9002226.02101,"1199,54458-0972-10 ",.01)
 ;;54458-0972-10
 ;;9002226.02101,"1199,54458-0972-10 ",.02)
 ;;54458-0972-10
 ;;9002226.02101,"1199,54458-0973-10 ",.01)
 ;;54458-0973-10
 ;;9002226.02101,"1199,54458-0973-10 ",.02)
 ;;54458-0973-10
 ;;9002226.02101,"1199,54569-0200-00 ",.01)
 ;;54569-0200-00
 ;;9002226.02101,"1199,54569-0200-00 ",.02)
 ;;54569-0200-00
 ;;9002226.02101,"1199,54569-0203-00 ",.01)
 ;;54569-0203-00
 ;;9002226.02101,"1199,54569-0203-00 ",.02)
 ;;54569-0203-00
 ;;9002226.02101,"1199,54569-0203-01 ",.01)
 ;;54569-0203-01
 ;;9002226.02101,"1199,54569-0203-01 ",.02)
 ;;54569-0203-01
 ;;9002226.02101,"1199,54569-0206-01 ",.01)
 ;;54569-0206-01
 ;;9002226.02101,"1199,54569-0206-01 ",.02)
 ;;54569-0206-01
 ;;9002226.02101,"1199,54569-0206-02 ",.01)
 ;;54569-0206-02
 ;;9002226.02101,"1199,54569-0206-02 ",.02)
 ;;54569-0206-02
 ;;9002226.02101,"1199,54569-0206-03 ",.01)
 ;;54569-0206-03
 ;;9002226.02101,"1199,54569-0206-03 ",.02)
 ;;54569-0206-03
 ;;9002226.02101,"1199,54569-2017-01 ",.01)
 ;;54569-2017-01
 ;;9002226.02101,"1199,54569-2017-01 ",.02)
 ;;54569-2017-01
 ;;9002226.02101,"1199,54569-3690-00 ",.01)
 ;;54569-3690-00
 ;;9002226.02101,"1199,54569-3690-00 ",.02)
 ;;54569-3690-00
 ;;9002226.02101,"1199,54569-3690-01 ",.01)
 ;;54569-3690-01
 ;;9002226.02101,"1199,54569-3690-01 ",.02)
 ;;54569-3690-01
 ;;9002226.02101,"1199,54569-3830-00 ",.01)
 ;;54569-3830-00
 ;;9002226.02101,"1199,54569-3830-00 ",.02)
 ;;54569-3830-00
 ;;9002226.02101,"1199,54569-3830-01 ",.01)
 ;;54569-3830-01
 ;;9002226.02101,"1199,54569-3830-01 ",.02)
 ;;54569-3830-01
 ;;9002226.02101,"1199,54569-3830-02 ",.01)
 ;;54569-3830-02
 ;;9002226.02101,"1199,54569-3830-02 ",.02)
 ;;54569-3830-02
 ;;9002226.02101,"1199,54569-3831-00 ",.01)
 ;;54569-3831-00
 ;;9002226.02101,"1199,54569-3831-00 ",.02)
 ;;54569-3831-00
 ;;9002226.02101,"1199,54569-3831-01 ",.01)
 ;;54569-3831-01
 ;;9002226.02101,"1199,54569-3831-01 ",.02)
 ;;54569-3831-01
 ;;9002226.02101,"1199,54569-3831-02 ",.01)
 ;;54569-3831-02
 ;;9002226.02101,"1199,54569-3831-02 ",.02)
 ;;54569-3831-02
 ;;9002226.02101,"1199,54569-3831-04 ",.01)
 ;;54569-3831-04
 ;;9002226.02101,"1199,54569-3831-04 ",.02)
 ;;54569-3831-04
 ;;9002226.02101,"1199,54569-3831-08 ",.01)
 ;;54569-3831-08
 ;;9002226.02101,"1199,54569-3831-08 ",.02)
 ;;54569-3831-08
 ;;9002226.02101,"1199,54569-3832-00 ",.01)
 ;;54569-3832-00
 ;;9002226.02101,"1199,54569-3832-00 ",.02)
 ;;54569-3832-00
 ;;9002226.02101,"1199,54569-3841-00 ",.01)
 ;;54569-3841-00
 ;;9002226.02101,"1199,54569-3841-00 ",.02)
 ;;54569-3841-00
 ;;9002226.02101,"1199,54569-3841-01 ",.01)
 ;;54569-3841-01
 ;;9002226.02101,"1199,54569-3841-01 ",.02)
 ;;54569-3841-01
 ;;9002226.02101,"1199,54569-3841-02 ",.01)
 ;;54569-3841-02
 ;;9002226.02101,"1199,54569-3841-02 ",.02)
 ;;54569-3841-02
