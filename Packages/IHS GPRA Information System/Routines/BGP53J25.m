BGP53J25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,17856-0540-30 ",.01)
 ;;17856-0540-30
 ;;9002226.02101,"798,17856-0540-30 ",.02)
 ;;17856-0540-30
 ;;9002226.02101,"798,18837-0035-90 ",.01)
 ;;18837-0035-90
 ;;9002226.02101,"798,18837-0035-90 ",.02)
 ;;18837-0035-90
 ;;9002226.02101,"798,18837-0048-90 ",.01)
 ;;18837-0048-90
 ;;9002226.02101,"798,18837-0048-90 ",.02)
 ;;18837-0048-90
 ;;9002226.02101,"798,18837-0076-90 ",.01)
 ;;18837-0076-90
 ;;9002226.02101,"798,18837-0076-90 ",.02)
 ;;18837-0076-90
 ;;9002226.02101,"798,18837-0093-60 ",.01)
 ;;18837-0093-60
 ;;9002226.02101,"798,18837-0093-60 ",.02)
 ;;18837-0093-60
 ;;9002226.02101,"798,18837-0121-30 ",.01)
 ;;18837-0121-30
 ;;9002226.02101,"798,18837-0121-30 ",.02)
 ;;18837-0121-30
 ;;9002226.02101,"798,18837-0175-30 ",.01)
 ;;18837-0175-30
 ;;9002226.02101,"798,18837-0175-30 ",.02)
 ;;18837-0175-30
 ;;9002226.02101,"798,18837-0176-30 ",.01)
 ;;18837-0176-30
 ;;9002226.02101,"798,18837-0176-30 ",.02)
 ;;18837-0176-30
 ;;9002226.02101,"798,18837-0185-60 ",.01)
 ;;18837-0185-60
 ;;9002226.02101,"798,18837-0185-60 ",.02)
 ;;18837-0185-60
 ;;9002226.02101,"798,18837-0185-90 ",.01)
 ;;18837-0185-90
 ;;9002226.02101,"798,18837-0185-90 ",.02)
 ;;18837-0185-90
 ;;9002226.02101,"798,18837-0207-60 ",.01)
 ;;18837-0207-60
 ;;9002226.02101,"798,18837-0207-60 ",.02)
 ;;18837-0207-60
 ;;9002226.02101,"798,18837-0242-30 ",.01)
 ;;18837-0242-30
 ;;9002226.02101,"798,18837-0242-30 ",.02)
 ;;18837-0242-30
 ;;9002226.02101,"798,21695-0017-00 ",.01)
 ;;21695-0017-00
 ;;9002226.02101,"798,21695-0017-00 ",.02)
 ;;21695-0017-00
 ;;9002226.02101,"798,21695-0017-60 ",.01)
 ;;21695-0017-60
 ;;9002226.02101,"798,21695-0017-60 ",.02)
 ;;21695-0017-60
 ;;9002226.02101,"798,21695-0018-30 ",.01)
 ;;21695-0018-30
 ;;9002226.02101,"798,21695-0018-30 ",.02)
 ;;21695-0018-30
 ;;9002226.02101,"798,21695-0018-60 ",.01)
 ;;21695-0018-60
 ;;9002226.02101,"798,21695-0018-60 ",.02)
 ;;21695-0018-60
 ;;9002226.02101,"798,21695-0018-90 ",.01)
 ;;21695-0018-90
 ;;9002226.02101,"798,21695-0018-90 ",.02)
 ;;21695-0018-90
 ;;9002226.02101,"798,21695-0019-30 ",.01)
 ;;21695-0019-30
 ;;9002226.02101,"798,21695-0019-30 ",.02)
 ;;21695-0019-30
 ;;9002226.02101,"798,21695-0019-60 ",.01)
 ;;21695-0019-60
 ;;9002226.02101,"798,21695-0019-60 ",.02)
 ;;21695-0019-60
 ;;9002226.02101,"798,21695-0020-60 ",.01)
 ;;21695-0020-60
 ;;9002226.02101,"798,21695-0020-60 ",.02)
 ;;21695-0020-60
 ;;9002226.02101,"798,21695-0030-00 ",.01)
 ;;21695-0030-00
 ;;9002226.02101,"798,21695-0030-00 ",.02)
 ;;21695-0030-00
 ;;9002226.02101,"798,21695-0031-00 ",.01)
 ;;21695-0031-00
 ;;9002226.02101,"798,21695-0031-00 ",.02)
 ;;21695-0031-00
 ;;9002226.02101,"798,21695-0031-30 ",.01)
 ;;21695-0031-30
 ;;9002226.02101,"798,21695-0031-30 ",.02)
 ;;21695-0031-30
 ;;9002226.02101,"798,21695-0032-00 ",.01)
 ;;21695-0032-00
 ;;9002226.02101,"798,21695-0032-00 ",.02)
 ;;21695-0032-00
 ;;9002226.02101,"798,21695-0032-30 ",.01)
 ;;21695-0032-30
 ;;9002226.02101,"798,21695-0032-30 ",.02)
 ;;21695-0032-30
 ;;9002226.02101,"798,21695-0045-15 ",.01)
 ;;21695-0045-15
 ;;9002226.02101,"798,21695-0045-15 ",.02)
 ;;21695-0045-15
 ;;9002226.02101,"798,21695-0046-15 ",.01)
 ;;21695-0046-15
 ;;9002226.02101,"798,21695-0046-15 ",.02)
 ;;21695-0046-15
 ;;9002226.02101,"798,21695-0046-30 ",.01)
 ;;21695-0046-30
 ;;9002226.02101,"798,21695-0046-30 ",.02)
 ;;21695-0046-30
 ;;9002226.02101,"798,21695-0046-45 ",.01)
 ;;21695-0046-45
 ;;9002226.02101,"798,21695-0046-45 ",.02)
 ;;21695-0046-45
 ;;9002226.02101,"798,21695-0047-15 ",.01)
 ;;21695-0047-15
 ;;9002226.02101,"798,21695-0047-15 ",.02)
 ;;21695-0047-15
 ;;9002226.02101,"798,21695-0047-45 ",.01)
 ;;21695-0047-45
 ;;9002226.02101,"798,21695-0047-45 ",.02)
 ;;21695-0047-45
 ;;9002226.02101,"798,21695-0052-20 ",.01)
 ;;21695-0052-20
 ;;9002226.02101,"798,21695-0052-20 ",.02)
 ;;21695-0052-20
 ;;9002226.02101,"798,21695-0052-30 ",.01)
 ;;21695-0052-30
 ;;9002226.02101,"798,21695-0052-30 ",.02)
 ;;21695-0052-30
 ;;9002226.02101,"798,21695-0052-60 ",.01)
 ;;21695-0052-60
 ;;9002226.02101,"798,21695-0052-60 ",.02)
 ;;21695-0052-60
 ;;9002226.02101,"798,21695-0052-90 ",.01)
 ;;21695-0052-90
 ;;9002226.02101,"798,21695-0052-90 ",.02)
 ;;21695-0052-90
 ;;9002226.02101,"798,21695-0053-30 ",.01)
 ;;21695-0053-30
 ;;9002226.02101,"798,21695-0053-30 ",.02)
 ;;21695-0053-30
 ;;9002226.02101,"798,21695-0053-60 ",.01)
 ;;21695-0053-60
 ;;9002226.02101,"798,21695-0053-60 ",.02)
 ;;21695-0053-60
 ;;9002226.02101,"798,21695-0053-90 ",.01)
 ;;21695-0053-90
 ;;9002226.02101,"798,21695-0053-90 ",.02)
 ;;21695-0053-90
 ;;9002226.02101,"798,21695-0054-30 ",.01)
 ;;21695-0054-30
 ;;9002226.02101,"798,21695-0054-30 ",.02)
 ;;21695-0054-30
 ;;9002226.02101,"798,21695-0054-60 ",.01)
 ;;21695-0054-60
 ;;9002226.02101,"798,21695-0054-60 ",.02)
 ;;21695-0054-60
 ;;9002226.02101,"798,21695-0054-90 ",.01)
 ;;21695-0054-90
 ;;9002226.02101,"798,21695-0054-90 ",.02)
 ;;21695-0054-90
 ;;9002226.02101,"798,21695-0073-15 ",.01)
 ;;21695-0073-15
 ;;9002226.02101,"798,21695-0073-15 ",.02)
 ;;21695-0073-15
 ;;9002226.02101,"798,21695-0073-30 ",.01)
 ;;21695-0073-30
 ;;9002226.02101,"798,21695-0073-30 ",.02)
 ;;21695-0073-30
 ;;9002226.02101,"798,21695-0073-45 ",.01)
 ;;21695-0073-45
 ;;9002226.02101,"798,21695-0073-45 ",.02)
 ;;21695-0073-45
 ;;9002226.02101,"798,21695-0074-15 ",.01)
 ;;21695-0074-15
 ;;9002226.02101,"798,21695-0074-15 ",.02)
 ;;21695-0074-15
 ;;9002226.02101,"798,21695-0074-30 ",.01)
 ;;21695-0074-30
 ;;9002226.02101,"798,21695-0074-30 ",.02)
 ;;21695-0074-30
 ;;9002226.02101,"798,21695-0081-00 ",.01)
 ;;21695-0081-00
 ;;9002226.02101,"798,21695-0081-00 ",.02)
 ;;21695-0081-00
 ;;9002226.02101,"798,21695-0081-30 ",.01)
 ;;21695-0081-30
 ;;9002226.02101,"798,21695-0081-30 ",.02)
 ;;21695-0081-30
 ;;9002226.02101,"798,21695-0081-60 ",.01)
 ;;21695-0081-60
 ;;9002226.02101,"798,21695-0081-60 ",.02)
 ;;21695-0081-60
 ;;9002226.02101,"798,21695-0082-00 ",.01)
 ;;21695-0082-00
 ;;9002226.02101,"798,21695-0082-00 ",.02)
 ;;21695-0082-00
 ;;9002226.02101,"798,21695-0082-30 ",.01)
 ;;21695-0082-30
 ;;9002226.02101,"798,21695-0082-30 ",.02)
 ;;21695-0082-30
 ;;9002226.02101,"798,21695-0082-60 ",.01)
 ;;21695-0082-60
 ;;9002226.02101,"798,21695-0082-60 ",.02)
 ;;21695-0082-60
 ;;9002226.02101,"798,21695-0083-30 ",.01)
 ;;21695-0083-30
 ;;9002226.02101,"798,21695-0083-30 ",.02)
 ;;21695-0083-30
 ;;9002226.02101,"798,21695-0093-30 ",.01)
 ;;21695-0093-30
 ;;9002226.02101,"798,21695-0093-30 ",.02)
 ;;21695-0093-30
 ;;9002226.02101,"798,21695-0093-60 ",.01)
 ;;21695-0093-60
 ;;9002226.02101,"798,21695-0093-60 ",.02)
 ;;21695-0093-60
 ;;9002226.02101,"798,21695-0093-90 ",.01)
 ;;21695-0093-90
 ;;9002226.02101,"798,21695-0093-90 ",.02)
 ;;21695-0093-90
 ;;9002226.02101,"798,21695-0094-30 ",.01)
 ;;21695-0094-30
 ;;9002226.02101,"798,21695-0094-30 ",.02)
 ;;21695-0094-30
 ;;9002226.02101,"798,21695-0094-60 ",.01)
 ;;21695-0094-60
 ;;9002226.02101,"798,21695-0094-60 ",.02)
 ;;21695-0094-60
 ;;9002226.02101,"798,21695-0094-90 ",.01)
 ;;21695-0094-90
 ;;9002226.02101,"798,21695-0094-90 ",.02)
 ;;21695-0094-90
 ;;9002226.02101,"798,21695-0101-30 ",.01)
 ;;21695-0101-30
 ;;9002226.02101,"798,21695-0101-30 ",.02)
 ;;21695-0101-30
 ;;9002226.02101,"798,21695-0101-60 ",.01)
 ;;21695-0101-60
 ;;9002226.02101,"798,21695-0101-60 ",.02)
 ;;21695-0101-60
 ;;9002226.02101,"798,21695-0101-90 ",.01)
 ;;21695-0101-90
 ;;9002226.02101,"798,21695-0101-90 ",.02)
 ;;21695-0101-90
 ;;9002226.02101,"798,21695-0102-30 ",.01)
 ;;21695-0102-30
 ;;9002226.02101,"798,21695-0102-30 ",.02)
 ;;21695-0102-30
 ;;9002226.02101,"798,21695-0102-60 ",.01)
 ;;21695-0102-60
 ;;9002226.02101,"798,21695-0102-60 ",.02)
 ;;21695-0102-60
 ;;9002226.02101,"798,21695-0102-90 ",.01)
 ;;21695-0102-90
 ;;9002226.02101,"798,21695-0102-90 ",.02)
 ;;21695-0102-90
 ;;9002226.02101,"798,21695-0103-30 ",.01)
 ;;21695-0103-30
 ;;9002226.02101,"798,21695-0103-30 ",.02)
 ;;21695-0103-30
 ;;9002226.02101,"798,21695-0103-90 ",.01)
 ;;21695-0103-90
 ;;9002226.02101,"798,21695-0103-90 ",.02)
 ;;21695-0103-90
 ;;9002226.02101,"798,21695-0104-30 ",.01)
 ;;21695-0104-30
 ;;9002226.02101,"798,21695-0104-30 ",.02)
 ;;21695-0104-30
 ;;9002226.02101,"798,21695-0104-90 ",.01)
 ;;21695-0104-90
 ;;9002226.02101,"798,21695-0104-90 ",.02)
 ;;21695-0104-90
 ;;9002226.02101,"798,21695-0133-30 ",.01)
 ;;21695-0133-30
 ;;9002226.02101,"798,21695-0133-30 ",.02)
 ;;21695-0133-30
 ;;9002226.02101,"798,21695-0133-60 ",.01)
 ;;21695-0133-60
 ;;9002226.02101,"798,21695-0133-60 ",.02)
 ;;21695-0133-60
 ;;9002226.02101,"798,21695-0133-90 ",.01)
 ;;21695-0133-90
 ;;9002226.02101,"798,21695-0133-90 ",.02)
 ;;21695-0133-90
 ;;9002226.02101,"798,21695-0134-30 ",.01)
 ;;21695-0134-30
 ;;9002226.02101,"798,21695-0134-30 ",.02)
 ;;21695-0134-30
 ;;9002226.02101,"798,21695-0134-60 ",.01)
 ;;21695-0134-60
 ;;9002226.02101,"798,21695-0134-60 ",.02)
 ;;21695-0134-60
 ;;9002226.02101,"798,21695-0134-90 ",.01)
 ;;21695-0134-90
 ;;9002226.02101,"798,21695-0134-90 ",.02)
 ;;21695-0134-90
 ;;9002226.02101,"798,21695-0135-60 ",.01)
 ;;21695-0135-60
 ;;9002226.02101,"798,21695-0135-60 ",.02)
 ;;21695-0135-60
 ;;9002226.02101,"798,21695-0137-15 ",.01)
 ;;21695-0137-15
 ;;9002226.02101,"798,21695-0137-15 ",.02)
 ;;21695-0137-15
 ;;9002226.02101,"798,21695-0137-30 ",.01)
 ;;21695-0137-30
 ;;9002226.02101,"798,21695-0137-30 ",.02)
 ;;21695-0137-30
 ;;9002226.02101,"798,21695-0137-45 ",.01)
 ;;21695-0137-45
 ;;9002226.02101,"798,21695-0137-45 ",.02)
 ;;21695-0137-45
 ;;9002226.02101,"798,21695-0138-15 ",.01)
 ;;21695-0138-15
 ;;9002226.02101,"798,21695-0138-15 ",.02)
 ;;21695-0138-15
 ;;9002226.02101,"798,21695-0138-30 ",.01)
 ;;21695-0138-30
 ;;9002226.02101,"798,21695-0138-30 ",.02)
 ;;21695-0138-30
 ;;9002226.02101,"798,21695-0145-15 ",.01)
 ;;21695-0145-15
 ;;9002226.02101,"798,21695-0145-15 ",.02)
 ;;21695-0145-15
 ;;9002226.02101,"798,21695-0145-30 ",.01)
 ;;21695-0145-30
 ;;9002226.02101,"798,21695-0145-30 ",.02)
 ;;21695-0145-30
 ;;9002226.02101,"798,21695-0146-15 ",.01)
 ;;21695-0146-15
 ;;9002226.02101,"798,21695-0146-15 ",.02)
 ;;21695-0146-15
 ;;9002226.02101,"798,21695-0159-15 ",.01)
 ;;21695-0159-15
 ;;9002226.02101,"798,21695-0159-15 ",.02)
 ;;21695-0159-15
 ;;9002226.02101,"798,21695-0159-30 ",.01)
 ;;21695-0159-30
 ;;9002226.02101,"798,21695-0159-30 ",.02)
 ;;21695-0159-30
 ;;9002226.02101,"798,21695-0160-30 ",.01)
 ;;21695-0160-30
 ;;9002226.02101,"798,21695-0160-30 ",.02)
 ;;21695-0160-30
 ;;9002226.02101,"798,21695-0164-30 ",.01)
 ;;21695-0164-30
 ;;9002226.02101,"798,21695-0164-30 ",.02)
 ;;21695-0164-30
 ;;9002226.02101,"798,21695-0165-30 ",.01)
 ;;21695-0165-30
 ;;9002226.02101,"798,21695-0165-30 ",.02)
 ;;21695-0165-30
 ;;9002226.02101,"798,21695-0166-30 ",.01)
 ;;21695-0166-30
 ;;9002226.02101,"798,21695-0166-30 ",.02)
 ;;21695-0166-30
 ;;9002226.02101,"798,21695-0166-90 ",.01)
 ;;21695-0166-90
 ;;9002226.02101,"798,21695-0166-90 ",.02)
 ;;21695-0166-90
 ;;9002226.02101,"798,21695-0174-60 ",.01)
 ;;21695-0174-60
 ;;9002226.02101,"798,21695-0174-60 ",.02)
 ;;21695-0174-60
 ;;9002226.02101,"798,21695-0175-60 ",.01)
 ;;21695-0175-60
 ;;9002226.02101,"798,21695-0175-60 ",.02)
 ;;21695-0175-60
 ;;9002226.02101,"798,21695-0176-30 ",.01)
 ;;21695-0176-30
 ;;9002226.02101,"798,21695-0176-30 ",.02)
 ;;21695-0176-30
 ;;9002226.02101,"798,21695-0176-60 ",.01)
 ;;21695-0176-60
 ;;9002226.02101,"798,21695-0176-60 ",.02)
 ;;21695-0176-60
 ;;9002226.02101,"798,21695-0177-30 ",.01)
 ;;21695-0177-30
 ;;9002226.02101,"798,21695-0177-30 ",.02)
 ;;21695-0177-30
 ;;9002226.02101,"798,21695-0177-60 ",.01)
 ;;21695-0177-60
 ;;9002226.02101,"798,21695-0177-60 ",.02)
 ;;21695-0177-60
 ;;9002226.02101,"798,21695-0251-30 ",.01)
 ;;21695-0251-30
 ;;9002226.02101,"798,21695-0251-30 ",.02)
 ;;21695-0251-30
 ;;9002226.02101,"798,21695-0251-60 ",.01)
 ;;21695-0251-60
 ;;9002226.02101,"798,21695-0251-60 ",.02)
 ;;21695-0251-60
 ;;9002226.02101,"798,21695-0251-90 ",.01)
 ;;21695-0251-90
 ;;9002226.02101,"798,21695-0251-90 ",.02)
 ;;21695-0251-90
 ;;9002226.02101,"798,21695-0253-30 ",.01)
 ;;21695-0253-30
 ;;9002226.02101,"798,21695-0253-30 ",.02)
 ;;21695-0253-30
 ;;9002226.02101,"798,21695-0279-30 ",.01)
 ;;21695-0279-30
 ;;9002226.02101,"798,21695-0279-30 ",.02)
 ;;21695-0279-30
 ;;9002226.02101,"798,21695-0295-60 ",.01)
 ;;21695-0295-60
 ;;9002226.02101,"798,21695-0295-60 ",.02)
 ;;21695-0295-60
 ;;9002226.02101,"798,21695-0296-15 ",.01)
 ;;21695-0296-15
 ;;9002226.02101,"798,21695-0296-15 ",.02)
 ;;21695-0296-15
 ;;9002226.02101,"798,21695-0320-00 ",.01)
 ;;21695-0320-00
 ;;9002226.02101,"798,21695-0320-00 ",.02)
 ;;21695-0320-00
 ;;9002226.02101,"798,21695-0320-90 ",.01)
 ;;21695-0320-90
 ;;9002226.02101,"798,21695-0320-90 ",.02)
 ;;21695-0320-90
 ;;9002226.02101,"798,21695-0321-00 ",.01)
 ;;21695-0321-00
 ;;9002226.02101,"798,21695-0321-00 ",.02)
 ;;21695-0321-00
 ;;9002226.02101,"798,21695-0321-30 ",.01)
 ;;21695-0321-30
 ;;9002226.02101,"798,21695-0321-30 ",.02)
 ;;21695-0321-30
 ;;9002226.02101,"798,21695-0321-60 ",.01)
 ;;21695-0321-60
 ;;9002226.02101,"798,21695-0321-60 ",.02)
 ;;21695-0321-60
 ;;9002226.02101,"798,21695-0321-90 ",.01)
 ;;21695-0321-90
 ;;9002226.02101,"798,21695-0321-90 ",.02)
 ;;21695-0321-90
 ;;9002226.02101,"798,21695-0428-00 ",.01)
 ;;21695-0428-00
 ;;9002226.02101,"798,21695-0428-00 ",.02)
 ;;21695-0428-00
