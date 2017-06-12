BGP61D27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"875,67544-0012-53 ",.02)
 ;;67544-0012-53
 ;;9002226.02101,"875,67544-0012-60 ",.01)
 ;;67544-0012-60
 ;;9002226.02101,"875,67544-0012-60 ",.02)
 ;;67544-0012-60
 ;;9002226.02101,"875,67544-0012-70 ",.01)
 ;;67544-0012-70
 ;;9002226.02101,"875,67544-0012-70 ",.02)
 ;;67544-0012-70
 ;;9002226.02101,"875,67544-0180-30 ",.01)
 ;;67544-0180-30
 ;;9002226.02101,"875,67544-0180-30 ",.02)
 ;;67544-0180-30
 ;;9002226.02101,"875,67544-0180-45 ",.01)
 ;;67544-0180-45
 ;;9002226.02101,"875,67544-0180-45 ",.02)
 ;;67544-0180-45
 ;;9002226.02101,"875,67544-0180-53 ",.01)
 ;;67544-0180-53
 ;;9002226.02101,"875,67544-0180-53 ",.02)
 ;;67544-0180-53
 ;;9002226.02101,"875,67544-0180-60 ",.01)
 ;;67544-0180-60
 ;;9002226.02101,"875,67544-0180-60 ",.02)
 ;;67544-0180-60
 ;;9002226.02101,"875,67544-0180-70 ",.01)
 ;;67544-0180-70
 ;;9002226.02101,"875,67544-0180-70 ",.02)
 ;;67544-0180-70
 ;;9002226.02101,"875,67544-0180-80 ",.01)
 ;;67544-0180-80
 ;;9002226.02101,"875,67544-0180-80 ",.02)
 ;;67544-0180-80
 ;;9002226.02101,"875,67544-0180-92 ",.01)
 ;;67544-0180-92
 ;;9002226.02101,"875,67544-0180-92 ",.02)
 ;;67544-0180-92
 ;;9002226.02101,"875,67544-0251-15 ",.01)
 ;;67544-0251-15
 ;;9002226.02101,"875,67544-0251-15 ",.02)
 ;;67544-0251-15
 ;;9002226.02101,"875,67544-0251-30 ",.01)
 ;;67544-0251-30
 ;;9002226.02101,"875,67544-0251-30 ",.02)
 ;;67544-0251-30
 ;;9002226.02101,"875,67544-0251-45 ",.01)
 ;;67544-0251-45
 ;;9002226.02101,"875,67544-0251-45 ",.02)
 ;;67544-0251-45
 ;;9002226.02101,"875,67544-0251-53 ",.01)
 ;;67544-0251-53
 ;;9002226.02101,"875,67544-0251-53 ",.02)
 ;;67544-0251-53
 ;;9002226.02101,"875,67544-0251-60 ",.01)
 ;;67544-0251-60
 ;;9002226.02101,"875,67544-0251-60 ",.02)
 ;;67544-0251-60
 ;;9002226.02101,"875,67544-0251-70 ",.01)
 ;;67544-0251-70
 ;;9002226.02101,"875,67544-0251-70 ",.02)
 ;;67544-0251-70
 ;;9002226.02101,"875,67544-0251-80 ",.01)
 ;;67544-0251-80
 ;;9002226.02101,"875,67544-0251-80 ",.02)
 ;;67544-0251-80
 ;;9002226.02101,"875,67544-0251-92 ",.01)
 ;;67544-0251-92
 ;;9002226.02101,"875,67544-0251-92 ",.02)
 ;;67544-0251-92
 ;;9002226.02101,"875,67544-0283-30 ",.01)
 ;;67544-0283-30
 ;;9002226.02101,"875,67544-0283-30 ",.02)
 ;;67544-0283-30
 ;;9002226.02101,"875,67544-0283-53 ",.01)
 ;;67544-0283-53
 ;;9002226.02101,"875,67544-0283-53 ",.02)
 ;;67544-0283-53
 ;;9002226.02101,"875,67544-0283-60 ",.01)
 ;;67544-0283-60
 ;;9002226.02101,"875,67544-0283-60 ",.02)
 ;;67544-0283-60
 ;;9002226.02101,"875,67544-0283-70 ",.01)
 ;;67544-0283-70
 ;;9002226.02101,"875,67544-0283-70 ",.02)
 ;;67544-0283-70
 ;;9002226.02101,"875,67544-0662-53 ",.01)
 ;;67544-0662-53
 ;;9002226.02101,"875,67544-0662-53 ",.02)
 ;;67544-0662-53
 ;;9002226.02101,"875,67544-0662-60 ",.01)
 ;;67544-0662-60
 ;;9002226.02101,"875,67544-0662-60 ",.02)
 ;;67544-0662-60
 ;;9002226.02101,"875,67544-0662-70 ",.01)
 ;;67544-0662-70
 ;;9002226.02101,"875,67544-0662-70 ",.02)
 ;;67544-0662-70
 ;;9002226.02101,"875,67544-0662-80 ",.01)
 ;;67544-0662-80
 ;;9002226.02101,"875,67544-0662-80 ",.02)
 ;;67544-0662-80
 ;;9002226.02101,"875,67544-0747-30 ",.01)
 ;;67544-0747-30
 ;;9002226.02101,"875,67544-0747-30 ",.02)
 ;;67544-0747-30
 ;;9002226.02101,"875,67544-0747-53 ",.01)
 ;;67544-0747-53
 ;;9002226.02101,"875,67544-0747-53 ",.02)
 ;;67544-0747-53
 ;;9002226.02101,"875,67544-0747-60 ",.01)
 ;;67544-0747-60
 ;;9002226.02101,"875,67544-0747-60 ",.02)
 ;;67544-0747-60
 ;;9002226.02101,"875,67544-0747-70 ",.01)
 ;;67544-0747-70
 ;;9002226.02101,"875,67544-0747-70 ",.02)
 ;;67544-0747-70
 ;;9002226.02101,"875,67544-0747-80 ",.01)
 ;;67544-0747-80
 ;;9002226.02101,"875,67544-0747-80 ",.02)
 ;;67544-0747-80
 ;;9002226.02101,"875,67544-0747-90 ",.01)
 ;;67544-0747-90
 ;;9002226.02101,"875,67544-0747-90 ",.02)
 ;;67544-0747-90
 ;;9002226.02101,"875,67544-0747-92 ",.01)
 ;;67544-0747-92
 ;;9002226.02101,"875,67544-0747-92 ",.02)
 ;;67544-0747-92
 ;;9002226.02101,"875,68001-0004-00 ",.01)
 ;;68001-0004-00
 ;;9002226.02101,"875,68001-0004-00 ",.02)
 ;;68001-0004-00
 ;;9002226.02101,"875,68001-0004-01 ",.01)
 ;;68001-0004-01
 ;;9002226.02101,"875,68001-0004-01 ",.02)
 ;;68001-0004-01
 ;;9002226.02101,"875,68025-0046-10 ",.01)
 ;;68025-0046-10
 ;;9002226.02101,"875,68025-0046-10 ",.02)
 ;;68025-0046-10
 ;;9002226.02101,"875,68025-0047-10 ",.01)
 ;;68025-0047-10
 ;;9002226.02101,"875,68025-0047-10 ",.02)
 ;;68025-0047-10
 ;;9002226.02101,"875,68071-0462-14 ",.01)
 ;;68071-0462-14
 ;;9002226.02101,"875,68071-0462-14 ",.02)
 ;;68071-0462-14
 ;;9002226.02101,"875,68071-0462-30 ",.01)
 ;;68071-0462-30
 ;;9002226.02101,"875,68071-0462-30 ",.02)
 ;;68071-0462-30
 ;;9002226.02101,"875,68071-0462-60 ",.01)
 ;;68071-0462-60
 ;;9002226.02101,"875,68071-0462-60 ",.02)
 ;;68071-0462-60
 ;;9002226.02101,"875,68071-0462-90 ",.01)
 ;;68071-0462-90
 ;;9002226.02101,"875,68071-0462-90 ",.02)
 ;;68071-0462-90
 ;;9002226.02101,"875,68071-0610-40 ",.01)
 ;;68071-0610-40
 ;;9002226.02101,"875,68071-0610-40 ",.02)
 ;;68071-0610-40
 ;;9002226.02101,"875,68071-0827-30 ",.01)
 ;;68071-0827-30
 ;;9002226.02101,"875,68071-0827-30 ",.02)
 ;;68071-0827-30
 ;;9002226.02101,"875,68071-0827-60 ",.01)
 ;;68071-0827-60
 ;;9002226.02101,"875,68071-0827-60 ",.02)
 ;;68071-0827-60
 ;;9002226.02101,"875,68071-0885-30 ",.01)
 ;;68071-0885-30
 ;;9002226.02101,"875,68071-0885-30 ",.02)
 ;;68071-0885-30
 ;;9002226.02101,"875,68071-0885-60 ",.01)
 ;;68071-0885-60
 ;;9002226.02101,"875,68071-0885-60 ",.02)
 ;;68071-0885-60
 ;;9002226.02101,"875,68071-0885-90 ",.01)
 ;;68071-0885-90
 ;;9002226.02101,"875,68071-0885-90 ",.02)
 ;;68071-0885-90
 ;;9002226.02101,"875,68071-1352-00 ",.01)
 ;;68071-1352-00
 ;;9002226.02101,"875,68071-1352-00 ",.02)
 ;;68071-1352-00
 ;;9002226.02101,"875,68071-2004-06 ",.01)
 ;;68071-2004-06
 ;;9002226.02101,"875,68071-2004-06 ",.02)
 ;;68071-2004-06
 ;;9002226.02101,"875,68084-0056-01 ",.01)
 ;;68084-0056-01
 ;;9002226.02101,"875,68084-0056-01 ",.02)
 ;;68084-0056-01
 ;;9002226.02101,"875,68084-0056-11 ",.01)
 ;;68084-0056-11
 ;;9002226.02101,"875,68084-0056-11 ",.02)
 ;;68084-0056-11
 ;;9002226.02101,"875,68084-0057-01 ",.01)
 ;;68084-0057-01
 ;;9002226.02101,"875,68084-0057-01 ",.02)
 ;;68084-0057-01
 ;;9002226.02101,"875,68084-0057-11 ",.01)
 ;;68084-0057-11
 ;;9002226.02101,"875,68084-0057-11 ",.02)
 ;;68084-0057-11
 ;;9002226.02101,"875,68084-0135-11 ",.01)
 ;;68084-0135-11
 ;;9002226.02101,"875,68084-0135-11 ",.02)
 ;;68084-0135-11
 ;;9002226.02101,"875,68084-0135-21 ",.01)
 ;;68084-0135-21
 ;;9002226.02101,"875,68084-0135-21 ",.02)
 ;;68084-0135-21
 ;;9002226.02101,"875,68084-0380-01 ",.01)
 ;;68084-0380-01
 ;;9002226.02101,"875,68084-0380-01 ",.02)
 ;;68084-0380-01
 ;;9002226.02101,"875,68084-0380-11 ",.01)
 ;;68084-0380-11
 ;;9002226.02101,"875,68084-0380-11 ",.02)
 ;;68084-0380-11
 ;;9002226.02101,"875,68084-0397-01 ",.01)
 ;;68084-0397-01
 ;;9002226.02101,"875,68084-0397-01 ",.02)
 ;;68084-0397-01
 ;;9002226.02101,"875,68084-0397-11 ",.01)
 ;;68084-0397-11
 ;;9002226.02101,"875,68084-0397-11 ",.02)
 ;;68084-0397-11
 ;;9002226.02101,"875,68084-0585-01 ",.01)
 ;;68084-0585-01
 ;;9002226.02101,"875,68084-0585-01 ",.02)
 ;;68084-0585-01
 ;;9002226.02101,"875,68084-0585-11 ",.01)
 ;;68084-0585-11
 ;;9002226.02101,"875,68084-0585-11 ",.02)
 ;;68084-0585-11
 ;;9002226.02101,"875,68084-0586-01 ",.01)
 ;;68084-0586-01
 ;;9002226.02101,"875,68084-0586-01 ",.02)
 ;;68084-0586-01
 ;;9002226.02101,"875,68084-0586-11 ",.01)
 ;;68084-0586-11
 ;;9002226.02101,"875,68084-0586-11 ",.02)
 ;;68084-0586-11
 ;;9002226.02101,"875,68084-0753-11 ",.01)
 ;;68084-0753-11
 ;;9002226.02101,"875,68084-0753-11 ",.02)
 ;;68084-0753-11
 ;;9002226.02101,"875,68084-0753-21 ",.01)
 ;;68084-0753-21
 ;;9002226.02101,"875,68084-0753-21 ",.02)
 ;;68084-0753-21
 ;;9002226.02101,"875,68084-0820-25 ",.01)
 ;;68084-0820-25
 ;;9002226.02101,"875,68084-0820-25 ",.02)
 ;;68084-0820-25
 ;;9002226.02101,"875,68084-0820-95 ",.01)
 ;;68084-0820-95
 ;;9002226.02101,"875,68084-0820-95 ",.02)
 ;;68084-0820-95
 ;;9002226.02101,"875,68258-7013-01 ",.01)
 ;;68258-7013-01
 ;;9002226.02101,"875,68258-7013-01 ",.02)
 ;;68258-7013-01
 ;;9002226.02101,"875,68258-7013-02 ",.01)
 ;;68258-7013-02
 ;;9002226.02101,"875,68258-7013-02 ",.02)
 ;;68258-7013-02
 ;;9002226.02101,"875,68258-7013-03 ",.01)
 ;;68258-7013-03
 ;;9002226.02101,"875,68258-7013-03 ",.02)
 ;;68258-7013-03
 ;;9002226.02101,"875,68258-7013-06 ",.01)
 ;;68258-7013-06
 ;;9002226.02101,"875,68258-7013-06 ",.02)
 ;;68258-7013-06
 ;;9002226.02101,"875,68258-7013-08 ",.01)
 ;;68258-7013-08
 ;;9002226.02101,"875,68258-7013-08 ",.02)
 ;;68258-7013-08
 ;;9002226.02101,"875,68258-7013-09 ",.01)
 ;;68258-7013-09
 ;;9002226.02101,"875,68258-7013-09 ",.02)
 ;;68258-7013-09
 ;;9002226.02101,"875,68258-7019-09 ",.01)
 ;;68258-7019-09
 ;;9002226.02101,"875,68258-7019-09 ",.02)
 ;;68258-7019-09
 ;;9002226.02101,"875,68258-7061-05 ",.01)
 ;;68258-7061-05
 ;;9002226.02101,"875,68258-7061-05 ",.02)
 ;;68258-7061-05
 ;;9002226.02101,"875,68258-7100-01 ",.01)
 ;;68258-7100-01
 ;;9002226.02101,"875,68258-7100-01 ",.02)
 ;;68258-7100-01
 ;;9002226.02101,"875,68258-7100-02 ",.01)
 ;;68258-7100-02
 ;;9002226.02101,"875,68258-7100-02 ",.02)
 ;;68258-7100-02
 ;;9002226.02101,"875,68258-7100-03 ",.01)
 ;;68258-7100-03
 ;;9002226.02101,"875,68258-7100-03 ",.02)
 ;;68258-7100-03
 ;;9002226.02101,"875,68258-7100-06 ",.01)
 ;;68258-7100-06
 ;;9002226.02101,"875,68258-7100-06 ",.02)
 ;;68258-7100-06
 ;;9002226.02101,"875,68258-7100-09 ",.01)
 ;;68258-7100-09
 ;;9002226.02101,"875,68258-7100-09 ",.02)
 ;;68258-7100-09
 ;;9002226.02101,"875,68258-7150-03 ",.01)
 ;;68258-7150-03
 ;;9002226.02101,"875,68258-7150-03 ",.02)
 ;;68258-7150-03
 ;;9002226.02101,"875,68258-7150-06 ",.01)
 ;;68258-7150-06
 ;;9002226.02101,"875,68258-7150-06 ",.02)
 ;;68258-7150-06
 ;;9002226.02101,"875,68258-7150-09 ",.01)
 ;;68258-7150-09
 ;;9002226.02101,"875,68258-7150-09 ",.02)
 ;;68258-7150-09
 ;;9002226.02101,"875,68387-0108-30 ",.01)
 ;;68387-0108-30
 ;;9002226.02101,"875,68387-0108-30 ",.02)
 ;;68387-0108-30
 ;;9002226.02101,"875,68387-0108-60 ",.01)
 ;;68387-0108-60
 ;;9002226.02101,"875,68387-0108-60 ",.02)
 ;;68387-0108-60
 ;;9002226.02101,"875,68387-0108-90 ",.01)
 ;;68387-0108-90
 ;;9002226.02101,"875,68387-0108-90 ",.02)
 ;;68387-0108-90
 ;;9002226.02101,"875,68387-0340-24 ",.01)
 ;;68387-0340-24
 ;;9002226.02101,"875,68387-0340-24 ",.02)
 ;;68387-0340-24
 ;;9002226.02101,"875,68387-0340-30 ",.01)
 ;;68387-0340-30
 ;;9002226.02101,"875,68387-0340-30 ",.02)
 ;;68387-0340-30
 ;;9002226.02101,"875,68387-0340-45 ",.01)
 ;;68387-0340-45
 ;;9002226.02101,"875,68387-0340-45 ",.02)
 ;;68387-0340-45
 ;;9002226.02101,"875,68387-0340-60 ",.01)
 ;;68387-0340-60
 ;;9002226.02101,"875,68387-0340-60 ",.02)
 ;;68387-0340-60
 ;;9002226.02101,"875,68387-0340-90 ",.01)
 ;;68387-0340-90
 ;;9002226.02101,"875,68387-0340-90 ",.02)
 ;;68387-0340-90
 ;;9002226.02101,"875,68387-0342-60 ",.01)
 ;;68387-0342-60
 ;;9002226.02101,"875,68387-0342-60 ",.02)
 ;;68387-0342-60
 ;;9002226.02101,"875,68387-0375-30 ",.01)
 ;;68387-0375-30
 ;;9002226.02101,"875,68387-0375-30 ",.02)
 ;;68387-0375-30
 ;;9002226.02101,"875,68387-0375-90 ",.01)
 ;;68387-0375-90
 ;;9002226.02101,"875,68387-0375-90 ",.02)
 ;;68387-0375-90
 ;;9002226.02101,"875,68387-0500-10 ",.01)
 ;;68387-0500-10
 ;;9002226.02101,"875,68387-0500-10 ",.02)
 ;;68387-0500-10
 ;;9002226.02101,"875,68387-0500-12 ",.01)
 ;;68387-0500-12
 ;;9002226.02101,"875,68387-0500-12 ",.02)
 ;;68387-0500-12
 ;;9002226.02101,"875,68387-0500-15 ",.01)
 ;;68387-0500-15
 ;;9002226.02101,"875,68387-0500-15 ",.02)
 ;;68387-0500-15
 ;;9002226.02101,"875,68387-0500-30 ",.01)
 ;;68387-0500-30
 ;;9002226.02101,"875,68387-0500-30 ",.02)
 ;;68387-0500-30
 ;;9002226.02101,"875,68387-0500-45 ",.01)
 ;;68387-0500-45
 ;;9002226.02101,"875,68387-0500-45 ",.02)
 ;;68387-0500-45
 ;;9002226.02101,"875,68387-0500-60 ",.01)
 ;;68387-0500-60
 ;;9002226.02101,"875,68387-0500-60 ",.02)
 ;;68387-0500-60
 ;;9002226.02101,"875,68387-0500-90 ",.01)
 ;;68387-0500-90
 ;;9002226.02101,"875,68387-0500-90 ",.02)
 ;;68387-0500-90
 ;;9002226.02101,"875,68387-0502-90 ",.01)
 ;;68387-0502-90
 ;;9002226.02101,"875,68387-0502-90 ",.02)
 ;;68387-0502-90
 ;;9002226.02101,"875,68387-0575-14 ",.01)
 ;;68387-0575-14
 ;;9002226.02101,"875,68387-0575-14 ",.02)
 ;;68387-0575-14
 ;;9002226.02101,"875,68387-0575-60 ",.01)
 ;;68387-0575-60
 ;;9002226.02101,"875,68387-0575-60 ",.02)
 ;;68387-0575-60
