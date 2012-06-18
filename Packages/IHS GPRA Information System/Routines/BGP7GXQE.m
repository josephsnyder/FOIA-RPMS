BGP7GXQE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 27, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"630,55887-0306-90 ",.02)
 ;;55887-0306-90
 ;;9002226.02101,"630,55887-0307-30 ",.01)
 ;;55887-0307-30
 ;;9002226.02101,"630,55887-0307-30 ",.02)
 ;;55887-0307-30
 ;;9002226.02101,"630,55887-0307-60 ",.01)
 ;;55887-0307-60
 ;;9002226.02101,"630,55887-0307-60 ",.02)
 ;;55887-0307-60
 ;;9002226.02101,"630,55887-0307-90 ",.01)
 ;;55887-0307-90
 ;;9002226.02101,"630,55887-0307-90 ",.02)
 ;;55887-0307-90
 ;;9002226.02101,"630,55887-0334-30 ",.01)
 ;;55887-0334-30
 ;;9002226.02101,"630,55887-0334-30 ",.02)
 ;;55887-0334-30
 ;;9002226.02101,"630,55887-0334-60 ",.01)
 ;;55887-0334-60
 ;;9002226.02101,"630,55887-0334-60 ",.02)
 ;;55887-0334-60
 ;;9002226.02101,"630,55887-0334-90 ",.01)
 ;;55887-0334-90
 ;;9002226.02101,"630,55887-0334-90 ",.02)
 ;;55887-0334-90
 ;;9002226.02101,"630,55887-0342-30 ",.01)
 ;;55887-0342-30
 ;;9002226.02101,"630,55887-0342-30 ",.02)
 ;;55887-0342-30
 ;;9002226.02101,"630,55887-0342-60 ",.01)
 ;;55887-0342-60
 ;;9002226.02101,"630,55887-0342-60 ",.02)
 ;;55887-0342-60
 ;;9002226.02101,"630,55887-0342-90 ",.01)
 ;;55887-0342-90
 ;;9002226.02101,"630,55887-0342-90 ",.02)
 ;;55887-0342-90
 ;;9002226.02101,"630,55887-0766-04 ",.01)
 ;;55887-0766-04
 ;;9002226.02101,"630,55887-0766-04 ",.02)
 ;;55887-0766-04
 ;;9002226.02101,"630,57866-6681-01 ",.01)
 ;;57866-6681-01
 ;;9002226.02101,"630,57866-6681-01 ",.02)
 ;;57866-6681-01
 ;;9002226.02101,"630,57866-6681-02 ",.01)
 ;;57866-6681-02
 ;;9002226.02101,"630,57866-6681-02 ",.02)
 ;;57866-6681-02
 ;;9002226.02101,"630,57866-6681-03 ",.01)
 ;;57866-6681-03
 ;;9002226.02101,"630,57866-6681-03 ",.02)
 ;;57866-6681-03
 ;;9002226.02101,"630,57866-6682-01 ",.01)
 ;;57866-6682-01
 ;;9002226.02101,"630,57866-6682-01 ",.02)
 ;;57866-6682-01
 ;;9002226.02101,"630,57866-7987-01 ",.01)
 ;;57866-7987-01
 ;;9002226.02101,"630,57866-7987-01 ",.02)
 ;;57866-7987-01
 ;;9002226.02101,"630,58016-0744-00 ",.01)
 ;;58016-0744-00
 ;;9002226.02101,"630,58016-0744-00 ",.02)
 ;;58016-0744-00
 ;;9002226.02101,"630,58016-0744-10 ",.01)
 ;;58016-0744-10
 ;;9002226.02101,"630,58016-0744-10 ",.02)
 ;;58016-0744-10
 ;;9002226.02101,"630,58016-0744-12 ",.01)
 ;;58016-0744-12
 ;;9002226.02101,"630,58016-0744-12 ",.02)
 ;;58016-0744-12
 ;;9002226.02101,"630,58016-0744-14 ",.01)
 ;;58016-0744-14
 ;;9002226.02101,"630,58016-0744-14 ",.02)
 ;;58016-0744-14
 ;;9002226.02101,"630,58016-0744-15 ",.01)
 ;;58016-0744-15
 ;;9002226.02101,"630,58016-0744-15 ",.02)
 ;;58016-0744-15
 ;;9002226.02101,"630,58016-0744-20 ",.01)
 ;;58016-0744-20
 ;;9002226.02101,"630,58016-0744-20 ",.02)
 ;;58016-0744-20
 ;;9002226.02101,"630,58016-0744-30 ",.01)
 ;;58016-0744-30
 ;;9002226.02101,"630,58016-0744-30 ",.02)
 ;;58016-0744-30
 ;;9002226.02101,"630,58016-0948-00 ",.01)
 ;;58016-0948-00
 ;;9002226.02101,"630,58016-0948-00 ",.02)
 ;;58016-0948-00
 ;;9002226.02101,"630,58016-0948-10 ",.01)
 ;;58016-0948-10
 ;;9002226.02101,"630,58016-0948-10 ",.02)
 ;;58016-0948-10
 ;;9002226.02101,"630,58016-0948-12 ",.01)
 ;;58016-0948-12
 ;;9002226.02101,"630,58016-0948-12 ",.02)
 ;;58016-0948-12
 ;;9002226.02101,"630,58016-0948-14 ",.01)
 ;;58016-0948-14
 ;;9002226.02101,"630,58016-0948-14 ",.02)
 ;;58016-0948-14
 ;;9002226.02101,"630,58016-0948-15 ",.01)
 ;;58016-0948-15
 ;;9002226.02101,"630,58016-0948-15 ",.02)
 ;;58016-0948-15
 ;;9002226.02101,"630,58016-0948-20 ",.01)
 ;;58016-0948-20
 ;;9002226.02101,"630,58016-0948-20 ",.02)
 ;;58016-0948-20
 ;;9002226.02101,"630,58016-0948-30 ",.01)
 ;;58016-0948-30
 ;;9002226.02101,"630,58016-0948-30 ",.02)
 ;;58016-0948-30
 ;;9002226.02101,"630,58016-0948-50 ",.01)
 ;;58016-0948-50
 ;;9002226.02101,"630,58016-0948-50 ",.02)
 ;;58016-0948-50
 ;;9002226.02101,"630,58016-0983-00 ",.01)
 ;;58016-0983-00
 ;;9002226.02101,"630,58016-0983-00 ",.02)
 ;;58016-0983-00
 ;;9002226.02101,"630,58016-0983-10 ",.01)
 ;;58016-0983-10
 ;;9002226.02101,"630,58016-0983-10 ",.02)
 ;;58016-0983-10
 ;;9002226.02101,"630,58016-0983-12 ",.01)
 ;;58016-0983-12
 ;;9002226.02101,"630,58016-0983-12 ",.02)
 ;;58016-0983-12
 ;;9002226.02101,"630,58016-0983-14 ",.01)
 ;;58016-0983-14
 ;;9002226.02101,"630,58016-0983-14 ",.02)
 ;;58016-0983-14
 ;;9002226.02101,"630,58016-0983-15 ",.01)
 ;;58016-0983-15
 ;;9002226.02101,"630,58016-0983-15 ",.02)
 ;;58016-0983-15
 ;;9002226.02101,"630,58016-0983-20 ",.01)
 ;;58016-0983-20
 ;;9002226.02101,"630,58016-0983-20 ",.02)
 ;;58016-0983-20
 ;;9002226.02101,"630,58016-0983-30 ",.01)
 ;;58016-0983-30
 ;;9002226.02101,"630,58016-0983-30 ",.02)
 ;;58016-0983-30
 ;;9002226.02101,"630,58016-4074-01 ",.01)
 ;;58016-4074-01
 ;;9002226.02101,"630,58016-4074-01 ",.02)
 ;;58016-4074-01
 ;;9002226.02101,"630,58864-0421-01 ",.01)
 ;;58864-0421-01
 ;;9002226.02101,"630,58864-0421-01 ",.02)
 ;;58864-0421-01
 ;;9002226.02101,"630,58864-0804-30 ",.01)
 ;;58864-0804-30
 ;;9002226.02101,"630,58864-0804-30 ",.02)
 ;;58864-0804-30
 ;;9002226.02101,"630,59243-0560-01 ",.01)
 ;;59243-0560-01
 ;;9002226.02101,"630,59243-0560-01 ",.02)
 ;;59243-0560-01
 ;;9002226.02101,"630,59243-0570-01 ",.01)
 ;;59243-0570-01
 ;;9002226.02101,"630,59243-0570-01 ",.02)
 ;;59243-0570-01
 ;;9002226.02101,"630,59772-0025-03 ",.01)
 ;;59772-0025-03
 ;;9002226.02101,"630,59772-0025-03 ",.02)
 ;;59772-0025-03
 ;;9002226.02101,"630,59772-0026-03 ",.01)
 ;;59772-0026-03
 ;;9002226.02101,"630,59772-0026-03 ",.02)
 ;;59772-0026-03
 ;;9002226.02101,"630,59772-0026-04 ",.01)
 ;;59772-0026-04
 ;;9002226.02101,"630,59772-0026-04 ",.02)
 ;;59772-0026-04
 ;;9002226.02101,"630,59772-0027-03 ",.01)
 ;;59772-0027-03
 ;;9002226.02101,"630,59772-0027-03 ",.02)
 ;;59772-0027-03
 ;;9002226.02101,"630,59772-0027-04 ",.01)
 ;;59772-0027-04
 ;;9002226.02101,"630,59772-0027-04 ",.02)
 ;;59772-0027-04
 ;;9002226.02101,"630,59911-5879-02 ",.01)
 ;;59911-5879-02
 ;;9002226.02101,"630,59911-5879-02 ",.02)
 ;;59911-5879-02
 ;;9002226.02101,"630,59911-5880-02 ",.01)
 ;;59911-5880-02
 ;;9002226.02101,"630,59911-5880-02 ",.02)
 ;;59911-5880-02
 ;;9002226.02101,"630,59911-5882-02 ",.01)
 ;;59911-5882-02
 ;;9002226.02101,"630,59911-5882-02 ",.02)
 ;;59911-5882-02
 ;;9002226.02101,"630,60346-0318-40 ",.01)
 ;;60346-0318-40
 ;;9002226.02101,"630,60346-0318-40 ",.02)
 ;;60346-0318-40
 ;;9002226.02101,"630,61570-0072-01 ",.01)
 ;;61570-0072-01
 ;;9002226.02101,"630,61570-0072-01 ",.02)
 ;;61570-0072-01
 ;;9002226.02101,"630,61570-0073-01 ",.01)
 ;;61570-0073-01
 ;;9002226.02101,"630,61570-0073-01 ",.02)
 ;;61570-0073-01
 ;;9002226.02101,"630,61570-0074-01 ",.01)
 ;;61570-0074-01
 ;;9002226.02101,"630,61570-0074-01 ",.02)
 ;;61570-0074-01
 ;;9002226.02101,"630,61570-0075-50 ",.01)
 ;;61570-0075-50
 ;;9002226.02101,"630,61570-0075-50 ",.02)
 ;;61570-0075-50
 ;;9002226.02101,"630,62584-0673-01 ",.01)
 ;;62584-0673-01
 ;;9002226.02101,"630,62584-0673-01 ",.02)
 ;;62584-0673-01
 ;;9002226.02101,"630,64248-0101-01 ",.01)
 ;;64248-0101-01
 ;;9002226.02101,"630,64248-0101-01 ",.02)
 ;;64248-0101-01
 ;;9002226.02101,"630,64248-0102-01 ",.01)
 ;;64248-0102-01
 ;;9002226.02101,"630,64248-0102-01 ",.02)
 ;;64248-0102-01
 ;;9002226.02101,"630,66116-0250-30 ",.01)
 ;;66116-0250-30
 ;;9002226.02101,"630,66116-0250-30 ",.02)
 ;;66116-0250-30
 ;;9002226.02101,"630,66500-0158-01 ",.01)
 ;;66500-0158-01
 ;;9002226.02101,"630,66500-0158-01 ",.02)
 ;;66500-0158-01
 ;;9002226.02101,"630,66500-0259-01 ",.01)
 ;;66500-0259-01
 ;;9002226.02101,"630,66500-0259-01 ",.02)
 ;;66500-0259-01
 ;;9002226.02101,"630,66500-0748-01 ",.01)
 ;;66500-0748-01
 ;;9002226.02101,"630,66500-0748-01 ",.02)
 ;;66500-0748-01
 ;;9002226.02101,"630,66500-0768-01 ",.01)
 ;;66500-0768-01
 ;;9002226.02101,"630,66500-0768-01 ",.02)
 ;;66500-0768-01
 ;;9002226.02101,"630,66576-0230-01 ",.01)
 ;;66576-0230-01
 ;;9002226.02101,"630,66576-0230-01 ",.02)
 ;;66576-0230-01
 ;;9002226.02101,"630,66576-0231-01 ",.01)
 ;;66576-0231-01
 ;;9002226.02101,"630,66576-0231-01 ",.02)
 ;;66576-0231-01
 ;;9002226.02101,"630,68047-0133-16 ",.01)
 ;;68047-0133-16
 ;;9002226.02101,"630,68047-0133-16 ",.02)
 ;;68047-0133-16
 ;;9002226.02101,"630,68115-0259-28 ",.01)
 ;;68115-0259-28
 ;;9002226.02101,"630,68115-0259-28 ",.02)
 ;;68115-0259-28
 ;;9002226.02101,"630,68115-0294-30 ",.01)
 ;;68115-0294-30
 ;;9002226.02101,"630,68115-0294-30 ",.02)
 ;;68115-0294-30
 ;;9002226.02101,"630,68115-0387-30 ",.01)
 ;;68115-0387-30
 ;;9002226.02101,"630,68115-0387-30 ",.02)
 ;;68115-0387-30
 ;;9002226.02101,"630,68115-0387-60 ",.01)
 ;;68115-0387-60
 ;;9002226.02101,"630,68115-0387-60 ",.02)
 ;;68115-0387-60
 ;;9002226.02101,"630,68115-0388-30 ",.01)
 ;;68115-0388-30
 ;;9002226.02101,"630,68115-0388-30 ",.02)
 ;;68115-0388-30
 ;;9002226.02101,"630,68115-0388-60 ",.01)
 ;;68115-0388-60
 ;;9002226.02101,"630,68115-0388-60 ",.02)
 ;;68115-0388-60
