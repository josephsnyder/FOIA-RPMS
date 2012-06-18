ADECD44 ; IHS/SET/HMW - DENTAL CODE GROUP TABLE UPDATE (CDT4) ;
 ;;6.0;ADE;**12,13**;MAR 25, 1999
 ;
 ;Remove and replace all DENTAL CODE EDIT GROUPS entries.
 ;IHS/SET/HMW 3-26-2003 **13** Added INCREMENTS code group; removed 3221|9971|9973|9974 from EXTRACTIONS
 ;Remove existing entries
 N DA
 S DIK="^ADEDIT(""GRP"","
 S DA=0 F  S DA=$O(^ADEDIT("GRP",DA)) Q:'+DA  D ^DIK
 ;
 ;Add current entries
 ;
 N ADEGRP,ADECNT
 S ADECNT=0,ADEGRP=""
 F  S ADECNT=ADECNT+1,ADEGRP=$P($T(GROUPS+ADECNT),";",3) Q:ADEGRP=""  D
 . D ADDGRP($P(ADEGRP,U),$P(ADEGRP,U,2))
 Q
 ;
ADDGRP(ADENAME,ADECODES) ;
 ;
 N ADEIEN,ADEFDA
 S ADEIEN="+1,"
 S ADEFDA(9002007.91,"+1,",.01)=ADENAME
 S ADEFDA(9002007.91,"+1,",1)=ADECODES
 D UPDATE^DIE("","ADEFDA","ADEIEN")
 ;
 Q
 ;
GROUPS ;
 ;;1350 TEETH^4|5|6|7|8|9|10|11|12|13|20|21|22|23|24|25|26|27|28|29|A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T
 ;;ADEPHY-0^0210|0220|0230|0240|0250|0260|0270|0272|0274|0330|0470
 ;;ADEPHY-1^1110|1120|1201|1203|1204|1205|1207|1208|1310|1330|1336|1338|1320|1350|1351|1355|1550|9320|9321|9330|9331
 ;;ADEPHY-2^2110|2120|2130|2131|2140|2150|2160|2161|2330|2331|2332|2335|2336|2380|2381|2382|2385|2386|2387|2910|2920|2930|2931|2932|2933|2940|2950|2951|6973
 ;;ADEPHY-3^3110|3120|3220|3230|3240|3960|3221|9971|9973|9974
 ;;ADEPHY-4^4341|4342|4345|4910|4920|4999|7471|4355
 ;;ADEPHY-7^9930
 ;;ADEPHY-8^8190|8290|8390|8750|8801|8885|8887|8888
 ;;ADEPHY-9^9110|9220|9221|9230|9240|9250|9260|9315|9910|9920
 ;;ADEPHY-V^0114|0190|9130|9140|9170|9340|9341|9990|9991|0000
 ;;BITEWINGS^0270|0272|0274|0275
 ;;BITEWINGS+FMX^0210|0270|0272|0274|0275
 ;;CROWNS-PERMANENT TOOTH^2790
 ;;ENDO COMPLETE^3310|3320
 ;;EXAMS^0150|0120|0140|0160
 ;;EXTRACTIONS^7111|7113|7112|7114|7140|7210|7220|7230|7240|7241|7250
 ;;HYG/THER DATA ENTRY CHECK^1350|1351|1355|1110|1120|1130|4910|1201|1205|0210|0270|0272|0274|0275|0220|0230|0240|1310|1330|1331|1336|1338|1335|0470|0330|1204|1203|1207|1208|1340|1550|4341|4345|7471
 ;;PERMANENT TOOTH PROCEDURES^1355|2385|2540|2740|2750|2790|2810|2950|2952|2954|2960|3310|3311|3320|3321|3330|3331|3346|3347|3348|3351|3352|3353|3410|3421|3425|3430|3470|3950|3960|3961
 ;;PERMANENT TOOTH PROCEDURES 2^2542|2780|2781|2782|2783|2799|2953|2957|3331|3332|3333|4245|4268|5867|6245|6548|6740|6781|6782|6783|6976|6977|9911
 ;;PRIMARY TEETH^A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T
 ;;PRIMARY TOOTH PROCEDURES^2121|2930|2932|3230
 ;;PROPHY^1110|1120|1130|1201|1205
 ;;PROPHY+SURGERY^1110|1120|1130|4240|4241|4261|4265|4260|4341|4342|4345|7471
 ;;QUADRANTS^ULQ|URQ|LLQ|LRQ
 ;;RESTORATIONS^2110|2120|2121|2130|2140|2131|2150|2151|2160|2161
 ;;RESTORATIONS-PERMANENT TOOTH^2330
 ;;SEXTANTS^URX|UAX|ULX|LLX|LAX|LRX
 ;;QUADRANT PROCEDURES^4342|4241|4261|7471|4211|4210|4220|4260|4341
 ;;PERMANENT TEETH^1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32
 ;;PERMANENT PREMOLARS^4|5|12|13|20|21|28|29
 ;;PERMANENT MOLARS^1|2|3|14|15|16|17|18|19|30|31|32
 ;;PERMANENT ANTERIORS^6|7|8|9|10|11|22|23|24|25|26|27
 ;;INCREMENTS^Y1|Y2|Y3|Y4|Y5|Y6
