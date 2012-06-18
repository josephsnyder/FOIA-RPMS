BGP13T64 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"992,66336-0757-60 ",.02)
 ;;66336-0757-60
 ;;9002226.02101,"992,66336-0799-30 ",.01)
 ;;66336-0799-30
 ;;9002226.02101,"992,66336-0799-30 ",.02)
 ;;66336-0799-30
 ;;9002226.02101,"992,66336-0838-14 ",.01)
 ;;66336-0838-14
 ;;9002226.02101,"992,66336-0838-14 ",.02)
 ;;66336-0838-14
 ;;9002226.02101,"992,66336-0844-30 ",.01)
 ;;66336-0844-30
 ;;9002226.02101,"992,66336-0844-30 ",.02)
 ;;66336-0844-30
 ;;9002226.02101,"992,66336-0897-60 ",.01)
 ;;66336-0897-60
 ;;9002226.02101,"992,66336-0897-60 ",.02)
 ;;66336-0897-60
 ;;9002226.02101,"992,66336-0973-60 ",.01)
 ;;66336-0973-60
 ;;9002226.02101,"992,66336-0973-60 ",.02)
 ;;66336-0973-60
 ;;9002226.02101,"992,66336-0993-30 ",.01)
 ;;66336-0993-30
 ;;9002226.02101,"992,66336-0993-30 ",.02)
 ;;66336-0993-30
 ;;9002226.02101,"992,66993-0709-30 ",.01)
 ;;66993-0709-30
 ;;9002226.02101,"992,66993-0709-30 ",.02)
 ;;66993-0709-30
 ;;9002226.02101,"992,66993-0711-30 ",.01)
 ;;66993-0711-30
 ;;9002226.02101,"992,66993-0711-30 ",.02)
 ;;66993-0711-30
 ;;9002226.02101,"992,66993-0712-30 ",.01)
 ;;66993-0712-30
 ;;9002226.02101,"992,66993-0712-30 ",.02)
 ;;66993-0712-30
 ;;9002226.02101,"992,67046-0015-30 ",.01)
 ;;67046-0015-30
 ;;9002226.02101,"992,67046-0015-30 ",.02)
 ;;67046-0015-30
 ;;9002226.02101,"992,67544-0078-30 ",.01)
 ;;67544-0078-30
 ;;9002226.02101,"992,67544-0078-30 ",.02)
 ;;67544-0078-30
 ;;9002226.02101,"992,67544-0080-15 ",.01)
 ;;67544-0080-15
 ;;9002226.02101,"992,67544-0080-15 ",.02)
 ;;67544-0080-15
 ;;9002226.02101,"992,67544-0085-30 ",.01)
 ;;67544-0085-30
 ;;9002226.02101,"992,67544-0085-30 ",.02)
 ;;67544-0085-30
 ;;9002226.02101,"992,67544-0085-60 ",.01)
 ;;67544-0085-60
 ;;9002226.02101,"992,67544-0085-60 ",.02)
 ;;67544-0085-60
 ;;9002226.02101,"992,67544-0162-30 ",.01)
 ;;67544-0162-30
 ;;9002226.02101,"992,67544-0162-30 ",.02)
 ;;67544-0162-30
 ;;9002226.02101,"992,67544-0169-15 ",.01)
 ;;67544-0169-15
 ;;9002226.02101,"992,67544-0169-15 ",.02)
 ;;67544-0169-15
 ;;9002226.02101,"992,67544-0189-30 ",.01)
 ;;67544-0189-30
 ;;9002226.02101,"992,67544-0189-30 ",.02)
 ;;67544-0189-30
 ;;9002226.02101,"992,67544-0190-30 ",.01)
 ;;67544-0190-30
 ;;9002226.02101,"992,67544-0190-30 ",.02)
 ;;67544-0190-30
 ;;9002226.02101,"992,67544-0206-30 ",.01)
 ;;67544-0206-30
 ;;9002226.02101,"992,67544-0206-30 ",.02)
 ;;67544-0206-30
 ;;9002226.02101,"992,67544-0235-15 ",.01)
 ;;67544-0235-15
 ;;9002226.02101,"992,67544-0235-15 ",.02)
 ;;67544-0235-15
 ;;9002226.02101,"992,67544-0253-30 ",.01)
 ;;67544-0253-30
 ;;9002226.02101,"992,67544-0253-30 ",.02)
 ;;67544-0253-30
 ;;9002226.02101,"992,67544-0295-30 ",.01)
 ;;67544-0295-30
 ;;9002226.02101,"992,67544-0295-30 ",.02)
 ;;67544-0295-30
 ;;9002226.02101,"992,67544-0298-15 ",.01)
 ;;67544-0298-15
 ;;9002226.02101,"992,67544-0298-15 ",.02)
 ;;67544-0298-15
 ;;9002226.02101,"992,67544-0299-30 ",.01)
 ;;67544-0299-30
 ;;9002226.02101,"992,67544-0299-30 ",.02)
 ;;67544-0299-30
 ;;9002226.02101,"992,67544-0316-15 ",.01)
 ;;67544-0316-15
 ;;9002226.02101,"992,67544-0316-15 ",.02)
 ;;67544-0316-15
 ;;9002226.02101,"992,67544-0317-15 ",.01)
 ;;67544-0317-15
 ;;9002226.02101,"992,67544-0317-15 ",.02)
 ;;67544-0317-15
 ;;9002226.02101,"992,67544-0331-30 ",.01)
 ;;67544-0331-30
 ;;9002226.02101,"992,67544-0331-30 ",.02)
 ;;67544-0331-30
 ;;9002226.02101,"992,67544-0357-15 ",.01)
 ;;67544-0357-15
 ;;9002226.02101,"992,67544-0357-15 ",.02)
 ;;67544-0357-15
 ;;9002226.02101,"992,67544-0358-15 ",.01)
 ;;67544-0358-15
 ;;9002226.02101,"992,67544-0358-15 ",.02)
 ;;67544-0358-15
 ;;9002226.02101,"992,67544-0360-15 ",.01)
 ;;67544-0360-15
 ;;9002226.02101,"992,67544-0360-15 ",.02)
 ;;67544-0360-15
 ;;9002226.02101,"992,67544-0365-15 ",.01)
 ;;67544-0365-15
 ;;9002226.02101,"992,67544-0365-15 ",.02)
 ;;67544-0365-15
 ;;9002226.02101,"992,67544-0366-15 ",.01)
 ;;67544-0366-15
 ;;9002226.02101,"992,67544-0366-15 ",.02)
 ;;67544-0366-15
 ;;9002226.02101,"992,67544-0409-15 ",.01)
 ;;67544-0409-15
 ;;9002226.02101,"992,67544-0409-15 ",.02)
 ;;67544-0409-15
 ;;9002226.02101,"992,67544-0429-15 ",.01)
 ;;67544-0429-15
 ;;9002226.02101,"992,67544-0429-15 ",.02)
 ;;67544-0429-15
 ;;9002226.02101,"992,67544-0430-15 ",.01)
 ;;67544-0430-15
 ;;9002226.02101,"992,67544-0430-15 ",.02)
 ;;67544-0430-15
 ;;9002226.02101,"992,67544-0434-15 ",.01)
 ;;67544-0434-15
 ;;9002226.02101,"992,67544-0434-15 ",.02)
 ;;67544-0434-15
 ;;9002226.02101,"992,67544-0455-15 ",.01)
 ;;67544-0455-15
 ;;9002226.02101,"992,67544-0455-15 ",.02)
 ;;67544-0455-15
 ;;9002226.02101,"992,67544-0464-82 ",.01)
 ;;67544-0464-82
 ;;9002226.02101,"992,67544-0464-82 ",.02)
 ;;67544-0464-82
 ;;9002226.02101,"992,67544-0499-82 ",.01)
 ;;67544-0499-82
 ;;9002226.02101,"992,67544-0499-82 ",.02)
 ;;67544-0499-82
 ;;9002226.02101,"992,67544-0500-15 ",.01)
 ;;67544-0500-15
 ;;9002226.02101,"992,67544-0500-15 ",.02)
 ;;67544-0500-15
 ;;9002226.02101,"992,67544-0528-30 ",.01)
 ;;67544-0528-30
 ;;9002226.02101,"992,67544-0528-30 ",.02)
 ;;67544-0528-30
 ;;9002226.02101,"992,67544-0547-30 ",.01)
 ;;67544-0547-30
 ;;9002226.02101,"992,67544-0547-30 ",.02)
 ;;67544-0547-30
 ;;9002226.02101,"992,67544-0588-15 ",.01)
 ;;67544-0588-15
 ;;9002226.02101,"992,67544-0588-15 ",.02)
 ;;67544-0588-15
 ;;9002226.02101,"992,67544-0848-30 ",.01)
 ;;67544-0848-30
 ;;9002226.02101,"992,67544-0848-30 ",.02)
 ;;67544-0848-30
 ;;9002226.02101,"992,67544-0906-15 ",.01)
 ;;67544-0906-15
 ;;9002226.02101,"992,67544-0906-15 ",.02)
 ;;67544-0906-15
 ;;9002226.02101,"992,67544-0906-73 ",.01)
 ;;67544-0906-73
 ;;9002226.02101,"992,67544-0906-73 ",.02)
 ;;67544-0906-73
 ;;9002226.02101,"992,67544-0908-15 ",.01)
 ;;67544-0908-15
 ;;9002226.02101,"992,67544-0908-15 ",.02)
 ;;67544-0908-15
 ;;9002226.02101,"992,67544-0959-15 ",.01)
 ;;67544-0959-15
 ;;9002226.02101,"992,67544-0959-15 ",.02)
 ;;67544-0959-15
 ;;9002226.02101,"992,67767-0117-60 ",.01)
 ;;67767-0117-60
 ;;9002226.02101,"992,67767-0117-60 ",.02)
 ;;67767-0117-60
 ;;9002226.02101,"992,67767-0133-05 ",.01)
 ;;67767-0133-05
 ;;9002226.02101,"992,67767-0133-05 ",.02)
 ;;67767-0133-05
 ;;9002226.02101,"992,67767-0133-25 ",.01)
 ;;67767-0133-25
 ;;9002226.02101,"992,67767-0133-25 ",.02)
 ;;67767-0133-25
 ;;9002226.02101,"992,67767-0133-60 ",.01)
 ;;67767-0133-60
 ;;9002226.02101,"992,67767-0133-60 ",.02)
 ;;67767-0133-60
 ;;9002226.02101,"992,67767-0135-60 ",.01)
 ;;67767-0135-60
 ;;9002226.02101,"992,67767-0135-60 ",.02)
 ;;67767-0135-60
 ;;9002226.02101,"992,67767-0141-30 ",.01)
 ;;67767-0141-30
 ;;9002226.02101,"992,67767-0141-30 ",.02)
 ;;67767-0141-30
 ;;9002226.02101,"992,67767-0141-90 ",.01)
 ;;67767-0141-90
 ;;9002226.02101,"992,67767-0141-90 ",.02)
 ;;67767-0141-90
 ;;9002226.02101,"992,67767-0142-05 ",.01)
 ;;67767-0142-05
 ;;9002226.02101,"992,67767-0142-05 ",.02)
 ;;67767-0142-05
 ;;9002226.02101,"992,67767-0142-30 ",.01)
 ;;67767-0142-30
 ;;9002226.02101,"992,67767-0142-30 ",.02)
 ;;67767-0142-30
 ;;9002226.02101,"992,67767-0142-90 ",.01)
 ;;67767-0142-90
 ;;9002226.02101,"992,67767-0142-90 ",.02)
 ;;67767-0142-90
 ;;9002226.02101,"992,67767-0171-60 ",.01)
 ;;67767-0171-60
 ;;9002226.02101,"992,67767-0171-60 ",.02)
 ;;67767-0171-60
 ;;9002226.02101,"992,67801-0204-10 ",.01)
 ;;67801-0204-10
 ;;9002226.02101,"992,67801-0204-10 ",.02)
 ;;67801-0204-10
 ;;9002226.02101,"992,67801-0205-10 ",.01)
 ;;67801-0205-10
 ;;9002226.02101,"992,67801-0205-10 ",.02)
 ;;67801-0205-10
 ;;9002226.02101,"992,67801-0310-30 ",.01)
 ;;67801-0310-30
 ;;9002226.02101,"992,67801-0310-30 ",.02)
 ;;67801-0310-30
 ;;9002226.02101,"992,67801-0312-03 ",.01)
 ;;67801-0312-03
 ;;9002226.02101,"992,67801-0312-03 ",.02)
 ;;67801-0312-03
 ;;9002226.02101,"992,67801-0321-03 ",.01)
 ;;67801-0321-03
 ;;9002226.02101,"992,67801-0321-03 ",.02)
 ;;67801-0321-03
 ;;9002226.02101,"992,67801-0409-30 ",.01)
 ;;67801-0409-30
 ;;9002226.02101,"992,67801-0409-30 ",.02)
 ;;67801-0409-30
 ;;9002226.02101,"992,67801-0411-03 ",.01)
 ;;67801-0411-03
 ;;9002226.02101,"992,67801-0411-03 ",.02)
 ;;67801-0411-03
 ;;9002226.02101,"992,67801-0433-30 ",.01)
 ;;67801-0433-30
 ;;9002226.02101,"992,67801-0433-30 ",.02)
 ;;67801-0433-30
 ;;9002226.02101,"992,68071-0122-60 ",.01)
 ;;68071-0122-60
 ;;9002226.02101,"992,68071-0122-60 ",.02)
 ;;68071-0122-60
 ;;9002226.02101,"992,68071-0222-30 ",.01)
 ;;68071-0222-30
 ;;9002226.02101,"992,68071-0222-30 ",.02)
 ;;68071-0222-30
 ;;9002226.02101,"992,68071-0231-30 ",.01)
 ;;68071-0231-30
 ;;9002226.02101,"992,68071-0231-30 ",.02)
 ;;68071-0231-30
 ;;9002226.02101,"992,68071-0231-60 ",.01)
 ;;68071-0231-60
 ;;9002226.02101,"992,68071-0231-60 ",.02)
 ;;68071-0231-60
 ;;9002226.02101,"992,68071-0231-90 ",.01)
 ;;68071-0231-90
 ;;9002226.02101,"992,68071-0231-90 ",.02)
 ;;68071-0231-90
 ;;9002226.02101,"992,68071-0322-30 ",.01)
 ;;68071-0322-30
 ;;9002226.02101,"992,68071-0322-30 ",.02)
 ;;68071-0322-30
 ;;9002226.02101,"992,68071-0322-40 ",.01)
 ;;68071-0322-40
 ;;9002226.02101,"992,68071-0322-40 ",.02)
 ;;68071-0322-40
 ;;9002226.02101,"992,68071-0322-60 ",.01)
 ;;68071-0322-60
 ;;9002226.02101,"992,68071-0322-60 ",.02)
 ;;68071-0322-60
 ;;9002226.02101,"992,68071-0322-90 ",.01)
 ;;68071-0322-90
 ;;9002226.02101,"992,68071-0322-90 ",.02)
 ;;68071-0322-90
 ;;9002226.02101,"992,68071-0323-30 ",.01)
 ;;68071-0323-30
 ;;9002226.02101,"992,68071-0323-30 ",.02)
 ;;68071-0323-30
 ;;9002226.02101,"992,68071-0323-60 ",.01)
 ;;68071-0323-60
 ;;9002226.02101,"992,68071-0323-60 ",.02)
 ;;68071-0323-60
 ;;9002226.02101,"992,68071-0323-90 ",.01)
 ;;68071-0323-90
 ;;9002226.02101,"992,68071-0323-90 ",.02)
 ;;68071-0323-90
 ;;9002226.02101,"992,68071-0333-30 ",.01)
 ;;68071-0333-30
 ;;9002226.02101,"992,68071-0333-30 ",.02)
 ;;68071-0333-30
 ;;9002226.02101,"992,68071-0412-15 ",.01)
 ;;68071-0412-15
 ;;9002226.02101,"992,68071-0412-15 ",.02)
 ;;68071-0412-15
 ;;9002226.02101,"992,68071-0412-30 ",.01)
 ;;68071-0412-30
 ;;9002226.02101,"992,68071-0412-30 ",.02)
 ;;68071-0412-30
 ;;9002226.02101,"992,68071-0412-60 ",.01)
 ;;68071-0412-60
 ;;9002226.02101,"992,68071-0412-60 ",.02)
 ;;68071-0412-60
 ;;9002226.02101,"992,68071-0444-15 ",.01)
 ;;68071-0444-15
 ;;9002226.02101,"992,68071-0444-15 ",.02)
 ;;68071-0444-15
 ;;9002226.02101,"992,68071-0444-60 ",.01)
 ;;68071-0444-60
 ;;9002226.02101,"992,68071-0444-60 ",.02)
 ;;68071-0444-60
 ;;9002226.02101,"992,68071-0445-15 ",.01)
 ;;68071-0445-15
 ;;9002226.02101,"992,68071-0445-15 ",.02)
 ;;68071-0445-15
 ;;9002226.02101,"992,68071-0445-60 ",.01)
 ;;68071-0445-60
 ;;9002226.02101,"992,68071-0445-60 ",.02)
 ;;68071-0445-60
 ;;9002226.02101,"992,68071-1312-00 ",.01)
 ;;68071-1312-00
 ;;9002226.02101,"992,68071-1312-00 ",.02)
 ;;68071-1312-00
 ;;9002226.02101,"992,68071-1313-00 ",.01)
 ;;68071-1313-00
 ;;9002226.02101,"992,68071-1313-00 ",.02)
 ;;68071-1313-00
 ;;9002226.02101,"992,68084-0031-01 ",.01)
 ;;68084-0031-01
 ;;9002226.02101,"992,68084-0031-01 ",.02)
 ;;68084-0031-01
 ;;9002226.02101,"992,68084-0031-11 ",.01)
 ;;68084-0031-11
 ;;9002226.02101,"992,68084-0031-11 ",.02)
 ;;68084-0031-11
 ;;9002226.02101,"992,68084-0032-01 ",.01)
 ;;68084-0032-01
 ;;9002226.02101,"992,68084-0032-01 ",.02)
 ;;68084-0032-01
 ;;9002226.02101,"992,68084-0032-11 ",.01)
 ;;68084-0032-11
 ;;9002226.02101,"992,68084-0032-11 ",.02)
 ;;68084-0032-11
 ;;9002226.02101,"992,68084-0044-01 ",.01)
 ;;68084-0044-01
 ;;9002226.02101,"992,68084-0044-01 ",.02)
 ;;68084-0044-01
 ;;9002226.02101,"992,68084-0044-05 ",.01)
 ;;68084-0044-05
 ;;9002226.02101,"992,68084-0044-05 ",.02)
 ;;68084-0044-05
 ;;9002226.02101,"992,68084-0044-11 ",.01)
 ;;68084-0044-11
 ;;9002226.02101,"992,68084-0044-11 ",.02)
 ;;68084-0044-11
 ;;9002226.02101,"992,68084-0044-30 ",.01)
 ;;68084-0044-30
 ;;9002226.02101,"992,68084-0044-30 ",.02)
 ;;68084-0044-30
 ;;9002226.02101,"992,68084-0044-85 ",.01)
 ;;68084-0044-85
 ;;9002226.02101,"992,68084-0044-85 ",.02)
 ;;68084-0044-85
 ;;9002226.02101,"992,68084-0044-90 ",.01)
 ;;68084-0044-90
 ;;9002226.02101,"992,68084-0044-90 ",.02)
 ;;68084-0044-90
 ;;9002226.02101,"992,68084-0045-00 ",.01)
 ;;68084-0045-00
 ;;9002226.02101,"992,68084-0045-00 ",.02)
 ;;68084-0045-00
 ;;9002226.02101,"992,68084-0045-01 ",.01)
 ;;68084-0045-01
 ;;9002226.02101,"992,68084-0045-01 ",.02)
 ;;68084-0045-01
 ;;9002226.02101,"992,68084-0045-05 ",.01)
 ;;68084-0045-05
 ;;9002226.02101,"992,68084-0045-05 ",.02)
 ;;68084-0045-05
 ;;9002226.02101,"992,68084-0045-11 ",.01)
 ;;68084-0045-11
 ;;9002226.02101,"992,68084-0045-11 ",.02)
 ;;68084-0045-11
