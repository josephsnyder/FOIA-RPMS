BGP51Q31 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,51138-0533-10 ",.01)
 ;;51138-0533-10
 ;;9002226.02101,"1729,51138-0533-10 ",.02)
 ;;51138-0533-10
 ;;9002226.02101,"1729,51138-0533-30 ",.01)
 ;;51138-0533-30
 ;;9002226.02101,"1729,51138-0533-30 ",.02)
 ;;51138-0533-30
 ;;9002226.02101,"1729,51138-0534-10 ",.01)
 ;;51138-0534-10
 ;;9002226.02101,"1729,51138-0534-10 ",.02)
 ;;51138-0534-10
 ;;9002226.02101,"1729,51138-0534-30 ",.01)
 ;;51138-0534-30
 ;;9002226.02101,"1729,51138-0534-30 ",.02)
 ;;51138-0534-30
 ;;9002226.02101,"1729,51138-0535-10 ",.01)
 ;;51138-0535-10
 ;;9002226.02101,"1729,51138-0535-10 ",.02)
 ;;51138-0535-10
 ;;9002226.02101,"1729,51138-0535-30 ",.01)
 ;;51138-0535-30
 ;;9002226.02101,"1729,51138-0535-30 ",.02)
 ;;51138-0535-30
 ;;9002226.02101,"1729,51138-0536-10 ",.01)
 ;;51138-0536-10
 ;;9002226.02101,"1729,51138-0536-10 ",.02)
 ;;51138-0536-10
 ;;9002226.02101,"1729,51138-0536-30 ",.01)
 ;;51138-0536-30
 ;;9002226.02101,"1729,51138-0536-30 ",.02)
 ;;51138-0536-30
 ;;9002226.02101,"1729,51138-0551-30 ",.01)
 ;;51138-0551-30
 ;;9002226.02101,"1729,51138-0551-30 ",.02)
 ;;51138-0551-30
 ;;9002226.02101,"1729,51138-0552-30 ",.01)
 ;;51138-0552-30
 ;;9002226.02101,"1729,51138-0552-30 ",.02)
 ;;51138-0552-30
 ;;9002226.02101,"1729,51138-0553-30 ",.01)
 ;;51138-0553-30
 ;;9002226.02101,"1729,51138-0553-30 ",.02)
 ;;51138-0553-30
 ;;9002226.02101,"1729,51138-0554-30 ",.01)
 ;;51138-0554-30
 ;;9002226.02101,"1729,51138-0554-30 ",.02)
 ;;51138-0554-30
 ;;9002226.02101,"1729,51138-0555-30 ",.01)
 ;;51138-0555-30
 ;;9002226.02101,"1729,51138-0555-30 ",.02)
 ;;51138-0555-30
 ;;9002226.02101,"1729,51138-0556-30 ",.01)
 ;;51138-0556-30
 ;;9002226.02101,"1729,51138-0556-30 ",.02)
 ;;51138-0556-30
 ;;9002226.02101,"1729,51138-0573-30 ",.01)
 ;;51138-0573-30
 ;;9002226.02101,"1729,51138-0573-30 ",.02)
 ;;51138-0573-30
 ;;9002226.02101,"1729,51138-0574-30 ",.01)
 ;;51138-0574-30
 ;;9002226.02101,"1729,51138-0574-30 ",.02)
 ;;51138-0574-30
 ;;9002226.02101,"1729,51138-0575-10 ",.01)
 ;;51138-0575-10
 ;;9002226.02101,"1729,51138-0575-10 ",.02)
 ;;51138-0575-10
 ;;9002226.02101,"1729,51138-0575-30 ",.01)
 ;;51138-0575-30
 ;;9002226.02101,"1729,51138-0575-30 ",.02)
 ;;51138-0575-30
 ;;9002226.02101,"1729,51138-0576-30 ",.01)
 ;;51138-0576-30
 ;;9002226.02101,"1729,51138-0576-30 ",.02)
 ;;51138-0576-30
 ;;9002226.02101,"1729,51138-0577-20 ",.01)
 ;;51138-0577-20
 ;;9002226.02101,"1729,51138-0577-20 ",.02)
 ;;51138-0577-20
 ;;9002226.02101,"1729,51138-0577-30 ",.01)
 ;;51138-0577-30
 ;;9002226.02101,"1729,51138-0577-30 ",.02)
 ;;51138-0577-30
 ;;9002226.02101,"1729,51138-0578-10 ",.01)
 ;;51138-0578-10
 ;;9002226.02101,"1729,51138-0578-10 ",.02)
 ;;51138-0578-10
 ;;9002226.02101,"1729,51138-0578-30 ",.01)
 ;;51138-0578-30
 ;;9002226.02101,"1729,51138-0578-30 ",.02)
 ;;51138-0578-30
 ;;9002226.02101,"1729,51138-0579-10 ",.01)
 ;;51138-0579-10
 ;;9002226.02101,"1729,51138-0579-10 ",.02)
 ;;51138-0579-10
 ;;9002226.02101,"1729,51138-0579-20 ",.01)
 ;;51138-0579-20
 ;;9002226.02101,"1729,51138-0579-20 ",.02)
 ;;51138-0579-20
 ;;9002226.02101,"1729,51138-0579-30 ",.01)
 ;;51138-0579-30
 ;;9002226.02101,"1729,51138-0579-30 ",.02)
 ;;51138-0579-30
 ;;9002226.02101,"1729,51672-4037-01 ",.01)
 ;;51672-4037-01
 ;;9002226.02101,"1729,51672-4037-01 ",.02)
 ;;51672-4037-01
 ;;9002226.02101,"1729,51672-4037-03 ",.01)
 ;;51672-4037-03
 ;;9002226.02101,"1729,51672-4037-03 ",.02)
 ;;51672-4037-03
 ;;9002226.02101,"1729,51672-4038-01 ",.01)
 ;;51672-4038-01
 ;;9002226.02101,"1729,51672-4038-01 ",.02)
 ;;51672-4038-01
 ;;9002226.02101,"1729,51672-4038-03 ",.01)
 ;;51672-4038-03
 ;;9002226.02101,"1729,51672-4038-03 ",.02)
 ;;51672-4038-03
 ;;9002226.02101,"1729,51672-4039-01 ",.01)
 ;;51672-4039-01
 ;;9002226.02101,"1729,51672-4039-01 ",.02)
 ;;51672-4039-01
 ;;9002226.02101,"1729,51672-4039-03 ",.01)
 ;;51672-4039-03
 ;;9002226.02101,"1729,51672-4039-03 ",.02)
 ;;51672-4039-03
 ;;9002226.02101,"1729,51672-4040-01 ",.01)
 ;;51672-4040-01
 ;;9002226.02101,"1729,51672-4040-01 ",.02)
 ;;51672-4040-01
 ;;9002226.02101,"1729,51672-4040-03 ",.01)
 ;;51672-4040-03
 ;;9002226.02101,"1729,51672-4040-03 ",.02)
 ;;51672-4040-03
 ;;9002226.02101,"1729,51672-4045-01 ",.01)
 ;;51672-4045-01
 ;;9002226.02101,"1729,51672-4045-01 ",.02)
 ;;51672-4045-01
 ;;9002226.02101,"1729,51672-4046-01 ",.01)
 ;;51672-4046-01
 ;;9002226.02101,"1729,51672-4046-01 ",.02)
 ;;51672-4046-01
 ;;9002226.02101,"1729,52652-1001-01 ",.01)
 ;;52652-1001-01
 ;;9002226.02101,"1729,52652-1001-01 ",.02)
 ;;52652-1001-01
 ;;9002226.02101,"1729,52959-0137-15 ",.01)
 ;;52959-0137-15
 ;;9002226.02101,"1729,52959-0137-15 ",.02)
 ;;52959-0137-15
 ;;9002226.02101,"1729,52959-0180-30 ",.01)
 ;;52959-0180-30
 ;;9002226.02101,"1729,52959-0180-30 ",.02)
 ;;52959-0180-30
 ;;9002226.02101,"1729,52959-0180-60 ",.01)
 ;;52959-0180-60
 ;;9002226.02101,"1729,52959-0180-60 ",.02)
 ;;52959-0180-60
 ;;9002226.02101,"1729,52959-0498-00 ",.01)
 ;;52959-0498-00
 ;;9002226.02101,"1729,52959-0498-00 ",.02)
 ;;52959-0498-00
 ;;9002226.02101,"1729,52959-0728-15 ",.01)
 ;;52959-0728-15
 ;;9002226.02101,"1729,52959-0728-15 ",.02)
 ;;52959-0728-15
 ;;9002226.02101,"1729,52959-0728-20 ",.01)
 ;;52959-0728-20
 ;;9002226.02101,"1729,52959-0728-20 ",.02)
 ;;52959-0728-20
 ;;9002226.02101,"1729,52959-0728-30 ",.01)
 ;;52959-0728-30
 ;;9002226.02101,"1729,52959-0728-30 ",.02)
 ;;52959-0728-30
 ;;9002226.02101,"1729,52959-0728-90 ",.01)
 ;;52959-0728-90
 ;;9002226.02101,"1729,52959-0728-90 ",.02)
 ;;52959-0728-90
 ;;9002226.02101,"1729,52959-0729-30 ",.01)
 ;;52959-0729-30
 ;;9002226.02101,"1729,52959-0729-30 ",.02)
 ;;52959-0729-30
 ;;9002226.02101,"1729,52959-0729-60 ",.01)
 ;;52959-0729-60
 ;;9002226.02101,"1729,52959-0729-60 ",.02)
 ;;52959-0729-60
 ;;9002226.02101,"1729,52959-0729-90 ",.01)
 ;;52959-0729-90
 ;;9002226.02101,"1729,52959-0729-90 ",.02)
 ;;52959-0729-90
 ;;9002226.02101,"1729,52959-0753-00 ",.01)
 ;;52959-0753-00
 ;;9002226.02101,"1729,52959-0753-00 ",.02)
 ;;52959-0753-00
 ;;9002226.02101,"1729,52959-0753-30 ",.01)
 ;;52959-0753-30
 ;;9002226.02101,"1729,52959-0753-30 ",.02)
 ;;52959-0753-30
 ;;9002226.02101,"1729,52959-0753-60 ",.01)
 ;;52959-0753-60
 ;;9002226.02101,"1729,52959-0753-60 ",.02)
 ;;52959-0753-60
 ;;9002226.02101,"1729,52959-0756-30 ",.01)
 ;;52959-0756-30
 ;;9002226.02101,"1729,52959-0756-30 ",.02)
 ;;52959-0756-30
 ;;9002226.02101,"1729,52959-0831-30 ",.01)
 ;;52959-0831-30
 ;;9002226.02101,"1729,52959-0831-30 ",.02)
 ;;52959-0831-30
 ;;9002226.02101,"1729,52959-0835-30 ",.01)
 ;;52959-0835-30
 ;;9002226.02101,"1729,52959-0835-30 ",.02)
 ;;52959-0835-30
 ;;9002226.02101,"1729,52959-0835-60 ",.01)
 ;;52959-0835-60
 ;;9002226.02101,"1729,52959-0835-60 ",.02)
 ;;52959-0835-60
 ;;9002226.02101,"1729,52959-0841-30 ",.01)
 ;;52959-0841-30
 ;;9002226.02101,"1729,52959-0841-30 ",.02)
 ;;52959-0841-30
 ;;9002226.02101,"1729,52959-0841-60 ",.01)
 ;;52959-0841-60
 ;;9002226.02101,"1729,52959-0841-60 ",.02)
 ;;52959-0841-60
 ;;9002226.02101,"1729,52959-0854-20 ",.01)
 ;;52959-0854-20
 ;;9002226.02101,"1729,52959-0854-20 ",.02)
 ;;52959-0854-20
 ;;9002226.02101,"1729,52959-0854-30 ",.01)
 ;;52959-0854-30
 ;;9002226.02101,"1729,52959-0854-30 ",.02)
 ;;52959-0854-30
 ;;9002226.02101,"1729,52959-0907-30 ",.01)
 ;;52959-0907-30
 ;;9002226.02101,"1729,52959-0907-30 ",.02)
 ;;52959-0907-30
 ;;9002226.02101,"1729,52959-0942-30 ",.01)
 ;;52959-0942-30
 ;;9002226.02101,"1729,52959-0942-30 ",.02)
 ;;52959-0942-30
 ;;9002226.02101,"1729,52959-0973-30 ",.01)
 ;;52959-0973-30
 ;;9002226.02101,"1729,52959-0973-30 ",.02)
 ;;52959-0973-30
 ;;9002226.02101,"1729,52959-0975-30 ",.01)
 ;;52959-0975-30
 ;;9002226.02101,"1729,52959-0975-30 ",.02)
 ;;52959-0975-30
 ;;9002226.02101,"1729,52959-0997-30 ",.01)
 ;;52959-0997-30
 ;;9002226.02101,"1729,52959-0997-30 ",.02)
 ;;52959-0997-30
 ;;9002226.02101,"1729,53002-0431-00 ",.01)
 ;;53002-0431-00
 ;;9002226.02101,"1729,53002-0431-00 ",.02)
 ;;53002-0431-00
 ;;9002226.02101,"1729,53002-0431-30 ",.01)
 ;;53002-0431-30
 ;;9002226.02101,"1729,53002-0431-30 ",.02)
 ;;53002-0431-30
 ;;9002226.02101,"1729,53002-0431-60 ",.01)
 ;;53002-0431-60
 ;;9002226.02101,"1729,53002-0431-60 ",.02)
 ;;53002-0431-60
 ;;9002226.02101,"1729,53002-1086-00 ",.01)
 ;;53002-1086-00
 ;;9002226.02101,"1729,53002-1086-00 ",.02)
 ;;53002-1086-00
 ;;9002226.02101,"1729,53002-1086-03 ",.01)
 ;;53002-1086-03
 ;;9002226.02101,"1729,53002-1086-03 ",.02)
 ;;53002-1086-03
 ;;9002226.02101,"1729,53002-1086-06 ",.01)
 ;;53002-1086-06
 ;;9002226.02101,"1729,53002-1086-06 ",.02)
 ;;53002-1086-06
 ;;9002226.02101,"1729,53002-1123-00 ",.01)
 ;;53002-1123-00
 ;;9002226.02101,"1729,53002-1123-00 ",.02)
 ;;53002-1123-00
 ;;9002226.02101,"1729,53002-1123-03 ",.01)
 ;;53002-1123-03
 ;;9002226.02101,"1729,53002-1123-03 ",.02)
 ;;53002-1123-03
 ;;9002226.02101,"1729,53002-1123-06 ",.01)
 ;;53002-1123-06
 ;;9002226.02101,"1729,53002-1123-06 ",.02)
 ;;53002-1123-06
 ;;9002226.02101,"1729,53002-1178-00 ",.01)
 ;;53002-1178-00
 ;;9002226.02101,"1729,53002-1178-00 ",.02)
 ;;53002-1178-00
 ;;9002226.02101,"1729,53002-1178-03 ",.01)
 ;;53002-1178-03
 ;;9002226.02101,"1729,53002-1178-03 ",.02)
 ;;53002-1178-03
 ;;9002226.02101,"1729,53002-1178-06 ",.01)
 ;;53002-1178-06
 ;;9002226.02101,"1729,53002-1178-06 ",.02)
 ;;53002-1178-06
 ;;9002226.02101,"1729,53002-1225-00 ",.01)
 ;;53002-1225-00
 ;;9002226.02101,"1729,53002-1225-00 ",.02)
 ;;53002-1225-00
 ;;9002226.02101,"1729,53002-1225-03 ",.01)
 ;;53002-1225-03
 ;;9002226.02101,"1729,53002-1225-03 ",.02)
 ;;53002-1225-03
 ;;9002226.02101,"1729,53002-1225-06 ",.01)
 ;;53002-1225-06
 ;;9002226.02101,"1729,53002-1225-06 ",.02)
 ;;53002-1225-06
 ;;9002226.02101,"1729,53002-1463-00 ",.01)
 ;;53002-1463-00
 ;;9002226.02101,"1729,53002-1463-00 ",.02)
 ;;53002-1463-00
 ;;9002226.02101,"1729,53002-1463-03 ",.01)
 ;;53002-1463-03
 ;;9002226.02101,"1729,53002-1463-03 ",.02)
 ;;53002-1463-03
 ;;9002226.02101,"1729,53217-0003-00 ",.01)
 ;;53217-0003-00
 ;;9002226.02101,"1729,53217-0003-00 ",.02)
 ;;53217-0003-00
 ;;9002226.02101,"1729,53217-0003-30 ",.01)
 ;;53217-0003-30
 ;;9002226.02101,"1729,53217-0003-30 ",.02)
 ;;53217-0003-30
 ;;9002226.02101,"1729,53217-0003-60 ",.01)
 ;;53217-0003-60
 ;;9002226.02101,"1729,53217-0003-60 ",.02)
 ;;53217-0003-60
 ;;9002226.02101,"1729,53217-0003-90 ",.01)
 ;;53217-0003-90
 ;;9002226.02101,"1729,53217-0003-90 ",.02)
 ;;53217-0003-90
 ;;9002226.02101,"1729,53217-0012-30 ",.01)
 ;;53217-0012-30
 ;;9002226.02101,"1729,53217-0012-30 ",.02)
 ;;53217-0012-30
 ;;9002226.02101,"1729,53217-0012-60 ",.01)
 ;;53217-0012-60
 ;;9002226.02101,"1729,53217-0012-60 ",.02)
 ;;53217-0012-60
 ;;9002226.02101,"1729,53217-0012-90 ",.01)
 ;;53217-0012-90
 ;;9002226.02101,"1729,53217-0012-90 ",.02)
 ;;53217-0012-90
 ;;9002226.02101,"1729,53217-0089-30 ",.01)
 ;;53217-0089-30
 ;;9002226.02101,"1729,53217-0089-30 ",.02)
 ;;53217-0089-30
 ;;9002226.02101,"1729,53217-0089-60 ",.01)
 ;;53217-0089-60
 ;;9002226.02101,"1729,53217-0089-60 ",.02)
 ;;53217-0089-60
 ;;9002226.02101,"1729,53217-0089-90 ",.01)
 ;;53217-0089-90
 ;;9002226.02101,"1729,53217-0089-90 ",.02)
 ;;53217-0089-90
 ;;9002226.02101,"1729,53217-0114-00 ",.01)
 ;;53217-0114-00
 ;;9002226.02101,"1729,53217-0114-00 ",.02)
 ;;53217-0114-00
 ;;9002226.02101,"1729,53217-0114-30 ",.01)
 ;;53217-0114-30
 ;;9002226.02101,"1729,53217-0114-30 ",.02)
 ;;53217-0114-30
 ;;9002226.02101,"1729,53217-0114-60 ",.01)
 ;;53217-0114-60
 ;;9002226.02101,"1729,53217-0114-60 ",.02)
 ;;53217-0114-60
 ;;9002226.02101,"1729,53217-0114-90 ",.01)
 ;;53217-0114-90
 ;;9002226.02101,"1729,53217-0114-90 ",.02)
 ;;53217-0114-90
 ;;9002226.02101,"1729,54458-0886-10 ",.01)
 ;;54458-0886-10
 ;;9002226.02101,"1729,54458-0886-10 ",.02)
 ;;54458-0886-10
 ;;9002226.02101,"1729,54458-0893-10 ",.01)
 ;;54458-0893-10
 ;;9002226.02101,"1729,54458-0893-10 ",.02)
 ;;54458-0893-10
 ;;9002226.02101,"1729,54458-0905-02 ",.01)
 ;;54458-0905-02
 ;;9002226.02101,"1729,54458-0905-02 ",.02)
 ;;54458-0905-02
 ;;9002226.02101,"1729,54458-0906-02 ",.01)
 ;;54458-0906-02
 ;;9002226.02101,"1729,54458-0906-02 ",.02)
 ;;54458-0906-02
 ;;9002226.02101,"1729,54458-0907-02 ",.01)
 ;;54458-0907-02
 ;;9002226.02101,"1729,54458-0907-02 ",.02)
 ;;54458-0907-02
 ;;9002226.02101,"1729,54458-0910-02 ",.01)
 ;;54458-0910-02
 ;;9002226.02101,"1729,54458-0910-02 ",.02)
 ;;54458-0910-02
 ;;9002226.02101,"1729,54458-0956-10 ",.01)
 ;;54458-0956-10
 ;;9002226.02101,"1729,54458-0956-10 ",.02)
 ;;54458-0956-10
 ;;9002226.02101,"1729,54458-0957-10 ",.01)
 ;;54458-0957-10
 ;;9002226.02101,"1729,54458-0957-10 ",.02)
 ;;54458-0957-10
 ;;9002226.02101,"1729,54458-0991-10 ",.01)
 ;;54458-0991-10
 ;;9002226.02101,"1729,54458-0991-10 ",.02)
 ;;54458-0991-10
 ;;9002226.02101,"1729,54458-0992-10 ",.01)
 ;;54458-0992-10
 ;;9002226.02101,"1729,54458-0992-10 ",.02)
 ;;54458-0992-10
 ;;9002226.02101,"1729,54458-0993-09 ",.01)
 ;;54458-0993-09
 ;;9002226.02101,"1729,54458-0993-09 ",.02)
 ;;54458-0993-09
 ;;9002226.02101,"1729,54458-0994-10 ",.01)
 ;;54458-0994-10
 ;;9002226.02101,"1729,54458-0994-10 ",.02)
 ;;54458-0994-10
 ;;9002226.02101,"1729,54458-0995-10 ",.01)
 ;;54458-0995-10
 ;;9002226.02101,"1729,54458-0995-10 ",.02)
 ;;54458-0995-10
 ;;9002226.02101,"1729,54458-0996-10 ",.01)
 ;;54458-0996-10
 ;;9002226.02101,"1729,54458-0996-10 ",.02)
 ;;54458-0996-10
 ;;9002226.02101,"1729,54458-0997-10 ",.01)
 ;;54458-0997-10
