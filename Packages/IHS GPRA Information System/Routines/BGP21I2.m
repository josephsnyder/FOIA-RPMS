BGP21I2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00406-2028-10 ")
 ;;244
 ;;21,"00406-2029-01 ")
 ;;560
 ;;21,"00406-2029-05 ")
 ;;561
 ;;21,"00406-2029-10 ")
 ;;562
 ;;21,"00406-2030-01 ")
 ;;196
 ;;21,"00406-2030-05 ")
 ;;19
 ;;21,"00406-2030-10 ")
 ;;20
 ;;21,"00440-7562-92 ")
 ;;526
 ;;21,"00440-7562-95 ")
 ;;245
 ;;21,"00440-7585-90 ")
 ;;962
 ;;21,"00440-7587-90 ")
 ;;1001
 ;;21,"00440-7589-90 ")
 ;;1045
 ;;21,"00440-7739-14 ")
 ;;246
 ;;21,"00440-7739-60 ")
 ;;247
 ;;21,"00440-7739-90 ")
 ;;248
 ;;21,"00440-7739-92 ")
 ;;249
 ;;21,"00440-7739-94 ")
 ;;250
 ;;21,"00440-7739-95 ")
 ;;251
 ;;21,"00440-7745-90 ")
 ;;563
 ;;21,"00440-7745-92 ")
 ;;564
 ;;21,"00440-7746-90 ")
 ;;21
 ;;21,"00440-7746-92 ")
 ;;22
 ;;21,"00440-7748-90 ")
 ;;760
 ;;21,"00440-7748-92 ")
 ;;761
 ;;21,"00440-7748-99 ")
 ;;850
 ;;21,"00555-0107-02 ")
 ;;879
 ;;21,"00555-0385-02 ")
 ;;519
 ;;21,"00555-0385-04 ")
 ;;520
 ;;21,"00555-0386-02 ")
 ;;723
 ;;21,"00555-0387-02 ")
 ;;205
 ;;21,"00555-0625-02 ")
 ;;922
 ;;21,"00555-0626-02 ")
 ;;937
 ;;21,"00555-0627-02 ")
 ;;955
 ;;21,"00591-2455-01 ")
 ;;211
 ;;21,"00591-2455-05 ")
 ;;212
 ;;21,"00591-2713-01 ")
 ;;529
 ;;21,"00591-2713-05 ")
 ;;530
 ;;21,"00591-2775-01 ")
 ;;730
 ;;21,"00591-2775-25 ")
 ;;731
 ;;21,"00591-3971-01 ")
 ;;917
 ;;21,"00591-3972-01 ")
 ;;927
 ;;21,"00591-3973-01 ")
 ;;943
 ;;21,"00615-4580-53 ")
 ;;544
 ;;21,"00615-4580-63 ")
 ;;545
 ;;21,"00781-5050-01 ")
 ;;252
 ;;21,"00781-5050-05 ")
 ;;253
 ;;21,"00781-5050-10 ")
 ;;254
 ;;21,"00781-5050-61 ")
 ;;255
 ;;21,"00781-5051-01 ")
 ;;565
 ;;21,"00781-5051-05 ")
 ;;566
 ;;21,"00781-5051-61 ")
 ;;567
 ;;21,"00781-5052-01 ")
 ;;23
 ;;21,"00781-5052-05 ")
 ;;24
 ;;21,"00781-5052-61 ")
 ;;25
 ;;21,"00781-5055-01 ")
 ;;858
 ;;21,"00781-5170-01 ")
 ;;963
 ;;21,"00781-5171-01 ")
 ;;1002
 ;;21,"00781-5171-05 ")
 ;;1003
 ;;21,"00781-5172-01 ")
 ;;1046
 ;;21,"00781-5172-05 ")
 ;;1047
 ;;21,"00781-5304-01 ")
 ;;918
 ;;21,"00781-5305-01 ")
 ;;928
 ;;21,"00781-5306-01 ")
 ;;944
 ;;21,"00904-5601-18 ")
 ;;531
 ;;21,"00904-5601-52 ")
 ;;528
 ;;21,"00904-5601-54 ")
 ;;532
 ;;21,"00904-5601-61 ")
 ;;505
 ;;21,"00904-5601-80 ")
 ;;525
 ;;21,"00904-5601-89 ")
 ;;534
 ;;21,"00904-5601-93 ")
 ;;533
 ;;21,"00904-5602-40 ")
 ;;729
 ;;21,"00904-5602-53 ")
 ;;728
 ;;21,"00904-5602-61 ")
 ;;710
 ;;21,"00904-5602-89 ")
 ;;727
 ;;21,"00904-5602-93 ")
 ;;732
 ;;21,"00904-5603-40 ")
 ;;208
 ;;21,"00904-5603-52 ")
 ;;213
 ;;21,"00904-5603-61 ")
 ;;185
 ;;21,"00904-5603-89 ")
 ;;209
 ;;21,"00904-5603-93 ")
 ;;210
 ;;21,"00904-5634-61 ")
 ;;499
 ;;21,"00904-5635-61 ")
 ;;706
 ;;21,"00904-5636-61 ")
 ;;186
 ;;21,"00904-5794-61 ")
 ;;840
 ;;21,"00904-5795-61 ")
 ;;878
 ;;21,"00904-5849-14 ")
 ;;256
 ;;21,"00904-5849-18 ")
 ;;257
 ;;21,"00904-5849-40 ")
 ;;258
 ;;21,"00904-5849-52 ")
 ;;259
 ;;21,"00904-5849-53 ")
 ;;260
 ;;21,"00904-5849-54 ")
 ;;261
 ;;21,"00904-5849-80 ")
 ;;262
 ;;21,"00904-5849-89 ")
 ;;263
 ;;21,"00904-5849-93 ")
 ;;264
 ;;21,"00904-5850-40 ")
 ;;568
 ;;21,"00904-5850-53 ")
 ;;569
 ;;21,"00904-5850-89 ")
 ;;570
 ;;21,"00904-5850-93 ")
 ;;571
 ;;21,"00904-5851-40 ")
 ;;26
 ;;21,"00904-5851-52 ")
 ;;27
 ;;21,"00904-5851-89 ")
 ;;28
 ;;21,"00904-5851-93 ")
 ;;29
 ;;21,"00904-6090-61 ")
 ;;265
 ;;21,"00904-6091-61 ")
 ;;572
 ;;21,"00904-6092-61 ")
 ;;30
 ;;21,"00904-6107-40 ")
 ;;762
 ;;21,"00904-6107-61 ")
 ;;763
 ;;21,"00904-6108-60 ")
 ;;864
 ;;21,"00904-6108-61 ")
 ;;865
 ;;21,"10631-0206-01 ")
 ;;1
 ;;21,"10631-0206-02 ")
 ;;2
 ;;21,"12280-0003-60 ")
 ;;1145
 ;;21,"12280-0004-60 ")
 ;;1149
 ;;21,"12280-0026-00 ")
 ;;1027
 ;;21,"12280-0027-00 ")
 ;;1101
 ;;21,"13411-0163-02 ")
 ;;266
 ;;21,"13411-0163-03 ")
 ;;267
 ;;21,"13411-0163-06 ")
 ;;268
 ;;21,"13411-0163-09 ")
 ;;269
 ;;21,"13411-0163-10 ")
 ;;270
 ;;21,"13411-0164-02 ")
 ;;573
 ;;21,"13411-0164-03 ")
 ;;574
 ;;21,"13411-0164-06 ")
 ;;575
 ;;21,"13411-0164-09 ")
 ;;576
 ;;21,"13411-0164-10 ")
 ;;577
 ;;21,"13913-0002-13 ")
 ;;764
 ;;21,"13913-0003-16 ")
 ;;885
 ;;21,"14565-0202-10 ")
 ;;765
 ;;21,"14565-0202-50 ")
 ;;766
 ;;21,"16590-0313-30 ")
 ;;271
 ;;21,"16590-0313-60 ")
 ;;272
 ;;21,"16590-0313-90 ")
 ;;273
 ;;21,"17236-0132-01 ")
 ;;548
 ;;21,"17236-0132-05 ")
 ;;549
 ;;21,"17236-0133-01 ")
 ;;742
 ;;21,"20091-0531-01 ")
 ;;274
 ;;21,"20091-0531-05 ")
 ;;275
 ;;21,"20091-0531-10 ")
 ;;276
 ;;21,"20091-0533-01 ")
 ;;578
 ;;21,"20091-0533-05 ")
 ;;579
 ;;21,"20091-0533-10 ")
 ;;580
 ;;21,"20091-0535-01 ")
 ;;31
 ;;21,"20091-0535-05 ")
 ;;32
 ;;21,"20091-0535-10 ")
 ;;33
 ;;21,"21695-0471-00 ")
 ;;277
 ;;21,"21695-0471-30 ")
 ;;278
 ;;21,"21695-0471-60 ")
 ;;279
 ;;21,"21695-0471-78 ")
 ;;280
 ;;21,"21695-0471-90 ")
 ;;281
 ;;21,"21695-0472-30 ")
 ;;581
 ;;21,"21695-0472-60 ")
 ;;582
 ;;21,"21695-0473-00 ")
 ;;5
 ;;21,"21695-0473-30 ")
 ;;34
