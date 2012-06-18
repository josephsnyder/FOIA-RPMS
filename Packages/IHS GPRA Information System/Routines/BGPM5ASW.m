BGPM5ASW ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON AUG 24, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;;BGPMU ASTHMA MEDS NDCS
 ;
 ; This routine loads Taxonomy BGPMU ASTHMA MEDS NDCS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00006011701 ")
 ;;547
 ;;21,"00006011715 ")
 ;;548
 ;;21,"00006011728 ")
 ;;549
 ;;21,"00006011731 ")
 ;;550
 ;;21,"00006011754 ")
 ;;551
 ;;21,"00006011780 ")
 ;;552
 ;;21,"00006027501 ")
 ;;553
 ;;21,"00006027515 ")
 ;;554
 ;;21,"00006027528 ")
 ;;555
 ;;21,"00006027531 ")
 ;;556
 ;;21,"00006027554 ")
 ;;557
 ;;21,"00006027582 ")
 ;;558
 ;;21,"00006071101 ")
 ;;559
 ;;21,"00006071115 ")
 ;;560
 ;;21,"00006071128 ")
 ;;561
 ;;21,"00006071131 ")
 ;;562
 ;;21,"00006071154 ")
 ;;563
 ;;21,"00006384114 ")
 ;;564
 ;;21,"00006384130 ")
 ;;565
 ;;21,"00034700470 ")
 ;;566
 ;;21,"00034700480 ")
 ;;567
 ;;21,"00034700680 ")
 ;;568
 ;;21,"00034710206 ")
 ;;569
 ;;21,"00034710280 ")
 ;;570
 ;;21,"00034710299 ")
 ;;571
 ;;21,"00054806311 ")
 ;;572
 ;;21,"00054806313 ")
 ;;573
 ;;21,"00054806321 ")
 ;;574
 ;;21,"00054816721 ")
 ;;575
 ;;21,"00054816723 ")
 ;;576
 ;;21,"00083016702 ")
 ;;577
 ;;21,"00083016776 ")
 ;;578
 ;;21,"00085020802 ")
 ;;579
 ;;21,"00085020901 ")
 ;;580
 ;;21,"00085061402 ")
 ;;581
 ;;21,"00085061403 ")
 ;;582
 ;;21,"00085113201 ")
 ;;583
 ;;21,"00085134101 ")
 ;;584
 ;;21,"00085134102 ")
 ;;585
 ;;21,"00085134103 ")
 ;;586
 ;;21,"00085134104 ")
 ;;587
 ;;21,"00085134105 ")
 ;;588
 ;;21,"00085140101 ")
 ;;589
 ;;21,"00085140201 ")
 ;;590
 ;;21,"00085180601 ")
 ;;591
 ;;21,"00087051260 ")
 ;;592
 ;;21,"00087051961 ")
 ;;593
 ;;21,"00089071020 ")
 ;;594
 ;;21,"00089079421 ")
 ;;595
 ;;21,"00089079423 ")
 ;;596
 ;;21,"00089079621 ")
 ;;597
 ;;21,"00089079721 ")
 ;;598
 ;;21,"00089079799 ")
 ;;599
 ;;21,"00089178902 ")
 ;;600
 ;;21,"00089178903 ")
 ;;601
 ;;21,"00089178904 ")
 ;;602
 ;;21,"00172439018 ")
 ;;603
 ;;21,"00172640544 ")
 ;;604
 ;;21,"00172640549 ")
 ;;605
 ;;21,"00172640649 ")
 ;;606
 ;;21,"00172640659 ")
 ;;607
 ;;21,"00173052000 ")
 ;;608
 ;;21,"00173052100 ")
 ;;609
 ;;21,"00173060001 ")
 ;;610
 ;;21,"00173060002 ")
 ;;611
 ;;21,"00173060101 ")
 ;;612
 ;;21,"00173060102 ")
 ;;613
 ;;21,"00173060202 ")
 ;;614
 ;;21,"00173068220 ")
 ;;615
 ;;21,"00173069500 ")
 ;;616
 ;;21,"00173069600 ")
 ;;617
 ;;21,"00173069700 ")
 ;;618
 ;;21,"00173071820 ")
 ;;619
 ;;21,"00173071860 ")
 ;;620
 ;;21,"00173071920 ")
 ;;621
 ;;21,"00173072020 ")
 ;;622
 ;;21,"00179036502 ")
 ;;623
 ;;21,"00179036530 ")
 ;;624
 ;;21,"00179036550 ")
 ;;625
 ;;21,"00179036560 ")
 ;;626
 ;;21,"00179104701 ")
 ;;627
 ;;21,"00179104702 ")
 ;;628
 ;;21,"00179104730 ")
 ;;629
 ;;21,"00179104750 ")
 ;;630
 ;;21,"00179142302 ")
 ;;631
 ;;21,"00179142370 ")
 ;;632
 ;;21,"00179154970 ")
 ;;633
 ;;21,"00179154971 ")
 ;;634
 ;;21,"00179154972 ")
 ;;635
 ;;21,"00182140089 ")
 ;;636
 ;;21,"00182601465 ")
 ;;637
 ;;21,"00186198804 ")
 ;;638
 ;;21,"00186198904 ")
 ;;639
 ;;21,"00247017110 ")
 ;;640
 ;;21,"00247017112 ")
 ;;641
 ;;21,"00247017130 ")
 ;;642
 ;;21,"00247017175 ")
 ;;643
 ;;21,"00247087020 ")
 ;;644
 ;;21,"00247189700 ")
 ;;645
 ;;21,"00247189730 ")
 ;;646
 ;;21,"00247189760 ")
 ;;647
 ;;21,"00247189777 ")
 ;;648
 ;;21,"00247189790 ")
 ;;649
 ;;21,"00247189800 ")
 ;;650
 ;;21,"00247189814 ")
 ;;651
 ;;21,"00247189830 ")
 ;;652
 ;;21,"00247189860 ")
 ;;653
 ;;21,"00247189877 ")
 ;;654
 ;;21,"00247189890 ")
 ;;655
 ;;21,"00247198830 ")
 ;;656
 ;;21,"00247200646 ")
 ;;657
 ;;21,"00247200673 ")
 ;;658
 ;;21,"00247200674 ")
 ;;659
 ;;21,"00247222472 ")
 ;;660
 ;;21,"00247222572 ")
 ;;661
 ;;21,"00247222672 ")
 ;;662
 ;;21,"00247222701 ")
 ;;663
 ;;21,"00258358101 ")
 ;;664
 ;;21,"00258358105 ")
 ;;665
 ;;21,"00258358110 ")
 ;;666
 ;;21,"00258362501 ")
 ;;667
 ;;21,"00258363401 ")
 ;;668
 ;;21,"00258363701 ")
 ;;669
 ;;21,"00258363801 ")
 ;;670
 ;;21,"00310040160 ")
 ;;671
 ;;21,"00310040260 ")
 ;;672
 ;;21,"00378699052 ")
 ;;673
 ;;21,"00378699058 ")
 ;;674
 ;;21,"00378699091 ")
 ;;675
 ;;21,"00378699093 ")
 ;;676
 ;;21,"00378699252 ")
 ;;677
 ;;21,"00430021424 ")
 ;;678
 ;;21,"00456067098 ")
 ;;679
 ;;21,"00456067099 ")
 ;;680
 ;;21,"00456067298 ")
 ;;681
 ;;21,"00456067299 ")
 ;;682
 ;;21,"00472075221 ")
 ;;683
 ;;21,"00472075260 ")
 ;;684
 ;;21,"00472083123 ")
 ;;685
 ;;21,"00472083125 ")
 ;;686
 ;;21,"00472083130 ")
 ;;687
 ;;21,"00472083160 ")
 ;;688
 ;;21,"00487760100 ")
 ;;689
 ;;21,"00487760101 ")
 ;;690
 ;;21,"00487950101 ")
 ;;691
 ;;21,"00487950102 ")
 ;;692
 ;;21,"00487950103 ")
 ;;693
 ;;21,"00487950125 ")
 ;;694
 ;;21,"00487950160 ")
 ;;695
 ;;21,"00487990102 ")
 ;;696
 ;;21,"00487990130 ")
 ;;697
 ;;21,"00487990401 ")
 ;;698
 ;;21,"00487990402 ")
 ;;699
 ;;21,"00487990425 ")
 ;;700
 ;;21,"00591346853 ")
 ;;701
 ;;21,"00591379730 ")
 ;;702
 ;;21,"00591379760 ")
 ;;703
 ;;21,"00591379783 ")
 ;;704
 ;;21,"00597001314 ")
 ;;705
 ;;21,"00603100540 ")
 ;;706
 ;;21,"00603594621 ")
 ;;707
 ;;21,"00603594628 ")
 ;;708
 ;;21,"00603594629 ")
 ;;709
 ;;21,"00603594632 ")
 ;;710
 ;;21,"00603595021 ")
 ;;711
 ;;21,"00603595121 ")
 ;;712
 ;;21,"00603595221 ")
 ;;713
 ;;21,"00615159039 ")
 ;;714
 ;;21,"00615561405 ")
 ;;715
 ;;21,"00615561431 ")
 ;;716
 ;;21,"00615561439 ")
 ;;717
 ;;21,"00677081701 ")
 ;;718
 ;;21,"00677081705 ")
 ;;719
 ;;21,"00677152122 ")
 ;;720
 ;;21,"00677152272 ")
 ;;721
 ;;21,"00801030000 ")
 ;;722
 ;;21,"00801234100 ")
 ;;723
 ;;21,"00801234200 ")
 ;;724
 ;;21,"00801234300 ")
 ;;725
 ;;21,"00904161280 ")
 ;;726
 ;;21,"00904588961 ")
 ;;727
 ;;21,"00904765855 ")
 ;;728
 ;;21,"00904773117 ")
 ;;729
 ;;21,"00904784760 ")
 ;;730
 ;;21,"00904784860 ")
 ;;731
 ;;21,"00904784960 ")
 ;;732
 ;;21,"10122090112 ")
 ;;1
 ;;21,"11014070003 ")
 ;;2
 ;;21,"11014070024 ")
 ;;3
 ;;21,"11014070036 ")
 ;;4
 ;;21,"11014070103 ")
 ;;5
 ;;21,"11014070124 ")
 ;;6
 ;;21,"11014070136 ")
 ;;7
 ;;21,"11014070203 ")
 ;;8
 ;;21,"11014070224 ")
 ;;9
 ;;21,"11014070236 ")
 ;;10
 ;;21,"11014070330 ")
 ;;11
 ;;21,"11014071025 ")
 ;;12
 ;;21,"11014071030 ")
 ;;13
 ;;21,"11014071060 ")
 ;;14
 ;;21,"11014074312 ")
 ;;15
 ;;21,"11014074360 ")
 ;;16
 ;;21,"11517316901 ")
 ;;17
 ;;21,"11517316902 ")
 ;;18
 ;;21,"11517316909 ")
 ;;19
 ;;21,"11517386901 ")
 ;;20
 ;;21,"11517386902 ")
 ;;21
 ;;21,"11822527801 ")
 ;;22
 ;;21,"12280004290 ")
 ;;23
 ;;21,"12525067501 ")
 ;;24
 ;;21,"12525067502 ")
 ;;25
 ;;21,"12525067599 ")
 ;;26
 ;;21,"12634082471 ")
 ;;27
 ;;21,"13411015101 ")
 ;;28
 ;;21,"13411015103 ")
 ;;29
 ;;21,"13411015106 ")
 ;;30
 ;;21,"13411015109 ")
 ;;31
 ;;21,"13411015115 ")
 ;;32
 ;;21,"13411016001 ")
 ;;33
 ;;21,"13411016003 ")
 ;;34
 ;;21,"13411016006 ")
 ;;35
 ;;21,"13411016009 ")
 ;;36
 ;;21,"13411016015 ")
 ;;37
 ;;21,"13411027702 ")
 ;;38
 ;;21,"16252009722 ")
 ;;39
 ;;21,"16252009733 ")
 ;;40
 ;;21,"16252009766 ")
 ;;41
 ;;21,"16571001101 ")
 ;;42
 ;;21,"16571001110 ")
 ;;43
 ;;21,"16590033908 ")
 ;;44
 ;;21,"17088003001 ")
 ;;45
 ;;21,"17270072101 ")
 ;;46
 ;;21,"17270072102 ")
 ;;47
 ;;21,"21695015324 ")
 ;;48
 ;;21,"21695019601 ")
 ;;49
 ;;21,"21695019701 ")
 ;;50
 ;;21,"21695019801 ")
 ;;51
 ;;21,"21695022130 ")
 ;;52
 ;;21,"21695024520 ")
 ;;53
 ;;21,"21695033225 ")
 ;;54
 ;;21,"21695036160 ")
 ;;55
 ;;21,"21695042308 ")
 ;;56
 ;;21,"21695056530 ")
 ;;57
 ;;21,"23490502001 ")
 ;;58
 ;;21,"23490502002 ")
 ;;59
 ;;21,"23490502003 ")
 ;;60
 ;;21,"23490502102 ")
 ;;61
 ;;21,"23490735501 ")
 ;;62
 ;;21,"23490754201 ")
 ;;63
 ;;21,"24208034720 ")
 ;;64
 ;;21,"24208037360 ")
 ;;65
 ;;21,"24208037362 ")
 ;;66
 ;;21,"24208037425 ")
 ;;67
 ;;21,"24208037460 ")
 ;;68
 ;;21,"24236043302 ")
 ;;69
 ;;21,"24236068502 ")
 ;;70
 ;;21,"24236086002 ")
 ;;71
 ;;21,"26053036601 ")
 ;;72
 ;;21,"29033000101 ")
 ;;73
 ;;21,"29033000105 ")
 ;;74
 ;;21,"35356009914 ")
 ;;75
 ;;21,"35356015701 ")
 ;;76
 ;;21,"35356016601 ")
 ;;77
 ;;21,"35356048903 ")
 ;;78
 ;;21,"35356049401 ")
 ;;79
 ;;21,"44100025101 ")
 ;;80
 ;;21,"44100025201 ")
 ;;81
 ;;21,"44514090336 ")
 ;;82
 ;;21,"44514090436 ")
 ;;83
 ;;21,"48692000404 ")
 ;;84
 ;;21,"48692000480 ")
 ;;85
 ;;21,"48879075221 ")
 ;;86
 ;;21,"48879075260 ")
 ;;87
 ;;21,"48879083123 ")
 ;;88
 ;;21,"48879083130 ")
 ;;89
 ;;21,"48879083160 ")
 ;;90
 ;;21,"49502010501 ")
 ;;91
 ;;21,"49502030317 ")
 ;;92
 ;;21,"49502030327 ")
 ;;93
 ;;21,"49502068900 ")
 ;;94
 ;;21,"49502068902 ")
 ;;95
 ;;21,"49502068912 ")
 ;;96
 ;;21,"49502068961 ")
 ;;97
 ;;21,"49502068985 ")
 ;;98
 ;;21,"49502069203 ")
 ;;99
 ;;21,"49502069303 ")
 ;;100
 ;;21,"49502069700 ")
 ;;101
 ;;21,"49502069703 ")
 ;;102
 ;;21,"49502069705 ")
 ;;103
 ;;21,"49502069724 ")
 ;;104
 ;;21,"49502069729 ")
 ;;105
 ;;21,"49502069730 ")
 ;;106
 ;;21,"49502069733 ")
 ;;107
 ;;21,"49502069760 ")
 ;;108
 ;;21,"49502069761 ")
 ;;109
 ;;21,"49502069785 ")
 ;;110
 ;;21,"49856080201 ")
 ;;111
 ;;21,"49999030028 ")
 ;;112
 ;;21,"49999034425 ")
 ;;113
 ;;21,"49999053330 ")
 ;;114
 ;;21,"49999053390 ")
 ;;115
 ;;21,"49999061401 ")
 ;;116
 ;;21,"49999081960 ")
 ;;117
 ;;21,"49999088430 ")
 ;;118
 ;;21,"49999088490 ")
 ;;119
 ;;21,"49999090767 ")
 ;;120
 ;;21,"49999092215 ")
 ;;121
 ;;21,"49999095230 ")
 ;;122
 ;;21,"49999098460 ")
 ;;123
 ;;21,"49999098560 ")
 ;;124
 ;;21,"49999099007 ")
 ;;125
 ;;21,"50111045901 ")
 ;;126
 ;;21,"50111045902 ")
 ;;127
 ;;21,"50111045903 ")
 ;;128
 ;;21,"50383074120 ")
 ;;129
 ;;21,"50383074225 ")
 ;;130
 ;;21,"50474010001 ")
 ;;131
 ;;21,"50474020001 ")
 ;;132
 ;;21,"50474020050 ")
 ;;133
 ;;21,"50474030001 ")
 ;;134
 ;;21,"50474030050 ")
 ;;135
 ;;21,"50474040001 ")
 ;;136
 ;;21,"50550033526 ")
 ;;137
 ;;21,"50550033550 ")
 ;;138
 ;;21,"51129087501 ")
 ;;139
 ;;21,"51129092801 ")
 ;;140
 ;;21,"51129138001 ")
 ;;141
 ;;21,"51129139801 ")
 ;;142
 ;;21,"51129147801 ")
 ;;143
 ;;21,"51129151901 ")
 ;;144
 ;;21,"51129153701 ")
 ;;145
 ;;21,"51129160401 ")
 ;;146
 ;;21,"51129166801 ")
 ;;147
 ;;21,"51129167001 ")
 ;;148
 ;;21,"51129183101 ")
 ;;149
 ;;21,"51129201601 ")
 ;;150
 ;;21,"51129291401 ")
 ;;151
 ;;21,"51129291402 ")
 ;;152
 ;;21,"51129317401 ")
 ;;153
 ;;21,"51129317402 ")
 ;;154
 ;;21,"51129700401 ")
 ;;155
 ;;21,"51655006724 ")
 ;;156
 ;;21,"51655006783 ")
 ;;157
 ;;21,"51655025624 ")
 ;;158
 ;;21,"51655025625 ")
 ;;159
 ;;21,"51655025676 ")
 ;;160
 ;;21,"51655025683 ")
 ;;161
 ;;21,"51655025724 ")
 ;;162
 ;;21,"51655025725 ")
 ;;163
 ;;21,"51655025750 ")
 ;;164
 ;;21,"51655025776 ")
 ;;165
 ;;21,"51655025783 ")
 ;;166
 ;;21,"51789067302 ")
 ;;167
 ;;21,"51789067303 ")
 ;;168
 ;;21,"51789067399 ")
 ;;169
 ;;21,"52959056901 ")
 ;;170
 ;;21,"52959074120 ")
 ;;171
 ;;21,"53002038210 ")
 ;;172
 ;
OTHER ; OTHER ROUTINES
 D ^BGPM5ASX
 D ^BGPM5ASY
 D ^BGPM5ASZ
 D ^BGPM5AT
 D ^BGPM5ATA
 D ^BGPM5ATB
 D ^BGPM5ATC
 D ^BGPM5ATD
 D ^BGPM5ATE
 Q
