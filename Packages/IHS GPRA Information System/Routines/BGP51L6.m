BGP51L6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"806,00904-6138-60 ",.02)
 ;;00904-6138-60
 ;;9002226.02101,"806,00904-6139-60 ",.01)
 ;;00904-6139-60
 ;;9002226.02101,"806,00904-6139-60 ",.02)
 ;;00904-6139-60
 ;;9002226.02101,"806,00904-6139-80 ",.01)
 ;;00904-6139-80
 ;;9002226.02101,"806,00904-6139-80 ",.02)
 ;;00904-6139-80
 ;;9002226.02101,"806,10135-0469-01 ",.01)
 ;;10135-0469-01
 ;;9002226.02101,"806,10135-0469-01 ",.02)
 ;;10135-0469-01
 ;;9002226.02101,"806,10135-0470-01 ",.01)
 ;;10135-0470-01
 ;;9002226.02101,"806,10135-0470-01 ",.02)
 ;;10135-0470-01
 ;;9002226.02101,"806,11528-0010-01 ",.01)
 ;;11528-0010-01
 ;;9002226.02101,"806,11528-0010-01 ",.02)
 ;;11528-0010-01
 ;;9002226.02101,"806,11528-0020-01 ",.01)
 ;;11528-0020-01
 ;;9002226.02101,"806,11528-0020-01 ",.02)
 ;;11528-0020-01
 ;;9002226.02101,"806,13925-0171-01 ",.01)
 ;;13925-0171-01
 ;;9002226.02101,"806,13925-0171-01 ",.02)
 ;;13925-0171-01
 ;;9002226.02101,"806,13925-0172-01 ",.01)
 ;;13925-0172-01
 ;;9002226.02101,"806,13925-0172-01 ",.02)
 ;;13925-0172-01
 ;;9002226.02101,"806,15310-0010-01 ",.01)
 ;;15310-0010-01
 ;;9002226.02101,"806,15310-0010-01 ",.02)
 ;;15310-0010-01
 ;;9002226.02101,"806,15310-0020-01 ",.01)
 ;;15310-0020-01
 ;;9002226.02101,"806,15310-0020-01 ",.02)
 ;;15310-0020-01
 ;;9002226.02101,"806,16590-0052-73 ",.01)
 ;;16590-0052-73
 ;;9002226.02101,"806,16590-0052-73 ",.02)
 ;;16590-0052-73
 ;;9002226.02101,"806,16590-0254-33 ",.01)
 ;;16590-0254-33
 ;;9002226.02101,"806,16590-0254-33 ",.02)
 ;;16590-0254-33
 ;;9002226.02101,"806,16590-0898-08 ",.01)
 ;;16590-0898-08
 ;;9002226.02101,"806,16590-0898-08 ",.02)
 ;;16590-0898-08
 ;;9002226.02101,"806,16590-0898-16 ",.01)
 ;;16590-0898-16
 ;;9002226.02101,"806,16590-0898-16 ",.02)
 ;;16590-0898-16
 ;;9002226.02101,"806,16590-0940-60 ",.01)
 ;;16590-0940-60
 ;;9002226.02101,"806,16590-0940-60 ",.02)
 ;;16590-0940-60
 ;;9002226.02101,"806,16590-0972-30 ",.01)
 ;;16590-0972-30
 ;;9002226.02101,"806,16590-0972-30 ",.02)
 ;;16590-0972-30
 ;;9002226.02101,"806,17139-0617-40 ",.01)
 ;;17139-0617-40
 ;;9002226.02101,"806,17139-0617-40 ",.02)
 ;;17139-0617-40
 ;;9002226.02101,"806,17856-0907-02 ",.01)
 ;;17856-0907-02
 ;;9002226.02101,"806,17856-0907-02 ",.02)
 ;;17856-0907-02
 ;;9002226.02101,"806,17856-0907-03 ",.01)
 ;;17856-0907-03
 ;;9002226.02101,"806,17856-0907-03 ",.02)
 ;;17856-0907-03
 ;;9002226.02101,"806,18860-0480-01 ",.01)
 ;;18860-0480-01
 ;;9002226.02101,"806,18860-0480-01 ",.02)
 ;;18860-0480-01
 ;;9002226.02101,"806,18860-0480-60 ",.01)
 ;;18860-0480-60
 ;;9002226.02101,"806,18860-0480-60 ",.02)
 ;;18860-0480-60
 ;;9002226.02101,"806,18860-0490-02 ",.01)
 ;;18860-0490-02
 ;;9002226.02101,"806,18860-0490-02 ",.02)
 ;;18860-0490-02
 ;;9002226.02101,"806,21695-0467-30 ",.01)
 ;;21695-0467-30
 ;;9002226.02101,"806,21695-0467-30 ",.02)
 ;;21695-0467-30
 ;;9002226.02101,"806,21695-0467-60 ",.01)
 ;;21695-0467-60
 ;;9002226.02101,"806,21695-0467-60 ",.02)
 ;;21695-0467-60
 ;;9002226.02101,"806,21695-0468-30 ",.01)
 ;;21695-0468-30
 ;;9002226.02101,"806,21695-0468-30 ",.02)
 ;;21695-0468-30
 ;;9002226.02101,"806,21695-0468-60 ",.01)
 ;;21695-0468-60
 ;;9002226.02101,"806,21695-0468-60 ",.02)
 ;;21695-0468-60
 ;;9002226.02101,"806,21695-0468-72 ",.01)
 ;;21695-0468-72
 ;;9002226.02101,"806,21695-0468-72 ",.02)
 ;;21695-0468-72
 ;;9002226.02101,"806,21695-0468-78 ",.01)
 ;;21695-0468-78
 ;;9002226.02101,"806,21695-0468-78 ",.02)
 ;;21695-0468-78
 ;;9002226.02101,"806,21695-0568-30 ",.01)
 ;;21695-0568-30
 ;;9002226.02101,"806,21695-0568-30 ",.02)
 ;;21695-0568-30
 ;;9002226.02101,"806,21695-0568-60 ",.01)
 ;;21695-0568-60
 ;;9002226.02101,"806,21695-0568-60 ",.02)
 ;;21695-0568-60
 ;;9002226.02101,"806,21695-0613-00 ",.01)
 ;;21695-0613-00
 ;;9002226.02101,"806,21695-0613-00 ",.02)
 ;;21695-0613-00
 ;;9002226.02101,"806,21695-0613-30 ",.01)
 ;;21695-0613-30
 ;;9002226.02101,"806,21695-0613-30 ",.02)
 ;;21695-0613-30
 ;;9002226.02101,"806,21695-0613-90 ",.01)
 ;;21695-0613-90
 ;;9002226.02101,"806,21695-0613-90 ",.02)
 ;;21695-0613-90
 ;;9002226.02101,"806,21695-0623-00 ",.01)
 ;;21695-0623-00
 ;;9002226.02101,"806,21695-0623-00 ",.02)
 ;;21695-0623-00
 ;;9002226.02101,"806,21695-0623-15 ",.01)
 ;;21695-0623-15
 ;;9002226.02101,"806,21695-0623-15 ",.02)
 ;;21695-0623-15
 ;;9002226.02101,"806,21695-0623-30 ",.01)
 ;;21695-0623-30
 ;;9002226.02101,"806,21695-0623-30 ",.02)
 ;;21695-0623-30
 ;;9002226.02101,"806,21695-0696-45 ",.01)
 ;;21695-0696-45
 ;;9002226.02101,"806,21695-0696-45 ",.02)
 ;;21695-0696-45
 ;;9002226.02101,"806,21695-0981-30 ",.01)
 ;;21695-0981-30
 ;;9002226.02101,"806,21695-0981-30 ",.02)
 ;;21695-0981-30
 ;;9002226.02101,"806,23155-0056-01 ",.01)
 ;;23155-0056-01
 ;;9002226.02101,"806,23155-0056-01 ",.02)
 ;;23155-0056-01
 ;;9002226.02101,"806,23155-0057-01 ",.01)
 ;;23155-0057-01
 ;;9002226.02101,"806,23155-0057-01 ",.02)
 ;;23155-0057-01
 ;;9002226.02101,"806,23155-0058-01 ",.01)
 ;;23155-0058-01
 ;;9002226.02101,"806,23155-0058-01 ",.02)
 ;;23155-0058-01
 ;;9002226.02101,"806,23155-0058-10 ",.01)
 ;;23155-0058-10
 ;;9002226.02101,"806,23155-0058-10 ",.02)
 ;;23155-0058-10
 ;;9002226.02101,"806,23155-0233-01 ",.01)
 ;;23155-0233-01
 ;;9002226.02101,"806,23155-0233-01 ",.02)
 ;;23155-0233-01
 ;;9002226.02101,"806,23155-0233-05 ",.01)
 ;;23155-0233-05
 ;;9002226.02101,"806,23155-0233-05 ",.02)
 ;;23155-0233-05
 ;;9002226.02101,"806,23155-0234-01 ",.01)
 ;;23155-0234-01
 ;;9002226.02101,"806,23155-0234-01 ",.02)
 ;;23155-0234-01
 ;;9002226.02101,"806,23155-0234-05 ",.01)
 ;;23155-0234-05
 ;;9002226.02101,"806,23155-0234-05 ",.02)
 ;;23155-0234-05
 ;;9002226.02101,"806,23155-0235-01 ",.01)
 ;;23155-0235-01
 ;;9002226.02101,"806,23155-0235-01 ",.02)
 ;;23155-0235-01
 ;;9002226.02101,"806,23155-0235-05 ",.01)
 ;;23155-0235-05
 ;;9002226.02101,"806,23155-0235-05 ",.02)
 ;;23155-0235-05
 ;;9002226.02101,"806,23490-0138-10 ",.01)
 ;;23490-0138-10
 ;;9002226.02101,"806,23490-0138-10 ",.02)
 ;;23490-0138-10
 ;;9002226.02101,"806,23490-0139-03 ",.01)
 ;;23490-0139-03
 ;;9002226.02101,"806,23490-0139-03 ",.02)
 ;;23490-0139-03
 ;;9002226.02101,"806,23490-5528-01 ",.01)
 ;;23490-5528-01
 ;;9002226.02101,"806,23490-5528-01 ",.02)
 ;;23490-5528-01
 ;;9002226.02101,"806,23490-5528-02 ",.01)
 ;;23490-5528-02
 ;;9002226.02101,"806,23490-5528-02 ",.02)
 ;;23490-5528-02
 ;;9002226.02101,"806,23490-5528-03 ",.01)
 ;;23490-5528-03
 ;;9002226.02101,"806,23490-5528-03 ",.02)
 ;;23490-5528-03
 ;;9002226.02101,"806,23490-5529-01 ",.01)
 ;;23490-5529-01
 ;;9002226.02101,"806,23490-5529-01 ",.02)
 ;;23490-5529-01
 ;;9002226.02101,"806,23490-5529-02 ",.01)
 ;;23490-5529-02
 ;;9002226.02101,"806,23490-5529-02 ",.02)
 ;;23490-5529-02
 ;;9002226.02101,"806,23490-5529-03 ",.01)
 ;;23490-5529-03
 ;;9002226.02101,"806,23490-5529-03 ",.02)
 ;;23490-5529-03
 ;;9002226.02101,"806,23490-5530-03 ",.01)
 ;;23490-5530-03
 ;;9002226.02101,"806,23490-5530-03 ",.02)
 ;;23490-5530-03
 ;;9002226.02101,"806,23490-5531-03 ",.01)
 ;;23490-5531-03
 ;;9002226.02101,"806,23490-5531-03 ",.02)
 ;;23490-5531-03
 ;;9002226.02101,"806,23490-5532-07 ",.01)
 ;;23490-5532-07
 ;;9002226.02101,"806,23490-5532-07 ",.02)
 ;;23490-5532-07
 ;;9002226.02101,"806,23490-5638-01 ",.01)
 ;;23490-5638-01
 ;;9002226.02101,"806,23490-5638-01 ",.02)
 ;;23490-5638-01
 ;;9002226.02101,"806,23490-5638-02 ",.01)
 ;;23490-5638-02
 ;;9002226.02101,"806,23490-5638-02 ",.02)
 ;;23490-5638-02
 ;;9002226.02101,"806,23490-5638-04 ",.01)
 ;;23490-5638-04
 ;;9002226.02101,"806,23490-5638-04 ",.02)
 ;;23490-5638-04
 ;;9002226.02101,"806,23490-5639-01 ",.01)
 ;;23490-5639-01
 ;;9002226.02101,"806,23490-5639-01 ",.02)
 ;;23490-5639-01
 ;;9002226.02101,"806,23490-5639-02 ",.01)
 ;;23490-5639-02
 ;;9002226.02101,"806,23490-5639-02 ",.02)
 ;;23490-5639-02
 ;;9002226.02101,"806,23490-6906-01 ",.01)
 ;;23490-6906-01
 ;;9002226.02101,"806,23490-6906-01 ",.02)
 ;;23490-6906-01
 ;;9002226.02101,"806,23490-7448-03 ",.01)
 ;;23490-7448-03
 ;;9002226.02101,"806,23490-7448-03 ",.02)
 ;;23490-7448-03
 ;;9002226.02101,"806,23490-7448-06 ",.01)
 ;;23490-7448-06
 ;;9002226.02101,"806,23490-7448-06 ",.02)
 ;;23490-7448-06
 ;;9002226.02101,"806,23490-7449-01 ",.01)
 ;;23490-7449-01
 ;;9002226.02101,"806,23490-7449-01 ",.02)
 ;;23490-7449-01
 ;;9002226.02101,"806,23490-7449-06 ",.01)
 ;;23490-7449-06
 ;;9002226.02101,"806,23490-7449-06 ",.02)
 ;;23490-7449-06
 ;;9002226.02101,"806,23490-7449-09 ",.01)
 ;;23490-7449-09
 ;;9002226.02101,"806,23490-7449-09 ",.02)
 ;;23490-7449-09
 ;;9002226.02101,"806,23490-7794-01 ",.01)
 ;;23490-7794-01
 ;;9002226.02101,"806,23490-7794-01 ",.02)
 ;;23490-7794-01
 ;;9002226.02101,"806,29336-0325-56 ",.01)
 ;;29336-0325-56
 ;;9002226.02101,"806,29336-0325-56 ",.02)
 ;;29336-0325-56
 ;;9002226.02101,"806,33261-0209-30 ",.01)
 ;;33261-0209-30
 ;;9002226.02101,"806,33261-0209-30 ",.02)
 ;;33261-0209-30
 ;;9002226.02101,"806,33261-0209-60 ",.01)
 ;;33261-0209-60
 ;;9002226.02101,"806,33261-0209-60 ",.02)
 ;;33261-0209-60
 ;;9002226.02101,"806,33261-0209-90 ",.01)
 ;;33261-0209-90
 ;;9002226.02101,"806,33261-0209-90 ",.02)
 ;;33261-0209-90
 ;;9002226.02101,"806,33261-0411-00 ",.01)
 ;;33261-0411-00
 ;;9002226.02101,"806,33261-0411-00 ",.02)
 ;;33261-0411-00
 ;;9002226.02101,"806,33261-0411-30 ",.01)
 ;;33261-0411-30
 ;;9002226.02101,"806,33261-0411-30 ",.02)
 ;;33261-0411-30
 ;;9002226.02101,"806,33261-0411-60 ",.01)
 ;;33261-0411-60
 ;;9002226.02101,"806,33261-0411-60 ",.02)
 ;;33261-0411-60
 ;;9002226.02101,"806,33261-0411-90 ",.01)
 ;;33261-0411-90
 ;;9002226.02101,"806,33261-0411-90 ",.02)
 ;;33261-0411-90
 ;;9002226.02101,"806,33261-0751-30 ",.01)
 ;;33261-0751-30
 ;;9002226.02101,"806,33261-0751-30 ",.02)
 ;;33261-0751-30
 ;;9002226.02101,"806,33261-0751-60 ",.01)
 ;;33261-0751-60
 ;;9002226.02101,"806,33261-0751-60 ",.02)
 ;;33261-0751-60
 ;;9002226.02101,"806,33261-0751-90 ",.01)
 ;;33261-0751-90
 ;;9002226.02101,"806,33261-0751-90 ",.02)
 ;;33261-0751-90
 ;;9002226.02101,"806,33261-0763-01 ",.01)
 ;;33261-0763-01
 ;;9002226.02101,"806,33261-0763-01 ",.02)
 ;;33261-0763-01
 ;;9002226.02101,"806,33261-0821-30 ",.01)
 ;;33261-0821-30
 ;;9002226.02101,"806,33261-0821-30 ",.02)
 ;;33261-0821-30
 ;;9002226.02101,"806,33261-0821-60 ",.01)
 ;;33261-0821-60
 ;;9002226.02101,"806,33261-0821-60 ",.02)
 ;;33261-0821-60
 ;;9002226.02101,"806,33261-0821-90 ",.01)
 ;;33261-0821-90
 ;;9002226.02101,"806,33261-0821-90 ",.02)
 ;;33261-0821-90
 ;;9002226.02101,"806,33358-0160-30 ",.01)
 ;;33358-0160-30
 ;;9002226.02101,"806,33358-0160-30 ",.02)
 ;;33358-0160-30
 ;;9002226.02101,"806,33358-0160-60 ",.01)
 ;;33358-0160-60
 ;;9002226.02101,"806,33358-0160-60 ",.02)
 ;;33358-0160-60
 ;;9002226.02101,"806,33358-0161-01 ",.01)
 ;;33358-0161-01
 ;;9002226.02101,"806,33358-0161-01 ",.02)
 ;;33358-0161-01
 ;;9002226.02101,"806,33358-0161-30 ",.01)
 ;;33358-0161-30
 ;;9002226.02101,"806,33358-0161-30 ",.02)
 ;;33358-0161-30
 ;;9002226.02101,"806,33358-0161-60 ",.01)
 ;;33358-0161-60
 ;;9002226.02101,"806,33358-0161-60 ",.02)
 ;;33358-0161-60
 ;;9002226.02101,"806,33358-0161-90 ",.01)
 ;;33358-0161-90
 ;;9002226.02101,"806,33358-0161-90 ",.02)
 ;;33358-0161-90
 ;;9002226.02101,"806,33358-0295-30 ",.01)
 ;;33358-0295-30
 ;;9002226.02101,"806,33358-0295-30 ",.02)
 ;;33358-0295-30
 ;;9002226.02101,"806,33358-0336-30 ",.01)
 ;;33358-0336-30
 ;;9002226.02101,"806,33358-0336-30 ",.02)
 ;;33358-0336-30
 ;;9002226.02101,"806,33358-0336-60 ",.01)
 ;;33358-0336-60
 ;;9002226.02101,"806,33358-0336-60 ",.02)
 ;;33358-0336-60
 ;;9002226.02101,"806,33358-0337-60 ",.01)
 ;;33358-0337-60
 ;;9002226.02101,"806,33358-0337-60 ",.02)
 ;;33358-0337-60
 ;;9002226.02101,"806,35356-0249-00 ",.01)
 ;;35356-0249-00
 ;;9002226.02101,"806,35356-0249-00 ",.02)
 ;;35356-0249-00
 ;;9002226.02101,"806,35356-0250-00 ",.01)
 ;;35356-0250-00
 ;;9002226.02101,"806,35356-0250-00 ",.02)
 ;;35356-0250-00
 ;;9002226.02101,"806,35356-0251-00 ",.01)
 ;;35356-0251-00
 ;;9002226.02101,"806,35356-0251-00 ",.02)
 ;;35356-0251-00
 ;;9002226.02101,"806,35356-0276-28 ",.01)
 ;;35356-0276-28
 ;;9002226.02101,"806,35356-0276-28 ",.02)
 ;;35356-0276-28
 ;;9002226.02101,"806,35356-0277-28 ",.01)
 ;;35356-0277-28
 ;;9002226.02101,"806,35356-0277-28 ",.02)
 ;;35356-0277-28
 ;;9002226.02101,"806,35356-0278-28 ",.01)
 ;;35356-0278-28
 ;;9002226.02101,"806,35356-0278-28 ",.02)
 ;;35356-0278-28
 ;;9002226.02101,"806,35356-0279-28 ",.01)
 ;;35356-0279-28
 ;;9002226.02101,"806,35356-0279-28 ",.02)
 ;;35356-0279-28
 ;;9002226.02101,"806,35356-0360-30 ",.01)
 ;;35356-0360-30
 ;;9002226.02101,"806,35356-0360-30 ",.02)
 ;;35356-0360-30
 ;;9002226.02101,"806,35356-0360-60 ",.01)
 ;;35356-0360-60
 ;;9002226.02101,"806,35356-0360-60 ",.02)
 ;;35356-0360-60
 ;;9002226.02101,"806,35356-0360-90 ",.01)
 ;;35356-0360-90
 ;;9002226.02101,"806,35356-0360-90 ",.02)
 ;;35356-0360-90
 ;;9002226.02101,"806,35356-0426-30 ",.01)
 ;;35356-0426-30
 ;;9002226.02101,"806,35356-0426-30 ",.02)
 ;;35356-0426-30
 ;;9002226.02101,"806,35356-0897-30 ",.01)
 ;;35356-0897-30
 ;;9002226.02101,"806,35356-0897-30 ",.02)
 ;;35356-0897-30
 ;;9002226.02101,"806,35356-0897-60 ",.01)
 ;;35356-0897-60
 ;;9002226.02101,"806,35356-0897-60 ",.02)
 ;;35356-0897-60
 ;;9002226.02101,"806,35356-0932-30 ",.01)
 ;;35356-0932-30
 ;;9002226.02101,"806,35356-0932-30 ",.02)
 ;;35356-0932-30
 ;;9002226.02101,"806,35356-0932-60 ",.01)
 ;;35356-0932-60
