BGP61I6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1222,16590-0940-60 ",.01)
 ;;16590-0940-60
 ;;9002226.02101,"1222,16590-0940-60 ",.02)
 ;;16590-0940-60
 ;;9002226.02101,"1222,16729-0001-01 ",.01)
 ;;16729-0001-01
 ;;9002226.02101,"1222,16729-0001-01 ",.02)
 ;;16729-0001-01
 ;;9002226.02101,"1222,16729-0002-01 ",.01)
 ;;16729-0002-01
 ;;9002226.02101,"1222,16729-0002-01 ",.02)
 ;;16729-0002-01
 ;;9002226.02101,"1222,16729-0003-01 ",.01)
 ;;16729-0003-01
 ;;9002226.02101,"1222,16729-0003-01 ",.02)
 ;;16729-0003-01
 ;;9002226.02101,"1222,16729-0139-00 ",.01)
 ;;16729-0139-00
 ;;9002226.02101,"1222,16729-0139-00 ",.02)
 ;;16729-0139-00
 ;;9002226.02101,"1222,16729-0139-16 ",.01)
 ;;16729-0139-16
 ;;9002226.02101,"1222,16729-0139-16 ",.02)
 ;;16729-0139-16
 ;;9002226.02101,"1222,16729-0140-00 ",.01)
 ;;16729-0140-00
 ;;9002226.02101,"1222,16729-0140-00 ",.02)
 ;;16729-0140-00
 ;;9002226.02101,"1222,16729-0140-16 ",.01)
 ;;16729-0140-16
 ;;9002226.02101,"1222,16729-0140-16 ",.02)
 ;;16729-0140-16
 ;;9002226.02101,"1222,21695-0467-30 ",.01)
 ;;21695-0467-30
 ;;9002226.02101,"1222,21695-0467-30 ",.02)
 ;;21695-0467-30
 ;;9002226.02101,"1222,21695-0467-60 ",.01)
 ;;21695-0467-60
 ;;9002226.02101,"1222,21695-0467-60 ",.02)
 ;;21695-0467-60
 ;;9002226.02101,"1222,21695-0468-30 ",.01)
 ;;21695-0468-30
 ;;9002226.02101,"1222,21695-0468-30 ",.02)
 ;;21695-0468-30
 ;;9002226.02101,"1222,21695-0468-60 ",.01)
 ;;21695-0468-60
 ;;9002226.02101,"1222,21695-0468-60 ",.02)
 ;;21695-0468-60
 ;;9002226.02101,"1222,21695-0468-72 ",.01)
 ;;21695-0468-72
 ;;9002226.02101,"1222,21695-0468-72 ",.02)
 ;;21695-0468-72
 ;;9002226.02101,"1222,21695-0468-78 ",.01)
 ;;21695-0468-78
 ;;9002226.02101,"1222,21695-0468-78 ",.02)
 ;;21695-0468-78
 ;;9002226.02101,"1222,21695-0469-30 ",.01)
 ;;21695-0469-30
 ;;9002226.02101,"1222,21695-0469-30 ",.02)
 ;;21695-0469-30
 ;;9002226.02101,"1222,21695-0469-60 ",.01)
 ;;21695-0469-60
 ;;9002226.02101,"1222,21695-0469-60 ",.02)
 ;;21695-0469-60
 ;;9002226.02101,"1222,21695-0469-78 ",.01)
 ;;21695-0469-78
 ;;9002226.02101,"1222,21695-0469-78 ",.02)
 ;;21695-0469-78
 ;;9002226.02101,"1222,21695-0469-90 ",.01)
 ;;21695-0469-90
 ;;9002226.02101,"1222,21695-0469-90 ",.02)
 ;;21695-0469-90
 ;;9002226.02101,"1222,21695-0470-00 ",.01)
 ;;21695-0470-00
 ;;9002226.02101,"1222,21695-0470-00 ",.02)
 ;;21695-0470-00
 ;;9002226.02101,"1222,21695-0470-30 ",.01)
 ;;21695-0470-30
 ;;9002226.02101,"1222,21695-0470-30 ",.02)
 ;;21695-0470-30
 ;;9002226.02101,"1222,21695-0470-60 ",.01)
 ;;21695-0470-60
 ;;9002226.02101,"1222,21695-0470-60 ",.02)
 ;;21695-0470-60
 ;;9002226.02101,"1222,21695-0470-78 ",.01)
 ;;21695-0470-78
 ;;9002226.02101,"1222,21695-0470-78 ",.02)
 ;;21695-0470-78
 ;;9002226.02101,"1222,21695-0470-90 ",.01)
 ;;21695-0470-90
 ;;9002226.02101,"1222,21695-0470-90 ",.02)
 ;;21695-0470-90
 ;;9002226.02101,"1222,21695-0568-30 ",.01)
 ;;21695-0568-30
 ;;9002226.02101,"1222,21695-0568-30 ",.02)
 ;;21695-0568-30
 ;;9002226.02101,"1222,21695-0568-60 ",.01)
 ;;21695-0568-60
 ;;9002226.02101,"1222,21695-0568-60 ",.02)
 ;;21695-0568-60
 ;;9002226.02101,"1222,21695-0746-30 ",.01)
 ;;21695-0746-30
 ;;9002226.02101,"1222,21695-0746-30 ",.02)
 ;;21695-0746-30
 ;;9002226.02101,"1222,21695-0746-90 ",.01)
 ;;21695-0746-90
 ;;9002226.02101,"1222,21695-0746-90 ",.02)
 ;;21695-0746-90
 ;;9002226.02101,"1222,21695-0747-30 ",.01)
 ;;21695-0747-30
 ;;9002226.02101,"1222,21695-0747-30 ",.02)
 ;;21695-0747-30
 ;;9002226.02101,"1222,21695-0747-60 ",.01)
 ;;21695-0747-60
 ;;9002226.02101,"1222,21695-0747-60 ",.02)
 ;;21695-0747-60
 ;;9002226.02101,"1222,21695-0747-90 ",.01)
 ;;21695-0747-90
 ;;9002226.02101,"1222,21695-0747-90 ",.02)
 ;;21695-0747-90
 ;;9002226.02101,"1222,21695-0894-00 ",.01)
 ;;21695-0894-00
 ;;9002226.02101,"1222,21695-0894-00 ",.02)
 ;;21695-0894-00
 ;;9002226.02101,"1222,21695-0967-30 ",.01)
 ;;21695-0967-30
 ;;9002226.02101,"1222,21695-0967-30 ",.02)
 ;;21695-0967-30
 ;;9002226.02101,"1222,21695-0993-72 ",.01)
 ;;21695-0993-72
 ;;9002226.02101,"1222,21695-0993-72 ",.02)
 ;;21695-0993-72
 ;;9002226.02101,"1222,23155-0056-01 ",.01)
 ;;23155-0056-01
 ;;9002226.02101,"1222,23155-0056-01 ",.02)
 ;;23155-0056-01
 ;;9002226.02101,"1222,23155-0057-01 ",.01)
 ;;23155-0057-01
 ;;9002226.02101,"1222,23155-0057-01 ",.02)
 ;;23155-0057-01
 ;;9002226.02101,"1222,23155-0058-01 ",.01)
 ;;23155-0058-01
 ;;9002226.02101,"1222,23155-0058-01 ",.02)
 ;;23155-0058-01
 ;;9002226.02101,"1222,23155-0058-10 ",.01)
 ;;23155-0058-10
 ;;9002226.02101,"1222,23155-0058-10 ",.02)
 ;;23155-0058-10
 ;;9002226.02101,"1222,23155-0115-01 ",.01)
 ;;23155-0115-01
 ;;9002226.02101,"1222,23155-0115-01 ",.02)
 ;;23155-0115-01
 ;;9002226.02101,"1222,23155-0116-01 ",.01)
 ;;23155-0116-01
 ;;9002226.02101,"1222,23155-0116-01 ",.02)
 ;;23155-0116-01
 ;;9002226.02101,"1222,23155-0117-01 ",.01)
 ;;23155-0117-01
 ;;9002226.02101,"1222,23155-0117-01 ",.02)
 ;;23155-0117-01
 ;;9002226.02101,"1222,23155-0233-01 ",.01)
 ;;23155-0233-01
 ;;9002226.02101,"1222,23155-0233-01 ",.02)
 ;;23155-0233-01
 ;;9002226.02101,"1222,23155-0233-05 ",.01)
 ;;23155-0233-05
 ;;9002226.02101,"1222,23155-0233-05 ",.02)
 ;;23155-0233-05
 ;;9002226.02101,"1222,23155-0234-01 ",.01)
 ;;23155-0234-01
 ;;9002226.02101,"1222,23155-0234-01 ",.02)
 ;;23155-0234-01
 ;;9002226.02101,"1222,23155-0234-05 ",.01)
 ;;23155-0234-05
 ;;9002226.02101,"1222,23155-0234-05 ",.02)
 ;;23155-0234-05
 ;;9002226.02101,"1222,23155-0235-01 ",.01)
 ;;23155-0235-01
 ;;9002226.02101,"1222,23155-0235-01 ",.02)
 ;;23155-0235-01
 ;;9002226.02101,"1222,23155-0235-05 ",.01)
 ;;23155-0235-05
 ;;9002226.02101,"1222,23155-0235-05 ",.02)
 ;;23155-0235-05
 ;;9002226.02101,"1222,33261-0209-30 ",.01)
 ;;33261-0209-30
 ;;9002226.02101,"1222,33261-0209-30 ",.02)
 ;;33261-0209-30
 ;;9002226.02101,"1222,33261-0209-60 ",.01)
 ;;33261-0209-60
 ;;9002226.02101,"1222,33261-0209-60 ",.02)
 ;;33261-0209-60
 ;;9002226.02101,"1222,33261-0209-90 ",.01)
 ;;33261-0209-90
 ;;9002226.02101,"1222,33261-0209-90 ",.02)
 ;;33261-0209-90
 ;;9002226.02101,"1222,33261-0397-00 ",.01)
 ;;33261-0397-00
 ;;9002226.02101,"1222,33261-0397-00 ",.02)
 ;;33261-0397-00
 ;;9002226.02101,"1222,33261-0397-30 ",.01)
 ;;33261-0397-30
 ;;9002226.02101,"1222,33261-0397-30 ",.02)
 ;;33261-0397-30
 ;;9002226.02101,"1222,33261-0397-60 ",.01)
 ;;33261-0397-60
 ;;9002226.02101,"1222,33261-0397-60 ",.02)
 ;;33261-0397-60
 ;;9002226.02101,"1222,33261-0397-90 ",.01)
 ;;33261-0397-90
 ;;9002226.02101,"1222,33261-0397-90 ",.02)
 ;;33261-0397-90
 ;;9002226.02101,"1222,33261-0411-00 ",.01)
 ;;33261-0411-00
 ;;9002226.02101,"1222,33261-0411-00 ",.02)
 ;;33261-0411-00
 ;;9002226.02101,"1222,33261-0411-30 ",.01)
 ;;33261-0411-30
 ;;9002226.02101,"1222,33261-0411-30 ",.02)
 ;;33261-0411-30
 ;;9002226.02101,"1222,33261-0411-60 ",.01)
 ;;33261-0411-60
 ;;9002226.02101,"1222,33261-0411-60 ",.02)
 ;;33261-0411-60
 ;;9002226.02101,"1222,33261-0411-90 ",.01)
 ;;33261-0411-90
 ;;9002226.02101,"1222,33261-0411-90 ",.02)
 ;;33261-0411-90
 ;;9002226.02101,"1222,33261-0433-00 ",.01)
 ;;33261-0433-00
 ;;9002226.02101,"1222,33261-0433-00 ",.02)
 ;;33261-0433-00
 ;;9002226.02101,"1222,33261-0433-30 ",.01)
 ;;33261-0433-30
 ;;9002226.02101,"1222,33261-0433-30 ",.02)
 ;;33261-0433-30
 ;;9002226.02101,"1222,33261-0433-60 ",.01)
 ;;33261-0433-60
 ;;9002226.02101,"1222,33261-0433-60 ",.02)
 ;;33261-0433-60
 ;;9002226.02101,"1222,33261-0433-90 ",.01)
 ;;33261-0433-90
 ;;9002226.02101,"1222,33261-0433-90 ",.02)
 ;;33261-0433-90
 ;;9002226.02101,"1222,33261-0813-30 ",.01)
 ;;33261-0813-30
 ;;9002226.02101,"1222,33261-0813-30 ",.02)
 ;;33261-0813-30
 ;;9002226.02101,"1222,33261-0813-60 ",.01)
 ;;33261-0813-60
 ;;9002226.02101,"1222,33261-0813-60 ",.02)
 ;;33261-0813-60
 ;;9002226.02101,"1222,33261-0813-90 ",.01)
 ;;33261-0813-90
 ;;9002226.02101,"1222,33261-0813-90 ",.02)
 ;;33261-0813-90
 ;;9002226.02101,"1222,33261-0821-30 ",.01)
 ;;33261-0821-30
 ;;9002226.02101,"1222,33261-0821-30 ",.02)
 ;;33261-0821-30
 ;;9002226.02101,"1222,33261-0821-60 ",.01)
 ;;33261-0821-60
 ;;9002226.02101,"1222,33261-0821-60 ",.02)
 ;;33261-0821-60
 ;;9002226.02101,"1222,33261-0821-90 ",.01)
 ;;33261-0821-90
 ;;9002226.02101,"1222,33261-0821-90 ",.02)
 ;;33261-0821-90
 ;;9002226.02101,"1222,33261-0830-30 ",.01)
 ;;33261-0830-30
 ;;9002226.02101,"1222,33261-0830-30 ",.02)
 ;;33261-0830-30
 ;;9002226.02101,"1222,33261-0830-60 ",.01)
 ;;33261-0830-60
 ;;9002226.02101,"1222,33261-0830-60 ",.02)
 ;;33261-0830-60
 ;;9002226.02101,"1222,33261-0830-90 ",.01)
 ;;33261-0830-90
 ;;9002226.02101,"1222,33261-0830-90 ",.02)
 ;;33261-0830-90
 ;;9002226.02101,"1222,33261-0831-30 ",.01)
 ;;33261-0831-30
 ;;9002226.02101,"1222,33261-0831-30 ",.02)
 ;;33261-0831-30
 ;;9002226.02101,"1222,33261-0831-60 ",.01)
 ;;33261-0831-60
 ;;9002226.02101,"1222,33261-0831-60 ",.02)
 ;;33261-0831-60
 ;;9002226.02101,"1222,33261-0831-90 ",.01)
 ;;33261-0831-90
 ;;9002226.02101,"1222,33261-0831-90 ",.02)
 ;;33261-0831-90
 ;;9002226.02101,"1222,33261-0835-30 ",.01)
 ;;33261-0835-30
 ;;9002226.02101,"1222,33261-0835-30 ",.02)
 ;;33261-0835-30
 ;;9002226.02101,"1222,33261-0835-60 ",.01)
 ;;33261-0835-60
 ;;9002226.02101,"1222,33261-0835-60 ",.02)
 ;;33261-0835-60
 ;;9002226.02101,"1222,33261-0835-90 ",.01)
 ;;33261-0835-90
 ;;9002226.02101,"1222,33261-0835-90 ",.02)
 ;;33261-0835-90
 ;;9002226.02101,"1222,33261-0892-00 ",.01)
 ;;33261-0892-00
 ;;9002226.02101,"1222,33261-0892-00 ",.02)
 ;;33261-0892-00
 ;;9002226.02101,"1222,33261-0892-30 ",.01)
 ;;33261-0892-30
 ;;9002226.02101,"1222,33261-0892-30 ",.02)
 ;;33261-0892-30
 ;;9002226.02101,"1222,33261-0892-60 ",.01)
 ;;33261-0892-60
 ;;9002226.02101,"1222,33261-0892-60 ",.02)
 ;;33261-0892-60
 ;;9002226.02101,"1222,33261-0892-90 ",.01)
 ;;33261-0892-90
 ;;9002226.02101,"1222,33261-0892-90 ",.02)
 ;;33261-0892-90
 ;;9002226.02101,"1222,33261-0961-30 ",.01)
 ;;33261-0961-30
 ;;9002226.02101,"1222,33261-0961-30 ",.02)
 ;;33261-0961-30
 ;;9002226.02101,"1222,33261-0961-60 ",.01)
 ;;33261-0961-60
 ;;9002226.02101,"1222,33261-0961-60 ",.02)
 ;;33261-0961-60
 ;;9002226.02101,"1222,33261-0961-90 ",.01)
 ;;33261-0961-90
 ;;9002226.02101,"1222,33261-0961-90 ",.02)
 ;;33261-0961-90
 ;;9002226.02101,"1222,33358-0157-30 ",.01)
 ;;33358-0157-30
 ;;9002226.02101,"1222,33358-0157-30 ",.02)
 ;;33358-0157-30
 ;;9002226.02101,"1222,33358-0157-60 ",.01)
 ;;33358-0157-60
 ;;9002226.02101,"1222,33358-0157-60 ",.02)
 ;;33358-0157-60
 ;;9002226.02101,"1222,33358-0158-00 ",.01)
 ;;33358-0158-00
 ;;9002226.02101,"1222,33358-0158-00 ",.02)
 ;;33358-0158-00
 ;;9002226.02101,"1222,33358-0158-30 ",.01)
 ;;33358-0158-30
 ;;9002226.02101,"1222,33358-0158-30 ",.02)
 ;;33358-0158-30
 ;;9002226.02101,"1222,33358-0158-60 ",.01)
 ;;33358-0158-60
 ;;9002226.02101,"1222,33358-0158-60 ",.02)
 ;;33358-0158-60
 ;;9002226.02101,"1222,33358-0160-30 ",.01)
 ;;33358-0160-30
 ;;9002226.02101,"1222,33358-0160-30 ",.02)
 ;;33358-0160-30
 ;;9002226.02101,"1222,33358-0160-60 ",.01)
 ;;33358-0160-60
 ;;9002226.02101,"1222,33358-0160-60 ",.02)
 ;;33358-0160-60
 ;;9002226.02101,"1222,33358-0161-01 ",.01)
 ;;33358-0161-01
 ;;9002226.02101,"1222,33358-0161-01 ",.02)
 ;;33358-0161-01
 ;;9002226.02101,"1222,33358-0161-30 ",.01)
 ;;33358-0161-30
 ;;9002226.02101,"1222,33358-0161-30 ",.02)
 ;;33358-0161-30
 ;;9002226.02101,"1222,33358-0161-60 ",.01)
 ;;33358-0161-60
 ;;9002226.02101,"1222,33358-0161-60 ",.02)
 ;;33358-0161-60
 ;;9002226.02101,"1222,33358-0161-90 ",.01)
 ;;33358-0161-90
 ;;9002226.02101,"1222,33358-0161-90 ",.02)
 ;;33358-0161-90
 ;;9002226.02101,"1222,35356-0099-60 ",.01)
 ;;35356-0099-60
 ;;9002226.02101,"1222,35356-0099-60 ",.02)
 ;;35356-0099-60
 ;;9002226.02101,"1222,35356-0121-90 ",.01)
 ;;35356-0121-90
 ;;9002226.02101,"1222,35356-0121-90 ",.02)
 ;;35356-0121-90
 ;;9002226.02101,"1222,35356-0360-30 ",.01)
 ;;35356-0360-30
 ;;9002226.02101,"1222,35356-0360-30 ",.02)
 ;;35356-0360-30
 ;;9002226.02101,"1222,35356-0360-60 ",.01)
 ;;35356-0360-60
 ;;9002226.02101,"1222,35356-0360-60 ",.02)
 ;;35356-0360-60
 ;;9002226.02101,"1222,35356-0360-90 ",.01)
 ;;35356-0360-90
 ;;9002226.02101,"1222,35356-0360-90 ",.02)
 ;;35356-0360-90
 ;;9002226.02101,"1222,35356-0875-30 ",.01)
 ;;35356-0875-30
 ;;9002226.02101,"1222,35356-0875-30 ",.02)
 ;;35356-0875-30
 ;;9002226.02101,"1222,35356-0875-60 ",.01)
 ;;35356-0875-60
 ;;9002226.02101,"1222,35356-0875-60 ",.02)
 ;;35356-0875-60
 ;;9002226.02101,"1222,35356-0896-30 ",.01)
 ;;35356-0896-30
 ;;9002226.02101,"1222,35356-0896-30 ",.02)
 ;;35356-0896-30
