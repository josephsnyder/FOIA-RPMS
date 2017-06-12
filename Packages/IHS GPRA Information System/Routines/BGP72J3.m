BGP72J3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1921,00440-8476-30 ",.02)
 ;;00440-8476-30
 ;;9002226.02101,"1921,00591-0744-01 ",.01)
 ;;00591-0744-01
 ;;9002226.02101,"1921,00591-0744-01 ",.02)
 ;;00591-0744-01
 ;;9002226.02101,"1921,00591-0745-01 ",.01)
 ;;00591-0745-01
 ;;9002226.02101,"1921,00591-0745-01 ",.02)
 ;;00591-0745-01
 ;;9002226.02101,"1921,00603-5891-21 ",.01)
 ;;00603-5891-21
 ;;9002226.02101,"1921,00603-5891-21 ",.02)
 ;;00603-5891-21
 ;;9002226.02101,"1921,00603-5892-21 ",.01)
 ;;00603-5892-21
 ;;9002226.02101,"1921,00603-5892-21 ",.02)
 ;;00603-5892-21
 ;;9002226.02101,"1921,00603-5892-28 ",.01)
 ;;00603-5892-28
 ;;9002226.02101,"1921,00603-5892-28 ",.02)
 ;;00603-5892-28
 ;;9002226.02101,"1921,00603-5893-16 ",.01)
 ;;00603-5893-16
 ;;9002226.02101,"1921,00603-5893-16 ",.02)
 ;;00603-5893-16
 ;;9002226.02101,"1921,00603-5894-21 ",.01)
 ;;00603-5894-21
 ;;9002226.02101,"1921,00603-5894-21 ",.02)
 ;;00603-5894-21
 ;;9002226.02101,"1921,00603-5894-28 ",.01)
 ;;00603-5894-28
 ;;9002226.02101,"1921,00603-5894-28 ",.02)
 ;;00603-5894-28
 ;;9002226.02101,"1921,00781-2201-01 ",.01)
 ;;00781-2201-01
 ;;9002226.02101,"1921,00781-2201-01 ",.02)
 ;;00781-2201-01
 ;;9002226.02101,"1921,00781-2201-05 ",.01)
 ;;00781-2201-05
 ;;9002226.02101,"1921,00781-2201-05 ",.02)
 ;;00781-2201-05
 ;;9002226.02101,"1921,00781-2202-01 ",.01)
 ;;00781-2202-01
 ;;9002226.02101,"1921,00781-2202-01 ",.02)
 ;;00781-2202-01
 ;;9002226.02101,"1921,00781-2202-05 ",.01)
 ;;00781-2202-05
 ;;9002226.02101,"1921,00781-2202-05 ",.02)
 ;;00781-2202-05
 ;;9002226.02101,"1921,00904-6436-04 ",.01)
 ;;00904-6436-04
 ;;9002226.02101,"1921,00904-6436-04 ",.02)
 ;;00904-6436-04
 ;;9002226.02101,"1921,00904-6436-60 ",.01)
 ;;00904-6436-60
 ;;9002226.02101,"1921,00904-6436-60 ",.02)
 ;;00904-6436-60
 ;;9002226.02101,"1921,16590-0214-28 ",.01)
 ;;16590-0214-28
 ;;9002226.02101,"1921,16590-0214-28 ",.02)
 ;;16590-0214-28
 ;;9002226.02101,"1921,16590-0214-30 ",.01)
 ;;16590-0214-30
 ;;9002226.02101,"1921,16590-0214-30 ",.02)
 ;;16590-0214-30
 ;;9002226.02101,"1921,16590-0214-45 ",.01)
 ;;16590-0214-45
 ;;9002226.02101,"1921,16590-0214-45 ",.02)
 ;;16590-0214-45
 ;;9002226.02101,"1921,16590-0214-60 ",.01)
 ;;16590-0214-60
 ;;9002226.02101,"1921,16590-0214-60 ",.02)
 ;;16590-0214-60
 ;;9002226.02101,"1921,16590-0214-90 ",.01)
 ;;16590-0214-90
 ;;9002226.02101,"1921,16590-0214-90 ",.02)
 ;;16590-0214-90
 ;;9002226.02101,"1921,16590-0236-30 ",.01)
 ;;16590-0236-30
 ;;9002226.02101,"1921,16590-0236-30 ",.02)
 ;;16590-0236-30
 ;;9002226.02101,"1921,16590-0236-60 ",.01)
 ;;16590-0236-60
 ;;9002226.02101,"1921,16590-0236-60 ",.02)
 ;;16590-0236-60
 ;;9002226.02101,"1921,16590-0236-90 ",.01)
 ;;16590-0236-90
 ;;9002226.02101,"1921,16590-0236-90 ",.02)
 ;;16590-0236-90
 ;;9002226.02101,"1921,21695-0220-30 ",.01)
 ;;21695-0220-30
 ;;9002226.02101,"1921,21695-0220-30 ",.02)
 ;;21695-0220-30
 ;;9002226.02101,"1921,21695-0282-30 ",.01)
 ;;21695-0282-30
 ;;9002226.02101,"1921,21695-0282-30 ",.02)
 ;;21695-0282-30
 ;;9002226.02101,"1921,21695-0282-60 ",.01)
 ;;21695-0282-60
 ;;9002226.02101,"1921,21695-0282-60 ",.02)
 ;;21695-0282-60
 ;;9002226.02101,"1921,21695-0282-78 ",.01)
 ;;21695-0282-78
 ;;9002226.02101,"1921,21695-0282-78 ",.02)
 ;;21695-0282-78
 ;;9002226.02101,"1921,21695-0283-30 ",.01)
 ;;21695-0283-30
 ;;9002226.02101,"1921,21695-0283-30 ",.02)
 ;;21695-0283-30
 ;;9002226.02101,"1921,21695-0283-90 ",.01)
 ;;21695-0283-90
 ;;9002226.02101,"1921,21695-0283-90 ",.02)
 ;;21695-0283-90
 ;;9002226.02101,"1921,21695-0284-00 ",.01)
 ;;21695-0284-00
 ;;9002226.02101,"1921,21695-0284-00 ",.02)
 ;;21695-0284-00
 ;;9002226.02101,"1921,21695-0284-10 ",.01)
 ;;21695-0284-10
 ;;9002226.02101,"1921,21695-0284-10 ",.02)
 ;;21695-0284-10
 ;;9002226.02101,"1921,21695-0303-10 ",.01)
 ;;21695-0303-10
 ;;9002226.02101,"1921,21695-0303-10 ",.02)
 ;;21695-0303-10
 ;;9002226.02101,"1921,21695-0303-30 ",.01)
 ;;21695-0303-30
 ;;9002226.02101,"1921,21695-0303-30 ",.02)
 ;;21695-0303-30
 ;;9002226.02101,"1921,21695-0363-30 ",.01)
 ;;21695-0363-30
 ;;9002226.02101,"1921,21695-0363-30 ",.02)
 ;;21695-0363-30
 ;;9002226.02101,"1921,33261-0047-00 ",.01)
 ;;33261-0047-00
 ;;9002226.02101,"1921,33261-0047-00 ",.02)
 ;;33261-0047-00
 ;;9002226.02101,"1921,33261-0047-30 ",.01)
 ;;33261-0047-30
 ;;9002226.02101,"1921,33261-0047-30 ",.02)
 ;;33261-0047-30
 ;;9002226.02101,"1921,33261-0047-60 ",.01)
 ;;33261-0047-60
 ;;9002226.02101,"1921,33261-0047-60 ",.02)
 ;;33261-0047-60
 ;;9002226.02101,"1921,33261-0047-90 ",.01)
 ;;33261-0047-90
 ;;9002226.02101,"1921,33261-0047-90 ",.02)
 ;;33261-0047-90
 ;;9002226.02101,"1921,33261-0101-07 ",.01)
 ;;33261-0101-07
 ;;9002226.02101,"1921,33261-0101-07 ",.02)
 ;;33261-0101-07
 ;;9002226.02101,"1921,33261-0101-14 ",.01)
 ;;33261-0101-14
 ;;9002226.02101,"1921,33261-0101-14 ",.02)
 ;;33261-0101-14
 ;;9002226.02101,"1921,33261-0101-20 ",.01)
 ;;33261-0101-20
 ;;9002226.02101,"1921,33261-0101-20 ",.02)
 ;;33261-0101-20
 ;;9002226.02101,"1921,33261-0101-21 ",.01)
 ;;33261-0101-21
 ;;9002226.02101,"1921,33261-0101-21 ",.02)
 ;;33261-0101-21
 ;;9002226.02101,"1921,33261-0101-28 ",.01)
 ;;33261-0101-28
 ;;9002226.02101,"1921,33261-0101-28 ",.02)
 ;;33261-0101-28
 ;;9002226.02101,"1921,33261-0101-30 ",.01)
 ;;33261-0101-30
 ;;9002226.02101,"1921,33261-0101-30 ",.02)
 ;;33261-0101-30
 ;;9002226.02101,"1921,33261-0101-40 ",.01)
 ;;33261-0101-40
 ;;9002226.02101,"1921,33261-0101-40 ",.02)
 ;;33261-0101-40
 ;;9002226.02101,"1921,33261-0101-60 ",.01)
 ;;33261-0101-60
 ;;9002226.02101,"1921,33261-0101-60 ",.02)
 ;;33261-0101-60
 ;;9002226.02101,"1921,33261-0101-90 ",.01)
 ;;33261-0101-90
 ;;9002226.02101,"1921,33261-0101-90 ",.02)
 ;;33261-0101-90
 ;;9002226.02101,"1921,33261-0102-02 ",.01)
 ;;33261-0102-02
 ;;9002226.02101,"1921,33261-0102-02 ",.02)
 ;;33261-0102-02
 ;;9002226.02101,"1921,33261-0102-07 ",.01)
 ;;33261-0102-07
 ;;9002226.02101,"1921,33261-0102-07 ",.02)
 ;;33261-0102-07
 ;;9002226.02101,"1921,33261-0102-14 ",.01)
 ;;33261-0102-14
 ;;9002226.02101,"1921,33261-0102-14 ",.02)
 ;;33261-0102-14
 ;;9002226.02101,"1921,33261-0102-20 ",.01)
 ;;33261-0102-20
 ;;9002226.02101,"1921,33261-0102-20 ",.02)
 ;;33261-0102-20
 ;;9002226.02101,"1921,33261-0102-21 ",.01)
 ;;33261-0102-21
 ;;9002226.02101,"1921,33261-0102-21 ",.02)
 ;;33261-0102-21
 ;;9002226.02101,"1921,33261-0102-28 ",.01)
 ;;33261-0102-28
 ;;9002226.02101,"1921,33261-0102-28 ",.02)
 ;;33261-0102-28
 ;;9002226.02101,"1921,33261-0102-30 ",.01)
 ;;33261-0102-30
 ;;9002226.02101,"1921,33261-0102-30 ",.02)
 ;;33261-0102-30
 ;;9002226.02101,"1921,33261-0102-40 ",.01)
 ;;33261-0102-40
 ;;9002226.02101,"1921,33261-0102-40 ",.02)
 ;;33261-0102-40
 ;;9002226.02101,"1921,33261-0102-60 ",.01)
 ;;33261-0102-60
 ;;9002226.02101,"1921,33261-0102-60 ",.02)
 ;;33261-0102-60
 ;;9002226.02101,"1921,33261-0102-82 ",.01)
 ;;33261-0102-82
 ;;9002226.02101,"1921,33261-0102-82 ",.02)
 ;;33261-0102-82
 ;;9002226.02101,"1921,33261-0102-90 ",.01)
 ;;33261-0102-90
 ;;9002226.02101,"1921,33261-0102-90 ",.02)
 ;;33261-0102-90
 ;;9002226.02101,"1921,33261-0108-14 ",.01)
 ;;33261-0108-14
 ;;9002226.02101,"1921,33261-0108-14 ",.02)
 ;;33261-0108-14
 ;;9002226.02101,"1921,33261-0108-30 ",.01)
 ;;33261-0108-30
 ;;9002226.02101,"1921,33261-0108-30 ",.02)
 ;;33261-0108-30
 ;;9002226.02101,"1921,33261-0108-60 ",.01)
 ;;33261-0108-60
 ;;9002226.02101,"1921,33261-0108-60 ",.02)
 ;;33261-0108-60
 ;;9002226.02101,"1921,33261-0108-90 ",.01)
 ;;33261-0108-90
 ;;9002226.02101,"1921,33261-0108-90 ",.02)
 ;;33261-0108-90
 ;;9002226.02101,"1921,33261-0882-00 ",.01)
 ;;33261-0882-00
 ;;9002226.02101,"1921,33261-0882-00 ",.02)
 ;;33261-0882-00
 ;;9002226.02101,"1921,33261-0882-30 ",.01)
 ;;33261-0882-30
 ;;9002226.02101,"1921,33261-0882-30 ",.02)
 ;;33261-0882-30
 ;;9002226.02101,"1921,33261-0882-60 ",.01)
 ;;33261-0882-60
 ;;9002226.02101,"1921,33261-0882-60 ",.02)
 ;;33261-0882-60
 ;;9002226.02101,"1921,33261-0882-90 ",.01)
 ;;33261-0882-90
 ;;9002226.02101,"1921,33261-0882-90 ",.02)
 ;;33261-0882-90
 ;;9002226.02101,"1921,33358-0146-30 ",.01)
 ;;33358-0146-30
 ;;9002226.02101,"1921,33358-0146-30 ",.02)
 ;;33358-0146-30
 ;;9002226.02101,"1921,33358-0146-60 ",.01)
 ;;33358-0146-60
 ;;9002226.02101,"1921,33358-0146-60 ",.02)
 ;;33358-0146-60
 ;;9002226.02101,"1921,33358-0147-30 ",.01)
 ;;33358-0147-30
 ;;9002226.02101,"1921,33358-0147-30 ",.02)
 ;;33358-0147-30
 ;;9002226.02101,"1921,33358-0147-60 ",.01)
 ;;33358-0147-60
 ;;9002226.02101,"1921,33358-0147-60 ",.02)
 ;;33358-0147-60
 ;;9002226.02101,"1921,33358-0332-20 ",.01)
 ;;33358-0332-20
 ;;9002226.02101,"1921,33358-0332-20 ",.02)
 ;;33358-0332-20
 ;;9002226.02101,"1921,33358-0332-30 ",.01)
 ;;33358-0332-30
 ;;9002226.02101,"1921,33358-0332-30 ",.02)
 ;;33358-0332-30
 ;;9002226.02101,"1921,33358-0332-60 ",.01)
 ;;33358-0332-60
 ;;9002226.02101,"1921,33358-0332-60 ",.02)
 ;;33358-0332-60
 ;;9002226.02101,"1921,33358-0333-00 ",.01)
 ;;33358-0333-00
 ;;9002226.02101,"1921,33358-0333-00 ",.02)
 ;;33358-0333-00
 ;;9002226.02101,"1921,33358-0333-30 ",.01)
 ;;33358-0333-30
 ;;9002226.02101,"1921,33358-0333-30 ",.02)
 ;;33358-0333-30
 ;;9002226.02101,"1921,33358-0333-60 ",.01)
 ;;33358-0333-60
 ;;9002226.02101,"1921,33358-0333-60 ",.02)
 ;;33358-0333-60
 ;;9002226.02101,"1921,33358-0333-90 ",.01)
 ;;33358-0333-90
 ;;9002226.02101,"1921,33358-0333-90 ",.02)
 ;;33358-0333-90
 ;;9002226.02101,"1921,33358-0350-10 ",.01)
 ;;33358-0350-10
 ;;9002226.02101,"1921,33358-0350-10 ",.02)
 ;;33358-0350-10
 ;;9002226.02101,"1921,33358-0350-15 ",.01)
 ;;33358-0350-15
 ;;9002226.02101,"1921,33358-0350-15 ",.02)
 ;;33358-0350-15
 ;;9002226.02101,"1921,33358-0350-30 ",.01)
 ;;33358-0350-30
 ;;9002226.02101,"1921,33358-0350-30 ",.02)
 ;;33358-0350-30
 ;;9002226.02101,"1921,33358-0350-60 ",.01)
 ;;33358-0350-60
 ;;9002226.02101,"1921,33358-0350-60 ",.02)
 ;;33358-0350-60
 ;;9002226.02101,"1921,35356-0430-30 ",.01)
 ;;35356-0430-30
 ;;9002226.02101,"1921,35356-0430-30 ",.02)
 ;;35356-0430-30
 ;;9002226.02101,"1921,35356-0657-30 ",.01)
 ;;35356-0657-30
 ;;9002226.02101,"1921,35356-0657-30 ",.02)
 ;;35356-0657-30
 ;;9002226.02101,"1921,35356-0663-15 ",.01)
 ;;35356-0663-15
 ;;9002226.02101,"1921,35356-0663-15 ",.02)
 ;;35356-0663-15
 ;;9002226.02101,"1921,35356-0664-15 ",.01)
 ;;35356-0664-15
 ;;9002226.02101,"1921,35356-0664-15 ",.02)
 ;;35356-0664-15
 ;;9002226.02101,"1921,35356-0664-30 ",.01)
 ;;35356-0664-30
 ;;9002226.02101,"1921,35356-0664-30 ",.02)
 ;;35356-0664-30
 ;;9002226.02101,"1921,35356-0664-60 ",.01)
 ;;35356-0664-60
 ;;9002226.02101,"1921,35356-0664-60 ",.02)
 ;;35356-0664-60
 ;;9002226.02101,"1921,35356-0664-90 ",.01)
 ;;35356-0664-90
 ;;9002226.02101,"1921,35356-0664-90 ",.02)
 ;;35356-0664-90
 ;;9002226.02101,"1921,35356-0821-30 ",.01)
 ;;35356-0821-30
 ;;9002226.02101,"1921,35356-0821-30 ",.02)
 ;;35356-0821-30
 ;;9002226.02101,"1921,42254-0432-30 ",.01)
 ;;42254-0432-30
 ;;9002226.02101,"1921,42254-0432-30 ",.02)
 ;;42254-0432-30
 ;;9002226.02101,"1921,42254-0432-60 ",.01)
 ;;42254-0432-60
 ;;9002226.02101,"1921,42254-0432-60 ",.02)
 ;;42254-0432-60
 ;;9002226.02101,"1921,42291-0797-01 ",.01)
 ;;42291-0797-01
 ;;9002226.02101,"1921,42291-0797-01 ",.02)
 ;;42291-0797-01
 ;;9002226.02101,"1921,42549-0547-30 ",.01)
 ;;42549-0547-30
 ;;9002226.02101,"1921,42549-0547-30 ",.02)
 ;;42549-0547-30
 ;;9002226.02101,"1921,42549-0561-30 ",.01)
 ;;42549-0561-30
 ;;9002226.02101,"1921,42549-0561-30 ",.02)
 ;;42549-0561-30
 ;;9002226.02101,"1921,42549-0651-30 ",.01)
 ;;42549-0651-30
 ;;9002226.02101,"1921,42549-0651-30 ",.02)
 ;;42549-0651-30
