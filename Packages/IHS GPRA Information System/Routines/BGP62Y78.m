BGP62Y78 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"868,58864-0072-30 ",.02)
 ;;58864-0072-30
 ;;9002226.02101,"868,58864-0072-40 ",.01)
 ;;58864-0072-40
 ;;9002226.02101,"868,58864-0072-40 ",.02)
 ;;58864-0072-40
 ;;9002226.02101,"868,58864-0073-20 ",.01)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-20 ",.02)
 ;;58864-0073-20
 ;;9002226.02101,"868,58864-0073-28 ",.01)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-28 ",.02)
 ;;58864-0073-28
 ;;9002226.02101,"868,58864-0073-30 ",.01)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-30 ",.02)
 ;;58864-0073-30
 ;;9002226.02101,"868,58864-0073-40 ",.01)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-40 ",.02)
 ;;58864-0073-40
 ;;9002226.02101,"868,58864-0073-56 ",.01)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0073-56 ",.02)
 ;;58864-0073-56
 ;;9002226.02101,"868,58864-0149-40 ",.01)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0149-40 ",.02)
 ;;58864-0149-40
 ;;9002226.02101,"868,58864-0150-30 ",.01)
 ;;58864-0150-30
 ;;9002226.02101,"868,58864-0150-30 ",.02)
 ;;58864-0150-30
 ;;9002226.02101,"868,58864-0189-10 ",.01)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-10 ",.02)
 ;;58864-0189-10
 ;;9002226.02101,"868,58864-0189-20 ",.01)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-20 ",.02)
 ;;58864-0189-20
 ;;9002226.02101,"868,58864-0189-28 ",.01)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0189-28 ",.02)
 ;;58864-0189-28
 ;;9002226.02101,"868,58864-0190-12 ",.01)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-12 ",.02)
 ;;58864-0190-12
 ;;9002226.02101,"868,58864-0190-20 ",.01)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-20 ",.02)
 ;;58864-0190-20
 ;;9002226.02101,"868,58864-0190-28 ",.01)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-28 ",.02)
 ;;58864-0190-28
 ;;9002226.02101,"868,58864-0190-30 ",.01)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0190-30 ",.02)
 ;;58864-0190-30
 ;;9002226.02101,"868,58864-0195-40 ",.01)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0195-40 ",.02)
 ;;58864-0195-40
 ;;9002226.02101,"868,58864-0379-40 ",.01)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0379-40 ",.02)
 ;;58864-0379-40
 ;;9002226.02101,"868,58864-0478-06 ",.01)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-06 ",.02)
 ;;58864-0478-06
 ;;9002226.02101,"868,58864-0478-10 ",.01)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-10 ",.02)
 ;;58864-0478-10
 ;;9002226.02101,"868,58864-0478-14 ",.01)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-14 ",.02)
 ;;58864-0478-14
 ;;9002226.02101,"868,58864-0478-20 ",.01)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-20 ",.02)
 ;;58864-0478-20
 ;;9002226.02101,"868,58864-0478-30 ",.01)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0478-30 ",.02)
 ;;58864-0478-30
 ;;9002226.02101,"868,58864-0607-40 ",.01)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-40 ",.02)
 ;;58864-0607-40
 ;;9002226.02101,"868,58864-0607-60 ",.01)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0607-60 ",.02)
 ;;58864-0607-60
 ;;9002226.02101,"868,58864-0612-28 ",.01)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0612-28 ",.02)
 ;;58864-0612-28
 ;;9002226.02101,"868,58864-0615-30 ",.01)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0615-30 ",.02)
 ;;58864-0615-30
 ;;9002226.02101,"868,58864-0621-05 ",.01)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-05 ",.02)
 ;;58864-0621-05
 ;;9002226.02101,"868,58864-0621-10 ",.01)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-10 ",.02)
 ;;58864-0621-10
 ;;9002226.02101,"868,58864-0621-30 ",.01)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0621-30 ",.02)
 ;;58864-0621-30
 ;;9002226.02101,"868,58864-0632-40 ",.01)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0632-40 ",.02)
 ;;58864-0632-40
 ;;9002226.02101,"868,58864-0637-14 ",.01)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-14 ",.02)
 ;;58864-0637-14
 ;;9002226.02101,"868,58864-0637-20 ",.01)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-20 ",.02)
 ;;58864-0637-20
 ;;9002226.02101,"868,58864-0637-30 ",.01)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0637-30 ",.02)
 ;;58864-0637-30
 ;;9002226.02101,"868,58864-0655-04 ",.01)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-04 ",.02)
 ;;58864-0655-04
 ;;9002226.02101,"868,58864-0655-06 ",.01)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-06 ",.02)
 ;;58864-0655-06
 ;;9002226.02101,"868,58864-0655-14 ",.01)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-14 ",.02)
 ;;58864-0655-14
 ;;9002226.02101,"868,58864-0655-30 ",.01)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0655-30 ",.02)
 ;;58864-0655-30
 ;;9002226.02101,"868,58864-0675-30 ",.01)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-30 ",.02)
 ;;58864-0675-30
 ;;9002226.02101,"868,58864-0675-40 ",.01)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0675-40 ",.02)
 ;;58864-0675-40
 ;;9002226.02101,"868,58864-0690-20 ",.01)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0690-20 ",.02)
 ;;58864-0690-20
 ;;9002226.02101,"868,58864-0767-20 ",.01)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-20 ",.02)
 ;;58864-0767-20
 ;;9002226.02101,"868,58864-0767-21 ",.01)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-21 ",.02)
 ;;58864-0767-21
 ;;9002226.02101,"868,58864-0767-30 ",.01)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0767-30 ",.02)
 ;;58864-0767-30
 ;;9002226.02101,"868,58864-0775-20 ",.01)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0775-20 ",.02)
 ;;58864-0775-20
 ;;9002226.02101,"868,58864-0791-06 ",.01)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0791-06 ",.02)
 ;;58864-0791-06
 ;;9002226.02101,"868,58864-0806-06 ",.01)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-06 ",.02)
 ;;58864-0806-06
 ;;9002226.02101,"868,58864-0806-14 ",.01)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-14 ",.02)
 ;;58864-0806-14
 ;;9002226.02101,"868,58864-0806-20 ",.01)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0806-20 ",.02)
 ;;58864-0806-20
 ;;9002226.02101,"868,58864-0833-10 ",.01)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-10 ",.02)
 ;;58864-0833-10
 ;;9002226.02101,"868,58864-0833-20 ",.01)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0833-20 ",.02)
 ;;58864-0833-20
 ;;9002226.02101,"868,58864-0837-20 ",.01)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0837-20 ",.02)
 ;;58864-0837-20
 ;;9002226.02101,"868,58864-0845-30 ",.01)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-30 ",.02)
 ;;58864-0845-30
 ;;9002226.02101,"868,58864-0845-40 ",.01)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0845-40 ",.02)
 ;;58864-0845-40
 ;;9002226.02101,"868,58864-0848-30 ",.01)
 ;;58864-0848-30
 ;;9002226.02101,"868,58864-0848-30 ",.02)
 ;;58864-0848-30
 ;;9002226.02101,"868,59366-7338-01 ",.01)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7338-01 ",.02)
 ;;59366-7338-01
 ;;9002226.02101,"868,59366-7339-01 ",.01)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7339-01 ",.02)
 ;;59366-7339-01
 ;;9002226.02101,"868,59366-7340-05 ",.01)
 ;;59366-7340-05
 ;;9002226.02101,"868,59366-7340-05 ",.02)
 ;;59366-7340-05
 ;;9002226.02101,"868,59630-0112-10 ",.01)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0112-10 ",.02)
 ;;59630-0112-10
 ;;9002226.02101,"868,59630-0113-05 ",.01)
 ;;59630-0113-05
 ;;9002226.02101,"868,59630-0113-05 ",.02)
 ;;59630-0113-05
 ;;9002226.02101,"868,59630-0113-10 ",.01)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0113-10 ",.02)
 ;;59630-0113-10
 ;;9002226.02101,"868,59630-0115-05 ",.01)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0115-05 ",.02)
 ;;59630-0115-05
 ;;9002226.02101,"868,59630-0142-03 ",.01)
 ;;59630-0142-03
 ;;9002226.02101,"868,59630-0142-03 ",.02)
 ;;59630-0142-03
 ;;9002226.02101,"868,59630-0821-12 ",.01)
 ;;59630-0821-12
 ;;9002226.02101,"868,59630-0821-12 ",.02)
 ;;59630-0821-12
 ;;9002226.02101,"868,59630-0821-60 ",.01)
 ;;59630-0821-60
 ;;9002226.02101,"868,59630-0821-60 ",.02)
 ;;59630-0821-60
 ;;9002226.02101,"868,59630-0821-90 ",.01)
 ;;59630-0821-90
 ;;9002226.02101,"868,59630-0821-90 ",.02)
 ;;59630-0821-90
 ;;9002226.02101,"868,59762-0016-01 ",.01)
 ;;59762-0016-01
 ;;9002226.02101,"868,59762-0016-01 ",.02)
 ;;59762-0016-01
 ;;9002226.02101,"868,59762-0278-02 ",.01)
 ;;59762-0278-02
 ;;9002226.02101,"868,59762-0278-02 ",.02)
 ;;59762-0278-02
 ;;9002226.02101,"868,59762-0279-02 ",.01)
 ;;59762-0279-02
 ;;9002226.02101,"868,59762-0279-02 ",.02)
 ;;59762-0279-02
 ;;9002226.02101,"868,59762-0280-03 ",.01)
 ;;59762-0280-03
 ;;9002226.02101,"868,59762-0280-03 ",.02)
 ;;59762-0280-03
 ;;9002226.02101,"868,59762-1020-01 ",.01)
 ;;59762-1020-01
 ;;9002226.02101,"868,59762-1020-01 ",.02)
 ;;59762-1020-01
 ;;9002226.02101,"868,59762-1020-03 ",.01)
 ;;59762-1020-03
 ;;9002226.02101,"868,59762-1020-03 ",.02)
 ;;59762-1020-03
 ;;9002226.02101,"868,59762-1021-01 ",.01)
 ;;59762-1021-01
 ;;9002226.02101,"868,59762-1021-01 ",.02)
 ;;59762-1021-01
 ;;9002226.02101,"868,59762-1021-07 ",.01)
 ;;59762-1021-07
 ;;9002226.02101,"868,59762-1021-07 ",.02)
 ;;59762-1021-07
 ;;9002226.02101,"868,59762-1022-02 ",.01)
 ;;59762-1022-02
 ;;9002226.02101,"868,59762-1022-02 ",.02)
 ;;59762-1022-02
 ;;9002226.02101,"868,59762-1022-04 ",.01)
 ;;59762-1022-04
 ;;9002226.02101,"868,59762-1022-04 ",.02)
 ;;59762-1022-04
 ;;9002226.02101,"868,59762-1022-07 ",.01)
 ;;59762-1022-07
 ;;9002226.02101,"868,59762-1022-07 ",.02)
 ;;59762-1022-07
 ;;9002226.02101,"868,59762-1023-04 ",.01)
 ;;59762-1023-04
 ;;9002226.02101,"868,59762-1023-04 ",.02)
 ;;59762-1023-04
 ;;9002226.02101,"868,59762-1023-05 ",.01)
 ;;59762-1023-05
 ;;9002226.02101,"868,59762-1023-05 ",.02)
 ;;59762-1023-05
 ;;9002226.02101,"868,59762-1023-06 ",.01)
 ;;59762-1023-06
 ;;9002226.02101,"868,59762-1023-06 ",.02)
 ;;59762-1023-06
 ;;9002226.02101,"868,59762-1050-02 ",.01)
 ;;59762-1050-02
 ;;9002226.02101,"868,59762-1050-02 ",.02)
 ;;59762-1050-02
 ;;9002226.02101,"868,59762-1050-05 ",.01)
 ;;59762-1050-05
 ;;9002226.02101,"868,59762-1050-05 ",.02)
 ;;59762-1050-05
 ;;9002226.02101,"868,59762-1081-01 ",.01)
 ;;59762-1081-01
 ;;9002226.02101,"868,59762-1081-01 ",.02)
 ;;59762-1081-01
 ;;9002226.02101,"868,59762-1081-02 ",.01)
 ;;59762-1081-02
 ;;9002226.02101,"868,59762-1081-02 ",.02)
 ;;59762-1081-02
 ;;9002226.02101,"868,59762-1083-01 ",.01)
 ;;59762-1083-01
 ;;9002226.02101,"868,59762-1083-01 ",.02)
 ;;59762-1083-01
 ;;9002226.02101,"868,59762-1083-02 ",.01)
 ;;59762-1083-02
 ;;9002226.02101,"868,59762-1083-02 ",.02)
 ;;59762-1083-02
 ;;9002226.02101,"868,59762-1534-01 ",.01)
 ;;59762-1534-01
 ;;9002226.02101,"868,59762-1534-01 ",.02)
 ;;59762-1534-01
 ;;9002226.02101,"868,59762-1534-02 ",.01)
 ;;59762-1534-02
 ;;9002226.02101,"868,59762-1534-02 ",.02)
 ;;59762-1534-02
 ;;9002226.02101,"868,59762-1537-01 ",.01)
 ;;59762-1537-01
 ;;9002226.02101,"868,59762-1537-01 ",.02)
 ;;59762-1537-01
 ;;9002226.02101,"868,59762-1537-02 ",.01)
 ;;59762-1537-02
 ;;9002226.02101,"868,59762-1537-02 ",.02)
 ;;59762-1537-02
 ;;9002226.02101,"868,59762-1537-03 ",.01)
 ;;59762-1537-03
 ;;9002226.02101,"868,59762-1537-03 ",.02)
 ;;59762-1537-03
 ;;9002226.02101,"868,59762-2000-01 ",.01)
 ;;59762-2000-01
 ;;9002226.02101,"868,59762-2000-01 ",.02)
 ;;59762-2000-01
 ;;9002226.02101,"868,59762-2000-04 ",.01)
 ;;59762-2000-04
 ;;9002226.02101,"868,59762-2000-04 ",.02)
 ;;59762-2000-04
 ;;9002226.02101,"868,59762-2180-01 ",.01)
 ;;59762-2180-01
 ;;9002226.02101,"868,59762-2180-01 ",.02)
 ;;59762-2180-01
 ;;9002226.02101,"868,59762-2220-02 ",.01)
 ;;59762-2220-02
 ;;9002226.02101,"868,59762-2220-02 ",.02)
 ;;59762-2220-02
 ;;9002226.02101,"868,59762-2221-01 ",.01)
 ;;59762-2221-01
 ;;9002226.02101,"868,59762-2221-01 ",.02)
 ;;59762-2221-01
 ;;9002226.02101,"868,59762-2221-02 ",.01)
 ;;59762-2221-02
