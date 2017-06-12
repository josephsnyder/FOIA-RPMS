BGP72G11 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1905,52533-0179-18 ",.02)
 ;;52533-0179-18
 ;;9002226.02101,"1905,52533-0284-30 ",.01)
 ;;52533-0284-30
 ;;9002226.02101,"1905,52533-0284-30 ",.02)
 ;;52533-0284-30
 ;;9002226.02101,"1905,52959-0924-30 ",.01)
 ;;52959-0924-30
 ;;9002226.02101,"1905,52959-0924-30 ",.02)
 ;;52959-0924-30
 ;;9002226.02101,"1905,52959-0925-30 ",.01)
 ;;52959-0925-30
 ;;9002226.02101,"1905,52959-0925-30 ",.02)
 ;;52959-0925-30
 ;;9002226.02101,"1905,52959-0926-30 ",.01)
 ;;52959-0926-30
 ;;9002226.02101,"1905,52959-0926-30 ",.02)
 ;;52959-0926-30
 ;;9002226.02101,"1905,53217-0001-00 ",.01)
 ;;53217-0001-00
 ;;9002226.02101,"1905,53217-0001-00 ",.02)
 ;;53217-0001-00
 ;;9002226.02101,"1905,53217-0001-30 ",.01)
 ;;53217-0001-30
 ;;9002226.02101,"1905,53217-0001-30 ",.02)
 ;;53217-0001-30
 ;;9002226.02101,"1905,53217-0001-60 ",.01)
 ;;53217-0001-60
 ;;9002226.02101,"1905,53217-0001-60 ",.02)
 ;;53217-0001-60
 ;;9002226.02101,"1905,53217-0001-90 ",.01)
 ;;53217-0001-90
 ;;9002226.02101,"1905,53217-0001-90 ",.02)
 ;;53217-0001-90
 ;;9002226.02101,"1905,53217-0018-30 ",.01)
 ;;53217-0018-30
 ;;9002226.02101,"1905,53217-0018-30 ",.02)
 ;;53217-0018-30
 ;;9002226.02101,"1905,53217-0018-60 ",.01)
 ;;53217-0018-60
 ;;9002226.02101,"1905,53217-0018-60 ",.02)
 ;;53217-0018-60
 ;;9002226.02101,"1905,53217-0018-90 ",.01)
 ;;53217-0018-90
 ;;9002226.02101,"1905,53217-0018-90 ",.02)
 ;;53217-0018-90
 ;;9002226.02101,"1905,54569-0158-00 ",.01)
 ;;54569-0158-00
 ;;9002226.02101,"1905,54569-0158-00 ",.02)
 ;;54569-0158-00
 ;;9002226.02101,"1905,54569-0159-00 ",.01)
 ;;54569-0159-00
 ;;9002226.02101,"1905,54569-0159-00 ",.02)
 ;;54569-0159-00
 ;;9002226.02101,"1905,54569-4443-00 ",.01)
 ;;54569-4443-00
 ;;9002226.02101,"1905,54569-4443-00 ",.02)
 ;;54569-4443-00
 ;;9002226.02101,"1905,54569-4934-00 ",.01)
 ;;54569-4934-00
 ;;9002226.02101,"1905,54569-4934-00 ",.02)
 ;;54569-4934-00
 ;;9002226.02101,"1905,54569-4934-01 ",.01)
 ;;54569-4934-01
 ;;9002226.02101,"1905,54569-4934-01 ",.02)
 ;;54569-4934-01
 ;;9002226.02101,"1905,54569-4934-02 ",.01)
 ;;54569-4934-02
 ;;9002226.02101,"1905,54569-4934-02 ",.02)
 ;;54569-4934-02
 ;;9002226.02101,"1905,54569-5868-00 ",.01)
 ;;54569-5868-00
 ;;9002226.02101,"1905,54569-5868-00 ",.02)
 ;;54569-5868-00
 ;;9002226.02101,"1905,54569-5869-00 ",.01)
 ;;54569-5869-00
 ;;9002226.02101,"1905,54569-5869-00 ",.02)
 ;;54569-5869-00
 ;;9002226.02101,"1905,54569-6224-00 ",.01)
 ;;54569-6224-00
 ;;9002226.02101,"1905,54569-6224-00 ",.02)
 ;;54569-6224-00
 ;;9002226.02101,"1905,54569-6225-00 ",.01)
 ;;54569-6225-00
 ;;9002226.02101,"1905,54569-6225-00 ",.02)
 ;;54569-6225-00
 ;;9002226.02101,"1905,54569-6312-00 ",.01)
 ;;54569-6312-00
 ;;9002226.02101,"1905,54569-6312-00 ",.02)
 ;;54569-6312-00
 ;;9002226.02101,"1905,54569-6313-00 ",.01)
 ;;54569-6313-00
 ;;9002226.02101,"1905,54569-6313-00 ",.02)
 ;;54569-6313-00
 ;;9002226.02101,"1905,54569-6313-01 ",.01)
 ;;54569-6313-01
 ;;9002226.02101,"1905,54569-6313-01 ",.02)
 ;;54569-6313-01
 ;;9002226.02101,"1905,54569-6394-00 ",.01)
 ;;54569-6394-00
 ;;9002226.02101,"1905,54569-6394-00 ",.02)
 ;;54569-6394-00
 ;;9002226.02101,"1905,54569-6427-00 ",.01)
 ;;54569-6427-00
 ;;9002226.02101,"1905,54569-6427-00 ",.02)
 ;;54569-6427-00
 ;;9002226.02101,"1905,54868-0822-00 ",.01)
 ;;54868-0822-00
 ;;9002226.02101,"1905,54868-0822-00 ",.02)
 ;;54868-0822-00
 ;;9002226.02101,"1905,54868-0825-00 ",.01)
 ;;54868-0825-00
 ;;9002226.02101,"1905,54868-0825-00 ",.02)
 ;;54868-0825-00
 ;;9002226.02101,"1905,54868-1216-00 ",.01)
 ;;54868-1216-00
 ;;9002226.02101,"1905,54868-1216-00 ",.02)
 ;;54868-1216-00
 ;;9002226.02101,"1905,54868-1259-00 ",.01)
 ;;54868-1259-00
 ;;9002226.02101,"1905,54868-1259-00 ",.02)
 ;;54868-1259-00
 ;;9002226.02101,"1905,54868-1259-01 ",.01)
 ;;54868-1259-01
 ;;9002226.02101,"1905,54868-1259-01 ",.02)
 ;;54868-1259-01
 ;;9002226.02101,"1905,54868-1259-02 ",.01)
 ;;54868-1259-02
 ;;9002226.02101,"1905,54868-1259-02 ",.02)
 ;;54868-1259-02
 ;;9002226.02101,"1905,54868-1259-03 ",.01)
 ;;54868-1259-03
 ;;9002226.02101,"1905,54868-1259-03 ",.02)
 ;;54868-1259-03
 ;;9002226.02101,"1905,54868-1259-05 ",.01)
 ;;54868-1259-05
 ;;9002226.02101,"1905,54868-1259-05 ",.02)
 ;;54868-1259-05
 ;;9002226.02101,"1905,54868-1259-06 ",.01)
 ;;54868-1259-06
 ;;9002226.02101,"1905,54868-1259-06 ",.02)
 ;;54868-1259-06
 ;;9002226.02101,"1905,54868-1259-07 ",.01)
 ;;54868-1259-07
 ;;9002226.02101,"1905,54868-1259-07 ",.02)
 ;;54868-1259-07
 ;;9002226.02101,"1905,54868-2128-00 ",.01)
 ;;54868-2128-00
 ;;9002226.02101,"1905,54868-2128-00 ",.02)
 ;;54868-2128-00
 ;;9002226.02101,"1905,54868-2128-02 ",.01)
 ;;54868-2128-02
 ;;9002226.02101,"1905,54868-2128-02 ",.02)
 ;;54868-2128-02
 ;;9002226.02101,"1905,54868-2128-03 ",.01)
 ;;54868-2128-03
 ;;9002226.02101,"1905,54868-2128-03 ",.02)
 ;;54868-2128-03
 ;;9002226.02101,"1905,54868-2129-00 ",.01)
 ;;54868-2129-00
 ;;9002226.02101,"1905,54868-2129-00 ",.02)
 ;;54868-2129-00
 ;;9002226.02101,"1905,54868-2129-01 ",.01)
 ;;54868-2129-01
 ;;9002226.02101,"1905,54868-2129-01 ",.02)
 ;;54868-2129-01
 ;;9002226.02101,"1905,54868-2129-02 ",.01)
 ;;54868-2129-02
 ;;9002226.02101,"1905,54868-2129-02 ",.02)
 ;;54868-2129-02
 ;;9002226.02101,"1905,54868-2154-00 ",.01)
 ;;54868-2154-00
 ;;9002226.02101,"1905,54868-2154-00 ",.02)
 ;;54868-2154-00
 ;;9002226.02101,"1905,54868-2154-01 ",.01)
 ;;54868-2154-01
 ;;9002226.02101,"1905,54868-2154-01 ",.02)
 ;;54868-2154-01
 ;;9002226.02101,"1905,54868-2154-02 ",.01)
 ;;54868-2154-02
 ;;9002226.02101,"1905,54868-2154-02 ",.02)
 ;;54868-2154-02
 ;;9002226.02101,"1905,54868-2154-03 ",.01)
 ;;54868-2154-03
 ;;9002226.02101,"1905,54868-2154-03 ",.02)
 ;;54868-2154-03
 ;;9002226.02101,"1905,54868-2252-01 ",.01)
 ;;54868-2252-01
 ;;9002226.02101,"1905,54868-2252-01 ",.02)
 ;;54868-2252-01
 ;;9002226.02101,"1905,54868-2454-01 ",.01)
 ;;54868-2454-01
 ;;9002226.02101,"1905,54868-2454-01 ",.02)
 ;;54868-2454-01
 ;;9002226.02101,"1905,54868-2454-02 ",.01)
 ;;54868-2454-02
 ;;9002226.02101,"1905,54868-2454-02 ",.02)
 ;;54868-2454-02
 ;;9002226.02101,"1905,54868-3399-00 ",.01)
 ;;54868-3399-00
 ;;9002226.02101,"1905,54868-3399-00 ",.02)
 ;;54868-3399-00
 ;;9002226.02101,"1905,54868-3399-01 ",.01)
 ;;54868-3399-01
 ;;9002226.02101,"1905,54868-3399-01 ",.02)
 ;;54868-3399-01
 ;;9002226.02101,"1905,54868-4063-00 ",.01)
 ;;54868-4063-00
 ;;9002226.02101,"1905,54868-4063-00 ",.02)
 ;;54868-4063-00
 ;;9002226.02101,"1905,54868-4063-01 ",.01)
 ;;54868-4063-01
 ;;9002226.02101,"1905,54868-4063-01 ",.02)
 ;;54868-4063-01
 ;;9002226.02101,"1905,54868-4286-00 ",.01)
 ;;54868-4286-00
 ;;9002226.02101,"1905,54868-4286-00 ",.02)
 ;;54868-4286-00
 ;;9002226.02101,"1905,54868-4286-01 ",.01)
 ;;54868-4286-01
 ;;9002226.02101,"1905,54868-4286-01 ",.02)
 ;;54868-4286-01
 ;;9002226.02101,"1905,54868-4286-02 ",.01)
 ;;54868-4286-02
 ;;9002226.02101,"1905,54868-4286-02 ",.02)
 ;;54868-4286-02
 ;;9002226.02101,"1905,54868-4286-03 ",.01)
 ;;54868-4286-03
 ;;9002226.02101,"1905,54868-4286-03 ",.02)
 ;;54868-4286-03
 ;;9002226.02101,"1905,54868-4286-04 ",.01)
 ;;54868-4286-04
 ;;9002226.02101,"1905,54868-4286-04 ",.02)
 ;;54868-4286-04
 ;;9002226.02101,"1905,54868-4286-05 ",.01)
 ;;54868-4286-05
 ;;9002226.02101,"1905,54868-4286-05 ",.02)
 ;;54868-4286-05
 ;;9002226.02101,"1905,54868-4349-00 ",.01)
 ;;54868-4349-00
 ;;9002226.02101,"1905,54868-4349-00 ",.02)
 ;;54868-4349-00
 ;;9002226.02101,"1905,54868-4349-01 ",.01)
 ;;54868-4349-01
 ;;9002226.02101,"1905,54868-4349-01 ",.02)
 ;;54868-4349-01
 ;;9002226.02101,"1905,54868-4349-02 ",.01)
 ;;54868-4349-02
 ;;9002226.02101,"1905,54868-4349-02 ",.02)
 ;;54868-4349-02
 ;;9002226.02101,"1905,54868-4349-03 ",.01)
 ;;54868-4349-03
 ;;9002226.02101,"1905,54868-4349-03 ",.02)
 ;;54868-4349-03
 ;;9002226.02101,"1905,54868-4349-05 ",.01)
 ;;54868-4349-05
 ;;9002226.02101,"1905,54868-4349-05 ",.02)
 ;;54868-4349-05
 ;;9002226.02101,"1905,54868-4400-00 ",.01)
 ;;54868-4400-00
 ;;9002226.02101,"1905,54868-4400-00 ",.02)
 ;;54868-4400-00
 ;;9002226.02101,"1905,54868-4400-01 ",.01)
 ;;54868-4400-01
 ;;9002226.02101,"1905,54868-4400-01 ",.02)
 ;;54868-4400-01
 ;;9002226.02101,"1905,54868-4400-02 ",.01)
 ;;54868-4400-02
 ;;9002226.02101,"1905,54868-4400-02 ",.02)
 ;;54868-4400-02
 ;;9002226.02101,"1905,54868-4400-03 ",.01)
 ;;54868-4400-03
 ;;9002226.02101,"1905,54868-4400-03 ",.02)
 ;;54868-4400-03
 ;;9002226.02101,"1905,54868-4400-04 ",.01)
 ;;54868-4400-04
 ;;9002226.02101,"1905,54868-4400-04 ",.02)
 ;;54868-4400-04
 ;;9002226.02101,"1905,54868-4402-00 ",.01)
 ;;54868-4402-00
 ;;9002226.02101,"1905,54868-4402-00 ",.02)
 ;;54868-4402-00
 ;;9002226.02101,"1905,54868-4402-01 ",.01)
 ;;54868-4402-01
 ;;9002226.02101,"1905,54868-4402-01 ",.02)
 ;;54868-4402-01
 ;;9002226.02101,"1905,54868-4402-02 ",.01)
 ;;54868-4402-02
 ;;9002226.02101,"1905,54868-4402-02 ",.02)
 ;;54868-4402-02
 ;;9002226.02101,"1905,54868-4402-03 ",.01)
 ;;54868-4402-03
 ;;9002226.02101,"1905,54868-4402-03 ",.02)
 ;;54868-4402-03
 ;;9002226.02101,"1905,54868-4422-00 ",.01)
 ;;54868-4422-00
 ;;9002226.02101,"1905,54868-4422-00 ",.02)
 ;;54868-4422-00
 ;;9002226.02101,"1905,54868-4422-01 ",.01)
 ;;54868-4422-01
 ;;9002226.02101,"1905,54868-4422-01 ",.02)
 ;;54868-4422-01
 ;;9002226.02101,"1905,54868-4422-02 ",.01)
 ;;54868-4422-02
 ;;9002226.02101,"1905,54868-4422-02 ",.02)
 ;;54868-4422-02
 ;;9002226.02101,"1905,54868-4422-03 ",.01)
 ;;54868-4422-03
 ;;9002226.02101,"1905,54868-4422-03 ",.02)
 ;;54868-4422-03
 ;;9002226.02101,"1905,54868-4422-04 ",.01)
 ;;54868-4422-04
 ;;9002226.02101,"1905,54868-4422-04 ",.02)
 ;;54868-4422-04
 ;;9002226.02101,"1905,54868-4422-05 ",.01)
 ;;54868-4422-05
 ;;9002226.02101,"1905,54868-4422-05 ",.02)
 ;;54868-4422-05
 ;;9002226.02101,"1905,54868-4871-00 ",.01)
 ;;54868-4871-00
 ;;9002226.02101,"1905,54868-4871-00 ",.02)
 ;;54868-4871-00
 ;;9002226.02101,"1905,54868-4871-01 ",.01)
 ;;54868-4871-01
 ;;9002226.02101,"1905,54868-4871-01 ",.02)
 ;;54868-4871-01
 ;;9002226.02101,"1905,54868-4871-02 ",.01)
 ;;54868-4871-02
 ;;9002226.02101,"1905,54868-4871-02 ",.02)
 ;;54868-4871-02
 ;;9002226.02101,"1905,54868-4871-03 ",.01)
 ;;54868-4871-03
 ;;9002226.02101,"1905,54868-4871-03 ",.02)
 ;;54868-4871-03
 ;;9002226.02101,"1905,54868-4873-00 ",.01)
 ;;54868-4873-00
 ;;9002226.02101,"1905,54868-4873-00 ",.02)
 ;;54868-4873-00
 ;;9002226.02101,"1905,54868-4873-01 ",.01)
 ;;54868-4873-01
 ;;9002226.02101,"1905,54868-4873-01 ",.02)
 ;;54868-4873-01
 ;;9002226.02101,"1905,54868-4873-03 ",.01)
 ;;54868-4873-03
 ;;9002226.02101,"1905,54868-4873-03 ",.02)
 ;;54868-4873-03
 ;;9002226.02101,"1905,54868-4873-04 ",.01)
 ;;54868-4873-04
 ;;9002226.02101,"1905,54868-4873-04 ",.02)
 ;;54868-4873-04
 ;;9002226.02101,"1905,54868-4950-00 ",.01)
 ;;54868-4950-00
 ;;9002226.02101,"1905,54868-4950-00 ",.02)
 ;;54868-4950-00
 ;;9002226.02101,"1905,54868-4950-02 ",.01)
 ;;54868-4950-02
 ;;9002226.02101,"1905,54868-4950-02 ",.02)
 ;;54868-4950-02
 ;;9002226.02101,"1905,54868-4950-03 ",.01)
 ;;54868-4950-03
 ;;9002226.02101,"1905,54868-4950-03 ",.02)
 ;;54868-4950-03
 ;;9002226.02101,"1905,54868-5112-00 ",.01)
 ;;54868-5112-00
 ;;9002226.02101,"1905,54868-5112-00 ",.02)
 ;;54868-5112-00
 ;;9002226.02101,"1905,54868-5112-01 ",.01)
 ;;54868-5112-01
 ;;9002226.02101,"1905,54868-5112-01 ",.02)
 ;;54868-5112-01
 ;;9002226.02101,"1905,54868-5207-00 ",.01)
 ;;54868-5207-00
 ;;9002226.02101,"1905,54868-5207-00 ",.02)
 ;;54868-5207-00
 ;;9002226.02101,"1905,54868-5207-01 ",.01)
 ;;54868-5207-01
 ;;9002226.02101,"1905,54868-5207-01 ",.02)
 ;;54868-5207-01
