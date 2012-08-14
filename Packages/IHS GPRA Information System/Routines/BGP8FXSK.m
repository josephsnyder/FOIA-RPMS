BGP8FXSK ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"629,55045-1386-00 ",.01)
 ;;55045-1386-00
 ;;9002226.02101,"629,55045-1386-00 ",.02)
 ;;55045-1386-00
 ;;9002226.02101,"629,55045-1386-02 ",.01)
 ;;55045-1386-02
 ;;9002226.02101,"629,55045-1386-02 ",.02)
 ;;55045-1386-02
 ;;9002226.02101,"629,55045-1386-04 ",.01)
 ;;55045-1386-04
 ;;9002226.02101,"629,55045-1386-04 ",.02)
 ;;55045-1386-04
 ;;9002226.02101,"629,55045-1386-07 ",.01)
 ;;55045-1386-07
 ;;9002226.02101,"629,55045-1386-07 ",.02)
 ;;55045-1386-07
 ;;9002226.02101,"629,55045-1386-08 ",.01)
 ;;55045-1386-08
 ;;9002226.02101,"629,55045-1386-08 ",.02)
 ;;55045-1386-08
 ;;9002226.02101,"629,55045-1386-09 ",.01)
 ;;55045-1386-09
 ;;9002226.02101,"629,55045-1386-09 ",.02)
 ;;55045-1386-09
 ;;9002226.02101,"629,55045-1433-00 ",.01)
 ;;55045-1433-00
 ;;9002226.02101,"629,55045-1433-00 ",.02)
 ;;55045-1433-00
 ;;9002226.02101,"629,55045-1433-03 ",.01)
 ;;55045-1433-03
 ;;9002226.02101,"629,55045-1433-03 ",.02)
 ;;55045-1433-03
 ;;9002226.02101,"629,55045-1433-04 ",.01)
 ;;55045-1433-04
 ;;9002226.02101,"629,55045-1433-04 ",.02)
 ;;55045-1433-04
 ;;9002226.02101,"629,55045-1433-06 ",.01)
 ;;55045-1433-06
 ;;9002226.02101,"629,55045-1433-06 ",.02)
 ;;55045-1433-06
 ;;9002226.02101,"629,55045-1433-07 ",.01)
 ;;55045-1433-07
 ;;9002226.02101,"629,55045-1433-07 ",.02)
 ;;55045-1433-07
 ;;9002226.02101,"629,55045-1433-08 ",.01)
 ;;55045-1433-08
 ;;9002226.02101,"629,55045-1433-08 ",.02)
 ;;55045-1433-08
 ;;9002226.02101,"629,55045-1433-09 ",.01)
 ;;55045-1433-09
 ;;9002226.02101,"629,55045-1433-09 ",.02)
 ;;55045-1433-09
 ;;9002226.02101,"629,55045-1531-01 ",.01)
 ;;55045-1531-01
 ;;9002226.02101,"629,55045-1531-01 ",.02)
 ;;55045-1531-01
 ;;9002226.02101,"629,55045-1531-03 ",.01)
 ;;55045-1531-03
 ;;9002226.02101,"629,55045-1531-03 ",.02)
 ;;55045-1531-03
 ;;9002226.02101,"629,55045-1531-08 ",.01)
 ;;55045-1531-08
 ;;9002226.02101,"629,55045-1531-08 ",.02)
 ;;55045-1531-08
 ;;9002226.02101,"629,55045-1531-09 ",.01)
 ;;55045-1531-09
 ;;9002226.02101,"629,55045-1531-09 ",.02)
 ;;55045-1531-09
 ;;9002226.02101,"629,55045-1566-02 ",.01)
 ;;55045-1566-02
 ;;9002226.02101,"629,55045-1566-02 ",.02)
 ;;55045-1566-02
 ;;9002226.02101,"629,55045-1566-05 ",.01)
 ;;55045-1566-05
 ;;9002226.02101,"629,55045-1566-05 ",.02)
 ;;55045-1566-05
 ;;9002226.02101,"629,55045-1566-07 ",.01)
 ;;55045-1566-07
 ;;9002226.02101,"629,55045-1566-07 ",.02)
 ;;55045-1566-07
 ;;9002226.02101,"629,55045-1566-08 ",.01)
 ;;55045-1566-08
 ;;9002226.02101,"629,55045-1566-08 ",.02)
 ;;55045-1566-08
 ;;9002226.02101,"629,55045-3058-01 ",.01)
 ;;55045-3058-01
 ;;9002226.02101,"629,55045-3058-01 ",.02)
 ;;55045-3058-01
 ;;9002226.02101,"629,55045-3058-06 ",.01)
 ;;55045-3058-06
 ;;9002226.02101,"629,55045-3058-06 ",.02)
 ;;55045-3058-06
 ;;9002226.02101,"629,55045-3058-09 ",.01)
 ;;55045-3058-09
 ;;9002226.02101,"629,55045-3058-09 ",.02)
 ;;55045-3058-09
 ;;9002226.02101,"629,55045-3123-09 ",.01)
 ;;55045-3123-09
 ;;9002226.02101,"629,55045-3123-09 ",.02)
 ;;55045-3123-09
 ;;9002226.02101,"629,55289-0017-20 ",.01)
 ;;55289-0017-20
 ;;9002226.02101,"629,55289-0017-20 ",.02)
 ;;55289-0017-20
 ;;9002226.02101,"629,55289-0017-40 ",.01)
 ;;55289-0017-40
 ;;9002226.02101,"629,55289-0017-40 ",.02)
 ;;55289-0017-40
 ;;9002226.02101,"629,55289-0049-01 ",.01)
 ;;55289-0049-01
 ;;9002226.02101,"629,55289-0049-01 ",.02)
 ;;55289-0049-01
 ;;9002226.02101,"629,55289-0049-10 ",.01)
 ;;55289-0049-10
 ;;9002226.02101,"629,55289-0049-10 ",.02)
 ;;55289-0049-10
 ;;9002226.02101,"629,55289-0049-14 ",.01)
 ;;55289-0049-14
 ;;9002226.02101,"629,55289-0049-14 ",.02)
 ;;55289-0049-14
 ;;9002226.02101,"629,55289-0049-15 ",.01)
 ;;55289-0049-15
 ;;9002226.02101,"629,55289-0049-15 ",.02)
 ;;55289-0049-15
 ;;9002226.02101,"629,55289-0049-20 ",.01)
 ;;55289-0049-20
 ;;9002226.02101,"629,55289-0049-20 ",.02)
 ;;55289-0049-20
 ;;9002226.02101,"629,55289-0049-21 ",.01)
 ;;55289-0049-21
 ;;9002226.02101,"629,55289-0049-21 ",.02)
 ;;55289-0049-21
 ;;9002226.02101,"629,55289-0049-24 ",.01)
 ;;55289-0049-24
 ;;9002226.02101,"629,55289-0049-24 ",.02)
 ;;55289-0049-24
 ;;9002226.02101,"629,55289-0049-30 ",.01)
 ;;55289-0049-30
 ;;9002226.02101,"629,55289-0049-30 ",.02)
 ;;55289-0049-30
 ;;9002226.02101,"629,55289-0049-40 ",.01)
 ;;55289-0049-40
 ;;9002226.02101,"629,55289-0049-40 ",.02)
 ;;55289-0049-40
 ;;9002226.02101,"629,55289-0049-60 ",.01)
 ;;55289-0049-60
 ;;9002226.02101,"629,55289-0049-60 ",.02)
 ;;55289-0049-60
 ;;9002226.02101,"629,55289-0049-90 ",.01)
 ;;55289-0049-90
 ;;9002226.02101,"629,55289-0049-90 ",.02)
 ;;55289-0049-90
 ;;9002226.02101,"629,55289-0115-15 ",.01)
 ;;55289-0115-15
 ;;9002226.02101,"629,55289-0115-15 ",.02)
 ;;55289-0115-15
 ;;9002226.02101,"629,55289-0115-21 ",.01)
 ;;55289-0115-21
 ;;9002226.02101,"629,55289-0115-21 ",.02)
 ;;55289-0115-21
 ;;9002226.02101,"629,55289-0115-30 ",.01)
 ;;55289-0115-30
 ;;9002226.02101,"629,55289-0115-30 ",.02)
 ;;55289-0115-30
 ;;9002226.02101,"629,55289-0128-01 ",.01)
 ;;55289-0128-01
 ;;9002226.02101,"629,55289-0128-01 ",.02)
 ;;55289-0128-01
 ;;9002226.02101,"629,55289-0164-01 ",.01)
 ;;55289-0164-01
 ;;9002226.02101,"629,55289-0164-01 ",.02)
 ;;55289-0164-01
 ;;9002226.02101,"629,55289-0164-10 ",.01)
 ;;55289-0164-10
 ;;9002226.02101,"629,55289-0164-10 ",.02)
 ;;55289-0164-10
 ;;9002226.02101,"629,55289-0164-15 ",.01)
 ;;55289-0164-15
 ;;9002226.02101,"629,55289-0164-15 ",.02)
 ;;55289-0164-15
 ;;9002226.02101,"629,55289-0164-20 ",.01)
 ;;55289-0164-20
 ;;9002226.02101,"629,55289-0164-20 ",.02)
 ;;55289-0164-20
 ;;9002226.02101,"629,55289-0164-24 ",.01)
 ;;55289-0164-24
 ;;9002226.02101,"629,55289-0164-24 ",.02)
 ;;55289-0164-24
 ;;9002226.02101,"629,55289-0164-28 ",.01)
 ;;55289-0164-28
 ;;9002226.02101,"629,55289-0164-28 ",.02)
 ;;55289-0164-28
 ;;9002226.02101,"629,55289-0164-30 ",.01)
 ;;55289-0164-30
 ;;9002226.02101,"629,55289-0164-30 ",.02)
 ;;55289-0164-30
 ;;9002226.02101,"629,55289-0164-40 ",.01)
 ;;55289-0164-40
 ;;9002226.02101,"629,55289-0164-40 ",.02)
 ;;55289-0164-40
 ;;9002226.02101,"629,55289-0164-60 ",.01)
 ;;55289-0164-60
 ;;9002226.02101,"629,55289-0164-60 ",.02)
 ;;55289-0164-60
 ;;9002226.02101,"629,55289-0316-20 ",.01)
 ;;55289-0316-20
 ;;9002226.02101,"629,55289-0316-20 ",.02)
 ;;55289-0316-20
 ;;9002226.02101,"629,55289-0316-25 ",.01)
 ;;55289-0316-25
 ;;9002226.02101,"629,55289-0316-25 ",.02)
 ;;55289-0316-25
 ;;9002226.02101,"629,55289-0316-30 ",.01)
 ;;55289-0316-30
 ;;9002226.02101,"629,55289-0316-30 ",.02)
 ;;55289-0316-30
 ;;9002226.02101,"629,55289-0316-40 ",.01)
 ;;55289-0316-40
 ;;9002226.02101,"629,55289-0316-40 ",.02)
 ;;55289-0316-40
 ;;9002226.02101,"629,55289-0316-60 ",.01)
 ;;55289-0316-60
 ;;9002226.02101,"629,55289-0316-60 ",.02)
 ;;55289-0316-60
 ;;9002226.02101,"629,55289-0376-20 ",.01)
 ;;55289-0376-20
 ;;9002226.02101,"629,55289-0376-20 ",.02)
 ;;55289-0376-20
 ;;9002226.02101,"629,55289-0376-40 ",.01)
 ;;55289-0376-40
 ;;9002226.02101,"629,55289-0376-40 ",.02)
 ;;55289-0376-40
 ;;9002226.02101,"629,55289-0567-10 ",.01)
 ;;55289-0567-10
 ;;9002226.02101,"629,55289-0567-10 ",.02)
 ;;55289-0567-10
 ;;9002226.02101,"629,55289-0567-12 ",.01)
 ;;55289-0567-12
 ;;9002226.02101,"629,55289-0567-12 ",.02)
 ;;55289-0567-12
 ;;9002226.02101,"629,55289-0567-14 ",.01)
 ;;55289-0567-14
 ;;9002226.02101,"629,55289-0567-14 ",.02)
 ;;55289-0567-14
 ;;9002226.02101,"629,55289-0567-15 ",.01)
 ;;55289-0567-15
 ;;9002226.02101,"629,55289-0567-15 ",.02)
 ;;55289-0567-15
 ;;9002226.02101,"629,55289-0567-17 ",.01)
 ;;55289-0567-17
 ;;9002226.02101,"629,55289-0567-17 ",.02)
 ;;55289-0567-17
 ;;9002226.02101,"629,55289-0567-18 ",.01)
 ;;55289-0567-18
 ;;9002226.02101,"629,55289-0567-18 ",.02)
 ;;55289-0567-18
 ;;9002226.02101,"629,55289-0567-20 ",.01)
 ;;55289-0567-20
 ;;9002226.02101,"629,55289-0567-20 ",.02)
 ;;55289-0567-20
 ;;9002226.02101,"629,55289-0567-21 ",.01)
 ;;55289-0567-21
 ;;9002226.02101,"629,55289-0567-21 ",.02)
 ;;55289-0567-21
 ;;9002226.02101,"629,55289-0567-30 ",.01)
 ;;55289-0567-30
 ;;9002226.02101,"629,55289-0567-30 ",.02)
 ;;55289-0567-30
 ;;9002226.02101,"629,55289-0567-42 ",.01)
 ;;55289-0567-42
 ;;9002226.02101,"629,55289-0567-42 ",.02)
 ;;55289-0567-42
 ;;9002226.02101,"629,55289-0567-60 ",.01)
 ;;55289-0567-60
 ;;9002226.02101,"629,55289-0567-60 ",.02)
 ;;55289-0567-60
 ;;9002226.02101,"629,55289-0567-90 ",.01)
 ;;55289-0567-90
 ;;9002226.02101,"629,55289-0567-90 ",.02)
 ;;55289-0567-90
 ;;9002226.02101,"629,55289-0578-20 ",.01)
 ;;55289-0578-20
 ;;9002226.02101,"629,55289-0578-20 ",.02)
 ;;55289-0578-20
 ;;9002226.02101,"629,55289-0578-40 ",.01)
 ;;55289-0578-40
 ;;9002226.02101,"629,55289-0578-40 ",.02)
 ;;55289-0578-40
 ;;9002226.02101,"629,55289-0633-08 ",.01)
 ;;55289-0633-08
 ;;9002226.02101,"629,55289-0633-08 ",.02)
 ;;55289-0633-08
 ;;9002226.02101,"629,55289-0633-10 ",.01)
 ;;55289-0633-10
 ;;9002226.02101,"629,55289-0633-10 ",.02)
 ;;55289-0633-10
 ;;9002226.02101,"629,55289-0633-17 ",.01)
 ;;55289-0633-17
 ;;9002226.02101,"629,55289-0633-17 ",.02)
 ;;55289-0633-17
 ;;9002226.02101,"629,55289-0633-20 ",.01)
 ;;55289-0633-20
 ;;9002226.02101,"629,55289-0633-20 ",.02)
 ;;55289-0633-20
 ;;9002226.02101,"629,55289-0633-24 ",.01)
 ;;55289-0633-24
 ;;9002226.02101,"629,55289-0633-24 ",.02)
 ;;55289-0633-24
 ;;9002226.02101,"629,55289-0633-28 ",.01)
 ;;55289-0633-28
 ;;9002226.02101,"629,55289-0633-28 ",.02)
 ;;55289-0633-28
 ;;9002226.02101,"629,55289-0633-30 ",.01)
 ;;55289-0633-30
 ;;9002226.02101,"629,55289-0633-30 ",.02)
 ;;55289-0633-30
 ;;9002226.02101,"629,55289-0633-40 ",.01)
 ;;55289-0633-40
 ;;9002226.02101,"629,55289-0633-40 ",.02)
 ;;55289-0633-40
 ;;9002226.02101,"629,55289-0633-97 ",.01)
 ;;55289-0633-97
 ;;9002226.02101,"629,55289-0633-97 ",.02)
 ;;55289-0633-97
 ;;9002226.02101,"629,55289-0646-14 ",.01)
 ;;55289-0646-14
 ;;9002226.02101,"629,55289-0646-14 ",.02)
 ;;55289-0646-14
 ;;9002226.02101,"629,55289-0646-15 ",.01)
 ;;55289-0646-15
 ;;9002226.02101,"629,55289-0646-15 ",.02)
 ;;55289-0646-15
 ;;9002226.02101,"629,55289-0646-20 ",.01)
 ;;55289-0646-20
 ;;9002226.02101,"629,55289-0646-20 ",.02)
 ;;55289-0646-20
 ;;9002226.02101,"629,55289-0670-01 ",.01)
 ;;55289-0670-01
 ;;9002226.02101,"629,55289-0670-01 ",.02)
 ;;55289-0670-01
 ;;9002226.02101,"629,55289-0670-10 ",.01)
 ;;55289-0670-10
 ;;9002226.02101,"629,55289-0670-10 ",.02)
 ;;55289-0670-10
 ;;9002226.02101,"629,55289-0670-14 ",.01)
 ;;55289-0670-14
 ;;9002226.02101,"629,55289-0670-14 ",.02)
 ;;55289-0670-14
 ;;9002226.02101,"629,55289-0670-20 ",.01)
 ;;55289-0670-20
 ;;9002226.02101,"629,55289-0670-20 ",.02)
 ;;55289-0670-20
 ;;9002226.02101,"629,55289-0670-28 ",.01)
 ;;55289-0670-28
 ;;9002226.02101,"629,55289-0670-28 ",.02)
 ;;55289-0670-28
 ;;9002226.02101,"629,55289-0670-40 ",.01)
 ;;55289-0670-40
 ;;9002226.02101,"629,55289-0670-40 ",.02)
 ;;55289-0670-40
 ;;9002226.02101,"629,55289-0695-28 ",.01)
 ;;55289-0695-28
 ;;9002226.02101,"629,55289-0695-28 ",.02)
 ;;55289-0695-28
 ;;9002226.02101,"629,55289-0695-40 ",.01)
 ;;55289-0695-40
 ;;9002226.02101,"629,55289-0695-40 ",.02)
 ;;55289-0695-40
 ;;9002226.02101,"629,55289-0846-20 ",.01)
 ;;55289-0846-20
 ;;9002226.02101,"629,55289-0846-20 ",.02)
 ;;55289-0846-20
 ;;9002226.02101,"629,55289-0877-14 ",.01)
 ;;55289-0877-14
 ;;9002226.02101,"629,55289-0877-14 ",.02)
 ;;55289-0877-14
 ;;9002226.02101,"629,55289-0888-24 ",.01)
 ;;55289-0888-24
 ;;9002226.02101,"629,55289-0888-24 ",.02)
 ;;55289-0888-24
 ;;9002226.02101,"629,55390-0059-10 ",.01)
 ;;55390-0059-10
 ;;9002226.02101,"629,55390-0059-10 ",.02)
 ;;55390-0059-10
 ;;9002226.02101,"629,55553-0129-10 ",.01)
 ;;55553-0129-10
 ;;9002226.02101,"629,55553-0129-10 ",.02)
 ;;55553-0129-10
 ;;9002226.02101,"629,55887-0860-20 ",.01)
 ;;55887-0860-20
 ;;9002226.02101,"629,55887-0860-20 ",.02)
 ;;55887-0860-20
 ;;9002226.02101,"629,55887-0860-28 ",.01)
 ;;55887-0860-28
 ;;9002226.02101,"629,55887-0860-28 ",.02)
 ;;55887-0860-28
 ;;9002226.02101,"629,55887-0860-30 ",.01)
 ;;55887-0860-30
 ;;9002226.02101,"629,55887-0860-30 ",.02)
 ;;55887-0860-30
 ;;9002226.02101,"629,55887-0990-12 ",.01)
 ;;55887-0990-12
 ;;9002226.02101,"629,55887-0990-12 ",.02)
 ;;55887-0990-12
 ;;9002226.02101,"629,55887-0990-14 ",.01)
 ;;55887-0990-14
 ;;9002226.02101,"629,55887-0990-14 ",.02)
 ;;55887-0990-14
 ;;9002226.02101,"629,55887-0990-20 ",.01)
 ;;55887-0990-20
 ;;9002226.02101,"629,55887-0990-20 ",.02)
 ;;55887-0990-20
 ;;9002226.02101,"629,55887-0990-30 ",.01)
 ;;55887-0990-30
 ;;9002226.02101,"629,55887-0990-30 ",.02)
 ;;55887-0990-30
 ;;9002226.02101,"629,55887-0990-40 ",.01)
 ;;55887-0990-40
 ;;9002226.02101,"629,55887-0990-40 ",.02)
 ;;55887-0990-40
 ;;9002226.02101,"629,57664-0122-08 ",.01)
 ;;57664-0122-08
 ;;9002226.02101,"629,57664-0122-08 ",.02)
 ;;57664-0122-08
 ;;9002226.02101,"629,57664-0122-13 ",.01)
 ;;57664-0122-13
 ;;9002226.02101,"629,57664-0122-13 ",.02)
 ;;57664-0122-13
 ;;9002226.02101,"629,57866-3435-01 ",.01)
 ;;57866-3435-01
 ;;9002226.02101,"629,57866-3435-01 ",.02)
 ;;57866-3435-01
 ;;9002226.02101,"629,57866-3435-02 ",.01)
 ;;57866-3435-02
 ;;9002226.02101,"629,57866-3435-02 ",.02)
 ;;57866-3435-02
 ;;9002226.02101,"629,57866-3435-03 ",.01)
 ;;57866-3435-03
 ;;9002226.02101,"629,57866-3435-03 ",.02)
 ;;57866-3435-03
 ;;9002226.02101,"629,57866-3435-04 ",.01)
 ;;57866-3435-04
 ;;9002226.02101,"629,57866-3435-04 ",.02)
 ;;57866-3435-04
 ;;9002226.02101,"629,57866-3435-05 ",.01)
 ;;57866-3435-05