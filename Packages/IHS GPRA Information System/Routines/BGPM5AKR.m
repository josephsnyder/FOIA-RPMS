BGPM5AKR ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"885,00078010308 ",.02)
 ;;00078010308
 ;;9002226.02101,"885,00084004615 ",.01)
 ;;00084004615
 ;;9002226.02101,"885,00084004615 ",.02)
 ;;00084004615
 ;;9002226.02101,"885,00084005701 ",.01)
 ;;00084005701
 ;;9002226.02101,"885,00084005701 ",.02)
 ;;00084005701
 ;;9002226.02101,"885,00084005718 ",.01)
 ;;00084005718
 ;;9002226.02101,"885,00084005718 ",.02)
 ;;00084005718
 ;;9002226.02101,"885,00084007314 ",.01)
 ;;00084007314
 ;;9002226.02101,"885,00084007314 ",.02)
 ;;00084007314
 ;;9002226.02101,"885,00084040803 ",.01)
 ;;00084040803
 ;;9002226.02101,"885,00084040803 ",.02)
 ;;00084040803
 ;;9002226.02101,"885,00084040814 ",.01)
 ;;00084040814
 ;;9002226.02101,"885,00084040814 ",.02)
 ;;00084040814
 ;;9002226.02101,"885,00084040816 ",.01)
 ;;00084040816
 ;;9002226.02101,"885,00084040816 ",.02)
 ;;00084040816
 ;;9002226.02101,"885,00113025968 ",.01)
 ;;00113025968
 ;;9002226.02101,"885,00113025968 ",.02)
 ;;00113025968
 ;;9002226.02101,"885,00113027468 ",.01)
 ;;00113027468
 ;;9002226.02101,"885,00113027468 ",.02)
 ;;00113027468
 ;;9002226.02101,"885,00113027748 ",.01)
 ;;00113027748
 ;;9002226.02101,"885,00113027748 ",.02)
 ;;00113027748
 ;;9002226.02101,"885,00113037462 ",.01)
 ;;00113037462
 ;;9002226.02101,"885,00113037462 ",.02)
 ;;00113037462
 ;;9002226.02101,"885,00113038171 ",.01)
 ;;00113038171
 ;;9002226.02101,"885,00113038171 ",.02)
 ;;00113038171
 ;;9002226.02101,"885,00113038178 ",.01)
 ;;00113038178
 ;;9002226.02101,"885,00113038178 ",.02)
 ;;00113038178
 ;;9002226.02101,"885,00113041178 ",.01)
 ;;00113041178
 ;;9002226.02101,"885,00113041178 ",.02)
 ;;00113041178
 ;;9002226.02101,"885,00113041187 ",.01)
 ;;00113041187
 ;;9002226.02101,"885,00113041187 ",.02)
 ;;00113041187
 ;;9002226.02101,"885,00113041190 ",.01)
 ;;00113041190
 ;;9002226.02101,"885,00113041190 ",.02)
 ;;00113041190
 ;;9002226.02101,"885,00113041578 ",.01)
 ;;00113041578
 ;;9002226.02101,"885,00113041578 ",.02)
 ;;00113041578
 ;;9002226.02101,"885,00113041660 ",.01)
 ;;00113041660
 ;;9002226.02101,"885,00113041660 ",.02)
 ;;00113041660
 ;;9002226.02101,"885,00113041678 ",.01)
 ;;00113041678
 ;;9002226.02101,"885,00113041678 ",.02)
 ;;00113041678
 ;;9002226.02101,"885,00113041687 ",.01)
 ;;00113041687
 ;;9002226.02101,"885,00113041687 ",.02)
 ;;00113041687
 ;;9002226.02101,"885,00113041693 ",.01)
 ;;00113041693
 ;;9002226.02101,"885,00113041693 ",.02)
 ;;00113041693
 ;;9002226.02101,"885,00113042168 ",.01)
 ;;00113042168
 ;;9002226.02101,"885,00113042168 ",.02)
 ;;00113042168
 ;;9002226.02101,"885,00113043078 ",.01)
 ;;00113043078
 ;;9002226.02101,"885,00113043078 ",.02)
 ;;00113043078
 ;;9002226.02101,"885,00113046708 ",.01)
 ;;00113046708
 ;;9002226.02101,"885,00113046708 ",.02)
 ;;00113046708
 ;;9002226.02101,"885,00113046768 ",.01)
 ;;00113046768
 ;;9002226.02101,"885,00113046768 ",.02)
 ;;00113046768
 ;;9002226.02101,"885,00113053576 ",.01)
 ;;00113053576
 ;;9002226.02101,"885,00113053576 ",.02)
 ;;00113053576
 ;;9002226.02101,"885,00113141182 ",.01)
 ;;00113141182
 ;;9002226.02101,"885,00113141182 ",.02)
 ;;00113141182
 ;;9002226.02101,"885,00122080166 ",.01)
 ;;00122080166
 ;;9002226.02101,"885,00122080166 ",.02)
 ;;00122080166
 ;;9002226.02101,"885,00122082166 ",.01)
 ;;00122082166
 ;;9002226.02101,"885,00122082166 ",.02)
 ;;00122082166
 ;;9002226.02101,"885,00122085066 ",.01)
 ;;00122085066
 ;;9002226.02101,"885,00122085066 ",.02)
 ;;00122085066
 ;;9002226.02101,"885,00122086266 ",.01)
 ;;00122086266
 ;;9002226.02101,"885,00122086266 ",.02)
 ;;00122086266
 ;;9002226.02101,"885,00135001427 ",.01)
 ;;00135001427
 ;;9002226.02101,"885,00135001427 ",.02)
 ;;00135001427
 ;;9002226.02101,"885,00135001430 ",.01)
 ;;00135001430
 ;;9002226.02101,"885,00135001430 ",.02)
 ;;00135001430
 ;;9002226.02101,"885,00135001624 ",.01)
 ;;00135001624
 ;;9002226.02101,"885,00135001624 ",.02)
 ;;00135001624
 ;;9002226.02101,"885,00135011701 ",.01)
 ;;00135011701
 ;;9002226.02101,"885,00135011701 ",.02)
 ;;00135011701
 ;;9002226.02101,"885,00135011702 ",.01)
 ;;00135011702
 ;;9002226.02101,"885,00135011702 ",.02)
 ;;00135011702
 ;;9002226.02101,"885,00135011703 ",.01)
 ;;00135011703
 ;;9002226.02101,"885,00135011703 ",.02)
 ;;00135011703
 ;;9002226.02101,"885,00135011788 ",.01)
 ;;00135011788
 ;;9002226.02101,"885,00135011788 ",.02)
 ;;00135011788
 ;;9002226.02101,"885,00143178501 ",.01)
 ;;00143178501
 ;;9002226.02101,"885,00143178501 ",.02)
 ;;00143178501
 ;;9002226.02101,"885,00143178505 ",.01)
 ;;00143178505
 ;;9002226.02101,"885,00143178505 ",.02)
 ;;00143178505
 ;;9002226.02101,"885,00143178510 ",.01)
 ;;00143178510
 ;;9002226.02101,"885,00143178510 ",.02)
 ;;00143178510
 ;;9002226.02101,"885,00143178525 ",.01)
 ;;00143178525
 ;;9002226.02101,"885,00143178525 ",.02)
 ;;00143178525
 ;;9002226.02101,"885,00143178530 ",.01)
 ;;00143178530
 ;;9002226.02101,"885,00143178530 ",.02)
 ;;00143178530
 ;;9002226.02101,"885,00143178550 ",.01)
 ;;00143178550
 ;;9002226.02101,"885,00143178550 ",.02)
 ;;00143178550
 ;;9002226.02101,"885,00149009311 ",.01)
 ;;00149009311
 ;;9002226.02101,"885,00149009311 ",.02)
 ;;00149009311
 ;;9002226.02101,"885,00179104201 ",.01)
 ;;00179104201
 ;;9002226.02101,"885,00179104201 ",.02)
 ;;00179104201
 ;;9002226.02101,"885,00179104230 ",.01)
 ;;00179104230
 ;;9002226.02101,"885,00179104230 ",.02)
 ;;00179104230
 ;;9002226.02101,"885,00179104250 ",.01)
 ;;00179104250
 ;;9002226.02101,"885,00179104250 ",.02)
 ;;00179104250
 ;;9002226.02101,"885,00179104260 ",.01)
 ;;00179104260
 ;;9002226.02101,"885,00179104260 ",.02)
 ;;00179104260
 ;;9002226.02101,"885,00179104290 ",.01)
 ;;00179104290
 ;;9002226.02101,"885,00179104290 ",.02)
 ;;00179104290
 ;;9002226.02101,"885,00179163770 ",.01)
 ;;00179163770
 ;;9002226.02101,"885,00179163770 ",.02)
 ;;00179163770
 ;;9002226.02101,"885,00179163771 ",.01)
 ;;00179163771
 ;;9002226.02101,"885,00179163771 ",.02)
 ;;00179163771
 ;;9002226.02101,"885,00179163772 ",.01)
 ;;00179163772
 ;;9002226.02101,"885,00179163772 ",.02)
 ;;00179163772
 ;;9002226.02101,"885,00179178870 ",.01)
 ;;00179178870
 ;;9002226.02101,"885,00179178870 ",.02)
 ;;00179178870
 ;;9002226.02101,"885,00179178871 ",.01)
 ;;00179178871
 ;;9002226.02101,"885,00179178871 ",.02)
 ;;00179178871
 ;;9002226.02101,"885,00179178872 ",.01)
 ;;00179178872
 ;;9002226.02101,"885,00179178872 ",.02)
 ;;00179178872
 ;;9002226.02101,"885,00179185470 ",.01)
 ;;00179185470
 ;;9002226.02101,"885,00179185470 ",.02)
 ;;00179185470
 ;;9002226.02101,"885,00179185471 ",.01)
 ;;00179185471
 ;;9002226.02101,"885,00179185471 ",.02)
 ;;00179185471
 ;;9002226.02101,"885,00179185472 ",.01)
 ;;00179185472
 ;;9002226.02101,"885,00179185472 ",.02)
 ;;00179185472
 ;;9002226.02101,"885,00182026611 ",.01)
 ;;00182026611
 ;;9002226.02101,"885,00182026611 ",.02)
 ;;00182026611
 ;;9002226.02101,"885,00182044401 ",.01)
 ;;00182044401
 ;;9002226.02101,"885,00182044401 ",.02)
 ;;00182044401
 ;;9002226.02101,"885,00182044410 ",.01)
 ;;00182044410
 ;;9002226.02101,"885,00182044410 ",.02)
 ;;00182044410
 ;;9002226.02101,"885,00182044801 ",.01)
 ;;00182044801
 ;;9002226.02101,"885,00182044801 ",.02)
 ;;00182044801
 ;;9002226.02101,"885,00182044810 ",.01)
 ;;00182044810
 ;;9002226.02101,"885,00182044810 ",.02)
 ;;00182044810
 ;;9002226.02101,"885,00182044901 ",.01)
 ;;00182044901
 ;;9002226.02101,"885,00182044901 ",.02)
 ;;00182044901
 ;;9002226.02101,"885,00182105801 ",.01)
 ;;00182105801
 ;;9002226.02101,"885,00182105801 ",.02)
 ;;00182105801
 ;;9002226.02101,"885,00182106105 ",.01)
 ;;00182106105
 ;;9002226.02101,"885,00182106105 ",.02)
 ;;00182106105
 ;;9002226.02101,"885,00182106107 ",.01)
 ;;00182106107
 ;;9002226.02101,"885,00182106107 ",.02)
 ;;00182106107
 ;;9002226.02101,"885,00182142095 ",.01)
 ;;00182142095
 ;;9002226.02101,"885,00182142095 ",.02)
 ;;00182142095
 ;;9002226.02101,"885,00182163101 ",.01)
 ;;00182163101
 ;;9002226.02101,"885,00182163101 ",.02)
 ;;00182163101
 ;;9002226.02101,"885,00182190901 ",.01)
 ;;00182190901
 ;;9002226.02101,"885,00182190901 ",.02)
 ;;00182190901
 ;;9002226.02101,"885,00182190910 ",.01)
 ;;00182190910
 ;;9002226.02101,"885,00182190910 ",.02)
 ;;00182190910
 ;;9002226.02101,"885,00182821789 ",.01)
 ;;00182821789
 ;;9002226.02101,"885,00182821789 ",.02)
 ;;00182821789
 ;;9002226.02101,"885,00228202310 ",.01)
 ;;00228202310
 ;;9002226.02101,"885,00228202310 ",.02)
 ;;00228202310
 ;;9002226.02101,"885,00247021400 ",.01)
 ;;00247021400
 ;;9002226.02101,"885,00247021400 ",.02)
 ;;00247021400
 ;;9002226.02101,"885,00247021409 ",.01)
 ;;00247021409
 ;;9002226.02101,"885,00247021409 ",.02)
 ;;00247021409
 ;;9002226.02101,"885,00247021410 ",.01)
 ;;00247021410
 ;;9002226.02101,"885,00247021410 ",.02)
 ;;00247021410
 ;;9002226.02101,"885,00247021428 ",.01)
 ;;00247021428
 ;;9002226.02101,"885,00247021428 ",.02)
 ;;00247021428
 ;;9002226.02101,"885,00247060601 ",.01)
 ;;00247060601
 ;;9002226.02101,"885,00247060601 ",.02)
 ;;00247060601
 ;;9002226.02101,"885,00247060610 ",.01)
 ;;00247060610
 ;;9002226.02101,"885,00247060610 ",.02)
 ;;00247060610
 ;;9002226.02101,"885,00247060625 ",.01)
 ;;00247060625
 ;;9002226.02101,"885,00247060625 ",.02)
 ;;00247060625
 ;;9002226.02101,"885,00247060640 ",.01)
 ;;00247060640
 ;;9002226.02101,"885,00247060640 ",.02)
 ;;00247060640
 ;;9002226.02101,"885,00247082700 ",.01)
 ;;00247082700
 ;;9002226.02101,"885,00247082700 ",.02)
 ;;00247082700
 ;;9002226.02101,"885,00247082712 ",.01)
 ;;00247082712
 ;;9002226.02101,"885,00247082712 ",.02)
 ;;00247082712
 ;;9002226.02101,"885,00247082725 ",.01)
 ;;00247082725
 ;;9002226.02101,"885,00247082725 ",.02)
 ;;00247082725
 ;;9002226.02101,"885,00247119100 ",.01)
 ;;00247119100
 ;;9002226.02101,"885,00247119100 ",.02)
 ;;00247119100
 ;;9002226.02101,"885,00247119101 ",.01)
 ;;00247119101
 ;;9002226.02101,"885,00247119101 ",.02)
 ;;00247119101
 ;;9002226.02101,"885,00247119103 ",.01)
 ;;00247119103
 ;;9002226.02101,"885,00247119103 ",.02)
 ;;00247119103
 ;;9002226.02101,"885,00247119124 ",.01)
 ;;00247119124
 ;;9002226.02101,"885,00247119124 ",.02)
 ;;00247119124
 ;;9002226.02101,"885,00247119130 ",.01)
 ;;00247119130
 ;;9002226.02101,"885,00247119130 ",.02)
 ;;00247119130
 ;;9002226.02101,"885,00247131312 ",.01)
 ;;00247131312
 ;;9002226.02101,"885,00247131312 ",.02)
 ;;00247131312
 ;;9002226.02101,"885,00247131330 ",.01)
 ;;00247131330
 ;;9002226.02101,"885,00247131330 ",.02)
 ;;00247131330
 ;;9002226.02101,"885,00247187400 ",.01)
 ;;00247187400
 ;;9002226.02101,"885,00247187400 ",.02)
 ;;00247187400
 ;;9002226.02101,"885,00247187430 ",.01)
 ;;00247187430
 ;;9002226.02101,"885,00247187430 ",.02)
 ;;00247187430
 ;;9002226.02101,"885,00247187460 ",.01)
 ;;00247187460
 ;;9002226.02101,"885,00247187460 ",.02)
 ;;00247187460
 ;;9002226.02101,"885,00247187477 ",.01)
 ;;00247187477
 ;;9002226.02101,"885,00247187477 ",.02)
 ;;00247187477
 ;;9002226.02101,"885,00247187490 ",.01)
 ;;00247187490
 ;;9002226.02101,"885,00247187490 ",.02)
 ;;00247187490
 ;;9002226.02101,"885,00247211830 ",.01)
 ;;00247211830
 ;;9002226.02101,"885,00247211830 ",.02)
 ;;00247211830
 ;;9002226.02101,"885,00247215000 ",.01)
 ;;00247215000
 ;;9002226.02101,"885,00247215000 ",.02)
 ;;00247215000
 ;;9002226.02101,"885,00247215030 ",.01)
 ;;00247215030
 ;;9002226.02101,"885,00247215030 ",.02)
 ;;00247215030
 ;;9002226.02101,"885,00280200010 ",.01)
 ;;00280200010
 ;;9002226.02101,"885,00280200010 ",.02)
 ;;00280200010
 ;;9002226.02101,"885,00280200051 ",.01)
 ;;00280200051
