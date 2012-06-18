BGP05W19 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"979,54868-3279-02 ",.01)
 ;;54868-3279-02
 ;;9002226.02101,"979,54868-3279-02 ",.02)
 ;;54868-3279-02
 ;;9002226.02101,"979,54868-3279-03 ",.01)
 ;;54868-3279-03
 ;;9002226.02101,"979,54868-3279-03 ",.02)
 ;;54868-3279-03
 ;;9002226.02101,"979,54868-3307-00 ",.01)
 ;;54868-3307-00
 ;;9002226.02101,"979,54868-3307-00 ",.02)
 ;;54868-3307-00
 ;;9002226.02101,"979,54868-3307-01 ",.01)
 ;;54868-3307-01
 ;;9002226.02101,"979,54868-3307-01 ",.02)
 ;;54868-3307-01
 ;;9002226.02101,"979,54868-3445-00 ",.01)
 ;;54868-3445-00
 ;;9002226.02101,"979,54868-3445-00 ",.02)
 ;;54868-3445-00
 ;;9002226.02101,"979,54868-3445-01 ",.01)
 ;;54868-3445-01
 ;;9002226.02101,"979,54868-3445-01 ",.02)
 ;;54868-3445-01
 ;;9002226.02101,"979,54868-3690-01 ",.01)
 ;;54868-3690-01
 ;;9002226.02101,"979,54868-3690-01 ",.02)
 ;;54868-3690-01
 ;;9002226.02101,"979,54868-3723-01 ",.01)
 ;;54868-3723-01
 ;;9002226.02101,"979,54868-3723-01 ",.02)
 ;;54868-3723-01
 ;;9002226.02101,"979,54868-3724-01 ",.01)
 ;;54868-3724-01
 ;;9002226.02101,"979,54868-3724-01 ",.02)
 ;;54868-3724-01
 ;;9002226.02101,"979,54868-3724-02 ",.01)
 ;;54868-3724-02
 ;;9002226.02101,"979,54868-3724-02 ",.02)
 ;;54868-3724-02
 ;;9002226.02101,"979,54868-3724-03 ",.01)
 ;;54868-3724-03
 ;;9002226.02101,"979,54868-3724-03 ",.02)
 ;;54868-3724-03
 ;;9002226.02101,"979,54868-3725-01 ",.01)
 ;;54868-3725-01
 ;;9002226.02101,"979,54868-3725-01 ",.02)
 ;;54868-3725-01
 ;;9002226.02101,"979,54868-3725-02 ",.01)
 ;;54868-3725-02
 ;;9002226.02101,"979,54868-3725-02 ",.02)
 ;;54868-3725-02
 ;;9002226.02101,"979,54868-3769-00 ",.01)
 ;;54868-3769-00
 ;;9002226.02101,"979,54868-3769-00 ",.02)
 ;;54868-3769-00
 ;;9002226.02101,"979,54868-3846-00 ",.01)
 ;;54868-3846-00
 ;;9002226.02101,"979,54868-3846-00 ",.02)
 ;;54868-3846-00
 ;;9002226.02101,"979,54868-3906-00 ",.01)
 ;;54868-3906-00
 ;;9002226.02101,"979,54868-3906-00 ",.02)
 ;;54868-3906-00
 ;;9002226.02101,"979,54868-3906-01 ",.01)
 ;;54868-3906-01
 ;;9002226.02101,"979,54868-3906-01 ",.02)
 ;;54868-3906-01
 ;;9002226.02101,"979,54868-4003-00 ",.01)
 ;;54868-4003-00
 ;;9002226.02101,"979,54868-4003-00 ",.02)
 ;;54868-4003-00
 ;;9002226.02101,"979,54868-4062-00 ",.01)
 ;;54868-4062-00
 ;;9002226.02101,"979,54868-4062-00 ",.02)
 ;;54868-4062-00
 ;;9002226.02101,"979,54868-4062-01 ",.01)
 ;;54868-4062-01
 ;;9002226.02101,"979,54868-4062-01 ",.02)
 ;;54868-4062-01
 ;;9002226.02101,"979,54868-4066-00 ",.01)
 ;;54868-4066-00
 ;;9002226.02101,"979,54868-4066-00 ",.02)
 ;;54868-4066-00
 ;;9002226.02101,"979,54868-4066-01 ",.01)
 ;;54868-4066-01
 ;;9002226.02101,"979,54868-4066-01 ",.02)
 ;;54868-4066-01
 ;;9002226.02101,"979,54868-4073-00 ",.01)
 ;;54868-4073-00
 ;;9002226.02101,"979,54868-4073-00 ",.02)
 ;;54868-4073-00
 ;;9002226.02101,"979,54868-4073-01 ",.01)
 ;;54868-4073-01
 ;;9002226.02101,"979,54868-4073-01 ",.02)
 ;;54868-4073-01
 ;;9002226.02101,"979,54868-4073-02 ",.01)
 ;;54868-4073-02
 ;;9002226.02101,"979,54868-4073-02 ",.02)
 ;;54868-4073-02
 ;;9002226.02101,"979,54868-4073-03 ",.01)
 ;;54868-4073-03
 ;;9002226.02101,"979,54868-4073-03 ",.02)
 ;;54868-4073-03
 ;;9002226.02101,"979,54868-4074-00 ",.01)
 ;;54868-4074-00
 ;;9002226.02101,"979,54868-4074-00 ",.02)
 ;;54868-4074-00
 ;;9002226.02101,"979,54868-4074-01 ",.01)
 ;;54868-4074-01
 ;;9002226.02101,"979,54868-4074-01 ",.02)
 ;;54868-4074-01
 ;;9002226.02101,"979,54868-4074-02 ",.01)
 ;;54868-4074-02
 ;;9002226.02101,"979,54868-4074-02 ",.02)
 ;;54868-4074-02
 ;;9002226.02101,"979,54868-4074-03 ",.01)
 ;;54868-4074-03
 ;;9002226.02101,"979,54868-4074-03 ",.02)
 ;;54868-4074-03
 ;;9002226.02101,"979,54868-4074-04 ",.01)
 ;;54868-4074-04
 ;;9002226.02101,"979,54868-4074-04 ",.02)
 ;;54868-4074-04
 ;;9002226.02101,"979,54868-4088-00 ",.01)
 ;;54868-4088-00
 ;;9002226.02101,"979,54868-4088-00 ",.02)
 ;;54868-4088-00
 ;;9002226.02101,"979,54868-4088-01 ",.01)
 ;;54868-4088-01
 ;;9002226.02101,"979,54868-4088-01 ",.02)
 ;;54868-4088-01
 ;;9002226.02101,"979,54868-4088-02 ",.01)
 ;;54868-4088-02
 ;;9002226.02101,"979,54868-4088-02 ",.02)
 ;;54868-4088-02
 ;;9002226.02101,"979,54868-4209-00 ",.01)
 ;;54868-4209-00
 ;;9002226.02101,"979,54868-4209-00 ",.02)
 ;;54868-4209-00
 ;;9002226.02101,"979,54868-4331-00 ",.01)
 ;;54868-4331-00
 ;;9002226.02101,"979,54868-4331-00 ",.02)
 ;;54868-4331-00
 ;;9002226.02101,"979,54868-4331-01 ",.01)
 ;;54868-4331-01
 ;;9002226.02101,"979,54868-4331-01 ",.02)
 ;;54868-4331-01
 ;;9002226.02101,"979,54868-4331-02 ",.01)
 ;;54868-4331-02
 ;;9002226.02101,"979,54868-4331-02 ",.02)
 ;;54868-4331-02
 ;;9002226.02101,"979,54868-4332-00 ",.01)
 ;;54868-4332-00
 ;;9002226.02101,"979,54868-4332-00 ",.02)
 ;;54868-4332-00
 ;;9002226.02101,"979,54868-4332-01 ",.01)
 ;;54868-4332-01
 ;;9002226.02101,"979,54868-4332-01 ",.02)
 ;;54868-4332-01
 ;;9002226.02101,"979,54868-4332-02 ",.01)
 ;;54868-4332-02
 ;;9002226.02101,"979,54868-4332-02 ",.02)
 ;;54868-4332-02
 ;;9002226.02101,"979,54868-4357-00 ",.01)
 ;;54868-4357-00
 ;;9002226.02101,"979,54868-4357-00 ",.02)
 ;;54868-4357-00
 ;;9002226.02101,"979,54868-4357-01 ",.01)
 ;;54868-4357-01
 ;;9002226.02101,"979,54868-4357-01 ",.02)
 ;;54868-4357-01
 ;;9002226.02101,"979,54868-4357-02 ",.01)
 ;;54868-4357-02
 ;;9002226.02101,"979,54868-4357-02 ",.02)
 ;;54868-4357-02
 ;;9002226.02101,"979,54868-4357-03 ",.01)
 ;;54868-4357-03
 ;;9002226.02101,"979,54868-4357-03 ",.02)
 ;;54868-4357-03
 ;;9002226.02101,"979,54868-4358-00 ",.01)
 ;;54868-4358-00
 ;;9002226.02101,"979,54868-4358-00 ",.02)
 ;;54868-4358-00
 ;;9002226.02101,"979,54868-4358-01 ",.01)
 ;;54868-4358-01
 ;;9002226.02101,"979,54868-4358-01 ",.02)
 ;;54868-4358-01
 ;;9002226.02101,"979,54868-4358-02 ",.01)
 ;;54868-4358-02
 ;;9002226.02101,"979,54868-4358-02 ",.02)
 ;;54868-4358-02
 ;;9002226.02101,"979,54868-4479-00 ",.01)
 ;;54868-4479-00
 ;;9002226.02101,"979,54868-4479-00 ",.02)
 ;;54868-4479-00
 ;;9002226.02101,"979,54868-4479-01 ",.01)
 ;;54868-4479-01
 ;;9002226.02101,"979,54868-4479-01 ",.02)
 ;;54868-4479-01
 ;;9002226.02101,"979,54868-4479-02 ",.01)
 ;;54868-4479-02
 ;;9002226.02101,"979,54868-4479-02 ",.02)
 ;;54868-4479-02
 ;;9002226.02101,"979,54868-4552-00 ",.01)
 ;;54868-4552-00
 ;;9002226.02101,"979,54868-4552-00 ",.02)
 ;;54868-4552-00
 ;;9002226.02101,"979,54868-4552-01 ",.01)
 ;;54868-4552-01
 ;;9002226.02101,"979,54868-4552-01 ",.02)
 ;;54868-4552-01
 ;;9002226.02101,"979,54868-4555-00 ",.01)
 ;;54868-4555-00
 ;;9002226.02101,"979,54868-4555-00 ",.02)
 ;;54868-4555-00
 ;;9002226.02101,"979,54868-4555-01 ",.01)
 ;;54868-4555-01
 ;;9002226.02101,"979,54868-4555-01 ",.02)
 ;;54868-4555-01
 ;;9002226.02101,"979,54868-4637-00 ",.01)
 ;;54868-4637-00
 ;;9002226.02101,"979,54868-4637-00 ",.02)
 ;;54868-4637-00
 ;;9002226.02101,"979,54868-4637-01 ",.01)
 ;;54868-4637-01
 ;;9002226.02101,"979,54868-4637-01 ",.02)
 ;;54868-4637-01
 ;;9002226.02101,"979,54868-4637-02 ",.01)
 ;;54868-4637-02
 ;;9002226.02101,"979,54868-4637-02 ",.02)
 ;;54868-4637-02
 ;;9002226.02101,"979,54868-4637-03 ",.01)
 ;;54868-4637-03
 ;;9002226.02101,"979,54868-4637-03 ",.02)
 ;;54868-4637-03
 ;;9002226.02101,"979,54868-4646-00 ",.01)
 ;;54868-4646-00
 ;;9002226.02101,"979,54868-4646-00 ",.02)
 ;;54868-4646-00
 ;;9002226.02101,"979,54868-4646-01 ",.01)
 ;;54868-4646-01
 ;;9002226.02101,"979,54868-4646-01 ",.02)
 ;;54868-4646-01
 ;;9002226.02101,"979,54868-4646-02 ",.01)
 ;;54868-4646-02
 ;;9002226.02101,"979,54868-4646-02 ",.02)
 ;;54868-4646-02
 ;;9002226.02101,"979,54868-4646-03 ",.01)
 ;;54868-4646-03
 ;;9002226.02101,"979,54868-4646-03 ",.02)
 ;;54868-4646-03
 ;;9002226.02101,"979,54868-4656-00 ",.01)
 ;;54868-4656-00
 ;;9002226.02101,"979,54868-4656-00 ",.02)
 ;;54868-4656-00
 ;;9002226.02101,"979,54868-4656-01 ",.01)
 ;;54868-4656-01
 ;;9002226.02101,"979,54868-4656-01 ",.02)
 ;;54868-4656-01
 ;;9002226.02101,"979,54868-4657-00 ",.01)
 ;;54868-4657-00
 ;;9002226.02101,"979,54868-4657-00 ",.02)
 ;;54868-4657-00
 ;;9002226.02101,"979,54868-4657-01 ",.01)
 ;;54868-4657-01
 ;;9002226.02101,"979,54868-4657-01 ",.02)
 ;;54868-4657-01
 ;;9002226.02101,"979,54868-4657-02 ",.01)
 ;;54868-4657-02
 ;;9002226.02101,"979,54868-4657-02 ",.02)
 ;;54868-4657-02
 ;;9002226.02101,"979,54868-4657-03 ",.01)
 ;;54868-4657-03
 ;;9002226.02101,"979,54868-4657-03 ",.02)
 ;;54868-4657-03
 ;;9002226.02101,"979,54868-4657-04 ",.01)
 ;;54868-4657-04
 ;;9002226.02101,"979,54868-4657-04 ",.02)
 ;;54868-4657-04
 ;;9002226.02101,"979,54868-4658-00 ",.01)
 ;;54868-4658-00
 ;;9002226.02101,"979,54868-4658-00 ",.02)
 ;;54868-4658-00
 ;;9002226.02101,"979,54868-4658-01 ",.01)
 ;;54868-4658-01
 ;;9002226.02101,"979,54868-4658-01 ",.02)
 ;;54868-4658-01
 ;;9002226.02101,"979,54868-4658-02 ",.01)
 ;;54868-4658-02
 ;;9002226.02101,"979,54868-4658-02 ",.02)
 ;;54868-4658-02
 ;;9002226.02101,"979,54868-4658-03 ",.01)
 ;;54868-4658-03
 ;;9002226.02101,"979,54868-4658-03 ",.02)
 ;;54868-4658-03
 ;;9002226.02101,"979,54868-4678-00 ",.01)
 ;;54868-4678-00
 ;;9002226.02101,"979,54868-4678-00 ",.02)
 ;;54868-4678-00
 ;;9002226.02101,"979,54868-4678-01 ",.01)
 ;;54868-4678-01
 ;;9002226.02101,"979,54868-4678-01 ",.02)
 ;;54868-4678-01
 ;;9002226.02101,"979,54868-4780-00 ",.01)
 ;;54868-4780-00
 ;;9002226.02101,"979,54868-4780-00 ",.02)
 ;;54868-4780-00
 ;;9002226.02101,"979,54868-4780-01 ",.01)
 ;;54868-4780-01
 ;;9002226.02101,"979,54868-4780-01 ",.02)
 ;;54868-4780-01
 ;;9002226.02101,"979,54868-4785-00 ",.01)
 ;;54868-4785-00
 ;;9002226.02101,"979,54868-4785-00 ",.02)
 ;;54868-4785-00
 ;;9002226.02101,"979,54868-4785-01 ",.01)
 ;;54868-4785-01
 ;;9002226.02101,"979,54868-4785-01 ",.02)
 ;;54868-4785-01
 ;;9002226.02101,"979,54868-4785-02 ",.01)
 ;;54868-4785-02
 ;;9002226.02101,"979,54868-4785-02 ",.02)
 ;;54868-4785-02
 ;;9002226.02101,"979,54868-4785-03 ",.01)
 ;;54868-4785-03
 ;;9002226.02101,"979,54868-4785-03 ",.02)
 ;;54868-4785-03
 ;;9002226.02101,"979,54868-4870-00 ",.01)
 ;;54868-4870-00
 ;;9002226.02101,"979,54868-4870-00 ",.02)
 ;;54868-4870-00
 ;;9002226.02101,"979,54868-4870-01 ",.01)
 ;;54868-4870-01
 ;;9002226.02101,"979,54868-4870-01 ",.02)
 ;;54868-4870-01
 ;;9002226.02101,"979,54868-4870-02 ",.01)
 ;;54868-4870-02
 ;;9002226.02101,"979,54868-4870-02 ",.02)
 ;;54868-4870-02
 ;;9002226.02101,"979,54868-4904-00 ",.01)
 ;;54868-4904-00
 ;;9002226.02101,"979,54868-4904-00 ",.02)
 ;;54868-4904-00
 ;;9002226.02101,"979,54868-4904-01 ",.01)
 ;;54868-4904-01
 ;;9002226.02101,"979,54868-4904-01 ",.02)
 ;;54868-4904-01
 ;;9002226.02101,"979,54868-4977-00 ",.01)
 ;;54868-4977-00
 ;;9002226.02101,"979,54868-4977-00 ",.02)
 ;;54868-4977-00
 ;;9002226.02101,"979,54868-4977-01 ",.01)
 ;;54868-4977-01
 ;;9002226.02101,"979,54868-4977-01 ",.02)
 ;;54868-4977-01
 ;;9002226.02101,"979,54868-4977-02 ",.01)
 ;;54868-4977-02
 ;;9002226.02101,"979,54868-4977-02 ",.02)
 ;;54868-4977-02
 ;;9002226.02101,"979,54868-5001-00 ",.01)
 ;;54868-5001-00
 ;;9002226.02101,"979,54868-5001-00 ",.02)
 ;;54868-5001-00
 ;;9002226.02101,"979,54868-5001-01 ",.01)
 ;;54868-5001-01
 ;;9002226.02101,"979,54868-5001-01 ",.02)
 ;;54868-5001-01
 ;;9002226.02101,"979,54868-5055-00 ",.01)
 ;;54868-5055-00
 ;;9002226.02101,"979,54868-5055-00 ",.02)
 ;;54868-5055-00
 ;;9002226.02101,"979,54868-5064-00 ",.01)
 ;;54868-5064-00
 ;;9002226.02101,"979,54868-5064-00 ",.02)
 ;;54868-5064-00
 ;;9002226.02101,"979,54868-5064-01 ",.01)
 ;;54868-5064-01
 ;;9002226.02101,"979,54868-5064-01 ",.02)
 ;;54868-5064-01
 ;;9002226.02101,"979,54868-5079-01 ",.01)
 ;;54868-5079-01
 ;;9002226.02101,"979,54868-5079-01 ",.02)
 ;;54868-5079-01
 ;;9002226.02101,"979,54868-5099-00 ",.01)
 ;;54868-5099-00
 ;;9002226.02101,"979,54868-5099-00 ",.02)
 ;;54868-5099-00
 ;;9002226.02101,"979,54868-5099-01 ",.01)
 ;;54868-5099-01
 ;;9002226.02101,"979,54868-5099-01 ",.02)
 ;;54868-5099-01
 ;;9002226.02101,"979,54868-5100-00 ",.01)
 ;;54868-5100-00
 ;;9002226.02101,"979,54868-5100-00 ",.02)
 ;;54868-5100-00
 ;;9002226.02101,"979,54868-5100-01 ",.01)
 ;;54868-5100-01
 ;;9002226.02101,"979,54868-5100-01 ",.02)
 ;;54868-5100-01
 ;;9002226.02101,"979,54868-5182-00 ",.01)
 ;;54868-5182-00
 ;;9002226.02101,"979,54868-5182-00 ",.02)
 ;;54868-5182-00
 ;;9002226.02101,"979,54868-5182-01 ",.01)
 ;;54868-5182-01
 ;;9002226.02101,"979,54868-5182-01 ",.02)
 ;;54868-5182-01
 ;;9002226.02101,"979,54868-5182-02 ",.01)
 ;;54868-5182-02
 ;;9002226.02101,"979,54868-5182-02 ",.02)
 ;;54868-5182-02
 ;;9002226.02101,"979,54868-5196-02 ",.01)
 ;;54868-5196-02
 ;;9002226.02101,"979,54868-5196-02 ",.02)
 ;;54868-5196-02
 ;;9002226.02101,"979,54868-5241-00 ",.01)
 ;;54868-5241-00
 ;;9002226.02101,"979,54868-5241-00 ",.02)
 ;;54868-5241-00
 ;;9002226.02101,"979,54868-5241-01 ",.01)
 ;;54868-5241-01
 ;;9002226.02101,"979,54868-5241-01 ",.02)
 ;;54868-5241-01
 ;;9002226.02101,"979,54868-5241-02 ",.01)
 ;;54868-5241-02
 ;;9002226.02101,"979,54868-5241-02 ",.02)
 ;;54868-5241-02
 ;;9002226.02101,"979,54868-5245-00 ",.01)
 ;;54868-5245-00
 ;;9002226.02101,"979,54868-5245-00 ",.02)
 ;;54868-5245-00
 ;;9002226.02101,"979,54868-5245-01 ",.01)
 ;;54868-5245-01
 ;;9002226.02101,"979,54868-5245-01 ",.02)
 ;;54868-5245-01
 ;;9002226.02101,"979,54868-5245-02 ",.01)
 ;;54868-5245-02
 ;;9002226.02101,"979,54868-5245-02 ",.02)
 ;;54868-5245-02
 ;;9002226.02101,"979,54868-5246-00 ",.01)
 ;;54868-5246-00
 ;;9002226.02101,"979,54868-5246-00 ",.02)
 ;;54868-5246-00
