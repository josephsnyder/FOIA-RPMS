BGP53I62 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"734,58016-0146-30 ",.02)
 ;;58016-0146-30
 ;;9002226.02101,"734,58016-0146-40 ",.01)
 ;;58016-0146-40
 ;;9002226.02101,"734,58016-0146-40 ",.02)
 ;;58016-0146-40
 ;;9002226.02101,"734,58016-0146-60 ",.01)
 ;;58016-0146-60
 ;;9002226.02101,"734,58016-0146-60 ",.02)
 ;;58016-0146-60
 ;;9002226.02101,"734,58016-0146-73 ",.01)
 ;;58016-0146-73
 ;;9002226.02101,"734,58016-0146-73 ",.02)
 ;;58016-0146-73
 ;;9002226.02101,"734,58016-0146-89 ",.01)
 ;;58016-0146-89
 ;;9002226.02101,"734,58016-0146-89 ",.02)
 ;;58016-0146-89
 ;;9002226.02101,"734,58016-0146-90 ",.01)
 ;;58016-0146-90
 ;;9002226.02101,"734,58016-0146-90 ",.02)
 ;;58016-0146-90
 ;;9002226.02101,"734,58016-0147-00 ",.01)
 ;;58016-0147-00
 ;;9002226.02101,"734,58016-0147-00 ",.02)
 ;;58016-0147-00
 ;;9002226.02101,"734,58016-0147-02 ",.01)
 ;;58016-0147-02
 ;;9002226.02101,"734,58016-0147-02 ",.02)
 ;;58016-0147-02
 ;;9002226.02101,"734,58016-0147-03 ",.01)
 ;;58016-0147-03
 ;;9002226.02101,"734,58016-0147-03 ",.02)
 ;;58016-0147-03
 ;;9002226.02101,"734,58016-0147-06 ",.01)
 ;;58016-0147-06
 ;;9002226.02101,"734,58016-0147-06 ",.02)
 ;;58016-0147-06
 ;;9002226.02101,"734,58016-0147-10 ",.01)
 ;;58016-0147-10
 ;;9002226.02101,"734,58016-0147-10 ",.02)
 ;;58016-0147-10
 ;;9002226.02101,"734,58016-0147-12 ",.01)
 ;;58016-0147-12
 ;;9002226.02101,"734,58016-0147-12 ",.02)
 ;;58016-0147-12
 ;;9002226.02101,"734,58016-0147-15 ",.01)
 ;;58016-0147-15
 ;;9002226.02101,"734,58016-0147-15 ",.02)
 ;;58016-0147-15
 ;;9002226.02101,"734,58016-0147-16 ",.01)
 ;;58016-0147-16
 ;;9002226.02101,"734,58016-0147-16 ",.02)
 ;;58016-0147-16
 ;;9002226.02101,"734,58016-0147-20 ",.01)
 ;;58016-0147-20
 ;;9002226.02101,"734,58016-0147-20 ",.02)
 ;;58016-0147-20
 ;;9002226.02101,"734,58016-0147-21 ",.01)
 ;;58016-0147-21
 ;;9002226.02101,"734,58016-0147-21 ",.02)
 ;;58016-0147-21
 ;;9002226.02101,"734,58016-0147-24 ",.01)
 ;;58016-0147-24
 ;;9002226.02101,"734,58016-0147-24 ",.02)
 ;;58016-0147-24
 ;;9002226.02101,"734,58016-0147-28 ",.01)
 ;;58016-0147-28
 ;;9002226.02101,"734,58016-0147-28 ",.02)
 ;;58016-0147-28
 ;;9002226.02101,"734,58016-0147-30 ",.01)
 ;;58016-0147-30
 ;;9002226.02101,"734,58016-0147-30 ",.02)
 ;;58016-0147-30
 ;;9002226.02101,"734,58016-0147-40 ",.01)
 ;;58016-0147-40
 ;;9002226.02101,"734,58016-0147-40 ",.02)
 ;;58016-0147-40
 ;;9002226.02101,"734,58016-0147-50 ",.01)
 ;;58016-0147-50
 ;;9002226.02101,"734,58016-0147-50 ",.02)
 ;;58016-0147-50
 ;;9002226.02101,"734,58016-0147-60 ",.01)
 ;;58016-0147-60
 ;;9002226.02101,"734,58016-0147-60 ",.02)
 ;;58016-0147-60
 ;;9002226.02101,"734,58016-0147-73 ",.01)
 ;;58016-0147-73
 ;;9002226.02101,"734,58016-0147-73 ",.02)
 ;;58016-0147-73
 ;;9002226.02101,"734,58016-0147-89 ",.01)
 ;;58016-0147-89
 ;;9002226.02101,"734,58016-0147-89 ",.02)
 ;;58016-0147-89
 ;;9002226.02101,"734,58016-0147-90 ",.01)
 ;;58016-0147-90
 ;;9002226.02101,"734,58016-0147-90 ",.02)
 ;;58016-0147-90
 ;;9002226.02101,"734,58016-0148-00 ",.01)
 ;;58016-0148-00
 ;;9002226.02101,"734,58016-0148-00 ",.02)
 ;;58016-0148-00
 ;;9002226.02101,"734,58016-0148-08 ",.01)
 ;;58016-0148-08
 ;;9002226.02101,"734,58016-0148-08 ",.02)
 ;;58016-0148-08
 ;;9002226.02101,"734,58016-0148-09 ",.01)
 ;;58016-0148-09
 ;;9002226.02101,"734,58016-0148-09 ",.02)
 ;;58016-0148-09
 ;;9002226.02101,"734,58016-0148-10 ",.01)
 ;;58016-0148-10
 ;;9002226.02101,"734,58016-0148-10 ",.02)
 ;;58016-0148-10
 ;;9002226.02101,"734,58016-0148-12 ",.01)
 ;;58016-0148-12
 ;;9002226.02101,"734,58016-0148-12 ",.02)
 ;;58016-0148-12
 ;;9002226.02101,"734,58016-0148-14 ",.01)
 ;;58016-0148-14
 ;;9002226.02101,"734,58016-0148-14 ",.02)
 ;;58016-0148-14
 ;;9002226.02101,"734,58016-0148-15 ",.01)
 ;;58016-0148-15
 ;;9002226.02101,"734,58016-0148-15 ",.02)
 ;;58016-0148-15
 ;;9002226.02101,"734,58016-0148-20 ",.01)
 ;;58016-0148-20
 ;;9002226.02101,"734,58016-0148-20 ",.02)
 ;;58016-0148-20
 ;;9002226.02101,"734,58016-0148-24 ",.01)
 ;;58016-0148-24
 ;;9002226.02101,"734,58016-0148-24 ",.02)
 ;;58016-0148-24
 ;;9002226.02101,"734,58016-0148-28 ",.01)
 ;;58016-0148-28
 ;;9002226.02101,"734,58016-0148-28 ",.02)
 ;;58016-0148-28
 ;;9002226.02101,"734,58016-0148-30 ",.01)
 ;;58016-0148-30
 ;;9002226.02101,"734,58016-0148-30 ",.02)
 ;;58016-0148-30
 ;;9002226.02101,"734,58016-0148-40 ",.01)
 ;;58016-0148-40
 ;;9002226.02101,"734,58016-0148-40 ",.02)
 ;;58016-0148-40
 ;;9002226.02101,"734,58016-0148-50 ",.01)
 ;;58016-0148-50
 ;;9002226.02101,"734,58016-0148-50 ",.02)
 ;;58016-0148-50
 ;;9002226.02101,"734,58016-0149-00 ",.01)
 ;;58016-0149-00
 ;;9002226.02101,"734,58016-0149-00 ",.02)
 ;;58016-0149-00
 ;;9002226.02101,"734,58016-0149-07 ",.01)
 ;;58016-0149-07
 ;;9002226.02101,"734,58016-0149-07 ",.02)
 ;;58016-0149-07
 ;;9002226.02101,"734,58016-0149-10 ",.01)
 ;;58016-0149-10
 ;;9002226.02101,"734,58016-0149-10 ",.02)
 ;;58016-0149-10
 ;;9002226.02101,"734,58016-0149-20 ",.01)
 ;;58016-0149-20
 ;;9002226.02101,"734,58016-0149-20 ",.02)
 ;;58016-0149-20
 ;;9002226.02101,"734,58016-0149-21 ",.01)
 ;;58016-0149-21
 ;;9002226.02101,"734,58016-0149-21 ",.02)
 ;;58016-0149-21
 ;;9002226.02101,"734,58016-0149-24 ",.01)
 ;;58016-0149-24
 ;;9002226.02101,"734,58016-0149-24 ",.02)
 ;;58016-0149-24
 ;;9002226.02101,"734,58016-0149-25 ",.01)
 ;;58016-0149-25
 ;;9002226.02101,"734,58016-0149-25 ",.02)
 ;;58016-0149-25
 ;;9002226.02101,"734,58016-0149-28 ",.01)
 ;;58016-0149-28
 ;;9002226.02101,"734,58016-0149-28 ",.02)
 ;;58016-0149-28
 ;;9002226.02101,"734,58016-0149-30 ",.01)
 ;;58016-0149-30
 ;;9002226.02101,"734,58016-0149-30 ",.02)
 ;;58016-0149-30
 ;;9002226.02101,"734,58016-0149-40 ",.01)
 ;;58016-0149-40
 ;;9002226.02101,"734,58016-0149-40 ",.02)
 ;;58016-0149-40
 ;;9002226.02101,"734,58016-0156-00 ",.01)
 ;;58016-0156-00
 ;;9002226.02101,"734,58016-0156-00 ",.02)
 ;;58016-0156-00
 ;;9002226.02101,"734,58016-0156-02 ",.01)
 ;;58016-0156-02
 ;;9002226.02101,"734,58016-0156-02 ",.02)
 ;;58016-0156-02
 ;;9002226.02101,"734,58016-0156-03 ",.01)
 ;;58016-0156-03
 ;;9002226.02101,"734,58016-0156-03 ",.02)
 ;;58016-0156-03
 ;;9002226.02101,"734,58016-0156-06 ",.01)
 ;;58016-0156-06
 ;;9002226.02101,"734,58016-0156-06 ",.02)
 ;;58016-0156-06
 ;;9002226.02101,"734,58016-0156-07 ",.01)
 ;;58016-0156-07
 ;;9002226.02101,"734,58016-0156-07 ",.02)
 ;;58016-0156-07
 ;;9002226.02101,"734,58016-0156-10 ",.01)
 ;;58016-0156-10
 ;;9002226.02101,"734,58016-0156-10 ",.02)
 ;;58016-0156-10
 ;;9002226.02101,"734,58016-0156-12 ",.01)
 ;;58016-0156-12
 ;;9002226.02101,"734,58016-0156-12 ",.02)
 ;;58016-0156-12
 ;;9002226.02101,"734,58016-0156-14 ",.01)
 ;;58016-0156-14
 ;;9002226.02101,"734,58016-0156-14 ",.02)
 ;;58016-0156-14
 ;;9002226.02101,"734,58016-0156-15 ",.01)
 ;;58016-0156-15
 ;;9002226.02101,"734,58016-0156-15 ",.02)
 ;;58016-0156-15
 ;;9002226.02101,"734,58016-0156-16 ",.01)
 ;;58016-0156-16
 ;;9002226.02101,"734,58016-0156-16 ",.02)
 ;;58016-0156-16
 ;;9002226.02101,"734,58016-0156-20 ",.01)
 ;;58016-0156-20
 ;;9002226.02101,"734,58016-0156-20 ",.02)
 ;;58016-0156-20
 ;;9002226.02101,"734,58016-0156-21 ",.01)
 ;;58016-0156-21
 ;;9002226.02101,"734,58016-0156-21 ",.02)
 ;;58016-0156-21
 ;;9002226.02101,"734,58016-0156-24 ",.01)
 ;;58016-0156-24
 ;;9002226.02101,"734,58016-0156-24 ",.02)
 ;;58016-0156-24
 ;;9002226.02101,"734,58016-0156-28 ",.01)
 ;;58016-0156-28
 ;;9002226.02101,"734,58016-0156-28 ",.02)
 ;;58016-0156-28
 ;;9002226.02101,"734,58016-0156-30 ",.01)
 ;;58016-0156-30
 ;;9002226.02101,"734,58016-0156-30 ",.02)
 ;;58016-0156-30
 ;;9002226.02101,"734,58016-0156-40 ",.01)
 ;;58016-0156-40
 ;;9002226.02101,"734,58016-0156-40 ",.02)
 ;;58016-0156-40
 ;;9002226.02101,"734,58016-0156-60 ",.01)
 ;;58016-0156-60
 ;;9002226.02101,"734,58016-0156-60 ",.02)
 ;;58016-0156-60
 ;;9002226.02101,"734,58016-0156-73 ",.01)
 ;;58016-0156-73
 ;;9002226.02101,"734,58016-0156-73 ",.02)
 ;;58016-0156-73
 ;;9002226.02101,"734,58016-0156-89 ",.01)
 ;;58016-0156-89
 ;;9002226.02101,"734,58016-0156-89 ",.02)
 ;;58016-0156-89
 ;;9002226.02101,"734,58016-0161-10 ",.01)
 ;;58016-0161-10
 ;;9002226.02101,"734,58016-0161-10 ",.02)
 ;;58016-0161-10
 ;;9002226.02101,"734,58016-0161-12 ",.01)
 ;;58016-0161-12
 ;;9002226.02101,"734,58016-0161-12 ",.02)
 ;;58016-0161-12
 ;;9002226.02101,"734,58016-0161-14 ",.01)
 ;;58016-0161-14
 ;;9002226.02101,"734,58016-0161-14 ",.02)
 ;;58016-0161-14
 ;;9002226.02101,"734,58016-0161-15 ",.01)
 ;;58016-0161-15
 ;;9002226.02101,"734,58016-0161-15 ",.02)
 ;;58016-0161-15
 ;;9002226.02101,"734,58016-0161-16 ",.01)
 ;;58016-0161-16
 ;;9002226.02101,"734,58016-0161-16 ",.02)
 ;;58016-0161-16
 ;;9002226.02101,"734,58016-0161-18 ",.01)
 ;;58016-0161-18
 ;;9002226.02101,"734,58016-0161-18 ",.02)
 ;;58016-0161-18
 ;;9002226.02101,"734,58016-0161-20 ",.01)
 ;;58016-0161-20
 ;;9002226.02101,"734,58016-0161-20 ",.02)
 ;;58016-0161-20
 ;;9002226.02101,"734,58016-0161-21 ",.01)
 ;;58016-0161-21
 ;;9002226.02101,"734,58016-0161-21 ",.02)
 ;;58016-0161-21
 ;;9002226.02101,"734,58016-0161-24 ",.01)
 ;;58016-0161-24
 ;;9002226.02101,"734,58016-0161-24 ",.02)
 ;;58016-0161-24
 ;;9002226.02101,"734,58016-0161-28 ",.01)
 ;;58016-0161-28
 ;;9002226.02101,"734,58016-0161-28 ",.02)
 ;;58016-0161-28
 ;;9002226.02101,"734,58016-0161-30 ",.01)
 ;;58016-0161-30
 ;;9002226.02101,"734,58016-0161-30 ",.02)
 ;;58016-0161-30
 ;;9002226.02101,"734,58016-0161-40 ",.01)
 ;;58016-0161-40
 ;;9002226.02101,"734,58016-0161-40 ",.02)
 ;;58016-0161-40
 ;;9002226.02101,"734,58016-0161-50 ",.01)
 ;;58016-0161-50
 ;;9002226.02101,"734,58016-0161-50 ",.02)
 ;;58016-0161-50
 ;;9002226.02101,"734,58016-0161-60 ",.01)
 ;;58016-0161-60
 ;;9002226.02101,"734,58016-0161-60 ",.02)
 ;;58016-0161-60
 ;;9002226.02101,"734,58016-0162-28 ",.01)
 ;;58016-0162-28
 ;;9002226.02101,"734,58016-0162-28 ",.02)
 ;;58016-0162-28
 ;;9002226.02101,"734,58016-0162-30 ",.01)
 ;;58016-0162-30
 ;;9002226.02101,"734,58016-0162-30 ",.02)
 ;;58016-0162-30
 ;;9002226.02101,"734,58016-0162-40 ",.01)
 ;;58016-0162-40
 ;;9002226.02101,"734,58016-0162-40 ",.02)
 ;;58016-0162-40
 ;;9002226.02101,"734,58016-0167-00 ",.01)
 ;;58016-0167-00
 ;;9002226.02101,"734,58016-0167-00 ",.02)
 ;;58016-0167-00
 ;;9002226.02101,"734,58016-0167-20 ",.01)
 ;;58016-0167-20
 ;;9002226.02101,"734,58016-0167-20 ",.02)
 ;;58016-0167-20
 ;;9002226.02101,"734,58016-0167-40 ",.01)
 ;;58016-0167-40
 ;;9002226.02101,"734,58016-0167-40 ",.02)
 ;;58016-0167-40
 ;;9002226.02101,"734,58016-0171-20 ",.01)
 ;;58016-0171-20
 ;;9002226.02101,"734,58016-0171-20 ",.02)
 ;;58016-0171-20
 ;;9002226.02101,"734,58016-0171-30 ",.01)
 ;;58016-0171-30
 ;;9002226.02101,"734,58016-0171-30 ",.02)
 ;;58016-0171-30
 ;;9002226.02101,"734,58016-0204-00 ",.01)
 ;;58016-0204-00
 ;;9002226.02101,"734,58016-0204-00 ",.02)
 ;;58016-0204-00
 ;;9002226.02101,"734,58016-0204-30 ",.01)
 ;;58016-0204-30
 ;;9002226.02101,"734,58016-0204-30 ",.02)
 ;;58016-0204-30
 ;;9002226.02101,"734,58016-0204-60 ",.01)
 ;;58016-0204-60
 ;;9002226.02101,"734,58016-0204-60 ",.02)
 ;;58016-0204-60
 ;;9002226.02101,"734,58016-0204-90 ",.01)
 ;;58016-0204-90
 ;;9002226.02101,"734,58016-0204-90 ",.02)
 ;;58016-0204-90
 ;;9002226.02101,"734,58016-0284-15 ",.01)
 ;;58016-0284-15
 ;;9002226.02101,"734,58016-0284-15 ",.02)
 ;;58016-0284-15
 ;;9002226.02101,"734,58016-0284-20 ",.01)
 ;;58016-0284-20
 ;;9002226.02101,"734,58016-0284-20 ",.02)
 ;;58016-0284-20
 ;;9002226.02101,"734,58016-0284-30 ",.01)
 ;;58016-0284-30
 ;;9002226.02101,"734,58016-0284-30 ",.02)
 ;;58016-0284-30
 ;;9002226.02101,"734,58016-0284-50 ",.01)
 ;;58016-0284-50
 ;;9002226.02101,"734,58016-0284-50 ",.02)
 ;;58016-0284-50
 ;;9002226.02101,"734,58016-0299-00 ",.01)
 ;;58016-0299-00
 ;;9002226.02101,"734,58016-0299-00 ",.02)
 ;;58016-0299-00
 ;;9002226.02101,"734,58016-0299-30 ",.01)
 ;;58016-0299-30
 ;;9002226.02101,"734,58016-0299-30 ",.02)
 ;;58016-0299-30
 ;;9002226.02101,"734,58016-0299-60 ",.01)
 ;;58016-0299-60
 ;;9002226.02101,"734,58016-0299-60 ",.02)
 ;;58016-0299-60
 ;;9002226.02101,"734,58016-0299-90 ",.01)
 ;;58016-0299-90
 ;;9002226.02101,"734,58016-0299-90 ",.02)
 ;;58016-0299-90
 ;;9002226.02101,"734,58016-0339-30 ",.01)
 ;;58016-0339-30
 ;;9002226.02101,"734,58016-0339-30 ",.02)
 ;;58016-0339-30
 ;;9002226.02101,"734,58016-0391-00 ",.01)
 ;;58016-0391-00
 ;;9002226.02101,"734,58016-0391-00 ",.02)
 ;;58016-0391-00
 ;;9002226.02101,"734,58016-0391-01 ",.01)
 ;;58016-0391-01
 ;;9002226.02101,"734,58016-0391-01 ",.02)
 ;;58016-0391-01
 ;;9002226.02101,"734,58016-0391-06 ",.01)
 ;;58016-0391-06
 ;;9002226.02101,"734,58016-0391-06 ",.02)
 ;;58016-0391-06
 ;;9002226.02101,"734,58016-0391-10 ",.01)
 ;;58016-0391-10
 ;;9002226.02101,"734,58016-0391-10 ",.02)
 ;;58016-0391-10
 ;;9002226.02101,"734,58016-0391-15 ",.01)
 ;;58016-0391-15
 ;;9002226.02101,"734,58016-0391-15 ",.02)
 ;;58016-0391-15
 ;;9002226.02101,"734,58016-0391-18 ",.01)
 ;;58016-0391-18
 ;;9002226.02101,"734,58016-0391-18 ",.02)
 ;;58016-0391-18
 ;;9002226.02101,"734,58016-0391-20 ",.01)
 ;;58016-0391-20
 ;;9002226.02101,"734,58016-0391-20 ",.02)
 ;;58016-0391-20
 ;;9002226.02101,"734,58016-0391-28 ",.01)
 ;;58016-0391-28
 ;;9002226.02101,"734,58016-0391-28 ",.02)
 ;;58016-0391-28
 ;;9002226.02101,"734,58016-0391-30 ",.01)
 ;;58016-0391-30
 ;;9002226.02101,"734,58016-0391-30 ",.02)
 ;;58016-0391-30
 ;;9002226.02101,"734,58016-0391-60 ",.01)
 ;;58016-0391-60
