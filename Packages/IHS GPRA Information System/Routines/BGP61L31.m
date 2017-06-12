BGP61L31 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,66336-0269-90 ",.01)
 ;;66336-0269-90
 ;;9002226.02101,"1876,66336-0269-90 ",.02)
 ;;66336-0269-90
 ;;9002226.02101,"1876,66336-0270-30 ",.01)
 ;;66336-0270-30
 ;;9002226.02101,"1876,66336-0270-30 ",.02)
 ;;66336-0270-30
 ;;9002226.02101,"1876,66336-0270-60 ",.01)
 ;;66336-0270-60
 ;;9002226.02101,"1876,66336-0270-60 ",.02)
 ;;66336-0270-60
 ;;9002226.02101,"1876,66336-0270-90 ",.01)
 ;;66336-0270-90
 ;;9002226.02101,"1876,66336-0270-90 ",.02)
 ;;66336-0270-90
 ;;9002226.02101,"1876,66336-0270-94 ",.01)
 ;;66336-0270-94
 ;;9002226.02101,"1876,66336-0270-94 ",.02)
 ;;66336-0270-94
 ;;9002226.02101,"1876,66336-0292-60 ",.01)
 ;;66336-0292-60
 ;;9002226.02101,"1876,66336-0292-60 ",.02)
 ;;66336-0292-60
 ;;9002226.02101,"1876,66336-0319-30 ",.01)
 ;;66336-0319-30
 ;;9002226.02101,"1876,66336-0319-30 ",.02)
 ;;66336-0319-30
 ;;9002226.02101,"1876,66336-0358-30 ",.01)
 ;;66336-0358-30
 ;;9002226.02101,"1876,66336-0358-30 ",.02)
 ;;66336-0358-30
 ;;9002226.02101,"1876,66336-0358-60 ",.01)
 ;;66336-0358-60
 ;;9002226.02101,"1876,66336-0358-60 ",.02)
 ;;66336-0358-60
 ;;9002226.02101,"1876,66336-0358-62 ",.01)
 ;;66336-0358-62
 ;;9002226.02101,"1876,66336-0358-62 ",.02)
 ;;66336-0358-62
 ;;9002226.02101,"1876,66336-0358-90 ",.01)
 ;;66336-0358-90
 ;;9002226.02101,"1876,66336-0358-90 ",.02)
 ;;66336-0358-90
 ;;9002226.02101,"1876,66336-0360-30 ",.01)
 ;;66336-0360-30
 ;;9002226.02101,"1876,66336-0360-30 ",.02)
 ;;66336-0360-30
 ;;9002226.02101,"1876,66336-0361-30 ",.01)
 ;;66336-0361-30
 ;;9002226.02101,"1876,66336-0361-30 ",.02)
 ;;66336-0361-30
 ;;9002226.02101,"1876,66336-0500-30 ",.01)
 ;;66336-0500-30
 ;;9002226.02101,"1876,66336-0500-30 ",.02)
 ;;66336-0500-30
 ;;9002226.02101,"1876,66336-0500-90 ",.01)
 ;;66336-0500-90
 ;;9002226.02101,"1876,66336-0500-90 ",.02)
 ;;66336-0500-90
 ;;9002226.02101,"1876,66336-0534-30 ",.01)
 ;;66336-0534-30
 ;;9002226.02101,"1876,66336-0534-30 ",.02)
 ;;66336-0534-30
 ;;9002226.02101,"1876,66336-0534-90 ",.01)
 ;;66336-0534-90
 ;;9002226.02101,"1876,66336-0534-90 ",.02)
 ;;66336-0534-90
 ;;9002226.02101,"1876,66336-0535-30 ",.01)
 ;;66336-0535-30
 ;;9002226.02101,"1876,66336-0535-30 ",.02)
 ;;66336-0535-30
 ;;9002226.02101,"1876,66336-0535-60 ",.01)
 ;;66336-0535-60
 ;;9002226.02101,"1876,66336-0535-60 ",.02)
 ;;66336-0535-60
 ;;9002226.02101,"1876,66336-0535-90 ",.01)
 ;;66336-0535-90
 ;;9002226.02101,"1876,66336-0535-90 ",.02)
 ;;66336-0535-90
 ;;9002226.02101,"1876,66336-0573-30 ",.01)
 ;;66336-0573-30
 ;;9002226.02101,"1876,66336-0573-30 ",.02)
 ;;66336-0573-30
 ;;9002226.02101,"1876,66336-0573-60 ",.01)
 ;;66336-0573-60
 ;;9002226.02101,"1876,66336-0573-60 ",.02)
 ;;66336-0573-60
 ;;9002226.02101,"1876,66336-0573-90 ",.01)
 ;;66336-0573-90
 ;;9002226.02101,"1876,66336-0573-90 ",.02)
 ;;66336-0573-90
 ;;9002226.02101,"1876,66336-0662-30 ",.01)
 ;;66336-0662-30
 ;;9002226.02101,"1876,66336-0662-30 ",.02)
 ;;66336-0662-30
 ;;9002226.02101,"1876,66336-0662-60 ",.01)
 ;;66336-0662-60
 ;;9002226.02101,"1876,66336-0662-60 ",.02)
 ;;66336-0662-60
 ;;9002226.02101,"1876,66336-0662-90 ",.01)
 ;;66336-0662-90
 ;;9002226.02101,"1876,66336-0662-90 ",.02)
 ;;66336-0662-90
 ;;9002226.02101,"1876,66336-0662-94 ",.01)
 ;;66336-0662-94
 ;;9002226.02101,"1876,66336-0662-94 ",.02)
 ;;66336-0662-94
 ;;9002226.02101,"1876,66336-0712-90 ",.01)
 ;;66336-0712-90
 ;;9002226.02101,"1876,66336-0712-90 ",.02)
 ;;66336-0712-90
 ;;9002226.02101,"1876,66336-0730-14 ",.01)
 ;;66336-0730-14
 ;;9002226.02101,"1876,66336-0730-14 ",.02)
 ;;66336-0730-14
 ;;9002226.02101,"1876,66336-0730-30 ",.01)
 ;;66336-0730-30
 ;;9002226.02101,"1876,66336-0730-30 ",.02)
 ;;66336-0730-30
 ;;9002226.02101,"1876,66336-0730-60 ",.01)
 ;;66336-0730-60
 ;;9002226.02101,"1876,66336-0730-60 ",.02)
 ;;66336-0730-60
 ;;9002226.02101,"1876,66336-0730-90 ",.01)
 ;;66336-0730-90
 ;;9002226.02101,"1876,66336-0730-90 ",.02)
 ;;66336-0730-90
 ;;9002226.02101,"1876,66336-0784-30 ",.01)
 ;;66336-0784-30
 ;;9002226.02101,"1876,66336-0784-30 ",.02)
 ;;66336-0784-30
 ;;9002226.02101,"1876,66336-0784-60 ",.01)
 ;;66336-0784-60
 ;;9002226.02101,"1876,66336-0784-60 ",.02)
 ;;66336-0784-60
 ;;9002226.02101,"1876,66336-0784-90 ",.01)
 ;;66336-0784-90
 ;;9002226.02101,"1876,66336-0784-90 ",.02)
 ;;66336-0784-90
 ;;9002226.02101,"1876,66336-0850-30 ",.01)
 ;;66336-0850-30
 ;;9002226.02101,"1876,66336-0850-30 ",.02)
 ;;66336-0850-30
 ;;9002226.02101,"1876,66336-0850-60 ",.01)
 ;;66336-0850-60
 ;;9002226.02101,"1876,66336-0850-60 ",.02)
 ;;66336-0850-60
 ;;9002226.02101,"1876,66336-0850-90 ",.01)
 ;;66336-0850-90
 ;;9002226.02101,"1876,66336-0850-90 ",.02)
 ;;66336-0850-90
 ;;9002226.02101,"1876,66336-0857-30 ",.01)
 ;;66336-0857-30
 ;;9002226.02101,"1876,66336-0857-30 ",.02)
 ;;66336-0857-30
 ;;9002226.02101,"1876,66336-0857-90 ",.01)
 ;;66336-0857-90
 ;;9002226.02101,"1876,66336-0857-90 ",.02)
 ;;66336-0857-90
 ;;9002226.02101,"1876,66336-0858-30 ",.01)
 ;;66336-0858-30
 ;;9002226.02101,"1876,66336-0858-30 ",.02)
 ;;66336-0858-30
 ;;9002226.02101,"1876,66336-0858-90 ",.01)
 ;;66336-0858-90
 ;;9002226.02101,"1876,66336-0858-90 ",.02)
 ;;66336-0858-90
 ;;9002226.02101,"1876,66336-0859-30 ",.01)
 ;;66336-0859-30
 ;;9002226.02101,"1876,66336-0859-30 ",.02)
 ;;66336-0859-30
 ;;9002226.02101,"1876,66336-0859-90 ",.01)
 ;;66336-0859-90
 ;;9002226.02101,"1876,66336-0859-90 ",.02)
 ;;66336-0859-90
 ;;9002226.02101,"1876,66336-0883-30 ",.01)
 ;;66336-0883-30
 ;;9002226.02101,"1876,66336-0883-30 ",.02)
 ;;66336-0883-30
 ;;9002226.02101,"1876,66336-0883-60 ",.01)
 ;;66336-0883-60
 ;;9002226.02101,"1876,66336-0883-60 ",.02)
 ;;66336-0883-60
 ;;9002226.02101,"1876,66336-0883-90 ",.01)
 ;;66336-0883-90
 ;;9002226.02101,"1876,66336-0883-90 ",.02)
 ;;66336-0883-90
 ;;9002226.02101,"1876,66336-0884-14 ",.01)
 ;;66336-0884-14
 ;;9002226.02101,"1876,66336-0884-14 ",.02)
 ;;66336-0884-14
 ;;9002226.02101,"1876,66336-0884-28 ",.01)
 ;;66336-0884-28
 ;;9002226.02101,"1876,66336-0884-28 ",.02)
 ;;66336-0884-28
 ;;9002226.02101,"1876,66336-0884-30 ",.01)
 ;;66336-0884-30
 ;;9002226.02101,"1876,66336-0884-30 ",.02)
 ;;66336-0884-30
 ;;9002226.02101,"1876,66336-0884-60 ",.01)
 ;;66336-0884-60
 ;;9002226.02101,"1876,66336-0884-60 ",.02)
 ;;66336-0884-60
 ;;9002226.02101,"1876,66336-0884-62 ",.01)
 ;;66336-0884-62
 ;;9002226.02101,"1876,66336-0884-62 ",.02)
 ;;66336-0884-62
 ;;9002226.02101,"1876,66336-0884-90 ",.01)
 ;;66336-0884-90
 ;;9002226.02101,"1876,66336-0884-90 ",.02)
 ;;66336-0884-90
 ;;9002226.02101,"1876,66336-0938-30 ",.01)
 ;;66336-0938-30
 ;;9002226.02101,"1876,66336-0938-30 ",.02)
 ;;66336-0938-30
 ;;9002226.02101,"1876,66336-0938-60 ",.01)
 ;;66336-0938-60
 ;;9002226.02101,"1876,66336-0938-60 ",.02)
 ;;66336-0938-60
 ;;9002226.02101,"1876,66336-0938-90 ",.01)
 ;;66336-0938-90
 ;;9002226.02101,"1876,66336-0938-90 ",.02)
 ;;66336-0938-90
 ;;9002226.02101,"1876,66780-0210-07 ",.01)
 ;;66780-0210-07
 ;;9002226.02101,"1876,66780-0210-07 ",.02)
 ;;66780-0210-07
 ;;9002226.02101,"1876,66780-0212-01 ",.01)
 ;;66780-0212-01
 ;;9002226.02101,"1876,66780-0212-01 ",.02)
 ;;66780-0212-01
 ;;9002226.02101,"1876,66780-0219-04 ",.01)
 ;;66780-0219-04
 ;;9002226.02101,"1876,66780-0219-04 ",.02)
 ;;66780-0219-04
 ;;9002226.02101,"1876,66780-0226-01 ",.01)
 ;;66780-0226-01
 ;;9002226.02101,"1876,66780-0226-01 ",.02)
 ;;66780-0226-01
 ;;9002226.02101,"1876,66993-0162-02 ",.01)
 ;;66993-0162-02
 ;;9002226.02101,"1876,66993-0162-02 ",.02)
 ;;66993-0162-02
 ;;9002226.02101,"1876,66993-0163-02 ",.01)
 ;;66993-0163-02
 ;;9002226.02101,"1876,66993-0163-02 ",.02)
 ;;66993-0163-02
 ;;9002226.02101,"1876,66993-0164-02 ",.01)
 ;;66993-0164-02
 ;;9002226.02101,"1876,66993-0164-02 ",.02)
 ;;66993-0164-02
 ;;9002226.02101,"1876,67253-0460-10 ",.01)
 ;;67253-0460-10
 ;;9002226.02101,"1876,67253-0460-10 ",.02)
 ;;67253-0460-10
 ;;9002226.02101,"1876,67253-0461-10 ",.01)
 ;;67253-0461-10
 ;;9002226.02101,"1876,67253-0461-10 ",.02)
 ;;67253-0461-10
 ;;9002226.02101,"1876,67253-0461-11 ",.01)
 ;;67253-0461-11
 ;;9002226.02101,"1876,67253-0461-11 ",.02)
 ;;67253-0461-11
 ;;9002226.02101,"1876,67253-0461-50 ",.01)
 ;;67253-0461-50
 ;;9002226.02101,"1876,67253-0461-50 ",.02)
 ;;67253-0461-50
 ;;9002226.02101,"1876,67253-0462-10 ",.01)
 ;;67253-0462-10
 ;;9002226.02101,"1876,67253-0462-10 ",.02)
 ;;67253-0462-10
 ;;9002226.02101,"1876,67253-0462-11 ",.01)
 ;;67253-0462-11
 ;;9002226.02101,"1876,67253-0462-11 ",.02)
 ;;67253-0462-11
 ;;9002226.02101,"1876,67253-0462-50 ",.01)
 ;;67253-0462-50
 ;;9002226.02101,"1876,67253-0462-50 ",.02)
 ;;67253-0462-50
 ;;9002226.02101,"1876,67544-0047-30 ",.01)
 ;;67544-0047-30
 ;;9002226.02101,"1876,67544-0047-30 ",.02)
 ;;67544-0047-30
 ;;9002226.02101,"1876,67544-0047-53 ",.01)
 ;;67544-0047-53
 ;;9002226.02101,"1876,67544-0047-53 ",.02)
 ;;67544-0047-53
 ;;9002226.02101,"1876,67544-0047-60 ",.01)
 ;;67544-0047-60
 ;;9002226.02101,"1876,67544-0047-60 ",.02)
 ;;67544-0047-60
 ;;9002226.02101,"1876,67544-0047-70 ",.01)
 ;;67544-0047-70
 ;;9002226.02101,"1876,67544-0047-70 ",.02)
 ;;67544-0047-70
 ;;9002226.02101,"1876,67544-0047-75 ",.01)
 ;;67544-0047-75
 ;;9002226.02101,"1876,67544-0047-75 ",.02)
 ;;67544-0047-75
 ;;9002226.02101,"1876,67544-0047-80 ",.01)
 ;;67544-0047-80
 ;;9002226.02101,"1876,67544-0047-80 ",.02)
 ;;67544-0047-80
 ;;9002226.02101,"1876,67544-0047-90 ",.01)
 ;;67544-0047-90
 ;;9002226.02101,"1876,67544-0047-90 ",.02)
 ;;67544-0047-90
 ;;9002226.02101,"1876,67544-0047-92 ",.01)
 ;;67544-0047-92
 ;;9002226.02101,"1876,67544-0047-92 ",.02)
 ;;67544-0047-92
 ;;9002226.02101,"1876,67544-0047-94 ",.01)
 ;;67544-0047-94
 ;;9002226.02101,"1876,67544-0047-94 ",.02)
 ;;67544-0047-94
 ;;9002226.02101,"1876,67544-0047-96 ",.01)
 ;;67544-0047-96
 ;;9002226.02101,"1876,67544-0047-96 ",.02)
 ;;67544-0047-96
 ;;9002226.02101,"1876,67544-0065-30 ",.01)
 ;;67544-0065-30
 ;;9002226.02101,"1876,67544-0065-30 ",.02)
 ;;67544-0065-30
 ;;9002226.02101,"1876,67544-0065-53 ",.01)
 ;;67544-0065-53
 ;;9002226.02101,"1876,67544-0065-53 ",.02)
 ;;67544-0065-53
 ;;9002226.02101,"1876,67544-0065-60 ",.01)
 ;;67544-0065-60
 ;;9002226.02101,"1876,67544-0065-60 ",.02)
 ;;67544-0065-60
 ;;9002226.02101,"1876,67544-0066-30 ",.01)
 ;;67544-0066-30
 ;;9002226.02101,"1876,67544-0066-30 ",.02)
 ;;67544-0066-30
 ;;9002226.02101,"1876,67544-0066-45 ",.01)
 ;;67544-0066-45
 ;;9002226.02101,"1876,67544-0066-45 ",.02)
 ;;67544-0066-45
 ;;9002226.02101,"1876,67544-0066-60 ",.01)
 ;;67544-0066-60
 ;;9002226.02101,"1876,67544-0066-60 ",.02)
 ;;67544-0066-60
 ;;9002226.02101,"1876,67544-0097-53 ",.01)
 ;;67544-0097-53
 ;;9002226.02101,"1876,67544-0097-53 ",.02)
 ;;67544-0097-53
 ;;9002226.02101,"1876,67544-0097-60 ",.01)
 ;;67544-0097-60
 ;;9002226.02101,"1876,67544-0097-60 ",.02)
 ;;67544-0097-60
 ;;9002226.02101,"1876,67544-0097-70 ",.01)
 ;;67544-0097-70
 ;;9002226.02101,"1876,67544-0097-70 ",.02)
 ;;67544-0097-70
 ;;9002226.02101,"1876,67544-0097-80 ",.01)
 ;;67544-0097-80
 ;;9002226.02101,"1876,67544-0097-80 ",.02)
 ;;67544-0097-80
 ;;9002226.02101,"1876,67544-0097-92 ",.01)
 ;;67544-0097-92
 ;;9002226.02101,"1876,67544-0097-92 ",.02)
 ;;67544-0097-92
 ;;9002226.02101,"1876,67544-0097-94 ",.01)
 ;;67544-0097-94
 ;;9002226.02101,"1876,67544-0097-94 ",.02)
 ;;67544-0097-94
 ;;9002226.02101,"1876,67544-0107-53 ",.01)
 ;;67544-0107-53
 ;;9002226.02101,"1876,67544-0107-53 ",.02)
 ;;67544-0107-53
 ;;9002226.02101,"1876,67544-0107-60 ",.01)
 ;;67544-0107-60
 ;;9002226.02101,"1876,67544-0107-60 ",.02)
 ;;67544-0107-60
 ;;9002226.02101,"1876,67544-0107-80 ",.01)
 ;;67544-0107-80
 ;;9002226.02101,"1876,67544-0107-80 ",.02)
 ;;67544-0107-80
 ;;9002226.02101,"1876,67544-0107-92 ",.01)
 ;;67544-0107-92
 ;;9002226.02101,"1876,67544-0107-92 ",.02)
 ;;67544-0107-92
 ;;9002226.02101,"1876,67544-0113-60 ",.01)
 ;;67544-0113-60
 ;;9002226.02101,"1876,67544-0113-60 ",.02)
 ;;67544-0113-60
 ;;9002226.02101,"1876,67544-0113-70 ",.01)
 ;;67544-0113-70
 ;;9002226.02101,"1876,67544-0113-70 ",.02)
 ;;67544-0113-70
 ;;9002226.02101,"1876,67544-0113-80 ",.01)
 ;;67544-0113-80
 ;;9002226.02101,"1876,67544-0113-80 ",.02)
 ;;67544-0113-80
 ;;9002226.02101,"1876,67544-0129-53 ",.01)
 ;;67544-0129-53
 ;;9002226.02101,"1876,67544-0129-53 ",.02)
 ;;67544-0129-53
 ;;9002226.02101,"1876,67544-0129-70 ",.01)
 ;;67544-0129-70
 ;;9002226.02101,"1876,67544-0129-70 ",.02)
 ;;67544-0129-70
 ;;9002226.02101,"1876,67544-0129-80 ",.01)
 ;;67544-0129-80
 ;;9002226.02101,"1876,67544-0129-80 ",.02)
 ;;67544-0129-80
