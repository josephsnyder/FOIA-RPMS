BGP71U27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1733,21695-0917-90 ",.01)
 ;;21695-0917-90
 ;;9002226.02101,"1733,21695-0917-90 ",.02)
 ;;21695-0917-90
 ;;9002226.02101,"1733,21695-0918-90 ",.01)
 ;;21695-0918-90
 ;;9002226.02101,"1733,21695-0918-90 ",.02)
 ;;21695-0918-90
 ;;9002226.02101,"1733,21695-0919-90 ",.01)
 ;;21695-0919-90
 ;;9002226.02101,"1733,21695-0919-90 ",.02)
 ;;21695-0919-90
 ;;9002226.02101,"1733,21695-0966-30 ",.01)
 ;;21695-0966-30
 ;;9002226.02101,"1733,21695-0966-30 ",.02)
 ;;21695-0966-30
 ;;9002226.02101,"1733,21695-0989-30 ",.01)
 ;;21695-0989-30
 ;;9002226.02101,"1733,21695-0989-30 ",.02)
 ;;21695-0989-30
 ;;9002226.02101,"1733,23155-0060-01 ",.01)
 ;;23155-0060-01
 ;;9002226.02101,"1733,23155-0060-01 ",.02)
 ;;23155-0060-01
 ;;9002226.02101,"1733,23155-0061-01 ",.01)
 ;;23155-0061-01
 ;;9002226.02101,"1733,23155-0061-01 ",.02)
 ;;23155-0061-01
 ;;9002226.02101,"1733,24658-0240-10 ",.01)
 ;;24658-0240-10
 ;;9002226.02101,"1733,24658-0240-10 ",.02)
 ;;24658-0240-10
 ;;9002226.02101,"1733,24658-0240-90 ",.01)
 ;;24658-0240-90
 ;;9002226.02101,"1733,24658-0240-90 ",.02)
 ;;24658-0240-90
 ;;9002226.02101,"1733,24658-0241-10 ",.01)
 ;;24658-0241-10
 ;;9002226.02101,"1733,24658-0241-10 ",.02)
 ;;24658-0241-10
 ;;9002226.02101,"1733,24658-0241-30 ",.01)
 ;;24658-0241-30
 ;;9002226.02101,"1733,24658-0241-30 ",.02)
 ;;24658-0241-30
 ;;9002226.02101,"1733,24658-0241-45 ",.01)
 ;;24658-0241-45
 ;;9002226.02101,"1733,24658-0241-45 ",.02)
 ;;24658-0241-45
 ;;9002226.02101,"1733,24658-0241-90 ",.01)
 ;;24658-0241-90
 ;;9002226.02101,"1733,24658-0241-90 ",.02)
 ;;24658-0241-90
 ;;9002226.02101,"1733,24658-0242-10 ",.01)
 ;;24658-0242-10
 ;;9002226.02101,"1733,24658-0242-10 ",.02)
 ;;24658-0242-10
 ;;9002226.02101,"1733,24658-0242-15 ",.01)
 ;;24658-0242-15
 ;;9002226.02101,"1733,24658-0242-15 ",.02)
 ;;24658-0242-15
 ;;9002226.02101,"1733,24658-0242-18 ",.01)
 ;;24658-0242-18
 ;;9002226.02101,"1733,24658-0242-18 ",.02)
 ;;24658-0242-18
 ;;9002226.02101,"1733,24658-0242-30 ",.01)
 ;;24658-0242-30
 ;;9002226.02101,"1733,24658-0242-30 ",.02)
 ;;24658-0242-30
 ;;9002226.02101,"1733,24658-0242-45 ",.01)
 ;;24658-0242-45
 ;;9002226.02101,"1733,24658-0242-45 ",.02)
 ;;24658-0242-45
 ;;9002226.02101,"1733,24658-0242-90 ",.01)
 ;;24658-0242-90
 ;;9002226.02101,"1733,24658-0242-90 ",.02)
 ;;24658-0242-90
 ;;9002226.02101,"1733,24658-0243-10 ",.01)
 ;;24658-0243-10
 ;;9002226.02101,"1733,24658-0243-10 ",.02)
 ;;24658-0243-10
 ;;9002226.02101,"1733,24658-0243-15 ",.01)
 ;;24658-0243-15
 ;;9002226.02101,"1733,24658-0243-15 ",.02)
 ;;24658-0243-15
 ;;9002226.02101,"1733,24658-0243-18 ",.01)
 ;;24658-0243-18
 ;;9002226.02101,"1733,24658-0243-18 ",.02)
 ;;24658-0243-18
 ;;9002226.02101,"1733,24658-0243-30 ",.01)
 ;;24658-0243-30
 ;;9002226.02101,"1733,24658-0243-30 ",.02)
 ;;24658-0243-30
 ;;9002226.02101,"1733,24658-0243-45 ",.01)
 ;;24658-0243-45
 ;;9002226.02101,"1733,24658-0243-45 ",.02)
 ;;24658-0243-45
 ;;9002226.02101,"1733,24658-0243-90 ",.01)
 ;;24658-0243-90
 ;;9002226.02101,"1733,24658-0243-90 ",.02)
 ;;24658-0243-90
 ;;9002226.02101,"1733,24658-0244-01 ",.01)
 ;;24658-0244-01
 ;;9002226.02101,"1733,24658-0244-01 ",.02)
 ;;24658-0244-01
 ;;9002226.02101,"1733,24658-0244-10 ",.01)
 ;;24658-0244-10
 ;;9002226.02101,"1733,24658-0244-10 ",.02)
 ;;24658-0244-10
 ;;9002226.02101,"1733,24658-0245-10 ",.01)
 ;;24658-0245-10
 ;;9002226.02101,"1733,24658-0245-10 ",.02)
 ;;24658-0245-10
 ;;9002226.02101,"1733,24658-0245-15 ",.01)
 ;;24658-0245-15
 ;;9002226.02101,"1733,24658-0245-15 ",.02)
 ;;24658-0245-15
 ;;9002226.02101,"1733,24658-0245-18 ",.01)
 ;;24658-0245-18
 ;;9002226.02101,"1733,24658-0245-18 ",.02)
 ;;24658-0245-18
 ;;9002226.02101,"1733,24658-0245-30 ",.01)
 ;;24658-0245-30
 ;;9002226.02101,"1733,24658-0245-30 ",.02)
 ;;24658-0245-30
 ;;9002226.02101,"1733,24658-0245-45 ",.01)
 ;;24658-0245-45
 ;;9002226.02101,"1733,24658-0245-45 ",.02)
 ;;24658-0245-45
 ;;9002226.02101,"1733,24658-0245-60 ",.01)
 ;;24658-0245-60
 ;;9002226.02101,"1733,24658-0245-60 ",.02)
 ;;24658-0245-60
 ;;9002226.02101,"1733,24658-0245-90 ",.01)
 ;;24658-0245-90
 ;;9002226.02101,"1733,24658-0245-90 ",.02)
 ;;24658-0245-90
 ;;9002226.02101,"1733,30698-0449-01 ",.01)
 ;;30698-0449-01
 ;;9002226.02101,"1733,30698-0449-01 ",.02)
 ;;30698-0449-01
 ;;9002226.02101,"1733,30698-0450-01 ",.01)
 ;;30698-0450-01
 ;;9002226.02101,"1733,30698-0450-01 ",.02)
 ;;30698-0450-01
 ;;9002226.02101,"1733,30698-0452-01 ",.01)
 ;;30698-0452-01
 ;;9002226.02101,"1733,30698-0452-01 ",.02)
 ;;30698-0452-01
 ;;9002226.02101,"1733,30698-0453-01 ",.01)
 ;;30698-0453-01
 ;;9002226.02101,"1733,30698-0453-01 ",.02)
 ;;30698-0453-01
 ;;9002226.02101,"1733,30698-0454-01 ",.01)
 ;;30698-0454-01
 ;;9002226.02101,"1733,30698-0454-01 ",.02)
 ;;30698-0454-01
 ;;9002226.02101,"1733,31722-0200-10 ",.01)
 ;;31722-0200-10
 ;;9002226.02101,"1733,31722-0200-10 ",.02)
 ;;31722-0200-10
 ;;9002226.02101,"1733,31722-0200-90 ",.01)
 ;;31722-0200-90
 ;;9002226.02101,"1733,31722-0200-90 ",.02)
 ;;31722-0200-90
 ;;9002226.02101,"1733,31722-0201-10 ",.01)
 ;;31722-0201-10
 ;;9002226.02101,"1733,31722-0201-10 ",.02)
 ;;31722-0201-10
 ;;9002226.02101,"1733,31722-0201-90 ",.01)
 ;;31722-0201-90
 ;;9002226.02101,"1733,31722-0201-90 ",.02)
 ;;31722-0201-90
 ;;9002226.02101,"1733,31722-0202-10 ",.01)
 ;;31722-0202-10
 ;;9002226.02101,"1733,31722-0202-10 ",.02)
 ;;31722-0202-10
 ;;9002226.02101,"1733,31722-0202-90 ",.01)
 ;;31722-0202-90
 ;;9002226.02101,"1733,31722-0202-90 ",.02)
 ;;31722-0202-90
 ;;9002226.02101,"1733,31722-0267-90 ",.01)
 ;;31722-0267-90
 ;;9002226.02101,"1733,31722-0267-90 ",.02)
 ;;31722-0267-90
 ;;9002226.02101,"1733,31722-0268-90 ",.01)
 ;;31722-0268-90
 ;;9002226.02101,"1733,31722-0268-90 ",.02)
 ;;31722-0268-90
 ;;9002226.02101,"1733,31722-0269-90 ",.01)
 ;;31722-0269-90
 ;;9002226.02101,"1733,31722-0269-90 ",.02)
 ;;31722-0269-90
 ;;9002226.02101,"1733,31722-0270-90 ",.01)
 ;;31722-0270-90
 ;;9002226.02101,"1733,31722-0270-90 ",.02)
 ;;31722-0270-90
 ;;9002226.02101,"1733,31722-0271-01 ",.01)
 ;;31722-0271-01
 ;;9002226.02101,"1733,31722-0271-01 ",.02)
 ;;31722-0271-01
 ;;9002226.02101,"1733,31722-0272-01 ",.01)
 ;;31722-0272-01
 ;;9002226.02101,"1733,31722-0272-01 ",.02)
 ;;31722-0272-01
 ;;9002226.02101,"1733,31722-0272-05 ",.01)
 ;;31722-0272-05
 ;;9002226.02101,"1733,31722-0272-05 ",.02)
 ;;31722-0272-05
 ;;9002226.02101,"1733,31722-0272-10 ",.01)
 ;;31722-0272-10
 ;;9002226.02101,"1733,31722-0272-10 ",.02)
 ;;31722-0272-10
 ;;9002226.02101,"1733,31722-0273-01 ",.01)
 ;;31722-0273-01
 ;;9002226.02101,"1733,31722-0273-01 ",.02)
 ;;31722-0273-01
 ;;9002226.02101,"1733,31722-0273-05 ",.01)
 ;;31722-0273-05
 ;;9002226.02101,"1733,31722-0273-05 ",.02)
 ;;31722-0273-05
 ;;9002226.02101,"1733,31722-0273-10 ",.01)
 ;;31722-0273-10
 ;;9002226.02101,"1733,31722-0273-10 ",.02)
 ;;31722-0273-10
 ;;9002226.02101,"1733,31722-0274-01 ",.01)
 ;;31722-0274-01
 ;;9002226.02101,"1733,31722-0274-01 ",.02)
 ;;31722-0274-01
 ;;9002226.02101,"1733,31722-0274-05 ",.01)
 ;;31722-0274-05
 ;;9002226.02101,"1733,31722-0274-05 ",.02)
 ;;31722-0274-05
 ;;9002226.02101,"1733,31722-0274-10 ",.01)
 ;;31722-0274-10
 ;;9002226.02101,"1733,31722-0274-10 ",.02)
 ;;31722-0274-10
 ;;9002226.02101,"1733,31722-0374-90 ",.01)
 ;;31722-0374-90
 ;;9002226.02101,"1733,31722-0374-90 ",.02)
 ;;31722-0374-90
 ;;9002226.02101,"1733,31722-0375-90 ",.01)
 ;;31722-0375-90
 ;;9002226.02101,"1733,31722-0375-90 ",.02)
 ;;31722-0375-90
 ;;9002226.02101,"1733,31722-0376-90 ",.01)
 ;;31722-0376-90
 ;;9002226.02101,"1733,31722-0376-90 ",.02)
 ;;31722-0376-90
 ;;9002226.02101,"1733,31722-0417-01 ",.01)
 ;;31722-0417-01
 ;;9002226.02101,"1733,31722-0417-01 ",.02)
 ;;31722-0417-01
 ;;9002226.02101,"1733,31722-0417-10 ",.01)
 ;;31722-0417-10
 ;;9002226.02101,"1733,31722-0417-10 ",.02)
 ;;31722-0417-10
 ;;9002226.02101,"1733,31722-0418-01 ",.01)
 ;;31722-0418-01
 ;;9002226.02101,"1733,31722-0418-01 ",.02)
 ;;31722-0418-01
 ;;9002226.02101,"1733,31722-0418-10 ",.01)
 ;;31722-0418-10
 ;;9002226.02101,"1733,31722-0418-10 ",.02)
 ;;31722-0418-10
 ;;9002226.02101,"1733,31722-0419-01 ",.01)
 ;;31722-0419-01
 ;;9002226.02101,"1733,31722-0419-01 ",.02)
 ;;31722-0419-01
 ;;9002226.02101,"1733,31722-0419-10 ",.01)
 ;;31722-0419-10
 ;;9002226.02101,"1733,31722-0419-10 ",.02)
 ;;31722-0419-10
 ;;9002226.02101,"1733,31722-0420-01 ",.01)
 ;;31722-0420-01
 ;;9002226.02101,"1733,31722-0420-01 ",.02)
 ;;31722-0420-01
 ;;9002226.02101,"1733,31722-0420-10 ",.01)
 ;;31722-0420-10
 ;;9002226.02101,"1733,31722-0420-10 ",.02)
 ;;31722-0420-10
 ;;9002226.02101,"1733,31722-0421-01 ",.01)
 ;;31722-0421-01
 ;;9002226.02101,"1733,31722-0421-01 ",.02)
 ;;31722-0421-01
 ;;9002226.02101,"1733,31722-0421-10 ",.01)
 ;;31722-0421-10
 ;;9002226.02101,"1733,31722-0421-10 ",.02)
 ;;31722-0421-10
 ;;9002226.02101,"1733,31722-0422-01 ",.01)
 ;;31722-0422-01
 ;;9002226.02101,"1733,31722-0422-01 ",.02)
 ;;31722-0422-01
 ;;9002226.02101,"1733,31722-0422-10 ",.01)
 ;;31722-0422-10
 ;;9002226.02101,"1733,31722-0422-10 ",.02)
 ;;31722-0422-10
 ;;9002226.02101,"1733,31722-0700-05 ",.01)
 ;;31722-0700-05
 ;;9002226.02101,"1733,31722-0700-05 ",.02)
 ;;31722-0700-05
 ;;9002226.02101,"1733,31722-0700-10 ",.01)
 ;;31722-0700-10
 ;;9002226.02101,"1733,31722-0700-10 ",.02)
 ;;31722-0700-10
 ;;9002226.02101,"1733,31722-0700-90 ",.01)
 ;;31722-0700-90
 ;;9002226.02101,"1733,31722-0700-90 ",.02)
 ;;31722-0700-90
 ;;9002226.02101,"1733,31722-0701-10 ",.01)
 ;;31722-0701-10
 ;;9002226.02101,"1733,31722-0701-10 ",.02)
 ;;31722-0701-10
 ;;9002226.02101,"1733,31722-0701-30 ",.01)
 ;;31722-0701-30
 ;;9002226.02101,"1733,31722-0701-30 ",.02)
 ;;31722-0701-30
 ;;9002226.02101,"1733,31722-0701-90 ",.01)
 ;;31722-0701-90
 ;;9002226.02101,"1733,31722-0701-90 ",.02)
 ;;31722-0701-90
 ;;9002226.02101,"1733,31722-0702-10 ",.01)
 ;;31722-0702-10
 ;;9002226.02101,"1733,31722-0702-10 ",.02)
 ;;31722-0702-10
 ;;9002226.02101,"1733,31722-0702-30 ",.01)
 ;;31722-0702-30
 ;;9002226.02101,"1733,31722-0702-30 ",.02)
 ;;31722-0702-30
 ;;9002226.02101,"1733,31722-0702-90 ",.01)
 ;;31722-0702-90
 ;;9002226.02101,"1733,31722-0702-90 ",.02)
 ;;31722-0702-90
 ;;9002226.02101,"1733,31722-0729-30 ",.01)
 ;;31722-0729-30
 ;;9002226.02101,"1733,31722-0729-30 ",.02)
 ;;31722-0729-30
 ;;9002226.02101,"1733,31722-0729-90 ",.01)
 ;;31722-0729-90
 ;;9002226.02101,"1733,31722-0729-90 ",.02)
 ;;31722-0729-90
 ;;9002226.02101,"1733,31722-0730-30 ",.01)
 ;;31722-0730-30
 ;;9002226.02101,"1733,31722-0730-30 ",.02)
 ;;31722-0730-30
 ;;9002226.02101,"1733,31722-0730-90 ",.01)
 ;;31722-0730-90
 ;;9002226.02101,"1733,31722-0730-90 ",.02)
 ;;31722-0730-90
 ;;9002226.02101,"1733,31722-0731-30 ",.01)
 ;;31722-0731-30
 ;;9002226.02101,"1733,31722-0731-30 ",.02)
 ;;31722-0731-30
 ;;9002226.02101,"1733,31722-0731-90 ",.01)
 ;;31722-0731-90
 ;;9002226.02101,"1733,31722-0731-90 ",.02)
 ;;31722-0731-90
 ;;9002226.02101,"1733,31722-0745-30 ",.01)
 ;;31722-0745-30
 ;;9002226.02101,"1733,31722-0745-30 ",.02)
 ;;31722-0745-30
 ;;9002226.02101,"1733,31722-0746-90 ",.01)
 ;;31722-0746-90
 ;;9002226.02101,"1733,31722-0746-90 ",.02)
 ;;31722-0746-90
 ;;9002226.02101,"1733,31722-0747-90 ",.01)
 ;;31722-0747-90
 ;;9002226.02101,"1733,31722-0747-90 ",.02)
 ;;31722-0747-90
 ;;9002226.02101,"1733,31722-0748-90 ",.01)
 ;;31722-0748-90
 ;;9002226.02101,"1733,31722-0748-90 ",.02)
 ;;31722-0748-90
 ;;9002226.02101,"1733,33261-0109-30 ",.01)
 ;;33261-0109-30
 ;;9002226.02101,"1733,33261-0109-30 ",.02)
 ;;33261-0109-30
 ;;9002226.02101,"1733,33261-0109-60 ",.01)
 ;;33261-0109-60
