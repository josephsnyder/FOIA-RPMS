BGP7KXGD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 10, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"352,00173-0696-00 ",.01)
 ;;00173-0696-00
 ;;9002226.02101,"352,00173-0696-00 ",.02)
 ;;00173-0696-00
 ;;9002226.02101,"352,00173-0696-02 ",.01)
 ;;00173-0696-02
 ;;9002226.02101,"352,00173-0696-02 ",.02)
 ;;00173-0696-02
 ;;9002226.02101,"352,00173-0697-00 ",.01)
 ;;00173-0697-00
 ;;9002226.02101,"352,00173-0697-00 ",.02)
 ;;00173-0697-00
 ;;9002226.02101,"352,00173-0697-02 ",.01)
 ;;00173-0697-02
 ;;9002226.02101,"352,00173-0697-02 ",.02)
 ;;00173-0697-02
 ;;9002226.02101,"352,00173-0718-00 ",.01)
 ;;00173-0718-00
 ;;9002226.02101,"352,00173-0718-00 ",.02)
 ;;00173-0718-00
 ;;9002226.02101,"352,00173-0719-00 ",.01)
 ;;00173-0719-00
 ;;9002226.02101,"352,00173-0719-00 ",.02)
 ;;00173-0719-00
 ;;9002226.02101,"352,00173-0720-00 ",.01)
 ;;00173-0720-00
 ;;9002226.02101,"352,00173-0720-00 ",.02)
 ;;00173-0720-00
 ;;9002226.02101,"352,00182-1664-66 ",.01)
 ;;00182-1664-66
 ;;9002226.02101,"352,00182-1664-66 ",.02)
 ;;00182-1664-66
 ;;9002226.02101,"352,00182-6014-65 ",.01)
 ;;00182-6014-65
 ;;9002226.02101,"352,00182-6014-65 ",.02)
 ;;00182-6014-65
 ;;9002226.02101,"352,00182-6074-64 ",.01)
 ;;00182-6074-64
 ;;9002226.02101,"352,00182-6074-64 ",.02)
 ;;00182-6074-64
 ;;9002226.02101,"352,00182-6083-66 ",.01)
 ;;00182-6083-66
 ;;9002226.02101,"352,00182-6083-66 ",.02)
 ;;00182-6083-66
 ;;9002226.02101,"352,00182-6087-96 ",.01)
 ;;00182-6087-96
 ;;9002226.02101,"352,00182-6087-96 ",.02)
 ;;00182-6087-96
 ;;9002226.02101,"352,00182-8010-24 ",.01)
 ;;00182-8010-24
 ;;9002226.02101,"352,00182-8010-24 ",.02)
 ;;00182-8010-24
 ;;9002226.02101,"352,00182-8010-26 ",.01)
 ;;00182-8010-26
 ;;9002226.02101,"352,00182-8010-26 ",.02)
 ;;00182-8010-26
 ;;9002226.02101,"352,00186-0915-42 ",.01)
 ;;00186-0915-42
 ;;9002226.02101,"352,00186-0915-42 ",.02)
 ;;00186-0915-42
 ;;9002226.02101,"352,00186-1490-01 ",.01)
 ;;00186-1490-01
 ;;9002226.02101,"352,00186-1490-01 ",.02)
 ;;00186-1490-01
 ;;9002226.02101,"352,00186-1491-04 ",.01)
 ;;00186-1491-04
 ;;9002226.02101,"352,00186-1491-04 ",.02)
 ;;00186-1491-04
 ;;9002226.02101,"352,00186-1491-17 ",.01)
 ;;00186-1491-17
 ;;9002226.02101,"352,00186-1491-17 ",.02)
 ;;00186-1491-17
 ;;9002226.02101,"352,00186-1988-04 ",.01)
 ;;00186-1988-04
 ;;9002226.02101,"352,00186-1988-04 ",.02)
 ;;00186-1988-04
 ;;9002226.02101,"352,00186-1989-04 ",.01)
 ;;00186-1989-04
 ;;9002226.02101,"352,00186-1989-04 ",.02)
 ;;00186-1989-04
 ;;9002226.02101,"352,00186-4111-01 ",.01)
 ;;00186-4111-01
 ;;9002226.02101,"352,00186-4111-01 ",.02)
 ;;00186-4111-01
 ;;9002226.02101,"352,00186-4112-01 ",.01)
 ;;00186-4112-01
 ;;9002226.02101,"352,00186-4112-01 ",.02)
 ;;00186-4112-01
 ;;9002226.02101,"352,00186-4113-01 ",.01)
 ;;00186-4113-01
 ;;9002226.02101,"352,00186-4113-01 ",.02)
 ;;00186-4113-01
 ;;9002226.02101,"352,00186-4115-01 ",.01)
 ;;00186-4115-01
 ;;9002226.02101,"352,00186-4115-01 ",.02)
 ;;00186-4115-01
 ;;9002226.02101,"352,00186-4120-01 ",.01)
 ;;00186-4120-01
 ;;9002226.02101,"352,00186-4120-01 ",.02)
 ;;00186-4120-01
 ;;9002226.02101,"352,00186-4130-01 ",.01)
 ;;00186-4130-01
 ;;9002226.02101,"352,00186-4130-01 ",.02)
 ;;00186-4130-01
 ;;9002226.02101,"352,00186-4131-01 ",.01)
 ;;00186-4131-01
 ;;9002226.02101,"352,00186-4131-01 ",.02)
 ;;00186-4131-01
 ;;9002226.02101,"352,00223-6536-01 ",.01)
 ;;00223-6536-01
 ;;9002226.02101,"352,00223-6536-01 ",.02)
 ;;00223-6536-01
 ;;9002226.02101,"352,00247-0084-17 ",.01)
 ;;00247-0084-17
 ;;9002226.02101,"352,00247-0084-17 ",.02)
 ;;00247-0084-17
 ;;9002226.02101,"352,00247-0084-86 ",.01)
 ;;00247-0084-86
 ;;9002226.02101,"352,00247-0084-86 ",.02)
 ;;00247-0084-86
 ;;9002226.02101,"352,00247-0190-20 ",.01)
 ;;00247-0190-20
 ;;9002226.02101,"352,00247-0190-20 ",.02)
 ;;00247-0190-20
 ;;9002226.02101,"352,00247-0348-17 ",.01)
 ;;00247-0348-17
 ;;9002226.02101,"352,00247-0348-17 ",.02)
 ;;00247-0348-17
 ;;9002226.02101,"352,00247-0588-41 ",.01)
 ;;00247-0588-41
 ;;9002226.02101,"352,00247-0588-41 ",.02)
 ;;00247-0588-41
 ;;9002226.02101,"352,00247-0657-65 ",.01)
 ;;00247-0657-65
 ;;9002226.02101,"352,00247-0657-65 ",.02)
 ;;00247-0657-65
 ;;9002226.02101,"352,00247-0658-65 ",.01)
 ;;00247-0658-65
 ;;9002226.02101,"352,00247-0658-65 ",.02)
 ;;00247-0658-65
 ;;9002226.02101,"352,00247-0667-08 ",.01)
 ;;00247-0667-08
 ;;9002226.02101,"352,00247-0667-08 ",.02)
 ;;00247-0667-08
 ;;9002226.02101,"352,00247-0674-41 ",.01)
 ;;00247-0674-41
 ;;9002226.02101,"352,00247-0674-41 ",.02)
 ;;00247-0674-41
 ;;9002226.02101,"352,00247-0871-20 ",.01)
 ;;00247-0871-20
 ;;9002226.02101,"352,00247-0871-20 ",.02)
 ;;00247-0871-20
 ;;9002226.02101,"352,00304-0689-58 ",.01)
 ;;00304-0689-58
 ;;9002226.02101,"352,00304-0689-58 ",.02)
 ;;00304-0689-58
 ;;9002226.02101,"352,00304-1520-71 ",.01)
 ;;00304-1520-71
 ;;9002226.02101,"352,00304-1520-71 ",.02)
 ;;00304-1520-71
 ;;9002226.02101,"352,00304-1644-22 ",.01)
 ;;00304-1644-22
 ;;9002226.02101,"352,00304-1644-22 ",.02)
 ;;00304-1644-22
 ;;9002226.02101,"352,00304-2001-59 ",.01)
 ;;00304-2001-59
 ;;9002226.02101,"352,00304-2001-59 ",.02)
 ;;00304-2001-59
 ;;9002226.02101,"352,00304-2063-25 ",.01)
 ;;00304-2063-25
 ;;9002226.02101,"352,00304-2063-25 ",.02)
 ;;00304-2063-25
 ;;9002226.02101,"352,00364-2530-55 ",.01)
 ;;00364-2530-55
 ;;9002226.02101,"352,00364-2530-55 ",.02)
 ;;00364-2530-55
 ;;9002226.02101,"352,00364-2632-17 ",.01)
 ;;00364-2632-17
 ;;9002226.02101,"352,00364-2632-17 ",.02)
 ;;00364-2632-17
 ;;9002226.02101,"352,00364-2632-98 ",.01)
 ;;00364-2632-98
 ;;9002226.02101,"352,00364-2632-98 ",.02)
 ;;00364-2632-98
 ;;9002226.02101,"352,00364-7271-72 ",.01)
 ;;00364-7271-72
 ;;9002226.02101,"352,00364-7271-72 ",.02)
 ;;00364-7271-72
 ;;9002226.02101,"352,00403-0645-18 ",.01)
 ;;00403-0645-18
 ;;9002226.02101,"352,00403-0645-18 ",.02)
 ;;00403-0645-18
 ;;9002226.02101,"352,00403-1771-18 ",.01)
 ;;00403-1771-18
 ;;9002226.02101,"352,00403-1771-18 ",.02)
 ;;00403-1771-18
 ;;9002226.02101,"352,00403-1772-18 ",.01)
 ;;00403-1772-18
 ;;9002226.02101,"352,00403-1772-18 ",.02)
 ;;00403-1772-18
 ;;9002226.02101,"352,00403-2251-18 ",.01)
 ;;00403-2251-18
 ;;9002226.02101,"352,00403-2251-18 ",.02)
 ;;00403-2251-18
 ;;9002226.02101,"352,00403-3507-18 ",.01)
 ;;00403-3507-18
 ;;9002226.02101,"352,00403-3507-18 ",.02)
 ;;00403-3507-18
 ;;9002226.02101,"352,00403-4672-18 ",.01)
 ;;00403-4672-18
 ;;9002226.02101,"352,00403-4672-18 ",.02)
 ;;00403-4672-18
 ;;9002226.02101,"352,00405-2130-52 ",.01)
 ;;00405-2130-52
 ;;9002226.02101,"352,00405-2130-52 ",.02)
 ;;00405-2130-52
 ;;9002226.02101,"352,00405-2131-25 ",.01)
 ;;00405-2131-25
 ;;9002226.02101,"352,00405-2131-25 ",.02)
 ;;00405-2131-25
 ;;9002226.02101,"352,00405-2131-31 ",.01)
 ;;00405-2131-31
 ;;9002226.02101,"352,00405-2131-31 ",.02)
 ;;00405-2131-31
 ;;9002226.02101,"352,00456-0670-99 ",.01)
 ;;00456-0670-99
 ;;9002226.02101,"352,00456-0670-99 ",.02)
 ;;00456-0670-99
 ;;9002226.02101,"352,00456-0672-99 ",.01)
 ;;00456-0672-99
 ;;9002226.02101,"352,00456-0672-99 ",.02)
 ;;00456-0672-99
 ;;9002226.02101,"352,00472-0750-21 ",.01)
 ;;00472-0750-21
 ;;9002226.02101,"352,00472-0750-21 ",.02)
 ;;00472-0750-21
 ;;9002226.02101,"352,00472-0750-60 ",.01)
 ;;00472-0750-60
 ;;9002226.02101,"352,00472-0750-60 ",.02)
 ;;00472-0750-60
 ;;9002226.02101,"352,00472-0751-23 ",.01)
 ;;00472-0751-23
 ;;9002226.02101,"352,00472-0751-23 ",.02)
 ;;00472-0751-23
 ;;9002226.02101,"352,00472-0751-30 ",.01)
 ;;00472-0751-30
 ;;9002226.02101,"352,00472-0751-30 ",.02)
 ;;00472-0751-30
 ;;9002226.02101,"352,00472-0751-60 ",.01)
 ;;00472-0751-60
 ;;9002226.02101,"352,00472-0751-60 ",.02)
 ;;00472-0751-60
 ;;9002226.02101,"352,00472-0752-21 ",.01)
 ;;00472-0752-21
 ;;9002226.02101,"352,00472-0752-21 ",.02)
 ;;00472-0752-21
 ;;9002226.02101,"352,00472-0752-60 ",.01)
 ;;00472-0752-60
 ;;9002226.02101,"352,00472-0752-60 ",.02)
 ;;00472-0752-60
 ;;9002226.02101,"352,00472-0753-23 ",.01)
 ;;00472-0753-23
 ;;9002226.02101,"352,00472-0753-23 ",.02)
 ;;00472-0753-23
 ;;9002226.02101,"352,00472-0753-30 ",.01)
 ;;00472-0753-30
 ;;9002226.02101,"352,00472-0753-30 ",.02)
 ;;00472-0753-30
 ;;9002226.02101,"352,00472-0753-60 ",.01)
 ;;00472-0753-60
 ;;9002226.02101,"352,00472-0753-60 ",.02)
 ;;00472-0753-60
 ;;9002226.02101,"352,00472-0778-31 ",.01)
 ;;00472-0778-31
 ;;9002226.02101,"352,00472-0778-31 ",.02)
 ;;00472-0778-31
 ;;9002226.02101,"352,00472-0778-82 ",.01)
 ;;00472-0778-82
 ;;9002226.02101,"352,00472-0778-82 ",.02)
 ;;00472-0778-82
 ;;9002226.02101,"352,00472-0831-23 ",.01)
 ;;00472-0831-23
 ;;9002226.02101,"352,00472-0831-23 ",.02)
 ;;00472-0831-23
 ;;9002226.02101,"352,00472-0831-30 ",.01)
 ;;00472-0831-30
 ;;9002226.02101,"352,00472-0831-30 ",.02)
 ;;00472-0831-30
 ;;9002226.02101,"352,00472-0831-60 ",.01)
 ;;00472-0831-60
 ;;9002226.02101,"352,00472-0831-60 ",.02)
 ;;00472-0831-60
 ;;9002226.02101,"352,00472-0832-20 ",.01)
 ;;00472-0832-20
 ;;9002226.02101,"352,00472-0832-20 ",.02)
 ;;00472-0832-20
 ;;9002226.02101,"352,00472-0832-30 ",.01)
 ;;00472-0832-30
 ;;9002226.02101,"352,00472-0832-30 ",.02)
 ;;00472-0832-30
 ;;9002226.02101,"352,00472-0994-99 ",.01)
 ;;00472-0994-99
 ;;9002226.02101,"352,00472-0994-99 ",.02)
 ;;00472-0994-99
 ;;9002226.02101,"352,00472-1264-63 ",.01)
 ;;00472-1264-63
 ;;9002226.02101,"352,00472-1264-63 ",.02)
 ;;00472-1264-63
 ;;9002226.02101,"352,00472-1264-78 ",.01)
 ;;00472-1264-78
 ;;9002226.02101,"352,00472-1264-78 ",.02)
 ;;00472-1264-78
 ;;9002226.02101,"352,00472-1373-48 ",.01)
 ;;00472-1373-48
 ;;9002226.02101,"352,00472-1373-48 ",.02)
 ;;00472-1373-48
 ;;9002226.02101,"352,00472-1377-48 ",.01)
 ;;00472-1377-48
 ;;9002226.02101,"352,00472-1377-48 ",.02)
 ;;00472-1377-48
 ;;9002226.02101,"352,00487-7601-00 ",.01)
 ;;00487-7601-00
 ;;9002226.02101,"352,00487-7601-00 ",.02)
 ;;00487-7601-00
 ;;9002226.02101,"352,00487-7601-01 ",.01)
 ;;00487-7601-01
 ;;9002226.02101,"352,00487-7601-01 ",.02)
 ;;00487-7601-01
 ;;9002226.02101,"352,00487-9501-01 ",.01)
 ;;00487-9501-01
 ;;9002226.02101,"352,00487-9501-01 ",.02)
 ;;00487-9501-01
 ;;9002226.02101,"352,00487-9501-03 ",.01)
 ;;00487-9501-03
 ;;9002226.02101,"352,00487-9501-03 ",.02)
 ;;00487-9501-03
 ;;9002226.02101,"352,00487-9501-25 ",.01)
 ;;00487-9501-25
 ;;9002226.02101,"352,00487-9501-25 ",.02)
 ;;00487-9501-25
 ;;9002226.02101,"352,00487-9501-60 ",.01)
 ;;00487-9501-60
 ;;9002226.02101,"352,00487-9501-60 ",.02)
 ;;00487-9501-60
 ;;9002226.02101,"352,00487-9801-01 ",.01)
 ;;00487-9801-01
 ;;9002226.02101,"352,00487-9801-01 ",.02)
 ;;00487-9801-01
 ;;9002226.02101,"352,00487-9801-25 ",.01)
 ;;00487-9801-25
 ;;9002226.02101,"352,00487-9801-25 ",.02)
 ;;00487-9801-25
 ;;9002226.02101,"352,00487-9801-30 ",.01)
 ;;00487-9801-30
 ;;9002226.02101,"352,00487-9801-30 ",.02)
 ;;00487-9801-30
 ;;9002226.02101,"352,00487-9801-60 ",.01)
 ;;00487-9801-60
 ;;9002226.02101,"352,00487-9801-60 ",.02)
 ;;00487-9801-60
 ;;9002226.02101,"352,00487-9901-30 ",.01)
 ;;00487-9901-30
 ;;9002226.02101,"352,00487-9901-30 ",.02)
 ;;00487-9901-30
 ;;9002226.02101,"352,00536-0007-73 ",.01)
 ;;00536-0007-73
 ;;9002226.02101,"352,00536-0007-73 ",.02)
 ;;00536-0007-73
 ;;9002226.02101,"352,00536-0416-12 ",.01)
 ;;00536-0416-12
 ;;9002226.02101,"352,00536-0416-12 ",.02)
 ;;00536-0416-12
 ;;9002226.02101,"352,00536-0416-13 ",.01)
 ;;00536-0416-13
 ;;9002226.02101,"352,00536-0416-13 ",.02)
 ;;00536-0416-13
 ;;9002226.02101,"352,00536-1060-72 ",.01)
 ;;00536-1060-72
 ;;9002226.02101,"352,00536-1060-72 ",.02)
 ;;00536-1060-72
 ;;9002226.02101,"352,00536-1080-75 ",.01)
 ;;00536-1080-75
 ;;9002226.02101,"352,00536-1080-75 ",.02)
 ;;00536-1080-75
 ;;9002226.02101,"352,00536-1216-12 ",.01)
 ;;00536-1216-12
 ;;9002226.02101,"352,00536-1216-12 ",.02)
 ;;00536-1216-12
 ;;9002226.02101,"352,00536-1216-13 ",.01)
 ;;00536-1216-13
 ;;9002226.02101,"352,00536-1216-13 ",.02)
 ;;00536-1216-13
 ;;9002226.02101,"352,00536-1469-75 ",.01)
 ;;00536-1469-75
 ;;9002226.02101,"352,00536-1469-75 ",.02)
 ;;00536-1469-75
 ;;9002226.02101,"352,00536-2675-73 ",.01)
 ;;00536-2675-73
 ;;9002226.02101,"352,00536-2675-73 ",.02)
 ;;00536-2675-73
 ;;9002226.02101,"352,00536-2677-04 ",.01)
 ;;00536-2677-04
 ;;9002226.02101,"352,00536-2677-04 ",.02)
 ;;00536-2677-04
 ;;9002226.02101,"352,00537-6377-15 ",.01)
 ;;00537-6377-15
 ;;9002226.02101,"352,00537-6377-15 ",.02)
 ;;00537-6377-15
 ;;9002226.02101,"352,00585-0673-02 ",.01)
 ;;00585-0673-02
 ;;9002226.02101,"352,00585-0673-02 ",.02)
 ;;00585-0673-02
 ;;9002226.02101,"352,00585-0673-03 ",.01)
 ;;00585-0673-03
 ;;9002226.02101,"352,00585-0673-03 ",.02)
 ;;00585-0673-03
 ;;9002226.02101,"352,00585-0675-01 ",.01)
 ;;00585-0675-01
 ;;9002226.02101,"352,00585-0675-01 ",.02)
 ;;00585-0675-01
 ;;9002226.02101,"352,00585-0675-02 ",.01)
 ;;00585-0675-02
 ;;9002226.02101,"352,00585-0675-02 ",.02)
 ;;00585-0675-02
 ;;9002226.02101,"352,00585-0685-02 ",.01)
 ;;00585-0685-02
 ;;9002226.02101,"352,00585-0685-02 ",.02)
 ;;00585-0685-02
 ;;9002226.02101,"352,00597-0013-14 ",.01)
 ;;00597-0013-14
 ;;9002226.02101,"352,00597-0013-14 ",.02)
 ;;00597-0013-14
 ;;9002226.02101,"352,00597-0069-62 ",.01)
 ;;00597-0069-62
 ;;9002226.02101,"352,00597-0069-62 ",.02)
 ;;00597-0069-62
 ;;9002226.02101,"352,00597-0070-17 ",.01)
 ;;00597-0070-17
 ;;9002226.02101,"352,00597-0070-17 ",.02)
 ;;00597-0070-17
 ;;9002226.02101,"352,00597-0070-18 ",.01)
 ;;00597-0070-18
 ;;9002226.02101,"352,00597-0070-18 ",.02)
 ;;00597-0070-18
