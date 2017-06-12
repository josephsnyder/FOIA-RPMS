BGP50F23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1728,21695-0735-30 ",.01)
 ;;21695-0735-30
 ;;9002226.02101,"1728,21695-0735-30 ",.02)
 ;;21695-0735-30
 ;;9002226.02101,"1728,21695-0735-60 ",.01)
 ;;21695-0735-60
 ;;9002226.02101,"1728,21695-0735-60 ",.02)
 ;;21695-0735-60
 ;;9002226.02101,"1728,21695-0735-90 ",.01)
 ;;21695-0735-90
 ;;9002226.02101,"1728,21695-0735-90 ",.02)
 ;;21695-0735-90
 ;;9002226.02101,"1728,21695-0780-30 ",.01)
 ;;21695-0780-30
 ;;9002226.02101,"1728,21695-0780-30 ",.02)
 ;;21695-0780-30
 ;;9002226.02101,"1728,21695-0788-90 ",.01)
 ;;21695-0788-90
 ;;9002226.02101,"1728,21695-0788-90 ",.02)
 ;;21695-0788-90
 ;;9002226.02101,"1728,21695-0821-30 ",.01)
 ;;21695-0821-30
 ;;9002226.02101,"1728,21695-0821-30 ",.02)
 ;;21695-0821-30
 ;;9002226.02101,"1728,21695-0821-90 ",.01)
 ;;21695-0821-90
 ;;9002226.02101,"1728,21695-0821-90 ",.02)
 ;;21695-0821-90
 ;;9002226.02101,"1728,21695-0822-30 ",.01)
 ;;21695-0822-30
 ;;9002226.02101,"1728,21695-0822-30 ",.02)
 ;;21695-0822-30
 ;;9002226.02101,"1728,21695-0822-60 ",.01)
 ;;21695-0822-60
 ;;9002226.02101,"1728,21695-0822-60 ",.02)
 ;;21695-0822-60
 ;;9002226.02101,"1728,21695-0822-78 ",.01)
 ;;21695-0822-78
 ;;9002226.02101,"1728,21695-0822-78 ",.02)
 ;;21695-0822-78
 ;;9002226.02101,"1728,21695-0822-90 ",.01)
 ;;21695-0822-90
 ;;9002226.02101,"1728,21695-0822-90 ",.02)
 ;;21695-0822-90
 ;;9002226.02101,"1728,21695-0823-30 ",.01)
 ;;21695-0823-30
 ;;9002226.02101,"1728,21695-0823-30 ",.02)
 ;;21695-0823-30
 ;;9002226.02101,"1728,21695-0823-60 ",.01)
 ;;21695-0823-60
 ;;9002226.02101,"1728,21695-0823-60 ",.02)
 ;;21695-0823-60
 ;;9002226.02101,"1728,21695-0831-30 ",.01)
 ;;21695-0831-30
 ;;9002226.02101,"1728,21695-0831-30 ",.02)
 ;;21695-0831-30
 ;;9002226.02101,"1728,21695-0831-90 ",.01)
 ;;21695-0831-90
 ;;9002226.02101,"1728,21695-0831-90 ",.02)
 ;;21695-0831-90
 ;;9002226.02101,"1728,21695-0866-90 ",.01)
 ;;21695-0866-90
 ;;9002226.02101,"1728,21695-0866-90 ",.02)
 ;;21695-0866-90
 ;;9002226.02101,"1728,21695-0877-30 ",.01)
 ;;21695-0877-30
 ;;9002226.02101,"1728,21695-0877-30 ",.02)
 ;;21695-0877-30
 ;;9002226.02101,"1728,21695-0877-90 ",.01)
 ;;21695-0877-90
 ;;9002226.02101,"1728,21695-0877-90 ",.02)
 ;;21695-0877-90
 ;;9002226.02101,"1728,21695-0916-30 ",.01)
 ;;21695-0916-30
 ;;9002226.02101,"1728,21695-0916-30 ",.02)
 ;;21695-0916-30
 ;;9002226.02101,"1728,21695-0916-90 ",.01)
 ;;21695-0916-90
 ;;9002226.02101,"1728,21695-0916-90 ",.02)
 ;;21695-0916-90
 ;;9002226.02101,"1728,21695-0917-90 ",.01)
 ;;21695-0917-90
 ;;9002226.02101,"1728,21695-0917-90 ",.02)
 ;;21695-0917-90
 ;;9002226.02101,"1728,21695-0918-90 ",.01)
 ;;21695-0918-90
 ;;9002226.02101,"1728,21695-0918-90 ",.02)
 ;;21695-0918-90
 ;;9002226.02101,"1728,21695-0919-90 ",.01)
 ;;21695-0919-90
 ;;9002226.02101,"1728,21695-0919-90 ",.02)
 ;;21695-0919-90
 ;;9002226.02101,"1728,21695-0966-30 ",.01)
 ;;21695-0966-30
 ;;9002226.02101,"1728,21695-0966-30 ",.02)
 ;;21695-0966-30
 ;;9002226.02101,"1728,21695-0989-30 ",.01)
 ;;21695-0989-30
 ;;9002226.02101,"1728,21695-0989-30 ",.02)
 ;;21695-0989-30
 ;;9002226.02101,"1728,23155-0060-01 ",.01)
 ;;23155-0060-01
 ;;9002226.02101,"1728,23155-0060-01 ",.02)
 ;;23155-0060-01
 ;;9002226.02101,"1728,23155-0061-01 ",.01)
 ;;23155-0061-01
 ;;9002226.02101,"1728,23155-0061-01 ",.02)
 ;;23155-0061-01
 ;;9002226.02101,"1728,23490-0107-03 ",.01)
 ;;23490-0107-03
 ;;9002226.02101,"1728,23490-0107-03 ",.02)
 ;;23490-0107-03
 ;;9002226.02101,"1728,23490-0108-03 ",.01)
 ;;23490-0108-03
 ;;9002226.02101,"1728,23490-0108-03 ",.02)
 ;;23490-0108-03
 ;;9002226.02101,"1728,23490-0109-09 ",.01)
 ;;23490-0109-09
 ;;9002226.02101,"1728,23490-0109-09 ",.02)
 ;;23490-0109-09
 ;;9002226.02101,"1728,23490-5118-01 ",.01)
 ;;23490-5118-01
 ;;9002226.02101,"1728,23490-5118-01 ",.02)
 ;;23490-5118-01
 ;;9002226.02101,"1728,23490-5119-01 ",.01)
 ;;23490-5119-01
 ;;9002226.02101,"1728,23490-5119-01 ",.02)
 ;;23490-5119-01
 ;;9002226.02101,"1728,23490-5119-02 ",.01)
 ;;23490-5119-02
 ;;9002226.02101,"1728,23490-5119-02 ",.02)
 ;;23490-5119-02
 ;;9002226.02101,"1728,23490-5120-03 ",.01)
 ;;23490-5120-03
 ;;9002226.02101,"1728,23490-5120-03 ",.02)
 ;;23490-5120-03
 ;;9002226.02101,"1728,23490-5120-09 ",.01)
 ;;23490-5120-09
 ;;9002226.02101,"1728,23490-5120-09 ",.02)
 ;;23490-5120-09
 ;;9002226.02101,"1728,23490-5121-01 ",.01)
 ;;23490-5121-01
 ;;9002226.02101,"1728,23490-5121-01 ",.02)
 ;;23490-5121-01
 ;;9002226.02101,"1728,23490-5191-01 ",.01)
 ;;23490-5191-01
 ;;9002226.02101,"1728,23490-5191-01 ",.02)
 ;;23490-5191-01
 ;;9002226.02101,"1728,23490-5192-01 ",.01)
 ;;23490-5192-01
 ;;9002226.02101,"1728,23490-5192-01 ",.02)
 ;;23490-5192-01
 ;;9002226.02101,"1728,23490-5193-01 ",.01)
 ;;23490-5193-01
 ;;9002226.02101,"1728,23490-5193-01 ",.02)
 ;;23490-5193-01
 ;;9002226.02101,"1728,23490-5193-02 ",.01)
 ;;23490-5193-02
 ;;9002226.02101,"1728,23490-5193-02 ",.02)
 ;;23490-5193-02
 ;;9002226.02101,"1728,23490-5193-03 ",.01)
 ;;23490-5193-03
 ;;9002226.02101,"1728,23490-5193-03 ",.02)
 ;;23490-5193-03
 ;;9002226.02101,"1728,23490-5194-00 ",.01)
 ;;23490-5194-00
 ;;9002226.02101,"1728,23490-5194-00 ",.02)
 ;;23490-5194-00
 ;;9002226.02101,"1728,23490-5194-01 ",.01)
 ;;23490-5194-01
 ;;9002226.02101,"1728,23490-5194-01 ",.02)
 ;;23490-5194-01
 ;;9002226.02101,"1728,23490-5194-02 ",.01)
 ;;23490-5194-02
 ;;9002226.02101,"1728,23490-5194-02 ",.02)
 ;;23490-5194-02
 ;;9002226.02101,"1728,23490-5491-01 ",.01)
 ;;23490-5491-01
 ;;9002226.02101,"1728,23490-5491-01 ",.02)
 ;;23490-5491-01
 ;;9002226.02101,"1728,23490-5491-02 ",.01)
 ;;23490-5491-02
 ;;9002226.02101,"1728,23490-5491-02 ",.02)
 ;;23490-5491-02
 ;;9002226.02101,"1728,23490-5491-08 ",.01)
 ;;23490-5491-08
 ;;9002226.02101,"1728,23490-5491-08 ",.02)
 ;;23490-5491-08
 ;;9002226.02101,"1728,23490-5491-09 ",.01)
 ;;23490-5491-09
 ;;9002226.02101,"1728,23490-5491-09 ",.02)
 ;;23490-5491-09
 ;;9002226.02101,"1728,23490-5492-01 ",.01)
 ;;23490-5492-01
 ;;9002226.02101,"1728,23490-5492-01 ",.02)
 ;;23490-5492-01
 ;;9002226.02101,"1728,23490-5492-02 ",.01)
 ;;23490-5492-02
 ;;9002226.02101,"1728,23490-5492-02 ",.02)
 ;;23490-5492-02
 ;;9002226.02101,"1728,23490-5494-01 ",.01)
 ;;23490-5494-01
 ;;9002226.02101,"1728,23490-5494-01 ",.02)
 ;;23490-5494-01
 ;;9002226.02101,"1728,23490-5494-02 ",.01)
 ;;23490-5494-02
 ;;9002226.02101,"1728,23490-5494-02 ",.02)
 ;;23490-5494-02
 ;;9002226.02101,"1728,23490-5815-00 ",.01)
 ;;23490-5815-00
 ;;9002226.02101,"1728,23490-5815-00 ",.02)
 ;;23490-5815-00
 ;;9002226.02101,"1728,23490-5815-01 ",.01)
 ;;23490-5815-01
 ;;9002226.02101,"1728,23490-5815-01 ",.02)
 ;;23490-5815-01
 ;;9002226.02101,"1728,23490-5815-06 ",.01)
 ;;23490-5815-06
 ;;9002226.02101,"1728,23490-5815-06 ",.02)
 ;;23490-5815-06
 ;;9002226.02101,"1728,23490-5815-09 ",.01)
 ;;23490-5815-09
 ;;9002226.02101,"1728,23490-5815-09 ",.02)
 ;;23490-5815-09
 ;;9002226.02101,"1728,23490-5816-01 ",.01)
 ;;23490-5816-01
 ;;9002226.02101,"1728,23490-5816-01 ",.02)
 ;;23490-5816-01
 ;;9002226.02101,"1728,23490-5816-02 ",.01)
 ;;23490-5816-02
 ;;9002226.02101,"1728,23490-5816-02 ",.02)
 ;;23490-5816-02
 ;;9002226.02101,"1728,23490-5816-06 ",.01)
 ;;23490-5816-06
 ;;9002226.02101,"1728,23490-5816-06 ",.02)
 ;;23490-5816-06
 ;;9002226.02101,"1728,23490-5817-02 ",.01)
 ;;23490-5817-02
 ;;9002226.02101,"1728,23490-5817-02 ",.02)
 ;;23490-5817-02
 ;;9002226.02101,"1728,23490-5818-02 ",.01)
 ;;23490-5818-02
 ;;9002226.02101,"1728,23490-5818-02 ",.02)
 ;;23490-5818-02
 ;;9002226.02101,"1728,23490-5818-09 ",.01)
 ;;23490-5818-09
 ;;9002226.02101,"1728,23490-5818-09 ",.02)
 ;;23490-5818-09
 ;;9002226.02101,"1728,23490-5819-02 ",.01)
 ;;23490-5819-02
 ;;9002226.02101,"1728,23490-5819-02 ",.02)
 ;;23490-5819-02
 ;;9002226.02101,"1728,23490-5819-09 ",.01)
 ;;23490-5819-09
 ;;9002226.02101,"1728,23490-5819-09 ",.02)
 ;;23490-5819-09
 ;;9002226.02101,"1728,23490-5820-01 ",.01)
 ;;23490-5820-01
 ;;9002226.02101,"1728,23490-5820-01 ",.02)
 ;;23490-5820-01
 ;;9002226.02101,"1728,23490-5820-03 ",.01)
 ;;23490-5820-03
 ;;9002226.02101,"1728,23490-5820-03 ",.02)
 ;;23490-5820-03
 ;;9002226.02101,"1728,23490-5820-04 ",.01)
 ;;23490-5820-04
 ;;9002226.02101,"1728,23490-5820-04 ",.02)
 ;;23490-5820-04
 ;;9002226.02101,"1728,23490-5821-01 ",.01)
 ;;23490-5821-01
 ;;9002226.02101,"1728,23490-5821-01 ",.02)
 ;;23490-5821-01
 ;;9002226.02101,"1728,23490-5821-09 ",.01)
 ;;23490-5821-09
 ;;9002226.02101,"1728,23490-5821-09 ",.02)
 ;;23490-5821-09
 ;;9002226.02101,"1728,23490-5822-01 ",.01)
 ;;23490-5822-01
 ;;9002226.02101,"1728,23490-5822-01 ",.02)
 ;;23490-5822-01
 ;;9002226.02101,"1728,23490-7060-01 ",.01)
 ;;23490-7060-01
 ;;9002226.02101,"1728,23490-7060-01 ",.02)
 ;;23490-7060-01
 ;;9002226.02101,"1728,23490-7062-01 ",.01)
 ;;23490-7062-01
 ;;9002226.02101,"1728,23490-7062-01 ",.02)
 ;;23490-7062-01
 ;;9002226.02101,"1728,23490-7590-01 ",.01)
 ;;23490-7590-01
 ;;9002226.02101,"1728,23490-7590-01 ",.02)
 ;;23490-7590-01
 ;;9002226.02101,"1728,23490-7591-01 ",.01)
 ;;23490-7591-01
 ;;9002226.02101,"1728,23490-7591-01 ",.02)
 ;;23490-7591-01
 ;;9002226.02101,"1728,23490-7594-01 ",.01)
 ;;23490-7594-01
 ;;9002226.02101,"1728,23490-7594-01 ",.02)
 ;;23490-7594-01
 ;;9002226.02101,"1728,23490-9364-03 ",.01)
 ;;23490-9364-03
 ;;9002226.02101,"1728,23490-9364-03 ",.02)
 ;;23490-9364-03
 ;;9002226.02101,"1728,23490-9409-03 ",.01)
 ;;23490-9409-03
 ;;9002226.02101,"1728,23490-9409-03 ",.02)
 ;;23490-9409-03
 ;;9002226.02101,"1728,23490-9409-09 ",.01)
 ;;23490-9409-09
 ;;9002226.02101,"1728,23490-9409-09 ",.02)
 ;;23490-9409-09
 ;;9002226.02101,"1728,23490-9410-03 ",.01)
 ;;23490-9410-03
 ;;9002226.02101,"1728,23490-9410-03 ",.02)
 ;;23490-9410-03
 ;;9002226.02101,"1728,23490-9410-09 ",.01)
 ;;23490-9410-09
 ;;9002226.02101,"1728,23490-9410-09 ",.02)
 ;;23490-9410-09
 ;;9002226.02101,"1728,23490-9411-03 ",.01)
 ;;23490-9411-03
 ;;9002226.02101,"1728,23490-9411-03 ",.02)
 ;;23490-9411-03
 ;;9002226.02101,"1728,23490-9411-09 ",.01)
 ;;23490-9411-09
 ;;9002226.02101,"1728,23490-9411-09 ",.02)
 ;;23490-9411-09
 ;;9002226.02101,"1728,23490-9412-03 ",.01)
 ;;23490-9412-03
 ;;9002226.02101,"1728,23490-9412-03 ",.02)
 ;;23490-9412-03
 ;;9002226.02101,"1728,23490-9412-09 ",.01)
 ;;23490-9412-09
 ;;9002226.02101,"1728,23490-9412-09 ",.02)
 ;;23490-9412-09
 ;;9002226.02101,"1728,23490-9462-01 ",.01)
 ;;23490-9462-01
 ;;9002226.02101,"1728,23490-9462-01 ",.02)
 ;;23490-9462-01
 ;;9002226.02101,"1728,23490-9463-01 ",.01)
 ;;23490-9463-01
 ;;9002226.02101,"1728,23490-9463-01 ",.02)
 ;;23490-9463-01
 ;;9002226.02101,"1728,23490-9464-09 ",.01)
 ;;23490-9464-09
 ;;9002226.02101,"1728,23490-9464-09 ",.02)
 ;;23490-9464-09
 ;;9002226.02101,"1728,23490-9466-03 ",.01)
 ;;23490-9466-03
 ;;9002226.02101,"1728,23490-9466-03 ",.02)
 ;;23490-9466-03
 ;;9002226.02101,"1728,23490-9467-01 ",.01)
 ;;23490-9467-01
 ;;9002226.02101,"1728,23490-9467-01 ",.02)
 ;;23490-9467-01
 ;;9002226.02101,"1728,23490-9600-03 ",.01)
 ;;23490-9600-03
 ;;9002226.02101,"1728,23490-9600-03 ",.02)
 ;;23490-9600-03
 ;;9002226.02101,"1728,23490-9600-09 ",.01)
 ;;23490-9600-09
 ;;9002226.02101,"1728,23490-9600-09 ",.02)
 ;;23490-9600-09
 ;;9002226.02101,"1728,23490-9602-03 ",.01)
 ;;23490-9602-03
 ;;9002226.02101,"1728,23490-9602-03 ",.02)
 ;;23490-9602-03
 ;;9002226.02101,"1728,23490-9602-04 ",.01)
 ;;23490-9602-04
 ;;9002226.02101,"1728,23490-9602-04 ",.02)
 ;;23490-9602-04
 ;;9002226.02101,"1728,23490-9604-03 ",.01)
 ;;23490-9604-03
 ;;9002226.02101,"1728,23490-9604-03 ",.02)
 ;;23490-9604-03
 ;;9002226.02101,"1728,24658-0240-10 ",.01)
 ;;24658-0240-10
 ;;9002226.02101,"1728,24658-0240-10 ",.02)
 ;;24658-0240-10
 ;;9002226.02101,"1728,24658-0240-90 ",.01)
 ;;24658-0240-90
 ;;9002226.02101,"1728,24658-0240-90 ",.02)
 ;;24658-0240-90
 ;;9002226.02101,"1728,24658-0241-10 ",.01)
 ;;24658-0241-10
 ;;9002226.02101,"1728,24658-0241-10 ",.02)
 ;;24658-0241-10
 ;;9002226.02101,"1728,24658-0241-30 ",.01)
 ;;24658-0241-30
 ;;9002226.02101,"1728,24658-0241-30 ",.02)
 ;;24658-0241-30
 ;;9002226.02101,"1728,24658-0241-45 ",.01)
 ;;24658-0241-45
 ;;9002226.02101,"1728,24658-0241-45 ",.02)
 ;;24658-0241-45
 ;;9002226.02101,"1728,24658-0241-90 ",.01)
 ;;24658-0241-90
 ;;9002226.02101,"1728,24658-0241-90 ",.02)
 ;;24658-0241-90
 ;;9002226.02101,"1728,24658-0242-10 ",.01)
 ;;24658-0242-10
 ;;9002226.02101,"1728,24658-0242-10 ",.02)
 ;;24658-0242-10
 ;;9002226.02101,"1728,24658-0242-15 ",.01)
 ;;24658-0242-15
 ;;9002226.02101,"1728,24658-0242-15 ",.02)
 ;;24658-0242-15
 ;;9002226.02101,"1728,24658-0242-18 ",.01)
 ;;24658-0242-18
 ;;9002226.02101,"1728,24658-0242-18 ",.02)
 ;;24658-0242-18
 ;;9002226.02101,"1728,24658-0242-30 ",.01)
 ;;24658-0242-30
 ;;9002226.02101,"1728,24658-0242-30 ",.02)
 ;;24658-0242-30
 ;;9002226.02101,"1728,24658-0242-45 ",.01)
 ;;24658-0242-45
 ;;9002226.02101,"1728,24658-0242-45 ",.02)
 ;;24658-0242-45
 ;;9002226.02101,"1728,24658-0242-90 ",.01)
 ;;24658-0242-90
 ;;9002226.02101,"1728,24658-0242-90 ",.02)
 ;;24658-0242-90
 ;;9002226.02101,"1728,24658-0243-10 ",.01)
 ;;24658-0243-10
 ;;9002226.02101,"1728,24658-0243-10 ",.02)
 ;;24658-0243-10
 ;;9002226.02101,"1728,24658-0243-15 ",.01)
 ;;24658-0243-15
 ;;9002226.02101,"1728,24658-0243-15 ",.02)
 ;;24658-0243-15
 ;;9002226.02101,"1728,24658-0243-18 ",.01)
 ;;24658-0243-18
 ;;9002226.02101,"1728,24658-0243-18 ",.02)
 ;;24658-0243-18
 ;;9002226.02101,"1728,24658-0243-30 ",.01)
 ;;24658-0243-30
