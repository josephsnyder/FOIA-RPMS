BGP6T1G4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1798,49999-0073-30 ",.01)
 ;;49999-0073-30
 ;;9002226.02101,"1798,49999-0073-30 ",.02)
 ;;49999-0073-30
 ;;9002226.02101,"1798,49999-0082-60 ",.01)
 ;;49999-0082-60
 ;;9002226.02101,"1798,49999-0082-60 ",.02)
 ;;49999-0082-60
 ;;9002226.02101,"1798,49999-0098-60 ",.01)
 ;;49999-0098-60
 ;;9002226.02101,"1798,49999-0098-60 ",.02)
 ;;49999-0098-60
 ;;9002226.02101,"1798,49999-0161-28 ",.01)
 ;;49999-0161-28
 ;;9002226.02101,"1798,49999-0161-28 ",.02)
 ;;49999-0161-28
 ;;9002226.02101,"1798,49999-0161-90 ",.01)
 ;;49999-0161-90
 ;;9002226.02101,"1798,49999-0161-90 ",.02)
 ;;49999-0161-90
 ;;9002226.02101,"1798,49999-0180-30 ",.01)
 ;;49999-0180-30
 ;;9002226.02101,"1798,49999-0180-30 ",.02)
 ;;49999-0180-30
 ;;9002226.02101,"1798,49999-0181-00 ",.01)
 ;;49999-0181-00
 ;;9002226.02101,"1798,49999-0181-00 ",.02)
 ;;49999-0181-00
 ;;9002226.02101,"1798,49999-0181-30 ",.01)
 ;;49999-0181-30
 ;;9002226.02101,"1798,49999-0181-30 ",.02)
 ;;49999-0181-30
 ;;9002226.02101,"1798,49999-0945-30 ",.01)
 ;;49999-0945-30
 ;;9002226.02101,"1798,49999-0945-30 ",.02)
 ;;49999-0945-30
 ;;9002226.02101,"1798,51079-0200-01 ",.01)
 ;;51079-0200-01
 ;;9002226.02101,"1798,51079-0200-01 ",.02)
 ;;51079-0200-01
 ;;9002226.02101,"1798,51079-0200-20 ",.01)
 ;;51079-0200-20
 ;;9002226.02101,"1798,51079-0200-20 ",.02)
 ;;51079-0200-20
 ;;9002226.02101,"1798,51079-0201-01 ",.01)
 ;;51079-0201-01
 ;;9002226.02101,"1798,51079-0201-01 ",.02)
 ;;51079-0201-01
 ;;9002226.02101,"1798,51079-0201-20 ",.01)
 ;;51079-0201-20
 ;;9002226.02101,"1798,51079-0201-20 ",.02)
 ;;51079-0201-20
 ;;9002226.02101,"1798,51138-0400-30 ",.01)
 ;;51138-0400-30
 ;;9002226.02101,"1798,51138-0400-30 ",.02)
 ;;51138-0400-30
 ;;9002226.02101,"1798,51138-0401-30 ",.01)
 ;;51138-0401-30
 ;;9002226.02101,"1798,51138-0401-30 ",.02)
 ;;51138-0401-30
 ;;9002226.02101,"1798,51138-0407-30 ",.01)
 ;;51138-0407-30
 ;;9002226.02101,"1798,51138-0407-30 ",.02)
 ;;51138-0407-30
 ;;9002226.02101,"1798,51138-0408-30 ",.01)
 ;;51138-0408-30
 ;;9002226.02101,"1798,51138-0408-30 ",.02)
 ;;51138-0408-30
 ;;9002226.02101,"1798,51138-0549-30 ",.01)
 ;;51138-0549-30
 ;;9002226.02101,"1798,51138-0549-30 ",.02)
 ;;51138-0549-30
 ;;9002226.02101,"1798,51138-0550-30 ",.01)
 ;;51138-0550-30
 ;;9002226.02101,"1798,51138-0550-30 ",.02)
 ;;51138-0550-30
 ;;9002226.02101,"1798,52959-0273-08 ",.01)
 ;;52959-0273-08
 ;;9002226.02101,"1798,52959-0273-08 ",.02)
 ;;52959-0273-08
 ;;9002226.02101,"1798,52959-0273-10 ",.01)
 ;;52959-0273-10
 ;;9002226.02101,"1798,52959-0273-10 ",.02)
 ;;52959-0273-10
 ;;9002226.02101,"1798,52959-0273-30 ",.01)
 ;;52959-0273-30
 ;;9002226.02101,"1798,52959-0273-30 ",.02)
 ;;52959-0273-30
 ;;9002226.02101,"1798,52959-0273-40 ",.01)
 ;;52959-0273-40
 ;;9002226.02101,"1798,52959-0273-40 ",.02)
 ;;52959-0273-40
 ;;9002226.02101,"1798,52959-0488-30 ",.01)
 ;;52959-0488-30
 ;;9002226.02101,"1798,52959-0488-30 ",.02)
 ;;52959-0488-30
 ;;9002226.02101,"1798,52959-0945-00 ",.01)
 ;;52959-0945-00
 ;;9002226.02101,"1798,52959-0945-00 ",.02)
 ;;52959-0945-00
 ;;9002226.02101,"1798,53217-0005-30 ",.01)
 ;;53217-0005-30
 ;;9002226.02101,"1798,53217-0005-30 ",.02)
 ;;53217-0005-30
 ;;9002226.02101,"1798,53217-0005-60 ",.01)
 ;;53217-0005-60
 ;;9002226.02101,"1798,53217-0005-60 ",.02)
 ;;53217-0005-60
 ;;9002226.02101,"1798,53217-0005-90 ",.01)
 ;;53217-0005-90
 ;;9002226.02101,"1798,53217-0005-90 ",.02)
 ;;53217-0005-90
 ;;9002226.02101,"1798,54092-0513-02 ",.01)
 ;;54092-0513-02
 ;;9002226.02101,"1798,54092-0513-02 ",.02)
 ;;54092-0513-02
 ;;9002226.02101,"1798,54092-0515-02 ",.01)
 ;;54092-0515-02
 ;;9002226.02101,"1798,54092-0515-02 ",.02)
 ;;54092-0515-02
 ;;9002226.02101,"1798,54092-0517-02 ",.01)
 ;;54092-0517-02
 ;;9002226.02101,"1798,54092-0517-02 ",.02)
 ;;54092-0517-02
 ;;9002226.02101,"1798,54092-0519-02 ",.01)
 ;;54092-0519-02
 ;;9002226.02101,"1798,54092-0519-02 ",.02)
 ;;54092-0519-02
 ;;9002226.02101,"1798,54348-0101-30 ",.01)
 ;;54348-0101-30
 ;;9002226.02101,"1798,54348-0101-30 ",.02)
 ;;54348-0101-30
 ;;9002226.02101,"1798,54348-0102-30 ",.01)
 ;;54348-0102-30
 ;;9002226.02101,"1798,54348-0102-30 ",.02)
 ;;54348-0102-30
 ;;9002226.02101,"1798,54348-0107-12 ",.01)
 ;;54348-0107-12
 ;;9002226.02101,"1798,54348-0107-12 ",.02)
 ;;54348-0107-12
 ;;9002226.02101,"1798,54569-0483-00 ",.01)
 ;;54569-0483-00
 ;;9002226.02101,"1798,54569-0483-00 ",.02)
 ;;54569-0483-00
 ;;9002226.02101,"1798,54569-0484-00 ",.01)
 ;;54569-0484-00
 ;;9002226.02101,"1798,54569-0484-00 ",.02)
 ;;54569-0484-00
 ;;9002226.02101,"1798,54569-0508-01 ",.01)
 ;;54569-0508-01
 ;;9002226.02101,"1798,54569-0508-01 ",.02)
 ;;54569-0508-01
 ;;9002226.02101,"1798,54569-0510-00 ",.01)
 ;;54569-0510-00
 ;;9002226.02101,"1798,54569-0510-00 ",.02)
 ;;54569-0510-00
 ;;9002226.02101,"1798,54569-3121-04 ",.01)
 ;;54569-3121-04
 ;;9002226.02101,"1798,54569-3121-04 ",.02)
 ;;54569-3121-04
 ;;9002226.02101,"1798,54569-3265-01 ",.01)
 ;;54569-3265-01
 ;;9002226.02101,"1798,54569-3265-01 ",.02)
 ;;54569-3265-01
 ;;9002226.02101,"1798,54569-5758-00 ",.01)
 ;;54569-5758-00
 ;;9002226.02101,"1798,54569-5758-00 ",.02)
 ;;54569-5758-00
 ;;9002226.02101,"1798,54569-5758-01 ",.01)
 ;;54569-5758-01
 ;;9002226.02101,"1798,54569-5758-01 ",.02)
 ;;54569-5758-01
 ;;9002226.02101,"1798,54868-0050-01 ",.01)
 ;;54868-0050-01
 ;;9002226.02101,"1798,54868-0050-01 ",.02)
 ;;54868-0050-01
 ;;9002226.02101,"1798,54868-0050-02 ",.01)
 ;;54868-0050-02
 ;;9002226.02101,"1798,54868-0050-02 ",.02)
 ;;54868-0050-02
 ;;9002226.02101,"1798,54868-0050-03 ",.01)
 ;;54868-0050-03
 ;;9002226.02101,"1798,54868-0050-03 ",.02)
 ;;54868-0050-03
 ;;9002226.02101,"1798,54868-0050-04 ",.01)
 ;;54868-0050-04
 ;;9002226.02101,"1798,54868-0050-04 ",.02)
 ;;54868-0050-04
 ;;9002226.02101,"1798,54868-0055-00 ",.01)
 ;;54868-0055-00
 ;;9002226.02101,"1798,54868-0055-00 ",.02)
 ;;54868-0055-00
 ;;9002226.02101,"1798,54868-0055-02 ",.01)
 ;;54868-0055-02
 ;;9002226.02101,"1798,54868-0055-02 ",.02)
 ;;54868-0055-02
 ;;9002226.02101,"1798,54868-0683-01 ",.01)
 ;;54868-0683-01
 ;;9002226.02101,"1798,54868-0683-01 ",.02)
 ;;54868-0683-01
 ;;9002226.02101,"1798,54868-0683-02 ",.01)
 ;;54868-0683-02
 ;;9002226.02101,"1798,54868-0683-02 ",.02)
 ;;54868-0683-02
 ;;9002226.02101,"1798,54868-0683-04 ",.01)
 ;;54868-0683-04
 ;;9002226.02101,"1798,54868-0683-04 ",.02)
 ;;54868-0683-04
 ;;9002226.02101,"1798,54868-0692-00 ",.01)
 ;;54868-0692-00
 ;;9002226.02101,"1798,54868-0692-00 ",.02)
 ;;54868-0692-00
 ;;9002226.02101,"1798,54868-0790-02 ",.01)
 ;;54868-0790-02
 ;;9002226.02101,"1798,54868-0790-02 ",.02)
 ;;54868-0790-02
 ;;9002226.02101,"1798,54868-0790-03 ",.01)
 ;;54868-0790-03
 ;;9002226.02101,"1798,54868-0790-03 ",.02)
 ;;54868-0790-03
 ;;9002226.02101,"1798,54868-0790-05 ",.01)
 ;;54868-0790-05
 ;;9002226.02101,"1798,54868-0790-05 ",.02)
 ;;54868-0790-05
 ;;9002226.02101,"1798,54868-1310-01 ",.01)
 ;;54868-1310-01
 ;;9002226.02101,"1798,54868-1310-01 ",.02)
 ;;54868-1310-01
 ;;9002226.02101,"1798,54868-1326-02 ",.01)
 ;;54868-1326-02
 ;;9002226.02101,"1798,54868-1326-02 ",.02)
 ;;54868-1326-02
 ;;9002226.02101,"1798,54868-1326-04 ",.01)
 ;;54868-1326-04
 ;;9002226.02101,"1798,54868-1326-04 ",.02)
 ;;54868-1326-04
 ;;9002226.02101,"1798,54868-1326-05 ",.01)
 ;;54868-1326-05
 ;;9002226.02101,"1798,54868-1326-05 ",.02)
 ;;54868-1326-05
 ;;9002226.02101,"1798,54868-1326-06 ",.01)
 ;;54868-1326-06
 ;;9002226.02101,"1798,54868-1326-06 ",.02)
 ;;54868-1326-06
 ;;9002226.02101,"1798,54868-1326-07 ",.01)
 ;;54868-1326-07
 ;;9002226.02101,"1798,54868-1326-07 ",.02)
 ;;54868-1326-07
 ;;9002226.02101,"1798,54868-1328-00 ",.01)
 ;;54868-1328-00
 ;;9002226.02101,"1798,54868-1328-00 ",.02)
 ;;54868-1328-00
 ;;9002226.02101,"1798,54868-1328-01 ",.01)
 ;;54868-1328-01
 ;;9002226.02101,"1798,54868-1328-01 ",.02)
 ;;54868-1328-01
 ;;9002226.02101,"1798,54868-1328-02 ",.01)
 ;;54868-1328-02
 ;;9002226.02101,"1798,54868-1328-02 ",.02)
 ;;54868-1328-02
 ;;9002226.02101,"1798,54868-1328-03 ",.01)
 ;;54868-1328-03
 ;;9002226.02101,"1798,54868-1328-03 ",.02)
 ;;54868-1328-03
 ;;9002226.02101,"1798,54868-1521-00 ",.01)
 ;;54868-1521-00
 ;;9002226.02101,"1798,54868-1521-00 ",.02)
 ;;54868-1521-00
 ;;9002226.02101,"1798,54868-1521-02 ",.01)
 ;;54868-1521-02
 ;;9002226.02101,"1798,54868-1521-02 ",.02)
 ;;54868-1521-02
 ;;9002226.02101,"1798,54868-2134-01 ",.01)
 ;;54868-2134-01
 ;;9002226.02101,"1798,54868-2134-01 ",.02)
 ;;54868-2134-01
 ;;9002226.02101,"1798,54868-2134-02 ",.01)
 ;;54868-2134-02
 ;;9002226.02101,"1798,54868-2134-02 ",.02)
 ;;54868-2134-02
 ;;9002226.02101,"1798,54868-2134-03 ",.01)
 ;;54868-2134-03
 ;;9002226.02101,"1798,54868-2134-03 ",.02)
 ;;54868-2134-03
 ;;9002226.02101,"1798,54868-2134-04 ",.01)
 ;;54868-2134-04
 ;;9002226.02101,"1798,54868-2134-04 ",.02)
 ;;54868-2134-04
 ;;9002226.02101,"1798,54868-2181-00 ",.01)
 ;;54868-2181-00
 ;;9002226.02101,"1798,54868-2181-00 ",.02)
 ;;54868-2181-00
 ;;9002226.02101,"1798,54868-3816-00 ",.01)
 ;;54868-3816-00
 ;;9002226.02101,"1798,54868-3816-00 ",.02)
 ;;54868-3816-00
 ;;9002226.02101,"1798,54868-4876-00 ",.01)
 ;;54868-4876-00
 ;;9002226.02101,"1798,54868-4876-00 ",.02)
 ;;54868-4876-00
 ;;9002226.02101,"1798,54868-4876-01 ",.01)
 ;;54868-4876-01
 ;;9002226.02101,"1798,54868-4876-01 ",.02)
 ;;54868-4876-01
 ;;9002226.02101,"1798,54868-4876-02 ",.01)
 ;;54868-4876-02
 ;;9002226.02101,"1798,54868-4876-02 ",.02)
 ;;54868-4876-02
 ;;9002226.02101,"1798,55048-0208-30 ",.01)
 ;;55048-0208-30
 ;;9002226.02101,"1798,55048-0208-30 ",.02)
 ;;55048-0208-30
 ;;9002226.02101,"1798,55048-0209-30 ",.01)
 ;;55048-0209-30
 ;;9002226.02101,"1798,55048-0209-30 ",.02)
 ;;55048-0209-30
 ;;9002226.02101,"1798,55289-0002-01 ",.01)
 ;;55289-0002-01
 ;;9002226.02101,"1798,55289-0002-01 ",.02)
 ;;55289-0002-01
 ;;9002226.02101,"1798,55289-0002-30 ",.01)
 ;;55289-0002-30
 ;;9002226.02101,"1798,55289-0002-30 ",.02)
 ;;55289-0002-30
 ;;9002226.02101,"1798,55289-0098-01 ",.01)
 ;;55289-0098-01
 ;;9002226.02101,"1798,55289-0098-01 ",.02)
 ;;55289-0098-01
 ;;9002226.02101,"1798,55289-0098-30 ",.01)
 ;;55289-0098-30
 ;;9002226.02101,"1798,55289-0098-30 ",.02)
 ;;55289-0098-30
 ;;9002226.02101,"1798,55289-0098-60 ",.01)
 ;;55289-0098-60
 ;;9002226.02101,"1798,55289-0098-60 ",.02)
 ;;55289-0098-60
 ;;9002226.02101,"1798,55289-0290-30 ",.01)
 ;;55289-0290-30
 ;;9002226.02101,"1798,55289-0290-30 ",.02)
 ;;55289-0290-30
 ;;9002226.02101,"1798,55289-0290-50 ",.01)
 ;;55289-0290-50
 ;;9002226.02101,"1798,55289-0290-50 ",.02)
 ;;55289-0290-50
 ;;9002226.02101,"1798,55289-0626-01 ",.01)
 ;;55289-0626-01
 ;;9002226.02101,"1798,55289-0626-01 ",.02)
 ;;55289-0626-01
 ;;9002226.02101,"1798,55289-0626-03 ",.01)
 ;;55289-0626-03
 ;;9002226.02101,"1798,55289-0626-03 ",.02)
 ;;55289-0626-03
 ;;9002226.02101,"1798,55289-0626-14 ",.01)
 ;;55289-0626-14
 ;;9002226.02101,"1798,55289-0626-14 ",.02)
 ;;55289-0626-14
 ;;9002226.02101,"1798,55289-0626-30 ",.01)
 ;;55289-0626-30
 ;;9002226.02101,"1798,55289-0626-30 ",.02)
 ;;55289-0626-30
 ;;9002226.02101,"1798,55289-0626-60 ",.01)
 ;;55289-0626-60
 ;;9002226.02101,"1798,55289-0626-60 ",.02)
 ;;55289-0626-60
 ;;9002226.02101,"1798,55289-0734-01 ",.01)
 ;;55289-0734-01
 ;;9002226.02101,"1798,55289-0734-01 ",.02)
 ;;55289-0734-01
 ;;9002226.02101,"1798,55289-0734-30 ",.01)
 ;;55289-0734-30
 ;;9002226.02101,"1798,55289-0734-30 ",.02)
 ;;55289-0734-30
 ;;9002226.02101,"1798,55289-0907-08 ",.01)
 ;;55289-0907-08
 ;;9002226.02101,"1798,55289-0907-08 ",.02)
 ;;55289-0907-08
 ;;9002226.02101,"1798,55289-0907-30 ",.01)
 ;;55289-0907-30
