BGP61E20 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,54569-6298-03 ",.02)
 ;;54569-6298-03
 ;;9002226.02101,"1218,54569-6314-00 ",.01)
 ;;54569-6314-00
 ;;9002226.02101,"1218,54569-6314-00 ",.02)
 ;;54569-6314-00
 ;;9002226.02101,"1218,54569-6315-00 ",.01)
 ;;54569-6315-00
 ;;9002226.02101,"1218,54569-6315-00 ",.02)
 ;;54569-6315-00
 ;;9002226.02101,"1218,54569-6342-00 ",.01)
 ;;54569-6342-00
 ;;9002226.02101,"1218,54569-6342-00 ",.02)
 ;;54569-6342-00
 ;;9002226.02101,"1218,54569-6342-01 ",.01)
 ;;54569-6342-01
 ;;9002226.02101,"1218,54569-6342-01 ",.02)
 ;;54569-6342-01
 ;;9002226.02101,"1218,54868-0052-00 ",.01)
 ;;54868-0052-00
 ;;9002226.02101,"1218,54868-0052-00 ",.02)
 ;;54868-0052-00
 ;;9002226.02101,"1218,54868-0052-01 ",.01)
 ;;54868-0052-01
 ;;9002226.02101,"1218,54868-0052-01 ",.02)
 ;;54868-0052-01
 ;;9002226.02101,"1218,54868-0052-02 ",.01)
 ;;54868-0052-02
 ;;9002226.02101,"1218,54868-0052-02 ",.02)
 ;;54868-0052-02
 ;;9002226.02101,"1218,54868-0053-02 ",.01)
 ;;54868-0053-02
 ;;9002226.02101,"1218,54868-0053-02 ",.02)
 ;;54868-0053-02
 ;;9002226.02101,"1218,54868-0053-03 ",.01)
 ;;54868-0053-03
 ;;9002226.02101,"1218,54868-0053-03 ",.02)
 ;;54868-0053-03
 ;;9002226.02101,"1218,54868-0053-07 ",.01)
 ;;54868-0053-07
 ;;9002226.02101,"1218,54868-0053-07 ",.02)
 ;;54868-0053-07
 ;;9002226.02101,"1218,54868-0106-00 ",.01)
 ;;54868-0106-00
 ;;9002226.02101,"1218,54868-0106-00 ",.02)
 ;;54868-0106-00
 ;;9002226.02101,"1218,54868-0106-01 ",.01)
 ;;54868-0106-01
 ;;9002226.02101,"1218,54868-0106-01 ",.02)
 ;;54868-0106-01
 ;;9002226.02101,"1218,54868-0293-00 ",.01)
 ;;54868-0293-00
 ;;9002226.02101,"1218,54868-0293-00 ",.02)
 ;;54868-0293-00
 ;;9002226.02101,"1218,54868-0293-01 ",.01)
 ;;54868-0293-01
 ;;9002226.02101,"1218,54868-0293-01 ",.02)
 ;;54868-0293-01
 ;;9002226.02101,"1218,54868-0293-05 ",.01)
 ;;54868-0293-05
 ;;9002226.02101,"1218,54868-0293-05 ",.02)
 ;;54868-0293-05
 ;;9002226.02101,"1218,54868-0293-06 ",.01)
 ;;54868-0293-06
 ;;9002226.02101,"1218,54868-0293-06 ",.02)
 ;;54868-0293-06
 ;;9002226.02101,"1218,54868-0321-00 ",.01)
 ;;54868-0321-00
 ;;9002226.02101,"1218,54868-0321-00 ",.02)
 ;;54868-0321-00
 ;;9002226.02101,"1218,54868-0674-00 ",.01)
 ;;54868-0674-00
 ;;9002226.02101,"1218,54868-0674-00 ",.02)
 ;;54868-0674-00
 ;;9002226.02101,"1218,54868-0674-01 ",.01)
 ;;54868-0674-01
 ;;9002226.02101,"1218,54868-0674-01 ",.02)
 ;;54868-0674-01
 ;;9002226.02101,"1218,54868-0680-00 ",.01)
 ;;54868-0680-00
 ;;9002226.02101,"1218,54868-0680-00 ",.02)
 ;;54868-0680-00
 ;;9002226.02101,"1218,54868-0680-01 ",.01)
 ;;54868-0680-01
 ;;9002226.02101,"1218,54868-0680-01 ",.02)
 ;;54868-0680-01
 ;;9002226.02101,"1218,54868-0685-01 ",.01)
 ;;54868-0685-01
 ;;9002226.02101,"1218,54868-0685-01 ",.02)
 ;;54868-0685-01
 ;;9002226.02101,"1218,54868-0696-01 ",.01)
 ;;54868-0696-01
 ;;9002226.02101,"1218,54868-0696-01 ",.02)
 ;;54868-0696-01
 ;;9002226.02101,"1218,54868-0696-02 ",.01)
 ;;54868-0696-02
 ;;9002226.02101,"1218,54868-0696-02 ",.02)
 ;;54868-0696-02
 ;;9002226.02101,"1218,54868-0696-03 ",.01)
 ;;54868-0696-03
 ;;9002226.02101,"1218,54868-0696-03 ",.02)
 ;;54868-0696-03
 ;;9002226.02101,"1218,54868-0701-00 ",.01)
 ;;54868-0701-00
 ;;9002226.02101,"1218,54868-0701-00 ",.02)
 ;;54868-0701-00
 ;;9002226.02101,"1218,54868-0854-00 ",.01)
 ;;54868-0854-00
 ;;9002226.02101,"1218,54868-0854-00 ",.02)
 ;;54868-0854-00
 ;;9002226.02101,"1218,54868-0854-01 ",.01)
 ;;54868-0854-01
 ;;9002226.02101,"1218,54868-0854-01 ",.02)
 ;;54868-0854-01
 ;;9002226.02101,"1218,54868-1063-00 ",.01)
 ;;54868-1063-00
 ;;9002226.02101,"1218,54868-1063-00 ",.02)
 ;;54868-1063-00
 ;;9002226.02101,"1218,54868-1063-01 ",.01)
 ;;54868-1063-01
 ;;9002226.02101,"1218,54868-1063-01 ",.02)
 ;;54868-1063-01
 ;;9002226.02101,"1218,54868-1063-02 ",.01)
 ;;54868-1063-02
 ;;9002226.02101,"1218,54868-1063-02 ",.02)
 ;;54868-1063-02
 ;;9002226.02101,"1218,54868-1441-00 ",.01)
 ;;54868-1441-00
 ;;9002226.02101,"1218,54868-1441-00 ",.02)
 ;;54868-1441-00
 ;;9002226.02101,"1218,54868-1441-01 ",.01)
 ;;54868-1441-01
 ;;9002226.02101,"1218,54868-1441-01 ",.02)
 ;;54868-1441-01
 ;;9002226.02101,"1218,54868-1442-00 ",.01)
 ;;54868-1442-00
 ;;9002226.02101,"1218,54868-1442-00 ",.02)
 ;;54868-1442-00
 ;;9002226.02101,"1218,54868-1442-01 ",.01)
 ;;54868-1442-01
 ;;9002226.02101,"1218,54868-1442-01 ",.02)
 ;;54868-1442-01
 ;;9002226.02101,"1218,54868-1442-02 ",.01)
 ;;54868-1442-02
 ;;9002226.02101,"1218,54868-1442-02 ",.02)
 ;;54868-1442-02
 ;;9002226.02101,"1218,54868-1517-00 ",.01)
 ;;54868-1517-00
 ;;9002226.02101,"1218,54868-1517-00 ",.02)
 ;;54868-1517-00
 ;;9002226.02101,"1218,54868-1517-02 ",.01)
 ;;54868-1517-02
 ;;9002226.02101,"1218,54868-1517-02 ",.02)
 ;;54868-1517-02
 ;;9002226.02101,"1218,54868-1517-03 ",.01)
 ;;54868-1517-03
 ;;9002226.02101,"1218,54868-1517-03 ",.02)
 ;;54868-1517-03
 ;;9002226.02101,"1218,54868-1518-00 ",.01)
 ;;54868-1518-00
 ;;9002226.02101,"1218,54868-1518-00 ",.02)
 ;;54868-1518-00
 ;;9002226.02101,"1218,54868-1518-01 ",.01)
 ;;54868-1518-01
 ;;9002226.02101,"1218,54868-1518-01 ",.02)
 ;;54868-1518-01
 ;;9002226.02101,"1218,54868-1518-02 ",.01)
 ;;54868-1518-02
 ;;9002226.02101,"1218,54868-1518-02 ",.02)
 ;;54868-1518-02
 ;;9002226.02101,"1218,54868-1518-03 ",.01)
 ;;54868-1518-03
 ;;9002226.02101,"1218,54868-1518-03 ",.02)
 ;;54868-1518-03
 ;;9002226.02101,"1218,54868-1871-00 ",.01)
 ;;54868-1871-00
 ;;9002226.02101,"1218,54868-1871-00 ",.02)
 ;;54868-1871-00
 ;;9002226.02101,"1218,54868-1871-01 ",.01)
 ;;54868-1871-01
 ;;9002226.02101,"1218,54868-1871-01 ",.02)
 ;;54868-1871-01
 ;;9002226.02101,"1218,54868-1871-02 ",.01)
 ;;54868-1871-02
 ;;9002226.02101,"1218,54868-1871-02 ",.02)
 ;;54868-1871-02
 ;;9002226.02101,"1218,54868-1871-04 ",.01)
 ;;54868-1871-04
 ;;9002226.02101,"1218,54868-1871-04 ",.02)
 ;;54868-1871-04
 ;;9002226.02101,"1218,54868-1971-00 ",.01)
 ;;54868-1971-00
 ;;9002226.02101,"1218,54868-1971-00 ",.02)
 ;;54868-1971-00
 ;;9002226.02101,"1218,54868-1971-01 ",.01)
 ;;54868-1971-01
 ;;9002226.02101,"1218,54868-1971-01 ",.02)
 ;;54868-1971-01
 ;;9002226.02101,"1218,54868-1971-03 ",.01)
 ;;54868-1971-03
 ;;9002226.02101,"1218,54868-1971-03 ",.02)
 ;;54868-1971-03
 ;;9002226.02101,"1218,54868-1971-04 ",.01)
 ;;54868-1971-04
 ;;9002226.02101,"1218,54868-1971-04 ",.02)
 ;;54868-1971-04
 ;;9002226.02101,"1218,54868-1980-00 ",.01)
 ;;54868-1980-00
 ;;9002226.02101,"1218,54868-1980-00 ",.02)
 ;;54868-1980-00
 ;;9002226.02101,"1218,54868-1980-01 ",.01)
 ;;54868-1980-01
 ;;9002226.02101,"1218,54868-1980-01 ",.02)
 ;;54868-1980-01
 ;;9002226.02101,"1218,54868-2349-01 ",.01)
 ;;54868-2349-01
 ;;9002226.02101,"1218,54868-2349-01 ",.02)
 ;;54868-2349-01
 ;;9002226.02101,"1218,54868-2349-02 ",.01)
 ;;54868-2349-02
 ;;9002226.02101,"1218,54868-2349-02 ",.02)
 ;;54868-2349-02
 ;;9002226.02101,"1218,54868-2349-03 ",.01)
 ;;54868-2349-03
 ;;9002226.02101,"1218,54868-2349-03 ",.02)
 ;;54868-2349-03
 ;;9002226.02101,"1218,54868-2349-04 ",.01)
 ;;54868-2349-04
 ;;9002226.02101,"1218,54868-2349-04 ",.02)
 ;;54868-2349-04
 ;;9002226.02101,"1218,54868-2349-05 ",.01)
 ;;54868-2349-05
 ;;9002226.02101,"1218,54868-2349-05 ",.02)
 ;;54868-2349-05
 ;;9002226.02101,"1218,54868-2572-00 ",.01)
 ;;54868-2572-00
 ;;9002226.02101,"1218,54868-2572-00 ",.02)
 ;;54868-2572-00
 ;;9002226.02101,"1218,54868-2572-01 ",.01)
 ;;54868-2572-01
 ;;9002226.02101,"1218,54868-2572-01 ",.02)
 ;;54868-2572-01
 ;;9002226.02101,"1218,54868-2572-02 ",.01)
 ;;54868-2572-02
 ;;9002226.02101,"1218,54868-2572-02 ",.02)
 ;;54868-2572-02
 ;;9002226.02101,"1218,54868-2683-00 ",.01)
 ;;54868-2683-00
 ;;9002226.02101,"1218,54868-2683-00 ",.02)
 ;;54868-2683-00
 ;;9002226.02101,"1218,54868-2683-01 ",.01)
 ;;54868-2683-01
 ;;9002226.02101,"1218,54868-2683-01 ",.02)
 ;;54868-2683-01
 ;;9002226.02101,"1218,54868-2683-02 ",.01)
 ;;54868-2683-02
 ;;9002226.02101,"1218,54868-2683-02 ",.02)
 ;;54868-2683-02
 ;;9002226.02101,"1218,54868-2864-00 ",.01)
 ;;54868-2864-00
 ;;9002226.02101,"1218,54868-2864-00 ",.02)
 ;;54868-2864-00
 ;;9002226.02101,"1218,54868-2864-01 ",.01)
 ;;54868-2864-01
 ;;9002226.02101,"1218,54868-2864-01 ",.02)
 ;;54868-2864-01
 ;;9002226.02101,"1218,54868-2989-00 ",.01)
 ;;54868-2989-00
 ;;9002226.02101,"1218,54868-2989-00 ",.02)
 ;;54868-2989-00
 ;;9002226.02101,"1218,54868-2989-02 ",.01)
 ;;54868-2989-02
 ;;9002226.02101,"1218,54868-2989-02 ",.02)
 ;;54868-2989-02
 ;;9002226.02101,"1218,54868-2989-03 ",.01)
 ;;54868-2989-03
 ;;9002226.02101,"1218,54868-2989-03 ",.02)
 ;;54868-2989-03
 ;;9002226.02101,"1218,54868-2989-04 ",.01)
 ;;54868-2989-04
 ;;9002226.02101,"1218,54868-2989-04 ",.02)
 ;;54868-2989-04
 ;;9002226.02101,"1218,54868-2989-05 ",.01)
 ;;54868-2989-05
 ;;9002226.02101,"1218,54868-2989-05 ",.02)
 ;;54868-2989-05
 ;;9002226.02101,"1218,54868-2989-06 ",.01)
 ;;54868-2989-06
 ;;9002226.02101,"1218,54868-2989-06 ",.02)
 ;;54868-2989-06
 ;;9002226.02101,"1218,54868-2989-07 ",.01)
 ;;54868-2989-07
 ;;9002226.02101,"1218,54868-2989-07 ",.02)
 ;;54868-2989-07
 ;;9002226.02101,"1218,54868-2990-00 ",.01)
 ;;54868-2990-00
 ;;9002226.02101,"1218,54868-2990-00 ",.02)
 ;;54868-2990-00
 ;;9002226.02101,"1218,54868-2990-02 ",.01)
 ;;54868-2990-02
 ;;9002226.02101,"1218,54868-2990-02 ",.02)
 ;;54868-2990-02
 ;;9002226.02101,"1218,54868-2990-03 ",.01)
 ;;54868-2990-03
 ;;9002226.02101,"1218,54868-2990-03 ",.02)
 ;;54868-2990-03
 ;;9002226.02101,"1218,54868-2990-04 ",.01)
 ;;54868-2990-04
 ;;9002226.02101,"1218,54868-2990-04 ",.02)
 ;;54868-2990-04
 ;;9002226.02101,"1218,54868-2990-05 ",.01)
 ;;54868-2990-05
 ;;9002226.02101,"1218,54868-2990-05 ",.02)
 ;;54868-2990-05
 ;;9002226.02101,"1218,54868-3062-00 ",.01)
 ;;54868-3062-00
 ;;9002226.02101,"1218,54868-3062-00 ",.02)
 ;;54868-3062-00
 ;;9002226.02101,"1218,54868-3062-01 ",.01)
 ;;54868-3062-01
 ;;9002226.02101,"1218,54868-3062-01 ",.02)
 ;;54868-3062-01
 ;;9002226.02101,"1218,54868-3062-02 ",.01)
 ;;54868-3062-02
 ;;9002226.02101,"1218,54868-3062-02 ",.02)
 ;;54868-3062-02
 ;;9002226.02101,"1218,54868-3062-03 ",.01)
 ;;54868-3062-03
 ;;9002226.02101,"1218,54868-3062-03 ",.02)
 ;;54868-3062-03
 ;;9002226.02101,"1218,54868-3064-00 ",.01)
 ;;54868-3064-00
 ;;9002226.02101,"1218,54868-3064-00 ",.02)
 ;;54868-3064-00
 ;;9002226.02101,"1218,54868-3064-01 ",.01)
 ;;54868-3064-01
 ;;9002226.02101,"1218,54868-3064-01 ",.02)
 ;;54868-3064-01
 ;;9002226.02101,"1218,54868-3257-01 ",.01)
 ;;54868-3257-01
 ;;9002226.02101,"1218,54868-3257-01 ",.02)
 ;;54868-3257-01
 ;;9002226.02101,"1218,54868-3257-02 ",.01)
 ;;54868-3257-02
 ;;9002226.02101,"1218,54868-3257-02 ",.02)
 ;;54868-3257-02
 ;;9002226.02101,"1218,54868-3257-03 ",.01)
 ;;54868-3257-03
 ;;9002226.02101,"1218,54868-3257-03 ",.02)
 ;;54868-3257-03
 ;;9002226.02101,"1218,54868-3257-04 ",.01)
 ;;54868-3257-04
 ;;9002226.02101,"1218,54868-3257-04 ",.02)
 ;;54868-3257-04
 ;;9002226.02101,"1218,54868-3257-05 ",.01)
 ;;54868-3257-05
 ;;9002226.02101,"1218,54868-3257-05 ",.02)
 ;;54868-3257-05
 ;;9002226.02101,"1218,54868-3257-06 ",.01)
 ;;54868-3257-06
 ;;9002226.02101,"1218,54868-3257-06 ",.02)
 ;;54868-3257-06
 ;;9002226.02101,"1218,54868-3587-00 ",.01)
 ;;54868-3587-00
 ;;9002226.02101,"1218,54868-3587-00 ",.02)
 ;;54868-3587-00
 ;;9002226.02101,"1218,54868-3587-01 ",.01)
 ;;54868-3587-01
 ;;9002226.02101,"1218,54868-3587-01 ",.02)
 ;;54868-3587-01
 ;;9002226.02101,"1218,54868-3587-02 ",.01)
 ;;54868-3587-02
 ;;9002226.02101,"1218,54868-3587-02 ",.02)
 ;;54868-3587-02
 ;;9002226.02101,"1218,54868-3587-03 ",.01)
 ;;54868-3587-03
 ;;9002226.02101,"1218,54868-3587-03 ",.02)
 ;;54868-3587-03
 ;;9002226.02101,"1218,54868-3587-04 ",.01)
 ;;54868-3587-04
 ;;9002226.02101,"1218,54868-3587-04 ",.02)
 ;;54868-3587-04
 ;;9002226.02101,"1218,54868-3602-00 ",.01)
 ;;54868-3602-00
 ;;9002226.02101,"1218,54868-3602-00 ",.02)
 ;;54868-3602-00
 ;;9002226.02101,"1218,54868-3721-01 ",.01)
 ;;54868-3721-01
 ;;9002226.02101,"1218,54868-3721-01 ",.02)
 ;;54868-3721-01
 ;;9002226.02101,"1218,54868-3721-02 ",.01)
 ;;54868-3721-02
 ;;9002226.02101,"1218,54868-3721-02 ",.02)
 ;;54868-3721-02
 ;;9002226.02101,"1218,54868-4173-00 ",.01)
 ;;54868-4173-00
 ;;9002226.02101,"1218,54868-4173-00 ",.02)
 ;;54868-4173-00
 ;;9002226.02101,"1218,54868-4179-00 ",.01)
 ;;54868-4179-00
 ;;9002226.02101,"1218,54868-4179-00 ",.02)
 ;;54868-4179-00
 ;;9002226.02101,"1218,54868-4223-00 ",.01)
 ;;54868-4223-00
 ;;9002226.02101,"1218,54868-4223-00 ",.02)
 ;;54868-4223-00
 ;;9002226.02101,"1218,54868-4223-01 ",.01)
 ;;54868-4223-01
