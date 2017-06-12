BGP61A30 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1799,66116-0253-30 ",.01)
 ;;66116-0253-30
 ;;9002226.02101,"1799,66116-0253-30 ",.02)
 ;;66116-0253-30
 ;;9002226.02101,"1799,66116-0254-30 ",.01)
 ;;66116-0254-30
 ;;9002226.02101,"1799,66116-0254-30 ",.02)
 ;;66116-0254-30
 ;;9002226.02101,"1799,66116-0280-30 ",.01)
 ;;66116-0280-30
 ;;9002226.02101,"1799,66116-0280-30 ",.02)
 ;;66116-0280-30
 ;;9002226.02101,"1799,66116-0648-30 ",.01)
 ;;66116-0648-30
 ;;9002226.02101,"1799,66116-0648-30 ",.02)
 ;;66116-0648-30
 ;;9002226.02101,"1799,66213-0421-10 ",.01)
 ;;66213-0421-10
 ;;9002226.02101,"1799,66213-0421-10 ",.02)
 ;;66213-0421-10
 ;;9002226.02101,"1799,66213-0421-50 ",.01)
 ;;66213-0421-50
 ;;9002226.02101,"1799,66213-0421-50 ",.02)
 ;;66213-0421-50
 ;;9002226.02101,"1799,66213-0422-04 ",.01)
 ;;66213-0422-04
 ;;9002226.02101,"1799,66213-0422-04 ",.02)
 ;;66213-0422-04
 ;;9002226.02101,"1799,66213-0422-16 ",.01)
 ;;66213-0422-16
 ;;9002226.02101,"1799,66213-0422-16 ",.02)
 ;;66213-0422-16
 ;;9002226.02101,"1799,66213-0423-04 ",.01)
 ;;66213-0423-04
 ;;9002226.02101,"1799,66213-0423-04 ",.02)
 ;;66213-0423-04
 ;;9002226.02101,"1799,66213-0423-16 ",.01)
 ;;66213-0423-16
 ;;9002226.02101,"1799,66213-0423-16 ",.02)
 ;;66213-0423-16
 ;;9002226.02101,"1799,66213-0425-10 ",.01)
 ;;66213-0425-10
 ;;9002226.02101,"1799,66213-0425-10 ",.02)
 ;;66213-0425-10
 ;;9002226.02101,"1799,66213-0425-11 ",.01)
 ;;66213-0425-11
 ;;9002226.02101,"1799,66213-0425-11 ",.02)
 ;;66213-0425-11
 ;;9002226.02101,"1799,66267-0016-10 ",.01)
 ;;66267-0016-10
 ;;9002226.02101,"1799,66267-0016-10 ",.02)
 ;;66267-0016-10
 ;;9002226.02101,"1799,66267-0016-12 ",.01)
 ;;66267-0016-12
 ;;9002226.02101,"1799,66267-0016-12 ",.02)
 ;;66267-0016-12
 ;;9002226.02101,"1799,66267-0016-20 ",.01)
 ;;66267-0016-20
 ;;9002226.02101,"1799,66267-0016-20 ",.02)
 ;;66267-0016-20
 ;;9002226.02101,"1799,66267-0016-28 ",.01)
 ;;66267-0016-28
 ;;9002226.02101,"1799,66267-0016-28 ",.02)
 ;;66267-0016-28
 ;;9002226.02101,"1799,66267-0016-30 ",.01)
 ;;66267-0016-30
 ;;9002226.02101,"1799,66267-0016-30 ",.02)
 ;;66267-0016-30
 ;;9002226.02101,"1799,66267-0016-60 ",.01)
 ;;66267-0016-60
 ;;9002226.02101,"1799,66267-0016-60 ",.02)
 ;;66267-0016-60
 ;;9002226.02101,"1799,66267-0017-10 ",.01)
 ;;66267-0017-10
 ;;9002226.02101,"1799,66267-0017-10 ",.02)
 ;;66267-0017-10
 ;;9002226.02101,"1799,66267-0017-30 ",.01)
 ;;66267-0017-30
 ;;9002226.02101,"1799,66267-0017-30 ",.02)
 ;;66267-0017-30
 ;;9002226.02101,"1799,66267-0018-30 ",.01)
 ;;66267-0018-30
 ;;9002226.02101,"1799,66267-0018-30 ",.02)
 ;;66267-0018-30
 ;;9002226.02101,"1799,66267-0018-60 ",.01)
 ;;66267-0018-60
 ;;9002226.02101,"1799,66267-0018-60 ",.02)
 ;;66267-0018-60
 ;;9002226.02101,"1799,66267-0018-90 ",.01)
 ;;66267-0018-90
 ;;9002226.02101,"1799,66267-0018-90 ",.02)
 ;;66267-0018-90
 ;;9002226.02101,"1799,66267-0019-14 ",.01)
 ;;66267-0019-14
 ;;9002226.02101,"1799,66267-0019-14 ",.02)
 ;;66267-0019-14
 ;;9002226.02101,"1799,66267-0019-30 ",.01)
 ;;66267-0019-30
 ;;9002226.02101,"1799,66267-0019-30 ",.02)
 ;;66267-0019-30
 ;;9002226.02101,"1799,66267-0019-60 ",.01)
 ;;66267-0019-60
 ;;9002226.02101,"1799,66267-0019-60 ",.02)
 ;;66267-0019-60
 ;;9002226.02101,"1799,66267-0019-90 ",.01)
 ;;66267-0019-90
 ;;9002226.02101,"1799,66267-0019-90 ",.02)
 ;;66267-0019-90
 ;;9002226.02101,"1799,66267-0019-91 ",.01)
 ;;66267-0019-91
 ;;9002226.02101,"1799,66267-0019-91 ",.02)
 ;;66267-0019-91
 ;;9002226.02101,"1799,66267-0020-30 ",.01)
 ;;66267-0020-30
 ;;9002226.02101,"1799,66267-0020-30 ",.02)
 ;;66267-0020-30
 ;;9002226.02101,"1799,66267-0020-60 ",.01)
 ;;66267-0020-60
 ;;9002226.02101,"1799,66267-0020-60 ",.02)
 ;;66267-0020-60
 ;;9002226.02101,"1799,66267-0020-90 ",.01)
 ;;66267-0020-90
 ;;9002226.02101,"1799,66267-0020-90 ",.02)
 ;;66267-0020-90
 ;;9002226.02101,"1799,66267-0032-15 ",.01)
 ;;66267-0032-15
 ;;9002226.02101,"1799,66267-0032-15 ",.02)
 ;;66267-0032-15
 ;;9002226.02101,"1799,66267-0032-20 ",.01)
 ;;66267-0032-20
 ;;9002226.02101,"1799,66267-0032-20 ",.02)
 ;;66267-0032-20
 ;;9002226.02101,"1799,66267-0032-30 ",.01)
 ;;66267-0032-30
 ;;9002226.02101,"1799,66267-0032-30 ",.02)
 ;;66267-0032-30
 ;;9002226.02101,"1799,66267-0038-15 ",.01)
 ;;66267-0038-15
 ;;9002226.02101,"1799,66267-0038-15 ",.02)
 ;;66267-0038-15
 ;;9002226.02101,"1799,66267-0039-12 ",.01)
 ;;66267-0039-12
 ;;9002226.02101,"1799,66267-0039-12 ",.02)
 ;;66267-0039-12
 ;;9002226.02101,"1799,66267-0039-30 ",.01)
 ;;66267-0039-30
 ;;9002226.02101,"1799,66267-0039-30 ",.02)
 ;;66267-0039-30
 ;;9002226.02101,"1799,66267-0039-60 ",.01)
 ;;66267-0039-60
 ;;9002226.02101,"1799,66267-0039-60 ",.02)
 ;;66267-0039-60
 ;;9002226.02101,"1799,66267-0039-90 ",.01)
 ;;66267-0039-90
 ;;9002226.02101,"1799,66267-0039-90 ",.02)
 ;;66267-0039-90
 ;;9002226.02101,"1799,66267-0084-30 ",.01)
 ;;66267-0084-30
 ;;9002226.02101,"1799,66267-0084-30 ",.02)
 ;;66267-0084-30
 ;;9002226.02101,"1799,66267-0266-30 ",.01)
 ;;66267-0266-30
 ;;9002226.02101,"1799,66267-0266-30 ",.02)
 ;;66267-0266-30
 ;;9002226.02101,"1799,66267-0560-90 ",.01)
 ;;66267-0560-90
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
 ;;9002226.02101,"1799,66336-0027-30 ",.01)
 ;;66336-0027-30
 ;;9002226.02101,"1799,66336-0027-30 ",.02)
 ;;66336-0027-30
 ;;9002226.02101,"1799,66336-0027-60 ",.01)
 ;;66336-0027-60
 ;;9002226.02101,"1799,66336-0027-60 ",.02)
 ;;66336-0027-60
 ;;9002226.02101,"1799,66336-0027-62 ",.01)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-62 ",.02)
 ;;66336-0027-62
 ;;9002226.02101,"1799,66336-0027-90 ",.01)
 ;;66336-0027-90
 ;;9002226.02101,"1799,66336-0027-90 ",.02)
 ;;66336-0027-90
 ;;9002226.02101,"1799,66336-0027-94 ",.01)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0027-94 ",.02)
 ;;66336-0027-94
 ;;9002226.02101,"1799,66336-0056-30 ",.01)
 ;;66336-0056-30
 ;;9002226.02101,"1799,66336-0056-30 ",.02)
 ;;66336-0056-30
 ;;9002226.02101,"1799,66336-0056-60 ",.01)
 ;;66336-0056-60
 ;;9002226.02101,"1799,66336-0056-60 ",.02)
 ;;66336-0056-60
 ;;9002226.02101,"1799,66336-0102-30 ",.01)
 ;;66336-0102-30
 ;;9002226.02101,"1799,66336-0102-30 ",.02)
 ;;66336-0102-30
 ;;9002226.02101,"1799,66336-0224-30 ",.01)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-30 ",.02)
 ;;66336-0224-30
 ;;9002226.02101,"1799,66336-0224-60 ",.01)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0224-60 ",.02)
 ;;66336-0224-60
 ;;9002226.02101,"1799,66336-0314-30 ",.01)
 ;;66336-0314-30
 ;;9002226.02101,"1799,66336-0314-30 ",.02)
 ;;66336-0314-30
 ;;9002226.02101,"1799,66336-0314-90 ",.01)
 ;;66336-0314-90
 ;;9002226.02101,"1799,66336-0314-90 ",.02)
 ;;66336-0314-90
 ;;9002226.02101,"1799,66336-0354-30 ",.01)
 ;;66336-0354-30
 ;;9002226.02101,"1799,66336-0354-30 ",.02)
 ;;66336-0354-30
 ;;9002226.02101,"1799,66336-0354-60 ",.01)
 ;;66336-0354-60
 ;;9002226.02101,"1799,66336-0354-60 ",.02)
 ;;66336-0354-60
 ;;9002226.02101,"1799,66336-0354-62 ",.01)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0354-62 ",.02)
 ;;66336-0354-62
 ;;9002226.02101,"1799,66336-0354-90 ",.01)
 ;;66336-0354-90
 ;;9002226.02101,"1799,66336-0354-90 ",.02)
 ;;66336-0354-90
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
 ;;9002226.02101,"1799,66336-0553-30 ",.01)
 ;;66336-0553-30
 ;;9002226.02101,"1799,66336-0553-30 ",.02)
 ;;66336-0553-30
 ;;9002226.02101,"1799,66336-0553-40 ",.01)
 ;;66336-0553-40
 ;;9002226.02101,"1799,66336-0553-40 ",.02)
 ;;66336-0553-40
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
 ;;9002226.02101,"1799,66336-0673-90 ",.01)
 ;;66336-0673-90
 ;;9002226.02101,"1799,66336-0673-90 ",.02)
 ;;66336-0673-90
 ;;9002226.02101,"1799,66336-0703-30 ",.01)
 ;;66336-0703-30
 ;;9002226.02101,"1799,66336-0703-30 ",.02)
 ;;66336-0703-30
 ;;9002226.02101,"1799,66336-0703-60 ",.01)
 ;;66336-0703-60
 ;;9002226.02101,"1799,66336-0703-60 ",.02)
 ;;66336-0703-60
 ;;9002226.02101,"1799,66336-0703-90 ",.01)
 ;;66336-0703-90
 ;;9002226.02101,"1799,66336-0703-90 ",.02)
 ;;66336-0703-90
 ;;9002226.02101,"1799,66336-0703-94 ",.01)
 ;;66336-0703-94
 ;;9002226.02101,"1799,66336-0703-94 ",.02)
 ;;66336-0703-94
 ;;9002226.02101,"1799,66336-0718-02 ",.01)
 ;;66336-0718-02
 ;;9002226.02101,"1799,66336-0718-02 ",.02)
 ;;66336-0718-02
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
 ;;9002226.02101,"1799,66336-0791-30 ",.01)
 ;;66336-0791-30
 ;;9002226.02101,"1799,66336-0791-30 ",.02)
 ;;66336-0791-30
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
 ;;9002226.02101,"1799,66993-0716-02 ",.01)
 ;;66993-0716-02
 ;;9002226.02101,"1799,66993-0716-02 ",.02)
 ;;66993-0716-02
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
 ;;9002226.02101,"1799,67544-0009-53 ",.01)
 ;;67544-0009-53
 ;;9002226.02101,"1799,67544-0009-53 ",.02)
 ;;67544-0009-53
 ;;9002226.02101,"1799,67544-0010-07 ",.01)
 ;;67544-0010-07
