BGP13X25 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1100,24658-0241-45 ",.01)
 ;;24658-0241-45
 ;;9002226.02101,"1100,24658-0241-45 ",.02)
 ;;24658-0241-45
 ;;9002226.02101,"1100,24658-0241-90 ",.01)
 ;;24658-0241-90
 ;;9002226.02101,"1100,24658-0241-90 ",.02)
 ;;24658-0241-90
 ;;9002226.02101,"1100,24658-0242-10 ",.01)
 ;;24658-0242-10
 ;;9002226.02101,"1100,24658-0242-10 ",.02)
 ;;24658-0242-10
 ;;9002226.02101,"1100,24658-0242-15 ",.01)
 ;;24658-0242-15
 ;;9002226.02101,"1100,24658-0242-15 ",.02)
 ;;24658-0242-15
 ;;9002226.02101,"1100,24658-0242-18 ",.01)
 ;;24658-0242-18
 ;;9002226.02101,"1100,24658-0242-18 ",.02)
 ;;24658-0242-18
 ;;9002226.02101,"1100,24658-0242-30 ",.01)
 ;;24658-0242-30
 ;;9002226.02101,"1100,24658-0242-30 ",.02)
 ;;24658-0242-30
 ;;9002226.02101,"1100,24658-0242-45 ",.01)
 ;;24658-0242-45
 ;;9002226.02101,"1100,24658-0242-45 ",.02)
 ;;24658-0242-45
 ;;9002226.02101,"1100,24658-0242-90 ",.01)
 ;;24658-0242-90
 ;;9002226.02101,"1100,24658-0242-90 ",.02)
 ;;24658-0242-90
 ;;9002226.02101,"1100,24658-0243-10 ",.01)
 ;;24658-0243-10
 ;;9002226.02101,"1100,24658-0243-10 ",.02)
 ;;24658-0243-10
 ;;9002226.02101,"1100,24658-0243-15 ",.01)
 ;;24658-0243-15
 ;;9002226.02101,"1100,24658-0243-15 ",.02)
 ;;24658-0243-15
 ;;9002226.02101,"1100,24658-0243-18 ",.01)
 ;;24658-0243-18
 ;;9002226.02101,"1100,24658-0243-18 ",.02)
 ;;24658-0243-18
 ;;9002226.02101,"1100,24658-0243-30 ",.01)
 ;;24658-0243-30
 ;;9002226.02101,"1100,24658-0243-30 ",.02)
 ;;24658-0243-30
 ;;9002226.02101,"1100,24658-0243-45 ",.01)
 ;;24658-0243-45
 ;;9002226.02101,"1100,24658-0243-45 ",.02)
 ;;24658-0243-45
 ;;9002226.02101,"1100,24658-0243-90 ",.01)
 ;;24658-0243-90
 ;;9002226.02101,"1100,24658-0243-90 ",.02)
 ;;24658-0243-90
 ;;9002226.02101,"1100,24658-0244-01 ",.01)
 ;;24658-0244-01
 ;;9002226.02101,"1100,24658-0244-01 ",.02)
 ;;24658-0244-01
 ;;9002226.02101,"1100,24658-0244-10 ",.01)
 ;;24658-0244-10
 ;;9002226.02101,"1100,24658-0244-10 ",.02)
 ;;24658-0244-10
 ;;9002226.02101,"1100,24658-0245-10 ",.01)
 ;;24658-0245-10
 ;;9002226.02101,"1100,24658-0245-10 ",.02)
 ;;24658-0245-10
 ;;9002226.02101,"1100,24658-0245-15 ",.01)
 ;;24658-0245-15
 ;;9002226.02101,"1100,24658-0245-15 ",.02)
 ;;24658-0245-15
 ;;9002226.02101,"1100,24658-0245-18 ",.01)
 ;;24658-0245-18
 ;;9002226.02101,"1100,24658-0245-18 ",.02)
 ;;24658-0245-18
 ;;9002226.02101,"1100,24658-0245-30 ",.01)
 ;;24658-0245-30
 ;;9002226.02101,"1100,24658-0245-30 ",.02)
 ;;24658-0245-30
 ;;9002226.02101,"1100,24658-0245-45 ",.01)
 ;;24658-0245-45
 ;;9002226.02101,"1100,24658-0245-45 ",.02)
 ;;24658-0245-45
 ;;9002226.02101,"1100,24658-0245-60 ",.01)
 ;;24658-0245-60
 ;;9002226.02101,"1100,24658-0245-60 ",.02)
 ;;24658-0245-60
 ;;9002226.02101,"1100,24658-0245-90 ",.01)
 ;;24658-0245-90
 ;;9002226.02101,"1100,24658-0245-90 ",.02)
 ;;24658-0245-90
 ;;9002226.02101,"1100,31722-0200-10 ",.01)
 ;;31722-0200-10
 ;;9002226.02101,"1100,31722-0200-10 ",.02)
 ;;31722-0200-10
 ;;9002226.02101,"1100,31722-0200-90 ",.01)
 ;;31722-0200-90
 ;;9002226.02101,"1100,31722-0200-90 ",.02)
 ;;31722-0200-90
 ;;9002226.02101,"1100,31722-0201-10 ",.01)
 ;;31722-0201-10
 ;;9002226.02101,"1100,31722-0201-10 ",.02)
 ;;31722-0201-10
 ;;9002226.02101,"1100,31722-0201-90 ",.01)
 ;;31722-0201-90
 ;;9002226.02101,"1100,31722-0201-90 ",.02)
 ;;31722-0201-90
 ;;9002226.02101,"1100,31722-0202-10 ",.01)
 ;;31722-0202-10
 ;;9002226.02101,"1100,31722-0202-10 ",.02)
 ;;31722-0202-10
 ;;9002226.02101,"1100,31722-0202-90 ",.01)
 ;;31722-0202-90
 ;;9002226.02101,"1100,31722-0202-90 ",.02)
 ;;31722-0202-90
 ;;9002226.02101,"1100,31722-0271-01 ",.01)
 ;;31722-0271-01
 ;;9002226.02101,"1100,31722-0271-01 ",.02)
 ;;31722-0271-01
 ;;9002226.02101,"1100,31722-0272-01 ",.01)
 ;;31722-0272-01
 ;;9002226.02101,"1100,31722-0272-01 ",.02)
 ;;31722-0272-01
 ;;9002226.02101,"1100,31722-0272-10 ",.01)
 ;;31722-0272-10
 ;;9002226.02101,"1100,31722-0272-10 ",.02)
 ;;31722-0272-10
 ;;9002226.02101,"1100,31722-0273-01 ",.01)
 ;;31722-0273-01
 ;;9002226.02101,"1100,31722-0273-01 ",.02)
 ;;31722-0273-01
 ;;9002226.02101,"1100,31722-0273-10 ",.01)
 ;;31722-0273-10
 ;;9002226.02101,"1100,31722-0273-10 ",.02)
 ;;31722-0273-10
 ;;9002226.02101,"1100,31722-0274-01 ",.01)
 ;;31722-0274-01
 ;;9002226.02101,"1100,31722-0274-01 ",.02)
 ;;31722-0274-01
 ;;9002226.02101,"1100,31722-0274-10 ",.01)
 ;;31722-0274-10
 ;;9002226.02101,"1100,31722-0274-10 ",.02)
 ;;31722-0274-10
 ;;9002226.02101,"1100,33358-0047-30 ",.01)
 ;;33358-0047-30
 ;;9002226.02101,"1100,33358-0047-30 ",.02)
 ;;33358-0047-30
 ;;9002226.02101,"1100,33358-0048-30 ",.01)
 ;;33358-0048-30
 ;;9002226.02101,"1100,33358-0048-30 ",.02)
 ;;33358-0048-30
 ;;9002226.02101,"1100,33358-0049-30 ",.01)
 ;;33358-0049-30
 ;;9002226.02101,"1100,33358-0049-30 ",.02)
 ;;33358-0049-30
 ;;9002226.02101,"1100,33358-0050-30 ",.01)
 ;;33358-0050-30
 ;;9002226.02101,"1100,33358-0050-30 ",.02)
 ;;33358-0050-30
 ;;9002226.02101,"1100,33358-0126-30 ",.01)
 ;;33358-0126-30
 ;;9002226.02101,"1100,33358-0126-30 ",.02)
 ;;33358-0126-30
 ;;9002226.02101,"1100,33358-0127-30 ",.01)
 ;;33358-0127-30
 ;;9002226.02101,"1100,33358-0127-30 ",.02)
 ;;33358-0127-30
 ;;9002226.02101,"1100,33358-0127-60 ",.01)
 ;;33358-0127-60
 ;;9002226.02101,"1100,33358-0127-60 ",.02)
 ;;33358-0127-60
 ;;9002226.02101,"1100,33358-0128-30 ",.01)
 ;;33358-0128-30
 ;;9002226.02101,"1100,33358-0128-30 ",.02)
 ;;33358-0128-30
 ;;9002226.02101,"1100,33358-0128-60 ",.01)
 ;;33358-0128-60
 ;;9002226.02101,"1100,33358-0128-60 ",.02)
 ;;33358-0128-60
 ;;9002226.02101,"1100,33358-0211-30 ",.01)
 ;;33358-0211-30
 ;;9002226.02101,"1100,33358-0211-30 ",.02)
 ;;33358-0211-30
 ;;9002226.02101,"1100,33358-0212-30 ",.01)
 ;;33358-0212-30
 ;;9002226.02101,"1100,33358-0212-30 ",.02)
 ;;33358-0212-30
 ;;9002226.02101,"1100,33358-0213-30 ",.01)
 ;;33358-0213-30
 ;;9002226.02101,"1100,33358-0213-30 ",.02)
 ;;33358-0213-30
 ;;9002226.02101,"1100,33358-0214-30 ",.01)
 ;;33358-0214-30
 ;;9002226.02101,"1100,33358-0214-30 ",.02)
 ;;33358-0214-30
 ;;9002226.02101,"1100,33358-0214-60 ",.01)
 ;;33358-0214-60
 ;;9002226.02101,"1100,33358-0214-60 ",.02)
 ;;33358-0214-60
 ;;9002226.02101,"1100,33358-0222-00 ",.01)
 ;;33358-0222-00
 ;;9002226.02101,"1100,33358-0222-00 ",.02)
 ;;33358-0222-00
 ;;9002226.02101,"1100,35356-0060-30 ",.01)
 ;;35356-0060-30
 ;;9002226.02101,"1100,35356-0060-30 ",.02)
 ;;35356-0060-30
 ;;9002226.02101,"1100,35356-0101-90 ",.01)
 ;;35356-0101-90
 ;;9002226.02101,"1100,35356-0101-90 ",.02)
 ;;35356-0101-90
 ;;9002226.02101,"1100,35356-0131-30 ",.01)
 ;;35356-0131-30
 ;;9002226.02101,"1100,35356-0131-30 ",.02)
 ;;35356-0131-30
 ;;9002226.02101,"1100,35356-0216-30 ",.01)
 ;;35356-0216-30
 ;;9002226.02101,"1100,35356-0216-30 ",.02)
 ;;35356-0216-30
 ;;9002226.02101,"1100,35356-0216-90 ",.01)
 ;;35356-0216-90
 ;;9002226.02101,"1100,35356-0216-90 ",.02)
 ;;35356-0216-90
 ;;9002226.02101,"1100,35356-0256-30 ",.01)
 ;;35356-0256-30
 ;;9002226.02101,"1100,35356-0256-30 ",.02)
 ;;35356-0256-30
 ;;9002226.02101,"1100,35356-0256-90 ",.01)
 ;;35356-0256-90
 ;;9002226.02101,"1100,35356-0256-90 ",.02)
 ;;35356-0256-90
 ;;9002226.02101,"1100,35356-0257-30 ",.01)
 ;;35356-0257-30
 ;;9002226.02101,"1100,35356-0257-30 ",.02)
 ;;35356-0257-30
 ;;9002226.02101,"1100,35356-0257-90 ",.01)
 ;;35356-0257-90
 ;;9002226.02101,"1100,35356-0257-90 ",.02)
 ;;35356-0257-90
 ;;9002226.02101,"1100,35356-0258-30 ",.01)
 ;;35356-0258-30
 ;;9002226.02101,"1100,35356-0258-30 ",.02)
 ;;35356-0258-30
 ;;9002226.02101,"1100,35356-0258-90 ",.01)
 ;;35356-0258-90
 ;;9002226.02101,"1100,35356-0258-90 ",.02)
 ;;35356-0258-90
 ;;9002226.02101,"1100,35356-0268-30 ",.01)
 ;;35356-0268-30
 ;;9002226.02101,"1100,35356-0268-30 ",.02)
 ;;35356-0268-30
 ;;9002226.02101,"1100,35356-0287-20 ",.01)
 ;;35356-0287-20
 ;;9002226.02101,"1100,35356-0287-20 ",.02)
 ;;35356-0287-20
 ;;9002226.02101,"1100,35356-0287-30 ",.01)
 ;;35356-0287-30
 ;;9002226.02101,"1100,35356-0287-30 ",.02)
 ;;35356-0287-30
 ;;9002226.02101,"1100,35356-0288-40 ",.01)
 ;;35356-0288-40
 ;;9002226.02101,"1100,35356-0288-40 ",.02)
 ;;35356-0288-40
 ;;9002226.02101,"1100,35356-0289-40 ",.01)
 ;;35356-0289-40
 ;;9002226.02101,"1100,35356-0289-40 ",.02)
 ;;35356-0289-40
 ;;9002226.02101,"1100,35356-0293-90 ",.01)
 ;;35356-0293-90
 ;;9002226.02101,"1100,35356-0293-90 ",.02)
 ;;35356-0293-90
 ;;9002226.02101,"1100,35356-0294-90 ",.01)
 ;;35356-0294-90
 ;;9002226.02101,"1100,35356-0294-90 ",.02)
 ;;35356-0294-90
 ;;9002226.02101,"1100,35356-0295-30 ",.01)
 ;;35356-0295-30
 ;;9002226.02101,"1100,35356-0295-30 ",.02)
 ;;35356-0295-30
 ;;9002226.02101,"1100,35356-0296-30 ",.01)
 ;;35356-0296-30
 ;;9002226.02101,"1100,35356-0296-30 ",.02)
 ;;35356-0296-30
 ;;9002226.02101,"1100,35356-0297-30 ",.01)
 ;;35356-0297-30
 ;;9002226.02101,"1100,35356-0297-30 ",.02)
 ;;35356-0297-30
 ;;9002226.02101,"1100,35356-0298-30 ",.01)
 ;;35356-0298-30
 ;;9002226.02101,"1100,35356-0298-30 ",.02)
 ;;35356-0298-30
 ;;9002226.02101,"1100,35356-0299-30 ",.01)
 ;;35356-0299-30
 ;;9002226.02101,"1100,35356-0299-30 ",.02)
 ;;35356-0299-30
 ;;9002226.02101,"1100,35356-0300-30 ",.01)
 ;;35356-0300-30
 ;;9002226.02101,"1100,35356-0300-30 ",.02)
 ;;35356-0300-30
 ;;9002226.02101,"1100,35356-0373-90 ",.01)
 ;;35356-0373-90
 ;;9002226.02101,"1100,35356-0373-90 ",.02)
 ;;35356-0373-90
 ;;9002226.02101,"1100,35356-0374-15 ",.01)
 ;;35356-0374-15
 ;;9002226.02101,"1100,35356-0374-15 ",.02)
 ;;35356-0374-15
 ;;9002226.02101,"1100,35356-0374-30 ",.01)
 ;;35356-0374-30
 ;;9002226.02101,"1100,35356-0374-30 ",.02)
 ;;35356-0374-30
 ;;9002226.02101,"1100,35356-0406-30 ",.01)
 ;;35356-0406-30
 ;;9002226.02101,"1100,35356-0406-30 ",.02)
 ;;35356-0406-30
 ;;9002226.02101,"1100,35356-0407-30 ",.01)
 ;;35356-0407-30
 ;;9002226.02101,"1100,35356-0407-30 ",.02)
 ;;35356-0407-30
 ;;9002226.02101,"1100,35356-0416-10 ",.01)
 ;;35356-0416-10
 ;;9002226.02101,"1100,35356-0416-10 ",.02)
 ;;35356-0416-10
 ;;9002226.02101,"1100,35356-0416-20 ",.01)
 ;;35356-0416-20
 ;;9002226.02101,"1100,35356-0416-20 ",.02)
 ;;35356-0416-20
 ;;9002226.02101,"1100,35356-0416-30 ",.01)
 ;;35356-0416-30
 ;;9002226.02101,"1100,35356-0416-30 ",.02)
 ;;35356-0416-30
 ;;9002226.02101,"1100,35356-0427-30 ",.01)
 ;;35356-0427-30
 ;;9002226.02101,"1100,35356-0427-30 ",.02)
 ;;35356-0427-30
 ;;9002226.02101,"1100,35356-0428-30 ",.01)
 ;;35356-0428-30
 ;;9002226.02101,"1100,35356-0428-30 ",.02)
 ;;35356-0428-30
 ;;9002226.02101,"1100,35356-0432-30 ",.01)
 ;;35356-0432-30
 ;;9002226.02101,"1100,35356-0432-30 ",.02)
 ;;35356-0432-30
 ;;9002226.02101,"1100,35356-0541-30 ",.01)
 ;;35356-0541-30
 ;;9002226.02101,"1100,35356-0541-30 ",.02)
 ;;35356-0541-30
 ;;9002226.02101,"1100,35356-0587-30 ",.01)
 ;;35356-0587-30
 ;;9002226.02101,"1100,35356-0587-30 ",.02)
 ;;35356-0587-30
 ;;9002226.02101,"1100,35356-0587-60 ",.01)
 ;;35356-0587-60
 ;;9002226.02101,"1100,35356-0587-60 ",.02)
 ;;35356-0587-60
 ;;9002226.02101,"1100,35356-0587-90 ",.01)
 ;;35356-0587-90
 ;;9002226.02101,"1100,35356-0587-90 ",.02)
 ;;35356-0587-90
 ;;9002226.02101,"1100,43063-0007-01 ",.01)
 ;;43063-0007-01
 ;;9002226.02101,"1100,43063-0007-01 ",.02)
 ;;43063-0007-01
 ;;9002226.02101,"1100,43063-0032-01 ",.01)
 ;;43063-0032-01
 ;;9002226.02101,"1100,43063-0032-01 ",.02)
 ;;43063-0032-01
 ;;9002226.02101,"1100,43063-0065-30 ",.01)
 ;;43063-0065-30
 ;;9002226.02101,"1100,43063-0065-30 ",.02)
 ;;43063-0065-30
 ;;9002226.02101,"1100,43063-0065-90 ",.01)
 ;;43063-0065-90
 ;;9002226.02101,"1100,43063-0065-90 ",.02)
 ;;43063-0065-90
 ;;9002226.02101,"1100,43063-0118-30 ",.01)
 ;;43063-0118-30
 ;;9002226.02101,"1100,43063-0118-30 ",.02)
 ;;43063-0118-30
 ;;9002226.02101,"1100,43063-0118-90 ",.01)
 ;;43063-0118-90
 ;;9002226.02101,"1100,43063-0118-90 ",.02)
 ;;43063-0118-90
 ;;9002226.02101,"1100,43063-0130-90 ",.01)
 ;;43063-0130-90
 ;;9002226.02101,"1100,43063-0130-90 ",.02)
 ;;43063-0130-90
 ;;9002226.02101,"1100,43063-0131-30 ",.01)
 ;;43063-0131-30
 ;;9002226.02101,"1100,43063-0131-30 ",.02)
 ;;43063-0131-30
 ;;9002226.02101,"1100,43063-0132-30 ",.01)
 ;;43063-0132-30
 ;;9002226.02101,"1100,43063-0132-30 ",.02)
 ;;43063-0132-30
 ;;9002226.02101,"1100,43063-0138-90 ",.01)
 ;;43063-0138-90
 ;;9002226.02101,"1100,43063-0138-90 ",.02)
 ;;43063-0138-90
 ;;9002226.02101,"1100,43063-0146-30 ",.01)
 ;;43063-0146-30
 ;;9002226.02101,"1100,43063-0146-30 ",.02)
 ;;43063-0146-30
 ;;9002226.02101,"1100,43063-0171-14 ",.01)
 ;;43063-0171-14
 ;;9002226.02101,"1100,43063-0171-14 ",.02)
 ;;43063-0171-14