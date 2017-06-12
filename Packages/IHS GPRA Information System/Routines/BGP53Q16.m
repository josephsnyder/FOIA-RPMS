BGP53Q16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"805,54868-0053-07 ",.02)
 ;;54868-0053-07
 ;;9002226.02101,"805,54868-0106-00 ",.01)
 ;;54868-0106-00
 ;;9002226.02101,"805,54868-0106-00 ",.02)
 ;;54868-0106-00
 ;;9002226.02101,"805,54868-0106-01 ",.01)
 ;;54868-0106-01
 ;;9002226.02101,"805,54868-0106-01 ",.02)
 ;;54868-0106-01
 ;;9002226.02101,"805,54868-0293-00 ",.01)
 ;;54868-0293-00
 ;;9002226.02101,"805,54868-0293-00 ",.02)
 ;;54868-0293-00
 ;;9002226.02101,"805,54868-0293-01 ",.01)
 ;;54868-0293-01
 ;;9002226.02101,"805,54868-0293-01 ",.02)
 ;;54868-0293-01
 ;;9002226.02101,"805,54868-0293-03 ",.01)
 ;;54868-0293-03
 ;;9002226.02101,"805,54868-0293-03 ",.02)
 ;;54868-0293-03
 ;;9002226.02101,"805,54868-0293-04 ",.01)
 ;;54868-0293-04
 ;;9002226.02101,"805,54868-0293-04 ",.02)
 ;;54868-0293-04
 ;;9002226.02101,"805,54868-0293-05 ",.01)
 ;;54868-0293-05
 ;;9002226.02101,"805,54868-0293-05 ",.02)
 ;;54868-0293-05
 ;;9002226.02101,"805,54868-0293-06 ",.01)
 ;;54868-0293-06
 ;;9002226.02101,"805,54868-0293-06 ",.02)
 ;;54868-0293-06
 ;;9002226.02101,"805,54868-0321-00 ",.01)
 ;;54868-0321-00
 ;;9002226.02101,"805,54868-0321-00 ",.02)
 ;;54868-0321-00
 ;;9002226.02101,"805,54868-0674-00 ",.01)
 ;;54868-0674-00
 ;;9002226.02101,"805,54868-0674-00 ",.02)
 ;;54868-0674-00
 ;;9002226.02101,"805,54868-0674-01 ",.01)
 ;;54868-0674-01
 ;;9002226.02101,"805,54868-0674-01 ",.02)
 ;;54868-0674-01
 ;;9002226.02101,"805,54868-0680-00 ",.01)
 ;;54868-0680-00
 ;;9002226.02101,"805,54868-0680-00 ",.02)
 ;;54868-0680-00
 ;;9002226.02101,"805,54868-0680-01 ",.01)
 ;;54868-0680-01
 ;;9002226.02101,"805,54868-0680-01 ",.02)
 ;;54868-0680-01
 ;;9002226.02101,"805,54868-0685-01 ",.01)
 ;;54868-0685-01
 ;;9002226.02101,"805,54868-0685-01 ",.02)
 ;;54868-0685-01
 ;;9002226.02101,"805,54868-0696-01 ",.01)
 ;;54868-0696-01
 ;;9002226.02101,"805,54868-0696-01 ",.02)
 ;;54868-0696-01
 ;;9002226.02101,"805,54868-0696-02 ",.01)
 ;;54868-0696-02
 ;;9002226.02101,"805,54868-0696-02 ",.02)
 ;;54868-0696-02
 ;;9002226.02101,"805,54868-0696-03 ",.01)
 ;;54868-0696-03
 ;;9002226.02101,"805,54868-0696-03 ",.02)
 ;;54868-0696-03
 ;;9002226.02101,"805,54868-0701-00 ",.01)
 ;;54868-0701-00
 ;;9002226.02101,"805,54868-0701-00 ",.02)
 ;;54868-0701-00
 ;;9002226.02101,"805,54868-0854-00 ",.01)
 ;;54868-0854-00
 ;;9002226.02101,"805,54868-0854-00 ",.02)
 ;;54868-0854-00
 ;;9002226.02101,"805,54868-0854-01 ",.01)
 ;;54868-0854-01
 ;;9002226.02101,"805,54868-0854-01 ",.02)
 ;;54868-0854-01
 ;;9002226.02101,"805,54868-1063-00 ",.01)
 ;;54868-1063-00
 ;;9002226.02101,"805,54868-1063-00 ",.02)
 ;;54868-1063-00
 ;;9002226.02101,"805,54868-1063-01 ",.01)
 ;;54868-1063-01
 ;;9002226.02101,"805,54868-1063-01 ",.02)
 ;;54868-1063-01
 ;;9002226.02101,"805,54868-1063-02 ",.01)
 ;;54868-1063-02
 ;;9002226.02101,"805,54868-1063-02 ",.02)
 ;;54868-1063-02
 ;;9002226.02101,"805,54868-1078-01 ",.01)
 ;;54868-1078-01
 ;;9002226.02101,"805,54868-1078-01 ",.02)
 ;;54868-1078-01
 ;;9002226.02101,"805,54868-1078-03 ",.01)
 ;;54868-1078-03
 ;;9002226.02101,"805,54868-1078-03 ",.02)
 ;;54868-1078-03
 ;;9002226.02101,"805,54868-1078-05 ",.01)
 ;;54868-1078-05
 ;;9002226.02101,"805,54868-1078-05 ",.02)
 ;;54868-1078-05
 ;;9002226.02101,"805,54868-1441-00 ",.01)
 ;;54868-1441-00
 ;;9002226.02101,"805,54868-1441-00 ",.02)
 ;;54868-1441-00
 ;;9002226.02101,"805,54868-1441-01 ",.01)
 ;;54868-1441-01
 ;;9002226.02101,"805,54868-1441-01 ",.02)
 ;;54868-1441-01
 ;;9002226.02101,"805,54868-1442-00 ",.01)
 ;;54868-1442-00
 ;;9002226.02101,"805,54868-1442-00 ",.02)
 ;;54868-1442-00
 ;;9002226.02101,"805,54868-1442-01 ",.01)
 ;;54868-1442-01
 ;;9002226.02101,"805,54868-1442-01 ",.02)
 ;;54868-1442-01
 ;;9002226.02101,"805,54868-1442-02 ",.01)
 ;;54868-1442-02
 ;;9002226.02101,"805,54868-1442-02 ",.02)
 ;;54868-1442-02
 ;;9002226.02101,"805,54868-1517-00 ",.01)
 ;;54868-1517-00
 ;;9002226.02101,"805,54868-1517-00 ",.02)
 ;;54868-1517-00
 ;;9002226.02101,"805,54868-1517-01 ",.01)
 ;;54868-1517-01
 ;;9002226.02101,"805,54868-1517-01 ",.02)
 ;;54868-1517-01
 ;;9002226.02101,"805,54868-1517-02 ",.01)
 ;;54868-1517-02
 ;;9002226.02101,"805,54868-1517-02 ",.02)
 ;;54868-1517-02
 ;;9002226.02101,"805,54868-1517-03 ",.01)
 ;;54868-1517-03
 ;;9002226.02101,"805,54868-1517-03 ",.02)
 ;;54868-1517-03
 ;;9002226.02101,"805,54868-1518-01 ",.01)
 ;;54868-1518-01
 ;;9002226.02101,"805,54868-1518-01 ",.02)
 ;;54868-1518-01
 ;;9002226.02101,"805,54868-1518-02 ",.01)
 ;;54868-1518-02
 ;;9002226.02101,"805,54868-1518-02 ",.02)
 ;;54868-1518-02
 ;;9002226.02101,"805,54868-1871-00 ",.01)
 ;;54868-1871-00
 ;;9002226.02101,"805,54868-1871-00 ",.02)
 ;;54868-1871-00
 ;;9002226.02101,"805,54868-1871-01 ",.01)
 ;;54868-1871-01
 ;;9002226.02101,"805,54868-1871-01 ",.02)
 ;;54868-1871-01
 ;;9002226.02101,"805,54868-1871-02 ",.01)
 ;;54868-1871-02
 ;;9002226.02101,"805,54868-1871-02 ",.02)
 ;;54868-1871-02
 ;;9002226.02101,"805,54868-1871-04 ",.01)
 ;;54868-1871-04
 ;;9002226.02101,"805,54868-1871-04 ",.02)
 ;;54868-1871-04
 ;;9002226.02101,"805,54868-1971-00 ",.01)
 ;;54868-1971-00
 ;;9002226.02101,"805,54868-1971-00 ",.02)
 ;;54868-1971-00
 ;;9002226.02101,"805,54868-1971-01 ",.01)
 ;;54868-1971-01
 ;;9002226.02101,"805,54868-1971-01 ",.02)
 ;;54868-1971-01
 ;;9002226.02101,"805,54868-1971-03 ",.01)
 ;;54868-1971-03
 ;;9002226.02101,"805,54868-1971-03 ",.02)
 ;;54868-1971-03
 ;;9002226.02101,"805,54868-1971-04 ",.01)
 ;;54868-1971-04
 ;;9002226.02101,"805,54868-1971-04 ",.02)
 ;;54868-1971-04
 ;;9002226.02101,"805,54868-1980-00 ",.01)
 ;;54868-1980-00
 ;;9002226.02101,"805,54868-1980-00 ",.02)
 ;;54868-1980-00
 ;;9002226.02101,"805,54868-1980-01 ",.01)
 ;;54868-1980-01
 ;;9002226.02101,"805,54868-1980-01 ",.02)
 ;;54868-1980-01
 ;;9002226.02101,"805,54868-2349-01 ",.01)
 ;;54868-2349-01
 ;;9002226.02101,"805,54868-2349-01 ",.02)
 ;;54868-2349-01
 ;;9002226.02101,"805,54868-2349-02 ",.01)
 ;;54868-2349-02
 ;;9002226.02101,"805,54868-2349-02 ",.02)
 ;;54868-2349-02
 ;;9002226.02101,"805,54868-2349-03 ",.01)
 ;;54868-2349-03
 ;;9002226.02101,"805,54868-2349-03 ",.02)
 ;;54868-2349-03
 ;;9002226.02101,"805,54868-2349-04 ",.01)
 ;;54868-2349-04
 ;;9002226.02101,"805,54868-2349-04 ",.02)
 ;;54868-2349-04
 ;;9002226.02101,"805,54868-2349-05 ",.01)
 ;;54868-2349-05
 ;;9002226.02101,"805,54868-2349-05 ",.02)
 ;;54868-2349-05
 ;;9002226.02101,"805,54868-2683-00 ",.01)
 ;;54868-2683-00
 ;;9002226.02101,"805,54868-2683-00 ",.02)
 ;;54868-2683-00
 ;;9002226.02101,"805,54868-2683-01 ",.01)
 ;;54868-2683-01
 ;;9002226.02101,"805,54868-2683-01 ",.02)
 ;;54868-2683-01
 ;;9002226.02101,"805,54868-2683-02 ",.01)
 ;;54868-2683-02
 ;;9002226.02101,"805,54868-2683-02 ",.02)
 ;;54868-2683-02
 ;;9002226.02101,"805,54868-2989-00 ",.01)
 ;;54868-2989-00
 ;;9002226.02101,"805,54868-2989-00 ",.02)
 ;;54868-2989-00
 ;;9002226.02101,"805,54868-2989-02 ",.01)
 ;;54868-2989-02
 ;;9002226.02101,"805,54868-2989-02 ",.02)
 ;;54868-2989-02
 ;;9002226.02101,"805,54868-2989-03 ",.01)
 ;;54868-2989-03
 ;;9002226.02101,"805,54868-2989-03 ",.02)
 ;;54868-2989-03
 ;;9002226.02101,"805,54868-2989-04 ",.01)
 ;;54868-2989-04
 ;;9002226.02101,"805,54868-2989-04 ",.02)
 ;;54868-2989-04
 ;;9002226.02101,"805,54868-2989-05 ",.01)
 ;;54868-2989-05
 ;;9002226.02101,"805,54868-2989-05 ",.02)
 ;;54868-2989-05
 ;;9002226.02101,"805,54868-2989-06 ",.01)
 ;;54868-2989-06
 ;;9002226.02101,"805,54868-2989-06 ",.02)
 ;;54868-2989-06
 ;;9002226.02101,"805,54868-2990-00 ",.01)
 ;;54868-2990-00
 ;;9002226.02101,"805,54868-2990-00 ",.02)
 ;;54868-2990-00
 ;;9002226.02101,"805,54868-2990-02 ",.01)
 ;;54868-2990-02
 ;;9002226.02101,"805,54868-2990-02 ",.02)
 ;;54868-2990-02
 ;;9002226.02101,"805,54868-2990-03 ",.01)
 ;;54868-2990-03
 ;;9002226.02101,"805,54868-2990-03 ",.02)
 ;;54868-2990-03
 ;;9002226.02101,"805,54868-2990-04 ",.01)
 ;;54868-2990-04
 ;;9002226.02101,"805,54868-2990-04 ",.02)
 ;;54868-2990-04
 ;;9002226.02101,"805,54868-3062-00 ",.01)
 ;;54868-3062-00
 ;;9002226.02101,"805,54868-3062-00 ",.02)
 ;;54868-3062-00
 ;;9002226.02101,"805,54868-3062-01 ",.01)
 ;;54868-3062-01
 ;;9002226.02101,"805,54868-3062-01 ",.02)
 ;;54868-3062-01
 ;;9002226.02101,"805,54868-3062-02 ",.01)
 ;;54868-3062-02
 ;;9002226.02101,"805,54868-3062-02 ",.02)
 ;;54868-3062-02
 ;;9002226.02101,"805,54868-3064-00 ",.01)
 ;;54868-3064-00
 ;;9002226.02101,"805,54868-3064-00 ",.02)
 ;;54868-3064-00
 ;;9002226.02101,"805,54868-3257-01 ",.01)
 ;;54868-3257-01
 ;;9002226.02101,"805,54868-3257-01 ",.02)
 ;;54868-3257-01
 ;;9002226.02101,"805,54868-3257-02 ",.01)
 ;;54868-3257-02
 ;;9002226.02101,"805,54868-3257-02 ",.02)
 ;;54868-3257-02
 ;;9002226.02101,"805,54868-3257-03 ",.01)
 ;;54868-3257-03
 ;;9002226.02101,"805,54868-3257-03 ",.02)
 ;;54868-3257-03
 ;;9002226.02101,"805,54868-3257-04 ",.01)
 ;;54868-3257-04
 ;;9002226.02101,"805,54868-3257-04 ",.02)
 ;;54868-3257-04
 ;;9002226.02101,"805,54868-3257-05 ",.01)
 ;;54868-3257-05
 ;;9002226.02101,"805,54868-3257-05 ",.02)
 ;;54868-3257-05
 ;;9002226.02101,"805,54868-3587-05 ",.01)
 ;;54868-3587-05
 ;;9002226.02101,"805,54868-3587-05 ",.02)
 ;;54868-3587-05
 ;;9002226.02101,"805,54868-3602-00 ",.01)
 ;;54868-3602-00
 ;;9002226.02101,"805,54868-3602-00 ",.02)
 ;;54868-3602-00
 ;;9002226.02101,"805,54868-4173-00 ",.01)
 ;;54868-4173-00
 ;;9002226.02101,"805,54868-4173-00 ",.02)
 ;;54868-4173-00
 ;;9002226.02101,"805,54868-4179-00 ",.01)
 ;;54868-4179-00
 ;;9002226.02101,"805,54868-4179-00 ",.02)
 ;;54868-4179-00
 ;;9002226.02101,"805,54868-4223-04 ",.01)
 ;;54868-4223-04
 ;;9002226.02101,"805,54868-4223-04 ",.02)
 ;;54868-4223-04
 ;;9002226.02101,"805,54868-4395-00 ",.01)
 ;;54868-4395-00
 ;;9002226.02101,"805,54868-4395-00 ",.02)
 ;;54868-4395-00
 ;;9002226.02101,"805,54868-4395-01 ",.01)
 ;;54868-4395-01
 ;;9002226.02101,"805,54868-4395-01 ",.02)
 ;;54868-4395-01
 ;;9002226.02101,"805,54868-4395-02 ",.01)
 ;;54868-4395-02
 ;;9002226.02101,"805,54868-4395-02 ",.02)
 ;;54868-4395-02
 ;;9002226.02101,"805,54868-4395-03 ",.01)
 ;;54868-4395-03
 ;;9002226.02101,"805,54868-4395-03 ",.02)
 ;;54868-4395-03
 ;;9002226.02101,"805,54868-4396-00 ",.01)
 ;;54868-4396-00
 ;;9002226.02101,"805,54868-4396-00 ",.02)
 ;;54868-4396-00
 ;;9002226.02101,"805,54868-4396-01 ",.01)
 ;;54868-4396-01
 ;;9002226.02101,"805,54868-4396-01 ",.02)
 ;;54868-4396-01
 ;;9002226.02101,"805,54868-4396-02 ",.01)
 ;;54868-4396-02
 ;;9002226.02101,"805,54868-4396-02 ",.02)
 ;;54868-4396-02
 ;;9002226.02101,"805,54868-4396-03 ",.01)
 ;;54868-4396-03
 ;;9002226.02101,"805,54868-4396-03 ",.02)
 ;;54868-4396-03
 ;;9002226.02101,"805,54868-4421-00 ",.01)
 ;;54868-4421-00
 ;;9002226.02101,"805,54868-4421-00 ",.02)
 ;;54868-4421-00
 ;;9002226.02101,"805,54868-4421-01 ",.01)
 ;;54868-4421-01
 ;;9002226.02101,"805,54868-4421-01 ",.02)
 ;;54868-4421-01
 ;;9002226.02101,"805,54868-4421-02 ",.01)
 ;;54868-4421-02
 ;;9002226.02101,"805,54868-4421-02 ",.02)
 ;;54868-4421-02
 ;;9002226.02101,"805,54868-4424-00 ",.01)
 ;;54868-4424-00
 ;;9002226.02101,"805,54868-4424-00 ",.02)
 ;;54868-4424-00
 ;;9002226.02101,"805,54868-4424-01 ",.01)
 ;;54868-4424-01
 ;;9002226.02101,"805,54868-4424-01 ",.02)
 ;;54868-4424-01
 ;;9002226.02101,"805,54868-4424-02 ",.01)
 ;;54868-4424-02
 ;;9002226.02101,"805,54868-4424-02 ",.02)
 ;;54868-4424-02
 ;;9002226.02101,"805,54868-4424-03 ",.01)
 ;;54868-4424-03
 ;;9002226.02101,"805,54868-4424-03 ",.02)
 ;;54868-4424-03
 ;;9002226.02101,"805,54868-4435-00 ",.01)
 ;;54868-4435-00
 ;;9002226.02101,"805,54868-4435-00 ",.02)
 ;;54868-4435-00
 ;;9002226.02101,"805,54868-4435-01 ",.01)
 ;;54868-4435-01
 ;;9002226.02101,"805,54868-4435-01 ",.02)
 ;;54868-4435-01
 ;;9002226.02101,"805,54868-4435-02 ",.01)
 ;;54868-4435-02
 ;;9002226.02101,"805,54868-4435-02 ",.02)
 ;;54868-4435-02
 ;;9002226.02101,"805,54868-4435-03 ",.01)
 ;;54868-4435-03
 ;;9002226.02101,"805,54868-4435-03 ",.02)
 ;;54868-4435-03
 ;;9002226.02101,"805,54868-4576-00 ",.01)
 ;;54868-4576-00
 ;;9002226.02101,"805,54868-4576-00 ",.02)
 ;;54868-4576-00
 ;;9002226.02101,"805,54868-4576-01 ",.01)
 ;;54868-4576-01
 ;;9002226.02101,"805,54868-4576-01 ",.02)
 ;;54868-4576-01
 ;;9002226.02101,"805,54868-4576-02 ",.01)
 ;;54868-4576-02
 ;;9002226.02101,"805,54868-4576-02 ",.02)
 ;;54868-4576-02
 ;;9002226.02101,"805,54868-4576-03 ",.01)
 ;;54868-4576-03
 ;;9002226.02101,"805,54868-4576-03 ",.02)
 ;;54868-4576-03
 ;;9002226.02101,"805,54868-4577-00 ",.01)
 ;;54868-4577-00
 ;;9002226.02101,"805,54868-4577-00 ",.02)
 ;;54868-4577-00
 ;;9002226.02101,"805,54868-4577-01 ",.01)
 ;;54868-4577-01
 ;;9002226.02101,"805,54868-4577-01 ",.02)
 ;;54868-4577-01
 ;;9002226.02101,"805,54868-4577-03 ",.01)
 ;;54868-4577-03
 ;;9002226.02101,"805,54868-4577-03 ",.02)
 ;;54868-4577-03
 ;;9002226.02101,"805,54868-4578-00 ",.01)
 ;;54868-4578-00
 ;;9002226.02101,"805,54868-4578-00 ",.02)
 ;;54868-4578-00
 ;;9002226.02101,"805,54868-4578-01 ",.01)
 ;;54868-4578-01
 ;;9002226.02101,"805,54868-4578-01 ",.02)
 ;;54868-4578-01
 ;;9002226.02101,"805,54868-4578-02 ",.01)
 ;;54868-4578-02
 ;;9002226.02101,"805,54868-4578-02 ",.02)
 ;;54868-4578-02
 ;;9002226.02101,"805,54868-4578-03 ",.01)
 ;;54868-4578-03
 ;;9002226.02101,"805,54868-4578-03 ",.02)
 ;;54868-4578-03
 ;;9002226.02101,"805,54868-4621-00 ",.01)
 ;;54868-4621-00
 ;;9002226.02101,"805,54868-4621-00 ",.02)
 ;;54868-4621-00
 ;;9002226.02101,"805,54868-4661-02 ",.01)
 ;;54868-4661-02
