BGP53O15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1064,43386-0710-05 ",.01)
 ;;43386-0710-05
 ;;9002226.02101,"1064,43386-0710-05 ",.02)
 ;;43386-0710-05
 ;;9002226.02101,"1064,43386-0710-09 ",.01)
 ;;43386-0710-09
 ;;9002226.02101,"1064,43386-0710-09 ",.02)
 ;;43386-0710-09
 ;;9002226.02101,"1064,43386-0711-05 ",.01)
 ;;43386-0711-05
 ;;9002226.02101,"1064,43386-0711-05 ",.02)
 ;;43386-0711-05
 ;;9002226.02101,"1064,43386-0711-09 ",.01)
 ;;43386-0711-09
 ;;9002226.02101,"1064,43386-0711-09 ",.02)
 ;;43386-0711-09
 ;;9002226.02101,"1064,43386-0712-05 ",.01)
 ;;43386-0712-05
 ;;9002226.02101,"1064,43386-0712-05 ",.02)
 ;;43386-0712-05
 ;;9002226.02101,"1064,43386-0712-09 ",.01)
 ;;43386-0712-09
 ;;9002226.02101,"1064,43386-0712-09 ",.02)
 ;;43386-0712-09
 ;;9002226.02101,"1064,43547-0338-50 ",.01)
 ;;43547-0338-50
 ;;9002226.02101,"1064,43547-0338-50 ",.02)
 ;;43547-0338-50
 ;;9002226.02101,"1064,49158-0501-01 ",.01)
 ;;49158-0501-01
 ;;9002226.02101,"1064,49158-0501-01 ",.02)
 ;;49158-0501-01
 ;;9002226.02101,"1064,49158-0502-01 ",.01)
 ;;49158-0502-01
 ;;9002226.02101,"1064,49158-0502-01 ",.02)
 ;;49158-0502-01
 ;;9002226.02101,"1064,49158-0502-10 ",.01)
 ;;49158-0502-10
 ;;9002226.02101,"1064,49158-0502-10 ",.02)
 ;;49158-0502-10
 ;;9002226.02101,"1064,49158-0503-01 ",.01)
 ;;49158-0503-01
 ;;9002226.02101,"1064,49158-0503-01 ",.02)
 ;;49158-0503-01
 ;;9002226.02101,"1064,49884-0620-10 ",.01)
 ;;49884-0620-10
 ;;9002226.02101,"1064,49884-0620-10 ",.02)
 ;;49884-0620-10
 ;;9002226.02101,"1064,49884-0686-01 ",.01)
 ;;49884-0686-01
 ;;9002226.02101,"1064,49884-0686-01 ",.02)
 ;;49884-0686-01
 ;;9002226.02101,"1064,49884-0687-01 ",.01)
 ;;49884-0687-01
 ;;9002226.02101,"1064,49884-0687-01 ",.02)
 ;;49884-0687-01
 ;;9002226.02101,"1064,49884-0929-01 ",.01)
 ;;49884-0929-01
 ;;9002226.02101,"1064,49884-0929-01 ",.02)
 ;;49884-0929-01
 ;;9002226.02101,"1064,49884-0929-05 ",.01)
 ;;49884-0929-05
 ;;9002226.02101,"1064,49884-0929-05 ",.02)
 ;;49884-0929-05
 ;;9002226.02101,"1064,49884-0930-01 ",.01)
 ;;49884-0930-01
 ;;9002226.02101,"1064,49884-0930-01 ",.02)
 ;;49884-0930-01
 ;;9002226.02101,"1064,49884-0930-05 ",.01)
 ;;49884-0930-05
 ;;9002226.02101,"1064,49884-0930-05 ",.02)
 ;;49884-0930-05
 ;;9002226.02101,"1064,49884-0931-01 ",.01)
 ;;49884-0931-01
 ;;9002226.02101,"1064,49884-0931-01 ",.02)
 ;;49884-0931-01
 ;;9002226.02101,"1064,49884-0931-05 ",.01)
 ;;49884-0931-05
 ;;9002226.02101,"1064,49884-0931-05 ",.02)
 ;;49884-0931-05
 ;;9002226.02101,"1064,49884-0932-01 ",.01)
 ;;49884-0932-01
 ;;9002226.02101,"1064,49884-0932-01 ",.02)
 ;;49884-0932-01
 ;;9002226.02101,"1064,49884-0932-05 ",.01)
 ;;49884-0932-05
 ;;9002226.02101,"1064,49884-0932-05 ",.02)
 ;;49884-0932-05
 ;;9002226.02101,"1064,49884-0952-01 ",.01)
 ;;49884-0952-01
 ;;9002226.02101,"1064,49884-0952-01 ",.02)
 ;;49884-0952-01
 ;;9002226.02101,"1064,49884-0952-05 ",.01)
 ;;49884-0952-05
 ;;9002226.02101,"1064,49884-0952-05 ",.02)
 ;;49884-0952-05
 ;;9002226.02101,"1064,49884-0953-01 ",.01)
 ;;49884-0953-01
 ;;9002226.02101,"1064,49884-0953-01 ",.02)
 ;;49884-0953-01
 ;;9002226.02101,"1064,49884-0953-05 ",.01)
 ;;49884-0953-05
 ;;9002226.02101,"1064,49884-0953-05 ",.02)
 ;;49884-0953-05
 ;;9002226.02101,"1064,49999-0105-00 ",.01)
 ;;49999-0105-00
 ;;9002226.02101,"1064,49999-0105-00 ",.02)
 ;;49999-0105-00
 ;;9002226.02101,"1064,49999-0105-10 ",.01)
 ;;49999-0105-10
 ;;9002226.02101,"1064,49999-0105-10 ",.02)
 ;;49999-0105-10
 ;;9002226.02101,"1064,49999-0105-30 ",.01)
 ;;49999-0105-30
 ;;9002226.02101,"1064,49999-0105-30 ",.02)
 ;;49999-0105-30
 ;;9002226.02101,"1064,49999-0105-60 ",.01)
 ;;49999-0105-60
 ;;9002226.02101,"1064,49999-0105-60 ",.02)
 ;;49999-0105-60
 ;;9002226.02101,"1064,49999-0182-10 ",.01)
 ;;49999-0182-10
 ;;9002226.02101,"1064,49999-0182-10 ",.02)
 ;;49999-0182-10
 ;;9002226.02101,"1064,49999-0182-30 ",.01)
 ;;49999-0182-30
 ;;9002226.02101,"1064,49999-0182-30 ",.02)
 ;;49999-0182-30
 ;;9002226.02101,"1064,49999-0182-60 ",.01)
 ;;49999-0182-60
 ;;9002226.02101,"1064,49999-0182-60 ",.02)
 ;;49999-0182-60
 ;;9002226.02101,"1064,49999-0183-10 ",.01)
 ;;49999-0183-10
 ;;9002226.02101,"1064,49999-0183-10 ",.02)
 ;;49999-0183-10
 ;;9002226.02101,"1064,49999-0183-30 ",.01)
 ;;49999-0183-30
 ;;9002226.02101,"1064,49999-0183-30 ",.02)
 ;;49999-0183-30
 ;;9002226.02101,"1064,49999-0183-60 ",.01)
 ;;49999-0183-60
 ;;9002226.02101,"1064,49999-0183-60 ",.02)
 ;;49999-0183-60
 ;;9002226.02101,"1064,49999-0239-00 ",.01)
 ;;49999-0239-00
 ;;9002226.02101,"1064,49999-0239-00 ",.02)
 ;;49999-0239-00
 ;;9002226.02101,"1064,49999-0239-30 ",.01)
 ;;49999-0239-30
 ;;9002226.02101,"1064,49999-0239-30 ",.02)
 ;;49999-0239-30
 ;;9002226.02101,"1064,49999-0239-60 ",.01)
 ;;49999-0239-60
 ;;9002226.02101,"1064,49999-0239-60 ",.02)
 ;;49999-0239-60
 ;;9002226.02101,"1064,49999-0240-00 ",.01)
 ;;49999-0240-00
 ;;9002226.02101,"1064,49999-0240-00 ",.02)
 ;;49999-0240-00
 ;;9002226.02101,"1064,49999-0240-30 ",.01)
 ;;49999-0240-30
 ;;9002226.02101,"1064,49999-0240-30 ",.02)
 ;;49999-0240-30
 ;;9002226.02101,"1064,49999-0287-30 ",.01)
 ;;49999-0287-30
 ;;9002226.02101,"1064,49999-0287-30 ",.02)
 ;;49999-0287-30
 ;;9002226.02101,"1064,49999-0294-30 ",.01)
 ;;49999-0294-30
 ;;9002226.02101,"1064,49999-0294-30 ",.02)
 ;;49999-0294-30
 ;;9002226.02101,"1064,49999-0295-00 ",.01)
 ;;49999-0295-00
 ;;9002226.02101,"1064,49999-0295-00 ",.02)
 ;;49999-0295-00
 ;;9002226.02101,"1064,49999-0295-10 ",.01)
 ;;49999-0295-10
 ;;9002226.02101,"1064,49999-0295-10 ",.02)
 ;;49999-0295-10
 ;;9002226.02101,"1064,49999-0295-30 ",.01)
 ;;49999-0295-30
 ;;9002226.02101,"1064,49999-0295-30 ",.02)
 ;;49999-0295-30
 ;;9002226.02101,"1064,49999-0321-00 ",.01)
 ;;49999-0321-00
 ;;9002226.02101,"1064,49999-0321-00 ",.02)
 ;;49999-0321-00
 ;;9002226.02101,"1064,49999-0321-30 ",.01)
 ;;49999-0321-30
 ;;9002226.02101,"1064,49999-0321-30 ",.02)
 ;;49999-0321-30
 ;;9002226.02101,"1064,49999-0321-60 ",.01)
 ;;49999-0321-60
 ;;9002226.02101,"1064,49999-0321-60 ",.02)
 ;;49999-0321-60
 ;;9002226.02101,"1064,49999-0345-00 ",.01)
 ;;49999-0345-00
 ;;9002226.02101,"1064,49999-0345-00 ",.02)
 ;;49999-0345-00
 ;;9002226.02101,"1064,49999-0345-30 ",.01)
 ;;49999-0345-30
 ;;9002226.02101,"1064,49999-0345-30 ",.02)
 ;;49999-0345-30
 ;;9002226.02101,"1064,49999-0469-10 ",.01)
 ;;49999-0469-10
 ;;9002226.02101,"1064,49999-0469-10 ",.02)
 ;;49999-0469-10
 ;;9002226.02101,"1064,49999-0469-30 ",.01)
 ;;49999-0469-30
 ;;9002226.02101,"1064,49999-0469-30 ",.02)
 ;;49999-0469-30
 ;;9002226.02101,"1064,49999-0511-30 ",.01)
 ;;49999-0511-30
 ;;9002226.02101,"1064,49999-0511-30 ",.02)
 ;;49999-0511-30
 ;;9002226.02101,"1064,49999-0511-60 ",.01)
 ;;49999-0511-60
 ;;9002226.02101,"1064,49999-0511-60 ",.02)
 ;;49999-0511-60
 ;;9002226.02101,"1064,49999-0759-30 ",.01)
 ;;49999-0759-30
 ;;9002226.02101,"1064,49999-0759-30 ",.02)
 ;;49999-0759-30
 ;;9002226.02101,"1064,49999-0761-00 ",.01)
 ;;49999-0761-00
 ;;9002226.02101,"1064,49999-0761-00 ",.02)
 ;;49999-0761-00
 ;;9002226.02101,"1064,49999-0761-30 ",.01)
 ;;49999-0761-30
 ;;9002226.02101,"1064,49999-0761-30 ",.02)
 ;;49999-0761-30
 ;;9002226.02101,"1064,49999-0823-00 ",.01)
 ;;49999-0823-00
 ;;9002226.02101,"1064,49999-0823-00 ",.02)
 ;;49999-0823-00
 ;;9002226.02101,"1064,49999-0870-00 ",.01)
 ;;49999-0870-00
 ;;9002226.02101,"1064,49999-0870-00 ",.02)
 ;;49999-0870-00
 ;;9002226.02101,"1064,49999-0871-30 ",.01)
 ;;49999-0871-30
 ;;9002226.02101,"1064,49999-0871-30 ",.02)
 ;;49999-0871-30
 ;;9002226.02101,"1064,49999-0871-90 ",.01)
 ;;49999-0871-90
 ;;9002226.02101,"1064,49999-0871-90 ",.02)
 ;;49999-0871-90
 ;;9002226.02101,"1064,49999-0924-10 ",.01)
 ;;49999-0924-10
 ;;9002226.02101,"1064,49999-0924-10 ",.02)
 ;;49999-0924-10
 ;;9002226.02101,"1064,49999-0924-30 ",.01)
 ;;49999-0924-30
 ;;9002226.02101,"1064,49999-0924-30 ",.02)
 ;;49999-0924-30
 ;;9002226.02101,"1064,49999-0924-60 ",.01)
 ;;49999-0924-60
 ;;9002226.02101,"1064,49999-0924-60 ",.02)
 ;;49999-0924-60
 ;;9002226.02101,"1064,49999-0934-30 ",.01)
 ;;49999-0934-30
 ;;9002226.02101,"1064,49999-0934-30 ",.02)
 ;;49999-0934-30
 ;;9002226.02101,"1064,49999-0946-30 ",.01)
 ;;49999-0946-30
 ;;9002226.02101,"1064,49999-0946-30 ",.02)
 ;;49999-0946-30
 ;;9002226.02101,"1064,49999-0947-30 ",.01)
 ;;49999-0947-30
 ;;9002226.02101,"1064,49999-0947-30 ",.02)
 ;;49999-0947-30
 ;;9002226.02101,"1064,49999-0948-30 ",.01)
 ;;49999-0948-30
 ;;9002226.02101,"1064,49999-0948-30 ",.02)
 ;;49999-0948-30
 ;;9002226.02101,"1064,50268-0109-15 ",.01)
 ;;50268-0109-15
 ;;9002226.02101,"1064,50268-0109-15 ",.02)
 ;;50268-0109-15
 ;;9002226.02101,"1064,50268-0110-15 ",.01)
 ;;50268-0110-15
 ;;9002226.02101,"1064,50268-0110-15 ",.02)
 ;;50268-0110-15
 ;;9002226.02101,"1064,50268-0111-15 ",.01)
 ;;50268-0111-15
 ;;9002226.02101,"1064,50268-0111-15 ",.02)
 ;;50268-0111-15
 ;;9002226.02101,"1064,50268-0112-15 ",.01)
 ;;50268-0112-15
 ;;9002226.02101,"1064,50268-0112-15 ",.02)
 ;;50268-0112-15
 ;;9002226.02101,"1064,51079-0145-01 ",.01)
 ;;51079-0145-01
 ;;9002226.02101,"1064,51079-0145-01 ",.02)
 ;;51079-0145-01
 ;;9002226.02101,"1064,51079-0145-20 ",.01)
 ;;51079-0145-20
 ;;9002226.02101,"1064,51079-0145-20 ",.02)
 ;;51079-0145-20
 ;;9002226.02101,"1064,51079-0146-01 ",.01)
 ;;51079-0146-01
 ;;9002226.02101,"1064,51079-0146-01 ",.02)
 ;;51079-0146-01
 ;;9002226.02101,"1064,51079-0146-20 ",.01)
 ;;51079-0146-20
 ;;9002226.02101,"1064,51079-0146-20 ",.02)
 ;;51079-0146-20
 ;;9002226.02101,"1064,51079-0256-40 ",.01)
 ;;51079-0256-40
 ;;9002226.02101,"1064,51079-0256-40 ",.02)
 ;;51079-0256-40
 ;;9002226.02101,"1064,51079-0261-40 ",.01)
 ;;51079-0261-40
 ;;9002226.02101,"1064,51079-0261-40 ",.02)
 ;;51079-0261-40
 ;;9002226.02101,"1064,51079-0697-40 ",.01)
 ;;51079-0697-40
 ;;9002226.02101,"1064,51079-0697-40 ",.02)
 ;;51079-0697-40
 ;;9002226.02101,"1064,51079-0698-40 ",.01)
 ;;51079-0698-40
 ;;9002226.02101,"1064,51079-0698-40 ",.02)
 ;;51079-0698-40
 ;;9002226.02101,"1064,51079-0699-40 ",.01)
 ;;51079-0699-40
 ;;9002226.02101,"1064,51079-0699-40 ",.02)
 ;;51079-0699-40
 ;;9002226.02101,"1064,51079-0863-01 ",.01)
 ;;51079-0863-01
 ;;9002226.02101,"1064,51079-0863-01 ",.02)
 ;;51079-0863-01
 ;;9002226.02101,"1064,51079-0863-20 ",.01)
 ;;51079-0863-20
 ;;9002226.02101,"1064,51079-0863-20 ",.02)
 ;;51079-0863-20
 ;;9002226.02101,"1064,51079-0864-01 ",.01)
 ;;51079-0864-01
 ;;9002226.02101,"1064,51079-0864-01 ",.02)
 ;;51079-0864-01
 ;;9002226.02101,"1064,51079-0864-20 ",.01)
 ;;51079-0864-20
 ;;9002226.02101,"1064,51079-0864-20 ",.02)
 ;;51079-0864-20
 ;;9002226.02101,"1064,51079-0950-01 ",.01)
 ;;51079-0950-01
 ;;9002226.02101,"1064,51079-0950-01 ",.02)
 ;;51079-0950-01
 ;;9002226.02101,"1064,51079-0950-20 ",.01)
 ;;51079-0950-20
 ;;9002226.02101,"1064,51079-0950-20 ",.02)
 ;;51079-0950-20
 ;;9002226.02101,"1064,51079-0951-01 ",.01)
 ;;51079-0951-01
 ;;9002226.02101,"1064,51079-0951-01 ",.02)
 ;;51079-0951-01
 ;;9002226.02101,"1064,51079-0951-20 ",.01)
 ;;51079-0951-20
 ;;9002226.02101,"1064,51079-0951-20 ",.02)
 ;;51079-0951-20
 ;;9002226.02101,"1064,51079-0952-01 ",.01)
 ;;51079-0952-01
 ;;9002226.02101,"1064,51079-0952-01 ",.02)
 ;;51079-0952-01
 ;;9002226.02101,"1064,51079-0952-20 ",.01)
 ;;51079-0952-20
 ;;9002226.02101,"1064,51079-0952-20 ",.02)
 ;;51079-0952-20
 ;;9002226.02101,"1064,51079-0953-01 ",.01)
 ;;51079-0953-01
 ;;9002226.02101,"1064,51079-0953-01 ",.02)
 ;;51079-0953-01
 ;;9002226.02101,"1064,51079-0953-20 ",.01)
 ;;51079-0953-20
 ;;9002226.02101,"1064,51079-0953-20 ",.02)
 ;;51079-0953-20
 ;;9002226.02101,"1064,51079-0981-01 ",.01)
 ;;51079-0981-01
 ;;9002226.02101,"1064,51079-0981-01 ",.02)
 ;;51079-0981-01
 ;;9002226.02101,"1064,51079-0981-20 ",.01)
 ;;51079-0981-20
 ;;9002226.02101,"1064,51079-0981-20 ",.02)
 ;;51079-0981-20
 ;;9002226.02101,"1064,51079-0981-30 ",.01)
 ;;51079-0981-30
 ;;9002226.02101,"1064,51079-0981-30 ",.02)
 ;;51079-0981-30
 ;;9002226.02101,"1064,51079-0981-40 ",.01)
 ;;51079-0981-40
 ;;9002226.02101,"1064,51079-0981-40 ",.02)
 ;;51079-0981-40
 ;;9002226.02101,"1064,51079-0981-56 ",.01)
 ;;51079-0981-56
 ;;9002226.02101,"1064,51079-0981-56 ",.02)
 ;;51079-0981-56
 ;;9002226.02101,"1064,51079-0981-57 ",.01)
 ;;51079-0981-57
 ;;9002226.02101,"1064,51079-0981-57 ",.02)
 ;;51079-0981-57
 ;;9002226.02101,"1064,51079-0981-60 ",.01)
 ;;51079-0981-60
 ;;9002226.02101,"1064,51079-0981-60 ",.02)
 ;;51079-0981-60
 ;;9002226.02101,"1064,51079-0982-01 ",.01)
 ;;51079-0982-01
 ;;9002226.02101,"1064,51079-0982-01 ",.02)
 ;;51079-0982-01
 ;;9002226.02101,"1064,51079-0982-17 ",.01)
 ;;51079-0982-17
 ;;9002226.02101,"1064,51079-0982-17 ",.02)
 ;;51079-0982-17
 ;;9002226.02101,"1064,51079-0982-19 ",.01)
 ;;51079-0982-19
 ;;9002226.02101,"1064,51079-0982-19 ",.02)
 ;;51079-0982-19
 ;;9002226.02101,"1064,51079-0982-20 ",.01)
 ;;51079-0982-20
 ;;9002226.02101,"1064,51079-0982-20 ",.02)
 ;;51079-0982-20
 ;;9002226.02101,"1064,51079-0982-30 ",.01)
 ;;51079-0982-30
 ;;9002226.02101,"1064,51079-0982-30 ",.02)
 ;;51079-0982-30
 ;;9002226.02101,"1064,51079-0982-40 ",.01)
 ;;51079-0982-40
 ;;9002226.02101,"1064,51079-0982-40 ",.02)
 ;;51079-0982-40
 ;;9002226.02101,"1064,51079-0982-56 ",.01)
 ;;51079-0982-56
 ;;9002226.02101,"1064,51079-0982-56 ",.02)
 ;;51079-0982-56
 ;;9002226.02101,"1064,51079-0982-57 ",.01)
 ;;51079-0982-57
 ;;9002226.02101,"1064,51079-0982-57 ",.02)
 ;;51079-0982-57
 ;;9002226.02101,"1064,51079-0982-60 ",.01)
 ;;51079-0982-60
