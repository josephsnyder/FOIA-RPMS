BGP21J7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"59762-5032-02 ")
 ;;799
 ;;21,"59762-5033-01 ")
 ;;735
 ;;21,"59762-5033-02 ")
 ;;736
 ;;21,"59762-7020-09 ")
 ;;911
 ;;21,"59762-7021-05 ")
 ;;971
 ;;21,"59762-7021-09 ")
 ;;972
 ;;21,"59762-7022-05 ")
 ;;1126
 ;;21,"59762-7022-09 ")
 ;;1127
 ;;21,"60346-0457-30 ")
 ;;754
 ;;21,"60346-0513-60 ")
 ;;867
 ;;21,"60346-0613-30 ")
 ;;541
 ;;21,"60346-0633-30 ")
 ;;253
 ;;21,"60346-0633-60 ")
 ;;254
 ;;21,"60346-0633-90 ")
 ;;255
 ;;21,"60346-0662-30 ")
 ;;1245
 ;;21,"60346-0662-60 ")
 ;;1246
 ;;21,"60346-0730-30 ")
 ;;1247
 ;;21,"60346-0730-60 ")
 ;;1248
 ;;21,"60346-0784-30 ")
 ;;219
 ;;21,"60346-0890-30 ")
 ;;1023
 ;;21,"60346-0938-07 ")
 ;;1249
 ;;21,"60346-0938-30 ")
 ;;1250
 ;;21,"60429-0082-30 ")
 ;;622
 ;;21,"60429-0082-60 ")
 ;;623
 ;;21,"60429-0083-12 ")
 ;;469
 ;;21,"60429-0083-30 ")
 ;;470
 ;;21,"60429-0083-60 ")
 ;;471
 ;;21,"60429-0085-12 ")
 ;;1128
 ;;21,"60429-0085-18 ")
 ;;1129
 ;;21,"60429-0085-27 ")
 ;;1130
 ;;21,"60429-0085-30 ")
 ;;1131
 ;;21,"60429-0085-36 ")
 ;;1132
 ;;21,"60429-0085-60 ")
 ;;1133
 ;;21,"60429-0085-90 ")
 ;;1134
 ;;21,"60505-0141-00 ")
 ;;624
 ;;21,"60505-0141-01 ")
 ;;625
 ;;21,"60505-0141-02 ")
 ;;626
 ;;21,"60505-0141-08 ")
 ;;627
 ;;21,"60505-0142-00 ")
 ;;472
 ;;21,"60505-0142-01 ")
 ;;473
 ;;21,"60505-0142-02 ")
 ;;474
 ;;21,"60505-0142-04 ")
 ;;475
 ;;21,"60951-0714-70 ")
 ;;533
 ;;21,"60951-0714-85 ")
 ;;534
 ;;21,"61442-0115-01 ")
 ;;260
 ;;21,"61442-0116-01 ")
 ;;285
 ;;21,"61442-0117-01 ")
 ;;335
 ;;21,"62037-0871-30 ")
 ;;766
 ;;21,"62037-0872-01 ")
 ;;804
 ;;21,"62037-0872-05 ")
 ;;811
 ;;21,"62037-0873-01 ")
 ;;750
 ;;21,"62037-0873-05 ")
 ;;752
 ;;21,"62682-5002-01 ")
 ;;698
 ;;21,"62682-5004-03 ")
 ;;542
 ;;21,"62682-5006-03 ")
 ;;1024
 ;;21,"63304-0425-01 ")
 ;;279
 ;;21,"63304-0426-01 ")
 ;;315
 ;;21,"63304-0427-01 ")
 ;;373
 ;;21,"63629-1255-01 ")
 ;;374
 ;;21,"63629-1255-02 ")
 ;;375
 ;;21,"63629-1392-01 ")
 ;;105
 ;;21,"63629-1392-02 ")
 ;;106
 ;;21,"63629-1392-03 ")
 ;;107
 ;;21,"63629-1393-01 ")
 ;;1135
 ;;21,"63629-1393-02 ")
 ;;1136
 ;;21,"63629-1393-03 ")
 ;;1137
 ;;21,"63629-1393-04 ")
 ;;1138
 ;;21,"63629-1394-01 ")
 ;;476
 ;;21,"63629-1394-02 ")
 ;;477
 ;;21,"63629-1394-03 ")
 ;;478
 ;;21,"63629-1398-01 ")
 ;;628
 ;;21,"63629-1398-02 ")
 ;;629
 ;;21,"63629-1398-03 ")
 ;;630
 ;;21,"63629-2793-01 ")
 ;;166
 ;;21,"63629-2793-03 ")
 ;;167
 ;;21,"63629-2793-04 ")
 ;;168
 ;;21,"63629-2793-05 ")
 ;;169
 ;;21,"63629-2907-01 ")
 ;;973
 ;;21,"63629-2907-02 ")
 ;;974
 ;;21,"63629-3043-01 ")
 ;;316
 ;;21,"63629-3043-02 ")
 ;;317
 ;;21,"63629-3158-01 ")
 ;;737
 ;;21,"63629-3158-02 ")
 ;;738
 ;;21,"63629-3158-03 ")
 ;;739
 ;;21,"63629-3397-03 ")
 ;;818
 ;;21,"63629-3998-01 ")
 ;;62
 ;;21,"63629-4071-01 ")
 ;;800
 ;;21,"63739-0116-01 ")
 ;;682
 ;;21,"63739-0116-02 ")
 ;;687
 ;;21,"63739-0116-03 ")
 ;;683
 ;;21,"63739-0116-10 ")
 ;;666
 ;;21,"63739-0116-15 ")
 ;;681
 ;;21,"63739-0117-01 ")
 ;;526
 ;;21,"63739-0117-02 ")
 ;;532
 ;;21,"63739-0117-03 ")
 ;;527
 ;;21,"63739-0117-10 ")
 ;;524
 ;;21,"63739-0117-15 ")
 ;;525
 ;;21,"63739-0118-01 ")
 ;;1019
 ;;21,"63739-0118-02 ")
 ;;1021
 ;;21,"63739-0118-03 ")
 ;;1020
 ;;21,"63739-0118-10 ")
 ;;1002
 ;;21,"63739-0118-15 ")
 ;;1008
 ;;21,"63739-0119-01 ")
 ;;1238
 ;;21,"63739-0119-02 ")
 ;;1240
 ;;21,"63739-0119-03 ")
 ;;1239
 ;;21,"63739-0119-10 ")
 ;;1139
 ;;21,"63739-0119-15 ")
 ;;1216
 ;;21,"63874-0316-01 ")
 ;;631
 ;;21,"63874-0316-02 ")
 ;;632
 ;;21,"63874-0316-04 ")
 ;;633
 ;;21,"63874-0316-05 ")
 ;;634
 ;;21,"63874-0316-10 ")
 ;;635
 ;;21,"63874-0316-12 ")
 ;;636
 ;;21,"63874-0316-14 ")
 ;;637
 ;;21,"63874-0316-15 ")
 ;;638
 ;;21,"63874-0316-20 ")
 ;;639
 ;;21,"63874-0316-21 ")
 ;;640
 ;;21,"63874-0316-24 ")
 ;;641
 ;;21,"63874-0316-28 ")
 ;;642
 ;;21,"63874-0316-30 ")
 ;;643
 ;;21,"63874-0316-50 ")
 ;;644
 ;;21,"63874-0316-60 ")
 ;;645
 ;;21,"63874-0316-81 ")
 ;;646
 ;;21,"63874-0316-90 ")
 ;;647
 ;;21,"63874-0317-01 ")
 ;;1140
 ;;21,"63874-0317-02 ")
 ;;1141
 ;;21,"63874-0317-04 ")
 ;;1142
 ;;21,"63874-0317-10 ")
 ;;1143
 ;;21,"63874-0317-12 ")
 ;;1144
 ;;21,"63874-0317-14 ")
 ;;1145
 ;;21,"63874-0317-15 ")
 ;;1146
 ;;21,"63874-0317-20 ")
 ;;1147
 ;;21,"63874-0317-24 ")
 ;;1148
 ;;21,"63874-0317-28 ")
 ;;1149
 ;;21,"63874-0317-30 ")
 ;;1150
 ;;21,"63874-0317-40 ")
 ;;1151
 ;;21,"63874-0317-50 ")
 ;;1152
 ;;21,"63874-0317-60 ")
 ;;1153
 ;;21,"63874-0317-90 ")
 ;;1154
 ;;21,"63874-0357-01 ")
 ;;231
 ;;21,"63874-0357-02 ")
 ;;232
 ;;21,"63874-0357-10 ")
 ;;233
 ;;21,"63874-0357-12 ")
 ;;234
 ;;21,"63874-0357-14 ")
 ;;235
 ;;21,"63874-0357-15 ")
 ;;236
 ;;21,"63874-0357-20 ")
 ;;237
 ;;21,"63874-0357-21 ")
 ;;238
 ;;21,"63874-0357-24 ")
 ;;239
 ;;21,"63874-0357-30 ")
 ;;240
 ;;21,"63874-0357-40 ")
 ;;241
 ;;21,"63874-0357-60 ")
 ;;242
 ;;21,"63874-0432-01 ")
 ;;479
