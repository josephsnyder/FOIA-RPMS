OCXDI00K ;SLC/RJS,CLA - OCX PACKAGE DIAGNOSTIC ROUTINES ;SEP 7,1999 at 10:29
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
 G ^OCXDI00L
 ;
 Q
 ;
DATA ;
 ;
 ;;RTN^OCXOMENU^10/29/98  12:37
 ;;RSUM^150.21^150.21^324.31^150.21^27296.291^1371.81^12337.181^96552.571^26932.301^36945.371^118793.621^6268.131^280946.921^150.21^194.21^150.21^1303.61^98905.471^293989.801^87428.441^127621.531^169250.611
 ;;RSUM^55587.341^51792.331^533.41^150.21^1829.81^2079.71^12932.201^2085.71^150.21
 ;;RND^OCXOMENU^10/29/98  12:37
 ;;RTN^OCXOPOST^10/29/98  12:37
 ;;RSUM^150.21^557.41^150.21^22272.251^150.21^20726.251^301.31^56420.391^211619.851^9957.161^214670.851^24175.271^102358.561^109727.591^22992.251^123520.611^4324.111^122547.631^150.21^21239.251^301.31^5719.121
 ;;RSUM^221992.861^10340.161^150.21^8869.171^301.31^23964.251^27616.291^80054.531^34429.311^19830.281^19044.251^76206.511^135604.601^66156.451^28793.301^5121.121^4706.121^2521.81^150.21^194.21^150.21^87802.551
 ;;RSUM^150.21^86865.561^150.21^24177.261^150.21^22378.251^17457.221^21542.241^150.21^194.21^150.21
 ;;RND^OCXOPOST^10/29/98  12:37
 ;;RTN^OCXOPRE^8/04/98  16:10
 ;;RSUM^150.21^194.21
 ;;RND^OCXOPRE^8/04/98  16:10
 ;;RTN^OCXOPURG^10/29/98  12:37
 ;;RSUM^150.21^557.41^150.21^177556.701^28344.271^150.21^166124.601^150.21^177724.781^106006.591^144691.701^150.21^233435.881^173003.741^220211.821^6271.131^73884.481^35248.331^41050.351^65853.441^39812.371
 ;;RSUM^23553.271^46689.381^69382.451^150.21^323976.1021^150.21^41896.401^216686.831^27658.301^9005.181^120073.631^39584.361^36769.341^59538.431^88732.541^27476.321^150.21^24149.281^28043.321^46205.381^150.21
 ;;RSUM^8355.161^160933.721^37671.351^14126.211^35073.331^150.21^71772.491^199383.781^144932.641^150.21^114884.641^95664.581^295952.991^150.21^194.21^150.21^1868.81^150.21^3446.101^171080.781^646.41^150.21
 ;;RSUM^48715.421^150.21
 ;;RND^OCXOPURG^10/29/98  12:37
 ;;RTN^OCXOSCR1^10/29/98  12:37
 ;;RSUM^150.21^19835.241^150.21^194.21^150.21^324.31^150.21^116918.571^150.21^139353.591^65154.461^799.51^150.21^94200.561^47189.381^105796.571^105727.591^140045.631^281823.901^219571.821^219677.821^150.21
 ;;RSUM^106197.601^150.21^107902.601^47158.381^91308.541^93801.561^111002.591^46422.391^93279.521^92967.521^91173.521^90861.521^94326.561^134322.641^498.41^40590.371^55808.361^93279.521^92967.521^91173.521
 ;;RSUM^90861.521^498.41^46555.391^93983.461^93279.521^92967.521^91173.521^90861.521^498.41^52280.411^85995.451^93279.521^92967.521^91173.521^90861.521^434.41^150.21^2260.81^150.21^3621.101^150.21^95348.581
 ;;RSUM^150.21^194.21^150.21^2963.91^150.21^2079.71^434.41^44968.381^130008.621^194.21^150.21
 ;;RND^OCXOSCR1^10/29/98  12:37
 ;;RTN^OCXOSCR2^10/29/98  12:37
 ;;RSUM^150.21^19835.241^150.21^194.21^150.21^121286.581^150.21^129081.571^68427.471^799.51^150.21^107902.601^47158.381^91308.541^93801.561^111002.591^68505.471^434.41^150.21^194.21^150.21^2963.91^150.21^2079.71
 ;;RSUM^434.41^44968.381^130008.621^194.21^150.21
 ;;RND^OCXOSCR2^10/29/98  12:37
 ;;RTN^OCXOSCR3^10/29/98  12:37
 ;;RSUM^150.21^194.21^150.21^17126.231^150.21^26873.271^150.21^2862.91^70180.491^86929.541^150.21^15321.221^40741.361^53603.411^150.21^80237.501^150.21^194.21^150.21
 ;;RND^OCXOSCR3^10/29/98  12:37
 ;;RTN^OCXOTIME^10/29/98  12:37
 ;;RSUM^150.21^150.21^194.21^557.41^150.21^4541.111^150.21^40743.331^161931.711^184849.761^396605.1111^62630.411^97555.541^167652.681^23583.271^188912.791^23583.271^166374.731^23583.271^215185.831^459890.1221
 ;;RSUM^78912.481^68083.451^108868.571^101665.581^15796.221^69804.441^150.21^194.21^150.21^4067.111^150.21^194.21^150.21^8787.161^14109.171^194.21^1964.71^150.21^70181.481^150.21^71110.481^150.21^8532.161
 ;;RSUM^150.21^23513.261^194.21^150.21^2523.91^6727.131^14641.221^323976.1021^32323.341^120856.701^482.41^150.21
 ;;RND^OCXOTIME^10/29/98  12:37
 ;;RTN^OCXRU0^APR 30,1999 at 15:07
 ;;RSUM^150.21^324.31^150.21^194.21^150.21^14914.211^150.21^7182.141^150.21^20963.241^150.21^46063.421^35263.341^150.21^155149.671^150.21^32755.341^2351.101^150.21^65467.461^7584.171^170380.721^22344.271^47501.381
 ;;RSUM^150.21^1080.61^150.21^8516.161^150.21^82320.501^150.21^2210.81^150.21^121003.611^109266.581^37500.341^345062.1041^194.21^150.21^28416.291^150.21^49979.381^29081.291^93935.551^298373.901^347925.1021
 ;;RSUM^374114.1041^4233.121^12333.191^144692.671^317493.1031^150.21^1365.61^150.21^19562.241^150.21^167868.771^802.51^150.21^10758.181^56613.441^52106.401^186524.811^452260.1221^354536.1071^4795.131^107721.611
 ;1;
 ;
