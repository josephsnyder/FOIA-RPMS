BGP61H7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1221,21695-0473-00 ",.02)
 ;;21695-0473-00
 ;;9002226.02101,"1221,21695-0473-30 ",.01)
 ;;21695-0473-30
 ;;9002226.02101,"1221,21695-0473-30 ",.02)
 ;;21695-0473-30
 ;;9002226.02101,"1221,21695-0473-60 ",.01)
 ;;21695-0473-60
 ;;9002226.02101,"1221,21695-0473-60 ",.02)
 ;;21695-0473-60
 ;;9002226.02101,"1221,21695-0473-78 ",.01)
 ;;21695-0473-78
 ;;9002226.02101,"1221,21695-0473-78 ",.02)
 ;;21695-0473-78
 ;;9002226.02101,"1221,21695-0473-90 ",.01)
 ;;21695-0473-90
 ;;9002226.02101,"1221,21695-0473-90 ",.02)
 ;;21695-0473-90
 ;;9002226.02101,"1221,21695-0568-30 ",.01)
 ;;21695-0568-30
 ;;9002226.02101,"1221,21695-0568-30 ",.02)
 ;;21695-0568-30
 ;;9002226.02101,"1221,21695-0568-60 ",.01)
 ;;21695-0568-60
 ;;9002226.02101,"1221,21695-0568-60 ",.02)
 ;;21695-0568-60
 ;;9002226.02101,"1221,21695-0828-30 ",.01)
 ;;21695-0828-30
 ;;9002226.02101,"1221,21695-0828-30 ",.02)
 ;;21695-0828-30
 ;;9002226.02101,"1221,21695-0828-60 ",.01)
 ;;21695-0828-60
 ;;9002226.02101,"1221,21695-0828-60 ",.02)
 ;;21695-0828-60
 ;;9002226.02101,"1221,21695-0828-90 ",.01)
 ;;21695-0828-90
 ;;9002226.02101,"1221,21695-0828-90 ",.02)
 ;;21695-0828-90
 ;;9002226.02101,"1221,21695-0894-00 ",.01)
 ;;21695-0894-00
 ;;9002226.02101,"1221,21695-0894-00 ",.02)
 ;;21695-0894-00
 ;;9002226.02101,"1221,23155-0102-01 ",.01)
 ;;23155-0102-01
 ;;9002226.02101,"1221,23155-0102-01 ",.02)
 ;;23155-0102-01
 ;;9002226.02101,"1221,23155-0102-05 ",.01)
 ;;23155-0102-05
 ;;9002226.02101,"1221,23155-0102-05 ",.02)
 ;;23155-0102-05
 ;;9002226.02101,"1221,23155-0102-10 ",.01)
 ;;23155-0102-10
 ;;9002226.02101,"1221,23155-0102-10 ",.02)
 ;;23155-0102-10
 ;;9002226.02101,"1221,23155-0103-01 ",.01)
 ;;23155-0103-01
 ;;9002226.02101,"1221,23155-0103-01 ",.02)
 ;;23155-0103-01
 ;;9002226.02101,"1221,23155-0103-05 ",.01)
 ;;23155-0103-05
 ;;9002226.02101,"1221,23155-0103-05 ",.02)
 ;;23155-0103-05
 ;;9002226.02101,"1221,23155-0103-10 ",.01)
 ;;23155-0103-10
 ;;9002226.02101,"1221,23155-0103-10 ",.02)
 ;;23155-0103-10
 ;;9002226.02101,"1221,23155-0104-01 ",.01)
 ;;23155-0104-01
 ;;9002226.02101,"1221,23155-0104-01 ",.02)
 ;;23155-0104-01
 ;;9002226.02101,"1221,23155-0104-05 ",.01)
 ;;23155-0104-05
 ;;9002226.02101,"1221,23155-0104-05 ",.02)
 ;;23155-0104-05
 ;;9002226.02101,"1221,23155-0104-10 ",.01)
 ;;23155-0104-10
 ;;9002226.02101,"1221,23155-0104-10 ",.02)
 ;;23155-0104-10
 ;;9002226.02101,"1221,23155-0115-01 ",.01)
 ;;23155-0115-01
 ;;9002226.02101,"1221,23155-0115-01 ",.02)
 ;;23155-0115-01
 ;;9002226.02101,"1221,23155-0116-01 ",.01)
 ;;23155-0116-01
 ;;9002226.02101,"1221,23155-0116-01 ",.02)
 ;;23155-0116-01
 ;;9002226.02101,"1221,23155-0117-01 ",.01)
 ;;23155-0117-01
 ;;9002226.02101,"1221,23155-0117-01 ",.02)
 ;;23155-0117-01
 ;;9002226.02101,"1221,23155-0233-01 ",.01)
 ;;23155-0233-01
 ;;9002226.02101,"1221,23155-0233-01 ",.02)
 ;;23155-0233-01
 ;;9002226.02101,"1221,23155-0233-05 ",.01)
 ;;23155-0233-05
 ;;9002226.02101,"1221,23155-0233-05 ",.02)
 ;;23155-0233-05
 ;;9002226.02101,"1221,23155-0234-01 ",.01)
 ;;23155-0234-01
 ;;9002226.02101,"1221,23155-0234-01 ",.02)
 ;;23155-0234-01
 ;;9002226.02101,"1221,23155-0234-05 ",.01)
 ;;23155-0234-05
 ;;9002226.02101,"1221,23155-0234-05 ",.02)
 ;;23155-0234-05
 ;;9002226.02101,"1221,23155-0235-01 ",.01)
 ;;23155-0235-01
 ;;9002226.02101,"1221,23155-0235-01 ",.02)
 ;;23155-0235-01
 ;;9002226.02101,"1221,23155-0235-05 ",.01)
 ;;23155-0235-05
 ;;9002226.02101,"1221,23155-0235-05 ",.02)
 ;;23155-0235-05
 ;;9002226.02101,"1221,24658-0290-05 ",.01)
 ;;24658-0290-05
 ;;9002226.02101,"1221,24658-0290-05 ",.02)
 ;;24658-0290-05
 ;;9002226.02101,"1221,24658-0290-12 ",.01)
 ;;24658-0290-12
 ;;9002226.02101,"1221,24658-0290-12 ",.02)
 ;;24658-0290-12
 ;;9002226.02101,"1221,24658-0290-18 ",.01)
 ;;24658-0290-18
 ;;9002226.02101,"1221,24658-0290-18 ",.02)
 ;;24658-0290-18
 ;;9002226.02101,"1221,24658-0290-27 ",.01)
 ;;24658-0290-27
 ;;9002226.02101,"1221,24658-0290-27 ",.02)
 ;;24658-0290-27
 ;;9002226.02101,"1221,24658-0290-36 ",.01)
 ;;24658-0290-36
 ;;9002226.02101,"1221,24658-0290-36 ",.02)
 ;;24658-0290-36
 ;;9002226.02101,"1221,24658-0290-46 ",.01)
 ;;24658-0290-46
 ;;9002226.02101,"1221,24658-0290-46 ",.02)
 ;;24658-0290-46
 ;;9002226.02101,"1221,24658-0290-60 ",.01)
 ;;24658-0290-60
 ;;9002226.02101,"1221,24658-0290-60 ",.02)
 ;;24658-0290-60
 ;;9002226.02101,"1221,24658-0290-90 ",.01)
 ;;24658-0290-90
 ;;9002226.02101,"1221,24658-0290-90 ",.02)
 ;;24658-0290-90
 ;;9002226.02101,"1221,24658-0292-05 ",.01)
 ;;24658-0292-05
 ;;9002226.02101,"1221,24658-0292-05 ",.02)
 ;;24658-0292-05
 ;;9002226.02101,"1221,24658-0292-18 ",.01)
 ;;24658-0292-18
 ;;9002226.02101,"1221,24658-0292-18 ",.02)
 ;;24658-0292-18
 ;;9002226.02101,"1221,24658-0292-60 ",.01)
 ;;24658-0292-60
 ;;9002226.02101,"1221,24658-0292-60 ",.02)
 ;;24658-0292-60
 ;;9002226.02101,"1221,24658-0292-90 ",.01)
 ;;24658-0292-90
 ;;9002226.02101,"1221,24658-0292-90 ",.02)
 ;;24658-0292-90
 ;;9002226.02101,"1221,29033-0018-01 ",.01)
 ;;29033-0018-01
 ;;9002226.02101,"1221,29033-0018-01 ",.02)
 ;;29033-0018-01
 ;;9002226.02101,"1221,29033-0018-05 ",.01)
 ;;29033-0018-05
 ;;9002226.02101,"1221,29033-0018-05 ",.02)
 ;;29033-0018-05
 ;;9002226.02101,"1221,29033-0018-10 ",.01)
 ;;29033-0018-10
 ;;9002226.02101,"1221,29033-0018-10 ",.02)
 ;;29033-0018-10
 ;;9002226.02101,"1221,29033-0021-01 ",.01)
 ;;29033-0021-01
 ;;9002226.02101,"1221,29033-0021-01 ",.02)
 ;;29033-0021-01
 ;;9002226.02101,"1221,33261-0145-02 ",.01)
 ;;33261-0145-02
 ;;9002226.02101,"1221,33261-0145-02 ",.02)
 ;;33261-0145-02
 ;;9002226.02101,"1221,33261-0145-30 ",.01)
 ;;33261-0145-30
 ;;9002226.02101,"1221,33261-0145-30 ",.02)
 ;;33261-0145-30
 ;;9002226.02101,"1221,33261-0145-60 ",.01)
 ;;33261-0145-60
 ;;9002226.02101,"1221,33261-0145-60 ",.02)
 ;;33261-0145-60
 ;;9002226.02101,"1221,33261-0145-90 ",.01)
 ;;33261-0145-90
 ;;9002226.02101,"1221,33261-0145-90 ",.02)
 ;;33261-0145-90
 ;;9002226.02101,"1221,33261-0157-02 ",.01)
 ;;33261-0157-02
 ;;9002226.02101,"1221,33261-0157-02 ",.02)
 ;;33261-0157-02
 ;;9002226.02101,"1221,33261-0157-30 ",.01)
 ;;33261-0157-30
 ;;9002226.02101,"1221,33261-0157-30 ",.02)
 ;;33261-0157-30
 ;;9002226.02101,"1221,33261-0157-60 ",.01)
 ;;33261-0157-60
 ;;9002226.02101,"1221,33261-0157-60 ",.02)
 ;;33261-0157-60
 ;;9002226.02101,"1221,33261-0157-90 ",.01)
 ;;33261-0157-90
 ;;9002226.02101,"1221,33261-0157-90 ",.02)
 ;;33261-0157-90
 ;;9002226.02101,"1221,33261-0372-30 ",.01)
 ;;33261-0372-30
 ;;9002226.02101,"1221,33261-0372-30 ",.02)
 ;;33261-0372-30
 ;;9002226.02101,"1221,33261-0372-60 ",.01)
 ;;33261-0372-60
 ;;9002226.02101,"1221,33261-0372-60 ",.02)
 ;;33261-0372-60
 ;;9002226.02101,"1221,33261-0372-90 ",.01)
 ;;33261-0372-90
 ;;9002226.02101,"1221,33261-0372-90 ",.02)
 ;;33261-0372-90
 ;;9002226.02101,"1221,33261-0411-00 ",.01)
 ;;33261-0411-00
 ;;9002226.02101,"1221,33261-0411-00 ",.02)
 ;;33261-0411-00
 ;;9002226.02101,"1221,33261-0411-30 ",.01)
 ;;33261-0411-30
 ;;9002226.02101,"1221,33261-0411-30 ",.02)
 ;;33261-0411-30
 ;;9002226.02101,"1221,33261-0411-60 ",.01)
 ;;33261-0411-60
 ;;9002226.02101,"1221,33261-0411-60 ",.02)
 ;;33261-0411-60
 ;;9002226.02101,"1221,33261-0411-90 ",.01)
 ;;33261-0411-90
 ;;9002226.02101,"1221,33261-0411-90 ",.02)
 ;;33261-0411-90
 ;;9002226.02101,"1221,33261-0540-00 ",.01)
 ;;33261-0540-00
 ;;9002226.02101,"1221,33261-0540-00 ",.02)
 ;;33261-0540-00
 ;;9002226.02101,"1221,33261-0540-30 ",.01)
 ;;33261-0540-30
 ;;9002226.02101,"1221,33261-0540-30 ",.02)
 ;;33261-0540-30
 ;;9002226.02101,"1221,33261-0540-60 ",.01)
 ;;33261-0540-60
 ;;9002226.02101,"1221,33261-0540-60 ",.02)
 ;;33261-0540-60
 ;;9002226.02101,"1221,33261-0540-90 ",.01)
 ;;33261-0540-90
 ;;9002226.02101,"1221,33261-0540-90 ",.02)
 ;;33261-0540-90
 ;;9002226.02101,"1221,33261-0821-30 ",.01)
 ;;33261-0821-30
 ;;9002226.02101,"1221,33261-0821-30 ",.02)
 ;;33261-0821-30
 ;;9002226.02101,"1221,33261-0821-60 ",.01)
 ;;33261-0821-60
 ;;9002226.02101,"1221,33261-0821-60 ",.02)
 ;;33261-0821-60
 ;;9002226.02101,"1221,33261-0821-90 ",.01)
 ;;33261-0821-90
 ;;9002226.02101,"1221,33261-0821-90 ",.02)
 ;;33261-0821-90
 ;;9002226.02101,"1221,33358-0234-00 ",.01)
 ;;33358-0234-00
 ;;9002226.02101,"1221,33358-0234-00 ",.02)
 ;;33358-0234-00
 ;;9002226.02101,"1221,33358-0234-30 ",.01)
 ;;33358-0234-30
 ;;9002226.02101,"1221,33358-0234-30 ",.02)
 ;;33358-0234-30
 ;;9002226.02101,"1221,33358-0234-60 ",.01)
 ;;33358-0234-60
 ;;9002226.02101,"1221,33358-0234-60 ",.02)
 ;;33358-0234-60
 ;;9002226.02101,"1221,33358-0235-60 ",.01)
 ;;33358-0235-60
 ;;9002226.02101,"1221,33358-0235-60 ",.02)
 ;;33358-0235-60
 ;;9002226.02101,"1221,33358-0236-30 ",.01)
 ;;33358-0236-30
 ;;9002226.02101,"1221,33358-0236-30 ",.02)
 ;;33358-0236-30
 ;;9002226.02101,"1221,33358-0236-60 ",.01)
 ;;33358-0236-60
 ;;9002226.02101,"1221,33358-0236-60 ",.02)
 ;;33358-0236-60
 ;;9002226.02101,"1221,33358-0237-30 ",.01)
 ;;33358-0237-30
 ;;9002226.02101,"1221,33358-0237-30 ",.02)
 ;;33358-0237-30
 ;;9002226.02101,"1221,33358-0237-60 ",.01)
 ;;33358-0237-60
 ;;9002226.02101,"1221,33358-0237-60 ",.02)
 ;;33358-0237-60
 ;;9002226.02101,"1221,35356-0130-60 ",.01)
 ;;35356-0130-60
 ;;9002226.02101,"1221,35356-0130-60 ",.02)
 ;;35356-0130-60
 ;;9002226.02101,"1221,35356-0136-60 ",.01)
 ;;35356-0136-60
 ;;9002226.02101,"1221,35356-0136-60 ",.02)
 ;;35356-0136-60
 ;;9002226.02101,"1221,35356-0269-28 ",.01)
 ;;35356-0269-28
 ;;9002226.02101,"1221,35356-0269-28 ",.02)
 ;;35356-0269-28
 ;;9002226.02101,"1221,35356-0691-60 ",.01)
 ;;35356-0691-60
 ;;9002226.02101,"1221,35356-0691-60 ",.02)
 ;;35356-0691-60
 ;;9002226.02101,"1221,35356-0792-30 ",.01)
 ;;35356-0792-30
 ;;9002226.02101,"1221,35356-0792-30 ",.02)
 ;;35356-0792-30
 ;;9002226.02101,"1221,35356-0886-30 ",.01)
 ;;35356-0886-30
 ;;9002226.02101,"1221,35356-0886-30 ",.02)
 ;;35356-0886-30
 ;;9002226.02101,"1221,35356-0886-60 ",.01)
 ;;35356-0886-60
 ;;9002226.02101,"1221,35356-0886-60 ",.02)
 ;;35356-0886-60
 ;;9002226.02101,"1221,35356-0886-90 ",.01)
 ;;35356-0886-90
 ;;9002226.02101,"1221,35356-0886-90 ",.02)
 ;;35356-0886-90
 ;;9002226.02101,"1221,35356-0897-30 ",.01)
 ;;35356-0897-30
 ;;9002226.02101,"1221,35356-0897-30 ",.02)
 ;;35356-0897-30
 ;;9002226.02101,"1221,35356-0897-60 ",.01)
 ;;35356-0897-60
 ;;9002226.02101,"1221,35356-0897-60 ",.02)
 ;;35356-0897-60
 ;;9002226.02101,"1221,35356-0922-60 ",.01)
 ;;35356-0922-60
 ;;9002226.02101,"1221,35356-0922-60 ",.02)
 ;;35356-0922-60
 ;;9002226.02101,"1221,35356-0932-30 ",.01)
 ;;35356-0932-30
 ;;9002226.02101,"1221,35356-0932-30 ",.02)
 ;;35356-0932-30
 ;;9002226.02101,"1221,35356-0932-60 ",.01)
 ;;35356-0932-60
 ;;9002226.02101,"1221,35356-0932-60 ",.02)
 ;;35356-0932-60
 ;;9002226.02101,"1221,35356-0932-90 ",.01)
 ;;35356-0932-90
 ;;9002226.02101,"1221,35356-0932-90 ",.02)
 ;;35356-0932-90
 ;;9002226.02101,"1221,35356-0959-30 ",.01)
 ;;35356-0959-30
 ;;9002226.02101,"1221,35356-0959-30 ",.02)
 ;;35356-0959-30
 ;;9002226.02101,"1221,35356-0959-60 ",.01)
 ;;35356-0959-60
 ;;9002226.02101,"1221,35356-0959-60 ",.02)
 ;;35356-0959-60
 ;;9002226.02101,"1221,35356-0959-90 ",.01)
 ;;35356-0959-90
 ;;9002226.02101,"1221,35356-0959-90 ",.02)
 ;;35356-0959-90
 ;;9002226.02101,"1221,35356-0970-30 ",.01)
 ;;35356-0970-30
 ;;9002226.02101,"1221,35356-0970-30 ",.02)
 ;;35356-0970-30
 ;;9002226.02101,"1221,35356-0970-60 ",.01)
 ;;35356-0970-60
 ;;9002226.02101,"1221,35356-0970-60 ",.02)
 ;;35356-0970-60
 ;;9002226.02101,"1221,35356-0970-90 ",.01)
 ;;35356-0970-90
 ;;9002226.02101,"1221,35356-0970-90 ",.02)
 ;;35356-0970-90
 ;;9002226.02101,"1221,42254-0071-30 ",.01)
 ;;42254-0071-30
 ;;9002226.02101,"1221,42254-0071-30 ",.02)
 ;;42254-0071-30
 ;;9002226.02101,"1221,42291-0305-01 ",.01)
 ;;42291-0305-01
 ;;9002226.02101,"1221,42291-0305-01 ",.02)
 ;;42291-0305-01
 ;;9002226.02101,"1221,42291-0306-01 ",.01)
 ;;42291-0306-01
 ;;9002226.02101,"1221,42291-0306-01 ",.02)
 ;;42291-0306-01
 ;;9002226.02101,"1221,42291-0592-60 ",.01)
 ;;42291-0592-60
 ;;9002226.02101,"1221,42291-0592-60 ",.02)
 ;;42291-0592-60
 ;;9002226.02101,"1221,42291-0593-60 ",.01)
 ;;42291-0593-60
 ;;9002226.02101,"1221,42291-0593-60 ",.02)
 ;;42291-0593-60
 ;;9002226.02101,"1221,42291-0605-10 ",.01)
 ;;42291-0605-10
 ;;9002226.02101,"1221,42291-0605-10 ",.02)
 ;;42291-0605-10
 ;;9002226.02101,"1221,42291-0605-12 ",.01)
 ;;42291-0605-12
 ;;9002226.02101,"1221,42291-0605-12 ",.02)
 ;;42291-0605-12
 ;;9002226.02101,"1221,42291-0605-18 ",.01)
 ;;42291-0605-18
