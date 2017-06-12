BGP61B8 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1800,49999-0737-14 ",.02)
 ;;49999-0737-14
 ;;9002226.02101,"1800,49999-0737-15 ",.01)
 ;;49999-0737-15
 ;;9002226.02101,"1800,49999-0737-15 ",.02)
 ;;49999-0737-15
 ;;9002226.02101,"1800,49999-0737-30 ",.01)
 ;;49999-0737-30
 ;;9002226.02101,"1800,49999-0737-30 ",.02)
 ;;49999-0737-30
 ;;9002226.02101,"1800,49999-0737-60 ",.01)
 ;;49999-0737-60
 ;;9002226.02101,"1800,49999-0737-60 ",.02)
 ;;49999-0737-60
 ;;9002226.02101,"1800,49999-0737-90 ",.01)
 ;;49999-0737-90
 ;;9002226.02101,"1800,49999-0737-90 ",.02)
 ;;49999-0737-90
 ;;9002226.02101,"1800,49999-0763-00 ",.01)
 ;;49999-0763-00
 ;;9002226.02101,"1800,49999-0763-00 ",.02)
 ;;49999-0763-00
 ;;9002226.02101,"1800,49999-0763-30 ",.01)
 ;;49999-0763-30
 ;;9002226.02101,"1800,49999-0763-30 ",.02)
 ;;49999-0763-30
 ;;9002226.02101,"1800,49999-0764-30 ",.01)
 ;;49999-0764-30
 ;;9002226.02101,"1800,49999-0764-30 ",.02)
 ;;49999-0764-30
 ;;9002226.02101,"1800,49999-0764-60 ",.01)
 ;;49999-0764-60
 ;;9002226.02101,"1800,49999-0764-60 ",.02)
 ;;49999-0764-60
 ;;9002226.02101,"1800,49999-0778-30 ",.01)
 ;;49999-0778-30
 ;;9002226.02101,"1800,49999-0778-30 ",.02)
 ;;49999-0778-30
 ;;9002226.02101,"1800,49999-0779-15 ",.01)
 ;;49999-0779-15
 ;;9002226.02101,"1800,49999-0779-15 ",.02)
 ;;49999-0779-15
 ;;9002226.02101,"1800,49999-0779-30 ",.01)
 ;;49999-0779-30
 ;;9002226.02101,"1800,49999-0779-30 ",.02)
 ;;49999-0779-30
 ;;9002226.02101,"1800,49999-0931-00 ",.01)
 ;;49999-0931-00
 ;;9002226.02101,"1800,49999-0931-00 ",.02)
 ;;49999-0931-00
 ;;9002226.02101,"1800,49999-0931-02 ",.01)
 ;;49999-0931-02
 ;;9002226.02101,"1800,49999-0931-02 ",.02)
 ;;49999-0931-02
 ;;9002226.02101,"1800,49999-0931-15 ",.01)
 ;;49999-0931-15
 ;;9002226.02101,"1800,49999-0931-15 ",.02)
 ;;49999-0931-15
 ;;9002226.02101,"1800,49999-0931-30 ",.01)
 ;;49999-0931-30
 ;;9002226.02101,"1800,49999-0931-30 ",.02)
 ;;49999-0931-30
 ;;9002226.02101,"1800,49999-0931-60 ",.01)
 ;;49999-0931-60
 ;;9002226.02101,"1800,49999-0931-60 ",.02)
 ;;49999-0931-60
 ;;9002226.02101,"1800,49999-0932-00 ",.01)
 ;;49999-0932-00
 ;;9002226.02101,"1800,49999-0932-00 ",.02)
 ;;49999-0932-00
 ;;9002226.02101,"1800,49999-0932-30 ",.01)
 ;;49999-0932-30
 ;;9002226.02101,"1800,49999-0932-30 ",.02)
 ;;49999-0932-30
 ;;9002226.02101,"1800,49999-0932-60 ",.01)
 ;;49999-0932-60
 ;;9002226.02101,"1800,49999-0932-60 ",.02)
 ;;49999-0932-60
 ;;9002226.02101,"1800,50436-0193-01 ",.01)
 ;;50436-0193-01
 ;;9002226.02101,"1800,50436-0193-01 ",.02)
 ;;50436-0193-01
 ;;9002226.02101,"1800,50436-1006-01 ",.01)
 ;;50436-1006-01
 ;;9002226.02101,"1800,50436-1006-01 ",.02)
 ;;50436-1006-01
 ;;9002226.02101,"1800,50436-3026-01 ",.01)
 ;;50436-3026-01
 ;;9002226.02101,"1800,50436-3026-01 ",.02)
 ;;50436-3026-01
 ;;9002226.02101,"1800,50436-3030-01 ",.01)
 ;;50436-3030-01
 ;;9002226.02101,"1800,50436-3030-01 ",.02)
 ;;50436-3030-01
 ;;9002226.02101,"1800,50436-3030-02 ",.01)
 ;;50436-3030-02
 ;;9002226.02101,"1800,50436-3030-02 ",.02)
 ;;50436-3030-02
 ;;9002226.02101,"1800,50436-3031-01 ",.01)
 ;;50436-3031-01
 ;;9002226.02101,"1800,50436-3031-01 ",.02)
 ;;50436-3031-01
 ;;9002226.02101,"1800,50436-5537-01 ",.01)
 ;;50436-5537-01
 ;;9002226.02101,"1800,50436-5537-01 ",.02)
 ;;50436-5537-01
 ;;9002226.02101,"1800,50436-5538-01 ",.01)
 ;;50436-5538-01
 ;;9002226.02101,"1800,50436-5538-01 ",.02)
 ;;50436-5538-01
 ;;9002226.02101,"1800,50436-5538-04 ",.01)
 ;;50436-5538-04
 ;;9002226.02101,"1800,50436-5538-04 ",.02)
 ;;50436-5538-04
 ;;9002226.02101,"1800,50436-5539-01 ",.01)
 ;;50436-5539-01
 ;;9002226.02101,"1800,50436-5539-01 ",.02)
 ;;50436-5539-01
 ;;9002226.02101,"1800,50436-5539-04 ",.01)
 ;;50436-5539-04
 ;;9002226.02101,"1800,50436-5539-04 ",.02)
 ;;50436-5539-04
 ;;9002226.02101,"1800,51079-0349-01 ",.01)
 ;;51079-0349-01
 ;;9002226.02101,"1800,51079-0349-01 ",.02)
 ;;51079-0349-01
 ;;9002226.02101,"1800,51079-0349-03 ",.01)
 ;;51079-0349-03
 ;;9002226.02101,"1800,51079-0349-03 ",.02)
 ;;51079-0349-03
 ;;9002226.02101,"1800,51079-0414-01 ",.01)
 ;;51079-0414-01
 ;;9002226.02101,"1800,51079-0414-01 ",.02)
 ;;51079-0414-01
 ;;9002226.02101,"1800,51079-0414-03 ",.01)
 ;;51079-0414-03
 ;;9002226.02101,"1800,51079-0414-03 ",.02)
 ;;51079-0414-03
 ;;9002226.02101,"1800,51079-0724-01 ",.01)
 ;;51079-0724-01
 ;;9002226.02101,"1800,51079-0724-01 ",.02)
 ;;51079-0724-01
 ;;9002226.02101,"1800,51079-0724-20 ",.01)
 ;;51079-0724-20
 ;;9002226.02101,"1800,51079-0724-20 ",.02)
 ;;51079-0724-20
 ;;9002226.02101,"1800,51079-0725-01 ",.01)
 ;;51079-0725-01
 ;;9002226.02101,"1800,51079-0725-01 ",.02)
 ;;51079-0725-01
 ;;9002226.02101,"1800,51079-0725-20 ",.01)
 ;;51079-0725-20
 ;;9002226.02101,"1800,51079-0725-20 ",.02)
 ;;51079-0725-20
 ;;9002226.02101,"1800,52959-0362-10 ",.01)
 ;;52959-0362-10
 ;;9002226.02101,"1800,52959-0362-10 ",.02)
 ;;52959-0362-10
 ;;9002226.02101,"1800,52959-0362-15 ",.01)
 ;;52959-0362-15
 ;;9002226.02101,"1800,52959-0362-15 ",.02)
 ;;52959-0362-15
 ;;9002226.02101,"1800,52959-0362-20 ",.01)
 ;;52959-0362-20
 ;;9002226.02101,"1800,52959-0362-20 ",.02)
 ;;52959-0362-20
 ;;9002226.02101,"1800,52959-0362-30 ",.01)
 ;;52959-0362-30
 ;;9002226.02101,"1800,52959-0362-30 ",.02)
 ;;52959-0362-30
 ;;9002226.02101,"1800,52959-0362-60 ",.01)
 ;;52959-0362-60
 ;;9002226.02101,"1800,52959-0362-60 ",.02)
 ;;52959-0362-60
 ;;9002226.02101,"1800,52959-0363-10 ",.01)
 ;;52959-0363-10
 ;;9002226.02101,"1800,52959-0363-10 ",.02)
 ;;52959-0363-10
 ;;9002226.02101,"1800,52959-0363-15 ",.01)
 ;;52959-0363-15
 ;;9002226.02101,"1800,52959-0363-15 ",.02)
 ;;52959-0363-15
 ;;9002226.02101,"1800,52959-0363-20 ",.01)
 ;;52959-0363-20
 ;;9002226.02101,"1800,52959-0363-20 ",.02)
 ;;52959-0363-20
 ;;9002226.02101,"1800,52959-0363-21 ",.01)
 ;;52959-0363-21
 ;;9002226.02101,"1800,52959-0363-21 ",.02)
 ;;52959-0363-21
 ;;9002226.02101,"1800,52959-0363-25 ",.01)
 ;;52959-0363-25
 ;;9002226.02101,"1800,52959-0363-25 ",.02)
 ;;52959-0363-25
 ;;9002226.02101,"1800,52959-0363-30 ",.01)
 ;;52959-0363-30
 ;;9002226.02101,"1800,52959-0363-30 ",.02)
 ;;52959-0363-30
 ;;9002226.02101,"1800,52959-0363-60 ",.01)
 ;;52959-0363-60
 ;;9002226.02101,"1800,52959-0363-60 ",.02)
 ;;52959-0363-60
 ;;9002226.02101,"1800,52959-0727-00 ",.01)
 ;;52959-0727-00
 ;;9002226.02101,"1800,52959-0727-00 ",.02)
 ;;52959-0727-00
 ;;9002226.02101,"1800,52959-0727-10 ",.01)
 ;;52959-0727-10
 ;;9002226.02101,"1800,52959-0727-10 ",.02)
 ;;52959-0727-10
 ;;9002226.02101,"1800,52959-0727-30 ",.01)
 ;;52959-0727-30
 ;;9002226.02101,"1800,52959-0727-30 ",.02)
 ;;52959-0727-30
 ;;9002226.02101,"1800,52959-0852-00 ",.01)
 ;;52959-0852-00
 ;;9002226.02101,"1800,52959-0852-00 ",.02)
 ;;52959-0852-00
 ;;9002226.02101,"1800,52959-0852-10 ",.01)
 ;;52959-0852-10
 ;;9002226.02101,"1800,52959-0852-10 ",.02)
 ;;52959-0852-10
 ;;9002226.02101,"1800,52959-0852-12 ",.01)
 ;;52959-0852-12
 ;;9002226.02101,"1800,52959-0852-12 ",.02)
 ;;52959-0852-12
 ;;9002226.02101,"1800,52959-0852-30 ",.01)
 ;;52959-0852-30
 ;;9002226.02101,"1800,52959-0852-30 ",.02)
 ;;52959-0852-30
 ;;9002226.02101,"1800,52959-0852-60 ",.01)
 ;;52959-0852-60
 ;;9002226.02101,"1800,52959-0852-60 ",.02)
 ;;52959-0852-60
 ;;9002226.02101,"1800,52959-0870-30 ",.01)
 ;;52959-0870-30
 ;;9002226.02101,"1800,52959-0870-30 ",.02)
 ;;52959-0870-30
 ;;9002226.02101,"1800,52959-0879-02 ",.01)
 ;;52959-0879-02
 ;;9002226.02101,"1800,52959-0879-02 ",.02)
 ;;52959-0879-02
 ;;9002226.02101,"1800,52959-0879-10 ",.01)
 ;;52959-0879-10
 ;;9002226.02101,"1800,52959-0879-10 ",.02)
 ;;52959-0879-10
 ;;9002226.02101,"1800,52959-0879-14 ",.01)
 ;;52959-0879-14
 ;;9002226.02101,"1800,52959-0879-14 ",.02)
 ;;52959-0879-14
 ;;9002226.02101,"1800,52959-0879-15 ",.01)
 ;;52959-0879-15
 ;;9002226.02101,"1800,52959-0879-15 ",.02)
 ;;52959-0879-15
 ;;9002226.02101,"1800,52959-0879-20 ",.01)
 ;;52959-0879-20
 ;;9002226.02101,"1800,52959-0879-20 ",.02)
 ;;52959-0879-20
 ;;9002226.02101,"1800,52959-0879-28 ",.01)
 ;;52959-0879-28
 ;;9002226.02101,"1800,52959-0879-28 ",.02)
 ;;52959-0879-28
 ;;9002226.02101,"1800,52959-0879-30 ",.01)
 ;;52959-0879-30
 ;;9002226.02101,"1800,52959-0879-30 ",.02)
 ;;52959-0879-30
 ;;9002226.02101,"1800,52959-0879-42 ",.01)
 ;;52959-0879-42
 ;;9002226.02101,"1800,52959-0879-42 ",.02)
 ;;52959-0879-42
 ;;9002226.02101,"1800,52959-0879-60 ",.01)
 ;;52959-0879-60
 ;;9002226.02101,"1800,52959-0879-60 ",.02)
 ;;52959-0879-60
 ;;9002226.02101,"1800,52959-0879-90 ",.01)
 ;;52959-0879-90
 ;;9002226.02101,"1800,52959-0879-90 ",.02)
 ;;52959-0879-90
 ;;9002226.02101,"1800,52959-0880-00 ",.01)
 ;;52959-0880-00
 ;;9002226.02101,"1800,52959-0880-00 ",.02)
 ;;52959-0880-00
 ;;9002226.02101,"1800,52959-0880-02 ",.01)
 ;;52959-0880-02
 ;;9002226.02101,"1800,52959-0880-02 ",.02)
 ;;52959-0880-02
 ;;9002226.02101,"1800,52959-0880-10 ",.01)
 ;;52959-0880-10
 ;;9002226.02101,"1800,52959-0880-10 ",.02)
 ;;52959-0880-10
 ;;9002226.02101,"1800,52959-0880-14 ",.01)
 ;;52959-0880-14
 ;;9002226.02101,"1800,52959-0880-14 ",.02)
 ;;52959-0880-14
 ;;9002226.02101,"1800,52959-0880-15 ",.01)
 ;;52959-0880-15
 ;;9002226.02101,"1800,52959-0880-15 ",.02)
 ;;52959-0880-15
 ;;9002226.02101,"1800,52959-0880-20 ",.01)
 ;;52959-0880-20
 ;;9002226.02101,"1800,52959-0880-20 ",.02)
 ;;52959-0880-20
 ;;9002226.02101,"1800,52959-0880-28 ",.01)
 ;;52959-0880-28
 ;;9002226.02101,"1800,52959-0880-28 ",.02)
 ;;52959-0880-28
 ;;9002226.02101,"1800,52959-0880-30 ",.01)
 ;;52959-0880-30
 ;;9002226.02101,"1800,52959-0880-30 ",.02)
 ;;52959-0880-30
 ;;9002226.02101,"1800,52959-0880-45 ",.01)
 ;;52959-0880-45
 ;;9002226.02101,"1800,52959-0880-45 ",.02)
 ;;52959-0880-45
 ;;9002226.02101,"1800,52959-0880-60 ",.01)
 ;;52959-0880-60
 ;;9002226.02101,"1800,52959-0880-60 ",.02)
 ;;52959-0880-60
 ;;9002226.02101,"1800,52959-0880-90 ",.01)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0880-90 ",.02)
 ;;52959-0880-90
 ;;9002226.02101,"1800,52959-0881-30 ",.01)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0881-30 ",.02)
 ;;52959-0881-30
 ;;9002226.02101,"1800,52959-0919-00 ",.01)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-00 ",.02)
 ;;52959-0919-00
 ;;9002226.02101,"1800,52959-0919-30 ",.01)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-30 ",.02)
 ;;52959-0919-30
 ;;9002226.02101,"1800,52959-0919-60 ",.01)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0919-60 ",.02)
 ;;52959-0919-60
 ;;9002226.02101,"1800,52959-0957-30 ",.01)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0957-30 ",.02)
 ;;52959-0957-30
 ;;9002226.02101,"1800,52959-0971-30 ",.01)
 ;;52959-0971-30
 ;;9002226.02101,"1800,52959-0971-30 ",.02)
 ;;52959-0971-30
 ;;9002226.02101,"1800,53002-0502-05 ",.01)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-05 ",.02)
 ;;53002-0502-05
 ;;9002226.02101,"1800,53002-0502-10 ",.01)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-10 ",.02)
 ;;53002-0502-10
 ;;9002226.02101,"1800,53002-0502-20 ",.01)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-20 ",.02)
 ;;53002-0502-20
 ;;9002226.02101,"1800,53002-0502-30 ",.01)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-0502-30 ",.02)
 ;;53002-0502-30
 ;;9002226.02101,"1800,53002-1292-01 ",.01)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-01 ",.02)
 ;;53002-1292-01
 ;;9002226.02101,"1800,53002-1292-02 ",.01)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-02 ",.02)
 ;;53002-1292-02
 ;;9002226.02101,"1800,53002-1292-03 ",.01)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1292-03 ",.02)
 ;;53002-1292-03
 ;;9002226.02101,"1800,53002-1594-01 ",.01)
 ;;53002-1594-01
 ;;9002226.02101,"1800,53002-1594-01 ",.02)
 ;;53002-1594-01
