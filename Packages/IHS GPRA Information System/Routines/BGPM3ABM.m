BGPM3ABM ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"775,50111092858 ",.01)
 ;;50111092858
 ;;9002226.02101,"775,50111092858 ",.02)
 ;;50111092858
 ;;9002226.02101,"775,50111092901 ",.01)
 ;;50111092901
 ;;9002226.02101,"775,50111092901 ",.02)
 ;;50111092901
 ;;9002226.02101,"775,50111092903 ",.01)
 ;;50111092903
 ;;9002226.02101,"775,50111092903 ",.02)
 ;;50111092903
 ;;9002226.02101,"775,50111092910 ",.01)
 ;;50111092910
 ;;9002226.02101,"775,50111092910 ",.02)
 ;;50111092910
 ;;9002226.02101,"775,50111092958 ",.01)
 ;;50111092958
 ;;9002226.02101,"775,50111092958 ",.02)
 ;;50111092958
 ;;9002226.02101,"775,50428126148 ",.01)
 ;;50428126148
 ;;9002226.02101,"775,50428126148 ",.02)
 ;;50428126148
 ;;9002226.02101,"775,50428140897 ",.01)
 ;;50428140897
 ;;9002226.02101,"775,50428140897 ",.02)
 ;;50428140897
 ;;9002226.02101,"775,50428152314 ",.01)
 ;;50428152314
 ;;9002226.02101,"775,50428152314 ",.02)
 ;;50428152314
 ;;9002226.02101,"775,50428218859 ",.01)
 ;;50428218859
 ;;9002226.02101,"775,50428218859 ",.02)
 ;;50428218859
 ;;9002226.02101,"775,50428230268 ",.01)
 ;;50428230268
 ;;9002226.02101,"775,50428230268 ",.02)
 ;;50428230268
 ;;9002226.02101,"775,50428271255 ",.01)
 ;;50428271255
 ;;9002226.02101,"775,50428271255 ",.02)
 ;;50428271255
 ;;9002226.02101,"775,50428458871 ",.01)
 ;;50428458871
 ;;9002226.02101,"775,50428458871 ",.02)
 ;;50428458871
 ;;9002226.02101,"775,51079000519 ",.01)
 ;;51079000519
 ;;9002226.02101,"775,51079000519 ",.02)
 ;;51079000519
 ;;9002226.02101,"775,51079000520 ",.01)
 ;;51079000520
 ;;9002226.02101,"775,51079000520 ",.02)
 ;;51079000520
 ;;9002226.02101,"775,51079000522 ",.01)
 ;;51079000522
 ;;9002226.02101,"775,51079000522 ",.02)
 ;;51079000522
 ;;9002226.02101,"775,51079000525 ",.01)
 ;;51079000525
 ;;9002226.02101,"775,51079000525 ",.02)
 ;;51079000525
 ;;9002226.02101,"775,51079000540 ",.01)
 ;;51079000540
 ;;9002226.02101,"775,51079000540 ",.02)
 ;;51079000540
 ;;9002226.02101,"775,51079000560 ",.01)
 ;;51079000560
 ;;9002226.02101,"775,51079000560 ",.02)
 ;;51079000560
 ;;9002226.02101,"775,51079001819 ",.01)
 ;;51079001819
 ;;9002226.02101,"775,51079001819 ",.02)
 ;;51079001819
 ;;9002226.02101,"775,51079002120 ",.01)
 ;;51079002120
 ;;9002226.02101,"775,51079002120 ",.02)
 ;;51079002120
 ;;9002226.02101,"775,51079002122 ",.01)
 ;;51079002122
 ;;9002226.02101,"775,51079002122 ",.02)
 ;;51079002122
 ;;9002226.02101,"775,51079018420 ",.01)
 ;;51079018420
 ;;9002226.02101,"775,51079018420 ",.02)
 ;;51079018420
 ;;9002226.02101,"775,51079048371 ",.01)
 ;;51079048371
 ;;9002226.02101,"775,51079048371 ",.02)
 ;;51079048371
 ;;9002226.02101,"775,51079054971 ",.01)
 ;;51079054971
 ;;9002226.02101,"775,51079054971 ",.02)
 ;;51079054971
 ;;9002226.02101,"775,51079054972 ",.01)
 ;;51079054972
 ;;9002226.02101,"775,51079054972 ",.02)
 ;;51079054972
 ;;9002226.02101,"775,51079055171 ",.01)
 ;;51079055171
 ;;9002226.02101,"775,51079055171 ",.02)
 ;;51079055171
 ;;9002226.02101,"775,51079055172 ",.01)
 ;;51079055172
 ;;9002226.02101,"775,51079055172 ",.02)
 ;;51079055172
 ;;9002226.02101,"775,51079065920 ",.01)
 ;;51079065920
 ;;9002226.02101,"775,51079065920 ",.02)
 ;;51079065920
 ;;9002226.02101,"775,51079084519 ",.01)
 ;;51079084519
 ;;9002226.02101,"775,51079084519 ",.02)
 ;;51079084519
 ;;9002226.02101,"775,51079090820 ",.01)
 ;;51079090820
 ;;9002226.02101,"775,51079090820 ",.02)
 ;;51079090820
 ;;9002226.02101,"775,51079090920 ",.01)
 ;;51079090920
 ;;9002226.02101,"775,51079090920 ",.02)
 ;;51079090920
 ;;9002226.02101,"775,51079091020 ",.01)
 ;;51079091020
 ;;9002226.02101,"775,51079091020 ",.02)
 ;;51079091020
 ;;9002226.02101,"775,51079091320 ",.01)
 ;;51079091320
 ;;9002226.02101,"775,51079091320 ",.02)
 ;;51079091320
 ;;9002226.02101,"775,51079091520 ",.01)
 ;;51079091520
 ;;9002226.02101,"775,51079091520 ",.02)
 ;;51079091520
 ;;9002226.02101,"775,51079092019 ",.01)
 ;;51079092019
 ;;9002226.02101,"775,51079092019 ",.02)
 ;;51079092019
 ;;9002226.02101,"775,51079092020 ",.01)
 ;;51079092020
 ;;9002226.02101,"775,51079092020 ",.02)
 ;;51079092020
 ;;9002226.02101,"775,51129181201 ",.01)
 ;;51129181201
 ;;9002226.02101,"775,51129181201 ",.02)
 ;;51129181201
 ;;9002226.02101,"775,51129201801 ",.01)
 ;;51129201801
 ;;9002226.02101,"775,51129201801 ",.02)
 ;;51129201801
 ;;9002226.02101,"775,51129247001 ",.01)
 ;;51129247001
 ;;9002226.02101,"775,51129247001 ",.02)
 ;;51129247001
 ;;9002226.02101,"775,51129254801 ",.01)
 ;;51129254801
 ;;9002226.02101,"775,51129254801 ",.02)
 ;;51129254801
 ;;9002226.02101,"775,51129257101 ",.01)
 ;;51129257101
 ;;9002226.02101,"775,51129257101 ",.02)
 ;;51129257101
 ;;9002226.02101,"775,51129267801 ",.01)
 ;;51129267801
 ;;9002226.02101,"775,51129267801 ",.02)
 ;;51129267801
 ;;9002226.02101,"775,51129276101 ",.01)
 ;;51129276101
 ;;9002226.02101,"775,51129276101 ",.02)
 ;;51129276101
 ;;9002226.02101,"775,51129282501 ",.01)
 ;;51129282501
 ;;9002226.02101,"775,51129282501 ",.02)
 ;;51129282501
 ;;9002226.02101,"775,51129282502 ",.01)
 ;;51129282502
 ;;9002226.02101,"775,51129282502 ",.02)
 ;;51129282502
 ;;9002226.02101,"775,51129284001 ",.01)
 ;;51129284001
 ;;9002226.02101,"775,51129284001 ",.02)
 ;;51129284001
 ;;9002226.02101,"775,51129285101 ",.01)
 ;;51129285101
 ;;9002226.02101,"775,51129285101 ",.02)
 ;;51129285101
 ;;9002226.02101,"775,51129285102 ",.01)
 ;;51129285102
 ;;9002226.02101,"775,51129285102 ",.02)
 ;;51129285102
 ;;9002226.02101,"775,51129292001 ",.01)
 ;;51129292001
 ;;9002226.02101,"775,51129292001 ",.02)
 ;;51129292001
 ;;9002226.02101,"775,51129294501 ",.01)
 ;;51129294501
 ;;9002226.02101,"775,51129294501 ",.02)
 ;;51129294501
 ;;9002226.02101,"775,51129294502 ",.01)
 ;;51129294502
 ;;9002226.02101,"775,51129294502 ",.02)
 ;;51129294502
 ;;9002226.02101,"775,51129294601 ",.01)
 ;;51129294601
 ;;9002226.02101,"775,51129294601 ",.02)
 ;;51129294601
 ;;9002226.02101,"775,51129294602 ",.01)
 ;;51129294602
 ;;9002226.02101,"775,51129294602 ",.02)
 ;;51129294602
 ;;9002226.02101,"775,51129302601 ",.01)
 ;;51129302601
 ;;9002226.02101,"775,51129302601 ",.02)
 ;;51129302601
 ;;9002226.02101,"775,51129302602 ",.01)
 ;;51129302602
 ;;9002226.02101,"775,51129302602 ",.02)
 ;;51129302602
 ;;9002226.02101,"775,51129323301 ",.01)
 ;;51129323301
 ;;9002226.02101,"775,51129323301 ",.02)
 ;;51129323301
 ;;9002226.02101,"775,51129323302 ",.01)
 ;;51129323302
 ;;9002226.02101,"775,51129323302 ",.02)
 ;;51129323302
 ;;9002226.02101,"775,51129324801 ",.01)
 ;;51129324801
 ;;9002226.02101,"775,51129324801 ",.02)
 ;;51129324801
 ;;9002226.02101,"775,51129324802 ",.01)
 ;;51129324802
 ;;9002226.02101,"775,51129324802 ",.02)
 ;;51129324802
 ;;9002226.02101,"775,51129382601 ",.01)
 ;;51129382601
 ;;9002226.02101,"775,51129382601 ",.02)
 ;;51129382601
 ;;9002226.02101,"775,51129382602 ",.01)
 ;;51129382602
 ;;9002226.02101,"775,51129382602 ",.02)
 ;;51129382602
 ;;9002226.02101,"775,51129382701 ",.01)
 ;;51129382701
 ;;9002226.02101,"775,51129382701 ",.02)
 ;;51129382701
 ;;9002226.02101,"775,51129382702 ",.01)
 ;;51129382702
 ;;9002226.02101,"775,51129382702 ",.02)
 ;;51129382702
 ;;9002226.02101,"775,51129382901 ",.01)
 ;;51129382901
 ;;9002226.02101,"775,51129382901 ",.02)
 ;;51129382901
 ;;9002226.02101,"775,51129382902 ",.01)
 ;;51129382902
 ;;9002226.02101,"775,51129382902 ",.02)
 ;;51129382902
 ;;9002226.02101,"775,51129385901 ",.01)
 ;;51129385901
 ;;9002226.02101,"775,51129385901 ",.02)
 ;;51129385901
 ;;9002226.02101,"775,51129385902 ",.01)
 ;;51129385902
 ;;9002226.02101,"775,51129385902 ",.02)
 ;;51129385902
 ;;9002226.02101,"775,51129395401 ",.01)
 ;;51129395401
 ;;9002226.02101,"775,51129395401 ",.02)
 ;;51129395401
 ;;9002226.02101,"775,51129395402 ",.01)
 ;;51129395402
 ;;9002226.02101,"775,51129395402 ",.02)
 ;;51129395402
 ;;9002226.02101,"775,51129396801 ",.01)
 ;;51129396801
 ;;9002226.02101,"775,51129396801 ",.02)
 ;;51129396801
 ;;9002226.02101,"775,51129396802 ",.01)
 ;;51129396802
 ;;9002226.02101,"775,51129396802 ",.02)
 ;;51129396802
 ;;9002226.02101,"775,51129396901 ",.01)
 ;;51129396901
 ;;9002226.02101,"775,51129396901 ",.02)
 ;;51129396901
 ;;9002226.02101,"775,51129396902 ",.01)
 ;;51129396902
 ;;9002226.02101,"775,51129396902 ",.02)
 ;;51129396902
 ;;9002226.02101,"775,51285080602 ",.01)
 ;;51285080602
 ;;9002226.02101,"775,51285080602 ",.02)
 ;;51285080602
 ;;9002226.02101,"775,51301055101 ",.01)
 ;;51301055101
 ;;9002226.02101,"775,51301055101 ",.02)
 ;;51301055101
 ;;9002226.02101,"775,51301055112 ",.01)
 ;;51301055112
 ;;9002226.02101,"775,51301055112 ",.02)
 ;;51301055112
 ;;9002226.02101,"775,51301055201 ",.01)
 ;;51301055201
 ;;9002226.02101,"775,51301055201 ",.02)
 ;;51301055201
 ;;9002226.02101,"775,51301055212 ",.01)
 ;;51301055212
 ;;9002226.02101,"775,51301055212 ",.02)
 ;;51301055212
 ;;9002226.02101,"775,51301055250 ",.01)
 ;;51301055250
 ;;9002226.02101,"775,51301055250 ",.02)
 ;;51301055250
 ;;9002226.02101,"775,51301055301 ",.01)
 ;;51301055301
 ;;9002226.02101,"775,51301055301 ",.02)
 ;;51301055301
 ;;9002226.02101,"775,51301055312 ",.01)
 ;;51301055312
 ;;9002226.02101,"775,51301055312 ",.02)
 ;;51301055312
 ;;9002226.02101,"775,51301055350 ",.01)
 ;;51301055350
 ;;9002226.02101,"775,51301055350 ",.02)
 ;;51301055350
 ;;9002226.02101,"775,51432003306 ",.01)
 ;;51432003306
 ;;9002226.02101,"775,51432003306 ",.02)
 ;;51432003306
 ;;9002226.02101,"775,51432090003 ",.01)
 ;;51432090003
 ;;9002226.02101,"775,51432090003 ",.02)
 ;;51432090003
 ;;9002226.02101,"775,51432090103 ",.01)
 ;;51432090103
 ;;9002226.02101,"775,51432090103 ",.02)
 ;;51432090103
 ;;9002226.02101,"775,51432090203 ",.01)
 ;;51432090203
 ;;9002226.02101,"775,51432090203 ",.02)
 ;;51432090203
 ;;9002226.02101,"775,51432090303 ",.01)
 ;;51432090303
 ;;9002226.02101,"775,51432090303 ",.02)
 ;;51432090303
 ;;9002226.02101,"775,51432090403 ",.01)
 ;;51432090403
 ;;9002226.02101,"775,51432090403 ",.02)
 ;;51432090403
 ;;9002226.02101,"775,51432110810 ",.01)
 ;;51432110810
 ;;9002226.02101,"775,51432110810 ",.02)
 ;;51432110810
 ;;9002226.02101,"775,51432111010 ",.01)
 ;;51432111010
 ;;9002226.02101,"775,51432111010 ",.02)
 ;;51432111010
 ;;9002226.02101,"775,51432111210 ",.01)
 ;;51432111210
 ;;9002226.02101,"775,51432111210 ",.02)
 ;;51432111210
 ;;9002226.02101,"775,51432111410 ",.01)
 ;;51432111410
 ;;9002226.02101,"775,51432111410 ",.02)
 ;;51432111410
 ;;9002226.02101,"775,51469030501 ",.01)
 ;;51469030501
 ;;9002226.02101,"775,51469030501 ",.02)
 ;;51469030501
 ;;9002226.02101,"775,51655025124 ",.01)
 ;;51655025124
 ;;9002226.02101,"775,51655025124 ",.02)
 ;;51655025124
 ;;9002226.02101,"775,51655025152 ",.01)
 ;;51655025152
 ;;9002226.02101,"775,51655025152 ",.02)
 ;;51655025152
 ;;9002226.02101,"775,51655025153 ",.01)
 ;;51655025153
 ;;9002226.02101,"775,51655025153 ",.02)
 ;;51655025153
 ;;9002226.02101,"775,51655078324 ",.01)
 ;;51655078324
 ;;9002226.02101,"775,51655078324 ",.02)
 ;;51655078324
 ;;9002226.02101,"775,51655078352 ",.01)
 ;;51655078352
 ;;9002226.02101,"775,51655078352 ",.02)
 ;;51655078352
 ;;9002226.02101,"775,51655078353 ",.01)
 ;;51655078353
 ;;9002226.02101,"775,51655078353 ",.02)
 ;;51655078353
 ;;9002226.02101,"775,51655078399 ",.01)
 ;;51655078399
 ;;9002226.02101,"775,51655078399 ",.02)
 ;;51655078399
 ;;9002226.02101,"775,51660001701 ",.01)
 ;;51660001701
 ;;9002226.02101,"775,51660001701 ",.02)
 ;;51660001701
 ;;9002226.02101,"775,51660001705 ",.01)
 ;;51660001705
 ;;9002226.02101,"775,51660001705 ",.02)
 ;;51660001705
