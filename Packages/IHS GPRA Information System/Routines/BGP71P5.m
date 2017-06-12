BGP71P5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1801,00093-8034-01 ",.01)
 ;;00093-8034-01
 ;;9002226.02101,"1801,00093-8034-01 ",.02)
 ;;00093-8034-01
 ;;9002226.02101,"1801,00093-8035-01 ",.01)
 ;;00093-8035-01
 ;;9002226.02101,"1801,00093-8035-01 ",.02)
 ;;00093-8035-01
 ;;9002226.02101,"1801,00093-8035-05 ",.01)
 ;;00093-8035-05
 ;;9002226.02101,"1801,00093-8035-05 ",.02)
 ;;00093-8035-05
 ;;9002226.02101,"1801,00093-8036-01 ",.01)
 ;;00093-8036-01
 ;;9002226.02101,"1801,00093-8036-01 ",.02)
 ;;00093-8036-01
 ;;9002226.02101,"1801,00093-8342-01 ",.01)
 ;;00093-8342-01
 ;;9002226.02101,"1801,00093-8342-01 ",.02)
 ;;00093-8342-01
 ;;9002226.02101,"1801,00093-8343-01 ",.01)
 ;;00093-8343-01
 ;;9002226.02101,"1801,00093-8343-01 ",.02)
 ;;00093-8343-01
 ;;9002226.02101,"1801,00093-8343-05 ",.01)
 ;;00093-8343-05
 ;;9002226.02101,"1801,00093-8343-05 ",.02)
 ;;00093-8343-05
 ;;9002226.02101,"1801,00093-8343-10 ",.01)
 ;;00093-8343-10
 ;;9002226.02101,"1801,00093-8343-10 ",.02)
 ;;00093-8343-10
 ;;9002226.02101,"1801,00093-8343-98 ",.01)
 ;;00093-8343-98
 ;;9002226.02101,"1801,00093-8343-98 ",.02)
 ;;00093-8343-98
 ;;9002226.02101,"1801,00093-8344-01 ",.01)
 ;;00093-8344-01
 ;;9002226.02101,"1801,00093-8344-01 ",.02)
 ;;00093-8344-01
 ;;9002226.02101,"1801,00093-8344-05 ",.01)
 ;;00093-8344-05
 ;;9002226.02101,"1801,00093-8344-05 ",.02)
 ;;00093-8344-05
 ;;9002226.02101,"1801,00093-8344-10 ",.01)
 ;;00093-8344-10
 ;;9002226.02101,"1801,00093-8344-10 ",.02)
 ;;00093-8344-10
 ;;9002226.02101,"1801,00093-8344-98 ",.01)
 ;;00093-8344-98
 ;;9002226.02101,"1801,00093-8344-98 ",.02)
 ;;00093-8344-98
 ;;9002226.02101,"1801,00093-9364-01 ",.01)
 ;;00093-9364-01
 ;;9002226.02101,"1801,00093-9364-01 ",.02)
 ;;00093-9364-01
 ;;9002226.02101,"1801,00093-9364-05 ",.01)
 ;;00093-9364-05
 ;;9002226.02101,"1801,00093-9364-05 ",.02)
 ;;00093-9364-05
 ;;9002226.02101,"1801,00093-9364-10 ",.01)
 ;;00093-9364-10
 ;;9002226.02101,"1801,00093-9364-10 ",.02)
 ;;00093-9364-10
 ;;9002226.02101,"1801,00093-9433-01 ",.01)
 ;;00093-9433-01
 ;;9002226.02101,"1801,00093-9433-01 ",.02)
 ;;00093-9433-01
 ;;9002226.02101,"1801,00093-9433-05 ",.01)
 ;;00093-9433-05
 ;;9002226.02101,"1801,00093-9433-05 ",.02)
 ;;00093-9433-05
 ;;9002226.02101,"1801,00093-9477-53 ",.01)
 ;;00093-9477-53
 ;;9002226.02101,"1801,00093-9477-53 ",.02)
 ;;00093-9477-53
 ;;9002226.02101,"1801,00121-4776-10 ",.01)
 ;;00121-4776-10
 ;;9002226.02101,"1801,00121-4776-10 ",.02)
 ;;00121-4776-10
 ;;9002226.02101,"1801,00121-4776-20 ",.01)
 ;;00121-4776-20
 ;;9002226.02101,"1801,00121-4776-20 ",.02)
 ;;00121-4776-20
 ;;9002226.02101,"1801,00121-4776-35 ",.01)
 ;;00121-4776-35
 ;;9002226.02101,"1801,00121-4776-35 ",.02)
 ;;00121-4776-35
 ;;9002226.02101,"1801,00143-9918-01 ",.01)
 ;;00143-9918-01
 ;;9002226.02101,"1801,00143-9918-01 ",.02)
 ;;00143-9918-01
 ;;9002226.02101,"1801,00143-9919-01 ",.01)
 ;;00143-9919-01
 ;;9002226.02101,"1801,00143-9919-01 ",.02)
 ;;00143-9919-01
 ;;9002226.02101,"1801,00143-9919-05 ",.01)
 ;;00143-9919-05
 ;;9002226.02101,"1801,00143-9919-05 ",.02)
 ;;00143-9919-05
 ;;9002226.02101,"1801,00143-9920-01 ",.01)
 ;;00143-9920-01
 ;;9002226.02101,"1801,00143-9920-01 ",.02)
 ;;00143-9920-01
 ;;9002226.02101,"1801,00143-9920-05 ",.01)
 ;;00143-9920-05
 ;;9002226.02101,"1801,00143-9920-05 ",.02)
 ;;00143-9920-05
 ;;9002226.02101,"1801,00143-9920-10 ",.01)
 ;;00143-9920-10
 ;;9002226.02101,"1801,00143-9920-10 ",.02)
 ;;00143-9920-10
 ;;9002226.02101,"1801,00169-5174-01 ",.01)
 ;;00169-5174-01
 ;;9002226.02101,"1801,00169-5174-01 ",.02)
 ;;00169-5174-01
 ;;9002226.02101,"1801,00169-5174-02 ",.01)
 ;;00169-5174-02
 ;;9002226.02101,"1801,00169-5174-02 ",.02)
 ;;00169-5174-02
 ;;9002226.02101,"1801,00169-5175-10 ",.01)
 ;;00169-5175-10
 ;;9002226.02101,"1801,00169-5175-10 ",.02)
 ;;00169-5175-10
 ;;9002226.02101,"1801,00169-5175-11 ",.01)
 ;;00169-5175-11
 ;;9002226.02101,"1801,00169-5175-11 ",.02)
 ;;00169-5175-11
 ;;9002226.02101,"1801,00182-2646-89 ",.01)
 ;;00182-2646-89
 ;;9002226.02101,"1801,00182-2646-89 ",.02)
 ;;00182-2646-89
 ;;9002226.02101,"1801,00228-2751-11 ",.01)
 ;;00228-2751-11
 ;;9002226.02101,"1801,00228-2751-11 ",.02)
 ;;00228-2751-11
 ;;9002226.02101,"1801,00228-2751-50 ",.01)
 ;;00228-2751-50
 ;;9002226.02101,"1801,00228-2751-50 ",.02)
 ;;00228-2751-50
 ;;9002226.02101,"1801,00228-2752-11 ",.01)
 ;;00228-2752-11
 ;;9002226.02101,"1801,00228-2752-11 ",.02)
 ;;00228-2752-11
 ;;9002226.02101,"1801,00228-2752-50 ",.01)
 ;;00228-2752-50
 ;;9002226.02101,"1801,00228-2752-50 ",.02)
 ;;00228-2752-50
 ;;9002226.02101,"1801,00228-2753-11 ",.01)
 ;;00228-2753-11
 ;;9002226.02101,"1801,00228-2753-11 ",.02)
 ;;00228-2753-11
 ;;9002226.02101,"1801,00228-2753-50 ",.01)
 ;;00228-2753-50
 ;;9002226.02101,"1801,00228-2753-50 ",.02)
 ;;00228-2753-50
 ;;9002226.02101,"1801,00245-0880-30 ",.01)
 ;;00245-0880-30
 ;;9002226.02101,"1801,00245-0880-30 ",.02)
 ;;00245-0880-30
 ;;9002226.02101,"1801,00245-0881-30 ",.01)
 ;;00245-0881-30
 ;;9002226.02101,"1801,00245-0881-30 ",.02)
 ;;00245-0881-30
 ;;9002226.02101,"1801,00245-0882-30 ",.01)
 ;;00245-0882-30
 ;;9002226.02101,"1801,00245-0882-30 ",.02)
 ;;00245-0882-30
 ;;9002226.02101,"1801,00378-0197-01 ",.01)
 ;;00378-0197-01
 ;;9002226.02101,"1801,00378-0197-01 ",.02)
 ;;00378-0197-01
 ;;9002226.02101,"1801,00378-0210-01 ",.01)
 ;;00378-0210-01
 ;;9002226.02101,"1801,00378-0210-01 ",.02)
 ;;00378-0210-01
 ;;9002226.02101,"1801,00378-1113-01 ",.01)
 ;;00378-1113-01
 ;;9002226.02101,"1801,00378-1113-01 ",.02)
 ;;00378-1113-01
 ;;9002226.02101,"1801,00378-1125-01 ",.01)
 ;;00378-1125-01
 ;;9002226.02101,"1801,00378-1125-01 ",.02)
 ;;00378-1125-01
 ;;9002226.02101,"1801,00378-1125-10 ",.01)
 ;;00378-1125-10
 ;;9002226.02101,"1801,00378-1125-10 ",.02)
 ;;00378-1125-10
 ;;9002226.02101,"1801,00378-1142-01 ",.01)
 ;;00378-1142-01
 ;;9002226.02101,"1801,00378-1142-01 ",.02)
 ;;00378-1142-01
 ;;9002226.02101,"1801,00378-1452-01 ",.01)
 ;;00378-1452-01
 ;;9002226.02101,"1801,00378-1452-01 ",.02)
 ;;00378-1452-01
 ;;9002226.02101,"1801,00378-1452-05 ",.01)
 ;;00378-1452-05
 ;;9002226.02101,"1801,00378-1452-05 ",.02)
 ;;00378-1452-05
 ;;9002226.02101,"1801,00378-1454-01 ",.01)
 ;;00378-1454-01
 ;;9002226.02101,"1801,00378-1454-01 ",.02)
 ;;00378-1454-01
 ;;9002226.02101,"1801,00378-1454-05 ",.01)
 ;;00378-1454-05
 ;;9002226.02101,"1801,00378-1454-05 ",.02)
 ;;00378-1454-05
 ;;9002226.02101,"1801,00378-1458-01 ",.01)
 ;;00378-1458-01
 ;;9002226.02101,"1801,00378-1458-01 ",.02)
 ;;00378-1458-01
 ;;9002226.02101,"1801,00378-1458-05 ",.01)
 ;;00378-1458-05
 ;;9002226.02101,"1801,00378-1458-05 ",.02)
 ;;00378-1458-05
 ;;9002226.02101,"1801,00378-1458-77 ",.01)
 ;;00378-1458-77
 ;;9002226.02101,"1801,00378-1458-77 ",.02)
 ;;00378-1458-77
 ;;9002226.02101,"1801,00378-3349-16 ",.01)
 ;;00378-3349-16
 ;;9002226.02101,"1801,00378-3349-16 ",.02)
 ;;00378-3349-16
 ;;9002226.02101,"1801,00378-3349-99 ",.01)
 ;;00378-3349-99
 ;;9002226.02101,"1801,00378-3349-99 ",.02)
 ;;00378-3349-99
 ;;9002226.02101,"1801,00378-3350-16 ",.01)
 ;;00378-3350-16
 ;;9002226.02101,"1801,00378-3350-16 ",.02)
 ;;00378-3350-16
 ;;9002226.02101,"1801,00378-3350-99 ",.01)
 ;;00378-3350-99
 ;;9002226.02101,"1801,00378-3350-99 ",.02)
 ;;00378-3350-99
 ;;9002226.02101,"1801,00378-3351-16 ",.01)
 ;;00378-3351-16
 ;;9002226.02101,"1801,00378-3351-16 ",.02)
 ;;00378-3351-16
 ;;9002226.02101,"1801,00378-3351-99 ",.01)
 ;;00378-3351-99
 ;;9002226.02101,"1801,00378-3351-99 ",.02)
 ;;00378-3351-99
 ;;9002226.02101,"1801,00378-3352-16 ",.01)
 ;;00378-3352-16
 ;;9002226.02101,"1801,00378-3352-16 ",.02)
 ;;00378-3352-16
 ;;9002226.02101,"1801,00378-3352-99 ",.01)
 ;;00378-3352-99
 ;;9002226.02101,"1801,00378-3352-99 ",.02)
 ;;00378-3352-99
 ;;9002226.02101,"1801,00378-3360-16 ",.01)
 ;;00378-3360-16
 ;;9002226.02101,"1801,00378-3360-16 ",.02)
 ;;00378-3360-16
 ;;9002226.02101,"1801,00378-3360-99 ",.01)
 ;;00378-3360-99
 ;;9002226.02101,"1801,00378-3360-99 ",.02)
 ;;00378-3360-99
 ;;9002226.02101,"1801,00378-3361-16 ",.01)
 ;;00378-3361-16
 ;;9002226.02101,"1801,00378-3361-16 ",.02)
 ;;00378-3361-16
 ;;9002226.02101,"1801,00378-3361-99 ",.01)
 ;;00378-3361-99
 ;;9002226.02101,"1801,00378-3361-99 ",.02)
 ;;00378-3361-99
 ;;9002226.02101,"1801,00378-4640-16 ",.01)
 ;;00378-4640-16
 ;;9002226.02101,"1801,00378-4640-16 ",.02)
 ;;00378-4640-16
 ;;9002226.02101,"1801,00378-4640-26 ",.01)
 ;;00378-4640-26
 ;;9002226.02101,"1801,00378-4640-26 ",.02)
 ;;00378-4640-26
 ;;9002226.02101,"1801,00378-4641-16 ",.01)
 ;;00378-4641-16
 ;;9002226.02101,"1801,00378-4641-16 ",.02)
 ;;00378-4641-16
 ;;9002226.02101,"1801,00378-4641-26 ",.01)
 ;;00378-4641-26
 ;;9002226.02101,"1801,00378-4641-26 ",.02)
 ;;00378-4641-26
 ;;9002226.02101,"1801,00378-4642-16 ",.01)
 ;;00378-4642-16
 ;;9002226.02101,"1801,00378-4642-16 ",.02)
 ;;00378-4642-16
 ;;9002226.02101,"1801,00378-4642-26 ",.01)
 ;;00378-4642-26
 ;;9002226.02101,"1801,00378-4642-26 ",.02)
 ;;00378-4642-26
 ;;9002226.02101,"1801,00378-4643-16 ",.01)
 ;;00378-4643-16
 ;;9002226.02101,"1801,00378-4643-16 ",.02)
 ;;00378-4643-16
 ;;9002226.02101,"1801,00378-4643-26 ",.01)
 ;;00378-4643-26
 ;;9002226.02101,"1801,00378-4643-26 ",.02)
 ;;00378-4643-26
 ;;9002226.02101,"1801,00378-4644-16 ",.01)
 ;;00378-4644-16
 ;;9002226.02101,"1801,00378-4644-16 ",.02)
 ;;00378-4644-16
 ;;9002226.02101,"1801,00378-4644-26 ",.01)
 ;;00378-4644-26
 ;;9002226.02101,"1801,00378-4644-26 ",.02)
 ;;00378-4644-26
 ;;9002226.02101,"1801,00430-0145-14 ",.01)
 ;;00430-0145-14
 ;;9002226.02101,"1801,00430-0145-14 ",.02)
 ;;00430-0145-14
 ;;9002226.02101,"1801,00430-0720-24 ",.01)
 ;;00430-0720-24
 ;;9002226.02101,"1801,00430-0720-24 ",.02)
 ;;00430-0720-24
 ;;9002226.02101,"1801,00430-0721-24 ",.01)
 ;;00430-0721-24
 ;;9002226.02101,"1801,00430-0721-24 ",.02)
 ;;00430-0721-24
 ;;9002226.02101,"1801,00430-0722-24 ",.01)
 ;;00430-0722-24
 ;;9002226.02101,"1801,00430-0722-24 ",.02)
 ;;00430-0722-24
 ;;9002226.02101,"1801,00440-7570-20 ",.01)
 ;;00440-7570-20
 ;;9002226.02101,"1801,00440-7570-20 ",.02)
 ;;00440-7570-20
 ;;9002226.02101,"1801,00440-7571-14 ",.01)
 ;;00440-7571-14
 ;;9002226.02101,"1801,00440-7571-14 ",.02)
 ;;00440-7571-14
 ;;9002226.02101,"1801,00440-7571-30 ",.01)
 ;;00440-7571-30
 ;;9002226.02101,"1801,00440-7571-30 ",.02)
 ;;00440-7571-30
 ;;9002226.02101,"1801,00440-7571-60 ",.01)
 ;;00440-7571-60
 ;;9002226.02101,"1801,00440-7571-60 ",.02)
 ;;00440-7571-60
 ;;9002226.02101,"1801,00440-7571-90 ",.01)
 ;;00440-7571-90
 ;;9002226.02101,"1801,00440-7571-90 ",.02)
 ;;00440-7571-90
 ;;9002226.02101,"1801,00440-7571-91 ",.01)
 ;;00440-7571-91
 ;;9002226.02101,"1801,00440-7571-91 ",.02)
 ;;00440-7571-91
 ;;9002226.02101,"1801,00440-7571-92 ",.01)
 ;;00440-7571-92
 ;;9002226.02101,"1801,00440-7571-92 ",.02)
 ;;00440-7571-92
 ;;9002226.02101,"1801,00440-7571-94 ",.01)
 ;;00440-7571-94
 ;;9002226.02101,"1801,00440-7571-94 ",.02)
 ;;00440-7571-94
 ;;9002226.02101,"1801,00440-7571-95 ",.01)
 ;;00440-7571-95
 ;;9002226.02101,"1801,00440-7571-95 ",.02)
 ;;00440-7571-95
 ;;9002226.02101,"1801,00440-7585-90 ",.01)
 ;;00440-7585-90
 ;;9002226.02101,"1801,00440-7585-90 ",.02)
 ;;00440-7585-90
 ;;9002226.02101,"1801,00440-7587-90 ",.01)
 ;;00440-7587-90
 ;;9002226.02101,"1801,00440-7587-90 ",.02)
 ;;00440-7587-90
 ;;9002226.02101,"1801,00440-7589-90 ",.01)
 ;;00440-7589-90
 ;;9002226.02101,"1801,00440-7589-90 ",.02)
 ;;00440-7589-90
 ;;9002226.02101,"1801,00440-7589-95 ",.01)
 ;;00440-7589-95
 ;;9002226.02101,"1801,00440-7589-95 ",.02)
 ;;00440-7589-95
 ;;9002226.02101,"1801,00440-7749-10 ",.01)
 ;;00440-7749-10
