BGP51P8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,00185-0707-30 ",.01)
 ;;00185-0707-30
 ;;9002226.02101,"1195,00185-0707-30 ",.02)
 ;;00185-0707-30
 ;;9002226.02101,"1195,00185-0771-01 ",.01)
 ;;00185-0771-01
 ;;9002226.02101,"1195,00185-0771-01 ",.02)
 ;;00185-0771-01
 ;;9002226.02101,"1195,00185-0771-30 ",.01)
 ;;00185-0771-30
 ;;9002226.02101,"1195,00185-0771-30 ",.02)
 ;;00185-0771-30
 ;;9002226.02101,"1195,00185-0774-01 ",.01)
 ;;00185-0774-01
 ;;9002226.02101,"1195,00185-0774-01 ",.02)
 ;;00185-0774-01
 ;;9002226.02101,"1195,00185-0774-30 ",.01)
 ;;00185-0774-30
 ;;9002226.02101,"1195,00185-0774-30 ",.02)
 ;;00185-0774-30
 ;;9002226.02101,"1195,00186-1088-05 ",.01)
 ;;00186-1088-05
 ;;9002226.02101,"1195,00186-1088-05 ",.02)
 ;;00186-1088-05
 ;;9002226.02101,"1195,00186-1088-39 ",.01)
 ;;00186-1088-39
 ;;9002226.02101,"1195,00186-1088-39 ",.02)
 ;;00186-1088-39
 ;;9002226.02101,"1195,00186-1090-05 ",.01)
 ;;00186-1090-05
 ;;9002226.02101,"1195,00186-1090-05 ",.02)
 ;;00186-1090-05
 ;;9002226.02101,"1195,00186-1090-39 ",.01)
 ;;00186-1090-39
 ;;9002226.02101,"1195,00186-1090-39 ",.02)
 ;;00186-1090-39
 ;;9002226.02101,"1195,00186-1092-05 ",.01)
 ;;00186-1092-05
 ;;9002226.02101,"1195,00186-1092-05 ",.02)
 ;;00186-1092-05
 ;;9002226.02101,"1195,00186-1092-39 ",.01)
 ;;00186-1092-39
 ;;9002226.02101,"1195,00186-1092-39 ",.02)
 ;;00186-1092-39
 ;;9002226.02101,"1195,00186-1094-05 ",.01)
 ;;00186-1094-05
 ;;9002226.02101,"1195,00186-1094-05 ",.02)
 ;;00186-1094-05
 ;;9002226.02101,"1195,00228-2778-11 ",.01)
 ;;00228-2778-11
 ;;9002226.02101,"1195,00228-2778-11 ",.02)
 ;;00228-2778-11
 ;;9002226.02101,"1195,00228-2778-50 ",.01)
 ;;00228-2778-50
 ;;9002226.02101,"1195,00228-2778-50 ",.02)
 ;;00228-2778-50
 ;;9002226.02101,"1195,00228-2779-11 ",.01)
 ;;00228-2779-11
 ;;9002226.02101,"1195,00228-2779-11 ",.02)
 ;;00228-2779-11
 ;;9002226.02101,"1195,00228-2779-50 ",.01)
 ;;00228-2779-50
 ;;9002226.02101,"1195,00228-2779-50 ",.02)
 ;;00228-2779-50
 ;;9002226.02101,"1195,00228-2780-11 ",.01)
 ;;00228-2780-11
 ;;9002226.02101,"1195,00228-2780-11 ",.02)
 ;;00228-2780-11
 ;;9002226.02101,"1195,00228-2780-50 ",.01)
 ;;00228-2780-50
 ;;9002226.02101,"1195,00228-2780-50 ",.02)
 ;;00228-2780-50
 ;;9002226.02101,"1195,00228-2781-11 ",.01)
 ;;00228-2781-11
 ;;9002226.02101,"1195,00228-2781-11 ",.02)
 ;;00228-2781-11
 ;;9002226.02101,"1195,00228-2781-50 ",.01)
 ;;00228-2781-50
 ;;9002226.02101,"1195,00228-2781-50 ",.02)
 ;;00228-2781-50
 ;;9002226.02101,"1195,00245-0084-10 ",.01)
 ;;00245-0084-10
 ;;9002226.02101,"1195,00245-0084-10 ",.02)
 ;;00245-0084-10
 ;;9002226.02101,"1195,00245-0084-11 ",.01)
 ;;00245-0084-11
 ;;9002226.02101,"1195,00245-0084-11 ",.02)
 ;;00245-0084-11
 ;;9002226.02101,"1195,00245-0085-10 ",.01)
 ;;00245-0085-10
 ;;9002226.02101,"1195,00245-0085-10 ",.02)
 ;;00245-0085-10
 ;;9002226.02101,"1195,00245-0085-11 ",.01)
 ;;00245-0085-11
 ;;9002226.02101,"1195,00245-0085-11 ",.02)
 ;;00245-0085-11
 ;;9002226.02101,"1195,00245-0086-10 ",.01)
 ;;00245-0086-10
 ;;9002226.02101,"1195,00245-0086-10 ",.02)
 ;;00245-0086-10
 ;;9002226.02101,"1195,00245-0086-11 ",.01)
 ;;00245-0086-11
 ;;9002226.02101,"1195,00245-0086-11 ",.02)
 ;;00245-0086-11
 ;;9002226.02101,"1195,00245-0087-10 ",.01)
 ;;00245-0087-10
 ;;9002226.02101,"1195,00245-0087-10 ",.02)
 ;;00245-0087-10
 ;;9002226.02101,"1195,00245-0087-11 ",.01)
 ;;00245-0087-11
 ;;9002226.02101,"1195,00245-0087-11 ",.02)
 ;;00245-0087-11
 ;;9002226.02101,"1195,00310-0101-10 ",.01)
 ;;00310-0101-10
 ;;9002226.02101,"1195,00310-0101-10 ",.02)
 ;;00310-0101-10
 ;;9002226.02101,"1195,00310-0105-10 ",.01)
 ;;00310-0105-10
 ;;9002226.02101,"1195,00310-0105-10 ",.02)
 ;;00310-0105-10
 ;;9002226.02101,"1195,00310-0107-10 ",.01)
 ;;00310-0107-10
 ;;9002226.02101,"1195,00310-0107-10 ",.02)
 ;;00310-0107-10
 ;;9002226.02101,"1195,00310-0115-10 ",.01)
 ;;00310-0115-10
 ;;9002226.02101,"1195,00310-0115-10 ",.02)
 ;;00310-0115-10
 ;;9002226.02101,"1195,00310-0117-10 ",.01)
 ;;00310-0117-10
 ;;9002226.02101,"1195,00310-0117-10 ",.02)
 ;;00310-0117-10
 ;;9002226.02101,"1195,00310-1087-30 ",.01)
 ;;00310-1087-30
 ;;9002226.02101,"1195,00310-1087-30 ",.02)
 ;;00310-1087-30
 ;;9002226.02101,"1195,00310-1095-30 ",.01)
 ;;00310-1095-30
 ;;9002226.02101,"1195,00310-1095-30 ",.02)
 ;;00310-1095-30
 ;;9002226.02101,"1195,00310-1097-30 ",.01)
 ;;00310-1097-30
 ;;9002226.02101,"1195,00310-1097-30 ",.02)
 ;;00310-1097-30
 ;;9002226.02101,"1195,00378-0018-01 ",.01)
 ;;00378-0018-01
 ;;9002226.02101,"1195,00378-0018-01 ",.02)
 ;;00378-0018-01
 ;;9002226.02101,"1195,00378-0018-02 ",.01)
 ;;00378-0018-02
 ;;9002226.02101,"1195,00378-0018-02 ",.02)
 ;;00378-0018-02
 ;;9002226.02101,"1195,00378-0018-05 ",.01)
 ;;00378-0018-05
 ;;9002226.02101,"1195,00378-0018-05 ",.02)
 ;;00378-0018-05
 ;;9002226.02101,"1195,00378-0018-07 ",.01)
 ;;00378-0018-07
 ;;9002226.02101,"1195,00378-0018-07 ",.02)
 ;;00378-0018-07
 ;;9002226.02101,"1195,00378-0018-91 ",.01)
 ;;00378-0018-91
 ;;9002226.02101,"1195,00378-0018-91 ",.02)
 ;;00378-0018-91
 ;;9002226.02101,"1195,00378-0028-01 ",.01)
 ;;00378-0028-01
 ;;9002226.02101,"1195,00378-0028-01 ",.02)
 ;;00378-0028-01
 ;;9002226.02101,"1195,00378-0032-01 ",.01)
 ;;00378-0032-01
 ;;9002226.02101,"1195,00378-0032-01 ",.02)
 ;;00378-0032-01
 ;;9002226.02101,"1195,00378-0032-02 ",.01)
 ;;00378-0032-02
 ;;9002226.02101,"1195,00378-0032-02 ",.02)
 ;;00378-0032-02
 ;;9002226.02101,"1195,00378-0032-04 ",.01)
 ;;00378-0032-04
 ;;9002226.02101,"1195,00378-0032-04 ",.02)
 ;;00378-0032-04
 ;;9002226.02101,"1195,00378-0032-10 ",.01)
 ;;00378-0032-10
 ;;9002226.02101,"1195,00378-0032-10 ",.02)
 ;;00378-0032-10
 ;;9002226.02101,"1195,00378-0047-01 ",.01)
 ;;00378-0047-01
 ;;9002226.02101,"1195,00378-0047-01 ",.02)
 ;;00378-0047-01
 ;;9002226.02101,"1195,00378-0047-02 ",.01)
 ;;00378-0047-02
 ;;9002226.02101,"1195,00378-0047-02 ",.02)
 ;;00378-0047-02
 ;;9002226.02101,"1195,00378-0047-04 ",.01)
 ;;00378-0047-04
 ;;9002226.02101,"1195,00378-0047-04 ",.02)
 ;;00378-0047-04
 ;;9002226.02101,"1195,00378-0047-10 ",.01)
 ;;00378-0047-10
 ;;9002226.02101,"1195,00378-0047-10 ",.02)
 ;;00378-0047-10
 ;;9002226.02101,"1195,00378-0052-01 ",.01)
 ;;00378-0052-01
 ;;9002226.02101,"1195,00378-0052-01 ",.02)
 ;;00378-0052-01
 ;;9002226.02101,"1195,00378-0055-01 ",.01)
 ;;00378-0055-01
 ;;9002226.02101,"1195,00378-0055-01 ",.02)
 ;;00378-0055-01
 ;;9002226.02101,"1195,00378-0096-01 ",.01)
 ;;00378-0096-01
 ;;9002226.02101,"1195,00378-0096-01 ",.02)
 ;;00378-0096-01
 ;;9002226.02101,"1195,00378-0099-01 ",.01)
 ;;00378-0099-01
 ;;9002226.02101,"1195,00378-0099-01 ",.02)
 ;;00378-0099-01
 ;;9002226.02101,"1195,00378-0127-01 ",.01)
 ;;00378-0127-01
 ;;9002226.02101,"1195,00378-0127-01 ",.02)
 ;;00378-0127-01
 ;;9002226.02101,"1195,00378-0182-01 ",.01)
 ;;00378-0182-01
 ;;9002226.02101,"1195,00378-0182-01 ",.02)
 ;;00378-0182-01
 ;;9002226.02101,"1195,00378-0182-10 ",.01)
 ;;00378-0182-10
 ;;9002226.02101,"1195,00378-0182-10 ",.02)
 ;;00378-0182-10
 ;;9002226.02101,"1195,00378-0183-01 ",.01)
 ;;00378-0183-01
 ;;9002226.02101,"1195,00378-0183-01 ",.02)
 ;;00378-0183-01
 ;;9002226.02101,"1195,00378-0183-10 ",.01)
 ;;00378-0183-10
 ;;9002226.02101,"1195,00378-0183-10 ",.02)
 ;;00378-0183-10
 ;;9002226.02101,"1195,00378-0184-01 ",.01)
 ;;00378-0184-01
 ;;9002226.02101,"1195,00378-0184-01 ",.02)
 ;;00378-0184-01
 ;;9002226.02101,"1195,00378-0184-10 ",.01)
 ;;00378-0184-10
 ;;9002226.02101,"1195,00378-0184-10 ",.02)
 ;;00378-0184-10
 ;;9002226.02101,"1195,00378-0185-01 ",.01)
 ;;00378-0185-01
 ;;9002226.02101,"1195,00378-0185-01 ",.02)
 ;;00378-0185-01
 ;;9002226.02101,"1195,00378-0185-05 ",.01)
 ;;00378-0185-05
 ;;9002226.02101,"1195,00378-0185-05 ",.02)
 ;;00378-0185-05
 ;;9002226.02101,"1195,00378-0187-01 ",.01)
 ;;00378-0187-01
 ;;9002226.02101,"1195,00378-0187-01 ",.02)
 ;;00378-0187-01
 ;;9002226.02101,"1195,00378-0218-01 ",.01)
 ;;00378-0218-01
 ;;9002226.02101,"1195,00378-0218-01 ",.02)
 ;;00378-0218-01
 ;;9002226.02101,"1195,00378-0218-10 ",.01)
 ;;00378-0218-10
 ;;9002226.02101,"1195,00378-0218-10 ",.02)
 ;;00378-0218-10
 ;;9002226.02101,"1195,00378-0221-01 ",.01)
 ;;00378-0221-01
 ;;9002226.02101,"1195,00378-0221-01 ",.02)
 ;;00378-0221-01
 ;;9002226.02101,"1195,00378-0231-01 ",.01)
 ;;00378-0231-01
 ;;9002226.02101,"1195,00378-0231-01 ",.02)
 ;;00378-0231-01
 ;;9002226.02101,"1195,00378-0231-10 ",.01)
 ;;00378-0231-10
 ;;9002226.02101,"1195,00378-0231-10 ",.02)
 ;;00378-0231-10
 ;;9002226.02101,"1195,00378-0347-01 ",.01)
 ;;00378-0347-01
 ;;9002226.02101,"1195,00378-0347-01 ",.02)
 ;;00378-0347-01
 ;;9002226.02101,"1195,00378-0424-01 ",.01)
 ;;00378-0424-01
 ;;9002226.02101,"1195,00378-0424-01 ",.02)
 ;;00378-0424-01
 ;;9002226.02101,"1195,00378-0434-01 ",.01)
 ;;00378-0434-01
 ;;9002226.02101,"1195,00378-0434-01 ",.02)
 ;;00378-0434-01
 ;;9002226.02101,"1195,00378-0445-01 ",.01)
 ;;00378-0445-01
 ;;9002226.02101,"1195,00378-0445-01 ",.02)
 ;;00378-0445-01
 ;;9002226.02101,"1195,00378-0501-01 ",.01)
 ;;00378-0501-01
 ;;9002226.02101,"1195,00378-0501-01 ",.02)
 ;;00378-0501-01
 ;;9002226.02101,"1195,00378-0501-10 ",.01)
 ;;00378-0501-10
 ;;9002226.02101,"1195,00378-0501-10 ",.02)
 ;;00378-0501-10
 ;;9002226.02101,"1195,00378-0503-01 ",.01)
 ;;00378-0503-01
 ;;9002226.02101,"1195,00378-0503-01 ",.02)
 ;;00378-0503-01
 ;;9002226.02101,"1195,00378-0503-10 ",.01)
 ;;00378-0503-10
 ;;9002226.02101,"1195,00378-0503-10 ",.02)
 ;;00378-0503-10
 ;;9002226.02101,"1195,00378-0505-01 ",.01)
 ;;00378-0505-01
 ;;9002226.02101,"1195,00378-0505-01 ",.02)
 ;;00378-0505-01
 ;;9002226.02101,"1195,00378-0505-05 ",.01)
 ;;00378-0505-05
 ;;9002226.02101,"1195,00378-0505-05 ",.02)
 ;;00378-0505-05
 ;;9002226.02101,"1195,00378-0523-01 ",.01)
 ;;00378-0523-01
 ;;9002226.02101,"1195,00378-0523-01 ",.02)
 ;;00378-0523-01
 ;;9002226.02101,"1195,00378-0523-93 ",.01)
 ;;00378-0523-93
 ;;9002226.02101,"1195,00378-0523-93 ",.02)
 ;;00378-0523-93
 ;;9002226.02101,"1195,00378-0524-01 ",.01)
 ;;00378-0524-01
 ;;9002226.02101,"1195,00378-0524-01 ",.02)
 ;;00378-0524-01
 ;;9002226.02101,"1195,00378-0524-93 ",.01)
 ;;00378-0524-93
 ;;9002226.02101,"1195,00378-0524-93 ",.02)
 ;;00378-0524-93
 ;;9002226.02101,"1195,00378-0715-01 ",.01)
 ;;00378-0715-01
 ;;9002226.02101,"1195,00378-0715-01 ",.02)
 ;;00378-0715-01
 ;;9002226.02101,"1195,00378-0731-01 ",.01)
 ;;00378-0731-01
 ;;9002226.02101,"1195,00378-0731-01 ",.02)
 ;;00378-0731-01
 ;;9002226.02101,"1195,00378-0757-01 ",.01)
 ;;00378-0757-01
 ;;9002226.02101,"1195,00378-0757-01 ",.02)
 ;;00378-0757-01
 ;;9002226.02101,"1195,00378-0757-10 ",.01)
 ;;00378-0757-10
 ;;9002226.02101,"1195,00378-0757-10 ",.02)
 ;;00378-0757-10
 ;;9002226.02101,"1195,00378-0757-93 ",.01)
 ;;00378-0757-93
 ;;9002226.02101,"1195,00378-0757-93 ",.02)
 ;;00378-0757-93
 ;;9002226.02101,"1195,00378-1132-01 ",.01)
 ;;00378-1132-01
 ;;9002226.02101,"1195,00378-1132-01 ",.02)
 ;;00378-1132-01
 ;;9002226.02101,"1195,00378-1132-10 ",.01)
 ;;00378-1132-10
 ;;9002226.02101,"1195,00378-1132-10 ",.02)
 ;;00378-1132-10
 ;;9002226.02101,"1195,00378-1171-01 ",.01)
 ;;00378-1171-01
 ;;9002226.02101,"1195,00378-1171-01 ",.02)
 ;;00378-1171-01
 ;;9002226.02101,"1195,00378-1171-10 ",.01)
 ;;00378-1171-10
 ;;9002226.02101,"1195,00378-1171-10 ",.02)
 ;;00378-1171-10
 ;;9002226.02101,"1195,00378-1200-01 ",.01)
 ;;00378-1200-01
 ;;9002226.02101,"1195,00378-1200-01 ",.02)
 ;;00378-1200-01
 ;;9002226.02101,"1195,00378-1400-01 ",.01)
 ;;00378-1400-01
 ;;9002226.02101,"1195,00378-1400-01 ",.02)
 ;;00378-1400-01
 ;;9002226.02101,"1195,00378-2063-01 ",.01)
 ;;00378-2063-01
 ;;9002226.02101,"1195,00378-2063-01 ",.02)
 ;;00378-2063-01
 ;;9002226.02101,"1195,00378-2064-01 ",.01)
 ;;00378-2064-01
 ;;9002226.02101,"1195,00378-2064-01 ",.02)
 ;;00378-2064-01
 ;;9002226.02101,"1195,00378-2064-93 ",.01)
 ;;00378-2064-93
 ;;9002226.02101,"1195,00378-2064-93 ",.02)
 ;;00378-2064-93
 ;;9002226.02101,"1195,00378-3631-01 ",.01)
 ;;00378-3631-01
 ;;9002226.02101,"1195,00378-3631-01 ",.02)
 ;;00378-3631-01
 ;;9002226.02101,"1195,00378-3631-02 ",.01)
 ;;00378-3631-02
 ;;9002226.02101,"1195,00378-3631-02 ",.02)
 ;;00378-3631-02
 ;;9002226.02101,"1195,00378-3631-05 ",.01)
 ;;00378-3631-05
 ;;9002226.02101,"1195,00378-3631-05 ",.02)
 ;;00378-3631-05
 ;;9002226.02101,"1195,00378-3631-07 ",.01)
 ;;00378-3631-07
 ;;9002226.02101,"1195,00378-3631-07 ",.02)
 ;;00378-3631-07
 ;;9002226.02101,"1195,00378-3632-01 ",.01)
 ;;00378-3632-01
 ;;9002226.02101,"1195,00378-3632-01 ",.02)
 ;;00378-3632-01
 ;;9002226.02101,"1195,00378-3632-02 ",.01)
 ;;00378-3632-02
 ;;9002226.02101,"1195,00378-3632-02 ",.02)
 ;;00378-3632-02
 ;;9002226.02101,"1195,00378-3632-05 ",.01)
 ;;00378-3632-05
 ;;9002226.02101,"1195,00378-3632-05 ",.02)
 ;;00378-3632-05
 ;;9002226.02101,"1195,00378-3632-07 ",.01)
 ;;00378-3632-07
 ;;9002226.02101,"1195,00378-3632-07 ",.02)
 ;;00378-3632-07
 ;;9002226.02101,"1195,00378-3633-01 ",.01)
 ;;00378-3633-01
 ;;9002226.02101,"1195,00378-3633-01 ",.02)
 ;;00378-3633-01
 ;;9002226.02101,"1195,00378-3633-02 ",.01)
 ;;00378-3633-02
 ;;9002226.02101,"1195,00378-3633-02 ",.02)
 ;;00378-3633-02
 ;;9002226.02101,"1195,00378-3633-05 ",.01)
 ;;00378-3633-05
 ;;9002226.02101,"1195,00378-3633-05 ",.02)
 ;;00378-3633-05
 ;;9002226.02101,"1195,00378-3633-07 ",.01)
 ;;00378-3633-07
 ;;9002226.02101,"1195,00378-3633-07 ",.02)
 ;;00378-3633-07
 ;;9002226.02101,"1195,00378-3634-01 ",.01)
 ;;00378-3634-01
