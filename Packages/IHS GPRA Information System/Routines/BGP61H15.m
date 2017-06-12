BGP61H15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1221,65162-0175-11 ",.02)
 ;;65162-0175-11
 ;;9002226.02101,"1221,65162-0175-50 ",.01)
 ;;65162-0175-50
 ;;9002226.02101,"1221,65162-0175-50 ",.02)
 ;;65162-0175-50
 ;;9002226.02101,"1221,65162-0177-10 ",.01)
 ;;65162-0177-10
 ;;9002226.02101,"1221,65162-0177-10 ",.02)
 ;;65162-0177-10
 ;;9002226.02101,"1221,65162-0177-11 ",.01)
 ;;65162-0177-11
 ;;9002226.02101,"1221,65162-0177-11 ",.02)
 ;;65162-0177-11
 ;;9002226.02101,"1221,65162-0177-50 ",.01)
 ;;65162-0177-50
 ;;9002226.02101,"1221,65162-0177-50 ",.02)
 ;;65162-0177-50
 ;;9002226.02101,"1221,65162-0218-10 ",.01)
 ;;65162-0218-10
 ;;9002226.02101,"1221,65162-0218-10 ",.02)
 ;;65162-0218-10
 ;;9002226.02101,"1221,65162-0218-11 ",.01)
 ;;65162-0218-11
 ;;9002226.02101,"1221,65162-0218-11 ",.02)
 ;;65162-0218-11
 ;;9002226.02101,"1221,65162-0218-50 ",.01)
 ;;65162-0218-50
 ;;9002226.02101,"1221,65162-0218-50 ",.02)
 ;;65162-0218-50
 ;;9002226.02101,"1221,65162-0219-10 ",.01)
 ;;65162-0219-10
 ;;9002226.02101,"1221,65162-0219-10 ",.02)
 ;;65162-0219-10
 ;;9002226.02101,"1221,65162-0219-11 ",.01)
 ;;65162-0219-11
 ;;9002226.02101,"1221,65162-0219-11 ",.02)
 ;;65162-0219-11
 ;;9002226.02101,"1221,65162-0219-50 ",.01)
 ;;65162-0219-50
 ;;9002226.02101,"1221,65162-0219-50 ",.02)
 ;;65162-0219-50
 ;;9002226.02101,"1221,65162-0220-10 ",.01)
 ;;65162-0220-10
 ;;9002226.02101,"1221,65162-0220-10 ",.02)
 ;;65162-0220-10
 ;;9002226.02101,"1221,65162-0220-11 ",.01)
 ;;65162-0220-11
 ;;9002226.02101,"1221,65162-0220-11 ",.02)
 ;;65162-0220-11
 ;;9002226.02101,"1221,65162-0220-50 ",.01)
 ;;65162-0220-50
 ;;9002226.02101,"1221,65162-0220-50 ",.02)
 ;;65162-0220-50
 ;;9002226.02101,"1221,65243-0239-09 ",.01)
 ;;65243-0239-09
 ;;9002226.02101,"1221,65243-0239-09 ",.02)
 ;;65243-0239-09
 ;;9002226.02101,"1221,65243-0239-18 ",.01)
 ;;65243-0239-18
 ;;9002226.02101,"1221,65243-0239-18 ",.02)
 ;;65243-0239-18
 ;;9002226.02101,"1221,65243-0239-27 ",.01)
 ;;65243-0239-27
 ;;9002226.02101,"1221,65243-0239-27 ",.02)
 ;;65243-0239-27
 ;;9002226.02101,"1221,65243-0288-06 ",.01)
 ;;65243-0288-06
 ;;9002226.02101,"1221,65243-0288-06 ",.02)
 ;;65243-0288-06
 ;;9002226.02101,"1221,65243-0288-09 ",.01)
 ;;65243-0288-09
 ;;9002226.02101,"1221,65243-0288-09 ",.02)
 ;;65243-0288-09
 ;;9002226.02101,"1221,65243-0288-12 ",.01)
 ;;65243-0288-12
 ;;9002226.02101,"1221,65243-0288-12 ",.02)
 ;;65243-0288-12
 ;;9002226.02101,"1221,65243-0288-18 ",.01)
 ;;65243-0288-18
 ;;9002226.02101,"1221,65243-0288-18 ",.02)
 ;;65243-0288-18
 ;;9002226.02101,"1221,65243-0289-06 ",.01)
 ;;65243-0289-06
 ;;9002226.02101,"1221,65243-0289-06 ",.02)
 ;;65243-0289-06
 ;;9002226.02101,"1221,65243-0289-09 ",.01)
 ;;65243-0289-09
 ;;9002226.02101,"1221,65243-0289-09 ",.02)
 ;;65243-0289-09
 ;;9002226.02101,"1221,65243-0289-12 ",.01)
 ;;65243-0289-12
 ;;9002226.02101,"1221,65243-0289-12 ",.02)
 ;;65243-0289-12
 ;;9002226.02101,"1221,65243-0289-18 ",.01)
 ;;65243-0289-18
 ;;9002226.02101,"1221,65243-0289-18 ",.02)
 ;;65243-0289-18
 ;;9002226.02101,"1221,65243-0371-06 ",.01)
 ;;65243-0371-06
 ;;9002226.02101,"1221,65243-0371-06 ",.02)
 ;;65243-0371-06
 ;;9002226.02101,"1221,65243-0371-09 ",.01)
 ;;65243-0371-09
 ;;9002226.02101,"1221,65243-0371-09 ",.02)
 ;;65243-0371-09
 ;;9002226.02101,"1221,65243-0372-06 ",.01)
 ;;65243-0372-06
 ;;9002226.02101,"1221,65243-0372-06 ",.02)
 ;;65243-0372-06
 ;;9002226.02101,"1221,65243-0372-09 ",.01)
 ;;65243-0372-09
 ;;9002226.02101,"1221,65243-0372-09 ",.02)
 ;;65243-0372-09
 ;;9002226.02101,"1221,65243-0372-18 ",.01)
 ;;65243-0372-18
 ;;9002226.02101,"1221,65243-0372-18 ",.02)
 ;;65243-0372-18
 ;;9002226.02101,"1221,65243-0373-09 ",.01)
 ;;65243-0373-09
 ;;9002226.02101,"1221,65243-0373-09 ",.02)
 ;;65243-0373-09
 ;;9002226.02101,"1221,65862-0008-01 ",.01)
 ;;65862-0008-01
 ;;9002226.02101,"1221,65862-0008-01 ",.02)
 ;;65862-0008-01
 ;;9002226.02101,"1221,65862-0008-05 ",.01)
 ;;65862-0008-05
 ;;9002226.02101,"1221,65862-0008-05 ",.02)
 ;;65862-0008-05
 ;;9002226.02101,"1221,65862-0008-90 ",.01)
 ;;65862-0008-90
 ;;9002226.02101,"1221,65862-0008-90 ",.02)
 ;;65862-0008-90
 ;;9002226.02101,"1221,65862-0008-99 ",.01)
 ;;65862-0008-99
 ;;9002226.02101,"1221,65862-0008-99 ",.02)
 ;;65862-0008-99
 ;;9002226.02101,"1221,65862-0009-01 ",.01)
 ;;65862-0009-01
 ;;9002226.02101,"1221,65862-0009-01 ",.02)
 ;;65862-0009-01
 ;;9002226.02101,"1221,65862-0009-05 ",.01)
 ;;65862-0009-05
 ;;9002226.02101,"1221,65862-0009-05 ",.02)
 ;;65862-0009-05
 ;;9002226.02101,"1221,65862-0009-90 ",.01)
 ;;65862-0009-90
 ;;9002226.02101,"1221,65862-0009-90 ",.02)
 ;;65862-0009-90
 ;;9002226.02101,"1221,65862-0010-01 ",.01)
 ;;65862-0010-01
 ;;9002226.02101,"1221,65862-0010-01 ",.02)
 ;;65862-0010-01
 ;;9002226.02101,"1221,65862-0010-05 ",.01)
 ;;65862-0010-05
 ;;9002226.02101,"1221,65862-0010-05 ",.02)
 ;;65862-0010-05
 ;;9002226.02101,"1221,65862-0010-46 ",.01)
 ;;65862-0010-46
 ;;9002226.02101,"1221,65862-0010-46 ",.02)
 ;;65862-0010-46
 ;;9002226.02101,"1221,65862-0010-90 ",.01)
 ;;65862-0010-90
 ;;9002226.02101,"1221,65862-0010-90 ",.02)
 ;;65862-0010-90
 ;;9002226.02101,"1221,65862-0010-99 ",.01)
 ;;65862-0010-99
 ;;9002226.02101,"1221,65862-0010-99 ",.02)
 ;;65862-0010-99
 ;;9002226.02101,"1221,65862-0080-01 ",.01)
 ;;65862-0080-01
 ;;9002226.02101,"1221,65862-0080-01 ",.02)
 ;;65862-0080-01
 ;;9002226.02101,"1221,65862-0080-05 ",.01)
 ;;65862-0080-05
 ;;9002226.02101,"1221,65862-0080-05 ",.02)
 ;;65862-0080-05
 ;;9002226.02101,"1221,65862-0081-01 ",.01)
 ;;65862-0081-01
 ;;9002226.02101,"1221,65862-0081-01 ",.02)
 ;;65862-0081-01
 ;;9002226.02101,"1221,65862-0081-05 ",.01)
 ;;65862-0081-05
 ;;9002226.02101,"1221,65862-0081-05 ",.02)
 ;;65862-0081-05
 ;;9002226.02101,"1221,65862-0082-01 ",.01)
 ;;65862-0082-01
 ;;9002226.02101,"1221,65862-0082-01 ",.02)
 ;;65862-0082-01
 ;;9002226.02101,"1221,65862-0082-05 ",.01)
 ;;65862-0082-05
 ;;9002226.02101,"1221,65862-0082-05 ",.02)
 ;;65862-0082-05
 ;;9002226.02101,"1221,65862-0291-01 ",.01)
 ;;65862-0291-01
 ;;9002226.02101,"1221,65862-0291-01 ",.02)
 ;;65862-0291-01
 ;;9002226.02101,"1221,65862-0291-05 ",.01)
 ;;65862-0291-05
 ;;9002226.02101,"1221,65862-0291-05 ",.02)
 ;;65862-0291-05
 ;;9002226.02101,"1221,65862-0292-01 ",.01)
 ;;65862-0292-01
 ;;9002226.02101,"1221,65862-0292-01 ",.02)
 ;;65862-0292-01
 ;;9002226.02101,"1221,65862-0525-18 ",.01)
 ;;65862-0525-18
 ;;9002226.02101,"1221,65862-0525-18 ",.02)
 ;;65862-0525-18
 ;;9002226.02101,"1221,65862-0525-60 ",.01)
 ;;65862-0525-60
 ;;9002226.02101,"1221,65862-0525-60 ",.02)
 ;;65862-0525-60
 ;;9002226.02101,"1221,65862-0526-18 ",.01)
 ;;65862-0526-18
 ;;9002226.02101,"1221,65862-0526-18 ",.02)
 ;;65862-0526-18
 ;;9002226.02101,"1221,65862-0526-60 ",.01)
 ;;65862-0526-60
 ;;9002226.02101,"1221,65862-0526-60 ",.02)
 ;;65862-0526-60
 ;;9002226.02101,"1221,66116-0233-30 ",.01)
 ;;66116-0233-30
 ;;9002226.02101,"1221,66116-0233-30 ",.02)
 ;;66116-0233-30
 ;;9002226.02101,"1221,66116-0282-60 ",.01)
 ;;66116-0282-60
 ;;9002226.02101,"1221,66116-0282-60 ",.02)
 ;;66116-0282-60
 ;;9002226.02101,"1221,66116-0293-30 ",.01)
 ;;66116-0293-30
 ;;9002226.02101,"1221,66116-0293-30 ",.02)
 ;;66116-0293-30
 ;;9002226.02101,"1221,66116-0454-30 ",.01)
 ;;66116-0454-30
 ;;9002226.02101,"1221,66116-0454-30 ",.02)
 ;;66116-0454-30
 ;;9002226.02101,"1221,66116-0695-60 ",.01)
 ;;66116-0695-60
 ;;9002226.02101,"1221,66116-0695-60 ",.02)
 ;;66116-0695-60
 ;;9002226.02101,"1221,66267-0493-14 ",.01)
 ;;66267-0493-14
 ;;9002226.02101,"1221,66267-0493-14 ",.02)
 ;;66267-0493-14
 ;;9002226.02101,"1221,66267-0493-30 ",.01)
 ;;66267-0493-30
 ;;9002226.02101,"1221,66267-0493-30 ",.02)
 ;;66267-0493-30
 ;;9002226.02101,"1221,66267-0493-60 ",.01)
 ;;66267-0493-60
 ;;9002226.02101,"1221,66267-0493-60 ",.02)
 ;;66267-0493-60
 ;;9002226.02101,"1221,66267-0493-90 ",.01)
 ;;66267-0493-90
 ;;9002226.02101,"1221,66267-0493-90 ",.02)
 ;;66267-0493-90
 ;;9002226.02101,"1221,66267-0493-91 ",.01)
 ;;66267-0493-91
 ;;9002226.02101,"1221,66267-0493-91 ",.02)
 ;;66267-0493-91
 ;;9002226.02101,"1221,66267-0493-92 ",.01)
 ;;66267-0493-92
 ;;9002226.02101,"1221,66267-0493-92 ",.02)
 ;;66267-0493-92
 ;;9002226.02101,"1221,66267-0493-93 ",.01)
 ;;66267-0493-93
 ;;9002226.02101,"1221,66267-0493-93 ",.02)
 ;;66267-0493-93
 ;;9002226.02101,"1221,66267-0497-30 ",.01)
 ;;66267-0497-30
 ;;9002226.02101,"1221,66267-0497-30 ",.02)
 ;;66267-0497-30
 ;;9002226.02101,"1221,66267-0553-30 ",.01)
 ;;66267-0553-30
 ;;9002226.02101,"1221,66267-0553-30 ",.02)
 ;;66267-0553-30
 ;;9002226.02101,"1221,66336-0270-30 ",.01)
 ;;66336-0270-30
 ;;9002226.02101,"1221,66336-0270-30 ",.02)
 ;;66336-0270-30
 ;;9002226.02101,"1221,66336-0270-60 ",.01)
 ;;66336-0270-60
 ;;9002226.02101,"1221,66336-0270-60 ",.02)
 ;;66336-0270-60
 ;;9002226.02101,"1221,66336-0270-90 ",.01)
 ;;66336-0270-90
 ;;9002226.02101,"1221,66336-0270-90 ",.02)
 ;;66336-0270-90
 ;;9002226.02101,"1221,66336-0270-94 ",.01)
 ;;66336-0270-94
 ;;9002226.02101,"1221,66336-0270-94 ",.02)
 ;;66336-0270-94
 ;;9002226.02101,"1221,66336-0292-60 ",.01)
 ;;66336-0292-60
 ;;9002226.02101,"1221,66336-0292-60 ",.02)
 ;;66336-0292-60
 ;;9002226.02101,"1221,66336-0319-30 ",.01)
 ;;66336-0319-30
 ;;9002226.02101,"1221,66336-0319-30 ",.02)
 ;;66336-0319-30
 ;;9002226.02101,"1221,66336-0358-30 ",.01)
 ;;66336-0358-30
 ;;9002226.02101,"1221,66336-0358-30 ",.02)
 ;;66336-0358-30
 ;;9002226.02101,"1221,66336-0358-60 ",.01)
 ;;66336-0358-60
 ;;9002226.02101,"1221,66336-0358-60 ",.02)
 ;;66336-0358-60
 ;;9002226.02101,"1221,66336-0358-62 ",.01)
 ;;66336-0358-62
 ;;9002226.02101,"1221,66336-0358-62 ",.02)
 ;;66336-0358-62
 ;;9002226.02101,"1221,66336-0358-90 ",.01)
 ;;66336-0358-90
 ;;9002226.02101,"1221,66336-0358-90 ",.02)
 ;;66336-0358-90
 ;;9002226.02101,"1221,66336-0500-30 ",.01)
 ;;66336-0500-30
 ;;9002226.02101,"1221,66336-0500-30 ",.02)
 ;;66336-0500-30
 ;;9002226.02101,"1221,66336-0500-90 ",.01)
 ;;66336-0500-90
 ;;9002226.02101,"1221,66336-0500-90 ",.02)
 ;;66336-0500-90
 ;;9002226.02101,"1221,66336-0784-30 ",.01)
 ;;66336-0784-30
 ;;9002226.02101,"1221,66336-0784-30 ",.02)
 ;;66336-0784-30
 ;;9002226.02101,"1221,66336-0784-60 ",.01)
 ;;66336-0784-60
 ;;9002226.02101,"1221,66336-0784-60 ",.02)
 ;;66336-0784-60
 ;;9002226.02101,"1221,66336-0784-90 ",.01)
 ;;66336-0784-90
 ;;9002226.02101,"1221,66336-0784-90 ",.02)
 ;;66336-0784-90
 ;;9002226.02101,"1221,66336-0850-30 ",.01)
 ;;66336-0850-30
 ;;9002226.02101,"1221,66336-0850-30 ",.02)
 ;;66336-0850-30
 ;;9002226.02101,"1221,66336-0850-60 ",.01)
 ;;66336-0850-60
 ;;9002226.02101,"1221,66336-0850-60 ",.02)
 ;;66336-0850-60
 ;;9002226.02101,"1221,66336-0850-90 ",.01)
 ;;66336-0850-90
 ;;9002226.02101,"1221,66336-0850-90 ",.02)
 ;;66336-0850-90
 ;;9002226.02101,"1221,66336-0883-30 ",.01)
 ;;66336-0883-30
 ;;9002226.02101,"1221,66336-0883-30 ",.02)
 ;;66336-0883-30
 ;;9002226.02101,"1221,66336-0883-60 ",.01)
 ;;66336-0883-60
 ;;9002226.02101,"1221,66336-0883-60 ",.02)
 ;;66336-0883-60
 ;;9002226.02101,"1221,66336-0883-90 ",.01)
 ;;66336-0883-90
 ;;9002226.02101,"1221,66336-0883-90 ",.02)
 ;;66336-0883-90
 ;;9002226.02101,"1221,66336-0884-14 ",.01)
 ;;66336-0884-14
 ;;9002226.02101,"1221,66336-0884-14 ",.02)
 ;;66336-0884-14
 ;;9002226.02101,"1221,66336-0884-28 ",.01)
 ;;66336-0884-28
 ;;9002226.02101,"1221,66336-0884-28 ",.02)
 ;;66336-0884-28
 ;;9002226.02101,"1221,66336-0884-30 ",.01)
 ;;66336-0884-30
 ;;9002226.02101,"1221,66336-0884-30 ",.02)
 ;;66336-0884-30
 ;;9002226.02101,"1221,66336-0884-60 ",.01)
 ;;66336-0884-60
 ;;9002226.02101,"1221,66336-0884-60 ",.02)
 ;;66336-0884-60
 ;;9002226.02101,"1221,66336-0884-62 ",.01)
 ;;66336-0884-62
 ;;9002226.02101,"1221,66336-0884-62 ",.02)
 ;;66336-0884-62
 ;;9002226.02101,"1221,66336-0884-90 ",.01)
 ;;66336-0884-90
 ;;9002226.02101,"1221,66336-0884-90 ",.02)
 ;;66336-0884-90
 ;;9002226.02101,"1221,67544-0047-30 ",.01)
 ;;67544-0047-30
 ;;9002226.02101,"1221,67544-0047-30 ",.02)
 ;;67544-0047-30
 ;;9002226.02101,"1221,67544-0047-53 ",.01)
 ;;67544-0047-53
 ;;9002226.02101,"1221,67544-0047-53 ",.02)
 ;;67544-0047-53
 ;;9002226.02101,"1221,67544-0047-60 ",.01)
 ;;67544-0047-60
 ;;9002226.02101,"1221,67544-0047-60 ",.02)
 ;;67544-0047-60
 ;;9002226.02101,"1221,67544-0047-70 ",.01)
 ;;67544-0047-70
 ;;9002226.02101,"1221,67544-0047-70 ",.02)
 ;;67544-0047-70
 ;;9002226.02101,"1221,67544-0047-75 ",.01)
 ;;67544-0047-75
 ;;9002226.02101,"1221,67544-0047-75 ",.02)
 ;;67544-0047-75
 ;;9002226.02101,"1221,67544-0047-80 ",.01)
 ;;67544-0047-80
