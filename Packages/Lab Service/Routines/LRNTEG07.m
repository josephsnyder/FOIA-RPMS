LRNTEG07 ;ISC/XTSUMBLD KERNEL - Package checksum checker ;3070621.074623
 ;;5.2;LR;**1022**;September 20, 2007
 ;;7.3;3070621.074623
 S XT4="I 1",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
CONT F XT1=1:1 S XT2=$T(ROU+XT1) Q:XT2=""  S X=$P(XT2," ",1),XT3=$P(XT2,";",3) X XT4 I $T W !,X X ^%ZOSF("TEST") S:'$T XT3=0 X:XT3 ^%ZOSF("RSUM") W ?10,$S('XT3:"Routine not in UCI",XT3'=Y:"Calculated "_$C(7)_Y_", off by "_(Y-XT3),1:"ok")
 G CONT^LRNTEG08
 K %1,%2,%3,X,Y,XT1,XT2,XT3,XT4 Q
ONE S XT4="I $D(^UTILITY($J,X))",X=$T(+3) W !!,"Checksum routine created on ",$P(X,";",4)," by KERNEL V",$P(X,";",3),!
 W !,"Check a subset of routines:" K ^UTILITY($J) X ^%ZOSF("RSEL")
 W ! G CONT
ROU ;;
LRCAPAM1 ;;14373550
LRCAPAM2 ;;10018216
LRCAPAM3 ;;13685393
LRCAPAM4 ;;13272547
LRCAPAM5 ;;12121618
LRCAPAM6 ;;7634540
LRCAPAM7 ;;6657579
LRCAPAM8 ;;3530911
LRCAPAM9 ;;2661138
LRCAPAMP ;;5188587
LRCAPAUD ;;9823175
LRCAPBB ;;12275399
LRCAPD ;;9516457
LRCAPD2 ;;6086768
LRCAPDAR ;;7335453
LRCAPDL ;;2623493
LRCAPDSS ;;6167016
LRCAPES ;;12983266
LRCAPES1 ;;8132160
LRCAPF ;;9622392
LRCAPFDS ;;9829367
LRCAPMA ;;1796540
LRCAPMA1 ;;6006598
LRCAPMA2 ;;8890943
LRCAPMA3 ;;2646288
LRCAPML ;;1788809
LRCAPML1 ;;6234108
LRCAPML2 ;;6925406
LRCAPML3 ;;1746468
LRCAPMR ;;2647002
LRCAPMR1 ;;4037634
LRCAPMR2 ;;3096421
LRCAPPH ;;11758466
LRCAPPH1 ;;11462874
LRCAPPH2 ;;7911673
LRCAPPH3 ;;6688299
LRCAPPH4 ;;3223281
LRCAPPHX ;;5741281
LRCAPPNP ;;2985010
LRCAPR1 ;;9574923
LRCAPR1A ;;7619614
LRCAPR2 ;;8969473
LRCAPR3 ;;4930156
LRCAPR3A ;;9044389
LRCAPR4 ;;7383967
LRCAPS ;;39107
LRCAPTS ;;9177983
LRCAPTS1 ;;4437927
LRCAPU ;;2442234
LRCAPV ;;12916210
LRCAPV1 ;;12273641
LRCAPV11 ;;2932584
LRCAPV1A ;;2161944
LRCAPV1S ;;4482687
LRCAPV2 ;;9092192
LRCAPV3 ;;8445829
LRCAPVM ;;5298754
LRCE ;;14020950
LRCENDE1 ;;10979350
LRCENDEL ;;15616648
LRCHIV ;;15543454
LRCHIVD ;;9666097
LRCHIVE ;;6809575
LRCHIVK ;;2508515
LRCKF ;;4475136
LRCKF60 ;;11735300
LRCKF62 ;;1782317
LRCKF64 ;;18766354
LRCKF68 ;;14615104
LRCKF68A ;;25810817
LRCKF69 ;;4968047
LRCKFLA ;;9644063
LRCKFLAA ;;38355504
LRCKPTR ;;10397969
LRCONJAM ;;17680814
LRCYPCT ;;16378625
LRDAGE ;;1454485
LRDCOM ;;10474720
LRDIDLE0 ;;5527394
LRDIED ;;1199542
LRDIQ ;;10190025
LRDIST ;;16010340
LRDIST1 ;;15206281
LRDIST2 ;;6083655
LRDIST3 ;;2477949
LRDIST4 ;;10551154
LRDPA ;;7960268
LRDPA1 ;;7381205
LRDPA2 ;;5207850
LRDPAREF ;;5165392
LRDPAREX ;;7235402
LRDRAW ;;9361720
LREGFR ;;3965285
LREPI ;;14182167
LREPI1 ;;11822436
LREPI1A ;;5834647
LREPI2 ;;8491199
LREPI2A ;;7574864
LREPI3 ;;9184652
LREPI4 ;;1903453
LREPI5 ;;2408593
LREPIAK ;;3640656
LREPICY ;;4507109
LREPILK ;;3434732
LREPIPH ;;6144410
LREPIPI ;;5220624
LREPIRM ;;7566388
LREPIRP ;;20442264
LREPIRP1 ;;15133552
LREPIRP2 ;;3729823
LREPIRP3 ;;29061422
LREPIRP4 ;;1812384
LREPIRP5 ;;11788836
LREPIRP6 ;;25502070
LREPIRP7 ;;17171829
LREPIRP8 ;;8376752
LREPIRP9 ;;4718
LREPIRS ;;8576522
LREPIRS1 ;;16664999
LREPIRS2 ;;22133542
LREPIRS3 ;;16290972
LREPISRV ;;15211664
LREPISV1 ;;4805594
LREV ;;901069
LREVENT ;;3724323
LREXEC ;;1631777
LREXECU ;;2967541
LREXECU1 ;;13230877
LREXPD ;;5007603
LRFAC ;;10562093
LRFAST ;;20769281
LRFASTS ;;7163769
LRFIXAU ;;377653
LRFLAG ;;7749629
LRFNDLOC ;;2906839
LRGEN ;;7049819
LRGEN1 ;;8808950
LRGEN2 ;;16348366
LRGP ;;5857389
LRGP1 ;;4042797
LRGP2 ;;6417022
LRGV ;;7097430
LRGV1 ;;3157820
LRGV2 ;;3495698
LRGVG2 ;;4448496
LRGVGK ;;5961029
LRGVK ;;7743879
LRGVK1 ;;2404001
LRGVP ;;4593883
LRHDR ;;3531387
LRIGCOPY ;;5008498
LRIPOS ;;12438122
LRIPOS2 ;;3909009
LRIPOS3 ;;9873753
LRIPOS4 ;;3498628
LRIPOSXM ;;851592
LRIPRE ;;2008751
LRIPRE1 ;;9669927
LRIPRE2 ;;4550775
