BGPM5AWM ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,63629275502 ",.02)
 ;;63629275502
 ;;9002226.02101,"1033,63629275901 ",.01)
 ;;63629275901
 ;;9002226.02101,"1033,63629275901 ",.02)
 ;;63629275901
 ;;9002226.02101,"1033,63629275902 ",.01)
 ;;63629275902
 ;;9002226.02101,"1033,63629275902 ",.02)
 ;;63629275902
 ;;9002226.02101,"1033,63629275903 ",.01)
 ;;63629275903
 ;;9002226.02101,"1033,63629275903 ",.02)
 ;;63629275903
 ;;9002226.02101,"1033,63629275904 ",.01)
 ;;63629275904
 ;;9002226.02101,"1033,63629275904 ",.02)
 ;;63629275904
 ;;9002226.02101,"1033,63629275905 ",.01)
 ;;63629275905
 ;;9002226.02101,"1033,63629275905 ",.02)
 ;;63629275905
 ;;9002226.02101,"1033,63629279601 ",.01)
 ;;63629279601
 ;;9002226.02101,"1033,63629279601 ",.02)
 ;;63629279601
 ;;9002226.02101,"1033,63629279602 ",.01)
 ;;63629279602
 ;;9002226.02101,"1033,63629279602 ",.02)
 ;;63629279602
 ;;9002226.02101,"1033,63629281700 ",.01)
 ;;63629281700
 ;;9002226.02101,"1033,63629281700 ",.02)
 ;;63629281700
 ;;9002226.02101,"1033,63629281701 ",.01)
 ;;63629281701
 ;;9002226.02101,"1033,63629281701 ",.02)
 ;;63629281701
 ;;9002226.02101,"1033,63629281702 ",.01)
 ;;63629281702
 ;;9002226.02101,"1033,63629281702 ",.02)
 ;;63629281702
 ;;9002226.02101,"1033,63629281703 ",.01)
 ;;63629281703
 ;;9002226.02101,"1033,63629281703 ",.02)
 ;;63629281703
 ;;9002226.02101,"1033,63629281704 ",.01)
 ;;63629281704
 ;;9002226.02101,"1033,63629281704 ",.02)
 ;;63629281704
 ;;9002226.02101,"1033,63629281705 ",.01)
 ;;63629281705
 ;;9002226.02101,"1033,63629281705 ",.02)
 ;;63629281705
 ;;9002226.02101,"1033,63629281706 ",.01)
 ;;63629281706
 ;;9002226.02101,"1033,63629281706 ",.02)
 ;;63629281706
 ;;9002226.02101,"1033,63629281707 ",.01)
 ;;63629281707
 ;;9002226.02101,"1033,63629281707 ",.02)
 ;;63629281707
 ;;9002226.02101,"1033,63629281708 ",.01)
 ;;63629281708
 ;;9002226.02101,"1033,63629281708 ",.02)
 ;;63629281708
 ;;9002226.02101,"1033,63629281709 ",.01)
 ;;63629281709
 ;;9002226.02101,"1033,63629281709 ",.02)
 ;;63629281709
 ;;9002226.02101,"1033,63629287101 ",.01)
 ;;63629287101
 ;;9002226.02101,"1033,63629287101 ",.02)
 ;;63629287101
 ;;9002226.02101,"1033,63629288701 ",.01)
 ;;63629288701
 ;;9002226.02101,"1033,63629288701 ",.02)
 ;;63629288701
 ;;9002226.02101,"1033,63629288702 ",.01)
 ;;63629288702
 ;;9002226.02101,"1033,63629288702 ",.02)
 ;;63629288702
 ;;9002226.02101,"1033,63629288703 ",.01)
 ;;63629288703
 ;;9002226.02101,"1033,63629288703 ",.02)
 ;;63629288703
 ;;9002226.02101,"1033,63629288704 ",.01)
 ;;63629288704
 ;;9002226.02101,"1033,63629288704 ",.02)
 ;;63629288704
 ;;9002226.02101,"1033,63629289501 ",.01)
 ;;63629289501
 ;;9002226.02101,"1033,63629289501 ",.02)
 ;;63629289501
 ;;9002226.02101,"1033,63629289502 ",.01)
 ;;63629289502
 ;;9002226.02101,"1033,63629289502 ",.02)
 ;;63629289502
 ;;9002226.02101,"1033,63629292401 ",.01)
 ;;63629292401
 ;;9002226.02101,"1033,63629292401 ",.02)
 ;;63629292401
 ;;9002226.02101,"1033,63629292402 ",.01)
 ;;63629292402
 ;;9002226.02101,"1033,63629292402 ",.02)
 ;;63629292402
 ;;9002226.02101,"1033,63629292403 ",.01)
 ;;63629292403
 ;;9002226.02101,"1033,63629292403 ",.02)
 ;;63629292403
 ;;9002226.02101,"1033,63629292404 ",.01)
 ;;63629292404
 ;;9002226.02101,"1033,63629292404 ",.02)
 ;;63629292404
 ;;9002226.02101,"1033,63629292405 ",.01)
 ;;63629292405
 ;;9002226.02101,"1033,63629292405 ",.02)
 ;;63629292405
 ;;9002226.02101,"1033,63629292406 ",.01)
 ;;63629292406
 ;;9002226.02101,"1033,63629292406 ",.02)
 ;;63629292406
 ;;9002226.02101,"1033,63629292407 ",.01)
 ;;63629292407
 ;;9002226.02101,"1033,63629292407 ",.02)
 ;;63629292407
 ;;9002226.02101,"1033,63629293801 ",.01)
 ;;63629293801
 ;;9002226.02101,"1033,63629293801 ",.02)
 ;;63629293801
 ;;9002226.02101,"1033,63629305701 ",.01)
 ;;63629305701
 ;;9002226.02101,"1033,63629305701 ",.02)
 ;;63629305701
 ;;9002226.02101,"1033,63629356201 ",.01)
 ;;63629356201
 ;;9002226.02101,"1033,63629356201 ",.02)
 ;;63629356201
 ;;9002226.02101,"1033,63629356202 ",.01)
 ;;63629356202
 ;;9002226.02101,"1033,63629356202 ",.02)
 ;;63629356202
 ;;9002226.02101,"1033,63629367101 ",.01)
 ;;63629367101
 ;;9002226.02101,"1033,63629367101 ",.02)
 ;;63629367101
 ;;9002226.02101,"1033,63629367102 ",.01)
 ;;63629367102
 ;;9002226.02101,"1033,63629367102 ",.02)
 ;;63629367102
 ;;9002226.02101,"1033,63629367103 ",.01)
 ;;63629367103
 ;;9002226.02101,"1033,63629367103 ",.02)
 ;;63629367103
 ;;9002226.02101,"1033,63629367104 ",.01)
 ;;63629367104
 ;;9002226.02101,"1033,63629367104 ",.02)
 ;;63629367104
 ;;9002226.02101,"1033,63629367105 ",.01)
 ;;63629367105
 ;;9002226.02101,"1033,63629367105 ",.02)
 ;;63629367105
 ;;9002226.02101,"1033,63629386801 ",.01)
 ;;63629386801
 ;;9002226.02101,"1033,63629386801 ",.02)
 ;;63629386801
 ;;9002226.02101,"1033,63629386802 ",.01)
 ;;63629386802
 ;;9002226.02101,"1033,63629386802 ",.02)
 ;;63629386802
 ;;9002226.02101,"1033,63629386803 ",.01)
 ;;63629386803
 ;;9002226.02101,"1033,63629386803 ",.02)
 ;;63629386803
 ;;9002226.02101,"1033,63629386804 ",.01)
 ;;63629386804
 ;;9002226.02101,"1033,63629386804 ",.02)
 ;;63629386804
 ;;9002226.02101,"1033,63629386805 ",.01)
 ;;63629386805
 ;;9002226.02101,"1033,63629386805 ",.02)
 ;;63629386805
 ;;9002226.02101,"1033,63739005910 ",.01)
 ;;63739005910
 ;;9002226.02101,"1033,63739005910 ",.02)
 ;;63739005910
 ;;9002226.02101,"1033,63739022810 ",.01)
 ;;63739022810
 ;;9002226.02101,"1033,63739022810 ",.02)
 ;;63739022810
 ;;9002226.02101,"1033,63739040010 ",.01)
 ;;63739040010
 ;;9002226.02101,"1033,63739040010 ",.02)
 ;;63739040010
 ;;9002226.02101,"1033,63739042710 ",.01)
 ;;63739042710
 ;;9002226.02101,"1033,63739042710 ",.02)
 ;;63739042710
 ;;9002226.02101,"1033,63739049142 ",.01)
 ;;63739049142
 ;;9002226.02101,"1033,63739049142 ",.02)
 ;;63739049142
 ;;9002226.02101,"1033,63874010101 ",.01)
 ;;63874010101
 ;;9002226.02101,"1033,63874010101 ",.02)
 ;;63874010101
 ;;9002226.02101,"1033,63874010103 ",.01)
 ;;63874010103
 ;;9002226.02101,"1033,63874010103 ",.02)
 ;;63874010103
 ;;9002226.02101,"1033,63874010105 ",.01)
 ;;63874010105
 ;;9002226.02101,"1033,63874010105 ",.02)
 ;;63874010105
 ;;9002226.02101,"1033,63874010109 ",.01)
 ;;63874010109
 ;;9002226.02101,"1033,63874010109 ",.02)
 ;;63874010109
 ;;9002226.02101,"1033,63874010115 ",.01)
 ;;63874010115
 ;;9002226.02101,"1033,63874010115 ",.02)
 ;;63874010115
 ;;9002226.02101,"1033,63874010118 ",.01)
 ;;63874010118
 ;;9002226.02101,"1033,63874010118 ",.02)
 ;;63874010118
 ;;9002226.02101,"1033,63874010120 ",.01)
 ;;63874010120
 ;;9002226.02101,"1033,63874010120 ",.02)
 ;;63874010120
 ;;9002226.02101,"1033,63874010121 ",.01)
 ;;63874010121
 ;;9002226.02101,"1033,63874010121 ",.02)
 ;;63874010121
 ;;9002226.02101,"1033,63874010124 ",.01)
 ;;63874010124
 ;;9002226.02101,"1033,63874010124 ",.02)
 ;;63874010124
 ;;9002226.02101,"1033,63874010128 ",.01)
 ;;63874010128
 ;;9002226.02101,"1033,63874010128 ",.02)
 ;;63874010128
 ;;9002226.02101,"1033,63874010130 ",.01)
 ;;63874010130
 ;;9002226.02101,"1033,63874010130 ",.02)
 ;;63874010130
 ;;9002226.02101,"1033,63874010140 ",.01)
 ;;63874010140
 ;;9002226.02101,"1033,63874010140 ",.02)
 ;;63874010140
 ;;9002226.02101,"1033,63874010145 ",.01)
 ;;63874010145
 ;;9002226.02101,"1033,63874010145 ",.02)
 ;;63874010145
 ;;9002226.02101,"1033,63874010150 ",.01)
 ;;63874010150
 ;;9002226.02101,"1033,63874010150 ",.02)
 ;;63874010150
 ;;9002226.02101,"1033,63874010201 ",.01)
 ;;63874010201
 ;;9002226.02101,"1033,63874010201 ",.02)
 ;;63874010201
 ;;9002226.02101,"1033,63874010203 ",.01)
 ;;63874010203
 ;;9002226.02101,"1033,63874010203 ",.02)
 ;;63874010203
 ;;9002226.02101,"1033,63874010204 ",.01)
 ;;63874010204
 ;;9002226.02101,"1033,63874010204 ",.02)
 ;;63874010204
 ;;9002226.02101,"1033,63874010205 ",.01)
 ;;63874010205
 ;;9002226.02101,"1033,63874010205 ",.02)
 ;;63874010205
 ;;9002226.02101,"1033,63874010209 ",.01)
 ;;63874010209
 ;;9002226.02101,"1033,63874010209 ",.02)
 ;;63874010209
 ;;9002226.02101,"1033,63874010210 ",.01)
 ;;63874010210
 ;;9002226.02101,"1033,63874010210 ",.02)
 ;;63874010210
 ;;9002226.02101,"1033,63874010212 ",.01)
 ;;63874010212
 ;;9002226.02101,"1033,63874010212 ",.02)
 ;;63874010212
 ;;9002226.02101,"1033,63874010214 ",.01)
 ;;63874010214
 ;;9002226.02101,"1033,63874010214 ",.02)
 ;;63874010214
 ;;9002226.02101,"1033,63874010215 ",.01)
 ;;63874010215
 ;;9002226.02101,"1033,63874010215 ",.02)
 ;;63874010215
 ;;9002226.02101,"1033,63874010218 ",.01)
 ;;63874010218
 ;;9002226.02101,"1033,63874010218 ",.02)
 ;;63874010218
 ;;9002226.02101,"1033,63874010220 ",.01)
 ;;63874010220
 ;;9002226.02101,"1033,63874010220 ",.02)
 ;;63874010220
 ;;9002226.02101,"1033,63874010221 ",.01)
 ;;63874010221
 ;;9002226.02101,"1033,63874010221 ",.02)
 ;;63874010221
 ;;9002226.02101,"1033,63874010224 ",.01)
 ;;63874010224
 ;;9002226.02101,"1033,63874010224 ",.02)
 ;;63874010224
 ;;9002226.02101,"1033,63874010228 ",.01)
 ;;63874010228
 ;;9002226.02101,"1033,63874010228 ",.02)
 ;;63874010228
 ;;9002226.02101,"1033,63874010230 ",.01)
 ;;63874010230
 ;;9002226.02101,"1033,63874010230 ",.02)
 ;;63874010230
 ;;9002226.02101,"1033,63874010240 ",.01)
 ;;63874010240
 ;;9002226.02101,"1033,63874010240 ",.02)
 ;;63874010240
 ;;9002226.02101,"1033,63874010245 ",.01)
 ;;63874010245
 ;;9002226.02101,"1033,63874010245 ",.02)
 ;;63874010245
 ;;9002226.02101,"1033,63874010250 ",.01)
 ;;63874010250
 ;;9002226.02101,"1033,63874010250 ",.02)
 ;;63874010250
 ;;9002226.02101,"1033,63874010801 ",.01)
 ;;63874010801
 ;;9002226.02101,"1033,63874010801 ",.02)
 ;;63874010801
 ;;9002226.02101,"1033,63874010810 ",.01)
 ;;63874010810
 ;;9002226.02101,"1033,63874010810 ",.02)
 ;;63874010810
 ;;9002226.02101,"1033,63874010812 ",.01)
 ;;63874010812
 ;;9002226.02101,"1033,63874010812 ",.02)
 ;;63874010812
 ;;9002226.02101,"1033,63874010814 ",.01)
 ;;63874010814
 ;;9002226.02101,"1033,63874010814 ",.02)
 ;;63874010814
 ;;9002226.02101,"1033,63874010815 ",.01)
 ;;63874010815
 ;;9002226.02101,"1033,63874010815 ",.02)
 ;;63874010815
 ;;9002226.02101,"1033,63874010818 ",.01)
 ;;63874010818
 ;;9002226.02101,"1033,63874010818 ",.02)
 ;;63874010818
 ;;9002226.02101,"1033,63874010820 ",.01)
 ;;63874010820
 ;;9002226.02101,"1033,63874010820 ",.02)
 ;;63874010820
 ;;9002226.02101,"1033,63874010824 ",.01)
 ;;63874010824
 ;;9002226.02101,"1033,63874010824 ",.02)
 ;;63874010824
 ;;9002226.02101,"1033,63874010828 ",.01)
 ;;63874010828
 ;;9002226.02101,"1033,63874010828 ",.02)
 ;;63874010828
 ;;9002226.02101,"1033,63874010830 ",.01)
 ;;63874010830
 ;;9002226.02101,"1033,63874010830 ",.02)
 ;;63874010830
 ;;9002226.02101,"1033,63874010840 ",.01)
 ;;63874010840
 ;;9002226.02101,"1033,63874010840 ",.02)
 ;;63874010840
 ;;9002226.02101,"1033,63874010860 ",.01)
 ;;63874010860
 ;;9002226.02101,"1033,63874010860 ",.02)
 ;;63874010860
 ;;9002226.02101,"1033,63874010903 ",.01)
 ;;63874010903
 ;;9002226.02101,"1033,63874010903 ",.02)
 ;;63874010903
 ;;9002226.02101,"1033,63874010910 ",.01)
 ;;63874010910
 ;;9002226.02101,"1033,63874010910 ",.02)
 ;;63874010910
 ;;9002226.02101,"1033,63874010912 ",.01)
 ;;63874010912
 ;;9002226.02101,"1033,63874010912 ",.02)
 ;;63874010912
 ;;9002226.02101,"1033,63874010914 ",.01)
 ;;63874010914
 ;;9002226.02101,"1033,63874010914 ",.02)
 ;;63874010914
 ;;9002226.02101,"1033,63874010915 ",.01)
 ;;63874010915
 ;;9002226.02101,"1033,63874010915 ",.02)
 ;;63874010915
 ;;9002226.02101,"1033,63874010916 ",.01)
 ;;63874010916
 ;;9002226.02101,"1033,63874010916 ",.02)
 ;;63874010916
