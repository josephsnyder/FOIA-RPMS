BUD0ZA34 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;6.0;IHS/RPMS UNIFORM DATA SYSTEM;;JAN 23, 2012;Build 25
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,55289-0892-15 ",.01)
 ;;55289-0892-15
 ;;9002226.02101,"1062,55289-0892-15 ",.02)
 ;;55289-0892-15
 ;;9002226.02101,"1062,55289-0892-30 ",.01)
 ;;55289-0892-30
 ;;9002226.02101,"1062,55289-0892-30 ",.02)
 ;;55289-0892-30
 ;;9002226.02101,"1062,55289-0892-60 ",.01)
 ;;55289-0892-60
 ;;9002226.02101,"1062,55289-0892-60 ",.02)
 ;;55289-0892-60
 ;;9002226.02101,"1062,55289-0892-86 ",.01)
 ;;55289-0892-86
 ;;9002226.02101,"1062,55289-0892-86 ",.02)
 ;;55289-0892-86
 ;;9002226.02101,"1062,55289-0892-90 ",.01)
 ;;55289-0892-90
 ;;9002226.02101,"1062,55289-0892-90 ",.02)
 ;;55289-0892-90
 ;;9002226.02101,"1062,55289-0892-93 ",.01)
 ;;55289-0892-93
 ;;9002226.02101,"1062,55289-0892-93 ",.02)
 ;;55289-0892-93
 ;;9002226.02101,"1062,55289-0892-97 ",.01)
 ;;55289-0892-97
 ;;9002226.02101,"1062,55289-0892-97 ",.02)
 ;;55289-0892-97
 ;;9002226.02101,"1062,55289-0892-98 ",.01)
 ;;55289-0892-98
 ;;9002226.02101,"1062,55289-0892-98 ",.02)
 ;;55289-0892-98
 ;;9002226.02101,"1062,55289-0938-30 ",.01)
 ;;55289-0938-30
 ;;9002226.02101,"1062,55289-0938-30 ",.02)
 ;;55289-0938-30
 ;;9002226.02101,"1062,55289-0976-14 ",.01)
 ;;55289-0976-14
 ;;9002226.02101,"1062,55289-0976-14 ",.02)
 ;;55289-0976-14
 ;;9002226.02101,"1062,55289-0976-30 ",.01)
 ;;55289-0976-30
 ;;9002226.02101,"1062,55289-0976-30 ",.02)
 ;;55289-0976-30
 ;;9002226.02101,"1062,55289-0976-60 ",.01)
 ;;55289-0976-60
 ;;9002226.02101,"1062,55289-0976-60 ",.02)
 ;;55289-0976-60
 ;;9002226.02101,"1062,55289-0976-93 ",.01)
 ;;55289-0976-93
 ;;9002226.02101,"1062,55289-0976-93 ",.02)
 ;;55289-0976-93
 ;;9002226.02101,"1062,55370-0146-09 ",.01)
 ;;55370-0146-09
 ;;9002226.02101,"1062,55370-0146-09 ",.02)
 ;;55370-0146-09
 ;;9002226.02101,"1062,55370-0147-07 ",.01)
 ;;55370-0147-07
 ;;9002226.02101,"1062,55370-0147-07 ",.02)
 ;;55370-0147-07
 ;;9002226.02101,"1062,55370-0147-08 ",.01)
 ;;55370-0147-08
 ;;9002226.02101,"1062,55370-0147-08 ",.02)
 ;;55370-0147-08
 ;;9002226.02101,"1062,55370-0147-09 ",.01)
 ;;55370-0147-09
 ;;9002226.02101,"1062,55370-0147-09 ",.02)
 ;;55370-0147-09
 ;;9002226.02101,"1062,55370-0506-07 ",.01)
 ;;55370-0506-07
 ;;9002226.02101,"1062,55370-0506-07 ",.02)
 ;;55370-0506-07
 ;;9002226.02101,"1062,55370-0506-08 ",.01)
 ;;55370-0506-08
 ;;9002226.02101,"1062,55370-0506-08 ",.02)
 ;;55370-0506-08
 ;;9002226.02101,"1062,55829-0196-10 ",.01)
 ;;55829-0196-10
 ;;9002226.02101,"1062,55829-0196-10 ",.02)
 ;;55829-0196-10
 ;;9002226.02101,"1062,55829-0197-10 ",.01)
 ;;55829-0197-10
 ;;9002226.02101,"1062,55829-0197-10 ",.02)
 ;;55829-0197-10
 ;;9002226.02101,"1062,55829-0510-10 ",.01)
 ;;55829-0510-10
 ;;9002226.02101,"1062,55829-0510-10 ",.02)
 ;;55829-0510-10
 ;;9002226.02101,"1062,55829-0511-10 ",.01)
 ;;55829-0511-10
 ;;9002226.02101,"1062,55829-0511-10 ",.02)
 ;;55829-0511-10
 ;;9002226.02101,"1062,55829-0512-10 ",.01)
 ;;55829-0512-10
 ;;9002226.02101,"1062,55829-0512-10 ",.02)
 ;;55829-0512-10
 ;;9002226.02101,"1062,55829-0515-10 ",.01)
 ;;55829-0515-10
 ;;9002226.02101,"1062,55829-0515-10 ",.02)
 ;;55829-0515-10
 ;;9002226.02101,"1062,55887-0062-30 ",.01)
 ;;55887-0062-30
 ;;9002226.02101,"1062,55887-0062-30 ",.02)
 ;;55887-0062-30
 ;;9002226.02101,"1062,55887-0063-30 ",.01)
 ;;55887-0063-30
 ;;9002226.02101,"1062,55887-0063-30 ",.02)
 ;;55887-0063-30
 ;;9002226.02101,"1062,55887-0100-30 ",.01)
 ;;55887-0100-30
 ;;9002226.02101,"1062,55887-0100-30 ",.02)
 ;;55887-0100-30
 ;;9002226.02101,"1062,55887-0173-30 ",.01)
 ;;55887-0173-30
 ;;9002226.02101,"1062,55887-0173-30 ",.02)
 ;;55887-0173-30
 ;;9002226.02101,"1062,55887-0179-30 ",.01)
 ;;55887-0179-30
 ;;9002226.02101,"1062,55887-0179-30 ",.02)
 ;;55887-0179-30
 ;;9002226.02101,"1062,55887-0179-90 ",.01)
 ;;55887-0179-90
 ;;9002226.02101,"1062,55887-0179-90 ",.02)
 ;;55887-0179-90
 ;;9002226.02101,"1062,55887-0212-30 ",.01)
 ;;55887-0212-30
 ;;9002226.02101,"1062,55887-0212-30 ",.02)
 ;;55887-0212-30
 ;;9002226.02101,"1062,55887-0212-60 ",.01)
 ;;55887-0212-60
 ;;9002226.02101,"1062,55887-0212-60 ",.02)
 ;;55887-0212-60
 ;;9002226.02101,"1062,55887-0212-90 ",.01)
 ;;55887-0212-90
 ;;9002226.02101,"1062,55887-0212-90 ",.02)
 ;;55887-0212-90
 ;;9002226.02101,"1062,55887-0222-30 ",.01)
 ;;55887-0222-30
 ;;9002226.02101,"1062,55887-0222-30 ",.02)
 ;;55887-0222-30
 ;;9002226.02101,"1062,55887-0222-60 ",.01)
 ;;55887-0222-60
 ;;9002226.02101,"1062,55887-0222-60 ",.02)
 ;;55887-0222-60
 ;;9002226.02101,"1062,55887-0222-90 ",.01)
 ;;55887-0222-90
 ;;9002226.02101,"1062,55887-0222-90 ",.02)
 ;;55887-0222-90
 ;;9002226.02101,"1062,55887-0273-30 ",.01)
 ;;55887-0273-30
 ;;9002226.02101,"1062,55887-0273-30 ",.02)
 ;;55887-0273-30
 ;;9002226.02101,"1062,55887-0339-30 ",.01)
 ;;55887-0339-30
 ;;9002226.02101,"1062,55887-0339-30 ",.02)
 ;;55887-0339-30
 ;;9002226.02101,"1062,55887-0339-60 ",.01)
 ;;55887-0339-60
 ;;9002226.02101,"1062,55887-0339-60 ",.02)
 ;;55887-0339-60
 ;;9002226.02101,"1062,55887-0339-90 ",.01)
 ;;55887-0339-90
 ;;9002226.02101,"1062,55887-0339-90 ",.02)
 ;;55887-0339-90
 ;;9002226.02101,"1062,55887-0368-30 ",.01)
 ;;55887-0368-30
 ;;9002226.02101,"1062,55887-0368-30 ",.02)
 ;;55887-0368-30
 ;;9002226.02101,"1062,55887-0368-60 ",.01)
 ;;55887-0368-60
