BGP71W6 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1221,00440-5745-90 ",.02)
 ;;00440-5745-90
 ;;9002226.02101,"1221,00440-5745-92 ",.01)
 ;;00440-5745-92
 ;;9002226.02101,"1221,00440-5745-92 ",.02)
 ;;00440-5745-92
 ;;9002226.02101,"1221,00440-5746-00 ",.01)
 ;;00440-5746-00
 ;;9002226.02101,"1221,00440-5746-00 ",.02)
 ;;00440-5746-00
 ;;9002226.02101,"1221,00440-5746-01 ",.01)
 ;;00440-5746-01
 ;;9002226.02101,"1221,00440-5746-01 ",.02)
 ;;00440-5746-01
 ;;9002226.02101,"1221,00440-5746-05 ",.01)
 ;;00440-5746-05
 ;;9002226.02101,"1221,00440-5746-05 ",.02)
 ;;00440-5746-05
 ;;9002226.02101,"1221,00440-5746-81 ",.01)
 ;;00440-5746-81
 ;;9002226.02101,"1221,00440-5746-81 ",.02)
 ;;00440-5746-81
 ;;9002226.02101,"1221,00440-5746-85 ",.01)
 ;;00440-5746-85
 ;;9002226.02101,"1221,00440-5746-85 ",.02)
 ;;00440-5746-85
 ;;9002226.02101,"1221,00440-5746-90 ",.01)
 ;;00440-5746-90
 ;;9002226.02101,"1221,00440-5746-90 ",.02)
 ;;00440-5746-90
 ;;9002226.02101,"1221,00440-5746-92 ",.01)
 ;;00440-5746-92
 ;;9002226.02101,"1221,00440-5746-92 ",.02)
 ;;00440-5746-92
 ;;9002226.02101,"1221,00440-7585-90 ",.01)
 ;;00440-7585-90
 ;;9002226.02101,"1221,00440-7585-90 ",.02)
 ;;00440-7585-90
 ;;9002226.02101,"1221,00440-7587-90 ",.01)
 ;;00440-7587-90
 ;;9002226.02101,"1221,00440-7587-90 ",.02)
 ;;00440-7587-90
 ;;9002226.02101,"1221,00440-7589-90 ",.01)
 ;;00440-7589-90
 ;;9002226.02101,"1221,00440-7589-90 ",.02)
 ;;00440-7589-90
 ;;9002226.02101,"1221,00440-7589-95 ",.01)
 ;;00440-7589-95
 ;;9002226.02101,"1221,00440-7589-95 ",.02)
 ;;00440-7589-95
 ;;9002226.02101,"1221,00440-7739-14 ",.01)
 ;;00440-7739-14
 ;;9002226.02101,"1221,00440-7739-14 ",.02)
 ;;00440-7739-14
 ;;9002226.02101,"1221,00440-7739-60 ",.01)
 ;;00440-7739-60
 ;;9002226.02101,"1221,00440-7739-60 ",.02)
 ;;00440-7739-60
 ;;9002226.02101,"1221,00440-7739-90 ",.01)
 ;;00440-7739-90
 ;;9002226.02101,"1221,00440-7739-90 ",.02)
 ;;00440-7739-90
 ;;9002226.02101,"1221,00440-7739-92 ",.01)
 ;;00440-7739-92
 ;;9002226.02101,"1221,00440-7739-92 ",.02)
 ;;00440-7739-92
 ;;9002226.02101,"1221,00440-7739-94 ",.01)
 ;;00440-7739-94
 ;;9002226.02101,"1221,00440-7739-94 ",.02)
 ;;00440-7739-94
 ;;9002226.02101,"1221,00440-7739-95 ",.01)
 ;;00440-7739-95
 ;;9002226.02101,"1221,00440-7739-95 ",.02)
 ;;00440-7739-95
 ;;9002226.02101,"1221,00440-7745-90 ",.01)
 ;;00440-7745-90
 ;;9002226.02101,"1221,00440-7745-90 ",.02)
 ;;00440-7745-90
 ;;9002226.02101,"1221,00440-7745-92 ",.01)
 ;;00440-7745-92
 ;;9002226.02101,"1221,00440-7745-92 ",.02)
 ;;00440-7745-92
 ;;9002226.02101,"1221,00440-7746-90 ",.01)
 ;;00440-7746-90
 ;;9002226.02101,"1221,00440-7746-90 ",.02)
 ;;00440-7746-90
 ;;9002226.02101,"1221,00440-7746-92 ",.01)
 ;;00440-7746-92
 ;;9002226.02101,"1221,00440-7746-92 ",.02)
 ;;00440-7746-92
 ;;9002226.02101,"1221,00440-7748-90 ",.01)
 ;;00440-7748-90
 ;;9002226.02101,"1221,00440-7748-90 ",.02)
 ;;00440-7748-90
 ;;9002226.02101,"1221,00440-7748-92 ",.01)
 ;;00440-7748-92
 ;;9002226.02101,"1221,00440-7748-92 ",.02)
 ;;00440-7748-92
 ;;9002226.02101,"1221,00591-2719-60 ",.01)
 ;;00591-2719-60
 ;;9002226.02101,"1221,00591-2719-60 ",.02)
 ;;00591-2719-60
 ;;9002226.02101,"1221,00591-2720-60 ",.01)
 ;;00591-2720-60
 ;;9002226.02101,"1221,00591-2720-60 ",.02)
 ;;00591-2720-60
 ;;9002226.02101,"1221,00597-0146-18 ",.01)
 ;;00597-0146-18
 ;;9002226.02101,"1221,00597-0146-18 ",.02)
 ;;00597-0146-18
 ;;9002226.02101,"1221,00597-0146-60 ",.01)
 ;;00597-0146-60
 ;;9002226.02101,"1221,00597-0146-60 ",.02)
 ;;00597-0146-60
 ;;9002226.02101,"1221,00597-0147-18 ",.01)
 ;;00597-0147-18
 ;;9002226.02101,"1221,00597-0147-18 ",.02)
 ;;00597-0147-18
 ;;9002226.02101,"1221,00597-0147-60 ",.01)
 ;;00597-0147-60
 ;;9002226.02101,"1221,00597-0147-60 ",.02)
 ;;00597-0147-60
 ;;9002226.02101,"1221,00597-0148-18 ",.01)
 ;;00597-0148-18
 ;;9002226.02101,"1221,00597-0148-18 ",.02)
 ;;00597-0148-18
 ;;9002226.02101,"1221,00597-0148-60 ",.01)
 ;;00597-0148-60
 ;;9002226.02101,"1221,00597-0148-60 ",.02)
 ;;00597-0148-60
 ;;9002226.02101,"1221,00597-0159-18 ",.01)
 ;;00597-0159-18
 ;;9002226.02101,"1221,00597-0159-18 ",.02)
 ;;00597-0159-18
 ;;9002226.02101,"1221,00597-0159-60 ",.01)
 ;;00597-0159-60
 ;;9002226.02101,"1221,00597-0159-60 ",.02)
 ;;00597-0159-60
 ;;9002226.02101,"1221,00597-0168-18 ",.01)
 ;;00597-0168-18
 ;;9002226.02101,"1221,00597-0168-18 ",.02)
 ;;00597-0168-18
 ;;9002226.02101,"1221,00597-0168-60 ",.01)
 ;;00597-0168-60
 ;;9002226.02101,"1221,00597-0168-60 ",.02)
 ;;00597-0168-60
 ;;9002226.02101,"1221,00597-0175-18 ",.01)
 ;;00597-0175-18
 ;;9002226.02101,"1221,00597-0175-18 ",.02)
 ;;00597-0175-18
 ;;9002226.02101,"1221,00597-0175-60 ",.01)
 ;;00597-0175-60
 ;;9002226.02101,"1221,00597-0175-60 ",.02)
 ;;00597-0175-60
 ;;9002226.02101,"1221,00597-0180-18 ",.01)
 ;;00597-0180-18
 ;;9002226.02101,"1221,00597-0180-18 ",.02)
 ;;00597-0180-18
 ;;9002226.02101,"1221,00597-0180-60 ",.01)
 ;;00597-0180-60
 ;;9002226.02101,"1221,00597-0180-60 ",.02)
 ;;00597-0180-60
 ;;9002226.02101,"1221,00603-4467-21 ",.01)
 ;;00603-4467-21
 ;;9002226.02101,"1221,00603-4467-21 ",.02)
 ;;00603-4467-21
 ;;9002226.02101,"1221,00603-4467-28 ",.01)
 ;;00603-4467-28
 ;;9002226.02101,"1221,00603-4467-28 ",.02)
 ;;00603-4467-28
 ;;9002226.02101,"1221,00603-4467-32 ",.01)
 ;;00603-4467-32
 ;;9002226.02101,"1221,00603-4467-32 ",.02)
 ;;00603-4467-32
 ;;9002226.02101,"1221,00603-4468-21 ",.01)
 ;;00603-4468-21
 ;;9002226.02101,"1221,00603-4468-21 ",.02)
 ;;00603-4468-21
 ;;9002226.02101,"1221,00603-4468-28 ",.01)
 ;;00603-4468-28
 ;;9002226.02101,"1221,00603-4468-28 ",.02)
 ;;00603-4468-28
 ;;9002226.02101,"1221,00603-4468-32 ",.01)
 ;;00603-4468-32
 ;;9002226.02101,"1221,00603-4468-32 ",.02)
 ;;00603-4468-32
 ;;9002226.02101,"1221,00603-4469-21 ",.01)
 ;;00603-4469-21
 ;;9002226.02101,"1221,00603-4469-21 ",.02)
 ;;00603-4469-21
 ;;9002226.02101,"1221,00603-4469-28 ",.01)
 ;;00603-4469-28
 ;;9002226.02101,"1221,00603-4469-28 ",.02)
 ;;00603-4469-28
 ;;9002226.02101,"1221,00603-4469-32 ",.01)
 ;;00603-4469-32
 ;;9002226.02101,"1221,00603-4469-32 ",.02)
 ;;00603-4469-32
 ;;9002226.02101,"1221,00781-5050-01 ",.01)
 ;;00781-5050-01
 ;;9002226.02101,"1221,00781-5050-01 ",.02)
 ;;00781-5050-01
 ;;9002226.02101,"1221,00781-5050-05 ",.01)
 ;;00781-5050-05
 ;;9002226.02101,"1221,00781-5050-05 ",.02)
 ;;00781-5050-05
 ;;9002226.02101,"1221,00781-5050-10 ",.01)
 ;;00781-5050-10
 ;;9002226.02101,"1221,00781-5050-10 ",.02)
 ;;00781-5050-10
 ;;9002226.02101,"1221,00781-5050-61 ",.01)
 ;;00781-5050-61
 ;;9002226.02101,"1221,00781-5050-61 ",.02)
 ;;00781-5050-61
 ;;9002226.02101,"1221,00781-5051-01 ",.01)
 ;;00781-5051-01
 ;;9002226.02101,"1221,00781-5051-01 ",.02)
 ;;00781-5051-01
 ;;9002226.02101,"1221,00781-5051-05 ",.01)
 ;;00781-5051-05
 ;;9002226.02101,"1221,00781-5051-05 ",.02)
 ;;00781-5051-05
 ;;9002226.02101,"1221,00781-5051-61 ",.01)
 ;;00781-5051-61
 ;;9002226.02101,"1221,00781-5051-61 ",.02)
 ;;00781-5051-61
 ;;9002226.02101,"1221,00781-5052-01 ",.01)
 ;;00781-5052-01
 ;;9002226.02101,"1221,00781-5052-01 ",.02)
 ;;00781-5052-01
 ;;9002226.02101,"1221,00781-5052-05 ",.01)
 ;;00781-5052-05
 ;;9002226.02101,"1221,00781-5052-05 ",.02)
 ;;00781-5052-05
 ;;9002226.02101,"1221,00781-5052-61 ",.01)
 ;;00781-5052-61
 ;;9002226.02101,"1221,00781-5052-61 ",.02)
 ;;00781-5052-61
 ;;9002226.02101,"1221,00781-5626-60 ",.01)
 ;;00781-5626-60
 ;;9002226.02101,"1221,00781-5626-60 ",.02)
 ;;00781-5626-60
 ;;9002226.02101,"1221,00781-5627-60 ",.01)
 ;;00781-5627-60
 ;;9002226.02101,"1221,00781-5627-60 ",.02)
 ;;00781-5627-60
 ;;9002226.02101,"1221,00904-5794-61 ",.01)
 ;;00904-5794-61
 ;;9002226.02101,"1221,00904-5794-61 ",.02)
 ;;00904-5794-61
 ;;9002226.02101,"1221,00904-5849-14 ",.01)
 ;;00904-5849-14
 ;;9002226.02101,"1221,00904-5849-14 ",.02)
 ;;00904-5849-14
 ;;9002226.02101,"1221,00904-5849-18 ",.01)
 ;;00904-5849-18
 ;;9002226.02101,"1221,00904-5849-18 ",.02)
 ;;00904-5849-18
 ;;9002226.02101,"1221,00904-5849-40 ",.01)
 ;;00904-5849-40
 ;;9002226.02101,"1221,00904-5849-40 ",.02)
 ;;00904-5849-40
 ;;9002226.02101,"1221,00904-5849-52 ",.01)
 ;;00904-5849-52
 ;;9002226.02101,"1221,00904-5849-52 ",.02)
 ;;00904-5849-52
 ;;9002226.02101,"1221,00904-5849-53 ",.01)
 ;;00904-5849-53
 ;;9002226.02101,"1221,00904-5849-53 ",.02)
 ;;00904-5849-53
 ;;9002226.02101,"1221,00904-5849-54 ",.01)
 ;;00904-5849-54
 ;;9002226.02101,"1221,00904-5849-54 ",.02)
 ;;00904-5849-54
 ;;9002226.02101,"1221,00904-5849-80 ",.01)
 ;;00904-5849-80
 ;;9002226.02101,"1221,00904-5849-80 ",.02)
 ;;00904-5849-80
 ;;9002226.02101,"1221,00904-5849-89 ",.01)
 ;;00904-5849-89
 ;;9002226.02101,"1221,00904-5849-89 ",.02)
 ;;00904-5849-89
 ;;9002226.02101,"1221,00904-5849-93 ",.01)
 ;;00904-5849-93
 ;;9002226.02101,"1221,00904-5849-93 ",.02)
 ;;00904-5849-93
 ;;9002226.02101,"1221,00904-5850-40 ",.01)
 ;;00904-5850-40
 ;;9002226.02101,"1221,00904-5850-40 ",.02)
 ;;00904-5850-40
 ;;9002226.02101,"1221,00904-5850-52 ",.01)
 ;;00904-5850-52
 ;;9002226.02101,"1221,00904-5850-52 ",.02)
 ;;00904-5850-52
 ;;9002226.02101,"1221,00904-5850-53 ",.01)
 ;;00904-5850-53
 ;;9002226.02101,"1221,00904-5850-53 ",.02)
 ;;00904-5850-53
 ;;9002226.02101,"1221,00904-5850-89 ",.01)
 ;;00904-5850-89
 ;;9002226.02101,"1221,00904-5850-89 ",.02)
 ;;00904-5850-89
 ;;9002226.02101,"1221,00904-5850-93 ",.01)
 ;;00904-5850-93
 ;;9002226.02101,"1221,00904-5850-93 ",.02)
 ;;00904-5850-93
 ;;9002226.02101,"1221,00904-5851-40 ",.01)
 ;;00904-5851-40
 ;;9002226.02101,"1221,00904-5851-40 ",.02)
 ;;00904-5851-40
 ;;9002226.02101,"1221,00904-5851-52 ",.01)
 ;;00904-5851-52
 ;;9002226.02101,"1221,00904-5851-52 ",.02)
 ;;00904-5851-52
 ;;9002226.02101,"1221,00904-5851-89 ",.01)
 ;;00904-5851-89
 ;;9002226.02101,"1221,00904-5851-89 ",.02)
 ;;00904-5851-89
 ;;9002226.02101,"1221,00904-5851-93 ",.01)
 ;;00904-5851-93
 ;;9002226.02101,"1221,00904-5851-93 ",.02)
 ;;00904-5851-93
 ;;9002226.02101,"1221,00904-6090-61 ",.01)
 ;;00904-6090-61
 ;;9002226.02101,"1221,00904-6090-61 ",.02)
 ;;00904-6090-61
 ;;9002226.02101,"1221,00904-6091-61 ",.01)
 ;;00904-6091-61
 ;;9002226.02101,"1221,00904-6091-61 ",.02)
 ;;00904-6091-61
 ;;9002226.02101,"1221,00904-6092-61 ",.01)
 ;;00904-6092-61
 ;;9002226.02101,"1221,00904-6092-61 ",.02)
 ;;00904-6092-61
 ;;9002226.02101,"1221,00904-6326-61 ",.01)
 ;;00904-6326-61
 ;;9002226.02101,"1221,00904-6326-61 ",.02)
 ;;00904-6326-61
 ;;9002226.02101,"1221,00904-6327-61 ",.01)
 ;;00904-6327-61
 ;;9002226.02101,"1221,00904-6327-61 ",.02)
 ;;00904-6327-61
 ;;9002226.02101,"1221,00904-6328-61 ",.01)
 ;;00904-6328-61
 ;;9002226.02101,"1221,00904-6328-61 ",.02)
 ;;00904-6328-61
 ;;9002226.02101,"1221,00904-6343-14 ",.01)
 ;;00904-6343-14
 ;;9002226.02101,"1221,00904-6343-14 ",.02)
 ;;00904-6343-14
 ;;9002226.02101,"1221,00904-6343-18 ",.01)
 ;;00904-6343-18
 ;;9002226.02101,"1221,00904-6343-18 ",.02)
 ;;00904-6343-18
 ;;9002226.02101,"1221,00904-6343-40 ",.01)
 ;;00904-6343-40
 ;;9002226.02101,"1221,00904-6343-40 ",.02)
 ;;00904-6343-40
 ;;9002226.02101,"1221,00904-6343-52 ",.01)
 ;;00904-6343-52
 ;;9002226.02101,"1221,00904-6343-52 ",.02)
 ;;00904-6343-52
 ;;9002226.02101,"1221,00904-6343-53 ",.01)
 ;;00904-6343-53
 ;;9002226.02101,"1221,00904-6343-53 ",.02)
 ;;00904-6343-53
 ;;9002226.02101,"1221,00904-6343-54 ",.01)
 ;;00904-6343-54
 ;;9002226.02101,"1221,00904-6343-54 ",.02)
 ;;00904-6343-54
 ;;9002226.02101,"1221,00904-6343-80 ",.01)
 ;;00904-6343-80
 ;;9002226.02101,"1221,00904-6343-80 ",.02)
 ;;00904-6343-80
 ;;9002226.02101,"1221,00904-6343-89 ",.01)
 ;;00904-6343-89
 ;;9002226.02101,"1221,00904-6343-89 ",.02)
 ;;00904-6343-89
