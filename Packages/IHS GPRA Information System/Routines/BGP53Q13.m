BGP53Q13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,43353-0440-30 ",.02)
 ;;43353-0440-30
 ;;9002226.02101,"805,43353-0478-30 ",.01)
 ;;43353-0478-30
 ;;9002226.02101,"805,43353-0478-30 ",.02)
 ;;43353-0478-30
 ;;9002226.02101,"805,43353-0485-53 ",.01)
 ;;43353-0485-53
 ;;9002226.02101,"805,43353-0485-53 ",.02)
 ;;43353-0485-53
 ;;9002226.02101,"805,43353-0486-30 ",.01)
 ;;43353-0486-30
 ;;9002226.02101,"805,43353-0486-30 ",.02)
 ;;43353-0486-30
 ;;9002226.02101,"805,43478-0900-88 ",.01)
 ;;43478-0900-88
 ;;9002226.02101,"805,43478-0900-88 ",.02)
 ;;43478-0900-88
 ;;9002226.02101,"805,43478-0901-88 ",.01)
 ;;43478-0901-88
 ;;9002226.02101,"805,43478-0901-88 ",.02)
 ;;43478-0901-88
 ;;9002226.02101,"805,43478-0902-88 ",.01)
 ;;43478-0902-88
 ;;9002226.02101,"805,43478-0902-88 ",.02)
 ;;43478-0902-88
 ;;9002226.02101,"805,43478-0903-88 ",.01)
 ;;43478-0903-88
 ;;9002226.02101,"805,43478-0903-88 ",.02)
 ;;43478-0903-88
 ;;9002226.02101,"805,43547-0254-10 ",.01)
 ;;43547-0254-10
 ;;9002226.02101,"805,43547-0254-10 ",.02)
 ;;43547-0254-10
 ;;9002226.02101,"805,43547-0254-50 ",.01)
 ;;43547-0254-50
 ;;9002226.02101,"805,43547-0254-50 ",.02)
 ;;43547-0254-50
 ;;9002226.02101,"805,43547-0255-10 ",.01)
 ;;43547-0255-10
 ;;9002226.02101,"805,43547-0255-10 ",.02)
 ;;43547-0255-10
 ;;9002226.02101,"805,43547-0255-50 ",.01)
 ;;43547-0255-50
 ;;9002226.02101,"805,43547-0255-50 ",.02)
 ;;43547-0255-50
 ;;9002226.02101,"805,43547-0256-10 ",.01)
 ;;43547-0256-10
 ;;9002226.02101,"805,43547-0256-10 ",.02)
 ;;43547-0256-10
 ;;9002226.02101,"805,43547-0256-50 ",.01)
 ;;43547-0256-50
 ;;9002226.02101,"805,43547-0256-50 ",.02)
 ;;43547-0256-50
 ;;9002226.02101,"805,43547-0257-10 ",.01)
 ;;43547-0257-10
 ;;9002226.02101,"805,43547-0257-10 ",.02)
 ;;43547-0257-10
 ;;9002226.02101,"805,43547-0257-50 ",.01)
 ;;43547-0257-50
 ;;9002226.02101,"805,43547-0257-50 ",.02)
 ;;43547-0257-50
 ;;9002226.02101,"805,49884-0122-01 ",.01)
 ;;49884-0122-01
 ;;9002226.02101,"805,49884-0122-01 ",.02)
 ;;49884-0122-01
 ;;9002226.02101,"805,49884-0122-05 ",.01)
 ;;49884-0122-05
 ;;9002226.02101,"805,49884-0122-05 ",.02)
 ;;49884-0122-05
 ;;9002226.02101,"805,49884-0123-01 ",.01)
 ;;49884-0123-01
 ;;9002226.02101,"805,49884-0123-01 ",.02)
 ;;49884-0123-01
 ;;9002226.02101,"805,49884-0123-05 ",.01)
 ;;49884-0123-05
 ;;9002226.02101,"805,49884-0123-05 ",.02)
 ;;49884-0123-05
 ;;9002226.02101,"805,49884-0124-01 ",.01)
 ;;49884-0124-01
 ;;9002226.02101,"805,49884-0124-01 ",.02)
 ;;49884-0124-01
 ;;9002226.02101,"805,49884-0124-05 ",.01)
 ;;49884-0124-05
 ;;9002226.02101,"805,49884-0124-05 ",.02)
 ;;49884-0124-05
 ;;9002226.02101,"805,49884-0282-01 ",.01)
 ;;49884-0282-01
 ;;9002226.02101,"805,49884-0282-01 ",.02)
 ;;49884-0282-01
 ;;9002226.02101,"805,49884-0282-10 ",.01)
 ;;49884-0282-10
 ;;9002226.02101,"805,49884-0282-10 ",.02)
 ;;49884-0282-10
 ;;9002226.02101,"805,49884-0328-01 ",.01)
 ;;49884-0328-01
 ;;9002226.02101,"805,49884-0328-01 ",.02)
 ;;49884-0328-01
 ;;9002226.02101,"805,49884-0328-10 ",.01)
 ;;49884-0328-10
 ;;9002226.02101,"805,49884-0328-10 ",.02)
 ;;49884-0328-10
 ;;9002226.02101,"805,49884-0329-01 ",.01)
 ;;49884-0329-01
 ;;9002226.02101,"805,49884-0329-01 ",.02)
 ;;49884-0329-01
 ;;9002226.02101,"805,49884-0329-10 ",.01)
 ;;49884-0329-10
 ;;9002226.02101,"805,49884-0329-10 ",.02)
 ;;49884-0329-10
 ;;9002226.02101,"805,49884-0330-01 ",.01)
 ;;49884-0330-01
 ;;9002226.02101,"805,49884-0330-01 ",.02)
 ;;49884-0330-01
 ;;9002226.02101,"805,49884-0330-10 ",.01)
 ;;49884-0330-10
 ;;9002226.02101,"805,49884-0330-10 ",.02)
 ;;49884-0330-10
 ;;9002226.02101,"805,49884-0404-01 ",.01)
 ;;49884-0404-01
 ;;9002226.02101,"805,49884-0404-01 ",.02)
 ;;49884-0404-01
 ;;9002226.02101,"805,49884-0404-10 ",.01)
 ;;49884-0404-10
 ;;9002226.02101,"805,49884-0404-10 ",.02)
 ;;49884-0404-10
 ;;9002226.02101,"805,49884-0405-01 ",.01)
 ;;49884-0405-01
 ;;9002226.02101,"805,49884-0405-01 ",.02)
 ;;49884-0405-01
 ;;9002226.02101,"805,49884-0405-10 ",.01)
 ;;49884-0405-10
 ;;9002226.02101,"805,49884-0405-10 ",.02)
 ;;49884-0405-10
 ;;9002226.02101,"805,49884-0406-01 ",.01)
 ;;49884-0406-01
 ;;9002226.02101,"805,49884-0406-01 ",.02)
 ;;49884-0406-01
 ;;9002226.02101,"805,49884-0406-10 ",.01)
 ;;49884-0406-10
 ;;9002226.02101,"805,49884-0406-10 ",.02)
 ;;49884-0406-10
 ;;9002226.02101,"805,49884-0407-01 ",.01)
 ;;49884-0407-01
 ;;9002226.02101,"805,49884-0407-01 ",.02)
 ;;49884-0407-01
 ;;9002226.02101,"805,49884-0407-10 ",.01)
 ;;49884-0407-10
 ;;9002226.02101,"805,49884-0407-10 ",.02)
 ;;49884-0407-10
 ;;9002226.02101,"805,49884-0583-01 ",.01)
 ;;49884-0583-01
 ;;9002226.02101,"805,49884-0583-01 ",.02)
 ;;49884-0583-01
 ;;9002226.02101,"805,49884-0584-01 ",.01)
 ;;49884-0584-01
 ;;9002226.02101,"805,49884-0584-01 ",.02)
 ;;49884-0584-01
 ;;9002226.02101,"805,49999-0010-00 ",.01)
 ;;49999-0010-00
 ;;9002226.02101,"805,49999-0010-00 ",.02)
 ;;49999-0010-00
 ;;9002226.02101,"805,49999-0010-30 ",.01)
 ;;49999-0010-30
 ;;9002226.02101,"805,49999-0010-30 ",.02)
 ;;49999-0010-30
 ;;9002226.02101,"805,49999-0010-60 ",.01)
 ;;49999-0010-60
 ;;9002226.02101,"805,49999-0010-60 ",.02)
 ;;49999-0010-60
 ;;9002226.02101,"805,49999-0104-00 ",.01)
 ;;49999-0104-00
 ;;9002226.02101,"805,49999-0104-00 ",.02)
 ;;49999-0104-00
 ;;9002226.02101,"805,49999-0104-30 ",.01)
 ;;49999-0104-30
 ;;9002226.02101,"805,49999-0104-30 ",.02)
 ;;49999-0104-30
 ;;9002226.02101,"805,49999-0104-60 ",.01)
 ;;49999-0104-60
 ;;9002226.02101,"805,49999-0104-60 ",.02)
 ;;49999-0104-60
 ;;9002226.02101,"805,49999-0104-90 ",.01)
 ;;49999-0104-90
 ;;9002226.02101,"805,49999-0104-90 ",.02)
 ;;49999-0104-90
 ;;9002226.02101,"805,49999-0178-00 ",.01)
 ;;49999-0178-00
 ;;9002226.02101,"805,49999-0178-00 ",.02)
 ;;49999-0178-00
 ;;9002226.02101,"805,49999-0178-30 ",.01)
 ;;49999-0178-30
 ;;9002226.02101,"805,49999-0178-30 ",.02)
 ;;49999-0178-30
 ;;9002226.02101,"805,49999-0201-30 ",.01)
 ;;49999-0201-30
 ;;9002226.02101,"805,49999-0201-30 ",.02)
 ;;49999-0201-30
 ;;9002226.02101,"805,49999-0202-30 ",.01)
 ;;49999-0202-30
 ;;9002226.02101,"805,49999-0202-30 ",.02)
 ;;49999-0202-30
 ;;9002226.02101,"805,49999-0226-00 ",.01)
 ;;49999-0226-00
 ;;9002226.02101,"805,49999-0226-00 ",.02)
 ;;49999-0226-00
 ;;9002226.02101,"805,49999-0226-30 ",.01)
 ;;49999-0226-30
 ;;9002226.02101,"805,49999-0226-30 ",.02)
 ;;49999-0226-30
 ;;9002226.02101,"805,49999-0226-60 ",.01)
 ;;49999-0226-60
 ;;9002226.02101,"805,49999-0226-60 ",.02)
 ;;49999-0226-60
 ;;9002226.02101,"805,49999-0286-60 ",.01)
 ;;49999-0286-60
 ;;9002226.02101,"805,49999-0286-60 ",.02)
 ;;49999-0286-60
 ;;9002226.02101,"805,49999-0454-00 ",.01)
 ;;49999-0454-00
 ;;9002226.02101,"805,49999-0454-00 ",.02)
 ;;49999-0454-00
 ;;9002226.02101,"805,49999-0454-10 ",.01)
 ;;49999-0454-10
 ;;9002226.02101,"805,49999-0454-10 ",.02)
 ;;49999-0454-10
 ;;9002226.02101,"805,49999-0454-30 ",.01)
 ;;49999-0454-30
 ;;9002226.02101,"805,49999-0454-30 ",.02)
 ;;49999-0454-30
 ;;9002226.02101,"805,49999-0454-60 ",.01)
 ;;49999-0454-60
 ;;9002226.02101,"805,49999-0454-60 ",.02)
 ;;49999-0454-60
 ;;9002226.02101,"805,49999-0454-90 ",.01)
 ;;49999-0454-90
 ;;9002226.02101,"805,49999-0454-90 ",.02)
 ;;49999-0454-90
 ;;9002226.02101,"805,49999-0482-30 ",.01)
 ;;49999-0482-30
 ;;9002226.02101,"805,49999-0482-30 ",.02)
 ;;49999-0482-30
 ;;9002226.02101,"805,49999-0483-00 ",.01)
 ;;49999-0483-00
 ;;9002226.02101,"805,49999-0483-00 ",.02)
 ;;49999-0483-00
 ;;9002226.02101,"805,49999-0483-30 ",.01)
 ;;49999-0483-30
 ;;9002226.02101,"805,49999-0483-30 ",.02)
 ;;49999-0483-30
 ;;9002226.02101,"805,49999-0484-00 ",.01)
 ;;49999-0484-00
 ;;9002226.02101,"805,49999-0484-00 ",.02)
 ;;49999-0484-00
 ;;9002226.02101,"805,49999-0484-30 ",.01)
 ;;49999-0484-30
 ;;9002226.02101,"805,49999-0484-30 ",.02)
 ;;49999-0484-30
 ;;9002226.02101,"805,49999-0512-30 ",.01)
 ;;49999-0512-30
 ;;9002226.02101,"805,49999-0512-30 ",.02)
 ;;49999-0512-30
 ;;9002226.02101,"805,49999-0555-90 ",.01)
 ;;49999-0555-90
 ;;9002226.02101,"805,49999-0555-90 ",.02)
 ;;49999-0555-90
 ;;9002226.02101,"805,49999-0575-10 ",.01)
 ;;49999-0575-10
 ;;9002226.02101,"805,49999-0575-10 ",.02)
 ;;49999-0575-10
 ;;9002226.02101,"805,49999-0575-20 ",.01)
 ;;49999-0575-20
 ;;9002226.02101,"805,49999-0575-20 ",.02)
 ;;49999-0575-20
 ;;9002226.02101,"805,49999-0575-30 ",.01)
 ;;49999-0575-30
 ;;9002226.02101,"805,49999-0575-30 ",.02)
 ;;49999-0575-30
 ;;9002226.02101,"805,49999-0577-20 ",.01)
 ;;49999-0577-20
 ;;9002226.02101,"805,49999-0577-20 ",.02)
 ;;49999-0577-20
 ;;9002226.02101,"805,49999-0866-00 ",.01)
 ;;49999-0866-00
 ;;9002226.02101,"805,49999-0866-00 ",.02)
 ;;49999-0866-00
 ;;9002226.02101,"805,49999-0872-30 ",.01)
 ;;49999-0872-30
 ;;9002226.02101,"805,49999-0872-30 ",.02)
 ;;49999-0872-30
 ;;9002226.02101,"805,49999-0938-30 ",.01)
 ;;49999-0938-30
 ;;9002226.02101,"805,49999-0938-30 ",.02)
 ;;49999-0938-30
 ;;9002226.02101,"805,49999-0939-30 ",.01)
 ;;49999-0939-30
 ;;9002226.02101,"805,49999-0939-30 ",.02)
 ;;49999-0939-30
 ;;9002226.02101,"805,49999-0996-00 ",.01)
 ;;49999-0996-00
 ;;9002226.02101,"805,49999-0996-00 ",.02)
 ;;49999-0996-00
 ;;9002226.02101,"805,50111-0467-01 ",.01)
 ;;50111-0467-01
 ;;9002226.02101,"805,50111-0467-01 ",.02)
 ;;50111-0467-01
 ;;9002226.02101,"805,50111-0467-03 ",.01)
 ;;50111-0467-03
 ;;9002226.02101,"805,50111-0467-03 ",.02)
 ;;50111-0467-03
 ;;9002226.02101,"805,50111-0468-01 ",.01)
 ;;50111-0468-01
 ;;9002226.02101,"805,50111-0468-01 ",.02)
 ;;50111-0468-01
 ;;9002226.02101,"805,50111-0468-03 ",.01)
 ;;50111-0468-03
 ;;9002226.02101,"805,50111-0468-03 ",.02)
 ;;50111-0468-03
 ;;9002226.02101,"805,50111-0469-01 ",.01)
 ;;50111-0469-01
 ;;9002226.02101,"805,50111-0469-01 ",.02)
 ;;50111-0469-01
 ;;9002226.02101,"805,50111-0469-03 ",.01)
 ;;50111-0469-03
 ;;9002226.02101,"805,50111-0469-03 ",.02)
 ;;50111-0469-03
 ;;9002226.02101,"805,50111-0470-01 ",.01)
 ;;50111-0470-01
 ;;9002226.02101,"805,50111-0470-01 ",.02)
 ;;50111-0470-01
 ;;9002226.02101,"805,50111-0471-01 ",.01)
 ;;50111-0471-01
 ;;9002226.02101,"805,50111-0471-01 ",.02)
 ;;50111-0471-01
 ;;9002226.02101,"805,50111-0471-02 ",.01)
 ;;50111-0471-02
 ;;9002226.02101,"805,50111-0471-02 ",.02)
 ;;50111-0471-02
 ;;9002226.02101,"805,50268-0050-15 ",.01)
 ;;50268-0050-15
 ;;9002226.02101,"805,50268-0050-15 ",.02)
 ;;50268-0050-15
 ;;9002226.02101,"805,50268-0051-15 ",.01)
 ;;50268-0051-15
 ;;9002226.02101,"805,50268-0051-15 ",.02)
 ;;50268-0051-15
 ;;9002226.02101,"805,50419-0105-10 ",.01)
 ;;50419-0105-10
 ;;9002226.02101,"805,50419-0105-10 ",.02)
 ;;50419-0105-10
 ;;9002226.02101,"805,50419-0106-10 ",.01)
 ;;50419-0106-10
 ;;9002226.02101,"805,50419-0106-10 ",.02)
 ;;50419-0106-10
 ;;9002226.02101,"805,50419-0107-10 ",.01)
 ;;50419-0107-10
 ;;9002226.02101,"805,50419-0107-10 ",.02)
 ;;50419-0107-10
 ;;9002226.02101,"805,50419-0109-10 ",.01)
 ;;50419-0109-10
 ;;9002226.02101,"805,50419-0109-10 ",.02)
 ;;50419-0109-10
 ;;9002226.02101,"805,50419-0115-06 ",.01)
 ;;50419-0115-06
 ;;9002226.02101,"805,50419-0115-06 ",.02)
 ;;50419-0115-06
 ;;9002226.02101,"805,50419-0116-06 ",.01)
 ;;50419-0116-06
 ;;9002226.02101,"805,50419-0116-06 ",.02)
 ;;50419-0116-06
 ;;9002226.02101,"805,50419-0119-06 ",.01)
 ;;50419-0119-06
 ;;9002226.02101,"805,50419-0119-06 ",.02)
 ;;50419-0119-06
 ;;9002226.02101,"805,50742-0101-01 ",.01)
 ;;50742-0101-01
 ;;9002226.02101,"805,50742-0101-01 ",.02)
 ;;50742-0101-01
 ;;9002226.02101,"805,50742-0101-10 ",.01)
 ;;50742-0101-10
 ;;9002226.02101,"805,50742-0101-10 ",.02)
 ;;50742-0101-10
 ;;9002226.02101,"805,50742-0102-01 ",.01)
 ;;50742-0102-01
 ;;9002226.02101,"805,50742-0102-01 ",.02)
 ;;50742-0102-01
 ;;9002226.02101,"805,50742-0102-10 ",.01)
 ;;50742-0102-10
 ;;9002226.02101,"805,50742-0102-10 ",.02)
 ;;50742-0102-10
 ;;9002226.02101,"805,50742-0103-01 ",.01)
 ;;50742-0103-01
 ;;9002226.02101,"805,50742-0103-01 ",.02)
 ;;50742-0103-01
 ;;9002226.02101,"805,50742-0103-10 ",.01)
 ;;50742-0103-10
 ;;9002226.02101,"805,50742-0103-10 ",.02)
 ;;50742-0103-10
 ;;9002226.02101,"805,50742-0107-01 ",.01)
 ;;50742-0107-01
 ;;9002226.02101,"805,50742-0107-01 ",.02)
 ;;50742-0107-01
 ;;9002226.02101,"805,50742-0107-05 ",.01)
 ;;50742-0107-05
 ;;9002226.02101,"805,50742-0107-05 ",.02)
 ;;50742-0107-05
 ;;9002226.02101,"805,50742-0108-01 ",.01)
 ;;50742-0108-01
 ;;9002226.02101,"805,50742-0108-01 ",.02)
 ;;50742-0108-01
 ;;9002226.02101,"805,50742-0108-10 ",.01)
 ;;50742-0108-10
 ;;9002226.02101,"805,50742-0108-10 ",.02)
 ;;50742-0108-10
 ;;9002226.02101,"805,50742-0109-01 ",.01)
 ;;50742-0109-01
 ;;9002226.02101,"805,50742-0109-01 ",.02)
 ;;50742-0109-01
 ;;9002226.02101,"805,50742-0109-10 ",.01)
 ;;50742-0109-10
 ;;9002226.02101,"805,50742-0109-10 ",.02)
 ;;50742-0109-10
 ;;9002226.02101,"805,51079-0169-01 ",.01)
 ;;51079-0169-01
 ;;9002226.02101,"805,51079-0169-01 ",.02)
 ;;51079-0169-01
 ;;9002226.02101,"805,51079-0169-20 ",.01)
 ;;51079-0169-20
 ;;9002226.02101,"805,51079-0169-20 ",.02)
 ;;51079-0169-20
 ;;9002226.02101,"805,51079-0170-01 ",.01)
 ;;51079-0170-01
 ;;9002226.02101,"805,51079-0170-01 ",.02)
 ;;51079-0170-01
 ;;9002226.02101,"805,51079-0170-20 ",.01)
 ;;51079-0170-20
 ;;9002226.02101,"805,51079-0170-20 ",.02)
 ;;51079-0170-20
 ;;9002226.02101,"805,51079-0171-01 ",.01)
 ;;51079-0171-01
 ;;9002226.02101,"805,51079-0171-01 ",.02)
 ;;51079-0171-01
 ;;9002226.02101,"805,51079-0171-03 ",.01)
 ;;51079-0171-03
