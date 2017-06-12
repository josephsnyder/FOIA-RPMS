BGP61P3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1227,00173-0874-14 ",.02)
 ;;00173-0874-14
 ;;9002226.02101,"1227,00173-0876-10 ",.01)
 ;;00173-0876-10
 ;;9002226.02101,"1227,00173-0876-10 ",.02)
 ;;00173-0876-10
 ;;9002226.02101,"1227,00173-0876-14 ",.01)
 ;;00173-0876-14
 ;;9002226.02101,"1227,00173-0876-14 ",.02)
 ;;00173-0876-14
 ;;9002226.02101,"1227,00186-0370-20 ",.01)
 ;;00186-0370-20
 ;;9002226.02101,"1227,00186-0370-20 ",.02)
 ;;00186-0370-20
 ;;9002226.02101,"1227,00186-0370-28 ",.01)
 ;;00186-0370-28
 ;;9002226.02101,"1227,00186-0370-28 ",.02)
 ;;00186-0370-28
 ;;9002226.02101,"1227,00186-0372-20 ",.01)
 ;;00186-0372-20
 ;;9002226.02101,"1227,00186-0372-20 ",.02)
 ;;00186-0372-20
 ;;9002226.02101,"1227,00186-0372-28 ",.01)
 ;;00186-0372-28
 ;;9002226.02101,"1227,00186-0372-28 ",.02)
 ;;00186-0372-28
 ;;9002226.02101,"1227,00186-0916-12 ",.01)
 ;;00186-0916-12
 ;;9002226.02101,"1227,00186-0916-12 ",.02)
 ;;00186-0916-12
 ;;9002226.02101,"1227,00186-0917-06 ",.01)
 ;;00186-0917-06
 ;;9002226.02101,"1227,00186-0917-06 ",.02)
 ;;00186-0917-06
 ;;9002226.02101,"1227,00310-0401-60 ",.01)
 ;;00310-0401-60
 ;;9002226.02101,"1227,00310-0401-60 ",.02)
 ;;00310-0401-60
 ;;9002226.02101,"1227,00310-0402-60 ",.01)
 ;;00310-0402-60
 ;;9002226.02101,"1227,00310-0402-60 ",.02)
 ;;00310-0402-60
 ;;9002226.02101,"1227,00310-0411-60 ",.01)
 ;;00310-0411-60
 ;;9002226.02101,"1227,00310-0411-60 ",.02)
 ;;00310-0411-60
 ;;9002226.02101,"1227,00310-0412-60 ",.01)
 ;;00310-0412-60
 ;;9002226.02101,"1227,00310-0412-60 ",.02)
 ;;00310-0412-60
 ;;9002226.02101,"1227,00378-5201-93 ",.01)
 ;;00378-5201-93
 ;;9002226.02101,"1227,00378-5201-93 ",.02)
 ;;00378-5201-93
 ;;9002226.02101,"1227,00378-5204-93 ",.01)
 ;;00378-5204-93
 ;;9002226.02101,"1227,00378-5204-93 ",.02)
 ;;00378-5204-93
 ;;9002226.02101,"1227,00378-5205-93 ",.01)
 ;;00378-5205-93
 ;;9002226.02101,"1227,00378-5205-93 ",.02)
 ;;00378-5205-93
 ;;9002226.02101,"1227,00378-6040-17 ",.01)
 ;;00378-6040-17
 ;;9002226.02101,"1227,00378-6040-17 ",.02)
 ;;00378-6040-17
 ;;9002226.02101,"1227,00378-6040-93 ",.01)
 ;;00378-6040-93
 ;;9002226.02101,"1227,00378-6040-93 ",.02)
 ;;00378-6040-93
 ;;9002226.02101,"1227,00440-8355-99 ",.01)
 ;;00440-8355-99
 ;;9002226.02101,"1227,00440-8355-99 ",.02)
 ;;00440-8355-99
 ;;9002226.02101,"1227,00440-8530-30 ",.01)
 ;;00440-8530-30
 ;;9002226.02101,"1227,00440-8530-30 ",.02)
 ;;00440-8530-30
 ;;9002226.02101,"1227,00440-8531-10 ",.01)
 ;;00440-8531-10
 ;;9002226.02101,"1227,00440-8531-10 ",.02)
 ;;00440-8531-10
 ;;9002226.02101,"1227,00440-8531-30 ",.01)
 ;;00440-8531-30
 ;;9002226.02101,"1227,00440-8531-30 ",.02)
 ;;00440-8531-30
 ;;9002226.02101,"1227,00440-8531-90 ",.01)
 ;;00440-8531-90
 ;;9002226.02101,"1227,00440-8531-90 ",.02)
 ;;00440-8531-90
 ;;9002226.02101,"1227,00440-8531-94 ",.01)
 ;;00440-8531-94
 ;;9002226.02101,"1227,00440-8531-94 ",.02)
 ;;00440-8531-94
 ;;9002226.02101,"1227,00440-8532-20 ",.01)
 ;;00440-8532-20
 ;;9002226.02101,"1227,00440-8532-20 ",.02)
 ;;00440-8532-20
 ;;9002226.02101,"1227,00440-8532-30 ",.01)
 ;;00440-8532-30
 ;;9002226.02101,"1227,00440-8532-30 ",.02)
 ;;00440-8532-30
 ;;9002226.02101,"1227,00440-8532-90 ",.01)
 ;;00440-8532-90
 ;;9002226.02101,"1227,00440-8532-90 ",.02)
 ;;00440-8532-90
 ;;9002226.02101,"1227,00440-8532-94 ",.01)
 ;;00440-8532-94
 ;;9002226.02101,"1227,00440-8532-94 ",.02)
 ;;00440-8532-94
 ;;9002226.02101,"1227,00456-4310-01 ",.01)
 ;;00456-4310-01
 ;;9002226.02101,"1227,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"1227,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"1227,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"1227,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"1227,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"1227,00603-4653-02 ",.01)
 ;;00603-4653-02
 ;;9002226.02101,"1227,00603-4653-02 ",.02)
 ;;00603-4653-02
 ;;9002226.02101,"1227,00603-4653-16 ",.01)
 ;;00603-4653-16
 ;;9002226.02101,"1227,00603-4653-16 ",.02)
 ;;00603-4653-16
 ;;9002226.02101,"1227,00603-4653-28 ",.01)
 ;;00603-4653-28
 ;;9002226.02101,"1227,00603-4653-28 ",.02)
 ;;00603-4653-28
 ;;9002226.02101,"1227,00603-4653-32 ",.01)
 ;;00603-4653-32
 ;;9002226.02101,"1227,00603-4653-32 ",.02)
 ;;00603-4653-32
 ;;9002226.02101,"1227,00603-4654-02 ",.01)
 ;;00603-4654-02
 ;;9002226.02101,"1227,00603-4654-02 ",.02)
 ;;00603-4654-02
 ;;9002226.02101,"1227,00603-4654-16 ",.01)
 ;;00603-4654-16
 ;;9002226.02101,"1227,00603-4654-16 ",.02)
 ;;00603-4654-16
 ;;9002226.02101,"1227,00603-4654-28 ",.01)
 ;;00603-4654-28
 ;;9002226.02101,"1227,00603-4654-28 ",.02)
 ;;00603-4654-28
 ;;9002226.02101,"1227,00603-4654-32 ",.01)
 ;;00603-4654-32
 ;;9002226.02101,"1227,00603-4654-32 ",.02)
 ;;00603-4654-32
 ;;9002226.02101,"1227,00603-4655-02 ",.01)
 ;;00603-4655-02
 ;;9002226.02101,"1227,00603-4655-02 ",.02)
 ;;00603-4655-02
 ;;9002226.02101,"1227,00603-4655-16 ",.01)
 ;;00603-4655-16
 ;;9002226.02101,"1227,00603-4655-16 ",.02)
 ;;00603-4655-16
 ;;9002226.02101,"1227,00603-4655-28 ",.01)
 ;;00603-4655-28
 ;;9002226.02101,"1227,00603-4655-28 ",.02)
 ;;00603-4655-28
 ;;9002226.02101,"1227,00603-4655-32 ",.01)
 ;;00603-4655-32
 ;;9002226.02101,"1227,00603-4655-32 ",.02)
 ;;00603-4655-32
 ;;9002226.02101,"1227,00603-4655-34 ",.01)
 ;;00603-4655-34
 ;;9002226.02101,"1227,00603-4655-34 ",.02)
 ;;00603-4655-34
 ;;9002226.02101,"1227,00781-5554-31 ",.01)
 ;;00781-5554-31
 ;;9002226.02101,"1227,00781-5554-31 ",.02)
 ;;00781-5554-31
 ;;9002226.02101,"1227,00781-5554-92 ",.01)
 ;;00781-5554-92
 ;;9002226.02101,"1227,00781-5554-92 ",.02)
 ;;00781-5554-92
 ;;9002226.02101,"1227,00781-5555-31 ",.01)
 ;;00781-5555-31
 ;;9002226.02101,"1227,00781-5555-31 ",.02)
 ;;00781-5555-31
 ;;9002226.02101,"1227,00781-5555-92 ",.01)
 ;;00781-5555-92
 ;;9002226.02101,"1227,00781-5555-92 ",.02)
 ;;00781-5555-92
 ;;9002226.02101,"1227,00781-5560-31 ",.01)
 ;;00781-5560-31
 ;;9002226.02101,"1227,00781-5560-31 ",.02)
 ;;00781-5560-31
 ;;9002226.02101,"1227,00781-5560-92 ",.01)
 ;;00781-5560-92
 ;;9002226.02101,"1227,00781-5560-92 ",.02)
 ;;00781-5560-92
 ;;9002226.02101,"1227,00904-5887-61 ",.01)
 ;;00904-5887-61
 ;;9002226.02101,"1227,00904-5887-61 ",.02)
 ;;00904-5887-61
 ;;9002226.02101,"1227,00904-5888-61 ",.01)
 ;;00904-5888-61
 ;;9002226.02101,"1227,00904-5888-61 ",.02)
 ;;00904-5888-61
 ;;9002226.02101,"1227,00904-5889-61 ",.01)
 ;;00904-5889-61
 ;;9002226.02101,"1227,00904-5889-61 ",.02)
 ;;00904-5889-61
 ;;9002226.02101,"1227,00904-6310-61 ",.01)
 ;;00904-6310-61
 ;;9002226.02101,"1227,00904-6310-61 ",.02)
 ;;00904-6310-61
 ;;9002226.02101,"1227,10122-0901-12 ",.01)
 ;;10122-0901-12
 ;;9002226.02101,"1227,10122-0901-12 ",.02)
 ;;10122-0901-12
 ;;9002226.02101,"1227,10122-0902-12 ",.01)
 ;;10122-0902-12
 ;;9002226.02101,"1227,10122-0902-12 ",.02)
 ;;10122-0902-12
 ;;9002226.02101,"1227,13668-0079-05 ",.01)
 ;;13668-0079-05
 ;;9002226.02101,"1227,13668-0079-05 ",.02)
 ;;13668-0079-05
 ;;9002226.02101,"1227,13668-0079-30 ",.01)
 ;;13668-0079-30
 ;;9002226.02101,"1227,13668-0079-30 ",.02)
 ;;13668-0079-30
 ;;9002226.02101,"1227,13668-0079-90 ",.01)
 ;;13668-0079-90
 ;;9002226.02101,"1227,13668-0079-90 ",.02)
 ;;13668-0079-90
 ;;9002226.02101,"1227,13668-0080-05 ",.01)
 ;;13668-0080-05
 ;;9002226.02101,"1227,13668-0080-05 ",.02)
 ;;13668-0080-05
 ;;9002226.02101,"1227,13668-0080-30 ",.01)
 ;;13668-0080-30
 ;;9002226.02101,"1227,13668-0080-30 ",.02)
 ;;13668-0080-30
 ;;9002226.02101,"1227,13668-0080-90 ",.01)
 ;;13668-0080-90
 ;;9002226.02101,"1227,13668-0080-90 ",.02)
 ;;13668-0080-90
 ;;9002226.02101,"1227,13668-0081-05 ",.01)
 ;;13668-0081-05
 ;;9002226.02101,"1227,13668-0081-05 ",.02)
 ;;13668-0081-05
 ;;9002226.02101,"1227,13668-0081-30 ",.01)
 ;;13668-0081-30
 ;;9002226.02101,"1227,13668-0081-30 ",.02)
 ;;13668-0081-30
 ;;9002226.02101,"1227,13668-0081-32 ",.01)
 ;;13668-0081-32
 ;;9002226.02101,"1227,13668-0081-32 ",.02)
 ;;13668-0081-32
 ;;9002226.02101,"1227,13668-0081-90 ",.01)
 ;;13668-0081-90
 ;;9002226.02101,"1227,13668-0081-90 ",.02)
 ;;13668-0081-90
 ;;9002226.02101,"1227,16590-0860-71 ",.01)
 ;;16590-0860-71
 ;;9002226.02101,"1227,16590-0860-71 ",.02)
 ;;16590-0860-71
 ;;9002226.02101,"1227,16590-0860-72 ",.01)
 ;;16590-0860-72
 ;;9002226.02101,"1227,16590-0860-72 ",.02)
 ;;16590-0860-72
 ;;9002226.02101,"1227,16729-0119-10 ",.01)
 ;;16729-0119-10
 ;;9002226.02101,"1227,16729-0119-10 ",.02)
 ;;16729-0119-10
 ;;9002226.02101,"1227,16729-0119-15 ",.01)
 ;;16729-0119-15
 ;;9002226.02101,"1227,16729-0119-15 ",.02)
 ;;16729-0119-15
 ;;9002226.02101,"1227,16729-0119-17 ",.01)
 ;;16729-0119-17
 ;;9002226.02101,"1227,16729-0119-17 ",.02)
 ;;16729-0119-17
 ;;9002226.02101,"1227,21695-0196-01 ",.01)
 ;;21695-0196-01
 ;;9002226.02101,"1227,21695-0196-01 ",.02)
 ;;21695-0196-01
 ;;9002226.02101,"1227,21695-0197-01 ",.01)
 ;;21695-0197-01
 ;;9002226.02101,"1227,21695-0197-01 ",.02)
 ;;21695-0197-01
 ;;9002226.02101,"1227,21695-0221-30 ",.01)
 ;;21695-0221-30
 ;;9002226.02101,"1227,21695-0221-30 ",.02)
 ;;21695-0221-30
 ;;9002226.02101,"1227,21695-0291-01 ",.01)
 ;;21695-0291-01
 ;;9002226.02101,"1227,21695-0291-01 ",.02)
 ;;21695-0291-01
 ;;9002226.02101,"1227,21695-0361-60 ",.01)
 ;;21695-0361-60
 ;;9002226.02101,"1227,21695-0361-60 ",.02)
 ;;21695-0361-60
 ;;9002226.02101,"1227,21695-0565-30 ",.01)
 ;;21695-0565-30
 ;;9002226.02101,"1227,21695-0565-30 ",.02)
 ;;21695-0565-30
 ;;9002226.02101,"1227,23155-0062-01 ",.01)
 ;;23155-0062-01
 ;;9002226.02101,"1227,23155-0062-01 ",.02)
 ;;23155-0062-01
 ;;9002226.02101,"1227,23155-0063-01 ",.01)
 ;;23155-0063-01
 ;;9002226.02101,"1227,23155-0063-01 ",.02)
 ;;23155-0063-01
 ;;9002226.02101,"1227,29033-0001-01 ",.01)
 ;;29033-0001-01
 ;;9002226.02101,"1227,29033-0001-01 ",.02)
 ;;29033-0001-01
 ;;9002226.02101,"1227,29033-0002-01 ",.01)
 ;;29033-0002-01
 ;;9002226.02101,"1227,29033-0002-01 ",.02)
 ;;29033-0002-01
 ;;9002226.02101,"1227,31722-0726-10 ",.01)
 ;;31722-0726-10
 ;;9002226.02101,"1227,31722-0726-10 ",.02)
 ;;31722-0726-10
 ;;9002226.02101,"1227,31722-0726-30 ",.01)
 ;;31722-0726-30
 ;;9002226.02101,"1227,31722-0726-30 ",.02)
 ;;31722-0726-30
 ;;9002226.02101,"1227,31722-0726-90 ",.01)
 ;;31722-0726-90
 ;;9002226.02101,"1227,31722-0726-90 ",.02)
 ;;31722-0726-90
 ;;9002226.02101,"1227,33261-0873-01 ",.01)
 ;;33261-0873-01
 ;;9002226.02101,"1227,33261-0873-01 ",.02)
 ;;33261-0873-01
 ;;9002226.02101,"1227,33261-0874-01 ",.01)
 ;;33261-0874-01
 ;;9002226.02101,"1227,33261-0874-01 ",.02)
 ;;33261-0874-01
 ;;9002226.02101,"1227,33261-0969-00 ",.01)
 ;;33261-0969-00
 ;;9002226.02101,"1227,33261-0969-00 ",.02)
 ;;33261-0969-00
 ;;9002226.02101,"1227,33261-0969-30 ",.01)
 ;;33261-0969-30
 ;;9002226.02101,"1227,33261-0969-30 ",.02)
 ;;33261-0969-30
 ;;9002226.02101,"1227,33261-0969-60 ",.01)
 ;;33261-0969-60
 ;;9002226.02101,"1227,33261-0969-60 ",.02)
 ;;33261-0969-60
 ;;9002226.02101,"1227,33261-0969-90 ",.01)
 ;;33261-0969-90
 ;;9002226.02101,"1227,33261-0969-90 ",.02)
 ;;33261-0969-90
 ;;9002226.02101,"1227,33342-0102-07 ",.01)
 ;;33342-0102-07
 ;;9002226.02101,"1227,33342-0102-07 ",.02)
 ;;33342-0102-07
 ;;9002226.02101,"1227,33342-0102-10 ",.01)
 ;;33342-0102-10
 ;;9002226.02101,"1227,33342-0102-10 ",.02)
 ;;33342-0102-10
 ;;9002226.02101,"1227,33342-0102-15 ",.01)
 ;;33342-0102-15
 ;;9002226.02101,"1227,33342-0102-15 ",.02)
 ;;33342-0102-15
 ;;9002226.02101,"1227,35356-0099-14 ",.01)
 ;;35356-0099-14
 ;;9002226.02101,"1227,35356-0099-14 ",.02)
 ;;35356-0099-14
 ;;9002226.02101,"1227,35356-0126-60 ",.01)
 ;;35356-0126-60
 ;;9002226.02101,"1227,35356-0126-60 ",.02)
 ;;35356-0126-60
 ;;9002226.02101,"1227,35356-0157-01 ",.01)
 ;;35356-0157-01
 ;;9002226.02101,"1227,35356-0157-01 ",.02)
 ;;35356-0157-01
 ;;9002226.02101,"1227,35356-0494-01 ",.01)
 ;;35356-0494-01
 ;;9002226.02101,"1227,35356-0494-01 ",.02)
 ;;35356-0494-01
 ;;9002226.02101,"1227,35356-0904-60 ",.01)
 ;;35356-0904-60
 ;;9002226.02101,"1227,35356-0904-60 ",.02)
 ;;35356-0904-60
 ;;9002226.02101,"1227,42254-0263-30 ",.01)
 ;;42254-0263-30
 ;;9002226.02101,"1227,42254-0263-30 ",.02)
 ;;42254-0263-30
 ;;9002226.02101,"1227,42254-0263-90 ",.01)
 ;;42254-0263-90
 ;;9002226.02101,"1227,42254-0263-90 ",.02)
 ;;42254-0263-90
 ;;9002226.02101,"1227,42254-0264-30 ",.01)
 ;;42254-0264-30
 ;;9002226.02101,"1227,42254-0264-30 ",.02)
 ;;42254-0264-30
 ;;9002226.02101,"1227,42254-0416-30 ",.01)
 ;;42254-0416-30
 ;;9002226.02101,"1227,42254-0416-30 ",.02)
 ;;42254-0416-30
 ;;9002226.02101,"1227,42291-0621-10 ",.01)
 ;;42291-0621-10
