BGP72B18 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,54868-3946-04 ",.02)
 ;;54868-3946-04
 ;;9002226.02101,"1224,54868-4157-00 ",.01)
 ;;54868-4157-00
 ;;9002226.02101,"1224,54868-4157-00 ",.02)
 ;;54868-4157-00
 ;;9002226.02101,"1224,54868-4157-01 ",.01)
 ;;54868-4157-01
 ;;9002226.02101,"1224,54868-4157-01 ",.02)
 ;;54868-4157-01
 ;;9002226.02101,"1224,54868-4157-02 ",.01)
 ;;54868-4157-02
 ;;9002226.02101,"1224,54868-4157-02 ",.02)
 ;;54868-4157-02
 ;;9002226.02101,"1224,54868-4181-00 ",.01)
 ;;54868-4181-00
 ;;9002226.02101,"1224,54868-4181-00 ",.02)
 ;;54868-4181-00
 ;;9002226.02101,"1224,54868-4181-01 ",.01)
 ;;54868-4181-01
 ;;9002226.02101,"1224,54868-4181-01 ",.02)
 ;;54868-4181-01
 ;;9002226.02101,"1224,54868-4224-00 ",.01)
 ;;54868-4224-00
 ;;9002226.02101,"1224,54868-4224-00 ",.02)
 ;;54868-4224-00
 ;;9002226.02101,"1224,54868-4224-01 ",.01)
 ;;54868-4224-01
 ;;9002226.02101,"1224,54868-4224-01 ",.02)
 ;;54868-4224-01
 ;;9002226.02101,"1224,54868-4229-00 ",.01)
 ;;54868-4229-00
 ;;9002226.02101,"1224,54868-4229-00 ",.02)
 ;;54868-4229-00
 ;;9002226.02101,"1224,54868-4229-01 ",.01)
 ;;54868-4229-01
 ;;9002226.02101,"1224,54868-4229-01 ",.02)
 ;;54868-4229-01
 ;;9002226.02101,"1224,54868-4229-02 ",.01)
 ;;54868-4229-02
 ;;9002226.02101,"1224,54868-4229-02 ",.02)
 ;;54868-4229-02
 ;;9002226.02101,"1224,54868-4229-03 ",.01)
 ;;54868-4229-03
 ;;9002226.02101,"1224,54868-4229-03 ",.02)
 ;;54868-4229-03
 ;;9002226.02101,"1224,54868-4585-00 ",.01)
 ;;54868-4585-00
 ;;9002226.02101,"1224,54868-4585-00 ",.02)
 ;;54868-4585-00
 ;;9002226.02101,"1224,54868-4585-01 ",.01)
 ;;54868-4585-01
 ;;9002226.02101,"1224,54868-4585-01 ",.02)
 ;;54868-4585-01
 ;;9002226.02101,"1224,54868-4585-02 ",.01)
 ;;54868-4585-02
 ;;9002226.02101,"1224,54868-4585-02 ",.02)
 ;;54868-4585-02
 ;;9002226.02101,"1224,54868-4585-03 ",.01)
 ;;54868-4585-03
 ;;9002226.02101,"1224,54868-4585-03 ",.02)
 ;;54868-4585-03
 ;;9002226.02101,"1224,54868-4593-00 ",.01)
 ;;54868-4593-00
 ;;9002226.02101,"1224,54868-4593-00 ",.02)
 ;;54868-4593-00
 ;;9002226.02101,"1224,54868-4593-01 ",.01)
 ;;54868-4593-01
 ;;9002226.02101,"1224,54868-4593-01 ",.02)
 ;;54868-4593-01
 ;;9002226.02101,"1224,54868-4593-02 ",.01)
 ;;54868-4593-02
 ;;9002226.02101,"1224,54868-4593-02 ",.02)
 ;;54868-4593-02
 ;;9002226.02101,"1224,54868-4601-00 ",.01)
 ;;54868-4601-00
 ;;9002226.02101,"1224,54868-4601-00 ",.02)
 ;;54868-4601-00
 ;;9002226.02101,"1224,54868-4634-00 ",.01)
 ;;54868-4634-00
 ;;9002226.02101,"1224,54868-4634-00 ",.02)
 ;;54868-4634-00
 ;;9002226.02101,"1224,54868-4774-00 ",.01)
 ;;54868-4774-00
 ;;9002226.02101,"1224,54868-4774-00 ",.02)
 ;;54868-4774-00
 ;;9002226.02101,"1224,54868-4774-01 ",.01)
 ;;54868-4774-01
 ;;9002226.02101,"1224,54868-4774-01 ",.02)
 ;;54868-4774-01
 ;;9002226.02101,"1224,54868-4774-02 ",.01)
 ;;54868-4774-02
 ;;9002226.02101,"1224,54868-4774-02 ",.02)
 ;;54868-4774-02
 ;;9002226.02101,"1224,54868-4774-03 ",.01)
 ;;54868-4774-03
 ;;9002226.02101,"1224,54868-4774-03 ",.02)
 ;;54868-4774-03
 ;;9002226.02101,"1224,54868-4807-00 ",.01)
 ;;54868-4807-00
 ;;9002226.02101,"1224,54868-4807-00 ",.02)
 ;;54868-4807-00
 ;;9002226.02101,"1224,54868-4807-01 ",.01)
 ;;54868-4807-01
 ;;9002226.02101,"1224,54868-4807-01 ",.02)
 ;;54868-4807-01
 ;;9002226.02101,"1224,54868-4807-02 ",.01)
 ;;54868-4807-02
 ;;9002226.02101,"1224,54868-4807-02 ",.02)
 ;;54868-4807-02
 ;;9002226.02101,"1224,54868-4934-00 ",.01)
 ;;54868-4934-00
 ;;9002226.02101,"1224,54868-4934-00 ",.02)
 ;;54868-4934-00
 ;;9002226.02101,"1224,54868-4934-01 ",.01)
 ;;54868-4934-01
 ;;9002226.02101,"1224,54868-4934-01 ",.02)
 ;;54868-4934-01
 ;;9002226.02101,"1224,54868-4934-02 ",.01)
 ;;54868-4934-02
 ;;9002226.02101,"1224,54868-4934-02 ",.02)
 ;;54868-4934-02
 ;;9002226.02101,"1224,54868-4934-03 ",.01)
 ;;54868-4934-03
 ;;9002226.02101,"1224,54868-4934-03 ",.02)
 ;;54868-4934-03
 ;;9002226.02101,"1224,54868-4963-00 ",.01)
 ;;54868-4963-00
 ;;9002226.02101,"1224,54868-4963-00 ",.02)
 ;;54868-4963-00
 ;;9002226.02101,"1224,54868-4963-01 ",.01)
 ;;54868-4963-01
 ;;9002226.02101,"1224,54868-4963-01 ",.02)
 ;;54868-4963-01
 ;;9002226.02101,"1224,54868-4963-02 ",.01)
 ;;54868-4963-02
 ;;9002226.02101,"1224,54868-4963-02 ",.02)
 ;;54868-4963-02
 ;;9002226.02101,"1224,54868-4963-03 ",.01)
 ;;54868-4963-03
 ;;9002226.02101,"1224,54868-4963-03 ",.02)
 ;;54868-4963-03
 ;;9002226.02101,"1224,54868-5085-00 ",.01)
 ;;54868-5085-00
 ;;9002226.02101,"1224,54868-5085-00 ",.02)
 ;;54868-5085-00
 ;;9002226.02101,"1224,54868-5085-01 ",.01)
 ;;54868-5085-01
 ;;9002226.02101,"1224,54868-5085-01 ",.02)
 ;;54868-5085-01
 ;;9002226.02101,"1224,54868-5085-02 ",.01)
 ;;54868-5085-02
 ;;9002226.02101,"1224,54868-5085-02 ",.02)
 ;;54868-5085-02
 ;;9002226.02101,"1224,54868-5085-03 ",.01)
 ;;54868-5085-03
 ;;9002226.02101,"1224,54868-5085-03 ",.02)
 ;;54868-5085-03
 ;;9002226.02101,"1224,54868-5085-04 ",.01)
 ;;54868-5085-04
 ;;9002226.02101,"1224,54868-5085-04 ",.02)
 ;;54868-5085-04
 ;;9002226.02101,"1224,54868-5087-00 ",.01)
 ;;54868-5087-00
 ;;9002226.02101,"1224,54868-5087-00 ",.02)
 ;;54868-5087-00
 ;;9002226.02101,"1224,54868-5179-00 ",.01)
 ;;54868-5179-00
 ;;9002226.02101,"1224,54868-5179-00 ",.02)
 ;;54868-5179-00
 ;;9002226.02101,"1224,54868-5187-00 ",.01)
 ;;54868-5187-00
 ;;9002226.02101,"1224,54868-5187-00 ",.02)
 ;;54868-5187-00
 ;;9002226.02101,"1224,54868-5187-01 ",.01)
 ;;54868-5187-01
 ;;9002226.02101,"1224,54868-5187-01 ",.02)
 ;;54868-5187-01
 ;;9002226.02101,"1224,54868-5187-02 ",.01)
 ;;54868-5187-02
 ;;9002226.02101,"1224,54868-5187-02 ",.02)
 ;;54868-5187-02
 ;;9002226.02101,"1224,54868-5189-00 ",.01)
 ;;54868-5189-00
 ;;9002226.02101,"1224,54868-5189-00 ",.02)
 ;;54868-5189-00
 ;;9002226.02101,"1224,54868-5189-01 ",.01)
 ;;54868-5189-01
 ;;9002226.02101,"1224,54868-5189-01 ",.02)
 ;;54868-5189-01
 ;;9002226.02101,"1224,54868-5200-00 ",.01)
 ;;54868-5200-00
 ;;9002226.02101,"1224,54868-5200-00 ",.02)
 ;;54868-5200-00
 ;;9002226.02101,"1224,54868-5200-01 ",.01)
 ;;54868-5200-01
 ;;9002226.02101,"1224,54868-5200-01 ",.02)
 ;;54868-5200-01
 ;;9002226.02101,"1224,54868-5209-00 ",.01)
 ;;54868-5209-00
 ;;9002226.02101,"1224,54868-5209-00 ",.02)
 ;;54868-5209-00
 ;;9002226.02101,"1224,54868-5209-01 ",.01)
 ;;54868-5209-01
 ;;9002226.02101,"1224,54868-5209-01 ",.02)
 ;;54868-5209-01
 ;;9002226.02101,"1224,54868-5250-00 ",.01)
 ;;54868-5250-00
 ;;9002226.02101,"1224,54868-5250-00 ",.02)
 ;;54868-5250-00
 ;;9002226.02101,"1224,54868-5259-00 ",.01)
 ;;54868-5259-00
 ;;9002226.02101,"1224,54868-5259-00 ",.02)
 ;;54868-5259-00
 ;;9002226.02101,"1224,54868-5259-01 ",.01)
 ;;54868-5259-01
 ;;9002226.02101,"1224,54868-5259-01 ",.02)
 ;;54868-5259-01
 ;;9002226.02101,"1224,54868-5341-00 ",.01)
 ;;54868-5341-00
 ;;9002226.02101,"1224,54868-5341-00 ",.02)
 ;;54868-5341-00
 ;;9002226.02101,"1224,54868-5341-01 ",.01)
 ;;54868-5341-01
 ;;9002226.02101,"1224,54868-5341-01 ",.02)
 ;;54868-5341-01
 ;;9002226.02101,"1224,54868-5358-00 ",.01)
 ;;54868-5358-00
 ;;9002226.02101,"1224,54868-5358-00 ",.02)
 ;;54868-5358-00
 ;;9002226.02101,"1224,54868-5420-00 ",.01)
 ;;54868-5420-00
 ;;9002226.02101,"1224,54868-5420-00 ",.02)
 ;;54868-5420-00
 ;;9002226.02101,"1224,54868-5523-00 ",.01)
 ;;54868-5523-00
 ;;9002226.02101,"1224,54868-5523-00 ",.02)
 ;;54868-5523-00
 ;;9002226.02101,"1224,54868-5523-01 ",.01)
 ;;54868-5523-01
 ;;9002226.02101,"1224,54868-5523-01 ",.02)
 ;;54868-5523-01
 ;;9002226.02101,"1224,54868-5567-00 ",.01)
 ;;54868-5567-00
 ;;9002226.02101,"1224,54868-5567-00 ",.02)
 ;;54868-5567-00
 ;;9002226.02101,"1224,54868-5576-00 ",.01)
 ;;54868-5576-00
 ;;9002226.02101,"1224,54868-5576-00 ",.02)
 ;;54868-5576-00
 ;;9002226.02101,"1224,54868-5576-01 ",.01)
 ;;54868-5576-01
 ;;9002226.02101,"1224,54868-5576-01 ",.02)
 ;;54868-5576-01
 ;;9002226.02101,"1224,54868-5577-00 ",.01)
 ;;54868-5577-00
 ;;9002226.02101,"1224,54868-5577-00 ",.02)
 ;;54868-5577-00
 ;;9002226.02101,"1224,54868-5577-01 ",.01)
 ;;54868-5577-01
 ;;9002226.02101,"1224,54868-5577-01 ",.02)
 ;;54868-5577-01
 ;;9002226.02101,"1224,54868-5578-00 ",.01)
 ;;54868-5578-00
 ;;9002226.02101,"1224,54868-5578-00 ",.02)
 ;;54868-5578-00
 ;;9002226.02101,"1224,54868-5578-01 ",.01)
 ;;54868-5578-01
 ;;9002226.02101,"1224,54868-5578-01 ",.02)
 ;;54868-5578-01
 ;;9002226.02101,"1224,54868-5578-02 ",.01)
 ;;54868-5578-02
 ;;9002226.02101,"1224,54868-5578-02 ",.02)
 ;;54868-5578-02
 ;;9002226.02101,"1224,54868-5579-00 ",.01)
 ;;54868-5579-00
 ;;9002226.02101,"1224,54868-5579-00 ",.02)
 ;;54868-5579-00
 ;;9002226.02101,"1224,54868-5579-01 ",.01)
 ;;54868-5579-01
 ;;9002226.02101,"1224,54868-5579-01 ",.02)
 ;;54868-5579-01
 ;;9002226.02101,"1224,54868-5627-00 ",.01)
 ;;54868-5627-00
 ;;9002226.02101,"1224,54868-5627-00 ",.02)
 ;;54868-5627-00
 ;;9002226.02101,"1224,54868-5627-01 ",.01)
 ;;54868-5627-01
 ;;9002226.02101,"1224,54868-5627-01 ",.02)
 ;;54868-5627-01
 ;;9002226.02101,"1224,54868-5628-00 ",.01)
 ;;54868-5628-00
 ;;9002226.02101,"1224,54868-5628-00 ",.02)
 ;;54868-5628-00
 ;;9002226.02101,"1224,54868-5628-01 ",.01)
 ;;54868-5628-01
 ;;9002226.02101,"1224,54868-5628-01 ",.02)
 ;;54868-5628-01
 ;;9002226.02101,"1224,54868-5628-02 ",.01)
 ;;54868-5628-02
 ;;9002226.02101,"1224,54868-5628-02 ",.02)
 ;;54868-5628-02
 ;;9002226.02101,"1224,54868-5629-00 ",.01)
 ;;54868-5629-00
 ;;9002226.02101,"1224,54868-5629-00 ",.02)
 ;;54868-5629-00
 ;;9002226.02101,"1224,54868-5629-01 ",.01)
 ;;54868-5629-01
 ;;9002226.02101,"1224,54868-5629-01 ",.02)
 ;;54868-5629-01
 ;;9002226.02101,"1224,54868-5629-02 ",.01)
 ;;54868-5629-02
 ;;9002226.02101,"1224,54868-5629-02 ",.02)
 ;;54868-5629-02
 ;;9002226.02101,"1224,54868-5629-03 ",.01)
 ;;54868-5629-03
 ;;9002226.02101,"1224,54868-5629-03 ",.02)
 ;;54868-5629-03
 ;;9002226.02101,"1224,54868-5629-04 ",.01)
 ;;54868-5629-04
 ;;9002226.02101,"1224,54868-5629-04 ",.02)
 ;;54868-5629-04
 ;;9002226.02101,"1224,54868-5630-00 ",.01)
 ;;54868-5630-00
 ;;9002226.02101,"1224,54868-5630-00 ",.02)
 ;;54868-5630-00
 ;;9002226.02101,"1224,54868-5630-01 ",.01)
 ;;54868-5630-01
 ;;9002226.02101,"1224,54868-5630-01 ",.02)
 ;;54868-5630-01
 ;;9002226.02101,"1224,54868-5653-00 ",.01)
 ;;54868-5653-00
 ;;9002226.02101,"1224,54868-5653-00 ",.02)
 ;;54868-5653-00
 ;;9002226.02101,"1224,54868-5653-01 ",.01)
 ;;54868-5653-01
 ;;9002226.02101,"1224,54868-5653-01 ",.02)
 ;;54868-5653-01
 ;;9002226.02101,"1224,54868-5672-00 ",.01)
 ;;54868-5672-00
 ;;9002226.02101,"1224,54868-5672-00 ",.02)
 ;;54868-5672-00
 ;;9002226.02101,"1224,54868-5699-00 ",.01)
 ;;54868-5699-00
 ;;9002226.02101,"1224,54868-5699-00 ",.02)
 ;;54868-5699-00
 ;;9002226.02101,"1224,54868-5886-00 ",.01)
 ;;54868-5886-00
 ;;9002226.02101,"1224,54868-5886-00 ",.02)
 ;;54868-5886-00
 ;;9002226.02101,"1224,54868-5886-01 ",.01)
 ;;54868-5886-01
 ;;9002226.02101,"1224,54868-5886-01 ",.02)
 ;;54868-5886-01
 ;;9002226.02101,"1224,54868-5904-00 ",.01)
 ;;54868-5904-00
 ;;9002226.02101,"1224,54868-5904-00 ",.02)
 ;;54868-5904-00
 ;;9002226.02101,"1224,54868-5904-01 ",.01)
 ;;54868-5904-01
 ;;9002226.02101,"1224,54868-5904-01 ",.02)
 ;;54868-5904-01
 ;;9002226.02101,"1224,54868-5907-00 ",.01)
 ;;54868-5907-00
 ;;9002226.02101,"1224,54868-5907-00 ",.02)
 ;;54868-5907-00
 ;;9002226.02101,"1224,54868-5907-01 ",.01)
 ;;54868-5907-01
 ;;9002226.02101,"1224,54868-5907-01 ",.02)
 ;;54868-5907-01
 ;;9002226.02101,"1224,54868-6066-00 ",.01)
 ;;54868-6066-00
 ;;9002226.02101,"1224,54868-6066-00 ",.02)
 ;;54868-6066-00
 ;;9002226.02101,"1224,54868-6169-00 ",.01)
 ;;54868-6169-00
 ;;9002226.02101,"1224,54868-6169-00 ",.02)
 ;;54868-6169-00
