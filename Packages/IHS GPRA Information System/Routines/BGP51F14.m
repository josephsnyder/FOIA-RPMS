BGP51F14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"618,55045-1124-08 ",.01)
 ;;55045-1124-08
 ;;9002226.02101,"618,55045-1124-08 ",.02)
 ;;55045-1124-08
 ;;9002226.02101,"618,55045-1250-02 ",.01)
 ;;55045-1250-02
 ;;9002226.02101,"618,55045-1250-02 ",.02)
 ;;55045-1250-02
 ;;9002226.02101,"618,55045-1266-08 ",.01)
 ;;55045-1266-08
 ;;9002226.02101,"618,55045-1266-08 ",.02)
 ;;55045-1266-08
 ;;9002226.02101,"618,55045-1417-02 ",.01)
 ;;55045-1417-02
 ;;9002226.02101,"618,55045-1417-02 ",.02)
 ;;55045-1417-02
 ;;9002226.02101,"618,55045-1446-05 ",.01)
 ;;55045-1446-05
 ;;9002226.02101,"618,55045-1446-05 ",.02)
 ;;55045-1446-05
 ;;9002226.02101,"618,55045-1446-07 ",.01)
 ;;55045-1446-07
 ;;9002226.02101,"618,55045-1446-07 ",.02)
 ;;55045-1446-07
 ;;9002226.02101,"618,55045-1446-08 ",.01)
 ;;55045-1446-08
 ;;9002226.02101,"618,55045-1446-08 ",.02)
 ;;55045-1446-08
 ;;9002226.02101,"618,55045-1446-09 ",.01)
 ;;55045-1446-09
 ;;9002226.02101,"618,55045-1446-09 ",.02)
 ;;55045-1446-09
 ;;9002226.02101,"618,55045-1596-00 ",.01)
 ;;55045-1596-00
 ;;9002226.02101,"618,55045-1596-00 ",.02)
 ;;55045-1596-00
 ;;9002226.02101,"618,55045-1596-01 ",.01)
 ;;55045-1596-01
 ;;9002226.02101,"618,55045-1596-01 ",.02)
 ;;55045-1596-01
 ;;9002226.02101,"618,55045-1596-02 ",.01)
 ;;55045-1596-02
 ;;9002226.02101,"618,55045-1596-02 ",.02)
 ;;55045-1596-02
 ;;9002226.02101,"618,55045-1596-03 ",.01)
 ;;55045-1596-03
 ;;9002226.02101,"618,55045-1596-03 ",.02)
 ;;55045-1596-03
 ;;9002226.02101,"618,55045-1596-05 ",.01)
 ;;55045-1596-05
 ;;9002226.02101,"618,55045-1596-05 ",.02)
 ;;55045-1596-05
 ;;9002226.02101,"618,55045-1596-06 ",.01)
 ;;55045-1596-06
 ;;9002226.02101,"618,55045-1596-06 ",.02)
 ;;55045-1596-06
 ;;9002226.02101,"618,55045-1596-08 ",.01)
 ;;55045-1596-08
 ;;9002226.02101,"618,55045-1596-08 ",.02)
 ;;55045-1596-08
 ;;9002226.02101,"618,55045-1596-09 ",.01)
 ;;55045-1596-09
 ;;9002226.02101,"618,55045-1596-09 ",.02)
 ;;55045-1596-09
 ;;9002226.02101,"618,55045-1643-09 ",.01)
 ;;55045-1643-09
 ;;9002226.02101,"618,55045-1643-09 ",.02)
 ;;55045-1643-09
 ;;9002226.02101,"618,55045-1661-08 ",.01)
 ;;55045-1661-08
 ;;9002226.02101,"618,55045-1661-08 ",.02)
 ;;55045-1661-08
 ;;9002226.02101,"618,55045-1687-02 ",.01)
 ;;55045-1687-02
 ;;9002226.02101,"618,55045-1687-02 ",.02)
 ;;55045-1687-02
 ;;9002226.02101,"618,55045-1699-02 ",.01)
 ;;55045-1699-02
 ;;9002226.02101,"618,55045-1699-02 ",.02)
 ;;55045-1699-02
 ;;9002226.02101,"618,55045-1805-07 ",.01)
 ;;55045-1805-07
 ;;9002226.02101,"618,55045-1805-07 ",.02)
 ;;55045-1805-07
 ;;9002226.02101,"618,55045-1805-08 ",.01)
 ;;55045-1805-08
 ;;9002226.02101,"618,55045-1805-08 ",.02)
 ;;55045-1805-08
 ;;9002226.02101,"618,55045-2195-05 ",.01)
 ;;55045-2195-05
 ;;9002226.02101,"618,55045-2195-05 ",.02)
 ;;55045-2195-05
 ;;9002226.02101,"618,55045-2195-07 ",.01)
 ;;55045-2195-07
 ;;9002226.02101,"618,55045-2195-07 ",.02)
 ;;55045-2195-07
 ;;9002226.02101,"618,55045-2195-08 ",.01)
 ;;55045-2195-08
 ;;9002226.02101,"618,55045-2195-08 ",.02)
 ;;55045-2195-08
 ;;9002226.02101,"618,55045-3011-02 ",.01)
 ;;55045-3011-02
 ;;9002226.02101,"618,55045-3011-02 ",.02)
 ;;55045-3011-02
 ;;9002226.02101,"618,55045-3011-03 ",.01)
 ;;55045-3011-03
 ;;9002226.02101,"618,55045-3011-03 ",.02)
 ;;55045-3011-03
 ;;9002226.02101,"618,55045-3514-02 ",.01)
 ;;55045-3514-02
 ;;9002226.02101,"618,55045-3514-02 ",.02)
 ;;55045-3514-02
 ;;9002226.02101,"618,55045-3591-01 ",.01)
 ;;55045-3591-01
 ;;9002226.02101,"618,55045-3591-01 ",.02)
 ;;55045-3591-01
 ;;9002226.02101,"618,55048-0045-60 ",.01)
 ;;55048-0045-60
 ;;9002226.02101,"618,55048-0045-60 ",.02)
 ;;55048-0045-60
 ;;9002226.02101,"618,55048-0355-90 ",.01)
 ;;55048-0355-90
 ;;9002226.02101,"618,55048-0355-90 ",.02)
 ;;55048-0355-90
 ;;9002226.02101,"618,55048-0367-15 ",.01)
 ;;55048-0367-15
 ;;9002226.02101,"618,55048-0367-15 ",.02)
 ;;55048-0367-15
 ;;9002226.02101,"618,55048-0367-20 ",.01)
 ;;55048-0367-20
 ;;9002226.02101,"618,55048-0367-20 ",.02)
 ;;55048-0367-20
 ;;9002226.02101,"618,55048-0367-30 ",.01)
 ;;55048-0367-30
 ;;9002226.02101,"618,55048-0367-30 ",.02)
 ;;55048-0367-30
 ;;9002226.02101,"618,55048-0367-60 ",.01)
 ;;55048-0367-60
 ;;9002226.02101,"618,55048-0367-60 ",.02)
 ;;55048-0367-60
 ;;9002226.02101,"618,55048-0603-00 ",.01)
 ;;55048-0603-00
 ;;9002226.02101,"618,55048-0603-00 ",.02)
 ;;55048-0603-00
 ;;9002226.02101,"618,55048-0603-02 ",.01)
 ;;55048-0603-02
 ;;9002226.02101,"618,55048-0603-02 ",.02)
 ;;55048-0603-02
 ;;9002226.02101,"618,55048-0603-06 ",.01)
 ;;55048-0603-06
 ;;9002226.02101,"618,55048-0603-06 ",.02)
 ;;55048-0603-06
 ;;9002226.02101,"618,55048-0603-12 ",.01)
 ;;55048-0603-12
 ;;9002226.02101,"618,55048-0603-12 ",.02)
 ;;55048-0603-12
 ;;9002226.02101,"618,55048-0603-15 ",.01)
 ;;55048-0603-15
 ;;9002226.02101,"618,55048-0603-15 ",.02)
 ;;55048-0603-15
 ;;9002226.02101,"618,55048-0603-20 ",.01)
 ;;55048-0603-20
 ;;9002226.02101,"618,55048-0603-20 ",.02)
 ;;55048-0603-20
 ;;9002226.02101,"618,55048-0603-30 ",.01)
 ;;55048-0603-30
 ;;9002226.02101,"618,55048-0603-30 ",.02)
 ;;55048-0603-30
 ;;9002226.02101,"618,55048-0603-40 ",.01)
 ;;55048-0603-40
 ;;9002226.02101,"618,55048-0603-40 ",.02)
 ;;55048-0603-40
 ;;9002226.02101,"618,55048-0603-60 ",.01)
 ;;55048-0603-60
 ;;9002226.02101,"618,55048-0603-60 ",.02)
 ;;55048-0603-60
 ;;9002226.02101,"618,55048-0603-71 ",.01)
 ;;55048-0603-71
 ;;9002226.02101,"618,55048-0603-71 ",.02)
 ;;55048-0603-71
 ;;9002226.02101,"618,55048-0603-90 ",.01)
 ;;55048-0603-90
 ;;9002226.02101,"618,55048-0603-90 ",.02)
 ;;55048-0603-90
 ;;9002226.02101,"618,55048-0604-02 ",.01)
 ;;55048-0604-02
 ;;9002226.02101,"618,55048-0604-02 ",.02)
 ;;55048-0604-02
 ;;9002226.02101,"618,55048-0604-30 ",.01)
 ;;55048-0604-30
 ;;9002226.02101,"618,55048-0604-30 ",.02)
 ;;55048-0604-30
 ;;9002226.02101,"618,55048-0609-30 ",.01)
 ;;55048-0609-30
 ;;9002226.02101,"618,55048-0609-30 ",.02)
 ;;55048-0609-30
 ;;9002226.02101,"618,55048-0609-60 ",.01)
 ;;55048-0609-60
 ;;9002226.02101,"618,55048-0609-60 ",.02)
 ;;55048-0609-60
 ;;9002226.02101,"618,55289-0100-01 ",.01)
 ;;55289-0100-01
 ;;9002226.02101,"618,55289-0100-01 ",.02)
 ;;55289-0100-01
 ;;9002226.02101,"618,55289-0100-10 ",.01)
 ;;55289-0100-10
 ;;9002226.02101,"618,55289-0100-10 ",.02)
 ;;55289-0100-10
 ;;9002226.02101,"618,55289-0100-15 ",.01)
 ;;55289-0100-15
 ;;9002226.02101,"618,55289-0100-15 ",.02)
 ;;55289-0100-15
 ;;9002226.02101,"618,55289-0100-20 ",.01)
 ;;55289-0100-20
 ;;9002226.02101,"618,55289-0100-20 ",.02)
 ;;55289-0100-20
 ;;9002226.02101,"618,55289-0100-30 ",.01)
 ;;55289-0100-30
 ;;9002226.02101,"618,55289-0100-30 ",.02)
 ;;55289-0100-30
 ;;9002226.02101,"618,55289-0100-40 ",.01)
 ;;55289-0100-40
 ;;9002226.02101,"618,55289-0100-40 ",.02)
 ;;55289-0100-40
 ;;9002226.02101,"618,55289-0138-12 ",.01)
 ;;55289-0138-12
 ;;9002226.02101,"618,55289-0138-12 ",.02)
 ;;55289-0138-12
 ;;9002226.02101,"618,55289-0138-17 ",.01)
 ;;55289-0138-17
 ;;9002226.02101,"618,55289-0138-17 ",.02)
 ;;55289-0138-17
 ;;9002226.02101,"618,55289-0138-20 ",.01)
 ;;55289-0138-20
 ;;9002226.02101,"618,55289-0138-20 ",.02)
 ;;55289-0138-20
 ;;9002226.02101,"618,55289-0138-25 ",.01)
 ;;55289-0138-25
 ;;9002226.02101,"618,55289-0138-25 ",.02)
 ;;55289-0138-25
 ;;9002226.02101,"618,55289-0138-30 ",.01)
 ;;55289-0138-30
 ;;9002226.02101,"618,55289-0138-30 ",.02)
 ;;55289-0138-30
 ;;9002226.02101,"618,55289-0139-06 ",.01)
 ;;55289-0139-06
 ;;9002226.02101,"618,55289-0139-06 ",.02)
 ;;55289-0139-06
 ;;9002226.02101,"618,55289-0139-10 ",.01)
 ;;55289-0139-10
 ;;9002226.02101,"618,55289-0139-10 ",.02)
 ;;55289-0139-10
 ;;9002226.02101,"618,55289-0139-12 ",.01)
 ;;55289-0139-12
 ;;9002226.02101,"618,55289-0139-12 ",.02)
 ;;55289-0139-12
 ;;9002226.02101,"618,55289-0139-20 ",.01)
 ;;55289-0139-20
 ;;9002226.02101,"618,55289-0139-20 ",.02)
 ;;55289-0139-20
 ;;9002226.02101,"618,55289-0139-30 ",.01)
 ;;55289-0139-30
 ;;9002226.02101,"618,55289-0139-30 ",.02)
 ;;55289-0139-30
 ;;9002226.02101,"618,55289-0139-40 ",.01)
 ;;55289-0139-40
 ;;9002226.02101,"618,55289-0139-40 ",.02)
 ;;55289-0139-40
 ;;9002226.02101,"618,55289-0139-60 ",.01)
 ;;55289-0139-60
 ;;9002226.02101,"618,55289-0139-60 ",.02)
 ;;55289-0139-60
 ;;9002226.02101,"618,55289-0226-10 ",.01)
 ;;55289-0226-10
 ;;9002226.02101,"618,55289-0226-10 ",.02)
 ;;55289-0226-10
 ;;9002226.02101,"618,55289-0226-15 ",.01)
 ;;55289-0226-15
 ;;9002226.02101,"618,55289-0226-15 ",.02)
 ;;55289-0226-15
 ;;9002226.02101,"618,55289-0226-30 ",.01)
 ;;55289-0226-30
 ;;9002226.02101,"618,55289-0226-30 ",.02)
 ;;55289-0226-30
 ;;9002226.02101,"618,55289-0354-10 ",.01)
 ;;55289-0354-10
 ;;9002226.02101,"618,55289-0354-10 ",.02)
 ;;55289-0354-10
 ;;9002226.02101,"618,55289-0464-02 ",.01)
 ;;55289-0464-02
 ;;9002226.02101,"618,55289-0464-02 ",.02)
 ;;55289-0464-02
 ;;9002226.02101,"618,55289-0464-05 ",.01)
 ;;55289-0464-05
 ;;9002226.02101,"618,55289-0464-05 ",.02)
 ;;55289-0464-05
 ;;9002226.02101,"618,55289-0464-10 ",.01)
 ;;55289-0464-10
 ;;9002226.02101,"618,55289-0464-10 ",.02)
 ;;55289-0464-10
 ;;9002226.02101,"618,55289-0464-12 ",.01)
 ;;55289-0464-12
 ;;9002226.02101,"618,55289-0464-12 ",.02)
 ;;55289-0464-12
 ;;9002226.02101,"618,55289-0464-15 ",.01)
 ;;55289-0464-15
 ;;9002226.02101,"618,55289-0464-15 ",.02)
 ;;55289-0464-15
 ;;9002226.02101,"618,55289-0464-20 ",.01)
 ;;55289-0464-20
 ;;9002226.02101,"618,55289-0464-20 ",.02)
 ;;55289-0464-20
 ;;9002226.02101,"618,55289-0464-25 ",.01)
 ;;55289-0464-25
 ;;9002226.02101,"618,55289-0464-25 ",.02)
 ;;55289-0464-25
 ;;9002226.02101,"618,55289-0464-30 ",.01)
 ;;55289-0464-30
 ;;9002226.02101,"618,55289-0464-30 ",.02)
 ;;55289-0464-30
 ;;9002226.02101,"618,55289-0464-60 ",.01)
 ;;55289-0464-60
 ;;9002226.02101,"618,55289-0464-60 ",.02)
 ;;55289-0464-60
 ;;9002226.02101,"618,55289-0464-79 ",.01)
 ;;55289-0464-79
 ;;9002226.02101,"618,55289-0464-79 ",.02)
 ;;55289-0464-79
 ;;9002226.02101,"618,55289-0531-04 ",.01)
 ;;55289-0531-04
 ;;9002226.02101,"618,55289-0531-04 ",.02)
 ;;55289-0531-04
 ;;9002226.02101,"618,55289-0762-30 ",.01)
 ;;55289-0762-30
 ;;9002226.02101,"618,55289-0762-30 ",.02)
 ;;55289-0762-30
 ;;9002226.02101,"618,55289-0912-10 ",.01)
 ;;55289-0912-10
 ;;9002226.02101,"618,55289-0912-10 ",.02)
 ;;55289-0912-10
 ;;9002226.02101,"618,55289-0912-30 ",.01)
 ;;55289-0912-30
 ;;9002226.02101,"618,55289-0912-30 ",.02)
 ;;55289-0912-30
 ;;9002226.02101,"618,55289-0912-60 ",.01)
 ;;55289-0912-60
 ;;9002226.02101,"618,55289-0912-60 ",.02)
 ;;55289-0912-60
 ;;9002226.02101,"618,55289-0928-02 ",.01)
 ;;55289-0928-02
 ;;9002226.02101,"618,55289-0928-02 ",.02)
 ;;55289-0928-02
 ;;9002226.02101,"618,55289-0928-04 ",.01)
 ;;55289-0928-04
 ;;9002226.02101,"618,55289-0928-04 ",.02)
 ;;55289-0928-04
 ;;9002226.02101,"618,55289-0928-06 ",.01)
 ;;55289-0928-06
 ;;9002226.02101,"618,55289-0928-06 ",.02)
 ;;55289-0928-06
 ;;9002226.02101,"618,55289-0928-79 ",.01)
 ;;55289-0928-79
 ;;9002226.02101,"618,55289-0928-79 ",.02)
 ;;55289-0928-79
 ;;9002226.02101,"618,55289-0940-02 ",.01)
 ;;55289-0940-02
 ;;9002226.02101,"618,55289-0940-02 ",.02)
 ;;55289-0940-02
 ;;9002226.02101,"618,55289-0940-06 ",.01)
 ;;55289-0940-06
 ;;9002226.02101,"618,55289-0940-06 ",.02)
 ;;55289-0940-06
 ;;9002226.02101,"618,55289-0948-02 ",.01)
 ;;55289-0948-02
 ;;9002226.02101,"618,55289-0948-02 ",.02)
 ;;55289-0948-02
 ;;9002226.02101,"618,55494-0100-10 ",.01)
 ;;55494-0100-10
 ;;9002226.02101,"618,55494-0100-10 ",.02)
 ;;55494-0100-10
 ;;9002226.02101,"618,55700-0033-30 ",.01)
 ;;55700-0033-30
 ;;9002226.02101,"618,55700-0033-30 ",.02)
 ;;55700-0033-30
 ;;9002226.02101,"618,55700-0042-15 ",.01)
 ;;55700-0042-15
 ;;9002226.02101,"618,55700-0042-15 ",.02)
 ;;55700-0042-15
 ;;9002226.02101,"618,55700-0042-20 ",.01)
 ;;55700-0042-20
 ;;9002226.02101,"618,55700-0042-20 ",.02)
 ;;55700-0042-20
 ;;9002226.02101,"618,55700-0042-30 ",.01)
 ;;55700-0042-30
 ;;9002226.02101,"618,55700-0042-30 ",.02)
 ;;55700-0042-30
 ;;9002226.02101,"618,55700-0042-60 ",.01)
 ;;55700-0042-60
 ;;9002226.02101,"618,55700-0042-60 ",.02)
 ;;55700-0042-60
 ;;9002226.02101,"618,57664-0107-88 ",.01)
 ;;57664-0107-88
 ;;9002226.02101,"618,57664-0107-88 ",.02)
 ;;57664-0107-88
 ;;9002226.02101,"618,57664-0108-18 ",.01)
 ;;57664-0108-18
 ;;9002226.02101,"618,57664-0108-18 ",.02)
 ;;57664-0108-18
 ;;9002226.02101,"618,57664-0108-88 ",.01)
 ;;57664-0108-88
 ;;9002226.02101,"618,57664-0108-88 ",.02)
 ;;57664-0108-88
 ;;9002226.02101,"618,57664-0109-88 ",.01)
 ;;57664-0109-88
 ;;9002226.02101,"618,57664-0109-88 ",.02)
 ;;57664-0109-88
 ;;9002226.02101,"618,57664-0146-31 ",.01)
 ;;57664-0146-31
 ;;9002226.02101,"618,57664-0146-31 ",.02)
 ;;57664-0146-31
 ;;9002226.02101,"618,57664-0146-34 ",.01)
 ;;57664-0146-34
 ;;9002226.02101,"618,57664-0146-34 ",.02)
 ;;57664-0146-34
 ;;9002226.02101,"618,57664-0185-31 ",.01)
 ;;57664-0185-31
 ;;9002226.02101,"618,57664-0185-31 ",.02)
 ;;57664-0185-31
 ;;9002226.02101,"618,57664-0185-34 ",.01)
 ;;57664-0185-34
 ;;9002226.02101,"618,57664-0185-34 ",.02)
 ;;57664-0185-34
 ;;9002226.02101,"618,58016-0018-00 ",.01)
 ;;58016-0018-00
 ;;9002226.02101,"618,58016-0018-00 ",.02)
 ;;58016-0018-00
 ;;9002226.02101,"618,58016-0018-30 ",.01)
 ;;58016-0018-30
 ;;9002226.02101,"618,58016-0018-30 ",.02)
 ;;58016-0018-30
 ;;9002226.02101,"618,58016-0018-60 ",.01)
 ;;58016-0018-60
 ;;9002226.02101,"618,58016-0018-60 ",.02)
 ;;58016-0018-60
