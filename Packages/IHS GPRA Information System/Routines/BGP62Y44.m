BGP62Y44 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,23490-6068-05 ",.02)
 ;;23490-6068-05
 ;;9002226.02101,"868,23490-6069-07 ",.01)
 ;;23490-6069-07
 ;;9002226.02101,"868,23490-6069-07 ",.02)
 ;;23490-6069-07
 ;;9002226.02101,"868,23490-6070-01 ",.01)
 ;;23490-6070-01
 ;;9002226.02101,"868,23490-6070-01 ",.02)
 ;;23490-6070-01
 ;;9002226.02101,"868,23490-6070-02 ",.01)
 ;;23490-6070-02
 ;;9002226.02101,"868,23490-6070-02 ",.02)
 ;;23490-6070-02
 ;;9002226.02101,"868,23490-6070-03 ",.01)
 ;;23490-6070-03
 ;;9002226.02101,"868,23490-6070-03 ",.02)
 ;;23490-6070-03
 ;;9002226.02101,"868,23490-6070-04 ",.01)
 ;;23490-6070-04
 ;;9002226.02101,"868,23490-6070-04 ",.02)
 ;;23490-6070-04
 ;;9002226.02101,"868,23490-6070-05 ",.01)
 ;;23490-6070-05
 ;;9002226.02101,"868,23490-6070-05 ",.02)
 ;;23490-6070-05
 ;;9002226.02101,"868,23490-6070-06 ",.01)
 ;;23490-6070-06
 ;;9002226.02101,"868,23490-6070-06 ",.02)
 ;;23490-6070-06
 ;;9002226.02101,"868,23490-6352-00 ",.01)
 ;;23490-6352-00
 ;;9002226.02101,"868,23490-6352-00 ",.02)
 ;;23490-6352-00
 ;;9002226.02101,"868,23490-6352-01 ",.01)
 ;;23490-6352-01
 ;;9002226.02101,"868,23490-6352-01 ",.02)
 ;;23490-6352-01
 ;;9002226.02101,"868,23490-6352-02 ",.01)
 ;;23490-6352-02
 ;;9002226.02101,"868,23490-6352-02 ",.02)
 ;;23490-6352-02
 ;;9002226.02101,"868,23490-6352-03 ",.01)
 ;;23490-6352-03
 ;;9002226.02101,"868,23490-6352-03 ",.02)
 ;;23490-6352-03
 ;;9002226.02101,"868,23490-6352-04 ",.01)
 ;;23490-6352-04
 ;;9002226.02101,"868,23490-6352-04 ",.02)
 ;;23490-6352-04
 ;;9002226.02101,"868,23490-6352-05 ",.01)
 ;;23490-6352-05
 ;;9002226.02101,"868,23490-6352-05 ",.02)
 ;;23490-6352-05
 ;;9002226.02101,"868,23490-6352-06 ",.01)
 ;;23490-6352-06
 ;;9002226.02101,"868,23490-6352-06 ",.02)
 ;;23490-6352-06
 ;;9002226.02101,"868,23490-6352-07 ",.01)
 ;;23490-6352-07
 ;;9002226.02101,"868,23490-6352-07 ",.02)
 ;;23490-6352-07
 ;;9002226.02101,"868,23490-6352-08 ",.01)
 ;;23490-6352-08
 ;;9002226.02101,"868,23490-6352-08 ",.02)
 ;;23490-6352-08
 ;;9002226.02101,"868,23490-6353-01 ",.01)
 ;;23490-6353-01
 ;;9002226.02101,"868,23490-6353-01 ",.02)
 ;;23490-6353-01
 ;;9002226.02101,"868,23490-6353-02 ",.01)
 ;;23490-6353-02
 ;;9002226.02101,"868,23490-6353-02 ",.02)
 ;;23490-6353-02
 ;;9002226.02101,"868,23490-6353-03 ",.01)
 ;;23490-6353-03
 ;;9002226.02101,"868,23490-6353-03 ",.02)
 ;;23490-6353-03
 ;;9002226.02101,"868,23490-6353-04 ",.01)
 ;;23490-6353-04
 ;;9002226.02101,"868,23490-6353-04 ",.02)
 ;;23490-6353-04
 ;;9002226.02101,"868,23490-6353-05 ",.01)
 ;;23490-6353-05
 ;;9002226.02101,"868,23490-6353-05 ",.02)
 ;;23490-6353-05
 ;;9002226.02101,"868,23490-6353-07 ",.01)
 ;;23490-6353-07
 ;;9002226.02101,"868,23490-6353-07 ",.02)
 ;;23490-6353-07
 ;;9002226.02101,"868,23490-6448-00 ",.01)
 ;;23490-6448-00
 ;;9002226.02101,"868,23490-6448-00 ",.02)
 ;;23490-6448-00
 ;;9002226.02101,"868,23490-6448-01 ",.01)
 ;;23490-6448-01
 ;;9002226.02101,"868,23490-6448-01 ",.02)
 ;;23490-6448-01
 ;;9002226.02101,"868,23490-6448-02 ",.01)
 ;;23490-6448-02
 ;;9002226.02101,"868,23490-6448-02 ",.02)
 ;;23490-6448-02
 ;;9002226.02101,"868,23490-6448-03 ",.01)
 ;;23490-6448-03
 ;;9002226.02101,"868,23490-6448-03 ",.02)
 ;;23490-6448-03
 ;;9002226.02101,"868,23490-6448-04 ",.01)
 ;;23490-6448-04
 ;;9002226.02101,"868,23490-6448-04 ",.02)
 ;;23490-6448-04
 ;;9002226.02101,"868,23490-6448-05 ",.01)
 ;;23490-6448-05
 ;;9002226.02101,"868,23490-6448-05 ",.02)
 ;;23490-6448-05
 ;;9002226.02101,"868,23490-6448-06 ",.01)
 ;;23490-6448-06
 ;;9002226.02101,"868,23490-6448-06 ",.02)
 ;;23490-6448-06
 ;;9002226.02101,"868,23490-6448-07 ",.01)
 ;;23490-6448-07
 ;;9002226.02101,"868,23490-6448-07 ",.02)
 ;;23490-6448-07
 ;;9002226.02101,"868,23490-6448-08 ",.01)
 ;;23490-6448-08
 ;;9002226.02101,"868,23490-6448-08 ",.02)
 ;;23490-6448-08
 ;;9002226.02101,"868,23490-6448-09 ",.01)
 ;;23490-6448-09
 ;;9002226.02101,"868,23490-6448-09 ",.02)
 ;;23490-6448-09
 ;;9002226.02101,"868,23490-6449-01 ",.01)
 ;;23490-6449-01
 ;;9002226.02101,"868,23490-6449-01 ",.02)
 ;;23490-6449-01
 ;;9002226.02101,"868,23490-6449-02 ",.01)
 ;;23490-6449-02
 ;;9002226.02101,"868,23490-6449-02 ",.02)
 ;;23490-6449-02
 ;;9002226.02101,"868,23490-6449-03 ",.01)
 ;;23490-6449-03
 ;;9002226.02101,"868,23490-6449-03 ",.02)
 ;;23490-6449-03
 ;;9002226.02101,"868,23490-6449-04 ",.01)
 ;;23490-6449-04
 ;;9002226.02101,"868,23490-6449-04 ",.02)
 ;;23490-6449-04
 ;;9002226.02101,"868,23490-6449-05 ",.01)
 ;;23490-6449-05
 ;;9002226.02101,"868,23490-6449-05 ",.02)
 ;;23490-6449-05
 ;;9002226.02101,"868,23490-6904-01 ",.01)
 ;;23490-6904-01
 ;;9002226.02101,"868,23490-6904-01 ",.02)
 ;;23490-6904-01
 ;;9002226.02101,"868,23490-6905-00 ",.01)
 ;;23490-6905-00
 ;;9002226.02101,"868,23490-6905-00 ",.02)
 ;;23490-6905-00
 ;;9002226.02101,"868,23490-6905-01 ",.01)
 ;;23490-6905-01
 ;;9002226.02101,"868,23490-6905-01 ",.02)
 ;;23490-6905-01
 ;;9002226.02101,"868,23490-6905-02 ",.01)
 ;;23490-6905-02
 ;;9002226.02101,"868,23490-6905-02 ",.02)
 ;;23490-6905-02
 ;;9002226.02101,"868,23490-6940-00 ",.01)
 ;;23490-6940-00
 ;;9002226.02101,"868,23490-6940-00 ",.02)
 ;;23490-6940-00
 ;;9002226.02101,"868,23490-6940-01 ",.01)
 ;;23490-6940-01
 ;;9002226.02101,"868,23490-6940-01 ",.02)
 ;;23490-6940-01
 ;;9002226.02101,"868,23490-6940-02 ",.01)
 ;;23490-6940-02
 ;;9002226.02101,"868,23490-6940-02 ",.02)
 ;;23490-6940-02
 ;;9002226.02101,"868,23490-6940-03 ",.01)
 ;;23490-6940-03
 ;;9002226.02101,"868,23490-6940-03 ",.02)
 ;;23490-6940-03
 ;;9002226.02101,"868,23490-6977-01 ",.01)
 ;;23490-6977-01
 ;;9002226.02101,"868,23490-6977-01 ",.02)
 ;;23490-6977-01
 ;;9002226.02101,"868,23490-6979-00 ",.01)
 ;;23490-6979-00
 ;;9002226.02101,"868,23490-6979-00 ",.02)
 ;;23490-6979-00
 ;;9002226.02101,"868,23490-6979-01 ",.01)
 ;;23490-6979-01
 ;;9002226.02101,"868,23490-6979-01 ",.02)
 ;;23490-6979-01
 ;;9002226.02101,"868,23490-7012-00 ",.01)
 ;;23490-7012-00
 ;;9002226.02101,"868,23490-7012-00 ",.02)
 ;;23490-7012-00
 ;;9002226.02101,"868,23490-7032-02 ",.01)
 ;;23490-7032-02
 ;;9002226.02101,"868,23490-7032-02 ",.02)
 ;;23490-7032-02
 ;;9002226.02101,"868,23490-7075-08 ",.01)
 ;;23490-7075-08
 ;;9002226.02101,"868,23490-7075-08 ",.02)
 ;;23490-7075-08
 ;;9002226.02101,"868,23490-7220-03 ",.01)
 ;;23490-7220-03
 ;;9002226.02101,"868,23490-7220-03 ",.02)
 ;;23490-7220-03
 ;;9002226.02101,"868,23490-7311-01 ",.01)
 ;;23490-7311-01
 ;;9002226.02101,"868,23490-7311-01 ",.02)
 ;;23490-7311-01
 ;;9002226.02101,"868,23490-7312-01 ",.01)
 ;;23490-7312-01
 ;;9002226.02101,"868,23490-7312-01 ",.02)
 ;;23490-7312-01
 ;;9002226.02101,"868,23490-7585-01 ",.01)
 ;;23490-7585-01
 ;;9002226.02101,"868,23490-7585-01 ",.02)
 ;;23490-7585-01
 ;;9002226.02101,"868,23490-7585-02 ",.01)
 ;;23490-7585-02
 ;;9002226.02101,"868,23490-7585-02 ",.02)
 ;;23490-7585-02
 ;;9002226.02101,"868,23490-7585-03 ",.01)
 ;;23490-7585-03
 ;;9002226.02101,"868,23490-7585-03 ",.02)
 ;;23490-7585-03
 ;;9002226.02101,"868,23490-7664-01 ",.01)
 ;;23490-7664-01
 ;;9002226.02101,"868,23490-7664-01 ",.02)
 ;;23490-7664-01
 ;;9002226.02101,"868,23490-7758-01 ",.01)
 ;;23490-7758-01
 ;;9002226.02101,"868,23490-7758-01 ",.02)
 ;;23490-7758-01
 ;;9002226.02101,"868,23490-7760-01 ",.01)
 ;;23490-7760-01
 ;;9002226.02101,"868,23490-7760-01 ",.02)
 ;;23490-7760-01
 ;;9002226.02101,"868,23490-7760-02 ",.01)
 ;;23490-7760-02
 ;;9002226.02101,"868,23490-7760-02 ",.02)
 ;;23490-7760-02
 ;;9002226.02101,"868,23490-7843-01 ",.01)
 ;;23490-7843-01
 ;;9002226.02101,"868,23490-7843-01 ",.02)
 ;;23490-7843-01
 ;;9002226.02101,"868,23490-7843-02 ",.01)
 ;;23490-7843-02
 ;;9002226.02101,"868,23490-7843-02 ",.02)
 ;;23490-7843-02
 ;;9002226.02101,"868,23490-7843-07 ",.01)
 ;;23490-7843-07
 ;;9002226.02101,"868,23490-7843-07 ",.02)
 ;;23490-7843-07
 ;;9002226.02101,"868,23490-7950-00 ",.01)
 ;;23490-7950-00
 ;;9002226.02101,"868,23490-7950-00 ",.02)
 ;;23490-7950-00
 ;;9002226.02101,"868,23490-7950-02 ",.01)
 ;;23490-7950-02
 ;;9002226.02101,"868,23490-7950-02 ",.02)
 ;;23490-7950-02
 ;;9002226.02101,"868,23490-7961-01 ",.01)
 ;;23490-7961-01
 ;;9002226.02101,"868,23490-7961-01 ",.02)
 ;;23490-7961-01
 ;;9002226.02101,"868,23490-7961-02 ",.01)
 ;;23490-7961-02
 ;;9002226.02101,"868,23490-7961-02 ",.02)
 ;;23490-7961-02
 ;;9002226.02101,"868,23490-7961-03 ",.01)
 ;;23490-7961-03
 ;;9002226.02101,"868,23490-7961-03 ",.02)
 ;;23490-7961-03
 ;;9002226.02101,"868,23490-9260-00 ",.01)
 ;;23490-9260-00
 ;;9002226.02101,"868,23490-9260-00 ",.02)
 ;;23490-9260-00
 ;;9002226.02101,"868,23490-9260-01 ",.01)
 ;;23490-9260-01
 ;;9002226.02101,"868,23490-9260-01 ",.02)
 ;;23490-9260-01
 ;;9002226.02101,"868,23490-9260-03 ",.01)
 ;;23490-9260-03
 ;;9002226.02101,"868,23490-9260-03 ",.02)
 ;;23490-9260-03
 ;;9002226.02101,"868,23490-9260-05 ",.01)
 ;;23490-9260-05
 ;;9002226.02101,"868,23490-9260-05 ",.02)
 ;;23490-9260-05
 ;;9002226.02101,"868,23490-9367-01 ",.01)
 ;;23490-9367-01
 ;;9002226.02101,"868,23490-9367-01 ",.02)
 ;;23490-9367-01
 ;;9002226.02101,"868,23490-9367-02 ",.01)
 ;;23490-9367-02
 ;;9002226.02101,"868,23490-9367-02 ",.02)
 ;;23490-9367-02
 ;;9002226.02101,"868,24200-0602-04 ",.01)
 ;;24200-0602-04
 ;;9002226.02101,"868,24200-0602-04 ",.02)
 ;;24200-0602-04
 ;;9002226.02101,"868,24200-0603-69 ",.01)
 ;;24200-0603-69
 ;;9002226.02101,"868,24200-0603-69 ",.02)
 ;;24200-0603-69
 ;;9002226.02101,"868,24200-0604-04 ",.01)
 ;;24200-0604-04
 ;;9002226.02101,"868,24200-0604-04 ",.02)
 ;;24200-0604-04
 ;;9002226.02101,"868,24200-0605-50 ",.01)
 ;;24200-0605-50
 ;;9002226.02101,"868,24200-0605-50 ",.02)
 ;;24200-0605-50
 ;;9002226.02101,"868,24200-0605-60 ",.01)
 ;;24200-0605-60
 ;;9002226.02101,"868,24200-0605-60 ",.02)
 ;;24200-0605-60
 ;;9002226.02101,"868,24200-0630-03 ",.01)
 ;;24200-0630-03
 ;;9002226.02101,"868,24200-0630-03 ",.02)
 ;;24200-0630-03
 ;;9002226.02101,"868,24200-0631-03 ",.01)
 ;;24200-0631-03
 ;;9002226.02101,"868,24200-0631-03 ",.02)
 ;;24200-0631-03
 ;;9002226.02101,"868,24236-0167-02 ",.01)
 ;;24236-0167-02
 ;;9002226.02101,"868,24236-0167-02 ",.02)
 ;;24236-0167-02
 ;;9002226.02101,"868,24236-0167-05 ",.01)
 ;;24236-0167-05
 ;;9002226.02101,"868,24236-0167-05 ",.02)
 ;;24236-0167-05
 ;;9002226.02101,"868,24236-0167-24 ",.01)
 ;;24236-0167-24
 ;;9002226.02101,"868,24236-0167-24 ",.02)
 ;;24236-0167-24
 ;;9002226.02101,"868,24236-0167-28 ",.01)
 ;;24236-0167-28
 ;;9002226.02101,"868,24236-0167-28 ",.02)
 ;;24236-0167-28
 ;;9002226.02101,"868,24236-0707-05 ",.01)
 ;;24236-0707-05
 ;;9002226.02101,"868,24236-0707-05 ",.02)
 ;;24236-0707-05
 ;;9002226.02101,"868,24338-0100-13 ",.01)
 ;;24338-0100-13
 ;;9002226.02101,"868,24338-0100-13 ",.02)
 ;;24338-0100-13
 ;;9002226.02101,"868,24338-0102-13 ",.01)
 ;;24338-0102-13
 ;;9002226.02101,"868,24338-0102-13 ",.02)
 ;;24338-0102-13
 ;;9002226.02101,"868,24338-0104-13 ",.01)
 ;;24338-0104-13
 ;;9002226.02101,"868,24338-0104-13 ",.02)
 ;;24338-0104-13
 ;;9002226.02101,"868,24338-0106-20 ",.01)
 ;;24338-0106-20
 ;;9002226.02101,"868,24338-0106-20 ",.02)
 ;;24338-0106-20
 ;;9002226.02101,"868,24338-0110-13 ",.01)
 ;;24338-0110-13
 ;;9002226.02101,"868,24338-0110-13 ",.02)
 ;;24338-0110-13
 ;;9002226.02101,"868,24338-0112-60 ",.01)
 ;;24338-0112-60
 ;;9002226.02101,"868,24338-0112-60 ",.02)
 ;;24338-0112-60
 ;;9002226.02101,"868,24338-0114-13 ",.01)
 ;;24338-0114-13
 ;;9002226.02101,"868,24338-0114-13 ",.02)
 ;;24338-0114-13
 ;;9002226.02101,"868,24338-0120-13 ",.01)
 ;;24338-0120-13
 ;;9002226.02101,"868,24338-0120-13 ",.02)
 ;;24338-0120-13
 ;;9002226.02101,"868,24338-0122-13 ",.01)
 ;;24338-0122-13
