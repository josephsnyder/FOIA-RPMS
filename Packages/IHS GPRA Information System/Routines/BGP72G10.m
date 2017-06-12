BGP72G10 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1905,43353-0579-30 ",.01)
 ;;43353-0579-30
 ;;9002226.02101,"1905,43353-0579-30 ",.02)
 ;;43353-0579-30
 ;;9002226.02101,"1905,43353-0584-30 ",.01)
 ;;43353-0584-30
 ;;9002226.02101,"1905,43353-0584-30 ",.02)
 ;;43353-0584-30
 ;;9002226.02101,"1905,43353-0584-60 ",.01)
 ;;43353-0584-60
 ;;9002226.02101,"1905,43353-0584-60 ",.02)
 ;;43353-0584-60
 ;;9002226.02101,"1905,43353-0587-30 ",.01)
 ;;43353-0587-30
 ;;9002226.02101,"1905,43353-0587-30 ",.02)
 ;;43353-0587-30
 ;;9002226.02101,"1905,43683-0117-30 ",.01)
 ;;43683-0117-30
 ;;9002226.02101,"1905,43683-0117-30 ",.02)
 ;;43683-0117-30
 ;;9002226.02101,"1905,43683-0118-30 ",.01)
 ;;43683-0118-30
 ;;9002226.02101,"1905,43683-0118-30 ",.02)
 ;;43683-0118-30
 ;;9002226.02101,"1905,49999-0093-30 ",.01)
 ;;49999-0093-30
 ;;9002226.02101,"1905,49999-0093-30 ",.02)
 ;;49999-0093-30
 ;;9002226.02101,"1905,49999-0411-30 ",.01)
 ;;49999-0411-30
 ;;9002226.02101,"1905,49999-0411-30 ",.02)
 ;;49999-0411-30
 ;;9002226.02101,"1905,49999-0576-00 ",.01)
 ;;49999-0576-00
 ;;9002226.02101,"1905,49999-0576-00 ",.02)
 ;;49999-0576-00
 ;;9002226.02101,"1905,49999-0576-10 ",.01)
 ;;49999-0576-10
 ;;9002226.02101,"1905,49999-0576-10 ",.02)
 ;;49999-0576-10
 ;;9002226.02101,"1905,49999-0576-20 ",.01)
 ;;49999-0576-20
 ;;9002226.02101,"1905,49999-0576-20 ",.02)
 ;;49999-0576-20
 ;;9002226.02101,"1905,49999-0576-30 ",.01)
 ;;49999-0576-30
 ;;9002226.02101,"1905,49999-0576-30 ",.02)
 ;;49999-0576-30
 ;;9002226.02101,"1905,49999-0576-60 ",.01)
 ;;49999-0576-60
 ;;9002226.02101,"1905,49999-0576-60 ",.02)
 ;;49999-0576-60
 ;;9002226.02101,"1905,49999-0576-90 ",.01)
 ;;49999-0576-90
 ;;9002226.02101,"1905,49999-0576-90 ",.02)
 ;;49999-0576-90
 ;;9002226.02101,"1905,49999-0829-00 ",.01)
 ;;49999-0829-00
 ;;9002226.02101,"1905,49999-0829-00 ",.02)
 ;;49999-0829-00
 ;;9002226.02101,"1905,49999-0923-10 ",.01)
 ;;49999-0923-10
 ;;9002226.02101,"1905,49999-0923-10 ",.02)
 ;;49999-0923-10
 ;;9002226.02101,"1905,49999-0923-30 ",.01)
 ;;49999-0923-30
 ;;9002226.02101,"1905,49999-0923-30 ",.02)
 ;;49999-0923-30
 ;;9002226.02101,"1905,49999-0923-60 ",.01)
 ;;49999-0923-60
 ;;9002226.02101,"1905,49999-0923-60 ",.02)
 ;;49999-0923-60
 ;;9002226.02101,"1905,49999-0923-90 ",.01)
 ;;49999-0923-90
 ;;9002226.02101,"1905,49999-0923-90 ",.02)
 ;;49999-0923-90
 ;;9002226.02101,"1905,50222-0342-08 ",.01)
 ;;50222-0342-08
 ;;9002226.02101,"1905,50222-0342-08 ",.02)
 ;;50222-0342-08
 ;;9002226.02101,"1905,50222-0342-53 ",.01)
 ;;50222-0342-53
 ;;9002226.02101,"1905,50222-0342-53 ",.02)
 ;;50222-0342-53
 ;;9002226.02101,"1905,51138-0054-30 ",.01)
 ;;51138-0054-30
 ;;9002226.02101,"1905,51138-0054-30 ",.02)
 ;;51138-0054-30
 ;;9002226.02101,"1905,51138-0055-30 ",.01)
 ;;51138-0055-30
 ;;9002226.02101,"1905,51138-0055-30 ",.02)
 ;;51138-0055-30
 ;;9002226.02101,"1905,51138-0056-30 ",.01)
 ;;51138-0056-30
 ;;9002226.02101,"1905,51138-0056-30 ",.02)
 ;;51138-0056-30
 ;;9002226.02101,"1905,51138-0057-30 ",.01)
 ;;51138-0057-30
 ;;9002226.02101,"1905,51138-0057-30 ",.02)
 ;;51138-0057-30
 ;;9002226.02101,"1905,51138-0058-30 ",.01)
 ;;51138-0058-30
 ;;9002226.02101,"1905,51138-0058-30 ",.02)
 ;;51138-0058-30
 ;;9002226.02101,"1905,51138-0059-30 ",.01)
 ;;51138-0059-30
 ;;9002226.02101,"1905,51138-0059-30 ",.02)
 ;;51138-0059-30
 ;;9002226.02101,"1905,51138-0060-30 ",.01)
 ;;51138-0060-30
 ;;9002226.02101,"1905,51138-0060-30 ",.02)
 ;;51138-0060-30
 ;;9002226.02101,"1905,51138-0061-30 ",.01)
 ;;51138-0061-30
 ;;9002226.02101,"1905,51138-0061-30 ",.02)
 ;;51138-0061-30
 ;;9002226.02101,"1905,51138-0062-30 ",.01)
 ;;51138-0062-30
 ;;9002226.02101,"1905,51138-0062-30 ",.02)
 ;;51138-0062-30
 ;;9002226.02101,"1905,51138-0179-30 ",.01)
 ;;51138-0179-30
 ;;9002226.02101,"1905,51138-0179-30 ",.02)
 ;;51138-0179-30
 ;;9002226.02101,"1905,51138-0180-30 ",.01)
 ;;51138-0180-30
 ;;9002226.02101,"1905,51138-0180-30 ",.02)
 ;;51138-0180-30
 ;;9002226.02101,"1905,51138-0180-60 ",.01)
 ;;51138-0180-60
 ;;9002226.02101,"1905,51138-0180-60 ",.02)
 ;;51138-0180-60
 ;;9002226.02101,"1905,51138-0181-30 ",.01)
 ;;51138-0181-30
 ;;9002226.02101,"1905,51138-0181-30 ",.02)
 ;;51138-0181-30
 ;;9002226.02101,"1905,51138-0182-30 ",.01)
 ;;51138-0182-30
 ;;9002226.02101,"1905,51138-0182-30 ",.02)
 ;;51138-0182-30
 ;;9002226.02101,"1905,51138-0183-30 ",.01)
 ;;51138-0183-30
 ;;9002226.02101,"1905,51138-0183-30 ",.02)
 ;;51138-0183-30
 ;;9002226.02101,"1905,51138-0184-30 ",.01)
 ;;51138-0184-30
 ;;9002226.02101,"1905,51138-0184-30 ",.02)
 ;;51138-0184-30
 ;;9002226.02101,"1905,51138-0185-30 ",.01)
 ;;51138-0185-30
 ;;9002226.02101,"1905,51138-0185-30 ",.02)
 ;;51138-0185-30
 ;;9002226.02101,"1905,51138-0186-30 ",.01)
 ;;51138-0186-30
 ;;9002226.02101,"1905,51138-0186-30 ",.02)
 ;;51138-0186-30
 ;;9002226.02101,"1905,51138-0187-30 ",.01)
 ;;51138-0187-30
 ;;9002226.02101,"1905,51138-0187-30 ",.02)
 ;;51138-0187-30
 ;;9002226.02101,"1905,51138-0195-30 ",.01)
 ;;51138-0195-30
 ;;9002226.02101,"1905,51138-0195-30 ",.02)
 ;;51138-0195-30
 ;;9002226.02101,"1905,51138-0196-30 ",.01)
 ;;51138-0196-30
 ;;9002226.02101,"1905,51138-0196-30 ",.02)
 ;;51138-0196-30
 ;;9002226.02101,"1905,51138-0196-60 ",.01)
 ;;51138-0196-60
 ;;9002226.02101,"1905,51138-0196-60 ",.02)
 ;;51138-0196-60
 ;;9002226.02101,"1905,51138-0197-30 ",.01)
 ;;51138-0197-30
 ;;9002226.02101,"1905,51138-0197-30 ",.02)
 ;;51138-0197-30
 ;;9002226.02101,"1905,51138-0198-30 ",.01)
 ;;51138-0198-30
 ;;9002226.02101,"1905,51138-0198-30 ",.02)
 ;;51138-0198-30
 ;;9002226.02101,"1905,51138-0199-30 ",.01)
 ;;51138-0199-30
 ;;9002226.02101,"1905,51138-0199-30 ",.02)
 ;;51138-0199-30
 ;;9002226.02101,"1905,51138-0200-30 ",.01)
 ;;51138-0200-30
 ;;9002226.02101,"1905,51138-0200-30 ",.02)
 ;;51138-0200-30
 ;;9002226.02101,"1905,51138-0201-30 ",.01)
 ;;51138-0201-30
 ;;9002226.02101,"1905,51138-0201-30 ",.02)
 ;;51138-0201-30
 ;;9002226.02101,"1905,51138-0202-30 ",.01)
 ;;51138-0202-30
 ;;9002226.02101,"1905,51138-0202-30 ",.02)
 ;;51138-0202-30
 ;;9002226.02101,"1905,51138-0203-30 ",.01)
 ;;51138-0203-30
 ;;9002226.02101,"1905,51138-0203-30 ",.02)
 ;;51138-0203-30
 ;;9002226.02101,"1905,51138-0482-10 ",.01)
 ;;51138-0482-10
 ;;9002226.02101,"1905,51138-0482-10 ",.02)
 ;;51138-0482-10
 ;;9002226.02101,"1905,51138-0482-30 ",.01)
 ;;51138-0482-30
 ;;9002226.02101,"1905,51138-0482-30 ",.02)
 ;;51138-0482-30
 ;;9002226.02101,"1905,51138-0483-30 ",.01)
 ;;51138-0483-30
 ;;9002226.02101,"1905,51138-0483-30 ",.02)
 ;;51138-0483-30
 ;;9002226.02101,"1905,51138-0484-10 ",.01)
 ;;51138-0484-10
 ;;9002226.02101,"1905,51138-0484-10 ",.02)
 ;;51138-0484-10
 ;;9002226.02101,"1905,51138-0484-30 ",.01)
 ;;51138-0484-30
 ;;9002226.02101,"1905,51138-0484-30 ",.02)
 ;;51138-0484-30
 ;;9002226.02101,"1905,51138-0484-45 ",.01)
 ;;51138-0484-45
 ;;9002226.02101,"1905,51138-0484-45 ",.02)
 ;;51138-0484-45
 ;;9002226.02101,"1905,51138-0485-10 ",.01)
 ;;51138-0485-10
 ;;9002226.02101,"1905,51138-0485-10 ",.02)
 ;;51138-0485-10
 ;;9002226.02101,"1905,51138-0485-30 ",.01)
 ;;51138-0485-30
 ;;9002226.02101,"1905,51138-0485-30 ",.02)
 ;;51138-0485-30
 ;;9002226.02101,"1905,51138-0486-10 ",.01)
 ;;51138-0486-10
 ;;9002226.02101,"1905,51138-0486-10 ",.02)
 ;;51138-0486-10
 ;;9002226.02101,"1905,51138-0486-30 ",.01)
 ;;51138-0486-30
 ;;9002226.02101,"1905,51138-0486-30 ",.02)
 ;;51138-0486-30
 ;;9002226.02101,"1905,51138-0487-10 ",.01)
 ;;51138-0487-10
 ;;9002226.02101,"1905,51138-0487-10 ",.02)
 ;;51138-0487-10
 ;;9002226.02101,"1905,51138-0487-20 ",.01)
 ;;51138-0487-20
 ;;9002226.02101,"1905,51138-0487-20 ",.02)
 ;;51138-0487-20
 ;;9002226.02101,"1905,51138-0487-30 ",.01)
 ;;51138-0487-30
 ;;9002226.02101,"1905,51138-0487-30 ",.02)
 ;;51138-0487-30
 ;;9002226.02101,"1905,51138-0487-75 ",.01)
 ;;51138-0487-75
 ;;9002226.02101,"1905,51138-0487-75 ",.02)
 ;;51138-0487-75
 ;;9002226.02101,"1905,51138-0488-10 ",.01)
 ;;51138-0488-10
 ;;9002226.02101,"1905,51138-0488-10 ",.02)
 ;;51138-0488-10
 ;;9002226.02101,"1905,51138-0488-30 ",.01)
 ;;51138-0488-30
 ;;9002226.02101,"1905,51138-0488-30 ",.02)
 ;;51138-0488-30
 ;;9002226.02101,"1905,51138-0489-30 ",.01)
 ;;51138-0489-30
 ;;9002226.02101,"1905,51138-0489-30 ",.02)
 ;;51138-0489-30
 ;;9002226.02101,"1905,51138-0490-10 ",.01)
 ;;51138-0490-10
 ;;9002226.02101,"1905,51138-0490-10 ",.02)
 ;;51138-0490-10
 ;;9002226.02101,"1905,51138-0490-30 ",.01)
 ;;51138-0490-30
 ;;9002226.02101,"1905,51138-0490-30 ",.02)
 ;;51138-0490-30
 ;;9002226.02101,"1905,51672-4027-01 ",.01)
 ;;51672-4027-01
 ;;9002226.02101,"1905,51672-4027-01 ",.02)
 ;;51672-4027-01
 ;;9002226.02101,"1905,51672-4027-03 ",.01)
 ;;51672-4027-03
 ;;9002226.02101,"1905,51672-4027-03 ",.02)
 ;;51672-4027-03
 ;;9002226.02101,"1905,51672-4027-07 ",.01)
 ;;51672-4027-07
 ;;9002226.02101,"1905,51672-4027-07 ",.02)
 ;;51672-4027-07
 ;;9002226.02101,"1905,51672-4028-01 ",.01)
 ;;51672-4028-01
 ;;9002226.02101,"1905,51672-4028-01 ",.02)
 ;;51672-4028-01
 ;;9002226.02101,"1905,51672-4028-03 ",.01)
 ;;51672-4028-03
 ;;9002226.02101,"1905,51672-4028-03 ",.02)
 ;;51672-4028-03
 ;;9002226.02101,"1905,51672-4028-07 ",.01)
 ;;51672-4028-07
 ;;9002226.02101,"1905,51672-4028-07 ",.02)
 ;;51672-4028-07
 ;;9002226.02101,"1905,51672-4029-01 ",.01)
 ;;51672-4029-01
 ;;9002226.02101,"1905,51672-4029-01 ",.02)
 ;;51672-4029-01
 ;;9002226.02101,"1905,51672-4029-03 ",.01)
 ;;51672-4029-03
 ;;9002226.02101,"1905,51672-4029-03 ",.02)
 ;;51672-4029-03
 ;;9002226.02101,"1905,51672-4029-07 ",.01)
 ;;51672-4029-07
 ;;9002226.02101,"1905,51672-4029-07 ",.02)
 ;;51672-4029-07
 ;;9002226.02101,"1905,51672-4030-01 ",.01)
 ;;51672-4030-01
 ;;9002226.02101,"1905,51672-4030-01 ",.02)
 ;;51672-4030-01
 ;;9002226.02101,"1905,51672-4030-03 ",.01)
 ;;51672-4030-03
 ;;9002226.02101,"1905,51672-4030-03 ",.02)
 ;;51672-4030-03
 ;;9002226.02101,"1905,51672-4030-07 ",.01)
 ;;51672-4030-07
 ;;9002226.02101,"1905,51672-4030-07 ",.02)
 ;;51672-4030-07
 ;;9002226.02101,"1905,51672-4031-01 ",.01)
 ;;51672-4031-01
 ;;9002226.02101,"1905,51672-4031-01 ",.02)
 ;;51672-4031-01
 ;;9002226.02101,"1905,51672-4031-03 ",.01)
 ;;51672-4031-03
 ;;9002226.02101,"1905,51672-4031-03 ",.02)
 ;;51672-4031-03
 ;;9002226.02101,"1905,51672-4031-07 ",.01)
 ;;51672-4031-07
 ;;9002226.02101,"1905,51672-4031-07 ",.02)
 ;;51672-4031-07
 ;;9002226.02101,"1905,51672-4032-01 ",.01)
 ;;51672-4032-01
 ;;9002226.02101,"1905,51672-4032-01 ",.02)
 ;;51672-4032-01
 ;;9002226.02101,"1905,51672-4032-03 ",.01)
 ;;51672-4032-03
 ;;9002226.02101,"1905,51672-4032-03 ",.02)
 ;;51672-4032-03
 ;;9002226.02101,"1905,51672-4032-07 ",.01)
 ;;51672-4032-07
 ;;9002226.02101,"1905,51672-4032-07 ",.02)
 ;;51672-4032-07
 ;;9002226.02101,"1905,51672-4033-01 ",.01)
 ;;51672-4033-01
 ;;9002226.02101,"1905,51672-4033-01 ",.02)
 ;;51672-4033-01
 ;;9002226.02101,"1905,51672-4033-03 ",.01)
 ;;51672-4033-03
 ;;9002226.02101,"1905,51672-4033-03 ",.02)
 ;;51672-4033-03
 ;;9002226.02101,"1905,51672-4034-01 ",.01)
 ;;51672-4034-01
 ;;9002226.02101,"1905,51672-4034-01 ",.02)
 ;;51672-4034-01
 ;;9002226.02101,"1905,51672-4034-03 ",.01)
 ;;51672-4034-03
 ;;9002226.02101,"1905,51672-4034-03 ",.02)
 ;;51672-4034-03
 ;;9002226.02101,"1905,51672-4035-01 ",.01)
 ;;51672-4035-01
 ;;9002226.02101,"1905,51672-4035-01 ",.02)
 ;;51672-4035-01
 ;;9002226.02101,"1905,51672-4035-03 ",.01)
 ;;51672-4035-03
 ;;9002226.02101,"1905,51672-4035-03 ",.02)
 ;;51672-4035-03
 ;;9002226.02101,"1905,52533-0104-70 ",.01)
 ;;52533-0104-70
 ;;9002226.02101,"1905,52533-0104-70 ",.02)
 ;;52533-0104-70
 ;;9002226.02101,"1905,52533-0179-18 ",.01)
 ;;52533-0179-18
