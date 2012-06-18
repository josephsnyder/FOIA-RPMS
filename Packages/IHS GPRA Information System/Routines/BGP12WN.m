BGP12WN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,54868-3283-02 ",.01)
 ;;54868-3283-02
 ;;9002226.02101,"804,54868-3283-02 ",.02)
 ;;54868-3283-02
 ;;9002226.02101,"804,54868-3550-00 ",.01)
 ;;54868-3550-00
 ;;9002226.02101,"804,54868-3550-00 ",.02)
 ;;54868-3550-00
 ;;9002226.02101,"804,54868-3555-00 ",.01)
 ;;54868-3555-00
 ;;9002226.02101,"804,54868-3555-00 ",.02)
 ;;54868-3555-00
 ;;9002226.02101,"804,54868-4172-00 ",.01)
 ;;54868-4172-00
 ;;9002226.02101,"804,54868-4172-00 ",.02)
 ;;54868-4172-00
 ;;9002226.02101,"804,54868-4172-01 ",.01)
 ;;54868-4172-01
 ;;9002226.02101,"804,54868-4172-01 ",.02)
 ;;54868-4172-01
 ;;9002226.02101,"804,54868-4172-02 ",.01)
 ;;54868-4172-02
 ;;9002226.02101,"804,54868-4172-02 ",.02)
 ;;54868-4172-02
 ;;9002226.02101,"804,54868-4182-00 ",.01)
 ;;54868-4182-00
 ;;9002226.02101,"804,54868-4182-00 ",.02)
 ;;54868-4182-00
 ;;9002226.02101,"804,54868-4264-00 ",.01)
 ;;54868-4264-00
 ;;9002226.02101,"804,54868-4264-00 ",.02)
 ;;54868-4264-00
 ;;9002226.02101,"804,54868-4295-00 ",.01)
 ;;54868-4295-00
 ;;9002226.02101,"804,54868-4295-00 ",.02)
 ;;54868-4295-00
 ;;9002226.02101,"804,54868-4392-00 ",.01)
 ;;54868-4392-00
 ;;9002226.02101,"804,54868-4392-00 ",.02)
 ;;54868-4392-00
 ;;9002226.02101,"804,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"804,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"804,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"804,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"804,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"804,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"804,54868-4630-00 ",.01)
 ;;54868-4630-00
 ;;9002226.02101,"804,54868-4630-00 ",.02)
 ;;54868-4630-00
 ;;9002226.02101,"804,54868-4847-00 ",.01)
 ;;54868-4847-00
 ;;9002226.02101,"804,54868-4847-00 ",.02)
 ;;54868-4847-00
 ;;9002226.02101,"804,54868-5294-00 ",.01)
 ;;54868-5294-00
 ;;9002226.02101,"804,54868-5294-00 ",.02)
 ;;54868-5294-00
 ;;9002226.02101,"804,54868-5362-00 ",.01)
 ;;54868-5362-00
 ;;9002226.02101,"804,54868-5362-00 ",.02)
 ;;54868-5362-00
 ;;9002226.02101,"804,54868-5531-00 ",.01)
 ;;54868-5531-00
 ;;9002226.02101,"804,54868-5531-00 ",.02)
 ;;54868-5531-00
 ;;9002226.02101,"804,54868-5531-01 ",.01)
 ;;54868-5531-01
 ;;9002226.02101,"804,54868-5531-01 ",.02)
 ;;54868-5531-01
 ;;9002226.02101,"804,54868-5547-00 ",.01)
 ;;54868-5547-00
 ;;9002226.02101,"804,54868-5547-00 ",.02)
 ;;54868-5547-00
 ;;9002226.02101,"804,54868-5547-01 ",.01)
 ;;54868-5547-01
 ;;9002226.02101,"804,54868-5547-01 ",.02)
 ;;54868-5547-01
 ;;9002226.02101,"804,54868-5621-00 ",.01)
 ;;54868-5621-00
 ;;9002226.02101,"804,54868-5621-00 ",.02)
 ;;54868-5621-00
 ;;9002226.02101,"804,54868-5637-00 ",.01)
 ;;54868-5637-00
 ;;9002226.02101,"804,54868-5637-00 ",.02)
 ;;54868-5637-00
 ;;9002226.02101,"804,54868-5774-00 ",.01)
 ;;54868-5774-00
 ;;9002226.02101,"804,54868-5774-00 ",.02)
 ;;54868-5774-00
 ;;9002226.02101,"804,54868-5844-00 ",.01)
 ;;54868-5844-00
 ;;9002226.02101,"804,54868-5844-00 ",.02)
 ;;54868-5844-00
 ;;9002226.02101,"804,54868-5857-00 ",.01)
 ;;54868-5857-00
 ;;9002226.02101,"804,54868-5857-00 ",.02)
 ;;54868-5857-00
 ;;9002226.02101,"804,54868-5858-00 ",.01)
 ;;54868-5858-00
 ;;9002226.02101,"804,54868-5858-00 ",.02)
 ;;54868-5858-00
 ;;9002226.02101,"804,54868-5936-00 ",.01)
 ;;54868-5936-00
 ;;9002226.02101,"804,54868-5936-00 ",.02)
 ;;54868-5936-00
 ;;9002226.02101,"804,54868-5937-00 ",.01)
 ;;54868-5937-00
 ;;9002226.02101,"804,54868-5937-00 ",.02)
 ;;54868-5937-00
 ;;9002226.02101,"804,54868-5989-00 ",.01)
 ;;54868-5989-00
 ;;9002226.02101,"804,54868-5989-00 ",.02)
 ;;54868-5989-00
 ;;9002226.02101,"804,54868-5990-00 ",.01)
 ;;54868-5990-00
 ;;9002226.02101,"804,54868-5990-00 ",.02)
 ;;54868-5990-00
 ;;9002226.02101,"804,54868-5995-00 ",.01)
 ;;54868-5995-00
 ;;9002226.02101,"804,54868-5995-00 ",.02)
 ;;54868-5995-00
 ;;9002226.02101,"804,55045-1868-03 ",.01)
 ;;55045-1868-03
 ;;9002226.02101,"804,55045-1868-03 ",.02)
 ;;55045-1868-03
 ;;9002226.02101,"804,55045-2520-07 ",.01)
 ;;55045-2520-07
 ;;9002226.02101,"804,55045-2520-07 ",.02)
 ;;55045-2520-07
 ;;9002226.02101,"804,55045-2819-00 ",.01)
 ;;55045-2819-00
 ;;9002226.02101,"804,55045-2819-00 ",.02)
 ;;55045-2819-00
 ;;9002226.02101,"804,55045-2919-01 ",.01)
 ;;55045-2919-01
 ;;9002226.02101,"804,55045-2919-01 ",.02)
 ;;55045-2919-01
 ;;9002226.02101,"804,55045-3054-01 ",.01)
 ;;55045-3054-01
 ;;9002226.02101,"804,55045-3054-01 ",.02)
 ;;55045-3054-01
 ;;9002226.02101,"804,55045-3063-00 ",.01)
 ;;55045-3063-00
 ;;9002226.02101,"804,55045-3063-00 ",.02)
 ;;55045-3063-00
 ;;9002226.02101,"804,55045-3351-00 ",.01)
 ;;55045-3351-00
 ;;9002226.02101,"804,55045-3351-00 ",.02)
 ;;55045-3351-00
 ;;9002226.02101,"804,55045-3354-00 ",.01)
 ;;55045-3354-00
 ;;9002226.02101,"804,55045-3354-00 ",.02)
 ;;55045-3354-00
 ;;9002226.02101,"804,55045-3388-01 ",.01)
 ;;55045-3388-01
 ;;9002226.02101,"804,55045-3388-01 ",.02)
 ;;55045-3388-01
 ;;9002226.02101,"804,55045-3416-00 ",.01)
 ;;55045-3416-00
 ;;9002226.02101,"804,55045-3416-00 ",.02)
 ;;55045-3416-00
 ;;9002226.02101,"804,55045-3686-01 ",.01)
 ;;55045-3686-01
 ;;9002226.02101,"804,55045-3686-01 ",.02)
 ;;55045-3686-01
