ATXXB207 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,BT21ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2200Z ",.01)
 ;;BT2200Z 
 ;;9002226.02101,"1804,BT2200Z ",.02)
 ;;BT2200Z 
 ;;9002226.02101,"1804,BT2200Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT220ZZ ",.01)
 ;;BT220ZZ 
 ;;9002226.02101,"1804,BT220ZZ ",.02)
 ;;BT220ZZ 
 ;;9002226.02101,"1804,BT220ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2210Z ",.01)
 ;;BT2210Z 
 ;;9002226.02101,"1804,BT2210Z ",.02)
 ;;BT2210Z 
 ;;9002226.02101,"1804,BT2210Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT221ZZ ",.01)
 ;;BT221ZZ 
 ;;9002226.02101,"1804,BT221ZZ ",.02)
 ;;BT221ZZ 
 ;;9002226.02101,"1804,BT221ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT22Y0Z ",.01)
 ;;BT22Y0Z 
 ;;9002226.02101,"1804,BT22Y0Z ",.02)
 ;;BT22Y0Z 
 ;;9002226.02101,"1804,BT22Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT22YZZ ",.01)
 ;;BT22YZZ 
 ;;9002226.02101,"1804,BT22YZZ ",.02)
 ;;BT22YZZ 
 ;;9002226.02101,"1804,BT22YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT22ZZZ ",.01)
 ;;BT22ZZZ 
 ;;9002226.02101,"1804,BT22ZZZ ",.02)
 ;;BT22ZZZ 
 ;;9002226.02101,"1804,BT22ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2300Z ",.01)
 ;;BT2300Z 
 ;;9002226.02101,"1804,BT2300Z ",.02)
 ;;BT2300Z 
 ;;9002226.02101,"1804,BT2300Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT230ZZ ",.01)
 ;;BT230ZZ 
 ;;9002226.02101,"1804,BT230ZZ ",.02)
 ;;BT230ZZ 
 ;;9002226.02101,"1804,BT230ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2310Z ",.01)
 ;;BT2310Z 
 ;;9002226.02101,"1804,BT2310Z ",.02)
 ;;BT2310Z 
 ;;9002226.02101,"1804,BT2310Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT231ZZ ",.01)
 ;;BT231ZZ 
 ;;9002226.02101,"1804,BT231ZZ ",.02)
 ;;BT231ZZ 
 ;;9002226.02101,"1804,BT231ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT23Y0Z ",.01)
 ;;BT23Y0Z 
 ;;9002226.02101,"1804,BT23Y0Z ",.02)
 ;;BT23Y0Z 
 ;;9002226.02101,"1804,BT23Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT23YZZ ",.01)
 ;;BT23YZZ 
 ;;9002226.02101,"1804,BT23YZZ ",.02)
 ;;BT23YZZ 
 ;;9002226.02101,"1804,BT23YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT23ZZZ ",.01)
 ;;BT23ZZZ 
 ;;9002226.02101,"1804,BT23ZZZ ",.02)
 ;;BT23ZZZ 
 ;;9002226.02101,"1804,BT23ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2900Z ",.01)
 ;;BT2900Z 
 ;;9002226.02101,"1804,BT2900Z ",.02)
 ;;BT2900Z 
 ;;9002226.02101,"1804,BT2900Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT290ZZ ",.01)
 ;;BT290ZZ 
 ;;9002226.02101,"1804,BT290ZZ ",.02)
 ;;BT290ZZ 
 ;;9002226.02101,"1804,BT290ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT2910Z ",.01)
 ;;BT2910Z 
 ;;9002226.02101,"1804,BT2910Z ",.02)
 ;;BT2910Z 
 ;;9002226.02101,"1804,BT2910Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT291ZZ ",.01)
 ;;BT291ZZ 
 ;;9002226.02101,"1804,BT291ZZ ",.02)
 ;;BT291ZZ 
 ;;9002226.02101,"1804,BT291ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT29Y0Z ",.01)
 ;;BT29Y0Z 
 ;;9002226.02101,"1804,BT29Y0Z ",.02)
 ;;BT29Y0Z 
 ;;9002226.02101,"1804,BT29Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT29YZZ ",.01)
 ;;BT29YZZ 
 ;;9002226.02101,"1804,BT29YZZ ",.02)
 ;;BT29YZZ 
 ;;9002226.02101,"1804,BT29YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT29ZZZ ",.01)
 ;;BT29ZZZ 
 ;;9002226.02101,"1804,BT29ZZZ ",.02)
 ;;BT29ZZZ 
 ;;9002226.02101,"1804,BT29ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT30Y0Z ",.01)
 ;;BT30Y0Z 
 ;;9002226.02101,"1804,BT30Y0Z ",.02)
 ;;BT30Y0Z 
 ;;9002226.02101,"1804,BT30Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT30YZZ ",.01)
 ;;BT30YZZ 
 ;;9002226.02101,"1804,BT30YZZ ",.02)
 ;;BT30YZZ 
 ;;9002226.02101,"1804,BT30YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT30ZZZ ",.01)
 ;;BT30ZZZ 
 ;;9002226.02101,"1804,BT30ZZZ ",.02)
 ;;BT30ZZZ 
 ;;9002226.02101,"1804,BT30ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT31Y0Z ",.01)
 ;;BT31Y0Z 
 ;;9002226.02101,"1804,BT31Y0Z ",.02)
 ;;BT31Y0Z 
 ;;9002226.02101,"1804,BT31Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT31YZZ ",.01)
 ;;BT31YZZ 
 ;;9002226.02101,"1804,BT31YZZ ",.02)
 ;;BT31YZZ 
 ;;9002226.02101,"1804,BT31YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT31ZZZ ",.01)
 ;;BT31ZZZ 
 ;;9002226.02101,"1804,BT31ZZZ ",.02)
 ;;BT31ZZZ 
 ;;9002226.02101,"1804,BT31ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT32Y0Z ",.01)
 ;;BT32Y0Z 
 ;;9002226.02101,"1804,BT32Y0Z ",.02)
 ;;BT32Y0Z 
 ;;9002226.02101,"1804,BT32Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT32YZZ ",.01)
 ;;BT32YZZ 
 ;;9002226.02101,"1804,BT32YZZ ",.02)
 ;;BT32YZZ 
 ;;9002226.02101,"1804,BT32YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT32ZZZ ",.01)
 ;;BT32ZZZ 
 ;;9002226.02101,"1804,BT32ZZZ ",.02)
 ;;BT32ZZZ 
 ;;9002226.02101,"1804,BT32ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT33Y0Z ",.01)
 ;;BT33Y0Z 
 ;;9002226.02101,"1804,BT33Y0Z ",.02)
 ;;BT33Y0Z 
 ;;9002226.02101,"1804,BT33Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT33YZZ ",.01)
 ;;BT33YZZ 
 ;;9002226.02101,"1804,BT33YZZ ",.02)
 ;;BT33YZZ 
 ;;9002226.02101,"1804,BT33YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT33ZZZ ",.01)
 ;;BT33ZZZ 
 ;;9002226.02101,"1804,BT33ZZZ ",.02)
 ;;BT33ZZZ 
 ;;9002226.02101,"1804,BT33ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT39Y0Z ",.01)
 ;;BT39Y0Z 
 ;;9002226.02101,"1804,BT39Y0Z ",.02)
 ;;BT39Y0Z 
 ;;9002226.02101,"1804,BT39Y0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,BT39YZZ ",.01)
 ;;BT39YZZ 
 ;;9002226.02101,"1804,BT39YZZ ",.02)
 ;;BT39YZZ 
 ;;9002226.02101,"1804,BT39YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT39ZZZ ",.01)
 ;;BT39ZZZ 
 ;;9002226.02101,"1804,BT39ZZZ ",.02)
 ;;BT39ZZZ 
 ;;9002226.02101,"1804,BT39ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT40ZZZ ",.01)
 ;;BT40ZZZ 
 ;;9002226.02101,"1804,BT40ZZZ ",.02)
 ;;BT40ZZZ 
 ;;9002226.02101,"1804,BT40ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT41ZZZ ",.01)
 ;;BT41ZZZ 
 ;;9002226.02101,"1804,BT41ZZZ ",.02)
 ;;BT41ZZZ 
 ;;9002226.02101,"1804,BT41ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT42ZZZ ",.01)
 ;;BT42ZZZ 
 ;;9002226.02101,"1804,BT42ZZZ ",.02)
 ;;BT42ZZZ 
 ;;9002226.02101,"1804,BT42ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT43ZZZ ",.01)
 ;;BT43ZZZ 
 ;;9002226.02101,"1804,BT43ZZZ ",.02)
 ;;BT43ZZZ 
 ;;9002226.02101,"1804,BT43ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT45ZZZ ",.01)
 ;;BT45ZZZ 
 ;;9002226.02101,"1804,BT45ZZZ ",.02)
 ;;BT45ZZZ 
 ;;9002226.02101,"1804,BT45ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT46ZZZ ",.01)
 ;;BT46ZZZ 
 ;;9002226.02101,"1804,BT46ZZZ ",.02)
 ;;BT46ZZZ 
 ;;9002226.02101,"1804,BT46ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT47ZZZ ",.01)
 ;;BT47ZZZ 
 ;;9002226.02101,"1804,BT47ZZZ ",.02)
 ;;BT47ZZZ 
 ;;9002226.02101,"1804,BT47ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT48ZZZ ",.01)
 ;;BT48ZZZ 
 ;;9002226.02101,"1804,BT48ZZZ ",.02)
 ;;BT48ZZZ 
 ;;9002226.02101,"1804,BT48ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT49ZZZ ",.01)
 ;;BT49ZZZ 
 ;;9002226.02101,"1804,BT49ZZZ ",.02)
 ;;BT49ZZZ 
 ;;9002226.02101,"1804,BT49ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BT4JZZZ ",.01)
 ;;BT4JZZZ 
 ;;9002226.02101,"1804,BT4JZZZ ",.02)
 ;;BT4JZZZ 
 ;;9002226.02101,"1804,BT4JZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU000ZZ ",.01)
 ;;BU000ZZ 
 ;;9002226.02101,"1804,BU000ZZ ",.02)
 ;;BU000ZZ 
 ;;9002226.02101,"1804,BU000ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU001ZZ ",.01)
 ;;BU001ZZ 
 ;;9002226.02101,"1804,BU001ZZ ",.02)
 ;;BU001ZZ 
 ;;9002226.02101,"1804,BU001ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU00YZZ ",.01)
 ;;BU00YZZ 
 ;;9002226.02101,"1804,BU00YZZ ",.02)
 ;;BU00YZZ 
 ;;9002226.02101,"1804,BU00YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU010ZZ ",.01)
 ;;BU010ZZ 
 ;;9002226.02101,"1804,BU010ZZ ",.02)
 ;;BU010ZZ 
 ;;9002226.02101,"1804,BU010ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU011ZZ ",.01)
 ;;BU011ZZ 
 ;;9002226.02101,"1804,BU011ZZ ",.02)
 ;;BU011ZZ 
 ;;9002226.02101,"1804,BU011ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU01YZZ ",.01)
 ;;BU01YZZ 
 ;;9002226.02101,"1804,BU01YZZ ",.02)
 ;;BU01YZZ 
 ;;9002226.02101,"1804,BU01YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU020ZZ ",.01)
 ;;BU020ZZ 
 ;;9002226.02101,"1804,BU020ZZ ",.02)
 ;;BU020ZZ 
 ;;9002226.02101,"1804,BU020ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU021ZZ ",.01)
 ;;BU021ZZ 
 ;;9002226.02101,"1804,BU021ZZ ",.02)
 ;;BU021ZZ 
 ;;9002226.02101,"1804,BU021ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU02YZZ ",.01)
 ;;BU02YZZ 
 ;;9002226.02101,"1804,BU02YZZ ",.02)
 ;;BU02YZZ 
 ;;9002226.02101,"1804,BU02YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU060ZZ ",.01)
 ;;BU060ZZ 
 ;;9002226.02101,"1804,BU060ZZ ",.02)
 ;;BU060ZZ 
 ;;9002226.02101,"1804,BU060ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU061ZZ ",.01)
 ;;BU061ZZ 
 ;;9002226.02101,"1804,BU061ZZ ",.02)
 ;;BU061ZZ 
 ;;9002226.02101,"1804,BU061ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU06YZZ ",.01)
 ;;BU06YZZ 
 ;;9002226.02101,"1804,BU06YZZ ",.02)
 ;;BU06YZZ 
 ;;9002226.02101,"1804,BU06YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU080ZZ ",.01)
 ;;BU080ZZ 
 ;;9002226.02101,"1804,BU080ZZ ",.02)
 ;;BU080ZZ 
 ;;9002226.02101,"1804,BU080ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU081ZZ ",.01)
 ;;BU081ZZ 
 ;;9002226.02101,"1804,BU081ZZ ",.02)
 ;;BU081ZZ 
 ;;9002226.02101,"1804,BU081ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU08YZZ ",.01)
 ;;BU08YZZ 
 ;;9002226.02101,"1804,BU08YZZ ",.02)
 ;;BU08YZZ 
 ;;9002226.02101,"1804,BU08YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU090ZZ ",.01)
 ;;BU090ZZ 
 ;;9002226.02101,"1804,BU090ZZ ",.02)
 ;;BU090ZZ 
 ;;9002226.02101,"1804,BU090ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU091ZZ ",.01)
 ;;BU091ZZ 
 ;;9002226.02101,"1804,BU091ZZ ",.02)
 ;;BU091ZZ 
 ;;9002226.02101,"1804,BU091ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU09YZZ ",.01)
 ;;BU09YZZ 
 ;;9002226.02101,"1804,BU09YZZ ",.02)
 ;;BU09YZZ 
 ;;9002226.02101,"1804,BU09YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU100ZZ ",.01)
 ;;BU100ZZ 
 ;;9002226.02101,"1804,BU100ZZ ",.02)
 ;;BU100ZZ 
 ;;9002226.02101,"1804,BU100ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU101ZZ ",.01)
 ;;BU101ZZ 
 ;;9002226.02101,"1804,BU101ZZ ",.02)
 ;;BU101ZZ 
 ;;9002226.02101,"1804,BU101ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU10YZZ ",.01)
 ;;BU10YZZ 
 ;;9002226.02101,"1804,BU10YZZ ",.02)
 ;;BU10YZZ 
 ;;9002226.02101,"1804,BU10YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU10ZZZ ",.01)
 ;;BU10ZZZ 
 ;;9002226.02101,"1804,BU10ZZZ ",.02)
 ;;BU10ZZZ 
 ;;9002226.02101,"1804,BU10ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU110ZZ ",.01)
 ;;BU110ZZ 
 ;;9002226.02101,"1804,BU110ZZ ",.02)
 ;;BU110ZZ 
 ;;9002226.02101,"1804,BU110ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU111ZZ ",.01)
 ;;BU111ZZ 
 ;;9002226.02101,"1804,BU111ZZ ",.02)
 ;;BU111ZZ 
 ;;9002226.02101,"1804,BU111ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU11YZZ ",.01)
 ;;BU11YZZ 
 ;;9002226.02101,"1804,BU11YZZ ",.02)
 ;;BU11YZZ 
 ;;9002226.02101,"1804,BU11YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU11ZZZ ",.01)
 ;;BU11ZZZ 
 ;;9002226.02101,"1804,BU11ZZZ ",.02)
 ;;BU11ZZZ 
 ;;9002226.02101,"1804,BU11ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU120ZZ ",.01)
 ;;BU120ZZ 
 ;;9002226.02101,"1804,BU120ZZ ",.02)
 ;;BU120ZZ 
 ;;9002226.02101,"1804,BU120ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU121ZZ ",.01)
 ;;BU121ZZ 
 ;;9002226.02101,"1804,BU121ZZ ",.02)
 ;;BU121ZZ 
 ;;9002226.02101,"1804,BU121ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU12YZZ ",.01)
 ;;BU12YZZ 
 ;;9002226.02101,"1804,BU12YZZ ",.02)
 ;;BU12YZZ 
 ;;9002226.02101,"1804,BU12YZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU12ZZZ ",.01)
 ;;BU12ZZZ 
 ;;9002226.02101,"1804,BU12ZZZ ",.02)
 ;;BU12ZZZ 
 ;;9002226.02101,"1804,BU12ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU160ZZ ",.01)
 ;;BU160ZZ 
 ;;9002226.02101,"1804,BU160ZZ ",.02)
 ;;BU160ZZ 
 ;;9002226.02101,"1804,BU160ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,BU161ZZ ",.01)
 ;;BU161ZZ 
 ;;9002226.02101,"1804,BU161ZZ ",.02)
 ;;BU161ZZ 
 ;;9002226.02101,"1804,BU161ZZ ",.03)
 ;;31
