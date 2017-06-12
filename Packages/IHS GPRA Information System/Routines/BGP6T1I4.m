BGP6T1I4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1803,10019-0030-17 ",.01)
 ;;10019-0030-17
 ;;9002226.02101,"1803,10019-0030-17 ",.02)
 ;;10019-0030-17
 ;;9002226.02101,"1803,10544-0216-21 ",.01)
 ;;10544-0216-21
 ;;9002226.02101,"1803,10544-0216-21 ",.02)
 ;;10544-0216-21
 ;;9002226.02101,"1803,10544-0222-10 ",.01)
 ;;10544-0222-10
 ;;9002226.02101,"1803,10544-0222-10 ",.02)
 ;;10544-0222-10
 ;;9002226.02101,"1803,10702-0016-01 ",.01)
 ;;10702-0016-01
 ;;9002226.02101,"1803,10702-0016-01 ",.02)
 ;;10702-0016-01
 ;;9002226.02101,"1803,10702-0016-03 ",.01)
 ;;10702-0016-03
 ;;9002226.02101,"1803,10702-0016-03 ",.02)
 ;;10702-0016-03
 ;;9002226.02101,"1803,10702-0016-06 ",.01)
 ;;10702-0016-06
 ;;9002226.02101,"1803,10702-0016-06 ",.02)
 ;;10702-0016-06
 ;;9002226.02101,"1803,10702-0016-10 ",.01)
 ;;10702-0016-10
 ;;9002226.02101,"1803,10702-0016-10 ",.02)
 ;;10702-0016-10
 ;;9002226.02101,"1803,10702-0016-50 ",.01)
 ;;10702-0016-50
 ;;9002226.02101,"1803,10702-0016-50 ",.02)
 ;;10702-0016-50
 ;;9002226.02101,"1803,16590-0129-20 ",.01)
 ;;16590-0129-20
 ;;9002226.02101,"1803,16590-0129-20 ",.02)
 ;;16590-0129-20
 ;;9002226.02101,"1803,16590-0129-30 ",.01)
 ;;16590-0129-30
 ;;9002226.02101,"1803,16590-0129-30 ",.02)
 ;;16590-0129-30
 ;;9002226.02101,"1803,16590-0129-72 ",.01)
 ;;16590-0129-72
 ;;9002226.02101,"1803,16590-0129-72 ",.02)
 ;;16590-0129-72
 ;;9002226.02101,"1803,16590-0130-15 ",.01)
 ;;16590-0130-15
 ;;9002226.02101,"1803,16590-0130-15 ",.02)
 ;;16590-0130-15
 ;;9002226.02101,"1803,16590-0130-20 ",.01)
 ;;16590-0130-20
 ;;9002226.02101,"1803,16590-0130-20 ",.02)
 ;;16590-0130-20
 ;;9002226.02101,"1803,16590-0130-28 ",.01)
 ;;16590-0130-28
 ;;9002226.02101,"1803,16590-0130-28 ",.02)
 ;;16590-0130-28
 ;;9002226.02101,"1803,16590-0130-30 ",.01)
 ;;16590-0130-30
 ;;9002226.02101,"1803,16590-0130-30 ",.02)
 ;;16590-0130-30
 ;;9002226.02101,"1803,16590-0130-60 ",.01)
 ;;16590-0130-60
 ;;9002226.02101,"1803,16590-0130-60 ",.02)
 ;;16590-0130-60
 ;;9002226.02101,"1803,16590-0131-20 ",.01)
 ;;16590-0131-20
 ;;9002226.02101,"1803,16590-0131-20 ",.02)
 ;;16590-0131-20
 ;;9002226.02101,"1803,16590-0131-30 ",.01)
 ;;16590-0131-30
 ;;9002226.02101,"1803,16590-0131-30 ",.02)
 ;;16590-0131-30
 ;;9002226.02101,"1803,16590-0131-60 ",.01)
 ;;16590-0131-60
 ;;9002226.02101,"1803,16590-0131-60 ",.02)
 ;;16590-0131-60
 ;;9002226.02101,"1803,16590-0138-10 ",.01)
 ;;16590-0138-10
 ;;9002226.02101,"1803,16590-0138-10 ",.02)
 ;;16590-0138-10
 ;;9002226.02101,"1803,16590-0138-15 ",.01)
 ;;16590-0138-15
 ;;9002226.02101,"1803,16590-0138-15 ",.02)
 ;;16590-0138-15
 ;;9002226.02101,"1803,16590-0138-20 ",.01)
 ;;16590-0138-20
 ;;9002226.02101,"1803,16590-0138-20 ",.02)
 ;;16590-0138-20
 ;;9002226.02101,"1803,16590-0138-30 ",.01)
 ;;16590-0138-30
 ;;9002226.02101,"1803,16590-0138-30 ",.02)
 ;;16590-0138-30
 ;;9002226.02101,"1803,16590-0138-40 ",.01)
 ;;16590-0138-40
 ;;9002226.02101,"1803,16590-0138-40 ",.02)
 ;;16590-0138-40
 ;;9002226.02101,"1803,16590-0138-60 ",.01)
 ;;16590-0138-60
 ;;9002226.02101,"1803,16590-0138-60 ",.02)
 ;;16590-0138-60
 ;;9002226.02101,"1803,16590-0556-30 ",.01)
 ;;16590-0556-30
 ;;9002226.02101,"1803,16590-0556-30 ",.02)
 ;;16590-0556-30
 ;;9002226.02101,"1803,16590-0556-40 ",.01)
 ;;16590-0556-40
 ;;9002226.02101,"1803,16590-0556-40 ",.02)
 ;;16590-0556-40
 ;;9002226.02101,"1803,16590-0556-60 ",.01)
 ;;16590-0556-60
 ;;9002226.02101,"1803,16590-0556-60 ",.02)
 ;;16590-0556-60
 ;;9002226.02101,"1803,16590-0556-72 ",.01)
 ;;16590-0556-72
 ;;9002226.02101,"1803,16590-0556-72 ",.02)
 ;;16590-0556-72
 ;;9002226.02101,"1803,16590-0556-90 ",.01)
 ;;16590-0556-90
 ;;9002226.02101,"1803,16590-0556-90 ",.02)
 ;;16590-0556-90
 ;;9002226.02101,"1803,16590-0582-30 ",.01)
 ;;16590-0582-30
 ;;9002226.02101,"1803,16590-0582-30 ",.02)
 ;;16590-0582-30
 ;;9002226.02101,"1803,16590-0582-60 ",.01)
 ;;16590-0582-60
 ;;9002226.02101,"1803,16590-0582-60 ",.02)
 ;;16590-0582-60
 ;;9002226.02101,"1803,16590-0582-72 ",.01)
 ;;16590-0582-72
 ;;9002226.02101,"1803,16590-0582-72 ",.02)
 ;;16590-0582-72
 ;;9002226.02101,"1803,16590-0582-90 ",.01)
 ;;16590-0582-90
 ;;9002226.02101,"1803,16590-0582-90 ",.02)
 ;;16590-0582-90
 ;;9002226.02101,"1803,16590-0640-15 ",.01)
 ;;16590-0640-15
 ;;9002226.02101,"1803,16590-0640-15 ",.02)
 ;;16590-0640-15
 ;;9002226.02101,"1803,16590-0640-25 ",.01)
 ;;16590-0640-25
 ;;9002226.02101,"1803,16590-0640-25 ",.02)
 ;;16590-0640-25
 ;;9002226.02101,"1803,16590-0640-30 ",.01)
 ;;16590-0640-30
 ;;9002226.02101,"1803,16590-0640-30 ",.02)
 ;;16590-0640-30
 ;;9002226.02101,"1803,16590-0640-50 ",.01)
 ;;16590-0640-50
 ;;9002226.02101,"1803,16590-0640-50 ",.02)
 ;;16590-0640-50
 ;;9002226.02101,"1803,16590-0640-60 ",.01)
 ;;16590-0640-60
 ;;9002226.02101,"1803,16590-0640-60 ",.02)
 ;;16590-0640-60
 ;;9002226.02101,"1803,16590-0640-71 ",.01)
 ;;16590-0640-71
 ;;9002226.02101,"1803,16590-0640-71 ",.02)
 ;;16590-0640-71
 ;;9002226.02101,"1803,16590-0640-72 ",.01)
 ;;16590-0640-72
 ;;9002226.02101,"1803,16590-0640-72 ",.02)
 ;;16590-0640-72
 ;;9002226.02101,"1803,16590-0640-90 ",.01)
 ;;16590-0640-90
 ;;9002226.02101,"1803,16590-0640-90 ",.02)
 ;;16590-0640-90
 ;;9002226.02101,"1803,21695-0026-15 ",.01)
 ;;21695-0026-15
 ;;9002226.02101,"1803,21695-0026-15 ",.02)
 ;;21695-0026-15
 ;;9002226.02101,"1803,21695-0241-01 ",.01)
 ;;21695-0241-01
 ;;9002226.02101,"1803,21695-0241-01 ",.02)
 ;;21695-0241-01
 ;;9002226.02101,"1803,21695-0364-28 ",.01)
 ;;21695-0364-28
 ;;9002226.02101,"1803,21695-0364-28 ",.02)
 ;;21695-0364-28
 ;;9002226.02101,"1803,21695-0364-60 ",.01)
 ;;21695-0364-60
 ;;9002226.02101,"1803,21695-0364-60 ",.02)
 ;;21695-0364-60
 ;;9002226.02101,"1803,21695-0364-72 ",.01)
 ;;21695-0364-72
 ;;9002226.02101,"1803,21695-0364-72 ",.02)
 ;;21695-0364-72
 ;;9002226.02101,"1803,21695-0432-10 ",.01)
 ;;21695-0432-10
 ;;9002226.02101,"1803,21695-0432-10 ",.02)
 ;;21695-0432-10
 ;;9002226.02101,"1803,21695-0432-12 ",.01)
 ;;21695-0432-12
 ;;9002226.02101,"1803,21695-0432-12 ",.02)
 ;;21695-0432-12
 ;;9002226.02101,"1803,21695-0432-15 ",.01)
 ;;21695-0432-15
 ;;9002226.02101,"1803,21695-0432-15 ",.02)
 ;;21695-0432-15
 ;;9002226.02101,"1803,21695-0432-20 ",.01)
 ;;21695-0432-20
 ;;9002226.02101,"1803,21695-0432-20 ",.02)
 ;;21695-0432-20
 ;;9002226.02101,"1803,21695-0432-28 ",.01)
 ;;21695-0432-28
 ;;9002226.02101,"1803,21695-0432-28 ",.02)
 ;;21695-0432-28
 ;;9002226.02101,"1803,21695-0432-30 ",.01)
 ;;21695-0432-30
 ;;9002226.02101,"1803,21695-0432-30 ",.02)
 ;;21695-0432-30
 ;;9002226.02101,"1803,21695-0522-21 ",.01)
 ;;21695-0522-21
 ;;9002226.02101,"1803,21695-0522-21 ",.02)
 ;;21695-0522-21
 ;;9002226.02101,"1803,21695-0522-30 ",.01)
 ;;21695-0522-30
 ;;9002226.02101,"1803,21695-0522-30 ",.02)
 ;;21695-0522-30
 ;;9002226.02101,"1803,21695-0522-60 ",.01)
 ;;21695-0522-60
 ;;9002226.02101,"1803,21695-0522-60 ",.02)
 ;;21695-0522-60
 ;;9002226.02101,"1803,21695-0523-15 ",.01)
 ;;21695-0523-15
 ;;9002226.02101,"1803,21695-0523-15 ",.02)
 ;;21695-0523-15
 ;;9002226.02101,"1803,21695-0523-21 ",.01)
 ;;21695-0523-21
 ;;9002226.02101,"1803,21695-0523-21 ",.02)
 ;;21695-0523-21
 ;;9002226.02101,"1803,21695-0523-30 ",.01)
 ;;21695-0523-30
 ;;9002226.02101,"1803,21695-0523-30 ",.02)
 ;;21695-0523-30
 ;;9002226.02101,"1803,21695-0588-10 ",.01)
 ;;21695-0588-10
 ;;9002226.02101,"1803,21695-0588-10 ",.02)
 ;;21695-0588-10
 ;;9002226.02101,"1803,21695-0588-25 ",.01)
 ;;21695-0588-25
 ;;9002226.02101,"1803,21695-0588-25 ",.02)
 ;;21695-0588-25
 ;;9002226.02101,"1803,21695-0634-60 ",.01)
 ;;21695-0634-60
 ;;9002226.02101,"1803,21695-0634-60 ",.02)
 ;;21695-0634-60
 ;;9002226.02101,"1803,23155-0010-01 ",.01)
 ;;23155-0010-01
 ;;9002226.02101,"1803,23155-0010-01 ",.02)
 ;;23155-0010-01
 ;;9002226.02101,"1803,23155-0010-10 ",.01)
 ;;23155-0010-10
 ;;9002226.02101,"1803,23155-0010-10 ",.02)
 ;;23155-0010-10
 ;;9002226.02101,"1803,23155-0011-01 ",.01)
 ;;23155-0011-01
 ;;9002226.02101,"1803,23155-0011-01 ",.02)
 ;;23155-0011-01
 ;;9002226.02101,"1803,23155-0011-05 ",.01)
 ;;23155-0011-05
 ;;9002226.02101,"1803,23155-0011-05 ",.02)
 ;;23155-0011-05
 ;;9002226.02101,"1803,25021-0700-01 ",.01)
 ;;25021-0700-01
 ;;9002226.02101,"1803,25021-0700-01 ",.02)
 ;;25021-0700-01
 ;;9002226.02101,"1803,25021-0701-01 ",.01)
 ;;25021-0701-01
 ;;9002226.02101,"1803,25021-0701-01 ",.02)
 ;;25021-0701-01
 ;;9002226.02101,"1803,25021-0701-02 ",.01)
 ;;25021-0701-02
 ;;9002226.02101,"1803,25021-0701-02 ",.02)
 ;;25021-0701-02
 ;;9002226.02101,"1803,31722-0542-01 ",.01)
 ;;31722-0542-01
 ;;9002226.02101,"1803,31722-0542-01 ",.02)
 ;;31722-0542-01
 ;;9002226.02101,"1803,31722-0542-10 ",.01)
 ;;31722-0542-10
 ;;9002226.02101,"1803,31722-0542-10 ",.02)
 ;;31722-0542-10
 ;;9002226.02101,"1803,31722-0543-01 ",.01)
 ;;31722-0543-01
 ;;9002226.02101,"1803,31722-0543-01 ",.02)
 ;;31722-0543-01
 ;;9002226.02101,"1803,31722-0543-05 ",.01)
 ;;31722-0543-05
 ;;9002226.02101,"1803,31722-0543-05 ",.02)
 ;;31722-0543-05
 ;;9002226.02101,"1803,31722-0565-01 ",.01)
 ;;31722-0565-01
 ;;9002226.02101,"1803,31722-0565-01 ",.02)
 ;;31722-0565-01
 ;;9002226.02101,"1803,31722-0565-60 ",.01)
 ;;31722-0565-60
 ;;9002226.02101,"1803,31722-0565-60 ",.02)
 ;;31722-0565-60
 ;;9002226.02101,"1803,33261-0063-30 ",.01)
 ;;33261-0063-30
 ;;9002226.02101,"1803,33261-0063-30 ",.02)
 ;;33261-0063-30
 ;;9002226.02101,"1803,33261-0063-60 ",.01)
 ;;33261-0063-60
 ;;9002226.02101,"1803,33261-0063-60 ",.02)
 ;;33261-0063-60
 ;;9002226.02101,"1803,33261-0063-90 ",.01)
 ;;33261-0063-90
 ;;9002226.02101,"1803,33261-0063-90 ",.02)
 ;;33261-0063-90
 ;;9002226.02101,"1803,33261-0065-10 ",.01)
 ;;33261-0065-10
 ;;9002226.02101,"1803,33261-0065-10 ",.02)
 ;;33261-0065-10
 ;;9002226.02101,"1803,33261-0133-30 ",.01)
 ;;33261-0133-30
 ;;9002226.02101,"1803,33261-0133-30 ",.02)
 ;;33261-0133-30
 ;;9002226.02101,"1803,33261-0133-60 ",.01)
 ;;33261-0133-60
 ;;9002226.02101,"1803,33261-0133-60 ",.02)
 ;;33261-0133-60
 ;;9002226.02101,"1803,33261-0133-90 ",.01)
 ;;33261-0133-90
 ;;9002226.02101,"1803,33261-0133-90 ",.02)
 ;;33261-0133-90
 ;;9002226.02101,"1803,33261-0706-30 ",.01)
 ;;33261-0706-30
 ;;9002226.02101,"1803,33261-0706-30 ",.02)
 ;;33261-0706-30
 ;;9002226.02101,"1803,33261-0706-60 ",.01)
 ;;33261-0706-60
 ;;9002226.02101,"1803,33261-0706-60 ",.02)
 ;;33261-0706-60
 ;;9002226.02101,"1803,33261-0706-90 ",.01)
 ;;33261-0706-90
 ;;9002226.02101,"1803,33261-0706-90 ",.02)
 ;;33261-0706-90
 ;;9002226.02101,"1803,33358-0195-20 ",.01)
 ;;33358-0195-20
 ;;9002226.02101,"1803,33358-0195-20 ",.02)
 ;;33358-0195-20
 ;;9002226.02101,"1803,33358-0195-30 ",.01)
 ;;33358-0195-30
 ;;9002226.02101,"1803,33358-0195-30 ",.02)
 ;;33358-0195-30
 ;;9002226.02101,"1803,33358-0196-21 ",.01)
 ;;33358-0196-21
 ;;9002226.02101,"1803,33358-0196-21 ",.02)
 ;;33358-0196-21
 ;;9002226.02101,"1803,33358-0196-30 ",.01)
 ;;33358-0196-30
 ;;9002226.02101,"1803,33358-0196-30 ",.02)
 ;;33358-0196-30
 ;;9002226.02101,"1803,33358-0196-60 ",.01)
 ;;33358-0196-60
 ;;9002226.02101,"1803,33358-0196-60 ",.02)
 ;;33358-0196-60
 ;;9002226.02101,"1803,33358-0197-30 ",.01)
 ;;33358-0197-30
 ;;9002226.02101,"1803,33358-0197-30 ",.02)
 ;;33358-0197-30
 ;;9002226.02101,"1803,33358-0199-30 ",.01)
 ;;33358-0199-30
 ;;9002226.02101,"1803,33358-0199-30 ",.02)
 ;;33358-0199-30
 ;;9002226.02101,"1803,35356-0176-30 ",.01)
 ;;35356-0176-30
 ;;9002226.02101,"1803,35356-0176-30 ",.02)
 ;;35356-0176-30
 ;;9002226.02101,"1803,35356-0559-30 ",.01)
 ;;35356-0559-30
 ;;9002226.02101,"1803,35356-0559-30 ",.02)
 ;;35356-0559-30
 ;;9002226.02101,"1803,35356-0560-30 ",.01)
 ;;35356-0560-30
