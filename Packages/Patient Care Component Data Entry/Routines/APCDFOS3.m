APCDFOS3 ; IHS/CMI/LAB - FORMS TRKING SUMMARY ;
 ;;2.0;IHS PCC SUITE;;MAY 14, 2009
 ;
 ;
LOC ;EP
 D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT
 W !!!!?20,"FORMS PROCESSED BY EACH LOCATION"
 S O="" F  S O=$O(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O)) Q:O=""!(APCDQUIT)  D
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !!?2,"LOCATION:  ",O
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !?2,"TOTAL Number of Forms Processed: ",$J(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"TOTAL"),8)
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !!?2,"By TYPE:"
 .S X="" F  S X=$O(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"TYPE",X)) Q:X=""!(APCDQUIT)  D
 ..D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT
 ..W !,?5,$E(X,1,30),?35,$J(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"TYPE",X),8)
 ..Q
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !!?2,"By CLINIC TYPE:"
 .S X="" F  S X=$O(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"CLN",X)) Q:X=""!(APCDQUIT)  D
 ..D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT
 ..W !,?5,$E(X,1,30),?35,$J(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"CLN",X),8)
 ..Q
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !!?2,"By SERVICE CATEGORY:"
 .S X="" F  S X=$O(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"CAT",X)) Q:X=""!(APCDQUIT)  D
 ..D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT
 ..W !,?5,$E(X,1,30),?35,$J(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"CAT",X),8)
 ..Q
 .D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT  W !!?2,"By PROVIDER DISCIPLINE (Primary and Secondary Providers):"
 .S X="" F  S X=$O(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"PROV",X)) Q:X=""!(APCDQUIT)  D
 ..D:$Y>(IOSL-6) HEAD^APCDFOSP Q:APCDQUIT
 ..W !,?5,$E(X,1,30),?35,$J(^XTMP("APCDFOS",APCDJ,APCDBT,"LOC",O,"PROV",X),8)
 ..Q
 Q