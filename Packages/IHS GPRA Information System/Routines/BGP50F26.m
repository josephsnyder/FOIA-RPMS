BGP50F26 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1728,35356-0587-30 ",.02)
 ;;35356-0587-30
 ;;9002226.02101,"1728,35356-0587-60 ",.01)
 ;;35356-0587-60
 ;;9002226.02101,"1728,35356-0587-60 ",.02)
 ;;35356-0587-60
 ;;9002226.02101,"1728,35356-0587-90 ",.01)
 ;;35356-0587-90
 ;;9002226.02101,"1728,35356-0587-90 ",.02)
 ;;35356-0587-90
 ;;9002226.02101,"1728,35356-0601-30 ",.01)
 ;;35356-0601-30
 ;;9002226.02101,"1728,35356-0601-30 ",.02)
 ;;35356-0601-30
 ;;9002226.02101,"1728,35356-0695-30 ",.01)
 ;;35356-0695-30
 ;;9002226.02101,"1728,35356-0695-30 ",.02)
 ;;35356-0695-30
 ;;9002226.02101,"1728,35356-0773-30 ",.01)
 ;;35356-0773-30
 ;;9002226.02101,"1728,35356-0773-30 ",.02)
 ;;35356-0773-30
 ;;9002226.02101,"1728,35356-0777-30 ",.01)
 ;;35356-0777-30
 ;;9002226.02101,"1728,35356-0777-30 ",.02)
 ;;35356-0777-30
 ;;9002226.02101,"1728,35356-0778-30 ",.01)
 ;;35356-0778-30
 ;;9002226.02101,"1728,35356-0778-30 ",.02)
 ;;35356-0778-30
 ;;9002226.02101,"1728,35356-0779-30 ",.01)
 ;;35356-0779-30
 ;;9002226.02101,"1728,35356-0779-30 ",.02)
 ;;35356-0779-30
 ;;9002226.02101,"1728,35356-0780-30 ",.01)
 ;;35356-0780-30
 ;;9002226.02101,"1728,35356-0780-30 ",.02)
 ;;35356-0780-30
 ;;9002226.02101,"1728,35356-0854-30 ",.01)
 ;;35356-0854-30
 ;;9002226.02101,"1728,35356-0854-30 ",.02)
 ;;35356-0854-30
 ;;9002226.02101,"1728,35356-0861-30 ",.01)
 ;;35356-0861-30
 ;;9002226.02101,"1728,35356-0861-30 ",.02)
 ;;35356-0861-30
 ;;9002226.02101,"1728,35356-0869-30 ",.01)
 ;;35356-0869-30
 ;;9002226.02101,"1728,35356-0869-30 ",.02)
 ;;35356-0869-30
 ;;9002226.02101,"1728,35356-0869-60 ",.01)
 ;;35356-0869-60
 ;;9002226.02101,"1728,35356-0869-60 ",.02)
 ;;35356-0869-60
 ;;9002226.02101,"1728,35356-0869-90 ",.01)
 ;;35356-0869-90
 ;;9002226.02101,"1728,35356-0869-90 ",.02)
 ;;35356-0869-90
 ;;9002226.02101,"1728,35356-0871-30 ",.01)
 ;;35356-0871-30
 ;;9002226.02101,"1728,35356-0871-30 ",.02)
 ;;35356-0871-30
 ;;9002226.02101,"1728,35356-0879-30 ",.01)
 ;;35356-0879-30
 ;;9002226.02101,"1728,35356-0879-30 ",.02)
 ;;35356-0879-30
 ;;9002226.02101,"1728,35356-0879-60 ",.01)
 ;;35356-0879-60
 ;;9002226.02101,"1728,35356-0879-60 ",.02)
 ;;35356-0879-60
 ;;9002226.02101,"1728,35356-0879-90 ",.01)
 ;;35356-0879-90
 ;;9002226.02101,"1728,35356-0879-90 ",.02)
 ;;35356-0879-90
 ;;9002226.02101,"1728,35356-0883-30 ",.01)
 ;;35356-0883-30
 ;;9002226.02101,"1728,35356-0883-30 ",.02)
 ;;35356-0883-30
 ;;9002226.02101,"1728,35356-0884-30 ",.01)
 ;;35356-0884-30
 ;;9002226.02101,"1728,35356-0884-30 ",.02)
 ;;35356-0884-30
 ;;9002226.02101,"1728,35356-0884-90 ",.01)
 ;;35356-0884-90
 ;;9002226.02101,"1728,35356-0884-90 ",.02)
 ;;35356-0884-90
 ;;9002226.02101,"1728,35356-0893-30 ",.01)
 ;;35356-0893-30
 ;;9002226.02101,"1728,35356-0893-30 ",.02)
 ;;35356-0893-30
 ;;9002226.02101,"1728,35356-0893-60 ",.01)
 ;;35356-0893-60
 ;;9002226.02101,"1728,35356-0893-60 ",.02)
 ;;35356-0893-60
 ;;9002226.02101,"1728,35356-0893-90 ",.01)
 ;;35356-0893-90
 ;;9002226.02101,"1728,35356-0893-90 ",.02)
 ;;35356-0893-90
 ;;9002226.02101,"1728,35356-0910-30 ",.01)
 ;;35356-0910-30
 ;;9002226.02101,"1728,35356-0910-30 ",.02)
 ;;35356-0910-30
 ;;9002226.02101,"1728,35356-0913-30 ",.01)
 ;;35356-0913-30
 ;;9002226.02101,"1728,35356-0913-30 ",.02)
 ;;35356-0913-30
 ;;9002226.02101,"1728,35356-0917-30 ",.01)
 ;;35356-0917-30
 ;;9002226.02101,"1728,35356-0917-30 ",.02)
 ;;35356-0917-30
 ;;9002226.02101,"1728,35356-0945-30 ",.01)
 ;;35356-0945-30
 ;;9002226.02101,"1728,35356-0945-30 ",.02)
 ;;35356-0945-30
 ;;9002226.02101,"1728,35356-0945-60 ",.01)
 ;;35356-0945-60
 ;;9002226.02101,"1728,35356-0945-60 ",.02)
 ;;35356-0945-60
 ;;9002226.02101,"1728,35356-0945-90 ",.01)
 ;;35356-0945-90
 ;;9002226.02101,"1728,35356-0945-90 ",.02)
 ;;35356-0945-90
 ;;9002226.02101,"1728,35356-0948-30 ",.01)
 ;;35356-0948-30
 ;;9002226.02101,"1728,35356-0948-30 ",.02)
 ;;35356-0948-30
 ;;9002226.02101,"1728,35356-0948-60 ",.01)
 ;;35356-0948-60
 ;;9002226.02101,"1728,35356-0948-60 ",.02)
 ;;35356-0948-60
 ;;9002226.02101,"1728,35356-0948-90 ",.01)
 ;;35356-0948-90
 ;;9002226.02101,"1728,35356-0948-90 ",.02)
 ;;35356-0948-90
 ;;9002226.02101,"1728,35356-0949-30 ",.01)
 ;;35356-0949-30
 ;;9002226.02101,"1728,35356-0949-30 ",.02)
 ;;35356-0949-30
 ;;9002226.02101,"1728,35356-0960-30 ",.01)
 ;;35356-0960-30
 ;;9002226.02101,"1728,35356-0960-30 ",.02)
 ;;35356-0960-30
 ;;9002226.02101,"1728,35356-0960-60 ",.01)
 ;;35356-0960-60
 ;;9002226.02101,"1728,35356-0960-60 ",.02)
 ;;35356-0960-60
 ;;9002226.02101,"1728,35356-0960-90 ",.01)
 ;;35356-0960-90
 ;;9002226.02101,"1728,35356-0960-90 ",.02)
 ;;35356-0960-90
 ;;9002226.02101,"1728,35356-0961-30 ",.01)
 ;;35356-0961-30
 ;;9002226.02101,"1728,35356-0961-30 ",.02)
 ;;35356-0961-30
 ;;9002226.02101,"1728,35356-0961-60 ",.01)
 ;;35356-0961-60
 ;;9002226.02101,"1728,35356-0961-60 ",.02)
 ;;35356-0961-60
 ;;9002226.02101,"1728,35356-0961-90 ",.01)
 ;;35356-0961-90
 ;;9002226.02101,"1728,35356-0961-90 ",.02)
 ;;35356-0961-90
 ;;9002226.02101,"1728,35356-0965-30 ",.01)
 ;;35356-0965-30
 ;;9002226.02101,"1728,35356-0965-30 ",.02)
 ;;35356-0965-30
 ;;9002226.02101,"1728,35356-0965-60 ",.01)
 ;;35356-0965-60
 ;;9002226.02101,"1728,35356-0965-60 ",.02)
 ;;35356-0965-60
 ;;9002226.02101,"1728,35356-0965-90 ",.01)
 ;;35356-0965-90
 ;;9002226.02101,"1728,35356-0965-90 ",.02)
 ;;35356-0965-90
 ;;9002226.02101,"1728,35356-0973-30 ",.01)
 ;;35356-0973-30
 ;;9002226.02101,"1728,35356-0973-30 ",.02)
 ;;35356-0973-30
 ;;9002226.02101,"1728,35356-0973-60 ",.01)
 ;;35356-0973-60
 ;;9002226.02101,"1728,35356-0973-60 ",.02)
 ;;35356-0973-60
 ;;9002226.02101,"1728,35356-0973-90 ",.01)
 ;;35356-0973-90
 ;;9002226.02101,"1728,35356-0973-90 ",.02)
 ;;35356-0973-90
 ;;9002226.02101,"1728,35356-0976-30 ",.01)
 ;;35356-0976-30
 ;;9002226.02101,"1728,35356-0976-30 ",.02)
 ;;35356-0976-30
 ;;9002226.02101,"1728,35356-0976-60 ",.01)
 ;;35356-0976-60
 ;;9002226.02101,"1728,35356-0976-60 ",.02)
 ;;35356-0976-60
 ;;9002226.02101,"1728,35356-0979-30 ",.01)
 ;;35356-0979-30
 ;;9002226.02101,"1728,35356-0979-30 ",.02)
 ;;35356-0979-30
 ;;9002226.02101,"1728,35356-0979-60 ",.01)
 ;;35356-0979-60
 ;;9002226.02101,"1728,35356-0979-60 ",.02)
 ;;35356-0979-60
 ;;9002226.02101,"1728,35356-0998-30 ",.01)
 ;;35356-0998-30
 ;;9002226.02101,"1728,35356-0998-30 ",.02)
 ;;35356-0998-30
 ;;9002226.02101,"1728,35356-0998-60 ",.01)
 ;;35356-0998-60
 ;;9002226.02101,"1728,35356-0998-60 ",.02)
 ;;35356-0998-60
 ;;9002226.02101,"1728,42254-0072-30 ",.01)
 ;;42254-0072-30
 ;;9002226.02101,"1728,42254-0072-30 ",.02)
 ;;42254-0072-30
 ;;9002226.02101,"1728,42254-0073-30 ",.01)
 ;;42254-0073-30
 ;;9002226.02101,"1728,42254-0073-30 ",.02)
 ;;42254-0073-30
 ;;9002226.02101,"1728,42254-0074-30 ",.01)
 ;;42254-0074-30
 ;;9002226.02101,"1728,42254-0074-30 ",.02)
 ;;42254-0074-30
 ;;9002226.02101,"1728,42254-0156-30 ",.01)
 ;;42254-0156-30
 ;;9002226.02101,"1728,42254-0156-30 ",.02)
 ;;42254-0156-30
 ;;9002226.02101,"1728,42254-0156-90 ",.01)
 ;;42254-0156-90
 ;;9002226.02101,"1728,42254-0156-90 ",.02)
 ;;42254-0156-90
 ;;9002226.02101,"1728,42254-0192-90 ",.01)
 ;;42254-0192-90
 ;;9002226.02101,"1728,42254-0192-90 ",.02)
 ;;42254-0192-90
 ;;9002226.02101,"1728,42254-0255-90 ",.01)
 ;;42254-0255-90
 ;;9002226.02101,"1728,42254-0255-90 ",.02)
 ;;42254-0255-90
 ;;9002226.02101,"1728,42254-0328-90 ",.01)
 ;;42254-0328-90
 ;;9002226.02101,"1728,42254-0328-90 ",.02)
 ;;42254-0328-90
 ;;9002226.02101,"1728,42254-0335-78 ",.01)
 ;;42254-0335-78
 ;;9002226.02101,"1728,42254-0335-78 ",.02)
 ;;42254-0335-78
 ;;9002226.02101,"1728,42254-0353-90 ",.01)
 ;;42254-0353-90
 ;;9002226.02101,"1728,42254-0353-90 ",.02)
 ;;42254-0353-90
 ;;9002226.02101,"1728,42254-0385-30 ",.01)
 ;;42254-0385-30
 ;;9002226.02101,"1728,42254-0385-30 ",.02)
 ;;42254-0385-30
 ;;9002226.02101,"1728,42254-0385-90 ",.01)
 ;;42254-0385-90
 ;;9002226.02101,"1728,42254-0385-90 ",.02)
 ;;42254-0385-90
 ;;9002226.02101,"1728,42254-0409-30 ",.01)
 ;;42254-0409-30
 ;;9002226.02101,"1728,42254-0409-30 ",.02)
 ;;42254-0409-30
 ;;9002226.02101,"1728,42254-0409-90 ",.01)
 ;;42254-0409-90
 ;;9002226.02101,"1728,42254-0409-90 ",.02)
 ;;42254-0409-90
 ;;9002226.02101,"1728,42254-0435-30 ",.01)
 ;;42254-0435-30
 ;;9002226.02101,"1728,42254-0435-30 ",.02)
 ;;42254-0435-30
 ;;9002226.02101,"1728,42254-0435-90 ",.01)
 ;;42254-0435-90
 ;;9002226.02101,"1728,42254-0435-90 ",.02)
 ;;42254-0435-90
 ;;9002226.02101,"1728,42254-0436-30 ",.01)
 ;;42254-0436-30
 ;;9002226.02101,"1728,42254-0436-30 ",.02)
 ;;42254-0436-30
 ;;9002226.02101,"1728,42254-0436-90 ",.01)
 ;;42254-0436-90
 ;;9002226.02101,"1728,42254-0436-90 ",.02)
 ;;42254-0436-90
 ;;9002226.02101,"1728,42254-0437-30 ",.01)
 ;;42254-0437-30
 ;;9002226.02101,"1728,42254-0437-30 ",.02)
 ;;42254-0437-30
 ;;9002226.02101,"1728,42254-0437-90 ",.01)
 ;;42254-0437-90
 ;;9002226.02101,"1728,42254-0437-90 ",.02)
 ;;42254-0437-90
 ;;9002226.02101,"1728,42291-0160-90 ",.01)
 ;;42291-0160-90
 ;;9002226.02101,"1728,42291-0160-90 ",.02)
 ;;42291-0160-90
 ;;9002226.02101,"1728,42291-0161-90 ",.01)
 ;;42291-0161-90
 ;;9002226.02101,"1728,42291-0161-90 ",.02)
 ;;42291-0161-90
 ;;9002226.02101,"1728,42291-0162-18 ",.01)
 ;;42291-0162-18
 ;;9002226.02101,"1728,42291-0162-18 ",.02)
 ;;42291-0162-18
 ;;9002226.02101,"1728,42291-0162-50 ",.01)
 ;;42291-0162-50
 ;;9002226.02101,"1728,42291-0162-50 ",.02)
 ;;42291-0162-50
 ;;9002226.02101,"1728,42291-0162-90 ",.01)
 ;;42291-0162-90
 ;;9002226.02101,"1728,42291-0162-90 ",.02)
 ;;42291-0162-90
 ;;9002226.02101,"1728,42291-0163-18 ",.01)
 ;;42291-0163-18
 ;;9002226.02101,"1728,42291-0163-18 ",.02)
 ;;42291-0163-18
 ;;9002226.02101,"1728,42291-0163-50 ",.01)
 ;;42291-0163-50
 ;;9002226.02101,"1728,42291-0163-50 ",.02)
 ;;42291-0163-50
 ;;9002226.02101,"1728,42291-0163-90 ",.01)
 ;;42291-0163-90
 ;;9002226.02101,"1728,42291-0163-90 ",.02)
 ;;42291-0163-90
 ;;9002226.02101,"1728,42291-0269-01 ",.01)
 ;;42291-0269-01
 ;;9002226.02101,"1728,42291-0269-01 ",.02)
 ;;42291-0269-01
 ;;9002226.02101,"1728,42291-0340-90 ",.01)
 ;;42291-0340-90
 ;;9002226.02101,"1728,42291-0340-90 ",.02)
 ;;42291-0340-90
 ;;9002226.02101,"1728,42291-0341-90 ",.01)
 ;;42291-0341-90
 ;;9002226.02101,"1728,42291-0341-90 ",.02)
 ;;42291-0341-90
 ;;9002226.02101,"1728,42291-0342-90 ",.01)
 ;;42291-0342-90
 ;;9002226.02101,"1728,42291-0342-90 ",.02)
 ;;42291-0342-90
 ;;9002226.02101,"1728,42291-0343-90 ",.01)
 ;;42291-0343-90
 ;;9002226.02101,"1728,42291-0343-90 ",.02)
 ;;42291-0343-90
 ;;9002226.02101,"1728,42291-0390-01 ",.01)
 ;;42291-0390-01
 ;;9002226.02101,"1728,42291-0390-01 ",.02)
 ;;42291-0390-01
 ;;9002226.02101,"1728,42291-0390-10 ",.01)
 ;;42291-0390-10
 ;;9002226.02101,"1728,42291-0390-10 ",.02)
 ;;42291-0390-10
 ;;9002226.02101,"1728,42291-0390-90 ",.01)
 ;;42291-0390-90
 ;;9002226.02101,"1728,42291-0390-90 ",.02)
 ;;42291-0390-90
 ;;9002226.02101,"1728,42291-0391-01 ",.01)
 ;;42291-0391-01
 ;;9002226.02101,"1728,42291-0391-01 ",.02)
 ;;42291-0391-01
 ;;9002226.02101,"1728,42291-0391-10 ",.01)
 ;;42291-0391-10
 ;;9002226.02101,"1728,42291-0391-10 ",.02)
 ;;42291-0391-10
 ;;9002226.02101,"1728,42291-0391-90 ",.01)
 ;;42291-0391-90
 ;;9002226.02101,"1728,42291-0391-90 ",.02)
 ;;42291-0391-90
 ;;9002226.02101,"1728,42291-0392-01 ",.01)
 ;;42291-0392-01
 ;;9002226.02101,"1728,42291-0392-01 ",.02)
 ;;42291-0392-01
 ;;9002226.02101,"1728,42291-0392-10 ",.01)
 ;;42291-0392-10
 ;;9002226.02101,"1728,42291-0392-10 ",.02)
 ;;42291-0392-10
 ;;9002226.02101,"1728,42291-0392-90 ",.01)
 ;;42291-0392-90
 ;;9002226.02101,"1728,42291-0392-90 ",.02)
 ;;42291-0392-90
 ;;9002226.02101,"1728,42291-0701-90 ",.01)
 ;;42291-0701-90
 ;;9002226.02101,"1728,42291-0701-90 ",.02)
 ;;42291-0701-90
 ;;9002226.02101,"1728,42291-0702-90 ",.01)
 ;;42291-0702-90
 ;;9002226.02101,"1728,42291-0702-90 ",.02)
 ;;42291-0702-90
 ;;9002226.02101,"1728,42291-0703-90 ",.01)
 ;;42291-0703-90
 ;;9002226.02101,"1728,42291-0703-90 ",.02)
 ;;42291-0703-90
 ;;9002226.02101,"1728,42291-0704-90 ",.01)
 ;;42291-0704-90
 ;;9002226.02101,"1728,42291-0704-90 ",.02)
 ;;42291-0704-90
 ;;9002226.02101,"1728,42291-0705-90 ",.01)
 ;;42291-0705-90
 ;;9002226.02101,"1728,42291-0705-90 ",.02)
 ;;42291-0705-90
 ;;9002226.02101,"1728,42291-0706-90 ",.01)
 ;;42291-0706-90
 ;;9002226.02101,"1728,42291-0706-90 ",.02)
 ;;42291-0706-90
 ;;9002226.02101,"1728,42291-0707-90 ",.01)
 ;;42291-0707-90
 ;;9002226.02101,"1728,42291-0707-90 ",.02)
 ;;42291-0707-90
 ;;9002226.02101,"1728,42291-0837-01 ",.01)
 ;;42291-0837-01
 ;;9002226.02101,"1728,42291-0837-01 ",.02)
 ;;42291-0837-01
 ;;9002226.02101,"1728,42291-0838-01 ",.01)
 ;;42291-0838-01
 ;;9002226.02101,"1728,42291-0838-01 ",.02)
 ;;42291-0838-01
 ;;9002226.02101,"1728,42291-0839-01 ",.01)
 ;;42291-0839-01
 ;;9002226.02101,"1728,42291-0839-01 ",.02)
 ;;42291-0839-01
 ;;9002226.02101,"1728,42549-0700-90 ",.01)
 ;;42549-0700-90
 ;;9002226.02101,"1728,42549-0700-90 ",.02)
 ;;42549-0700-90
 ;;9002226.02101,"1728,42549-0705-90 ",.01)
 ;;42549-0705-90
 ;;9002226.02101,"1728,42549-0705-90 ",.02)
 ;;42549-0705-90
 ;;9002226.02101,"1728,42549-0707-30 ",.01)
 ;;42549-0707-30
 ;;9002226.02101,"1728,42549-0707-30 ",.02)
 ;;42549-0707-30
 ;;9002226.02101,"1728,42549-0707-90 ",.01)
 ;;42549-0707-90
 ;;9002226.02101,"1728,42549-0707-90 ",.02)
 ;;42549-0707-90
 ;;9002226.02101,"1728,42549-0735-90 ",.01)
 ;;42549-0735-90
 ;;9002226.02101,"1728,42549-0735-90 ",.02)
 ;;42549-0735-90
