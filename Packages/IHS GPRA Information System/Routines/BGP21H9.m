BGP21H9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"54868-2975-02 ")
 ;;741
 ;;21,"54868-2975-03 ")
 ;;742
 ;;21,"54868-3102-00 ")
 ;;682
 ;;21,"54868-3102-03 ")
 ;;683
 ;;21,"54868-3103-00 ")
 ;;696
 ;;21,"54868-3103-02 ")
 ;;697
 ;;21,"54868-3103-03 ")
 ;;698
 ;;21,"54868-3103-04 ")
 ;;699
 ;;21,"54868-3103-05 ")
 ;;700
 ;;21,"54868-3214-00 ")
 ;;674
 ;;21,"54868-3214-01 ")
 ;;675
 ;;21,"54868-3287-00 ")
 ;;239
 ;;21,"54868-3287-01 ")
 ;;240
 ;;21,"54868-3300-00 ")
 ;;1997
 ;;21,"54868-3300-01 ")
 ;;2028
 ;;21,"54868-3300-02 ")
 ;;2029
 ;;21,"54868-3300-03 ")
 ;;2030
 ;;21,"54868-3300-04 ")
 ;;2031
 ;;21,"54868-3464-01 ")
 ;;327
 ;;21,"54868-3464-02 ")
 ;;328
 ;;21,"54868-3774-00 ")
 ;;1006
 ;;21,"54868-3817-00 ")
 ;;1437
 ;;21,"54868-3853-01 ")
 ;;450
 ;;21,"54868-3853-02 ")
 ;;451
 ;;21,"54868-3853-03 ")
 ;;452
 ;;21,"54868-3956-00 ")
 ;;1028
 ;;21,"54868-3956-01 ")
 ;;1029
 ;;21,"54868-3956-02 ")
 ;;1030
 ;;21,"54868-3958-00 ")
 ;;1052
 ;;21,"54868-4011-00 ")
 ;;1712
 ;;21,"54868-4011-01 ")
 ;;1713
 ;;21,"54868-4011-02 ")
 ;;1714
 ;;21,"54868-4011-03 ")
 ;;1715
 ;;21,"54868-4064-00 ")
 ;;1395
 ;;21,"54868-4064-01 ")
 ;;1396
 ;;21,"54868-4066-00 ")
 ;;55
 ;;21,"54868-4066-01 ")
 ;;56
 ;;21,"54868-4068-00 ")
 ;;1095
 ;;21,"54868-4073-00 ")
 ;;79
 ;;21,"54868-4073-01 ")
 ;;80
 ;;21,"54868-4073-02 ")
 ;;81
 ;;21,"54868-4073-03 ")
 ;;82
 ;;21,"54868-4074-00 ")
 ;;114
 ;;21,"54868-4074-01 ")
 ;;115
 ;;21,"54868-4074-02 ")
 ;;116
 ;;21,"54868-4074-03 ")
 ;;117
 ;;21,"54868-4074-04 ")
 ;;118
 ;;21,"54868-4184-00 ")
 ;;743
 ;;21,"54868-4184-01 ")
 ;;744
 ;;21,"54868-4184-02 ")
 ;;745
 ;;21,"54868-4186-00 ")
 ;;715
 ;;21,"54868-4186-01 ")
 ;;716
 ;;21,"54868-4186-02 ")
 ;;717
 ;;21,"54868-4186-03 ")
 ;;718
 ;;21,"54868-4200-00 ")
 ;;1726
 ;;21,"54868-4200-01 ")
 ;;1727
 ;;21,"54868-4200-02 ")
 ;;1728
 ;;21,"54868-4202-00 ")
 ;;1748
 ;;21,"54868-4202-01 ")
 ;;1749
 ;;21,"54868-4418-00 ")
 ;;1075
 ;;21,"54868-4432-00 ")
 ;;1976
 ;;21,"54868-4432-01 ")
 ;;1977
 ;;21,"54868-4531-00 ")
 ;;1528
 ;;21,"54868-4531-01 ")
 ;;1529
 ;;21,"54868-4531-02 ")
 ;;1530
 ;;21,"54868-4531-03 ")
 ;;1531
 ;;21,"54868-4531-04 ")
 ;;1532
 ;;21,"54868-4532-00 ")
 ;;1469
 ;;21,"54868-4532-01 ")
 ;;1470
 ;;21,"54868-4532-02 ")
 ;;1471
 ;;21,"54868-4532-03 ")
 ;;1472
 ;;21,"54868-4532-04 ")
 ;;1473
 ;;21,"54868-4808-00 ")
 ;;935
 ;;21,"54868-4868-00 ")
 ;;868
 ;;21,"54868-4868-01 ")
 ;;869
 ;;21,"54868-4868-02 ")
 ;;870
 ;;21,"54868-4870-00 ")
 ;;20
 ;;21,"54868-4870-01 ")
 ;;21
 ;;21,"54868-4870-02 ")
 ;;22
 ;;21,"54868-4875-00 ")
 ;;1685
 ;;21,"54868-4875-01 ")
 ;;1686
 ;;21,"54868-4875-02 ")
 ;;1687
 ;;21,"54868-4970-00 ")
 ;;770
 ;;21,"54868-4970-01 ")
 ;;771
 ;;21,"54868-4970-02 ")
 ;;772
 ;;21,"54868-4992-00 ")
 ;;912
 ;;21,"54868-4992-01 ")
 ;;913
 ;;21,"54868-5053-00 ")
 ;;1116
 ;;21,"54868-5053-01 ")
 ;;1117
 ;;21,"54868-5081-00 ")
 ;;819
 ;;21,"54868-5150-00 ")
 ;;820
 ;;21,"54868-5179-00 ")
 ;;246
 ;;21,"54868-5197-00 ")
 ;;1347
 ;;21,"54868-5197-01 ")
 ;;1348
 ;;21,"54868-5197-02 ")
 ;;1349
 ;;21,"54868-5200-00 ")
 ;;226
 ;;21,"54868-5200-01 ")
 ;;227
 ;;21,"54868-5208-00 ")
 ;;1096
 ;;21,"54868-5208-01 ")
 ;;1097
 ;;21,"54868-5209-00 ")
 ;;221
 ;;21,"54868-5209-01 ")
 ;;222
 ;;21,"54868-5301-00 ")
 ;;957
 ;;21,"54868-5311-00 ")
 ;;156
 ;;21,"54868-5311-01 ")
 ;;157
 ;;21,"54868-5316-00 ")
 ;;871
 ;;21,"54868-5320-00 ")
 ;;161
 ;;21,"54868-5320-01 ")
 ;;162
 ;;21,"54868-5320-02 ")
 ;;163
 ;;21,"54868-5320-03 ")
 ;;164
 ;;21,"54868-5320-04 ")
 ;;165
 ;;21,"54868-5420-00 ")
 ;;248
 ;;21,"54868-5476-00 ")
 ;;1403
 ;;21,"54868-5523-00 ")
 ;;229
 ;;21,"54868-5523-01 ")
 ;;230
 ;;21,"54868-5548-00 ")
 ;;150
 ;;21,"54868-5548-01 ")
 ;;151
 ;;21,"54868-5548-02 ")
 ;;152
 ;;21,"54868-5561-00 ")
 ;;1391
 ;;21,"54868-5561-01 ")
 ;;1392
 ;;21,"54868-5567-00 ")
 ;;217
 ;;21,"54868-5672-00 ")
 ;;233
 ;;21,"54868-5690-00 ")
 ;;39
 ;;21,"54868-5690-01 ")
 ;;40
 ;;21,"54868-5690-02 ")
 ;;41
 ;;21,"54868-5690-03 ")
 ;;42
 ;;21,"54868-5699-00 ")
 ;;235
 ;;21,"54868-5761-00 ")
 ;;582
 ;;21,"54868-5761-01 ")
 ;;583
 ;;21,"54868-5761-02 ")
 ;;584
 ;;21,"54868-5762-00 ")
 ;;329
 ;;21,"54868-5762-01 ")
 ;;330
 ;;21,"54868-5762-02 ")
 ;;331
 ;;21,"54868-5764-00 ")
 ;;453
 ;;21,"54868-5764-01 ")
 ;;454
 ;;21,"54868-5781-00 ")
 ;;23
 ;;21,"54868-5781-01 ")
 ;;24
 ;;21,"54868-5781-02 ")
 ;;25
 ;;21,"54868-5781-03 ")
 ;;26
 ;;21,"54868-5782-00 ")
 ;;119
 ;;21,"54868-5782-01 ")
 ;;120
 ;;21,"54868-5782-02 ")
 ;;121
 ;;21,"54868-5782-03 ")
 ;;122
 ;;21,"54868-5782-04 ")
 ;;123
 ;;21,"54868-5783-00 ")
 ;;140
 ;;21,"54868-5783-01 ")
 ;;141
 ;;21,"54868-5792-00 ")
 ;;83
 ;;21,"54868-5792-01 ")
 ;;84
 ;;21,"54868-5792-02 ")
 ;;85
 ;;21,"54868-5793-00 ")
 ;;45
 ;;21,"54868-5793-01 ")
 ;;46
 ;;21,"54868-5804-00 ")
 ;;199
 ;;21,"54868-5841-00 ")
 ;;1797
