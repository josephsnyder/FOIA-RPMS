BGP72A27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,55289-0806-30 ",.01)
 ;;55289-0806-30
 ;;9002226.02101,"1876,55289-0806-30 ",.02)
 ;;55289-0806-30
 ;;9002226.02101,"1876,55289-0806-60 ",.01)
 ;;55289-0806-60
 ;;9002226.02101,"1876,55289-0806-60 ",.02)
 ;;55289-0806-60
 ;;9002226.02101,"1876,55289-0806-86 ",.01)
 ;;55289-0806-86
 ;;9002226.02101,"1876,55289-0806-86 ",.02)
 ;;55289-0806-86
 ;;9002226.02101,"1876,55289-0806-90 ",.01)
 ;;55289-0806-90
 ;;9002226.02101,"1876,55289-0806-90 ",.02)
 ;;55289-0806-90
 ;;9002226.02101,"1876,55289-0806-93 ",.01)
 ;;55289-0806-93
 ;;9002226.02101,"1876,55289-0806-93 ",.02)
 ;;55289-0806-93
 ;;9002226.02101,"1876,55289-0892-01 ",.01)
 ;;55289-0892-01
 ;;9002226.02101,"1876,55289-0892-01 ",.02)
 ;;55289-0892-01
 ;;9002226.02101,"1876,55289-0892-14 ",.01)
 ;;55289-0892-14
 ;;9002226.02101,"1876,55289-0892-14 ",.02)
 ;;55289-0892-14
 ;;9002226.02101,"1876,55289-0892-15 ",.01)
 ;;55289-0892-15
 ;;9002226.02101,"1876,55289-0892-15 ",.02)
 ;;55289-0892-15
 ;;9002226.02101,"1876,55289-0892-30 ",.01)
 ;;55289-0892-30
 ;;9002226.02101,"1876,55289-0892-30 ",.02)
 ;;55289-0892-30
 ;;9002226.02101,"1876,55289-0892-60 ",.01)
 ;;55289-0892-60
 ;;9002226.02101,"1876,55289-0892-60 ",.02)
 ;;55289-0892-60
 ;;9002226.02101,"1876,55289-0892-86 ",.01)
 ;;55289-0892-86
 ;;9002226.02101,"1876,55289-0892-86 ",.02)
 ;;55289-0892-86
 ;;9002226.02101,"1876,55289-0892-90 ",.01)
 ;;55289-0892-90
 ;;9002226.02101,"1876,55289-0892-90 ",.02)
 ;;55289-0892-90
 ;;9002226.02101,"1876,55289-0892-93 ",.01)
 ;;55289-0892-93
 ;;9002226.02101,"1876,55289-0892-93 ",.02)
 ;;55289-0892-93
 ;;9002226.02101,"1876,55289-0892-98 ",.01)
 ;;55289-0892-98
 ;;9002226.02101,"1876,55289-0892-98 ",.02)
 ;;55289-0892-98
 ;;9002226.02101,"1876,55289-0919-30 ",.01)
 ;;55289-0919-30
 ;;9002226.02101,"1876,55289-0919-30 ",.02)
 ;;55289-0919-30
 ;;9002226.02101,"1876,55289-0919-60 ",.01)
 ;;55289-0919-60
 ;;9002226.02101,"1876,55289-0919-60 ",.02)
 ;;55289-0919-60
 ;;9002226.02101,"1876,55289-0919-90 ",.01)
 ;;55289-0919-90
 ;;9002226.02101,"1876,55289-0919-90 ",.02)
 ;;55289-0919-90
 ;;9002226.02101,"1876,55289-0919-93 ",.01)
 ;;55289-0919-93
 ;;9002226.02101,"1876,55289-0919-93 ",.02)
 ;;55289-0919-93
 ;;9002226.02101,"1876,55289-0919-94 ",.01)
 ;;55289-0919-94
 ;;9002226.02101,"1876,55289-0919-94 ",.02)
 ;;55289-0919-94
 ;;9002226.02101,"1876,55289-0919-98 ",.01)
 ;;55289-0919-98
 ;;9002226.02101,"1876,55289-0919-98 ",.02)
 ;;55289-0919-98
 ;;9002226.02101,"1876,55289-0934-30 ",.01)
 ;;55289-0934-30
 ;;9002226.02101,"1876,55289-0934-30 ",.02)
 ;;55289-0934-30
 ;;9002226.02101,"1876,55289-0934-60 ",.01)
 ;;55289-0934-60
 ;;9002226.02101,"1876,55289-0934-60 ",.02)
 ;;55289-0934-60
 ;;9002226.02101,"1876,55289-0934-93 ",.01)
 ;;55289-0934-93
 ;;9002226.02101,"1876,55289-0934-93 ",.02)
 ;;55289-0934-93
 ;;9002226.02101,"1876,55289-0934-94 ",.01)
 ;;55289-0934-94
 ;;9002226.02101,"1876,55289-0934-94 ",.02)
 ;;55289-0934-94
 ;;9002226.02101,"1876,55289-0934-98 ",.01)
 ;;55289-0934-98
 ;;9002226.02101,"1876,55289-0934-98 ",.02)
 ;;55289-0934-98
 ;;9002226.02101,"1876,55289-0976-01 ",.01)
 ;;55289-0976-01
 ;;9002226.02101,"1876,55289-0976-01 ",.02)
 ;;55289-0976-01
 ;;9002226.02101,"1876,55289-0976-14 ",.01)
 ;;55289-0976-14
 ;;9002226.02101,"1876,55289-0976-14 ",.02)
 ;;55289-0976-14
 ;;9002226.02101,"1876,55289-0976-30 ",.01)
 ;;55289-0976-30
 ;;9002226.02101,"1876,55289-0976-30 ",.02)
 ;;55289-0976-30
 ;;9002226.02101,"1876,55289-0976-60 ",.01)
 ;;55289-0976-60
 ;;9002226.02101,"1876,55289-0976-60 ",.02)
 ;;55289-0976-60
 ;;9002226.02101,"1876,55289-0976-90 ",.01)
 ;;55289-0976-90
 ;;9002226.02101,"1876,55289-0976-90 ",.02)
 ;;55289-0976-90
 ;;9002226.02101,"1876,55289-0976-93 ",.01)
 ;;55289-0976-93
 ;;9002226.02101,"1876,55289-0976-93 ",.02)
 ;;55289-0976-93
 ;;9002226.02101,"1876,55700-0022-30 ",.01)
 ;;55700-0022-30
 ;;9002226.02101,"1876,55700-0022-30 ",.02)
 ;;55700-0022-30
 ;;9002226.02101,"1876,55700-0041-30 ",.01)
 ;;55700-0041-30
 ;;9002226.02101,"1876,55700-0041-30 ",.02)
 ;;55700-0041-30
 ;;9002226.02101,"1876,55700-0248-30 ",.01)
 ;;55700-0248-30
 ;;9002226.02101,"1876,55700-0248-30 ",.02)
 ;;55700-0248-30
 ;;9002226.02101,"1876,55700-0248-60 ",.01)
 ;;55700-0248-60
 ;;9002226.02101,"1876,55700-0248-60 ",.02)
 ;;55700-0248-60
 ;;9002226.02101,"1876,55700-0248-90 ",.01)
 ;;55700-0248-90
 ;;9002226.02101,"1876,55700-0248-90 ",.02)
 ;;55700-0248-90
 ;;9002226.02101,"1876,55700-0256-30 ",.01)
 ;;55700-0256-30
 ;;9002226.02101,"1876,55700-0256-30 ",.02)
 ;;55700-0256-30
 ;;9002226.02101,"1876,55700-0256-60 ",.01)
 ;;55700-0256-60
 ;;9002226.02101,"1876,55700-0256-60 ",.02)
 ;;55700-0256-60
 ;;9002226.02101,"1876,55700-0256-90 ",.01)
 ;;55700-0256-90
 ;;9002226.02101,"1876,55700-0256-90 ",.02)
 ;;55700-0256-90
 ;;9002226.02101,"1876,55700-0320-60 ",.01)
 ;;55700-0320-60
 ;;9002226.02101,"1876,55700-0320-60 ",.02)
 ;;55700-0320-60
 ;;9002226.02101,"1876,55700-0320-90 ",.01)
 ;;55700-0320-90
 ;;9002226.02101,"1876,55700-0320-90 ",.02)
 ;;55700-0320-90
 ;;9002226.02101,"1876,55700-0395-30 ",.01)
 ;;55700-0395-30
 ;;9002226.02101,"1876,55700-0395-30 ",.02)
 ;;55700-0395-30
 ;;9002226.02101,"1876,55700-0395-60 ",.01)
 ;;55700-0395-60
 ;;9002226.02101,"1876,55700-0395-60 ",.02)
 ;;55700-0395-60
 ;;9002226.02101,"1876,55700-0395-90 ",.01)
 ;;55700-0395-90
 ;;9002226.02101,"1876,55700-0395-90 ",.02)
 ;;55700-0395-90
 ;;9002226.02101,"1876,57237-0020-01 ",.01)
 ;;57237-0020-01
 ;;9002226.02101,"1876,57237-0020-01 ",.02)
 ;;57237-0020-01
 ;;9002226.02101,"1876,57237-0021-01 ",.01)
 ;;57237-0021-01
 ;;9002226.02101,"1876,57237-0021-01 ",.02)
 ;;57237-0021-01
 ;;9002226.02101,"1876,57237-0021-05 ",.01)
 ;;57237-0021-05
 ;;9002226.02101,"1876,57237-0021-05 ",.02)
 ;;57237-0021-05
 ;;9002226.02101,"1876,57237-0021-99 ",.01)
 ;;57237-0021-99
 ;;9002226.02101,"1876,57237-0021-99 ",.02)
 ;;57237-0021-99
 ;;9002226.02101,"1876,57237-0022-01 ",.01)
 ;;57237-0022-01
 ;;9002226.02101,"1876,57237-0022-01 ",.02)
 ;;57237-0022-01
 ;;9002226.02101,"1876,57237-0022-05 ",.01)
 ;;57237-0022-05
 ;;9002226.02101,"1876,57237-0022-05 ",.02)
 ;;57237-0022-05
 ;;9002226.02101,"1876,57237-0022-99 ",.01)
 ;;57237-0022-99
 ;;9002226.02101,"1876,57237-0022-99 ",.02)
 ;;57237-0022-99
 ;;9002226.02101,"1876,57237-0023-01 ",.01)
 ;;57237-0023-01
 ;;9002226.02101,"1876,57237-0023-01 ",.02)
 ;;57237-0023-01
 ;;9002226.02101,"1876,57237-0023-05 ",.01)
 ;;57237-0023-05
 ;;9002226.02101,"1876,57237-0023-05 ",.02)
 ;;57237-0023-05
 ;;9002226.02101,"1876,57237-0024-01 ",.01)
 ;;57237-0024-01
 ;;9002226.02101,"1876,57237-0024-01 ",.02)
 ;;57237-0024-01
 ;;9002226.02101,"1876,57237-0024-05 ",.01)
 ;;57237-0024-05
 ;;9002226.02101,"1876,57237-0024-05 ",.02)
 ;;57237-0024-05
 ;;9002226.02101,"1876,57237-0025-01 ",.01)
 ;;57237-0025-01
 ;;9002226.02101,"1876,57237-0025-01 ",.02)
 ;;57237-0025-01
 ;;9002226.02101,"1876,57237-0025-05 ",.01)
 ;;57237-0025-05
 ;;9002226.02101,"1876,57237-0025-05 ",.02)
 ;;57237-0025-05
 ;;9002226.02101,"1876,57237-0157-01 ",.01)
 ;;57237-0157-01
 ;;9002226.02101,"1876,57237-0157-01 ",.02)
 ;;57237-0157-01
 ;;9002226.02101,"1876,57237-0158-01 ",.01)
 ;;57237-0158-01
 ;;9002226.02101,"1876,57237-0158-01 ",.02)
 ;;57237-0158-01
 ;;9002226.02101,"1876,57237-0159-01 ",.01)
 ;;57237-0159-01
 ;;9002226.02101,"1876,57237-0159-01 ",.02)
 ;;57237-0159-01
 ;;9002226.02101,"1876,57664-0397-51 ",.01)
 ;;57664-0397-51
 ;;9002226.02101,"1876,57664-0397-51 ",.02)
 ;;57664-0397-51
 ;;9002226.02101,"1876,57664-0397-53 ",.01)
 ;;57664-0397-53
 ;;9002226.02101,"1876,57664-0397-53 ",.02)
 ;;57664-0397-53
 ;;9002226.02101,"1876,57664-0397-58 ",.01)
 ;;57664-0397-58
 ;;9002226.02101,"1876,57664-0397-58 ",.02)
 ;;57664-0397-58
 ;;9002226.02101,"1876,57664-0397-88 ",.01)
 ;;57664-0397-88
 ;;9002226.02101,"1876,57664-0397-88 ",.02)
 ;;57664-0397-88
 ;;9002226.02101,"1876,57664-0398-13 ",.01)
 ;;57664-0398-13
 ;;9002226.02101,"1876,57664-0398-13 ",.02)
 ;;57664-0398-13
 ;;9002226.02101,"1876,57664-0398-18 ",.01)
 ;;57664-0398-18
 ;;9002226.02101,"1876,57664-0398-18 ",.02)
 ;;57664-0398-18
 ;;9002226.02101,"1876,57664-0398-88 ",.01)
 ;;57664-0398-88
 ;;9002226.02101,"1876,57664-0398-88 ",.02)
 ;;57664-0398-88
 ;;9002226.02101,"1876,57664-0399-13 ",.01)
 ;;57664-0399-13
 ;;9002226.02101,"1876,57664-0399-13 ",.02)
 ;;57664-0399-13
 ;;9002226.02101,"1876,57664-0399-18 ",.01)
 ;;57664-0399-18
 ;;9002226.02101,"1876,57664-0399-18 ",.02)
 ;;57664-0399-18
 ;;9002226.02101,"1876,57664-0399-88 ",.01)
 ;;57664-0399-88
 ;;9002226.02101,"1876,57664-0399-88 ",.02)
 ;;57664-0399-88
 ;;9002226.02101,"1876,57664-0435-51 ",.01)
 ;;57664-0435-51
 ;;9002226.02101,"1876,57664-0435-51 ",.02)
 ;;57664-0435-51
 ;;9002226.02101,"1876,57664-0435-53 ",.01)
 ;;57664-0435-53
 ;;9002226.02101,"1876,57664-0435-53 ",.02)
 ;;57664-0435-53
 ;;9002226.02101,"1876,57664-0435-58 ",.01)
 ;;57664-0435-58
 ;;9002226.02101,"1876,57664-0435-58 ",.02)
 ;;57664-0435-58
 ;;9002226.02101,"1876,57664-0435-88 ",.01)
 ;;57664-0435-88
 ;;9002226.02101,"1876,57664-0435-88 ",.02)
 ;;57664-0435-88
 ;;9002226.02101,"1876,57664-0474-51 ",.01)
 ;;57664-0474-51
 ;;9002226.02101,"1876,57664-0474-51 ",.02)
 ;;57664-0474-51
 ;;9002226.02101,"1876,57664-0474-53 ",.01)
 ;;57664-0474-53
 ;;9002226.02101,"1876,57664-0474-53 ",.02)
 ;;57664-0474-53
 ;;9002226.02101,"1876,57664-0474-58 ",.01)
 ;;57664-0474-58
 ;;9002226.02101,"1876,57664-0474-58 ",.02)
 ;;57664-0474-58
 ;;9002226.02101,"1876,57664-0474-88 ",.01)
 ;;57664-0474-88
 ;;9002226.02101,"1876,57664-0474-88 ",.02)
 ;;57664-0474-88
 ;;9002226.02101,"1876,57664-0745-13 ",.01)
 ;;57664-0745-13
 ;;9002226.02101,"1876,57664-0745-13 ",.02)
 ;;57664-0745-13
 ;;9002226.02101,"1876,57664-0745-88 ",.01)
 ;;57664-0745-88
 ;;9002226.02101,"1876,57664-0745-88 ",.02)
 ;;57664-0745-88
 ;;9002226.02101,"1876,57664-0747-13 ",.01)
 ;;57664-0747-13
 ;;9002226.02101,"1876,57664-0747-13 ",.02)
 ;;57664-0747-13
 ;;9002226.02101,"1876,57664-0747-88 ",.01)
 ;;57664-0747-88
 ;;9002226.02101,"1876,57664-0747-88 ",.02)
 ;;57664-0747-88
 ;;9002226.02101,"1876,58118-0010-06 ",.01)
 ;;58118-0010-06
 ;;9002226.02101,"1876,58118-0010-06 ",.02)
 ;;58118-0010-06
 ;;9002226.02101,"1876,58118-0010-08 ",.01)
 ;;58118-0010-08
 ;;9002226.02101,"1876,58118-0010-08 ",.02)
 ;;58118-0010-08
 ;;9002226.02101,"1876,58118-0010-09 ",.01)
 ;;58118-0010-09
 ;;9002226.02101,"1876,58118-0010-09 ",.02)
 ;;58118-0010-09
 ;;9002226.02101,"1876,58118-0102-03 ",.01)
 ;;58118-0102-03
 ;;9002226.02101,"1876,58118-0102-03 ",.02)
 ;;58118-0102-03
 ;;9002226.02101,"1876,58118-0102-06 ",.01)
 ;;58118-0102-06
 ;;9002226.02101,"1876,58118-0102-06 ",.02)
 ;;58118-0102-06
 ;;9002226.02101,"1876,58118-0102-09 ",.01)
 ;;58118-0102-09
 ;;9002226.02101,"1876,58118-0102-09 ",.02)
 ;;58118-0102-09
 ;;9002226.02101,"1876,58118-0178-03 ",.01)
 ;;58118-0178-03
 ;;9002226.02101,"1876,58118-0178-03 ",.02)
 ;;58118-0178-03
 ;;9002226.02101,"1876,58118-0178-06 ",.01)
 ;;58118-0178-06
 ;;9002226.02101,"1876,58118-0178-06 ",.02)
 ;;58118-0178-06
 ;;9002226.02101,"1876,58118-0178-07 ",.01)
 ;;58118-0178-07
 ;;9002226.02101,"1876,58118-0178-07 ",.02)
 ;;58118-0178-07
 ;;9002226.02101,"1876,58118-0178-09 ",.01)
 ;;58118-0178-09
 ;;9002226.02101,"1876,58118-0178-09 ",.02)
 ;;58118-0178-09
 ;;9002226.02101,"1876,58118-0321-03 ",.01)
 ;;58118-0321-03
 ;;9002226.02101,"1876,58118-0321-03 ",.02)
 ;;58118-0321-03
 ;;9002226.02101,"1876,58118-0321-06 ",.01)
 ;;58118-0321-06
 ;;9002226.02101,"1876,58118-0321-06 ",.02)
 ;;58118-0321-06
 ;;9002226.02101,"1876,58118-0322-03 ",.01)
 ;;58118-0322-03
