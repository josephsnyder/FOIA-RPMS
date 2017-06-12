BGP51P23 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1195,58016-0582-20 ",.02)
 ;;58016-0582-20
 ;;9002226.02101,"1195,58016-0582-30 ",.01)
 ;;58016-0582-30
 ;;9002226.02101,"1195,58016-0582-30 ",.02)
 ;;58016-0582-30
 ;;9002226.02101,"1195,58016-0582-60 ",.01)
 ;;58016-0582-60
 ;;9002226.02101,"1195,58016-0582-60 ",.02)
 ;;58016-0582-60
 ;;9002226.02101,"1195,58016-0604-00 ",.01)
 ;;58016-0604-00
 ;;9002226.02101,"1195,58016-0604-00 ",.02)
 ;;58016-0604-00
 ;;9002226.02101,"1195,58016-0640-00 ",.01)
 ;;58016-0640-00
 ;;9002226.02101,"1195,58016-0640-00 ",.02)
 ;;58016-0640-00
 ;;9002226.02101,"1195,58016-0640-15 ",.01)
 ;;58016-0640-15
 ;;9002226.02101,"1195,58016-0640-15 ",.02)
 ;;58016-0640-15
 ;;9002226.02101,"1195,58016-0640-20 ",.01)
 ;;58016-0640-20
 ;;9002226.02101,"1195,58016-0640-20 ",.02)
 ;;58016-0640-20
 ;;9002226.02101,"1195,58016-0640-30 ",.01)
 ;;58016-0640-30
 ;;9002226.02101,"1195,58016-0640-30 ",.02)
 ;;58016-0640-30
 ;;9002226.02101,"1195,58016-0771-00 ",.01)
 ;;58016-0771-00
 ;;9002226.02101,"1195,58016-0771-00 ",.02)
 ;;58016-0771-00
 ;;9002226.02101,"1195,58016-0771-12 ",.01)
 ;;58016-0771-12
 ;;9002226.02101,"1195,58016-0771-12 ",.02)
 ;;58016-0771-12
 ;;9002226.02101,"1195,58016-0771-15 ",.01)
 ;;58016-0771-15
 ;;9002226.02101,"1195,58016-0771-15 ",.02)
 ;;58016-0771-15
 ;;9002226.02101,"1195,58016-0771-20 ",.01)
 ;;58016-0771-20
 ;;9002226.02101,"1195,58016-0771-20 ",.02)
 ;;58016-0771-20
 ;;9002226.02101,"1195,58016-0771-30 ",.01)
 ;;58016-0771-30
 ;;9002226.02101,"1195,58016-0771-30 ",.02)
 ;;58016-0771-30
 ;;9002226.02101,"1195,58016-0771-60 ",.01)
 ;;58016-0771-60
 ;;9002226.02101,"1195,58016-0771-60 ",.02)
 ;;58016-0771-60
 ;;9002226.02101,"1195,58016-0859-00 ",.01)
 ;;58016-0859-00
 ;;9002226.02101,"1195,58016-0859-00 ",.02)
 ;;58016-0859-00
 ;;9002226.02101,"1195,58016-0859-30 ",.01)
 ;;58016-0859-30
 ;;9002226.02101,"1195,58016-0859-30 ",.02)
 ;;58016-0859-30
 ;;9002226.02101,"1195,58016-0859-60 ",.01)
 ;;58016-0859-60
 ;;9002226.02101,"1195,58016-0859-60 ",.02)
 ;;58016-0859-60
 ;;9002226.02101,"1195,58016-0859-90 ",.01)
 ;;58016-0859-90
 ;;9002226.02101,"1195,58016-0859-90 ",.02)
 ;;58016-0859-90
 ;;9002226.02101,"1195,58016-0974-00 ",.01)
 ;;58016-0974-00
 ;;9002226.02101,"1195,58016-0974-00 ",.02)
 ;;58016-0974-00
 ;;9002226.02101,"1195,58016-0974-30 ",.01)
 ;;58016-0974-30
 ;;9002226.02101,"1195,58016-0974-30 ",.02)
 ;;58016-0974-30
 ;;9002226.02101,"1195,58016-0974-60 ",.01)
 ;;58016-0974-60
 ;;9002226.02101,"1195,58016-0974-60 ",.02)
 ;;58016-0974-60
 ;;9002226.02101,"1195,58016-0974-90 ",.01)
 ;;58016-0974-90
 ;;9002226.02101,"1195,58016-0974-90 ",.02)
 ;;58016-0974-90
 ;;9002226.02101,"1195,58118-0110-03 ",.01)
 ;;58118-0110-03
 ;;9002226.02101,"1195,58118-0110-03 ",.02)
 ;;58118-0110-03
 ;;9002226.02101,"1195,58118-0110-09 ",.01)
 ;;58118-0110-09
 ;;9002226.02101,"1195,58118-0110-09 ",.02)
 ;;58118-0110-09
 ;;9002226.02101,"1195,58118-0163-03 ",.01)
 ;;58118-0163-03
 ;;9002226.02101,"1195,58118-0163-03 ",.02)
 ;;58118-0163-03
 ;;9002226.02101,"1195,58118-0163-09 ",.01)
 ;;58118-0163-09
 ;;9002226.02101,"1195,58118-0163-09 ",.02)
 ;;58118-0163-09
 ;;9002226.02101,"1195,58118-0164-03 ",.01)
 ;;58118-0164-03
 ;;9002226.02101,"1195,58118-0164-03 ",.02)
 ;;58118-0164-03
 ;;9002226.02101,"1195,58118-0164-09 ",.01)
 ;;58118-0164-09
 ;;9002226.02101,"1195,58118-0164-09 ",.02)
 ;;58118-0164-09
 ;;9002226.02101,"1195,58118-0165-03 ",.01)
 ;;58118-0165-03
 ;;9002226.02101,"1195,58118-0165-03 ",.02)
 ;;58118-0165-03
 ;;9002226.02101,"1195,58118-0165-09 ",.01)
 ;;58118-0165-09
 ;;9002226.02101,"1195,58118-0165-09 ",.02)
 ;;58118-0165-09
 ;;9002226.02101,"1195,58118-0167-06 ",.01)
 ;;58118-0167-06
 ;;9002226.02101,"1195,58118-0167-06 ",.02)
 ;;58118-0167-06
 ;;9002226.02101,"1195,58118-0167-08 ",.01)
 ;;58118-0167-08
 ;;9002226.02101,"1195,58118-0167-08 ",.02)
 ;;58118-0167-08
 ;;9002226.02101,"1195,58118-0405-03 ",.01)
 ;;58118-0405-03
 ;;9002226.02101,"1195,58118-0405-03 ",.02)
 ;;58118-0405-03
 ;;9002226.02101,"1195,58118-0477-06 ",.01)
 ;;58118-0477-06
 ;;9002226.02101,"1195,58118-0477-06 ",.02)
 ;;58118-0477-06
 ;;9002226.02101,"1195,58118-0477-08 ",.01)
 ;;58118-0477-08
 ;;9002226.02101,"1195,58118-0477-08 ",.02)
 ;;58118-0477-08
 ;;9002226.02101,"1195,58118-0477-09 ",.01)
 ;;58118-0477-09
 ;;9002226.02101,"1195,58118-0477-09 ",.02)
 ;;58118-0477-09
 ;;9002226.02101,"1195,58118-0506-03 ",.01)
 ;;58118-0506-03
 ;;9002226.02101,"1195,58118-0506-03 ",.02)
 ;;58118-0506-03
 ;;9002226.02101,"1195,58118-0506-09 ",.01)
 ;;58118-0506-09
 ;;9002226.02101,"1195,58118-0506-09 ",.02)
 ;;58118-0506-09
 ;;9002226.02101,"1195,58118-0621-03 ",.01)
 ;;58118-0621-03
 ;;9002226.02101,"1195,58118-0621-03 ",.02)
 ;;58118-0621-03
 ;;9002226.02101,"1195,58118-0621-09 ",.01)
 ;;58118-0621-09
 ;;9002226.02101,"1195,58118-0621-09 ",.02)
 ;;58118-0621-09
 ;;9002226.02101,"1195,58118-0622-03 ",.01)
 ;;58118-0622-03
 ;;9002226.02101,"1195,58118-0622-03 ",.02)
 ;;58118-0622-03
 ;;9002226.02101,"1195,58118-0622-09 ",.01)
 ;;58118-0622-09
 ;;9002226.02101,"1195,58118-0622-09 ",.02)
 ;;58118-0622-09
 ;;9002226.02101,"1195,58118-0623-09 ",.01)
 ;;58118-0623-09
 ;;9002226.02101,"1195,58118-0623-09 ",.02)
 ;;58118-0623-09
 ;;9002226.02101,"1195,58118-0734-03 ",.01)
 ;;58118-0734-03
 ;;9002226.02101,"1195,58118-0734-03 ",.02)
 ;;58118-0734-03
 ;;9002226.02101,"1195,58118-0736-03 ",.01)
 ;;58118-0736-03
 ;;9002226.02101,"1195,58118-0736-03 ",.02)
 ;;58118-0736-03
 ;;9002226.02101,"1195,58177-0293-04 ",.01)
 ;;58177-0293-04
 ;;9002226.02101,"1195,58177-0293-04 ",.02)
 ;;58177-0293-04
 ;;9002226.02101,"1195,58177-0293-09 ",.01)
 ;;58177-0293-09
 ;;9002226.02101,"1195,58177-0293-09 ",.02)
 ;;58177-0293-09
 ;;9002226.02101,"1195,58177-0293-11 ",.01)
 ;;58177-0293-11
 ;;9002226.02101,"1195,58177-0293-11 ",.02)
 ;;58177-0293-11
 ;;9002226.02101,"1195,58177-0358-04 ",.01)
 ;;58177-0358-04
 ;;9002226.02101,"1195,58177-0358-04 ",.02)
 ;;58177-0358-04
 ;;9002226.02101,"1195,58177-0358-09 ",.01)
 ;;58177-0358-09
 ;;9002226.02101,"1195,58177-0358-09 ",.02)
 ;;58177-0358-09
 ;;9002226.02101,"1195,58177-0368-04 ",.01)
 ;;58177-0368-04
 ;;9002226.02101,"1195,58177-0368-04 ",.02)
 ;;58177-0368-04
 ;;9002226.02101,"1195,58177-0368-09 ",.01)
 ;;58177-0368-09
 ;;9002226.02101,"1195,58177-0368-09 ",.02)
 ;;58177-0368-09
 ;;9002226.02101,"1195,58177-0368-11 ",.01)
 ;;58177-0368-11
 ;;9002226.02101,"1195,58177-0368-11 ",.02)
 ;;58177-0368-11
 ;;9002226.02101,"1195,58177-0369-04 ",.01)
 ;;58177-0369-04
 ;;9002226.02101,"1195,58177-0369-04 ",.02)
 ;;58177-0369-04
 ;;9002226.02101,"1195,58177-0369-09 ",.01)
 ;;58177-0369-09
 ;;9002226.02101,"1195,58177-0369-09 ",.02)
 ;;58177-0369-09
 ;;9002226.02101,"1195,58177-0369-11 ",.01)
 ;;58177-0369-11
 ;;9002226.02101,"1195,58177-0369-11 ",.02)
 ;;58177-0369-11
 ;;9002226.02101,"1195,58517-0320-30 ",.01)
 ;;58517-0320-30
 ;;9002226.02101,"1195,58517-0320-30 ",.02)
 ;;58517-0320-30
 ;;9002226.02101,"1195,58864-0016-01 ",.01)
 ;;58864-0016-01
 ;;9002226.02101,"1195,58864-0016-01 ",.02)
 ;;58864-0016-01
 ;;9002226.02101,"1195,58864-0016-28 ",.01)
 ;;58864-0016-28
 ;;9002226.02101,"1195,58864-0016-28 ",.02)
 ;;58864-0016-28
 ;;9002226.02101,"1195,58864-0016-30 ",.01)
 ;;58864-0016-30
 ;;9002226.02101,"1195,58864-0016-30 ",.02)
 ;;58864-0016-30
 ;;9002226.02101,"1195,58864-0016-60 ",.01)
 ;;58864-0016-60
 ;;9002226.02101,"1195,58864-0016-60 ",.02)
 ;;58864-0016-60
 ;;9002226.02101,"1195,58864-0065-01 ",.01)
 ;;58864-0065-01
 ;;9002226.02101,"1195,58864-0065-01 ",.02)
 ;;58864-0065-01
 ;;9002226.02101,"1195,58864-0065-30 ",.01)
 ;;58864-0065-30
 ;;9002226.02101,"1195,58864-0065-30 ",.02)
 ;;58864-0065-30
 ;;9002226.02101,"1195,58864-0363-30 ",.01)
 ;;58864-0363-30
 ;;9002226.02101,"1195,58864-0363-30 ",.02)
 ;;58864-0363-30
 ;;9002226.02101,"1195,58864-0645-56 ",.01)
 ;;58864-0645-56
 ;;9002226.02101,"1195,58864-0645-56 ",.02)
 ;;58864-0645-56
 ;;9002226.02101,"1195,58864-0680-30 ",.01)
 ;;58864-0680-30
 ;;9002226.02101,"1195,58864-0680-30 ",.02)
 ;;58864-0680-30
 ;;9002226.02101,"1195,58864-0695-30 ",.01)
 ;;58864-0695-30
 ;;9002226.02101,"1195,58864-0695-30 ",.02)
 ;;58864-0695-30
 ;;9002226.02101,"1195,58864-0717-30 ",.01)
 ;;58864-0717-30
 ;;9002226.02101,"1195,58864-0717-30 ",.02)
 ;;58864-0717-30
 ;;9002226.02101,"1195,58864-0727-30 ",.01)
 ;;58864-0727-30
 ;;9002226.02101,"1195,58864-0727-30 ",.02)
 ;;58864-0727-30
 ;;9002226.02101,"1195,58864-0737-30 ",.01)
 ;;58864-0737-30
 ;;9002226.02101,"1195,58864-0737-30 ",.02)
 ;;58864-0737-30
 ;;9002226.02101,"1195,58864-0749-30 ",.01)
 ;;58864-0749-30
 ;;9002226.02101,"1195,58864-0749-30 ",.02)
 ;;58864-0749-30
 ;;9002226.02101,"1195,58864-0749-90 ",.01)
 ;;58864-0749-90
 ;;9002226.02101,"1195,58864-0749-90 ",.02)
 ;;58864-0749-90
 ;;9002226.02101,"1195,58864-0759-30 ",.01)
 ;;58864-0759-30
 ;;9002226.02101,"1195,58864-0759-30 ",.02)
 ;;58864-0759-30
 ;;9002226.02101,"1195,58864-0765-30 ",.01)
 ;;58864-0765-30
 ;;9002226.02101,"1195,58864-0765-30 ",.02)
 ;;58864-0765-30
 ;;9002226.02101,"1195,58864-0784-30 ",.01)
 ;;58864-0784-30
 ;;9002226.02101,"1195,58864-0784-30 ",.02)
 ;;58864-0784-30
 ;;9002226.02101,"1195,59762-0810-01 ",.01)
 ;;59762-0810-01
 ;;9002226.02101,"1195,59762-0810-01 ",.02)
 ;;59762-0810-01
 ;;9002226.02101,"1195,59762-0811-01 ",.01)
 ;;59762-0811-01
 ;;9002226.02101,"1195,59762-0811-01 ",.02)
 ;;59762-0811-01
 ;;9002226.02101,"1195,59762-0812-01 ",.01)
 ;;59762-0812-01
 ;;9002226.02101,"1195,59762-0812-01 ",.02)
 ;;59762-0812-01
 ;;9002226.02101,"1195,59762-1258-01 ",.01)
 ;;59762-1258-01
 ;;9002226.02101,"1195,59762-1258-01 ",.02)
 ;;59762-1258-01
 ;;9002226.02101,"1195,59762-1258-02 ",.01)
 ;;59762-1258-02
 ;;9002226.02101,"1195,59762-1258-02 ",.02)
 ;;59762-1258-02
 ;;9002226.02101,"1195,59762-1261-01 ",.01)
 ;;59762-1261-01
 ;;9002226.02101,"1195,59762-1261-01 ",.02)
 ;;59762-1261-01
 ;;9002226.02101,"1195,59762-1261-02 ",.01)
 ;;59762-1261-02
 ;;9002226.02101,"1195,59762-1261-02 ",.02)
 ;;59762-1261-02
 ;;9002226.02101,"1195,59762-1300-01 ",.01)
 ;;59762-1300-01
 ;;9002226.02101,"1195,59762-1300-01 ",.02)
 ;;59762-1300-01
 ;;9002226.02101,"1195,59762-1300-03 ",.01)
 ;;59762-1300-03
 ;;9002226.02101,"1195,59762-1300-03 ",.02)
 ;;59762-1300-03
 ;;9002226.02101,"1195,59762-1301-01 ",.01)
 ;;59762-1301-01
 ;;9002226.02101,"1195,59762-1301-01 ",.02)
 ;;59762-1301-01
 ;;9002226.02101,"1195,59762-1301-03 ",.01)
 ;;59762-1301-03
 ;;9002226.02101,"1195,59762-1301-03 ",.02)
 ;;59762-1301-03
 ;;9002226.02101,"1195,59762-1302-01 ",.01)
 ;;59762-1302-01
 ;;9002226.02101,"1195,59762-1302-01 ",.02)
 ;;59762-1302-01
 ;;9002226.02101,"1195,59762-1302-03 ",.01)
 ;;59762-1302-03
 ;;9002226.02101,"1195,59762-1302-03 ",.02)
 ;;59762-1302-03
 ;;9002226.02101,"1195,60429-0025-30 ",.01)
 ;;60429-0025-30
 ;;9002226.02101,"1195,60429-0025-30 ",.02)
 ;;60429-0025-30
 ;;9002226.02101,"1195,60429-0025-90 ",.01)
 ;;60429-0025-90
 ;;9002226.02101,"1195,60429-0025-90 ",.02)
 ;;60429-0025-90
 ;;9002226.02101,"1195,60429-0026-30 ",.01)
 ;;60429-0026-30
 ;;9002226.02101,"1195,60429-0026-30 ",.02)
 ;;60429-0026-30
 ;;9002226.02101,"1195,60429-0126-30 ",.01)
 ;;60429-0126-30
 ;;9002226.02101,"1195,60429-0126-30 ",.02)
 ;;60429-0126-30
 ;;9002226.02101,"1195,60429-0126-60 ",.01)
 ;;60429-0126-60
 ;;9002226.02101,"1195,60429-0126-60 ",.02)
 ;;60429-0126-60
 ;;9002226.02101,"1195,60429-0127-30 ",.01)
 ;;60429-0127-30
 ;;9002226.02101,"1195,60429-0127-30 ",.02)
 ;;60429-0127-30
 ;;9002226.02101,"1195,60429-0139-01 ",.01)
 ;;60429-0139-01
 ;;9002226.02101,"1195,60429-0139-01 ",.02)
 ;;60429-0139-01
 ;;9002226.02101,"1195,60429-0139-10 ",.01)
 ;;60429-0139-10
 ;;9002226.02101,"1195,60429-0139-10 ",.02)
 ;;60429-0139-10
 ;;9002226.02101,"1195,60429-0140-01 ",.01)
 ;;60429-0140-01
 ;;9002226.02101,"1195,60429-0140-01 ",.02)
 ;;60429-0140-01
 ;;9002226.02101,"1195,60429-0140-10 ",.01)
 ;;60429-0140-10
 ;;9002226.02101,"1195,60429-0140-10 ",.02)
 ;;60429-0140-10
 ;;9002226.02101,"1195,60429-0141-01 ",.01)
 ;;60429-0141-01
 ;;9002226.02101,"1195,60429-0141-01 ",.02)
 ;;60429-0141-01
 ;;9002226.02101,"1195,60429-0141-10 ",.01)
 ;;60429-0141-10
 ;;9002226.02101,"1195,60429-0141-10 ",.02)
 ;;60429-0141-10
 ;;9002226.02101,"1195,60429-0141-45 ",.01)
 ;;60429-0141-45
 ;;9002226.02101,"1195,60429-0141-45 ",.02)
 ;;60429-0141-45
 ;;9002226.02101,"1195,60429-0142-01 ",.01)
 ;;60429-0142-01
 ;;9002226.02101,"1195,60429-0142-01 ",.02)
 ;;60429-0142-01
 ;;9002226.02101,"1195,60429-0142-05 ",.01)
 ;;60429-0142-05
 ;;9002226.02101,"1195,60429-0142-05 ",.02)
 ;;60429-0142-05
 ;;9002226.02101,"1195,60429-0142-10 ",.01)
 ;;60429-0142-10
 ;;9002226.02101,"1195,60429-0142-10 ",.02)
 ;;60429-0142-10
 ;;9002226.02101,"1195,60429-0142-45 ",.01)
 ;;60429-0142-45
 ;;9002226.02101,"1195,60429-0142-45 ",.02)
 ;;60429-0142-45
 ;;9002226.02101,"1195,60429-0211-90 ",.01)
 ;;60429-0211-90
 ;;9002226.02101,"1195,60429-0211-90 ",.02)
 ;;60429-0211-90
 ;;9002226.02101,"1195,60429-0277-01 ",.01)
 ;;60429-0277-01
 ;;9002226.02101,"1195,60429-0277-01 ",.02)
 ;;60429-0277-01
 ;;9002226.02101,"1195,60429-0277-05 ",.01)
 ;;60429-0277-05
 ;;9002226.02101,"1195,60429-0277-05 ",.02)
 ;;60429-0277-05
 ;;9002226.02101,"1195,60429-0278-01 ",.01)
 ;;60429-0278-01
 ;;9002226.02101,"1195,60429-0278-01 ",.02)
 ;;60429-0278-01
 ;;9002226.02101,"1195,60429-0278-05 ",.01)
 ;;60429-0278-05
 ;;9002226.02101,"1195,60429-0278-05 ",.02)
 ;;60429-0278-05
