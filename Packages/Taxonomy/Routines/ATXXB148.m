ATXXB148 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0YW940Z ",.01)
 ;;0YW940Z 
 ;;9002226.02101,"1804,0YW940Z ",.02)
 ;;0YW940Z 
 ;;9002226.02101,"1804,0YW940Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW943Z ",.01)
 ;;0YW943Z 
 ;;9002226.02101,"1804,0YW943Z ",.02)
 ;;0YW943Z 
 ;;9002226.02101,"1804,0YW943Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW947Z ",.01)
 ;;0YW947Z 
 ;;9002226.02101,"1804,0YW947Z ",.02)
 ;;0YW947Z 
 ;;9002226.02101,"1804,0YW947Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW94JZ ",.01)
 ;;0YW94JZ 
 ;;9002226.02101,"1804,0YW94JZ ",.02)
 ;;0YW94JZ 
 ;;9002226.02101,"1804,0YW94JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW94KZ ",.01)
 ;;0YW94KZ 
 ;;9002226.02101,"1804,0YW94KZ ",.02)
 ;;0YW94KZ 
 ;;9002226.02101,"1804,0YW94KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW94YZ ",.01)
 ;;0YW94YZ 
 ;;9002226.02101,"1804,0YW94YZ ",.02)
 ;;0YW94YZ 
 ;;9002226.02101,"1804,0YW94YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9X0Z ",.01)
 ;;0YW9X0Z 
 ;;9002226.02101,"1804,0YW9X0Z ",.02)
 ;;0YW9X0Z 
 ;;9002226.02101,"1804,0YW9X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9X3Z ",.01)
 ;;0YW9X3Z 
 ;;9002226.02101,"1804,0YW9X3Z ",.02)
 ;;0YW9X3Z 
 ;;9002226.02101,"1804,0YW9X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9X7Z ",.01)
 ;;0YW9X7Z 
 ;;9002226.02101,"1804,0YW9X7Z ",.02)
 ;;0YW9X7Z 
 ;;9002226.02101,"1804,0YW9X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9XJZ ",.01)
 ;;0YW9XJZ 
 ;;9002226.02101,"1804,0YW9XJZ ",.02)
 ;;0YW9XJZ 
 ;;9002226.02101,"1804,0YW9XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9XKZ ",.01)
 ;;0YW9XKZ 
 ;;9002226.02101,"1804,0YW9XKZ ",.02)
 ;;0YW9XKZ 
 ;;9002226.02101,"1804,0YW9XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW9XYZ ",.01)
 ;;0YW9XYZ 
 ;;9002226.02101,"1804,0YW9XYZ ",.02)
 ;;0YW9XYZ 
 ;;9002226.02101,"1804,0YW9XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB00Z ",.01)
 ;;0YWB00Z 
 ;;9002226.02101,"1804,0YWB00Z ",.02)
 ;;0YWB00Z 
 ;;9002226.02101,"1804,0YWB00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB03Z ",.01)
 ;;0YWB03Z 
 ;;9002226.02101,"1804,0YWB03Z ",.02)
 ;;0YWB03Z 
 ;;9002226.02101,"1804,0YWB03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB07Z ",.01)
 ;;0YWB07Z 
 ;;9002226.02101,"1804,0YWB07Z ",.02)
 ;;0YWB07Z 
 ;;9002226.02101,"1804,0YWB07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB0JZ ",.01)
 ;;0YWB0JZ 
 ;;9002226.02101,"1804,0YWB0JZ ",.02)
 ;;0YWB0JZ 
 ;;9002226.02101,"1804,0YWB0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB0KZ ",.01)
 ;;0YWB0KZ 
 ;;9002226.02101,"1804,0YWB0KZ ",.02)
 ;;0YWB0KZ 
 ;;9002226.02101,"1804,0YWB0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB0YZ ",.01)
 ;;0YWB0YZ 
 ;;9002226.02101,"1804,0YWB0YZ ",.02)
 ;;0YWB0YZ 
 ;;9002226.02101,"1804,0YWB0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB30Z ",.01)
 ;;0YWB30Z 
 ;;9002226.02101,"1804,0YWB30Z ",.02)
 ;;0YWB30Z 
 ;;9002226.02101,"1804,0YWB30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB33Z ",.01)
 ;;0YWB33Z 
 ;;9002226.02101,"1804,0YWB33Z ",.02)
 ;;0YWB33Z 
 ;;9002226.02101,"1804,0YWB33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB37Z ",.01)
 ;;0YWB37Z 
 ;;9002226.02101,"1804,0YWB37Z ",.02)
 ;;0YWB37Z 
 ;;9002226.02101,"1804,0YWB37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB3JZ ",.01)
 ;;0YWB3JZ 
 ;;9002226.02101,"1804,0YWB3JZ ",.02)
 ;;0YWB3JZ 
 ;;9002226.02101,"1804,0YWB3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB3KZ ",.01)
 ;;0YWB3KZ 
 ;;9002226.02101,"1804,0YWB3KZ ",.02)
 ;;0YWB3KZ 
 ;;9002226.02101,"1804,0YWB3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB3YZ ",.01)
 ;;0YWB3YZ 
 ;;9002226.02101,"1804,0YWB3YZ ",.02)
 ;;0YWB3YZ 
 ;;9002226.02101,"1804,0YWB3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB40Z ",.01)
 ;;0YWB40Z 
 ;;9002226.02101,"1804,0YWB40Z ",.02)
 ;;0YWB40Z 
 ;;9002226.02101,"1804,0YWB40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB43Z ",.01)
 ;;0YWB43Z 
 ;;9002226.02101,"1804,0YWB43Z ",.02)
 ;;0YWB43Z 
 ;;9002226.02101,"1804,0YWB43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB47Z ",.01)
 ;;0YWB47Z 
 ;;9002226.02101,"1804,0YWB47Z ",.02)
 ;;0YWB47Z 
 ;;9002226.02101,"1804,0YWB47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB4JZ ",.01)
 ;;0YWB4JZ 
 ;;9002226.02101,"1804,0YWB4JZ ",.02)
 ;;0YWB4JZ 
 ;;9002226.02101,"1804,0YWB4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB4KZ ",.01)
 ;;0YWB4KZ 
 ;;9002226.02101,"1804,0YWB4KZ ",.02)
 ;;0YWB4KZ 
 ;;9002226.02101,"1804,0YWB4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWB4YZ ",.01)
 ;;0YWB4YZ 
 ;;9002226.02101,"1804,0YWB4YZ ",.02)
 ;;0YWB4YZ 
 ;;9002226.02101,"1804,0YWB4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBX0Z ",.01)
 ;;0YWBX0Z 
 ;;9002226.02101,"1804,0YWBX0Z ",.02)
 ;;0YWBX0Z 
 ;;9002226.02101,"1804,0YWBX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBX3Z ",.01)
 ;;0YWBX3Z 
 ;;9002226.02101,"1804,0YWBX3Z ",.02)
 ;;0YWBX3Z 
 ;;9002226.02101,"1804,0YWBX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBX7Z ",.01)
 ;;0YWBX7Z 
 ;;9002226.02101,"1804,0YWBX7Z ",.02)
 ;;0YWBX7Z 
 ;;9002226.02101,"1804,0YWBX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBXJZ ",.01)
 ;;0YWBXJZ 
 ;;9002226.02101,"1804,0YWBXJZ ",.02)
 ;;0YWBXJZ 
 ;;9002226.02101,"1804,0YWBXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBXKZ ",.01)
 ;;0YWBXKZ 
 ;;9002226.02101,"1804,0YWBXKZ ",.02)
 ;;0YWBXKZ 
 ;;9002226.02101,"1804,0YWBXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YWBXYZ ",.01)
 ;;0YWBXYZ 
 ;;9002226.02101,"1804,0YWBXYZ ",.02)
 ;;0YWBXYZ 
 ;;9002226.02101,"1804,0YWBXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,102073Z ",.01)
 ;;102073Z 
 ;;9002226.02101,"1804,102073Z ",.02)
 ;;102073Z 
 ;;9002226.02101,"1804,102073Z ",.03)
 ;;31
 ;;9002226.02101,"1804,10207YZ ",.01)
 ;;10207YZ 
 ;;9002226.02101,"1804,10207YZ ",.02)
 ;;10207YZ 
 ;;9002226.02101,"1804,10207YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,10907ZC ",.01)
 ;;10907ZC 
 ;;9002226.02101,"1804,10907ZC ",.02)
 ;;10907ZC 
 ;;9002226.02101,"1804,10907ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,10908ZC ",.01)
 ;;10908ZC 
 ;;9002226.02101,"1804,10908ZC ",.02)
 ;;10908ZC 
 ;;9002226.02101,"1804,10908ZC ",.03)
 ;;31
 ;;9002226.02101,"1804,10A07ZX ",.01)
 ;;10A07ZX 
 ;;9002226.02101,"1804,10A07ZX ",.02)
 ;;10A07ZX 
 ;;9002226.02101,"1804,10A07ZX ",.03)
 ;;31
 ;;9002226.02101,"1804,23.01 ",.01)
 ;;23.01 
 ;;9002226.02101,"1804,23.01 ",.02)
 ;;23.73 
 ;;9002226.02101,"1804,23.01 ",.03)
 ;;2
 ;;9002226.02101,"1804,24.0 ",.01)
 ;;24.0 
 ;;9002226.02101,"1804,24.0 ",.02)
 ;;24.99 
 ;;9002226.02101,"1804,24.0 ",.03)
 ;;2
 ;;9002226.02101,"1804,2W00X0Z ",.01)
 ;;2W00X0Z 
 ;;9002226.02101,"1804,2W00X0Z ",.02)
 ;;2W00X0Z 
 ;;9002226.02101,"1804,2W00X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X1Z ",.01)
 ;;2W00X1Z 
 ;;9002226.02101,"1804,2W00X1Z ",.02)
 ;;2W00X1Z 
 ;;9002226.02101,"1804,2W00X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X2Z ",.01)
 ;;2W00X2Z 
 ;;9002226.02101,"1804,2W00X2Z ",.02)
 ;;2W00X2Z 
 ;;9002226.02101,"1804,2W00X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X3Z ",.01)
 ;;2W00X3Z 
 ;;9002226.02101,"1804,2W00X3Z ",.02)
 ;;2W00X3Z 
 ;;9002226.02101,"1804,2W00X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X4Z ",.01)
 ;;2W00X4Z 
 ;;9002226.02101,"1804,2W00X4Z ",.02)
 ;;2W00X4Z 
 ;;9002226.02101,"1804,2W00X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X5Z ",.01)
 ;;2W00X5Z 
 ;;9002226.02101,"1804,2W00X5Z ",.02)
 ;;2W00X5Z 
 ;;9002226.02101,"1804,2W00X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X6Z ",.01)
 ;;2W00X6Z 
 ;;9002226.02101,"1804,2W00X6Z ",.02)
 ;;2W00X6Z 
 ;;9002226.02101,"1804,2W00X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00X7Z ",.01)
 ;;2W00X7Z 
 ;;9002226.02101,"1804,2W00X7Z ",.02)
 ;;2W00X7Z 
 ;;9002226.02101,"1804,2W00X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W00XYZ ",.01)
 ;;2W00XYZ 
 ;;9002226.02101,"1804,2W00XYZ ",.02)
 ;;2W00XYZ 
 ;;9002226.02101,"1804,2W00XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X0Z ",.01)
 ;;2W01X0Z 
 ;;9002226.02101,"1804,2W01X0Z ",.02)
 ;;2W01X0Z 
 ;;9002226.02101,"1804,2W01X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X1Z ",.01)
 ;;2W01X1Z 
 ;;9002226.02101,"1804,2W01X1Z ",.02)
 ;;2W01X1Z 
 ;;9002226.02101,"1804,2W01X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X2Z ",.01)
 ;;2W01X2Z 
 ;;9002226.02101,"1804,2W01X2Z ",.02)
 ;;2W01X2Z 
 ;;9002226.02101,"1804,2W01X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X3Z ",.01)
 ;;2W01X3Z 
 ;;9002226.02101,"1804,2W01X3Z ",.02)
 ;;2W01X3Z 
 ;;9002226.02101,"1804,2W01X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X4Z ",.01)
 ;;2W01X4Z 
 ;;9002226.02101,"1804,2W01X4Z ",.02)
 ;;2W01X4Z 
 ;;9002226.02101,"1804,2W01X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X5Z ",.01)
 ;;2W01X5Z 
 ;;9002226.02101,"1804,2W01X5Z ",.02)
 ;;2W01X5Z 
 ;;9002226.02101,"1804,2W01X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X6Z ",.01)
 ;;2W01X6Z 
 ;;9002226.02101,"1804,2W01X6Z ",.02)
 ;;2W01X6Z 
 ;;9002226.02101,"1804,2W01X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X7Z ",.01)
 ;;2W01X7Z 
 ;;9002226.02101,"1804,2W01X7Z ",.02)
 ;;2W01X7Z 
 ;;9002226.02101,"1804,2W01X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01X9Z ",.01)
 ;;2W01X9Z 
 ;;9002226.02101,"1804,2W01X9Z ",.02)
 ;;2W01X9Z 
 ;;9002226.02101,"1804,2W01X9Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W01XYZ ",.01)
 ;;2W01XYZ 
 ;;9002226.02101,"1804,2W01XYZ ",.02)
 ;;2W01XYZ 
 ;;9002226.02101,"1804,2W01XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X0Z ",.01)
 ;;2W02X0Z 
 ;;9002226.02101,"1804,2W02X0Z ",.02)
 ;;2W02X0Z 
 ;;9002226.02101,"1804,2W02X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X1Z ",.01)
 ;;2W02X1Z 
 ;;9002226.02101,"1804,2W02X1Z ",.02)
 ;;2W02X1Z 
 ;;9002226.02101,"1804,2W02X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X2Z ",.01)
 ;;2W02X2Z 
 ;;9002226.02101,"1804,2W02X2Z ",.02)
 ;;2W02X2Z 
 ;;9002226.02101,"1804,2W02X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X3Z ",.01)
 ;;2W02X3Z 
 ;;9002226.02101,"1804,2W02X3Z ",.02)
 ;;2W02X3Z 
 ;;9002226.02101,"1804,2W02X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X4Z ",.01)
 ;;2W02X4Z 
 ;;9002226.02101,"1804,2W02X4Z ",.02)
 ;;2W02X4Z 
 ;;9002226.02101,"1804,2W02X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X5Z ",.01)
 ;;2W02X5Z 
 ;;9002226.02101,"1804,2W02X5Z ",.02)
 ;;2W02X5Z 
 ;;9002226.02101,"1804,2W02X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X6Z ",.01)
 ;;2W02X6Z 
 ;;9002226.02101,"1804,2W02X6Z ",.02)
 ;;2W02X6Z 
 ;;9002226.02101,"1804,2W02X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02X7Z ",.01)
 ;;2W02X7Z 
 ;;9002226.02101,"1804,2W02X7Z ",.02)
 ;;2W02X7Z 
 ;;9002226.02101,"1804,2W02X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W02XYZ ",.01)
 ;;2W02XYZ 
 ;;9002226.02101,"1804,2W02XYZ ",.02)
 ;;2W02XYZ 
 ;;9002226.02101,"1804,2W02XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X0Z ",.01)
 ;;2W03X0Z 
 ;;9002226.02101,"1804,2W03X0Z ",.02)
 ;;2W03X0Z 
 ;;9002226.02101,"1804,2W03X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X1Z ",.01)
 ;;2W03X1Z 
 ;;9002226.02101,"1804,2W03X1Z ",.02)
 ;;2W03X1Z 
 ;;9002226.02101,"1804,2W03X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X2Z ",.01)
 ;;2W03X2Z 
 ;;9002226.02101,"1804,2W03X2Z ",.02)
 ;;2W03X2Z 
 ;;9002226.02101,"1804,2W03X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X3Z ",.01)
 ;;2W03X3Z 
 ;;9002226.02101,"1804,2W03X3Z ",.02)
 ;;2W03X3Z 
 ;;9002226.02101,"1804,2W03X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X4Z ",.01)
 ;;2W03X4Z 
 ;;9002226.02101,"1804,2W03X4Z ",.02)
 ;;2W03X4Z 
 ;;9002226.02101,"1804,2W03X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X5Z ",.01)
 ;;2W03X5Z 
 ;;9002226.02101,"1804,2W03X5Z ",.02)
 ;;2W03X5Z 
 ;;9002226.02101,"1804,2W03X5Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X6Z ",.01)
 ;;2W03X6Z 
 ;;9002226.02101,"1804,2W03X6Z ",.02)
 ;;2W03X6Z 
 ;;9002226.02101,"1804,2W03X6Z ",.03)
 ;;31
 ;;9002226.02101,"1804,2W03X7Z ",.01)
 ;;2W03X7Z 
