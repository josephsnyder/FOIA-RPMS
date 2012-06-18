BGP82TNH ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUN 09, 2008;
 ;;8.0;IHS CLINICAL REPORTING;**2**;MAR 12, 2008
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"801,00405-4987-01 ",.01)
 ;;00405-4987-01
 ;;9002226.02101,"801,00405-4987-01 ",.02)
 ;;00405-4987-01
 ;;9002226.02101,"801,00405-4987-02 ",.01)
 ;;00405-4987-02
 ;;9002226.02101,"801,00405-4987-02 ",.02)
 ;;00405-4987-02
 ;;9002226.02101,"801,00405-4988-01 ",.01)
 ;;00405-4988-01
 ;;9002226.02101,"801,00405-4988-01 ",.02)
 ;;00405-4988-01
 ;;9002226.02101,"801,00405-4988-02 ",.01)
 ;;00405-4988-02
 ;;9002226.02101,"801,00405-4988-02 ",.02)
 ;;00405-4988-02
 ;;9002226.02101,"801,00409-5921-01 ",.01)
 ;;00409-5921-01
 ;;9002226.02101,"801,00409-5921-01 ",.02)
 ;;00409-5921-01
 ;;9002226.02101,"801,00409-5922-01 ",.01)
 ;;00409-5922-01
 ;;9002226.02101,"801,00409-5922-01 ",.02)
 ;;00409-5922-01
 ;;9002226.02101,"801,00409-7385-01 ",.01)
 ;;00409-7385-01
 ;;9002226.02101,"801,00409-7385-01 ",.02)
 ;;00409-7385-01
 ;;9002226.02101,"801,00409-7386-01 ",.01)
 ;;00409-7386-01
 ;;9002226.02101,"801,00409-7386-01 ",.02)
 ;;00409-7386-01
 ;;9002226.02101,"801,00409-7665-03 ",.01)
 ;;00409-7665-03
 ;;9002226.02101,"801,00409-7665-03 ",.02)
 ;;00409-7665-03
 ;;9002226.02101,"801,00409-7665-09 ",.01)
 ;;00409-7665-09
 ;;9002226.02101,"801,00409-7665-09 ",.02)
 ;;00409-7665-09
 ;;9002226.02101,"801,00409-7666-03 ",.01)
 ;;00409-7666-03
 ;;9002226.02101,"801,00409-7666-03 ",.02)
 ;;00409-7666-03
 ;;9002226.02101,"801,00409-7666-62 ",.01)
 ;;00409-7666-62
 ;;9002226.02101,"801,00409-7666-62 ",.02)
 ;;00409-7666-62
 ;;9002226.02101,"801,00409-7668-23 ",.01)
 ;;00409-7668-23
 ;;9002226.02101,"801,00409-7668-23 ",.02)
 ;;00409-7668-23
 ;;9002226.02101,"801,00409-7677-13 ",.01)
 ;;00409-7677-13
 ;;9002226.02101,"801,00409-7677-13 ",.02)
 ;;00409-7677-13
 ;;9002226.02101,"801,00409-7705-62 ",.01)
 ;;00409-7705-62
 ;;9002226.02101,"801,00409-7705-62 ",.02)
 ;;00409-7705-62
 ;;9002226.02101,"801,00430-0214-24 ",.01)
 ;;00430-0214-24
 ;;9002226.02101,"801,00430-0214-24 ",.02)
 ;;00430-0214-24
 ;;9002226.02101,"801,00430-0221-24 ",.01)
 ;;00430-0221-24
 ;;9002226.02101,"801,00430-0221-24 ",.02)
 ;;00430-0221-24
 ;;9002226.02101,"801,00456-0644-16 ",.01)
 ;;00456-0644-16
 ;;9002226.02101,"801,00456-0644-16 ",.02)
 ;;00456-0644-16
 ;;9002226.02101,"801,00456-0645-08 ",.01)
 ;;00456-0645-08
 ;;9002226.02101,"801,00456-0645-08 ",.02)
 ;;00456-0645-08
 ;;9002226.02101,"801,00456-0648-08 ",.01)
 ;;00456-0648-08
 ;;9002226.02101,"801,00456-0648-08 ",.02)
 ;;00456-0648-08
 ;;9002226.02101,"801,00456-0648-16 ",.01)
 ;;00456-0648-16
 ;;9002226.02101,"801,00456-0648-16 ",.02)
 ;;00456-0648-16
 ;;9002226.02101,"801,00456-3581-01 ",.01)
 ;;00456-3581-01
 ;;9002226.02101,"801,00456-3581-01 ",.02)
 ;;00456-3581-01
 ;;9002226.02101,"801,00456-3581-05 ",.01)
 ;;00456-3581-05
 ;;9002226.02101,"801,00456-3581-05 ",.02)
 ;;00456-3581-05
 ;;9002226.02101,"801,00456-3581-10 ",.01)
 ;;00456-3581-10
 ;;9002226.02101,"801,00456-3581-10 ",.02)
 ;;00456-3581-10
 ;;9002226.02101,"801,00456-4301-01 ",.01)
 ;;00456-4301-01
 ;;9002226.02101,"801,00456-4301-01 ",.02)
 ;;00456-4301-01
 ;;9002226.02101,"801,00456-4310-01 ",.01)
 ;;00456-4310-01
 ;;9002226.02101,"801,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"801,00456-4310-02 ",.01)
 ;;00456-4310-02
 ;;9002226.02101,"801,00456-4310-02 ",.02)
 ;;00456-4310-02
 ;;9002226.02101,"801,00456-4320-00 ",.01)
 ;;00456-4320-00
 ;;9002226.02101,"801,00456-4320-00 ",.02)
 ;;00456-4320-00
 ;;9002226.02101,"801,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"801,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"801,00456-4320-02 ",.01)
 ;;00456-4320-02
 ;;9002226.02101,"801,00456-4320-02 ",.02)
 ;;00456-4320-02
 ;;9002226.02101,"801,00456-4330-00 ",.01)
 ;;00456-4330-00
 ;;9002226.02101,"801,00456-4330-00 ",.02)
 ;;00456-4330-00
 ;;9002226.02101,"801,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"801,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"801,00456-4330-02 ",.01)
 ;;00456-4330-02
 ;;9002226.02101,"801,00456-4330-02 ",.02)
 ;;00456-4330-02
 ;;9002226.02101,"801,00456-4345-01 ",.01)
 ;;00456-4345-01
 ;;9002226.02101,"801,00456-4345-01 ",.02)
 ;;00456-4345-01
 ;;9002226.02101,"801,00463-9031-16 ",.01)
 ;;00463-9031-16
 ;;9002226.02101,"801,00463-9031-16 ",.02)
 ;;00463-9031-16
 ;;9002226.02101,"801,00472-0873-08 ",.01)
 ;;00472-0873-08
 ;;9002226.02101,"801,00472-0873-08 ",.02)
 ;;00472-0873-08
 ;;9002226.02101,"801,00472-1238-16 ",.01)
 ;;00472-1238-16
 ;;9002226.02101,"801,00472-1238-16 ",.02)
 ;;00472-1238-16
 ;;9002226.02101,"801,00472-1444-28 ",.01)
 ;;00472-1444-28
 ;;9002226.02101,"801,00472-1444-28 ",.02)
 ;;00472-1444-28
 ;;9002226.02101,"801,00472-1540-16 ",.01)
 ;;00472-1540-16
 ;;9002226.02101,"801,00472-1540-16 ",.02)
 ;;00472-1540-16
 ;;9002226.02101,"801,00485-0059-16 ",.01)
 ;;00485-0059-16
 ;;9002226.02101,"801,00485-0059-16 ",.02)
 ;;00485-0059-16
 ;;9002226.02101,"801,00490-0080-00 ",.01)
 ;;00490-0080-00
 ;;9002226.02101,"801,00490-0080-00 ",.02)
 ;;00490-0080-00
 ;;9002226.02101,"801,00490-0080-30 ",.01)
 ;;00490-0080-30
 ;;9002226.02101,"801,00490-0080-30 ",.02)
 ;;00490-0080-30
 ;;9002226.02101,"801,00490-0080-60 ",.01)
 ;;00490-0080-60
 ;;9002226.02101,"801,00490-0080-60 ",.02)
 ;;00490-0080-60
