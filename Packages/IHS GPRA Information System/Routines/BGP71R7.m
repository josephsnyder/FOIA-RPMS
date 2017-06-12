BGP71R7 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1803,57664-0467-08 ",.01)
 ;;57664-0467-08
 ;;9002226.02101,"1803,57664-0467-08 ",.02)
 ;;57664-0467-08
 ;;9002226.02101,"1803,57664-0471-08 ",.01)
 ;;57664-0471-08
 ;;9002226.02101,"1803,57664-0471-08 ",.02)
 ;;57664-0471-08
 ;;9002226.02101,"1803,58118-0314-05 ",.01)
 ;;58118-0314-05
 ;;9002226.02101,"1803,58118-0314-05 ",.02)
 ;;58118-0314-05
 ;;9002226.02101,"1803,58864-0296-42 ",.01)
 ;;58864-0296-42
 ;;9002226.02101,"1803,58864-0296-42 ",.02)
 ;;58864-0296-42
 ;;9002226.02101,"1803,58864-0296-90 ",.01)
 ;;58864-0296-90
 ;;9002226.02101,"1803,58864-0296-90 ",.02)
 ;;58864-0296-90
 ;;9002226.02101,"1803,60429-0534-01 ",.01)
 ;;60429-0534-01
 ;;9002226.02101,"1803,60429-0534-01 ",.02)
 ;;60429-0534-01
 ;;9002226.02101,"1803,60429-0535-01 ",.01)
 ;;60429-0535-01
 ;;9002226.02101,"1803,60429-0535-01 ",.02)
 ;;60429-0535-01
 ;;9002226.02101,"1803,60429-0570-01 ",.01)
 ;;60429-0570-01
 ;;9002226.02101,"1803,60429-0570-01 ",.02)
 ;;60429-0570-01
 ;;9002226.02101,"1803,60760-0314-20 ",.01)
 ;;60760-0314-20
 ;;9002226.02101,"1803,60760-0314-20 ",.02)
 ;;60760-0314-20
 ;;9002226.02101,"1803,60760-0402-30 ",.01)
 ;;60760-0402-30
 ;;9002226.02101,"1803,60760-0402-30 ",.02)
 ;;60760-0402-30
 ;;9002226.02101,"1803,60760-0607-14 ",.01)
 ;;60760-0607-14
 ;;9002226.02101,"1803,60760-0607-14 ",.02)
 ;;60760-0607-14
 ;;9002226.02101,"1803,61553-0170-41 ",.01)
 ;;61553-0170-41
 ;;9002226.02101,"1803,61553-0170-41 ",.02)
 ;;61553-0170-41
 ;;9002226.02101,"1803,61553-0172-48 ",.01)
 ;;61553-0172-48
 ;;9002226.02101,"1803,61553-0172-48 ",.02)
 ;;61553-0172-48
 ;;9002226.02101,"1803,61553-0173-48 ",.01)
 ;;61553-0173-48
 ;;9002226.02101,"1803,61553-0173-48 ",.02)
 ;;61553-0173-48
 ;;9002226.02101,"1803,61553-0611-75 ",.01)
 ;;61553-0611-75
 ;;9002226.02101,"1803,61553-0611-75 ",.02)
 ;;61553-0611-75
 ;;9002226.02101,"1803,61553-0623-75 ",.01)
 ;;61553-0623-75
 ;;9002226.02101,"1803,61553-0623-75 ",.02)
 ;;61553-0623-75
 ;;9002226.02101,"1803,61553-0674-67 ",.01)
 ;;61553-0674-67
 ;;9002226.02101,"1803,61553-0674-67 ",.02)
 ;;61553-0674-67
 ;;9002226.02101,"1803,61553-0675-76 ",.01)
 ;;61553-0675-76
 ;;9002226.02101,"1803,61553-0675-76 ",.02)
 ;;61553-0675-76
 ;;9002226.02101,"1803,61553-0676-67 ",.01)
 ;;61553-0676-67
 ;;9002226.02101,"1803,61553-0676-67 ",.02)
 ;;61553-0676-67
 ;;9002226.02101,"1803,61553-0677-76 ",.01)
 ;;61553-0677-76
 ;;9002226.02101,"1803,61553-0677-76 ",.02)
 ;;61553-0677-76
 ;;9002226.02101,"1803,61553-0841-48 ",.01)
 ;;61553-0841-48
 ;;9002226.02101,"1803,61553-0841-48 ",.02)
 ;;61553-0841-48
 ;;9002226.02101,"1803,61919-0129-30 ",.01)
 ;;61919-0129-30
 ;;9002226.02101,"1803,61919-0129-30 ",.02)
 ;;61919-0129-30
 ;;9002226.02101,"1803,61919-0130-15 ",.01)
 ;;61919-0130-15
 ;;9002226.02101,"1803,61919-0130-15 ",.02)
 ;;61919-0130-15
 ;;9002226.02101,"1803,61919-0130-90 ",.01)
 ;;61919-0130-90
 ;;9002226.02101,"1803,61919-0130-90 ",.02)
 ;;61919-0130-90
 ;;9002226.02101,"1803,61919-0138-10 ",.01)
 ;;61919-0138-10
 ;;9002226.02101,"1803,61919-0138-10 ",.02)
 ;;61919-0138-10
 ;;9002226.02101,"1803,61919-0138-15 ",.01)
 ;;61919-0138-15
 ;;9002226.02101,"1803,61919-0138-15 ",.02)
 ;;61919-0138-15
 ;;9002226.02101,"1803,61919-0138-20 ",.01)
 ;;61919-0138-20
 ;;9002226.02101,"1803,61919-0138-20 ",.02)
 ;;61919-0138-20
 ;;9002226.02101,"1803,61919-0138-30 ",.01)
 ;;61919-0138-30
 ;;9002226.02101,"1803,61919-0138-30 ",.02)
 ;;61919-0138-30
 ;;9002226.02101,"1803,61919-0556-30 ",.01)
 ;;61919-0556-30
 ;;9002226.02101,"1803,61919-0556-30 ",.02)
 ;;61919-0556-30
 ;;9002226.02101,"1803,63187-0282-30 ",.01)
 ;;63187-0282-30
 ;;9002226.02101,"1803,63187-0282-30 ",.02)
 ;;63187-0282-30
 ;;9002226.02101,"1803,63323-0161-01 ",.01)
 ;;63323-0161-01
 ;;9002226.02101,"1803,63323-0161-01 ",.02)
 ;;63323-0161-01
 ;;9002226.02101,"1803,63323-0161-12 ",.01)
 ;;63323-0161-12
 ;;9002226.02101,"1803,63323-0161-12 ",.02)
 ;;63323-0161-12
 ;;9002226.02101,"1803,63323-0161-16 ",.01)
 ;;63323-0161-16
 ;;9002226.02101,"1803,63323-0161-16 ",.02)
 ;;63323-0161-16
 ;;9002226.02101,"1803,63323-0162-01 ",.01)
 ;;63323-0162-01
 ;;9002226.02101,"1803,63323-0162-01 ",.02)
 ;;63323-0162-01
 ;;9002226.02101,"1803,63323-0162-02 ",.01)
 ;;63323-0162-02
 ;;9002226.02101,"1803,63323-0162-02 ",.02)
 ;;63323-0162-02
 ;;9002226.02101,"1803,63323-0162-12 ",.01)
 ;;63323-0162-12
 ;;9002226.02101,"1803,63323-0162-12 ",.02)
 ;;63323-0162-12
 ;;9002226.02101,"1803,63323-0162-14 ",.01)
 ;;63323-0162-14
 ;;9002226.02101,"1803,63323-0162-14 ",.02)
 ;;63323-0162-14
 ;;9002226.02101,"1803,63323-0162-16 ",.01)
 ;;63323-0162-16
 ;;9002226.02101,"1803,63323-0162-16 ",.02)
 ;;63323-0162-16
 ;;9002226.02101,"1803,63323-0162-26 ",.01)
 ;;63323-0162-26
 ;;9002226.02101,"1803,63323-0162-26 ",.02)
 ;;63323-0162-26
 ;;9002226.02101,"1803,63323-0659-03 ",.01)
 ;;63323-0659-03
 ;;9002226.02101,"1803,63323-0659-03 ",.02)
 ;;63323-0659-03
 ;;9002226.02101,"1803,63323-0659-09 ",.01)
 ;;63323-0659-09
 ;;9002226.02101,"1803,63323-0659-09 ",.02)
 ;;63323-0659-09
 ;;9002226.02101,"1803,63323-0659-94 ",.01)
 ;;63323-0659-94
 ;;9002226.02101,"1803,63323-0659-94 ",.02)
 ;;63323-0659-94
 ;;9002226.02101,"1803,63629-1418-01 ",.01)
 ;;63629-1418-01
 ;;9002226.02101,"1803,63629-1418-01 ",.02)
 ;;63629-1418-01
 ;;9002226.02101,"1803,63629-1418-02 ",.01)
 ;;63629-1418-02
 ;;9002226.02101,"1803,63629-1418-02 ",.02)
 ;;63629-1418-02
 ;;9002226.02101,"1803,63629-1418-03 ",.01)
 ;;63629-1418-03
 ;;9002226.02101,"1803,63629-1418-03 ",.02)
 ;;63629-1418-03
 ;;9002226.02101,"1803,63629-1418-04 ",.01)
 ;;63629-1418-04
 ;;9002226.02101,"1803,63629-1418-04 ",.02)
 ;;63629-1418-04
 ;;9002226.02101,"1803,63629-1418-05 ",.01)
 ;;63629-1418-05
 ;;9002226.02101,"1803,63629-1418-05 ",.02)
 ;;63629-1418-05
 ;;9002226.02101,"1803,63629-1418-06 ",.01)
 ;;63629-1418-06
 ;;9002226.02101,"1803,63629-1418-06 ",.02)
 ;;63629-1418-06
 ;;9002226.02101,"1803,63629-1780-01 ",.01)
 ;;63629-1780-01
 ;;9002226.02101,"1803,63629-1780-01 ",.02)
 ;;63629-1780-01
 ;;9002226.02101,"1803,63629-1780-02 ",.01)
 ;;63629-1780-02
 ;;9002226.02101,"1803,63629-1780-02 ",.02)
 ;;63629-1780-02
 ;;9002226.02101,"1803,63629-1780-03 ",.01)
 ;;63629-1780-03
 ;;9002226.02101,"1803,63629-1780-03 ",.02)
 ;;63629-1780-03
 ;;9002226.02101,"1803,63629-2974-01 ",.01)
 ;;63629-2974-01
 ;;9002226.02101,"1803,63629-2974-01 ",.02)
 ;;63629-2974-01
 ;;9002226.02101,"1803,63629-2974-02 ",.01)
 ;;63629-2974-02
 ;;9002226.02101,"1803,63629-2974-02 ",.02)
 ;;63629-2974-02
 ;;9002226.02101,"1803,63629-2974-03 ",.01)
 ;;63629-2974-03
 ;;9002226.02101,"1803,63629-2974-03 ",.02)
 ;;63629-2974-03
 ;;9002226.02101,"1803,63629-2974-04 ",.01)
 ;;63629-2974-04
 ;;9002226.02101,"1803,63629-2974-04 ",.02)
 ;;63629-2974-04
 ;;9002226.02101,"1803,63629-2974-05 ",.01)
 ;;63629-2974-05
 ;;9002226.02101,"1803,63629-2974-05 ",.02)
 ;;63629-2974-05
 ;;9002226.02101,"1803,63629-2974-06 ",.01)
 ;;63629-2974-06
 ;;9002226.02101,"1803,63629-2974-06 ",.02)
 ;;63629-2974-06
 ;;9002226.02101,"1803,63629-2974-07 ",.01)
 ;;63629-2974-07
 ;;9002226.02101,"1803,63629-2974-07 ",.02)
 ;;63629-2974-07
 ;;9002226.02101,"1803,63629-3201-01 ",.01)
 ;;63629-3201-01
 ;;9002226.02101,"1803,63629-3201-01 ",.02)
 ;;63629-3201-01
 ;;9002226.02101,"1803,63629-3201-02 ",.01)
 ;;63629-3201-02
 ;;9002226.02101,"1803,63629-3201-02 ",.02)
 ;;63629-3201-02
 ;;9002226.02101,"1803,63629-3201-03 ",.01)
 ;;63629-3201-03
 ;;9002226.02101,"1803,63629-3201-03 ",.02)
 ;;63629-3201-03
 ;;9002226.02101,"1803,63629-3206-01 ",.01)
 ;;63629-3206-01
 ;;9002226.02101,"1803,63629-3206-01 ",.02)
 ;;63629-3206-01
 ;;9002226.02101,"1803,63629-3206-02 ",.01)
 ;;63629-3206-02
 ;;9002226.02101,"1803,63629-3206-02 ",.02)
 ;;63629-3206-02
 ;;9002226.02101,"1803,63629-3206-03 ",.01)
 ;;63629-3206-03
 ;;9002226.02101,"1803,63629-3206-03 ",.02)
 ;;63629-3206-03
 ;;9002226.02101,"1803,63629-4549-01 ",.01)
 ;;63629-4549-01
 ;;9002226.02101,"1803,63629-4549-01 ",.02)
 ;;63629-4549-01
 ;;9002226.02101,"1803,63739-0472-05 ",.01)
 ;;63739-0472-05
 ;;9002226.02101,"1803,63739-0472-05 ",.02)
 ;;63739-0472-05
 ;;9002226.02101,"1803,63739-0472-21 ",.01)
 ;;63739-0472-21
 ;;9002226.02101,"1803,63739-0472-21 ",.02)
 ;;63739-0472-21
 ;;9002226.02101,"1803,63874-0220-01 ",.01)
 ;;63874-0220-01
 ;;9002226.02101,"1803,63874-0220-01 ",.02)
 ;;63874-0220-01
 ;;9002226.02101,"1803,63874-0220-03 ",.01)
 ;;63874-0220-03
 ;;9002226.02101,"1803,63874-0220-03 ",.02)
 ;;63874-0220-03
 ;;9002226.02101,"1803,63874-0220-04 ",.01)
 ;;63874-0220-04
 ;;9002226.02101,"1803,63874-0220-04 ",.02)
 ;;63874-0220-04
 ;;9002226.02101,"1803,63874-0220-10 ",.01)
 ;;63874-0220-10
 ;;9002226.02101,"1803,63874-0220-10 ",.02)
 ;;63874-0220-10
 ;;9002226.02101,"1803,63874-0220-12 ",.01)
 ;;63874-0220-12
 ;;9002226.02101,"1803,63874-0220-12 ",.02)
 ;;63874-0220-12
 ;;9002226.02101,"1803,63874-0220-15 ",.01)
 ;;63874-0220-15
 ;;9002226.02101,"1803,63874-0220-15 ",.02)
 ;;63874-0220-15
 ;;9002226.02101,"1803,63874-0220-20 ",.01)
 ;;63874-0220-20
 ;;9002226.02101,"1803,63874-0220-20 ",.02)
 ;;63874-0220-20
 ;;9002226.02101,"1803,63874-0220-30 ",.01)
 ;;63874-0220-30
 ;;9002226.02101,"1803,63874-0220-30 ",.02)
 ;;63874-0220-30
 ;;9002226.02101,"1803,63874-0220-35 ",.01)
 ;;63874-0220-35
 ;;9002226.02101,"1803,63874-0220-35 ",.02)
 ;;63874-0220-35
 ;;9002226.02101,"1803,63874-0220-40 ",.01)
 ;;63874-0220-40
 ;;9002226.02101,"1803,63874-0220-40 ",.02)
 ;;63874-0220-40
 ;;9002226.02101,"1803,63874-0220-60 ",.01)
 ;;63874-0220-60
 ;;9002226.02101,"1803,63874-0220-60 ",.02)
 ;;63874-0220-60
 ;;9002226.02101,"1803,63874-0220-90 ",.01)
 ;;63874-0220-90
 ;;9002226.02101,"1803,63874-0220-90 ",.02)
 ;;63874-0220-90
 ;;9002226.02101,"1803,63874-0318-01 ",.01)
 ;;63874-0318-01
 ;;9002226.02101,"1803,63874-0318-01 ",.02)
 ;;63874-0318-01
 ;;9002226.02101,"1803,63874-0318-02 ",.01)
 ;;63874-0318-02
 ;;9002226.02101,"1803,63874-0318-02 ",.02)
 ;;63874-0318-02
 ;;9002226.02101,"1803,63874-0318-08 ",.01)
 ;;63874-0318-08
 ;;9002226.02101,"1803,63874-0318-08 ",.02)
 ;;63874-0318-08
 ;;9002226.02101,"1803,63874-0318-20 ",.01)
 ;;63874-0318-20
 ;;9002226.02101,"1803,63874-0318-20 ",.02)
 ;;63874-0318-20
 ;;9002226.02101,"1803,63874-0318-21 ",.01)
 ;;63874-0318-21
 ;;9002226.02101,"1803,63874-0318-21 ",.02)
 ;;63874-0318-21
 ;;9002226.02101,"1803,63874-0318-22 ",.01)
 ;;63874-0318-22
 ;;9002226.02101,"1803,63874-0318-22 ",.02)
 ;;63874-0318-22
 ;;9002226.02101,"1803,63874-0318-25 ",.01)
 ;;63874-0318-25
 ;;9002226.02101,"1803,63874-0318-25 ",.02)
 ;;63874-0318-25
 ;;9002226.02101,"1803,63874-0318-28 ",.01)
 ;;63874-0318-28
 ;;9002226.02101,"1803,63874-0318-28 ",.02)
 ;;63874-0318-28
 ;;9002226.02101,"1803,63874-0318-30 ",.01)
 ;;63874-0318-30
 ;;9002226.02101,"1803,63874-0318-30 ",.02)
 ;;63874-0318-30
 ;;9002226.02101,"1803,63874-0318-40 ",.01)
 ;;63874-0318-40
 ;;9002226.02101,"1803,63874-0318-40 ",.02)
 ;;63874-0318-40
 ;;9002226.02101,"1803,63874-0318-50 ",.01)
 ;;63874-0318-50
 ;;9002226.02101,"1803,63874-0318-50 ",.02)
 ;;63874-0318-50
 ;;9002226.02101,"1803,63874-0318-60 ",.01)
 ;;63874-0318-60
 ;;9002226.02101,"1803,63874-0318-60 ",.02)
 ;;63874-0318-60
 ;;9002226.02101,"1803,63874-0318-75 ",.01)
 ;;63874-0318-75
 ;;9002226.02101,"1803,63874-0318-75 ",.02)
 ;;63874-0318-75
 ;;9002226.02101,"1803,63874-0318-90 ",.01)
 ;;63874-0318-90
 ;;9002226.02101,"1803,63874-0318-90 ",.02)
 ;;63874-0318-90
 ;;9002226.02101,"1803,63874-0394-01 ",.01)
 ;;63874-0394-01
 ;;9002226.02101,"1803,63874-0394-01 ",.02)
 ;;63874-0394-01
 ;;9002226.02101,"1803,63874-0394-02 ",.01)
 ;;63874-0394-02
