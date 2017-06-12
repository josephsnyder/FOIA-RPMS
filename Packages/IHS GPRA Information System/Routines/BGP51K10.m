BGP51K10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"762,58016-0341-10 ",.02)
 ;;58016-0341-10
 ;;9002226.02101,"762,58016-0341-20 ",.01)
 ;;58016-0341-20
 ;;9002226.02101,"762,58016-0341-20 ",.02)
 ;;58016-0341-20
 ;;9002226.02101,"762,58016-0341-30 ",.01)
 ;;58016-0341-30
 ;;9002226.02101,"762,58016-0341-30 ",.02)
 ;;58016-0341-30
 ;;9002226.02101,"762,58016-0341-40 ",.01)
 ;;58016-0341-40
 ;;9002226.02101,"762,58016-0341-40 ",.02)
 ;;58016-0341-40
 ;;9002226.02101,"762,58016-0341-60 ",.01)
 ;;58016-0341-60
 ;;9002226.02101,"762,58016-0341-60 ",.02)
 ;;58016-0341-60
 ;;9002226.02101,"762,58016-0341-90 ",.01)
 ;;58016-0341-90
 ;;9002226.02101,"762,58016-0341-90 ",.02)
 ;;58016-0341-90
 ;;9002226.02101,"762,58016-0342-00 ",.01)
 ;;58016-0342-00
 ;;9002226.02101,"762,58016-0342-00 ",.02)
 ;;58016-0342-00
 ;;9002226.02101,"762,58016-0342-10 ",.01)
 ;;58016-0342-10
 ;;9002226.02101,"762,58016-0342-10 ",.02)
 ;;58016-0342-10
 ;;9002226.02101,"762,58016-0342-20 ",.01)
 ;;58016-0342-20
 ;;9002226.02101,"762,58016-0342-20 ",.02)
 ;;58016-0342-20
 ;;9002226.02101,"762,58016-0342-30 ",.01)
 ;;58016-0342-30
 ;;9002226.02101,"762,58016-0342-30 ",.02)
 ;;58016-0342-30
 ;;9002226.02101,"762,58016-0342-40 ",.01)
 ;;58016-0342-40
 ;;9002226.02101,"762,58016-0342-40 ",.02)
 ;;58016-0342-40
 ;;9002226.02101,"762,58016-0342-60 ",.01)
 ;;58016-0342-60
 ;;9002226.02101,"762,58016-0342-60 ",.02)
 ;;58016-0342-60
 ;;9002226.02101,"762,58016-0342-90 ",.01)
 ;;58016-0342-90
 ;;9002226.02101,"762,58016-0342-90 ",.02)
 ;;58016-0342-90
 ;;9002226.02101,"762,58016-0596-00 ",.01)
 ;;58016-0596-00
 ;;9002226.02101,"762,58016-0596-00 ",.02)
 ;;58016-0596-00
 ;;9002226.02101,"762,58016-0596-30 ",.01)
 ;;58016-0596-30
 ;;9002226.02101,"762,58016-0596-30 ",.02)
 ;;58016-0596-30
 ;;9002226.02101,"762,58016-0596-60 ",.01)
 ;;58016-0596-60
 ;;9002226.02101,"762,58016-0596-60 ",.02)
 ;;58016-0596-60
 ;;9002226.02101,"762,58016-0596-90 ",.01)
 ;;58016-0596-90
 ;;9002226.02101,"762,58016-0596-90 ",.02)
 ;;58016-0596-90
 ;;9002226.02101,"762,58016-0863-00 ",.01)
 ;;58016-0863-00
 ;;9002226.02101,"762,58016-0863-00 ",.02)
 ;;58016-0863-00
 ;;9002226.02101,"762,58016-0863-30 ",.01)
 ;;58016-0863-30
 ;;9002226.02101,"762,58016-0863-30 ",.02)
 ;;58016-0863-30
 ;;9002226.02101,"762,58016-0863-60 ",.01)
 ;;58016-0863-60
 ;;9002226.02101,"762,58016-0863-60 ",.02)
 ;;58016-0863-60
 ;;9002226.02101,"762,58016-0863-90 ",.01)
 ;;58016-0863-90
 ;;9002226.02101,"762,58016-0863-90 ",.02)
 ;;58016-0863-90
 ;;9002226.02101,"762,58118-2605-03 ",.01)
 ;;58118-2605-03
 ;;9002226.02101,"762,58118-2605-03 ",.02)
 ;;58118-2605-03
 ;;9002226.02101,"762,58118-2605-06 ",.01)
 ;;58118-2605-06
 ;;9002226.02101,"762,58118-2605-06 ",.02)
 ;;58118-2605-06
 ;;9002226.02101,"762,58118-5316-03 ",.01)
 ;;58118-5316-03
 ;;9002226.02101,"762,58118-5316-03 ",.02)
 ;;58118-5316-03
 ;;9002226.02101,"762,58864-0700-15 ",.01)
 ;;58864-0700-15
 ;;9002226.02101,"762,58864-0700-15 ",.02)
 ;;58864-0700-15
 ;;9002226.02101,"762,58864-0891-06 ",.01)
 ;;58864-0891-06
 ;;9002226.02101,"762,58864-0891-06 ",.02)
 ;;58864-0891-06
 ;;9002226.02101,"762,59011-0255-30 ",.01)
 ;;59011-0255-30
 ;;9002226.02101,"762,59011-0255-30 ",.02)
 ;;59011-0255-30
 ;;9002226.02101,"762,59011-0256-30 ",.01)
 ;;59011-0256-30
 ;;9002226.02101,"762,59011-0256-30 ",.02)
 ;;59011-0256-30
 ;;9002226.02101,"762,59762-2630-01 ",.01)
 ;;59762-2630-01
 ;;9002226.02101,"762,59762-2630-01 ",.02)
 ;;59762-2630-01
 ;;9002226.02101,"762,59762-2630-04 ",.01)
 ;;59762-2630-04
 ;;9002226.02101,"762,59762-2630-04 ",.02)
 ;;59762-2630-04
 ;;9002226.02101,"762,59762-2631-01 ",.01)
 ;;59762-2631-01
 ;;9002226.02101,"762,59762-2631-01 ",.02)
 ;;59762-2631-01
 ;;9002226.02101,"762,59762-2631-04 ",.01)
 ;;59762-2631-04
 ;;9002226.02101,"762,59762-2631-04 ",.02)
 ;;59762-2631-04
 ;;9002226.02101,"762,60429-0530-01 ",.01)
 ;;60429-0530-01
 ;;9002226.02101,"762,60429-0530-01 ",.02)
 ;;60429-0530-01
 ;;9002226.02101,"762,60429-0530-05 ",.01)
 ;;60429-0530-05
 ;;9002226.02101,"762,60429-0530-05 ",.02)
 ;;60429-0530-05
 ;;9002226.02101,"762,60429-0530-20 ",.01)
 ;;60429-0530-20
 ;;9002226.02101,"762,60429-0530-20 ",.02)
 ;;60429-0530-20
 ;;9002226.02101,"762,60429-0530-30 ",.01)
 ;;60429-0530-30
 ;;9002226.02101,"762,60429-0530-30 ",.02)
 ;;60429-0530-30
 ;;9002226.02101,"762,60429-0530-60 ",.01)
 ;;60429-0530-60
 ;;9002226.02101,"762,60429-0530-60 ",.02)
 ;;60429-0530-60
 ;;9002226.02101,"762,60429-0530-90 ",.01)
 ;;60429-0530-90
 ;;9002226.02101,"762,60429-0530-90 ",.02)
 ;;60429-0530-90
 ;;9002226.02101,"762,60429-0531-01 ",.01)
 ;;60429-0531-01
 ;;9002226.02101,"762,60429-0531-01 ",.02)
 ;;60429-0531-01
 ;;9002226.02101,"762,60429-0531-05 ",.01)
 ;;60429-0531-05
 ;;9002226.02101,"762,60429-0531-05 ",.02)
 ;;60429-0531-05
 ;;9002226.02101,"762,60429-0531-15 ",.01)
 ;;60429-0531-15
 ;;9002226.02101,"762,60429-0531-15 ",.02)
 ;;60429-0531-15
 ;;9002226.02101,"762,60429-0531-20 ",.01)
 ;;60429-0531-20
 ;;9002226.02101,"762,60429-0531-20 ",.02)
 ;;60429-0531-20
 ;;9002226.02101,"762,60429-0531-30 ",.01)
 ;;60429-0531-30
 ;;9002226.02101,"762,60429-0531-30 ",.02)
 ;;60429-0531-30
 ;;9002226.02101,"762,60429-0531-60 ",.01)
 ;;60429-0531-60
 ;;9002226.02101,"762,60429-0531-60 ",.02)
 ;;60429-0531-60
 ;;9002226.02101,"762,60429-0531-90 ",.01)
 ;;60429-0531-90
 ;;9002226.02101,"762,60429-0531-90 ",.02)
 ;;60429-0531-90
 ;;9002226.02101,"762,60429-0546-01 ",.01)
 ;;60429-0546-01
 ;;9002226.02101,"762,60429-0546-01 ",.02)
 ;;60429-0546-01
 ;;9002226.02101,"762,60429-0547-01 ",.01)
 ;;60429-0547-01
 ;;9002226.02101,"762,60429-0547-01 ",.02)
 ;;60429-0547-01
 ;;9002226.02101,"762,60429-0547-05 ",.01)
 ;;60429-0547-05
 ;;9002226.02101,"762,60429-0547-05 ",.02)
 ;;60429-0547-05
 ;;9002226.02101,"762,60505-2604-00 ",.01)
 ;;60505-2604-00
 ;;9002226.02101,"762,60505-2604-00 ",.02)
 ;;60505-2604-00
 ;;9002226.02101,"762,60505-2604-01 ",.01)
 ;;60505-2604-01
 ;;9002226.02101,"762,60505-2604-01 ",.02)
 ;;60505-2604-01
 ;;9002226.02101,"762,60505-2604-08 ",.01)
 ;;60505-2604-08
 ;;9002226.02101,"762,60505-2604-08 ",.02)
 ;;60505-2604-08
 ;;9002226.02101,"762,60505-2605-00 ",.01)
 ;;60505-2605-00
 ;;9002226.02101,"762,60505-2605-00 ",.02)
 ;;60505-2605-00
 ;;9002226.02101,"762,60505-2605-01 ",.01)
 ;;60505-2605-01
 ;;9002226.02101,"762,60505-2605-01 ",.02)
 ;;60505-2605-01
 ;;9002226.02101,"762,60505-2605-08 ",.01)
 ;;60505-2605-08
 ;;9002226.02101,"762,60505-2605-08 ",.02)
 ;;60505-2605-08
 ;;9002226.02101,"762,60760-0116-30 ",.01)
 ;;60760-0116-30
 ;;9002226.02101,"762,60760-0116-30 ",.02)
 ;;60760-0116-30
 ;;9002226.02101,"762,60760-0191-30 ",.01)
 ;;60760-0191-30
 ;;9002226.02101,"762,60760-0191-30 ",.02)
 ;;60760-0191-30
 ;;9002226.02101,"762,60760-0193-30 ",.01)
 ;;60760-0193-30
 ;;9002226.02101,"762,60760-0193-30 ",.02)
 ;;60760-0193-30
 ;;9002226.02101,"762,60760-0211-30 ",.01)
 ;;60760-0211-30
 ;;9002226.02101,"762,60760-0211-30 ",.02)
 ;;60760-0211-30
 ;;9002226.02101,"762,60760-0288-30 ",.01)
 ;;60760-0288-30
 ;;9002226.02101,"762,60760-0288-30 ",.02)
 ;;60760-0288-30
 ;;9002226.02101,"762,60760-0515-30 ",.01)
 ;;60760-0515-30
 ;;9002226.02101,"762,60760-0515-30 ",.02)
 ;;60760-0515-30
 ;;9002226.02101,"762,60760-0550-30 ",.01)
 ;;60760-0550-30
 ;;9002226.02101,"762,60760-0550-30 ",.02)
 ;;60760-0550-30
 ;;9002226.02101,"762,60760-0551-30 ",.01)
 ;;60760-0551-30
 ;;9002226.02101,"762,60760-0551-30 ",.02)
 ;;60760-0551-30
 ;;9002226.02101,"762,60793-0145-01 ",.01)
 ;;60793-0145-01
 ;;9002226.02101,"762,60793-0145-01 ",.02)
 ;;60793-0145-01
 ;;9002226.02101,"762,60793-0146-01 ",.01)
 ;;60793-0146-01
 ;;9002226.02101,"762,60793-0146-01 ",.02)
 ;;60793-0146-01
 ;;9002226.02101,"762,61442-0231-01 ",.01)
 ;;61442-0231-01
 ;;9002226.02101,"762,61442-0231-01 ",.02)
 ;;61442-0231-01
 ;;9002226.02101,"762,61442-0232-01 ",.01)
 ;;61442-0232-01
 ;;9002226.02101,"762,61442-0232-01 ",.02)
 ;;61442-0232-01
 ;;9002226.02101,"762,61919-0527-30 ",.01)
 ;;61919-0527-30
 ;;9002226.02101,"762,61919-0527-30 ",.02)
 ;;61919-0527-30
 ;;9002226.02101,"762,61919-0528-30 ",.01)
 ;;61919-0528-30
 ;;9002226.02101,"762,61919-0528-30 ",.02)
 ;;61919-0528-30
 ;;9002226.02101,"762,61919-0528-60 ",.01)
 ;;61919-0528-60
 ;;9002226.02101,"762,61919-0528-60 ",.02)
 ;;61919-0528-60
 ;;9002226.02101,"762,61919-0955-30 ",.01)
 ;;61919-0955-30
 ;;9002226.02101,"762,61919-0955-30 ",.02)
 ;;61919-0955-30
 ;;9002226.02101,"762,63402-0190-30 ",.01)
 ;;63402-0190-30
 ;;9002226.02101,"762,63402-0190-30 ",.02)
 ;;63402-0190-30
 ;;9002226.02101,"762,63402-0191-10 ",.01)
 ;;63402-0191-10
 ;;9002226.02101,"762,63402-0191-10 ",.02)
 ;;63402-0191-10
 ;;9002226.02101,"762,63402-0193-10 ",.01)
 ;;63402-0193-10
 ;;9002226.02101,"762,63402-0193-10 ",.02)
 ;;63402-0193-10
 ;;9002226.02101,"762,63629-1256-01 ",.01)
 ;;63629-1256-01
 ;;9002226.02101,"762,63629-1256-01 ",.02)
 ;;63629-1256-01
 ;;9002226.02101,"762,63629-1256-02 ",.01)
 ;;63629-1256-02
 ;;9002226.02101,"762,63629-1256-02 ",.02)
 ;;63629-1256-02
 ;;9002226.02101,"762,63629-1256-03 ",.01)
 ;;63629-1256-03
 ;;9002226.02101,"762,63629-1256-03 ",.02)
 ;;63629-1256-03
 ;;9002226.02101,"762,63629-1256-04 ",.01)
 ;;63629-1256-04
 ;;9002226.02101,"762,63629-1256-04 ",.02)
 ;;63629-1256-04
 ;;9002226.02101,"762,63629-1256-05 ",.01)
 ;;63629-1256-05
 ;;9002226.02101,"762,63629-1256-05 ",.02)
 ;;63629-1256-05
 ;;9002226.02101,"762,63629-3141-01 ",.01)
 ;;63629-3141-01
 ;;9002226.02101,"762,63629-3141-01 ",.02)
 ;;63629-3141-01
 ;;9002226.02101,"762,63629-3141-02 ",.01)
 ;;63629-3141-02
 ;;9002226.02101,"762,63629-3141-02 ",.02)
 ;;63629-3141-02
 ;;9002226.02101,"762,63629-3141-03 ",.01)
 ;;63629-3141-03
 ;;9002226.02101,"762,63629-3141-03 ",.02)
 ;;63629-3141-03
 ;;9002226.02101,"762,63629-3141-04 ",.01)
 ;;63629-3141-04
 ;;9002226.02101,"762,63629-3141-04 ",.02)
 ;;63629-3141-04
 ;;9002226.02101,"762,63629-3141-05 ",.01)
 ;;63629-3141-05
 ;;9002226.02101,"762,63629-3141-05 ",.02)
 ;;63629-3141-05
 ;;9002226.02101,"762,63629-3141-06 ",.01)
 ;;63629-3141-06
 ;;9002226.02101,"762,63629-3141-06 ",.02)
 ;;63629-3141-06
 ;;9002226.02101,"762,63629-3142-01 ",.01)
 ;;63629-3142-01
 ;;9002226.02101,"762,63629-3142-01 ",.02)
 ;;63629-3142-01
 ;;9002226.02101,"762,63629-3142-02 ",.01)
 ;;63629-3142-02
 ;;9002226.02101,"762,63629-3142-02 ",.02)
 ;;63629-3142-02
 ;;9002226.02101,"762,63629-3142-03 ",.01)
 ;;63629-3142-03
 ;;9002226.02101,"762,63629-3142-03 ",.02)
 ;;63629-3142-03
 ;;9002226.02101,"762,63629-3337-01 ",.01)
 ;;63629-3337-01
 ;;9002226.02101,"762,63629-3337-01 ",.02)
 ;;63629-3337-01
 ;;9002226.02101,"762,63629-3337-02 ",.01)
 ;;63629-3337-02
 ;;9002226.02101,"762,63629-3337-02 ",.02)
 ;;63629-3337-02
 ;;9002226.02101,"762,63629-3337-03 ",.01)
 ;;63629-3337-03
 ;;9002226.02101,"762,63629-3337-03 ",.02)
 ;;63629-3337-03
 ;;9002226.02101,"762,63629-3337-04 ",.01)
 ;;63629-3337-04
 ;;9002226.02101,"762,63629-3337-04 ",.02)
 ;;63629-3337-04
 ;;9002226.02101,"762,63629-3405-01 ",.01)
 ;;63629-3405-01
 ;;9002226.02101,"762,63629-3405-01 ",.02)
 ;;63629-3405-01
 ;;9002226.02101,"762,63629-3405-02 ",.01)
 ;;63629-3405-02
 ;;9002226.02101,"762,63629-3405-02 ",.02)
 ;;63629-3405-02
 ;;9002226.02101,"762,63629-3405-03 ",.01)
 ;;63629-3405-03
 ;;9002226.02101,"762,63629-3405-03 ",.02)
 ;;63629-3405-03
 ;;9002226.02101,"762,63629-3405-04 ",.01)
 ;;63629-3405-04
 ;;9002226.02101,"762,63629-3405-04 ",.02)
 ;;63629-3405-04
 ;;9002226.02101,"762,63629-3548-01 ",.01)
 ;;63629-3548-01
 ;;9002226.02101,"762,63629-3548-01 ",.02)
 ;;63629-3548-01
 ;;9002226.02101,"762,63629-3548-02 ",.01)
 ;;63629-3548-02
 ;;9002226.02101,"762,63629-3548-02 ",.02)
 ;;63629-3548-02
 ;;9002226.02101,"762,63629-3548-03 ",.01)
 ;;63629-3548-03
 ;;9002226.02101,"762,63629-3548-03 ",.02)
 ;;63629-3548-03
 ;;9002226.02101,"762,63629-3548-04 ",.01)
 ;;63629-3548-04
 ;;9002226.02101,"762,63629-3548-04 ",.02)
 ;;63629-3548-04
 ;;9002226.02101,"762,63629-3548-05 ",.01)
 ;;63629-3548-05
 ;;9002226.02101,"762,63629-3548-05 ",.02)
 ;;63629-3548-05
 ;;9002226.02101,"762,63629-3548-06 ",.01)
 ;;63629-3548-06
 ;;9002226.02101,"762,63629-3548-06 ",.02)
 ;;63629-3548-06
 ;;9002226.02101,"762,63629-3548-07 ",.01)
 ;;63629-3548-07
 ;;9002226.02101,"762,63629-3548-07 ",.02)
 ;;63629-3548-07
 ;;9002226.02101,"762,63629-3548-08 ",.01)
 ;;63629-3548-08
 ;;9002226.02101,"762,63629-3548-08 ",.02)
 ;;63629-3548-08
 ;;9002226.02101,"762,63629-3549-01 ",.01)
 ;;63629-3549-01
 ;;9002226.02101,"762,63629-3549-01 ",.02)
 ;;63629-3549-01
 ;;9002226.02101,"762,63629-3549-02 ",.01)
 ;;63629-3549-02
 ;;9002226.02101,"762,63629-3549-02 ",.02)
 ;;63629-3549-02
 ;;9002226.02101,"762,63629-3549-03 ",.01)
 ;;63629-3549-03
 ;;9002226.02101,"762,63629-3549-03 ",.02)
 ;;63629-3549-03
 ;;9002226.02101,"762,63629-3549-04 ",.01)
 ;;63629-3549-04
 ;;9002226.02101,"762,63629-3549-04 ",.02)
 ;;63629-3549-04
 ;;9002226.02101,"762,63629-3549-05 ",.01)
 ;;63629-3549-05
 ;;9002226.02101,"762,63629-3549-05 ",.02)
 ;;63629-3549-05
 ;;9002226.02101,"762,63629-3549-06 ",.01)
 ;;63629-3549-06
 ;;9002226.02101,"762,63629-3549-06 ",.02)
 ;;63629-3549-06
 ;;9002226.02101,"762,63629-3786-01 ",.01)
 ;;63629-3786-01
 ;;9002226.02101,"762,63629-3786-01 ",.02)
 ;;63629-3786-01
 ;;9002226.02101,"762,63629-3786-02 ",.01)
 ;;63629-3786-02
 ;;9002226.02101,"762,63629-3786-02 ",.02)
 ;;63629-3786-02
 ;;9002226.02101,"762,63629-3906-01 ",.01)
 ;;63629-3906-01
