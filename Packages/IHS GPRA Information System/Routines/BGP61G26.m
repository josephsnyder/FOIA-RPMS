BGP61G26 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1220,63304-0500-30 ",.01)
 ;;63304-0500-30
 ;;9002226.02101,"1220,63304-0500-30 ",.02)
 ;;63304-0500-30
 ;;9002226.02101,"1220,63304-0501-30 ",.01)
 ;;63304-0501-30
 ;;9002226.02101,"1220,63304-0501-30 ",.02)
 ;;63304-0501-30
 ;;9002226.02101,"1220,63304-0502-30 ",.01)
 ;;63304-0502-30
 ;;9002226.02101,"1220,63304-0502-30 ",.02)
 ;;63304-0502-30
 ;;9002226.02101,"1220,63304-0503-30 ",.01)
 ;;63304-0503-30
 ;;9002226.02101,"1220,63304-0503-30 ",.02)
 ;;63304-0503-30
 ;;9002226.02101,"1220,63304-0587-30 ",.01)
 ;;63304-0587-30
 ;;9002226.02101,"1220,63304-0587-30 ",.02)
 ;;63304-0587-30
 ;;9002226.02101,"1220,63304-0588-30 ",.01)
 ;;63304-0588-30
 ;;9002226.02101,"1220,63304-0588-30 ",.02)
 ;;63304-0588-30
 ;;9002226.02101,"1220,63304-0589-30 ",.01)
 ;;63304-0589-30
 ;;9002226.02101,"1220,63304-0589-30 ",.02)
 ;;63304-0589-30
 ;;9002226.02101,"1220,63304-0590-30 ",.01)
 ;;63304-0590-30
 ;;9002226.02101,"1220,63304-0590-30 ",.02)
 ;;63304-0590-30
 ;;9002226.02101,"1220,63304-0591-30 ",.01)
 ;;63304-0591-30
 ;;9002226.02101,"1220,63304-0591-30 ",.02)
 ;;63304-0591-30
 ;;9002226.02101,"1220,63304-0603-30 ",.01)
 ;;63304-0603-30
 ;;9002226.02101,"1220,63304-0603-30 ",.02)
 ;;63304-0603-30
 ;;9002226.02101,"1220,63629-1454-01 ",.01)
 ;;63629-1454-01
 ;;9002226.02101,"1220,63629-1454-01 ",.02)
 ;;63629-1454-01
 ;;9002226.02101,"1220,63629-1559-01 ",.01)
 ;;63629-1559-01
 ;;9002226.02101,"1220,63629-1559-01 ",.02)
 ;;63629-1559-01
 ;;9002226.02101,"1220,63629-1559-02 ",.01)
 ;;63629-1559-02
 ;;9002226.02101,"1220,63629-1559-02 ",.02)
 ;;63629-1559-02
 ;;9002226.02101,"1220,63629-1560-01 ",.01)
 ;;63629-1560-01
 ;;9002226.02101,"1220,63629-1560-01 ",.02)
 ;;63629-1560-01
 ;;9002226.02101,"1220,63629-1561-01 ",.01)
 ;;63629-1561-01
 ;;9002226.02101,"1220,63629-1561-01 ",.02)
 ;;63629-1561-01
 ;;9002226.02101,"1220,63629-1561-02 ",.01)
 ;;63629-1561-02
 ;;9002226.02101,"1220,63629-1561-02 ",.02)
 ;;63629-1561-02
 ;;9002226.02101,"1220,63629-1561-03 ",.01)
 ;;63629-1561-03
 ;;9002226.02101,"1220,63629-1561-03 ",.02)
 ;;63629-1561-03
 ;;9002226.02101,"1220,63629-1561-04 ",.01)
 ;;63629-1561-04
 ;;9002226.02101,"1220,63629-1561-04 ",.02)
 ;;63629-1561-04
 ;;9002226.02101,"1220,63629-1565-01 ",.01)
 ;;63629-1565-01
 ;;9002226.02101,"1220,63629-1565-01 ",.02)
 ;;63629-1565-01
 ;;9002226.02101,"1220,63629-1565-02 ",.01)
 ;;63629-1565-02
 ;;9002226.02101,"1220,63629-1565-02 ",.02)
 ;;63629-1565-02
 ;;9002226.02101,"1220,63629-1565-03 ",.01)
 ;;63629-1565-03
 ;;9002226.02101,"1220,63629-1565-03 ",.02)
 ;;63629-1565-03
 ;;9002226.02101,"1220,63629-1566-01 ",.01)
 ;;63629-1566-01
 ;;9002226.02101,"1220,63629-1566-01 ",.02)
 ;;63629-1566-01
 ;;9002226.02101,"1220,63629-1566-02 ",.01)
 ;;63629-1566-02
 ;;9002226.02101,"1220,63629-1566-02 ",.02)
 ;;63629-1566-02
 ;;9002226.02101,"1220,63629-1566-03 ",.01)
 ;;63629-1566-03
 ;;9002226.02101,"1220,63629-1566-03 ",.02)
 ;;63629-1566-03
 ;;9002226.02101,"1220,63629-1566-04 ",.01)
 ;;63629-1566-04
 ;;9002226.02101,"1220,63629-1566-04 ",.02)
 ;;63629-1566-04
 ;;9002226.02101,"1220,63629-1566-05 ",.01)
 ;;63629-1566-05
 ;;9002226.02101,"1220,63629-1566-05 ",.02)
 ;;63629-1566-05
 ;;9002226.02101,"1220,63629-1597-01 ",.01)
 ;;63629-1597-01
 ;;9002226.02101,"1220,63629-1597-01 ",.02)
 ;;63629-1597-01
 ;;9002226.02101,"1220,63629-3052-01 ",.01)
 ;;63629-3052-01
 ;;9002226.02101,"1220,63629-3052-01 ",.02)
 ;;63629-3052-01
 ;;9002226.02101,"1220,63629-3052-02 ",.01)
 ;;63629-3052-02
 ;;9002226.02101,"1220,63629-3052-02 ",.02)
 ;;63629-3052-02
 ;;9002226.02101,"1220,63629-3052-03 ",.01)
 ;;63629-3052-03
 ;;9002226.02101,"1220,63629-3052-03 ",.02)
 ;;63629-3052-03
 ;;9002226.02101,"1220,63629-3564-01 ",.01)
 ;;63629-3564-01
 ;;9002226.02101,"1220,63629-3564-01 ",.02)
 ;;63629-3564-01
 ;;9002226.02101,"1220,63629-3649-01 ",.01)
 ;;63629-3649-01
 ;;9002226.02101,"1220,63629-3649-01 ",.02)
 ;;63629-3649-01
 ;;9002226.02101,"1220,63629-3678-01 ",.01)
 ;;63629-3678-01
 ;;9002226.02101,"1220,63629-3678-01 ",.02)
 ;;63629-3678-01
 ;;9002226.02101,"1220,63629-3750-01 ",.01)
 ;;63629-3750-01
 ;;9002226.02101,"1220,63629-3750-01 ",.02)
 ;;63629-3750-01
 ;;9002226.02101,"1220,63629-4073-01 ",.01)
 ;;63629-4073-01
 ;;9002226.02101,"1220,63629-4073-01 ",.02)
 ;;63629-4073-01
 ;;9002226.02101,"1220,63629-4089-01 ",.01)
 ;;63629-4089-01
 ;;9002226.02101,"1220,63629-4089-01 ",.02)
 ;;63629-4089-01
 ;;9002226.02101,"1220,63629-4337-01 ",.01)
 ;;63629-4337-01
 ;;9002226.02101,"1220,63629-4337-01 ",.02)
 ;;63629-4337-01
 ;;9002226.02101,"1220,63629-4717-01 ",.01)
 ;;63629-4717-01
 ;;9002226.02101,"1220,63629-4717-01 ",.02)
 ;;63629-4717-01
 ;;9002226.02101,"1220,63739-0079-10 ",.01)
 ;;63739-0079-10
 ;;9002226.02101,"1220,63739-0079-10 ",.02)
 ;;63739-0079-10
 ;;9002226.02101,"1220,63739-0080-10 ",.01)
 ;;63739-0080-10
 ;;9002226.02101,"1220,63739-0080-10 ",.02)
 ;;63739-0080-10
 ;;9002226.02101,"1220,63739-0283-10 ",.01)
 ;;63739-0283-10
 ;;9002226.02101,"1220,63739-0283-10 ",.02)
 ;;63739-0283-10
 ;;9002226.02101,"1220,63739-0283-31 ",.01)
 ;;63739-0283-31
 ;;9002226.02101,"1220,63739-0283-31 ",.02)
 ;;63739-0283-31
 ;;9002226.02101,"1220,63739-0284-10 ",.01)
 ;;63739-0284-10
 ;;9002226.02101,"1220,63739-0284-10 ",.02)
 ;;63739-0284-10
 ;;9002226.02101,"1220,63739-0284-31 ",.01)
 ;;63739-0284-31
 ;;9002226.02101,"1220,63739-0284-31 ",.02)
 ;;63739-0284-31
 ;;9002226.02101,"1220,63739-0285-04 ",.01)
 ;;63739-0285-04
 ;;9002226.02101,"1220,63739-0285-04 ",.02)
 ;;63739-0285-04
 ;;9002226.02101,"1220,63739-0285-10 ",.01)
 ;;63739-0285-10
 ;;9002226.02101,"1220,63739-0285-10 ",.02)
 ;;63739-0285-10
 ;;9002226.02101,"1220,63739-0285-31 ",.01)
 ;;63739-0285-31
 ;;9002226.02101,"1220,63739-0285-31 ",.02)
 ;;63739-0285-31
 ;;9002226.02101,"1220,63739-0631-10 ",.01)
 ;;63739-0631-10
 ;;9002226.02101,"1220,63739-0631-10 ",.02)
 ;;63739-0631-10
 ;;9002226.02101,"1220,64455-0771-47 ",.01)
 ;;64455-0771-47
 ;;9002226.02101,"1220,64455-0771-47 ",.02)
 ;;64455-0771-47
 ;;9002226.02101,"1220,64455-0771-55 ",.01)
 ;;64455-0771-55
 ;;9002226.02101,"1220,64455-0771-55 ",.02)
 ;;64455-0771-55
 ;;9002226.02101,"1220,64455-0772-47 ",.01)
 ;;64455-0772-47
 ;;9002226.02101,"1220,64455-0772-47 ",.02)
 ;;64455-0772-47
 ;;9002226.02101,"1220,64455-0791-47 ",.01)
 ;;64455-0791-47
 ;;9002226.02101,"1220,64455-0791-47 ",.02)
 ;;64455-0791-47
 ;;9002226.02101,"1220,64455-0795-42 ",.01)
 ;;64455-0795-42
 ;;9002226.02101,"1220,64455-0795-42 ",.02)
 ;;64455-0795-42
 ;;9002226.02101,"1220,64455-0795-49 ",.01)
 ;;64455-0795-49
 ;;9002226.02101,"1220,64455-0795-49 ",.02)
 ;;64455-0795-49
 ;;9002226.02101,"1220,64455-0796-30 ",.01)
 ;;64455-0796-30
 ;;9002226.02101,"1220,64455-0796-30 ",.02)
 ;;64455-0796-30
 ;;9002226.02101,"1220,64455-0796-42 ",.01)
 ;;64455-0796-42
 ;;9002226.02101,"1220,64455-0796-42 ",.02)
 ;;64455-0796-42
 ;;9002226.02101,"1220,64455-0796-49 ",.01)
 ;;64455-0796-49
 ;;9002226.02101,"1220,64455-0796-49 ",.02)
 ;;64455-0796-49
 ;;9002226.02101,"1220,64455-0796-50 ",.01)
 ;;64455-0796-50
 ;;9002226.02101,"1220,64455-0796-50 ",.02)
 ;;64455-0796-50
 ;;9002226.02101,"1220,64455-0797-30 ",.01)
 ;;64455-0797-30
 ;;9002226.02101,"1220,64455-0797-30 ",.02)
 ;;64455-0797-30
 ;;9002226.02101,"1220,64455-0797-42 ",.01)
 ;;64455-0797-42
 ;;9002226.02101,"1220,64455-0797-42 ",.02)
 ;;64455-0797-42
 ;;9002226.02101,"1220,64455-0797-49 ",.01)
 ;;64455-0797-49
 ;;9002226.02101,"1220,64455-0797-49 ",.02)
 ;;64455-0797-49
 ;;9002226.02101,"1220,64455-0799-42 ",.01)
 ;;64455-0799-42
 ;;9002226.02101,"1220,64455-0799-42 ",.02)
 ;;64455-0799-42
 ;;9002226.02101,"1220,64679-0421-01 ",.01)
 ;;64679-0421-01
 ;;9002226.02101,"1220,64679-0421-01 ",.02)
 ;;64679-0421-01
 ;;9002226.02101,"1220,64679-0422-01 ",.01)
 ;;64679-0422-01
 ;;9002226.02101,"1220,64679-0422-01 ",.02)
 ;;64679-0422-01
 ;;9002226.02101,"1220,64679-0422-02 ",.01)
 ;;64679-0422-02
 ;;9002226.02101,"1220,64679-0422-02 ",.02)
 ;;64679-0422-02
 ;;9002226.02101,"1220,64679-0423-01 ",.01)
 ;;64679-0423-01
 ;;9002226.02101,"1220,64679-0423-01 ",.02)
 ;;64679-0423-01
 ;;9002226.02101,"1220,64679-0423-02 ",.01)
 ;;64679-0423-02
 ;;9002226.02101,"1220,64679-0423-02 ",.02)
 ;;64679-0423-02
 ;;9002226.02101,"1220,65084-0412-18 ",.01)
 ;;65084-0412-18
 ;;9002226.02101,"1220,65084-0412-18 ",.02)
 ;;65084-0412-18
 ;;9002226.02101,"1220,65162-0006-09 ",.01)
 ;;65162-0006-09
 ;;9002226.02101,"1220,65162-0006-09 ",.02)
 ;;65162-0006-09
 ;;9002226.02101,"1220,65162-0006-50 ",.01)
 ;;65162-0006-50
 ;;9002226.02101,"1220,65162-0006-50 ",.02)
 ;;65162-0006-50
 ;;9002226.02101,"1220,65162-0007-09 ",.01)
 ;;65162-0007-09
 ;;9002226.02101,"1220,65162-0007-09 ",.02)
 ;;65162-0007-09
 ;;9002226.02101,"1220,65162-0007-50 ",.01)
 ;;65162-0007-50
 ;;9002226.02101,"1220,65162-0007-50 ",.02)
 ;;65162-0007-50
 ;;9002226.02101,"1220,65162-0008-09 ",.01)
 ;;65162-0008-09
 ;;9002226.02101,"1220,65162-0008-09 ",.02)
 ;;65162-0008-09
 ;;9002226.02101,"1220,65162-0008-50 ",.01)
 ;;65162-0008-50
 ;;9002226.02101,"1220,65162-0008-50 ",.02)
 ;;65162-0008-50
 ;;9002226.02101,"1220,65243-0028-09 ",.01)
 ;;65243-0028-09
 ;;9002226.02101,"1220,65243-0028-09 ",.02)
 ;;65243-0028-09
 ;;9002226.02101,"1220,65243-0054-09 ",.01)
 ;;65243-0054-09
 ;;9002226.02101,"1220,65243-0054-09 ",.02)
 ;;65243-0054-09
 ;;9002226.02101,"1220,65243-0111-09 ",.01)
 ;;65243-0111-09
 ;;9002226.02101,"1220,65243-0111-09 ",.02)
 ;;65243-0111-09
 ;;9002226.02101,"1220,65243-0260-09 ",.01)
 ;;65243-0260-09
 ;;9002226.02101,"1220,65243-0260-09 ",.02)
 ;;65243-0260-09
 ;;9002226.02101,"1220,65243-0311-09 ",.01)
 ;;65243-0311-09
 ;;9002226.02101,"1220,65243-0311-09 ",.02)
 ;;65243-0311-09
 ;;9002226.02101,"1220,65243-0312-09 ",.01)
 ;;65243-0312-09
 ;;9002226.02101,"1220,65243-0312-09 ",.02)
 ;;65243-0312-09
 ;;9002226.02101,"1220,65243-0312-18 ",.01)
 ;;65243-0312-18
 ;;9002226.02101,"1220,65243-0312-18 ",.02)
 ;;65243-0312-18
 ;;9002226.02101,"1220,65243-0317-09 ",.01)
 ;;65243-0317-09
 ;;9002226.02101,"1220,65243-0317-09 ",.02)
 ;;65243-0317-09
 ;;9002226.02101,"1220,65243-0318-09 ",.01)
 ;;65243-0318-09
 ;;9002226.02101,"1220,65243-0318-09 ",.02)
 ;;65243-0318-09
 ;;9002226.02101,"1220,65597-0110-30 ",.01)
 ;;65597-0110-30
 ;;9002226.02101,"1220,65597-0110-30 ",.02)
 ;;65597-0110-30
 ;;9002226.02101,"1220,65597-0110-90 ",.01)
 ;;65597-0110-90
 ;;9002226.02101,"1220,65597-0110-90 ",.02)
 ;;65597-0110-90
 ;;9002226.02101,"1220,65597-0111-30 ",.01)
 ;;65597-0111-30
 ;;9002226.02101,"1220,65597-0111-30 ",.02)
 ;;65597-0111-30
 ;;9002226.02101,"1220,65597-0111-90 ",.01)
 ;;65597-0111-90
 ;;9002226.02101,"1220,65597-0111-90 ",.02)
 ;;65597-0111-90
 ;;9002226.02101,"1220,65597-0112-30 ",.01)
 ;;65597-0112-30
 ;;9002226.02101,"1220,65597-0112-30 ",.02)
 ;;65597-0112-30
 ;;9002226.02101,"1220,65597-0112-90 ",.01)
 ;;65597-0112-90
 ;;9002226.02101,"1220,65597-0112-90 ",.02)
 ;;65597-0112-90
 ;;9002226.02101,"1220,65597-0113-30 ",.01)
 ;;65597-0113-30
 ;;9002226.02101,"1220,65597-0113-30 ",.02)
 ;;65597-0113-30
 ;;9002226.02101,"1220,65597-0113-90 ",.01)
 ;;65597-0113-90
 ;;9002226.02101,"1220,65597-0113-90 ",.02)
 ;;65597-0113-90
 ;;9002226.02101,"1220,65597-0114-30 ",.01)
 ;;65597-0114-30
 ;;9002226.02101,"1220,65597-0114-30 ",.02)
 ;;65597-0114-30
 ;;9002226.02101,"1220,65597-0114-90 ",.01)
 ;;65597-0114-90
 ;;9002226.02101,"1220,65597-0114-90 ",.02)
 ;;65597-0114-90
 ;;9002226.02101,"1220,65597-0115-30 ",.01)
 ;;65597-0115-30
 ;;9002226.02101,"1220,65597-0115-30 ",.02)
 ;;65597-0115-30
 ;;9002226.02101,"1220,65597-0115-90 ",.01)
 ;;65597-0115-90
 ;;9002226.02101,"1220,65597-0115-90 ",.02)
 ;;65597-0115-90
 ;;9002226.02101,"1220,65597-0116-30 ",.01)
 ;;65597-0116-30
 ;;9002226.02101,"1220,65597-0116-30 ",.02)
 ;;65597-0116-30
 ;;9002226.02101,"1220,65597-0116-90 ",.01)
 ;;65597-0116-90
 ;;9002226.02101,"1220,65597-0116-90 ",.02)
 ;;65597-0116-90
 ;;9002226.02101,"1220,65597-0117-30 ",.01)
 ;;65597-0117-30
 ;;9002226.02101,"1220,65597-0117-30 ",.02)
 ;;65597-0117-30
 ;;9002226.02101,"1220,65597-0117-90 ",.01)
 ;;65597-0117-90
 ;;9002226.02101,"1220,65597-0117-90 ",.02)
 ;;65597-0117-90
 ;;9002226.02101,"1220,65597-0118-30 ",.01)
 ;;65597-0118-30
 ;;9002226.02101,"1220,65597-0118-30 ",.02)
 ;;65597-0118-30
 ;;9002226.02101,"1220,65597-0118-90 ",.01)
 ;;65597-0118-90
 ;;9002226.02101,"1220,65597-0118-90 ",.02)
 ;;65597-0118-90
 ;;9002226.02101,"1220,65862-0101-05 ",.01)
 ;;65862-0101-05
 ;;9002226.02101,"1220,65862-0101-05 ",.02)
 ;;65862-0101-05
