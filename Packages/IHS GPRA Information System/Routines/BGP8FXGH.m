BGP8FXGH ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
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
 ;;9002226.02101,"624,58016-0821-10 ",.01)
 ;;58016-0821-10
 ;;9002226.02101,"624,58016-0821-10 ",.02)
 ;;58016-0821-10
 ;;9002226.02101,"624,58016-0821-12 ",.01)
 ;;58016-0821-12
 ;;9002226.02101,"624,58016-0821-12 ",.02)
 ;;58016-0821-12
 ;;9002226.02101,"624,58016-0821-14 ",.01)
 ;;58016-0821-14
 ;;9002226.02101,"624,58016-0821-14 ",.02)
 ;;58016-0821-14
 ;;9002226.02101,"624,58016-0821-15 ",.01)
 ;;58016-0821-15
 ;;9002226.02101,"624,58016-0821-15 ",.02)
 ;;58016-0821-15
 ;;9002226.02101,"624,58016-0821-20 ",.01)
 ;;58016-0821-20
 ;;9002226.02101,"624,58016-0821-20 ",.02)
 ;;58016-0821-20
 ;;9002226.02101,"624,58016-0821-21 ",.01)
 ;;58016-0821-21
 ;;9002226.02101,"624,58016-0821-21 ",.02)
 ;;58016-0821-21
 ;;9002226.02101,"624,58016-0821-24 ",.01)
 ;;58016-0821-24
 ;;9002226.02101,"624,58016-0821-24 ",.02)
 ;;58016-0821-24
 ;;9002226.02101,"624,58016-0821-25 ",.01)
 ;;58016-0821-25
 ;;9002226.02101,"624,58016-0821-25 ",.02)
 ;;58016-0821-25
 ;;9002226.02101,"624,58016-0821-28 ",.01)
 ;;58016-0821-28
 ;;9002226.02101,"624,58016-0821-28 ",.02)
 ;;58016-0821-28
 ;;9002226.02101,"624,58016-0821-30 ",.01)
 ;;58016-0821-30
 ;;9002226.02101,"624,58016-0821-30 ",.02)
 ;;58016-0821-30
 ;;9002226.02101,"624,58016-0821-40 ",.01)
 ;;58016-0821-40
 ;;9002226.02101,"624,58016-0821-40 ",.02)
 ;;58016-0821-40
 ;;9002226.02101,"624,58016-0821-50 ",.01)
 ;;58016-0821-50
 ;;9002226.02101,"624,58016-0821-50 ",.02)
 ;;58016-0821-50
 ;;9002226.02101,"624,58016-0821-60 ",.01)
 ;;58016-0821-60
 ;;9002226.02101,"624,58016-0821-60 ",.02)
 ;;58016-0821-60
 ;;9002226.02101,"624,58016-0822-00 ",.01)
 ;;58016-0822-00
 ;;9002226.02101,"624,58016-0822-00 ",.02)
 ;;58016-0822-00
 ;;9002226.02101,"624,58016-0822-12 ",.01)
 ;;58016-0822-12
 ;;9002226.02101,"624,58016-0822-12 ",.02)
 ;;58016-0822-12
 ;;9002226.02101,"624,58016-0822-15 ",.01)
 ;;58016-0822-15
 ;;9002226.02101,"624,58016-0822-15 ",.02)
 ;;58016-0822-15
 ;;9002226.02101,"624,58016-0822-20 ",.01)
 ;;58016-0822-20
 ;;9002226.02101,"624,58016-0822-20 ",.02)
 ;;58016-0822-20
 ;;9002226.02101,"624,58016-0822-30 ",.01)
 ;;58016-0822-30
 ;;9002226.02101,"624,58016-0822-30 ",.02)
 ;;58016-0822-30
 ;;9002226.02101,"624,58016-0996-00 ",.01)
 ;;58016-0996-00
 ;;9002226.02101,"624,58016-0996-00 ",.02)
 ;;58016-0996-00
 ;;9002226.02101,"624,58016-0996-30 ",.01)
 ;;58016-0996-30
 ;;9002226.02101,"624,58016-0996-30 ",.02)
 ;;58016-0996-30
 ;;9002226.02101,"624,58016-0996-60 ",.01)
 ;;58016-0996-60
 ;;9002226.02101,"624,58016-0996-60 ",.02)
 ;;58016-0996-60
 ;;9002226.02101,"624,58016-0996-90 ",.01)
 ;;58016-0996-90
 ;;9002226.02101,"624,58016-0996-90 ",.02)
 ;;58016-0996-90
 ;;9002226.02101,"624,59075-0650-20 ",.01)
 ;;59075-0650-20
 ;;9002226.02101,"624,59075-0650-20 ",.02)
 ;;59075-0650-20
 ;;9002226.02101,"624,59075-0651-20 ",.01)
 ;;59075-0651-20
 ;;9002226.02101,"624,59075-0651-20 ",.02)
 ;;59075-0651-20
 ;;9002226.02101,"624,59075-0652-20 ",.01)
 ;;59075-0652-20
 ;;9002226.02101,"624,59075-0652-20 ",.02)
 ;;59075-0652-20
 ;;9002226.02101,"624,59075-0653-20 ",.01)
 ;;59075-0653-20
 ;;9002226.02101,"624,59075-0653-20 ",.02)
 ;;59075-0653-20
 ;;9002226.02101,"624,59075-0654-20 ",.01)
 ;;59075-0654-20
 ;;9002226.02101,"624,59075-0654-20 ",.02)
 ;;59075-0654-20
 ;;9002226.02101,"624,59075-0655-20 ",.01)
 ;;59075-0655-20
 ;;9002226.02101,"624,59075-0655-20 ",.02)
 ;;59075-0655-20
 ;;9002226.02101,"624,60760-0775-30 ",.01)
 ;;60760-0775-30
 ;;9002226.02101,"624,60760-0775-30 ",.02)
 ;;60760-0775-30
 ;;9002226.02101,"624,60809-0510-55 ",.01)
 ;;60809-0510-55
 ;;9002226.02101,"624,60809-0510-55 ",.02)
 ;;60809-0510-55
 ;;9002226.02101,"624,60809-0510-72 ",.01)
 ;;60809-0510-72
 ;;9002226.02101,"624,60809-0510-72 ",.02)
 ;;60809-0510-72
 ;;9002226.02101,"624,60809-0511-55 ",.01)
 ;;60809-0511-55
 ;;9002226.02101,"624,60809-0511-55 ",.02)
 ;;60809-0511-55
 ;;9002226.02101,"624,60809-0511-72 ",.01)
 ;;60809-0511-72
 ;;9002226.02101,"624,60809-0511-72 ",.02)
 ;;60809-0511-72
 ;;9002226.02101,"624,61392-0721-30 ",.01)
 ;;61392-0721-30
 ;;9002226.02101,"624,61392-0721-30 ",.02)
 ;;61392-0721-30
 ;;9002226.02101,"624,61392-0721-31 ",.01)
 ;;61392-0721-31
 ;;9002226.02101,"624,61392-0721-31 ",.02)
 ;;61392-0721-31
 ;;9002226.02101,"624,61392-0721-32 ",.01)
 ;;61392-0721-32
 ;;9002226.02101,"624,61392-0721-32 ",.02)
 ;;61392-0721-32
 ;;9002226.02101,"624,61392-0721-39 ",.01)
 ;;61392-0721-39
 ;;9002226.02101,"624,61392-0721-39 ",.02)
 ;;61392-0721-39
 ;;9002226.02101,"624,61392-0721-45 ",.01)
 ;;61392-0721-45
 ;;9002226.02101,"624,61392-0721-45 ",.02)
 ;;61392-0721-45
 ;;9002226.02101,"624,61392-0721-51 ",.01)
 ;;61392-0721-51
 ;;9002226.02101,"624,61392-0721-51 ",.02)
 ;;61392-0721-51
 ;;9002226.02101,"624,61392-0721-54 ",.01)
 ;;61392-0721-54
 ;;9002226.02101,"624,61392-0721-54 ",.02)
 ;;61392-0721-54
 ;;9002226.02101,"624,61392-0721-60 ",.01)
 ;;61392-0721-60
 ;;9002226.02101,"624,61392-0721-60 ",.02)
 ;;61392-0721-60
 ;;9002226.02101,"624,61392-0721-90 ",.01)
 ;;61392-0721-90
 ;;9002226.02101,"624,61392-0721-90 ",.02)
 ;;61392-0721-90
 ;;9002226.02101,"624,61392-0721-91 ",.01)
 ;;61392-0721-91
 ;;9002226.02101,"624,61392-0721-91 ",.02)
 ;;61392-0721-91
 ;;9002226.02101,"624,63574-0228-01 ",.01)
 ;;63574-0228-01
 ;;9002226.02101,"624,63574-0228-01 ",.02)
 ;;63574-0228-01
 ;;9002226.02101,"624,63574-0228-02 ",.01)
 ;;63574-0228-02
 ;;9002226.02101,"624,63574-0228-02 ",.02)
 ;;63574-0228-02
 ;;9002226.02101,"624,63574-0228-04 ",.01)
 ;;63574-0228-04
 ;;9002226.02101,"624,63574-0228-04 ",.02)
 ;;63574-0228-04
 ;;9002226.02101,"624,63574-0228-06 ",.01)
 ;;63574-0228-06
 ;;9002226.02101,"624,63574-0228-06 ",.02)
 ;;63574-0228-06
 ;;9002226.02101,"624,63574-0228-09 ",.01)
 ;;63574-0228-09
 ;;9002226.02101,"624,63574-0228-09 ",.02)
 ;;63574-0228-09
 ;;9002226.02101,"624,63574-0228-10 ",.01)
 ;;63574-0228-10
 ;;9002226.02101,"624,63574-0228-10 ",.02)
 ;;63574-0228-10
 ;;9002226.02101,"624,63574-0228-12 ",.01)
 ;;63574-0228-12
 ;;9002226.02101,"624,63574-0228-12 ",.02)
 ;;63574-0228-12
 ;;9002226.02101,"624,63574-0228-15 ",.01)
 ;;63574-0228-15
 ;;9002226.02101,"624,63574-0228-15 ",.02)
 ;;63574-0228-15
 ;;9002226.02101,"624,63574-0228-20 ",.01)
 ;;63574-0228-20
 ;;9002226.02101,"624,63574-0228-20 ",.02)
 ;;63574-0228-20
 ;;9002226.02101,"624,63574-0228-28 ",.01)
 ;;63574-0228-28
 ;;9002226.02101,"624,63574-0228-28 ",.02)
 ;;63574-0228-28
 ;;9002226.02101,"624,63574-0228-30 ",.01)
 ;;63574-0228-30
 ;;9002226.02101,"624,63574-0228-30 ",.02)
 ;;63574-0228-30
 ;;9002226.02101,"624,63574-0228-40 ",.01)
 ;;63574-0228-40
 ;;9002226.02101,"624,63574-0228-40 ",.02)
 ;;63574-0228-40
 ;;9002226.02101,"624,63574-0228-60 ",.01)
 ;;63574-0228-60
 ;;9002226.02101,"624,63574-0228-60 ",.02)
 ;;63574-0228-60
 ;;9002226.02101,"624,63574-0228-72 ",.01)
 ;;63574-0228-72
 ;;9002226.02101,"624,63574-0228-72 ",.02)
 ;;63574-0228-72
 ;;9002226.02101,"624,63574-0228-74 ",.01)
 ;;63574-0228-74
 ;;9002226.02101,"624,63574-0228-74 ",.02)
 ;;63574-0228-74
 ;;9002226.02101,"624,63574-0228-77 ",.01)
 ;;63574-0228-77
 ;;9002226.02101,"624,63574-0228-77 ",.02)
 ;;63574-0228-77
 ;;9002226.02101,"624,63574-0228-90 ",.01)
 ;;63574-0228-90
 ;;9002226.02101,"624,63574-0228-90 ",.02)
 ;;63574-0228-90
 ;;9002226.02101,"624,63584-0228-09 ",.01)
 ;;63584-0228-09
 ;;9002226.02101,"624,63584-0228-09 ",.02)
 ;;63584-0228-09
 ;;9002226.02101,"624,63874-0213-01 ",.01)
 ;;63874-0213-01
 ;;9002226.02101,"624,63874-0213-01 ",.02)
 ;;63874-0213-01
 ;;9002226.02101,"624,63874-0213-05 ",.01)
 ;;63874-0213-05
 ;;9002226.02101,"624,63874-0213-05 ",.02)
 ;;63874-0213-05
 ;;9002226.02101,"624,63874-0213-12 ",.01)
 ;;63874-0213-12
 ;;9002226.02101,"624,63874-0213-12 ",.02)
 ;;63874-0213-12
 ;;9002226.02101,"624,63874-0213-15 ",.01)
 ;;63874-0213-15
 ;;9002226.02101,"624,63874-0213-15 ",.02)
 ;;63874-0213-15
 ;;9002226.02101,"624,63874-0213-20 ",.01)
 ;;63874-0213-20
 ;;9002226.02101,"624,63874-0213-20 ",.02)
 ;;63874-0213-20
 ;;9002226.02101,"624,63874-0213-30 ",.01)
 ;;63874-0213-30
 ;;9002226.02101,"624,63874-0213-30 ",.02)
 ;;63874-0213-30
 ;;9002226.02101,"624,63874-0213-40 ",.01)
 ;;63874-0213-40
 ;;9002226.02101,"624,63874-0213-40 ",.02)
 ;;63874-0213-40
 ;;9002226.02101,"624,63874-0214-01 ",.01)
 ;;63874-0214-01
 ;;9002226.02101,"624,63874-0214-01 ",.02)
 ;;63874-0214-01
 ;;9002226.02101,"624,63874-0214-06 ",.01)
 ;;63874-0214-06
 ;;9002226.02101,"624,63874-0214-06 ",.02)
 ;;63874-0214-06
 ;;9002226.02101,"624,63874-0214-09 ",.01)
 ;;63874-0214-09
 ;;9002226.02101,"624,63874-0214-09 ",.02)
 ;;63874-0214-09
 ;;9002226.02101,"624,63874-0214-10 ",.01)
 ;;63874-0214-10
 ;;9002226.02101,"624,63874-0214-10 ",.02)
 ;;63874-0214-10
 ;;9002226.02101,"624,63874-0214-12 ",.01)
 ;;63874-0214-12
 ;;9002226.02101,"624,63874-0214-12 ",.02)
 ;;63874-0214-12
 ;;9002226.02101,"624,63874-0214-14 ",.01)
 ;;63874-0214-14
 ;;9002226.02101,"624,63874-0214-14 ",.02)
 ;;63874-0214-14
 ;;9002226.02101,"624,63874-0214-15 ",.01)
 ;;63874-0214-15
 ;;9002226.02101,"624,63874-0214-15 ",.02)
 ;;63874-0214-15
 ;;9002226.02101,"624,63874-0214-20 ",.01)
 ;;63874-0214-20
 ;;9002226.02101,"624,63874-0214-20 ",.02)
 ;;63874-0214-20
 ;;9002226.02101,"624,63874-0214-21 ",.01)
 ;;63874-0214-21
 ;;9002226.02101,"624,63874-0214-21 ",.02)
 ;;63874-0214-21
 ;;9002226.02101,"624,63874-0214-24 ",.01)
 ;;63874-0214-24
 ;;9002226.02101,"624,63874-0214-24 ",.02)
 ;;63874-0214-24
 ;;9002226.02101,"624,63874-0214-30 ",.01)
 ;;63874-0214-30
 ;;9002226.02101,"624,63874-0214-30 ",.02)
 ;;63874-0214-30
 ;;9002226.02101,"624,63874-0214-60 ",.01)
 ;;63874-0214-60
 ;;9002226.02101,"624,63874-0214-60 ",.02)
 ;;63874-0214-60
 ;;9002226.02101,"624,63874-0226-01 ",.01)
 ;;63874-0226-01
 ;;9002226.02101,"624,63874-0226-01 ",.02)
 ;;63874-0226-01
 ;;9002226.02101,"624,63874-0226-02 ",.01)
 ;;63874-0226-02
 ;;9002226.02101,"624,63874-0226-02 ",.02)
 ;;63874-0226-02
 ;;9002226.02101,"624,63874-0226-04 ",.01)
 ;;63874-0226-04
 ;;9002226.02101,"624,63874-0226-04 ",.02)
 ;;63874-0226-04
 ;;9002226.02101,"624,63874-0226-10 ",.01)
 ;;63874-0226-10
 ;;9002226.02101,"624,63874-0226-10 ",.02)
 ;;63874-0226-10
 ;;9002226.02101,"624,63874-0226-12 ",.01)
 ;;63874-0226-12
 ;;9002226.02101,"624,63874-0226-12 ",.02)
 ;;63874-0226-12
 ;;9002226.02101,"624,63874-0226-15 ",.01)
 ;;63874-0226-15
 ;;9002226.02101,"624,63874-0226-15 ",.02)
 ;;63874-0226-15
 ;;9002226.02101,"624,63874-0226-20 ",.01)
 ;;63874-0226-20
 ;;9002226.02101,"624,63874-0226-20 ",.02)
 ;;63874-0226-20
 ;;9002226.02101,"624,63874-0226-28 ",.01)
 ;;63874-0226-28
 ;;9002226.02101,"624,63874-0226-28 ",.02)
 ;;63874-0226-28
 ;;9002226.02101,"624,63874-0226-30 ",.01)
 ;;63874-0226-30
 ;;9002226.02101,"624,63874-0226-30 ",.02)
 ;;63874-0226-30
 ;;9002226.02101,"624,63874-0226-60 ",.01)
 ;;63874-0226-60
 ;;9002226.02101,"624,63874-0226-60 ",.02)
 ;;63874-0226-60
 ;;9002226.02101,"624,63874-0226-90 ",.01)
 ;;63874-0226-90
 ;;9002226.02101,"624,63874-0226-90 ",.02)
 ;;63874-0226-90
 ;;9002226.02101,"624,63874-0227-01 ",.01)
 ;;63874-0227-01
 ;;9002226.02101,"624,63874-0227-01 ",.02)
 ;;63874-0227-01
 ;;9002226.02101,"624,63874-0227-02 ",.01)
 ;;63874-0227-02
 ;;9002226.02101,"624,63874-0227-02 ",.02)
 ;;63874-0227-02
 ;;9002226.02101,"624,63874-0227-04 ",.01)
 ;;63874-0227-04
 ;;9002226.02101,"624,63874-0227-04 ",.02)
 ;;63874-0227-04
 ;;9002226.02101,"624,63874-0227-05 ",.01)
 ;;63874-0227-05
 ;;9002226.02101,"624,63874-0227-05 ",.02)
 ;;63874-0227-05
 ;;9002226.02101,"624,63874-0227-06 ",.01)
 ;;63874-0227-06
 ;;9002226.02101,"624,63874-0227-06 ",.02)
 ;;63874-0227-06
 ;;9002226.02101,"624,63874-0227-08 ",.01)
 ;;63874-0227-08
 ;;9002226.02101,"624,63874-0227-08 ",.02)
 ;;63874-0227-08
 ;;9002226.02101,"624,63874-0227-09 ",.01)
 ;;63874-0227-09
 ;;9002226.02101,"624,63874-0227-09 ",.02)
 ;;63874-0227-09
 ;;9002226.02101,"624,63874-0227-10 ",.01)
 ;;63874-0227-10
 ;;9002226.02101,"624,63874-0227-10 ",.02)
 ;;63874-0227-10
 ;;9002226.02101,"624,63874-0227-12 ",.01)
 ;;63874-0227-12
 ;;9002226.02101,"624,63874-0227-12 ",.02)
 ;;63874-0227-12
 ;;9002226.02101,"624,63874-0227-14 ",.01)
 ;;63874-0227-14
 ;;9002226.02101,"624,63874-0227-14 ",.02)
 ;;63874-0227-14
 ;;9002226.02101,"624,63874-0227-15 ",.01)
 ;;63874-0227-15
 ;;9002226.02101,"624,63874-0227-15 ",.02)
 ;;63874-0227-15
 ;;9002226.02101,"624,63874-0227-16 ",.01)
 ;;63874-0227-16
 ;;9002226.02101,"624,63874-0227-16 ",.02)
 ;;63874-0227-16
 ;;9002226.02101,"624,63874-0227-18 ",.01)
 ;;63874-0227-18
 ;;9002226.02101,"624,63874-0227-18 ",.02)
 ;;63874-0227-18
 ;;9002226.02101,"624,63874-0227-20 ",.01)
 ;;63874-0227-20
 ;;9002226.02101,"624,63874-0227-20 ",.02)
 ;;63874-0227-20
 ;;9002226.02101,"624,63874-0227-21 ",.01)
 ;;63874-0227-21
 ;;9002226.02101,"624,63874-0227-21 ",.02)
 ;;63874-0227-21
 ;;9002226.02101,"624,63874-0227-24 ",.01)
 ;;63874-0227-24
 ;;9002226.02101,"624,63874-0227-24 ",.02)
 ;;63874-0227-24
 ;;9002226.02101,"624,63874-0227-28 ",.01)
 ;;63874-0227-28
 ;;9002226.02101,"624,63874-0227-28 ",.02)
 ;;63874-0227-28
 ;;9002226.02101,"624,63874-0227-30 ",.01)
 ;;63874-0227-30
 ;;9002226.02101,"624,63874-0227-30 ",.02)
 ;;63874-0227-30
 ;;9002226.02101,"624,63874-0227-36 ",.01)
 ;;63874-0227-36
 ;;9002226.02101,"624,63874-0227-36 ",.02)
 ;;63874-0227-36
 ;;9002226.02101,"624,63874-0227-40 ",.01)
 ;;63874-0227-40
 ;;9002226.02101,"624,63874-0227-40 ",.02)
 ;;63874-0227-40
 ;;9002226.02101,"624,63874-0227-50 ",.01)
 ;;63874-0227-50
