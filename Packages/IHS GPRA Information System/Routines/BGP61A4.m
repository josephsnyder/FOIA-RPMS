BGP61A4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"50436-3072-02 ")
 ;;1024
 ;;21,"50436-3072-05 ")
 ;;1025
 ;;21,"50436-3073-01 ")
 ;;1026
 ;;21,"50436-3073-02 ")
 ;;1027
 ;;21,"50436-3074-01 ")
 ;;1028
 ;;21,"50436-3075-01 ")
 ;;1029
 ;;21,"50436-4565-01 ")
 ;;1030
 ;;21,"50436-4856-01 ")
 ;;1031
 ;;21,"50436-4856-02 ")
 ;;1032
 ;;21,"50436-5537-01 ")
 ;;1033
 ;;21,"50436-5538-01 ")
 ;;1034
 ;;21,"50436-5538-04 ")
 ;;1035
 ;;21,"50436-5539-01 ")
 ;;1036
 ;;21,"50436-5539-04 ")
 ;;1037
 ;;21,"50991-0514-16 ")
 ;;1038
 ;;21,"51079-0107-01 ")
 ;;1039
 ;;21,"51079-0107-17 ")
 ;;1040
 ;;21,"51079-0107-19 ")
 ;;1041
 ;;21,"51079-0107-20 ")
 ;;1042
 ;;21,"51079-0107-63 ")
 ;;1043
 ;;21,"51079-0131-01 ")
 ;;1044
 ;;21,"51079-0131-20 ")
 ;;1045
 ;;21,"51079-0131-63 ")
 ;;1046
 ;;21,"51079-0133-01 ")
 ;;1047
 ;;21,"51079-0133-20 ")
 ;;1048
 ;;21,"51079-0133-63 ")
 ;;1049
 ;;21,"51079-0147-01 ")
 ;;1050
 ;;21,"51079-0147-20 ")
 ;;1051
 ;;21,"51079-0349-01 ")
 ;;1052
 ;;21,"51079-0349-03 ")
 ;;1053
 ;;21,"51079-0414-01 ")
 ;;1054
 ;;21,"51079-0414-03 ")
 ;;1055
 ;;21,"51079-0436-01 ")
 ;;1056
 ;;21,"51079-0436-20 ")
 ;;1057
 ;;21,"51079-0437-01 ")
 ;;1058
 ;;21,"51079-0437-20 ")
 ;;1059
 ;;21,"51079-0438-01 ")
 ;;1060
 ;;21,"51079-0438-20 ")
 ;;1061
 ;;21,"51079-0563-01 ")
 ;;1062
 ;;21,"51079-0563-20 ")
 ;;1063
 ;;21,"51079-0565-01 ")
 ;;1064
 ;;21,"51079-0565-20 ")
 ;;1065
 ;;21,"51079-0566-01 ")
 ;;1066
 ;;21,"51079-0566-20 ")
 ;;1067
 ;;21,"51079-0567-01 ")
 ;;1068
 ;;21,"51079-0567-20 ")
 ;;1069
 ;;21,"51079-0580-01 ")
 ;;1070
 ;;21,"51079-0580-20 ")
 ;;1071
 ;;21,"51079-0651-01 ")
 ;;1072
 ;;21,"51079-0651-20 ")
 ;;1073
 ;;21,"51079-0724-01 ")
 ;;1074
 ;;21,"51079-0724-20 ")
 ;;1075
 ;;21,"51079-0725-01 ")
 ;;1076
 ;;21,"51079-0725-20 ")
 ;;1077
 ;;21,"51138-0001-30 ")
 ;;1078
 ;;21,"51138-0002-30 ")
 ;;1079
 ;;21,"51138-0003-30 ")
 ;;1080
 ;;21,"51138-0004-30 ")
 ;;1081
 ;;21,"51138-0005-30 ")
 ;;1082
 ;;21,"51138-0006-30 ")
 ;;1083
 ;;21,"51138-0028-30 ")
 ;;1084
 ;;21,"51138-0029-30 ")
 ;;1085
 ;;21,"51138-0030-30 ")
 ;;1086
 ;;21,"51138-0031-30 ")
 ;;1087
 ;;21,"51138-0032-30 ")
 ;;1088
 ;;21,"51285-0538-02 ")
 ;;1089
 ;;21,"51285-0539-02 ")
 ;;1090
 ;;21,"51285-0554-02 ")
 ;;1091
 ;;21,"51293-0605-01 ")
 ;;1092
 ;;21,"51293-0606-01 ")
 ;;1093
 ;;21,"51293-0625-01 ")
 ;;1094
 ;;21,"51293-0626-01 ")
 ;;1095
 ;;21,"51293-0627-01 ")
 ;;1096
 ;;21,"51293-0628-01 ")
 ;;1097
 ;;21,"51672-4011-05 ")
 ;;1098
 ;;21,"51672-4011-06 ")
 ;;1099
 ;;21,"51672-4012-05 ")
 ;;1100
 ;;21,"51672-4012-06 ")
 ;;1101
 ;;21,"51672-4013-05 ")
 ;;1102
 ;;21,"51672-4013-06 ")
 ;;1103
 ;;21,"51862-0179-01 ")
 ;;1104
 ;;21,"51991-0073-01 ")
 ;;1105
 ;;21,"51991-0074-01 ")
 ;;1106
 ;;21,"51991-0074-05 ")
 ;;1107
 ;;21,"51991-0080-51 ")
 ;;1108
 ;;21,"51991-0080-52 ")
 ;;1109
 ;;21,"52544-0080-01 ")
 ;;1110
 ;;21,"52544-0082-01 ")
 ;;1111
 ;;21,"52544-0955-01 ")
 ;;1112
 ;;21,"52544-0956-01 ")
 ;;1113
 ;;21,"52544-0957-01 ")
 ;;1114
 ;;21,"52544-0957-05 ")
 ;;1115
 ;;21,"52544-0958-01 ")
 ;;1116
 ;;21,"52959-0008-02 ")
 ;;1117
 ;;21,"52959-0008-15 ")
 ;;1118
 ;;21,"52959-0008-20 ")
 ;;1119
 ;;21,"52959-0008-30 ")
 ;;1120
 ;;21,"52959-0008-40 ")
 ;;1121
 ;;21,"52959-0008-50 ")
 ;;1122
 ;;21,"52959-0008-60 ")
 ;;1123
 ;;21,"52959-0008-90 ")
 ;;1124
 ;;21,"52959-0023-06 ")
 ;;1125
 ;;21,"52959-0023-20 ")
 ;;1126
 ;;21,"52959-0023-30 ")
 ;;1127
 ;;21,"52959-0023-50 ")
 ;;1128
 ;;21,"52959-0023-60 ")
 ;;1129
 ;;21,"52959-0274-03 ")
 ;;1130
 ;;21,"52959-0274-06 ")
 ;;1131
 ;;21,"52959-0274-30 ")
 ;;1132
 ;;21,"52959-0284-00 ")
 ;;1133
 ;;21,"52959-0284-30 ")
 ;;1134
 ;;21,"52959-0284-60 ")
 ;;1135
 ;;21,"52959-0348-00 ")
 ;;1136
 ;;21,"52959-0348-02 ")
 ;;1137
 ;;21,"52959-0348-10 ")
 ;;1138
 ;;21,"52959-0348-12 ")
 ;;1139
 ;;21,"52959-0348-14 ")
 ;;1140
 ;;21,"52959-0348-15 ")
 ;;1141
 ;;21,"52959-0348-20 ")
 ;;1142
 ;;21,"52959-0348-30 ")
 ;;1143
 ;;21,"52959-0348-50 ")
 ;;1144
 ;;21,"52959-0348-60 ")
 ;;1145
 ;;21,"52959-0348-90 ")
 ;;1146
 ;;21,"52959-0362-10 ")
 ;;1147
 ;;21,"52959-0362-15 ")
 ;;1148
 ;;21,"52959-0362-20 ")
 ;;1149
 ;;21,"52959-0362-30 ")
 ;;1150
 ;;21,"52959-0362-60 ")
 ;;1151
 ;;21,"52959-0363-10 ")
 ;;1152
 ;;21,"52959-0363-15 ")
 ;;1153
 ;;21,"52959-0363-20 ")
 ;;1154
 ;;21,"52959-0363-21 ")
 ;;1155
 ;;21,"52959-0363-25 ")
 ;;1156
 ;;21,"52959-0363-30 ")
 ;;1157
 ;;21,"52959-0363-60 ")
 ;;1158
 ;;21,"52959-0370-00 ")
 ;;1159
 ;;21,"52959-0370-02 ")
 ;;1160
 ;;21,"52959-0370-12 ")
 ;;1161
 ;;21,"52959-0370-20 ")
 ;;1162
 ;;21,"52959-0370-25 ")
 ;;1163
 ;;21,"52959-0370-30 ")
 ;;1164
 ;;21,"52959-0370-50 ")
 ;;1165
 ;;21,"52959-0370-60 ")
 ;;1166
 ;;21,"52959-0370-90 ")
 ;;1167
 ;;21,"52959-0399-00 ")
 ;;1168
 ;;21,"52959-0399-02 ")
 ;;1169
 ;;21,"52959-0399-30 ")
 ;;1170
 ;;21,"52959-0399-50 ")
 ;;1171
 ;;21,"52959-0399-90 ")
 ;;1172
 ;;21,"52959-0514-00 ")
 ;;1173
 ;;21,"52959-0514-01 ")
 ;;1174
 ;;21,"52959-0514-10 ")
 ;;1175
 ;;21,"52959-0514-20 ")
 ;;1176
 ;;21,"52959-0514-21 ")
 ;;1177
 ;;21,"52959-0514-30 ")
 ;;1178
 ;;21,"52959-0514-60 ")
 ;;1179
 ;;21,"52959-0514-90 ")
 ;;1180
 ;;21,"52959-0537-30 ")
 ;;1181
 ;;21,"52959-0537-90 ")
 ;;1182
 ;;21,"52959-0541-10 ")
 ;;1183
 ;;21,"52959-0541-20 ")
 ;;1184
 ;;21,"52959-0541-30 ")
 ;;1185
 ;;21,"52959-0541-60 ")
 ;;1186
 ;;21,"52959-0542-14 ")
 ;;1187
 ;;21,"52959-0542-15 ")
 ;;1188
 ;;21,"52959-0542-21 ")
 ;;1189
 ;;21,"52959-0542-28 ")
 ;;1190
 ;;21,"52959-0542-30 ")
 ;;1191
 ;;21,"52959-0542-40 ")
 ;;1192
 ;;21,"52959-0542-42 ")
 ;;1193
 ;;21,"52959-0662-30 ")
 ;;1194
 ;;21,"52959-0727-00 ")
 ;;1195
 ;;21,"52959-0727-10 ")
 ;;1196
 ;;21,"52959-0727-30 ")
 ;;1197
 ;;21,"52959-0767-30 ")
 ;;1198
 ;;21,"52959-0767-60 ")
 ;;1199
 ;;21,"52959-0791-30 ")
 ;;1200
 ;;21,"52959-0852-00 ")
 ;;1201
 ;;21,"52959-0852-10 ")
 ;;1202
 ;;21,"52959-0852-12 ")
 ;;1203
 ;;21,"52959-0852-30 ")
 ;;1204
 ;;21,"52959-0852-60 ")
 ;;1205
 ;;21,"52959-0865-00 ")
 ;;1206
 ;;21,"52959-0865-30 ")
 ;;1207
 ;;21,"52959-0870-30 ")
 ;;1208
 ;;21,"52959-0879-02 ")
 ;;1209
 ;;21,"52959-0879-10 ")
 ;;1210
 ;;21,"52959-0879-14 ")
 ;;1211
 ;;21,"52959-0879-15 ")
 ;;1212
 ;;21,"52959-0879-20 ")
 ;;1213
 ;;21,"52959-0879-28 ")
 ;;1214
 ;;21,"52959-0879-30 ")
 ;;1215
 ;;21,"52959-0879-42 ")
 ;;1216
 ;;21,"52959-0879-60 ")
 ;;1217
 ;;21,"52959-0879-90 ")
 ;;1218
 ;;21,"52959-0880-00 ")
 ;;1219
 ;;21,"52959-0880-02 ")
 ;;1220
 ;;21,"52959-0880-10 ")
 ;;1221
 ;;21,"52959-0880-14 ")
 ;;1222
 ;;21,"52959-0880-15 ")
 ;;1223
 ;;21,"52959-0880-20 ")
 ;;1224
 ;;21,"52959-0880-28 ")
 ;;1225
 ;;21,"52959-0880-30 ")
 ;;1226
 ;;21,"52959-0880-45 ")
 ;;1227
 ;;21,"52959-0880-60 ")
 ;;1228
 ;;21,"52959-0880-90 ")
 ;;1229
 ;;21,"52959-0881-30 ")
 ;;1230
 ;;21,"52959-0900-30 ")
 ;;1231
 ;;21,"52959-0912-60 ")
 ;;1232
 ;;21,"52959-0913-02 ")
 ;;1233
 ;;21,"52959-0913-30 ")
 ;;1234
 ;;21,"52959-0913-90 ")
 ;;1235
 ;;21,"52959-0919-00 ")
 ;;1236
 ;;21,"52959-0919-30 ")
 ;;1237
 ;;21,"52959-0919-60 ")
 ;;1238
 ;;21,"52959-0957-30 ")
 ;;1239
 ;;21,"52959-0971-30 ")
 ;;1240
 ;;21,"53002-0339-00 ")
 ;;1241
 ;;21,"53002-0339-30 ")
 ;;1242
 ;;21,"53002-0339-60 ")
 ;;1243
 ;;21,"53002-0491-00 ")
 ;;1244
 ;;21,"53002-0491-30 ")
 ;;1245
 ;;21,"53002-0491-60 ")
 ;;1246
 ;;21,"53002-0502-05 ")
 ;;1247
 ;;21,"53002-0502-10 ")
 ;;1248
 ;;21,"53002-0502-20 ")
 ;;1249
 ;;21,"53002-0502-30 ")
 ;;1250
 ;;21,"53002-1292-01 ")
 ;;1251
 ;;21,"53002-1292-02 ")
 ;;1252
 ;;21,"53002-1292-03 ")
 ;;1253
 ;;21,"53002-1594-01 ")
 ;;1254
 ;;21,"53217-0070-20 ")
 ;;1255
 ;;21,"53217-0070-30 ")
 ;;1256
 ;;21,"53217-0070-60 ")
 ;;1257
 ;;21,"53217-0075-30 ")
 ;;1258
 ;;21,"53217-0075-60 ")
 ;;1259
 ;;21,"53217-0125-02 ")
 ;;1260
 ;;21,"53217-0125-28 ")
 ;;1261
 ;;21,"53217-0125-30 ")
 ;;1262
 ;;21,"53217-0125-40 ")
 ;;1263
 ;;21,"53217-0125-56 ")
 ;;1264
 ;;21,"53217-0125-60 ")
 ;;1265
 ;;21,"53217-0125-84 ")
 ;;1266
 ;;21,"53217-0125-90 ")
 ;;1267
 ;;21,"53217-0149-30 ")
 ;;1268
 ;;21,"53217-0149-60 ")
 ;;1269
 ;;21,"53217-0150-30 ")
 ;;1270
 ;;21,"53217-0150-60 ")
 ;;1271
 ;;21,"53217-0151-30 ")
 ;;1272
 ;;21,"53217-0151-60 ")
 ;;1273
 ;;21,"53489-0148-01 ")
 ;;1274
 ;;21,"53489-0148-10 ")
 ;;1275
 ;;21,"53489-0149-01 ")
 ;;1276
 ;;21,"53489-0149-10 ")
 ;;1277
 ;;21,"53489-0150-01 ")
 ;;1278
 ;;21,"53489-0150-10 ")
 ;;1279
 ;;21,"53489-0281-01 ")
 ;;1280
 ;;21,"53489-0281-10 ")
 ;;1281
 ;;21,"53489-0330-01 ")
 ;;1282
 ;;21,"53489-0331-01 ")
 ;;1283
 ;;21,"53489-0332-01 ")
 ;;1284
 ;;21,"53489-0500-01 ")
 ;;1285
 ;;21,"54348-0507-30 ")
 ;;1286
 ;;21,"54348-0987-16 ")
 ;;1287
 ;;21,"54569-0172-00 ")
 ;;1288
 ;;21,"54569-0172-01 ")
 ;;1289
 ;;21,"54569-0172-04 ")
 ;;1290
 ;;21,"54569-0172-06 ")
 ;;1291
 ;;21,"54569-0172-07 ")
 ;;1292
 ;;21,"54569-0172-08 ")
 ;;1293
 ;;21,"54569-0175-00 ")
 ;;1294
 ;;21,"54569-0175-01 ")
 ;;1295
 ;;21,"54569-0175-02 ")
 ;;1296
 ;;21,"54569-0175-04 ")
 ;;1297
 ;;21,"54569-0175-08 ")
 ;;1298
 ;;21,"54569-0194-00 ")
 ;;1299
 ;;21,"54569-0337-02 ")
 ;;1300
 ;;21,"54569-0339-04 ")
 ;;1301
 ;;21,"54569-1519-00 ")
 ;;1302
 ;;21,"54569-1519-01 ")
 ;;1303
 ;;21,"54569-1519-02 ")
 ;;1304
 ;;21,"54569-1519-05 ")
 ;;1305
 ;;21,"54569-1696-01 ")
 ;;1306
 ;;21,"54569-2146-01 ")
 ;;1307
 ;;21,"54569-2146-02 ")
 ;;1308
 ;;21,"54569-2146-03 ")
 ;;1309
 ;;21,"54569-2538-00 ")
 ;;1310
 ;;21,"54569-2538-03 ")
 ;;1311
 ;;21,"54569-2538-05 ")
 ;;1312
 ;;21,"54569-3441-00 ")
 ;;1313
 ;;21,"54569-3827-03 ")
 ;;1314
 ;;21,"54569-3828-01 ")
 ;;1315
 ;;21,"54569-4837-00 ")
 ;;1316
 ;;21,"54569-4935-00 ")
 ;;1317
 ;;21,"54569-5684-00 ")
 ;;1318
 ;;21,"54569-5696-00 ")
 ;;1319
 ;;21,"54569-5760-00 ")
 ;;1320
 ;;21,"54569-5760-01 ")
 ;;1321
 ;;21,"54569-5906-00 ")
 ;;1322
 ;;21,"54569-5906-01 ")
 ;;1323
 ;;21,"54569-5906-02 ")
 ;;1324
 ;;21,"54569-5906-03 ")
 ;;1325
 ;;21,"54569-5906-04 ")
 ;;1326
 ;;21,"54569-5907-00 ")
 ;;1327
 ;;21,"54569-5907-01 ")
 ;;1328
 ;;21,"54569-6118-00 ")
 ;;1329
 ;;21,"54569-6118-01 ")
 ;;1330
 ;;21,"54569-6231-00 ")
 ;;1331
 ;;21,"54569-6231-01 ")
 ;;1332
 ;;21,"54569-6378-00 ")
 ;;1333
 ;;21,"54569-6543-00 ")
 ;;1334
 ;;21,"54569-6544-00 ")
 ;;1335
 ;;21,"54569-6554-00 ")
 ;;1336
 ;;21,"54569-8372-00 ")
 ;;1337
 ;;21,"54738-0912-01 ")
 ;;1338
 ;;21,"54738-0913-01 ")
 ;;1339
 ;;21,"54738-0914-01 ")
 ;;1340
 ;;21,"54838-0512-40 ")
 ;;1341
 ;;21,"54868-0031-00 ")
 ;;1342
 ;;21,"54868-0031-02 ")
 ;;1343
 ;;21,"54868-0031-04 ")
 ;;1344
 ;;21,"54868-0062-00 ")
 ;;1345
 ;;21,"54868-0062-02 ")
 ;;1346
 ;;21,"54868-0062-04 ")
 ;;1347
 ;;21,"54868-0064-02 ")
 ;;1348
 ;;21,"54868-0064-05 ")
 ;;1349
 ;;21,"54868-0064-06 ")
 ;;1350
 ;;21,"54868-0064-07 ")
 ;;1351
 ;;21,"54868-0065-00 ")
 ;;1352
 ;;21,"54868-0065-02 ")
 ;;1353
 ;;21,"54868-0065-03 ")
 ;;1354
 ;;21,"54868-0065-04 ")
 ;;1355
 ;;21,"54868-0065-05 ")
 ;;1356
