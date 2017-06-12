BGP61E29 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,68001-0122-00 ",.02)
 ;;68001-0122-00
 ;;9002226.02101,"1218,68001-0122-03 ",.01)
 ;;68001-0122-03
 ;;9002226.02101,"1218,68001-0122-03 ",.02)
 ;;68001-0122-03
 ;;9002226.02101,"1218,68001-0151-00 ",.01)
 ;;68001-0151-00
 ;;9002226.02101,"1218,68001-0151-00 ",.02)
 ;;68001-0151-00
 ;;9002226.02101,"1218,68001-0151-03 ",.01)
 ;;68001-0151-03
 ;;9002226.02101,"1218,68001-0151-03 ",.02)
 ;;68001-0151-03
 ;;9002226.02101,"1218,68001-0152-00 ",.01)
 ;;68001-0152-00
 ;;9002226.02101,"1218,68001-0152-00 ",.02)
 ;;68001-0152-00
 ;;9002226.02101,"1218,68001-0152-03 ",.01)
 ;;68001-0152-03
 ;;9002226.02101,"1218,68001-0152-03 ",.02)
 ;;68001-0152-03
 ;;9002226.02101,"1218,68001-0153-00 ",.01)
 ;;68001-0153-00
 ;;9002226.02101,"1218,68001-0153-00 ",.02)
 ;;68001-0153-00
 ;;9002226.02101,"1218,68001-0153-03 ",.01)
 ;;68001-0153-03
 ;;9002226.02101,"1218,68001-0153-03 ",.02)
 ;;68001-0153-03
 ;;9002226.02101,"1218,68001-0154-00 ",.01)
 ;;68001-0154-00
 ;;9002226.02101,"1218,68001-0154-00 ",.02)
 ;;68001-0154-00
 ;;9002226.02101,"1218,68001-0154-03 ",.01)
 ;;68001-0154-03
 ;;9002226.02101,"1218,68001-0154-03 ",.02)
 ;;68001-0154-03
 ;;9002226.02101,"1218,68001-0204-00 ",.01)
 ;;68001-0204-00
 ;;9002226.02101,"1218,68001-0204-00 ",.02)
 ;;68001-0204-00
 ;;9002226.02101,"1218,68001-0204-03 ",.01)
 ;;68001-0204-03
 ;;9002226.02101,"1218,68001-0204-03 ",.02)
 ;;68001-0204-03
 ;;9002226.02101,"1218,68001-0205-00 ",.01)
 ;;68001-0205-00
 ;;9002226.02101,"1218,68001-0205-00 ",.02)
 ;;68001-0205-00
 ;;9002226.02101,"1218,68001-0205-03 ",.01)
 ;;68001-0205-03
 ;;9002226.02101,"1218,68001-0205-03 ",.02)
 ;;68001-0205-03
 ;;9002226.02101,"1218,68001-0206-00 ",.01)
 ;;68001-0206-00
 ;;9002226.02101,"1218,68001-0206-00 ",.02)
 ;;68001-0206-00
 ;;9002226.02101,"1218,68001-0206-03 ",.01)
 ;;68001-0206-03
 ;;9002226.02101,"1218,68001-0206-03 ",.02)
 ;;68001-0206-03
 ;;9002226.02101,"1218,68001-0219-00 ",.01)
 ;;68001-0219-00
 ;;9002226.02101,"1218,68001-0219-00 ",.02)
 ;;68001-0219-00
 ;;9002226.02101,"1218,68001-0220-00 ",.01)
 ;;68001-0220-00
 ;;9002226.02101,"1218,68001-0220-00 ",.02)
 ;;68001-0220-00
 ;;9002226.02101,"1218,68001-0220-08 ",.01)
 ;;68001-0220-08
 ;;9002226.02101,"1218,68001-0220-08 ",.02)
 ;;68001-0220-08
 ;;9002226.02101,"1218,68001-0221-00 ",.01)
 ;;68001-0221-00
 ;;9002226.02101,"1218,68001-0221-00 ",.02)
 ;;68001-0221-00
 ;;9002226.02101,"1218,68071-0288-30 ",.01)
 ;;68071-0288-30
 ;;9002226.02101,"1218,68071-0288-30 ",.02)
 ;;68071-0288-30
 ;;9002226.02101,"1218,68071-0841-30 ",.01)
 ;;68071-0841-30
 ;;9002226.02101,"1218,68071-0841-30 ",.02)
 ;;68071-0841-30
 ;;9002226.02101,"1218,68071-0856-30 ",.01)
 ;;68071-0856-30
 ;;9002226.02101,"1218,68071-0856-30 ",.02)
 ;;68071-0856-30
 ;;9002226.02101,"1218,68084-0209-01 ",.01)
 ;;68084-0209-01
 ;;9002226.02101,"1218,68084-0209-01 ",.02)
 ;;68084-0209-01
 ;;9002226.02101,"1218,68084-0209-11 ",.01)
 ;;68084-0209-11
 ;;9002226.02101,"1218,68084-0209-11 ",.02)
 ;;68084-0209-11
 ;;9002226.02101,"1218,68084-0210-01 ",.01)
 ;;68084-0210-01
 ;;9002226.02101,"1218,68084-0210-01 ",.02)
 ;;68084-0210-01
 ;;9002226.02101,"1218,68084-0210-11 ",.01)
 ;;68084-0210-11
 ;;9002226.02101,"1218,68084-0210-11 ",.02)
 ;;68084-0210-11
 ;;9002226.02101,"1218,68084-0211-01 ",.01)
 ;;68084-0211-01
 ;;9002226.02101,"1218,68084-0211-01 ",.02)
 ;;68084-0211-01
 ;;9002226.02101,"1218,68084-0211-11 ",.01)
 ;;68084-0211-11
 ;;9002226.02101,"1218,68084-0211-11 ",.02)
 ;;68084-0211-11
 ;;9002226.02101,"1218,68084-0212-01 ",.01)
 ;;68084-0212-01
 ;;9002226.02101,"1218,68084-0212-01 ",.02)
 ;;68084-0212-01
 ;;9002226.02101,"1218,68084-0212-11 ",.01)
 ;;68084-0212-11
 ;;9002226.02101,"1218,68084-0212-11 ",.02)
 ;;68084-0212-11
 ;;9002226.02101,"1218,68084-0261-01 ",.01)
 ;;68084-0261-01
 ;;9002226.02101,"1218,68084-0261-01 ",.02)
 ;;68084-0261-01
 ;;9002226.02101,"1218,68084-0261-11 ",.01)
 ;;68084-0261-11
 ;;9002226.02101,"1218,68084-0261-11 ",.02)
 ;;68084-0261-11
 ;;9002226.02101,"1218,68084-0262-01 ",.01)
 ;;68084-0262-01
 ;;9002226.02101,"1218,68084-0262-01 ",.02)
 ;;68084-0262-01
 ;;9002226.02101,"1218,68084-0262-11 ",.01)
 ;;68084-0262-11
 ;;9002226.02101,"1218,68084-0262-11 ",.02)
 ;;68084-0262-11
 ;;9002226.02101,"1218,68084-0263-01 ",.01)
 ;;68084-0263-01
 ;;9002226.02101,"1218,68084-0263-01 ",.02)
 ;;68084-0263-01
 ;;9002226.02101,"1218,68084-0263-11 ",.01)
 ;;68084-0263-11
 ;;9002226.02101,"1218,68084-0263-11 ",.02)
 ;;68084-0263-11
 ;;9002226.02101,"1218,68084-0264-01 ",.01)
 ;;68084-0264-01
 ;;9002226.02101,"1218,68084-0264-01 ",.02)
 ;;68084-0264-01
 ;;9002226.02101,"1218,68084-0264-11 ",.01)
 ;;68084-0264-11
 ;;9002226.02101,"1218,68084-0264-11 ",.02)
 ;;68084-0264-11
 ;;9002226.02101,"1218,68084-0301-01 ",.01)
 ;;68084-0301-01
 ;;9002226.02101,"1218,68084-0301-01 ",.02)
 ;;68084-0301-01
 ;;9002226.02101,"1218,68084-0301-11 ",.01)
 ;;68084-0301-11
 ;;9002226.02101,"1218,68084-0301-11 ",.02)
 ;;68084-0301-11
 ;;9002226.02101,"1218,68084-0302-11 ",.01)
 ;;68084-0302-11
 ;;9002226.02101,"1218,68084-0302-11 ",.02)
 ;;68084-0302-11
 ;;9002226.02101,"1218,68084-0302-21 ",.01)
 ;;68084-0302-21
 ;;9002226.02101,"1218,68084-0302-21 ",.02)
 ;;68084-0302-21
 ;;9002226.02101,"1218,68084-0303-01 ",.01)
 ;;68084-0303-01
 ;;9002226.02101,"1218,68084-0303-01 ",.02)
 ;;68084-0303-01
 ;;9002226.02101,"1218,68084-0303-11 ",.01)
 ;;68084-0303-11
 ;;9002226.02101,"1218,68084-0303-11 ",.02)
 ;;68084-0303-11
 ;;9002226.02101,"1218,68084-0304-01 ",.01)
 ;;68084-0304-01
 ;;9002226.02101,"1218,68084-0304-01 ",.02)
 ;;68084-0304-01
 ;;9002226.02101,"1218,68084-0304-11 ",.01)
 ;;68084-0304-11
 ;;9002226.02101,"1218,68084-0304-11 ",.02)
 ;;68084-0304-11
 ;;9002226.02101,"1218,68084-0456-01 ",.01)
 ;;68084-0456-01
 ;;9002226.02101,"1218,68084-0456-01 ",.02)
 ;;68084-0456-01
 ;;9002226.02101,"1218,68084-0456-11 ",.01)
 ;;68084-0456-11
 ;;9002226.02101,"1218,68084-0456-11 ",.02)
 ;;68084-0456-11
 ;;9002226.02101,"1218,68084-0457-01 ",.01)
 ;;68084-0457-01
 ;;9002226.02101,"1218,68084-0457-01 ",.02)
 ;;68084-0457-01
 ;;9002226.02101,"1218,68084-0457-11 ",.01)
 ;;68084-0457-11
 ;;9002226.02101,"1218,68084-0457-11 ",.02)
 ;;68084-0457-11
 ;;9002226.02101,"1218,68084-0487-11 ",.01)
 ;;68084-0487-11
 ;;9002226.02101,"1218,68084-0487-11 ",.02)
 ;;68084-0487-11
 ;;9002226.02101,"1218,68084-0487-21 ",.01)
 ;;68084-0487-21
 ;;9002226.02101,"1218,68084-0487-21 ",.02)
 ;;68084-0487-21
 ;;9002226.02101,"1218,68084-0503-01 ",.01)
 ;;68084-0503-01
 ;;9002226.02101,"1218,68084-0503-01 ",.02)
 ;;68084-0503-01
 ;;9002226.02101,"1218,68084-0503-11 ",.01)
 ;;68084-0503-11
 ;;9002226.02101,"1218,68084-0503-11 ",.02)
 ;;68084-0503-11
 ;;9002226.02101,"1218,68084-0504-01 ",.01)
 ;;68084-0504-01
 ;;9002226.02101,"1218,68084-0504-01 ",.02)
 ;;68084-0504-01
 ;;9002226.02101,"1218,68084-0504-11 ",.01)
 ;;68084-0504-11
 ;;9002226.02101,"1218,68084-0504-11 ",.02)
 ;;68084-0504-11
 ;;9002226.02101,"1218,68084-0659-01 ",.01)
 ;;68084-0659-01
 ;;9002226.02101,"1218,68084-0659-01 ",.02)
 ;;68084-0659-01
 ;;9002226.02101,"1218,68084-0659-11 ",.01)
 ;;68084-0659-11
 ;;9002226.02101,"1218,68084-0659-11 ",.02)
 ;;68084-0659-11
 ;;9002226.02101,"1218,68084-0666-01 ",.01)
 ;;68084-0666-01
 ;;9002226.02101,"1218,68084-0666-01 ",.02)
 ;;68084-0666-01
 ;;9002226.02101,"1218,68084-0666-11 ",.01)
 ;;68084-0666-11
 ;;9002226.02101,"1218,68084-0666-11 ",.02)
 ;;68084-0666-11
 ;;9002226.02101,"1218,68084-0673-01 ",.01)
 ;;68084-0673-01
 ;;9002226.02101,"1218,68084-0673-01 ",.02)
 ;;68084-0673-01
 ;;9002226.02101,"1218,68084-0673-11 ",.01)
 ;;68084-0673-11
 ;;9002226.02101,"1218,68084-0673-11 ",.02)
 ;;68084-0673-11
 ;;9002226.02101,"1218,68084-0755-11 ",.01)
 ;;68084-0755-11
 ;;9002226.02101,"1218,68084-0755-11 ",.02)
 ;;68084-0755-11
 ;;9002226.02101,"1218,68084-0755-21 ",.01)
 ;;68084-0755-21
 ;;9002226.02101,"1218,68084-0755-21 ",.02)
 ;;68084-0755-21
 ;;9002226.02101,"1218,68084-0763-11 ",.01)
 ;;68084-0763-11
 ;;9002226.02101,"1218,68084-0763-11 ",.02)
 ;;68084-0763-11
 ;;9002226.02101,"1218,68084-0763-21 ",.01)
 ;;68084-0763-21
 ;;9002226.02101,"1218,68084-0763-21 ",.02)
 ;;68084-0763-21
 ;;9002226.02101,"1218,68084-0843-01 ",.01)
 ;;68084-0843-01
 ;;9002226.02101,"1218,68084-0843-01 ",.02)
 ;;68084-0843-01
 ;;9002226.02101,"1218,68084-0843-11 ",.01)
 ;;68084-0843-11
 ;;9002226.02101,"1218,68084-0843-11 ",.02)
 ;;68084-0843-11
 ;;9002226.02101,"1218,68084-0854-01 ",.01)
 ;;68084-0854-01
 ;;9002226.02101,"1218,68084-0854-01 ",.02)
 ;;68084-0854-01
 ;;9002226.02101,"1218,68084-0854-11 ",.01)
 ;;68084-0854-11
 ;;9002226.02101,"1218,68084-0854-11 ",.02)
 ;;68084-0854-11
 ;;9002226.02101,"1218,68084-0865-01 ",.01)
 ;;68084-0865-01
 ;;9002226.02101,"1218,68084-0865-01 ",.02)
 ;;68084-0865-01
 ;;9002226.02101,"1218,68084-0865-11 ",.01)
 ;;68084-0865-11
 ;;9002226.02101,"1218,68084-0865-11 ",.02)
 ;;68084-0865-11
 ;;9002226.02101,"1218,68084-0876-01 ",.01)
 ;;68084-0876-01
 ;;9002226.02101,"1218,68084-0876-01 ",.02)
 ;;68084-0876-01
 ;;9002226.02101,"1218,68084-0876-11 ",.01)
 ;;68084-0876-11
 ;;9002226.02101,"1218,68084-0876-11 ",.02)
 ;;68084-0876-11
 ;;9002226.02101,"1218,68258-6010-01 ",.01)
 ;;68258-6010-01
 ;;9002226.02101,"1218,68258-6010-01 ",.02)
 ;;68258-6010-01
 ;;9002226.02101,"1218,68258-6010-03 ",.01)
 ;;68258-6010-03
 ;;9002226.02101,"1218,68258-6010-03 ",.02)
 ;;68258-6010-03
 ;;9002226.02101,"1218,68258-6010-09 ",.01)
 ;;68258-6010-09
 ;;9002226.02101,"1218,68258-6010-09 ",.02)
 ;;68258-6010-09
 ;;9002226.02101,"1218,68258-6011-03 ",.01)
 ;;68258-6011-03
 ;;9002226.02101,"1218,68258-6011-03 ",.02)
 ;;68258-6011-03
 ;;9002226.02101,"1218,68258-6011-09 ",.01)
 ;;68258-6011-09
 ;;9002226.02101,"1218,68258-6011-09 ",.02)
 ;;68258-6011-09
 ;;9002226.02101,"1218,68258-6015-03 ",.01)
 ;;68258-6015-03
 ;;9002226.02101,"1218,68258-6015-03 ",.02)
 ;;68258-6015-03
 ;;9002226.02101,"1218,68258-6015-08 ",.01)
 ;;68258-6015-08
 ;;9002226.02101,"1218,68258-6015-08 ",.02)
 ;;68258-6015-08
 ;;9002226.02101,"1218,68258-6018-03 ",.01)
 ;;68258-6018-03
 ;;9002226.02101,"1218,68258-6018-03 ",.02)
 ;;68258-6018-03
 ;;9002226.02101,"1218,68258-6018-09 ",.01)
 ;;68258-6018-09
 ;;9002226.02101,"1218,68258-6018-09 ",.02)
 ;;68258-6018-09
 ;;9002226.02101,"1218,68258-6019-03 ",.01)
 ;;68258-6019-03
 ;;9002226.02101,"1218,68258-6019-03 ",.02)
 ;;68258-6019-03
 ;;9002226.02101,"1218,68258-6019-06 ",.01)
 ;;68258-6019-06
 ;;9002226.02101,"1218,68258-6019-06 ",.02)
 ;;68258-6019-06
 ;;9002226.02101,"1218,68258-6019-09 ",.01)
 ;;68258-6019-09
 ;;9002226.02101,"1218,68258-6019-09 ",.02)
 ;;68258-6019-09
 ;;9002226.02101,"1218,68258-6020-03 ",.01)
 ;;68258-6020-03
 ;;9002226.02101,"1218,68258-6020-03 ",.02)
 ;;68258-6020-03
 ;;9002226.02101,"1218,68258-6020-09 ",.01)
 ;;68258-6020-09
 ;;9002226.02101,"1218,68258-6020-09 ",.02)
 ;;68258-6020-09
 ;;9002226.02101,"1218,68258-6026-03 ",.01)
 ;;68258-6026-03
 ;;9002226.02101,"1218,68258-6026-03 ",.02)
 ;;68258-6026-03
 ;;9002226.02101,"1218,68258-6026-09 ",.01)
 ;;68258-6026-09
 ;;9002226.02101,"1218,68258-6026-09 ",.02)
 ;;68258-6026-09
 ;;9002226.02101,"1218,68258-6033-03 ",.01)
 ;;68258-6033-03
 ;;9002226.02101,"1218,68258-6033-03 ",.02)
 ;;68258-6033-03
 ;;9002226.02101,"1218,68258-6033-06 ",.01)
 ;;68258-6033-06
 ;;9002226.02101,"1218,68258-6033-06 ",.02)
 ;;68258-6033-06
 ;;9002226.02101,"1218,68258-6033-09 ",.01)
 ;;68258-6033-09
 ;;9002226.02101,"1218,68258-6033-09 ",.02)
 ;;68258-6033-09
 ;;9002226.02101,"1218,68258-6034-03 ",.01)
 ;;68258-6034-03
 ;;9002226.02101,"1218,68258-6034-03 ",.02)
 ;;68258-6034-03
 ;;9002226.02101,"1218,68258-6039-03 ",.01)
 ;;68258-6039-03
 ;;9002226.02101,"1218,68258-6039-03 ",.02)
 ;;68258-6039-03
 ;;9002226.02101,"1218,68258-6047-03 ",.01)
 ;;68258-6047-03
 ;;9002226.02101,"1218,68258-6047-03 ",.02)
 ;;68258-6047-03
 ;;9002226.02101,"1218,68258-6047-09 ",.01)
 ;;68258-6047-09
 ;;9002226.02101,"1218,68258-6047-09 ",.02)
 ;;68258-6047-09
 ;;9002226.02101,"1218,68258-6057-06 ",.01)
 ;;68258-6057-06
 ;;9002226.02101,"1218,68258-6057-06 ",.02)
 ;;68258-6057-06
 ;;9002226.02101,"1218,68258-6062-03 ",.01)
 ;;68258-6062-03
 ;;9002226.02101,"1218,68258-6062-03 ",.02)
 ;;68258-6062-03
 ;;9002226.02101,"1218,68258-6063-03 ",.01)
 ;;68258-6063-03
 ;;9002226.02101,"1218,68258-6063-03 ",.02)
 ;;68258-6063-03
 ;;9002226.02101,"1218,68258-6064-03 ",.01)
 ;;68258-6064-03
 ;;9002226.02101,"1218,68258-6064-03 ",.02)
 ;;68258-6064-03
 ;;9002226.02101,"1218,68258-6091-03 ",.01)
 ;;68258-6091-03
