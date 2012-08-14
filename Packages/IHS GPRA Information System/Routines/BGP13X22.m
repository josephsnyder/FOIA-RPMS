BGP13X22 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,00904-5642-48 ",.01)
 ;;00904-5642-48
 ;;9002226.02101,"1100,00904-5642-48 ",.02)
 ;;00904-5642-48
 ;;9002226.02101,"1100,00904-5642-52 ",.01)
 ;;00904-5642-52
 ;;9002226.02101,"1100,00904-5642-52 ",.02)
 ;;00904-5642-52
 ;;9002226.02101,"1100,00904-5642-61 ",.01)
 ;;00904-5642-61
 ;;9002226.02101,"1100,00904-5642-61 ",.02)
 ;;00904-5642-61
 ;;9002226.02101,"1100,00904-5642-89 ",.01)
 ;;00904-5642-89
 ;;9002226.02101,"1100,00904-5642-89 ",.02)
 ;;00904-5642-89
 ;;9002226.02101,"1100,00904-5642-93 ",.01)
 ;;00904-5642-93
 ;;9002226.02101,"1100,00904-5642-93 ",.02)
 ;;00904-5642-93
 ;;9002226.02101,"1100,00904-5701-61 ",.01)
 ;;00904-5701-61
 ;;9002226.02101,"1100,00904-5701-61 ",.02)
 ;;00904-5701-61
 ;;9002226.02101,"1100,00904-5757-89 ",.01)
 ;;00904-5757-89
 ;;9002226.02101,"1100,00904-5757-89 ",.02)
 ;;00904-5757-89
 ;;9002226.02101,"1100,00904-5778-89 ",.01)
 ;;00904-5778-89
 ;;9002226.02101,"1100,00904-5778-89 ",.02)
 ;;00904-5778-89
 ;;9002226.02101,"1100,00904-5808-43 ",.01)
 ;;00904-5808-43
 ;;9002226.02101,"1100,00904-5808-43 ",.02)
 ;;00904-5808-43
 ;;9002226.02101,"1100,00904-5808-46 ",.01)
 ;;00904-5808-46
 ;;9002226.02101,"1100,00904-5808-46 ",.02)
 ;;00904-5808-46
 ;;9002226.02101,"1100,00904-5808-48 ",.01)
 ;;00904-5808-48
 ;;9002226.02101,"1100,00904-5808-48 ",.02)
 ;;00904-5808-48
 ;;9002226.02101,"1100,00904-5808-61 ",.01)
 ;;00904-5808-61
 ;;9002226.02101,"1100,00904-5808-61 ",.02)
 ;;00904-5808-61
 ;;9002226.02101,"1100,00904-5808-80 ",.01)
 ;;00904-5808-80
 ;;9002226.02101,"1100,00904-5808-80 ",.02)
 ;;00904-5808-80
 ;;9002226.02101,"1100,00904-5808-89 ",.01)
 ;;00904-5808-89
 ;;9002226.02101,"1100,00904-5808-89 ",.02)
 ;;00904-5808-89
 ;;9002226.02101,"1100,00904-5808-93 ",.01)
 ;;00904-5808-93
 ;;9002226.02101,"1100,00904-5808-93 ",.02)
 ;;00904-5808-93
 ;;9002226.02101,"1100,00904-5809-43 ",.01)
 ;;00904-5809-43
 ;;9002226.02101,"1100,00904-5809-43 ",.02)
 ;;00904-5809-43
 ;;9002226.02101,"1100,00904-5809-46 ",.01)
 ;;00904-5809-46
 ;;9002226.02101,"1100,00904-5809-46 ",.02)
 ;;00904-5809-46
 ;;9002226.02101,"1100,00904-5809-48 ",.01)
 ;;00904-5809-48
 ;;9002226.02101,"1100,00904-5809-48 ",.02)
 ;;00904-5809-48
 ;;9002226.02101,"1100,00904-5809-61 ",.01)
 ;;00904-5809-61
 ;;9002226.02101,"1100,00904-5809-61 ",.02)
 ;;00904-5809-61
 ;;9002226.02101,"1100,00904-5809-80 ",.01)
 ;;00904-5809-80
 ;;9002226.02101,"1100,00904-5809-80 ",.02)
 ;;00904-5809-80
 ;;9002226.02101,"1100,00904-5809-89 ",.01)
 ;;00904-5809-89
 ;;9002226.02101,"1100,00904-5809-89 ",.02)
 ;;00904-5809-89
 ;;9002226.02101,"1100,00904-5809-93 ",.01)
 ;;00904-5809-93
 ;;9002226.02101,"1100,00904-5809-93 ",.02)
 ;;00904-5809-93
 ;;9002226.02101,"1100,00904-5810-43 ",.01)
 ;;00904-5810-43
 ;;9002226.02101,"1100,00904-5810-43 ",.02)
 ;;00904-5810-43
 ;;9002226.02101,"1100,00904-5810-46 ",.01)
 ;;00904-5810-46
 ;;9002226.02101,"1100,00904-5810-46 ",.02)
 ;;00904-5810-46
 ;;9002226.02101,"1100,00904-5810-48 ",.01)
 ;;00904-5810-48
 ;;9002226.02101,"1100,00904-5810-48 ",.02)
 ;;00904-5810-48
 ;;9002226.02101,"1100,00904-5810-52 ",.01)
 ;;00904-5810-52
 ;;9002226.02101,"1100,00904-5810-52 ",.02)
 ;;00904-5810-52
 ;;9002226.02101,"1100,00904-5810-61 ",.01)
 ;;00904-5810-61
 ;;9002226.02101,"1100,00904-5810-61 ",.02)
 ;;00904-5810-61
 ;;9002226.02101,"1100,00904-5810-80 ",.01)
 ;;00904-5810-80
 ;;9002226.02101,"1100,00904-5810-80 ",.02)
 ;;00904-5810-80
 ;;9002226.02101,"1100,00904-5810-89 ",.01)
 ;;00904-5810-89
 ;;9002226.02101,"1100,00904-5810-89 ",.02)
 ;;00904-5810-89
 ;;9002226.02101,"1100,00904-5810-93 ",.01)
 ;;00904-5810-93
 ;;9002226.02101,"1100,00904-5810-93 ",.02)
 ;;00904-5810-93
 ;;9002226.02101,"1100,00904-5811-43 ",.01)
 ;;00904-5811-43
 ;;9002226.02101,"1100,00904-5811-43 ",.02)
 ;;00904-5811-43
 ;;9002226.02101,"1100,00904-5811-46 ",.01)
 ;;00904-5811-46
 ;;9002226.02101,"1100,00904-5811-46 ",.02)
 ;;00904-5811-46
 ;;9002226.02101,"1100,00904-5811-61 ",.01)
 ;;00904-5811-61
 ;;9002226.02101,"1100,00904-5811-61 ",.02)
 ;;00904-5811-61
 ;;9002226.02101,"1100,00904-5811-80 ",.01)
 ;;00904-5811-80
 ;;9002226.02101,"1100,00904-5811-80 ",.02)
 ;;00904-5811-80
 ;;9002226.02101,"1100,00904-5811-89 ",.01)
 ;;00904-5811-89
 ;;9002226.02101,"1100,00904-5811-89 ",.02)
 ;;00904-5811-89
 ;;9002226.02101,"1100,00904-5812-40 ",.01)
 ;;00904-5812-40
 ;;9002226.02101,"1100,00904-5812-40 ",.02)
 ;;00904-5812-40
 ;;9002226.02101,"1100,00904-5812-89 ",.01)
 ;;00904-5812-89
 ;;9002226.02101,"1100,00904-5812-89 ",.02)
 ;;00904-5812-89
 ;;9002226.02101,"1100,00904-6190-40 ",.01)
 ;;00904-6190-40
 ;;9002226.02101,"1100,00904-6190-40 ",.02)
 ;;00904-6190-40
 ;;9002226.02101,"1100,00904-6191-40 ",.01)
 ;;00904-6191-40
 ;;9002226.02101,"1100,00904-6191-40 ",.02)
 ;;00904-6191-40
 ;;9002226.02101,"1100,00904-6192-40 ",.01)
 ;;00904-6192-40
 ;;9002226.02101,"1100,00904-6192-40 ",.02)
 ;;00904-6192-40
 ;;9002226.02101,"1100,12280-0005-90 ",.01)
 ;;12280-0005-90
 ;;9002226.02101,"1100,12280-0005-90 ",.02)
 ;;12280-0005-90
 ;;9002226.02101,"1100,12280-0008-00 ",.01)
 ;;12280-0008-00
 ;;9002226.02101,"1100,12280-0008-00 ",.02)
 ;;12280-0008-00
 ;;9002226.02101,"1100,12280-0008-90 ",.01)
 ;;12280-0008-90
 ;;9002226.02101,"1100,12280-0008-90 ",.02)
 ;;12280-0008-90
 ;;9002226.02101,"1100,12280-0009-90 ",.01)
 ;;12280-0009-90
 ;;9002226.02101,"1100,12280-0009-90 ",.02)
 ;;12280-0009-90
 ;;9002226.02101,"1100,12280-0033-00 ",.01)
 ;;12280-0033-00
 ;;9002226.02101,"1100,12280-0033-00 ",.02)
 ;;12280-0033-00
 ;;9002226.02101,"1100,12280-0059-90 ",.01)
 ;;12280-0059-90
 ;;9002226.02101,"1100,12280-0059-90 ",.02)
 ;;12280-0059-90
 ;;9002226.02101,"1100,12280-0061-00 ",.01)
 ;;12280-0061-00
 ;;9002226.02101,"1100,12280-0061-00 ",.02)
 ;;12280-0061-00
 ;;9002226.02101,"1100,12280-0063-30 ",.01)
 ;;12280-0063-30
 ;;9002226.02101,"1100,12280-0063-30 ",.02)
 ;;12280-0063-30
 ;;9002226.02101,"1100,12280-0063-90 ",.01)
 ;;12280-0063-90
 ;;9002226.02101,"1100,12280-0063-90 ",.02)
 ;;12280-0063-90
 ;;9002226.02101,"1100,12280-0066-30 ",.01)
 ;;12280-0066-30
 ;;9002226.02101,"1100,12280-0066-30 ",.02)
 ;;12280-0066-30
 ;;9002226.02101,"1100,12280-0067-15 ",.01)
 ;;12280-0067-15
 ;;9002226.02101,"1100,12280-0067-15 ",.02)
 ;;12280-0067-15
 ;;9002226.02101,"1100,12280-0067-30 ",.01)
 ;;12280-0067-30
 ;;9002226.02101,"1100,12280-0067-30 ",.02)
 ;;12280-0067-30
 ;;9002226.02101,"1100,12280-0067-90 ",.01)
 ;;12280-0067-90
 ;;9002226.02101,"1100,12280-0067-90 ",.02)
 ;;12280-0067-90
 ;;9002226.02101,"1100,12280-0120-30 ",.01)
 ;;12280-0120-30
 ;;9002226.02101,"1100,12280-0120-30 ",.02)
 ;;12280-0120-30
 ;;9002226.02101,"1100,12280-0121-30 ",.01)
 ;;12280-0121-30
 ;;9002226.02101,"1100,12280-0121-30 ",.02)
 ;;12280-0121-30
 ;;9002226.02101,"1100,12280-0123-30 ",.01)
 ;;12280-0123-30
 ;;9002226.02101,"1100,12280-0123-30 ",.02)
 ;;12280-0123-30
 ;;9002226.02101,"1100,12280-0124-30 ",.01)
 ;;12280-0124-30
 ;;9002226.02101,"1100,12280-0124-30 ",.02)
 ;;12280-0124-30
 ;;9002226.02101,"1100,12280-0126-30 ",.01)
 ;;12280-0126-30
 ;;9002226.02101,"1100,12280-0126-30 ",.02)
 ;;12280-0126-30
 ;;9002226.02101,"1100,12280-0126-60 ",.01)
 ;;12280-0126-60
 ;;9002226.02101,"1100,12280-0126-60 ",.02)
 ;;12280-0126-60
 ;;9002226.02101,"1100,12280-0127-30 ",.01)
 ;;12280-0127-30
 ;;9002226.02101,"1100,12280-0127-30 ",.02)
 ;;12280-0127-30
 ;;9002226.02101,"1100,12280-0129-60 ",.01)
 ;;12280-0129-60
 ;;9002226.02101,"1100,12280-0129-60 ",.02)
 ;;12280-0129-60
 ;;9002226.02101,"1100,12280-0144-00 ",.01)
 ;;12280-0144-00
 ;;9002226.02101,"1100,12280-0144-00 ",.02)
 ;;12280-0144-00
 ;;9002226.02101,"1100,12280-0168-30 ",.01)
 ;;12280-0168-30
 ;;9002226.02101,"1100,12280-0168-30 ",.02)
 ;;12280-0168-30
 ;;9002226.02101,"1100,12280-0168-90 ",.01)
 ;;12280-0168-90
 ;;9002226.02101,"1100,12280-0168-90 ",.02)
 ;;12280-0168-90
 ;;9002226.02101,"1100,12280-0183-30 ",.01)
 ;;12280-0183-30
 ;;9002226.02101,"1100,12280-0183-30 ",.02)
 ;;12280-0183-30
 ;;9002226.02101,"1100,12280-0220-00 ",.01)
 ;;12280-0220-00
 ;;9002226.02101,"1100,12280-0220-00 ",.02)
 ;;12280-0220-00
 ;;9002226.02101,"1100,12280-0228-90 ",.01)
 ;;12280-0228-90
 ;;9002226.02101,"1100,12280-0228-90 ",.02)
 ;;12280-0228-90
 ;;9002226.02101,"1100,12280-0340-30 ",.01)
 ;;12280-0340-30
 ;;9002226.02101,"1100,12280-0340-30 ",.02)
 ;;12280-0340-30
 ;;9002226.02101,"1100,12280-0369-30 ",.01)
 ;;12280-0369-30
 ;;9002226.02101,"1100,12280-0369-30 ",.02)
 ;;12280-0369-30
 ;;9002226.02101,"1100,12280-0369-90 ",.01)
 ;;12280-0369-90
 ;;9002226.02101,"1100,12280-0369-90 ",.02)
 ;;12280-0369-90
 ;;9002226.02101,"1100,12280-0370-30 ",.01)
 ;;12280-0370-30
 ;;9002226.02101,"1100,12280-0370-30 ",.02)
 ;;12280-0370-30
 ;;9002226.02101,"1100,12280-0370-90 ",.01)
 ;;12280-0370-90
 ;;9002226.02101,"1100,12280-0370-90 ",.02)
 ;;12280-0370-90
 ;;9002226.02101,"1100,12280-0371-30 ",.01)
 ;;12280-0371-30
 ;;9002226.02101,"1100,12280-0371-30 ",.02)
 ;;12280-0371-30
 ;;9002226.02101,"1100,12280-0371-90 ",.01)
 ;;12280-0371-90
 ;;9002226.02101,"1100,12280-0371-90 ",.02)
 ;;12280-0371-90
 ;;9002226.02101,"1100,12280-0375-30 ",.01)
 ;;12280-0375-30
 ;;9002226.02101,"1100,12280-0375-30 ",.02)
 ;;12280-0375-30
 ;;9002226.02101,"1100,12280-0375-90 ",.01)
 ;;12280-0375-90
 ;;9002226.02101,"1100,12280-0375-90 ",.02)
 ;;12280-0375-90
 ;;9002226.02101,"1100,12280-0378-90 ",.01)
 ;;12280-0378-90
 ;;9002226.02101,"1100,12280-0378-90 ",.02)
 ;;12280-0378-90
 ;;9002226.02101,"1100,12280-0379-90 ",.01)
 ;;12280-0379-90
 ;;9002226.02101,"1100,12280-0379-90 ",.02)
 ;;12280-0379-90
 ;;9002226.02101,"1100,12280-0380-30 ",.01)
 ;;12280-0380-30
 ;;9002226.02101,"1100,12280-0380-30 ",.02)
 ;;12280-0380-30
 ;;9002226.02101,"1100,12280-0380-90 ",.01)
 ;;12280-0380-90
 ;;9002226.02101,"1100,12280-0380-90 ",.02)
 ;;12280-0380-90
 ;;9002226.02101,"1100,12280-0382-30 ",.01)
 ;;12280-0382-30
 ;;9002226.02101,"1100,12280-0382-30 ",.02)
 ;;12280-0382-30
 ;;9002226.02101,"1100,12280-0383-30 ",.01)
 ;;12280-0383-30
 ;;9002226.02101,"1100,12280-0383-30 ",.02)
 ;;12280-0383-30
 ;;9002226.02101,"1100,13411-0106-01 ",.01)
 ;;13411-0106-01
 ;;9002226.02101,"1100,13411-0106-01 ",.02)
 ;;13411-0106-01
 ;;9002226.02101,"1100,13411-0106-03 ",.01)
 ;;13411-0106-03
 ;;9002226.02101,"1100,13411-0106-03 ",.02)
 ;;13411-0106-03
 ;;9002226.02101,"1100,13411-0106-06 ",.01)
 ;;13411-0106-06
 ;;9002226.02101,"1100,13411-0106-06 ",.02)
 ;;13411-0106-06
 ;;9002226.02101,"1100,13411-0106-09 ",.01)
 ;;13411-0106-09
 ;;9002226.02101,"1100,13411-0106-09 ",.02)
 ;;13411-0106-09
 ;;9002226.02101,"1100,13411-0106-15 ",.01)
 ;;13411-0106-15
 ;;9002226.02101,"1100,13411-0106-15 ",.02)
 ;;13411-0106-15
 ;;9002226.02101,"1100,13411-0107-01 ",.01)
 ;;13411-0107-01
 ;;9002226.02101,"1100,13411-0107-01 ",.02)
 ;;13411-0107-01
 ;;9002226.02101,"1100,13411-0107-03 ",.01)
 ;;13411-0107-03
 ;;9002226.02101,"1100,13411-0107-03 ",.02)
 ;;13411-0107-03
 ;;9002226.02101,"1100,13411-0107-06 ",.01)
 ;;13411-0107-06
 ;;9002226.02101,"1100,13411-0107-06 ",.02)
 ;;13411-0107-06
 ;;9002226.02101,"1100,13411-0107-09 ",.01)
 ;;13411-0107-09
 ;;9002226.02101,"1100,13411-0107-09 ",.02)
 ;;13411-0107-09
 ;;9002226.02101,"1100,13411-0107-15 ",.01)
 ;;13411-0107-15
 ;;9002226.02101,"1100,13411-0107-15 ",.02)
 ;;13411-0107-15
 ;;9002226.02101,"1100,13411-0142-01 ",.01)
 ;;13411-0142-01
 ;;9002226.02101,"1100,13411-0142-01 ",.02)
 ;;13411-0142-01
 ;;9002226.02101,"1100,13411-0142-02 ",.01)
 ;;13411-0142-02
 ;;9002226.02101,"1100,13411-0142-02 ",.02)
 ;;13411-0142-02
 ;;9002226.02101,"1100,13411-0142-03 ",.01)
 ;;13411-0142-03
 ;;9002226.02101,"1100,13411-0142-03 ",.02)
 ;;13411-0142-03
 ;;9002226.02101,"1100,13411-0142-06 ",.01)
 ;;13411-0142-06
 ;;9002226.02101,"1100,13411-0142-06 ",.02)
 ;;13411-0142-06
 ;;9002226.02101,"1100,13411-0142-09 ",.01)
 ;;13411-0142-09
 ;;9002226.02101,"1100,13411-0142-09 ",.02)
 ;;13411-0142-09
 ;;9002226.02101,"1100,13411-0143-01 ",.01)
 ;;13411-0143-01
 ;;9002226.02101,"1100,13411-0143-01 ",.02)
 ;;13411-0143-01
 ;;9002226.02101,"1100,13411-0143-02 ",.01)
 ;;13411-0143-02
 ;;9002226.02101,"1100,13411-0143-02 ",.02)
 ;;13411-0143-02
 ;;9002226.02101,"1100,13411-0143-03 ",.01)
 ;;13411-0143-03
 ;;9002226.02101,"1100,13411-0143-03 ",.02)
 ;;13411-0143-03
 ;;9002226.02101,"1100,13411-0143-06 ",.01)
 ;;13411-0143-06
 ;;9002226.02101,"1100,13411-0143-06 ",.02)
 ;;13411-0143-06
 ;;9002226.02101,"1100,13411-0143-09 ",.01)
 ;;13411-0143-09
 ;;9002226.02101,"1100,13411-0143-09 ",.02)
 ;;13411-0143-09