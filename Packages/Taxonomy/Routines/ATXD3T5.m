ATXD3T5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"548,M06.4 ",.02)
 ;;M06.4
 ;;9002226.02101,"548,M06.4 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.80 ",.01)
 ;;M06.80
 ;;9002226.02101,"548,M06.80 ",.02)
 ;;M06.80
 ;;9002226.02101,"548,M06.80 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.811 ",.01)
 ;;M06.811
 ;;9002226.02101,"548,M06.811 ",.02)
 ;;M06.811
 ;;9002226.02101,"548,M06.811 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.812 ",.01)
 ;;M06.812
 ;;9002226.02101,"548,M06.812 ",.02)
 ;;M06.812
 ;;9002226.02101,"548,M06.812 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.819 ",.01)
 ;;M06.819
 ;;9002226.02101,"548,M06.819 ",.02)
 ;;M06.819
 ;;9002226.02101,"548,M06.819 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.821 ",.01)
 ;;M06.821
 ;;9002226.02101,"548,M06.821 ",.02)
 ;;M06.821
 ;;9002226.02101,"548,M06.821 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.822 ",.01)
 ;;M06.822
 ;;9002226.02101,"548,M06.822 ",.02)
 ;;M06.822
 ;;9002226.02101,"548,M06.822 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.829 ",.01)
 ;;M06.829
 ;;9002226.02101,"548,M06.829 ",.02)
 ;;M06.829
 ;;9002226.02101,"548,M06.829 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.831 ",.01)
 ;;M06.831
 ;;9002226.02101,"548,M06.831 ",.02)
 ;;M06.831
 ;;9002226.02101,"548,M06.831 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.832 ",.01)
 ;;M06.832
 ;;9002226.02101,"548,M06.832 ",.02)
 ;;M06.832
 ;;9002226.02101,"548,M06.832 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.839 ",.01)
 ;;M06.839
 ;;9002226.02101,"548,M06.839 ",.02)
 ;;M06.839
 ;;9002226.02101,"548,M06.839 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.841 ",.01)
 ;;M06.841
 ;;9002226.02101,"548,M06.841 ",.02)
 ;;M06.841
 ;;9002226.02101,"548,M06.841 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.842 ",.01)
 ;;M06.842
 ;;9002226.02101,"548,M06.842 ",.02)
 ;;M06.842
 ;;9002226.02101,"548,M06.842 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.849 ",.01)
 ;;M06.849
 ;;9002226.02101,"548,M06.849 ",.02)
 ;;M06.849
 ;;9002226.02101,"548,M06.849 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.851 ",.01)
 ;;M06.851
 ;;9002226.02101,"548,M06.851 ",.02)
 ;;M06.851
 ;;9002226.02101,"548,M06.851 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.852 ",.01)
 ;;M06.852
 ;;9002226.02101,"548,M06.852 ",.02)
 ;;M06.852
 ;;9002226.02101,"548,M06.852 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.859 ",.01)
 ;;M06.859
 ;;9002226.02101,"548,M06.859 ",.02)
 ;;M06.859
 ;;9002226.02101,"548,M06.859 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.861 ",.01)
 ;;M06.861
 ;;9002226.02101,"548,M06.861 ",.02)
 ;;M06.861
 ;;9002226.02101,"548,M06.861 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.862 ",.01)
 ;;M06.862
 ;;9002226.02101,"548,M06.862 ",.02)
 ;;M06.862
 ;;9002226.02101,"548,M06.862 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.869 ",.01)
 ;;M06.869
 ;;9002226.02101,"548,M06.869 ",.02)
 ;;M06.869
 ;;9002226.02101,"548,M06.869 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.871 ",.01)
 ;;M06.871
 ;;9002226.02101,"548,M06.871 ",.02)
 ;;M06.871
 ;;9002226.02101,"548,M06.871 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.872 ",.01)
 ;;M06.872
 ;;9002226.02101,"548,M06.872 ",.02)
 ;;M06.872
 ;;9002226.02101,"548,M06.872 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.879 ",.01)
 ;;M06.879
 ;;9002226.02101,"548,M06.879 ",.02)
 ;;M06.879
 ;;9002226.02101,"548,M06.879 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.88 ",.01)
 ;;M06.88
 ;;9002226.02101,"548,M06.88 ",.02)
 ;;M06.88
 ;;9002226.02101,"548,M06.88 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.89 ",.01)
 ;;M06.89
 ;;9002226.02101,"548,M06.89 ",.02)
 ;;M06.89
 ;;9002226.02101,"548,M06.89 ",.03)
 ;;30
 ;;9002226.02101,"548,M06.9 ",.01)
 ;;M06.9
 ;;9002226.02101,"548,M06.9 ",.02)
 ;;M06.9
 ;;9002226.02101,"548,M06.9 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.00 ",.01)
 ;;M08.00
 ;;9002226.02101,"548,M08.00 ",.02)
 ;;M08.00
 ;;9002226.02101,"548,M08.00 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.011 ",.01)
 ;;M08.011
 ;;9002226.02101,"548,M08.011 ",.02)
 ;;M08.011
 ;;9002226.02101,"548,M08.011 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.012 ",.01)
 ;;M08.012
 ;;9002226.02101,"548,M08.012 ",.02)
 ;;M08.012
 ;;9002226.02101,"548,M08.012 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.019 ",.01)
 ;;M08.019
 ;;9002226.02101,"548,M08.019 ",.02)
 ;;M08.019
 ;;9002226.02101,"548,M08.019 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.021 ",.01)
 ;;M08.021
 ;;9002226.02101,"548,M08.021 ",.02)
 ;;M08.021
 ;;9002226.02101,"548,M08.021 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.022 ",.01)
 ;;M08.022
 ;;9002226.02101,"548,M08.022 ",.02)
 ;;M08.022
 ;;9002226.02101,"548,M08.022 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.029 ",.01)
 ;;M08.029
 ;;9002226.02101,"548,M08.029 ",.02)
 ;;M08.029
 ;;9002226.02101,"548,M08.029 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.031 ",.01)
 ;;M08.031
 ;;9002226.02101,"548,M08.031 ",.02)
 ;;M08.031
 ;;9002226.02101,"548,M08.031 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.032 ",.01)
 ;;M08.032
 ;;9002226.02101,"548,M08.032 ",.02)
 ;;M08.032
 ;;9002226.02101,"548,M08.032 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.039 ",.01)
 ;;M08.039
 ;;9002226.02101,"548,M08.039 ",.02)
 ;;M08.039
 ;;9002226.02101,"548,M08.039 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.041 ",.01)
 ;;M08.041
 ;;9002226.02101,"548,M08.041 ",.02)
 ;;M08.041
 ;;9002226.02101,"548,M08.041 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.042 ",.01)
 ;;M08.042
 ;;9002226.02101,"548,M08.042 ",.02)
 ;;M08.042
 ;;9002226.02101,"548,M08.042 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.049 ",.01)
 ;;M08.049
 ;;9002226.02101,"548,M08.049 ",.02)
 ;;M08.049
 ;;9002226.02101,"548,M08.049 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.051 ",.01)
 ;;M08.051
 ;;9002226.02101,"548,M08.051 ",.02)
 ;;M08.051
 ;;9002226.02101,"548,M08.051 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.052 ",.01)
 ;;M08.052
 ;;9002226.02101,"548,M08.052 ",.02)
 ;;M08.052
 ;;9002226.02101,"548,M08.052 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.059 ",.01)
 ;;M08.059
 ;;9002226.02101,"548,M08.059 ",.02)
 ;;M08.059
 ;;9002226.02101,"548,M08.059 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.061 ",.01)
 ;;M08.061
 ;;9002226.02101,"548,M08.061 ",.02)
 ;;M08.061
 ;;9002226.02101,"548,M08.061 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.062 ",.01)
 ;;M08.062
 ;;9002226.02101,"548,M08.062 ",.02)
 ;;M08.062
 ;;9002226.02101,"548,M08.062 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.069 ",.01)
 ;;M08.069
 ;;9002226.02101,"548,M08.069 ",.02)
 ;;M08.069
 ;;9002226.02101,"548,M08.069 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.071 ",.01)
 ;;M08.071
 ;;9002226.02101,"548,M08.071 ",.02)
 ;;M08.071
 ;;9002226.02101,"548,M08.071 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.072 ",.01)
 ;;M08.072
 ;;9002226.02101,"548,M08.072 ",.02)
 ;;M08.072
 ;;9002226.02101,"548,M08.072 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.079 ",.01)
 ;;M08.079
 ;;9002226.02101,"548,M08.079 ",.02)
 ;;M08.079
 ;;9002226.02101,"548,M08.079 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.08 ",.01)
 ;;M08.08
 ;;9002226.02101,"548,M08.08 ",.02)
 ;;M08.08
 ;;9002226.02101,"548,M08.08 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.09 ",.01)
 ;;M08.09
 ;;9002226.02101,"548,M08.09 ",.02)
 ;;M08.09
 ;;9002226.02101,"548,M08.09 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.20 ",.01)
 ;;M08.20
 ;;9002226.02101,"548,M08.20 ",.02)
 ;;M08.20
 ;;9002226.02101,"548,M08.20 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.211 ",.01)
 ;;M08.211
 ;;9002226.02101,"548,M08.211 ",.02)
 ;;M08.211
 ;;9002226.02101,"548,M08.211 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.212 ",.01)
 ;;M08.212
 ;;9002226.02101,"548,M08.212 ",.02)
 ;;M08.212
 ;;9002226.02101,"548,M08.212 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.219 ",.01)
 ;;M08.219
 ;;9002226.02101,"548,M08.219 ",.02)
 ;;M08.219
 ;;9002226.02101,"548,M08.219 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.221 ",.01)
 ;;M08.221
 ;;9002226.02101,"548,M08.221 ",.02)
 ;;M08.221
 ;;9002226.02101,"548,M08.221 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.222 ",.01)
 ;;M08.222
 ;;9002226.02101,"548,M08.222 ",.02)
 ;;M08.222
 ;;9002226.02101,"548,M08.222 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.229 ",.01)
 ;;M08.229
 ;;9002226.02101,"548,M08.229 ",.02)
 ;;M08.229
 ;;9002226.02101,"548,M08.229 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.231 ",.01)
 ;;M08.231
 ;;9002226.02101,"548,M08.231 ",.02)
 ;;M08.231
 ;;9002226.02101,"548,M08.231 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.232 ",.01)
 ;;M08.232
 ;;9002226.02101,"548,M08.232 ",.02)
 ;;M08.232
 ;;9002226.02101,"548,M08.232 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.239 ",.01)
 ;;M08.239
 ;;9002226.02101,"548,M08.239 ",.02)
 ;;M08.239
 ;;9002226.02101,"548,M08.239 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.241 ",.01)
 ;;M08.241
 ;;9002226.02101,"548,M08.241 ",.02)
 ;;M08.241
 ;;9002226.02101,"548,M08.241 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.242 ",.01)
 ;;M08.242
 ;;9002226.02101,"548,M08.242 ",.02)
 ;;M08.242
 ;;9002226.02101,"548,M08.242 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.249 ",.01)
 ;;M08.249
 ;;9002226.02101,"548,M08.249 ",.02)
 ;;M08.249
 ;;9002226.02101,"548,M08.249 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.251 ",.01)
 ;;M08.251
 ;;9002226.02101,"548,M08.251 ",.02)
 ;;M08.251
 ;;9002226.02101,"548,M08.251 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.252 ",.01)
 ;;M08.252
 ;;9002226.02101,"548,M08.252 ",.02)
 ;;M08.252
 ;;9002226.02101,"548,M08.252 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.259 ",.01)
 ;;M08.259
 ;;9002226.02101,"548,M08.259 ",.02)
 ;;M08.259
 ;;9002226.02101,"548,M08.259 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.261 ",.01)
 ;;M08.261
 ;;9002226.02101,"548,M08.261 ",.02)
 ;;M08.261
 ;;9002226.02101,"548,M08.261 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.262 ",.01)
 ;;M08.262
 ;;9002226.02101,"548,M08.262 ",.02)
 ;;M08.262
 ;;9002226.02101,"548,M08.262 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.269 ",.01)
 ;;M08.269
 ;;9002226.02101,"548,M08.269 ",.02)
 ;;M08.269
 ;;9002226.02101,"548,M08.269 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.271 ",.01)
 ;;M08.271
 ;;9002226.02101,"548,M08.271 ",.02)
 ;;M08.271
 ;;9002226.02101,"548,M08.271 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.272 ",.01)
 ;;M08.272
 ;;9002226.02101,"548,M08.272 ",.02)
 ;;M08.272
 ;;9002226.02101,"548,M08.272 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.279 ",.01)
 ;;M08.279
 ;;9002226.02101,"548,M08.279 ",.02)
 ;;M08.279
 ;;9002226.02101,"548,M08.279 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.28 ",.01)
 ;;M08.28
 ;;9002226.02101,"548,M08.28 ",.02)
 ;;M08.28
 ;;9002226.02101,"548,M08.28 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.29 ",.01)
 ;;M08.29
 ;;9002226.02101,"548,M08.29 ",.02)
 ;;M08.29
 ;;9002226.02101,"548,M08.29 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.3 ",.01)
 ;;M08.3
 ;;9002226.02101,"548,M08.3 ",.02)
 ;;M08.3
 ;;9002226.02101,"548,M08.3 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.40 ",.01)
 ;;M08.40
 ;;9002226.02101,"548,M08.40 ",.02)
 ;;M08.40
 ;;9002226.02101,"548,M08.40 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.411 ",.01)
 ;;M08.411
 ;;9002226.02101,"548,M08.411 ",.02)
 ;;M08.411
 ;;9002226.02101,"548,M08.411 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.412 ",.01)
 ;;M08.412
 ;;9002226.02101,"548,M08.412 ",.02)
 ;;M08.412
 ;;9002226.02101,"548,M08.412 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.419 ",.01)
 ;;M08.419
 ;;9002226.02101,"548,M08.419 ",.02)
 ;;M08.419
 ;;9002226.02101,"548,M08.419 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.421 ",.01)
 ;;M08.421
 ;;9002226.02101,"548,M08.421 ",.02)
 ;;M08.421
 ;;9002226.02101,"548,M08.421 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.422 ",.01)
 ;;M08.422
 ;;9002226.02101,"548,M08.422 ",.02)
 ;;M08.422
 ;;9002226.02101,"548,M08.422 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.429 ",.01)
 ;;M08.429
 ;;9002226.02101,"548,M08.429 ",.02)
 ;;M08.429
 ;;9002226.02101,"548,M08.429 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.431 ",.01)
 ;;M08.431
 ;;9002226.02101,"548,M08.431 ",.02)
 ;;M08.431
 ;;9002226.02101,"548,M08.431 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.432 ",.01)
 ;;M08.432
 ;;9002226.02101,"548,M08.432 ",.02)
 ;;M08.432
 ;;9002226.02101,"548,M08.432 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.439 ",.01)
 ;;M08.439
 ;;9002226.02101,"548,M08.439 ",.02)
 ;;M08.439
 ;;9002226.02101,"548,M08.439 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.441 ",.01)
 ;;M08.441
 ;;9002226.02101,"548,M08.441 ",.02)
 ;;M08.441
 ;;9002226.02101,"548,M08.441 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.442 ",.01)
 ;;M08.442
 ;;9002226.02101,"548,M08.442 ",.02)
 ;;M08.442
 ;;9002226.02101,"548,M08.442 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.449 ",.01)
 ;;M08.449
 ;;9002226.02101,"548,M08.449 ",.02)
 ;;M08.449
 ;;9002226.02101,"548,M08.449 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.451 ",.01)
 ;;M08.451
 ;;9002226.02101,"548,M08.451 ",.02)
 ;;M08.451
 ;;9002226.02101,"548,M08.451 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.452 ",.01)
 ;;M08.452
 ;;9002226.02101,"548,M08.452 ",.02)
 ;;M08.452
 ;;9002226.02101,"548,M08.452 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.459 ",.01)
 ;;M08.459
 ;;9002226.02101,"548,M08.459 ",.02)
 ;;M08.459
 ;;9002226.02101,"548,M08.459 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.461 ",.01)
 ;;M08.461
 ;;9002226.02101,"548,M08.461 ",.02)
 ;;M08.461
 ;;9002226.02101,"548,M08.461 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.462 ",.01)
 ;;M08.462
 ;;9002226.02101,"548,M08.462 ",.02)
 ;;M08.462
 ;;9002226.02101,"548,M08.462 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.469 ",.01)
 ;;M08.469
 ;;9002226.02101,"548,M08.469 ",.02)
 ;;M08.469
 ;;9002226.02101,"548,M08.469 ",.03)
 ;;30
 ;;9002226.02101,"548,M08.471 ",.01)
 ;;M08.471
