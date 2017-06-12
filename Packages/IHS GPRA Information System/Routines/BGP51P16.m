BGP51P16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,49999-0555-14 ",.01)
 ;;49999-0555-14
 ;;9002226.02101,"1195,49999-0555-14 ",.02)
 ;;49999-0555-14
 ;;9002226.02101,"1195,49999-0555-60 ",.01)
 ;;49999-0555-60
 ;;9002226.02101,"1195,49999-0555-60 ",.02)
 ;;49999-0555-60
 ;;9002226.02101,"1195,49999-0555-90 ",.01)
 ;;49999-0555-90
 ;;9002226.02101,"1195,49999-0555-90 ",.02)
 ;;49999-0555-90
 ;;9002226.02101,"1195,49999-0575-10 ",.01)
 ;;49999-0575-10
 ;;9002226.02101,"1195,49999-0575-10 ",.02)
 ;;49999-0575-10
 ;;9002226.02101,"1195,49999-0575-20 ",.01)
 ;;49999-0575-20
 ;;9002226.02101,"1195,49999-0575-20 ",.02)
 ;;49999-0575-20
 ;;9002226.02101,"1195,49999-0575-30 ",.01)
 ;;49999-0575-30
 ;;9002226.02101,"1195,49999-0575-30 ",.02)
 ;;49999-0575-30
 ;;9002226.02101,"1195,49999-0575-60 ",.01)
 ;;49999-0575-60
 ;;9002226.02101,"1195,49999-0575-60 ",.02)
 ;;49999-0575-60
 ;;9002226.02101,"1195,49999-0575-90 ",.01)
 ;;49999-0575-90
 ;;9002226.02101,"1195,49999-0575-90 ",.02)
 ;;49999-0575-90
 ;;9002226.02101,"1195,49999-0577-20 ",.01)
 ;;49999-0577-20
 ;;9002226.02101,"1195,49999-0577-20 ",.02)
 ;;49999-0577-20
 ;;9002226.02101,"1195,49999-0866-00 ",.01)
 ;;49999-0866-00
 ;;9002226.02101,"1195,49999-0866-00 ",.02)
 ;;49999-0866-00
 ;;9002226.02101,"1195,49999-0872-30 ",.01)
 ;;49999-0872-30
 ;;9002226.02101,"1195,49999-0872-30 ",.02)
 ;;49999-0872-30
 ;;9002226.02101,"1195,49999-0938-30 ",.01)
 ;;49999-0938-30
 ;;9002226.02101,"1195,49999-0938-30 ",.02)
 ;;49999-0938-30
 ;;9002226.02101,"1195,49999-0939-30 ",.01)
 ;;49999-0939-30
 ;;9002226.02101,"1195,49999-0939-30 ",.02)
 ;;49999-0939-30
 ;;9002226.02101,"1195,49999-0996-00 ",.01)
 ;;49999-0996-00
 ;;9002226.02101,"1195,49999-0996-00 ",.02)
 ;;49999-0996-00
 ;;9002226.02101,"1195,50111-0467-01 ",.01)
 ;;50111-0467-01
 ;;9002226.02101,"1195,50111-0467-01 ",.02)
 ;;50111-0467-01
 ;;9002226.02101,"1195,50111-0467-03 ",.01)
 ;;50111-0467-03
 ;;9002226.02101,"1195,50111-0467-03 ",.02)
 ;;50111-0467-03
 ;;9002226.02101,"1195,50111-0468-01 ",.01)
 ;;50111-0468-01
 ;;9002226.02101,"1195,50111-0468-01 ",.02)
 ;;50111-0468-01
 ;;9002226.02101,"1195,50111-0468-03 ",.01)
 ;;50111-0468-03
 ;;9002226.02101,"1195,50111-0468-03 ",.02)
 ;;50111-0468-03
 ;;9002226.02101,"1195,50111-0469-01 ",.01)
 ;;50111-0469-01
 ;;9002226.02101,"1195,50111-0469-01 ",.02)
 ;;50111-0469-01
 ;;9002226.02101,"1195,50111-0469-03 ",.01)
 ;;50111-0469-03
 ;;9002226.02101,"1195,50111-0469-03 ",.02)
 ;;50111-0469-03
 ;;9002226.02101,"1195,50111-0470-01 ",.01)
 ;;50111-0470-01
 ;;9002226.02101,"1195,50111-0470-01 ",.02)
 ;;50111-0470-01
 ;;9002226.02101,"1195,50111-0471-01 ",.01)
 ;;50111-0471-01
 ;;9002226.02101,"1195,50111-0471-01 ",.02)
 ;;50111-0471-01
 ;;9002226.02101,"1195,50111-0471-02 ",.01)
 ;;50111-0471-02
 ;;9002226.02101,"1195,50111-0471-02 ",.02)
 ;;50111-0471-02
 ;;9002226.02101,"1195,50268-0050-15 ",.01)
 ;;50268-0050-15
 ;;9002226.02101,"1195,50268-0050-15 ",.02)
 ;;50268-0050-15
 ;;9002226.02101,"1195,50268-0051-15 ",.01)
 ;;50268-0051-15
 ;;9002226.02101,"1195,50268-0051-15 ",.02)
 ;;50268-0051-15
 ;;9002226.02101,"1195,50436-4313-02 ",.01)
 ;;50436-4313-02
 ;;9002226.02101,"1195,50436-4313-02 ",.02)
 ;;50436-4313-02
 ;;9002226.02101,"1195,50436-4314-02 ",.01)
 ;;50436-4314-02
 ;;9002226.02101,"1195,50436-4314-02 ",.02)
 ;;50436-4314-02
 ;;9002226.02101,"1195,50436-4315-01 ",.01)
 ;;50436-4315-01
 ;;9002226.02101,"1195,50436-4315-01 ",.02)
 ;;50436-4315-01
 ;;9002226.02101,"1195,50742-0101-01 ",.01)
 ;;50742-0101-01
 ;;9002226.02101,"1195,50742-0101-01 ",.02)
 ;;50742-0101-01
 ;;9002226.02101,"1195,50742-0101-10 ",.01)
 ;;50742-0101-10
 ;;9002226.02101,"1195,50742-0101-10 ",.02)
 ;;50742-0101-10
 ;;9002226.02101,"1195,50742-0102-01 ",.01)
 ;;50742-0102-01
 ;;9002226.02101,"1195,50742-0102-01 ",.02)
 ;;50742-0102-01
 ;;9002226.02101,"1195,50742-0102-10 ",.01)
 ;;50742-0102-10
 ;;9002226.02101,"1195,50742-0102-10 ",.02)
 ;;50742-0102-10
 ;;9002226.02101,"1195,50742-0103-01 ",.01)
 ;;50742-0103-01
 ;;9002226.02101,"1195,50742-0103-01 ",.02)
 ;;50742-0103-01
 ;;9002226.02101,"1195,50742-0103-10 ",.01)
 ;;50742-0103-10
 ;;9002226.02101,"1195,50742-0103-10 ",.02)
 ;;50742-0103-10
 ;;9002226.02101,"1195,50742-0107-01 ",.01)
 ;;50742-0107-01
 ;;9002226.02101,"1195,50742-0107-01 ",.02)
 ;;50742-0107-01
 ;;9002226.02101,"1195,50742-0107-05 ",.01)
 ;;50742-0107-05
 ;;9002226.02101,"1195,50742-0107-05 ",.02)
 ;;50742-0107-05
 ;;9002226.02101,"1195,50742-0108-01 ",.01)
 ;;50742-0108-01
 ;;9002226.02101,"1195,50742-0108-01 ",.02)
 ;;50742-0108-01
 ;;9002226.02101,"1195,50742-0108-10 ",.01)
 ;;50742-0108-10
 ;;9002226.02101,"1195,50742-0108-10 ",.02)
 ;;50742-0108-10
 ;;9002226.02101,"1195,50742-0109-01 ",.01)
 ;;50742-0109-01
 ;;9002226.02101,"1195,50742-0109-01 ",.02)
 ;;50742-0109-01
 ;;9002226.02101,"1195,50742-0109-10 ",.01)
 ;;50742-0109-10
 ;;9002226.02101,"1195,50742-0109-10 ",.02)
 ;;50742-0109-10
 ;;9002226.02101,"1195,51079-0169-01 ",.01)
 ;;51079-0169-01
 ;;9002226.02101,"1195,51079-0169-01 ",.02)
 ;;51079-0169-01
 ;;9002226.02101,"1195,51079-0169-20 ",.01)
 ;;51079-0169-20
 ;;9002226.02101,"1195,51079-0169-20 ",.02)
 ;;51079-0169-20
 ;;9002226.02101,"1195,51079-0170-01 ",.01)
 ;;51079-0170-01
 ;;9002226.02101,"1195,51079-0170-01 ",.02)
 ;;51079-0170-01
 ;;9002226.02101,"1195,51079-0170-20 ",.01)
 ;;51079-0170-20
 ;;9002226.02101,"1195,51079-0170-20 ",.02)
 ;;51079-0170-20
 ;;9002226.02101,"1195,51079-0171-01 ",.01)
 ;;51079-0171-01
 ;;9002226.02101,"1195,51079-0171-01 ",.02)
 ;;51079-0171-01
 ;;9002226.02101,"1195,51079-0171-03 ",.01)
 ;;51079-0171-03
 ;;9002226.02101,"1195,51079-0171-03 ",.02)
 ;;51079-0171-03
 ;;9002226.02101,"1195,51079-0255-01 ",.01)
 ;;51079-0255-01
 ;;9002226.02101,"1195,51079-0255-01 ",.02)
 ;;51079-0255-01
 ;;9002226.02101,"1195,51079-0255-17 ",.01)
 ;;51079-0255-17
 ;;9002226.02101,"1195,51079-0255-17 ",.02)
 ;;51079-0255-17
 ;;9002226.02101,"1195,51079-0255-19 ",.01)
 ;;51079-0255-19
 ;;9002226.02101,"1195,51079-0255-19 ",.02)
 ;;51079-0255-19
 ;;9002226.02101,"1195,51079-0255-20 ",.01)
 ;;51079-0255-20
 ;;9002226.02101,"1195,51079-0255-20 ",.02)
 ;;51079-0255-20
 ;;9002226.02101,"1195,51079-0277-01 ",.01)
 ;;51079-0277-01
 ;;9002226.02101,"1195,51079-0277-01 ",.02)
 ;;51079-0277-01
 ;;9002226.02101,"1195,51079-0277-20 ",.01)
 ;;51079-0277-20
 ;;9002226.02101,"1195,51079-0277-20 ",.02)
 ;;51079-0277-20
 ;;9002226.02101,"1195,51079-0278-01 ",.01)
 ;;51079-0278-01
 ;;9002226.02101,"1195,51079-0278-01 ",.02)
 ;;51079-0278-01
 ;;9002226.02101,"1195,51079-0278-20 ",.01)
 ;;51079-0278-20
 ;;9002226.02101,"1195,51079-0278-20 ",.02)
 ;;51079-0278-20
 ;;9002226.02101,"1195,51079-0279-01 ",.01)
 ;;51079-0279-01
 ;;9002226.02101,"1195,51079-0279-01 ",.02)
 ;;51079-0279-01
 ;;9002226.02101,"1195,51079-0279-20 ",.01)
 ;;51079-0279-20
 ;;9002226.02101,"1195,51079-0279-20 ",.02)
 ;;51079-0279-20
 ;;9002226.02101,"1195,51079-0684-01 ",.01)
 ;;51079-0684-01
 ;;9002226.02101,"1195,51079-0684-01 ",.02)
 ;;51079-0684-01
 ;;9002226.02101,"1195,51079-0684-17 ",.01)
 ;;51079-0684-17
 ;;9002226.02101,"1195,51079-0684-17 ",.02)
 ;;51079-0684-17
 ;;9002226.02101,"1195,51079-0684-19 ",.01)
 ;;51079-0684-19
 ;;9002226.02101,"1195,51079-0684-19 ",.02)
 ;;51079-0684-19
 ;;9002226.02101,"1195,51079-0684-20 ",.01)
 ;;51079-0684-20
 ;;9002226.02101,"1195,51079-0684-20 ",.02)
 ;;51079-0684-20
 ;;9002226.02101,"1195,51079-0684-63 ",.01)
 ;;51079-0684-63
 ;;9002226.02101,"1195,51079-0684-63 ",.02)
 ;;51079-0684-63
 ;;9002226.02101,"1195,51079-0685-01 ",.01)
 ;;51079-0685-01
 ;;9002226.02101,"1195,51079-0685-01 ",.02)
 ;;51079-0685-01
 ;;9002226.02101,"1195,51079-0685-20 ",.01)
 ;;51079-0685-20
 ;;9002226.02101,"1195,51079-0685-20 ",.02)
 ;;51079-0685-20
 ;;9002226.02101,"1195,51079-0759-01 ",.01)
 ;;51079-0759-01
 ;;9002226.02101,"1195,51079-0759-01 ",.02)
 ;;51079-0759-01
 ;;9002226.02101,"1195,51079-0759-17 ",.01)
 ;;51079-0759-17
 ;;9002226.02101,"1195,51079-0759-17 ",.02)
 ;;51079-0759-17
 ;;9002226.02101,"1195,51079-0759-19 ",.01)
 ;;51079-0759-19
 ;;9002226.02101,"1195,51079-0759-19 ",.02)
 ;;51079-0759-19
 ;;9002226.02101,"1195,51079-0759-20 ",.01)
 ;;51079-0759-20
 ;;9002226.02101,"1195,51079-0759-20 ",.02)
 ;;51079-0759-20
 ;;9002226.02101,"1195,51079-0759-63 ",.01)
 ;;51079-0759-63
 ;;9002226.02101,"1195,51079-0759-63 ",.02)
 ;;51079-0759-63
 ;;9002226.02101,"1195,51079-0771-01 ",.01)
 ;;51079-0771-01
 ;;9002226.02101,"1195,51079-0771-01 ",.02)
 ;;51079-0771-01
 ;;9002226.02101,"1195,51079-0771-17 ",.01)
 ;;51079-0771-17
 ;;9002226.02101,"1195,51079-0771-17 ",.02)
 ;;51079-0771-17
 ;;9002226.02101,"1195,51079-0771-19 ",.01)
 ;;51079-0771-19
 ;;9002226.02101,"1195,51079-0771-19 ",.02)
 ;;51079-0771-19
 ;;9002226.02101,"1195,51079-0771-20 ",.01)
 ;;51079-0771-20
 ;;9002226.02101,"1195,51079-0771-20 ",.02)
 ;;51079-0771-20
 ;;9002226.02101,"1195,51079-0801-01 ",.01)
 ;;51079-0801-01
 ;;9002226.02101,"1195,51079-0801-01 ",.02)
 ;;51079-0801-01
 ;;9002226.02101,"1195,51079-0801-17 ",.01)
 ;;51079-0801-17
 ;;9002226.02101,"1195,51079-0801-17 ",.02)
 ;;51079-0801-17
 ;;9002226.02101,"1195,51079-0801-19 ",.01)
 ;;51079-0801-19
 ;;9002226.02101,"1195,51079-0801-19 ",.02)
 ;;51079-0801-19
 ;;9002226.02101,"1195,51079-0801-20 ",.01)
 ;;51079-0801-20
 ;;9002226.02101,"1195,51079-0801-20 ",.02)
 ;;51079-0801-20
 ;;9002226.02101,"1195,51079-0801-30 ",.01)
 ;;51079-0801-30
 ;;9002226.02101,"1195,51079-0801-30 ",.02)
 ;;51079-0801-30
 ;;9002226.02101,"1195,51079-0801-56 ",.01)
 ;;51079-0801-56
 ;;9002226.02101,"1195,51079-0801-56 ",.02)
 ;;51079-0801-56
 ;;9002226.02101,"1195,51079-0802-01 ",.01)
 ;;51079-0802-01
 ;;9002226.02101,"1195,51079-0802-01 ",.02)
 ;;51079-0802-01
 ;;9002226.02101,"1195,51079-0802-17 ",.01)
 ;;51079-0802-17
 ;;9002226.02101,"1195,51079-0802-17 ",.02)
 ;;51079-0802-17
 ;;9002226.02101,"1195,51079-0802-19 ",.01)
 ;;51079-0802-19
 ;;9002226.02101,"1195,51079-0802-19 ",.02)
 ;;51079-0802-19
 ;;9002226.02101,"1195,51079-0802-20 ",.01)
 ;;51079-0802-20
 ;;9002226.02101,"1195,51079-0802-20 ",.02)
 ;;51079-0802-20
 ;;9002226.02101,"1195,51079-0812-01 ",.01)
 ;;51079-0812-01
 ;;9002226.02101,"1195,51079-0812-01 ",.02)
 ;;51079-0812-01
 ;;9002226.02101,"1195,51079-0812-20 ",.01)
 ;;51079-0812-20
 ;;9002226.02101,"1195,51079-0812-20 ",.02)
 ;;51079-0812-20
 ;;9002226.02101,"1195,51079-0813-01 ",.01)
 ;;51079-0813-01
 ;;9002226.02101,"1195,51079-0813-01 ",.02)
 ;;51079-0813-01
 ;;9002226.02101,"1195,51079-0813-20 ",.01)
 ;;51079-0813-20
 ;;9002226.02101,"1195,51079-0813-20 ",.02)
 ;;51079-0813-20
 ;;9002226.02101,"1195,51079-0928-01 ",.01)
 ;;51079-0928-01
 ;;9002226.02101,"1195,51079-0928-01 ",.02)
 ;;51079-0928-01
 ;;9002226.02101,"1195,51079-0928-20 ",.01)
 ;;51079-0928-20
 ;;9002226.02101,"1195,51079-0928-20 ",.02)
 ;;51079-0928-20
 ;;9002226.02101,"1195,51079-0929-01 ",.01)
 ;;51079-0929-01
 ;;9002226.02101,"1195,51079-0929-01 ",.02)
 ;;51079-0929-01
 ;;9002226.02101,"1195,51079-0929-20 ",.01)
 ;;51079-0929-20
 ;;9002226.02101,"1195,51079-0929-20 ",.02)
 ;;51079-0929-20
 ;;9002226.02101,"1195,51079-0930-01 ",.01)
 ;;51079-0930-01
 ;;9002226.02101,"1195,51079-0930-01 ",.02)
 ;;51079-0930-01
 ;;9002226.02101,"1195,51079-0930-17 ",.01)
 ;;51079-0930-17
 ;;9002226.02101,"1195,51079-0930-17 ",.02)
 ;;51079-0930-17
 ;;9002226.02101,"1195,51079-0930-19 ",.01)
 ;;51079-0930-19
 ;;9002226.02101,"1195,51079-0930-19 ",.02)
 ;;51079-0930-19
 ;;9002226.02101,"1195,51079-0930-20 ",.01)
 ;;51079-0930-20
 ;;9002226.02101,"1195,51079-0930-20 ",.02)
 ;;51079-0930-20
 ;;9002226.02101,"1195,51079-0931-01 ",.01)
 ;;51079-0931-01
 ;;9002226.02101,"1195,51079-0931-01 ",.02)
 ;;51079-0931-01
 ;;9002226.02101,"1195,51079-0931-17 ",.01)
 ;;51079-0931-17
 ;;9002226.02101,"1195,51079-0931-17 ",.02)
 ;;51079-0931-17
 ;;9002226.02101,"1195,51079-0931-19 ",.01)
 ;;51079-0931-19
 ;;9002226.02101,"1195,51079-0931-19 ",.02)
 ;;51079-0931-19
 ;;9002226.02101,"1195,51079-0931-20 ",.01)
 ;;51079-0931-20
 ;;9002226.02101,"1195,51079-0931-20 ",.02)
 ;;51079-0931-20
 ;;9002226.02101,"1195,51079-0932-01 ",.01)
 ;;51079-0932-01
 ;;9002226.02101,"1195,51079-0932-01 ",.02)
 ;;51079-0932-01
 ;;9002226.02101,"1195,51079-0932-20 ",.01)
 ;;51079-0932-20
 ;;9002226.02101,"1195,51079-0932-20 ",.02)
 ;;51079-0932-20
 ;;9002226.02101,"1195,51138-0009-30 ",.01)
 ;;51138-0009-30
 ;;9002226.02101,"1195,51138-0009-30 ",.02)
 ;;51138-0009-30
 ;;9002226.02101,"1195,51138-0010-30 ",.01)
 ;;51138-0010-30
 ;;9002226.02101,"1195,51138-0010-30 ",.02)
 ;;51138-0010-30
 ;;9002226.02101,"1195,51138-0011-30 ",.01)
 ;;51138-0011-30
 ;;9002226.02101,"1195,51138-0011-30 ",.02)
 ;;51138-0011-30
 ;;9002226.02101,"1195,51138-0096-30 ",.01)
 ;;51138-0096-30
 ;;9002226.02101,"1195,51138-0096-30 ",.02)
 ;;51138-0096-30
 ;;9002226.02101,"1195,51138-0097-30 ",.01)
 ;;51138-0097-30
 ;;9002226.02101,"1195,51138-0097-30 ",.02)
 ;;51138-0097-30
 ;;9002226.02101,"1195,51138-0098-30 ",.01)
 ;;51138-0098-30
 ;;9002226.02101,"1195,51138-0098-30 ",.02)
 ;;51138-0098-30
 ;;9002226.02101,"1195,51138-0105-30 ",.01)
 ;;51138-0105-30
 ;;9002226.02101,"1195,51138-0105-30 ",.02)
 ;;51138-0105-30
 ;;9002226.02101,"1195,51138-0106-30 ",.01)
 ;;51138-0106-30
 ;;9002226.02101,"1195,51138-0106-30 ",.02)
 ;;51138-0106-30
 ;;9002226.02101,"1195,51138-0107-30 ",.01)
 ;;51138-0107-30
 ;;9002226.02101,"1195,51138-0107-30 ",.02)
 ;;51138-0107-30
 ;;9002226.02101,"1195,51138-0108-30 ",.01)
 ;;51138-0108-30
