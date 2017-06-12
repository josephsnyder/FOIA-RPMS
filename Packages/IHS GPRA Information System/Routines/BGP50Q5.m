BGP50Q5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 07, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1820,55045-2086-02 ",.02)
 ;;55045-2086-02
 ;;9002226.02101,"1820,55045-2086-03 ",.01)
 ;;55045-2086-03
 ;;9002226.02101,"1820,55045-2086-03 ",.02)
 ;;55045-2086-03
 ;;9002226.02101,"1820,55045-2086-04 ",.01)
 ;;55045-2086-04
 ;;9002226.02101,"1820,55045-2086-04 ",.02)
 ;;55045-2086-04
 ;;9002226.02101,"1820,55045-2086-05 ",.01)
 ;;55045-2086-05
 ;;9002226.02101,"1820,55045-2086-05 ",.02)
 ;;55045-2086-05
 ;;9002226.02101,"1820,55045-2086-06 ",.01)
 ;;55045-2086-06
 ;;9002226.02101,"1820,55045-2086-06 ",.02)
 ;;55045-2086-06
 ;;9002226.02101,"1820,55045-2086-08 ",.01)
 ;;55045-2086-08
 ;;9002226.02101,"1820,55045-2086-08 ",.02)
 ;;55045-2086-08
 ;;9002226.02101,"1820,55045-2086-09 ",.01)
 ;;55045-2086-09
 ;;9002226.02101,"1820,55045-2086-09 ",.02)
 ;;55045-2086-09
 ;;9002226.02101,"1820,55045-2152-00 ",.01)
 ;;55045-2152-00
 ;;9002226.02101,"1820,55045-2152-00 ",.02)
 ;;55045-2152-00
 ;;9002226.02101,"1820,55045-2152-01 ",.01)
 ;;55045-2152-01
 ;;9002226.02101,"1820,55045-2152-01 ",.02)
 ;;55045-2152-01
 ;;9002226.02101,"1820,55045-2152-03 ",.01)
 ;;55045-2152-03
 ;;9002226.02101,"1820,55045-2152-03 ",.02)
 ;;55045-2152-03
 ;;9002226.02101,"1820,55045-2152-04 ",.01)
 ;;55045-2152-04
 ;;9002226.02101,"1820,55045-2152-04 ",.02)
 ;;55045-2152-04
 ;;9002226.02101,"1820,55045-2152-06 ",.01)
 ;;55045-2152-06
 ;;9002226.02101,"1820,55045-2152-06 ",.02)
 ;;55045-2152-06
 ;;9002226.02101,"1820,55045-2152-07 ",.01)
 ;;55045-2152-07
 ;;9002226.02101,"1820,55045-2152-07 ",.02)
 ;;55045-2152-07
 ;;9002226.02101,"1820,55045-2152-08 ",.01)
 ;;55045-2152-08
 ;;9002226.02101,"1820,55045-2152-08 ",.02)
 ;;55045-2152-08
 ;;9002226.02101,"1820,55045-2152-09 ",.01)
 ;;55045-2152-09
 ;;9002226.02101,"1820,55045-2152-09 ",.02)
 ;;55045-2152-09
 ;;9002226.02101,"1820,55045-2550-01 ",.01)
 ;;55045-2550-01
 ;;9002226.02101,"1820,55045-2550-01 ",.02)
 ;;55045-2550-01
 ;;9002226.02101,"1820,55045-2550-04 ",.01)
 ;;55045-2550-04
 ;;9002226.02101,"1820,55045-2550-04 ",.02)
 ;;55045-2550-04
 ;;9002226.02101,"1820,55045-2550-08 ",.01)
 ;;55045-2550-08
 ;;9002226.02101,"1820,55045-2550-08 ",.02)
 ;;55045-2550-08
 ;;9002226.02101,"1820,55045-3754-08 ",.01)
 ;;55045-3754-08
 ;;9002226.02101,"1820,55045-3754-08 ",.02)
 ;;55045-3754-08
 ;;9002226.02101,"1820,55048-0789-28 ",.01)
 ;;55048-0789-28
 ;;9002226.02101,"1820,55048-0789-28 ",.02)
 ;;55048-0789-28
 ;;9002226.02101,"1820,55048-0789-30 ",.01)
 ;;55048-0789-30
 ;;9002226.02101,"1820,55048-0789-30 ",.02)
 ;;55048-0789-30
 ;;9002226.02101,"1820,55048-0790-30 ",.01)
 ;;55048-0790-30
 ;;9002226.02101,"1820,55048-0790-30 ",.02)
 ;;55048-0790-30
 ;;9002226.02101,"1820,55048-0790-60 ",.01)
 ;;55048-0790-60
 ;;9002226.02101,"1820,55048-0790-60 ",.02)
 ;;55048-0790-60
 ;;9002226.02101,"1820,55048-0852-60 ",.01)
 ;;55048-0852-60
 ;;9002226.02101,"1820,55048-0852-60 ",.02)
 ;;55048-0852-60
 ;;9002226.02101,"1820,55289-0038-30 ",.01)
 ;;55289-0038-30
 ;;9002226.02101,"1820,55289-0038-30 ",.02)
 ;;55289-0038-30
 ;;9002226.02101,"1820,55289-0196-14 ",.01)
 ;;55289-0196-14
 ;;9002226.02101,"1820,55289-0196-14 ",.02)
 ;;55289-0196-14
 ;;9002226.02101,"1820,55289-0196-30 ",.01)
 ;;55289-0196-30
 ;;9002226.02101,"1820,55289-0196-30 ",.02)
 ;;55289-0196-30
 ;;9002226.02101,"1820,55289-0660-30 ",.01)
 ;;55289-0660-30
 ;;9002226.02101,"1820,55289-0660-30 ",.02)
 ;;55289-0660-30
 ;;9002226.02101,"1820,55289-0787-02 ",.01)
 ;;55289-0787-02
 ;;9002226.02101,"1820,55289-0787-02 ",.02)
 ;;55289-0787-02
 ;;9002226.02101,"1820,55289-0787-30 ",.01)
 ;;55289-0787-30
 ;;9002226.02101,"1820,55289-0787-30 ",.02)
 ;;55289-0787-30
 ;;9002226.02101,"1820,55289-0787-60 ",.01)
 ;;55289-0787-60
 ;;9002226.02101,"1820,55289-0787-60 ",.02)
 ;;55289-0787-60
 ;;9002226.02101,"1820,55289-0790-02 ",.01)
 ;;55289-0790-02
 ;;9002226.02101,"1820,55289-0790-02 ",.02)
 ;;55289-0790-02
 ;;9002226.02101,"1820,55700-0039-30 ",.01)
 ;;55700-0039-30
 ;;9002226.02101,"1820,55700-0039-30 ",.02)
 ;;55700-0039-30
 ;;9002226.02101,"1820,58118-0146-03 ",.01)
 ;;58118-0146-03
 ;;9002226.02101,"1820,58118-0146-03 ",.02)
 ;;58118-0146-03
 ;;9002226.02101,"1820,58118-0146-06 ",.01)
 ;;58118-0146-06
 ;;9002226.02101,"1820,58118-0146-06 ",.02)
 ;;58118-0146-06
 ;;9002226.02101,"1820,58118-0147-03 ",.01)
 ;;58118-0147-03
 ;;9002226.02101,"1820,58118-0147-03 ",.02)
 ;;58118-0147-03
 ;;9002226.02101,"1820,59547-0310-19 ",.01)
 ;;59547-0310-19
 ;;9002226.02101,"1820,59547-0310-19 ",.02)
 ;;59547-0310-19
 ;;9002226.02101,"1820,59762-3717-04 ",.01)
 ;;59762-3717-04
 ;;9002226.02101,"1820,59762-3717-04 ",.02)
 ;;59762-3717-04
 ;;9002226.02101,"1820,59762-3718-03 ",.01)
 ;;59762-3718-03
 ;;9002226.02101,"1820,59762-3718-03 ",.02)
 ;;59762-3718-03
 ;;9002226.02101,"1820,59762-3718-04 ",.01)
 ;;59762-3718-04
 ;;9002226.02101,"1820,59762-3718-04 ",.02)
 ;;59762-3718-04
 ;;9002226.02101,"1820,60429-0542-01 ",.01)
 ;;60429-0542-01
 ;;9002226.02101,"1820,60429-0542-01 ",.02)
 ;;60429-0542-01
 ;;9002226.02101,"1820,60429-0542-05 ",.01)
 ;;60429-0542-05
 ;;9002226.02101,"1820,60429-0542-05 ",.02)
 ;;60429-0542-05
 ;;9002226.02101,"1820,60429-0543-01 ",.01)
 ;;60429-0543-01
 ;;9002226.02101,"1820,60429-0543-01 ",.02)
 ;;60429-0543-01
 ;;9002226.02101,"1820,60429-0543-05 ",.01)
 ;;60429-0543-05
 ;;9002226.02101,"1820,60429-0543-05 ",.02)
 ;;60429-0543-05
 ;;9002226.02101,"1820,60429-0566-01 ",.01)
 ;;60429-0566-01
 ;;9002226.02101,"1820,60429-0566-01 ",.02)
 ;;60429-0566-01
 ;;9002226.02101,"1820,60429-0567-01 ",.01)
 ;;60429-0567-01
 ;;9002226.02101,"1820,60429-0567-01 ",.02)
 ;;60429-0567-01
 ;;9002226.02101,"1820,60760-0206-30 ",.01)
 ;;60760-0206-30
 ;;9002226.02101,"1820,60760-0206-30 ",.02)
 ;;60760-0206-30
 ;;9002226.02101,"1820,60760-0207-30 ",.01)
 ;;60760-0207-30
 ;;9002226.02101,"1820,60760-0207-30 ",.02)
 ;;60760-0207-30
 ;;9002226.02101,"1820,60760-0454-30 ",.01)
 ;;60760-0454-30
 ;;9002226.02101,"1820,60760-0454-30 ",.02)
 ;;60760-0454-30
 ;;9002226.02101,"1820,63004-7734-01 ",.01)
 ;;63004-7734-01
 ;;9002226.02101,"1820,63004-7734-01 ",.02)
 ;;63004-7734-01
 ;;9002226.02101,"1820,63629-1619-01 ",.01)
 ;;63629-1619-01
 ;;9002226.02101,"1820,63629-1619-01 ",.02)
 ;;63629-1619-01
 ;;9002226.02101,"1820,63629-1619-02 ",.01)
 ;;63629-1619-02
 ;;9002226.02101,"1820,63629-1619-02 ",.02)
 ;;63629-1619-02
 ;;9002226.02101,"1820,63629-1619-03 ",.01)
 ;;63629-1619-03
 ;;9002226.02101,"1820,63629-1619-03 ",.02)
 ;;63629-1619-03
 ;;9002226.02101,"1820,63629-1619-04 ",.01)
 ;;63629-1619-04
 ;;9002226.02101,"1820,63629-1619-04 ",.02)
 ;;63629-1619-04
 ;;9002226.02101,"1820,63629-1621-01 ",.01)
 ;;63629-1621-01
 ;;9002226.02101,"1820,63629-1621-01 ",.02)
 ;;63629-1621-01
 ;;9002226.02101,"1820,63629-1621-02 ",.01)
 ;;63629-1621-02
 ;;9002226.02101,"1820,63629-1621-02 ",.02)
 ;;63629-1621-02
 ;;9002226.02101,"1820,63629-1621-03 ",.01)
 ;;63629-1621-03
 ;;9002226.02101,"1820,63629-1621-03 ",.02)
 ;;63629-1621-03
 ;;9002226.02101,"1820,63629-1621-04 ",.01)
 ;;63629-1621-04
 ;;9002226.02101,"1820,63629-1621-04 ",.02)
 ;;63629-1621-04
 ;;9002226.02101,"1820,63629-1621-05 ",.01)
 ;;63629-1621-05
 ;;9002226.02101,"1820,63629-1621-05 ",.02)
 ;;63629-1621-05
 ;;9002226.02101,"1820,63629-2956-01 ",.01)
 ;;63629-2956-01
 ;;9002226.02101,"1820,63629-2956-01 ",.02)
 ;;63629-2956-01
 ;;9002226.02101,"1820,63629-2956-02 ",.01)
 ;;63629-2956-02
 ;;9002226.02101,"1820,63629-2956-02 ",.02)
 ;;63629-2956-02
 ;;9002226.02101,"1820,63629-2956-03 ",.01)
 ;;63629-2956-03
 ;;9002226.02101,"1820,63629-2956-03 ",.02)
 ;;63629-2956-03
 ;;9002226.02101,"1820,63629-2956-04 ",.01)
 ;;63629-2956-04
 ;;9002226.02101,"1820,63629-2956-04 ",.02)
 ;;63629-2956-04
 ;;9002226.02101,"1820,63629-2956-05 ",.01)
 ;;63629-2956-05
 ;;9002226.02101,"1820,63629-2956-05 ",.02)
 ;;63629-2956-05
 ;;9002226.02101,"1820,63629-2956-06 ",.01)
 ;;63629-2956-06
 ;;9002226.02101,"1820,63629-2956-06 ",.02)
 ;;63629-2956-06
 ;;9002226.02101,"1820,63629-3034-01 ",.01)
 ;;63629-3034-01
 ;;9002226.02101,"1820,63629-3034-01 ",.02)
 ;;63629-3034-01
 ;;9002226.02101,"1820,63629-3034-02 ",.01)
 ;;63629-3034-02
 ;;9002226.02101,"1820,63629-3034-02 ",.02)
 ;;63629-3034-02
 ;;9002226.02101,"1820,63629-3200-01 ",.01)
 ;;63629-3200-01
 ;;9002226.02101,"1820,63629-3200-01 ",.02)
 ;;63629-3200-01
 ;;9002226.02101,"1820,63629-3200-02 ",.01)
 ;;63629-3200-02
 ;;9002226.02101,"1820,63629-3200-02 ",.02)
 ;;63629-3200-02
 ;;9002226.02101,"1820,63739-0231-10 ",.01)
 ;;63739-0231-10
 ;;9002226.02101,"1820,63739-0231-10 ",.02)
 ;;63739-0231-10
 ;;9002226.02101,"1820,63874-0213-01 ",.01)
 ;;63874-0213-01
 ;;9002226.02101,"1820,63874-0213-01 ",.02)
 ;;63874-0213-01
 ;;9002226.02101,"1820,63874-0213-05 ",.01)
 ;;63874-0213-05
 ;;9002226.02101,"1820,63874-0213-05 ",.02)
 ;;63874-0213-05
 ;;9002226.02101,"1820,63874-0213-12 ",.01)
 ;;63874-0213-12
 ;;9002226.02101,"1820,63874-0213-12 ",.02)
 ;;63874-0213-12
 ;;9002226.02101,"1820,63874-0213-15 ",.01)
 ;;63874-0213-15
 ;;9002226.02101,"1820,63874-0213-15 ",.02)
 ;;63874-0213-15
 ;;9002226.02101,"1820,63874-0213-20 ",.01)
 ;;63874-0213-20
 ;;9002226.02101,"1820,63874-0213-20 ",.02)
 ;;63874-0213-20
 ;;9002226.02101,"1820,63874-0213-30 ",.01)
 ;;63874-0213-30
 ;;9002226.02101,"1820,63874-0213-30 ",.02)
 ;;63874-0213-30
 ;;9002226.02101,"1820,63874-0213-40 ",.01)
 ;;63874-0213-40
 ;;9002226.02101,"1820,63874-0213-40 ",.02)
 ;;63874-0213-40
 ;;9002226.02101,"1820,63874-0213-60 ",.01)
 ;;63874-0213-60
 ;;9002226.02101,"1820,63874-0213-60 ",.02)
 ;;63874-0213-60
 ;;9002226.02101,"1820,63874-0214-01 ",.01)
 ;;63874-0214-01
 ;;9002226.02101,"1820,63874-0214-01 ",.02)
 ;;63874-0214-01
 ;;9002226.02101,"1820,63874-0214-06 ",.01)
 ;;63874-0214-06
 ;;9002226.02101,"1820,63874-0214-06 ",.02)
 ;;63874-0214-06
 ;;9002226.02101,"1820,63874-0214-09 ",.01)
 ;;63874-0214-09
 ;;9002226.02101,"1820,63874-0214-09 ",.02)
 ;;63874-0214-09
 ;;9002226.02101,"1820,63874-0214-10 ",.01)
 ;;63874-0214-10
 ;;9002226.02101,"1820,63874-0214-10 ",.02)
 ;;63874-0214-10
 ;;9002226.02101,"1820,63874-0214-12 ",.01)
 ;;63874-0214-12
 ;;9002226.02101,"1820,63874-0214-12 ",.02)
 ;;63874-0214-12
 ;;9002226.02101,"1820,63874-0214-14 ",.01)
 ;;63874-0214-14
 ;;9002226.02101,"1820,63874-0214-14 ",.02)
 ;;63874-0214-14
 ;;9002226.02101,"1820,63874-0214-15 ",.01)
 ;;63874-0214-15
 ;;9002226.02101,"1820,63874-0214-15 ",.02)
 ;;63874-0214-15
 ;;9002226.02101,"1820,63874-0214-20 ",.01)
 ;;63874-0214-20
 ;;9002226.02101,"1820,63874-0214-20 ",.02)
 ;;63874-0214-20
 ;;9002226.02101,"1820,63874-0214-21 ",.01)
 ;;63874-0214-21
 ;;9002226.02101,"1820,63874-0214-21 ",.02)
 ;;63874-0214-21
 ;;9002226.02101,"1820,63874-0214-24 ",.01)
 ;;63874-0214-24
 ;;9002226.02101,"1820,63874-0214-24 ",.02)
 ;;63874-0214-24
 ;;9002226.02101,"1820,63874-0214-30 ",.01)
 ;;63874-0214-30
 ;;9002226.02101,"1820,63874-0214-30 ",.02)
 ;;63874-0214-30
 ;;9002226.02101,"1820,63874-0214-60 ",.01)
 ;;63874-0214-60
 ;;9002226.02101,"1820,63874-0214-60 ",.02)
 ;;63874-0214-60
 ;;9002226.02101,"1820,63874-0281-01 ",.01)
 ;;63874-0281-01
 ;;9002226.02101,"1820,63874-0281-01 ",.02)
 ;;63874-0281-01
 ;;9002226.02101,"1820,63874-0281-04 ",.01)
 ;;63874-0281-04
 ;;9002226.02101,"1820,63874-0281-04 ",.02)
 ;;63874-0281-04
 ;;9002226.02101,"1820,63874-0281-05 ",.01)
 ;;63874-0281-05
 ;;9002226.02101,"1820,63874-0281-05 ",.02)
 ;;63874-0281-05
 ;;9002226.02101,"1820,63874-0281-10 ",.01)
 ;;63874-0281-10
 ;;9002226.02101,"1820,63874-0281-10 ",.02)
 ;;63874-0281-10
 ;;9002226.02101,"1820,63874-0281-15 ",.01)
 ;;63874-0281-15
 ;;9002226.02101,"1820,63874-0281-15 ",.02)
 ;;63874-0281-15
 ;;9002226.02101,"1820,63874-0281-20 ",.01)
 ;;63874-0281-20
 ;;9002226.02101,"1820,63874-0281-20 ",.02)
 ;;63874-0281-20
 ;;9002226.02101,"1820,63874-0281-30 ",.01)
 ;;63874-0281-30
 ;;9002226.02101,"1820,63874-0281-30 ",.02)
 ;;63874-0281-30
 ;;9002226.02101,"1820,63874-0281-50 ",.01)
 ;;63874-0281-50
 ;;9002226.02101,"1820,63874-0281-50 ",.02)
 ;;63874-0281-50
 ;;9002226.02101,"1820,63874-0281-60 ",.01)
 ;;63874-0281-60
 ;;9002226.02101,"1820,63874-0281-60 ",.02)
 ;;63874-0281-60
 ;;9002226.02101,"1820,63874-0281-72 ",.01)
 ;;63874-0281-72
 ;;9002226.02101,"1820,63874-0281-72 ",.02)
 ;;63874-0281-72
 ;;9002226.02101,"1820,63874-0281-74 ",.01)
 ;;63874-0281-74
 ;;9002226.02101,"1820,63874-0281-74 ",.02)
 ;;63874-0281-74
 ;;9002226.02101,"1820,63874-0281-77 ",.01)
 ;;63874-0281-77
 ;;9002226.02101,"1820,63874-0281-77 ",.02)
 ;;63874-0281-77
 ;;9002226.02101,"1820,63874-0281-90 ",.01)
 ;;63874-0281-90
 ;;9002226.02101,"1820,63874-0281-90 ",.02)
 ;;63874-0281-90
 ;;9002226.02101,"1820,63874-0292-01 ",.01)
 ;;63874-0292-01
 ;;9002226.02101,"1820,63874-0292-01 ",.02)
 ;;63874-0292-01
 ;;9002226.02101,"1820,63874-0292-04 ",.01)
 ;;63874-0292-04
 ;;9002226.02101,"1820,63874-0292-04 ",.02)
 ;;63874-0292-04
 ;;9002226.02101,"1820,63874-0292-10 ",.01)
 ;;63874-0292-10
 ;;9002226.02101,"1820,63874-0292-10 ",.02)
 ;;63874-0292-10
 ;;9002226.02101,"1820,63874-0292-12 ",.01)
 ;;63874-0292-12
 ;;9002226.02101,"1820,63874-0292-12 ",.02)
 ;;63874-0292-12
 ;;9002226.02101,"1820,63874-0292-15 ",.01)
 ;;63874-0292-15
 ;;9002226.02101,"1820,63874-0292-15 ",.02)
 ;;63874-0292-15
 ;;9002226.02101,"1820,63874-0292-20 ",.01)
 ;;63874-0292-20
 ;;9002226.02101,"1820,63874-0292-20 ",.02)
 ;;63874-0292-20
 ;;9002226.02101,"1820,63874-0292-30 ",.01)
 ;;63874-0292-30
 ;;9002226.02101,"1820,63874-0292-30 ",.02)
 ;;63874-0292-30
