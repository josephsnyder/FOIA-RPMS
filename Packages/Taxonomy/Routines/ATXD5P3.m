ATXD5P3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"W34.111D ")
 ;;108
 ;;21,"W34.111S ")
 ;;109
 ;;21,"W34.118A ")
 ;;110
 ;;21,"W34.118D ")
 ;;111
 ;;21,"W34.118S ")
 ;;112
 ;;21,"W34.19XA ")
 ;;113
 ;;21,"W34.19XD ")
 ;;114
 ;;21,"W34.19XS ")
 ;;115
 ;;21,"W35.XXXA ")
 ;;999
 ;;21,"W35.XXXD ")
 ;;1000
 ;;21,"W35.XXXS ")
 ;;1001
 ;;21,"W36.1XXA ")
 ;;1002
 ;;21,"W36.1XXD ")
 ;;1003
 ;;21,"W36.1XXS ")
 ;;1004
 ;;21,"W36.2XXA ")
 ;;1005
 ;;21,"W36.2XXD ")
 ;;1006
 ;;21,"W36.2XXS ")
 ;;1007
 ;;21,"W36.3XXA ")
 ;;1008
 ;;21,"W36.3XXD ")
 ;;1009
 ;;21,"W36.3XXS ")
 ;;1010
 ;;21,"W36.8XXA ")
 ;;1011
 ;;21,"W36.8XXD ")
 ;;1012
 ;;21,"W36.8XXS ")
 ;;1013
 ;;21,"W36.9XXA ")
 ;;1014
 ;;21,"W36.9XXD ")
 ;;1015
 ;;21,"W36.9XXS ")
 ;;1016
 ;;21,"W37.0XXA ")
 ;;1017
 ;;21,"W37.0XXD ")
 ;;1018
 ;;21,"W37.0XXS ")
 ;;1019
 ;;21,"W37.8XXA ")
 ;;1020
 ;;21,"W37.8XXD ")
 ;;1021
 ;;21,"W37.8XXS ")
 ;;1022
 ;;21,"W38.XXXA ")
 ;;116
 ;;21,"W38.XXXD ")
 ;;117
 ;;21,"W38.XXXS ")
 ;;118
 ;;21,"W39.XXXA ")
 ;;1023
 ;;21,"W39.XXXD ")
 ;;1024
 ;;21,"W39.XXXS ")
 ;;1025
 ;;21,"W40.0XXA ")
 ;;1026
 ;;21,"W40.0XXD ")
 ;;1027
 ;;21,"W40.0XXS ")
 ;;1028
 ;;21,"W40.1XXA ")
 ;;1029
 ;;21,"W40.1XXD ")
 ;;1030
 ;;21,"W40.1XXS ")
 ;;1031
 ;;21,"W40.8XXA ")
 ;;1032
 ;;21,"W40.8XXD ")
 ;;1033
 ;;21,"W40.8XXS ")
 ;;1034
 ;;21,"W40.9XXA ")
 ;;1035
 ;;21,"W40.9XXD ")
 ;;1036
 ;;21,"W40.9XXS ")
 ;;1037
 ;;21,"W42.0XXA ")
 ;;1038
 ;;21,"W42.0XXD ")
 ;;1039
 ;;21,"W42.0XXS ")
 ;;1040
 ;;21,"W42.9XXA ")
 ;;1041
 ;;21,"W42.9XXD ")
 ;;1042
 ;;21,"W42.9XXS ")
 ;;1043
 ;;21,"W49.01XA ")
 ;;1044
 ;;21,"W49.01XD ")
 ;;1045
 ;;21,"W49.01XS ")
 ;;1046
 ;;21,"W49.02XA ")
 ;;1047
 ;;21,"W49.02XD ")
 ;;1048
 ;;21,"W49.02XS ")
 ;;1049
 ;;21,"W49.03XA ")
 ;;1050
 ;;21,"W49.03XD ")
 ;;1051
 ;;21,"W49.03XS ")
 ;;1052
 ;;21,"W49.04XA ")
 ;;1053
 ;;21,"W49.04XD ")
 ;;1054
 ;;21,"W49.04XS ")
 ;;1055
 ;;21,"W49.09XA ")
 ;;1056
 ;;21,"W49.09XD ")
 ;;1057
 ;;21,"W49.09XS ")
 ;;1058
 ;;21,"W49.9XXA ")
 ;;1059
 ;;21,"W49.9XXD ")
 ;;1060
 ;;21,"W49.9XXS ")
 ;;1061
 ;;21,"W50.0XXA ")
 ;;119
 ;;21,"W50.0XXD ")
 ;;120
 ;;21,"W50.0XXS ")
 ;;121
 ;;21,"W50.1XXA ")
 ;;122
 ;;21,"W50.1XXD ")
 ;;123
 ;;21,"W50.1XXS ")
 ;;124
 ;;21,"W50.2XXA ")
 ;;125
 ;;21,"W50.2XXD ")
 ;;126
 ;;21,"W50.2XXS ")
 ;;127
 ;;21,"W50.3XXA ")
 ;;128
 ;;21,"W50.3XXD ")
 ;;129
 ;;21,"W50.3XXS ")
 ;;130
 ;;21,"W50.4XXA ")
 ;;131
 ;;21,"W50.4XXD ")
 ;;132
 ;;21,"W50.4XXS ")
 ;;133
 ;;21,"W51.XXXA ")
 ;;134
 ;;21,"W51.XXXD ")
 ;;135
 ;;21,"W51.XXXS ")
 ;;136
 ;;21,"W52.XXXA ")
 ;;1062
 ;;21,"W52.XXXD ")
 ;;1063
 ;;21,"W52.XXXS ")
 ;;1064
 ;;21,"W65.XXXA ")
 ;;137
 ;;21,"W65.XXXD ")
 ;;138
 ;;21,"W65.XXXS ")
 ;;139
 ;;21,"W67.XXXA ")
 ;;140
 ;;21,"W67.XXXD ")
 ;;141
 ;;21,"W67.XXXS ")
 ;;142
 ;;21,"W69.XXXA ")
 ;;143
 ;;21,"W69.XXXD ")
 ;;144
 ;;21,"W69.XXXS ")
 ;;145
 ;;21,"W73.XXXA ")
 ;;146
 ;;21,"W73.XXXD ")
 ;;147
 ;;21,"W73.XXXS ")
 ;;148
 ;;21,"W74.XXXA ")
 ;;149
 ;;21,"W74.XXXD ")
 ;;150
 ;;21,"W74.XXXS ")
 ;;151
 ;;21,"W85.XXXA ")
 ;;1065
 ;;21,"W85.XXXD ")
 ;;1066
 ;;21,"W85.XXXS ")
 ;;1067
 ;;21,"W86.0XXA ")
 ;;1068
 ;;21,"W86.0XXD ")
 ;;1069
 ;;21,"W86.0XXS ")
 ;;1070
 ;;21,"W86.1XXA ")
 ;;1071
 ;;21,"W86.1XXD ")
 ;;1072
 ;;21,"W86.1XXS ")
 ;;1073
 ;;21,"W86.8XXA ")
 ;;1074
 ;;21,"W86.8XXD ")
 ;;1075
 ;;21,"W86.8XXS ")
 ;;1076
 ;;21,"W88.0XXA ")
 ;;1077
 ;;21,"W88.0XXD ")
 ;;1078
 ;;21,"W88.0XXS ")
 ;;1079
 ;;21,"W88.1XXA ")
 ;;1080
 ;;21,"W88.1XXD ")
 ;;1081
 ;;21,"W88.1XXS ")
 ;;1082
 ;;21,"W88.8XXA ")
 ;;1083
 ;;21,"W88.8XXD ")
 ;;1084
 ;;21,"W88.8XXS ")
 ;;1085
 ;;21,"W89.0XXA ")
 ;;1086
 ;;21,"W89.0XXD ")
 ;;1087
 ;;21,"W89.0XXS ")
 ;;1088
 ;;21,"W89.1XXA ")
 ;;1089
 ;;21,"W89.1XXD ")
 ;;1090
 ;;21,"W89.1XXS ")
 ;;1091
 ;;21,"W89.8XXA ")
 ;;1092
 ;;21,"W89.8XXD ")
 ;;1093
 ;;21,"W89.8XXS ")
 ;;1094
 ;;21,"W89.9XXA ")
 ;;1095
 ;;21,"W89.9XXD ")
 ;;1096
 ;;21,"W89.9XXS ")
 ;;1097
 ;;21,"W90.0XXA ")
 ;;1098
 ;;21,"W90.0XXD ")
 ;;1099
 ;;21,"W90.0XXS ")
 ;;1100
 ;;21,"W90.1XXA ")
 ;;1101
 ;;21,"W90.1XXD ")
 ;;1102
 ;;21,"W90.1XXS ")
 ;;1103
 ;;21,"W90.2XXA ")
 ;;1104
 ;;21,"W90.2XXD ")
 ;;1105
 ;;21,"W90.2XXS ")
 ;;1106
 ;;21,"W90.8XXA ")
 ;;1107
 ;;21,"W90.8XXD ")
 ;;1108
 ;;21,"W90.8XXS ")
 ;;1109
 ;;21,"W92.XXXA ")
 ;;1110
 ;;21,"W92.XXXD ")
 ;;1111
 ;;21,"W92.XXXS ")
 ;;1112
 ;;21,"X04.XXXA ")
 ;;1113
 ;;21,"X04.XXXD ")
 ;;1114
 ;;21,"X04.XXXS ")
 ;;1115
 ;;21,"X05.XXXA ")
 ;;1116
 ;;21,"X05.XXXD ")
 ;;1117
 ;;21,"X05.XXXS ")
 ;;1118
 ;;21,"X06.0XXA ")
 ;;1119
 ;;21,"X06.0XXD ")
 ;;1120
 ;;21,"X06.0XXS ")
 ;;1121
 ;;21,"X06.1XXA ")
 ;;1122
 ;;21,"X06.1XXD ")
 ;;1123
 ;;21,"X06.1XXS ")
 ;;1124
 ;;21,"X06.2XXA ")
 ;;1125
 ;;21,"X06.2XXD ")
 ;;1126
 ;;21,"X06.2XXS ")
 ;;1127
 ;;21,"X06.3XXA ")
 ;;1128
 ;;21,"X06.3XXD ")
 ;;1129
 ;;21,"X06.3XXS ")
 ;;1130
 ;;21,"X10.0XXA ")
 ;;1131
 ;;21,"X10.0XXD ")
 ;;1132
 ;;21,"X10.0XXS ")
 ;;1133
 ;;21,"X10.1XXA ")
 ;;1134
 ;;21,"X10.1XXD ")
 ;;1135
 ;;21,"X10.1XXS ")
 ;;1136
 ;;21,"X10.2XXA ")
 ;;1137
 ;;21,"X10.2XXD ")
 ;;1138
 ;;21,"X10.2XXS ")
 ;;1139
 ;;21,"X11.0XXA ")
 ;;1140
 ;;21,"X11.0XXD ")
 ;;1141
 ;;21,"X11.0XXS ")
 ;;1142
 ;;21,"X11.1XXA ")
 ;;1143
 ;;21,"X11.1XXD ")
 ;;1144
 ;;21,"X11.1XXS ")
 ;;1145
 ;;21,"X11.8XXA ")
 ;;1146
 ;;21,"X11.8XXD ")
 ;;1147
 ;;21,"X11.8XXS ")
 ;;1148
 ;;21,"X12.XXXA ")
 ;;1149
 ;;21,"X12.XXXD ")
 ;;1150
 ;;21,"X12.XXXS ")
 ;;1151
 ;;21,"X13.0XXA ")
 ;;1152
 ;;21,"X13.0XXD ")
 ;;1153
 ;;21,"X13.0XXS ")
 ;;1154
 ;;21,"X13.1XXA ")
 ;;1155
 ;;21,"X13.1XXD ")
 ;;1156
 ;;21,"X13.1XXS ")
 ;;1157
 ;;21,"X14.0XXA ")
 ;;1158
 ;;21,"X14.0XXD ")
 ;;1159
 ;;21,"X14.0XXS ")
 ;;1160
 ;;21,"X14.1XXA ")
 ;;1161
 ;;21,"X14.1XXD ")
 ;;1162
 ;;21,"X14.1XXS ")
 ;;1163
 ;;21,"X15.0XXA ")
 ;;1164
 ;;21,"X15.0XXD ")
 ;;1165
 ;;21,"X15.0XXS ")
 ;;1166
 ;;21,"X15.1XXA ")
 ;;1167
 ;;21,"X15.1XXD ")
 ;;1168
 ;;21,"X15.1XXS ")
 ;;1169
 ;;21,"X15.2XXA ")
 ;;1170
 ;;21,"X15.2XXD ")
 ;;1171
 ;;21,"X15.2XXS ")
 ;;1172
 ;;21,"X15.3XXA ")
 ;;1173
 ;;21,"X15.3XXD ")
 ;;1174
 ;;21,"X15.3XXS ")
 ;;1175
 ;;21,"X15.8XXA ")
 ;;1176
 ;;21,"X15.8XXD ")
 ;;1177
 ;;21,"X15.8XXS ")
 ;;1178
 ;;21,"X16.XXXA ")
 ;;1179
 ;;21,"X16.XXXD ")
 ;;1180
 ;;21,"X16.XXXS ")
 ;;1181
 ;;21,"X17.XXXA ")
 ;;1182
 ;;21,"X17.XXXD ")
 ;;1183
 ;;21,"X17.XXXS ")
 ;;1184
 ;;21,"X18.XXXA ")
 ;;1185
 ;;21,"X18.XXXD ")
 ;;1186
 ;;21,"X18.XXXS ")
 ;;1187
 ;;21,"X19.XXXA ")
 ;;1188
 ;;21,"X19.XXXD ")
 ;;1189
 ;;21,"X19.XXXS ")
 ;;1190
 ;;21,"X30.XXXA ")
 ;;1191
 ;;21,"X30.XXXD ")
 ;;1192
 ;;21,"X30.XXXS ")
 ;;1193
 ;;21,"X52.XXXA ")
 ;;1194
 ;;21,"X52.XXXD ")
 ;;1195
 ;;21,"X52.XXXS ")
 ;;1196
 ;;21,"X58.XXXA ")
 ;;152
 ;;21,"X58.XXXD ")
 ;;153
 ;;21,"X58.XXXS ")
 ;;154
 ;;21,"Y21.1XXA ")
 ;;155
 ;;21,"Y36.000A ")
 ;;1197
 ;;21,"Y36.000D ")
 ;;1198
 ;;21,"Y36.000S ")
 ;;1199
 ;;21,"Y36.001A ")
 ;;1200
 ;;21,"Y36.001D ")
 ;;1201
 ;;21,"Y36.001S ")
 ;;1202
 ;;21,"Y36.010A ")
 ;;1203
 ;;21,"Y36.010D ")
 ;;1204
 ;;21,"Y36.010S ")
 ;;1205
 ;;21,"Y36.011A ")
 ;;1206
 ;;21,"Y36.011D ")
 ;;1207
 ;;21,"Y36.011S ")
 ;;1208
 ;;21,"Y36.020A ")
 ;;1209
 ;;21,"Y36.020D ")
 ;;1210
 ;;21,"Y36.020S ")
 ;;1211
 ;;21,"Y36.021A ")
 ;;1212
 ;;21,"Y36.021D ")
 ;;1213
 ;;21,"Y36.021S ")
 ;;1214
 ;;21,"Y36.030A ")
 ;;1215
 ;;21,"Y36.030D ")
 ;;1216
 ;;21,"Y36.030S ")
 ;;1217
 ;;21,"Y36.031A ")
 ;;1218
 ;;21,"Y36.031D ")
 ;;1219
 ;;21,"Y36.031S ")
 ;;1220
 ;;21,"Y36.040A ")
 ;;1221
 ;;21,"Y36.040D ")
 ;;1222
 ;;21,"Y36.040S ")
 ;;1223
 ;;21,"Y36.041A ")
 ;;1224
 ;;21,"Y36.041D ")
 ;;1225
 ;;21,"Y36.041S ")
 ;;1226
 ;;21,"Y36.050A ")
 ;;156
 ;;21,"Y36.050D ")
 ;;157
 ;;21,"Y36.050S ")
 ;;158
 ;;21,"Y36.051A ")
 ;;159
 ;;21,"Y36.051D ")
 ;;160
 ;;21,"Y36.051S ")
 ;;161
 ;;21,"Y36.090A ")
 ;;1227
 ;;21,"Y36.090D ")
 ;;1228
 ;;21,"Y36.090S ")
 ;;1229
 ;;21,"Y36.091A ")
 ;;1230
 ;;21,"Y36.091D ")
 ;;1231
 ;;21,"Y36.091S ")
 ;;1232
 ;;21,"Y36.100A ")
 ;;1233
 ;;21,"Y36.100D ")
 ;;1234
 ;;21,"Y36.100S ")
 ;;1235
 ;;21,"Y36.101A ")
 ;;1236
 ;;21,"Y36.101D ")
 ;;1237
 ;;21,"Y36.101S ")
 ;;1238
 ;;21,"Y36.110A ")
 ;;1239
 ;;21,"Y36.110D ")
 ;;1240
 ;;21,"Y36.110S ")
 ;;1241
 ;;21,"Y36.111A ")
 ;;1242
 ;;21,"Y36.111D ")
 ;;1243
 ;;21,"Y36.111S ")
 ;;1244
 ;;21,"Y36.120A ")
 ;;1245
 ;;21,"Y36.120D ")
 ;;1246
 ;;21,"Y36.120S ")
 ;;1247
 ;;21,"Y36.121A ")
 ;;1248
 ;;21,"Y36.121D ")
 ;;1249
 ;;21,"Y36.121S ")
 ;;1250
 ;;21,"Y36.130A ")
 ;;1251
 ;;21,"Y36.130D ")
 ;;1252
 ;;21,"Y36.130S ")
 ;;1253
 ;;21,"Y36.131A ")
 ;;1254
 ;;21,"Y36.131D ")
 ;;1255
 ;;21,"Y36.131S ")
 ;;1256
 ;;21,"Y36.140A ")
 ;;162
 ;;21,"Y36.140D ")
 ;;163
 ;;21,"Y36.140S ")
 ;;164
 ;;21,"Y36.141A ")
 ;;165
 ;;21,"Y36.141D ")
 ;;166
 ;;21,"Y36.141S ")
 ;;167
 ;;21,"Y36.190A ")
 ;;1257
 ;;21,"Y36.190D ")
 ;;1258
 ;;21,"Y36.190S ")
 ;;1259
 ;;21,"Y36.191A ")
 ;;1260
 ;;21,"Y36.191D ")
 ;;1261
 ;;21,"Y36.191S ")
 ;;1262
 ;;21,"Y36.200A ")
 ;;1263
 ;;21,"Y36.200D ")
 ;;1264
 ;;21,"Y36.200S ")
 ;;1265
 ;;21,"Y36.201A ")
 ;;1266
 ;;21,"Y36.201D ")
 ;;1267
 ;;21,"Y36.201S ")
 ;;1268
 ;;21,"Y36.210A ")
 ;;1269
 ;;21,"Y36.210D ")
 ;;1270
 ;;21,"Y36.210S ")
 ;;1271
 ;;21,"Y36.211A ")
 ;;1272
 ;;21,"Y36.211D ")
 ;;1273
 ;;21,"Y36.211S ")
 ;;1274
 ;;21,"Y36.220A ")
 ;;1275
 ;;21,"Y36.220D ")
 ;;1276
 ;;21,"Y36.220S ")
 ;;1277
 ;;21,"Y36.221A ")
 ;;1278
 ;;21,"Y36.221D ")
 ;;1279
 ;;21,"Y36.221S ")
 ;;1280
 ;;21,"Y36.230A ")
 ;;1281
 ;;21,"Y36.230D ")
 ;;1282
 ;;21,"Y36.230S ")
 ;;1283
 ;;21,"Y36.231A ")
 ;;1284
 ;;21,"Y36.231D ")
 ;;1285
 ;;21,"Y36.231S ")
 ;;1286
 ;;21,"Y36.240A ")
 ;;168
 ;;21,"Y36.240D ")
 ;;169
 ;;21,"Y36.240S ")
 ;;170
 ;;21,"Y36.241A ")
 ;;171
 ;;21,"Y36.241D ")
 ;;172
 ;;21,"Y36.241S ")
 ;;173
 ;;21,"Y36.250A ")
 ;;1287
 ;;21,"Y36.250D ")
 ;;1288
 ;;21,"Y36.250S ")
 ;;1289
 ;;21,"Y36.251A ")
 ;;1290
 ;;21,"Y36.251D ")
 ;;1291
 ;;21,"Y36.251S ")
 ;;1292
 ;;21,"Y36.260A ")
 ;;1293
 ;;21,"Y36.260D ")
 ;;1294
 ;;21,"Y36.260S ")
 ;;1295
 ;;21,"Y36.261A ")
 ;;1296
 ;;21,"Y36.261D ")
 ;;1297
 ;;21,"Y36.261S ")
 ;;1298
 ;;21,"Y36.270A ")
 ;;1299
 ;;21,"Y36.270D ")
 ;;1300
 ;;21,"Y36.270S ")
 ;;1301
 ;;21,"Y36.271A ")
 ;;1302
 ;;21,"Y36.271D ")
 ;;1303
 ;;21,"Y36.271S ")
 ;;1304
 ;;21,"Y36.290A ")
 ;;1305
 ;;21,"Y36.290D ")
 ;;1306
 ;;21,"Y36.290S ")
 ;;1307
 ;;21,"Y36.291A ")
 ;;1308
 ;;21,"Y36.291D ")
 ;;1309
 ;;21,"Y36.291S ")
 ;;1310
 ;;21,"Y36.300A ")
 ;;1311
 ;;21,"Y36.300D ")
 ;;1312
 ;;21,"Y36.300S ")
 ;;1313
 ;;21,"Y36.301A ")
 ;;1314
 ;;21,"Y36.301D ")
 ;;1315
 ;;21,"Y36.301S ")
 ;;1316
 ;;21,"Y36.310A ")
 ;;1317
 ;;21,"Y36.310D ")
 ;;1318
 ;;21,"Y36.310S ")
 ;;1319
 ;;21,"Y36.311A ")
 ;;1320
 ;;21,"Y36.311D ")
 ;;1321
 ;;21,"Y36.311S ")
 ;;1322
 ;;21,"Y36.320A ")
 ;;1323
 ;;21,"Y36.320D ")
 ;;1324
 ;;21,"Y36.320S ")
 ;;1325
 ;;21,"Y36.321A ")
 ;;1326
 ;;21,"Y36.321D ")
 ;;1327
 ;;21,"Y36.321S ")
 ;;1328
 ;;21,"Y36.330A ")
 ;;1329
 ;;21,"Y36.330D ")
 ;;1330
 ;;21,"Y36.330S ")
 ;;1331
 ;;21,"Y36.331A ")
 ;;1332
 ;;21,"Y36.331D ")
 ;;1333
 ;;21,"Y36.331S ")
 ;;1334
 ;;21,"Y36.390A ")
 ;;1335
 ;;21,"Y36.390D ")
 ;;1336
 ;;21,"Y36.390S ")
 ;;1337
 ;;21,"Y36.391A ")
 ;;1338
 ;;21,"Y36.391D ")
 ;;1339
 ;;21,"Y36.391S ")
 ;;1340
 ;;21,"Y36.410A ")
 ;;1341
 ;;21,"Y36.410D ")
 ;;1342
 ;;21,"Y36.410S ")
 ;;1343
 ;;21,"Y36.411A ")
 ;;1344
 ;;21,"Y36.411D ")
 ;;1345
 ;;21,"Y36.411S ")
 ;;1346
 ;;21,"Y36.420A ")
 ;;1347
 ;;21,"Y36.420D ")
 ;;1348
 ;;21,"Y36.420S ")
 ;;1349
 ;;21,"Y36.421A ")
 ;;1350
 ;;21,"Y36.421D ")
 ;;1351
 ;;21,"Y36.421S ")
 ;;1352
 ;;21,"Y36.430A ")
 ;;1353
 ;;21,"Y36.430D ")
 ;;1354
 ;;21,"Y36.430S ")
 ;;1355
 ;;21,"Y36.431A ")
 ;;1356
 ;;21,"Y36.431D ")
 ;;1357
 ;;21,"Y36.431S ")
 ;;1358
 ;;21,"Y36.440A ")
 ;;1359
 ;;21,"Y36.440D ")
 ;;1360
 ;;21,"Y36.440S ")
 ;;1361
 ;;21,"Y36.441A ")
 ;;1362
 ;;21,"Y36.441D ")
 ;;1363
 ;;21,"Y36.441S ")
 ;;1364
 ;;21,"Y36.450A ")
 ;;1365
 ;;21,"Y36.450D ")
 ;;1366
 ;;21,"Y36.450S ")
 ;;1367
 ;;21,"Y36.451A ")
 ;;1368
 ;;21,"Y36.451D ")
 ;;1369
 ;;21,"Y36.451S ")
 ;;1370
 ;;21,"Y36.460A ")
 ;;1371
 ;;21,"Y36.460D ")
 ;;1372
 ;;21,"Y36.460S ")
 ;;1373
 ;;21,"Y36.461A ")
 ;;1374
 ;;21,"Y36.461D ")
 ;;1375
 ;;21,"Y36.461S ")
 ;;1376
 ;;21,"Y36.470A ")
 ;;1377
 ;;21,"Y36.470D ")
 ;;1378
 ;;21,"Y36.470S ")
 ;;1379
