BGP21H44 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,54868-3287-01 ",.02)
 ;;54868-3287-01
 ;;9002226.02101,"1197,54868-3300-00 ",.01)
 ;;54868-3300-00
 ;;9002226.02101,"1197,54868-3300-00 ",.02)
 ;;54868-3300-00
 ;;9002226.02101,"1197,54868-3300-01 ",.01)
 ;;54868-3300-01
 ;;9002226.02101,"1197,54868-3300-01 ",.02)
 ;;54868-3300-01
 ;;9002226.02101,"1197,54868-3300-02 ",.01)
 ;;54868-3300-02
 ;;9002226.02101,"1197,54868-3300-02 ",.02)
 ;;54868-3300-02
 ;;9002226.02101,"1197,54868-3300-03 ",.01)
 ;;54868-3300-03
 ;;9002226.02101,"1197,54868-3300-03 ",.02)
 ;;54868-3300-03
 ;;9002226.02101,"1197,54868-3300-04 ",.01)
 ;;54868-3300-04
 ;;9002226.02101,"1197,54868-3300-04 ",.02)
 ;;54868-3300-04
 ;;9002226.02101,"1197,54868-3464-01 ",.01)
 ;;54868-3464-01
 ;;9002226.02101,"1197,54868-3464-01 ",.02)
 ;;54868-3464-01
 ;;9002226.02101,"1197,54868-3464-02 ",.01)
 ;;54868-3464-02
 ;;9002226.02101,"1197,54868-3464-02 ",.02)
 ;;54868-3464-02
 ;;9002226.02101,"1197,54868-3774-00 ",.01)
 ;;54868-3774-00
 ;;9002226.02101,"1197,54868-3774-00 ",.02)
 ;;54868-3774-00
 ;;9002226.02101,"1197,54868-3817-00 ",.01)
 ;;54868-3817-00
 ;;9002226.02101,"1197,54868-3817-00 ",.02)
 ;;54868-3817-00
 ;;9002226.02101,"1197,54868-3853-01 ",.01)
 ;;54868-3853-01
 ;;9002226.02101,"1197,54868-3853-01 ",.02)
 ;;54868-3853-01
 ;;9002226.02101,"1197,54868-3853-02 ",.01)
 ;;54868-3853-02
 ;;9002226.02101,"1197,54868-3853-02 ",.02)
 ;;54868-3853-02
 ;;9002226.02101,"1197,54868-3853-03 ",.01)
 ;;54868-3853-03
 ;;9002226.02101,"1197,54868-3853-03 ",.02)
 ;;54868-3853-03
 ;;9002226.02101,"1197,54868-3956-00 ",.01)
 ;;54868-3956-00
 ;;9002226.02101,"1197,54868-3956-00 ",.02)
 ;;54868-3956-00
 ;;9002226.02101,"1197,54868-3956-01 ",.01)
 ;;54868-3956-01
 ;;9002226.02101,"1197,54868-3956-01 ",.02)
 ;;54868-3956-01
 ;;9002226.02101,"1197,54868-3956-02 ",.01)
 ;;54868-3956-02
 ;;9002226.02101,"1197,54868-3956-02 ",.02)
 ;;54868-3956-02
 ;;9002226.02101,"1197,54868-3958-00 ",.01)
 ;;54868-3958-00
 ;;9002226.02101,"1197,54868-3958-00 ",.02)
 ;;54868-3958-00
 ;;9002226.02101,"1197,54868-4011-00 ",.01)
 ;;54868-4011-00
 ;;9002226.02101,"1197,54868-4011-00 ",.02)
 ;;54868-4011-00
 ;;9002226.02101,"1197,54868-4011-01 ",.01)
 ;;54868-4011-01
 ;;9002226.02101,"1197,54868-4011-01 ",.02)
 ;;54868-4011-01
 ;;9002226.02101,"1197,54868-4011-02 ",.01)
 ;;54868-4011-02
 ;;9002226.02101,"1197,54868-4011-02 ",.02)
 ;;54868-4011-02
 ;;9002226.02101,"1197,54868-4011-03 ",.01)
 ;;54868-4011-03
 ;;9002226.02101,"1197,54868-4011-03 ",.02)
 ;;54868-4011-03
 ;;9002226.02101,"1197,54868-4064-00 ",.01)
 ;;54868-4064-00
 ;;9002226.02101,"1197,54868-4064-00 ",.02)
 ;;54868-4064-00
 ;;9002226.02101,"1197,54868-4064-01 ",.01)
 ;;54868-4064-01
 ;;9002226.02101,"1197,54868-4064-01 ",.02)
 ;;54868-4064-01
 ;;9002226.02101,"1197,54868-4066-00 ",.01)
 ;;54868-4066-00
 ;;9002226.02101,"1197,54868-4066-00 ",.02)
 ;;54868-4066-00
 ;;9002226.02101,"1197,54868-4066-01 ",.01)
 ;;54868-4066-01
 ;;9002226.02101,"1197,54868-4066-01 ",.02)
 ;;54868-4066-01
 ;;9002226.02101,"1197,54868-4068-00 ",.01)
 ;;54868-4068-00
 ;;9002226.02101,"1197,54868-4068-00 ",.02)
 ;;54868-4068-00
 ;;9002226.02101,"1197,54868-4073-00 ",.01)
 ;;54868-4073-00
 ;;9002226.02101,"1197,54868-4073-00 ",.02)
 ;;54868-4073-00
 ;;9002226.02101,"1197,54868-4073-01 ",.01)
 ;;54868-4073-01
 ;;9002226.02101,"1197,54868-4073-01 ",.02)
 ;;54868-4073-01
 ;;9002226.02101,"1197,54868-4073-02 ",.01)
 ;;54868-4073-02
 ;;9002226.02101,"1197,54868-4073-02 ",.02)
 ;;54868-4073-02
 ;;9002226.02101,"1197,54868-4073-03 ",.01)
 ;;54868-4073-03
 ;;9002226.02101,"1197,54868-4073-03 ",.02)
 ;;54868-4073-03
 ;;9002226.02101,"1197,54868-4074-00 ",.01)
 ;;54868-4074-00
 ;;9002226.02101,"1197,54868-4074-00 ",.02)
 ;;54868-4074-00
 ;;9002226.02101,"1197,54868-4074-01 ",.01)
 ;;54868-4074-01
 ;;9002226.02101,"1197,54868-4074-01 ",.02)
 ;;54868-4074-01
 ;;9002226.02101,"1197,54868-4074-02 ",.01)
 ;;54868-4074-02
 ;;9002226.02101,"1197,54868-4074-02 ",.02)
 ;;54868-4074-02
 ;;9002226.02101,"1197,54868-4074-03 ",.01)
 ;;54868-4074-03
 ;;9002226.02101,"1197,54868-4074-03 ",.02)
 ;;54868-4074-03
 ;;9002226.02101,"1197,54868-4074-04 ",.01)
 ;;54868-4074-04
 ;;9002226.02101,"1197,54868-4074-04 ",.02)
 ;;54868-4074-04
 ;;9002226.02101,"1197,54868-4184-00 ",.01)
 ;;54868-4184-00
 ;;9002226.02101,"1197,54868-4184-00 ",.02)
 ;;54868-4184-00
 ;;9002226.02101,"1197,54868-4184-01 ",.01)
 ;;54868-4184-01
 ;;9002226.02101,"1197,54868-4184-01 ",.02)
 ;;54868-4184-01
 ;;9002226.02101,"1197,54868-4184-02 ",.01)
 ;;54868-4184-02
 ;;9002226.02101,"1197,54868-4184-02 ",.02)
 ;;54868-4184-02
 ;;9002226.02101,"1197,54868-4186-00 ",.01)
 ;;54868-4186-00
 ;;9002226.02101,"1197,54868-4186-00 ",.02)
 ;;54868-4186-00
 ;;9002226.02101,"1197,54868-4186-01 ",.01)
 ;;54868-4186-01
 ;;9002226.02101,"1197,54868-4186-01 ",.02)
 ;;54868-4186-01
 ;;9002226.02101,"1197,54868-4186-02 ",.01)
 ;;54868-4186-02
 ;;9002226.02101,"1197,54868-4186-02 ",.02)
 ;;54868-4186-02
 ;;9002226.02101,"1197,54868-4186-03 ",.01)
 ;;54868-4186-03
 ;;9002226.02101,"1197,54868-4186-03 ",.02)
 ;;54868-4186-03
 ;;9002226.02101,"1197,54868-4200-00 ",.01)
 ;;54868-4200-00
 ;;9002226.02101,"1197,54868-4200-00 ",.02)
 ;;54868-4200-00
