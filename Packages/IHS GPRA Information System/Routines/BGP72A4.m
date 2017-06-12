BGP72A4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"43547-0357-50 ")
 ;;1024
 ;;21,"43547-0358-10 ")
 ;;1025
 ;;21,"43547-0358-50 ")
 ;;1026
 ;;21,"43547-0359-10 ")
 ;;1027
 ;;21,"43547-0359-50 ")
 ;;1028
 ;;21,"43683-0123-60 ")
 ;;1029
 ;;21,"43683-0124-30 ")
 ;;1030
 ;;21,"43683-0131-30 ")
 ;;1031
 ;;21,"43683-0131-60 ")
 ;;1032
 ;;21,"43683-0132-30 ")
 ;;1033
 ;;21,"43683-0132-60 ")
 ;;1034
 ;;21,"45802-0087-65 ")
 ;;1035
 ;;21,"45802-0103-65 ")
 ;;1036
 ;;21,"45802-0150-65 ")
 ;;1037
 ;;21,"45802-0169-72 ")
 ;;1038
 ;;21,"45802-0211-72 ")
 ;;1039
 ;;21,"45802-0238-65 ")
 ;;1040
 ;;21,"45802-0260-65 ")
 ;;1041
 ;;21,"45802-0304-65 ")
 ;;1042
 ;;21,"45802-0351-65 ")
 ;;1043
 ;;21,"45802-0402-65 ")
 ;;1044
 ;;21,"45802-0499-65 ")
 ;;1045
 ;;21,"45802-0770-78 ")
 ;;1046
 ;;21,"45802-0822-78 ")
 ;;1047
 ;;21,"45802-0947-78 ")
 ;;1048
 ;;21,"45963-0753-02 ")
 ;;1049
 ;;21,"47463-0241-30 ")
 ;;1050
 ;;21,"47463-0242-30 ")
 ;;1051
 ;;21,"47463-0243-30 ")
 ;;1052
 ;;21,"47463-0243-60 ")
 ;;1053
 ;;21,"47463-0244-30 ")
 ;;1054
 ;;21,"47463-0245-30 ")
 ;;1055
 ;;21,"47463-0245-60 ")
 ;;1056
 ;;21,"47463-0246-30 ")
 ;;1057
 ;;21,"47463-0247-30 ")
 ;;1058
 ;;21,"47463-0248-90 ")
 ;;1059
 ;;21,"47463-0434-60 ")
 ;;1060
 ;;21,"47463-0435-60 ")
 ;;1061
 ;;21,"47463-0508-30 ")
 ;;1062
 ;;21,"47463-0509-30 ")
 ;;1063
 ;;21,"47463-0509-60 ")
 ;;1064
 ;;21,"47463-0509-74 ")
 ;;1065
 ;;21,"47463-0509-90 ")
 ;;1066
 ;;21,"47463-0510-30 ")
 ;;1067
 ;;21,"47463-0510-60 ")
 ;;1068
 ;;21,"47463-0510-71 ")
 ;;1069
 ;;21,"47463-0510-74 ")
 ;;1070
 ;;21,"47463-0510-90 ")
 ;;1071
 ;;21,"47463-0583-30 ")
 ;;1072
 ;;21,"47463-0584-30 ")
 ;;1073
 ;;21,"47463-0585-30 ")
 ;;1074
 ;;21,"47463-0611-60 ")
 ;;1075
 ;;21,"47463-0611-74 ")
 ;;1076
 ;;21,"47463-0612-30 ")
 ;;1077
 ;;21,"47463-0764-60 ")
 ;;1078
 ;;21,"47463-0765-30 ")
 ;;1079
 ;;21,"47463-0766-30 ")
 ;;1080
 ;;21,"47463-0777-30 ")
 ;;1081
 ;;21,"49884-0745-01 ")
 ;;1082
 ;;21,"49884-0745-05 ")
 ;;1083
 ;;21,"49884-0746-01 ")
 ;;1084
 ;;21,"49884-0746-05 ")
 ;;1085
 ;;21,"49884-0984-01 ")
 ;;1086
 ;;21,"49884-0985-01 ")
 ;;1087
 ;;21,"49999-0106-00 ")
 ;;1088
 ;;21,"49999-0106-01 ")
 ;;1089
 ;;21,"49999-0106-28 ")
 ;;1090
 ;;21,"49999-0106-30 ")
 ;;1091
 ;;21,"49999-0106-60 ")
 ;;1092
 ;;21,"49999-0106-90 ")
 ;;1093
 ;;21,"49999-0107-00 ")
 ;;1094
 ;;21,"49999-0107-20 ")
 ;;1095
 ;;21,"49999-0107-30 ")
 ;;1096
 ;;21,"49999-0107-60 ")
 ;;1097
 ;;21,"49999-0107-90 ")
 ;;1098
 ;;21,"49999-0108-00 ")
 ;;1099
 ;;21,"49999-0108-30 ")
 ;;1100
 ;;21,"49999-0108-60 ")
 ;;1101
 ;;21,"49999-0108-90 ")
 ;;1102
 ;;21,"49999-0113-00 ")
 ;;1103
 ;;21,"49999-0113-01 ")
 ;;1104
 ;;21,"49999-0113-30 ")
 ;;1105
 ;;21,"49999-0113-60 ")
 ;;1106
 ;;21,"49999-0113-90 ")
 ;;1107
 ;;21,"49999-0116-00 ")
 ;;1108
 ;;21,"49999-0116-30 ")
 ;;1109
 ;;21,"49999-0116-60 ")
 ;;1110
 ;;21,"49999-0304-30 ")
 ;;1111
 ;;21,"49999-0401-30 ")
 ;;1112
 ;;21,"49999-0401-60 ")
 ;;1113
 ;;21,"49999-0401-90 ")
 ;;1114
 ;;21,"49999-0449-15 ")
 ;;1115
 ;;21,"49999-0449-30 ")
 ;;1116
 ;;21,"49999-0450-30 ")
 ;;1117
 ;;21,"49999-0451-30 ")
 ;;1118
 ;;21,"49999-0495-30 ")
 ;;1119
 ;;21,"49999-0495-60 ")
 ;;1120
 ;;21,"49999-0514-30 ")
 ;;1121
 ;;21,"49999-0571-60 ")
 ;;1122
 ;;21,"49999-0660-30 ")
 ;;1123
 ;;21,"49999-0660-60 ")
 ;;1124
 ;;21,"49999-0781-00 ")
 ;;1125
 ;;21,"49999-0781-30 ")
 ;;1126
 ;;21,"49999-0781-60 ")
 ;;1127
 ;;21,"49999-0781-90 ")
 ;;1128
 ;;21,"49999-0807-00 ")
 ;;1129
 ;;21,"49999-0807-30 ")
 ;;1130
 ;;21,"49999-0807-60 ")
 ;;1131
 ;;21,"49999-0807-90 ")
 ;;1132
 ;;21,"49999-0808-00 ")
 ;;1133
 ;;21,"49999-0820-30 ")
 ;;1134
 ;;21,"49999-0820-60 ")
 ;;1135
 ;;21,"49999-0820-90 ")
 ;;1136
 ;;21,"49999-0935-30 ")
 ;;1137
 ;;21,"50268-0531-11 ")
 ;;1138
 ;;21,"50268-0531-15 ")
 ;;1139
 ;;21,"50268-0532-11 ")
 ;;1140
 ;;21,"50268-0532-13 ")
 ;;1141
 ;;21,"50458-0140-30 ")
 ;;1142
 ;;21,"50458-0140-90 ")
 ;;1143
 ;;21,"50458-0141-30 ")
 ;;1144
 ;;21,"50458-0141-90 ")
 ;;1145
 ;;21,"50458-0540-60 ")
 ;;1146
 ;;21,"50458-0541-60 ")
 ;;1147
 ;;21,"50458-0542-60 ")
 ;;1148
 ;;21,"50458-0543-60 ")
 ;;1149
 ;;21,"50742-0154-01 ")
 ;;1150
 ;;21,"50742-0154-05 ")
 ;;1151
 ;;21,"50742-0154-10 ")
 ;;1152
 ;;21,"50742-0154-90 ")
 ;;1153
 ;;21,"50742-0155-01 ")
 ;;1154
 ;;21,"50742-0155-05 ")
 ;;1155
 ;;21,"50742-0155-10 ")
 ;;1156
 ;;21,"50742-0155-90 ")
 ;;1157
 ;;21,"50742-0156-01 ")
 ;;1158
 ;;21,"50742-0156-05 ")
 ;;1159
 ;;21,"50742-0156-10 ")
 ;;1160
 ;;21,"50742-0156-90 ")
 ;;1161
 ;;21,"51079-0062-01 ")
 ;;1162
 ;;21,"51079-0062-03 ")
 ;;1163
 ;;21,"51079-0172-01 ")
 ;;1164
 ;;21,"51079-0172-20 ")
 ;;1165
 ;;21,"51079-0173-01 ")
 ;;1166
 ;;21,"51079-0173-08 ")
 ;;1167
 ;;21,"51079-0174-01 ")
 ;;1168
 ;;21,"51079-0174-20 ")
 ;;1169
 ;;21,"51079-0425-01 ")
 ;;1170
 ;;21,"51079-0425-20 ")
 ;;1171
 ;;21,"51079-0426-01 ")
 ;;1172
 ;;21,"51079-0426-20 ")
 ;;1173
 ;;21,"51079-0513-01 ")
 ;;1174
 ;;21,"51079-0513-20 ")
 ;;1175
 ;;21,"51079-0514-01 ")
 ;;1176
 ;;21,"51079-0514-20 ")
 ;;1177
 ;;21,"51079-0515-01 ")
 ;;1178
 ;;21,"51079-0515-20 ")
 ;;1179
 ;;21,"51079-0539-01 ")
 ;;1180
 ;;21,"51079-0539-03 ")
 ;;1181
 ;;21,"51079-0555-01 ")
 ;;1182
 ;;21,"51079-0555-03 ")
 ;;1183
 ;;21,"51079-0810-01 ")
 ;;1184
 ;;21,"51079-0810-17 ")
 ;;1185
 ;;21,"51079-0810-19 ")
 ;;1186
 ;;21,"51079-0810-20 ")
 ;;1187
 ;;21,"51079-0811-01 ")
 ;;1188
 ;;21,"51079-0811-17 ")
 ;;1189
 ;;21,"51079-0811-19 ")
 ;;1190
 ;;21,"51079-0811-20 ")
 ;;1191
 ;;21,"51079-0872-01 ")
 ;;1192
 ;;21,"51079-0872-20 ")
 ;;1193
 ;;21,"51079-0873-01 ")
 ;;1194
 ;;21,"51079-0873-17 ")
 ;;1195
 ;;21,"51079-0873-19 ")
 ;;1196
 ;;21,"51079-0873-20 ")
 ;;1197
 ;;21,"51079-0972-17 ")
 ;;1198
 ;;21,"51079-0972-19 ")
 ;;1199
 ;;21,"51079-0972-30 ")
 ;;1200
 ;;21,"51079-0972-56 ")
 ;;1201
 ;;21,"51138-0074-30 ")
 ;;1202
 ;;21,"51138-0075-30 ")
 ;;1203
 ;;21,"51138-0076-30 ")
 ;;1204
 ;;21,"51138-0083-30 ")
 ;;1205
 ;;21,"51138-0084-30 ")
 ;;1206
 ;;21,"51138-0085-30 ")
 ;;1207
 ;;21,"51138-0214-15 ")
 ;;1208
 ;;21,"51138-0214-30 ")
 ;;1209
 ;;21,"51138-0215-15 ")
 ;;1210
 ;;21,"51138-0215-30 ")
 ;;1211
 ;;21,"51138-0216-15 ")
 ;;1212
 ;;21,"51138-0216-30 ")
 ;;1213
 ;;21,"51138-0251-30 ")
 ;;1214
 ;;21,"51138-0252-30 ")
 ;;1215
 ;;21,"51138-0265-30 ")
 ;;1216
 ;;21,"51138-0266-30 ")
 ;;1217
 ;;21,"51138-0267-30 ")
 ;;1218
 ;;21,"51138-0268-30 ")
 ;;1219
 ;;21,"51138-0269-30 ")
 ;;1220
 ;;21,"51138-0270-30 ")
 ;;1221
 ;;21,"51138-0271-30 ")
 ;;1222
 ;;21,"51138-0337-30 ")
 ;;1223
 ;;21,"51138-0338-30 ")
 ;;1224
 ;;21,"51138-0339-30 ")
 ;;1225
 ;;21,"51138-0367-30 ")
 ;;1226
 ;;21,"51138-0368-30 ")
 ;;1227
 ;;21,"51138-0369-30 ")
 ;;1228
 ;;21,"51138-0370-30 ")
 ;;1229
 ;;21,"51138-0371-30 ")
 ;;1230
 ;;21,"51138-0372-10 ")
 ;;1231
 ;;21,"51138-0372-30 ")
 ;;1232
 ;;21,"51138-0470-30 ")
 ;;1233
 ;;21,"51138-0471-30 ")
 ;;1234
 ;;21,"51138-0472-30 ")
 ;;1235
 ;;21,"51138-0473-30 ")
 ;;1236
 ;;21,"51138-0474-30 ")
 ;;1237
 ;;21,"51138-0475-30 ")
 ;;1238
 ;;21,"51138-0479-30 ")
 ;;1239
 ;;21,"51138-0480-30 ")
 ;;1240
 ;;21,"51138-0481-30 ")
 ;;1241
 ;;21,"51138-0495-20 ")
 ;;1242
 ;;21,"51138-0495-30 ")
 ;;1243
 ;;21,"51138-0496-30 ")
 ;;1244
 ;;21,"51138-0497-30 ")
 ;;1245
 ;;21,"51138-0499-30 ")
 ;;1246
 ;;21,"51138-0500-30 ")
 ;;1247
 ;;21,"51138-0501-30 ")
 ;;1248
 ;;21,"51138-0526-30 ")
 ;;1249
 ;;21,"51138-0527-30 ")
 ;;1250
 ;;21,"51138-0537-10 ")
 ;;1251
 ;;21,"51138-0537-30 ")
 ;;1252
 ;;21,"51138-0538-10 ")
 ;;1253
 ;;21,"51138-0538-30 ")
 ;;1254
 ;;21,"51138-0539-10 ")
 ;;1255
 ;;21,"51138-0539-30 ")
 ;;1256
 ;;21,"51138-0540-10 ")
 ;;1257
 ;;21,"51138-0540-30 ")
 ;;1258
 ;;21,"51224-0007-50 ")
 ;;1259
 ;;21,"51224-0007-60 ")
 ;;1260
 ;;21,"51224-0107-50 ")
 ;;1261
 ;;21,"51224-0107-60 ")
 ;;1262
 ;;21,"51991-0708-10 ")
 ;;1263
 ;;21,"51991-0708-33 ")
 ;;1264
 ;;21,"51991-0708-90 ")
 ;;1265
 ;;21,"51991-0709-10 ")
 ;;1266
 ;;21,"51991-0709-33 ")
 ;;1267
 ;;21,"51991-0709-90 ")
 ;;1268
 ;;21,"51991-0710-10 ")
 ;;1269
 ;;21,"51991-0710-33 ")
 ;;1270
 ;;21,"51991-0710-90 ")
 ;;1271
 ;;21,"51991-0853-01 ")
 ;;1272
 ;;21,"51991-0854-01 ")
 ;;1273
 ;;21,"51991-0855-01 ")
 ;;1274
 ;;21,"52343-0053-05 ")
 ;;1275
 ;;21,"52343-0053-30 ")
 ;;1276
 ;;21,"52343-0053-90 ")
 ;;1277
 ;;21,"52343-0054-05 ")
 ;;1278
 ;;21,"52343-0054-30 ")
 ;;1279
 ;;21,"52343-0054-90 ")
 ;;1280
 ;;21,"52343-0055-05 ")
 ;;1281
 ;;21,"52343-0055-30 ")
 ;;1282
 ;;21,"52343-0055-90 ")
 ;;1283
 ;;21,"52959-0207-00 ")
 ;;1284
 ;;21,"52959-0207-28 ")
 ;;1285
 ;;21,"52959-0207-30 ")
 ;;1286
 ;;21,"52959-0207-60 ")
 ;;1287
 ;;21,"52959-0449-01 ")
 ;;1288
 ;;21,"52959-0449-30 ")
 ;;1289
 ;;21,"52959-0449-60 ")
 ;;1290
 ;;21,"52959-0598-90 ")
 ;;1291
 ;;21,"52959-0822-00 ")
 ;;1292
 ;;21,"52959-0822-30 ")
 ;;1293
 ;;21,"52959-0822-60 ")
 ;;1294
 ;;21,"52959-0823-20 ")
 ;;1295
 ;;21,"52959-0823-60 ")
 ;;1296
 ;;21,"52959-0860-02 ")
 ;;1297
 ;;21,"52959-0860-30 ")
 ;;1298
 ;;21,"52959-0860-60 ")
 ;;1299
 ;;21,"52959-0860-90 ")
 ;;1300
 ;;21,"52959-0888-00 ")
 ;;1301
 ;;21,"52959-0888-30 ")
 ;;1302
 ;;21,"52959-0896-01 ")
 ;;1303
 ;;21,"52959-0896-60 ")
 ;;1304
 ;;21,"52959-0936-30 ")
 ;;1305
 ;;21,"52959-0936-60 ")
 ;;1306
 ;;21,"53002-0446-00 ")
 ;;1307
 ;;21,"53002-0446-30 ")
 ;;1308
 ;;21,"53002-0446-60 ")
 ;;1309
 ;;21,"53002-1111-00 ")
 ;;1310
 ;;21,"53002-1111-03 ")
 ;;1311
 ;;21,"53002-1111-06 ")
 ;;1312
 ;;21,"53002-1251-00 ")
 ;;1313
 ;;21,"53002-1251-03 ")
 ;;1314
 ;;21,"53002-1251-06 ")
 ;;1315
 ;;21,"53002-1422-00 ")
 ;;1316
 ;;21,"53002-1422-03 ")
 ;;1317
 ;;21,"53002-1422-06 ")
 ;;1318
 ;;21,"53002-1445-00 ")
 ;;1319
 ;;21,"53002-1445-03 ")
 ;;1320
 ;;21,"53002-1445-06 ")
 ;;1321
 ;;21,"53217-0095-30 ")
 ;;1322
 ;;21,"53217-0095-90 ")
 ;;1323
 ;;21,"53217-0196-30 ")
 ;;1324
 ;;21,"53217-0196-60 ")
 ;;1325
 ;;21,"53217-0196-90 ")
 ;;1326
 ;;21,"53746-0178-01 ")
 ;;1327
 ;;21,"53746-0178-05 ")
 ;;1328
 ;;21,"53746-0178-10 ")
 ;;1329
 ;;21,"53746-0178-90 ")
 ;;1330
 ;;21,"53746-0179-01 ")
 ;;1331
 ;;21,"53746-0179-05 ")
 ;;1332
 ;;21,"53746-0218-01 ")
 ;;1333
 ;;21,"53746-0218-05 ")
 ;;1334
 ;;21,"53746-0218-10 ")
 ;;1335
 ;;21,"53746-0219-01 ")
 ;;1336
 ;;21,"53746-0219-05 ")
 ;;1337
 ;;21,"53746-0219-10 ")
 ;;1338
 ;;21,"53746-0220-01 ")
 ;;1339
 ;;21,"53746-0220-05 ")
 ;;1340
 ;;21,"53746-0220-10 ")
 ;;1341
 ;;21,"54348-0098-30 ")
 ;;1342
 ;;21,"54348-0104-30 ")
 ;;1343
 ;;21,"54458-0864-10 ")
 ;;1344
 ;;21,"54458-0865-10 ")
 ;;1345
 ;;21,"54458-0866-10 ")
 ;;1346
 ;;21,"54458-0883-10 ")
 ;;1347
 ;;21,"54458-0884-10 ")
 ;;1348
 ;;21,"54458-0885-10 ")
 ;;1349
 ;;21,"54458-0966-10 ")
 ;;1350
 ;;21,"54458-0967-10 ")
 ;;1351
 ;;21,"54458-0968-10 ")
 ;;1352
 ;;21,"54569-3830-00 ")
 ;;1353
 ;;21,"54569-3830-02 ")
 ;;1354
 ;;21,"54569-3831-00 ")
 ;;1355
 ;;21,"54569-3831-01 ")
 ;;1356
