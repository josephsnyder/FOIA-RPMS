BGP22B36 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 21, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1196,58016-0069-60 ",.02)
 ;;58016-0069-60
 ;;9002226.02101,"1196,58016-0069-90 ",.01)
 ;;58016-0069-90
 ;;9002226.02101,"1196,58016-0069-90 ",.02)
 ;;58016-0069-90
 ;;9002226.02101,"1196,58016-0228-00 ",.01)
 ;;58016-0228-00
 ;;9002226.02101,"1196,58016-0228-00 ",.02)
 ;;58016-0228-00
 ;;9002226.02101,"1196,58016-0228-02 ",.01)
 ;;58016-0228-02
 ;;9002226.02101,"1196,58016-0228-02 ",.02)
 ;;58016-0228-02
 ;;9002226.02101,"1196,58016-0228-30 ",.01)
 ;;58016-0228-30
 ;;9002226.02101,"1196,58016-0228-30 ",.02)
 ;;58016-0228-30
 ;;9002226.02101,"1196,58016-0228-60 ",.01)
 ;;58016-0228-60
 ;;9002226.02101,"1196,58016-0228-60 ",.02)
 ;;58016-0228-60
 ;;9002226.02101,"1196,58016-0228-90 ",.01)
 ;;58016-0228-90
 ;;9002226.02101,"1196,58016-0228-90 ",.02)
 ;;58016-0228-90
 ;;9002226.02101,"1196,58016-0363-00 ",.01)
 ;;58016-0363-00
 ;;9002226.02101,"1196,58016-0363-00 ",.02)
 ;;58016-0363-00
 ;;9002226.02101,"1196,58016-0363-14 ",.01)
 ;;58016-0363-14
 ;;9002226.02101,"1196,58016-0363-14 ",.02)
 ;;58016-0363-14
 ;;9002226.02101,"1196,58016-0363-21 ",.01)
 ;;58016-0363-21
 ;;9002226.02101,"1196,58016-0363-21 ",.02)
 ;;58016-0363-21
 ;;9002226.02101,"1196,58016-0363-30 ",.01)
 ;;58016-0363-30
 ;;9002226.02101,"1196,58016-0363-30 ",.02)
 ;;58016-0363-30
 ;;9002226.02101,"1196,58016-0363-60 ",.01)
 ;;58016-0363-60
 ;;9002226.02101,"1196,58016-0363-60 ",.02)
 ;;58016-0363-60
 ;;9002226.02101,"1196,58016-0420-00 ",.01)
 ;;58016-0420-00
 ;;9002226.02101,"1196,58016-0420-00 ",.02)
 ;;58016-0420-00
 ;;9002226.02101,"1196,58016-0420-10 ",.01)
 ;;58016-0420-10
 ;;9002226.02101,"1196,58016-0420-10 ",.02)
 ;;58016-0420-10
 ;;9002226.02101,"1196,58016-0420-30 ",.01)
 ;;58016-0420-30
 ;;9002226.02101,"1196,58016-0420-30 ",.02)
 ;;58016-0420-30
 ;;9002226.02101,"1196,58016-0420-60 ",.01)
 ;;58016-0420-60
 ;;9002226.02101,"1196,58016-0420-60 ",.02)
 ;;58016-0420-60
 ;;9002226.02101,"1196,58016-0420-90 ",.01)
 ;;58016-0420-90
 ;;9002226.02101,"1196,58016-0420-90 ",.02)
 ;;58016-0420-90
 ;;9002226.02101,"1196,58016-0564-00 ",.01)
 ;;58016-0564-00
 ;;9002226.02101,"1196,58016-0564-00 ",.02)
 ;;58016-0564-00
 ;;9002226.02101,"1196,58016-0564-30 ",.01)
 ;;58016-0564-30
 ;;9002226.02101,"1196,58016-0564-30 ",.02)
 ;;58016-0564-30
 ;;9002226.02101,"1196,58016-0564-60 ",.01)
 ;;58016-0564-60
 ;;9002226.02101,"1196,58016-0564-60 ",.02)
 ;;58016-0564-60
 ;;9002226.02101,"1196,58016-0564-90 ",.01)
 ;;58016-0564-90
 ;;9002226.02101,"1196,58016-0564-90 ",.02)
 ;;58016-0564-90
 ;;9002226.02101,"1196,58016-0571-00 ",.01)
 ;;58016-0571-00
 ;;9002226.02101,"1196,58016-0571-00 ",.02)
 ;;58016-0571-00
 ;;9002226.02101,"1196,58016-0571-30 ",.01)
 ;;58016-0571-30
 ;;9002226.02101,"1196,58016-0571-30 ",.02)
 ;;58016-0571-30
 ;;9002226.02101,"1196,58016-0571-60 ",.01)
 ;;58016-0571-60
 ;;9002226.02101,"1196,58016-0571-60 ",.02)
 ;;58016-0571-60
 ;;9002226.02101,"1196,58016-0571-90 ",.01)
 ;;58016-0571-90
 ;;9002226.02101,"1196,58016-0571-90 ",.02)
 ;;58016-0571-90
 ;;9002226.02101,"1196,58016-0579-00 ",.01)
 ;;58016-0579-00
 ;;9002226.02101,"1196,58016-0579-00 ",.02)
 ;;58016-0579-00
 ;;9002226.02101,"1196,58016-0579-20 ",.01)
 ;;58016-0579-20
 ;;9002226.02101,"1196,58016-0579-20 ",.02)
 ;;58016-0579-20
 ;;9002226.02101,"1196,58016-0579-30 ",.01)
 ;;58016-0579-30
 ;;9002226.02101,"1196,58016-0579-30 ",.02)
 ;;58016-0579-30
 ;;9002226.02101,"1196,58016-0579-60 ",.01)
 ;;58016-0579-60
 ;;9002226.02101,"1196,58016-0579-60 ",.02)
 ;;58016-0579-60
 ;;9002226.02101,"1196,58016-0580-00 ",.01)
 ;;58016-0580-00
 ;;9002226.02101,"1196,58016-0580-00 ",.02)
 ;;58016-0580-00
 ;;9002226.02101,"1196,58016-0580-20 ",.01)
 ;;58016-0580-20
 ;;9002226.02101,"1196,58016-0580-20 ",.02)
 ;;58016-0580-20
 ;;9002226.02101,"1196,58016-0580-30 ",.01)
 ;;58016-0580-30
 ;;9002226.02101,"1196,58016-0580-30 ",.02)
 ;;58016-0580-30
 ;;9002226.02101,"1196,58016-0580-60 ",.01)
 ;;58016-0580-60
 ;;9002226.02101,"1196,58016-0580-60 ",.02)
 ;;58016-0580-60
 ;;9002226.02101,"1196,58016-0581-00 ",.01)
 ;;58016-0581-00
 ;;9002226.02101,"1196,58016-0581-00 ",.02)
 ;;58016-0581-00
 ;;9002226.02101,"1196,58016-0581-20 ",.01)
 ;;58016-0581-20
 ;;9002226.02101,"1196,58016-0581-20 ",.02)
 ;;58016-0581-20
 ;;9002226.02101,"1196,58016-0581-30 ",.01)
 ;;58016-0581-30
 ;;9002226.02101,"1196,58016-0581-30 ",.02)
 ;;58016-0581-30
 ;;9002226.02101,"1196,58016-0581-60 ",.01)
 ;;58016-0581-60
 ;;9002226.02101,"1196,58016-0581-60 ",.02)
 ;;58016-0581-60
 ;;9002226.02101,"1196,58016-0646-00 ",.01)
 ;;58016-0646-00
 ;;9002226.02101,"1196,58016-0646-00 ",.02)
 ;;58016-0646-00
 ;;9002226.02101,"1196,58016-0646-30 ",.01)
 ;;58016-0646-30
 ;;9002226.02101,"1196,58016-0646-30 ",.02)
 ;;58016-0646-30
 ;;9002226.02101,"1196,58016-0646-60 ",.01)
 ;;58016-0646-60
 ;;9002226.02101,"1196,58016-0646-60 ",.02)
 ;;58016-0646-60
 ;;9002226.02101,"1196,58016-0646-90 ",.01)
 ;;58016-0646-90
 ;;9002226.02101,"1196,58016-0646-90 ",.02)
 ;;58016-0646-90
 ;;9002226.02101,"1196,58016-0685-00 ",.01)
 ;;58016-0685-00
 ;;9002226.02101,"1196,58016-0685-00 ",.02)
 ;;58016-0685-00
 ;;9002226.02101,"1196,58016-0685-10 ",.01)
 ;;58016-0685-10
 ;;9002226.02101,"1196,58016-0685-10 ",.02)
 ;;58016-0685-10
 ;;9002226.02101,"1196,58016-0685-30 ",.01)
 ;;58016-0685-30
 ;;9002226.02101,"1196,58016-0685-30 ",.02)
 ;;58016-0685-30
 ;;9002226.02101,"1196,58016-0685-60 ",.01)
 ;;58016-0685-60
 ;;9002226.02101,"1196,58016-0685-60 ",.02)
 ;;58016-0685-60
 ;;9002226.02101,"1196,58016-0685-90 ",.01)
 ;;58016-0685-90
 ;;9002226.02101,"1196,58016-0685-90 ",.02)
 ;;58016-0685-90
 ;;9002226.02101,"1196,58016-0686-00 ",.01)
 ;;58016-0686-00
 ;;9002226.02101,"1196,58016-0686-00 ",.02)
 ;;58016-0686-00
 ;;9002226.02101,"1196,58016-0686-10 ",.01)
 ;;58016-0686-10
 ;;9002226.02101,"1196,58016-0686-10 ",.02)
 ;;58016-0686-10
 ;;9002226.02101,"1196,58016-0686-30 ",.01)
 ;;58016-0686-30
 ;;9002226.02101,"1196,58016-0686-30 ",.02)
 ;;58016-0686-30
 ;;9002226.02101,"1196,58016-0686-60 ",.01)
 ;;58016-0686-60
 ;;9002226.02101,"1196,58016-0686-60 ",.02)
 ;;58016-0686-60
 ;;9002226.02101,"1196,58016-0686-90 ",.01)
 ;;58016-0686-90
 ;;9002226.02101,"1196,58016-0686-90 ",.02)
 ;;58016-0686-90
 ;;9002226.02101,"1196,58016-0760-00 ",.01)
 ;;58016-0760-00
 ;;9002226.02101,"1196,58016-0760-00 ",.02)
 ;;58016-0760-00
 ;;9002226.02101,"1196,58016-0760-30 ",.01)
 ;;58016-0760-30
 ;;9002226.02101,"1196,58016-0760-30 ",.02)
 ;;58016-0760-30
 ;;9002226.02101,"1196,58016-0760-60 ",.01)
 ;;58016-0760-60
 ;;9002226.02101,"1196,58016-0760-60 ",.02)
 ;;58016-0760-60
 ;;9002226.02101,"1196,58016-0760-90 ",.01)
 ;;58016-0760-90
 ;;9002226.02101,"1196,58016-0760-90 ",.02)
 ;;58016-0760-90
 ;;9002226.02101,"1196,58016-0917-00 ",.01)
 ;;58016-0917-00
 ;;9002226.02101,"1196,58016-0917-00 ",.02)
 ;;58016-0917-00
 ;;9002226.02101,"1196,58016-0917-30 ",.01)
 ;;58016-0917-30
 ;;9002226.02101,"1196,58016-0917-30 ",.02)
 ;;58016-0917-30
 ;;9002226.02101,"1196,58016-0917-60 ",.01)
 ;;58016-0917-60
 ;;9002226.02101,"1196,58016-0917-60 ",.02)
 ;;58016-0917-60
 ;;9002226.02101,"1196,58016-0917-90 ",.01)
 ;;58016-0917-90
 ;;9002226.02101,"1196,58016-0917-90 ",.02)
 ;;58016-0917-90
 ;;9002226.02101,"1196,58016-0956-00 ",.01)
 ;;58016-0956-00
 ;;9002226.02101,"1196,58016-0956-00 ",.02)
 ;;58016-0956-00
 ;;9002226.02101,"1196,58016-0956-30 ",.01)
 ;;58016-0956-30
 ;;9002226.02101,"1196,58016-0956-30 ",.02)
 ;;58016-0956-30
 ;;9002226.02101,"1196,58016-0956-60 ",.01)
 ;;58016-0956-60
 ;;9002226.02101,"1196,58016-0956-60 ",.02)
 ;;58016-0956-60
 ;;9002226.02101,"1196,58016-0956-90 ",.01)
 ;;58016-0956-90
 ;;9002226.02101,"1196,58016-0956-90 ",.02)
 ;;58016-0956-90
 ;;9002226.02101,"1196,58016-0963-00 ",.01)
 ;;58016-0963-00
 ;;9002226.02101,"1196,58016-0963-00 ",.02)
 ;;58016-0963-00
 ;;9002226.02101,"1196,58016-0963-30 ",.01)
 ;;58016-0963-30
 ;;9002226.02101,"1196,58016-0963-30 ",.02)
 ;;58016-0963-30
 ;;9002226.02101,"1196,58016-0963-60 ",.01)
 ;;58016-0963-60
 ;;9002226.02101,"1196,58016-0963-60 ",.02)
 ;;58016-0963-60
 ;;9002226.02101,"1196,58016-0963-90 ",.01)
 ;;58016-0963-90
 ;;9002226.02101,"1196,58016-0963-90 ",.02)
 ;;58016-0963-90
 ;;9002226.02101,"1196,58016-0998-00 ",.01)
 ;;58016-0998-00
 ;;9002226.02101,"1196,58016-0998-00 ",.02)
 ;;58016-0998-00
 ;;9002226.02101,"1196,58016-0998-30 ",.01)
 ;;58016-0998-30
 ;;9002226.02101,"1196,58016-0998-30 ",.02)
 ;;58016-0998-30
 ;;9002226.02101,"1196,58016-0998-60 ",.01)
 ;;58016-0998-60
 ;;9002226.02101,"1196,58016-0998-60 ",.02)
 ;;58016-0998-60
 ;;9002226.02101,"1196,58016-0998-90 ",.01)
 ;;58016-0998-90
 ;;9002226.02101,"1196,58016-0998-90 ",.02)
 ;;58016-0998-90
 ;;9002226.02101,"1196,58016-2638-14 ",.01)
 ;;58016-2638-14
 ;;9002226.02101,"1196,58016-2638-14 ",.02)
 ;;58016-2638-14
 ;;9002226.02101,"1196,58016-2638-21 ",.01)
 ;;58016-2638-21
 ;;9002226.02101,"1196,58016-2638-21 ",.02)
 ;;58016-2638-21
 ;;9002226.02101,"1196,58016-2638-30 ",.01)
 ;;58016-2638-30
 ;;9002226.02101,"1196,58016-2638-30 ",.02)
 ;;58016-2638-30
 ;;9002226.02101,"1196,58016-2638-60 ",.01)
 ;;58016-2638-60
 ;;9002226.02101,"1196,58016-2638-60 ",.02)
 ;;58016-2638-60
 ;;9002226.02101,"1196,58016-2638-90 ",.01)
 ;;58016-2638-90
 ;;9002226.02101,"1196,58016-2638-90 ",.02)
 ;;58016-2638-90
 ;;9002226.02101,"1196,58016-4631-01 ",.01)
 ;;58016-4631-01
 ;;9002226.02101,"1196,58016-4631-01 ",.02)
 ;;58016-4631-01
 ;;9002226.02101,"1196,58177-0341-04 ",.01)
 ;;58177-0341-04
 ;;9002226.02101,"1196,58177-0341-04 ",.02)
 ;;58177-0341-04
 ;;9002226.02101,"1196,58177-0342-04 ",.01)
 ;;58177-0342-04
 ;;9002226.02101,"1196,58177-0342-04 ",.02)
 ;;58177-0342-04
 ;;9002226.02101,"1196,58177-0342-08 ",.01)
 ;;58177-0342-08
 ;;9002226.02101,"1196,58177-0342-08 ",.02)
 ;;58177-0342-08
 ;;9002226.02101,"1196,58177-0343-04 ",.01)
 ;;58177-0343-04
 ;;9002226.02101,"1196,58177-0343-04 ",.02)
 ;;58177-0343-04
 ;;9002226.02101,"1196,58177-0343-08 ",.01)
 ;;58177-0343-08
 ;;9002226.02101,"1196,58177-0343-08 ",.02)
 ;;58177-0343-08
 ;;9002226.02101,"1196,58177-0344-04 ",.01)
 ;;58177-0344-04
 ;;9002226.02101,"1196,58177-0344-04 ",.02)
 ;;58177-0344-04
 ;;9002226.02101,"1196,58177-0344-08 ",.01)
 ;;58177-0344-08
 ;;9002226.02101,"1196,58177-0344-08 ",.02)
 ;;58177-0344-08
 ;;9002226.02101,"1196,58864-0000-63 ",.01)
 ;;58864-0000-63
 ;;9002226.02101,"1196,58864-0000-63 ",.02)
 ;;58864-0000-63
 ;;9002226.02101,"1196,58864-0006-30 ",.01)
 ;;58864-0006-30
 ;;9002226.02101,"1196,58864-0006-30 ",.02)
 ;;58864-0006-30
 ;;9002226.02101,"1196,58864-0066-28 ",.01)
 ;;58864-0066-28
 ;;9002226.02101,"1196,58864-0066-28 ",.02)
 ;;58864-0066-28
 ;;9002226.02101,"1196,58864-0104-30 ",.01)
 ;;58864-0104-30
 ;;9002226.02101,"1196,58864-0104-30 ",.02)
 ;;58864-0104-30
 ;;9002226.02101,"1196,58864-0510-15 ",.01)
 ;;58864-0510-15
 ;;9002226.02101,"1196,58864-0510-15 ",.02)
 ;;58864-0510-15
 ;;9002226.02101,"1196,58864-0603-15 ",.01)
 ;;58864-0603-15
 ;;9002226.02101,"1196,58864-0603-15 ",.02)
 ;;58864-0603-15
 ;;9002226.02101,"1196,58864-0603-30 ",.01)
 ;;58864-0603-30
 ;;9002226.02101,"1196,58864-0603-30 ",.02)
 ;;58864-0603-30
 ;;9002226.02101,"1196,58864-0603-90 ",.01)
 ;;58864-0603-90
 ;;9002226.02101,"1196,58864-0603-90 ",.02)
 ;;58864-0603-90
 ;;9002226.02101,"1196,58864-0605-30 ",.01)
 ;;58864-0605-30
 ;;9002226.02101,"1196,58864-0605-30 ",.02)
 ;;58864-0605-30
 ;;9002226.02101,"1196,58864-0618-15 ",.01)
 ;;58864-0618-15
 ;;9002226.02101,"1196,58864-0618-15 ",.02)
 ;;58864-0618-15
 ;;9002226.02101,"1196,58864-0618-30 ",.01)
 ;;58864-0618-30
 ;;9002226.02101,"1196,58864-0618-30 ",.02)
 ;;58864-0618-30
 ;;9002226.02101,"1196,58864-0654-30 ",.01)
 ;;58864-0654-30
 ;;9002226.02101,"1196,58864-0654-30 ",.02)
 ;;58864-0654-30
 ;;9002226.02101,"1196,58864-0659-30 ",.01)
 ;;58864-0659-30
 ;;9002226.02101,"1196,58864-0659-30 ",.02)
 ;;58864-0659-30
 ;;9002226.02101,"1196,58864-0661-30 ",.01)
 ;;58864-0661-30
 ;;9002226.02101,"1196,58864-0661-30 ",.02)
 ;;58864-0661-30
 ;;9002226.02101,"1196,58864-0662-30 ",.01)
 ;;58864-0662-30
 ;;9002226.02101,"1196,58864-0662-30 ",.02)
 ;;58864-0662-30
 ;;9002226.02101,"1196,58864-0667-30 ",.01)
 ;;58864-0667-30
 ;;9002226.02101,"1196,58864-0667-30 ",.02)
 ;;58864-0667-30
 ;;9002226.02101,"1196,58864-0674-30 ",.01)
 ;;58864-0674-30
 ;;9002226.02101,"1196,58864-0674-30 ",.02)
 ;;58864-0674-30
 ;;9002226.02101,"1196,58864-0681-30 ",.01)
 ;;58864-0681-30
 ;;9002226.02101,"1196,58864-0681-30 ",.02)
 ;;58864-0681-30
 ;;9002226.02101,"1196,58864-0726-15 ",.01)
 ;;58864-0726-15
 ;;9002226.02101,"1196,58864-0726-15 ",.02)
 ;;58864-0726-15
 ;;9002226.02101,"1196,58864-0726-30 ",.01)
 ;;58864-0726-30
 ;;9002226.02101,"1196,58864-0726-30 ",.02)
 ;;58864-0726-30
 ;;9002226.02101,"1196,58864-0750-30 ",.01)
 ;;58864-0750-30
 ;;9002226.02101,"1196,58864-0750-30 ",.02)
 ;;58864-0750-30
 ;;9002226.02101,"1196,58864-0753-30 ",.01)
 ;;58864-0753-30
 ;;9002226.02101,"1196,58864-0753-30 ",.02)
 ;;58864-0753-30
 ;;9002226.02101,"1196,58864-0753-90 ",.01)
 ;;58864-0753-90
 ;;9002226.02101,"1196,58864-0753-90 ",.02)
 ;;58864-0753-90
 ;;9002226.02101,"1196,58864-0754-30 ",.01)
 ;;58864-0754-30
 ;;9002226.02101,"1196,58864-0754-30 ",.02)
 ;;58864-0754-30
 ;;9002226.02101,"1196,58864-0755-30 ",.01)
 ;;58864-0755-30
 ;;9002226.02101,"1196,58864-0755-30 ",.02)
 ;;58864-0755-30
 ;;9002226.02101,"1196,58864-0762-30 ",.01)
 ;;58864-0762-30
 ;;9002226.02101,"1196,58864-0762-30 ",.02)
 ;;58864-0762-30
