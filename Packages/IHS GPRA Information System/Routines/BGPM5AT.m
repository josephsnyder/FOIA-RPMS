BGPM5AT ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 24, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1011,11014070224 ",.01)
 ;;11014070224
 ;;9002226.02101,"1011,11014070224 ",.02)
 ;;11014070224
 ;;9002226.02101,"1011,11014070236 ",.01)
 ;;11014070236
 ;;9002226.02101,"1011,11014070236 ",.02)
 ;;11014070236
 ;;9002226.02101,"1011,11014070330 ",.01)
 ;;11014070330
 ;;9002226.02101,"1011,11014070330 ",.02)
 ;;11014070330
 ;;9002226.02101,"1011,11014071025 ",.01)
 ;;11014071025
 ;;9002226.02101,"1011,11014071025 ",.02)
 ;;11014071025
 ;;9002226.02101,"1011,11014071030 ",.01)
 ;;11014071030
 ;;9002226.02101,"1011,11014071030 ",.02)
 ;;11014071030
 ;;9002226.02101,"1011,11014071060 ",.01)
 ;;11014071060
 ;;9002226.02101,"1011,11014071060 ",.02)
 ;;11014071060
 ;;9002226.02101,"1011,11014074312 ",.01)
 ;;11014074312
 ;;9002226.02101,"1011,11014074312 ",.02)
 ;;11014074312
 ;;9002226.02101,"1011,11014074360 ",.01)
 ;;11014074360
 ;;9002226.02101,"1011,11014074360 ",.02)
 ;;11014074360
 ;;9002226.02101,"1011,11517316901 ",.01)
 ;;11517316901
 ;;9002226.02101,"1011,11517316901 ",.02)
 ;;11517316901
 ;;9002226.02101,"1011,11517316902 ",.01)
 ;;11517316902
 ;;9002226.02101,"1011,11517316902 ",.02)
 ;;11517316902
 ;;9002226.02101,"1011,11517316909 ",.01)
 ;;11517316909
 ;;9002226.02101,"1011,11517316909 ",.02)
 ;;11517316909
 ;;9002226.02101,"1011,11517386901 ",.01)
 ;;11517386901
 ;;9002226.02101,"1011,11517386901 ",.02)
 ;;11517386901
 ;;9002226.02101,"1011,11517386902 ",.01)
 ;;11517386902
 ;;9002226.02101,"1011,11517386902 ",.02)
 ;;11517386902
 ;;9002226.02101,"1011,11822527801 ",.01)
 ;;11822527801
 ;;9002226.02101,"1011,11822527801 ",.02)
 ;;11822527801
 ;;9002226.02101,"1011,12280004290 ",.01)
 ;;12280004290
 ;;9002226.02101,"1011,12280004290 ",.02)
 ;;12280004290
 ;;9002226.02101,"1011,12525067501 ",.01)
 ;;12525067501
 ;;9002226.02101,"1011,12525067501 ",.02)
 ;;12525067501
 ;;9002226.02101,"1011,12525067502 ",.01)
 ;;12525067502
 ;;9002226.02101,"1011,12525067502 ",.02)
 ;;12525067502
 ;;9002226.02101,"1011,12525067599 ",.01)
 ;;12525067599
 ;;9002226.02101,"1011,12525067599 ",.02)
 ;;12525067599
 ;;9002226.02101,"1011,12634082471 ",.01)
 ;;12634082471
 ;;9002226.02101,"1011,12634082471 ",.02)
 ;;12634082471
 ;;9002226.02101,"1011,13411015101 ",.01)
 ;;13411015101
 ;;9002226.02101,"1011,13411015101 ",.02)
 ;;13411015101
 ;;9002226.02101,"1011,13411015103 ",.01)
 ;;13411015103
 ;;9002226.02101,"1011,13411015103 ",.02)
 ;;13411015103
 ;;9002226.02101,"1011,13411015106 ",.01)
 ;;13411015106
 ;;9002226.02101,"1011,13411015106 ",.02)
 ;;13411015106
 ;;9002226.02101,"1011,13411015109 ",.01)
 ;;13411015109
 ;;9002226.02101,"1011,13411015109 ",.02)
 ;;13411015109
 ;;9002226.02101,"1011,13411015115 ",.01)
 ;;13411015115
 ;;9002226.02101,"1011,13411015115 ",.02)
 ;;13411015115
 ;;9002226.02101,"1011,13411016001 ",.01)
 ;;13411016001
 ;;9002226.02101,"1011,13411016001 ",.02)
 ;;13411016001
 ;;9002226.02101,"1011,13411016003 ",.01)
 ;;13411016003
 ;;9002226.02101,"1011,13411016003 ",.02)
 ;;13411016003
 ;;9002226.02101,"1011,13411016006 ",.01)
 ;;13411016006
 ;;9002226.02101,"1011,13411016006 ",.02)
 ;;13411016006
 ;;9002226.02101,"1011,13411016009 ",.01)
 ;;13411016009
 ;;9002226.02101,"1011,13411016009 ",.02)
 ;;13411016009
 ;;9002226.02101,"1011,13411016015 ",.01)
 ;;13411016015
 ;;9002226.02101,"1011,13411016015 ",.02)
 ;;13411016015
 ;;9002226.02101,"1011,13411027702 ",.01)
 ;;13411027702
 ;;9002226.02101,"1011,13411027702 ",.02)
 ;;13411027702
 ;;9002226.02101,"1011,16252009722 ",.01)
 ;;16252009722
 ;;9002226.02101,"1011,16252009722 ",.02)
 ;;16252009722
 ;;9002226.02101,"1011,16252009733 ",.01)
 ;;16252009733
 ;;9002226.02101,"1011,16252009733 ",.02)
 ;;16252009733
 ;;9002226.02101,"1011,16252009766 ",.01)
 ;;16252009766
 ;;9002226.02101,"1011,16252009766 ",.02)
 ;;16252009766
 ;;9002226.02101,"1011,16571001101 ",.01)
 ;;16571001101
 ;;9002226.02101,"1011,16571001101 ",.02)
 ;;16571001101
 ;;9002226.02101,"1011,16571001110 ",.01)
 ;;16571001110
 ;;9002226.02101,"1011,16571001110 ",.02)
 ;;16571001110
 ;;9002226.02101,"1011,16590033908 ",.01)
 ;;16590033908
 ;;9002226.02101,"1011,16590033908 ",.02)
 ;;16590033908
 ;;9002226.02101,"1011,17088003001 ",.01)
 ;;17088003001
 ;;9002226.02101,"1011,17088003001 ",.02)
 ;;17088003001
 ;;9002226.02101,"1011,17270072101 ",.01)
 ;;17270072101
 ;;9002226.02101,"1011,17270072101 ",.02)
 ;;17270072101
 ;;9002226.02101,"1011,17270072102 ",.01)
 ;;17270072102
 ;;9002226.02101,"1011,17270072102 ",.02)
 ;;17270072102
 ;;9002226.02101,"1011,21695015324 ",.01)
 ;;21695015324
 ;;9002226.02101,"1011,21695015324 ",.02)
 ;;21695015324
 ;;9002226.02101,"1011,21695019601 ",.01)
 ;;21695019601
 ;;9002226.02101,"1011,21695019601 ",.02)
 ;;21695019601
 ;;9002226.02101,"1011,21695019701 ",.01)
 ;;21695019701
 ;;9002226.02101,"1011,21695019701 ",.02)
 ;;21695019701
 ;;9002226.02101,"1011,21695019801 ",.01)
 ;;21695019801
 ;;9002226.02101,"1011,21695019801 ",.02)
 ;;21695019801
 ;;9002226.02101,"1011,21695022130 ",.01)
 ;;21695022130
 ;;9002226.02101,"1011,21695022130 ",.02)
 ;;21695022130
 ;;9002226.02101,"1011,21695024520 ",.01)
 ;;21695024520
 ;;9002226.02101,"1011,21695024520 ",.02)
 ;;21695024520
 ;;9002226.02101,"1011,21695033225 ",.01)
 ;;21695033225
 ;;9002226.02101,"1011,21695033225 ",.02)
 ;;21695033225
 ;;9002226.02101,"1011,21695036160 ",.01)
 ;;21695036160
 ;;9002226.02101,"1011,21695036160 ",.02)
 ;;21695036160
 ;;9002226.02101,"1011,21695042308 ",.01)
 ;;21695042308
 ;;9002226.02101,"1011,21695042308 ",.02)
 ;;21695042308
 ;;9002226.02101,"1011,21695056530 ",.01)
 ;;21695056530
 ;;9002226.02101,"1011,21695056530 ",.02)
 ;;21695056530
 ;;9002226.02101,"1011,23490502001 ",.01)
 ;;23490502001
 ;;9002226.02101,"1011,23490502001 ",.02)
 ;;23490502001
 ;;9002226.02101,"1011,23490502002 ",.01)
 ;;23490502002
 ;;9002226.02101,"1011,23490502002 ",.02)
 ;;23490502002
 ;;9002226.02101,"1011,23490502003 ",.01)
 ;;23490502003
 ;;9002226.02101,"1011,23490502003 ",.02)
 ;;23490502003
 ;;9002226.02101,"1011,23490502102 ",.01)
 ;;23490502102
 ;;9002226.02101,"1011,23490502102 ",.02)
 ;;23490502102
 ;;9002226.02101,"1011,23490735501 ",.01)
 ;;23490735501
 ;;9002226.02101,"1011,23490735501 ",.02)
 ;;23490735501
 ;;9002226.02101,"1011,23490754201 ",.01)
 ;;23490754201
 ;;9002226.02101,"1011,23490754201 ",.02)
 ;;23490754201
 ;;9002226.02101,"1011,24208034720 ",.01)
 ;;24208034720
 ;;9002226.02101,"1011,24208034720 ",.02)
 ;;24208034720
 ;;9002226.02101,"1011,24208037360 ",.01)
 ;;24208037360
 ;;9002226.02101,"1011,24208037360 ",.02)
 ;;24208037360
 ;;9002226.02101,"1011,24208037362 ",.01)
 ;;24208037362
 ;;9002226.02101,"1011,24208037362 ",.02)
 ;;24208037362
 ;;9002226.02101,"1011,24208037425 ",.01)
 ;;24208037425
 ;;9002226.02101,"1011,24208037425 ",.02)
 ;;24208037425
 ;;9002226.02101,"1011,24208037460 ",.01)
 ;;24208037460
 ;;9002226.02101,"1011,24208037460 ",.02)
 ;;24208037460
 ;;9002226.02101,"1011,24236043302 ",.01)
 ;;24236043302
 ;;9002226.02101,"1011,24236043302 ",.02)
 ;;24236043302
 ;;9002226.02101,"1011,24236068502 ",.01)
 ;;24236068502
 ;;9002226.02101,"1011,24236068502 ",.02)
 ;;24236068502
 ;;9002226.02101,"1011,24236086002 ",.01)
 ;;24236086002
 ;;9002226.02101,"1011,24236086002 ",.02)
 ;;24236086002
 ;;9002226.02101,"1011,26053036601 ",.01)
 ;;26053036601
 ;;9002226.02101,"1011,26053036601 ",.02)
 ;;26053036601
 ;;9002226.02101,"1011,29033000101 ",.01)
 ;;29033000101
 ;;9002226.02101,"1011,29033000101 ",.02)
 ;;29033000101
 ;;9002226.02101,"1011,29033000105 ",.01)
 ;;29033000105
 ;;9002226.02101,"1011,29033000105 ",.02)
 ;;29033000105
 ;;9002226.02101,"1011,35356009914 ",.01)
 ;;35356009914
 ;;9002226.02101,"1011,35356009914 ",.02)
 ;;35356009914
 ;;9002226.02101,"1011,35356015701 ",.01)
 ;;35356015701
 ;;9002226.02101,"1011,35356015701 ",.02)
 ;;35356015701
 ;;9002226.02101,"1011,35356016601 ",.01)
 ;;35356016601
 ;;9002226.02101,"1011,35356016601 ",.02)
 ;;35356016601
 ;;9002226.02101,"1011,35356048903 ",.01)
 ;;35356048903
 ;;9002226.02101,"1011,35356048903 ",.02)
 ;;35356048903
 ;;9002226.02101,"1011,35356049401 ",.01)
 ;;35356049401
 ;;9002226.02101,"1011,35356049401 ",.02)
 ;;35356049401
 ;;9002226.02101,"1011,44100025101 ",.01)
 ;;44100025101
 ;;9002226.02101,"1011,44100025101 ",.02)
 ;;44100025101
 ;;9002226.02101,"1011,44100025201 ",.01)
 ;;44100025201
 ;;9002226.02101,"1011,44100025201 ",.02)
 ;;44100025201
 ;;9002226.02101,"1011,44514090336 ",.01)
 ;;44514090336
 ;;9002226.02101,"1011,44514090336 ",.02)
 ;;44514090336
 ;;9002226.02101,"1011,44514090436 ",.01)
 ;;44514090436
 ;;9002226.02101,"1011,44514090436 ",.02)
 ;;44514090436
 ;;9002226.02101,"1011,48692000404 ",.01)
 ;;48692000404
 ;;9002226.02101,"1011,48692000404 ",.02)
 ;;48692000404
 ;;9002226.02101,"1011,48692000480 ",.01)
 ;;48692000480
 ;;9002226.02101,"1011,48692000480 ",.02)
 ;;48692000480
 ;;9002226.02101,"1011,48879075221 ",.01)
 ;;48879075221
 ;;9002226.02101,"1011,48879075221 ",.02)
 ;;48879075221
 ;;9002226.02101,"1011,48879075260 ",.01)
 ;;48879075260
 ;;9002226.02101,"1011,48879075260 ",.02)
 ;;48879075260
 ;;9002226.02101,"1011,48879083123 ",.01)
 ;;48879083123
 ;;9002226.02101,"1011,48879083123 ",.02)
 ;;48879083123
 ;;9002226.02101,"1011,48879083130 ",.01)
 ;;48879083130
 ;;9002226.02101,"1011,48879083130 ",.02)
 ;;48879083130
 ;;9002226.02101,"1011,48879083160 ",.01)
 ;;48879083160
 ;;9002226.02101,"1011,48879083160 ",.02)
 ;;48879083160
 ;;9002226.02101,"1011,49502010501 ",.01)
 ;;49502010501
 ;;9002226.02101,"1011,49502010501 ",.02)
 ;;49502010501
 ;;9002226.02101,"1011,49502030317 ",.01)
 ;;49502030317
 ;;9002226.02101,"1011,49502030317 ",.02)
 ;;49502030317
 ;;9002226.02101,"1011,49502030327 ",.01)
 ;;49502030327
 ;;9002226.02101,"1011,49502030327 ",.02)
 ;;49502030327
 ;;9002226.02101,"1011,49502068900 ",.01)
 ;;49502068900
 ;;9002226.02101,"1011,49502068900 ",.02)
 ;;49502068900
 ;;9002226.02101,"1011,49502068902 ",.01)
 ;;49502068902
 ;;9002226.02101,"1011,49502068902 ",.02)
 ;;49502068902
 ;;9002226.02101,"1011,49502068912 ",.01)
 ;;49502068912
 ;;9002226.02101,"1011,49502068912 ",.02)
 ;;49502068912
 ;;9002226.02101,"1011,49502068961 ",.01)
 ;;49502068961
 ;;9002226.02101,"1011,49502068961 ",.02)
 ;;49502068961
 ;;9002226.02101,"1011,49502068985 ",.01)
 ;;49502068985
 ;;9002226.02101,"1011,49502068985 ",.02)
 ;;49502068985
 ;;9002226.02101,"1011,49502069203 ",.01)
 ;;49502069203
 ;;9002226.02101,"1011,49502069203 ",.02)
 ;;49502069203
 ;;9002226.02101,"1011,49502069303 ",.01)
 ;;49502069303
 ;;9002226.02101,"1011,49502069303 ",.02)
 ;;49502069303
 ;;9002226.02101,"1011,49502069700 ",.01)
 ;;49502069700
 ;;9002226.02101,"1011,49502069700 ",.02)
 ;;49502069700
 ;;9002226.02101,"1011,49502069703 ",.01)
 ;;49502069703
 ;;9002226.02101,"1011,49502069703 ",.02)
 ;;49502069703
 ;;9002226.02101,"1011,49502069705 ",.01)
 ;;49502069705
 ;;9002226.02101,"1011,49502069705 ",.02)
 ;;49502069705
 ;;9002226.02101,"1011,49502069724 ",.01)
 ;;49502069724
 ;;9002226.02101,"1011,49502069724 ",.02)
 ;;49502069724
 ;;9002226.02101,"1011,49502069729 ",.01)
 ;;49502069729
 ;;9002226.02101,"1011,49502069729 ",.02)
 ;;49502069729
 ;;9002226.02101,"1011,49502069730 ",.01)
 ;;49502069730
 ;;9002226.02101,"1011,49502069730 ",.02)
 ;;49502069730
 ;;9002226.02101,"1011,49502069733 ",.01)
 ;;49502069733
 ;;9002226.02101,"1011,49502069733 ",.02)
 ;;49502069733
 ;;9002226.02101,"1011,49502069760 ",.01)
 ;;49502069760
 ;;9002226.02101,"1011,49502069760 ",.02)
 ;;49502069760
 ;;9002226.02101,"1011,49502069761 ",.01)
 ;;49502069761
