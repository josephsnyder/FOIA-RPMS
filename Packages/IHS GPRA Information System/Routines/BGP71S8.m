BGP71S8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,00440-7740-85 ",.01)
 ;;00440-7740-85
 ;;9002226.02101,"875,00440-7740-85 ",.02)
 ;;00440-7740-85
 ;;9002226.02101,"875,00440-7740-89 ",.01)
 ;;00440-7740-89
 ;;9002226.02101,"875,00440-7740-89 ",.02)
 ;;00440-7740-89
 ;;9002226.02101,"875,00440-7740-90 ",.01)
 ;;00440-7740-90
 ;;9002226.02101,"875,00440-7740-90 ",.02)
 ;;00440-7740-90
 ;;9002226.02101,"875,00440-7741-04 ",.01)
 ;;00440-7741-04
 ;;9002226.02101,"875,00440-7741-04 ",.02)
 ;;00440-7741-04
 ;;9002226.02101,"875,00440-7741-06 ",.01)
 ;;00440-7741-06
 ;;9002226.02101,"875,00440-7741-06 ",.02)
 ;;00440-7741-06
 ;;9002226.02101,"875,00440-7741-20 ",.01)
 ;;00440-7741-20
 ;;9002226.02101,"875,00440-7741-20 ",.02)
 ;;00440-7741-20
 ;;9002226.02101,"875,00440-7741-30 ",.01)
 ;;00440-7741-30
 ;;9002226.02101,"875,00440-7741-30 ",.02)
 ;;00440-7741-30
 ;;9002226.02101,"875,00440-7741-40 ",.01)
 ;;00440-7741-40
 ;;9002226.02101,"875,00440-7741-40 ",.02)
 ;;00440-7741-40
 ;;9002226.02101,"875,00440-7741-90 ",.01)
 ;;00440-7741-90
 ;;9002226.02101,"875,00440-7741-90 ",.02)
 ;;00440-7741-90
 ;;9002226.02101,"875,00440-7741-92 ",.01)
 ;;00440-7741-92
 ;;9002226.02101,"875,00440-7741-92 ",.02)
 ;;00440-7741-92
 ;;9002226.02101,"875,00440-7880-14 ",.01)
 ;;00440-7880-14
 ;;9002226.02101,"875,00440-7880-14 ",.02)
 ;;00440-7880-14
 ;;9002226.02101,"875,00440-7880-20 ",.01)
 ;;00440-7880-20
 ;;9002226.02101,"875,00440-7880-20 ",.02)
 ;;00440-7880-20
 ;;9002226.02101,"875,00440-7880-28 ",.01)
 ;;00440-7880-28
 ;;9002226.02101,"875,00440-7880-28 ",.02)
 ;;00440-7880-28
 ;;9002226.02101,"875,00440-7880-40 ",.01)
 ;;00440-7880-40
 ;;9002226.02101,"875,00440-7880-40 ",.02)
 ;;00440-7880-40
 ;;9002226.02101,"875,00440-7880-60 ",.01)
 ;;00440-7880-60
 ;;9002226.02101,"875,00440-7880-60 ",.02)
 ;;00440-7880-60
 ;;9002226.02101,"875,00527-1152-01 ",.01)
 ;;00527-1152-01
 ;;9002226.02101,"875,00527-1152-01 ",.02)
 ;;00527-1152-01
 ;;9002226.02101,"875,00527-1152-05 ",.01)
 ;;00527-1152-05
 ;;9002226.02101,"875,00527-1152-05 ",.02)
 ;;00527-1152-05
 ;;9002226.02101,"875,00527-1302-01 ",.01)
 ;;00527-1302-01
 ;;9002226.02101,"875,00527-1302-01 ",.02)
 ;;00527-1302-01
 ;;9002226.02101,"875,00527-1302-05 ",.01)
 ;;00527-1302-05
 ;;9002226.02101,"875,00527-1302-05 ",.02)
 ;;00527-1302-05
 ;;9002226.02101,"875,00591-2520-01 ",.01)
 ;;00591-2520-01
 ;;9002226.02101,"875,00591-2520-01 ",.02)
 ;;00591-2520-01
 ;;9002226.02101,"875,00591-2520-05 ",.01)
 ;;00591-2520-05
 ;;9002226.02101,"875,00591-2520-05 ",.02)
 ;;00591-2520-05
 ;;9002226.02101,"875,00591-3222-02 ",.01)
 ;;00591-3222-02
 ;;9002226.02101,"875,00591-3222-02 ",.02)
 ;;00591-3222-02
 ;;9002226.02101,"875,00591-3222-47 ",.01)
 ;;00591-3222-47
 ;;9002226.02101,"875,00591-3222-47 ",.02)
 ;;00591-3222-47
 ;;9002226.02101,"875,00591-3256-01 ",.01)
 ;;00591-3256-01
 ;;9002226.02101,"875,00591-3256-01 ",.02)
 ;;00591-3256-01
 ;;9002226.02101,"875,00591-5381-01 ",.01)
 ;;00591-5381-01
 ;;9002226.02101,"875,00591-5381-01 ",.02)
 ;;00591-5381-01
 ;;9002226.02101,"875,00591-5381-05 ",.01)
 ;;00591-5381-05
 ;;9002226.02101,"875,00591-5381-05 ",.02)
 ;;00591-5381-05
 ;;9002226.02101,"875,00591-5382-01 ",.01)
 ;;00591-5382-01
 ;;9002226.02101,"875,00591-5382-01 ",.02)
 ;;00591-5382-01
 ;;9002226.02101,"875,00591-5382-05 ",.01)
 ;;00591-5382-05
 ;;9002226.02101,"875,00591-5382-05 ",.02)
 ;;00591-5382-05
 ;;9002226.02101,"875,00591-5513-01 ",.01)
 ;;00591-5513-01
 ;;9002226.02101,"875,00591-5513-01 ",.02)
 ;;00591-5513-01
 ;;9002226.02101,"875,00591-5513-05 ",.01)
 ;;00591-5513-05
 ;;9002226.02101,"875,00591-5513-05 ",.02)
 ;;00591-5513-05
 ;;9002226.02101,"875,00591-5513-10 ",.01)
 ;;00591-5513-10
 ;;9002226.02101,"875,00591-5513-10 ",.02)
 ;;00591-5513-10
 ;;9002226.02101,"875,00591-5658-01 ",.01)
 ;;00591-5658-01
 ;;9002226.02101,"875,00591-5658-01 ",.02)
 ;;00591-5658-01
 ;;9002226.02101,"875,00591-5658-05 ",.01)
 ;;00591-5658-05
 ;;9002226.02101,"875,00591-5658-05 ",.02)
 ;;00591-5658-05
 ;;9002226.02101,"875,00591-5658-10 ",.01)
 ;;00591-5658-10
 ;;9002226.02101,"875,00591-5658-10 ",.02)
 ;;00591-5658-10
 ;;9002226.02101,"875,00603-2582-21 ",.01)
 ;;00603-2582-21
 ;;9002226.02101,"875,00603-2582-21 ",.02)
 ;;00603-2582-21
 ;;9002226.02101,"875,00603-2582-28 ",.01)
 ;;00603-2582-28
 ;;9002226.02101,"875,00603-2582-28 ",.02)
 ;;00603-2582-28
 ;;9002226.02101,"875,00603-2582-32 ",.01)
 ;;00603-2582-32
 ;;9002226.02101,"875,00603-2582-32 ",.02)
 ;;00603-2582-32
 ;;9002226.02101,"875,00603-3078-21 ",.01)
 ;;00603-3078-21
 ;;9002226.02101,"875,00603-3078-21 ",.02)
 ;;00603-3078-21
 ;;9002226.02101,"875,00603-3078-28 ",.01)
 ;;00603-3078-28
 ;;9002226.02101,"875,00603-3078-28 ",.02)
 ;;00603-3078-28
 ;;9002226.02101,"875,00603-3079-02 ",.01)
 ;;00603-3079-02
 ;;9002226.02101,"875,00603-3079-02 ",.02)
 ;;00603-3079-02
 ;;9002226.02101,"875,00603-3079-03 ",.01)
 ;;00603-3079-03
 ;;9002226.02101,"875,00603-3079-03 ",.02)
 ;;00603-3079-03
 ;;9002226.02101,"875,00603-3079-04 ",.01)
 ;;00603-3079-04
 ;;9002226.02101,"875,00603-3079-04 ",.02)
 ;;00603-3079-04
 ;;9002226.02101,"875,00603-3079-21 ",.01)
 ;;00603-3079-21
 ;;9002226.02101,"875,00603-3079-21 ",.02)
 ;;00603-3079-21
 ;;9002226.02101,"875,00603-3079-28 ",.01)
 ;;00603-3079-28
 ;;9002226.02101,"875,00603-3079-28 ",.02)
 ;;00603-3079-28
 ;;9002226.02101,"875,00603-3079-32 ",.01)
 ;;00603-3079-32
 ;;9002226.02101,"875,00603-3079-32 ",.02)
 ;;00603-3079-32
 ;;9002226.02101,"875,00603-3079-34 ",.01)
 ;;00603-3079-34
 ;;9002226.02101,"875,00603-3079-34 ",.02)
 ;;00603-3079-34
 ;;9002226.02101,"875,00603-4485-21 ",.01)
 ;;00603-4485-21
 ;;9002226.02101,"875,00603-4485-21 ",.02)
 ;;00603-4485-21
 ;;9002226.02101,"875,00603-4485-28 ",.01)
 ;;00603-4485-28
 ;;9002226.02101,"875,00603-4485-28 ",.02)
 ;;00603-4485-28
 ;;9002226.02101,"875,00603-4485-32 ",.01)
 ;;00603-4485-32
 ;;9002226.02101,"875,00603-4485-32 ",.02)
 ;;00603-4485-32
 ;;9002226.02101,"875,00603-4486-21 ",.01)
 ;;00603-4486-21
 ;;9002226.02101,"875,00603-4486-21 ",.02)
 ;;00603-4486-21
 ;;9002226.02101,"875,00603-4486-28 ",.01)
 ;;00603-4486-28
 ;;9002226.02101,"875,00603-4486-28 ",.02)
 ;;00603-4486-28
 ;;9002226.02101,"875,00603-4486-32 ",.01)
 ;;00603-4486-32
 ;;9002226.02101,"875,00603-4486-32 ",.02)
 ;;00603-4486-32
 ;;9002226.02101,"875,00641-6103-01 ",.01)
 ;;00641-6103-01
 ;;9002226.02101,"875,00641-6103-01 ",.02)
 ;;00641-6103-01
 ;;9002226.02101,"875,00641-6103-25 ",.01)
 ;;00641-6103-25
 ;;9002226.02101,"875,00641-6103-25 ",.02)
 ;;00641-6103-25
 ;;9002226.02101,"875,00781-5005-01 ",.01)
 ;;00781-5005-01
 ;;9002226.02101,"875,00781-5005-01 ",.02)
 ;;00781-5005-01
 ;;9002226.02101,"875,00781-5005-05 ",.01)
 ;;00781-5005-05
 ;;9002226.02101,"875,00781-5005-05 ",.02)
 ;;00781-5005-05
 ;;9002226.02101,"875,00904-2364-40 ",.01)
 ;;00904-2364-40
 ;;9002226.02101,"875,00904-2364-40 ",.02)
 ;;00904-2364-40
 ;;9002226.02101,"875,00904-2364-60 ",.01)
 ;;00904-2364-60
 ;;9002226.02101,"875,00904-2364-60 ",.02)
 ;;00904-2364-60
 ;;9002226.02101,"875,00904-2365-40 ",.01)
 ;;00904-2365-40
 ;;9002226.02101,"875,00904-2365-40 ",.02)
 ;;00904-2365-40
 ;;9002226.02101,"875,00904-2365-60 ",.01)
 ;;00904-2365-60
 ;;9002226.02101,"875,00904-2365-60 ",.02)
 ;;00904-2365-60
 ;;9002226.02101,"875,00904-5238-60 ",.01)
 ;;00904-5238-60
 ;;9002226.02101,"875,00904-5238-60 ",.02)
 ;;00904-5238-60
 ;;9002226.02101,"875,00904-7809-60 ",.01)
 ;;00904-7809-60
 ;;9002226.02101,"875,00904-7809-60 ",.02)
 ;;00904-7809-60
 ;;9002226.02101,"875,00904-7809-61 ",.01)
 ;;00904-7809-61
 ;;9002226.02101,"875,00904-7809-61 ",.02)
 ;;00904-7809-61
 ;;9002226.02101,"875,10135-0506-01 ",.01)
 ;;10135-0506-01
 ;;9002226.02101,"875,10135-0506-01 ",.02)
 ;;10135-0506-01
 ;;9002226.02101,"875,10135-0507-01 ",.01)
 ;;10135-0507-01
 ;;9002226.02101,"875,10135-0507-01 ",.02)
 ;;10135-0507-01
 ;;9002226.02101,"875,10135-0507-05 ",.01)
 ;;10135-0507-05
 ;;9002226.02101,"875,10135-0507-05 ",.02)
 ;;10135-0507-05
 ;;9002226.02101,"875,10135-0507-10 ",.01)
 ;;10135-0507-10
 ;;9002226.02101,"875,10135-0507-10 ",.02)
 ;;10135-0507-10
 ;;9002226.02101,"875,10135-0594-01 ",.01)
 ;;10135-0594-01
 ;;9002226.02101,"875,10135-0594-01 ",.02)
 ;;10135-0594-01
 ;;9002226.02101,"875,10135-0595-01 ",.01)
 ;;10135-0595-01
 ;;9002226.02101,"875,10135-0595-01 ",.02)
 ;;10135-0595-01
 ;;9002226.02101,"875,10135-0595-05 ",.01)
 ;;10135-0595-05
 ;;9002226.02101,"875,10135-0595-05 ",.02)
 ;;10135-0595-05
 ;;9002226.02101,"875,10135-0595-10 ",.01)
 ;;10135-0595-10
 ;;9002226.02101,"875,10135-0595-10 ",.02)
 ;;10135-0595-10
 ;;9002226.02101,"875,10139-0230-02 ",.01)
 ;;10139-0230-02
 ;;9002226.02101,"875,10139-0230-02 ",.02)
 ;;10139-0230-02
 ;;9002226.02101,"875,10139-0230-10 ",.01)
 ;;10139-0230-10
 ;;9002226.02101,"875,10139-0230-10 ",.02)
 ;;10139-0230-10
 ;;9002226.02101,"875,10544-0002-20 ",.01)
 ;;10544-0002-20
 ;;9002226.02101,"875,10544-0002-20 ",.02)
 ;;10544-0002-20
 ;;9002226.02101,"875,10544-0033-30 ",.01)
 ;;10544-0033-30
 ;;9002226.02101,"875,10544-0033-30 ",.02)
 ;;10544-0033-30
 ;;9002226.02101,"875,10544-0072-02 ",.01)
 ;;10544-0072-02
 ;;9002226.02101,"875,10544-0072-02 ",.02)
 ;;10544-0072-02
 ;;9002226.02101,"875,10544-0072-10 ",.01)
 ;;10544-0072-10
 ;;9002226.02101,"875,10544-0072-10 ",.02)
 ;;10544-0072-10
 ;;9002226.02101,"875,10544-0072-14 ",.01)
 ;;10544-0072-14
 ;;9002226.02101,"875,10544-0072-14 ",.02)
 ;;10544-0072-14
 ;;9002226.02101,"875,10544-0072-15 ",.01)
 ;;10544-0072-15
 ;;9002226.02101,"875,10544-0072-15 ",.02)
 ;;10544-0072-15
 ;;9002226.02101,"875,10544-0072-20 ",.01)
 ;;10544-0072-20
 ;;9002226.02101,"875,10544-0072-20 ",.02)
 ;;10544-0072-20
 ;;9002226.02101,"875,10544-0072-21 ",.01)
 ;;10544-0072-21
 ;;9002226.02101,"875,10544-0072-21 ",.02)
 ;;10544-0072-21
 ;;9002226.02101,"875,10544-0072-30 ",.01)
 ;;10544-0072-30
 ;;9002226.02101,"875,10544-0072-30 ",.02)
 ;;10544-0072-30
 ;;9002226.02101,"875,10544-0072-45 ",.01)
 ;;10544-0072-45
 ;;9002226.02101,"875,10544-0072-45 ",.02)
 ;;10544-0072-45
 ;;9002226.02101,"875,10544-0072-60 ",.01)
 ;;10544-0072-60
 ;;9002226.02101,"875,10544-0072-60 ",.02)
 ;;10544-0072-60
 ;;9002226.02101,"875,10544-0072-84 ",.01)
 ;;10544-0072-84
 ;;9002226.02101,"875,10544-0072-84 ",.02)
 ;;10544-0072-84
 ;;9002226.02101,"875,10544-0072-90 ",.01)
 ;;10544-0072-90
 ;;9002226.02101,"875,10544-0072-90 ",.02)
 ;;10544-0072-90
 ;;9002226.02101,"875,10544-0132-30 ",.01)
 ;;10544-0132-30
 ;;9002226.02101,"875,10544-0132-30 ",.02)
 ;;10544-0132-30
 ;;9002226.02101,"875,10544-0159-09 ",.01)
 ;;10544-0159-09
 ;;9002226.02101,"875,10544-0159-09 ",.02)
 ;;10544-0159-09
 ;;9002226.02101,"875,10544-0159-15 ",.01)
 ;;10544-0159-15
 ;;9002226.02101,"875,10544-0159-15 ",.02)
 ;;10544-0159-15
 ;;9002226.02101,"875,10544-0159-20 ",.01)
 ;;10544-0159-20
 ;;9002226.02101,"875,10544-0159-20 ",.02)
 ;;10544-0159-20
 ;;9002226.02101,"875,10544-0159-30 ",.01)
 ;;10544-0159-30
 ;;9002226.02101,"875,10544-0159-30 ",.02)
 ;;10544-0159-30
 ;;9002226.02101,"875,10544-0259-20 ",.01)
 ;;10544-0259-20
 ;;9002226.02101,"875,10544-0259-20 ",.02)
 ;;10544-0259-20
 ;;9002226.02101,"875,10544-0283-20 ",.01)
 ;;10544-0283-20
 ;;9002226.02101,"875,10544-0283-20 ",.02)
 ;;10544-0283-20
 ;;9002226.02101,"875,10544-0464-00 ",.01)
 ;;10544-0464-00
 ;;9002226.02101,"875,10544-0464-00 ",.02)
 ;;10544-0464-00
 ;;9002226.02101,"875,10544-0464-02 ",.01)
 ;;10544-0464-02
 ;;9002226.02101,"875,10544-0464-02 ",.02)
 ;;10544-0464-02
 ;;9002226.02101,"875,10544-0464-30 ",.01)
 ;;10544-0464-30
 ;;9002226.02101,"875,10544-0464-30 ",.02)
 ;;10544-0464-30
