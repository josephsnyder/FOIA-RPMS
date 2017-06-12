BGP62Y28 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,00247-0035-00 ",.02)
 ;;00247-0035-00
 ;;9002226.02101,"868,00247-0035-75 ",.01)
 ;;00247-0035-75
 ;;9002226.02101,"868,00247-0035-75 ",.02)
 ;;00247-0035-75
 ;;9002226.02101,"868,00247-0035-78 ",.01)
 ;;00247-0035-78
 ;;9002226.02101,"868,00247-0035-78 ",.02)
 ;;00247-0035-78
 ;;9002226.02101,"868,00247-0054-75 ",.01)
 ;;00247-0054-75
 ;;9002226.02101,"868,00247-0054-75 ",.02)
 ;;00247-0054-75
 ;;9002226.02101,"868,00247-0054-78 ",.01)
 ;;00247-0054-78
 ;;9002226.02101,"868,00247-0054-78 ",.02)
 ;;00247-0054-78
 ;;9002226.02101,"868,00247-0055-00 ",.01)
 ;;00247-0055-00
 ;;9002226.02101,"868,00247-0055-00 ",.02)
 ;;00247-0055-00
 ;;9002226.02101,"868,00247-0055-50 ",.01)
 ;;00247-0055-50
 ;;9002226.02101,"868,00247-0055-50 ",.02)
 ;;00247-0055-50
 ;;9002226.02101,"868,00247-0063-00 ",.01)
 ;;00247-0063-00
 ;;9002226.02101,"868,00247-0063-00 ",.02)
 ;;00247-0063-00
 ;;9002226.02101,"868,00247-0063-01 ",.01)
 ;;00247-0063-01
 ;;9002226.02101,"868,00247-0063-01 ",.02)
 ;;00247-0063-01
 ;;9002226.02101,"868,00247-0063-02 ",.01)
 ;;00247-0063-02
 ;;9002226.02101,"868,00247-0063-02 ",.02)
 ;;00247-0063-02
 ;;9002226.02101,"868,00247-0063-03 ",.01)
 ;;00247-0063-03
 ;;9002226.02101,"868,00247-0063-03 ",.02)
 ;;00247-0063-03
 ;;9002226.02101,"868,00247-0063-04 ",.01)
 ;;00247-0063-04
 ;;9002226.02101,"868,00247-0063-04 ",.02)
 ;;00247-0063-04
 ;;9002226.02101,"868,00247-0063-06 ",.01)
 ;;00247-0063-06
 ;;9002226.02101,"868,00247-0063-06 ",.02)
 ;;00247-0063-06
 ;;9002226.02101,"868,00247-0063-07 ",.01)
 ;;00247-0063-07
 ;;9002226.02101,"868,00247-0063-07 ",.02)
 ;;00247-0063-07
 ;;9002226.02101,"868,00247-0063-08 ",.01)
 ;;00247-0063-08
 ;;9002226.02101,"868,00247-0063-08 ",.02)
 ;;00247-0063-08
 ;;9002226.02101,"868,00247-0063-10 ",.01)
 ;;00247-0063-10
 ;;9002226.02101,"868,00247-0063-10 ",.02)
 ;;00247-0063-10
 ;;9002226.02101,"868,00247-0063-12 ",.01)
 ;;00247-0063-12
 ;;9002226.02101,"868,00247-0063-12 ",.02)
 ;;00247-0063-12
 ;;9002226.02101,"868,00247-0063-14 ",.01)
 ;;00247-0063-14
 ;;9002226.02101,"868,00247-0063-14 ",.02)
 ;;00247-0063-14
 ;;9002226.02101,"868,00247-0063-15 ",.01)
 ;;00247-0063-15
 ;;9002226.02101,"868,00247-0063-15 ",.02)
 ;;00247-0063-15
 ;;9002226.02101,"868,00247-0063-16 ",.01)
 ;;00247-0063-16
 ;;9002226.02101,"868,00247-0063-16 ",.02)
 ;;00247-0063-16
 ;;9002226.02101,"868,00247-0063-19 ",.01)
 ;;00247-0063-19
 ;;9002226.02101,"868,00247-0063-19 ",.02)
 ;;00247-0063-19
 ;;9002226.02101,"868,00247-0063-20 ",.01)
 ;;00247-0063-20
 ;;9002226.02101,"868,00247-0063-20 ",.02)
 ;;00247-0063-20
 ;;9002226.02101,"868,00247-0063-28 ",.01)
 ;;00247-0063-28
 ;;9002226.02101,"868,00247-0063-28 ",.02)
 ;;00247-0063-28
 ;;9002226.02101,"868,00247-0063-30 ",.01)
 ;;00247-0063-30
 ;;9002226.02101,"868,00247-0063-30 ",.02)
 ;;00247-0063-30
 ;;9002226.02101,"868,00247-0063-40 ",.01)
 ;;00247-0063-40
 ;;9002226.02101,"868,00247-0063-40 ",.02)
 ;;00247-0063-40
 ;;9002226.02101,"868,00247-0063-42 ",.01)
 ;;00247-0063-42
 ;;9002226.02101,"868,00247-0063-42 ",.02)
 ;;00247-0063-42
 ;;9002226.02101,"868,00247-0063-56 ",.01)
 ;;00247-0063-56
 ;;9002226.02101,"868,00247-0063-56 ",.02)
 ;;00247-0063-56
 ;;9002226.02101,"868,00247-0063-60 ",.01)
 ;;00247-0063-60
 ;;9002226.02101,"868,00247-0063-60 ",.02)
 ;;00247-0063-60
 ;;9002226.02101,"868,00247-0063-98 ",.01)
 ;;00247-0063-98
 ;;9002226.02101,"868,00247-0063-98 ",.02)
 ;;00247-0063-98
 ;;9002226.02101,"868,00247-0066-00 ",.01)
 ;;00247-0066-00
 ;;9002226.02101,"868,00247-0066-00 ",.02)
 ;;00247-0066-00
 ;;9002226.02101,"868,00247-0066-04 ",.01)
 ;;00247-0066-04
 ;;9002226.02101,"868,00247-0066-04 ",.02)
 ;;00247-0066-04
 ;;9002226.02101,"868,00247-0066-05 ",.01)
 ;;00247-0066-05
 ;;9002226.02101,"868,00247-0066-05 ",.02)
 ;;00247-0066-05
 ;;9002226.02101,"868,00247-0066-10 ",.01)
 ;;00247-0066-10
 ;;9002226.02101,"868,00247-0066-10 ",.02)
 ;;00247-0066-10
 ;;9002226.02101,"868,00247-0066-12 ",.01)
 ;;00247-0066-12
 ;;9002226.02101,"868,00247-0066-12 ",.02)
 ;;00247-0066-12
 ;;9002226.02101,"868,00247-0066-20 ",.01)
 ;;00247-0066-20
 ;;9002226.02101,"868,00247-0066-20 ",.02)
 ;;00247-0066-20
 ;;9002226.02101,"868,00247-0066-21 ",.01)
 ;;00247-0066-21
 ;;9002226.02101,"868,00247-0066-21 ",.02)
 ;;00247-0066-21
 ;;9002226.02101,"868,00247-0066-28 ",.01)
 ;;00247-0066-28
 ;;9002226.02101,"868,00247-0066-28 ",.02)
 ;;00247-0066-28
 ;;9002226.02101,"868,00247-0066-30 ",.01)
 ;;00247-0066-30
 ;;9002226.02101,"868,00247-0066-30 ",.02)
 ;;00247-0066-30
 ;;9002226.02101,"868,00247-0066-40 ",.01)
 ;;00247-0066-40
 ;;9002226.02101,"868,00247-0066-40 ",.02)
 ;;00247-0066-40
 ;;9002226.02101,"868,00247-0066-60 ",.01)
 ;;00247-0066-60
 ;;9002226.02101,"868,00247-0066-60 ",.02)
 ;;00247-0066-60
 ;;9002226.02101,"868,00247-0066-99 ",.01)
 ;;00247-0066-99
 ;;9002226.02101,"868,00247-0066-99 ",.02)
 ;;00247-0066-99
 ;;9002226.02101,"868,00247-0067-00 ",.01)
 ;;00247-0067-00
 ;;9002226.02101,"868,00247-0067-00 ",.02)
 ;;00247-0067-00
 ;;9002226.02101,"868,00247-0067-04 ",.01)
 ;;00247-0067-04
 ;;9002226.02101,"868,00247-0067-04 ",.02)
 ;;00247-0067-04
 ;;9002226.02101,"868,00247-0067-08 ",.01)
 ;;00247-0067-08
 ;;9002226.02101,"868,00247-0067-08 ",.02)
 ;;00247-0067-08
 ;;9002226.02101,"868,00247-0067-10 ",.01)
 ;;00247-0067-10
 ;;9002226.02101,"868,00247-0067-10 ",.02)
 ;;00247-0067-10
 ;;9002226.02101,"868,00247-0067-12 ",.01)
 ;;00247-0067-12
 ;;9002226.02101,"868,00247-0067-12 ",.02)
 ;;00247-0067-12
 ;;9002226.02101,"868,00247-0067-15 ",.01)
 ;;00247-0067-15
 ;;9002226.02101,"868,00247-0067-15 ",.02)
 ;;00247-0067-15
 ;;9002226.02101,"868,00247-0067-16 ",.01)
 ;;00247-0067-16
 ;;9002226.02101,"868,00247-0067-16 ",.02)
 ;;00247-0067-16
 ;;9002226.02101,"868,00247-0067-20 ",.01)
 ;;00247-0067-20
 ;;9002226.02101,"868,00247-0067-20 ",.02)
 ;;00247-0067-20
 ;;9002226.02101,"868,00247-0067-21 ",.01)
 ;;00247-0067-21
 ;;9002226.02101,"868,00247-0067-21 ",.02)
 ;;00247-0067-21
 ;;9002226.02101,"868,00247-0067-28 ",.01)
 ;;00247-0067-28
 ;;9002226.02101,"868,00247-0067-28 ",.02)
 ;;00247-0067-28
 ;;9002226.02101,"868,00247-0067-30 ",.01)
 ;;00247-0067-30
 ;;9002226.02101,"868,00247-0067-30 ",.02)
 ;;00247-0067-30
 ;;9002226.02101,"868,00247-0067-40 ",.01)
 ;;00247-0067-40
 ;;9002226.02101,"868,00247-0067-40 ",.02)
 ;;00247-0067-40
 ;;9002226.02101,"868,00247-0067-52 ",.01)
 ;;00247-0067-52
 ;;9002226.02101,"868,00247-0067-52 ",.02)
 ;;00247-0067-52
 ;;9002226.02101,"868,00247-0067-56 ",.01)
 ;;00247-0067-56
 ;;9002226.02101,"868,00247-0067-56 ",.02)
 ;;00247-0067-56
 ;;9002226.02101,"868,00247-0067-60 ",.01)
 ;;00247-0067-60
 ;;9002226.02101,"868,00247-0067-60 ",.02)
 ;;00247-0067-60
 ;;9002226.02101,"868,00247-0067-90 ",.01)
 ;;00247-0067-90
 ;;9002226.02101,"868,00247-0067-90 ",.02)
 ;;00247-0067-90
 ;;9002226.02101,"868,00247-0067-99 ",.01)
 ;;00247-0067-99
 ;;9002226.02101,"868,00247-0067-99 ",.02)
 ;;00247-0067-99
 ;;9002226.02101,"868,00247-0068-01 ",.01)
 ;;00247-0068-01
 ;;9002226.02101,"868,00247-0068-01 ",.02)
 ;;00247-0068-01
 ;;9002226.02101,"868,00247-0068-02 ",.01)
 ;;00247-0068-02
 ;;9002226.02101,"868,00247-0068-02 ",.02)
 ;;00247-0068-02
 ;;9002226.02101,"868,00247-0068-03 ",.01)
 ;;00247-0068-03
 ;;9002226.02101,"868,00247-0068-03 ",.02)
 ;;00247-0068-03
 ;;9002226.02101,"868,00247-0068-04 ",.01)
 ;;00247-0068-04
 ;;9002226.02101,"868,00247-0068-04 ",.02)
 ;;00247-0068-04
 ;;9002226.02101,"868,00247-0068-06 ",.01)
 ;;00247-0068-06
 ;;9002226.02101,"868,00247-0068-06 ",.02)
 ;;00247-0068-06
 ;;9002226.02101,"868,00247-0068-08 ",.01)
 ;;00247-0068-08
 ;;9002226.02101,"868,00247-0068-08 ",.02)
 ;;00247-0068-08
 ;;9002226.02101,"868,00247-0068-10 ",.01)
 ;;00247-0068-10
 ;;9002226.02101,"868,00247-0068-10 ",.02)
 ;;00247-0068-10
 ;;9002226.02101,"868,00247-0068-12 ",.01)
 ;;00247-0068-12
 ;;9002226.02101,"868,00247-0068-12 ",.02)
 ;;00247-0068-12
 ;;9002226.02101,"868,00247-0068-14 ",.01)
 ;;00247-0068-14
 ;;9002226.02101,"868,00247-0068-14 ",.02)
 ;;00247-0068-14
 ;;9002226.02101,"868,00247-0068-15 ",.01)
 ;;00247-0068-15
 ;;9002226.02101,"868,00247-0068-15 ",.02)
 ;;00247-0068-15
 ;;9002226.02101,"868,00247-0068-16 ",.01)
 ;;00247-0068-16
 ;;9002226.02101,"868,00247-0068-16 ",.02)
 ;;00247-0068-16
 ;;9002226.02101,"868,00247-0068-18 ",.01)
 ;;00247-0068-18
 ;;9002226.02101,"868,00247-0068-18 ",.02)
 ;;00247-0068-18
 ;;9002226.02101,"868,00247-0068-20 ",.01)
 ;;00247-0068-20
 ;;9002226.02101,"868,00247-0068-20 ",.02)
 ;;00247-0068-20
 ;;9002226.02101,"868,00247-0068-21 ",.01)
 ;;00247-0068-21
 ;;9002226.02101,"868,00247-0068-21 ",.02)
 ;;00247-0068-21
 ;;9002226.02101,"868,00247-0068-24 ",.01)
 ;;00247-0068-24
 ;;9002226.02101,"868,00247-0068-24 ",.02)
 ;;00247-0068-24
 ;;9002226.02101,"868,00247-0068-25 ",.01)
 ;;00247-0068-25
 ;;9002226.02101,"868,00247-0068-25 ",.02)
 ;;00247-0068-25
 ;;9002226.02101,"868,00247-0068-28 ",.01)
 ;;00247-0068-28
 ;;9002226.02101,"868,00247-0068-28 ",.02)
 ;;00247-0068-28
 ;;9002226.02101,"868,00247-0068-30 ",.01)
 ;;00247-0068-30
 ;;9002226.02101,"868,00247-0068-30 ",.02)
 ;;00247-0068-30
 ;;9002226.02101,"868,00247-0068-32 ",.01)
 ;;00247-0068-32
 ;;9002226.02101,"868,00247-0068-32 ",.02)
 ;;00247-0068-32
 ;;9002226.02101,"868,00247-0068-40 ",.01)
 ;;00247-0068-40
 ;;9002226.02101,"868,00247-0068-40 ",.02)
 ;;00247-0068-40
 ;;9002226.02101,"868,00247-0068-98 ",.01)
 ;;00247-0068-98
 ;;9002226.02101,"868,00247-0068-98 ",.02)
 ;;00247-0068-98
 ;;9002226.02101,"868,00247-0069-02 ",.01)
 ;;00247-0069-02
 ;;9002226.02101,"868,00247-0069-02 ",.02)
 ;;00247-0069-02
 ;;9002226.02101,"868,00247-0096-00 ",.01)
 ;;00247-0096-00
 ;;9002226.02101,"868,00247-0096-00 ",.02)
 ;;00247-0096-00
 ;;9002226.02101,"868,00247-0096-05 ",.01)
 ;;00247-0096-05
 ;;9002226.02101,"868,00247-0096-05 ",.02)
 ;;00247-0096-05
 ;;9002226.02101,"868,00247-0096-20 ",.01)
 ;;00247-0096-20
 ;;9002226.02101,"868,00247-0096-20 ",.02)
 ;;00247-0096-20
 ;;9002226.02101,"868,00247-0096-23 ",.01)
 ;;00247-0096-23
 ;;9002226.02101,"868,00247-0096-23 ",.02)
 ;;00247-0096-23
 ;;9002226.02101,"868,00247-0096-30 ",.01)
 ;;00247-0096-30
 ;;9002226.02101,"868,00247-0096-30 ",.02)
 ;;00247-0096-30
 ;;9002226.02101,"868,00247-0096-33 ",.01)
 ;;00247-0096-33
 ;;9002226.02101,"868,00247-0096-33 ",.02)
 ;;00247-0096-33
 ;;9002226.02101,"868,00247-0096-38 ",.01)
 ;;00247-0096-38
 ;;9002226.02101,"868,00247-0096-38 ",.02)
 ;;00247-0096-38
 ;;9002226.02101,"868,00247-0096-49 ",.01)
 ;;00247-0096-49
 ;;9002226.02101,"868,00247-0096-49 ",.02)
 ;;00247-0096-49
 ;;9002226.02101,"868,00247-0096-50 ",.01)
 ;;00247-0096-50
 ;;9002226.02101,"868,00247-0096-50 ",.02)
 ;;00247-0096-50
 ;;9002226.02101,"868,00247-0096-52 ",.01)
 ;;00247-0096-52
 ;;9002226.02101,"868,00247-0096-52 ",.02)
 ;;00247-0096-52
 ;;9002226.02101,"868,00247-0096-59 ",.01)
 ;;00247-0096-59
 ;;9002226.02101,"868,00247-0096-59 ",.02)
 ;;00247-0096-59
 ;;9002226.02101,"868,00247-0096-60 ",.01)
 ;;00247-0096-60
 ;;9002226.02101,"868,00247-0096-60 ",.02)
 ;;00247-0096-60
 ;;9002226.02101,"868,00247-0096-77 ",.01)
 ;;00247-0096-77
 ;;9002226.02101,"868,00247-0096-77 ",.02)
 ;;00247-0096-77
 ;;9002226.02101,"868,00247-0096-78 ",.01)
 ;;00247-0096-78
 ;;9002226.02101,"868,00247-0096-78 ",.02)
 ;;00247-0096-78
 ;;9002226.02101,"868,00247-0096-79 ",.01)
 ;;00247-0096-79
 ;;9002226.02101,"868,00247-0096-79 ",.02)
 ;;00247-0096-79
 ;;9002226.02101,"868,00247-0096-90 ",.01)
 ;;00247-0096-90
 ;;9002226.02101,"868,00247-0096-90 ",.02)
 ;;00247-0096-90
 ;;9002226.02101,"868,00247-0096-95 ",.01)
 ;;00247-0096-95
