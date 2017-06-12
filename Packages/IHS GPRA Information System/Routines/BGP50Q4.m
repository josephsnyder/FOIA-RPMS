BGP50Q4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 07, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1820,51079-0418-20 ",.01)
 ;;51079-0418-20
 ;;9002226.02101,"1820,51079-0418-20 ",.02)
 ;;51079-0418-20
 ;;9002226.02101,"1820,51079-0418-21 ",.01)
 ;;51079-0418-21
 ;;9002226.02101,"1820,51079-0418-21 ",.02)
 ;;51079-0418-21
 ;;9002226.02101,"1820,51079-0419-01 ",.01)
 ;;51079-0419-01
 ;;9002226.02101,"1820,51079-0419-01 ",.02)
 ;;51079-0419-01
 ;;9002226.02101,"1820,51079-0419-20 ",.01)
 ;;51079-0419-20
 ;;9002226.02101,"1820,51079-0419-20 ",.02)
 ;;51079-0419-20
 ;;9002226.02101,"1820,52959-0236-14 ",.01)
 ;;52959-0236-14
 ;;9002226.02101,"1820,52959-0236-14 ",.02)
 ;;52959-0236-14
 ;;9002226.02101,"1820,52959-0236-15 ",.01)
 ;;52959-0236-15
 ;;9002226.02101,"1820,52959-0236-15 ",.02)
 ;;52959-0236-15
 ;;9002226.02101,"1820,52959-0236-20 ",.01)
 ;;52959-0236-20
 ;;9002226.02101,"1820,52959-0236-20 ",.02)
 ;;52959-0236-20
 ;;9002226.02101,"1820,52959-0236-30 ",.01)
 ;;52959-0236-30
 ;;9002226.02101,"1820,52959-0236-30 ",.02)
 ;;52959-0236-30
 ;;9002226.02101,"1820,52959-0236-60 ",.01)
 ;;52959-0236-60
 ;;9002226.02101,"1820,52959-0236-60 ",.02)
 ;;52959-0236-60
 ;;9002226.02101,"1820,52959-0369-00 ",.01)
 ;;52959-0369-00
 ;;9002226.02101,"1820,52959-0369-00 ",.02)
 ;;52959-0369-00
 ;;9002226.02101,"1820,52959-0369-06 ",.01)
 ;;52959-0369-06
 ;;9002226.02101,"1820,52959-0369-06 ",.02)
 ;;52959-0369-06
 ;;9002226.02101,"1820,52959-0369-30 ",.01)
 ;;52959-0369-30
 ;;9002226.02101,"1820,52959-0369-30 ",.02)
 ;;52959-0369-30
 ;;9002226.02101,"1820,52959-0369-40 ",.01)
 ;;52959-0369-40
 ;;9002226.02101,"1820,52959-0369-40 ",.02)
 ;;52959-0369-40
 ;;9002226.02101,"1820,52959-0369-60 ",.01)
 ;;52959-0369-60
 ;;9002226.02101,"1820,52959-0369-60 ",.02)
 ;;52959-0369-60
 ;;9002226.02101,"1820,52959-0402-01 ",.01)
 ;;52959-0402-01
 ;;9002226.02101,"1820,52959-0402-01 ",.02)
 ;;52959-0402-01
 ;;9002226.02101,"1820,52959-0402-10 ",.01)
 ;;52959-0402-10
 ;;9002226.02101,"1820,52959-0402-10 ",.02)
 ;;52959-0402-10
 ;;9002226.02101,"1820,52959-0402-30 ",.01)
 ;;52959-0402-30
 ;;9002226.02101,"1820,52959-0402-30 ",.02)
 ;;52959-0402-30
 ;;9002226.02101,"1820,52959-0402-50 ",.01)
 ;;52959-0402-50
 ;;9002226.02101,"1820,52959-0402-50 ",.02)
 ;;52959-0402-50
 ;;9002226.02101,"1820,52959-0402-60 ",.01)
 ;;52959-0402-60
 ;;9002226.02101,"1820,52959-0402-60 ",.02)
 ;;52959-0402-60
 ;;9002226.02101,"1820,52959-0459-00 ",.01)
 ;;52959-0459-00
 ;;9002226.02101,"1820,52959-0459-00 ",.02)
 ;;52959-0459-00
 ;;9002226.02101,"1820,52959-0459-10 ",.01)
 ;;52959-0459-10
 ;;9002226.02101,"1820,52959-0459-10 ",.02)
 ;;52959-0459-10
 ;;9002226.02101,"1820,52959-0459-12 ",.01)
 ;;52959-0459-12
 ;;9002226.02101,"1820,52959-0459-12 ",.02)
 ;;52959-0459-12
 ;;9002226.02101,"1820,52959-0459-15 ",.01)
 ;;52959-0459-15
 ;;9002226.02101,"1820,52959-0459-15 ",.02)
 ;;52959-0459-15
 ;;9002226.02101,"1820,52959-0459-20 ",.01)
 ;;52959-0459-20
 ;;9002226.02101,"1820,52959-0459-20 ",.02)
 ;;52959-0459-20
 ;;9002226.02101,"1820,52959-0459-30 ",.01)
 ;;52959-0459-30
 ;;9002226.02101,"1820,52959-0459-30 ",.02)
 ;;52959-0459-30
 ;;9002226.02101,"1820,52959-0459-60 ",.01)
 ;;52959-0459-60
 ;;9002226.02101,"1820,52959-0459-60 ",.02)
 ;;52959-0459-60
 ;;9002226.02101,"1820,52959-0535-10 ",.01)
 ;;52959-0535-10
 ;;9002226.02101,"1820,52959-0535-10 ",.02)
 ;;52959-0535-10
 ;;9002226.02101,"1820,52959-0535-12 ",.01)
 ;;52959-0535-12
 ;;9002226.02101,"1820,52959-0535-12 ",.02)
 ;;52959-0535-12
 ;;9002226.02101,"1820,52959-0535-15 ",.01)
 ;;52959-0535-15
 ;;9002226.02101,"1820,52959-0535-15 ",.02)
 ;;52959-0535-15
 ;;9002226.02101,"1820,52959-0535-28 ",.01)
 ;;52959-0535-28
 ;;9002226.02101,"1820,52959-0535-28 ",.02)
 ;;52959-0535-28
 ;;9002226.02101,"1820,52959-0535-30 ",.01)
 ;;52959-0535-30
 ;;9002226.02101,"1820,52959-0535-30 ",.02)
 ;;52959-0535-30
 ;;9002226.02101,"1820,52959-0535-40 ",.01)
 ;;52959-0535-40
 ;;9002226.02101,"1820,52959-0535-40 ",.02)
 ;;52959-0535-40
 ;;9002226.02101,"1820,52959-0535-60 ",.01)
 ;;52959-0535-60
 ;;9002226.02101,"1820,52959-0535-60 ",.02)
 ;;52959-0535-60
 ;;9002226.02101,"1820,52959-0970-30 ",.01)
 ;;52959-0970-30
 ;;9002226.02101,"1820,52959-0970-30 ",.02)
 ;;52959-0970-30
 ;;9002226.02101,"1820,53217-0056-07 ",.01)
 ;;53217-0056-07
 ;;9002226.02101,"1820,53217-0056-07 ",.02)
 ;;53217-0056-07
 ;;9002226.02101,"1820,53217-0056-14 ",.01)
 ;;53217-0056-14
 ;;9002226.02101,"1820,53217-0056-14 ",.02)
 ;;53217-0056-14
 ;;9002226.02101,"1820,53217-0056-21 ",.01)
 ;;53217-0056-21
 ;;9002226.02101,"1820,53217-0056-21 ",.02)
 ;;53217-0056-21
 ;;9002226.02101,"1820,53217-0056-30 ",.01)
 ;;53217-0056-30
 ;;9002226.02101,"1820,53217-0056-30 ",.02)
 ;;53217-0056-30
 ;;9002226.02101,"1820,53217-0056-60 ",.01)
 ;;53217-0056-60
 ;;9002226.02101,"1820,53217-0056-60 ",.02)
 ;;53217-0056-60
 ;;9002226.02101,"1820,53217-0056-90 ",.01)
 ;;53217-0056-90
 ;;9002226.02101,"1820,53217-0056-90 ",.02)
 ;;53217-0056-90
 ;;9002226.02101,"1820,53489-0648-01 ",.01)
 ;;53489-0648-01
 ;;9002226.02101,"1820,53489-0648-01 ",.02)
 ;;53489-0648-01
 ;;9002226.02101,"1820,53489-0650-07 ",.01)
 ;;53489-0650-07
 ;;9002226.02101,"1820,53489-0650-07 ",.02)
 ;;53489-0650-07
 ;;9002226.02101,"1820,54569-0898-00 ",.01)
 ;;54569-0898-00
 ;;9002226.02101,"1820,54569-0898-00 ",.02)
 ;;54569-0898-00
 ;;9002226.02101,"1820,54569-0905-00 ",.01)
 ;;54569-0905-00
 ;;9002226.02101,"1820,54569-0905-00 ",.02)
 ;;54569-0905-00
 ;;9002226.02101,"1820,54569-0905-01 ",.01)
 ;;54569-0905-01
 ;;9002226.02101,"1820,54569-0905-01 ",.02)
 ;;54569-0905-01
 ;;9002226.02101,"1820,54569-1726-01 ",.01)
 ;;54569-1726-01
 ;;9002226.02101,"1820,54569-1726-01 ",.02)
 ;;54569-1726-01
 ;;9002226.02101,"1820,54569-1726-04 ",.01)
 ;;54569-1726-04
 ;;9002226.02101,"1820,54569-1726-04 ",.02)
 ;;54569-1726-04
 ;;9002226.02101,"1820,54569-2376-02 ",.01)
 ;;54569-2376-02
 ;;9002226.02101,"1820,54569-2376-02 ",.02)
 ;;54569-2376-02
 ;;9002226.02101,"1820,54569-3966-00 ",.01)
 ;;54569-3966-00
 ;;9002226.02101,"1820,54569-3966-00 ",.02)
 ;;54569-3966-00
 ;;9002226.02101,"1820,54569-3966-01 ",.01)
 ;;54569-3966-01
 ;;9002226.02101,"1820,54569-3966-01 ",.02)
 ;;54569-3966-01
 ;;9002226.02101,"1820,54569-3966-03 ",.01)
 ;;54569-3966-03
 ;;9002226.02101,"1820,54569-3966-03 ",.02)
 ;;54569-3966-03
 ;;9002226.02101,"1820,54569-6376-00 ",.01)
 ;;54569-6376-00
 ;;9002226.02101,"1820,54569-6376-00 ",.02)
 ;;54569-6376-00
 ;;9002226.02101,"1820,54868-0038-00 ",.01)
 ;;54868-0038-00
 ;;9002226.02101,"1820,54868-0038-00 ",.02)
 ;;54868-0038-00
 ;;9002226.02101,"1820,54868-0038-01 ",.01)
 ;;54868-0038-01
 ;;9002226.02101,"1820,54868-0038-01 ",.02)
 ;;54868-0038-01
 ;;9002226.02101,"1820,54868-0038-02 ",.01)
 ;;54868-0038-02
 ;;9002226.02101,"1820,54868-0038-02 ",.02)
 ;;54868-0038-02
 ;;9002226.02101,"1820,54868-0038-03 ",.01)
 ;;54868-0038-03
 ;;9002226.02101,"1820,54868-0038-03 ",.02)
 ;;54868-0038-03
 ;;9002226.02101,"1820,54868-0038-04 ",.01)
 ;;54868-0038-04
 ;;9002226.02101,"1820,54868-0038-04 ",.02)
 ;;54868-0038-04
 ;;9002226.02101,"1820,54868-0038-05 ",.01)
 ;;54868-0038-05
 ;;9002226.02101,"1820,54868-0038-05 ",.02)
 ;;54868-0038-05
 ;;9002226.02101,"1820,54868-0038-06 ",.01)
 ;;54868-0038-06
 ;;9002226.02101,"1820,54868-0038-06 ",.02)
 ;;54868-0038-06
 ;;9002226.02101,"1820,54868-0039-02 ",.01)
 ;;54868-0039-02
 ;;9002226.02101,"1820,54868-0039-02 ",.02)
 ;;54868-0039-02
 ;;9002226.02101,"1820,54868-0039-03 ",.01)
 ;;54868-0039-03
 ;;9002226.02101,"1820,54868-0039-03 ",.02)
 ;;54868-0039-03
 ;;9002226.02101,"1820,54868-0039-05 ",.01)
 ;;54868-0039-05
 ;;9002226.02101,"1820,54868-0039-05 ",.02)
 ;;54868-0039-05
 ;;9002226.02101,"1820,54868-0039-06 ",.01)
 ;;54868-0039-06
 ;;9002226.02101,"1820,54868-0039-06 ",.02)
 ;;54868-0039-06
 ;;9002226.02101,"1820,54868-0092-01 ",.01)
 ;;54868-0092-01
 ;;9002226.02101,"1820,54868-0092-01 ",.02)
 ;;54868-0092-01
 ;;9002226.02101,"1820,54868-0092-02 ",.01)
 ;;54868-0092-02
 ;;9002226.02101,"1820,54868-0092-02 ",.02)
 ;;54868-0092-02
 ;;9002226.02101,"1820,54868-0093-00 ",.01)
 ;;54868-0093-00
 ;;9002226.02101,"1820,54868-0093-00 ",.02)
 ;;54868-0093-00
 ;;9002226.02101,"1820,54868-0093-01 ",.01)
 ;;54868-0093-01
 ;;9002226.02101,"1820,54868-0093-01 ",.02)
 ;;54868-0093-01
 ;;9002226.02101,"1820,54868-0778-00 ",.01)
 ;;54868-0778-00
 ;;9002226.02101,"1820,54868-0778-00 ",.02)
 ;;54868-0778-00
 ;;9002226.02101,"1820,54868-0778-01 ",.01)
 ;;54868-0778-01
 ;;9002226.02101,"1820,54868-0778-01 ",.02)
 ;;54868-0778-01
 ;;9002226.02101,"1820,54868-0778-03 ",.01)
 ;;54868-0778-03
 ;;9002226.02101,"1820,54868-0778-03 ",.02)
 ;;54868-0778-03
 ;;9002226.02101,"1820,54868-0829-01 ",.01)
 ;;54868-0829-01
 ;;9002226.02101,"1820,54868-0829-01 ",.02)
 ;;54868-0829-01
 ;;9002226.02101,"1820,54868-0829-02 ",.01)
 ;;54868-0829-02
 ;;9002226.02101,"1820,54868-0829-02 ",.02)
 ;;54868-0829-02
 ;;9002226.02101,"1820,54868-0829-03 ",.01)
 ;;54868-0829-03
 ;;9002226.02101,"1820,54868-0829-03 ",.02)
 ;;54868-0829-03
 ;;9002226.02101,"1820,54868-0829-04 ",.01)
 ;;54868-0829-04
 ;;9002226.02101,"1820,54868-0829-04 ",.02)
 ;;54868-0829-04
 ;;9002226.02101,"1820,54868-2931-00 ",.01)
 ;;54868-2931-00
 ;;9002226.02101,"1820,54868-2931-00 ",.02)
 ;;54868-2931-00
 ;;9002226.02101,"1820,54868-2931-01 ",.01)
 ;;54868-2931-01
 ;;9002226.02101,"1820,54868-2931-01 ",.02)
 ;;54868-2931-01
 ;;9002226.02101,"1820,54868-2931-03 ",.01)
 ;;54868-2931-03
 ;;9002226.02101,"1820,54868-2931-03 ",.02)
 ;;54868-2931-03
 ;;9002226.02101,"1820,54868-2983-00 ",.01)
 ;;54868-2983-00
 ;;9002226.02101,"1820,54868-2983-00 ",.02)
 ;;54868-2983-00
 ;;9002226.02101,"1820,54868-2983-01 ",.01)
 ;;54868-2983-01
 ;;9002226.02101,"1820,54868-2983-01 ",.02)
 ;;54868-2983-01
 ;;9002226.02101,"1820,54868-2983-03 ",.01)
 ;;54868-2983-03
 ;;9002226.02101,"1820,54868-2983-03 ",.02)
 ;;54868-2983-03
 ;;9002226.02101,"1820,54868-2983-04 ",.01)
 ;;54868-2983-04
 ;;9002226.02101,"1820,54868-2983-04 ",.02)
 ;;54868-2983-04
 ;;9002226.02101,"1820,54868-2983-05 ",.01)
 ;;54868-2983-05
 ;;9002226.02101,"1820,54868-2983-05 ",.02)
 ;;54868-2983-05
 ;;9002226.02101,"1820,54868-2983-06 ",.01)
 ;;54868-2983-06
 ;;9002226.02101,"1820,54868-2983-06 ",.02)
 ;;54868-2983-06
 ;;9002226.02101,"1820,54868-2983-07 ",.01)
 ;;54868-2983-07
 ;;9002226.02101,"1820,54868-2983-07 ",.02)
 ;;54868-2983-07
 ;;9002226.02101,"1820,54868-3657-00 ",.01)
 ;;54868-3657-00
 ;;9002226.02101,"1820,54868-3657-00 ",.02)
 ;;54868-3657-00
 ;;9002226.02101,"1820,54868-3657-01 ",.01)
 ;;54868-3657-01
 ;;9002226.02101,"1820,54868-3657-01 ",.02)
 ;;54868-3657-01
 ;;9002226.02101,"1820,55045-1477-00 ",.01)
 ;;55045-1477-00
 ;;9002226.02101,"1820,55045-1477-00 ",.02)
 ;;55045-1477-00
 ;;9002226.02101,"1820,55045-1477-01 ",.01)
 ;;55045-1477-01
 ;;9002226.02101,"1820,55045-1477-01 ",.02)
 ;;55045-1477-01
 ;;9002226.02101,"1820,55045-1477-03 ",.01)
 ;;55045-1477-03
 ;;9002226.02101,"1820,55045-1477-03 ",.02)
 ;;55045-1477-03
 ;;9002226.02101,"1820,55045-1477-04 ",.01)
 ;;55045-1477-04
 ;;9002226.02101,"1820,55045-1477-04 ",.02)
 ;;55045-1477-04
 ;;9002226.02101,"1820,55045-1477-06 ",.01)
 ;;55045-1477-06
 ;;9002226.02101,"1820,55045-1477-06 ",.02)
 ;;55045-1477-06
 ;;9002226.02101,"1820,55045-1477-07 ",.01)
 ;;55045-1477-07
 ;;9002226.02101,"1820,55045-1477-07 ",.02)
 ;;55045-1477-07
 ;;9002226.02101,"1820,55045-1477-08 ",.01)
 ;;55045-1477-08
 ;;9002226.02101,"1820,55045-1477-08 ",.02)
 ;;55045-1477-08
 ;;9002226.02101,"1820,55045-1477-09 ",.01)
 ;;55045-1477-09
 ;;9002226.02101,"1820,55045-1477-09 ",.02)
 ;;55045-1477-09
 ;;9002226.02101,"1820,55045-1746-00 ",.01)
 ;;55045-1746-00
 ;;9002226.02101,"1820,55045-1746-00 ",.02)
 ;;55045-1746-00
 ;;9002226.02101,"1820,55045-1746-01 ",.01)
 ;;55045-1746-01
 ;;9002226.02101,"1820,55045-1746-01 ",.02)
 ;;55045-1746-01
 ;;9002226.02101,"1820,55045-1746-02 ",.01)
 ;;55045-1746-02
 ;;9002226.02101,"1820,55045-1746-02 ",.02)
 ;;55045-1746-02
 ;;9002226.02101,"1820,55045-1746-03 ",.01)
 ;;55045-1746-03
 ;;9002226.02101,"1820,55045-1746-03 ",.02)
 ;;55045-1746-03
 ;;9002226.02101,"1820,55045-1746-04 ",.01)
 ;;55045-1746-04
 ;;9002226.02101,"1820,55045-1746-04 ",.02)
 ;;55045-1746-04
 ;;9002226.02101,"1820,55045-1746-06 ",.01)
 ;;55045-1746-06
 ;;9002226.02101,"1820,55045-1746-06 ",.02)
 ;;55045-1746-06
 ;;9002226.02101,"1820,55045-1746-08 ",.01)
 ;;55045-1746-08
 ;;9002226.02101,"1820,55045-1746-08 ",.02)
 ;;55045-1746-08
 ;;9002226.02101,"1820,55045-1746-09 ",.01)
 ;;55045-1746-09
 ;;9002226.02101,"1820,55045-1746-09 ",.02)
 ;;55045-1746-09
 ;;9002226.02101,"1820,55045-1922-02 ",.01)
 ;;55045-1922-02
 ;;9002226.02101,"1820,55045-1922-02 ",.02)
 ;;55045-1922-02
 ;;9002226.02101,"1820,55045-1922-03 ",.01)
 ;;55045-1922-03
 ;;9002226.02101,"1820,55045-1922-03 ",.02)
 ;;55045-1922-03
 ;;9002226.02101,"1820,55045-1922-04 ",.01)
 ;;55045-1922-04
 ;;9002226.02101,"1820,55045-1922-04 ",.02)
 ;;55045-1922-04
 ;;9002226.02101,"1820,55045-1922-06 ",.01)
 ;;55045-1922-06
 ;;9002226.02101,"1820,55045-1922-06 ",.02)
 ;;55045-1922-06
 ;;9002226.02101,"1820,55045-1922-07 ",.01)
 ;;55045-1922-07
 ;;9002226.02101,"1820,55045-1922-07 ",.02)
 ;;55045-1922-07
 ;;9002226.02101,"1820,55045-1922-08 ",.01)
 ;;55045-1922-08
 ;;9002226.02101,"1820,55045-1922-08 ",.02)
 ;;55045-1922-08
 ;;9002226.02101,"1820,55045-2086-00 ",.01)
 ;;55045-2086-00
 ;;9002226.02101,"1820,55045-2086-00 ",.02)
 ;;55045-2086-00
 ;;9002226.02101,"1820,55045-2086-02 ",.01)
 ;;55045-2086-02
