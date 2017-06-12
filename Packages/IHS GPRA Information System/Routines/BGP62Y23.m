BGP62Y23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,00029-6090-22 ",.02)
 ;;00029-6090-22
 ;;9002226.02101,"868,00029-6090-23 ",.01)
 ;;00029-6090-23
 ;;9002226.02101,"868,00029-6090-23 ",.02)
 ;;00029-6090-23
 ;;9002226.02101,"868,00029-6090-39 ",.01)
 ;;00029-6090-39
 ;;9002226.02101,"868,00029-6090-39 ",.02)
 ;;00029-6090-39
 ;;9002226.02101,"868,00029-6096-48 ",.01)
 ;;00029-6096-48
 ;;9002226.02101,"868,00029-6096-48 ",.02)
 ;;00029-6096-48
 ;;9002226.02101,"868,00029-6096-60 ",.01)
 ;;00029-6096-60
 ;;9002226.02101,"868,00029-6096-60 ",.02)
 ;;00029-6096-60
 ;;9002226.02101,"868,00045-0066-01 ",.01)
 ;;00045-0066-01
 ;;9002226.02101,"868,00045-0066-01 ",.02)
 ;;00045-0066-01
 ;;9002226.02101,"868,00045-0067-01 ",.01)
 ;;00045-0067-01
 ;;9002226.02101,"868,00045-0067-01 ",.02)
 ;;00045-0067-01
 ;;9002226.02101,"868,00045-0068-01 ",.01)
 ;;00045-0068-01
 ;;9002226.02101,"868,00045-0068-01 ",.02)
 ;;00045-0068-01
 ;;9002226.02101,"868,00045-0069-51 ",.01)
 ;;00045-0069-51
 ;;9002226.02101,"868,00045-0069-51 ",.02)
 ;;00045-0069-51
 ;;9002226.02101,"868,00045-1520-10 ",.01)
 ;;00045-1520-10
 ;;9002226.02101,"868,00045-1520-10 ",.02)
 ;;00045-1520-10
 ;;9002226.02101,"868,00045-1520-50 ",.01)
 ;;00045-1520-50
 ;;9002226.02101,"868,00045-1520-50 ",.02)
 ;;00045-1520-50
 ;;9002226.02101,"868,00049-0520-22 ",.01)
 ;;00049-0520-22
 ;;9002226.02101,"868,00049-0520-22 ",.02)
 ;;00049-0520-22
 ;;9002226.02101,"868,00049-0520-44 ",.01)
 ;;00049-0520-44
 ;;9002226.02101,"868,00049-0520-44 ",.02)
 ;;00049-0520-44
 ;;9002226.02101,"868,00049-0520-83 ",.01)
 ;;00049-0520-83
 ;;9002226.02101,"868,00049-0520-83 ",.02)
 ;;00049-0520-83
 ;;9002226.02101,"868,00049-0520-84 ",.01)
 ;;00049-0520-84
 ;;9002226.02101,"868,00049-0520-84 ",.02)
 ;;00049-0520-84
 ;;9002226.02101,"868,00049-0530-22 ",.01)
 ;;00049-0530-22
 ;;9002226.02101,"868,00049-0530-22 ",.02)
 ;;00049-0530-22
 ;;9002226.02101,"868,00049-0530-28 ",.01)
 ;;00049-0530-28
 ;;9002226.02101,"868,00049-0530-28 ",.02)
 ;;00049-0530-28
 ;;9002226.02101,"868,00049-0530-44 ",.01)
 ;;00049-0530-44
 ;;9002226.02101,"868,00049-0530-44 ",.02)
 ;;00049-0530-44
 ;;9002226.02101,"868,00054-0036-21 ",.01)
 ;;00054-0036-21
 ;;9002226.02101,"868,00054-0036-21 ",.02)
 ;;00054-0036-21
 ;;9002226.02101,"868,00054-0037-21 ",.01)
 ;;00054-0037-21
 ;;9002226.02101,"868,00054-0037-21 ",.02)
 ;;00054-0037-21
 ;;9002226.02101,"868,00069-0026-01 ",.01)
 ;;00069-0026-01
 ;;9002226.02101,"868,00069-0026-01 ",.02)
 ;;00069-0026-01
 ;;9002226.02101,"868,00069-0026-05 ",.01)
 ;;00069-0026-05
 ;;9002226.02101,"868,00069-0026-05 ",.02)
 ;;00069-0026-05
 ;;9002226.02101,"868,00069-0027-10 ",.01)
 ;;00069-0027-10
 ;;9002226.02101,"868,00069-0027-10 ",.02)
 ;;00069-0027-10
 ;;9002226.02101,"868,00069-0027-12 ",.01)
 ;;00069-0027-12
 ;;9002226.02101,"868,00069-0027-12 ",.02)
 ;;00069-0027-12
 ;;9002226.02101,"868,00069-0029-18 ",.01)
 ;;00069-0029-18
 ;;9002226.02101,"868,00069-0029-18 ",.02)
 ;;00069-0029-18
 ;;9002226.02101,"868,00069-0029-20 ",.01)
 ;;00069-0029-20
 ;;9002226.02101,"868,00069-0029-20 ",.02)
 ;;00069-0029-20
 ;;9002226.02101,"868,00069-0046-31 ",.01)
 ;;00069-0046-31
 ;;9002226.02101,"868,00069-0046-31 ",.02)
 ;;00069-0046-31
 ;;9002226.02101,"868,00069-0046-37 ",.01)
 ;;00069-0046-37
 ;;9002226.02101,"868,00069-0046-37 ",.02)
 ;;00069-0046-37
 ;;9002226.02101,"868,00069-0065-25 ",.01)
 ;;00069-0065-25
 ;;9002226.02101,"868,00069-0065-25 ",.02)
 ;;00069-0065-25
 ;;9002226.02101,"868,00069-0065-30 ",.01)
 ;;00069-0065-30
 ;;9002226.02101,"868,00069-0065-30 ",.02)
 ;;00069-0065-30
 ;;9002226.02101,"868,00069-0071-28 ",.01)
 ;;00069-0071-28
 ;;9002226.02101,"868,00069-0071-28 ",.02)
 ;;00069-0071-28
 ;;9002226.02101,"868,00069-0071-35 ",.01)
 ;;00069-0071-35
 ;;9002226.02101,"868,00069-0071-35 ",.02)
 ;;00069-0071-35
 ;;9002226.02101,"868,00069-0104-04 ",.01)
 ;;00069-0104-04
 ;;9002226.02101,"868,00069-0104-04 ",.02)
 ;;00069-0104-04
 ;;9002226.02101,"868,00069-0310-20 ",.01)
 ;;00069-0310-20
 ;;9002226.02101,"868,00069-0310-20 ",.02)
 ;;00069-0310-20
 ;;9002226.02101,"868,00069-0312-20 ",.01)
 ;;00069-0312-20
 ;;9002226.02101,"868,00069-0312-20 ",.02)
 ;;00069-0312-20
 ;;9002226.02101,"868,00069-0400-10 ",.01)
 ;;00069-0400-10
 ;;9002226.02101,"868,00069-0400-10 ",.02)
 ;;00069-0400-10
 ;;9002226.02101,"868,00069-0950-50 ",.01)
 ;;00069-0950-50
 ;;9002226.02101,"868,00069-0950-50 ",.02)
 ;;00069-0950-50
 ;;9002226.02101,"868,00069-0970-65 ",.01)
 ;;00069-0970-65
 ;;9002226.02101,"868,00069-0970-65 ",.02)
 ;;00069-0970-65
 ;;9002226.02101,"868,00069-0971-93 ",.01)
 ;;00069-0971-93
 ;;9002226.02101,"868,00069-0971-93 ",.02)
 ;;00069-0971-93
 ;;9002226.02101,"868,00069-3051-07 ",.01)
 ;;00069-3051-07
 ;;9002226.02101,"868,00069-3051-07 ",.02)
 ;;00069-3051-07
 ;;9002226.02101,"868,00069-3051-75 ",.01)
 ;;00069-3051-75
 ;;9002226.02101,"868,00069-3051-75 ",.02)
 ;;00069-3051-75
 ;;9002226.02101,"868,00069-3060-30 ",.01)
 ;;00069-3060-30
 ;;9002226.02101,"868,00069-3060-30 ",.02)
 ;;00069-3060-30
 ;;9002226.02101,"868,00069-3060-75 ",.01)
 ;;00069-3060-75
 ;;9002226.02101,"868,00069-3060-75 ",.02)
 ;;00069-3060-75
 ;;9002226.02101,"868,00069-3060-86 ",.01)
 ;;00069-3060-86
 ;;9002226.02101,"868,00069-3060-86 ",.02)
 ;;00069-3060-86
 ;;9002226.02101,"868,00069-3070-30 ",.01)
 ;;00069-3070-30
 ;;9002226.02101,"868,00069-3070-30 ",.02)
 ;;00069-3070-30
 ;;9002226.02101,"868,00069-3070-75 ",.01)
 ;;00069-3070-75
 ;;9002226.02101,"868,00069-3070-75 ",.02)
 ;;00069-3070-75
 ;;9002226.02101,"868,00069-3070-86 ",.01)
 ;;00069-3070-86
 ;;9002226.02101,"868,00069-3070-86 ",.02)
 ;;00069-3070-86
 ;;9002226.02101,"868,00069-3080-30 ",.01)
 ;;00069-3080-30
 ;;9002226.02101,"868,00069-3080-30 ",.02)
 ;;00069-3080-30
 ;;9002226.02101,"868,00069-3110-19 ",.01)
 ;;00069-3110-19
 ;;9002226.02101,"868,00069-3110-19 ",.02)
 ;;00069-3110-19
 ;;9002226.02101,"868,00069-3120-19 ",.01)
 ;;00069-3120-19
 ;;9002226.02101,"868,00069-3120-19 ",.02)
 ;;00069-3120-19
 ;;9002226.02101,"868,00069-3130-19 ",.01)
 ;;00069-3130-19
 ;;9002226.02101,"868,00069-3130-19 ",.02)
 ;;00069-3130-19
 ;;9002226.02101,"868,00069-3140-19 ",.01)
 ;;00069-3140-19
 ;;9002226.02101,"868,00069-3140-19 ",.02)
 ;;00069-3140-19
 ;;9002226.02101,"868,00069-3150-14 ",.01)
 ;;00069-3150-14
 ;;9002226.02101,"868,00069-3150-14 ",.02)
 ;;00069-3150-14
 ;;9002226.02101,"868,00069-3150-83 ",.01)
 ;;00069-3150-83
 ;;9002226.02101,"868,00069-3150-83 ",.02)
 ;;00069-3150-83
 ;;9002226.02101,"868,00069-3150-84 ",.01)
 ;;00069-3150-84
 ;;9002226.02101,"868,00069-3150-84 ",.02)
 ;;00069-3150-84
 ;;9002226.02101,"868,00069-3241-15 ",.01)
 ;;00069-3241-15
 ;;9002226.02101,"868,00069-3241-15 ",.02)
 ;;00069-3241-15
 ;;9002226.02101,"868,00069-3241-22 ",.01)
 ;;00069-3241-22
 ;;9002226.02101,"868,00069-3241-22 ",.02)
 ;;00069-3241-22
 ;;9002226.02101,"868,00069-3342-15 ",.01)
 ;;00069-3342-15
 ;;9002226.02101,"868,00069-3342-15 ",.02)
 ;;00069-3342-15
 ;;9002226.02101,"868,00069-3342-22 ",.01)
 ;;00069-3342-22
 ;;9002226.02101,"868,00069-3342-22 ",.02)
 ;;00069-3342-22
 ;;9002226.02101,"868,00069-4170-34 ",.01)
 ;;00069-4170-34
 ;;9002226.02101,"868,00069-4170-34 ",.02)
 ;;00069-4170-34
 ;;9002226.02101,"868,00069-4395-19 ",.01)
 ;;00069-4395-19
 ;;9002226.02101,"868,00069-4395-19 ",.02)
 ;;00069-4395-19
 ;;9002226.02101,"868,00069-4396-27 ",.01)
 ;;00069-4396-27
 ;;9002226.02101,"868,00069-4396-27 ",.02)
 ;;00069-4396-27
 ;;9002226.02101,"868,00069-4480-03 ",.01)
 ;;00069-4480-03
 ;;9002226.02101,"868,00069-4480-03 ",.02)
 ;;00069-4480-03
 ;;9002226.02101,"868,00069-4480-10 ",.01)
 ;;00069-4480-10
 ;;9002226.02101,"868,00069-4480-10 ",.02)
 ;;00069-4480-10
 ;;9002226.02101,"868,00069-4481-03 ",.01)
 ;;00069-4481-03
 ;;9002226.02101,"868,00069-4481-03 ",.02)
 ;;00069-4481-03
 ;;9002226.02101,"868,00069-4481-10 ",.01)
 ;;00069-4481-10
 ;;9002226.02101,"868,00069-4481-10 ",.02)
 ;;00069-4481-10
 ;;9002226.02101,"868,00069-4482-03 ",.01)
 ;;00069-4482-03
 ;;9002226.02101,"868,00069-4482-03 ",.02)
 ;;00069-4482-03
 ;;9002226.02101,"868,00069-4482-10 ",.01)
 ;;00069-4482-10
 ;;9002226.02101,"868,00069-4482-10 ",.02)
 ;;00069-4482-10
 ;;9002226.02101,"868,00069-4483-03 ",.01)
 ;;00069-4483-03
 ;;9002226.02101,"868,00069-4483-03 ",.02)
 ;;00069-4483-03
 ;;9002226.02101,"868,00069-4483-10 ",.01)
 ;;00069-4483-10
 ;;9002226.02101,"868,00069-4483-10 ",.02)
 ;;00069-4483-10
 ;;9002226.02101,"868,00069-4484-01 ",.01)
 ;;00069-4484-01
 ;;9002226.02101,"868,00069-4484-01 ",.02)
 ;;00069-4484-01
 ;;9002226.02101,"868,00074-2586-11 ",.01)
 ;;00074-2586-11
 ;;9002226.02101,"868,00074-2586-11 ",.02)
 ;;00074-2586-11
 ;;9002226.02101,"868,00074-2586-60 ",.01)
 ;;00074-2586-60
 ;;9002226.02101,"868,00074-2586-60 ",.02)
 ;;00074-2586-60
 ;;9002226.02101,"868,00074-2589-13 ",.01)
 ;;00074-2589-13
 ;;9002226.02101,"868,00074-2589-13 ",.02)
 ;;00074-2589-13
 ;;9002226.02101,"868,00074-2589-53 ",.01)
 ;;00074-2589-53
 ;;9002226.02101,"868,00074-2589-53 ",.02)
 ;;00074-2589-53
 ;;9002226.02101,"868,00074-3163-13 ",.01)
 ;;00074-3163-13
 ;;9002226.02101,"868,00074-3163-13 ",.02)
 ;;00074-3163-13
 ;;9002226.02101,"868,00074-3163-50 ",.01)
 ;;00074-3163-50
 ;;9002226.02101,"868,00074-3163-50 ",.02)
 ;;00074-3163-50
 ;;9002226.02101,"868,00074-3165-11 ",.01)
 ;;00074-3165-11
 ;;9002226.02101,"868,00074-3165-11 ",.02)
 ;;00074-3165-11
 ;;9002226.02101,"868,00074-3165-14 ",.01)
 ;;00074-3165-14
 ;;9002226.02101,"868,00074-3165-14 ",.02)
 ;;00074-3165-14
 ;;9002226.02101,"868,00074-3165-41 ",.01)
 ;;00074-3165-41
 ;;9002226.02101,"868,00074-3165-41 ",.02)
 ;;00074-3165-41
 ;;9002226.02101,"868,00074-3165-60 ",.01)
 ;;00074-3165-60
 ;;9002226.02101,"868,00074-3165-60 ",.02)
 ;;00074-3165-60
 ;;9002226.02101,"868,00074-3188-13 ",.01)
 ;;00074-3188-13
 ;;9002226.02101,"868,00074-3188-13 ",.02)
 ;;00074-3188-13
 ;;9002226.02101,"868,00074-3188-50 ",.01)
 ;;00074-3188-50
 ;;9002226.02101,"868,00074-3188-50 ",.02)
 ;;00074-3188-50
 ;;9002226.02101,"868,00074-3368-11 ",.01)
 ;;00074-3368-11
 ;;9002226.02101,"868,00074-3368-11 ",.02)
 ;;00074-3368-11
 ;;9002226.02101,"868,00074-3368-60 ",.01)
 ;;00074-3368-60
 ;;9002226.02101,"868,00074-3368-60 ",.02)
 ;;00074-3368-60
 ;;9002226.02101,"868,00074-3389-13 ",.01)
 ;;00074-3389-13
 ;;9002226.02101,"868,00074-3389-13 ",.02)
 ;;00074-3389-13
 ;;9002226.02101,"868,00074-3747-16 ",.01)
 ;;00074-3747-16
 ;;9002226.02101,"868,00074-3747-16 ",.02)
 ;;00074-3747-16
 ;;9002226.02101,"868,00074-3748-16 ",.01)
 ;;00074-3748-16
 ;;9002226.02101,"868,00074-3748-16 ",.02)
 ;;00074-3748-16
 ;;9002226.02101,"868,00074-3769-10 ",.01)
 ;;00074-3769-10
 ;;9002226.02101,"868,00074-3769-10 ",.02)
 ;;00074-3769-10
 ;;9002226.02101,"868,00074-3769-60 ",.01)
 ;;00074-3769-60
 ;;9002226.02101,"868,00074-3769-60 ",.02)
 ;;00074-3769-60
 ;;9002226.02101,"868,00074-3771-13 ",.01)
 ;;00074-3771-13
 ;;9002226.02101,"868,00074-3771-13 ",.02)
 ;;00074-3771-13
 ;;9002226.02101,"868,00074-3771-60 ",.01)
 ;;00074-3771-60
 ;;9002226.02101,"868,00074-3771-60 ",.02)
 ;;00074-3771-60
 ;;9002226.02101,"868,00074-5729-13 ",.01)
 ;;00074-5729-13
 ;;9002226.02101,"868,00074-5729-13 ",.02)
 ;;00074-5729-13
 ;;9002226.02101,"868,00074-5729-53 ",.01)
 ;;00074-5729-53
 ;;9002226.02101,"868,00074-5729-53 ",.02)
 ;;00074-5729-53
 ;;9002226.02101,"868,00074-6151-13 ",.01)
 ;;00074-6151-13
 ;;9002226.02101,"868,00074-6151-13 ",.02)
 ;;00074-6151-13
 ;;9002226.02101,"868,00074-6151-60 ",.01)
 ;;00074-6151-60
 ;;9002226.02101,"868,00074-6151-60 ",.02)
 ;;00074-6151-60
 ;;9002226.02101,"868,00074-6227-13 ",.01)
 ;;00074-6227-13
