BGP71J4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"60429-0150-30 ")
 ;;1024
 ;;21,"60429-0150-60 ")
 ;;1025
 ;;21,"60429-0150-90 ")
 ;;1026
 ;;21,"60429-0151-01 ")
 ;;1027
 ;;21,"60429-0223-01 ")
 ;;1028
 ;;21,"60429-0223-10 ")
 ;;1029
 ;;21,"60429-0224-01 ")
 ;;1030
 ;;21,"60429-0224-10 ")
 ;;1031
 ;;21,"60429-0224-28 ")
 ;;1032
 ;;21,"60429-0225-01 ")
 ;;1033
 ;;21,"60429-0225-05 ")
 ;;1034
 ;;21,"60429-0231-01 ")
 ;;1035
 ;;21,"60429-0231-10 ")
 ;;1036
 ;;21,"60429-0276-01 ")
 ;;1037
 ;;21,"60429-0276-10 ")
 ;;1038
 ;;21,"60429-0294-01 ")
 ;;1039
 ;;21,"60429-0294-05 ")
 ;;1040
 ;;21,"60429-0295-01 ")
 ;;1041
 ;;21,"60429-0295-05 ")
 ;;1042
 ;;21,"60432-0150-04 ")
 ;;1043
 ;;21,"60432-0150-16 ")
 ;;1044
 ;;21,"60432-0275-04 ")
 ;;1045
 ;;21,"60432-0275-16 ")
 ;;1046
 ;;21,"60432-0539-16 ")
 ;;1047
 ;;21,"60432-0604-04 ")
 ;;1048
 ;;21,"60432-0604-16 ")
 ;;1049
 ;;21,"60432-0606-04 ")
 ;;1050
 ;;21,"60432-0606-16 ")
 ;;1051
 ;;21,"60432-0608-04 ")
 ;;1052
 ;;21,"60432-0608-16 ")
 ;;1053
 ;;21,"60432-0837-04 ")
 ;;1054
 ;;21,"60432-0837-16 ")
 ;;1055
 ;;21,"60575-0177-19 ")
 ;;1056
 ;;21,"60575-0212-16 ")
 ;;1057
 ;;21,"60575-0313-16 ")
 ;;1058
 ;;21,"60575-0786-19 ")
 ;;1059
 ;;21,"60760-0307-20 ")
 ;;1060
 ;;21,"60760-0330-30 ")
 ;;1061
 ;;21,"60760-0830-20 ")
 ;;1062
 ;;21,"60760-0830-30 ")
 ;;1063
 ;;21,"60760-0830-60 ")
 ;;1064
 ;;21,"60760-0971-30 ")
 ;;1065
 ;;21,"61748-0054-16 ")
 ;;1066
 ;;21,"61919-0008-10 ")
 ;;1067
 ;;21,"61919-0008-12 ")
 ;;1068
 ;;21,"61919-0008-15 ")
 ;;1069
 ;;21,"61919-0008-30 ")
 ;;1070
 ;;21,"61919-0008-60 ")
 ;;1071
 ;;21,"61919-0047-10 ")
 ;;1072
 ;;21,"61919-0047-12 ")
 ;;1073
 ;;21,"61919-0047-30 ")
 ;;1074
 ;;21,"61919-0047-40 ")
 ;;1075
 ;;21,"61919-0079-30 ")
 ;;1076
 ;;21,"61919-0122-15 ")
 ;;1077
 ;;21,"61919-0122-20 ")
 ;;1078
 ;;21,"61919-0122-30 ")
 ;;1079
 ;;21,"61919-0128-30 ")
 ;;1080
 ;;21,"61919-0191-30 ")
 ;;1081
 ;;21,"61919-0292-04 ")
 ;;1082
 ;;21,"61919-0357-15 ")
 ;;1083
 ;;21,"61919-0357-30 ")
 ;;1084
 ;;21,"62175-0490-64 ")
 ;;1085
 ;;21,"62175-0490-70 ")
 ;;1086
 ;;21,"62295-3019-07 ")
 ;;1087
 ;;21,"62542-0301-16 ")
 ;;1088
 ;;21,"62584-0739-01 ")
 ;;1089
 ;;21,"62584-0739-11 ")
 ;;1090
 ;;21,"62584-0741-01 ")
 ;;1091
 ;;21,"62584-0741-11 ")
 ;;1092
 ;;21,"62584-0886-01 ")
 ;;1093
 ;;21,"62584-0886-11 ")
 ;;1094
 ;;21,"62584-0887-11 ")
 ;;1095
 ;;21,"62584-0887-21 ")
 ;;1096
 ;;21,"63187-0038-10 ")
 ;;1097
 ;;21,"63629-1349-01 ")
 ;;1098
 ;;21,"63629-1349-02 ")
 ;;1099
 ;;21,"63629-1349-03 ")
 ;;1100
 ;;21,"63629-1349-04 ")
 ;;1101
 ;;21,"63629-1349-05 ")
 ;;1102
 ;;21,"63629-1533-01 ")
 ;;1103
 ;;21,"63629-1533-02 ")
 ;;1104
 ;;21,"63629-1533-03 ")
 ;;1105
 ;;21,"63629-1533-04 ")
 ;;1106
 ;;21,"63629-1588-01 ")
 ;;1107
 ;;21,"63629-1588-02 ")
 ;;1108
 ;;21,"63629-1588-03 ")
 ;;1109
 ;;21,"63629-1591-01 ")
 ;;1110
 ;;21,"63629-1591-02 ")
 ;;1111
 ;;21,"63629-1591-03 ")
 ;;1112
 ;;21,"63629-1591-04 ")
 ;;1113
 ;;21,"63629-1591-05 ")
 ;;1114
 ;;21,"63629-1591-06 ")
 ;;1115
 ;;21,"63629-1607-01 ")
 ;;1116
 ;;21,"63629-1607-02 ")
 ;;1117
 ;;21,"63629-1607-03 ")
 ;;1118
 ;;21,"63629-1742-01 ")
 ;;1119
 ;;21,"63629-1742-02 ")
 ;;1120
 ;;21,"63629-1742-03 ")
 ;;1121
 ;;21,"63629-1742-04 ")
 ;;1122
 ;;21,"63629-1742-05 ")
 ;;1123
 ;;21,"63629-1742-06 ")
 ;;1124
 ;;21,"63629-1742-07 ")
 ;;1125
 ;;21,"63629-1742-08 ")
 ;;1126
 ;;21,"63629-1751-01 ")
 ;;1127
 ;;21,"63629-1751-02 ")
 ;;1128
 ;;21,"63629-1855-01 ")
 ;;1129
 ;;21,"63629-1855-02 ")
 ;;1130
 ;;21,"63629-1856-01 ")
 ;;1131
 ;;21,"63629-1856-02 ")
 ;;1132
 ;;21,"63629-1868-01 ")
 ;;1133
 ;;21,"63629-1868-02 ")
 ;;1134
 ;;21,"63629-1870-01 ")
 ;;1135
 ;;21,"63629-1870-02 ")
 ;;1136
 ;;21,"63629-2959-01 ")
 ;;1137
 ;;21,"63629-2982-01 ")
 ;;1138
 ;;21,"63629-2982-02 ")
 ;;1139
 ;;21,"63629-4121-01 ")
 ;;1140
 ;;21,"63717-0870-01 ")
 ;;1141
 ;;21,"63717-0871-16 ")
 ;;1142
 ;;21,"63717-0876-16 ")
 ;;1143
 ;;21,"63717-0877-16 ")
 ;;1144
 ;;21,"63739-0213-10 ")
 ;;1145
 ;;21,"63739-0389-10 ")
 ;;1146
 ;;21,"63739-0483-10 ")
 ;;1147
 ;;21,"63739-0486-10 ")
 ;;1148
 ;;21,"63874-0204-12 ")
 ;;1149
 ;;21,"63874-0204-18 ")
 ;;1150
 ;;21,"63874-0204-24 ")
 ;;1151
 ;;21,"63874-0204-38 ")
 ;;1152
 ;;21,"63874-0204-48 ")
 ;;1153
 ;;21,"63874-0209-12 ")
 ;;1154
 ;;21,"63874-0209-18 ")
 ;;1155
 ;;21,"63874-0209-24 ")
 ;;1156
 ;;21,"63874-0304-01 ")
 ;;1157
 ;;21,"63874-0304-02 ")
 ;;1158
 ;;21,"63874-0304-09 ")
 ;;1159
 ;;21,"63874-0304-10 ")
 ;;1160
 ;;21,"63874-0304-12 ")
 ;;1161
 ;;21,"63874-0304-14 ")
 ;;1162
 ;;21,"63874-0304-15 ")
 ;;1163
 ;;21,"63874-0304-20 ")
 ;;1164
 ;;21,"63874-0304-25 ")
 ;;1165
 ;;21,"63874-0304-28 ")
 ;;1166
 ;;21,"63874-0304-30 ")
 ;;1167
 ;;21,"63874-0304-40 ")
 ;;1168
 ;;21,"63874-0304-45 ")
 ;;1169
 ;;21,"63874-0304-60 ")
 ;;1170
 ;;21,"63874-0304-90 ")
 ;;1171
 ;;21,"63874-0370-01 ")
 ;;1172
 ;;21,"63874-0370-08 ")
 ;;1173
 ;;21,"63874-0370-10 ")
 ;;1174
 ;;21,"63874-0370-12 ")
 ;;1175
 ;;21,"63874-0370-15 ")
 ;;1176
 ;;21,"63874-0370-20 ")
 ;;1177
 ;;21,"63874-0370-24 ")
 ;;1178
 ;;21,"63874-0370-30 ")
 ;;1179
 ;;21,"63874-0370-40 ")
 ;;1180
 ;;21,"63874-0370-60 ")
 ;;1181
 ;;21,"63874-0442-01 ")
 ;;1182
 ;;21,"63874-0442-04 ")
 ;;1183
 ;;21,"63874-0442-05 ")
 ;;1184
 ;;21,"63874-0442-09 ")
 ;;1185
 ;;21,"63874-0442-10 ")
 ;;1186
 ;;21,"63874-0442-14 ")
 ;;1187
 ;;21,"63874-0442-15 ")
 ;;1188
 ;;21,"63874-0442-20 ")
 ;;1189
 ;;21,"63874-0442-25 ")
 ;;1190
 ;;21,"63874-0442-28 ")
 ;;1191
 ;;21,"63874-0442-30 ")
 ;;1192
 ;;21,"63874-0442-40 ")
 ;;1193
 ;;21,"63874-0442-45 ")
 ;;1194
 ;;21,"63874-0442-60 ")
 ;;1195
 ;;21,"63874-0442-90 ")
 ;;1196
 ;;21,"63874-0565-01 ")
 ;;1197
 ;;21,"63874-0565-10 ")
 ;;1198
 ;;21,"63874-0565-12 ")
 ;;1199
 ;;21,"63874-0565-15 ")
 ;;1200
 ;;21,"63874-0565-20 ")
 ;;1201
 ;;21,"63874-0565-30 ")
 ;;1202
 ;;21,"63874-0565-60 ")
 ;;1203
 ;;21,"63874-0600-10 ")
 ;;1204
 ;;21,"63874-0600-14 ")
 ;;1205
 ;;21,"63874-0600-15 ")
 ;;1206
 ;;21,"63874-0600-20 ")
 ;;1207
 ;;21,"63874-0600-30 ")
 ;;1208
 ;;21,"63874-0600-60 ")
 ;;1209
 ;;21,"63874-0711-12 ")
 ;;1210
 ;;21,"63874-0711-18 ")
 ;;1211
 ;;21,"63874-0757-01 ")
 ;;1212
 ;;21,"63874-0757-04 ")
 ;;1213
 ;;21,"63874-0757-10 ")
 ;;1214
 ;;21,"63874-0757-15 ")
 ;;1215
 ;;21,"63874-0757-20 ")
 ;;1216
 ;;21,"63874-0757-21 ")
 ;;1217
 ;;21,"63874-0757-24 ")
 ;;1218
 ;;21,"63874-0757-28 ")
 ;;1219
 ;;21,"63874-0757-30 ")
 ;;1220
 ;;21,"63874-0757-60 ")
 ;;1221
 ;;21,"63874-0757-90 ")
 ;;1222
 ;;21,"64125-0136-01 ")
 ;;1223
 ;;21,"64125-0136-10 ")
 ;;1224
 ;;21,"64125-0137-01 ")
 ;;1225
 ;;21,"64125-0137-10 ")
 ;;1226
 ;;21,"64125-0138-01 ")
 ;;1227
 ;;21,"64125-0138-10 ")
 ;;1228
 ;;21,"64205-0521-20 ")
 ;;1229
 ;;21,"64205-0745-30 ")
 ;;1230
 ;;21,"64376-0605-01 ")
 ;;1231
 ;;21,"64376-0612-16 ")
 ;;1232
 ;;21,"64376-0612-40 ")
 ;;1233
 ;;21,"64376-0657-16 ")
 ;;1234
 ;;21,"64376-0657-40 ")
 ;;1235
 ;;21,"64543-0084-90 ")
 ;;1236
 ;;21,"64543-0085-01 ")
 ;;1237
 ;;21,"64543-0091-90 ")
 ;;1238
 ;;21,"64661-0060-16 ")
 ;;1239
 ;;21,"64661-0090-04 ")
 ;;1240
 ;;21,"64720-0143-10 ")
 ;;1241
 ;;21,"64720-0143-11 ")
 ;;1242
 ;;21,"64720-0144-10 ")
 ;;1243
 ;;21,"64720-0144-11 ")
 ;;1244
 ;;21,"64720-0145-10 ")
 ;;1245
 ;;21,"64720-0145-11 ")
 ;;1246
 ;;21,"64720-0150-10 ")
 ;;1247
 ;;21,"64720-0150-11 ")
 ;;1248
 ;;21,"64980-0123-10 ")
 ;;1249
 ;;21,"64980-0169-01 ")
 ;;1250
 ;;21,"64980-0169-05 ")
 ;;1251
 ;;21,"64980-0170-01 ")
 ;;1252
 ;;21,"64980-0170-05 ")
 ;;1253
 ;;21,"64980-0504-48 ")
 ;;1254
 ;;21,"65162-0521-10 ")
 ;;1255
 ;;21,"65162-0521-11 ")
 ;;1256
 ;;21,"65162-0522-10 ")
 ;;1257
 ;;21,"65162-0694-86 ")
 ;;1258
 ;;21,"65162-0694-90 ")
 ;;1259
 ;;21,"65162-0745-10 ")
 ;;1260
 ;;21,"65224-0539-30 ")
 ;;1261
 ;;21,"66116-0230-30 ")
 ;;1262
 ;;21,"66116-0284-12 ")
 ;;1263
 ;;21,"66116-0488-30 ")
 ;;1264
 ;;21,"66116-0618-18 ")
 ;;1265
 ;;21,"66116-0651-30 ")
 ;;1266
 ;;21,"66267-0112-15 ")
 ;;1267
 ;;21,"66267-0112-30 ")
 ;;1268
 ;;21,"66267-0112-40 ")
 ;;1269
 ;;21,"66267-0112-60 ")
 ;;1270
 ;;21,"66267-0113-15 ")
 ;;1271
 ;;21,"66267-0113-20 ")
 ;;1272
 ;;21,"66267-0113-30 ")
 ;;1273
 ;;21,"66267-0114-20 ")
 ;;1274
 ;;21,"66267-0114-30 ")
 ;;1275
 ;;21,"66267-0177-10 ")
 ;;1276
 ;;21,"66267-0177-15 ")
 ;;1277
 ;;21,"66267-0177-20 ")
 ;;1278
 ;;21,"66267-0177-30 ")
 ;;1279
 ;;21,"66267-0177-60 ")
 ;;1280
 ;;21,"66267-0177-90 ")
 ;;1281
 ;;21,"66267-0813-06 ")
 ;;1282
 ;;21,"66336-0085-90 ")
 ;;1283
 ;;21,"66336-0085-94 ")
 ;;1284
 ;;21,"66336-0086-60 ")
 ;;1285
 ;;21,"66336-0776-30 ")
 ;;1286
 ;;21,"66336-0776-60 ")
 ;;1287
 ;;21,"66993-0534-02 ")
 ;;1288
 ;;21,"66993-0537-57 ")
 ;;1289
 ;;21,"67405-0575-10 ")
 ;;1290
 ;;21,"67405-0575-50 ")
 ;;1291
 ;;21,"67405-0575-96 ")
 ;;1292
 ;;21,"67405-0577-10 ")
 ;;1293
 ;;21,"67405-0577-50 ")
 ;;1294
 ;;21,"67405-0671-10 ")
 ;;1295
 ;;21,"67405-0671-50 ")
 ;;1296
 ;;21,"67405-0671-96 ")
 ;;1297
 ;;21,"67537-0273-60 ")
 ;;1298
 ;;21,"67544-0677-30 ")
 ;;1299
 ;;21,"67544-0677-53 ")
 ;;1300
 ;;21,"67544-0677-60 ")
 ;;1301
 ;;21,"67544-0791-30 ")
 ;;1302
 ;;21,"67544-0791-53 ")
 ;;1303
 ;;21,"67544-0791-60 ")
 ;;1304
 ;;21,"68001-0161-00 ")
 ;;1305
 ;;21,"68001-0162-00 ")
 ;;1306
 ;;21,"68001-0162-08 ")
 ;;1307
 ;;21,"68001-0163-00 ")
 ;;1308
 ;;21,"68047-0129-16 ")
 ;;1309
 ;;21,"68071-0448-60 ")
 ;;1310
 ;;21,"68084-0154-01 ")
 ;;1311
 ;;21,"68084-0154-11 ")
 ;;1312
 ;;21,"68084-0155-01 ")
 ;;1313
 ;;21,"68084-0155-11 ")
 ;;1314
 ;;21,"68084-0253-01 ")
 ;;1315
 ;;21,"68084-0253-11 ")
 ;;1316
 ;;21,"68084-0254-01 ")
 ;;1317
 ;;21,"68084-0254-11 ")
 ;;1318
 ;;21,"68084-0255-01 ")
 ;;1319
 ;;21,"68084-0255-11 ")
 ;;1320
 ;;21,"68084-0381-01 ")
 ;;1321
 ;;21,"68084-0381-11 ")
 ;;1322
 ;;21,"68084-0388-01 ")
 ;;1323
 ;;21,"68084-0388-11 ")
 ;;1324
 ;;21,"68084-0389-01 ")
 ;;1325
 ;;21,"68084-0389-11 ")
 ;;1326
 ;;21,"68084-0847-01 ")
 ;;1327
 ;;21,"68084-0847-11 ")
 ;;1328
 ;;21,"68258-3011-04 ")
 ;;1329
 ;;21,"68258-3028-01 ")
 ;;1330
 ;;21,"68382-0040-01 ")
 ;;1331
 ;;21,"68382-0040-10 ")
 ;;1332
 ;;21,"68382-0041-01 ")
 ;;1333
 ;;21,"68382-0041-10 ")
 ;;1334
 ;;21,"68382-0042-01 ")
 ;;1335
 ;;21,"68382-0042-10 ")
 ;;1336
 ;;21,"68462-0352-01 ")
 ;;1337
 ;;21,"68462-0352-05 ")
 ;;1338
 ;;21,"68462-0353-01 ")
 ;;1339
 ;;21,"68462-0353-05 ")
 ;;1340
 ;;21,"68462-0354-01 ")
 ;;1341
 ;;21,"68462-0354-05 ")
 ;;1342
 ;;21,"68462-0360-01 ")
 ;;1343
 ;;21,"68462-0360-05 ")
 ;;1344
 ;;21,"68462-0361-01 ")
 ;;1345
 ;;21,"68462-0361-05 ")
 ;;1346
 ;;21,"68462-0362-01 ")
 ;;1347
 ;;21,"68462-0362-05 ")
 ;;1348
 ;;21,"68788-9183-01 ")
 ;;1349
 ;;21,"68788-9183-03 ")
 ;;1350
 ;;21,"68788-9183-06 ")
 ;;1351
 ;;21,"68788-9466-04 ")
 ;;1352
 ;;21,"68788-9679-01 ")
 ;;1353
 ;;21,"68788-9679-03 ")
 ;;1354
 ;;21,"68788-9679-06 ")
 ;;1355
 ;;21,"68788-9762-01 ")
 ;;1356
