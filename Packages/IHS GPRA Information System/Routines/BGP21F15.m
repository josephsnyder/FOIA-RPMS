BGP21F15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"65862-0087-01 ")
 ;;763
 ;;21,"65862-0087-30 ")
 ;;764
 ;;21,"65862-0142-01 ")
 ;;1018
 ;;21,"65862-0142-05 ")
 ;;1019
 ;;21,"65862-0143-01 ")
 ;;1092
 ;;21,"65862-0143-05 ")
 ;;1093
 ;;21,"65862-0144-01 ")
 ;;871
 ;;21,"65862-0144-05 ")
 ;;872
 ;;21,"65862-0145-01 ")
 ;;948
 ;;21,"65862-0145-05 ")
 ;;949
 ;;21,"65862-0168-01 ")
 ;;497
 ;;21,"65862-0168-99 ")
 ;;498
 ;;21,"65862-0169-01 ")
 ;;687
 ;;21,"65862-0169-99 ")
 ;;688
 ;;21,"65862-0170-01 ")
 ;;358
 ;;21,"65862-0170-99 ")
 ;;359
 ;;21,"66105-0994-03 ")
 ;;1810
 ;;21,"66105-0994-06 ")
 ;;1811
 ;;21,"66105-0994-10 ")
 ;;1812
 ;;21,"66105-0994-11 ")
 ;;1813
 ;;21,"66105-0994-15 ")
 ;;1814
 ;;21,"66105-0996-03 ")
 ;;1542
 ;;21,"66105-0996-06 ")
 ;;1543
 ;;21,"66105-0996-10 ")
 ;;1544
 ;;21,"66105-0996-11 ")
 ;;1545
 ;;21,"66105-0996-15 ")
 ;;1546
 ;;21,"66116-0239-30 ")
 ;;689
 ;;21,"66116-0421-30 ")
 ;;360
 ;;21,"66116-0455-30 ")
 ;;1547
 ;;21,"66116-0456-30 ")
 ;;1815
 ;;21,"66267-0029-30 ")
 ;;361
 ;;21,"66267-0029-60 ")
 ;;362
 ;;21,"66267-0029-90 ")
 ;;363
 ;;21,"66267-0029-91 ")
 ;;364
 ;;21,"66267-0029-92 ")
 ;;365
 ;;21,"66267-0030-60 ")
 ;;499
 ;;21,"66267-0031-30 ")
 ;;690
 ;;21,"66267-0346-30 ")
 ;;1548
 ;;21,"66267-0346-60 ")
 ;;1549
 ;;21,"66267-0346-90 ")
 ;;1550
 ;;21,"66267-0346-91 ")
 ;;1551
 ;;21,"66267-0346-92 ")
 ;;1552
 ;;21,"66267-0346-93 ")
 ;;1553
 ;;21,"66336-0125-60 ")
 ;;975
 ;;21,"66336-0126-60 ")
 ;;1038
 ;;21,"66336-0514-30 ")
 ;;1554
 ;;21,"66336-0514-60 ")
 ;;1555
 ;;21,"66336-0514-90 ")
 ;;1556
 ;;21,"66336-0523-30 ")
 ;;1816
 ;;21,"66336-0523-60 ")
 ;;1817
 ;;21,"66336-0523-90 ")
 ;;1818
 ;;21,"66336-0587-00 ")
 ;;500
 ;;21,"66336-0587-30 ")
 ;;501
 ;;21,"66336-0587-60 ")
 ;;502
 ;;21,"66336-0587-90 ")
 ;;503
 ;;21,"66336-0612-90 ")
 ;;93
 ;;21,"66336-0719-30 ")
 ;;691
 ;;21,"66336-0719-60 ")
 ;;692
 ;;21,"66336-0719-90 ")
 ;;693
 ;;21,"66336-0772-30 ")
 ;;873
 ;;21,"66336-0808-30 ")
 ;;1094
 ;;21,"66336-0808-60 ")
 ;;1095
 ;;21,"66336-0811-90 ")
 ;;58
 ;;21,"66336-0837-30 ")
 ;;950
 ;;21,"66336-0914-30 ")
 ;;366
 ;;21,"66336-0914-60 ")
 ;;367
 ;;21,"66336-0914-90 ")
 ;;368
 ;;21,"67253-0420-09 ")
 ;;391
 ;;21,"67253-0420-10 ")
 ;;504
 ;;21,"67253-0420-11 ")
 ;;505
 ;;21,"67253-0421-09 ")
 ;;544
 ;;21,"67253-0421-10 ")
 ;;694
 ;;21,"67253-0421-11 ")
 ;;695
 ;;21,"67253-0422-09 ")
 ;;266
 ;;21,"67253-0422-10 ")
 ;;369
 ;;21,"67253-0422-11 ")
 ;;370
 ;;21,"67286-4177-01 ")
 ;;232
 ;;21,"67286-4179-01 ")
 ;;248
 ;;21,"67544-0043-30 ")
 ;;1020
 ;;21,"67544-0043-53 ")
 ;;1021
 ;;21,"67544-0043-60 ")
 ;;1022
 ;;21,"67544-0043-80 ")
 ;;1023
 ;;21,"67544-0076-30 ")
 ;;1819
 ;;21,"67544-0076-45 ")
 ;;1820
 ;;21,"67544-0076-53 ")
 ;;1821
 ;;21,"67544-0076-60 ")
 ;;1822
 ;;21,"67544-0076-70 ")
 ;;1823
 ;;21,"67544-0076-73 ")
 ;;1824
 ;;21,"67544-0076-80 ")
 ;;1825
 ;;21,"67544-0076-86 ")
 ;;1826
 ;;21,"67544-0076-92 ")
 ;;1827
 ;;21,"67544-0076-94 ")
 ;;1828
 ;;21,"67544-0077-53 ")
 ;;1557
 ;;21,"67544-0077-60 ")
 ;;1558
 ;;21,"67544-0077-70 ")
 ;;1559
 ;;21,"67544-0077-80 ")
 ;;1560
 ;;21,"67544-0087-30 ")
 ;;696
 ;;21,"67544-0087-45 ")
 ;;697
 ;;21,"67544-0087-53 ")
 ;;698
 ;;21,"67544-0087-60 ")
 ;;699
 ;;21,"67544-0087-70 ")
 ;;700
 ;;21,"67544-0087-73 ")
 ;;701
 ;;21,"67544-0087-80 ")
 ;;702
 ;;21,"67544-0087-92 ")
 ;;703
 ;;21,"67544-0122-30 ")
 ;;1829
 ;;21,"67544-0122-45 ")
 ;;1830
 ;;21,"67544-0122-53 ")
 ;;1831
 ;;21,"67544-0122-60 ")
 ;;1832
 ;;21,"67544-0122-70 ")
 ;;1833
 ;;21,"67544-0122-73 ")
 ;;1834
 ;;21,"67544-0122-80 ")
 ;;1835
 ;;21,"67544-0122-86 ")
 ;;1836
 ;;21,"67544-0122-92 ")
 ;;1837
 ;;21,"67544-0130-30 ")
 ;;1561
 ;;21,"67544-0130-45 ")
 ;;1562
 ;;21,"67544-0130-53 ")
 ;;1563
 ;;21,"67544-0130-60 ")
 ;;1564
 ;;21,"67544-0130-70 ")
 ;;1565
 ;;21,"67544-0130-80 ")
 ;;1566
 ;;21,"67544-0143-30 ")
 ;;1096
 ;;21,"67544-0143-53 ")
 ;;1097
 ;;21,"67544-0143-60 ")
 ;;1098
 ;;21,"67544-0143-70 ")
 ;;1099
 ;;21,"67544-0143-80 ")
 ;;1100
 ;;21,"67544-0161-30 ")
 ;;506
 ;;21,"67544-0161-45 ")
 ;;507
 ;;21,"67544-0161-60 ")
 ;;508
 ;;21,"67544-0161-80 ")
 ;;509
 ;;21,"67544-0208-30 ")
 ;;951
 ;;21,"67544-0208-53 ")
 ;;952
 ;;21,"67544-0208-60 ")
 ;;953
 ;;21,"67544-0208-80 ")
 ;;954
 ;;21,"67544-0208-87 ")
 ;;955
 ;;21,"67544-0240-30 ")
 ;;510
 ;;21,"67544-0240-45 ")
 ;;511
 ;;21,"67544-0240-60 ")
 ;;512
 ;;21,"67544-0240-80 ")
 ;;513
 ;;21,"67544-0272-30 ")
 ;;1838
 ;;21,"67544-0272-45 ")
 ;;1839
 ;;21,"67544-0272-53 ")
 ;;1840
 ;;21,"67544-0272-60 ")
 ;;1841
 ;;21,"67544-0272-70 ")
 ;;1842
 ;;21,"67544-0272-73 ")
 ;;1843
 ;;21,"67544-0272-80 ")
 ;;1844
 ;;21,"67544-0272-86 ")
 ;;1845
 ;;21,"67544-0272-92 ")
 ;;1846
 ;;21,"67544-0272-94 ")
 ;;1847
 ;;21,"67544-0282-30 ")
 ;;1419
 ;;21,"67544-0282-45 ")
 ;;1420
 ;;21,"67544-0282-82 ")
 ;;1421
 ;;21,"67544-0282-99 ")
 ;;1422
