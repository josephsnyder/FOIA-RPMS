BUD1ZA16 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,00169-0081-81 ",.01)
 ;;00169-0081-81
 ;;9002226.02101,"1062,00169-0081-81 ",.02)
 ;;00169-0081-81
 ;;9002226.02101,"1062,00169-0081-83 ",.01)
 ;;00169-0081-83
 ;;9002226.02101,"1062,00169-0081-83 ",.02)
 ;;00169-0081-83
 ;;9002226.02101,"1062,00169-0082-81 ",.01)
 ;;00169-0082-81
 ;;9002226.02101,"1062,00169-0082-81 ",.02)
 ;;00169-0082-81
 ;;9002226.02101,"1062,00169-0082-83 ",.01)
 ;;00169-0082-83
 ;;9002226.02101,"1062,00169-0082-83 ",.02)
 ;;00169-0082-83
 ;;9002226.02101,"1062,00169-0084-81 ",.01)
 ;;00169-0084-81
 ;;9002226.02101,"1062,00169-0084-81 ",.02)
 ;;00169-0084-81
 ;;9002226.02101,"1062,00169-0084-83 ",.01)
 ;;00169-0084-83
 ;;9002226.02101,"1062,00169-0084-83 ",.02)
 ;;00169-0084-83
 ;;9002226.02101,"1062,00169-0092-01 ",.01)
 ;;00169-0092-01
 ;;9002226.02101,"1062,00169-0092-01 ",.02)
 ;;00169-0092-01
 ;;9002226.02101,"1062,00169-0093-01 ",.01)
 ;;00169-0093-01
 ;;9002226.02101,"1062,00169-0093-01 ",.02)
 ;;00169-0093-01
 ;;9002226.02101,"1062,00169-1833-11 ",.01)
 ;;00169-1833-11
 ;;9002226.02101,"1062,00169-1833-11 ",.02)
 ;;00169-1833-11
 ;;9002226.02101,"1062,00169-1833-17 ",.01)
 ;;00169-1833-17
 ;;9002226.02101,"1062,00169-1833-17 ",.02)
 ;;00169-1833-17
 ;;9002226.02101,"1062,00169-1834-11 ",.01)
 ;;00169-1834-11
 ;;9002226.02101,"1062,00169-1834-11 ",.02)
 ;;00169-1834-11
 ;;9002226.02101,"1062,00169-1834-17 ",.01)
 ;;00169-1834-17
 ;;9002226.02101,"1062,00169-1834-17 ",.02)
 ;;00169-1834-17
 ;;9002226.02101,"1062,00169-1834-18 ",.01)
 ;;00169-1834-18
 ;;9002226.02101,"1062,00169-1834-18 ",.02)
 ;;00169-1834-18
 ;;9002226.02101,"1062,00169-1837-11 ",.01)
 ;;00169-1837-11
 ;;9002226.02101,"1062,00169-1837-11 ",.02)
 ;;00169-1837-11
 ;;9002226.02101,"1062,00169-1837-17 ",.01)
 ;;00169-1837-17
 ;;9002226.02101,"1062,00169-1837-17 ",.02)
 ;;00169-1837-17
 ;;9002226.02101,"1062,00169-1837-18 ",.01)
 ;;00169-1837-18
 ;;9002226.02101,"1062,00169-1837-18 ",.02)
 ;;00169-1837-18
 ;;9002226.02101,"1062,00169-2313-21 ",.01)
 ;;00169-2313-21
 ;;9002226.02101,"1062,00169-2313-21 ",.02)
 ;;00169-2313-21
 ;;9002226.02101,"1062,00169-2314-21 ",.01)
 ;;00169-2314-21
 ;;9002226.02101,"1062,00169-2314-21 ",.02)
 ;;00169-2314-21
 ;;9002226.02101,"1062,00169-2317-21 ",.01)
 ;;00169-2317-21
 ;;9002226.02101,"1062,00169-2317-21 ",.02)
 ;;00169-2317-21
 ;;9002226.02101,"1062,00169-3303-12 ",.01)
 ;;00169-3303-12
 ;;9002226.02101,"1062,00169-3303-12 ",.02)
 ;;00169-3303-12
 ;;9002226.02101,"1062,00169-3473-18 ",.01)
 ;;00169-3473-18
 ;;9002226.02101,"1062,00169-3473-18 ",.02)
 ;;00169-3473-18
 ;;9002226.02101,"1062,00169-3474-18 ",.01)
 ;;00169-3474-18
 ;;9002226.02101,"1062,00169-3474-18 ",.02)
 ;;00169-3474-18
 ;;9002226.02101,"1062,00169-3477-18 ",.01)
 ;;00169-3477-18
 ;;9002226.02101,"1062,00169-3477-18 ",.02)
 ;;00169-3477-18
 ;;9002226.02101,"1062,00169-3682-13 ",.01)
 ;;00169-3682-13
 ;;9002226.02101,"1062,00169-3682-13 ",.02)
 ;;00169-3682-13
 ;;9002226.02101,"1062,00169-3685-12 ",.01)
 ;;00169-3685-12
 ;;9002226.02101,"1062,00169-3685-12 ",.02)
 ;;00169-3685-12
 ;;9002226.02101,"1062,00169-3687-12 ",.01)
 ;;00169-3687-12
 ;;9002226.02101,"1062,00169-3687-12 ",.02)
 ;;00169-3687-12
 ;;9002226.02101,"1062,00169-3696-19 ",.01)
 ;;00169-3696-19
 ;;9002226.02101,"1062,00169-3696-19 ",.02)
 ;;00169-3696-19
 ;;9002226.02101,"1062,00169-6339-10 ",.01)
 ;;00169-6339-10
 ;;9002226.02101,"1062,00169-6339-10 ",.02)
 ;;00169-6339-10
 ;;9002226.02101,"1062,00169-6439-10 ",.01)
 ;;00169-6439-10
 ;;9002226.02101,"1062,00169-6439-10 ",.02)
 ;;00169-6439-10
 ;;9002226.02101,"1062,00169-7501-11 ",.01)
 ;;00169-7501-11
 ;;9002226.02101,"1062,00169-7501-11 ",.02)
 ;;00169-7501-11
 ;;9002226.02101,"1062,00172-2245-80 ",.01)
 ;;00172-2245-80
 ;;9002226.02101,"1062,00172-2245-80 ",.02)
 ;;00172-2245-80
 ;;9002226.02101,"1062,00172-2978-60 ",.01)
 ;;00172-2978-60
 ;;9002226.02101,"1062,00172-2978-60 ",.02)
 ;;00172-2978-60
 ;;9002226.02101,"1062,00172-2979-60 ",.01)
 ;;00172-2979-60
 ;;9002226.02101,"1062,00172-2979-60 ",.02)
 ;;00172-2979-60
 ;;9002226.02101,"1062,00172-2979-80 ",.01)
 ;;00172-2979-80
 ;;9002226.02101,"1062,00172-2979-80 ",.02)
 ;;00172-2979-80
 ;;9002226.02101,"1062,00172-2980-60 ",.01)
 ;;00172-2980-60
 ;;9002226.02101,"1062,00172-2980-60 ",.02)
 ;;00172-2980-60
 ;;9002226.02101,"1062,00172-2980-70 ",.01)
 ;;00172-2980-70
 ;;9002226.02101,"1062,00172-2980-70 ",.02)
 ;;00172-2980-70
 ;;9002226.02101,"1062,00172-3649-00 ",.01)
 ;;00172-3649-00
 ;;9002226.02101,"1062,00172-3649-00 ",.02)
 ;;00172-3649-00
 ;;9002226.02101,"1062,00172-3649-10 ",.01)
 ;;00172-3649-10
 ;;9002226.02101,"1062,00172-3649-10 ",.02)
 ;;00172-3649-10
 ;;9002226.02101,"1062,00172-3649-60 ",.01)
 ;;00172-3649-60
 ;;9002226.02101,"1062,00172-3649-60 ",.02)
 ;;00172-3649-60
 ;;9002226.02101,"1062,00172-3649-70 ",.01)
 ;;00172-3649-70
 ;;9002226.02101,"1062,00172-3649-70 ",.02)
 ;;00172-3649-70
 ;;9002226.02101,"1062,00172-3650-60 ",.01)
 ;;00172-3650-60
 ;;9002226.02101,"1062,00172-3650-60 ",.02)
 ;;00172-3650-60
 ;;9002226.02101,"1062,00172-3650-70 ",.01)
 ;;00172-3650-70
 ;;9002226.02101,"1062,00172-3650-70 ",.02)
 ;;00172-3650-70
 ;;9002226.02101,"1062,00172-5710-00 ",.01)
 ;;00172-5710-00
