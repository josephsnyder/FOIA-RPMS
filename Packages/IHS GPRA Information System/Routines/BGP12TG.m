BGP12TG ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"801,50111-0518-01 ",.02)
 ;;50111-0518-01
 ;;9002226.02101,"801,50242-0040-62 ",.01)
 ;;50242-0040-62
 ;;9002226.02101,"801,50242-0040-62 ",.02)
 ;;50242-0040-62
 ;;9002226.02101,"801,50383-0806-16 ",.01)
 ;;50383-0806-16
 ;;9002226.02101,"801,50383-0806-16 ",.02)
 ;;50383-0806-16
 ;;9002226.02101,"801,50474-0100-01 ",.01)
 ;;50474-0100-01
 ;;9002226.02101,"801,50474-0100-01 ",.02)
 ;;50474-0100-01
 ;;9002226.02101,"801,50474-0200-01 ",.01)
 ;;50474-0200-01
 ;;9002226.02101,"801,50474-0200-01 ",.02)
 ;;50474-0200-01
 ;;9002226.02101,"801,50474-0200-50 ",.01)
 ;;50474-0200-50
 ;;9002226.02101,"801,50474-0200-50 ",.02)
 ;;50474-0200-50
 ;;9002226.02101,"801,50474-0300-01 ",.01)
 ;;50474-0300-01
 ;;9002226.02101,"801,50474-0300-01 ",.02)
 ;;50474-0300-01
 ;;9002226.02101,"801,50474-0300-50 ",.01)
 ;;50474-0300-50
 ;;9002226.02101,"801,50474-0300-50 ",.02)
 ;;50474-0300-50
 ;;9002226.02101,"801,50474-0400-01 ",.01)
 ;;50474-0400-01
 ;;9002226.02101,"801,50474-0400-01 ",.02)
 ;;50474-0400-01
 ;;9002226.02101,"801,50991-0200-16 ",.01)
 ;;50991-0200-16
 ;;9002226.02101,"801,50991-0200-16 ",.02)
 ;;50991-0200-16
 ;;9002226.02101,"801,50991-0214-16 ",.01)
 ;;50991-0214-16
 ;;9002226.02101,"801,50991-0214-16 ",.02)
 ;;50991-0214-16
 ;;9002226.02101,"801,50991-0400-01 ",.01)
 ;;50991-0400-01
 ;;9002226.02101,"801,50991-0400-01 ",.02)
 ;;50991-0400-01
 ;;9002226.02101,"801,50991-0413-01 ",.01)
 ;;50991-0413-01
 ;;9002226.02101,"801,50991-0413-01 ",.02)
 ;;50991-0413-01
 ;;9002226.02101,"801,51991-0536-01 ",.01)
 ;;51991-0536-01
 ;;9002226.02101,"801,51991-0536-01 ",.02)
 ;;51991-0536-01
 ;;9002226.02101,"801,52959-0279-30 ",.01)
 ;;52959-0279-30
 ;;9002226.02101,"801,52959-0279-30 ",.02)
 ;;52959-0279-30
 ;;9002226.02101,"801,53265-0380-10 ",.01)
 ;;53265-0380-10
 ;;9002226.02101,"801,53265-0380-10 ",.02)
 ;;53265-0380-10
 ;;9002226.02101,"801,53265-0380-50 ",.01)
 ;;53265-0380-50
 ;;9002226.02101,"801,53265-0380-50 ",.02)
 ;;53265-0380-50
 ;;9002226.02101,"801,53265-0382-10 ",.01)
 ;;53265-0382-10
 ;;9002226.02101,"801,53265-0382-10 ",.02)
 ;;53265-0382-10
 ;;9002226.02101,"801,54569-0062-02 ",.01)
 ;;54569-0062-02
 ;;9002226.02101,"801,54569-0062-02 ",.02)
 ;;54569-0062-02
 ;;9002226.02101,"801,54569-0065-01 ",.01)
 ;;54569-0065-01
 ;;9002226.02101,"801,54569-0065-01 ",.02)
 ;;54569-0065-01
 ;;9002226.02101,"801,54569-0065-02 ",.01)
 ;;54569-0065-02
 ;;9002226.02101,"801,54569-0065-02 ",.02)
 ;;54569-0065-02
 ;;9002226.02101,"801,54569-0065-05 ",.01)
 ;;54569-0065-05
 ;;9002226.02101,"801,54569-0065-05 ",.02)
 ;;54569-0065-05
 ;;9002226.02101,"801,54569-0318-01 ",.01)
 ;;54569-0318-01
 ;;9002226.02101,"801,54569-0318-01 ",.02)
 ;;54569-0318-01
 ;;9002226.02101,"801,54569-1666-00 ",.01)
 ;;54569-1666-00
 ;;9002226.02101,"801,54569-1666-00 ",.02)
 ;;54569-1666-00
 ;;9002226.02101,"801,54569-8580-00 ",.01)
 ;;54569-8580-00
 ;;9002226.02101,"801,54569-8580-00 ",.02)
 ;;54569-8580-00
 ;;9002226.02101,"801,54569-8586-00 ",.01)
 ;;54569-8586-00
 ;;9002226.02101,"801,54569-8586-00 ",.02)
 ;;54569-8586-00
 ;;9002226.02101,"801,54838-0513-80 ",.01)
 ;;54838-0513-80
 ;;9002226.02101,"801,54838-0513-80 ",.02)
 ;;54838-0513-80
 ;;9002226.02101,"801,54839-0513-80 ",.01)
 ;;54839-0513-80
 ;;9002226.02101,"801,54839-0513-80 ",.02)
 ;;54839-0513-80
 ;;9002226.02101,"801,54868-0028-00 ",.01)
 ;;54868-0028-00
 ;;9002226.02101,"801,54868-0028-00 ",.02)
 ;;54868-0028-00
 ;;9002226.02101,"801,54868-0028-01 ",.01)
 ;;54868-0028-01
 ;;9002226.02101,"801,54868-0028-01 ",.02)
 ;;54868-0028-01
 ;;9002226.02101,"801,54868-0028-02 ",.01)
 ;;54868-0028-02
 ;;9002226.02101,"801,54868-0028-02 ",.02)
 ;;54868-0028-02
 ;;9002226.02101,"801,54868-0028-03 ",.01)
 ;;54868-0028-03
 ;;9002226.02101,"801,54868-0028-03 ",.02)
 ;;54868-0028-03
 ;;9002226.02101,"801,54868-0028-05 ",.01)
 ;;54868-0028-05
 ;;9002226.02101,"801,54868-0028-05 ",.02)
 ;;54868-0028-05
 ;;9002226.02101,"801,54868-0028-06 ",.01)
 ;;54868-0028-06
 ;;9002226.02101,"801,54868-0028-06 ",.02)
 ;;54868-0028-06
 ;;9002226.02101,"801,54868-0029-00 ",.01)
 ;;54868-0029-00
 ;;9002226.02101,"801,54868-0029-00 ",.02)
 ;;54868-0029-00
 ;;9002226.02101,"801,54868-0029-02 ",.01)
 ;;54868-0029-02
 ;;9002226.02101,"801,54868-0029-02 ",.02)
 ;;54868-0029-02
 ;;9002226.02101,"801,54868-0029-03 ",.01)
 ;;54868-0029-03
 ;;9002226.02101,"801,54868-0029-03 ",.02)
 ;;54868-0029-03
 ;;9002226.02101,"801,54868-0029-05 ",.01)
 ;;54868-0029-05
 ;;9002226.02101,"801,54868-0029-05 ",.02)
 ;;54868-0029-05
 ;;9002226.02101,"801,54868-0029-06 ",.01)
 ;;54868-0029-06
 ;;9002226.02101,"801,54868-0029-06 ",.02)
 ;;54868-0029-06
 ;;9002226.02101,"801,54868-0029-07 ",.01)
 ;;54868-0029-07
 ;;9002226.02101,"801,54868-0029-07 ",.02)
 ;;54868-0029-07
 ;;9002226.02101,"801,54868-1438-00 ",.01)
 ;;54868-1438-00
 ;;9002226.02101,"801,54868-1438-00 ",.02)
 ;;54868-1438-00
 ;;9002226.02101,"801,54868-1438-01 ",.01)
 ;;54868-1438-01
 ;;9002226.02101,"801,54868-1438-01 ",.02)
 ;;54868-1438-01
 ;;9002226.02101,"801,54868-1461-01 ",.01)
 ;;54868-1461-01
 ;;9002226.02101,"801,54868-1461-01 ",.02)
 ;;54868-1461-01
 ;;9002226.02101,"801,54868-1461-02 ",.01)
 ;;54868-1461-02
