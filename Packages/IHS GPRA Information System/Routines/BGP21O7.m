BGP21O7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1204,00456-0672-99 ",.02)
 ;;00456-0672-99
 ;;9002226.02101,"1204,00456-4301-01 ",.01)
 ;;00456-4301-01
 ;;9002226.02101,"1204,00456-4301-01 ",.02)
 ;;00456-4301-01
 ;;9002226.02101,"1204,00456-4302-01 ",.01)
 ;;00456-4302-01
 ;;9002226.02101,"1204,00456-4302-01 ",.02)
 ;;00456-4302-01
 ;;9002226.02101,"1204,00456-4303-01 ",.01)
 ;;00456-4303-01
 ;;9002226.02101,"1204,00456-4303-01 ",.02)
 ;;00456-4303-01
 ;;9002226.02101,"1204,00456-4310-01 ",.01)
 ;;00456-4310-01
 ;;9002226.02101,"1204,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"1204,00456-4310-02 ",.01)
 ;;00456-4310-02
 ;;9002226.02101,"1204,00456-4310-02 ",.02)
 ;;00456-4310-02
 ;;9002226.02101,"1204,00456-4320-00 ",.01)
 ;;00456-4320-00
 ;;9002226.02101,"1204,00456-4320-00 ",.02)
 ;;00456-4320-00
 ;;9002226.02101,"1204,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"1204,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"1204,00456-4320-02 ",.01)
 ;;00456-4320-02
 ;;9002226.02101,"1204,00456-4320-02 ",.02)
 ;;00456-4320-02
 ;;9002226.02101,"1204,00456-4330-00 ",.01)
 ;;00456-4330-00
 ;;9002226.02101,"1204,00456-4330-00 ",.02)
 ;;00456-4330-00
 ;;9002226.02101,"1204,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"1204,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"1204,00456-4330-02 ",.01)
 ;;00456-4330-02
 ;;9002226.02101,"1204,00456-4330-02 ",.02)
 ;;00456-4330-02
 ;;9002226.02101,"1204,00456-4345-01 ",.01)
 ;;00456-4345-01
 ;;9002226.02101,"1204,00456-4345-01 ",.02)
 ;;00456-4345-01
 ;;9002226.02101,"1204,00490-0080-00 ",.01)
 ;;00490-0080-00
 ;;9002226.02101,"1204,00490-0080-00 ",.02)
 ;;00490-0080-00
 ;;9002226.02101,"1204,00490-0080-30 ",.01)
 ;;00490-0080-30
 ;;9002226.02101,"1204,00490-0080-30 ",.02)
 ;;00490-0080-30
 ;;9002226.02101,"1204,00490-0080-60 ",.01)
 ;;00490-0080-60
 ;;9002226.02101,"1204,00490-0080-60 ",.02)
 ;;00490-0080-60
 ;;9002226.02101,"1204,00490-0080-90 ",.01)
 ;;00490-0080-90
 ;;9002226.02101,"1204,00490-0080-90 ",.02)
 ;;00490-0080-90
 ;;9002226.02101,"1204,00585-0675-01 ",.01)
 ;;00585-0675-01
 ;;9002226.02101,"1204,00585-0675-01 ",.02)
 ;;00585-0675-01
 ;;9002226.02101,"1204,00585-0675-02 ",.01)
 ;;00585-0675-02
 ;;9002226.02101,"1204,00585-0675-02 ",.02)
 ;;00585-0675-02
 ;;9002226.02101,"1204,00585-0685-02 ",.01)
 ;;00585-0685-02
 ;;9002226.02101,"1204,00585-0685-02 ",.02)
 ;;00585-0685-02
 ;;9002226.02101,"1204,00603-5944-21 ",.01)
 ;;00603-5944-21
 ;;9002226.02101,"1204,00603-5944-21 ",.02)
 ;;00603-5944-21
 ;;9002226.02101,"1204,00603-5944-28 ",.01)
 ;;00603-5944-28
 ;;9002226.02101,"1204,00603-5944-28 ",.02)
 ;;00603-5944-28
 ;;9002226.02101,"1204,00603-5945-21 ",.01)
 ;;00603-5945-21
 ;;9002226.02101,"1204,00603-5945-21 ",.02)
 ;;00603-5945-21
 ;;9002226.02101,"1204,00603-5945-28 ",.01)
 ;;00603-5945-28
 ;;9002226.02101,"1204,00603-5945-28 ",.02)
 ;;00603-5945-28
 ;;9002226.02101,"1204,00603-5945-32 ",.01)
 ;;00603-5945-32
 ;;9002226.02101,"1204,00603-5945-32 ",.02)
 ;;00603-5945-32
 ;;9002226.02101,"1204,00603-5946-21 ",.01)
 ;;00603-5946-21
 ;;9002226.02101,"1204,00603-5946-21 ",.02)
 ;;00603-5946-21
 ;;9002226.02101,"1204,00603-5946-28 ",.01)
 ;;00603-5946-28
 ;;9002226.02101,"1204,00603-5946-28 ",.02)
 ;;00603-5946-28
 ;;9002226.02101,"1204,00603-5946-32 ",.01)
 ;;00603-5946-32
 ;;9002226.02101,"1204,00603-5946-32 ",.02)
 ;;00603-5946-32
 ;;9002226.02101,"1204,00603-5950-21 ",.01)
 ;;00603-5950-21
 ;;9002226.02101,"1204,00603-5950-21 ",.02)
 ;;00603-5950-21
 ;;9002226.02101,"1204,00603-5951-21 ",.01)
 ;;00603-5951-21
 ;;9002226.02101,"1204,00603-5951-21 ",.02)
 ;;00603-5951-21
 ;;9002226.02101,"1204,00603-5952-21 ",.01)
 ;;00603-5952-21
 ;;9002226.02101,"1204,00603-5952-21 ",.02)
 ;;00603-5952-21
 ;;9002226.02101,"1204,00677-0817-01 ",.01)
 ;;00677-0817-01
 ;;9002226.02101,"1204,00677-0817-01 ",.02)
 ;;00677-0817-01
 ;;9002226.02101,"1204,00677-0817-05 ",.01)
 ;;00677-0817-05
 ;;9002226.02101,"1204,00677-0817-05 ",.02)
 ;;00677-0817-05
 ;;9002226.02101,"1204,00677-0846-01 ",.01)
 ;;00677-0846-01
 ;;9002226.02101,"1204,00677-0846-01 ",.02)
 ;;00677-0846-01
 ;;9002226.02101,"1204,00677-0846-05 ",.01)
 ;;00677-0846-05
 ;;9002226.02101,"1204,00677-0846-05 ",.02)
 ;;00677-0846-05
 ;;9002226.02101,"1204,00904-1610-60 ",.01)
 ;;00904-1610-60
 ;;9002226.02101,"1204,00904-1610-60 ",.02)
 ;;00904-1610-60
 ;;9002226.02101,"1204,00904-1610-61 ",.01)
 ;;00904-1610-61
 ;;9002226.02101,"1204,00904-1610-61 ",.02)
 ;;00904-1610-61
 ;;9002226.02101,"1204,00904-1611-60 ",.01)
 ;;00904-1611-60
 ;;9002226.02101,"1204,00904-1611-60 ",.02)
 ;;00904-1611-60
 ;;9002226.02101,"1204,00904-1611-61 ",.01)
 ;;00904-1611-61
 ;;9002226.02101,"1204,00904-1611-61 ",.02)
 ;;00904-1611-61
 ;;9002226.02101,"1204,00904-1611-80 ",.01)
 ;;00904-1611-80
 ;;9002226.02101,"1204,00904-1611-80 ",.02)
 ;;00904-1611-80
 ;;9002226.02101,"1204,00904-1612-40 ",.01)
 ;;00904-1612-40
 ;;9002226.02101,"1204,00904-1612-40 ",.02)
 ;;00904-1612-40
 ;;9002226.02101,"1204,00904-1612-60 ",.01)
 ;;00904-1612-60
 ;;9002226.02101,"1204,00904-1612-60 ",.02)
 ;;00904-1612-60
 ;;9002226.02101,"1204,00904-1612-61 ",.01)
 ;;00904-1612-61
 ;;9002226.02101,"1204,00904-1612-61 ",.02)
 ;;00904-1612-61
