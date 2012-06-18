BGP06D7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"978,00182-2001-37 ",.01)
 ;;00182-2001-37
 ;;9002226.02101,"978,00182-2001-37 ",.02)
 ;;00182-2001-37
 ;;9002226.02101,"978,00182-2091-16 ",.01)
 ;;00182-2091-16
 ;;9002226.02101,"978,00182-2091-16 ",.02)
 ;;00182-2091-16
 ;;9002226.02101,"978,00182-2092-01 ",.01)
 ;;00182-2092-01
 ;;9002226.02101,"978,00182-2092-01 ",.02)
 ;;00182-2092-01
 ;;9002226.02101,"978,00182-2092-16 ",.01)
 ;;00182-2092-16
 ;;9002226.02101,"978,00182-2092-16 ",.02)
 ;;00182-2092-16
 ;;9002226.02101,"978,00182-2095-37 ",.01)
 ;;00182-2095-37
 ;;9002226.02101,"978,00182-2095-37 ",.02)
 ;;00182-2095-37
 ;;9002226.02101,"978,00182-2115-19 ",.01)
 ;;00182-2115-19
 ;;9002226.02101,"978,00182-2115-19 ",.02)
 ;;00182-2115-19
 ;;9002226.02101,"978,00182-6061-37 ",.01)
 ;;00182-6061-37
 ;;9002226.02101,"978,00182-6061-37 ",.02)
 ;;00182-6061-37
 ;;9002226.02101,"978,00182-6168-37 ",.01)
 ;;00182-6168-37
 ;;9002226.02101,"978,00182-6168-37 ",.02)
 ;;00182-6168-37
 ;;9002226.02101,"978,00182-6168-40 ",.01)
 ;;00182-6168-40
 ;;9002226.02101,"978,00182-6168-40 ",.02)
 ;;00182-6168-40
 ;;9002226.02101,"978,00182-8222-00 ",.01)
 ;;00182-8222-00
 ;;9002226.02101,"978,00182-8222-00 ",.02)
 ;;00182-8222-00
 ;;9002226.02101,"978,00182-8222-89 ",.01)
 ;;00182-8222-89
 ;;9002226.02101,"978,00182-8222-89 ",.02)
 ;;00182-8222-89
 ;;9002226.02101,"978,00185-0613-01 ",.01)
 ;;00185-0613-01
 ;;9002226.02101,"978,00185-0613-01 ",.02)
 ;;00185-0613-01
 ;;9002226.02101,"978,00185-0613-05 ",.01)
 ;;00185-0613-05
 ;;9002226.02101,"978,00185-0613-05 ",.02)
 ;;00185-0613-05
 ;;9002226.02101,"978,00185-0615-01 ",.01)
 ;;00185-0615-01
 ;;9002226.02101,"978,00185-0615-01 ",.02)
 ;;00185-0615-01
 ;;9002226.02101,"978,00185-0615-05 ",.01)
 ;;00185-0615-05
 ;;9002226.02101,"978,00185-0615-05 ",.02)
 ;;00185-0615-05
 ;;9002226.02101,"978,00185-0648-01 ",.01)
 ;;00185-0648-01
 ;;9002226.02101,"978,00185-0648-01 ",.02)
 ;;00185-0648-01
 ;;9002226.02101,"978,00185-0648-10 ",.01)
 ;;00185-0648-10
 ;;9002226.02101,"978,00185-0648-10 ",.02)
 ;;00185-0648-10
 ;;9002226.02101,"978,00185-0649-01 ",.01)
 ;;00185-0649-01
 ;;9002226.02101,"978,00185-0649-01 ",.02)
 ;;00185-0649-01
 ;;9002226.02101,"978,00185-0649-10 ",.01)
 ;;00185-0649-10
 ;;9002226.02101,"978,00185-0649-10 ",.02)
 ;;00185-0649-10
 ;;9002226.02101,"978,00223-0585-01 ",.01)
 ;;00223-0585-01
 ;;9002226.02101,"978,00223-0585-01 ",.02)
 ;;00223-0585-01
 ;;9002226.02101,"978,00223-0586-01 ",.01)
 ;;00223-0586-01
 ;;9002226.02101,"978,00223-0586-01 ",.02)
 ;;00223-0586-01
 ;;9002226.02101,"978,00223-0586-02 ",.01)
 ;;00223-0586-02
 ;;9002226.02101,"978,00223-0586-02 ",.02)
 ;;00223-0586-02
 ;;9002226.02101,"978,00223-0709-01 ",.01)
 ;;00223-0709-01
 ;;9002226.02101,"978,00223-0709-01 ",.02)
 ;;00223-0709-01
 ;;9002226.02101,"978,00223-0709-02 ",.01)
 ;;00223-0709-02
 ;;9002226.02101,"978,00223-0709-02 ",.02)
 ;;00223-0709-02
 ;;9002226.02101,"978,00223-1006-01 ",.01)
 ;;00223-1006-01
 ;;9002226.02101,"978,00223-1006-01 ",.02)
 ;;00223-1006-01
 ;;9002226.02101,"978,00223-1006-02 ",.01)
 ;;00223-1006-02
 ;;9002226.02101,"978,00223-1006-02 ",.02)
 ;;00223-1006-02
 ;;9002226.02101,"978,00223-1007-01 ",.01)
 ;;00223-1007-01
 ;;9002226.02101,"978,00223-1007-01 ",.02)
 ;;00223-1007-01
 ;;9002226.02101,"978,00223-1007-02 ",.01)
 ;;00223-1007-02
 ;;9002226.02101,"978,00223-1007-02 ",.02)
 ;;00223-1007-02
 ;;9002226.02101,"978,00223-1007-05 ",.01)
 ;;00223-1007-05
 ;;9002226.02101,"978,00223-1007-05 ",.02)
 ;;00223-1007-05
 ;;9002226.02101,"978,00223-1008-01 ",.01)
 ;;00223-1008-01
 ;;9002226.02101,"978,00223-1008-01 ",.02)
 ;;00223-1008-01
 ;;9002226.02101,"978,00223-1008-02 ",.01)
 ;;00223-1008-02
 ;;9002226.02101,"978,00223-1008-02 ",.02)
 ;;00223-1008-02
 ;;9002226.02101,"978,00223-1009-01 ",.01)
 ;;00223-1009-01
 ;;9002226.02101,"978,00223-1009-01 ",.02)
 ;;00223-1009-01
 ;;9002226.02101,"978,00223-1049-01 ",.01)
 ;;00223-1049-01
 ;;9002226.02101,"978,00223-1049-01 ",.02)
 ;;00223-1049-01
 ;;9002226.02101,"978,00223-1049-02 ",.01)
 ;;00223-1049-02
 ;;9002226.02101,"978,00223-1049-02 ",.02)
 ;;00223-1049-02
 ;;9002226.02101,"978,00223-1050-01 ",.01)
 ;;00223-1050-01
 ;;9002226.02101,"978,00223-1050-01 ",.02)
 ;;00223-1050-01
 ;;9002226.02101,"978,00223-1050-02 ",.01)
 ;;00223-1050-02
 ;;9002226.02101,"978,00223-1050-02 ",.02)
 ;;00223-1050-02
 ;;9002226.02101,"978,00223-1051-01 ",.01)
 ;;00223-1051-01
 ;;9002226.02101,"978,00223-1051-01 ",.02)
 ;;00223-1051-01
 ;;9002226.02101,"978,00223-1051-02 ",.01)
 ;;00223-1051-02
 ;;9002226.02101,"978,00223-1051-02 ",.02)
 ;;00223-1051-02
 ;;9002226.02101,"978,00223-1521-01 ",.01)
 ;;00223-1521-01
 ;;9002226.02101,"978,00223-1521-01 ",.02)
 ;;00223-1521-01
 ;;9002226.02101,"978,00223-1521-02 ",.01)
 ;;00223-1521-02
 ;;9002226.02101,"978,00223-1521-02 ",.02)
 ;;00223-1521-02
 ;;9002226.02101,"978,00223-6135-01 ",.01)
 ;;00223-6135-01
 ;;9002226.02101,"978,00223-6135-01 ",.02)
 ;;00223-6135-01
 ;;9002226.02101,"978,00223-6135-02 ",.01)
 ;;00223-6135-02
 ;;9002226.02101,"978,00223-6135-02 ",.02)
 ;;00223-6135-02
 ;;9002226.02101,"978,00223-6251-01 ",.01)
 ;;00223-6251-01
 ;;9002226.02101,"978,00223-6251-01 ",.02)
 ;;00223-6251-01
 ;;9002226.02101,"978,00223-6251-02 ",.01)
 ;;00223-6251-02
 ;;9002226.02101,"978,00223-6251-02 ",.02)
 ;;00223-6251-02
 ;;9002226.02101,"978,00223-6251-03 ",.01)
 ;;00223-6251-03
 ;;9002226.02101,"978,00223-6251-03 ",.02)
 ;;00223-6251-03
 ;;9002226.02101,"978,00223-6343-01 ",.01)
 ;;00223-6343-01
 ;;9002226.02101,"978,00223-6343-01 ",.02)
 ;;00223-6343-01
 ;;9002226.02101,"978,00223-6345-01 ",.01)
 ;;00223-6345-01
 ;;9002226.02101,"978,00223-6345-01 ",.02)
 ;;00223-6345-01
 ;;9002226.02101,"978,00223-6345-02 ",.01)
 ;;00223-6345-02
 ;;9002226.02101,"978,00223-6345-02 ",.02)
 ;;00223-6345-02
 ;;9002226.02101,"978,00223-6345-03 ",.01)
 ;;00223-6345-03
 ;;9002226.02101,"978,00223-6345-03 ",.02)
 ;;00223-6345-03
 ;;9002226.02101,"978,00223-6347-01 ",.01)
 ;;00223-6347-01
 ;;9002226.02101,"978,00223-6347-01 ",.02)
 ;;00223-6347-01
 ;;9002226.02101,"978,00223-6347-02 ",.01)
 ;;00223-6347-02
 ;;9002226.02101,"978,00223-6347-02 ",.02)
 ;;00223-6347-02
 ;;9002226.02101,"978,00223-6489-01 ",.01)
 ;;00223-6489-01
 ;;9002226.02101,"978,00223-6489-01 ",.02)
 ;;00223-6489-01
 ;;9002226.02101,"978,00223-6489-02 ",.01)
 ;;00223-6489-02
 ;;9002226.02101,"978,00223-6489-02 ",.02)
 ;;00223-6489-02
 ;;9002226.02101,"978,00228-2188-16 ",.01)
 ;;00228-2188-16
 ;;9002226.02101,"978,00228-2188-16 ",.02)
 ;;00228-2188-16
 ;;9002226.02101,"978,00228-2191-10 ",.01)
 ;;00228-2191-10
 ;;9002226.02101,"978,00228-2191-10 ",.02)
 ;;00228-2191-10
 ;;9002226.02101,"978,00228-2191-96 ",.01)
 ;;00228-2191-96
 ;;9002226.02101,"978,00228-2191-96 ",.02)
 ;;00228-2191-96
 ;;9002226.02101,"978,00228-2192-10 ",.01)
 ;;00228-2192-10
 ;;9002226.02101,"978,00228-2192-10 ",.02)
 ;;00228-2192-10
 ;;9002226.02101,"978,00228-2192-96 ",.01)
 ;;00228-2192-96
 ;;9002226.02101,"978,00228-2192-96 ",.02)
 ;;00228-2192-96
 ;;9002226.02101,"978,00247-0073-00 ",.01)
 ;;00247-0073-00
 ;;9002226.02101,"978,00247-0073-00 ",.02)
 ;;00247-0073-00
 ;;9002226.02101,"978,00247-0073-01 ",.01)
 ;;00247-0073-01
 ;;9002226.02101,"978,00247-0073-01 ",.02)
 ;;00247-0073-01
 ;;9002226.02101,"978,00247-0073-02 ",.01)
 ;;00247-0073-02
 ;;9002226.02101,"978,00247-0073-02 ",.02)
 ;;00247-0073-02
 ;;9002226.02101,"978,00247-0073-03 ",.01)
 ;;00247-0073-03
 ;;9002226.02101,"978,00247-0073-03 ",.02)
 ;;00247-0073-03
 ;;9002226.02101,"978,00247-0073-04 ",.01)
 ;;00247-0073-04
 ;;9002226.02101,"978,00247-0073-04 ",.02)
 ;;00247-0073-04
 ;;9002226.02101,"978,00247-0073-05 ",.01)
 ;;00247-0073-05
 ;;9002226.02101,"978,00247-0073-05 ",.02)
 ;;00247-0073-05
 ;;9002226.02101,"978,00247-0073-06 ",.01)
 ;;00247-0073-06
 ;;9002226.02101,"978,00247-0073-06 ",.02)
 ;;00247-0073-06
 ;;9002226.02101,"978,00247-0073-07 ",.01)
 ;;00247-0073-07
 ;;9002226.02101,"978,00247-0073-07 ",.02)
 ;;00247-0073-07
 ;;9002226.02101,"978,00247-0073-08 ",.01)
 ;;00247-0073-08
 ;;9002226.02101,"978,00247-0073-08 ",.02)
 ;;00247-0073-08
 ;;9002226.02101,"978,00247-0073-10 ",.01)
 ;;00247-0073-10
 ;;9002226.02101,"978,00247-0073-10 ",.02)
 ;;00247-0073-10
 ;;9002226.02101,"978,00247-0073-12 ",.01)
 ;;00247-0073-12
 ;;9002226.02101,"978,00247-0073-12 ",.02)
 ;;00247-0073-12
 ;;9002226.02101,"978,00247-0073-14 ",.01)
 ;;00247-0073-14
 ;;9002226.02101,"978,00247-0073-14 ",.02)
 ;;00247-0073-14
 ;;9002226.02101,"978,00247-0073-15 ",.01)
 ;;00247-0073-15
 ;;9002226.02101,"978,00247-0073-15 ",.02)
 ;;00247-0073-15
 ;;9002226.02101,"978,00247-0073-16 ",.01)
 ;;00247-0073-16
 ;;9002226.02101,"978,00247-0073-16 ",.02)
 ;;00247-0073-16
 ;;9002226.02101,"978,00247-0073-18 ",.01)
 ;;00247-0073-18
 ;;9002226.02101,"978,00247-0073-18 ",.02)
 ;;00247-0073-18
 ;;9002226.02101,"978,00247-0073-20 ",.01)
 ;;00247-0073-20
 ;;9002226.02101,"978,00247-0073-20 ",.02)
 ;;00247-0073-20
 ;;9002226.02101,"978,00247-0073-21 ",.01)
 ;;00247-0073-21
 ;;9002226.02101,"978,00247-0073-21 ",.02)
 ;;00247-0073-21
 ;;9002226.02101,"978,00247-0073-24 ",.01)
 ;;00247-0073-24
 ;;9002226.02101,"978,00247-0073-24 ",.02)
 ;;00247-0073-24
 ;;9002226.02101,"978,00247-0073-25 ",.01)
 ;;00247-0073-25
 ;;9002226.02101,"978,00247-0073-25 ",.02)
 ;;00247-0073-25
 ;;9002226.02101,"978,00247-0073-30 ",.01)
 ;;00247-0073-30
 ;;9002226.02101,"978,00247-0073-30 ",.02)
 ;;00247-0073-30
 ;;9002226.02101,"978,00247-0073-40 ",.01)
 ;;00247-0073-40
 ;;9002226.02101,"978,00247-0073-40 ",.02)
 ;;00247-0073-40
 ;;9002226.02101,"978,00247-0073-60 ",.01)
 ;;00247-0073-60
 ;;9002226.02101,"978,00247-0073-60 ",.02)
 ;;00247-0073-60
 ;;9002226.02101,"978,00247-0073-90 ",.01)
 ;;00247-0073-90
 ;;9002226.02101,"978,00247-0073-90 ",.02)
 ;;00247-0073-90
 ;;9002226.02101,"978,00247-0073-99 ",.01)
 ;;00247-0073-99
 ;;9002226.02101,"978,00247-0073-99 ",.02)
 ;;00247-0073-99
 ;;9002226.02101,"978,00247-0081-04 ",.01)
 ;;00247-0081-04
 ;;9002226.02101,"978,00247-0081-04 ",.02)
 ;;00247-0081-04
 ;;9002226.02101,"978,00247-0081-10 ",.01)
 ;;00247-0081-10
 ;;9002226.02101,"978,00247-0081-10 ",.02)
 ;;00247-0081-10
 ;;9002226.02101,"978,00247-0081-20 ",.01)
 ;;00247-0081-20
 ;;9002226.02101,"978,00247-0081-20 ",.02)
 ;;00247-0081-20
 ;;9002226.02101,"978,00247-0081-30 ",.01)
 ;;00247-0081-30
 ;;9002226.02101,"978,00247-0081-30 ",.02)
 ;;00247-0081-30
 ;;9002226.02101,"978,00247-0081-38 ",.01)
 ;;00247-0081-38
 ;;9002226.02101,"978,00247-0081-38 ",.02)
 ;;00247-0081-38
 ;;9002226.02101,"978,00247-0081-52 ",.01)
 ;;00247-0081-52
 ;;9002226.02101,"978,00247-0081-52 ",.02)
 ;;00247-0081-52
 ;;9002226.02101,"978,00247-0081-59 ",.01)
 ;;00247-0081-59
 ;;9002226.02101,"978,00247-0081-59 ",.02)
 ;;00247-0081-59
 ;;9002226.02101,"978,00247-0081-60 ",.01)
 ;;00247-0081-60
 ;;9002226.02101,"978,00247-0081-60 ",.02)
 ;;00247-0081-60
 ;;9002226.02101,"978,00247-0081-77 ",.01)
 ;;00247-0081-77
 ;;9002226.02101,"978,00247-0081-77 ",.02)
 ;;00247-0081-77
 ;;9002226.02101,"978,00247-0081-89 ",.01)
 ;;00247-0081-89
 ;;9002226.02101,"978,00247-0081-89 ",.02)
 ;;00247-0081-89
 ;;9002226.02101,"978,00247-0105-00 ",.01)
 ;;00247-0105-00
 ;;9002226.02101,"978,00247-0105-00 ",.02)
 ;;00247-0105-00
 ;;9002226.02101,"978,00247-0105-01 ",.01)
 ;;00247-0105-01
 ;;9002226.02101,"978,00247-0105-01 ",.02)
 ;;00247-0105-01
 ;;9002226.02101,"978,00247-0105-02 ",.01)
 ;;00247-0105-02
 ;;9002226.02101,"978,00247-0105-02 ",.02)
 ;;00247-0105-02
 ;;9002226.02101,"978,00247-0105-03 ",.01)
 ;;00247-0105-03
 ;;9002226.02101,"978,00247-0105-03 ",.02)
 ;;00247-0105-03
 ;;9002226.02101,"978,00247-0105-04 ",.01)
 ;;00247-0105-04
 ;;9002226.02101,"978,00247-0105-04 ",.02)
 ;;00247-0105-04
 ;;9002226.02101,"978,00247-0105-05 ",.01)
 ;;00247-0105-05
 ;;9002226.02101,"978,00247-0105-05 ",.02)
 ;;00247-0105-05
 ;;9002226.02101,"978,00247-0105-06 ",.01)
 ;;00247-0105-06
 ;;9002226.02101,"978,00247-0105-06 ",.02)
 ;;00247-0105-06
 ;;9002226.02101,"978,00247-0105-07 ",.01)
 ;;00247-0105-07
 ;;9002226.02101,"978,00247-0105-07 ",.02)
 ;;00247-0105-07
 ;;9002226.02101,"978,00247-0105-08 ",.01)
 ;;00247-0105-08
 ;;9002226.02101,"978,00247-0105-08 ",.02)
 ;;00247-0105-08
 ;;9002226.02101,"978,00247-0105-10 ",.01)
 ;;00247-0105-10
 ;;9002226.02101,"978,00247-0105-10 ",.02)
 ;;00247-0105-10
 ;;9002226.02101,"978,00247-0105-12 ",.01)
 ;;00247-0105-12
 ;;9002226.02101,"978,00247-0105-12 ",.02)
 ;;00247-0105-12
 ;;9002226.02101,"978,00247-0105-14 ",.01)
 ;;00247-0105-14
 ;;9002226.02101,"978,00247-0105-14 ",.02)
 ;;00247-0105-14
 ;;9002226.02101,"978,00247-0105-15 ",.01)
 ;;00247-0105-15
 ;;9002226.02101,"978,00247-0105-15 ",.02)
 ;;00247-0105-15
 ;;9002226.02101,"978,00247-0105-20 ",.01)
 ;;00247-0105-20
 ;;9002226.02101,"978,00247-0105-20 ",.02)
 ;;00247-0105-20
 ;;9002226.02101,"978,00247-0105-21 ",.01)
 ;;00247-0105-21
 ;;9002226.02101,"978,00247-0105-21 ",.02)
 ;;00247-0105-21
 ;;9002226.02101,"978,00247-0105-24 ",.01)
 ;;00247-0105-24
 ;;9002226.02101,"978,00247-0105-24 ",.02)
 ;;00247-0105-24
 ;;9002226.02101,"978,00247-0105-30 ",.01)
 ;;00247-0105-30
 ;;9002226.02101,"978,00247-0105-30 ",.02)
 ;;00247-0105-30
 ;;9002226.02101,"978,00247-0105-35 ",.01)
 ;;00247-0105-35
 ;;9002226.02101,"978,00247-0105-35 ",.02)
 ;;00247-0105-35
 ;;9002226.02101,"978,00247-0120-00 ",.01)
 ;;00247-0120-00
 ;;9002226.02101,"978,00247-0120-00 ",.02)
 ;;00247-0120-00
