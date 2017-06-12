BGP53K2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"745,00603-5945-21 ",.01)
 ;;00603-5945-21
 ;;9002226.02101,"745,00603-5945-21 ",.02)
 ;;00603-5945-21
 ;;9002226.02101,"745,00603-5945-28 ",.01)
 ;;00603-5945-28
 ;;9002226.02101,"745,00603-5945-28 ",.02)
 ;;00603-5945-28
 ;;9002226.02101,"745,00603-5945-32 ",.01)
 ;;00603-5945-32
 ;;9002226.02101,"745,00603-5945-32 ",.02)
 ;;00603-5945-32
 ;;9002226.02101,"745,00603-5946-21 ",.01)
 ;;00603-5946-21
 ;;9002226.02101,"745,00603-5946-21 ",.02)
 ;;00603-5946-21
 ;;9002226.02101,"745,00603-5946-28 ",.01)
 ;;00603-5946-28
 ;;9002226.02101,"745,00603-5946-28 ",.02)
 ;;00603-5946-28
 ;;9002226.02101,"745,00603-5946-32 ",.01)
 ;;00603-5946-32
 ;;9002226.02101,"745,00603-5946-32 ",.02)
 ;;00603-5946-32
 ;;9002226.02101,"745,00603-5950-21 ",.01)
 ;;00603-5950-21
 ;;9002226.02101,"745,00603-5950-21 ",.02)
 ;;00603-5950-21
 ;;9002226.02101,"745,00603-5951-21 ",.01)
 ;;00603-5951-21
 ;;9002226.02101,"745,00603-5951-21 ",.02)
 ;;00603-5951-21
 ;;9002226.02101,"745,00603-5952-21 ",.01)
 ;;00603-5952-21
 ;;9002226.02101,"745,00603-5952-21 ",.02)
 ;;00603-5952-21
 ;;9002226.02101,"745,00904-1610-61 ",.01)
 ;;00904-1610-61
 ;;9002226.02101,"745,00904-1610-61 ",.02)
 ;;00904-1610-61
 ;;9002226.02101,"745,00904-5887-61 ",.01)
 ;;00904-5887-61
 ;;9002226.02101,"745,00904-5887-61 ",.02)
 ;;00904-5887-61
 ;;9002226.02101,"745,00904-5888-61 ",.01)
 ;;00904-5888-61
 ;;9002226.02101,"745,00904-5888-61 ",.02)
 ;;00904-5888-61
 ;;9002226.02101,"745,00904-5889-61 ",.01)
 ;;00904-5889-61
 ;;9002226.02101,"745,00904-5889-61 ",.02)
 ;;00904-5889-61
 ;;9002226.02101,"745,15370-0021-10 ",.01)
 ;;15370-0021-10
 ;;9002226.02101,"745,15370-0021-10 ",.02)
 ;;15370-0021-10
 ;;9002226.02101,"745,17856-0644-30 ",.01)
 ;;17856-0644-30
 ;;9002226.02101,"745,17856-0644-30 ",.02)
 ;;17856-0644-30
 ;;9002226.02101,"745,17856-0644-31 ",.01)
 ;;17856-0644-31
 ;;9002226.02101,"745,17856-0644-31 ",.02)
 ;;17856-0644-31
 ;;9002226.02101,"745,23155-0062-01 ",.01)
 ;;23155-0062-01
 ;;9002226.02101,"745,23155-0062-01 ",.02)
 ;;23155-0062-01
 ;;9002226.02101,"745,23155-0063-01 ",.01)
 ;;23155-0063-01
 ;;9002226.02101,"745,23155-0063-01 ",.02)
 ;;23155-0063-01
 ;;9002226.02101,"745,23490-7355-01 ",.01)
 ;;23490-7355-01
 ;;9002226.02101,"745,23490-7355-01 ",.02)
 ;;23490-7355-01
 ;;9002226.02101,"745,24839-0226-01 ",.01)
 ;;24839-0226-01
 ;;9002226.02101,"745,24839-0226-01 ",.02)
 ;;24839-0226-01
 ;;9002226.02101,"745,24839-0227-16 ",.01)
 ;;24839-0227-16
 ;;9002226.02101,"745,24839-0227-16 ",.02)
 ;;24839-0227-16
 ;;9002226.02101,"745,29033-0001-01 ",.01)
 ;;29033-0001-01
 ;;9002226.02101,"745,29033-0001-01 ",.02)
 ;;29033-0001-01
 ;;9002226.02101,"745,29033-0002-01 ",.01)
 ;;29033-0002-01
 ;;9002226.02101,"745,29033-0002-01 ",.02)
 ;;29033-0002-01
 ;;9002226.02101,"745,35356-0126-60 ",.01)
 ;;35356-0126-60
 ;;9002226.02101,"745,35356-0126-60 ",.02)
 ;;35356-0126-60
 ;;9002226.02101,"745,38130-0012-01 ",.01)
 ;;38130-0012-01
 ;;9002226.02101,"745,38130-0012-01 ",.02)
 ;;38130-0012-01
 ;;9002226.02101,"745,42858-0701-01 ",.01)
 ;;42858-0701-01
 ;;9002226.02101,"745,42858-0701-01 ",.02)
 ;;42858-0701-01
 ;;9002226.02101,"745,42858-0702-01 ",.01)
 ;;42858-0702-01
 ;;9002226.02101,"745,42858-0702-01 ",.02)
 ;;42858-0702-01
 ;;9002226.02101,"745,45985-0647-01 ",.01)
 ;;45985-0647-01
 ;;9002226.02101,"745,45985-0647-01 ",.02)
 ;;45985-0647-01
 ;;9002226.02101,"745,49708-0644-90 ",.01)
 ;;49708-0644-90
 ;;9002226.02101,"745,49708-0644-90 ",.02)
 ;;49708-0644-90
 ;;9002226.02101,"745,49999-0550-00 ",.01)
 ;;49999-0550-00
 ;;9002226.02101,"745,49999-0550-00 ",.02)
 ;;49999-0550-00
 ;;9002226.02101,"745,49999-0921-30 ",.01)
 ;;49999-0921-30
 ;;9002226.02101,"745,49999-0921-30 ",.02)
 ;;49999-0921-30
 ;;9002226.02101,"745,50111-0459-01 ",.01)
 ;;50111-0459-01
 ;;9002226.02101,"745,50111-0459-01 ",.02)
 ;;50111-0459-01
 ;;9002226.02101,"745,50111-0459-02 ",.01)
 ;;50111-0459-02
 ;;9002226.02101,"745,50111-0459-02 ",.02)
 ;;50111-0459-02
 ;;9002226.02101,"745,50111-0459-03 ",.01)
 ;;50111-0459-03
 ;;9002226.02101,"745,50111-0459-03 ",.02)
 ;;50111-0459-03
 ;;9002226.02101,"745,50111-0482-01 ",.01)
 ;;50111-0482-01
 ;;9002226.02101,"745,50111-0482-01 ",.02)
 ;;50111-0482-01
 ;;9002226.02101,"745,50111-0482-02 ",.01)
 ;;50111-0482-02
 ;;9002226.02101,"745,50111-0482-02 ",.02)
 ;;50111-0482-02
 ;;9002226.02101,"745,50111-0482-03 ",.01)
 ;;50111-0482-03
 ;;9002226.02101,"745,50111-0482-03 ",.02)
 ;;50111-0482-03
 ;;9002226.02101,"745,50111-0483-01 ",.01)
 ;;50111-0483-01
 ;;9002226.02101,"745,50111-0483-01 ",.02)
 ;;50111-0483-01
 ;;9002226.02101,"745,50111-0483-02 ",.01)
 ;;50111-0483-02
 ;;9002226.02101,"745,50111-0483-02 ",.02)
 ;;50111-0483-02
 ;;9002226.02101,"745,50111-0518-01 ",.01)
 ;;50111-0518-01
 ;;9002226.02101,"745,50111-0518-01 ",.02)
 ;;50111-0518-01
 ;;9002226.02101,"745,50242-0040-62 ",.01)
 ;;50242-0040-62
 ;;9002226.02101,"745,50242-0040-62 ",.02)
 ;;50242-0040-62
 ;;9002226.02101,"745,50474-0100-01 ",.01)
 ;;50474-0100-01
 ;;9002226.02101,"745,50474-0100-01 ",.02)
 ;;50474-0100-01
 ;;9002226.02101,"745,50474-0200-01 ",.01)
 ;;50474-0200-01
 ;;9002226.02101,"745,50474-0200-01 ",.02)
 ;;50474-0200-01
 ;;9002226.02101,"745,50474-0200-50 ",.01)
 ;;50474-0200-50
 ;;9002226.02101,"745,50474-0200-50 ",.02)
 ;;50474-0200-50
 ;;9002226.02101,"745,50474-0300-01 ",.01)
 ;;50474-0300-01
 ;;9002226.02101,"745,50474-0300-01 ",.02)
 ;;50474-0300-01
 ;;9002226.02101,"745,50474-0300-50 ",.01)
 ;;50474-0300-50
 ;;9002226.02101,"745,50474-0300-50 ",.02)
 ;;50474-0300-50
 ;;9002226.02101,"745,50474-0400-01 ",.01)
 ;;50474-0400-01
 ;;9002226.02101,"745,50474-0400-01 ",.02)
 ;;50474-0400-01
 ;;9002226.02101,"745,50991-0200-16 ",.01)
 ;;50991-0200-16
 ;;9002226.02101,"745,50991-0200-16 ",.02)
 ;;50991-0200-16
 ;;9002226.02101,"745,50991-0214-16 ",.01)
 ;;50991-0214-16
 ;;9002226.02101,"745,50991-0214-16 ",.02)
 ;;50991-0214-16
 ;;9002226.02101,"745,50991-0400-01 ",.01)
 ;;50991-0400-01
 ;;9002226.02101,"745,50991-0400-01 ",.02)
 ;;50991-0400-01
 ;;9002226.02101,"745,50991-0413-01 ",.01)
 ;;50991-0413-01
 ;;9002226.02101,"745,50991-0413-01 ",.02)
 ;;50991-0413-01
 ;;9002226.02101,"745,51862-0131-16 ",.01)
 ;;51862-0131-16
 ;;9002226.02101,"745,51862-0131-16 ",.02)
 ;;51862-0131-16
 ;;9002226.02101,"745,51991-0536-01 ",.01)
 ;;51991-0536-01
 ;;9002226.02101,"745,51991-0536-01 ",.02)
 ;;51991-0536-01
 ;;9002226.02101,"745,52959-0279-30 ",.01)
 ;;52959-0279-30
 ;;9002226.02101,"745,52959-0279-30 ",.02)
 ;;52959-0279-30
 ;;9002226.02101,"745,54569-0065-01 ",.01)
 ;;54569-0065-01
 ;;9002226.02101,"745,54569-0065-01 ",.02)
 ;;54569-0065-01
 ;;9002226.02101,"745,54569-0065-02 ",.01)
 ;;54569-0065-02
 ;;9002226.02101,"745,54569-0065-02 ",.02)
 ;;54569-0065-02
 ;;9002226.02101,"745,54569-0065-05 ",.01)
 ;;54569-0065-05
 ;;9002226.02101,"745,54569-0065-05 ",.02)
 ;;54569-0065-05
 ;;9002226.02101,"745,54569-1666-00 ",.01)
 ;;54569-1666-00
 ;;9002226.02101,"745,54569-1666-00 ",.02)
 ;;54569-1666-00
 ;;9002226.02101,"745,54838-0556-80 ",.01)
 ;;54838-0556-80
 ;;9002226.02101,"745,54838-0556-80 ",.02)
 ;;54838-0556-80
 ;;9002226.02101,"745,54868-0028-00 ",.01)
 ;;54868-0028-00
 ;;9002226.02101,"745,54868-0028-00 ",.02)
 ;;54868-0028-00
 ;;9002226.02101,"745,54868-0028-01 ",.01)
 ;;54868-0028-01
 ;;9002226.02101,"745,54868-0028-01 ",.02)
 ;;54868-0028-01
 ;;9002226.02101,"745,54868-0028-02 ",.01)
 ;;54868-0028-02
 ;;9002226.02101,"745,54868-0028-02 ",.02)
 ;;54868-0028-02
 ;;9002226.02101,"745,54868-0028-03 ",.01)
 ;;54868-0028-03
 ;;9002226.02101,"745,54868-0028-03 ",.02)
 ;;54868-0028-03
 ;;9002226.02101,"745,54868-0028-05 ",.01)
 ;;54868-0028-05
 ;;9002226.02101,"745,54868-0028-05 ",.02)
 ;;54868-0028-05
 ;;9002226.02101,"745,54868-0028-06 ",.01)
 ;;54868-0028-06
 ;;9002226.02101,"745,54868-0028-06 ",.02)
 ;;54868-0028-06
 ;;9002226.02101,"745,54868-0029-00 ",.01)
 ;;54868-0029-00
 ;;9002226.02101,"745,54868-0029-00 ",.02)
 ;;54868-0029-00
 ;;9002226.02101,"745,54868-0029-02 ",.01)
 ;;54868-0029-02
 ;;9002226.02101,"745,54868-0029-02 ",.02)
 ;;54868-0029-02
 ;;9002226.02101,"745,54868-0029-03 ",.01)
 ;;54868-0029-03
 ;;9002226.02101,"745,54868-0029-03 ",.02)
 ;;54868-0029-03
 ;;9002226.02101,"745,54868-0029-05 ",.01)
 ;;54868-0029-05
 ;;9002226.02101,"745,54868-0029-05 ",.02)
 ;;54868-0029-05
 ;;9002226.02101,"745,54868-0029-06 ",.01)
 ;;54868-0029-06
 ;;9002226.02101,"745,54868-0029-06 ",.02)
 ;;54868-0029-06
 ;;9002226.02101,"745,54868-0029-07 ",.01)
 ;;54868-0029-07
 ;;9002226.02101,"745,54868-0029-07 ",.02)
 ;;54868-0029-07
 ;;9002226.02101,"745,54868-1438-00 ",.01)
 ;;54868-1438-00
 ;;9002226.02101,"745,54868-1438-00 ",.02)
 ;;54868-1438-00
 ;;9002226.02101,"745,54868-1438-01 ",.01)
 ;;54868-1438-01
 ;;9002226.02101,"745,54868-1438-01 ",.02)
 ;;54868-1438-01
 ;;9002226.02101,"745,54868-1461-01 ",.01)
 ;;54868-1461-01
 ;;9002226.02101,"745,54868-1461-01 ",.02)
 ;;54868-1461-01
 ;;9002226.02101,"745,54868-1461-02 ",.01)
 ;;54868-1461-02
 ;;9002226.02101,"745,54868-1461-02 ",.02)
 ;;54868-1461-02
 ;;9002226.02101,"745,54868-2710-00 ",.01)
 ;;54868-2710-00
 ;;9002226.02101,"745,54868-2710-00 ",.02)
 ;;54868-2710-00
 ;;9002226.02101,"745,54868-2710-01 ",.01)
 ;;54868-2710-01
 ;;9002226.02101,"745,54868-2710-01 ",.02)
 ;;54868-2710-01
 ;;9002226.02101,"745,55045-3768-08 ",.01)
 ;;55045-3768-08
 ;;9002226.02101,"745,55045-3768-08 ",.02)
 ;;55045-3768-08
 ;;9002226.02101,"745,55289-0789-30 ",.01)
 ;;55289-0789-30
 ;;9002226.02101,"745,55289-0789-30 ",.02)
 ;;55289-0789-30
 ;;9002226.02101,"745,55887-0277-30 ",.01)
 ;;55887-0277-30
 ;;9002226.02101,"745,55887-0277-30 ",.02)
 ;;55887-0277-30
 ;;9002226.02101,"745,55887-0847-60 ",.01)
 ;;55887-0847-60
 ;;9002226.02101,"745,55887-0847-60 ",.02)
 ;;55887-0847-60
 ;;9002226.02101,"745,55887-0847-90 ",.01)
 ;;55887-0847-90
 ;;9002226.02101,"745,55887-0847-90 ",.02)
 ;;55887-0847-90
 ;;9002226.02101,"745,59243-0021-10 ",.01)
 ;;59243-0021-10
 ;;9002226.02101,"745,59243-0021-10 ",.02)
 ;;59243-0021-10
 ;;9002226.02101,"745,60258-0335-16 ",.01)
 ;;60258-0335-16
 ;;9002226.02101,"745,60258-0335-16 ",.02)
 ;;60258-0335-16
 ;;9002226.02101,"745,60258-0336-01 ",.01)
 ;;60258-0336-01
 ;;9002226.02101,"745,60258-0336-01 ",.02)
 ;;60258-0336-01
 ;;9002226.02101,"745,60258-0371-16 ",.01)
 ;;60258-0371-16
 ;;9002226.02101,"745,60258-0371-16 ",.02)
 ;;60258-0371-16
 ;;9002226.02101,"745,61392-0016-45 ",.01)
 ;;61392-0016-45
 ;;9002226.02101,"745,61392-0016-45 ",.02)
 ;;61392-0016-45
 ;;9002226.02101,"745,61392-0016-54 ",.01)
 ;;61392-0016-54
 ;;9002226.02101,"745,61392-0016-54 ",.02)
 ;;61392-0016-54
 ;;9002226.02101,"745,61392-0016-56 ",.01)
 ;;61392-0016-56
 ;;9002226.02101,"745,61392-0016-56 ",.02)
 ;;61392-0016-56
 ;;9002226.02101,"745,61392-0016-91 ",.01)
 ;;61392-0016-91
 ;;9002226.02101,"745,61392-0016-91 ",.02)
 ;;61392-0016-91
 ;;9002226.02101,"745,61392-0017-54 ",.01)
 ;;61392-0017-54
 ;;9002226.02101,"745,61392-0017-54 ",.02)
 ;;61392-0017-54
 ;;9002226.02101,"745,61392-0017-56 ",.01)
 ;;61392-0017-56
 ;;9002226.02101,"745,61392-0017-56 ",.02)
 ;;61392-0017-56
 ;;9002226.02101,"745,61392-0017-91 ",.01)
 ;;61392-0017-91
 ;;9002226.02101,"745,61392-0017-91 ",.02)
 ;;61392-0017-91
 ;;9002226.02101,"745,63629-2792-01 ",.01)
 ;;63629-2792-01
 ;;9002226.02101,"745,63629-2792-01 ",.02)
 ;;63629-2792-01
 ;;9002226.02101,"745,63629-2792-02 ",.01)
 ;;63629-2792-02
 ;;9002226.02101,"745,63629-2792-02 ",.02)
 ;;63629-2792-02
 ;;9002226.02101,"745,63629-3551-01 ",.01)
 ;;63629-3551-01
 ;;9002226.02101,"745,63629-3551-01 ",.02)
 ;;63629-3551-01
 ;;9002226.02101,"745,63874-0443-01 ",.01)
 ;;63874-0443-01
 ;;9002226.02101,"745,63874-0443-01 ",.02)
 ;;63874-0443-01
 ;;9002226.02101,"745,63874-0443-15 ",.01)
 ;;63874-0443-15
 ;;9002226.02101,"745,63874-0443-15 ",.02)
 ;;63874-0443-15
 ;;9002226.02101,"745,63874-0443-20 ",.01)
 ;;63874-0443-20
 ;;9002226.02101,"745,63874-0443-20 ",.02)
 ;;63874-0443-20
 ;;9002226.02101,"745,63874-0443-30 ",.01)
 ;;63874-0443-30
 ;;9002226.02101,"745,63874-0443-30 ",.02)
 ;;63874-0443-30
 ;;9002226.02101,"745,63874-0447-01 ",.01)
 ;;63874-0447-01
 ;;9002226.02101,"745,63874-0447-01 ",.02)
 ;;63874-0447-01
 ;;9002226.02101,"745,63874-0447-15 ",.01)
 ;;63874-0447-15
 ;;9002226.02101,"745,63874-0447-15 ",.02)
 ;;63874-0447-15
 ;;9002226.02101,"745,63874-0447-20 ",.01)
 ;;63874-0447-20
 ;;9002226.02101,"745,63874-0447-20 ",.02)
 ;;63874-0447-20
 ;;9002226.02101,"745,63874-0447-30 ",.01)
 ;;63874-0447-30
 ;;9002226.02101,"745,63874-0447-30 ",.02)
 ;;63874-0447-30
 ;;9002226.02101,"745,63874-0447-60 ",.01)
 ;;63874-0447-60
 ;;9002226.02101,"745,63874-0447-60 ",.02)
 ;;63874-0447-60
 ;;9002226.02101,"745,63874-0675-01 ",.01)
 ;;63874-0675-01
 ;;9002226.02101,"745,63874-0675-01 ",.02)
 ;;63874-0675-01
 ;;9002226.02101,"745,63874-0675-15 ",.01)
 ;;63874-0675-15
 ;;9002226.02101,"745,63874-0675-15 ",.02)
 ;;63874-0675-15
 ;;9002226.02101,"745,63874-0675-20 ",.01)
 ;;63874-0675-20
 ;;9002226.02101,"745,63874-0675-20 ",.02)
 ;;63874-0675-20
 ;;9002226.02101,"745,63874-0675-30 ",.01)
 ;;63874-0675-30
 ;;9002226.02101,"745,63874-0675-30 ",.02)
 ;;63874-0675-30
 ;;9002226.02101,"745,64661-0814-16 ",.01)
 ;;64661-0814-16
 ;;9002226.02101,"745,64661-0814-16 ",.02)
 ;;64661-0814-16
 ;;9002226.02101,"745,65162-0324-11 ",.01)
 ;;65162-0324-11
 ;;9002226.02101,"745,65162-0324-11 ",.02)
 ;;65162-0324-11
