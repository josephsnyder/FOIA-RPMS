BGPM3AEL ;IHS/MSC/SAT-CREATED BY ^ATXSTX ON APR 21, 2011;
 ;;11.0;IHS CLINICAL REPORTING;**4**;JAN 06, 2011;Build 84
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"799,00074628703 ",.02)
 ;;00074628703
 ;;9002226.02101,"799,00074629202 ",.01)
 ;;00074629202
 ;;9002226.02101,"799,00074629202 ",.02)
 ;;00074629202
 ;;9002226.02101,"799,00074629302 ",.01)
 ;;00074629302
 ;;9002226.02101,"799,00074629302 ",.02)
 ;;00074629302
 ;;9002226.02101,"799,00074629303 ",.01)
 ;;00074629303
 ;;9002226.02101,"799,00074629303 ",.02)
 ;;00074629303
 ;;9002226.02101,"799,00074765002 ",.01)
 ;;00074765002
 ;;9002226.02101,"799,00074765002 ",.02)
 ;;00074765002
 ;;9002226.02101,"799,00074765062 ",.01)
 ;;00074765062
 ;;9002226.02101,"799,00074765062 ",.02)
 ;;00074765062
 ;;9002226.02101,"799,00074765102 ",.01)
 ;;00074765102
 ;;9002226.02101,"799,00074765102 ",.02)
 ;;00074765102
 ;;9002226.02101,"799,00074765103 ",.01)
 ;;00074765103
 ;;9002226.02101,"799,00074765103 ",.02)
 ;;00074765103
 ;;9002226.02101,"799,00074765162 ",.01)
 ;;00074765162
 ;;9002226.02101,"799,00074765162 ",.02)
 ;;00074765162
 ;;9002226.02101,"799,00074776003 ",.01)
 ;;00074776003
 ;;9002226.02101,"799,00074776003 ",.02)
 ;;00074776003
 ;;9002226.02101,"799,00074776103 ",.01)
 ;;00074776103
 ;;9002226.02101,"799,00074776103 ",.02)
 ;;00074776103
 ;;9002226.02101,"799,00074776130 ",.01)
 ;;00074776130
 ;;9002226.02101,"799,00074776130 ",.02)
 ;;00074776130
 ;;9002226.02101,"799,00074779224 ",.01)
 ;;00074779224
 ;;9002226.02101,"799,00074779224 ",.02)
 ;;00074779224
 ;;9002226.02101,"799,00074779312 ",.01)
 ;;00074779312
 ;;9002226.02101,"799,00074779312 ",.02)
 ;;00074779312
 ;;9002226.02101,"799,00074779323 ",.01)
 ;;00074779323
 ;;9002226.02101,"799,00074779323 ",.02)
 ;;00074779323
 ;;9002226.02101,"799,00074779361 ",.01)
 ;;00074779361
 ;;9002226.02101,"799,00074779361 ",.02)
 ;;00074779361
 ;;9002226.02101,"799,00074779362 ",.01)
 ;;00074779362
 ;;9002226.02101,"799,00074779362 ",.02)
 ;;00074779362
 ;;9002226.02101,"799,00074779412 ",.01)
 ;;00074779412
 ;;9002226.02101,"799,00074779412 ",.02)
 ;;00074779412
 ;;9002226.02101,"799,00074779423 ",.01)
 ;;00074779423
 ;;9002226.02101,"799,00074779423 ",.02)
 ;;00074779423
 ;;9002226.02101,"799,00074779462 ",.01)
 ;;00074779462
 ;;9002226.02101,"799,00074779462 ",.02)
 ;;00074779462
 ;;9002226.02101,"799,00089041001 ",.01)
 ;;00089041001
 ;;9002226.02101,"799,00089041001 ",.02)
 ;;00089041001
 ;;9002226.02101,"799,00089042501 ",.01)
 ;;00089042501
 ;;9002226.02101,"799,00089042501 ",.02)
 ;;00089042501
 ;;9002226.02101,"799,00209422014 ",.01)
 ;;00209422014
 ;;9002226.02101,"799,00209422014 ",.02)
 ;;00209422014
 ;;9002226.02101,"799,00223780101 ",.01)
 ;;00223780101
 ;;9002226.02101,"799,00223780101 ",.02)
 ;;00223780101
 ;;9002226.02101,"799,00223780801 ",.01)
 ;;00223780801
 ;;9002226.02101,"799,00223780801 ",.02)
 ;;00223780801
 ;;9002226.02101,"799,00223781010 ",.01)
 ;;00223781010
 ;;9002226.02101,"799,00223781010 ",.02)
 ;;00223781010
 ;;9002226.02101,"799,00223781801 ",.01)
 ;;00223781801
 ;;9002226.02101,"799,00223781801 ",.02)
 ;;00223781801
 ;;9002226.02101,"799,00223782010 ",.01)
 ;;00223782010
 ;;9002226.02101,"799,00223782010 ",.02)
 ;;00223782010
 ;;9002226.02101,"799,00223782801 ",.01)
 ;;00223782801
 ;;9002226.02101,"799,00223782801 ",.02)
 ;;00223782801
 ;;9002226.02101,"799,00223783004 ",.01)
 ;;00223783004
 ;;9002226.02101,"799,00223783004 ",.02)
 ;;00223783004
 ;;9002226.02101,"799,00223783105 ",.01)
 ;;00223783105
 ;;9002226.02101,"799,00223783105 ",.02)
 ;;00223783105
 ;;9002226.02101,"799,00223783210 ",.01)
 ;;00223783210
 ;;9002226.02101,"799,00223783210 ",.02)
 ;;00223783210
 ;;9002226.02101,"799,00223784001 ",.01)
 ;;00223784001
 ;;9002226.02101,"799,00223784001 ",.02)
 ;;00223784001
 ;;9002226.02101,"799,00223784005 ",.01)
 ;;00223784005
 ;;9002226.02101,"799,00223784005 ",.02)
 ;;00223784005
 ;;9002226.02101,"799,00223784310 ",.01)
 ;;00223784310
 ;;9002226.02101,"799,00223784310 ",.02)
 ;;00223784310
 ;;9002226.02101,"799,00223784430 ",.01)
 ;;00223784430
 ;;9002226.02101,"799,00223784430 ",.02)
 ;;00223784430
 ;;9002226.02101,"799,00223784525 ",.01)
 ;;00223784525
 ;;9002226.02101,"799,00223784525 ",.02)
 ;;00223784525
 ;;9002226.02101,"799,00223784601 ",.01)
 ;;00223784601
 ;;9002226.02101,"799,00223784601 ",.02)
 ;;00223784601
 ;;9002226.02101,"799,00223786501 ",.01)
 ;;00223786501
 ;;9002226.02101,"799,00223786501 ",.02)
 ;;00223786501
 ;;9002226.02101,"799,00223786702 ",.01)
 ;;00223786702
 ;;9002226.02101,"799,00223786702 ",.02)
 ;;00223786702
 ;;9002226.02101,"799,00247119530 ",.01)
 ;;00247119530
 ;;9002226.02101,"799,00247119530 ",.02)
 ;;00247119530
 ;;9002226.02101,"799,00247119550 ",.01)
 ;;00247119550
 ;;9002226.02101,"799,00247119550 ",.02)
 ;;00247119550
 ;;9002226.02101,"799,00257012501 ",.01)
 ;;00257012501
 ;;9002226.02101,"799,00257012501 ",.02)
 ;;00257012501
 ;;9002226.02101,"799,00257012601 ",.01)
 ;;00257012601
 ;;9002226.02101,"799,00257012601 ",.02)
 ;;00257012601
 ;;9002226.02101,"799,00257016701 ",.01)
 ;;00257016701
 ;;9002226.02101,"799,00257016701 ",.02)
 ;;00257016701
 ;;9002226.02101,"799,00264557710 ",.01)
 ;;00264557710
 ;;9002226.02101,"799,00264557710 ",.02)
 ;;00264557710
 ;;9002226.02101,"799,00264887710 ",.01)
 ;;00264887710
 ;;9002226.02101,"799,00264887710 ",.02)
 ;;00264887710
 ;;9002226.02101,"799,00264956710 ",.01)
 ;;00264956710
 ;;9002226.02101,"799,00264956710 ",.02)
 ;;00264956710
 ;;9002226.02101,"799,00264957710 ",.01)
 ;;00264957710
 ;;9002226.02101,"799,00264957710 ",.02)
 ;;00264957710
 ;;9002226.02101,"799,00264958720 ",.01)
 ;;00264958720
 ;;9002226.02101,"799,00264958720 ",.02)
 ;;00264958720
 ;;9002226.02101,"799,00298690861 ",.01)
 ;;00298690861
 ;;9002226.02101,"799,00298690861 ",.02)
 ;;00298690861
 ;;9002226.02101,"799,00338044903 ",.01)
 ;;00338044903
 ;;9002226.02101,"799,00338044903 ",.02)
 ;;00338044903
 ;;9002226.02101,"799,00338045003 ",.01)
 ;;00338045003
 ;;9002226.02101,"799,00338045003 ",.02)
 ;;00338045003
 ;;9002226.02101,"799,00338045102 ",.01)
 ;;00338045102
 ;;9002226.02101,"799,00338045102 ",.02)
 ;;00338045102
 ;;9002226.02101,"799,00338054903 ",.01)
 ;;00338054903
 ;;9002226.02101,"799,00338054903 ",.02)
 ;;00338054903
 ;;9002226.02101,"799,00338055002 ",.01)
 ;;00338055002
 ;;9002226.02101,"799,00338055002 ",.02)
 ;;00338055002
 ;;9002226.02101,"799,00338055003 ",.01)
 ;;00338055003
 ;;9002226.02101,"799,00338055003 ",.02)
 ;;00338055003
 ;;9002226.02101,"799,00364236446 ",.01)
 ;;00364236446
 ;;9002226.02101,"799,00364236446 ",.02)
 ;;00364236446
 ;;9002226.02101,"799,00364236448 ",.01)
 ;;00364236448
 ;;9002226.02101,"799,00364236448 ",.02)
 ;;00364236448
 ;;9002226.02101,"799,00364236453 ",.01)
 ;;00364236453
 ;;9002226.02101,"799,00364236453 ",.02)
 ;;00364236453
 ;;9002226.02101,"799,00364653854 ",.01)
 ;;00364653854
 ;;9002226.02101,"799,00364653854 ",.02)
 ;;00364653854
 ;;9002226.02101,"799,00364653934 ",.01)
 ;;00364653934
 ;;9002226.02101,"799,00364653934 ",.02)
 ;;00364653934
 ;;9002226.02101,"799,00364653949 ",.01)
 ;;00364653949
 ;;9002226.02101,"799,00364653949 ",.02)
 ;;00364653949
 ;;9002226.02101,"799,00364653953 ",.01)
 ;;00364653953
 ;;9002226.02101,"799,00364653953 ",.02)
 ;;00364653953
 ;;9002226.02101,"799,00364653954 ",.01)
 ;;00364653954
 ;;9002226.02101,"799,00364653954 ",.02)
 ;;00364653954
 ;;9002226.02101,"799,00364654046 ",.01)
 ;;00364654046
 ;;9002226.02101,"799,00364654046 ",.02)
 ;;00364654046
 ;;9002226.02101,"799,00364654048 ",.01)
 ;;00364654048
 ;;9002226.02101,"799,00364654048 ",.02)
 ;;00364654048
 ;;9002226.02101,"799,00364654053 ",.01)
 ;;00364654053
 ;;9002226.02101,"799,00364654053 ",.02)
 ;;00364654053
 ;;9002226.02101,"799,00364666934 ",.01)
 ;;00364666934
 ;;9002226.02101,"799,00364666934 ",.02)
 ;;00364666934
 ;;9002226.02101,"799,00364666954 ",.01)
 ;;00364666954
 ;;9002226.02101,"799,00364666954 ",.02)
 ;;00364666954
 ;;9002226.02101,"799,00364666956 ",.01)
 ;;00364666956
 ;;9002226.02101,"799,00364666956 ",.02)
 ;;00364666956
 ;;9002226.02101,"799,00381004901 ",.01)
 ;;00381004901
 ;;9002226.02101,"799,00381004901 ",.02)
 ;;00381004901
 ;;9002226.02101,"799,00381004904 ",.01)
 ;;00381004904
 ;;9002226.02101,"799,00381004904 ",.02)
 ;;00381004904
 ;;9002226.02101,"799,00381004905 ",.01)
 ;;00381004905
 ;;9002226.02101,"799,00381004905 ",.02)
 ;;00381004905
 ;;9002226.02101,"799,00381004910 ",.01)
 ;;00381004910
 ;;9002226.02101,"799,00381004910 ",.02)
 ;;00381004910
 ;;9002226.02101,"799,00381005001 ",.01)
 ;;00381005001
 ;;9002226.02101,"799,00381005001 ",.02)
 ;;00381005001
 ;;9002226.02101,"799,00381005002 ",.01)
 ;;00381005002
 ;;9002226.02101,"799,00381005002 ",.02)
 ;;00381005002
 ;;9002226.02101,"799,00381005004 ",.01)
 ;;00381005004
 ;;9002226.02101,"799,00381005004 ",.02)
 ;;00381005004
 ;;9002226.02101,"799,00381005005 ",.01)
 ;;00381005005
 ;;9002226.02101,"799,00381005005 ",.02)
 ;;00381005005
 ;;9002226.02101,"799,00381005010 ",.01)
 ;;00381005010
 ;;9002226.02101,"799,00381005010 ",.02)
 ;;00381005010
 ;;9002226.02101,"799,00381018401 ",.01)
 ;;00381018401
 ;;9002226.02101,"799,00381018401 ",.02)
 ;;00381018401
 ;;9002226.02101,"799,00381040301 ",.01)
 ;;00381040301
 ;;9002226.02101,"799,00381040301 ",.02)
 ;;00381040301
 ;;9002226.02101,"799,00381041802 ",.01)
 ;;00381041802
 ;;9002226.02101,"799,00381041802 ",.02)
 ;;00381041802
 ;;9002226.02101,"799,00381041810 ",.01)
 ;;00381041810
 ;;9002226.02101,"799,00381041810 ",.02)
 ;;00381041810
 ;;9002226.02101,"799,00381046301 ",.01)
 ;;00381046301
 ;;9002226.02101,"799,00381046301 ",.02)
 ;;00381046301
 ;;9002226.02101,"799,00381046305 ",.01)
 ;;00381046305
 ;;9002226.02101,"799,00381046305 ",.02)
 ;;00381046305
 ;;9002226.02101,"799,00381046310 ",.01)
 ;;00381046310
 ;;9002226.02101,"799,00381046310 ",.02)
 ;;00381046310
 ;;9002226.02101,"799,00381051901 ",.01)
 ;;00381051901
 ;;9002226.02101,"799,00381051901 ",.02)
 ;;00381051901
 ;;9002226.02101,"799,00381051902 ",.01)
 ;;00381051902
 ;;9002226.02101,"799,00381051902 ",.02)
 ;;00381051902
 ;;9002226.02101,"799,00381051904 ",.01)
 ;;00381051904
 ;;9002226.02101,"799,00381051904 ",.02)
 ;;00381051904
 ;;9002226.02101,"799,00381051910 ",.01)
 ;;00381051910
 ;;9002226.02101,"799,00381051910 ",.02)
 ;;00381051910
 ;;9002226.02101,"799,00402004910 ",.01)
 ;;00402004910
 ;;9002226.02101,"799,00402004910 ",.02)
 ;;00402004910
 ;;9002226.02101,"799,00402005005 ",.01)
 ;;00402005005
 ;;9002226.02101,"799,00402005005 ",.02)
 ;;00402005005
 ;;9002226.02101,"799,00402041810 ",.01)
 ;;00402041810
 ;;9002226.02101,"799,00402041810 ",.02)
 ;;00402041810
 ;;9002226.02101,"799,00402046310 ",.01)
 ;;00402046310
 ;;9002226.02101,"799,00402046310 ",.02)
 ;;00402046310
 ;;9002226.02101,"799,00402051905 ",.01)
 ;;00402051905
 ;;9002226.02101,"799,00402051905 ",.02)
 ;;00402051905
 ;;9002226.02101,"799,00409115212 ",.01)
 ;;00409115212
 ;;9002226.02101,"799,00409115212 ",.02)
 ;;00409115212
 ;;9002226.02101,"799,00409115214 ",.01)
 ;;00409115214
 ;;9002226.02101,"799,00409115214 ",.02)
 ;;00409115214
 ;;9002226.02101,"799,00409115270 ",.01)
 ;;00409115270
 ;;9002226.02101,"799,00409115270 ",.02)
 ;;00409115270
 ;;9002226.02101,"799,00409115278 ",.01)
 ;;00409115278
 ;;9002226.02101,"799,00409115278 ",.02)
 ;;00409115278
 ;;9002226.02101,"799,00409131625 ",.01)
 ;;00409131625
 ;;9002226.02101,"799,00409131625 ",.02)
 ;;00409131625
 ;;9002226.02101,"799,00409131632 ",.01)
 ;;00409131632
 ;;9002226.02101,"799,00409131632 ",.02)
 ;;00409131632
 ;;9002226.02101,"799,00409131666 ",.01)
 ;;00409131666
