ATXD8P26 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"913,O40.9XX4 ",.02)
 ;;O40.9XX4 
 ;;9002226.02101,"913,O40.9XX4 ",.03)
 ;;30
 ;;9002226.02101,"913,O40.9XX5 ",.01)
 ;;O40.9XX5 
 ;;9002226.02101,"913,O40.9XX5 ",.02)
 ;;O40.9XX5 
 ;;9002226.02101,"913,O40.9XX5 ",.03)
 ;;30
 ;;9002226.02101,"913,O40.9XX9 ",.01)
 ;;O40.9XX9 
 ;;9002226.02101,"913,O40.9XX9 ",.02)
 ;;O40.9XX9 
 ;;9002226.02101,"913,O40.9XX9 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X0 ",.01)
 ;;O41.00X0 
 ;;9002226.02101,"913,O41.00X0 ",.02)
 ;;O41.00X0 
 ;;9002226.02101,"913,O41.00X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X1 ",.01)
 ;;O41.00X1 
 ;;9002226.02101,"913,O41.00X1 ",.02)
 ;;O41.00X1 
 ;;9002226.02101,"913,O41.00X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X2 ",.01)
 ;;O41.00X2 
 ;;9002226.02101,"913,O41.00X2 ",.02)
 ;;O41.00X2 
 ;;9002226.02101,"913,O41.00X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X3 ",.01)
 ;;O41.00X3 
 ;;9002226.02101,"913,O41.00X3 ",.02)
 ;;O41.00X3 
 ;;9002226.02101,"913,O41.00X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X4 ",.01)
 ;;O41.00X4 
 ;;9002226.02101,"913,O41.00X4 ",.02)
 ;;O41.00X4 
 ;;9002226.02101,"913,O41.00X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X5 ",.01)
 ;;O41.00X5 
 ;;9002226.02101,"913,O41.00X5 ",.02)
 ;;O41.00X5 
 ;;9002226.02101,"913,O41.00X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.00X9 ",.01)
 ;;O41.00X9 
 ;;9002226.02101,"913,O41.00X9 ",.02)
 ;;O41.00X9 
 ;;9002226.02101,"913,O41.00X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.01X0 ",.01)
 ;;O41.01X0 
 ;;9002226.02101,"913,O41.01X0 ",.02)
 ;;O41.01X0 
 ;;9002226.02101,"913,O41.01X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X0 ",.01)
 ;;O41.02X0 
 ;;9002226.02101,"913,O41.02X0 ",.02)
 ;;O41.02X0 
 ;;9002226.02101,"913,O41.02X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X1 ",.01)
 ;;O41.02X1 
 ;;9002226.02101,"913,O41.02X1 ",.02)
 ;;O41.02X1 
 ;;9002226.02101,"913,O41.02X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X2 ",.01)
 ;;O41.02X2 
 ;;9002226.02101,"913,O41.02X2 ",.02)
 ;;O41.02X2 
 ;;9002226.02101,"913,O41.02X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X3 ",.01)
 ;;O41.02X3 
 ;;9002226.02101,"913,O41.02X3 ",.02)
 ;;O41.02X3 
 ;;9002226.02101,"913,O41.02X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X4 ",.01)
 ;;O41.02X4 
 ;;9002226.02101,"913,O41.02X4 ",.02)
 ;;O41.02X4 
 ;;9002226.02101,"913,O41.02X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X5 ",.01)
 ;;O41.02X5 
 ;;9002226.02101,"913,O41.02X5 ",.02)
 ;;O41.02X5 
 ;;9002226.02101,"913,O41.02X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.02X9 ",.01)
 ;;O41.02X9 
 ;;9002226.02101,"913,O41.02X9 ",.02)
 ;;O41.02X9 
 ;;9002226.02101,"913,O41.02X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X0 ",.01)
 ;;O41.03X0 
 ;;9002226.02101,"913,O41.03X0 ",.02)
 ;;O41.03X0 
 ;;9002226.02101,"913,O41.03X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X1 ",.01)
 ;;O41.03X1 
 ;;9002226.02101,"913,O41.03X1 ",.02)
 ;;O41.03X1 
 ;;9002226.02101,"913,O41.03X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X2 ",.01)
 ;;O41.03X2 
 ;;9002226.02101,"913,O41.03X2 ",.02)
 ;;O41.03X2 
 ;;9002226.02101,"913,O41.03X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X3 ",.01)
 ;;O41.03X3 
 ;;9002226.02101,"913,O41.03X3 ",.02)
 ;;O41.03X3 
 ;;9002226.02101,"913,O41.03X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X4 ",.01)
 ;;O41.03X4 
 ;;9002226.02101,"913,O41.03X4 ",.02)
 ;;O41.03X4 
 ;;9002226.02101,"913,O41.03X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X5 ",.01)
 ;;O41.03X5 
 ;;9002226.02101,"913,O41.03X5 ",.02)
 ;;O41.03X5 
 ;;9002226.02101,"913,O41.03X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.03X9 ",.01)
 ;;O41.03X9 
 ;;9002226.02101,"913,O41.03X9 ",.02)
 ;;O41.03X9 
 ;;9002226.02101,"913,O41.03X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1010 ",.01)
 ;;O41.1010 
 ;;9002226.02101,"913,O41.1010 ",.02)
 ;;O41.1010 
 ;;9002226.02101,"913,O41.1010 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1011 ",.01)
 ;;O41.1011 
 ;;9002226.02101,"913,O41.1011 ",.02)
 ;;O41.1011 
 ;;9002226.02101,"913,O41.1011 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1012 ",.01)
 ;;O41.1012 
 ;;9002226.02101,"913,O41.1012 ",.02)
 ;;O41.1012 
 ;;9002226.02101,"913,O41.1012 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1013 ",.01)
 ;;O41.1013 
 ;;9002226.02101,"913,O41.1013 ",.02)
 ;;O41.1013 
 ;;9002226.02101,"913,O41.1013 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1014 ",.01)
 ;;O41.1014 
 ;;9002226.02101,"913,O41.1014 ",.02)
 ;;O41.1014 
 ;;9002226.02101,"913,O41.1014 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1015 ",.01)
 ;;O41.1015 
 ;;9002226.02101,"913,O41.1015 ",.02)
 ;;O41.1015 
 ;;9002226.02101,"913,O41.1015 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1019 ",.01)
 ;;O41.1019 
 ;;9002226.02101,"913,O41.1019 ",.02)
 ;;O41.1019 
 ;;9002226.02101,"913,O41.1019 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1020 ",.01)
 ;;O41.1020 
 ;;9002226.02101,"913,O41.1020 ",.02)
 ;;O41.1020 
 ;;9002226.02101,"913,O41.1020 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1021 ",.01)
 ;;O41.1021 
 ;;9002226.02101,"913,O41.1021 ",.02)
 ;;O41.1021 
 ;;9002226.02101,"913,O41.1021 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1022 ",.01)
 ;;O41.1022 
 ;;9002226.02101,"913,O41.1022 ",.02)
 ;;O41.1022 
 ;;9002226.02101,"913,O41.1022 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1023 ",.01)
 ;;O41.1023 
 ;;9002226.02101,"913,O41.1023 ",.02)
 ;;O41.1023 
 ;;9002226.02101,"913,O41.1023 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1024 ",.01)
 ;;O41.1024 
 ;;9002226.02101,"913,O41.1024 ",.02)
 ;;O41.1024 
 ;;9002226.02101,"913,O41.1024 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1025 ",.01)
 ;;O41.1025 
 ;;9002226.02101,"913,O41.1025 ",.02)
 ;;O41.1025 
 ;;9002226.02101,"913,O41.1025 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1029 ",.01)
 ;;O41.1029 
 ;;9002226.02101,"913,O41.1029 ",.02)
 ;;O41.1029 
 ;;9002226.02101,"913,O41.1029 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1030 ",.01)
 ;;O41.1030 
 ;;9002226.02101,"913,O41.1030 ",.02)
 ;;O41.1030 
 ;;9002226.02101,"913,O41.1030 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1031 ",.01)
 ;;O41.1031 
 ;;9002226.02101,"913,O41.1031 ",.02)
 ;;O41.1031 
 ;;9002226.02101,"913,O41.1031 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1032 ",.01)
 ;;O41.1032 
 ;;9002226.02101,"913,O41.1032 ",.02)
 ;;O41.1032 
 ;;9002226.02101,"913,O41.1032 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1033 ",.01)
 ;;O41.1033 
 ;;9002226.02101,"913,O41.1033 ",.02)
 ;;O41.1033 
 ;;9002226.02101,"913,O41.1033 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1034 ",.01)
 ;;O41.1034 
 ;;9002226.02101,"913,O41.1034 ",.02)
 ;;O41.1034 
 ;;9002226.02101,"913,O41.1034 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1035 ",.01)
 ;;O41.1035 
 ;;9002226.02101,"913,O41.1035 ",.02)
 ;;O41.1035 
 ;;9002226.02101,"913,O41.1035 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1039 ",.01)
 ;;O41.1039 
 ;;9002226.02101,"913,O41.1039 ",.02)
 ;;O41.1039 
 ;;9002226.02101,"913,O41.1039 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1090 ",.01)
 ;;O41.1090 
 ;;9002226.02101,"913,O41.1090 ",.02)
 ;;O41.1090 
 ;;9002226.02101,"913,O41.1090 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1091 ",.01)
 ;;O41.1091 
 ;;9002226.02101,"913,O41.1091 ",.02)
 ;;O41.1091 
 ;;9002226.02101,"913,O41.1091 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1092 ",.01)
 ;;O41.1092 
 ;;9002226.02101,"913,O41.1092 ",.02)
 ;;O41.1092 
 ;;9002226.02101,"913,O41.1092 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1093 ",.01)
 ;;O41.1093 
 ;;9002226.02101,"913,O41.1093 ",.02)
 ;;O41.1093 
 ;;9002226.02101,"913,O41.1093 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1094 ",.01)
 ;;O41.1094 
 ;;9002226.02101,"913,O41.1094 ",.02)
 ;;O41.1094 
 ;;9002226.02101,"913,O41.1094 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1095 ",.01)
 ;;O41.1095 
 ;;9002226.02101,"913,O41.1095 ",.02)
 ;;O41.1095 
 ;;9002226.02101,"913,O41.1095 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1099 ",.01)
 ;;O41.1099 
 ;;9002226.02101,"913,O41.1099 ",.02)
 ;;O41.1099 
 ;;9002226.02101,"913,O41.1099 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1210 ",.01)
 ;;O41.1210 
 ;;9002226.02101,"913,O41.1210 ",.02)
 ;;O41.1210 
 ;;9002226.02101,"913,O41.1210 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1211 ",.01)
 ;;O41.1211 
 ;;9002226.02101,"913,O41.1211 ",.02)
 ;;O41.1211 
 ;;9002226.02101,"913,O41.1211 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1212 ",.01)
 ;;O41.1212 
 ;;9002226.02101,"913,O41.1212 ",.02)
 ;;O41.1212 
 ;;9002226.02101,"913,O41.1212 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1213 ",.01)
 ;;O41.1213 
 ;;9002226.02101,"913,O41.1213 ",.02)
 ;;O41.1213 
 ;;9002226.02101,"913,O41.1213 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1214 ",.01)
 ;;O41.1214 
 ;;9002226.02101,"913,O41.1214 ",.02)
 ;;O41.1214 
 ;;9002226.02101,"913,O41.1214 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1215 ",.01)
 ;;O41.1215 
 ;;9002226.02101,"913,O41.1215 ",.02)
 ;;O41.1215 
 ;;9002226.02101,"913,O41.1215 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1219 ",.01)
 ;;O41.1219 
 ;;9002226.02101,"913,O41.1219 ",.02)
 ;;O41.1219 
 ;;9002226.02101,"913,O41.1219 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1220 ",.01)
 ;;O41.1220 
 ;;9002226.02101,"913,O41.1220 ",.02)
 ;;O41.1220 
 ;;9002226.02101,"913,O41.1220 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1221 ",.01)
 ;;O41.1221 
 ;;9002226.02101,"913,O41.1221 ",.02)
 ;;O41.1221 
 ;;9002226.02101,"913,O41.1221 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1222 ",.01)
 ;;O41.1222 
 ;;9002226.02101,"913,O41.1222 ",.02)
 ;;O41.1222 
 ;;9002226.02101,"913,O41.1222 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1223 ",.01)
 ;;O41.1223 
 ;;9002226.02101,"913,O41.1223 ",.02)
 ;;O41.1223 
 ;;9002226.02101,"913,O41.1223 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1224 ",.01)
 ;;O41.1224 
 ;;9002226.02101,"913,O41.1224 ",.02)
 ;;O41.1224 
 ;;9002226.02101,"913,O41.1224 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1225 ",.01)
 ;;O41.1225 
 ;;9002226.02101,"913,O41.1225 ",.02)
 ;;O41.1225 
 ;;9002226.02101,"913,O41.1225 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1229 ",.01)
 ;;O41.1229 
 ;;9002226.02101,"913,O41.1229 ",.02)
 ;;O41.1229 
 ;;9002226.02101,"913,O41.1229 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1230 ",.01)
 ;;O41.1230 
 ;;9002226.02101,"913,O41.1230 ",.02)
 ;;O41.1230 
 ;;9002226.02101,"913,O41.1230 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1231 ",.01)
 ;;O41.1231 
 ;;9002226.02101,"913,O41.1231 ",.02)
 ;;O41.1231 
 ;;9002226.02101,"913,O41.1231 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1232 ",.01)
 ;;O41.1232 
 ;;9002226.02101,"913,O41.1232 ",.02)
 ;;O41.1232 
 ;;9002226.02101,"913,O41.1232 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1233 ",.01)
 ;;O41.1233 
 ;;9002226.02101,"913,O41.1233 ",.02)
 ;;O41.1233 
 ;;9002226.02101,"913,O41.1233 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1234 ",.01)
 ;;O41.1234 
 ;;9002226.02101,"913,O41.1234 ",.02)
 ;;O41.1234 
 ;;9002226.02101,"913,O41.1234 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1235 ",.01)
 ;;O41.1235 
 ;;9002226.02101,"913,O41.1235 ",.02)
 ;;O41.1235 
 ;;9002226.02101,"913,O41.1235 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1239 ",.01)
 ;;O41.1239 
 ;;9002226.02101,"913,O41.1239 ",.02)
 ;;O41.1239 
 ;;9002226.02101,"913,O41.1239 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1290 ",.01)
 ;;O41.1290 
 ;;9002226.02101,"913,O41.1290 ",.02)
 ;;O41.1290 
 ;;9002226.02101,"913,O41.1290 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1291 ",.01)
 ;;O41.1291 
 ;;9002226.02101,"913,O41.1291 ",.02)
 ;;O41.1291 
 ;;9002226.02101,"913,O41.1291 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1292 ",.01)
 ;;O41.1292 
 ;;9002226.02101,"913,O41.1292 ",.02)
 ;;O41.1292 
 ;;9002226.02101,"913,O41.1292 ",.03)
 ;;30
 ;;9002226.02101,"913,O41.1293 ",.01)
 ;;O41.1293 
 ;;9002226.02101,"913,O41.1293 ",.02)
 ;;O41.1293 
