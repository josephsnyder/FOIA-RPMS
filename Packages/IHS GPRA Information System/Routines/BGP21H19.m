BGP21H19 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,00088-1798-42 ",.01)
 ;;00088-1798-42
 ;;9002226.02101,"1197,00088-1798-42 ",.02)
 ;;00088-1798-42
 ;;9002226.02101,"1197,00088-1798-49 ",.01)
 ;;00088-1798-49
 ;;9002226.02101,"1197,00088-1798-49 ",.02)
 ;;00088-1798-49
 ;;9002226.02101,"1197,00088-1799-42 ",.01)
 ;;00088-1799-42
 ;;9002226.02101,"1197,00088-1799-42 ",.02)
 ;;00088-1799-42
 ;;9002226.02101,"1197,00091-2489-23 ",.01)
 ;;00091-2489-23
 ;;9002226.02101,"1197,00091-2489-23 ",.02)
 ;;00091-2489-23
 ;;9002226.02101,"1197,00091-2490-23 ",.01)
 ;;00091-2490-23
 ;;9002226.02101,"1197,00091-2490-23 ",.02)
 ;;00091-2490-23
 ;;9002226.02101,"1197,00091-2491-23 ",.01)
 ;;00091-2491-23
 ;;9002226.02101,"1197,00091-2491-23 ",.02)
 ;;00091-2491-23
 ;;9002226.02101,"1197,00091-2495-23 ",.01)
 ;;00091-2495-23
 ;;9002226.02101,"1197,00091-2495-23 ",.02)
 ;;00091-2495-23
 ;;9002226.02101,"1197,00091-4085-01 ",.01)
 ;;00091-4085-01
 ;;9002226.02101,"1197,00091-4085-01 ",.02)
 ;;00091-4085-01
 ;;9002226.02101,"1197,00091-4086-01 ",.01)
 ;;00091-4086-01
 ;;9002226.02101,"1197,00091-4086-01 ",.02)
 ;;00091-4086-01
 ;;9002226.02101,"1197,00091-4087-01 ",.01)
 ;;00091-4087-01
 ;;9002226.02101,"1197,00091-4087-01 ",.02)
 ;;00091-4087-01
 ;;9002226.02101,"1197,00093-0022-01 ",.01)
 ;;00093-0022-01
 ;;9002226.02101,"1197,00093-0022-01 ",.02)
 ;;00093-0022-01
 ;;9002226.02101,"1197,00093-0023-01 ",.01)
 ;;00093-0023-01
 ;;9002226.02101,"1197,00093-0023-01 ",.02)
 ;;00093-0023-01
 ;;9002226.02101,"1197,00093-0083-98 ",.01)
 ;;00093-0083-98
 ;;9002226.02101,"1197,00093-0083-98 ",.02)
 ;;00093-0083-98
 ;;9002226.02101,"1197,00093-0318-01 ",.01)
 ;;00093-0318-01
 ;;9002226.02101,"1197,00093-0318-01 ",.02)
 ;;00093-0318-01
 ;;9002226.02101,"1197,00093-0318-05 ",.01)
 ;;00093-0318-05
 ;;9002226.02101,"1197,00093-0318-05 ",.02)
 ;;00093-0318-05
 ;;9002226.02101,"1197,00093-0319-01 ",.01)
 ;;00093-0319-01
 ;;9002226.02101,"1197,00093-0319-01 ",.02)
 ;;00093-0319-01
 ;;9002226.02101,"1197,00093-0319-05 ",.01)
 ;;00093-0319-05
 ;;9002226.02101,"1197,00093-0319-05 ",.02)
 ;;00093-0319-05
 ;;9002226.02101,"1197,00093-0320-01 ",.01)
 ;;00093-0320-01
 ;;9002226.02101,"1197,00093-0320-01 ",.02)
 ;;00093-0320-01
 ;;9002226.02101,"1197,00093-0321-01 ",.01)
 ;;00093-0321-01
 ;;9002226.02101,"1197,00093-0321-01 ",.02)
 ;;00093-0321-01
 ;;9002226.02101,"1197,00093-0793-01 ",.01)
 ;;00093-0793-01
 ;;9002226.02101,"1197,00093-0793-01 ",.02)
 ;;00093-0793-01
 ;;9002226.02101,"1197,00093-0793-05 ",.01)
 ;;00093-0793-05
 ;;9002226.02101,"1197,00093-0793-05 ",.02)
 ;;00093-0793-05
 ;;9002226.02101,"1197,00093-0794-01 ",.01)
 ;;00093-0794-01
 ;;9002226.02101,"1197,00093-0794-01 ",.02)
 ;;00093-0794-01
 ;;9002226.02101,"1197,00093-0819-01 ",.01)
 ;;00093-0819-01
 ;;9002226.02101,"1197,00093-0819-01 ",.02)
 ;;00093-0819-01
 ;;9002226.02101,"1197,00093-0819-55 ",.01)
 ;;00093-0819-55
 ;;9002226.02101,"1197,00093-0819-55 ",.02)
 ;;00093-0819-55
 ;;9002226.02101,"1197,00093-0822-01 ",.01)
 ;;00093-0822-01
 ;;9002226.02101,"1197,00093-0822-01 ",.02)
 ;;00093-0822-01
 ;;9002226.02101,"1197,00093-1021-01 ",.01)
 ;;00093-1021-01
 ;;9002226.02101,"1197,00093-1021-01 ",.02)
 ;;00093-1021-01
 ;;9002226.02101,"1197,00093-1022-01 ",.01)
 ;;00093-1022-01
 ;;9002226.02101,"1197,00093-1022-01 ",.02)
 ;;00093-1022-01
 ;;9002226.02101,"1197,00093-1022-19 ",.01)
 ;;00093-1022-19
 ;;9002226.02101,"1197,00093-1022-19 ",.02)
 ;;00093-1022-19
 ;;9002226.02101,"1197,00093-1022-55 ",.01)
 ;;00093-1022-55
 ;;9002226.02101,"1197,00093-1022-55 ",.02)
 ;;00093-1022-55
 ;;9002226.02101,"1197,00093-1022-93 ",.01)
 ;;00093-1022-93
 ;;9002226.02101,"1197,00093-1022-93 ",.02)
 ;;00093-1022-93
 ;;9002226.02101,"1197,00093-1023-01 ",.01)
 ;;00093-1023-01
 ;;9002226.02101,"1197,00093-1023-01 ",.02)
 ;;00093-1023-01
 ;;9002226.02101,"1197,00093-1023-19 ",.01)
 ;;00093-1023-19
 ;;9002226.02101,"1197,00093-1023-19 ",.02)
 ;;00093-1023-19
 ;;9002226.02101,"1197,00093-1023-93 ",.01)
 ;;00093-1023-93
 ;;9002226.02101,"1197,00093-1023-93 ",.02)
 ;;00093-1023-93
 ;;9002226.02101,"1197,00093-5112-98 ",.01)
 ;;00093-5112-98
 ;;9002226.02101,"1197,00093-5112-98 ",.02)
 ;;00093-5112-98
 ;;9002226.02101,"1197,00093-5117-98 ",.01)
 ;;00093-5117-98
 ;;9002226.02101,"1197,00093-5117-98 ",.02)
 ;;00093-5117-98
 ;;9002226.02101,"1197,00093-5118-98 ",.01)
 ;;00093-5118-98
 ;;9002226.02101,"1197,00093-5118-98 ",.02)
 ;;00093-5118-98
 ;;9002226.02101,"1197,00093-5119-98 ",.01)
 ;;00093-5119-98
 ;;9002226.02101,"1197,00093-5119-98 ",.02)
 ;;00093-5119-98
 ;;9002226.02101,"1197,00093-5151-01 ",.01)
 ;;00093-5151-01
 ;;9002226.02101,"1197,00093-5151-01 ",.02)
 ;;00093-5151-01
 ;;9002226.02101,"1197,00093-5152-01 ",.01)
 ;;00093-5152-01
 ;;9002226.02101,"1197,00093-5152-01 ",.02)
 ;;00093-5152-01
 ;;9002226.02101,"1197,00093-5153-01 ",.01)
 ;;00093-5153-01
 ;;9002226.02101,"1197,00093-5153-01 ",.02)
 ;;00093-5153-01
 ;;9002226.02101,"1197,00093-5173-01 ",.01)
 ;;00093-5173-01
 ;;9002226.02101,"1197,00093-5173-01 ",.02)
 ;;00093-5173-01
 ;;9002226.02101,"1197,00093-5173-55 ",.01)
 ;;00093-5173-55
 ;;9002226.02101,"1197,00093-5173-55 ",.02)
 ;;00093-5173-55
 ;;9002226.02101,"1197,00093-5272-01 ",.01)
 ;;00093-5272-01
