OCXDI00F ;SLC/RJS,CLA - OCX PACKAGE DIAGNOSTIC ROUTINES ;SEP 7,1999 at 10:29
 ;;3.0;ORDER ENTRY/RESULTS REPORTING;**32**;Dec 17,1997
 ;;  ;;ORDER CHECK EXPERT version 1.01 released OCT 29,1998
 ;
S ;
 ;
 D DOT^OCXDIAG
 ;
 ;
 K REMOTE,LOCAL,OPCODE,REF
 F LINE=1:1:500 S TEXT=$P($T(DATA+LINE),";",2,999) Q:TEXT  I $L(TEXT) D  Q:QUIT
 .S ^TMP("OCXDIAG",$J,$O(^TMP("OCXDIAG",$J,"A"),-1)+1)=TEXT
 ;
 G ^OCXDI00G
 ;
 Q
 ;
DATA ;
 ;
 ;;RSUM^3621.101^27666.311^59749.431^39855.351^38487.351^32907.321^12993.211^150.21^150.21^13339.201^150.21^122386.631^194.21^150.21^23081.261^150.21^194.21^150.21
 ;;RND^OCXODSP4^10/29/98  12:37
 ;;RTN^OCXOED01^10/29/98  12:37
 ;;RSUM^150.21^324.31^194.21^3820.111^150.21^8635.151^534314.1271^150.21^194.21^150.21^22993.261^150.21^123456.571^150.21^296591.1021^150.21^8844.151^77411.471^144429.671^137613.701^148126.721^150.21^75620.421
 ;;RSUM^142551.681^96264.511^82510.531^121236.621^226416.871^276333.901^150.21^142551.681^82510.531^123946.631^80779.521^260298.901^325313.981^276333.901^150.21^116393.601^9721.161^64848.451^678.51^168677.741
 ;;RSUM^82795.531^17815.251^8402.171^60878.461^575149.1421^301.31^434.41^205516.821^216219.831^150.21^62077.381^143143.681^678.51^163012.711^32966.351^12727.181^77966.511^77849.511^210559.901^49588.411^434.41
 ;;RSUM^204035.811^214333.821^150.21^194.21^150.21^3178.101^11629.201^262746.901^150.21^34565.351^150.21^150.21^5364.131^106867.621^150.21^5644.131^150.21^399421.1061^150.21^7506.151^150.21^32294.291^150.21
 ;;RSUM^15081.211^150.21^140782.671^83304.521^33110.311^150.21^14377.211^150.21^7741.141^90051.541^75603.491^135836.681^63149.461^62857.461^136481.681^63947.461^194.21^150.21^87711.501^150.21^3252.91^193242.791
 ;;RSUM^141691.651^194.21^150.21^87543.501^150.21^9719.161^106227.591^94891.551^211807.821^194.21^150.21^79542.481^150.21^3621.101^27666.311^59749.431^39855.351^38487.351^32907.321^12993.211^150.21^26471.281
 ;;RSUM^148970.691^194.21^150.21
 ;;RND^OCXOED01^10/29/98  12:37
 ;;RTN^OCXOED02^10/29/98  12:37
 ;;RSUM^150.21^150.21^150.21^150.21^194.21^19519.241^150.21^150.21^67879.421^150.21^150.21^168101.701^150.21^23177.281^150.21^482.41^150.21^150.21^7324.151^58364.461^194.21^150.21^14419.211^24929.271^194.21
 ;;RSUM^150.21^14478.211^24957.271^194.21^150.21^14716.211^150.21^13083.211^147869.711^612979.1391^17850.231^13256.211^147869.711^449190.1161^131429.581^187561.821^16875.231^194.21^150.21^14729.211^150.21
 ;;RSUM^13083.211^149166.711^78265.531^201533.821^17961.231^13256.211^149166.711^674160.1351^131429.581^188161.821^16875.231^194.21^150.21^150.21^33701.311^57533.391^11108.191^7863.151^30831.311^30899.311
 ;;RSUM^29883.321^1992.71^70433.471^646.41^150.21^7820.161^150.21^218023.851^150.21^15034.221^150.21^88278.511^150.21^3621.101^27666.311^59749.431^39855.351^38487.351^32907.321^12993.211^150.21
 ;;RND^OCXOED02^10/29/98  12:37
 ;;RTN^OCXOED03^10/29/98  12:37
 ;;RSUM^150.21^150.21^324.31^150.21^194.21^9343.171^150.21^8635.151^700113.1451^150.21^194.21^150.21^34866.321^150.21^67879.421^150.21^296591.1021^150.21^8844.151^114372.561^133976.651^140789.711^295765.971
 ;;RSUM^797.61^337955.1071^37176.371^4683.111^49393.411^172196.731^144793.711^150.21^194.21^150.21^5364.131^106867.621^150.21^150.21^5644.131^150.21^399421.1061^150.21^7506.151^150.21^32294.291^150.21^15081.211
 ;;RSUM^150.21^140782.671^83304.521^33110.311^150.21^23769.271^150.21^10594.171^201784.821^78030.501^194.21^150.21^79542.481^150.21^3621.101^27666.311^59749.431^39855.351^38487.351^32907.321^12993.211^150.21
 ;;RSUM^26471.281^148970.691^194.21^150.21
 ;;RND^OCXOED03^10/29/98  12:37
 ;;RTN^OCXOED04^10/29/98  12:37
 ;;RSUM^150.21^150.21^324.31^150.21^194.21^30574.301^150.21^150.21^150.21^67879.421^150.21^150.21^168101.701^150.21^42463.381^150.21^482.41^150.21^150.21^6134.141^150.21^14853.211^194.21^150.21^14419.211^150.21
 ;;RSUM^3735.101^211099.861^39417.361^461809.1251^483046.1281^194.21^150.21^150.21^150.21^33701.311^57533.391^11108.191^7863.151^30831.311^30899.311^29883.321^1992.71^70433.471^646.41^150.21^7820.161^150.21
 ;;RSUM^218023.851^150.21^15034.221^150.21^88278.511^150.21^3621.101^27666.311^59749.431^39855.351^38487.351^32907.321^12993.211^150.21
 ;;RND^OCXOED04^10/29/98  12:37
 ;;RTN^OCXOED05^10/29/98  12:37
 ;;RSUM^150.21^150.21^324.31^150.21^9343.171^150.21^8635.151^700113.1451^150.21^194.21^150.21^34866.321^150.21^67879.421^150.21^296591.1021^150.21^8844.151^162191.651^170933.761^215796.871^222810.871^221317.871
 ;;RSUM^233999.871^228864.871^225100.871^231709.871^141740.671^797.61^150.21^194.21^150.21^5364.131^106867.621^150.21^5644.131^150.21^399421.1061^150.21^7506.151^150.21^32294.291^150.21^15081.211^150.21^140782.671
 ;1;
 ;
