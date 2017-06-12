BGP71T25 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,57664-0166-08 ",.01)
 ;;57664-0166-08
 ;;9002226.02101,"1218,57664-0166-08 ",.02)
 ;;57664-0166-08
 ;;9002226.02101,"1218,57664-0166-18 ",.01)
 ;;57664-0166-18
 ;;9002226.02101,"1218,57664-0166-18 ",.02)
 ;;57664-0166-18
 ;;9002226.02101,"1218,57664-0166-52 ",.01)
 ;;57664-0166-52
 ;;9002226.02101,"1218,57664-0166-52 ",.02)
 ;;57664-0166-52
 ;;9002226.02101,"1218,57664-0166-58 ",.01)
 ;;57664-0166-58
 ;;9002226.02101,"1218,57664-0166-58 ",.02)
 ;;57664-0166-58
 ;;9002226.02101,"1218,57664-0167-08 ",.01)
 ;;57664-0167-08
 ;;9002226.02101,"1218,57664-0167-08 ",.02)
 ;;57664-0167-08
 ;;9002226.02101,"1218,57664-0167-18 ",.01)
 ;;57664-0167-18
 ;;9002226.02101,"1218,57664-0167-18 ",.02)
 ;;57664-0167-18
 ;;9002226.02101,"1218,57664-0167-52 ",.01)
 ;;57664-0167-52
 ;;9002226.02101,"1218,57664-0167-52 ",.02)
 ;;57664-0167-52
 ;;9002226.02101,"1218,57664-0167-58 ",.01)
 ;;57664-0167-58
 ;;9002226.02101,"1218,57664-0167-58 ",.02)
 ;;57664-0167-58
 ;;9002226.02101,"1218,57664-0242-13 ",.01)
 ;;57664-0242-13
 ;;9002226.02101,"1218,57664-0242-13 ",.02)
 ;;57664-0242-13
 ;;9002226.02101,"1218,57664-0242-18 ",.01)
 ;;57664-0242-18
 ;;9002226.02101,"1218,57664-0242-18 ",.02)
 ;;57664-0242-18
 ;;9002226.02101,"1218,57664-0242-88 ",.01)
 ;;57664-0242-88
 ;;9002226.02101,"1218,57664-0242-88 ",.02)
 ;;57664-0242-88
 ;;9002226.02101,"1218,57664-0244-13 ",.01)
 ;;57664-0244-13
 ;;9002226.02101,"1218,57664-0244-13 ",.02)
 ;;57664-0244-13
 ;;9002226.02101,"1218,57664-0244-18 ",.01)
 ;;57664-0244-18
 ;;9002226.02101,"1218,57664-0244-18 ",.02)
 ;;57664-0244-18
 ;;9002226.02101,"1218,57664-0244-88 ",.01)
 ;;57664-0244-88
 ;;9002226.02101,"1218,57664-0244-88 ",.02)
 ;;57664-0244-88
 ;;9002226.02101,"1218,57664-0245-13 ",.01)
 ;;57664-0245-13
 ;;9002226.02101,"1218,57664-0245-13 ",.02)
 ;;57664-0245-13
 ;;9002226.02101,"1218,57664-0245-18 ",.01)
 ;;57664-0245-18
 ;;9002226.02101,"1218,57664-0245-18 ",.02)
 ;;57664-0245-18
 ;;9002226.02101,"1218,57664-0245-88 ",.01)
 ;;57664-0245-88
 ;;9002226.02101,"1218,57664-0245-88 ",.02)
 ;;57664-0245-88
 ;;9002226.02101,"1218,57664-0247-13 ",.01)
 ;;57664-0247-13
 ;;9002226.02101,"1218,57664-0247-13 ",.02)
 ;;57664-0247-13
 ;;9002226.02101,"1218,57664-0247-18 ",.01)
 ;;57664-0247-18
 ;;9002226.02101,"1218,57664-0247-18 ",.02)
 ;;57664-0247-18
 ;;9002226.02101,"1218,57664-0247-88 ",.01)
 ;;57664-0247-88
 ;;9002226.02101,"1218,57664-0247-88 ",.02)
 ;;57664-0247-88
 ;;9002226.02101,"1218,57664-0477-08 ",.01)
 ;;57664-0477-08
 ;;9002226.02101,"1218,57664-0477-08 ",.02)
 ;;57664-0477-08
 ;;9002226.02101,"1218,57664-0477-18 ",.01)
 ;;57664-0477-18
 ;;9002226.02101,"1218,57664-0477-18 ",.02)
 ;;57664-0477-18
 ;;9002226.02101,"1218,57664-0477-52 ",.01)
 ;;57664-0477-52
 ;;9002226.02101,"1218,57664-0477-52 ",.02)
 ;;57664-0477-52
 ;;9002226.02101,"1218,57664-0477-58 ",.01)
 ;;57664-0477-58
 ;;9002226.02101,"1218,57664-0477-58 ",.02)
 ;;57664-0477-58
 ;;9002226.02101,"1218,57664-0506-08 ",.01)
 ;;57664-0506-08
 ;;9002226.02101,"1218,57664-0506-08 ",.02)
 ;;57664-0506-08
 ;;9002226.02101,"1218,57664-0506-18 ",.01)
 ;;57664-0506-18
 ;;9002226.02101,"1218,57664-0506-18 ",.02)
 ;;57664-0506-18
 ;;9002226.02101,"1218,57664-0506-52 ",.01)
 ;;57664-0506-52
 ;;9002226.02101,"1218,57664-0506-52 ",.02)
 ;;57664-0506-52
 ;;9002226.02101,"1218,57664-0506-58 ",.01)
 ;;57664-0506-58
 ;;9002226.02101,"1218,57664-0506-58 ",.02)
 ;;57664-0506-58
 ;;9002226.02101,"1218,57664-0655-88 ",.01)
 ;;57664-0655-88
 ;;9002226.02101,"1218,57664-0655-88 ",.02)
 ;;57664-0655-88
 ;;9002226.02101,"1218,57664-0656-88 ",.01)
 ;;57664-0656-88
 ;;9002226.02101,"1218,57664-0656-88 ",.02)
 ;;57664-0656-88
 ;;9002226.02101,"1218,58118-0110-03 ",.01)
 ;;58118-0110-03
 ;;9002226.02101,"1218,58118-0110-03 ",.02)
 ;;58118-0110-03
 ;;9002226.02101,"1218,58118-0110-09 ",.01)
 ;;58118-0110-09
 ;;9002226.02101,"1218,58118-0110-09 ",.02)
 ;;58118-0110-09
 ;;9002226.02101,"1218,58118-0163-03 ",.01)
 ;;58118-0163-03
 ;;9002226.02101,"1218,58118-0163-03 ",.02)
 ;;58118-0163-03
 ;;9002226.02101,"1218,58118-0163-09 ",.01)
 ;;58118-0163-09
 ;;9002226.02101,"1218,58118-0163-09 ",.02)
 ;;58118-0163-09
 ;;9002226.02101,"1218,58118-0164-03 ",.01)
 ;;58118-0164-03
 ;;9002226.02101,"1218,58118-0164-03 ",.02)
 ;;58118-0164-03
 ;;9002226.02101,"1218,58118-0164-09 ",.01)
 ;;58118-0164-09
 ;;9002226.02101,"1218,58118-0164-09 ",.02)
 ;;58118-0164-09
 ;;9002226.02101,"1218,58118-0165-03 ",.01)
 ;;58118-0165-03
 ;;9002226.02101,"1218,58118-0165-03 ",.02)
 ;;58118-0165-03
 ;;9002226.02101,"1218,58118-0165-09 ",.01)
 ;;58118-0165-09
 ;;9002226.02101,"1218,58118-0165-09 ",.02)
 ;;58118-0165-09
 ;;9002226.02101,"1218,58118-0167-06 ",.01)
 ;;58118-0167-06
 ;;9002226.02101,"1218,58118-0167-06 ",.02)
 ;;58118-0167-06
 ;;9002226.02101,"1218,58118-0167-08 ",.01)
 ;;58118-0167-08
 ;;9002226.02101,"1218,58118-0167-08 ",.02)
 ;;58118-0167-08
 ;;9002226.02101,"1218,58118-0405-03 ",.01)
 ;;58118-0405-03
 ;;9002226.02101,"1218,58118-0405-03 ",.02)
 ;;58118-0405-03
 ;;9002226.02101,"1218,58118-0477-06 ",.01)
 ;;58118-0477-06
 ;;9002226.02101,"1218,58118-0477-06 ",.02)
 ;;58118-0477-06
 ;;9002226.02101,"1218,58118-0477-08 ",.01)
 ;;58118-0477-08
 ;;9002226.02101,"1218,58118-0477-08 ",.02)
 ;;58118-0477-08
 ;;9002226.02101,"1218,58118-0477-09 ",.01)
 ;;58118-0477-09
 ;;9002226.02101,"1218,58118-0477-09 ",.02)
 ;;58118-0477-09
 ;;9002226.02101,"1218,58118-0506-03 ",.01)
 ;;58118-0506-03
 ;;9002226.02101,"1218,58118-0506-03 ",.02)
 ;;58118-0506-03
 ;;9002226.02101,"1218,58118-0506-09 ",.01)
 ;;58118-0506-09
 ;;9002226.02101,"1218,58118-0506-09 ",.02)
 ;;58118-0506-09
 ;;9002226.02101,"1218,58118-0621-03 ",.01)
 ;;58118-0621-03
 ;;9002226.02101,"1218,58118-0621-03 ",.02)
 ;;58118-0621-03
 ;;9002226.02101,"1218,58118-0621-09 ",.01)
 ;;58118-0621-09
 ;;9002226.02101,"1218,58118-0621-09 ",.02)
 ;;58118-0621-09
 ;;9002226.02101,"1218,58118-0622-03 ",.01)
 ;;58118-0622-03
 ;;9002226.02101,"1218,58118-0622-03 ",.02)
 ;;58118-0622-03
 ;;9002226.02101,"1218,58118-0622-09 ",.01)
 ;;58118-0622-09
 ;;9002226.02101,"1218,58118-0622-09 ",.02)
 ;;58118-0622-09
 ;;9002226.02101,"1218,58118-0623-09 ",.01)
 ;;58118-0623-09
 ;;9002226.02101,"1218,58118-0623-09 ",.02)
 ;;58118-0623-09
 ;;9002226.02101,"1218,58118-0734-03 ",.01)
 ;;58118-0734-03
 ;;9002226.02101,"1218,58118-0734-03 ",.02)
 ;;58118-0734-03
 ;;9002226.02101,"1218,58118-0736-03 ",.01)
 ;;58118-0736-03
 ;;9002226.02101,"1218,58118-0736-03 ",.02)
 ;;58118-0736-03
 ;;9002226.02101,"1218,58517-0320-30 ",.01)
 ;;58517-0320-30
 ;;9002226.02101,"1218,58517-0320-30 ",.02)
 ;;58517-0320-30
 ;;9002226.02101,"1218,58864-0016-01 ",.01)
 ;;58864-0016-01
 ;;9002226.02101,"1218,58864-0016-01 ",.02)
 ;;58864-0016-01
 ;;9002226.02101,"1218,58864-0016-28 ",.01)
 ;;58864-0016-28
 ;;9002226.02101,"1218,58864-0016-28 ",.02)
 ;;58864-0016-28
 ;;9002226.02101,"1218,58864-0016-30 ",.01)
 ;;58864-0016-30
 ;;9002226.02101,"1218,58864-0016-30 ",.02)
 ;;58864-0016-30
 ;;9002226.02101,"1218,58864-0016-60 ",.01)
 ;;58864-0016-60
 ;;9002226.02101,"1218,58864-0016-60 ",.02)
 ;;58864-0016-60
 ;;9002226.02101,"1218,58864-0065-01 ",.01)
 ;;58864-0065-01
 ;;9002226.02101,"1218,58864-0065-01 ",.02)
 ;;58864-0065-01
 ;;9002226.02101,"1218,58864-0065-30 ",.01)
 ;;58864-0065-30
 ;;9002226.02101,"1218,58864-0065-30 ",.02)
 ;;58864-0065-30
 ;;9002226.02101,"1218,58864-0363-30 ",.01)
 ;;58864-0363-30
 ;;9002226.02101,"1218,58864-0363-30 ",.02)
 ;;58864-0363-30
 ;;9002226.02101,"1218,58864-0645-56 ",.01)
 ;;58864-0645-56
 ;;9002226.02101,"1218,58864-0645-56 ",.02)
 ;;58864-0645-56
 ;;9002226.02101,"1218,58864-0680-30 ",.01)
 ;;58864-0680-30
 ;;9002226.02101,"1218,58864-0680-30 ",.02)
 ;;58864-0680-30
 ;;9002226.02101,"1218,58864-0695-30 ",.01)
 ;;58864-0695-30
 ;;9002226.02101,"1218,58864-0695-30 ",.02)
 ;;58864-0695-30
 ;;9002226.02101,"1218,58864-0717-30 ",.01)
 ;;58864-0717-30
 ;;9002226.02101,"1218,58864-0717-30 ",.02)
 ;;58864-0717-30
 ;;9002226.02101,"1218,58864-0727-30 ",.01)
 ;;58864-0727-30
 ;;9002226.02101,"1218,58864-0727-30 ",.02)
 ;;58864-0727-30
 ;;9002226.02101,"1218,58864-0737-30 ",.01)
 ;;58864-0737-30
 ;;9002226.02101,"1218,58864-0737-30 ",.02)
 ;;58864-0737-30
 ;;9002226.02101,"1218,58864-0749-30 ",.01)
 ;;58864-0749-30
 ;;9002226.02101,"1218,58864-0749-30 ",.02)
 ;;58864-0749-30
 ;;9002226.02101,"1218,58864-0749-90 ",.01)
 ;;58864-0749-90
 ;;9002226.02101,"1218,58864-0749-90 ",.02)
 ;;58864-0749-90
 ;;9002226.02101,"1218,58864-0759-30 ",.01)
 ;;58864-0759-30
 ;;9002226.02101,"1218,58864-0759-30 ",.02)
 ;;58864-0759-30
 ;;9002226.02101,"1218,58864-0765-30 ",.01)
 ;;58864-0765-30
 ;;9002226.02101,"1218,58864-0765-30 ",.02)
 ;;58864-0765-30
 ;;9002226.02101,"1218,58864-0784-30 ",.01)
 ;;58864-0784-30
 ;;9002226.02101,"1218,58864-0784-30 ",.02)
 ;;58864-0784-30
 ;;9002226.02101,"1218,59212-0087-30 ",.01)
 ;;59212-0087-30
 ;;9002226.02101,"1218,59212-0087-30 ",.02)
 ;;59212-0087-30
 ;;9002226.02101,"1218,59212-0095-30 ",.01)
 ;;59212-0095-30
 ;;9002226.02101,"1218,59212-0095-30 ",.02)
 ;;59212-0095-30
 ;;9002226.02101,"1218,59212-0097-30 ",.01)
 ;;59212-0097-30
 ;;9002226.02101,"1218,59212-0097-30 ",.02)
 ;;59212-0097-30
 ;;9002226.02101,"1218,59762-0810-01 ",.01)
 ;;59762-0810-01
 ;;9002226.02101,"1218,59762-0810-01 ",.02)
 ;;59762-0810-01
 ;;9002226.02101,"1218,59762-0811-01 ",.01)
 ;;59762-0811-01
 ;;9002226.02101,"1218,59762-0811-01 ",.02)
 ;;59762-0811-01
 ;;9002226.02101,"1218,59762-0812-01 ",.01)
 ;;59762-0812-01
 ;;9002226.02101,"1218,59762-0812-01 ",.02)
 ;;59762-0812-01
 ;;9002226.02101,"1218,59762-1258-01 ",.01)
 ;;59762-1258-01
 ;;9002226.02101,"1218,59762-1258-01 ",.02)
 ;;59762-1258-01
 ;;9002226.02101,"1218,59762-1258-02 ",.01)
 ;;59762-1258-02
 ;;9002226.02101,"1218,59762-1258-02 ",.02)
 ;;59762-1258-02
 ;;9002226.02101,"1218,59762-1261-01 ",.01)
 ;;59762-1261-01
 ;;9002226.02101,"1218,59762-1261-01 ",.02)
 ;;59762-1261-01
 ;;9002226.02101,"1218,59762-1261-02 ",.01)
 ;;59762-1261-02
 ;;9002226.02101,"1218,59762-1261-02 ",.02)
 ;;59762-1261-02
 ;;9002226.02101,"1218,59762-1300-01 ",.01)
 ;;59762-1300-01
 ;;9002226.02101,"1218,59762-1300-01 ",.02)
 ;;59762-1300-01
 ;;9002226.02101,"1218,59762-1300-03 ",.01)
 ;;59762-1300-03
 ;;9002226.02101,"1218,59762-1300-03 ",.02)
 ;;59762-1300-03
 ;;9002226.02101,"1218,59762-1301-01 ",.01)
 ;;59762-1301-01
 ;;9002226.02101,"1218,59762-1301-01 ",.02)
 ;;59762-1301-01
 ;;9002226.02101,"1218,59762-1301-03 ",.01)
 ;;59762-1301-03
 ;;9002226.02101,"1218,59762-1301-03 ",.02)
 ;;59762-1301-03
 ;;9002226.02101,"1218,59762-1302-01 ",.01)
 ;;59762-1302-01
 ;;9002226.02101,"1218,59762-1302-01 ",.02)
 ;;59762-1302-01
 ;;9002226.02101,"1218,59762-1302-03 ",.01)
 ;;59762-1302-03
 ;;9002226.02101,"1218,59762-1302-03 ",.02)
 ;;59762-1302-03
 ;;9002226.02101,"1218,60429-0025-10 ",.01)
 ;;60429-0025-10
 ;;9002226.02101,"1218,60429-0025-10 ",.02)
 ;;60429-0025-10
 ;;9002226.02101,"1218,60429-0025-90 ",.01)
 ;;60429-0025-90
 ;;9002226.02101,"1218,60429-0025-90 ",.02)
 ;;60429-0025-90
 ;;9002226.02101,"1218,60429-0026-10 ",.01)
 ;;60429-0026-10
 ;;9002226.02101,"1218,60429-0026-10 ",.02)
 ;;60429-0026-10
 ;;9002226.02101,"1218,60429-0026-90 ",.01)
 ;;60429-0026-90
 ;;9002226.02101,"1218,60429-0026-90 ",.02)
 ;;60429-0026-90
 ;;9002226.02101,"1218,60429-0027-10 ",.01)
 ;;60429-0027-10
 ;;9002226.02101,"1218,60429-0027-10 ",.02)
 ;;60429-0027-10
 ;;9002226.02101,"1218,60429-0027-90 ",.01)
 ;;60429-0027-90
 ;;9002226.02101,"1218,60429-0027-90 ",.02)
 ;;60429-0027-90
 ;;9002226.02101,"1218,60429-0126-01 ",.01)
 ;;60429-0126-01
