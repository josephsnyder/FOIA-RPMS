BGP21F28 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,00615-2562-63 ",.01)
 ;;00615-2562-63
 ;;9002226.02101,"1195,00615-2562-63 ",.02)
 ;;00615-2562-63
 ;;9002226.02101,"1195,00615-2563-53 ",.01)
 ;;00615-2563-53
 ;;9002226.02101,"1195,00615-2563-53 ",.02)
 ;;00615-2563-53
 ;;9002226.02101,"1195,00615-2563-63 ",.01)
 ;;00615-2563-63
 ;;9002226.02101,"1195,00615-2563-63 ",.02)
 ;;00615-2563-63
 ;;9002226.02101,"1195,00615-3532-53 ",.01)
 ;;00615-3532-53
 ;;9002226.02101,"1195,00615-3532-53 ",.02)
 ;;00615-3532-53
 ;;9002226.02101,"1195,00615-3532-63 ",.01)
 ;;00615-3532-63
 ;;9002226.02101,"1195,00615-3532-63 ",.02)
 ;;00615-3532-63
 ;;9002226.02101,"1195,00615-3544-53 ",.01)
 ;;00615-3544-53
 ;;9002226.02101,"1195,00615-3544-53 ",.02)
 ;;00615-3544-53
 ;;9002226.02101,"1195,00615-3544-63 ",.01)
 ;;00615-3544-63
 ;;9002226.02101,"1195,00615-3544-63 ",.02)
 ;;00615-3544-63
 ;;9002226.02101,"1195,00615-3552-53 ",.01)
 ;;00615-3552-53
 ;;9002226.02101,"1195,00615-3552-53 ",.02)
 ;;00615-3552-53
 ;;9002226.02101,"1195,00615-3552-63 ",.01)
 ;;00615-3552-63
 ;;9002226.02101,"1195,00615-3552-63 ",.02)
 ;;00615-3552-63
 ;;9002226.02101,"1195,00615-3553-53 ",.01)
 ;;00615-3553-53
 ;;9002226.02101,"1195,00615-3553-53 ",.02)
 ;;00615-3553-53
 ;;9002226.02101,"1195,00615-3553-63 ",.01)
 ;;00615-3553-63
 ;;9002226.02101,"1195,00615-3553-63 ",.02)
 ;;00615-3553-63
 ;;9002226.02101,"1195,00641-4030-86 ",.01)
 ;;00641-4030-86
 ;;9002226.02101,"1195,00641-4030-86 ",.02)
 ;;00641-4030-86
 ;;9002226.02101,"1195,00641-4032-86 ",.01)
 ;;00641-4032-86
 ;;9002226.02101,"1195,00641-4032-86 ",.02)
 ;;00641-4032-86
 ;;9002226.02101,"1195,00677-1457-01 ",.01)
 ;;00677-1457-01
 ;;9002226.02101,"1195,00677-1457-01 ",.02)
 ;;00677-1457-01
 ;;9002226.02101,"1195,00677-1458-01 ",.01)
 ;;00677-1458-01
 ;;9002226.02101,"1195,00677-1458-01 ",.02)
 ;;00677-1458-01
 ;;9002226.02101,"1195,00677-1478-01 ",.01)
 ;;00677-1478-01
 ;;9002226.02101,"1195,00677-1478-01 ",.02)
 ;;00677-1478-01
 ;;9002226.02101,"1195,00677-1478-10 ",.01)
 ;;00677-1478-10
 ;;9002226.02101,"1195,00677-1478-10 ",.02)
 ;;00677-1478-10
 ;;9002226.02101,"1195,00677-1479-01 ",.01)
 ;;00677-1479-01
 ;;9002226.02101,"1195,00677-1479-01 ",.02)
 ;;00677-1479-01
 ;;9002226.02101,"1195,00677-1479-10 ",.01)
 ;;00677-1479-10
 ;;9002226.02101,"1195,00677-1479-10 ",.02)
 ;;00677-1479-10
 ;;9002226.02101,"1195,00677-1480-01 ",.01)
 ;;00677-1480-01
 ;;9002226.02101,"1195,00677-1480-01 ",.02)
 ;;00677-1480-01
 ;;9002226.02101,"1195,00677-1481-01 ",.01)
 ;;00677-1481-01
 ;;9002226.02101,"1195,00677-1481-01 ",.02)
 ;;00677-1481-01
 ;;9002226.02101,"1195,00677-1482-01 ",.01)
 ;;00677-1482-01
 ;;9002226.02101,"1195,00677-1482-01 ",.02)
 ;;00677-1482-01
 ;;9002226.02101,"1195,00677-1482-10 ",.01)
 ;;00677-1482-10
 ;;9002226.02101,"1195,00677-1482-10 ",.02)
 ;;00677-1482-10
 ;;9002226.02101,"1195,00677-1483-01 ",.01)
 ;;00677-1483-01
 ;;9002226.02101,"1195,00677-1483-01 ",.02)
 ;;00677-1483-01
 ;;9002226.02101,"1195,00677-1483-10 ",.01)
 ;;00677-1483-10
 ;;9002226.02101,"1195,00677-1483-10 ",.02)
 ;;00677-1483-10
 ;;9002226.02101,"1195,00677-1633-01 ",.01)
 ;;00677-1633-01
 ;;9002226.02101,"1195,00677-1633-01 ",.02)
 ;;00677-1633-01
 ;;9002226.02101,"1195,00677-1701-01 ",.01)
 ;;00677-1701-01
 ;;9002226.02101,"1195,00677-1701-01 ",.02)
 ;;00677-1701-01
 ;;9002226.02101,"1195,00677-1701-05 ",.01)
 ;;00677-1701-05
 ;;9002226.02101,"1195,00677-1701-05 ",.02)
 ;;00677-1701-05
 ;;9002226.02101,"1195,00677-1702-01 ",.01)
 ;;00677-1702-01
 ;;9002226.02101,"1195,00677-1702-01 ",.02)
 ;;00677-1702-01
 ;;9002226.02101,"1195,00677-1702-05 ",.01)
 ;;00677-1702-05
 ;;9002226.02101,"1195,00677-1702-05 ",.02)
 ;;00677-1702-05
 ;;9002226.02101,"1195,00677-1703-01 ",.01)
 ;;00677-1703-01
 ;;9002226.02101,"1195,00677-1703-01 ",.02)
 ;;00677-1703-01
 ;;9002226.02101,"1195,00781-1078-01 ",.01)
 ;;00781-1078-01
 ;;9002226.02101,"1195,00781-1078-01 ",.02)
 ;;00781-1078-01
 ;;9002226.02101,"1195,00781-1078-10 ",.01)
 ;;00781-1078-10
 ;;9002226.02101,"1195,00781-1078-10 ",.02)
 ;;00781-1078-10
 ;;9002226.02101,"1195,00781-1181-01 ",.01)
 ;;00781-1181-01
 ;;9002226.02101,"1195,00781-1181-01 ",.02)
 ;;00781-1181-01
 ;;9002226.02101,"1195,00781-1181-10 ",.01)
 ;;00781-1181-10
 ;;9002226.02101,"1195,00781-1181-10 ",.02)
 ;;00781-1181-10
 ;;9002226.02101,"1195,00781-1181-92 ",.01)
 ;;00781-1181-92
 ;;9002226.02101,"1195,00781-1181-92 ",.02)
 ;;00781-1181-92
 ;;9002226.02101,"1195,00781-1182-01 ",.01)
 ;;00781-1182-01
 ;;9002226.02101,"1195,00781-1182-01 ",.02)
 ;;00781-1182-01
 ;;9002226.02101,"1195,00781-1182-10 ",.01)
 ;;00781-1182-10
 ;;9002226.02101,"1195,00781-1182-10 ",.02)
 ;;00781-1182-10
 ;;9002226.02101,"1195,00781-1182-92 ",.01)
 ;;00781-1182-92
 ;;9002226.02101,"1195,00781-1182-92 ",.02)
 ;;00781-1182-92
 ;;9002226.02101,"1195,00781-1183-01 ",.01)
 ;;00781-1183-01
 ;;9002226.02101,"1195,00781-1183-01 ",.02)
 ;;00781-1183-01
 ;;9002226.02101,"1195,00781-1183-10 ",.01)
 ;;00781-1183-10
 ;;9002226.02101,"1195,00781-1183-10 ",.02)
 ;;00781-1183-10
 ;;9002226.02101,"1195,00781-1183-92 ",.01)
 ;;00781-1183-92
 ;;9002226.02101,"1195,00781-1183-92 ",.02)
 ;;00781-1183-92
 ;;9002226.02101,"1195,00781-1223-01 ",.01)
 ;;00781-1223-01
