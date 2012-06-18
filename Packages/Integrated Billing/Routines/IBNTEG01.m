IBNTEG01	;ISC/XTSUMBLD KERNEL - Package checksum checker ;MAR 21, 1994@00:43:44
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	;;7.2;MAR 21, 1994@00:43:44
	S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT	F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
	G CONT^IBNTEG02
	K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE	S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
	W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
	W ! G CONT
ROU	;;
IBDEI01H	;;7992688
IBDEI01I	;;6311885
IBDEI01J	;;3859113
IBDEI01K	;;5879389
IBDEI01L	;;7094485
IBDEI01M	;;6372207
IBDEI01N	;;5942935
IBDEI01O	;;8541541
IBDEI01P	;;5651382
IBDEI01Q	;;6723525
IBDEI01R	;;2279208
IBDEI01S	;;996991
IBDEI01T	;;6458903
IBDEI01U	;;2419842
IBDEI01V	;;920330
IBDEI01W	;;2626862
IBDEI01X	;;1182089
IBDEI01Y	;;3699161
IBDEINI1	;;5628748
IBDEINI2	;;5232516
IBDEINI3	;;16091945
IBDEINI4	;;3357688
IBDEINI5	;;1691661
IBDEINIS	;;2205388
IBDEINIT	;;10989804
IBDF10	;;9760433
IBDF10A	;;8225317
IBDF10B	;;4334206
IBDF11	;;3608443
IBDF11A	;;3372216
IBDF12	;;2936265
IBDF13	;;5611144
IBDF14	;;7804726
IBDF15	;;2784960
IBDF16	;;8130393
IBDF17	;;7034989
IBDF18	;;5760005
IBDF19	;;3093172
IBDF1A	;;7658975
IBDF1B	;;9947551
IBDF1B1	;;11669586
IBDF1B1A	;;7661304
IBDF1B1B	;;1767481
IBDF1B2	;;2029190
IBDF1B3	;;5211017
IBDF1B5	;;2971706
IBDF1BA	;;11243446
IBDF1C	;;3533740
IBDF2A	;;10749365
IBDF2B	;;7042800
IBDF2B1	;;2199728
IBDF2D	;;10365846
IBDF2D1	;;3762256
IBDF2E	;;1318742
IBDF2F	;;3278399
IBDF3	;;7003790
IBDF4	;;5584361
IBDF4A	;;4167881
IBDF5	;;9847863
IBDF5A	;;3027638
IBDF5B	;;6006533
IBDF5C	;;3316889
IBDF6	;;8969820
IBDF6A	;;5925315
IBDF6C	;;906078
IBDF7	;;2562906
IBDF8	;;1759861
IBDF9	;;3690557
IBDF9A	;;10720154
IBDF9A1	;;5968374
IBDF9B	;;7645681
IBDF9B1	;;12759802
IBDF9C	;;5498868
IBDF9D	;;4630521
IBDF9E	;;5793958
IBDFN	;;10732403
IBDFN1	;;2496841
IBDFN2	;;6231082
IBDFN3	;;2563820
IBDFN4	;;2666489
IBDFN5	;;3054776
IBDFN6	;;4088594
IBDFU	;;5914828
IBDFU1	;;5169538
IBDFU10	;;522617
IBDFU1A	;;1402593
IBDFU1B	;;3304286
IBDFU2	;;11114839
IBDFU2A	;;8665828
IBDFU2B	;;7574217
IBDFU2C	;;7146508
IBDFU3	;;4202120
IBDFU4	;;4018137
IBDFU5	;;7337436
IBDFU5A	;;2508527
IBDFU6	;;330526
IBDFU7	;;692991
IBDFU8	;;6185271
IBDFU9	;;1965684
IBDFUA	;;1080437
IBEBR	;;6557036
IBEBRH	;;2330059
IBECEA	;;4832433
IBECEA0	;;7120498
IBECEA1	;;6495786
IBECEA2	;;8039946
IBECEA21	;;9541385
IBECEA22	;;3918054
IBECEA3	;;7679170
IBECEA31	;;9702269
IBECEA32	;;11121791
IBECEA33	;;9962755
IBECEA4	;;5275337
IBECEA5	;;5154868
IBECEA51	;;8011607
IBECEAU	;;7007799
IBECEAU1	;;12296342
IBECEAU2	;;9011739
IBECEAU3	;;2830374
IBECEAU4	;;6695615
IBECK	;;2104265
IBECPF	;;788382
IBECPTE	;;8741638
IBECPTT	;;6969487
IBECPTZ	;;2766869
IBEF	;;2149816
IBEFCOP	;;1800588
IBEFUNC	;;2552428
IBEFUNC1	;;5309761
IBEFUNC2	;;2541763
IBEFUTL	;;7747735
IBEFUTL1	;;4273452
IBEMTBC	;;6354798
IBEMTF	;;7890309
IBEMTF1	;;5726092
IBEMTF2	;;5545891
IBEMTO	;;7101853
IBEMTO1	;;6889786
IBEPAR	;;12386948
IBEPAR1	;;2533964
IBERS	;;10932371
IBERS1	;;8824914
IBERS2	;;7044980
IBERS3	;;5817160
IBERSE	;;9487433
IBERSI	;;3820304
IBERSP	;;5307050
IBERSP1	;;4237227
IBESTAT	;;3068706
IBETIME	;;217627
IBOA31	;;7891797
IBOA32	;;2647903
IBOAMS	;;10363537
IBOBCC	;;4521115
IBOBCC1	;;3836641
IBOBCR6	;;4908726
IBOBCRT	;;1471152
IBOBL	;;7366044
IBOCHK	;;7187383
IBOCNC	;;3176152
IBOCNC1	;;7495773
IBOCNC2	;;8792370
IBOCOSI	;;5228030
