BGP63D15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"872,49999-0287-30 ",.02)
 ;;49999-0287-30
 ;;9002226.02101,"872,49999-0294-30 ",.01)
 ;;49999-0294-30
 ;;9002226.02101,"872,49999-0294-30 ",.02)
 ;;49999-0294-30
 ;;9002226.02101,"872,49999-0295-00 ",.01)
 ;;49999-0295-00
 ;;9002226.02101,"872,49999-0295-00 ",.02)
 ;;49999-0295-00
 ;;9002226.02101,"872,49999-0295-10 ",.01)
 ;;49999-0295-10
 ;;9002226.02101,"872,49999-0295-10 ",.02)
 ;;49999-0295-10
 ;;9002226.02101,"872,49999-0295-30 ",.01)
 ;;49999-0295-30
 ;;9002226.02101,"872,49999-0295-30 ",.02)
 ;;49999-0295-30
 ;;9002226.02101,"872,49999-0345-00 ",.01)
 ;;49999-0345-00
 ;;9002226.02101,"872,49999-0345-00 ",.02)
 ;;49999-0345-00
 ;;9002226.02101,"872,49999-0345-30 ",.01)
 ;;49999-0345-30
 ;;9002226.02101,"872,49999-0345-30 ",.02)
 ;;49999-0345-30
 ;;9002226.02101,"872,49999-0469-10 ",.01)
 ;;49999-0469-10
 ;;9002226.02101,"872,49999-0469-10 ",.02)
 ;;49999-0469-10
 ;;9002226.02101,"872,49999-0469-30 ",.01)
 ;;49999-0469-30
 ;;9002226.02101,"872,49999-0469-30 ",.02)
 ;;49999-0469-30
 ;;9002226.02101,"872,49999-0511-30 ",.01)
 ;;49999-0511-30
 ;;9002226.02101,"872,49999-0511-30 ",.02)
 ;;49999-0511-30
 ;;9002226.02101,"872,49999-0511-60 ",.01)
 ;;49999-0511-60
 ;;9002226.02101,"872,49999-0511-60 ",.02)
 ;;49999-0511-60
 ;;9002226.02101,"872,49999-0759-30 ",.01)
 ;;49999-0759-30
 ;;9002226.02101,"872,49999-0759-30 ",.02)
 ;;49999-0759-30
 ;;9002226.02101,"872,49999-0870-00 ",.01)
 ;;49999-0870-00
 ;;9002226.02101,"872,49999-0870-00 ",.02)
 ;;49999-0870-00
 ;;9002226.02101,"872,49999-0871-30 ",.01)
 ;;49999-0871-30
 ;;9002226.02101,"872,49999-0871-30 ",.02)
 ;;49999-0871-30
 ;;9002226.02101,"872,49999-0871-90 ",.01)
 ;;49999-0871-90
 ;;9002226.02101,"872,49999-0871-90 ",.02)
 ;;49999-0871-90
 ;;9002226.02101,"872,49999-0934-30 ",.01)
 ;;49999-0934-30
 ;;9002226.02101,"872,49999-0934-30 ",.02)
 ;;49999-0934-30
 ;;9002226.02101,"872,50268-0109-15 ",.01)
 ;;50268-0109-15
 ;;9002226.02101,"872,50268-0109-15 ",.02)
 ;;50268-0109-15
 ;;9002226.02101,"872,50268-0110-15 ",.01)
 ;;50268-0110-15
 ;;9002226.02101,"872,50268-0110-15 ",.02)
 ;;50268-0110-15
 ;;9002226.02101,"872,50268-0111-15 ",.01)
 ;;50268-0111-15
 ;;9002226.02101,"872,50268-0111-15 ",.02)
 ;;50268-0111-15
 ;;9002226.02101,"872,50268-0112-15 ",.01)
 ;;50268-0112-15
 ;;9002226.02101,"872,50268-0112-15 ",.02)
 ;;50268-0112-15
 ;;9002226.02101,"872,50268-0688-15 ",.01)
 ;;50268-0688-15
 ;;9002226.02101,"872,50268-0688-15 ",.02)
 ;;50268-0688-15
 ;;9002226.02101,"872,50268-0689-15 ",.01)
 ;;50268-0689-15
 ;;9002226.02101,"872,50268-0689-15 ",.02)
 ;;50268-0689-15
 ;;9002226.02101,"872,50268-0690-15 ",.01)
 ;;50268-0690-15
 ;;9002226.02101,"872,50268-0690-15 ",.02)
 ;;50268-0690-15
 ;;9002226.02101,"872,50268-0691-15 ",.01)
 ;;50268-0691-15
 ;;9002226.02101,"872,50268-0691-15 ",.02)
 ;;50268-0691-15
 ;;9002226.02101,"872,51079-0145-01 ",.01)
 ;;51079-0145-01
 ;;9002226.02101,"872,51079-0145-01 ",.02)
 ;;51079-0145-01
 ;;9002226.02101,"872,51079-0145-20 ",.01)
 ;;51079-0145-20
 ;;9002226.02101,"872,51079-0145-20 ",.02)
 ;;51079-0145-20
 ;;9002226.02101,"872,51079-0146-01 ",.01)
 ;;51079-0146-01
 ;;9002226.02101,"872,51079-0146-01 ",.02)
 ;;51079-0146-01
 ;;9002226.02101,"872,51079-0146-20 ",.01)
 ;;51079-0146-20
 ;;9002226.02101,"872,51079-0146-20 ",.02)
 ;;51079-0146-20
 ;;9002226.02101,"872,51079-0256-40 ",.01)
 ;;51079-0256-40
 ;;9002226.02101,"872,51079-0256-40 ",.02)
 ;;51079-0256-40
 ;;9002226.02101,"872,51079-0261-40 ",.01)
 ;;51079-0261-40
 ;;9002226.02101,"872,51079-0261-40 ",.02)
 ;;51079-0261-40
 ;;9002226.02101,"872,51079-0863-01 ",.01)
 ;;51079-0863-01
 ;;9002226.02101,"872,51079-0863-01 ",.02)
 ;;51079-0863-01
 ;;9002226.02101,"872,51079-0863-20 ",.01)
 ;;51079-0863-20
 ;;9002226.02101,"872,51079-0863-20 ",.02)
 ;;51079-0863-20
 ;;9002226.02101,"872,51079-0864-01 ",.01)
 ;;51079-0864-01
 ;;9002226.02101,"872,51079-0864-01 ",.02)
 ;;51079-0864-01
 ;;9002226.02101,"872,51079-0864-20 ",.01)
 ;;51079-0864-20
 ;;9002226.02101,"872,51079-0864-20 ",.02)
 ;;51079-0864-20
 ;;9002226.02101,"872,51079-0950-01 ",.01)
 ;;51079-0950-01
 ;;9002226.02101,"872,51079-0950-01 ",.02)
 ;;51079-0950-01
 ;;9002226.02101,"872,51079-0950-20 ",.01)
 ;;51079-0950-20
 ;;9002226.02101,"872,51079-0950-20 ",.02)
 ;;51079-0950-20
 ;;9002226.02101,"872,51079-0951-01 ",.01)
 ;;51079-0951-01
 ;;9002226.02101,"872,51079-0951-01 ",.02)
 ;;51079-0951-01
 ;;9002226.02101,"872,51079-0951-20 ",.01)
 ;;51079-0951-20
 ;;9002226.02101,"872,51079-0951-20 ",.02)
 ;;51079-0951-20
 ;;9002226.02101,"872,51079-0952-01 ",.01)
 ;;51079-0952-01
 ;;9002226.02101,"872,51079-0952-01 ",.02)
 ;;51079-0952-01
 ;;9002226.02101,"872,51079-0952-20 ",.01)
 ;;51079-0952-20
 ;;9002226.02101,"872,51079-0952-20 ",.02)
 ;;51079-0952-20
 ;;9002226.02101,"872,51079-0953-01 ",.01)
 ;;51079-0953-01
 ;;9002226.02101,"872,51079-0953-01 ",.02)
 ;;51079-0953-01
 ;;9002226.02101,"872,51079-0953-20 ",.01)
 ;;51079-0953-20
 ;;9002226.02101,"872,51079-0953-20 ",.02)
 ;;51079-0953-20
 ;;9002226.02101,"872,51079-0981-01 ",.01)
 ;;51079-0981-01
 ;;9002226.02101,"872,51079-0981-01 ",.02)
 ;;51079-0981-01
 ;;9002226.02101,"872,51079-0981-20 ",.01)
 ;;51079-0981-20
 ;;9002226.02101,"872,51079-0981-20 ",.02)
 ;;51079-0981-20
 ;;9002226.02101,"872,51079-0981-30 ",.01)
 ;;51079-0981-30
 ;;9002226.02101,"872,51079-0981-30 ",.02)
 ;;51079-0981-30
 ;;9002226.02101,"872,51079-0981-40 ",.01)
 ;;51079-0981-40
 ;;9002226.02101,"872,51079-0981-40 ",.02)
 ;;51079-0981-40
 ;;9002226.02101,"872,51079-0981-56 ",.01)
 ;;51079-0981-56
 ;;9002226.02101,"872,51079-0981-56 ",.02)
 ;;51079-0981-56
 ;;9002226.02101,"872,51079-0981-57 ",.01)
 ;;51079-0981-57
 ;;9002226.02101,"872,51079-0981-57 ",.02)
 ;;51079-0981-57
 ;;9002226.02101,"872,51079-0981-60 ",.01)
 ;;51079-0981-60
 ;;9002226.02101,"872,51079-0981-60 ",.02)
 ;;51079-0981-60
 ;;9002226.02101,"872,51079-0982-01 ",.01)
 ;;51079-0982-01
 ;;9002226.02101,"872,51079-0982-01 ",.02)
 ;;51079-0982-01
 ;;9002226.02101,"872,51079-0982-17 ",.01)
 ;;51079-0982-17
 ;;9002226.02101,"872,51079-0982-17 ",.02)
 ;;51079-0982-17
 ;;9002226.02101,"872,51079-0982-19 ",.01)
 ;;51079-0982-19
 ;;9002226.02101,"872,51079-0982-19 ",.02)
 ;;51079-0982-19
 ;;9002226.02101,"872,51079-0982-20 ",.01)
 ;;51079-0982-20
 ;;9002226.02101,"872,51079-0982-20 ",.02)
 ;;51079-0982-20
 ;;9002226.02101,"872,51079-0982-30 ",.01)
 ;;51079-0982-30
 ;;9002226.02101,"872,51079-0982-30 ",.02)
 ;;51079-0982-30
 ;;9002226.02101,"872,51079-0982-40 ",.01)
 ;;51079-0982-40
 ;;9002226.02101,"872,51079-0982-40 ",.02)
 ;;51079-0982-40
 ;;9002226.02101,"872,51079-0982-56 ",.01)
 ;;51079-0982-56
 ;;9002226.02101,"872,51079-0982-56 ",.02)
 ;;51079-0982-56
 ;;9002226.02101,"872,51079-0982-57 ",.01)
 ;;51079-0982-57
 ;;9002226.02101,"872,51079-0982-57 ",.02)
 ;;51079-0982-57
 ;;9002226.02101,"872,51079-0982-60 ",.01)
 ;;51079-0982-60
 ;;9002226.02101,"872,51079-0982-60 ",.02)
 ;;51079-0982-60
 ;;9002226.02101,"872,51079-0983-01 ",.01)
 ;;51079-0983-01
 ;;9002226.02101,"872,51079-0983-01 ",.02)
 ;;51079-0983-01
 ;;9002226.02101,"872,51079-0983-17 ",.01)
 ;;51079-0983-17
 ;;9002226.02101,"872,51079-0983-17 ",.02)
 ;;51079-0983-17
 ;;9002226.02101,"872,51079-0983-19 ",.01)
 ;;51079-0983-19
 ;;9002226.02101,"872,51079-0983-19 ",.02)
 ;;51079-0983-19
 ;;9002226.02101,"872,51079-0983-20 ",.01)
 ;;51079-0983-20
 ;;9002226.02101,"872,51079-0983-20 ",.02)
 ;;51079-0983-20
 ;;9002226.02101,"872,51079-0983-30 ",.01)
 ;;51079-0983-30
 ;;9002226.02101,"872,51079-0983-30 ",.02)
 ;;51079-0983-30
 ;;9002226.02101,"872,51079-0983-40 ",.01)
 ;;51079-0983-40
 ;;9002226.02101,"872,51079-0983-40 ",.02)
 ;;51079-0983-40
 ;;9002226.02101,"872,51079-0983-56 ",.01)
 ;;51079-0983-56
 ;;9002226.02101,"872,51079-0983-56 ",.02)
 ;;51079-0983-56
 ;;9002226.02101,"872,51079-0983-57 ",.01)
 ;;51079-0983-57
 ;;9002226.02101,"872,51079-0983-57 ",.02)
 ;;51079-0983-57
 ;;9002226.02101,"872,51079-0983-60 ",.01)
 ;;51079-0983-60
 ;;9002226.02101,"872,51079-0983-60 ",.02)
 ;;51079-0983-60
 ;;9002226.02101,"872,51079-0984-01 ",.01)
 ;;51079-0984-01
 ;;9002226.02101,"872,51079-0984-01 ",.02)
 ;;51079-0984-01
 ;;9002226.02101,"872,51079-0984-20 ",.01)
 ;;51079-0984-20
 ;;9002226.02101,"872,51079-0984-20 ",.02)
 ;;51079-0984-20
 ;;9002226.02101,"872,51079-0984-40 ",.01)
 ;;51079-0984-40
 ;;9002226.02101,"872,51079-0984-40 ",.02)
 ;;51079-0984-40
 ;;9002226.02101,"872,51079-0984-50 ",.01)
 ;;51079-0984-50
 ;;9002226.02101,"872,51079-0984-50 ",.02)
 ;;51079-0984-50
 ;;9002226.02101,"872,51138-0063-30 ",.01)
 ;;51138-0063-30
 ;;9002226.02101,"872,51138-0063-30 ",.02)
 ;;51138-0063-30
 ;;9002226.02101,"872,51138-0064-30 ",.01)
 ;;51138-0064-30
 ;;9002226.02101,"872,51138-0064-30 ",.02)
 ;;51138-0064-30
 ;;9002226.02101,"872,51138-0065-30 ",.01)
 ;;51138-0065-30
 ;;9002226.02101,"872,51138-0065-30 ",.02)
 ;;51138-0065-30
 ;;9002226.02101,"872,51138-0066-30 ",.01)
 ;;51138-0066-30
 ;;9002226.02101,"872,51138-0066-30 ",.02)
 ;;51138-0066-30
 ;;9002226.02101,"872,51138-0067-30 ",.01)
 ;;51138-0067-30
 ;;9002226.02101,"872,51138-0067-30 ",.02)
 ;;51138-0067-30
 ;;9002226.02101,"872,51138-0068-30 ",.01)
 ;;51138-0068-30
 ;;9002226.02101,"872,51138-0068-30 ",.02)
 ;;51138-0068-30
 ;;9002226.02101,"872,51655-0244-24 ",.01)
 ;;51655-0244-24
 ;;9002226.02101,"872,51655-0244-24 ",.02)
 ;;51655-0244-24
 ;;9002226.02101,"872,51655-0280-24 ",.01)
 ;;51655-0280-24
 ;;9002226.02101,"872,51655-0280-24 ",.02)
 ;;51655-0280-24
 ;;9002226.02101,"872,51655-0292-24 ",.01)
 ;;51655-0292-24
 ;;9002226.02101,"872,51655-0292-24 ",.02)
 ;;51655-0292-24
 ;;9002226.02101,"872,51655-0620-24 ",.01)
 ;;51655-0620-24
 ;;9002226.02101,"872,51655-0620-24 ",.02)
 ;;51655-0620-24
 ;;9002226.02101,"872,51672-4037-01 ",.01)
 ;;51672-4037-01
 ;;9002226.02101,"872,51672-4037-01 ",.02)
 ;;51672-4037-01
 ;;9002226.02101,"872,51672-4037-03 ",.01)
 ;;51672-4037-03
 ;;9002226.02101,"872,51672-4037-03 ",.02)
 ;;51672-4037-03
 ;;9002226.02101,"872,51672-4038-01 ",.01)
 ;;51672-4038-01
 ;;9002226.02101,"872,51672-4038-01 ",.02)
 ;;51672-4038-01
 ;;9002226.02101,"872,51672-4038-03 ",.01)
 ;;51672-4038-03
 ;;9002226.02101,"872,51672-4038-03 ",.02)
 ;;51672-4038-03
 ;;9002226.02101,"872,51672-4039-01 ",.01)
 ;;51672-4039-01
 ;;9002226.02101,"872,51672-4039-01 ",.02)
 ;;51672-4039-01
 ;;9002226.02101,"872,51672-4039-03 ",.01)
 ;;51672-4039-03
 ;;9002226.02101,"872,51672-4039-03 ",.02)
 ;;51672-4039-03
 ;;9002226.02101,"872,51672-4040-01 ",.01)
 ;;51672-4040-01
 ;;9002226.02101,"872,51672-4040-01 ",.02)
 ;;51672-4040-01
 ;;9002226.02101,"872,51672-4040-03 ",.01)
 ;;51672-4040-03
 ;;9002226.02101,"872,51672-4040-03 ",.02)
 ;;51672-4040-03
 ;;9002226.02101,"872,51875-0955-02 ",.01)
 ;;51875-0955-02
 ;;9002226.02101,"872,51875-0955-02 ",.02)
 ;;51875-0955-02
 ;;9002226.02101,"872,51875-0955-05 ",.01)
 ;;51875-0955-05
 ;;9002226.02101,"872,51875-0955-05 ",.02)
 ;;51875-0955-05
 ;;9002226.02101,"872,52427-0438-90 ",.01)
 ;;52427-0438-90
 ;;9002226.02101,"872,52427-0438-90 ",.02)
 ;;52427-0438-90
 ;;9002226.02101,"872,52427-0439-90 ",.01)
 ;;52427-0439-90
 ;;9002226.02101,"872,52427-0439-90 ",.02)
 ;;52427-0439-90
 ;;9002226.02101,"872,52427-0440-90 ",.01)
 ;;52427-0440-90
 ;;9002226.02101,"872,52427-0440-90 ",.02)
 ;;52427-0440-90
 ;;9002226.02101,"872,52427-0441-90 ",.01)
 ;;52427-0441-90
 ;;9002226.02101,"872,52427-0441-90 ",.02)
 ;;52427-0441-90
 ;;9002226.02101,"872,52427-0442-90 ",.01)
 ;;52427-0442-90
 ;;9002226.02101,"872,52427-0442-90 ",.02)
 ;;52427-0442-90
 ;;9002226.02101,"872,52427-0443-90 ",.01)
 ;;52427-0443-90
