BGPM5AWZ ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 29, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1033,67253022010 ",.02)
 ;;67253022010
 ;;9002226.02101,"1033,67253022110 ",.01)
 ;;67253022110
 ;;9002226.02101,"1033,67253022110 ",.02)
 ;;67253022110
 ;;9002226.02101,"1033,67253022215 ",.01)
 ;;67253022215
 ;;9002226.02101,"1033,67253022215 ",.02)
 ;;67253022215
 ;;9002226.02101,"1033,67253022275 ",.01)
 ;;67253022275
 ;;9002226.02101,"1033,67253022275 ",.02)
 ;;67253022275
 ;;9002226.02101,"1033,67253022305 ",.01)
 ;;67253022305
 ;;9002226.02101,"1033,67253022305 ",.02)
 ;;67253022305
 ;;9002226.02101,"1033,67253022310 ",.01)
 ;;67253022310
 ;;9002226.02101,"1033,67253022310 ",.02)
 ;;67253022310
 ;;9002226.02101,"1033,67253022415 ",.01)
 ;;67253022415
 ;;9002226.02101,"1033,67253022415 ",.02)
 ;;67253022415
 ;;9002226.02101,"1033,67253022475 ",.01)
 ;;67253022475
 ;;9002226.02101,"1033,67253022475 ",.02)
 ;;67253022475
 ;;9002226.02101,"1033,67253022505 ",.01)
 ;;67253022505
 ;;9002226.02101,"1033,67253022505 ",.02)
 ;;67253022505
 ;;9002226.02101,"1033,67253022510 ",.01)
 ;;67253022510
 ;;9002226.02101,"1033,67253022510 ",.02)
 ;;67253022510
 ;;9002226.02101,"1033,67253030010 ",.01)
 ;;67253030010
 ;;9002226.02101,"1033,67253030010 ",.02)
 ;;67253030010
 ;;9002226.02101,"1033,67253030050 ",.01)
 ;;67253030050
 ;;9002226.02101,"1033,67253030050 ",.02)
 ;;67253030050
 ;;9002226.02101,"1033,67253030110 ",.01)
 ;;67253030110
 ;;9002226.02101,"1033,67253030110 ",.02)
 ;;67253030110
 ;;9002226.02101,"1033,67253030150 ",.01)
 ;;67253030150
 ;;9002226.02101,"1033,67253030150 ",.02)
 ;;67253030150
 ;;9002226.02101,"1033,67253030613 ",.01)
 ;;67253030613
 ;;9002226.02101,"1033,67253030613 ",.02)
 ;;67253030613
 ;;9002226.02101,"1033,67253030640 ",.01)
 ;;67253030640
 ;;9002226.02101,"1033,67253030640 ",.02)
 ;;67253030640
 ;;9002226.02101,"1033,67253030713 ",.01)
 ;;67253030713
 ;;9002226.02101,"1033,67253030713 ",.02)
 ;;67253030713
 ;;9002226.02101,"1033,67253030740 ",.01)
 ;;67253030740
 ;;9002226.02101,"1033,67253030740 ",.02)
 ;;67253030740
 ;;9002226.02101,"1033,67253078002 ",.01)
 ;;67253078002
 ;;9002226.02101,"1033,67253078002 ",.02)
 ;;67253078002
 ;;9002226.02101,"1033,67253078102 ",.01)
 ;;67253078102
 ;;9002226.02101,"1033,67253078102 ",.02)
 ;;67253078102
 ;;9002226.02101,"1033,67296000201 ",.01)
 ;;67296000201
 ;;9002226.02101,"1033,67296000201 ",.02)
 ;;67296000201
 ;;9002226.02101,"1033,67296000202 ",.01)
 ;;67296000202
 ;;9002226.02101,"1033,67296000202 ",.02)
 ;;67296000202
 ;;9002226.02101,"1033,67296000301 ",.01)
 ;;67296000301
 ;;9002226.02101,"1033,67296000301 ",.02)
 ;;67296000301
 ;;9002226.02101,"1033,67296000302 ",.01)
 ;;67296000302
 ;;9002226.02101,"1033,67296000302 ",.02)
 ;;67296000302
 ;;9002226.02101,"1033,67296000303 ",.01)
 ;;67296000303
 ;;9002226.02101,"1033,67296000303 ",.02)
 ;;67296000303
 ;;9002226.02101,"1033,67296000304 ",.01)
 ;;67296000304
 ;;9002226.02101,"1033,67296000304 ",.02)
 ;;67296000304
 ;;9002226.02101,"1033,67296000401 ",.01)
 ;;67296000401
 ;;9002226.02101,"1033,67296000401 ",.02)
 ;;67296000401
 ;;9002226.02101,"1033,67296000501 ",.01)
 ;;67296000501
 ;;9002226.02101,"1033,67296000501 ",.02)
 ;;67296000501
 ;;9002226.02101,"1033,67296001501 ",.01)
 ;;67296001501
 ;;9002226.02101,"1033,67296001501 ",.02)
 ;;67296001501
 ;;9002226.02101,"1033,67296002301 ",.01)
 ;;67296002301
 ;;9002226.02101,"1033,67296002301 ",.02)
 ;;67296002301
 ;;9002226.02101,"1033,67296002302 ",.01)
 ;;67296002302
 ;;9002226.02101,"1033,67296002302 ",.02)
 ;;67296002302
 ;;9002226.02101,"1033,67296003601 ",.01)
 ;;67296003601
 ;;9002226.02101,"1033,67296003601 ",.02)
 ;;67296003601
 ;;9002226.02101,"1033,67296003602 ",.01)
 ;;67296003602
 ;;9002226.02101,"1033,67296003602 ",.02)
 ;;67296003602
 ;;9002226.02101,"1033,67296003603 ",.01)
 ;;67296003603
 ;;9002226.02101,"1033,67296003603 ",.02)
 ;;67296003603
 ;;9002226.02101,"1033,67296003604 ",.01)
 ;;67296003604
 ;;9002226.02101,"1033,67296003604 ",.02)
 ;;67296003604
 ;;9002226.02101,"1033,67296004401 ",.01)
 ;;67296004401
 ;;9002226.02101,"1033,67296004401 ",.02)
 ;;67296004401
 ;;9002226.02101,"1033,67296004402 ",.01)
 ;;67296004402
 ;;9002226.02101,"1033,67296004402 ",.02)
 ;;67296004402
 ;;9002226.02101,"1033,67296004403 ",.01)
 ;;67296004403
 ;;9002226.02101,"1033,67296004403 ",.02)
 ;;67296004403
 ;;9002226.02101,"1033,67296004601 ",.01)
 ;;67296004601
 ;;9002226.02101,"1033,67296004601 ",.02)
 ;;67296004601
 ;;9002226.02101,"1033,67296004901 ",.01)
 ;;67296004901
 ;;9002226.02101,"1033,67296004901 ",.02)
 ;;67296004901
 ;;9002226.02101,"1033,67296006201 ",.01)
 ;;67296006201
 ;;9002226.02101,"1033,67296006201 ",.02)
 ;;67296006201
 ;;9002226.02101,"1033,67296006202 ",.01)
 ;;67296006202
 ;;9002226.02101,"1033,67296006202 ",.02)
 ;;67296006202
 ;;9002226.02101,"1033,67296006203 ",.01)
 ;;67296006203
 ;;9002226.02101,"1033,67296006203 ",.02)
 ;;67296006203
 ;;9002226.02101,"1033,67296006204 ",.01)
 ;;67296006204
 ;;9002226.02101,"1033,67296006204 ",.02)
 ;;67296006204
 ;;9002226.02101,"1033,67296006205 ",.01)
 ;;67296006205
 ;;9002226.02101,"1033,67296006205 ",.02)
 ;;67296006205
 ;;9002226.02101,"1033,67296007301 ",.01)
 ;;67296007301
 ;;9002226.02101,"1033,67296007301 ",.02)
 ;;67296007301
 ;;9002226.02101,"1033,67296007302 ",.01)
 ;;67296007302
 ;;9002226.02101,"1033,67296007302 ",.02)
 ;;67296007302
 ;;9002226.02101,"1033,67296007502 ",.01)
 ;;67296007502
 ;;9002226.02101,"1033,67296007502 ",.02)
 ;;67296007502
 ;;9002226.02101,"1033,67296007503 ",.01)
 ;;67296007503
 ;;9002226.02101,"1033,67296007503 ",.02)
 ;;67296007503
 ;;9002226.02101,"1033,67296007504 ",.01)
 ;;67296007504
 ;;9002226.02101,"1033,67296007504 ",.02)
 ;;67296007504
 ;;9002226.02101,"1033,67296007505 ",.01)
 ;;67296007505
 ;;9002226.02101,"1033,67296007505 ",.02)
 ;;67296007505
 ;;9002226.02101,"1033,67296007601 ",.01)
 ;;67296007601
 ;;9002226.02101,"1033,67296007601 ",.02)
 ;;67296007601
 ;;9002226.02101,"1033,67296007602 ",.01)
 ;;67296007602
 ;;9002226.02101,"1033,67296007602 ",.02)
 ;;67296007602
 ;;9002226.02101,"1033,67296007603 ",.01)
 ;;67296007603
 ;;9002226.02101,"1033,67296007603 ",.02)
 ;;67296007603
 ;;9002226.02101,"1033,67296008102 ",.01)
 ;;67296008102
 ;;9002226.02101,"1033,67296008102 ",.02)
 ;;67296008102
 ;;9002226.02101,"1033,67296008201 ",.01)
 ;;67296008201
 ;;9002226.02101,"1033,67296008201 ",.02)
 ;;67296008201
 ;;9002226.02101,"1033,67296008202 ",.01)
 ;;67296008202
 ;;9002226.02101,"1033,67296008202 ",.02)
 ;;67296008202
 ;;9002226.02101,"1033,67296008501 ",.01)
 ;;67296008501
 ;;9002226.02101,"1033,67296008501 ",.02)
 ;;67296008501
 ;;9002226.02101,"1033,67296008701 ",.01)
 ;;67296008701
 ;;9002226.02101,"1033,67296008701 ",.02)
 ;;67296008701
 ;;9002226.02101,"1033,67296008702 ",.01)
 ;;67296008702
 ;;9002226.02101,"1033,67296008702 ",.02)
 ;;67296008702
 ;;9002226.02101,"1033,67296008703 ",.01)
 ;;67296008703
 ;;9002226.02101,"1033,67296008703 ",.02)
 ;;67296008703
 ;;9002226.02101,"1033,67296008704 ",.01)
 ;;67296008704
 ;;9002226.02101,"1033,67296008704 ",.02)
 ;;67296008704
 ;;9002226.02101,"1033,67296009001 ",.01)
 ;;67296009001
 ;;9002226.02101,"1033,67296009001 ",.02)
 ;;67296009001
 ;;9002226.02101,"1033,67296009002 ",.01)
 ;;67296009002
 ;;9002226.02101,"1033,67296009002 ",.02)
 ;;67296009002
 ;;9002226.02101,"1033,67296011802 ",.01)
 ;;67296011802
 ;;9002226.02101,"1033,67296011802 ",.02)
 ;;67296011802
 ;;9002226.02101,"1033,67296011803 ",.01)
 ;;67296011803
 ;;9002226.02101,"1033,67296011803 ",.02)
 ;;67296011803
 ;;9002226.02101,"1033,67296011804 ",.01)
 ;;67296011804
 ;;9002226.02101,"1033,67296011804 ",.02)
 ;;67296011804
 ;;9002226.02101,"1033,67296011805 ",.01)
 ;;67296011805
 ;;9002226.02101,"1033,67296011805 ",.02)
 ;;67296011805
 ;;9002226.02101,"1033,67296012201 ",.01)
 ;;67296012201
 ;;9002226.02101,"1033,67296012201 ",.02)
 ;;67296012201
 ;;9002226.02101,"1033,67296012301 ",.01)
 ;;67296012301
 ;;9002226.02101,"1033,67296012301 ",.02)
 ;;67296012301
 ;;9002226.02101,"1033,67296014101 ",.01)
 ;;67296014101
 ;;9002226.02101,"1033,67296014101 ",.02)
 ;;67296014101
 ;;9002226.02101,"1033,67296014401 ",.01)
 ;;67296014401
 ;;9002226.02101,"1033,67296014401 ",.02)
 ;;67296014401
 ;;9002226.02101,"1033,67296017301 ",.01)
 ;;67296017301
 ;;9002226.02101,"1033,67296017301 ",.02)
 ;;67296017301
 ;;9002226.02101,"1033,67296017601 ",.01)
 ;;67296017601
 ;;9002226.02101,"1033,67296017601 ",.02)
 ;;67296017601
 ;;9002226.02101,"1033,67296017602 ",.01)
 ;;67296017602
 ;;9002226.02101,"1033,67296017602 ",.02)
 ;;67296017602
 ;;9002226.02101,"1033,67296017603 ",.01)
 ;;67296017603
 ;;9002226.02101,"1033,67296017603 ",.02)
 ;;67296017603
 ;;9002226.02101,"1033,67296018602 ",.01)
 ;;67296018602
 ;;9002226.02101,"1033,67296018602 ",.02)
 ;;67296018602
 ;;9002226.02101,"1033,67296019201 ",.01)
 ;;67296019201
 ;;9002226.02101,"1033,67296019201 ",.02)
 ;;67296019201
 ;;9002226.02101,"1033,67296020301 ",.01)
 ;;67296020301
 ;;9002226.02101,"1033,67296020301 ",.02)
 ;;67296020301
 ;;9002226.02101,"1033,67296020302 ",.01)
 ;;67296020302
 ;;9002226.02101,"1033,67296020302 ",.02)
 ;;67296020302
 ;;9002226.02101,"1033,67296021002 ",.01)
 ;;67296021002
 ;;9002226.02101,"1033,67296021002 ",.02)
 ;;67296021002
 ;;9002226.02101,"1033,67296021003 ",.01)
 ;;67296021003
 ;;9002226.02101,"1033,67296021003 ",.02)
 ;;67296021003
 ;;9002226.02101,"1033,67296021004 ",.01)
 ;;67296021004
 ;;9002226.02101,"1033,67296021004 ",.02)
 ;;67296021004
 ;;9002226.02101,"1033,67296021005 ",.01)
 ;;67296021005
 ;;9002226.02101,"1033,67296021005 ",.02)
 ;;67296021005
 ;;9002226.02101,"1033,67296021301 ",.01)
 ;;67296021301
 ;;9002226.02101,"1033,67296021301 ",.02)
 ;;67296021301
 ;;9002226.02101,"1033,67296022001 ",.01)
 ;;67296022001
 ;;9002226.02101,"1033,67296022001 ",.02)
 ;;67296022001
 ;;9002226.02101,"1033,67296022002 ",.01)
 ;;67296022002
 ;;9002226.02101,"1033,67296022002 ",.02)
 ;;67296022002
 ;;9002226.02101,"1033,67296022003 ",.01)
 ;;67296022003
 ;;9002226.02101,"1033,67296022003 ",.02)
 ;;67296022003
 ;;9002226.02101,"1033,67296022004 ",.01)
 ;;67296022004
 ;;9002226.02101,"1033,67296022004 ",.02)
 ;;67296022004
 ;;9002226.02101,"1033,67296022005 ",.01)
 ;;67296022005
 ;;9002226.02101,"1033,67296022005 ",.02)
 ;;67296022005
 ;;9002226.02101,"1033,67296022401 ",.01)
 ;;67296022401
 ;;9002226.02101,"1033,67296022401 ",.02)
 ;;67296022401
 ;;9002226.02101,"1033,67296022701 ",.01)
 ;;67296022701
 ;;9002226.02101,"1033,67296022701 ",.02)
 ;;67296022701
 ;;9002226.02101,"1033,67296022702 ",.01)
 ;;67296022702
 ;;9002226.02101,"1033,67296022702 ",.02)
 ;;67296022702
 ;;9002226.02101,"1033,67296022703 ",.01)
 ;;67296022703
 ;;9002226.02101,"1033,67296022703 ",.02)
 ;;67296022703
 ;;9002226.02101,"1033,67296022704 ",.01)
 ;;67296022704
 ;;9002226.02101,"1033,67296022704 ",.02)
 ;;67296022704
 ;;9002226.02101,"1033,67296022705 ",.01)
 ;;67296022705
 ;;9002226.02101,"1033,67296022705 ",.02)
 ;;67296022705
 ;;9002226.02101,"1033,67296023701 ",.01)
 ;;67296023701
 ;;9002226.02101,"1033,67296023701 ",.02)
 ;;67296023701
 ;;9002226.02101,"1033,67296023702 ",.01)
 ;;67296023702
 ;;9002226.02101,"1033,67296023702 ",.02)
 ;;67296023702
 ;;9002226.02101,"1033,67296023703 ",.01)
 ;;67296023703
 ;;9002226.02101,"1033,67296023703 ",.02)
 ;;67296023703
 ;;9002226.02101,"1033,67296024601 ",.01)
 ;;67296024601
 ;;9002226.02101,"1033,67296024601 ",.02)
 ;;67296024601
 ;;9002226.02101,"1033,67296024602 ",.01)
 ;;67296024602
 ;;9002226.02101,"1033,67296024602 ",.02)
 ;;67296024602
