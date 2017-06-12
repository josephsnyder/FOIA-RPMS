BGP71J16 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,60429-0223-10 ",.02)
 ;;60429-0223-10
 ;;9002226.02101,"1795,60429-0224-01 ",.01)
 ;;60429-0224-01
 ;;9002226.02101,"1795,60429-0224-01 ",.02)
 ;;60429-0224-01
 ;;9002226.02101,"1795,60429-0224-10 ",.01)
 ;;60429-0224-10
 ;;9002226.02101,"1795,60429-0224-10 ",.02)
 ;;60429-0224-10
 ;;9002226.02101,"1795,60429-0224-28 ",.01)
 ;;60429-0224-28
 ;;9002226.02101,"1795,60429-0224-28 ",.02)
 ;;60429-0224-28
 ;;9002226.02101,"1795,60429-0225-01 ",.01)
 ;;60429-0225-01
 ;;9002226.02101,"1795,60429-0225-01 ",.02)
 ;;60429-0225-01
 ;;9002226.02101,"1795,60429-0225-05 ",.01)
 ;;60429-0225-05
 ;;9002226.02101,"1795,60429-0225-05 ",.02)
 ;;60429-0225-05
 ;;9002226.02101,"1795,60429-0231-01 ",.01)
 ;;60429-0231-01
 ;;9002226.02101,"1795,60429-0231-01 ",.02)
 ;;60429-0231-01
 ;;9002226.02101,"1795,60429-0231-10 ",.01)
 ;;60429-0231-10
 ;;9002226.02101,"1795,60429-0231-10 ",.02)
 ;;60429-0231-10
 ;;9002226.02101,"1795,60429-0276-01 ",.01)
 ;;60429-0276-01
 ;;9002226.02101,"1795,60429-0276-01 ",.02)
 ;;60429-0276-01
 ;;9002226.02101,"1795,60429-0276-10 ",.01)
 ;;60429-0276-10
 ;;9002226.02101,"1795,60429-0276-10 ",.02)
 ;;60429-0276-10
 ;;9002226.02101,"1795,60429-0294-01 ",.01)
 ;;60429-0294-01
 ;;9002226.02101,"1795,60429-0294-01 ",.02)
 ;;60429-0294-01
 ;;9002226.02101,"1795,60429-0294-05 ",.01)
 ;;60429-0294-05
 ;;9002226.02101,"1795,60429-0294-05 ",.02)
 ;;60429-0294-05
 ;;9002226.02101,"1795,60429-0295-01 ",.01)
 ;;60429-0295-01
 ;;9002226.02101,"1795,60429-0295-01 ",.02)
 ;;60429-0295-01
 ;;9002226.02101,"1795,60429-0295-05 ",.01)
 ;;60429-0295-05
 ;;9002226.02101,"1795,60429-0295-05 ",.02)
 ;;60429-0295-05
 ;;9002226.02101,"1795,60432-0150-04 ",.01)
 ;;60432-0150-04
 ;;9002226.02101,"1795,60432-0150-04 ",.02)
 ;;60432-0150-04
 ;;9002226.02101,"1795,60432-0150-16 ",.01)
 ;;60432-0150-16
 ;;9002226.02101,"1795,60432-0150-16 ",.02)
 ;;60432-0150-16
 ;;9002226.02101,"1795,60432-0275-04 ",.01)
 ;;60432-0275-04
 ;;9002226.02101,"1795,60432-0275-04 ",.02)
 ;;60432-0275-04
 ;;9002226.02101,"1795,60432-0275-16 ",.01)
 ;;60432-0275-16
 ;;9002226.02101,"1795,60432-0275-16 ",.02)
 ;;60432-0275-16
 ;;9002226.02101,"1795,60432-0539-16 ",.01)
 ;;60432-0539-16
 ;;9002226.02101,"1795,60432-0539-16 ",.02)
 ;;60432-0539-16
 ;;9002226.02101,"1795,60432-0604-04 ",.01)
 ;;60432-0604-04
 ;;9002226.02101,"1795,60432-0604-04 ",.02)
 ;;60432-0604-04
 ;;9002226.02101,"1795,60432-0604-16 ",.01)
 ;;60432-0604-16
 ;;9002226.02101,"1795,60432-0604-16 ",.02)
 ;;60432-0604-16
 ;;9002226.02101,"1795,60432-0606-04 ",.01)
 ;;60432-0606-04
 ;;9002226.02101,"1795,60432-0606-04 ",.02)
 ;;60432-0606-04
 ;;9002226.02101,"1795,60432-0606-16 ",.01)
 ;;60432-0606-16
 ;;9002226.02101,"1795,60432-0606-16 ",.02)
 ;;60432-0606-16
 ;;9002226.02101,"1795,60432-0608-04 ",.01)
 ;;60432-0608-04
 ;;9002226.02101,"1795,60432-0608-04 ",.02)
 ;;60432-0608-04
 ;;9002226.02101,"1795,60432-0608-16 ",.01)
 ;;60432-0608-16
 ;;9002226.02101,"1795,60432-0608-16 ",.02)
 ;;60432-0608-16
 ;;9002226.02101,"1795,60432-0837-04 ",.01)
 ;;60432-0837-04
 ;;9002226.02101,"1795,60432-0837-04 ",.02)
 ;;60432-0837-04
 ;;9002226.02101,"1795,60432-0837-16 ",.01)
 ;;60432-0837-16
 ;;9002226.02101,"1795,60432-0837-16 ",.02)
 ;;60432-0837-16
 ;;9002226.02101,"1795,60575-0177-19 ",.01)
 ;;60575-0177-19
 ;;9002226.02101,"1795,60575-0177-19 ",.02)
 ;;60575-0177-19
 ;;9002226.02101,"1795,60575-0212-16 ",.01)
 ;;60575-0212-16
 ;;9002226.02101,"1795,60575-0212-16 ",.02)
 ;;60575-0212-16
 ;;9002226.02101,"1795,60575-0313-16 ",.01)
 ;;60575-0313-16
 ;;9002226.02101,"1795,60575-0313-16 ",.02)
 ;;60575-0313-16
 ;;9002226.02101,"1795,60575-0786-19 ",.01)
 ;;60575-0786-19
 ;;9002226.02101,"1795,60575-0786-19 ",.02)
 ;;60575-0786-19
 ;;9002226.02101,"1795,60760-0307-20 ",.01)
 ;;60760-0307-20
 ;;9002226.02101,"1795,60760-0307-20 ",.02)
 ;;60760-0307-20
 ;;9002226.02101,"1795,60760-0330-30 ",.01)
 ;;60760-0330-30
 ;;9002226.02101,"1795,60760-0330-30 ",.02)
 ;;60760-0330-30
 ;;9002226.02101,"1795,60760-0830-20 ",.01)
 ;;60760-0830-20
 ;;9002226.02101,"1795,60760-0830-20 ",.02)
 ;;60760-0830-20
 ;;9002226.02101,"1795,60760-0830-30 ",.01)
 ;;60760-0830-30
 ;;9002226.02101,"1795,60760-0830-30 ",.02)
 ;;60760-0830-30
 ;;9002226.02101,"1795,60760-0830-60 ",.01)
 ;;60760-0830-60
 ;;9002226.02101,"1795,60760-0830-60 ",.02)
 ;;60760-0830-60
 ;;9002226.02101,"1795,60760-0971-30 ",.01)
 ;;60760-0971-30
 ;;9002226.02101,"1795,60760-0971-30 ",.02)
 ;;60760-0971-30
 ;;9002226.02101,"1795,61748-0054-16 ",.01)
 ;;61748-0054-16
 ;;9002226.02101,"1795,61748-0054-16 ",.02)
 ;;61748-0054-16
 ;;9002226.02101,"1795,61919-0008-10 ",.01)
 ;;61919-0008-10
 ;;9002226.02101,"1795,61919-0008-10 ",.02)
 ;;61919-0008-10
 ;;9002226.02101,"1795,61919-0008-12 ",.01)
 ;;61919-0008-12
 ;;9002226.02101,"1795,61919-0008-12 ",.02)
 ;;61919-0008-12
 ;;9002226.02101,"1795,61919-0008-15 ",.01)
 ;;61919-0008-15
 ;;9002226.02101,"1795,61919-0008-15 ",.02)
 ;;61919-0008-15
 ;;9002226.02101,"1795,61919-0008-30 ",.01)
 ;;61919-0008-30
 ;;9002226.02101,"1795,61919-0008-30 ",.02)
 ;;61919-0008-30
 ;;9002226.02101,"1795,61919-0008-60 ",.01)
 ;;61919-0008-60
 ;;9002226.02101,"1795,61919-0008-60 ",.02)
 ;;61919-0008-60
 ;;9002226.02101,"1795,61919-0047-10 ",.01)
 ;;61919-0047-10
 ;;9002226.02101,"1795,61919-0047-10 ",.02)
 ;;61919-0047-10
 ;;9002226.02101,"1795,61919-0047-12 ",.01)
 ;;61919-0047-12
 ;;9002226.02101,"1795,61919-0047-12 ",.02)
 ;;61919-0047-12
 ;;9002226.02101,"1795,61919-0047-30 ",.01)
 ;;61919-0047-30
 ;;9002226.02101,"1795,61919-0047-30 ",.02)
 ;;61919-0047-30
 ;;9002226.02101,"1795,61919-0047-40 ",.01)
 ;;61919-0047-40
 ;;9002226.02101,"1795,61919-0047-40 ",.02)
 ;;61919-0047-40
 ;;9002226.02101,"1795,61919-0079-30 ",.01)
 ;;61919-0079-30
 ;;9002226.02101,"1795,61919-0079-30 ",.02)
 ;;61919-0079-30
 ;;9002226.02101,"1795,61919-0122-15 ",.01)
 ;;61919-0122-15
 ;;9002226.02101,"1795,61919-0122-15 ",.02)
 ;;61919-0122-15
 ;;9002226.02101,"1795,61919-0122-20 ",.01)
 ;;61919-0122-20
 ;;9002226.02101,"1795,61919-0122-20 ",.02)
 ;;61919-0122-20
 ;;9002226.02101,"1795,61919-0122-30 ",.01)
 ;;61919-0122-30
 ;;9002226.02101,"1795,61919-0122-30 ",.02)
 ;;61919-0122-30
 ;;9002226.02101,"1795,61919-0128-30 ",.01)
 ;;61919-0128-30
 ;;9002226.02101,"1795,61919-0128-30 ",.02)
 ;;61919-0128-30
 ;;9002226.02101,"1795,61919-0191-30 ",.01)
 ;;61919-0191-30
 ;;9002226.02101,"1795,61919-0191-30 ",.02)
 ;;61919-0191-30
 ;;9002226.02101,"1795,61919-0292-04 ",.01)
 ;;61919-0292-04
 ;;9002226.02101,"1795,61919-0292-04 ",.02)
 ;;61919-0292-04
 ;;9002226.02101,"1795,61919-0357-15 ",.01)
 ;;61919-0357-15
 ;;9002226.02101,"1795,61919-0357-15 ",.02)
 ;;61919-0357-15
 ;;9002226.02101,"1795,61919-0357-30 ",.01)
 ;;61919-0357-30
 ;;9002226.02101,"1795,61919-0357-30 ",.02)
 ;;61919-0357-30
 ;;9002226.02101,"1795,62175-0490-64 ",.01)
 ;;62175-0490-64
 ;;9002226.02101,"1795,62175-0490-64 ",.02)
 ;;62175-0490-64
 ;;9002226.02101,"1795,62175-0490-70 ",.01)
 ;;62175-0490-70
 ;;9002226.02101,"1795,62175-0490-70 ",.02)
 ;;62175-0490-70
 ;;9002226.02101,"1795,62295-3019-07 ",.01)
 ;;62295-3019-07
 ;;9002226.02101,"1795,62295-3019-07 ",.02)
 ;;62295-3019-07
 ;;9002226.02101,"1795,62542-0301-16 ",.01)
 ;;62542-0301-16
 ;;9002226.02101,"1795,62542-0301-16 ",.02)
 ;;62542-0301-16
 ;;9002226.02101,"1795,62584-0739-01 ",.01)
 ;;62584-0739-01
 ;;9002226.02101,"1795,62584-0739-01 ",.02)
 ;;62584-0739-01
 ;;9002226.02101,"1795,62584-0739-11 ",.01)
 ;;62584-0739-11
 ;;9002226.02101,"1795,62584-0739-11 ",.02)
 ;;62584-0739-11
 ;;9002226.02101,"1795,62584-0741-01 ",.01)
 ;;62584-0741-01
 ;;9002226.02101,"1795,62584-0741-01 ",.02)
 ;;62584-0741-01
 ;;9002226.02101,"1795,62584-0741-11 ",.01)
 ;;62584-0741-11
 ;;9002226.02101,"1795,62584-0741-11 ",.02)
 ;;62584-0741-11
 ;;9002226.02101,"1795,62584-0886-01 ",.01)
 ;;62584-0886-01
 ;;9002226.02101,"1795,62584-0886-01 ",.02)
 ;;62584-0886-01
 ;;9002226.02101,"1795,62584-0886-11 ",.01)
 ;;62584-0886-11
 ;;9002226.02101,"1795,62584-0886-11 ",.02)
 ;;62584-0886-11
 ;;9002226.02101,"1795,62584-0887-11 ",.01)
 ;;62584-0887-11
 ;;9002226.02101,"1795,62584-0887-11 ",.02)
 ;;62584-0887-11
 ;;9002226.02101,"1795,62584-0887-21 ",.01)
 ;;62584-0887-21
 ;;9002226.02101,"1795,62584-0887-21 ",.02)
 ;;62584-0887-21
 ;;9002226.02101,"1795,63187-0038-10 ",.01)
 ;;63187-0038-10
 ;;9002226.02101,"1795,63187-0038-10 ",.02)
 ;;63187-0038-10
 ;;9002226.02101,"1795,63629-1349-01 ",.01)
 ;;63629-1349-01
 ;;9002226.02101,"1795,63629-1349-01 ",.02)
 ;;63629-1349-01
 ;;9002226.02101,"1795,63629-1349-02 ",.01)
 ;;63629-1349-02
 ;;9002226.02101,"1795,63629-1349-02 ",.02)
 ;;63629-1349-02
 ;;9002226.02101,"1795,63629-1349-03 ",.01)
 ;;63629-1349-03
 ;;9002226.02101,"1795,63629-1349-03 ",.02)
 ;;63629-1349-03
 ;;9002226.02101,"1795,63629-1349-04 ",.01)
 ;;63629-1349-04
 ;;9002226.02101,"1795,63629-1349-04 ",.02)
 ;;63629-1349-04
 ;;9002226.02101,"1795,63629-1349-05 ",.01)
 ;;63629-1349-05
 ;;9002226.02101,"1795,63629-1349-05 ",.02)
 ;;63629-1349-05
 ;;9002226.02101,"1795,63629-1533-01 ",.01)
 ;;63629-1533-01
 ;;9002226.02101,"1795,63629-1533-01 ",.02)
 ;;63629-1533-01
 ;;9002226.02101,"1795,63629-1533-02 ",.01)
 ;;63629-1533-02
 ;;9002226.02101,"1795,63629-1533-02 ",.02)
 ;;63629-1533-02
 ;;9002226.02101,"1795,63629-1533-03 ",.01)
 ;;63629-1533-03
 ;;9002226.02101,"1795,63629-1533-03 ",.02)
 ;;63629-1533-03
 ;;9002226.02101,"1795,63629-1533-04 ",.01)
 ;;63629-1533-04
 ;;9002226.02101,"1795,63629-1533-04 ",.02)
 ;;63629-1533-04
 ;;9002226.02101,"1795,63629-1588-01 ",.01)
 ;;63629-1588-01
 ;;9002226.02101,"1795,63629-1588-01 ",.02)
 ;;63629-1588-01
 ;;9002226.02101,"1795,63629-1588-02 ",.01)
 ;;63629-1588-02
 ;;9002226.02101,"1795,63629-1588-02 ",.02)
 ;;63629-1588-02
 ;;9002226.02101,"1795,63629-1588-03 ",.01)
 ;;63629-1588-03
 ;;9002226.02101,"1795,63629-1588-03 ",.02)
 ;;63629-1588-03
 ;;9002226.02101,"1795,63629-1591-01 ",.01)
 ;;63629-1591-01
 ;;9002226.02101,"1795,63629-1591-01 ",.02)
 ;;63629-1591-01
 ;;9002226.02101,"1795,63629-1591-02 ",.01)
 ;;63629-1591-02
 ;;9002226.02101,"1795,63629-1591-02 ",.02)
 ;;63629-1591-02
 ;;9002226.02101,"1795,63629-1591-03 ",.01)
 ;;63629-1591-03
 ;;9002226.02101,"1795,63629-1591-03 ",.02)
 ;;63629-1591-03
 ;;9002226.02101,"1795,63629-1591-04 ",.01)
 ;;63629-1591-04
 ;;9002226.02101,"1795,63629-1591-04 ",.02)
 ;;63629-1591-04
 ;;9002226.02101,"1795,63629-1591-05 ",.01)
 ;;63629-1591-05
 ;;9002226.02101,"1795,63629-1591-05 ",.02)
 ;;63629-1591-05
 ;;9002226.02101,"1795,63629-1591-06 ",.01)
 ;;63629-1591-06
 ;;9002226.02101,"1795,63629-1591-06 ",.02)
 ;;63629-1591-06
 ;;9002226.02101,"1795,63629-1607-01 ",.01)
 ;;63629-1607-01
 ;;9002226.02101,"1795,63629-1607-01 ",.02)
 ;;63629-1607-01
 ;;9002226.02101,"1795,63629-1607-02 ",.01)
 ;;63629-1607-02
 ;;9002226.02101,"1795,63629-1607-02 ",.02)
 ;;63629-1607-02
 ;;9002226.02101,"1795,63629-1607-03 ",.01)
 ;;63629-1607-03
 ;;9002226.02101,"1795,63629-1607-03 ",.02)
 ;;63629-1607-03
 ;;9002226.02101,"1795,63629-1742-01 ",.01)
 ;;63629-1742-01
 ;;9002226.02101,"1795,63629-1742-01 ",.02)
 ;;63629-1742-01
 ;;9002226.02101,"1795,63629-1742-02 ",.01)
 ;;63629-1742-02
 ;;9002226.02101,"1795,63629-1742-02 ",.02)
 ;;63629-1742-02
 ;;9002226.02101,"1795,63629-1742-03 ",.01)
 ;;63629-1742-03
 ;;9002226.02101,"1795,63629-1742-03 ",.02)
 ;;63629-1742-03
 ;;9002226.02101,"1795,63629-1742-04 ",.01)
 ;;63629-1742-04
 ;;9002226.02101,"1795,63629-1742-04 ",.02)
 ;;63629-1742-04
 ;;9002226.02101,"1795,63629-1742-05 ",.01)
 ;;63629-1742-05
 ;;9002226.02101,"1795,63629-1742-05 ",.02)
 ;;63629-1742-05
