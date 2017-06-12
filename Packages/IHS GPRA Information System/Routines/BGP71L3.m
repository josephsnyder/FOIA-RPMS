BGP71L3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1797,54569-0181-01 ",.01)
 ;;54569-0181-01
 ;;9002226.02101,"1797,54569-0181-01 ",.02)
 ;;54569-0181-01
 ;;9002226.02101,"1797,54569-0181-08 ",.01)
 ;;54569-0181-08
 ;;9002226.02101,"1797,54569-0181-08 ",.02)
 ;;54569-0181-08
 ;;9002226.02101,"1797,54569-1969-00 ",.01)
 ;;54569-1969-00
 ;;9002226.02101,"1797,54569-1969-00 ",.02)
 ;;54569-1969-00
 ;;9002226.02101,"1797,54569-1969-01 ",.01)
 ;;54569-1969-01
 ;;9002226.02101,"1797,54569-1969-01 ",.02)
 ;;54569-1969-01
 ;;9002226.02101,"1797,54569-1969-02 ",.01)
 ;;54569-1969-02
 ;;9002226.02101,"1797,54569-1969-02 ",.02)
 ;;54569-1969-02
 ;;9002226.02101,"1797,54569-1969-03 ",.01)
 ;;54569-1969-03
 ;;9002226.02101,"1797,54569-1969-03 ",.02)
 ;;54569-1969-03
 ;;9002226.02101,"1797,54569-1969-04 ",.01)
 ;;54569-1969-04
 ;;9002226.02101,"1797,54569-1969-04 ",.02)
 ;;54569-1969-04
 ;;9002226.02101,"1797,54569-3544-00 ",.01)
 ;;54569-3544-00
 ;;9002226.02101,"1797,54569-3544-00 ",.02)
 ;;54569-3544-00
 ;;9002226.02101,"1797,54569-3544-01 ",.01)
 ;;54569-3544-01
 ;;9002226.02101,"1797,54569-3544-01 ",.02)
 ;;54569-3544-01
 ;;9002226.02101,"1797,54569-3544-02 ",.01)
 ;;54569-3544-02
 ;;9002226.02101,"1797,54569-3544-02 ",.02)
 ;;54569-3544-02
 ;;9002226.02101,"1797,54569-5576-00 ",.01)
 ;;54569-5576-00
 ;;9002226.02101,"1797,54569-5576-00 ",.02)
 ;;54569-5576-00
 ;;9002226.02101,"1797,54569-5576-01 ",.01)
 ;;54569-5576-01
 ;;9002226.02101,"1797,54569-5576-01 ",.02)
 ;;54569-5576-01
 ;;9002226.02101,"1797,54569-8316-00 ",.01)
 ;;54569-8316-00
 ;;9002226.02101,"1797,54569-8316-00 ",.02)
 ;;54569-8316-00
 ;;9002226.02101,"1797,54868-0107-00 ",.01)
 ;;54868-0107-00
 ;;9002226.02101,"1797,54868-0107-00 ",.02)
 ;;54868-0107-00
 ;;9002226.02101,"1797,54868-0107-02 ",.01)
 ;;54868-0107-02
 ;;9002226.02101,"1797,54868-0107-02 ",.02)
 ;;54868-0107-02
 ;;9002226.02101,"1797,54868-0107-05 ",.01)
 ;;54868-0107-05
 ;;9002226.02101,"1797,54868-0107-05 ",.02)
 ;;54868-0107-05
 ;;9002226.02101,"1797,54868-0107-06 ",.01)
 ;;54868-0107-06
 ;;9002226.02101,"1797,54868-0107-06 ",.02)
 ;;54868-0107-06
 ;;9002226.02101,"1797,54868-0107-07 ",.01)
 ;;54868-0107-07
 ;;9002226.02101,"1797,54868-0107-07 ",.02)
 ;;54868-0107-07
 ;;9002226.02101,"1797,54868-0473-00 ",.01)
 ;;54868-0473-00
 ;;9002226.02101,"1797,54868-0473-00 ",.02)
 ;;54868-0473-00
 ;;9002226.02101,"1797,54868-0473-01 ",.01)
 ;;54868-0473-01
 ;;9002226.02101,"1797,54868-0473-01 ",.02)
 ;;54868-0473-01
 ;;9002226.02101,"1797,54868-0473-02 ",.01)
 ;;54868-0473-02
 ;;9002226.02101,"1797,54868-0473-02 ",.02)
 ;;54868-0473-02
 ;;9002226.02101,"1797,54868-0473-03 ",.01)
 ;;54868-0473-03
 ;;9002226.02101,"1797,54868-0473-03 ",.02)
 ;;54868-0473-03
 ;;9002226.02101,"1797,54868-0473-04 ",.01)
 ;;54868-0473-04
 ;;9002226.02101,"1797,54868-0473-04 ",.02)
 ;;54868-0473-04
 ;;9002226.02101,"1797,54868-0473-05 ",.01)
 ;;54868-0473-05
 ;;9002226.02101,"1797,54868-0473-05 ",.02)
 ;;54868-0473-05
 ;;9002226.02101,"1797,54868-0473-06 ",.01)
 ;;54868-0473-06
 ;;9002226.02101,"1797,54868-0473-06 ",.02)
 ;;54868-0473-06
 ;;9002226.02101,"1797,54868-0473-07 ",.01)
 ;;54868-0473-07
 ;;9002226.02101,"1797,54868-0473-07 ",.02)
 ;;54868-0473-07
 ;;9002226.02101,"1797,54868-2366-00 ",.01)
 ;;54868-2366-00
 ;;9002226.02101,"1797,54868-2366-00 ",.02)
 ;;54868-2366-00
 ;;9002226.02101,"1797,54868-2366-01 ",.01)
 ;;54868-2366-01
 ;;9002226.02101,"1797,54868-2366-01 ",.02)
 ;;54868-2366-01
 ;;9002226.02101,"1797,54868-2366-02 ",.01)
 ;;54868-2366-02
 ;;9002226.02101,"1797,54868-2366-02 ",.02)
 ;;54868-2366-02
 ;;9002226.02101,"1797,54868-2366-03 ",.01)
 ;;54868-2366-03
 ;;9002226.02101,"1797,54868-2366-03 ",.02)
 ;;54868-2366-03
 ;;9002226.02101,"1797,54868-2366-04 ",.01)
 ;;54868-2366-04
 ;;9002226.02101,"1797,54868-2366-04 ",.02)
 ;;54868-2366-04
 ;;9002226.02101,"1797,54868-2366-05 ",.01)
 ;;54868-2366-05
 ;;9002226.02101,"1797,54868-2366-05 ",.02)
 ;;54868-2366-05
 ;;9002226.02101,"1797,54868-2366-06 ",.01)
 ;;54868-2366-06
 ;;9002226.02101,"1797,54868-2366-06 ",.02)
 ;;54868-2366-06
 ;;9002226.02101,"1797,54868-2366-07 ",.01)
 ;;54868-2366-07
 ;;9002226.02101,"1797,54868-2366-07 ",.02)
 ;;54868-2366-07
 ;;9002226.02101,"1797,54868-6203-00 ",.01)
 ;;54868-6203-00
 ;;9002226.02101,"1797,54868-6203-00 ",.02)
 ;;54868-6203-00
 ;;9002226.02101,"1797,54868-6203-01 ",.01)
 ;;54868-6203-01
 ;;9002226.02101,"1797,54868-6203-01 ",.02)
 ;;54868-6203-01
 ;;9002226.02101,"1797,55048-0545-14 ",.01)
 ;;55048-0545-14
 ;;9002226.02101,"1797,55048-0545-14 ",.02)
 ;;55048-0545-14
 ;;9002226.02101,"1797,55048-0545-20 ",.01)
 ;;55048-0545-20
 ;;9002226.02101,"1797,55048-0545-20 ",.02)
 ;;55048-0545-20
 ;;9002226.02101,"1797,55048-0545-30 ",.01)
 ;;55048-0545-30
 ;;9002226.02101,"1797,55048-0545-30 ",.02)
 ;;55048-0545-30
 ;;9002226.02101,"1797,55289-0031-06 ",.01)
 ;;55289-0031-06
 ;;9002226.02101,"1797,55289-0031-06 ",.02)
 ;;55289-0031-06
 ;;9002226.02101,"1797,55289-0031-10 ",.01)
 ;;55289-0031-10
 ;;9002226.02101,"1797,55289-0031-10 ",.02)
 ;;55289-0031-10
 ;;9002226.02101,"1797,55289-0031-14 ",.01)
 ;;55289-0031-14
 ;;9002226.02101,"1797,55289-0031-14 ",.02)
 ;;55289-0031-14
 ;;9002226.02101,"1797,55289-0031-20 ",.01)
 ;;55289-0031-20
 ;;9002226.02101,"1797,55289-0031-20 ",.02)
 ;;55289-0031-20
 ;;9002226.02101,"1797,55289-0179-12 ",.01)
 ;;55289-0179-12
 ;;9002226.02101,"1797,55289-0179-12 ",.02)
 ;;55289-0179-12
 ;;9002226.02101,"1797,55289-0179-28 ",.01)
 ;;55289-0179-28
 ;;9002226.02101,"1797,55289-0179-28 ",.02)
 ;;55289-0179-28
 ;;9002226.02101,"1797,55289-0179-40 ",.01)
 ;;55289-0179-40
 ;;9002226.02101,"1797,55289-0179-40 ",.02)
 ;;55289-0179-40
 ;;9002226.02101,"1797,55289-0186-12 ",.01)
 ;;55289-0186-12
 ;;9002226.02101,"1797,55289-0186-12 ",.02)
 ;;55289-0186-12
 ;;9002226.02101,"1797,55289-0186-14 ",.01)
 ;;55289-0186-14
 ;;9002226.02101,"1797,55289-0186-14 ",.02)
 ;;55289-0186-14
 ;;9002226.02101,"1797,55289-0186-20 ",.01)
 ;;55289-0186-20
 ;;9002226.02101,"1797,55289-0186-20 ",.02)
 ;;55289-0186-20
 ;;9002226.02101,"1797,55289-0186-21 ",.01)
 ;;55289-0186-21
 ;;9002226.02101,"1797,55289-0186-21 ",.02)
 ;;55289-0186-21
 ;;9002226.02101,"1797,55289-0186-28 ",.01)
 ;;55289-0186-28
 ;;9002226.02101,"1797,55289-0186-28 ",.02)
 ;;55289-0186-28
 ;;9002226.02101,"1797,55289-0186-40 ",.01)
 ;;55289-0186-40
 ;;9002226.02101,"1797,55289-0186-40 ",.02)
 ;;55289-0186-40
 ;;9002226.02101,"1797,55289-0203-06 ",.01)
 ;;55289-0203-06
 ;;9002226.02101,"1797,55289-0203-06 ",.02)
 ;;55289-0203-06
 ;;9002226.02101,"1797,55289-0203-10 ",.01)
 ;;55289-0203-10
 ;;9002226.02101,"1797,55289-0203-10 ",.02)
 ;;55289-0203-10
 ;;9002226.02101,"1797,55289-0203-12 ",.01)
 ;;55289-0203-12
 ;;9002226.02101,"1797,55289-0203-12 ",.02)
 ;;55289-0203-12
 ;;9002226.02101,"1797,55289-0203-14 ",.01)
 ;;55289-0203-14
 ;;9002226.02101,"1797,55289-0203-14 ",.02)
 ;;55289-0203-14
 ;;9002226.02101,"1797,55289-0203-20 ",.01)
 ;;55289-0203-20
 ;;9002226.02101,"1797,55289-0203-20 ",.02)
 ;;55289-0203-20
 ;;9002226.02101,"1797,55289-0203-28 ",.01)
 ;;55289-0203-28
 ;;9002226.02101,"1797,55289-0203-28 ",.02)
 ;;55289-0203-28
 ;;9002226.02101,"1797,55289-0203-30 ",.01)
 ;;55289-0203-30
 ;;9002226.02101,"1797,55289-0203-30 ",.02)
 ;;55289-0203-30
 ;;9002226.02101,"1797,55289-0203-40 ",.01)
 ;;55289-0203-40
 ;;9002226.02101,"1797,55289-0203-40 ",.02)
 ;;55289-0203-40
 ;;9002226.02101,"1797,55289-0822-02 ",.01)
 ;;55289-0822-02
 ;;9002226.02101,"1797,55289-0822-02 ",.02)
 ;;55289-0822-02
 ;;9002226.02101,"1797,55289-0822-06 ",.01)
 ;;55289-0822-06
 ;;9002226.02101,"1797,55289-0822-06 ",.02)
 ;;55289-0822-06
 ;;9002226.02101,"1797,55289-0822-10 ",.01)
 ;;55289-0822-10
 ;;9002226.02101,"1797,55289-0822-10 ",.02)
 ;;55289-0822-10
 ;;9002226.02101,"1797,55289-0822-14 ",.01)
 ;;55289-0822-14
 ;;9002226.02101,"1797,55289-0822-14 ",.02)
 ;;55289-0822-14
 ;;9002226.02101,"1797,55289-0822-20 ",.01)
 ;;55289-0822-20
 ;;9002226.02101,"1797,55289-0822-20 ",.02)
 ;;55289-0822-20
 ;;9002226.02101,"1797,55289-0914-12 ",.01)
 ;;55289-0914-12
 ;;9002226.02101,"1797,55289-0914-12 ",.02)
 ;;55289-0914-12
 ;;9002226.02101,"1797,55289-0914-14 ",.01)
 ;;55289-0914-14
 ;;9002226.02101,"1797,55289-0914-14 ",.02)
 ;;55289-0914-14
 ;;9002226.02101,"1797,55289-0914-15 ",.01)
 ;;55289-0914-15
 ;;9002226.02101,"1797,55289-0914-15 ",.02)
 ;;55289-0914-15
 ;;9002226.02101,"1797,55289-0914-20 ",.01)
 ;;55289-0914-20
 ;;9002226.02101,"1797,55289-0914-20 ",.02)
 ;;55289-0914-20
 ;;9002226.02101,"1797,55289-0914-28 ",.01)
 ;;55289-0914-28
 ;;9002226.02101,"1797,55289-0914-28 ",.02)
 ;;55289-0914-28
 ;;9002226.02101,"1797,55289-0914-30 ",.01)
 ;;55289-0914-30
 ;;9002226.02101,"1797,55289-0914-30 ",.02)
 ;;55289-0914-30
 ;;9002226.02101,"1797,55289-0914-40 ",.01)
 ;;55289-0914-40
 ;;9002226.02101,"1797,55289-0914-40 ",.02)
 ;;55289-0914-40
 ;;9002226.02101,"1797,55700-0295-14 ",.01)
 ;;55700-0295-14
 ;;9002226.02101,"1797,55700-0295-14 ",.02)
 ;;55700-0295-14
 ;;9002226.02101,"1797,55700-0295-20 ",.01)
 ;;55700-0295-20
 ;;9002226.02101,"1797,55700-0295-20 ",.02)
 ;;55700-0295-20
 ;;9002226.02101,"1797,55700-0388-30 ",.01)
 ;;55700-0388-30
 ;;9002226.02101,"1797,55700-0388-30 ",.02)
 ;;55700-0388-30
 ;;9002226.02101,"1797,57664-0231-88 ",.01)
 ;;57664-0231-88
 ;;9002226.02101,"1797,57664-0231-88 ",.02)
 ;;57664-0231-88
 ;;9002226.02101,"1797,57664-0232-88 ",.01)
 ;;57664-0232-88
 ;;9002226.02101,"1797,57664-0232-88 ",.02)
 ;;57664-0232-88
 ;;9002226.02101,"1797,57664-0233-88 ",.01)
 ;;57664-0233-88
 ;;9002226.02101,"1797,57664-0233-88 ",.02)
 ;;57664-0233-88
 ;;9002226.02101,"1797,57664-0239-32 ",.01)
 ;;57664-0239-32
 ;;9002226.02101,"1797,57664-0239-32 ",.02)
 ;;57664-0239-32
 ;;9002226.02101,"1797,58118-0303-02 ",.01)
 ;;58118-0303-02
 ;;9002226.02101,"1797,58118-0303-02 ",.02)
 ;;58118-0303-02
 ;;9002226.02101,"1797,58118-0303-04 ",.01)
 ;;58118-0303-04
 ;;9002226.02101,"1797,58118-0303-04 ",.02)
 ;;58118-0303-04
 ;;9002226.02101,"1797,58118-0308-01 ",.01)
 ;;58118-0308-01
 ;;9002226.02101,"1797,58118-0308-01 ",.02)
 ;;58118-0308-01
 ;;9002226.02101,"1797,58864-0323-14 ",.01)
 ;;58864-0323-14
 ;;9002226.02101,"1797,58864-0323-14 ",.02)
 ;;58864-0323-14
 ;;9002226.02101,"1797,58864-0371-14 ",.01)
 ;;58864-0371-14
 ;;9002226.02101,"1797,58864-0371-14 ",.02)
 ;;58864-0371-14
 ;;9002226.02101,"1797,58864-0371-20 ",.01)
 ;;58864-0371-20
 ;;9002226.02101,"1797,58864-0371-20 ",.02)
 ;;58864-0371-20
 ;;9002226.02101,"1797,58864-0371-30 ",.01)
 ;;58864-0371-30
 ;;9002226.02101,"1797,58864-0371-30 ",.02)
 ;;58864-0371-30
 ;;9002226.02101,"1797,58864-0651-14 ",.01)
 ;;58864-0651-14
 ;;9002226.02101,"1797,58864-0651-14 ",.02)
 ;;58864-0651-14
 ;;9002226.02101,"1797,59630-0450-08 ",.01)
 ;;59630-0450-08
 ;;9002226.02101,"1797,59630-0450-08 ",.02)
 ;;59630-0450-08
 ;;9002226.02101,"1797,63629-1459-01 ",.01)
 ;;63629-1459-01
 ;;9002226.02101,"1797,63629-1459-01 ",.02)
 ;;63629-1459-01
 ;;9002226.02101,"1797,63629-1459-02 ",.01)
 ;;63629-1459-02
 ;;9002226.02101,"1797,63629-1459-02 ",.02)
 ;;63629-1459-02
 ;;9002226.02101,"1797,63629-1459-03 ",.01)
 ;;63629-1459-03
 ;;9002226.02101,"1797,63629-1459-03 ",.02)
 ;;63629-1459-03
 ;;9002226.02101,"1797,63629-1459-04 ",.01)
 ;;63629-1459-04
 ;;9002226.02101,"1797,63629-1459-04 ",.02)
 ;;63629-1459-04
 ;;9002226.02101,"1797,63629-1459-05 ",.01)
 ;;63629-1459-05
 ;;9002226.02101,"1797,63629-1459-05 ",.02)
 ;;63629-1459-05
 ;;9002226.02101,"1797,63629-1459-06 ",.01)
 ;;63629-1459-06
 ;;9002226.02101,"1797,63629-1459-06 ",.02)
 ;;63629-1459-06
 ;;9002226.02101,"1797,63629-1748-01 ",.01)
 ;;63629-1748-01
