BGP61D24 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,63629-2768-06 ",.01)
 ;;63629-2768-06
 ;;9002226.02101,"875,63629-2768-06 ",.02)
 ;;63629-2768-06
 ;;9002226.02101,"875,63629-2768-07 ",.01)
 ;;63629-2768-07
 ;;9002226.02101,"875,63629-2768-07 ",.02)
 ;;63629-2768-07
 ;;9002226.02101,"875,63629-2768-08 ",.01)
 ;;63629-2768-08
 ;;9002226.02101,"875,63629-2768-08 ",.02)
 ;;63629-2768-08
 ;;9002226.02101,"875,63629-3640-01 ",.01)
 ;;63629-3640-01
 ;;9002226.02101,"875,63629-3640-01 ",.02)
 ;;63629-3640-01
 ;;9002226.02101,"875,63629-3640-02 ",.01)
 ;;63629-3640-02
 ;;9002226.02101,"875,63629-3640-02 ",.02)
 ;;63629-3640-02
 ;;9002226.02101,"875,63629-3640-03 ",.01)
 ;;63629-3640-03
 ;;9002226.02101,"875,63629-3640-03 ",.02)
 ;;63629-3640-03
 ;;9002226.02101,"875,63629-3640-04 ",.01)
 ;;63629-3640-04
 ;;9002226.02101,"875,63629-3640-04 ",.02)
 ;;63629-3640-04
 ;;9002226.02101,"875,63629-3640-05 ",.01)
 ;;63629-3640-05
 ;;9002226.02101,"875,63629-3640-05 ",.02)
 ;;63629-3640-05
 ;;9002226.02101,"875,63629-3640-06 ",.01)
 ;;63629-3640-06
 ;;9002226.02101,"875,63629-3640-06 ",.02)
 ;;63629-3640-06
 ;;9002226.02101,"875,63629-3640-07 ",.01)
 ;;63629-3640-07
 ;;9002226.02101,"875,63629-3640-07 ",.02)
 ;;63629-3640-07
 ;;9002226.02101,"875,63629-3640-08 ",.01)
 ;;63629-3640-08
 ;;9002226.02101,"875,63629-3640-08 ",.02)
 ;;63629-3640-08
 ;;9002226.02101,"875,63629-3640-09 ",.01)
 ;;63629-3640-09
 ;;9002226.02101,"875,63629-3640-09 ",.02)
 ;;63629-3640-09
 ;;9002226.02101,"875,63629-4205-01 ",.01)
 ;;63629-4205-01
 ;;9002226.02101,"875,63629-4205-01 ",.02)
 ;;63629-4205-01
 ;;9002226.02101,"875,63629-4205-02 ",.01)
 ;;63629-4205-02
 ;;9002226.02101,"875,63629-4205-02 ",.02)
 ;;63629-4205-02
 ;;9002226.02101,"875,63629-4205-03 ",.01)
 ;;63629-4205-03
 ;;9002226.02101,"875,63629-4205-03 ",.02)
 ;;63629-4205-03
 ;;9002226.02101,"875,63629-4205-04 ",.01)
 ;;63629-4205-04
 ;;9002226.02101,"875,63629-4205-04 ",.02)
 ;;63629-4205-04
 ;;9002226.02101,"875,63629-4205-05 ",.01)
 ;;63629-4205-05
 ;;9002226.02101,"875,63629-4205-05 ",.02)
 ;;63629-4205-05
 ;;9002226.02101,"875,63629-4205-06 ",.01)
 ;;63629-4205-06
 ;;9002226.02101,"875,63629-4205-06 ",.02)
 ;;63629-4205-06
 ;;9002226.02101,"875,63629-4205-07 ",.01)
 ;;63629-4205-07
 ;;9002226.02101,"875,63629-4205-07 ",.02)
 ;;63629-4205-07
 ;;9002226.02101,"875,63629-4205-08 ",.01)
 ;;63629-4205-08
 ;;9002226.02101,"875,63629-4205-08 ",.02)
 ;;63629-4205-08
 ;;9002226.02101,"875,63629-4664-01 ",.01)
 ;;63629-4664-01
 ;;9002226.02101,"875,63629-4664-01 ",.02)
 ;;63629-4664-01
 ;;9002226.02101,"875,63629-4664-02 ",.01)
 ;;63629-4664-02
 ;;9002226.02101,"875,63629-4664-02 ",.02)
 ;;63629-4664-02
 ;;9002226.02101,"875,63629-4664-03 ",.01)
 ;;63629-4664-03
 ;;9002226.02101,"875,63629-4664-03 ",.02)
 ;;63629-4664-03
 ;;9002226.02101,"875,63629-4664-04 ",.01)
 ;;63629-4664-04
 ;;9002226.02101,"875,63629-4664-04 ",.02)
 ;;63629-4664-04
 ;;9002226.02101,"875,63629-4664-05 ",.01)
 ;;63629-4664-05
 ;;9002226.02101,"875,63629-4664-05 ",.02)
 ;;63629-4664-05
 ;;9002226.02101,"875,63629-4664-06 ",.01)
 ;;63629-4664-06
 ;;9002226.02101,"875,63629-4664-06 ",.02)
 ;;63629-4664-06
 ;;9002226.02101,"875,63629-4664-07 ",.01)
 ;;63629-4664-07
 ;;9002226.02101,"875,63629-4664-07 ",.02)
 ;;63629-4664-07
 ;;9002226.02101,"875,63629-4707-01 ",.01)
 ;;63629-4707-01
 ;;9002226.02101,"875,63629-4707-01 ",.02)
 ;;63629-4707-01
 ;;9002226.02101,"875,63629-4707-02 ",.01)
 ;;63629-4707-02
 ;;9002226.02101,"875,63629-4707-02 ",.02)
 ;;63629-4707-02
 ;;9002226.02101,"875,63629-4707-03 ",.01)
 ;;63629-4707-03
 ;;9002226.02101,"875,63629-4707-03 ",.02)
 ;;63629-4707-03
 ;;9002226.02101,"875,63629-4707-04 ",.01)
 ;;63629-4707-04
 ;;9002226.02101,"875,63629-4707-04 ",.02)
 ;;63629-4707-04
 ;;9002226.02101,"875,63739-0049-10 ",.01)
 ;;63739-0049-10
 ;;9002226.02101,"875,63739-0049-10 ",.02)
 ;;63739-0049-10
 ;;9002226.02101,"875,63739-0066-10 ",.01)
 ;;63739-0066-10
 ;;9002226.02101,"875,63739-0066-10 ",.02)
 ;;63739-0066-10
 ;;9002226.02101,"875,63739-0166-10 ",.01)
 ;;63739-0166-10
 ;;9002226.02101,"875,63739-0166-10 ",.02)
 ;;63739-0166-10
 ;;9002226.02101,"875,63739-0167-10 ",.01)
 ;;63739-0167-10
 ;;9002226.02101,"875,63739-0167-10 ",.02)
 ;;63739-0167-10
 ;;9002226.02101,"875,63739-0531-10 ",.01)
 ;;63739-0531-10
 ;;9002226.02101,"875,63739-0531-10 ",.02)
 ;;63739-0531-10
 ;;9002226.02101,"875,63874-0315-01 ",.01)
 ;;63874-0315-01
 ;;9002226.02101,"875,63874-0315-01 ",.02)
 ;;63874-0315-01
 ;;9002226.02101,"875,63874-0315-02 ",.01)
 ;;63874-0315-02
 ;;9002226.02101,"875,63874-0315-02 ",.02)
 ;;63874-0315-02
 ;;9002226.02101,"875,63874-0315-04 ",.01)
 ;;63874-0315-04
 ;;9002226.02101,"875,63874-0315-04 ",.02)
 ;;63874-0315-04
 ;;9002226.02101,"875,63874-0315-05 ",.01)
 ;;63874-0315-05
 ;;9002226.02101,"875,63874-0315-05 ",.02)
 ;;63874-0315-05
 ;;9002226.02101,"875,63874-0315-07 ",.01)
 ;;63874-0315-07
 ;;9002226.02101,"875,63874-0315-07 ",.02)
 ;;63874-0315-07
 ;;9002226.02101,"875,63874-0315-10 ",.01)
 ;;63874-0315-10
 ;;9002226.02101,"875,63874-0315-10 ",.02)
 ;;63874-0315-10
 ;;9002226.02101,"875,63874-0315-12 ",.01)
 ;;63874-0315-12
 ;;9002226.02101,"875,63874-0315-12 ",.02)
 ;;63874-0315-12
 ;;9002226.02101,"875,63874-0315-14 ",.01)
 ;;63874-0315-14
 ;;9002226.02101,"875,63874-0315-14 ",.02)
 ;;63874-0315-14
 ;;9002226.02101,"875,63874-0315-15 ",.01)
 ;;63874-0315-15
 ;;9002226.02101,"875,63874-0315-15 ",.02)
 ;;63874-0315-15
 ;;9002226.02101,"875,63874-0315-18 ",.01)
 ;;63874-0315-18
 ;;9002226.02101,"875,63874-0315-18 ",.02)
 ;;63874-0315-18
 ;;9002226.02101,"875,63874-0315-20 ",.01)
 ;;63874-0315-20
 ;;9002226.02101,"875,63874-0315-20 ",.02)
 ;;63874-0315-20
 ;;9002226.02101,"875,63874-0315-21 ",.01)
 ;;63874-0315-21
 ;;9002226.02101,"875,63874-0315-21 ",.02)
 ;;63874-0315-21
 ;;9002226.02101,"875,63874-0315-24 ",.01)
 ;;63874-0315-24
 ;;9002226.02101,"875,63874-0315-24 ",.02)
 ;;63874-0315-24
 ;;9002226.02101,"875,63874-0315-25 ",.01)
 ;;63874-0315-25
 ;;9002226.02101,"875,63874-0315-25 ",.02)
 ;;63874-0315-25
 ;;9002226.02101,"875,63874-0315-28 ",.01)
 ;;63874-0315-28
 ;;9002226.02101,"875,63874-0315-28 ",.02)
 ;;63874-0315-28
 ;;9002226.02101,"875,63874-0315-30 ",.01)
 ;;63874-0315-30
 ;;9002226.02101,"875,63874-0315-30 ",.02)
 ;;63874-0315-30
 ;;9002226.02101,"875,63874-0315-35 ",.01)
 ;;63874-0315-35
 ;;9002226.02101,"875,63874-0315-35 ",.02)
 ;;63874-0315-35
 ;;9002226.02101,"875,63874-0315-40 ",.01)
 ;;63874-0315-40
 ;;9002226.02101,"875,63874-0315-40 ",.02)
 ;;63874-0315-40
 ;;9002226.02101,"875,63874-0315-42 ",.01)
 ;;63874-0315-42
 ;;9002226.02101,"875,63874-0315-42 ",.02)
 ;;63874-0315-42
 ;;9002226.02101,"875,63874-0315-45 ",.01)
 ;;63874-0315-45
 ;;9002226.02101,"875,63874-0315-45 ",.02)
 ;;63874-0315-45
 ;;9002226.02101,"875,63874-0315-50 ",.01)
 ;;63874-0315-50
 ;;9002226.02101,"875,63874-0315-50 ",.02)
 ;;63874-0315-50
 ;;9002226.02101,"875,63874-0315-56 ",.01)
 ;;63874-0315-56
 ;;9002226.02101,"875,63874-0315-56 ",.02)
 ;;63874-0315-56
 ;;9002226.02101,"875,63874-0315-60 ",.01)
 ;;63874-0315-60
 ;;9002226.02101,"875,63874-0315-60 ",.02)
 ;;63874-0315-60
 ;;9002226.02101,"875,63874-0315-75 ",.01)
 ;;63874-0315-75
 ;;9002226.02101,"875,63874-0315-75 ",.02)
 ;;63874-0315-75
 ;;9002226.02101,"875,63874-0315-76 ",.01)
 ;;63874-0315-76
 ;;9002226.02101,"875,63874-0315-76 ",.02)
 ;;63874-0315-76
 ;;9002226.02101,"875,63874-0315-80 ",.01)
 ;;63874-0315-80
 ;;9002226.02101,"875,63874-0315-80 ",.02)
 ;;63874-0315-80
 ;;9002226.02101,"875,63874-0315-90 ",.01)
 ;;63874-0315-90
 ;;9002226.02101,"875,63874-0315-90 ",.02)
 ;;63874-0315-90
 ;;9002226.02101,"875,63874-0330-01 ",.01)
 ;;63874-0330-01
 ;;9002226.02101,"875,63874-0330-01 ",.02)
 ;;63874-0330-01
 ;;9002226.02101,"875,63874-0330-02 ",.01)
 ;;63874-0330-02
 ;;9002226.02101,"875,63874-0330-02 ",.02)
 ;;63874-0330-02
 ;;9002226.02101,"875,63874-0330-03 ",.01)
 ;;63874-0330-03
 ;;9002226.02101,"875,63874-0330-03 ",.02)
 ;;63874-0330-03
 ;;9002226.02101,"875,63874-0330-04 ",.01)
 ;;63874-0330-04
 ;;9002226.02101,"875,63874-0330-04 ",.02)
 ;;63874-0330-04
 ;;9002226.02101,"875,63874-0330-05 ",.01)
 ;;63874-0330-05
 ;;9002226.02101,"875,63874-0330-05 ",.02)
 ;;63874-0330-05
 ;;9002226.02101,"875,63874-0330-07 ",.01)
 ;;63874-0330-07
 ;;9002226.02101,"875,63874-0330-07 ",.02)
 ;;63874-0330-07
 ;;9002226.02101,"875,63874-0330-10 ",.01)
 ;;63874-0330-10
 ;;9002226.02101,"875,63874-0330-10 ",.02)
 ;;63874-0330-10
 ;;9002226.02101,"875,63874-0330-11 ",.01)
 ;;63874-0330-11
 ;;9002226.02101,"875,63874-0330-11 ",.02)
 ;;63874-0330-11
 ;;9002226.02101,"875,63874-0330-12 ",.01)
 ;;63874-0330-12
 ;;9002226.02101,"875,63874-0330-12 ",.02)
 ;;63874-0330-12
 ;;9002226.02101,"875,63874-0330-14 ",.01)
 ;;63874-0330-14
 ;;9002226.02101,"875,63874-0330-14 ",.02)
 ;;63874-0330-14
 ;;9002226.02101,"875,63874-0330-15 ",.01)
 ;;63874-0330-15
 ;;9002226.02101,"875,63874-0330-15 ",.02)
 ;;63874-0330-15
 ;;9002226.02101,"875,63874-0330-16 ",.01)
 ;;63874-0330-16
 ;;9002226.02101,"875,63874-0330-16 ",.02)
 ;;63874-0330-16
 ;;9002226.02101,"875,63874-0330-18 ",.01)
 ;;63874-0330-18
 ;;9002226.02101,"875,63874-0330-18 ",.02)
 ;;63874-0330-18
 ;;9002226.02101,"875,63874-0330-20 ",.01)
 ;;63874-0330-20
 ;;9002226.02101,"875,63874-0330-20 ",.02)
 ;;63874-0330-20
 ;;9002226.02101,"875,63874-0330-21 ",.01)
 ;;63874-0330-21
 ;;9002226.02101,"875,63874-0330-21 ",.02)
 ;;63874-0330-21
 ;;9002226.02101,"875,63874-0330-24 ",.01)
 ;;63874-0330-24
 ;;9002226.02101,"875,63874-0330-24 ",.02)
 ;;63874-0330-24
 ;;9002226.02101,"875,63874-0330-25 ",.01)
 ;;63874-0330-25
 ;;9002226.02101,"875,63874-0330-25 ",.02)
 ;;63874-0330-25
 ;;9002226.02101,"875,63874-0330-28 ",.01)
 ;;63874-0330-28
 ;;9002226.02101,"875,63874-0330-28 ",.02)
 ;;63874-0330-28
 ;;9002226.02101,"875,63874-0330-30 ",.01)
 ;;63874-0330-30
 ;;9002226.02101,"875,63874-0330-30 ",.02)
 ;;63874-0330-30
 ;;9002226.02101,"875,63874-0330-40 ",.01)
 ;;63874-0330-40
 ;;9002226.02101,"875,63874-0330-40 ",.02)
 ;;63874-0330-40
 ;;9002226.02101,"875,63874-0330-42 ",.01)
 ;;63874-0330-42
 ;;9002226.02101,"875,63874-0330-42 ",.02)
 ;;63874-0330-42
 ;;9002226.02101,"875,63874-0330-45 ",.01)
 ;;63874-0330-45
 ;;9002226.02101,"875,63874-0330-45 ",.02)
 ;;63874-0330-45
 ;;9002226.02101,"875,63874-0330-50 ",.01)
 ;;63874-0330-50
 ;;9002226.02101,"875,63874-0330-50 ",.02)
 ;;63874-0330-50
 ;;9002226.02101,"875,63874-0330-56 ",.01)
 ;;63874-0330-56
 ;;9002226.02101,"875,63874-0330-56 ",.02)
 ;;63874-0330-56
 ;;9002226.02101,"875,63874-0330-60 ",.01)
 ;;63874-0330-60
 ;;9002226.02101,"875,63874-0330-60 ",.02)
 ;;63874-0330-60
 ;;9002226.02101,"875,63874-0330-72 ",.01)
 ;;63874-0330-72
 ;;9002226.02101,"875,63874-0330-72 ",.02)
 ;;63874-0330-72
 ;;9002226.02101,"875,63874-0330-74 ",.01)
 ;;63874-0330-74
 ;;9002226.02101,"875,63874-0330-74 ",.02)
 ;;63874-0330-74
 ;;9002226.02101,"875,63874-0330-75 ",.01)
 ;;63874-0330-75
 ;;9002226.02101,"875,63874-0330-75 ",.02)
 ;;63874-0330-75
 ;;9002226.02101,"875,63874-0330-77 ",.01)
 ;;63874-0330-77
 ;;9002226.02101,"875,63874-0330-77 ",.02)
 ;;63874-0330-77
 ;;9002226.02101,"875,63874-0330-80 ",.01)
 ;;63874-0330-80
 ;;9002226.02101,"875,63874-0330-80 ",.02)
 ;;63874-0330-80
 ;;9002226.02101,"875,63874-0330-84 ",.01)
 ;;63874-0330-84
 ;;9002226.02101,"875,63874-0330-84 ",.02)
 ;;63874-0330-84
 ;;9002226.02101,"875,63874-0330-90 ",.01)
 ;;63874-0330-90
 ;;9002226.02101,"875,63874-0330-90 ",.02)
 ;;63874-0330-90
 ;;9002226.02101,"875,63874-0371-01 ",.01)
 ;;63874-0371-01
 ;;9002226.02101,"875,63874-0371-01 ",.02)
 ;;63874-0371-01
 ;;9002226.02101,"875,63874-0371-03 ",.01)
 ;;63874-0371-03
 ;;9002226.02101,"875,63874-0371-03 ",.02)
 ;;63874-0371-03
 ;;9002226.02101,"875,63874-0371-04 ",.01)
 ;;63874-0371-04
 ;;9002226.02101,"875,63874-0371-04 ",.02)
 ;;63874-0371-04
 ;;9002226.02101,"875,63874-0371-12 ",.01)
 ;;63874-0371-12
 ;;9002226.02101,"875,63874-0371-12 ",.02)
 ;;63874-0371-12
 ;;9002226.02101,"875,63874-0371-14 ",.01)
 ;;63874-0371-14
 ;;9002226.02101,"875,63874-0371-14 ",.02)
 ;;63874-0371-14
 ;;9002226.02101,"875,63874-0371-15 ",.01)
 ;;63874-0371-15
 ;;9002226.02101,"875,63874-0371-15 ",.02)
 ;;63874-0371-15
 ;;9002226.02101,"875,63874-0371-20 ",.01)
 ;;63874-0371-20
 ;;9002226.02101,"875,63874-0371-20 ",.02)
 ;;63874-0371-20
 ;;9002226.02101,"875,63874-0371-24 ",.01)
 ;;63874-0371-24
 ;;9002226.02101,"875,63874-0371-24 ",.02)
 ;;63874-0371-24
 ;;9002226.02101,"875,63874-0371-30 ",.01)
 ;;63874-0371-30
