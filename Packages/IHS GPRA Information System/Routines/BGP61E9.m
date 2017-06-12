BGP61E9 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,00378-0505-05 ",.02)
 ;;00378-0505-05
 ;;9002226.02101,"1218,00378-0523-01 ",.01)
 ;;00378-0523-01
 ;;9002226.02101,"1218,00378-0523-01 ",.02)
 ;;00378-0523-01
 ;;9002226.02101,"1218,00378-0523-93 ",.01)
 ;;00378-0523-93
 ;;9002226.02101,"1218,00378-0523-93 ",.02)
 ;;00378-0523-93
 ;;9002226.02101,"1218,00378-0524-01 ",.01)
 ;;00378-0524-01
 ;;9002226.02101,"1218,00378-0524-01 ",.02)
 ;;00378-0524-01
 ;;9002226.02101,"1218,00378-0524-93 ",.01)
 ;;00378-0524-93
 ;;9002226.02101,"1218,00378-0524-93 ",.02)
 ;;00378-0524-93
 ;;9002226.02101,"1218,00378-0715-01 ",.01)
 ;;00378-0715-01
 ;;9002226.02101,"1218,00378-0715-01 ",.02)
 ;;00378-0715-01
 ;;9002226.02101,"1218,00378-0731-01 ",.01)
 ;;00378-0731-01
 ;;9002226.02101,"1218,00378-0731-01 ",.02)
 ;;00378-0731-01
 ;;9002226.02101,"1218,00378-0757-01 ",.01)
 ;;00378-0757-01
 ;;9002226.02101,"1218,00378-0757-01 ",.02)
 ;;00378-0757-01
 ;;9002226.02101,"1218,00378-0757-10 ",.01)
 ;;00378-0757-10
 ;;9002226.02101,"1218,00378-0757-10 ",.02)
 ;;00378-0757-10
 ;;9002226.02101,"1218,00378-0757-93 ",.01)
 ;;00378-0757-93
 ;;9002226.02101,"1218,00378-0757-93 ",.02)
 ;;00378-0757-93
 ;;9002226.02101,"1218,00378-1132-01 ",.01)
 ;;00378-1132-01
 ;;9002226.02101,"1218,00378-1132-01 ",.02)
 ;;00378-1132-01
 ;;9002226.02101,"1218,00378-1132-10 ",.01)
 ;;00378-1132-10
 ;;9002226.02101,"1218,00378-1132-10 ",.02)
 ;;00378-1132-10
 ;;9002226.02101,"1218,00378-1171-01 ",.01)
 ;;00378-1171-01
 ;;9002226.02101,"1218,00378-1171-01 ",.02)
 ;;00378-1171-01
 ;;9002226.02101,"1218,00378-1171-10 ",.01)
 ;;00378-1171-10
 ;;9002226.02101,"1218,00378-1171-10 ",.02)
 ;;00378-1171-10
 ;;9002226.02101,"1218,00378-1200-01 ",.01)
 ;;00378-1200-01
 ;;9002226.02101,"1218,00378-1200-01 ",.02)
 ;;00378-1200-01
 ;;9002226.02101,"1218,00378-1400-01 ",.01)
 ;;00378-1400-01
 ;;9002226.02101,"1218,00378-1400-01 ",.02)
 ;;00378-1400-01
 ;;9002226.02101,"1218,00378-2063-01 ",.01)
 ;;00378-2063-01
 ;;9002226.02101,"1218,00378-2063-01 ",.02)
 ;;00378-2063-01
 ;;9002226.02101,"1218,00378-2064-01 ",.01)
 ;;00378-2064-01
 ;;9002226.02101,"1218,00378-2064-01 ",.02)
 ;;00378-2064-01
 ;;9002226.02101,"1218,00378-2064-93 ",.01)
 ;;00378-2064-93
 ;;9002226.02101,"1218,00378-2064-93 ",.02)
 ;;00378-2064-93
 ;;9002226.02101,"1218,00378-3631-01 ",.01)
 ;;00378-3631-01
 ;;9002226.02101,"1218,00378-3631-01 ",.02)
 ;;00378-3631-01
 ;;9002226.02101,"1218,00378-3631-02 ",.01)
 ;;00378-3631-02
 ;;9002226.02101,"1218,00378-3631-02 ",.02)
 ;;00378-3631-02
 ;;9002226.02101,"1218,00378-3631-05 ",.01)
 ;;00378-3631-05
 ;;9002226.02101,"1218,00378-3631-05 ",.02)
 ;;00378-3631-05
 ;;9002226.02101,"1218,00378-3631-07 ",.01)
 ;;00378-3631-07
 ;;9002226.02101,"1218,00378-3631-07 ",.02)
 ;;00378-3631-07
 ;;9002226.02101,"1218,00378-3632-01 ",.01)
 ;;00378-3632-01
 ;;9002226.02101,"1218,00378-3632-01 ",.02)
 ;;00378-3632-01
 ;;9002226.02101,"1218,00378-3632-02 ",.01)
 ;;00378-3632-02
 ;;9002226.02101,"1218,00378-3632-02 ",.02)
 ;;00378-3632-02
 ;;9002226.02101,"1218,00378-3632-05 ",.01)
 ;;00378-3632-05
 ;;9002226.02101,"1218,00378-3632-05 ",.02)
 ;;00378-3632-05
 ;;9002226.02101,"1218,00378-3632-07 ",.01)
 ;;00378-3632-07
 ;;9002226.02101,"1218,00378-3632-07 ",.02)
 ;;00378-3632-07
 ;;9002226.02101,"1218,00378-3633-01 ",.01)
 ;;00378-3633-01
 ;;9002226.02101,"1218,00378-3633-01 ",.02)
 ;;00378-3633-01
 ;;9002226.02101,"1218,00378-3633-02 ",.01)
 ;;00378-3633-02
 ;;9002226.02101,"1218,00378-3633-02 ",.02)
 ;;00378-3633-02
 ;;9002226.02101,"1218,00378-3633-05 ",.01)
 ;;00378-3633-05
 ;;9002226.02101,"1218,00378-3633-05 ",.02)
 ;;00378-3633-05
 ;;9002226.02101,"1218,00378-3633-07 ",.01)
 ;;00378-3633-07
 ;;9002226.02101,"1218,00378-3633-07 ",.02)
 ;;00378-3633-07
 ;;9002226.02101,"1218,00378-3634-01 ",.01)
 ;;00378-3634-01
 ;;9002226.02101,"1218,00378-3634-01 ",.02)
 ;;00378-3634-01
 ;;9002226.02101,"1218,00378-3634-02 ",.01)
 ;;00378-3634-02
 ;;9002226.02101,"1218,00378-3634-02 ",.02)
 ;;00378-3634-02
 ;;9002226.02101,"1218,00378-3634-05 ",.01)
 ;;00378-3634-05
 ;;9002226.02101,"1218,00378-3634-05 ",.02)
 ;;00378-3634-05
 ;;9002226.02101,"1218,00378-3634-07 ",.01)
 ;;00378-3634-07
 ;;9002226.02101,"1218,00378-3634-07 ",.02)
 ;;00378-3634-07
 ;;9002226.02101,"1218,00378-4595-10 ",.01)
 ;;00378-4595-10
 ;;9002226.02101,"1218,00378-4595-10 ",.02)
 ;;00378-4595-10
 ;;9002226.02101,"1218,00378-4595-77 ",.01)
 ;;00378-4595-77
 ;;9002226.02101,"1218,00378-4595-77 ",.02)
 ;;00378-4595-77
 ;;9002226.02101,"1218,00378-4596-10 ",.01)
 ;;00378-4596-10
 ;;9002226.02101,"1218,00378-4596-10 ",.02)
 ;;00378-4596-10
 ;;9002226.02101,"1218,00378-4596-77 ",.01)
 ;;00378-4596-77
 ;;9002226.02101,"1218,00378-4596-77 ",.02)
 ;;00378-4596-77
 ;;9002226.02101,"1218,00378-4597-10 ",.01)
 ;;00378-4597-10
 ;;9002226.02101,"1218,00378-4597-10 ",.02)
 ;;00378-4597-10
 ;;9002226.02101,"1218,00378-4597-77 ",.01)
 ;;00378-4597-77
 ;;9002226.02101,"1218,00378-4597-77 ",.02)
 ;;00378-4597-77
 ;;9002226.02101,"1218,00378-4598-05 ",.01)
 ;;00378-4598-05
 ;;9002226.02101,"1218,00378-4598-05 ",.02)
 ;;00378-4598-05
 ;;9002226.02101,"1218,00378-4598-77 ",.01)
 ;;00378-4598-77
 ;;9002226.02101,"1218,00378-4598-77 ",.02)
 ;;00378-4598-77
 ;;9002226.02101,"1218,00378-6160-01 ",.01)
 ;;00378-6160-01
 ;;9002226.02101,"1218,00378-6160-01 ",.02)
 ;;00378-6160-01
 ;;9002226.02101,"1218,00378-6160-05 ",.01)
 ;;00378-6160-05
 ;;9002226.02101,"1218,00378-6160-05 ",.02)
 ;;00378-6160-05
 ;;9002226.02101,"1218,00378-6180-01 ",.01)
 ;;00378-6180-01
 ;;9002226.02101,"1218,00378-6180-01 ",.02)
 ;;00378-6180-01
 ;;9002226.02101,"1218,00378-6180-05 ",.01)
 ;;00378-6180-05
 ;;9002226.02101,"1218,00378-6180-05 ",.02)
 ;;00378-6180-05
 ;;9002226.02101,"1218,00378-6220-01 ",.01)
 ;;00378-6220-01
 ;;9002226.02101,"1218,00378-6220-01 ",.02)
 ;;00378-6220-01
 ;;9002226.02101,"1218,00378-6220-05 ",.01)
 ;;00378-6220-05
 ;;9002226.02101,"1218,00378-6220-05 ",.02)
 ;;00378-6220-05
 ;;9002226.02101,"1218,00378-6260-01 ",.01)
 ;;00378-6260-01
 ;;9002226.02101,"1218,00378-6260-01 ",.02)
 ;;00378-6260-01
 ;;9002226.02101,"1218,00378-6260-05 ",.01)
 ;;00378-6260-05
 ;;9002226.02101,"1218,00378-6260-05 ",.02)
 ;;00378-6260-05
 ;;9002226.02101,"1218,00406-2022-01 ",.01)
 ;;00406-2022-01
 ;;9002226.02101,"1218,00406-2022-01 ",.02)
 ;;00406-2022-01
 ;;9002226.02101,"1218,00406-2022-10 ",.01)
 ;;00406-2022-10
 ;;9002226.02101,"1218,00406-2022-10 ",.02)
 ;;00406-2022-10
 ;;9002226.02101,"1218,00406-2023-01 ",.01)
 ;;00406-2023-01
 ;;9002226.02101,"1218,00406-2023-01 ",.02)
 ;;00406-2023-01
 ;;9002226.02101,"1218,00406-2023-10 ",.01)
 ;;00406-2023-10
 ;;9002226.02101,"1218,00406-2023-10 ",.02)
 ;;00406-2023-10
 ;;9002226.02101,"1218,00406-2024-01 ",.01)
 ;;00406-2024-01
 ;;9002226.02101,"1218,00406-2024-01 ",.02)
 ;;00406-2024-01
 ;;9002226.02101,"1218,00406-2024-10 ",.01)
 ;;00406-2024-10
 ;;9002226.02101,"1218,00406-2024-10 ",.02)
 ;;00406-2024-10
 ;;9002226.02101,"1218,00440-7170-30 ",.01)
 ;;00440-7170-30
 ;;9002226.02101,"1218,00440-7170-30 ",.02)
 ;;00440-7170-30
 ;;9002226.02101,"1218,00440-7170-45 ",.01)
 ;;00440-7170-45
 ;;9002226.02101,"1218,00440-7170-45 ",.02)
 ;;00440-7170-45
 ;;9002226.02101,"1218,00440-7170-90 ",.01)
 ;;00440-7170-90
 ;;9002226.02101,"1218,00440-7170-90 ",.02)
 ;;00440-7170-90
 ;;9002226.02101,"1218,00440-7171-06 ",.01)
 ;;00440-7171-06
 ;;9002226.02101,"1218,00440-7171-06 ",.02)
 ;;00440-7171-06
 ;;9002226.02101,"1218,00440-7171-10 ",.01)
 ;;00440-7171-10
 ;;9002226.02101,"1218,00440-7171-10 ",.02)
 ;;00440-7171-10
 ;;9002226.02101,"1218,00440-7171-30 ",.01)
 ;;00440-7171-30
 ;;9002226.02101,"1218,00440-7171-30 ",.02)
 ;;00440-7171-30
 ;;9002226.02101,"1218,00440-7171-45 ",.01)
 ;;00440-7171-45
 ;;9002226.02101,"1218,00440-7171-45 ",.02)
 ;;00440-7171-45
 ;;9002226.02101,"1218,00440-7171-60 ",.01)
 ;;00440-7171-60
 ;;9002226.02101,"1218,00440-7171-60 ",.02)
 ;;00440-7171-60
 ;;9002226.02101,"1218,00440-7171-90 ",.01)
 ;;00440-7171-90
 ;;9002226.02101,"1218,00440-7171-90 ",.02)
 ;;00440-7171-90
 ;;9002226.02101,"1218,00440-7171-92 ",.01)
 ;;00440-7171-92
 ;;9002226.02101,"1218,00440-7171-92 ",.02)
 ;;00440-7171-92
 ;;9002226.02101,"1218,00440-7172-30 ",.01)
 ;;00440-7172-30
 ;;9002226.02101,"1218,00440-7172-30 ",.02)
 ;;00440-7172-30
 ;;9002226.02101,"1218,00440-7172-90 ",.01)
 ;;00440-7172-90
 ;;9002226.02101,"1218,00440-7172-90 ",.02)
 ;;00440-7172-90
 ;;9002226.02101,"1218,00440-7678-60 ",.01)
 ;;00440-7678-60
 ;;9002226.02101,"1218,00440-7678-60 ",.02)
 ;;00440-7678-60
 ;;9002226.02101,"1218,00440-7679-60 ",.01)
 ;;00440-7679-60
 ;;9002226.02101,"1218,00440-7679-60 ",.02)
 ;;00440-7679-60
 ;;9002226.02101,"1218,00440-7784-45 ",.01)
 ;;00440-7784-45
 ;;9002226.02101,"1218,00440-7784-45 ",.02)
 ;;00440-7784-45
 ;;9002226.02101,"1218,00440-7784-90 ",.01)
 ;;00440-7784-90
 ;;9002226.02101,"1218,00440-7784-90 ",.02)
 ;;00440-7784-90
 ;;9002226.02101,"1218,00440-7785-06 ",.01)
 ;;00440-7785-06
 ;;9002226.02101,"1218,00440-7785-06 ",.02)
 ;;00440-7785-06
 ;;9002226.02101,"1218,00440-7785-20 ",.01)
 ;;00440-7785-20
 ;;9002226.02101,"1218,00440-7785-20 ",.02)
 ;;00440-7785-20
 ;;9002226.02101,"1218,00440-7785-28 ",.01)
 ;;00440-7785-28
 ;;9002226.02101,"1218,00440-7785-28 ",.02)
 ;;00440-7785-28
 ;;9002226.02101,"1218,00440-7785-30 ",.01)
 ;;00440-7785-30
 ;;9002226.02101,"1218,00440-7785-30 ",.02)
 ;;00440-7785-30
 ;;9002226.02101,"1218,00440-7785-45 ",.01)
 ;;00440-7785-45
 ;;9002226.02101,"1218,00440-7785-45 ",.02)
 ;;00440-7785-45
 ;;9002226.02101,"1218,00440-7785-60 ",.01)
 ;;00440-7785-60
 ;;9002226.02101,"1218,00440-7785-60 ",.02)
 ;;00440-7785-60
 ;;9002226.02101,"1218,00440-7785-90 ",.01)
 ;;00440-7785-90
 ;;9002226.02101,"1218,00440-7785-90 ",.02)
 ;;00440-7785-90
 ;;9002226.02101,"1218,00440-7785-92 ",.01)
 ;;00440-7785-92
 ;;9002226.02101,"1218,00440-7785-92 ",.02)
 ;;00440-7785-92
 ;;9002226.02101,"1218,00440-7785-94 ",.01)
 ;;00440-7785-94
 ;;9002226.02101,"1218,00440-7785-94 ",.02)
 ;;00440-7785-94
 ;;9002226.02101,"1218,00440-7786-06 ",.01)
 ;;00440-7786-06
 ;;9002226.02101,"1218,00440-7786-06 ",.02)
 ;;00440-7786-06
 ;;9002226.02101,"1218,00440-7786-30 ",.01)
 ;;00440-7786-30
 ;;9002226.02101,"1218,00440-7786-30 ",.02)
 ;;00440-7786-30
 ;;9002226.02101,"1218,00440-7786-60 ",.01)
 ;;00440-7786-60
 ;;9002226.02101,"1218,00440-7786-60 ",.02)
 ;;00440-7786-60
 ;;9002226.02101,"1218,00440-7786-92 ",.01)
 ;;00440-7786-92
 ;;9002226.02101,"1218,00440-7786-92 ",.02)
 ;;00440-7786-92
 ;;9002226.02101,"1218,00440-7786-94 ",.01)
 ;;00440-7786-94
 ;;9002226.02101,"1218,00440-7786-94 ",.02)
 ;;00440-7786-94
 ;;9002226.02101,"1218,00440-8230-60 ",.01)
 ;;00440-8230-60
 ;;9002226.02101,"1218,00440-8230-60 ",.02)
 ;;00440-8230-60
 ;;9002226.02101,"1218,00440-8230-90 ",.01)
 ;;00440-8230-90
 ;;9002226.02101,"1218,00440-8230-90 ",.02)
 ;;00440-8230-90
 ;;9002226.02101,"1218,00440-8230-91 ",.01)
 ;;00440-8230-91
 ;;9002226.02101,"1218,00440-8230-91 ",.02)
 ;;00440-8230-91
 ;;9002226.02101,"1218,00440-8230-92 ",.01)
 ;;00440-8230-92
 ;;9002226.02101,"1218,00440-8230-92 ",.02)
 ;;00440-8230-92
 ;;9002226.02101,"1218,00440-8230-94 ",.01)
 ;;00440-8230-94
 ;;9002226.02101,"1218,00440-8230-94 ",.02)
 ;;00440-8230-94
 ;;9002226.02101,"1218,00440-8232-30 ",.01)
 ;;00440-8232-30
 ;;9002226.02101,"1218,00440-8232-30 ",.02)
 ;;00440-8232-30
 ;;9002226.02101,"1218,00440-8232-90 ",.01)
 ;;00440-8232-90
 ;;9002226.02101,"1218,00440-8232-90 ",.02)
 ;;00440-8232-90
 ;;9002226.02101,"1218,00440-8232-94 ",.01)
 ;;00440-8232-94
 ;;9002226.02101,"1218,00440-8232-94 ",.02)
 ;;00440-8232-94
 ;;9002226.02101,"1218,00440-8233-94 ",.01)
 ;;00440-8233-94
 ;;9002226.02101,"1218,00440-8233-94 ",.02)
 ;;00440-8233-94
 ;;9002226.02101,"1218,00440-8234-90 ",.01)
 ;;00440-8234-90
 ;;9002226.02101,"1218,00440-8234-90 ",.02)
 ;;00440-8234-90
 ;;9002226.02101,"1218,00440-8234-94 ",.01)
 ;;00440-8234-94
 ;;9002226.02101,"1218,00440-8234-94 ",.02)
 ;;00440-8234-94
 ;;9002226.02101,"1218,00456-1402-01 ",.01)
 ;;00456-1402-01
 ;;9002226.02101,"1218,00456-1402-01 ",.02)
 ;;00456-1402-01
 ;;9002226.02101,"1218,00456-1402-11 ",.01)
 ;;00456-1402-11
 ;;9002226.02101,"1218,00456-1402-11 ",.02)
 ;;00456-1402-11
 ;;9002226.02101,"1218,00456-1402-30 ",.01)
 ;;00456-1402-30
 ;;9002226.02101,"1218,00456-1402-30 ",.02)
 ;;00456-1402-30
 ;;9002226.02101,"1218,00456-1402-63 ",.01)
 ;;00456-1402-63
 ;;9002226.02101,"1218,00456-1402-63 ",.02)
 ;;00456-1402-63
 ;;9002226.02101,"1218,00456-1405-01 ",.01)
 ;;00456-1405-01
