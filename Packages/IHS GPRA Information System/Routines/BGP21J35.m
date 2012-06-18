BGP21J35 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,63874-0588-80 ",.02)
 ;;63874-0588-80
 ;;9002226.02101,"1199,63874-0588-90 ",.01)
 ;;63874-0588-90
 ;;9002226.02101,"1199,63874-0588-90 ",.02)
 ;;63874-0588-90
 ;;9002226.02101,"1199,63874-0665-01 ",.01)
 ;;63874-0665-01
 ;;9002226.02101,"1199,63874-0665-01 ",.02)
 ;;63874-0665-01
 ;;9002226.02101,"1199,63874-0665-04 ",.01)
 ;;63874-0665-04
 ;;9002226.02101,"1199,63874-0665-04 ",.02)
 ;;63874-0665-04
 ;;9002226.02101,"1199,63874-0665-10 ",.01)
 ;;63874-0665-10
 ;;9002226.02101,"1199,63874-0665-10 ",.02)
 ;;63874-0665-10
 ;;9002226.02101,"1199,63874-0665-14 ",.01)
 ;;63874-0665-14
 ;;9002226.02101,"1199,63874-0665-14 ",.02)
 ;;63874-0665-14
 ;;9002226.02101,"1199,63874-0665-30 ",.01)
 ;;63874-0665-30
 ;;9002226.02101,"1199,63874-0665-30 ",.02)
 ;;63874-0665-30
 ;;9002226.02101,"1199,63874-0665-60 ",.01)
 ;;63874-0665-60
 ;;9002226.02101,"1199,63874-0665-60 ",.02)
 ;;63874-0665-60
 ;;9002226.02101,"1199,63874-0665-90 ",.01)
 ;;63874-0665-90
 ;;9002226.02101,"1199,63874-0665-90 ",.02)
 ;;63874-0665-90
 ;;9002226.02101,"1199,64720-0123-10 ",.01)
 ;;64720-0123-10
 ;;9002226.02101,"1199,64720-0123-10 ",.02)
 ;;64720-0123-10
 ;;9002226.02101,"1199,64720-0124-10 ",.01)
 ;;64720-0124-10
 ;;9002226.02101,"1199,64720-0124-10 ",.02)
 ;;64720-0124-10
 ;;9002226.02101,"1199,64720-0125-10 ",.01)
 ;;64720-0125-10
 ;;9002226.02101,"1199,64720-0125-10 ",.02)
 ;;64720-0125-10
 ;;9002226.02101,"1199,64720-0125-11 ",.01)
 ;;64720-0125-11
 ;;9002226.02101,"1199,64720-0125-11 ",.02)
 ;;64720-0125-11
 ;;9002226.02101,"1199,64764-0302-30 ",.01)
 ;;64764-0302-30
 ;;9002226.02101,"1199,64764-0302-30 ",.02)
 ;;64764-0302-30
 ;;9002226.02101,"1199,64764-0304-30 ",.01)
 ;;64764-0304-30
 ;;9002226.02101,"1199,64764-0304-30 ",.02)
 ;;64764-0304-30
 ;;9002226.02101,"1199,64909-0101-07 ",.01)
 ;;64909-0101-07
 ;;9002226.02101,"1199,64909-0101-07 ",.02)
 ;;64909-0101-07
 ;;9002226.02101,"1199,64909-0102-07 ",.01)
 ;;64909-0102-07
 ;;9002226.02101,"1199,64909-0102-07 ",.02)
 ;;64909-0102-07
 ;;9002226.02101,"1199,64909-0102-08 ",.01)
 ;;64909-0102-08
 ;;9002226.02101,"1199,64909-0102-08 ",.02)
 ;;64909-0102-08
 ;;9002226.02101,"1199,64909-0104-07 ",.01)
 ;;64909-0104-07
 ;;9002226.02101,"1199,64909-0104-07 ",.02)
 ;;64909-0104-07
 ;;9002226.02101,"1199,64909-0105-07 ",.01)
 ;;64909-0105-07
 ;;9002226.02101,"1199,64909-0105-07 ",.02)
 ;;64909-0105-07
 ;;9002226.02101,"1199,64909-0105-08 ",.01)
 ;;64909-0105-08
 ;;9002226.02101,"1199,64909-0105-08 ",.02)
 ;;64909-0105-08
 ;;9002226.02101,"1199,65243-0176-09 ",.01)
 ;;65243-0176-09
 ;;9002226.02101,"1199,65243-0176-09 ",.02)
 ;;65243-0176-09
 ;;9002226.02101,"1199,65243-0176-12 ",.01)
 ;;65243-0176-12
 ;;9002226.02101,"1199,65243-0176-12 ",.02)
 ;;65243-0176-12
 ;;9002226.02101,"1199,65243-0176-18 ",.01)
 ;;65243-0176-18
 ;;9002226.02101,"1199,65243-0176-18 ",.02)
 ;;65243-0176-18
 ;;9002226.02101,"1199,65243-0176-27 ",.01)
 ;;65243-0176-27
 ;;9002226.02101,"1199,65243-0176-27 ",.02)
 ;;65243-0176-27
 ;;9002226.02101,"1199,65243-0176-36 ",.01)
 ;;65243-0176-36
 ;;9002226.02101,"1199,65243-0176-36 ",.02)
 ;;65243-0176-36
 ;;9002226.02101,"1199,65243-0183-18 ",.01)
 ;;65243-0183-18
 ;;9002226.02101,"1199,65243-0183-18 ",.02)
 ;;65243-0183-18
 ;;9002226.02101,"1199,65243-0185-36 ",.01)
 ;;65243-0185-36
 ;;9002226.02101,"1199,65243-0185-36 ",.02)
 ;;65243-0185-36
 ;;9002226.02101,"1199,65243-0325-09 ",.01)
 ;;65243-0325-09
 ;;9002226.02101,"1199,65243-0325-09 ",.02)
 ;;65243-0325-09
 ;;9002226.02101,"1199,65243-0325-18 ",.01)
 ;;65243-0325-18
 ;;9002226.02101,"1199,65243-0325-18 ",.02)
 ;;65243-0325-18
 ;;9002226.02101,"1199,65243-0343-09 ",.01)
 ;;65243-0343-09
 ;;9002226.02101,"1199,65243-0343-09 ",.02)
 ;;65243-0343-09
 ;;9002226.02101,"1199,65243-0343-36 ",.01)
 ;;65243-0343-36
 ;;9002226.02101,"1199,65243-0343-36 ",.02)
 ;;65243-0343-36
 ;;9002226.02101,"1199,65243-0346-09 ",.01)
 ;;65243-0346-09
 ;;9002226.02101,"1199,65243-0346-09 ",.02)
 ;;65243-0346-09
 ;;9002226.02101,"1199,65243-0375-09 ",.01)
 ;;65243-0375-09
 ;;9002226.02101,"1199,65243-0375-09 ",.02)
 ;;65243-0375-09
 ;;9002226.02101,"1199,65243-0378-09 ",.01)
 ;;65243-0378-09
 ;;9002226.02101,"1199,65243-0378-09 ",.02)
 ;;65243-0378-09
 ;;9002226.02101,"1199,65862-0028-01 ",.01)
 ;;65862-0028-01
 ;;9002226.02101,"1199,65862-0028-01 ",.02)
 ;;65862-0028-01
 ;;9002226.02101,"1199,65862-0029-01 ",.01)
 ;;65862-0029-01
 ;;9002226.02101,"1199,65862-0029-01 ",.02)
 ;;65862-0029-01
 ;;9002226.02101,"1199,65862-0029-05 ",.01)
 ;;65862-0029-05
 ;;9002226.02101,"1199,65862-0029-05 ",.02)
 ;;65862-0029-05
 ;;9002226.02101,"1199,65862-0030-01 ",.01)
 ;;65862-0030-01
 ;;9002226.02101,"1199,65862-0030-01 ",.02)
 ;;65862-0030-01
 ;;9002226.02101,"1199,65862-0030-99 ",.01)
 ;;65862-0030-99
 ;;9002226.02101,"1199,65862-0030-99 ",.02)
 ;;65862-0030-99
 ;;9002226.02101,"1199,65862-0080-01 ",.01)
 ;;65862-0080-01
 ;;9002226.02101,"1199,65862-0080-01 ",.02)
 ;;65862-0080-01
 ;;9002226.02101,"1199,65862-0080-05 ",.01)
 ;;65862-0080-05
 ;;9002226.02101,"1199,65862-0080-05 ",.02)
 ;;65862-0080-05
 ;;9002226.02101,"1199,65862-0081-01 ",.01)
 ;;65862-0081-01
 ;;9002226.02101,"1199,65862-0081-01 ",.02)
 ;;65862-0081-01
