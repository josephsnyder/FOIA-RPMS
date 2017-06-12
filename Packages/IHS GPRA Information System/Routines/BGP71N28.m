BGP71N28 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 30, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,66267-0560-90 ",.02)
 ;;66267-0560-90
 ;;9002226.02101,"1799,66267-0680-30 ",.01)
 ;;66267-0680-30
 ;;9002226.02101,"1799,66267-0680-30 ",.02)
 ;;66267-0680-30
 ;;9002226.02101,"1799,66267-0723-30 ",.01)
 ;;66267-0723-30
 ;;9002226.02101,"1799,66267-0723-30 ",.02)
 ;;66267-0723-30
 ;;9002226.02101,"1799,66267-1006-00 ",.01)
 ;;66267-1006-00
 ;;9002226.02101,"1799,66267-1006-00 ",.02)
 ;;66267-1006-00
 ;;9002226.02101,"1799,66336-0027-62 ",.01)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-62 ",.02)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-94 ",.01)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0027-94 ",.02)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0056-60 ",.01)
 ;;66336-0056-60
 ;;9002226.02101,"1799,66336-0056-60 ",.02)
 ;;66336-0056-60
 ;;9002226.02101,"1799,66336-0224-30 ",.01)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-30 ",.02)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-60 ",.01)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0224-60 ",.02)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0354-62 ",.01)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0354-62 ",.02)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0460-03 ",.01)
 ;;66336-0460-03
 ;;9002226.02101,"1799,66336-0460-03 ",.02)
 ;;66336-0460-03
 ;;9002226.02101,"1799,66336-0460-10 ",.01)
 ;;66336-0460-10
 ;;9002226.02101,"1799,66336-0460-10 ",.02)
 ;;66336-0460-10
 ;;9002226.02101,"1799,66336-0460-20 ",.01)
 ;;66336-0460-20
 ;;9002226.02101,"1799,66336-0460-20 ",.02)
 ;;66336-0460-20
 ;;9002226.02101,"1799,66336-0460-30 ",.01)
 ;;66336-0460-30
 ;;9002226.02101,"1799,66336-0460-30 ",.02)
 ;;66336-0460-30
 ;;9002226.02101,"1799,66336-0460-60 ",.01)
 ;;66336-0460-60
 ;;9002226.02101,"1799,66336-0460-60 ",.02)
 ;;66336-0460-60
 ;;9002226.02101,"1799,66336-0619-30 ",.01)
 ;;66336-0619-30
 ;;9002226.02101,"1799,66336-0619-30 ",.02)
 ;;66336-0619-30
 ;;9002226.02101,"1799,66336-0673-30 ",.01)
 ;;66336-0673-30
 ;;9002226.02101,"1799,66336-0673-30 ",.02)
 ;;66336-0673-30
 ;;9002226.02101,"1799,66336-0673-50 ",.01)
 ;;66336-0673-50
 ;;9002226.02101,"1799,66336-0673-50 ",.02)
 ;;66336-0673-50
 ;;9002226.02101,"1799,66336-0673-60 ",.01)
 ;;66336-0673-60
 ;;9002226.02101,"1799,66336-0673-60 ",.02)
 ;;66336-0673-60
 ;;9002226.02101,"1799,66336-0718-10 ",.01)
 ;;66336-0718-10
 ;;9002226.02101,"1799,66336-0718-10 ",.02)
 ;;66336-0718-10
 ;;9002226.02101,"1799,66336-0718-15 ",.01)
 ;;66336-0718-15
 ;;9002226.02101,"1799,66336-0718-15 ",.02)
 ;;66336-0718-15
 ;;9002226.02101,"1799,66336-0718-30 ",.01)
 ;;66336-0718-30
 ;;9002226.02101,"1799,66336-0718-30 ",.02)
 ;;66336-0718-30
 ;;9002226.02101,"1799,66336-0718-60 ",.01)
 ;;66336-0718-60
 ;;9002226.02101,"1799,66336-0718-60 ",.02)
 ;;66336-0718-60
 ;;9002226.02101,"1799,66336-0718-90 ",.01)
 ;;66336-0718-90
 ;;9002226.02101,"1799,66336-0718-90 ",.02)
 ;;66336-0718-90
 ;;9002226.02101,"1799,66647-2051-11 ",.01)
 ;;66647-2051-11
 ;;9002226.02101,"1799,66647-2051-11 ",.02)
 ;;66647-2051-11
 ;;9002226.02101,"1799,66647-4340-20 ",.01)
 ;;66647-4340-20
 ;;9002226.02101,"1799,66647-4340-20 ",.02)
 ;;66647-4340-20
 ;;9002226.02101,"1799,66647-4340-50 ",.01)
 ;;66647-4340-50
 ;;9002226.02101,"1799,66647-4340-50 ",.02)
 ;;66647-4340-50
 ;;9002226.02101,"1799,67544-0009-07 ",.01)
 ;;67544-0009-07
 ;;9002226.02101,"1799,67544-0009-07 ",.02)
 ;;67544-0009-07
 ;;9002226.02101,"1799,67544-0009-14 ",.01)
 ;;67544-0009-14
 ;;9002226.02101,"1799,67544-0009-14 ",.02)
 ;;67544-0009-14
 ;;9002226.02101,"1799,67544-0009-15 ",.01)
 ;;67544-0009-15
 ;;9002226.02101,"1799,67544-0009-15 ",.02)
 ;;67544-0009-15
 ;;9002226.02101,"1799,67544-0009-20 ",.01)
 ;;67544-0009-20
 ;;9002226.02101,"1799,67544-0009-20 ",.02)
 ;;67544-0009-20
 ;;9002226.02101,"1799,67544-0009-30 ",.01)
 ;;67544-0009-30
 ;;9002226.02101,"1799,67544-0009-30 ",.02)
 ;;67544-0009-30
 ;;9002226.02101,"1799,67544-0009-31 ",.01)
 ;;67544-0009-31
 ;;9002226.02101,"1799,67544-0009-31 ",.02)
 ;;67544-0009-31
 ;;9002226.02101,"1799,67544-0009-53 ",.01)
 ;;67544-0009-53
 ;;9002226.02101,"1799,67544-0009-53 ",.02)
 ;;67544-0009-53
 ;;9002226.02101,"1799,67544-0010-07 ",.01)
 ;;67544-0010-07
 ;;9002226.02101,"1799,67544-0010-07 ",.02)
 ;;67544-0010-07
 ;;9002226.02101,"1799,67544-0010-10 ",.01)
 ;;67544-0010-10
 ;;9002226.02101,"1799,67544-0010-10 ",.02)
 ;;67544-0010-10
 ;;9002226.02101,"1799,67544-0010-15 ",.01)
 ;;67544-0010-15
 ;;9002226.02101,"1799,67544-0010-15 ",.02)
 ;;67544-0010-15
 ;;9002226.02101,"1799,67544-0010-20 ",.01)
 ;;67544-0010-20
 ;;9002226.02101,"1799,67544-0010-20 ",.02)
 ;;67544-0010-20
 ;;9002226.02101,"1799,67544-0010-21 ",.01)
 ;;67544-0010-21
 ;;9002226.02101,"1799,67544-0010-21 ",.02)
 ;;67544-0010-21
 ;;9002226.02101,"1799,67544-0010-30 ",.01)
 ;;67544-0010-30
 ;;9002226.02101,"1799,67544-0010-30 ",.02)
 ;;67544-0010-30
 ;;9002226.02101,"1799,67544-0010-45 ",.01)
 ;;67544-0010-45
 ;;9002226.02101,"1799,67544-0010-45 ",.02)
 ;;67544-0010-45
 ;;9002226.02101,"1799,67544-0010-53 ",.01)
 ;;67544-0010-53
 ;;9002226.02101,"1799,67544-0010-53 ",.02)
 ;;67544-0010-53
 ;;9002226.02101,"1799,67544-0010-60 ",.01)
 ;;67544-0010-60
 ;;9002226.02101,"1799,67544-0010-60 ",.02)
 ;;67544-0010-60
 ;;9002226.02101,"1799,67544-0031-30 ",.01)
 ;;67544-0031-30
 ;;9002226.02101,"1799,67544-0031-30 ",.02)
 ;;67544-0031-30
 ;;9002226.02101,"1799,67544-0057-30 ",.01)
 ;;67544-0057-30
 ;;9002226.02101,"1799,67544-0057-30 ",.02)
 ;;67544-0057-30
 ;;9002226.02101,"1799,67544-0057-53 ",.01)
 ;;67544-0057-53
 ;;9002226.02101,"1799,67544-0057-53 ",.02)
 ;;67544-0057-53
 ;;9002226.02101,"1799,67544-0057-60 ",.01)
 ;;67544-0057-60
 ;;9002226.02101,"1799,67544-0057-60 ",.02)
 ;;67544-0057-60
 ;;9002226.02101,"1799,67544-0057-70 ",.01)
 ;;67544-0057-70
 ;;9002226.02101,"1799,67544-0057-70 ",.02)
 ;;67544-0057-70
 ;;9002226.02101,"1799,67544-0057-75 ",.01)
 ;;67544-0057-75
 ;;9002226.02101,"1799,67544-0057-75 ",.02)
 ;;67544-0057-75
 ;;9002226.02101,"1799,67544-0057-80 ",.01)
 ;;67544-0057-80
 ;;9002226.02101,"1799,67544-0057-80 ",.02)
 ;;67544-0057-80
 ;;9002226.02101,"1799,67544-0057-92 ",.01)
 ;;67544-0057-92
 ;;9002226.02101,"1799,67544-0057-92 ",.02)
 ;;67544-0057-92
 ;;9002226.02101,"1799,67544-0057-94 ",.01)
 ;;67544-0057-94
 ;;9002226.02101,"1799,67544-0057-94 ",.02)
 ;;67544-0057-94
 ;;9002226.02101,"1799,67544-0085-30 ",.01)
 ;;67544-0085-30
 ;;9002226.02101,"1799,67544-0085-30 ",.02)
 ;;67544-0085-30
 ;;9002226.02101,"1799,67544-0085-53 ",.01)
 ;;67544-0085-53
 ;;9002226.02101,"1799,67544-0085-53 ",.02)
 ;;67544-0085-53
 ;;9002226.02101,"1799,67544-0085-60 ",.01)
 ;;67544-0085-60
 ;;9002226.02101,"1799,67544-0085-60 ",.02)
 ;;67544-0085-60
 ;;9002226.02101,"1799,67544-0085-70 ",.01)
 ;;67544-0085-70
 ;;9002226.02101,"1799,67544-0085-70 ",.02)
 ;;67544-0085-70
 ;;9002226.02101,"1799,67544-0085-75 ",.01)
 ;;67544-0085-75
 ;;9002226.02101,"1799,67544-0085-75 ",.02)
 ;;67544-0085-75
 ;;9002226.02101,"1799,67544-0085-80 ",.01)
 ;;67544-0085-80
 ;;9002226.02101,"1799,67544-0085-80 ",.02)
 ;;67544-0085-80
 ;;9002226.02101,"1799,67544-0121-30 ",.01)
 ;;67544-0121-30
 ;;9002226.02101,"1799,67544-0121-30 ",.02)
 ;;67544-0121-30
 ;;9002226.02101,"1799,67544-0121-53 ",.01)
 ;;67544-0121-53
 ;;9002226.02101,"1799,67544-0121-53 ",.02)
 ;;67544-0121-53
 ;;9002226.02101,"1799,67544-0121-60 ",.01)
 ;;67544-0121-60
 ;;9002226.02101,"1799,67544-0121-60 ",.02)
 ;;67544-0121-60
 ;;9002226.02101,"1799,67544-0121-70 ",.01)
 ;;67544-0121-70
 ;;9002226.02101,"1799,67544-0121-70 ",.02)
 ;;67544-0121-70
 ;;9002226.02101,"1799,67544-0121-75 ",.01)
 ;;67544-0121-75
 ;;9002226.02101,"1799,67544-0121-75 ",.02)
 ;;67544-0121-75
 ;;9002226.02101,"1799,67544-0206-30 ",.01)
 ;;67544-0206-30
 ;;9002226.02101,"1799,67544-0206-30 ",.02)
 ;;67544-0206-30
 ;;9002226.02101,"1799,67544-0206-60 ",.01)
 ;;67544-0206-60
 ;;9002226.02101,"1799,67544-0206-60 ",.02)
 ;;67544-0206-60
 ;;9002226.02101,"1799,67544-0253-30 ",.01)
 ;;67544-0253-30
 ;;9002226.02101,"1799,67544-0253-30 ",.02)
 ;;67544-0253-30
 ;;9002226.02101,"1799,67544-0253-53 ",.01)
 ;;67544-0253-53
 ;;9002226.02101,"1799,67544-0253-53 ",.02)
 ;;67544-0253-53
 ;;9002226.02101,"1799,67544-0253-60 ",.01)
 ;;67544-0253-60
 ;;9002226.02101,"1799,67544-0253-60 ",.02)
 ;;67544-0253-60
 ;;9002226.02101,"1799,67544-0253-70 ",.01)
 ;;67544-0253-70
 ;;9002226.02101,"1799,67544-0253-70 ",.02)
 ;;67544-0253-70
 ;;9002226.02101,"1799,67544-0267-30 ",.01)
 ;;67544-0267-30
 ;;9002226.02101,"1799,67544-0267-30 ",.02)
 ;;67544-0267-30
 ;;9002226.02101,"1799,67544-0383-30 ",.01)
 ;;67544-0383-30
 ;;9002226.02101,"1799,67544-0383-30 ",.02)
 ;;67544-0383-30
 ;;9002226.02101,"1799,67544-0383-53 ",.01)
 ;;67544-0383-53
 ;;9002226.02101,"1799,67544-0383-53 ",.02)
 ;;67544-0383-53
 ;;9002226.02101,"1799,67544-0383-60 ",.01)
 ;;67544-0383-60
 ;;9002226.02101,"1799,67544-0383-60 ",.02)
 ;;67544-0383-60
 ;;9002226.02101,"1799,67544-0383-70 ",.01)
 ;;67544-0383-70
 ;;9002226.02101,"1799,67544-0383-70 ",.02)
 ;;67544-0383-70
 ;;9002226.02101,"1799,67544-0394-30 ",.01)
 ;;67544-0394-30
 ;;9002226.02101,"1799,67544-0394-30 ",.02)
 ;;67544-0394-30
 ;;9002226.02101,"1799,67544-0394-53 ",.01)
 ;;67544-0394-53
 ;;9002226.02101,"1799,67544-0394-53 ",.02)
 ;;67544-0394-53
 ;;9002226.02101,"1799,67544-0394-60 ",.01)
 ;;67544-0394-60
 ;;9002226.02101,"1799,67544-0394-60 ",.02)
 ;;67544-0394-60
 ;;9002226.02101,"1799,67544-0394-70 ",.01)
 ;;67544-0394-70
 ;;9002226.02101,"1799,67544-0394-70 ",.02)
 ;;67544-0394-70
 ;;9002226.02101,"1799,67544-0759-53 ",.01)
 ;;67544-0759-53
 ;;9002226.02101,"1799,67544-0759-53 ",.02)
 ;;67544-0759-53
 ;;9002226.02101,"1799,67544-0996-10 ",.01)
 ;;67544-0996-10
 ;;9002226.02101,"1799,67544-0996-10 ",.02)
 ;;67544-0996-10
 ;;9002226.02101,"1799,67544-0996-14 ",.01)
 ;;67544-0996-14
 ;;9002226.02101,"1799,67544-0996-14 ",.02)
 ;;67544-0996-14
 ;;9002226.02101,"1799,67544-0996-15 ",.01)
 ;;67544-0996-15
 ;;9002226.02101,"1799,67544-0996-15 ",.02)
 ;;67544-0996-15
 ;;9002226.02101,"1799,67544-0996-20 ",.01)
 ;;67544-0996-20
 ;;9002226.02101,"1799,67544-0996-20 ",.02)
 ;;67544-0996-20
 ;;9002226.02101,"1799,67544-0996-21 ",.01)
 ;;67544-0996-21
 ;;9002226.02101,"1799,67544-0996-21 ",.02)
 ;;67544-0996-21
 ;;9002226.02101,"1799,67544-0996-26 ",.01)
 ;;67544-0996-26
 ;;9002226.02101,"1799,67544-0996-26 ",.02)
 ;;67544-0996-26
 ;;9002226.02101,"1799,67544-0996-28 ",.01)
 ;;67544-0996-28
 ;;9002226.02101,"1799,67544-0996-28 ",.02)
 ;;67544-0996-28
 ;;9002226.02101,"1799,67544-0996-30 ",.01)
 ;;67544-0996-30
 ;;9002226.02101,"1799,67544-0996-30 ",.02)
 ;;67544-0996-30
 ;;9002226.02101,"1799,67544-0996-40 ",.01)
 ;;67544-0996-40
 ;;9002226.02101,"1799,67544-0996-40 ",.02)
 ;;67544-0996-40
 ;;9002226.02101,"1799,67544-0996-45 ",.01)
 ;;67544-0996-45
 ;;9002226.02101,"1799,67544-0996-45 ",.02)
 ;;67544-0996-45
 ;;9002226.02101,"1799,67544-0996-53 ",.01)
 ;;67544-0996-53
 ;;9002226.02101,"1799,67544-0996-53 ",.02)
 ;;67544-0996-53
 ;;9002226.02101,"1799,67544-0996-59 ",.01)
 ;;67544-0996-59
 ;;9002226.02101,"1799,67544-0996-59 ",.02)
 ;;67544-0996-59
 ;;9002226.02101,"1799,67544-0996-60 ",.01)
 ;;67544-0996-60
 ;;9002226.02101,"1799,67544-0996-60 ",.02)
 ;;67544-0996-60
 ;;9002226.02101,"1799,67544-0996-62 ",.01)
 ;;67544-0996-62
 ;;9002226.02101,"1799,67544-0996-62 ",.02)
 ;;67544-0996-62
 ;;9002226.02101,"1799,67877-0210-01 ",.01)
 ;;67877-0210-01
 ;;9002226.02101,"1799,67877-0210-01 ",.02)
 ;;67877-0210-01
 ;;9002226.02101,"1799,67877-0211-01 ",.01)
 ;;67877-0211-01
 ;;9002226.02101,"1799,67877-0211-01 ",.02)
 ;;67877-0211-01
