BGP51R20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,55289-0481-60 ",.01)
 ;;55289-0481-60
 ;;9002226.02101,"1197,55289-0481-60 ",.02)
 ;;55289-0481-60
 ;;9002226.02101,"1197,55289-0543-30 ",.01)
 ;;55289-0543-30
 ;;9002226.02101,"1197,55289-0543-30 ",.02)
 ;;55289-0543-30
 ;;9002226.02101,"1197,55289-0545-30 ",.01)
 ;;55289-0545-30
 ;;9002226.02101,"1197,55289-0545-30 ",.02)
 ;;55289-0545-30
 ;;9002226.02101,"1197,55289-0549-30 ",.01)
 ;;55289-0549-30
 ;;9002226.02101,"1197,55289-0549-30 ",.02)
 ;;55289-0549-30
 ;;9002226.02101,"1197,55289-0549-60 ",.01)
 ;;55289-0549-60
 ;;9002226.02101,"1197,55289-0549-60 ",.02)
 ;;55289-0549-60
 ;;9002226.02101,"1197,55289-0602-30 ",.01)
 ;;55289-0602-30
 ;;9002226.02101,"1197,55289-0602-30 ",.02)
 ;;55289-0602-30
 ;;9002226.02101,"1197,55289-0607-30 ",.01)
 ;;55289-0607-30
 ;;9002226.02101,"1197,55289-0607-30 ",.02)
 ;;55289-0607-30
 ;;9002226.02101,"1197,55289-0723-30 ",.01)
 ;;55289-0723-30
 ;;9002226.02101,"1197,55289-0723-30 ",.02)
 ;;55289-0723-30
 ;;9002226.02101,"1197,55289-0723-90 ",.01)
 ;;55289-0723-90
 ;;9002226.02101,"1197,55289-0723-90 ",.02)
 ;;55289-0723-90
 ;;9002226.02101,"1197,55289-0723-93 ",.01)
 ;;55289-0723-93
 ;;9002226.02101,"1197,55289-0723-93 ",.02)
 ;;55289-0723-93
 ;;9002226.02101,"1197,55289-0770-14 ",.01)
 ;;55289-0770-14
 ;;9002226.02101,"1197,55289-0770-14 ",.02)
 ;;55289-0770-14
 ;;9002226.02101,"1197,55289-0774-14 ",.01)
 ;;55289-0774-14
 ;;9002226.02101,"1197,55289-0774-14 ",.02)
 ;;55289-0774-14
 ;;9002226.02101,"1197,55289-0798-07 ",.01)
 ;;55289-0798-07
 ;;9002226.02101,"1197,55289-0798-07 ",.02)
 ;;55289-0798-07
 ;;9002226.02101,"1197,55289-0798-30 ",.01)
 ;;55289-0798-30
 ;;9002226.02101,"1197,55289-0798-30 ",.02)
 ;;55289-0798-30
 ;;9002226.02101,"1197,55289-0853-30 ",.01)
 ;;55289-0853-30
 ;;9002226.02101,"1197,55289-0853-30 ",.02)
 ;;55289-0853-30
 ;;9002226.02101,"1197,55289-0893-30 ",.01)
 ;;55289-0893-30
 ;;9002226.02101,"1197,55289-0893-30 ",.02)
 ;;55289-0893-30
 ;;9002226.02101,"1197,55289-0896-08 ",.01)
 ;;55289-0896-08
 ;;9002226.02101,"1197,55289-0896-08 ",.02)
 ;;55289-0896-08
 ;;9002226.02101,"1197,55289-0896-30 ",.01)
 ;;55289-0896-30
 ;;9002226.02101,"1197,55289-0896-30 ",.02)
 ;;55289-0896-30
 ;;9002226.02101,"1197,55289-0981-30 ",.01)
 ;;55289-0981-30
 ;;9002226.02101,"1197,55289-0981-30 ",.02)
 ;;55289-0981-30
 ;;9002226.02101,"1197,55700-0011-30 ",.01)
 ;;55700-0011-30
 ;;9002226.02101,"1197,55700-0011-30 ",.02)
 ;;55700-0011-30
 ;;9002226.02101,"1197,55700-0011-60 ",.01)
 ;;55700-0011-60
 ;;9002226.02101,"1197,55700-0011-60 ",.02)
 ;;55700-0011-60
 ;;9002226.02101,"1197,55700-0011-90 ",.01)
 ;;55700-0011-90
 ;;9002226.02101,"1197,55700-0011-90 ",.02)
 ;;55700-0011-90
 ;;9002226.02101,"1197,55700-0012-30 ",.01)
 ;;55700-0012-30
 ;;9002226.02101,"1197,55700-0012-30 ",.02)
 ;;55700-0012-30
 ;;9002226.02101,"1197,55700-0012-60 ",.01)
 ;;55700-0012-60
 ;;9002226.02101,"1197,55700-0012-60 ",.02)
 ;;55700-0012-60
 ;;9002226.02101,"1197,55700-0012-90 ",.01)
 ;;55700-0012-90
 ;;9002226.02101,"1197,55700-0012-90 ",.02)
 ;;55700-0012-90
 ;;9002226.02101,"1197,55700-0015-30 ",.01)
 ;;55700-0015-30
 ;;9002226.02101,"1197,55700-0015-30 ",.02)
 ;;55700-0015-30
 ;;9002226.02101,"1197,55700-0015-60 ",.01)
 ;;55700-0015-60
 ;;9002226.02101,"1197,55700-0015-60 ",.02)
 ;;55700-0015-60
 ;;9002226.02101,"1197,55700-0024-30 ",.01)
 ;;55700-0024-30
 ;;9002226.02101,"1197,55700-0024-30 ",.02)
 ;;55700-0024-30
 ;;9002226.02101,"1197,55700-0024-60 ",.01)
 ;;55700-0024-60
 ;;9002226.02101,"1197,55700-0024-60 ",.02)
 ;;55700-0024-60
 ;;9002226.02101,"1197,55700-0024-90 ",.01)
 ;;55700-0024-90
 ;;9002226.02101,"1197,55700-0024-90 ",.02)
 ;;55700-0024-90
 ;;9002226.02101,"1197,57664-0055-13 ",.01)
 ;;57664-0055-13
 ;;9002226.02101,"1197,57664-0055-13 ",.02)
 ;;57664-0055-13
 ;;9002226.02101,"1197,57664-0055-18 ",.01)
 ;;57664-0055-18
 ;;9002226.02101,"1197,57664-0055-18 ",.02)
 ;;57664-0055-18
 ;;9002226.02101,"1197,57664-0055-99 ",.01)
 ;;57664-0055-99
 ;;9002226.02101,"1197,57664-0055-99 ",.02)
 ;;57664-0055-99
 ;;9002226.02101,"1197,57664-0056-13 ",.01)
 ;;57664-0056-13
 ;;9002226.02101,"1197,57664-0056-13 ",.02)
 ;;57664-0056-13
 ;;9002226.02101,"1197,57664-0056-18 ",.01)
 ;;57664-0056-18
 ;;9002226.02101,"1197,57664-0056-18 ",.02)
 ;;57664-0056-18
 ;;9002226.02101,"1197,57664-0056-99 ",.01)
 ;;57664-0056-99
 ;;9002226.02101,"1197,57664-0056-99 ",.02)
 ;;57664-0056-99
 ;;9002226.02101,"1197,57664-0057-13 ",.01)
 ;;57664-0057-13
 ;;9002226.02101,"1197,57664-0057-13 ",.02)
 ;;57664-0057-13
 ;;9002226.02101,"1197,57664-0057-18 ",.01)
 ;;57664-0057-18
 ;;9002226.02101,"1197,57664-0057-18 ",.02)
 ;;57664-0057-18
 ;;9002226.02101,"1197,57664-0057-99 ",.01)
 ;;57664-0057-99
 ;;9002226.02101,"1197,57664-0057-99 ",.02)
 ;;57664-0057-99
 ;;9002226.02101,"1197,57664-0116-88 ",.01)
 ;;57664-0116-88
 ;;9002226.02101,"1197,57664-0116-88 ",.02)
 ;;57664-0116-88
 ;;9002226.02101,"1197,57664-0117-13 ",.01)
 ;;57664-0117-13
 ;;9002226.02101,"1197,57664-0117-13 ",.02)
 ;;57664-0117-13
 ;;9002226.02101,"1197,57664-0117-88 ",.01)
 ;;57664-0117-88
 ;;9002226.02101,"1197,57664-0117-88 ",.02)
 ;;57664-0117-88
 ;;9002226.02101,"1197,57664-0118-13 ",.01)
 ;;57664-0118-13
 ;;9002226.02101,"1197,57664-0118-13 ",.02)
 ;;57664-0118-13
 ;;9002226.02101,"1197,57664-0118-88 ",.01)
 ;;57664-0118-88
 ;;9002226.02101,"1197,57664-0118-88 ",.02)
 ;;57664-0118-88
 ;;9002226.02101,"1197,57664-0568-13 ",.01)
 ;;57664-0568-13
 ;;9002226.02101,"1197,57664-0568-13 ",.02)
 ;;57664-0568-13
 ;;9002226.02101,"1197,57664-0568-18 ",.01)
 ;;57664-0568-18
 ;;9002226.02101,"1197,57664-0568-18 ",.02)
 ;;57664-0568-18
 ;;9002226.02101,"1197,57664-0568-99 ",.01)
 ;;57664-0568-99
 ;;9002226.02101,"1197,57664-0568-99 ",.02)
 ;;57664-0568-99
 ;;9002226.02101,"1197,57664-0569-13 ",.01)
 ;;57664-0569-13
 ;;9002226.02101,"1197,57664-0569-13 ",.02)
 ;;57664-0569-13
 ;;9002226.02101,"1197,57664-0569-18 ",.01)
 ;;57664-0569-18
 ;;9002226.02101,"1197,57664-0569-18 ",.02)
 ;;57664-0569-18
 ;;9002226.02101,"1197,57664-0569-99 ",.01)
 ;;57664-0569-99
 ;;9002226.02101,"1197,57664-0569-99 ",.02)
 ;;57664-0569-99
 ;;9002226.02101,"1197,57664-0570-13 ",.01)
 ;;57664-0570-13
 ;;9002226.02101,"1197,57664-0570-13 ",.02)
 ;;57664-0570-13
 ;;9002226.02101,"1197,57664-0570-18 ",.01)
 ;;57664-0570-18
 ;;9002226.02101,"1197,57664-0570-18 ",.02)
 ;;57664-0570-18
 ;;9002226.02101,"1197,57664-0570-99 ",.01)
 ;;57664-0570-99
 ;;9002226.02101,"1197,57664-0570-99 ",.02)
 ;;57664-0570-99
 ;;9002226.02101,"1197,58016-0374-30 ",.01)
 ;;58016-0374-30
 ;;9002226.02101,"1197,58016-0374-30 ",.02)
 ;;58016-0374-30
 ;;9002226.02101,"1197,58016-0504-00 ",.01)
 ;;58016-0504-00
 ;;9002226.02101,"1197,58016-0504-00 ",.02)
 ;;58016-0504-00
 ;;9002226.02101,"1197,58016-0504-20 ",.01)
 ;;58016-0504-20
 ;;9002226.02101,"1197,58016-0504-20 ",.02)
 ;;58016-0504-20
 ;;9002226.02101,"1197,58016-0504-30 ",.01)
 ;;58016-0504-30
 ;;9002226.02101,"1197,58016-0504-30 ",.02)
 ;;58016-0504-30
 ;;9002226.02101,"1197,58016-0504-60 ",.01)
 ;;58016-0504-60
 ;;9002226.02101,"1197,58016-0504-60 ",.02)
 ;;58016-0504-60
 ;;9002226.02101,"1197,58016-0509-00 ",.01)
 ;;58016-0509-00
 ;;9002226.02101,"1197,58016-0509-00 ",.02)
 ;;58016-0509-00
 ;;9002226.02101,"1197,58016-0509-02 ",.01)
 ;;58016-0509-02
 ;;9002226.02101,"1197,58016-0509-02 ",.02)
 ;;58016-0509-02
 ;;9002226.02101,"1197,58016-0509-12 ",.01)
 ;;58016-0509-12
 ;;9002226.02101,"1197,58016-0509-12 ",.02)
 ;;58016-0509-12
 ;;9002226.02101,"1197,58016-0509-15 ",.01)
 ;;58016-0509-15
 ;;9002226.02101,"1197,58016-0509-15 ",.02)
 ;;58016-0509-15
 ;;9002226.02101,"1197,58016-0509-20 ",.01)
 ;;58016-0509-20
 ;;9002226.02101,"1197,58016-0509-20 ",.02)
 ;;58016-0509-20
 ;;9002226.02101,"1197,58016-0509-30 ",.01)
 ;;58016-0509-30
 ;;9002226.02101,"1197,58016-0509-30 ",.02)
 ;;58016-0509-30
 ;;9002226.02101,"1197,58016-0509-60 ",.01)
 ;;58016-0509-60
 ;;9002226.02101,"1197,58016-0509-60 ",.02)
 ;;58016-0509-60
 ;;9002226.02101,"1197,58016-0511-00 ",.01)
 ;;58016-0511-00
 ;;9002226.02101,"1197,58016-0511-00 ",.02)
 ;;58016-0511-00
 ;;9002226.02101,"1197,58016-0511-08 ",.01)
 ;;58016-0511-08
 ;;9002226.02101,"1197,58016-0511-08 ",.02)
 ;;58016-0511-08
 ;;9002226.02101,"1197,58016-0511-30 ",.01)
 ;;58016-0511-30
 ;;9002226.02101,"1197,58016-0511-30 ",.02)
 ;;58016-0511-30
 ;;9002226.02101,"1197,58016-0606-00 ",.01)
 ;;58016-0606-00
 ;;9002226.02101,"1197,58016-0606-00 ",.02)
 ;;58016-0606-00
 ;;9002226.02101,"1197,58016-0606-12 ",.01)
 ;;58016-0606-12
 ;;9002226.02101,"1197,58016-0606-12 ",.02)
 ;;58016-0606-12
 ;;9002226.02101,"1197,58016-0606-15 ",.01)
 ;;58016-0606-15
 ;;9002226.02101,"1197,58016-0606-15 ",.02)
 ;;58016-0606-15
 ;;9002226.02101,"1197,58016-0606-20 ",.01)
 ;;58016-0606-20
 ;;9002226.02101,"1197,58016-0606-20 ",.02)
 ;;58016-0606-20
 ;;9002226.02101,"1197,58016-0606-30 ",.01)
 ;;58016-0606-30
 ;;9002226.02101,"1197,58016-0606-30 ",.02)
 ;;58016-0606-30
 ;;9002226.02101,"1197,58016-0606-90 ",.01)
 ;;58016-0606-90
 ;;9002226.02101,"1197,58016-0606-90 ",.02)
 ;;58016-0606-90
 ;;9002226.02101,"1197,58016-0607-00 ",.01)
 ;;58016-0607-00
 ;;9002226.02101,"1197,58016-0607-00 ",.02)
 ;;58016-0607-00
 ;;9002226.02101,"1197,58016-0607-12 ",.01)
 ;;58016-0607-12
 ;;9002226.02101,"1197,58016-0607-12 ",.02)
 ;;58016-0607-12
 ;;9002226.02101,"1197,58016-0607-15 ",.01)
 ;;58016-0607-15
 ;;9002226.02101,"1197,58016-0607-15 ",.02)
 ;;58016-0607-15
 ;;9002226.02101,"1197,58016-0607-20 ",.01)
 ;;58016-0607-20
 ;;9002226.02101,"1197,58016-0607-20 ",.02)
 ;;58016-0607-20
 ;;9002226.02101,"1197,58016-0607-30 ",.01)
 ;;58016-0607-30
 ;;9002226.02101,"1197,58016-0607-30 ",.02)
 ;;58016-0607-30
 ;;9002226.02101,"1197,58016-0607-90 ",.01)
 ;;58016-0607-90
 ;;9002226.02101,"1197,58016-0607-90 ",.02)
 ;;58016-0607-90
 ;;9002226.02101,"1197,58016-0608-00 ",.01)
 ;;58016-0608-00
 ;;9002226.02101,"1197,58016-0608-00 ",.02)
 ;;58016-0608-00
 ;;9002226.02101,"1197,58016-0608-12 ",.01)
 ;;58016-0608-12
 ;;9002226.02101,"1197,58016-0608-12 ",.02)
 ;;58016-0608-12
 ;;9002226.02101,"1197,58016-0608-15 ",.01)
 ;;58016-0608-15
 ;;9002226.02101,"1197,58016-0608-15 ",.02)
 ;;58016-0608-15
 ;;9002226.02101,"1197,58016-0608-20 ",.01)
 ;;58016-0608-20
 ;;9002226.02101,"1197,58016-0608-20 ",.02)
 ;;58016-0608-20
 ;;9002226.02101,"1197,58016-0608-30 ",.01)
 ;;58016-0608-30
 ;;9002226.02101,"1197,58016-0608-30 ",.02)
 ;;58016-0608-30
 ;;9002226.02101,"1197,58016-0608-90 ",.01)
 ;;58016-0608-90
 ;;9002226.02101,"1197,58016-0608-90 ",.02)
 ;;58016-0608-90
 ;;9002226.02101,"1197,58016-0721-00 ",.01)
 ;;58016-0721-00
 ;;9002226.02101,"1197,58016-0721-00 ",.02)
 ;;58016-0721-00
 ;;9002226.02101,"1197,58016-0721-30 ",.01)
 ;;58016-0721-30
 ;;9002226.02101,"1197,58016-0721-30 ",.02)
 ;;58016-0721-30
 ;;9002226.02101,"1197,58016-0721-60 ",.01)
 ;;58016-0721-60
 ;;9002226.02101,"1197,58016-0721-60 ",.02)
 ;;58016-0721-60
 ;;9002226.02101,"1197,58016-0721-90 ",.01)
 ;;58016-0721-90
 ;;9002226.02101,"1197,58016-0721-90 ",.02)
 ;;58016-0721-90
 ;;9002226.02101,"1197,58016-0860-00 ",.01)
 ;;58016-0860-00
 ;;9002226.02101,"1197,58016-0860-00 ",.02)
 ;;58016-0860-00
 ;;9002226.02101,"1197,58016-0860-12 ",.01)
 ;;58016-0860-12
 ;;9002226.02101,"1197,58016-0860-12 ",.02)
 ;;58016-0860-12
 ;;9002226.02101,"1197,58016-0860-15 ",.01)
 ;;58016-0860-15
 ;;9002226.02101,"1197,58016-0860-15 ",.02)
 ;;58016-0860-15
 ;;9002226.02101,"1197,58016-0860-20 ",.01)
 ;;58016-0860-20
 ;;9002226.02101,"1197,58016-0860-20 ",.02)
 ;;58016-0860-20
 ;;9002226.02101,"1197,58016-0860-30 ",.01)
 ;;58016-0860-30
 ;;9002226.02101,"1197,58016-0860-30 ",.02)
 ;;58016-0860-30
 ;;9002226.02101,"1197,58118-0238-03 ",.01)
 ;;58118-0238-03
 ;;9002226.02101,"1197,58118-0238-03 ",.02)
 ;;58118-0238-03
 ;;9002226.02101,"1197,58118-0238-09 ",.01)
 ;;58118-0238-09
 ;;9002226.02101,"1197,58118-0238-09 ",.02)
 ;;58118-0238-09
 ;;9002226.02101,"1197,58118-0239-03 ",.01)
 ;;58118-0239-03
 ;;9002226.02101,"1197,58118-0239-03 ",.02)
 ;;58118-0239-03
 ;;9002226.02101,"1197,58118-0239-09 ",.01)
 ;;58118-0239-09
 ;;9002226.02101,"1197,58118-0239-09 ",.02)
 ;;58118-0239-09
 ;;9002226.02101,"1197,58118-0260-03 ",.01)
 ;;58118-0260-03
 ;;9002226.02101,"1197,58118-0260-03 ",.02)
 ;;58118-0260-03
 ;;9002226.02101,"1197,58118-0260-09 ",.01)
 ;;58118-0260-09
 ;;9002226.02101,"1197,58118-0260-09 ",.02)
 ;;58118-0260-09
 ;;9002226.02101,"1197,58118-0261-03 ",.01)
 ;;58118-0261-03
 ;;9002226.02101,"1197,58118-0261-03 ",.02)
 ;;58118-0261-03
 ;;9002226.02101,"1197,58118-0261-06 ",.01)
 ;;58118-0261-06
 ;;9002226.02101,"1197,58118-0261-06 ",.02)
 ;;58118-0261-06
 ;;9002226.02101,"1197,58118-0261-09 ",.01)
 ;;58118-0261-09
 ;;9002226.02101,"1197,58118-0261-09 ",.02)
 ;;58118-0261-09
 ;;9002226.02101,"1197,58118-0262-03 ",.01)
 ;;58118-0262-03
 ;;9002226.02101,"1197,58118-0262-03 ",.02)
 ;;58118-0262-03
 ;;9002226.02101,"1197,58118-0262-06 ",.01)
 ;;58118-0262-06
 ;;9002226.02101,"1197,58118-0262-06 ",.02)
 ;;58118-0262-06
 ;;9002226.02101,"1197,58118-0262-09 ",.01)
 ;;58118-0262-09
 ;;9002226.02101,"1197,58118-0262-09 ",.02)
 ;;58118-0262-09
 ;;9002226.02101,"1197,58118-2108-03 ",.01)
 ;;58118-2108-03
 ;;9002226.02101,"1197,58118-2108-03 ",.02)
 ;;58118-2108-03
 ;;9002226.02101,"1197,58118-2108-09 ",.01)
 ;;58118-2108-09
 ;;9002226.02101,"1197,58118-2108-09 ",.02)
 ;;58118-2108-09
 ;;9002226.02101,"1197,58118-2271-03 ",.01)
 ;;58118-2271-03
