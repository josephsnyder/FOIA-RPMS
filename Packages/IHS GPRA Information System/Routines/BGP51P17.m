BGP51P17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,51138-0108-30 ",.02)
 ;;51138-0108-30
 ;;9002226.02101,"1195,51138-0109-30 ",.01)
 ;;51138-0109-30
 ;;9002226.02101,"1195,51138-0109-30 ",.02)
 ;;51138-0109-30
 ;;9002226.02101,"1195,51138-0115-30 ",.01)
 ;;51138-0115-30
 ;;9002226.02101,"1195,51138-0115-30 ",.02)
 ;;51138-0115-30
 ;;9002226.02101,"1195,51138-0116-30 ",.01)
 ;;51138-0116-30
 ;;9002226.02101,"1195,51138-0116-30 ",.02)
 ;;51138-0116-30
 ;;9002226.02101,"1195,51138-0117-30 ",.01)
 ;;51138-0117-30
 ;;9002226.02101,"1195,51138-0117-30 ",.02)
 ;;51138-0117-30
 ;;9002226.02101,"1195,51138-0118-30 ",.01)
 ;;51138-0118-30
 ;;9002226.02101,"1195,51138-0118-30 ",.02)
 ;;51138-0118-30
 ;;9002226.02101,"1195,51138-0119-30 ",.01)
 ;;51138-0119-30
 ;;9002226.02101,"1195,51138-0119-30 ",.02)
 ;;51138-0119-30
 ;;9002226.02101,"1195,51138-0120-30 ",.01)
 ;;51138-0120-30
 ;;9002226.02101,"1195,51138-0120-30 ",.02)
 ;;51138-0120-30
 ;;9002226.02101,"1195,51138-0131-30 ",.01)
 ;;51138-0131-30
 ;;9002226.02101,"1195,51138-0131-30 ",.02)
 ;;51138-0131-30
 ;;9002226.02101,"1195,51138-0132-30 ",.01)
 ;;51138-0132-30
 ;;9002226.02101,"1195,51138-0132-30 ",.02)
 ;;51138-0132-30
 ;;9002226.02101,"1195,51138-0133-30 ",.01)
 ;;51138-0133-30
 ;;9002226.02101,"1195,51138-0133-30 ",.02)
 ;;51138-0133-30
 ;;9002226.02101,"1195,51138-0157-30 ",.01)
 ;;51138-0157-30
 ;;9002226.02101,"1195,51138-0157-30 ",.02)
 ;;51138-0157-30
 ;;9002226.02101,"1195,51138-0158-30 ",.01)
 ;;51138-0158-30
 ;;9002226.02101,"1195,51138-0158-30 ",.02)
 ;;51138-0158-30
 ;;9002226.02101,"1195,51138-0159-30 ",.01)
 ;;51138-0159-30
 ;;9002226.02101,"1195,51138-0159-30 ",.02)
 ;;51138-0159-30
 ;;9002226.02101,"1195,51138-0172-30 ",.01)
 ;;51138-0172-30
 ;;9002226.02101,"1195,51138-0172-30 ",.02)
 ;;51138-0172-30
 ;;9002226.02101,"1195,51138-0173-30 ",.01)
 ;;51138-0173-30
 ;;9002226.02101,"1195,51138-0173-30 ",.02)
 ;;51138-0173-30
 ;;9002226.02101,"1195,51138-0174-30 ",.01)
 ;;51138-0174-30
 ;;9002226.02101,"1195,51138-0174-30 ",.02)
 ;;51138-0174-30
 ;;9002226.02101,"1195,51138-0175-30 ",.01)
 ;;51138-0175-30
 ;;9002226.02101,"1195,51138-0175-30 ",.02)
 ;;51138-0175-30
 ;;9002226.02101,"1195,51138-0204-30 ",.01)
 ;;51138-0204-30
 ;;9002226.02101,"1195,51138-0204-30 ",.02)
 ;;51138-0204-30
 ;;9002226.02101,"1195,51138-0205-30 ",.01)
 ;;51138-0205-30
 ;;9002226.02101,"1195,51138-0205-30 ",.02)
 ;;51138-0205-30
 ;;9002226.02101,"1195,51138-0206-30 ",.01)
 ;;51138-0206-30
 ;;9002226.02101,"1195,51138-0206-30 ",.02)
 ;;51138-0206-30
 ;;9002226.02101,"1195,51138-0207-30 ",.01)
 ;;51138-0207-30
 ;;9002226.02101,"1195,51138-0207-30 ",.02)
 ;;51138-0207-30
 ;;9002226.02101,"1195,51138-0373-10 ",.01)
 ;;51138-0373-10
 ;;9002226.02101,"1195,51138-0373-10 ",.02)
 ;;51138-0373-10
 ;;9002226.02101,"1195,51138-0373-30 ",.01)
 ;;51138-0373-30
 ;;9002226.02101,"1195,51138-0373-30 ",.02)
 ;;51138-0373-30
 ;;9002226.02101,"1195,51138-0374-10 ",.01)
 ;;51138-0374-10
 ;;9002226.02101,"1195,51138-0374-10 ",.02)
 ;;51138-0374-10
 ;;9002226.02101,"1195,51138-0374-30 ",.01)
 ;;51138-0374-30
 ;;9002226.02101,"1195,51138-0374-30 ",.02)
 ;;51138-0374-30
 ;;9002226.02101,"1195,51138-0375-10 ",.01)
 ;;51138-0375-10
 ;;9002226.02101,"1195,51138-0375-10 ",.02)
 ;;51138-0375-10
 ;;9002226.02101,"1195,51138-0375-30 ",.01)
 ;;51138-0375-30
 ;;9002226.02101,"1195,51138-0375-30 ",.02)
 ;;51138-0375-30
 ;;9002226.02101,"1195,51138-0376-10 ",.01)
 ;;51138-0376-10
 ;;9002226.02101,"1195,51138-0376-10 ",.02)
 ;;51138-0376-10
 ;;9002226.02101,"1195,51138-0376-30 ",.01)
 ;;51138-0376-30
 ;;9002226.02101,"1195,51138-0376-30 ",.02)
 ;;51138-0376-30
 ;;9002226.02101,"1195,51138-0383-30 ",.01)
 ;;51138-0383-30
 ;;9002226.02101,"1195,51138-0383-30 ",.02)
 ;;51138-0383-30
 ;;9002226.02101,"1195,51138-0384-30 ",.01)
 ;;51138-0384-30
 ;;9002226.02101,"1195,51138-0384-30 ",.02)
 ;;51138-0384-30
 ;;9002226.02101,"1195,51138-0385-30 ",.01)
 ;;51138-0385-30
 ;;9002226.02101,"1195,51138-0385-30 ",.02)
 ;;51138-0385-30
 ;;9002226.02101,"1195,51138-0386-30 ",.01)
 ;;51138-0386-30
 ;;9002226.02101,"1195,51138-0386-30 ",.02)
 ;;51138-0386-30
 ;;9002226.02101,"1195,51138-0409-10 ",.01)
 ;;51138-0409-10
 ;;9002226.02101,"1195,51138-0409-10 ",.02)
 ;;51138-0409-10
 ;;9002226.02101,"1195,51138-0409-30 ",.01)
 ;;51138-0409-30
 ;;9002226.02101,"1195,51138-0409-30 ",.02)
 ;;51138-0409-30
 ;;9002226.02101,"1195,51138-0410-10 ",.01)
 ;;51138-0410-10
 ;;9002226.02101,"1195,51138-0410-10 ",.02)
 ;;51138-0410-10
 ;;9002226.02101,"1195,51138-0410-30 ",.01)
 ;;51138-0410-30
 ;;9002226.02101,"1195,51138-0410-30 ",.02)
 ;;51138-0410-30
 ;;9002226.02101,"1195,51138-0411-10 ",.01)
 ;;51138-0411-10
 ;;9002226.02101,"1195,51138-0411-10 ",.02)
 ;;51138-0411-10
 ;;9002226.02101,"1195,51138-0411-30 ",.01)
 ;;51138-0411-30
 ;;9002226.02101,"1195,51138-0411-30 ",.02)
 ;;51138-0411-30
 ;;9002226.02101,"1195,51138-0412-10 ",.01)
 ;;51138-0412-10
 ;;9002226.02101,"1195,51138-0412-10 ",.02)
 ;;51138-0412-10
 ;;9002226.02101,"1195,51138-0412-30 ",.01)
 ;;51138-0412-30
 ;;9002226.02101,"1195,51138-0412-30 ",.02)
 ;;51138-0412-30
 ;;9002226.02101,"1195,51138-0413-30 ",.01)
 ;;51138-0413-30
 ;;9002226.02101,"1195,51138-0413-30 ",.02)
 ;;51138-0413-30
 ;;9002226.02101,"1195,51138-0414-30 ",.01)
 ;;51138-0414-30
 ;;9002226.02101,"1195,51138-0414-30 ",.02)
 ;;51138-0414-30
 ;;9002226.02101,"1195,51138-0415-30 ",.01)
 ;;51138-0415-30
 ;;9002226.02101,"1195,51138-0415-30 ",.02)
 ;;51138-0415-30
 ;;9002226.02101,"1195,51138-0416-20 ",.01)
 ;;51138-0416-20
 ;;9002226.02101,"1195,51138-0416-20 ",.02)
 ;;51138-0416-20
 ;;9002226.02101,"1195,51138-0416-30 ",.01)
 ;;51138-0416-30
 ;;9002226.02101,"1195,51138-0416-30 ",.02)
 ;;51138-0416-30
 ;;9002226.02101,"1195,51138-0417-30 ",.01)
 ;;51138-0417-30
 ;;9002226.02101,"1195,51138-0417-30 ",.02)
 ;;51138-0417-30
 ;;9002226.02101,"1195,51138-0452-30 ",.01)
 ;;51138-0452-30
 ;;9002226.02101,"1195,51138-0452-30 ",.02)
 ;;51138-0452-30
 ;;9002226.02101,"1195,51138-0453-30 ",.01)
 ;;51138-0453-30
 ;;9002226.02101,"1195,51138-0453-30 ",.02)
 ;;51138-0453-30
 ;;9002226.02101,"1195,51138-0454-30 ",.01)
 ;;51138-0454-30
 ;;9002226.02101,"1195,51138-0454-30 ",.02)
 ;;51138-0454-30
 ;;9002226.02101,"1195,51138-0455-30 ",.01)
 ;;51138-0455-30
 ;;9002226.02101,"1195,51138-0455-30 ",.02)
 ;;51138-0455-30
 ;;9002226.02101,"1195,51138-0459-30 ",.01)
 ;;51138-0459-30
 ;;9002226.02101,"1195,51138-0459-30 ",.02)
 ;;51138-0459-30
 ;;9002226.02101,"1195,51138-0459-60 ",.01)
 ;;51138-0459-60
 ;;9002226.02101,"1195,51138-0459-60 ",.02)
 ;;51138-0459-60
 ;;9002226.02101,"1195,51138-0460-30 ",.01)
 ;;51138-0460-30
 ;;9002226.02101,"1195,51138-0460-30 ",.02)
 ;;51138-0460-30
 ;;9002226.02101,"1195,51138-0460-60 ",.01)
 ;;51138-0460-60
 ;;9002226.02101,"1195,51138-0460-60 ",.02)
 ;;51138-0460-60
 ;;9002226.02101,"1195,51138-0461-30 ",.01)
 ;;51138-0461-30
 ;;9002226.02101,"1195,51138-0461-30 ",.02)
 ;;51138-0461-30
 ;;9002226.02101,"1195,51138-0461-60 ",.01)
 ;;51138-0461-60
 ;;9002226.02101,"1195,51138-0461-60 ",.02)
 ;;51138-0461-60
 ;;9002226.02101,"1195,51138-0462-10 ",.01)
 ;;51138-0462-10
 ;;9002226.02101,"1195,51138-0462-10 ",.02)
 ;;51138-0462-10
 ;;9002226.02101,"1195,51138-0462-15 ",.01)
 ;;51138-0462-15
 ;;9002226.02101,"1195,51138-0462-15 ",.02)
 ;;51138-0462-15
 ;;9002226.02101,"1195,51138-0462-30 ",.01)
 ;;51138-0462-30
 ;;9002226.02101,"1195,51138-0462-30 ",.02)
 ;;51138-0462-30
 ;;9002226.02101,"1195,51138-0463-10 ",.01)
 ;;51138-0463-10
 ;;9002226.02101,"1195,51138-0463-10 ",.02)
 ;;51138-0463-10
 ;;9002226.02101,"1195,51138-0463-30 ",.01)
 ;;51138-0463-30
 ;;9002226.02101,"1195,51138-0463-30 ",.02)
 ;;51138-0463-30
 ;;9002226.02101,"1195,51138-0463-50 ",.01)
 ;;51138-0463-50
 ;;9002226.02101,"1195,51138-0463-50 ",.02)
 ;;51138-0463-50
 ;;9002226.02101,"1195,51138-0464-10 ",.01)
 ;;51138-0464-10
 ;;9002226.02101,"1195,51138-0464-10 ",.02)
 ;;51138-0464-10
 ;;9002226.02101,"1195,51138-0464-30 ",.01)
 ;;51138-0464-30
 ;;9002226.02101,"1195,51138-0464-30 ",.02)
 ;;51138-0464-30
 ;;9002226.02101,"1195,51138-0465-10 ",.01)
 ;;51138-0465-10
 ;;9002226.02101,"1195,51138-0465-10 ",.02)
 ;;51138-0465-10
 ;;9002226.02101,"1195,51138-0465-30 ",.01)
 ;;51138-0465-30
 ;;9002226.02101,"1195,51138-0465-30 ",.02)
 ;;51138-0465-30
 ;;9002226.02101,"1195,51138-0466-30 ",.01)
 ;;51138-0466-30
 ;;9002226.02101,"1195,51138-0466-30 ",.02)
 ;;51138-0466-30
 ;;9002226.02101,"1195,51138-0467-30 ",.01)
 ;;51138-0467-30
 ;;9002226.02101,"1195,51138-0467-30 ",.02)
 ;;51138-0467-30
 ;;9002226.02101,"1195,51138-0468-30 ",.01)
 ;;51138-0468-30
 ;;9002226.02101,"1195,51138-0468-30 ",.02)
 ;;51138-0468-30
 ;;9002226.02101,"1195,51138-0469-30 ",.01)
 ;;51138-0469-30
 ;;9002226.02101,"1195,51138-0469-30 ",.02)
 ;;51138-0469-30
 ;;9002226.02101,"1195,51138-0502-30 ",.01)
 ;;51138-0502-30
 ;;9002226.02101,"1195,51138-0502-30 ",.02)
 ;;51138-0502-30
 ;;9002226.02101,"1195,51138-0503-30 ",.01)
 ;;51138-0503-30
 ;;9002226.02101,"1195,51138-0503-30 ",.02)
 ;;51138-0503-30
 ;;9002226.02101,"1195,51138-0504-30 ",.01)
 ;;51138-0504-30
 ;;9002226.02101,"1195,51138-0504-30 ",.02)
 ;;51138-0504-30
 ;;9002226.02101,"1195,51138-0511-30 ",.01)
 ;;51138-0511-30
 ;;9002226.02101,"1195,51138-0511-30 ",.02)
 ;;51138-0511-30
 ;;9002226.02101,"1195,51138-0512-30 ",.01)
 ;;51138-0512-30
 ;;9002226.02101,"1195,51138-0512-30 ",.02)
 ;;51138-0512-30
 ;;9002226.02101,"1195,51138-0513-30 ",.01)
 ;;51138-0513-30
 ;;9002226.02101,"1195,51138-0513-30 ",.02)
 ;;51138-0513-30
 ;;9002226.02101,"1195,51138-0514-30 ",.01)
 ;;51138-0514-30
 ;;9002226.02101,"1195,51138-0514-30 ",.02)
 ;;51138-0514-30
 ;;9002226.02101,"1195,51138-0528-30 ",.01)
 ;;51138-0528-30
 ;;9002226.02101,"1195,51138-0528-30 ",.02)
 ;;51138-0528-30
 ;;9002226.02101,"1195,51138-0529-30 ",.01)
 ;;51138-0529-30
 ;;9002226.02101,"1195,51138-0529-30 ",.02)
 ;;51138-0529-30
 ;;9002226.02101,"1195,51138-0530-30 ",.01)
 ;;51138-0530-30
 ;;9002226.02101,"1195,51138-0530-30 ",.02)
 ;;51138-0530-30
 ;;9002226.02101,"1195,51138-0541-30 ",.01)
 ;;51138-0541-30
 ;;9002226.02101,"1195,51138-0541-30 ",.02)
 ;;51138-0541-30
 ;;9002226.02101,"1195,51138-0542-30 ",.01)
 ;;51138-0542-30
 ;;9002226.02101,"1195,51138-0542-30 ",.02)
 ;;51138-0542-30
 ;;9002226.02101,"1195,51138-0543-30 ",.01)
 ;;51138-0543-30
 ;;9002226.02101,"1195,51138-0543-30 ",.02)
 ;;51138-0543-30
 ;;9002226.02101,"1195,51138-0565-10 ",.01)
 ;;51138-0565-10
 ;;9002226.02101,"1195,51138-0565-10 ",.02)
 ;;51138-0565-10
 ;;9002226.02101,"1195,51138-0565-15 ",.01)
 ;;51138-0565-15
 ;;9002226.02101,"1195,51138-0565-15 ",.02)
 ;;51138-0565-15
 ;;9002226.02101,"1195,51138-0565-30 ",.01)
 ;;51138-0565-30
 ;;9002226.02101,"1195,51138-0565-30 ",.02)
 ;;51138-0565-30
 ;;9002226.02101,"1195,51138-0566-10 ",.01)
 ;;51138-0566-10
 ;;9002226.02101,"1195,51138-0566-10 ",.02)
 ;;51138-0566-10
 ;;9002226.02101,"1195,51138-0566-30 ",.01)
 ;;51138-0566-30
 ;;9002226.02101,"1195,51138-0566-30 ",.02)
 ;;51138-0566-30
 ;;9002226.02101,"1195,51138-0566-50 ",.01)
 ;;51138-0566-50
 ;;9002226.02101,"1195,51138-0566-50 ",.02)
 ;;51138-0566-50
 ;;9002226.02101,"1195,51138-0567-10 ",.01)
 ;;51138-0567-10
 ;;9002226.02101,"1195,51138-0567-10 ",.02)
 ;;51138-0567-10
 ;;9002226.02101,"1195,51138-0567-30 ",.01)
 ;;51138-0567-30
 ;;9002226.02101,"1195,51138-0567-30 ",.02)
 ;;51138-0567-30
 ;;9002226.02101,"1195,51138-0568-10 ",.01)
 ;;51138-0568-10
 ;;9002226.02101,"1195,51138-0568-10 ",.02)
 ;;51138-0568-10
 ;;9002226.02101,"1195,51138-0568-30 ",.01)
 ;;51138-0568-30
 ;;9002226.02101,"1195,51138-0568-30 ",.02)
 ;;51138-0568-30
 ;;9002226.02101,"1195,51138-0581-30 ",.01)
 ;;51138-0581-30
 ;;9002226.02101,"1195,51138-0581-30 ",.02)
 ;;51138-0581-30
 ;;9002226.02101,"1195,51138-0582-30 ",.01)
 ;;51138-0582-30
 ;;9002226.02101,"1195,51138-0582-30 ",.02)
 ;;51138-0582-30
 ;;9002226.02101,"1195,51138-0583-30 ",.01)
 ;;51138-0583-30
 ;;9002226.02101,"1195,51138-0583-30 ",.02)
 ;;51138-0583-30
 ;;9002226.02101,"1195,51138-0584-30 ",.01)
 ;;51138-0584-30
 ;;9002226.02101,"1195,51138-0584-30 ",.02)
 ;;51138-0584-30
 ;;9002226.02101,"1195,51285-0040-01 ",.01)
 ;;51285-0040-01
 ;;9002226.02101,"1195,51285-0040-01 ",.02)
 ;;51285-0040-01
 ;;9002226.02101,"1195,51285-0047-02 ",.01)
 ;;51285-0047-02
 ;;9002226.02101,"1195,51285-0047-02 ",.02)
 ;;51285-0047-02
 ;;9002226.02101,"1195,51285-0050-02 ",.01)
 ;;51285-0050-02
 ;;9002226.02101,"1195,51285-0050-02 ",.02)
 ;;51285-0050-02
 ;;9002226.02101,"1195,51285-0060-01 ",.01)
 ;;51285-0060-01
 ;;9002226.02101,"1195,51285-0060-01 ",.02)
 ;;51285-0060-01
 ;;9002226.02101,"1195,51285-0061-01 ",.01)
 ;;51285-0061-01
 ;;9002226.02101,"1195,51285-0061-01 ",.02)
 ;;51285-0061-01
 ;;9002226.02101,"1195,51991-0817-01 ",.01)
 ;;51991-0817-01
 ;;9002226.02101,"1195,51991-0817-01 ",.02)
 ;;51991-0817-01
 ;;9002226.02101,"1195,51991-0818-01 ",.01)
 ;;51991-0818-01
 ;;9002226.02101,"1195,51991-0818-01 ",.02)
 ;;51991-0818-01
 ;;9002226.02101,"1195,51991-0819-01 ",.01)
 ;;51991-0819-01
 ;;9002226.02101,"1195,51991-0819-01 ",.02)
 ;;51991-0819-01
 ;;9002226.02101,"1195,51991-0820-01 ",.01)
 ;;51991-0820-01
 ;;9002226.02101,"1195,51991-0820-01 ",.02)
 ;;51991-0820-01
 ;;9002226.02101,"1195,52244-0450-10 ",.01)
 ;;52244-0450-10
 ;;9002226.02101,"1195,52244-0450-10 ",.02)
 ;;52244-0450-10
 ;;9002226.02101,"1195,52343-0026-01 ",.01)
 ;;52343-0026-01
 ;;9002226.02101,"1195,52343-0026-01 ",.02)
 ;;52343-0026-01
