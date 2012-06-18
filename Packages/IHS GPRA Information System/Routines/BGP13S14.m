BGP13S14 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"999,15330-0028-01 ",.02)
 ;;15330-0028-01
 ;;9002226.02101,"999,15330-0028-10 ",.01)
 ;;15330-0028-10
 ;;9002226.02101,"999,15330-0028-10 ",.02)
 ;;15330-0028-10
 ;;9002226.02101,"999,15330-0029-01 ",.01)
 ;;15330-0029-01
 ;;9002226.02101,"999,15330-0029-01 ",.02)
 ;;15330-0029-01
 ;;9002226.02101,"999,15330-0029-10 ",.01)
 ;;15330-0029-10
 ;;9002226.02101,"999,15330-0029-10 ",.02)
 ;;15330-0029-10
 ;;9002226.02101,"999,15330-0208-01 ",.01)
 ;;15330-0208-01
 ;;9002226.02101,"999,15330-0208-01 ",.02)
 ;;15330-0208-01
 ;;9002226.02101,"999,15330-0209-01 ",.01)
 ;;15330-0209-01
 ;;9002226.02101,"999,15330-0209-01 ",.02)
 ;;15330-0209-01
 ;;9002226.02101,"999,15330-0210-01 ",.01)
 ;;15330-0210-01
 ;;9002226.02101,"999,15330-0210-01 ",.02)
 ;;15330-0210-01
 ;;9002226.02101,"999,16590-0132-30 ",.01)
 ;;16590-0132-30
 ;;9002226.02101,"999,16590-0132-30 ",.02)
 ;;16590-0132-30
 ;;9002226.02101,"999,16590-0132-60 ",.01)
 ;;16590-0132-60
 ;;9002226.02101,"999,16590-0132-60 ",.02)
 ;;16590-0132-60
 ;;9002226.02101,"999,16590-0133-30 ",.01)
 ;;16590-0133-30
 ;;9002226.02101,"999,16590-0133-30 ",.02)
 ;;16590-0133-30
 ;;9002226.02101,"999,16590-0133-60 ",.01)
 ;;16590-0133-60
 ;;9002226.02101,"999,16590-0133-60 ",.02)
 ;;16590-0133-60
 ;;9002226.02101,"999,16590-0533-30 ",.01)
 ;;16590-0533-30
 ;;9002226.02101,"999,16590-0533-30 ",.02)
 ;;16590-0533-30
 ;;9002226.02101,"999,16590-0533-60 ",.01)
 ;;16590-0533-60
 ;;9002226.02101,"999,16590-0533-60 ",.02)
 ;;16590-0533-60
 ;;9002226.02101,"999,16590-0533-72 ",.01)
 ;;16590-0533-72
 ;;9002226.02101,"999,16590-0533-72 ",.02)
 ;;16590-0533-72
 ;;9002226.02101,"999,16590-0533-90 ",.01)
 ;;16590-0533-90
 ;;9002226.02101,"999,16590-0533-90 ",.02)
 ;;16590-0533-90
 ;;9002226.02101,"999,16714-0021-04 ",.01)
 ;;16714-0021-04
 ;;9002226.02101,"999,16714-0021-04 ",.02)
 ;;16714-0021-04
 ;;9002226.02101,"999,16714-0021-06 ",.01)
 ;;16714-0021-06
 ;;9002226.02101,"999,16714-0021-06 ",.02)
 ;;16714-0021-06
 ;;9002226.02101,"999,16714-0022-04 ",.01)
 ;;16714-0022-04
 ;;9002226.02101,"999,16714-0022-04 ",.02)
 ;;16714-0022-04
 ;;9002226.02101,"999,16714-0022-06 ",.01)
 ;;16714-0022-06
 ;;9002226.02101,"999,16714-0022-06 ",.02)
 ;;16714-0022-06
 ;;9002226.02101,"999,16714-0023-04 ",.01)
 ;;16714-0023-04
 ;;9002226.02101,"999,16714-0023-04 ",.02)
 ;;16714-0023-04
 ;;9002226.02101,"999,16714-0023-06 ",.01)
 ;;16714-0023-06
 ;;9002226.02101,"999,16714-0023-06 ",.02)
 ;;16714-0023-06
 ;;9002226.02101,"999,16714-0024-04 ",.01)
 ;;16714-0024-04
 ;;9002226.02101,"999,16714-0024-04 ",.02)
 ;;16714-0024-04
 ;;9002226.02101,"999,16714-0025-04 ",.01)
 ;;16714-0025-04
 ;;9002226.02101,"999,16714-0025-04 ",.02)
 ;;16714-0025-04
 ;;9002226.02101,"999,16714-0025-05 ",.01)
 ;;16714-0025-05
 ;;9002226.02101,"999,16714-0025-05 ",.02)
 ;;16714-0025-05
 ;;9002226.02101,"999,16714-0031-04 ",.01)
 ;;16714-0031-04
 ;;9002226.02101,"999,16714-0031-04 ",.02)
 ;;16714-0031-04
 ;;9002226.02101,"999,16714-0031-06 ",.01)
 ;;16714-0031-06
 ;;9002226.02101,"999,16714-0031-06 ",.02)
 ;;16714-0031-06
 ;;9002226.02101,"999,16714-0032-04 ",.01)
 ;;16714-0032-04
 ;;9002226.02101,"999,16714-0032-04 ",.02)
 ;;16714-0032-04
 ;;9002226.02101,"999,16714-0032-06 ",.01)
 ;;16714-0032-06
 ;;9002226.02101,"999,16714-0032-06 ",.02)
 ;;16714-0032-06
 ;;9002226.02101,"999,16714-0033-04 ",.01)
 ;;16714-0033-04
 ;;9002226.02101,"999,16714-0033-04 ",.02)
 ;;16714-0033-04
 ;;9002226.02101,"999,16714-0033-06 ",.01)
 ;;16714-0033-06
 ;;9002226.02101,"999,16714-0033-06 ",.02)
 ;;16714-0033-06
 ;;9002226.02101,"999,21695-0291-30 ",.01)
 ;;21695-0291-30
 ;;9002226.02101,"999,21695-0291-30 ",.02)
 ;;21695-0291-30
 ;;9002226.02101,"999,21695-0298-30 ",.01)
 ;;21695-0298-30
 ;;9002226.02101,"999,21695-0298-30 ",.02)
 ;;21695-0298-30
 ;;9002226.02101,"999,21695-0299-00 ",.01)
 ;;21695-0299-00
 ;;9002226.02101,"999,21695-0299-00 ",.02)
 ;;21695-0299-00
 ;;9002226.02101,"999,21695-0299-30 ",.01)
 ;;21695-0299-30
 ;;9002226.02101,"999,21695-0299-30 ",.02)
 ;;21695-0299-30
 ;;9002226.02101,"999,21695-0322-30 ",.01)
 ;;21695-0322-30
 ;;9002226.02101,"999,21695-0322-30 ",.02)
 ;;21695-0322-30
 ;;9002226.02101,"999,21695-0322-90 ",.01)
 ;;21695-0322-90
 ;;9002226.02101,"999,21695-0322-90 ",.02)
 ;;21695-0322-90
 ;;9002226.02101,"999,21695-0323-30 ",.01)
 ;;21695-0323-30
 ;;9002226.02101,"999,21695-0323-30 ",.02)
 ;;21695-0323-30
 ;;9002226.02101,"999,21695-0323-60 ",.01)
 ;;21695-0323-60
 ;;9002226.02101,"999,21695-0323-60 ",.02)
 ;;21695-0323-60
 ;;9002226.02101,"999,21695-0324-30 ",.01)
 ;;21695-0324-30
 ;;9002226.02101,"999,21695-0324-30 ",.02)
 ;;21695-0324-30
 ;;9002226.02101,"999,21695-0397-30 ",.01)
 ;;21695-0397-30
 ;;9002226.02101,"999,21695-0397-30 ",.02)
 ;;21695-0397-30
 ;;9002226.02101,"999,21695-0592-60 ",.01)
 ;;21695-0592-60
 ;;9002226.02101,"999,21695-0592-60 ",.02)
 ;;21695-0592-60
 ;;9002226.02101,"999,21695-0645-60 ",.01)
 ;;21695-0645-60
 ;;9002226.02101,"999,21695-0645-60 ",.02)
 ;;21695-0645-60
 ;;9002226.02101,"999,21695-0646-60 ",.01)
 ;;21695-0646-60
 ;;9002226.02101,"999,21695-0646-60 ",.02)
 ;;21695-0646-60
 ;;9002226.02101,"999,21695-0647-60 ",.01)
 ;;21695-0647-60
 ;;9002226.02101,"999,21695-0647-60 ",.02)
 ;;21695-0647-60
 ;;9002226.02101,"999,21695-0648-60 ",.01)
 ;;21695-0648-60
 ;;9002226.02101,"999,21695-0648-60 ",.02)
 ;;21695-0648-60
 ;;9002226.02101,"999,21695-0668-60 ",.01)
 ;;21695-0668-60
 ;;9002226.02101,"999,21695-0668-60 ",.02)
 ;;21695-0668-60
 ;;9002226.02101,"999,21695-0669-30 ",.01)
 ;;21695-0669-30
 ;;9002226.02101,"999,21695-0669-30 ",.02)
 ;;21695-0669-30
 ;;9002226.02101,"999,21695-0669-60 ",.01)
 ;;21695-0669-60
 ;;9002226.02101,"999,21695-0669-60 ",.02)
 ;;21695-0669-60
 ;;9002226.02101,"999,21695-0743-30 ",.01)
 ;;21695-0743-30
 ;;9002226.02101,"999,21695-0743-30 ",.02)
 ;;21695-0743-30
 ;;9002226.02101,"999,21695-0808-30 ",.01)
 ;;21695-0808-30
 ;;9002226.02101,"999,21695-0808-30 ",.02)
 ;;21695-0808-30
 ;;9002226.02101,"999,21695-0809-30 ",.01)
 ;;21695-0809-30
 ;;9002226.02101,"999,21695-0809-30 ",.02)
 ;;21695-0809-30
 ;;9002226.02101,"999,23155-0110-01 ",.01)
 ;;23155-0110-01
 ;;9002226.02101,"999,23155-0110-01 ",.02)
 ;;23155-0110-01
 ;;9002226.02101,"999,23155-0110-10 ",.01)
 ;;23155-0110-10
 ;;9002226.02101,"999,23155-0110-10 ",.02)
 ;;23155-0110-10
 ;;9002226.02101,"999,23155-0111-01 ",.01)
 ;;23155-0111-01
 ;;9002226.02101,"999,23155-0111-01 ",.02)
 ;;23155-0111-01
 ;;9002226.02101,"999,23155-0111-10 ",.01)
 ;;23155-0111-10
 ;;9002226.02101,"999,23155-0111-10 ",.02)
 ;;23155-0111-10
 ;;9002226.02101,"999,23155-0112-01 ",.01)
 ;;23155-0112-01
 ;;9002226.02101,"999,23155-0112-01 ",.02)
 ;;23155-0112-01
 ;;9002226.02101,"999,23155-0112-10 ",.01)
 ;;23155-0112-10
 ;;9002226.02101,"999,23155-0112-10 ",.02)
 ;;23155-0112-10
 ;;9002226.02101,"999,23155-0113-01 ",.01)
 ;;23155-0113-01
 ;;9002226.02101,"999,23155-0113-01 ",.02)
 ;;23155-0113-01
 ;;9002226.02101,"999,23155-0114-01 ",.01)
 ;;23155-0114-01
 ;;9002226.02101,"999,23155-0114-01 ",.02)
 ;;23155-0114-01
 ;;9002226.02101,"999,23155-0114-05 ",.01)
 ;;23155-0114-05
 ;;9002226.02101,"999,23155-0114-05 ",.02)
 ;;23155-0114-05
 ;;9002226.02101,"999,23490-5096-01 ",.01)
 ;;23490-5096-01
 ;;9002226.02101,"999,23490-5096-01 ",.02)
 ;;23490-5096-01
 ;;9002226.02101,"999,23490-5096-02 ",.01)
 ;;23490-5096-02
 ;;9002226.02101,"999,23490-5096-02 ",.02)
 ;;23490-5096-02
 ;;9002226.02101,"999,23490-5096-03 ",.01)
 ;;23490-5096-03
 ;;9002226.02101,"999,23490-5096-03 ",.02)
 ;;23490-5096-03
 ;;9002226.02101,"999,23490-5097-01 ",.01)
 ;;23490-5097-01
 ;;9002226.02101,"999,23490-5097-01 ",.02)
 ;;23490-5097-01
 ;;9002226.02101,"999,23490-5097-02 ",.01)
 ;;23490-5097-02
 ;;9002226.02101,"999,23490-5097-02 ",.02)
 ;;23490-5097-02
 ;;9002226.02101,"999,23490-5097-03 ",.01)
 ;;23490-5097-03
 ;;9002226.02101,"999,23490-5097-03 ",.02)
 ;;23490-5097-03
 ;;9002226.02101,"999,23490-5098-01 ",.01)
 ;;23490-5098-01
 ;;9002226.02101,"999,23490-5098-01 ",.02)
 ;;23490-5098-01
 ;;9002226.02101,"999,23490-5098-02 ",.01)
 ;;23490-5098-02
 ;;9002226.02101,"999,23490-5098-02 ",.02)
 ;;23490-5098-02
 ;;9002226.02101,"999,23490-5920-00 ",.01)
 ;;23490-5920-00
 ;;9002226.02101,"999,23490-5920-00 ",.02)
 ;;23490-5920-00
 ;;9002226.02101,"999,23490-5920-01 ",.01)
 ;;23490-5920-01
 ;;9002226.02101,"999,23490-5920-01 ",.02)
 ;;23490-5920-01
 ;;9002226.02101,"999,23490-5921-01 ",.01)
 ;;23490-5921-01
 ;;9002226.02101,"999,23490-5921-01 ",.02)
 ;;23490-5921-01
 ;;9002226.02101,"999,23490-5921-02 ",.01)
 ;;23490-5921-02
 ;;9002226.02101,"999,23490-5921-02 ",.02)
 ;;23490-5921-02
 ;;9002226.02101,"999,23490-6203-03 ",.01)
 ;;23490-6203-03
 ;;9002226.02101,"999,23490-6203-03 ",.02)
 ;;23490-6203-03
 ;;9002226.02101,"999,23490-6203-06 ",.01)
 ;;23490-6203-06
 ;;9002226.02101,"999,23490-6203-06 ",.02)
 ;;23490-6203-06
 ;;9002226.02101,"999,23490-6203-09 ",.01)
 ;;23490-6203-09
 ;;9002226.02101,"999,23490-6203-09 ",.02)
 ;;23490-6203-09
 ;;9002226.02101,"999,23490-6503-03 ",.01)
 ;;23490-6503-03
 ;;9002226.02101,"999,23490-6503-03 ",.02)
 ;;23490-6503-03
 ;;9002226.02101,"999,23490-6504-03 ",.01)
 ;;23490-6504-03
 ;;9002226.02101,"999,23490-6504-03 ",.02)
 ;;23490-6504-03
 ;;9002226.02101,"999,23490-6504-06 ",.01)
 ;;23490-6504-06
 ;;9002226.02101,"999,23490-6504-06 ",.02)
 ;;23490-6504-06
 ;;9002226.02101,"999,23490-6504-09 ",.01)
 ;;23490-6504-09
 ;;9002226.02101,"999,23490-6504-09 ",.02)
 ;;23490-6504-09
 ;;9002226.02101,"999,23490-7861-03 ",.01)
 ;;23490-7861-03
 ;;9002226.02101,"999,23490-7861-03 ",.02)
 ;;23490-7861-03
 ;;9002226.02101,"999,23490-9369-03 ",.01)
 ;;23490-9369-03
 ;;9002226.02101,"999,23490-9369-03 ",.02)
 ;;23490-9369-03
 ;;9002226.02101,"999,23490-9369-06 ",.01)
 ;;23490-9369-06
 ;;9002226.02101,"999,23490-9369-06 ",.02)
 ;;23490-9369-06
 ;;9002226.02101,"999,23490-9370-03 ",.01)
 ;;23490-9370-03
 ;;9002226.02101,"999,23490-9370-03 ",.02)
 ;;23490-9370-03
 ;;9002226.02101,"999,23490-9370-06 ",.01)
 ;;23490-9370-06
 ;;9002226.02101,"999,23490-9370-06 ",.02)
 ;;23490-9370-06
 ;;9002226.02101,"999,23490-9371-03 ",.01)
 ;;23490-9371-03
 ;;9002226.02101,"999,23490-9371-03 ",.02)
 ;;23490-9371-03
 ;;9002226.02101,"999,23490-9371-06 ",.01)
 ;;23490-9371-06
 ;;9002226.02101,"999,23490-9371-06 ",.02)
 ;;23490-9371-06
 ;;9002226.02101,"999,23490-9372-03 ",.01)
 ;;23490-9372-03
 ;;9002226.02101,"999,23490-9372-03 ",.02)
 ;;23490-9372-03
 ;;9002226.02101,"999,23490-9372-06 ",.01)
 ;;23490-9372-06
 ;;9002226.02101,"999,23490-9372-06 ",.02)
 ;;23490-9372-06
 ;;9002226.02101,"999,23629-0001-01 ",.01)
 ;;23629-0001-01
 ;;9002226.02101,"999,23629-0001-01 ",.02)
 ;;23629-0001-01
 ;;9002226.02101,"999,23629-0390-01 ",.01)
 ;;23629-0390-01
 ;;9002226.02101,"999,23629-0390-01 ",.02)
 ;;23629-0390-01
 ;;9002226.02101,"999,23629-0410-01 ",.01)
 ;;23629-0410-01
 ;;9002226.02101,"999,23629-0410-01 ",.02)
 ;;23629-0410-01
 ;;9002226.02101,"999,24090-0470-88 ",.01)
 ;;24090-0470-88
 ;;9002226.02101,"999,24090-0470-88 ",.02)
 ;;24090-0470-88
 ;;9002226.02101,"999,24090-0471-88 ",.01)
 ;;24090-0471-88
 ;;9002226.02101,"999,24090-0471-88 ",.02)
 ;;24090-0471-88
 ;;9002226.02101,"999,24090-0473-88 ",.01)
 ;;24090-0473-88
 ;;9002226.02101,"999,24090-0473-88 ",.02)
 ;;24090-0473-88
 ;;9002226.02101,"999,24090-0479-88 ",.01)
 ;;24090-0479-88
 ;;9002226.02101,"999,24090-0479-88 ",.02)
 ;;24090-0479-88
 ;;9002226.02101,"999,29300-0126-01 ",.01)
 ;;29300-0126-01
 ;;9002226.02101,"999,29300-0126-01 ",.02)
 ;;29300-0126-01
 ;;9002226.02101,"999,29300-0126-13 ",.01)
 ;;29300-0126-13
 ;;9002226.02101,"999,29300-0126-13 ",.02)
 ;;29300-0126-13
 ;;9002226.02101,"999,29300-0127-01 ",.01)
 ;;29300-0127-01
 ;;9002226.02101,"999,29300-0127-01 ",.02)
 ;;29300-0127-01
 ;;9002226.02101,"999,29300-0127-13 ",.01)
 ;;29300-0127-13
 ;;9002226.02101,"999,29300-0127-13 ",.02)
 ;;29300-0127-13
 ;;9002226.02101,"999,33358-0037-00 ",.01)
 ;;33358-0037-00
 ;;9002226.02101,"999,33358-0037-00 ",.02)
 ;;33358-0037-00
 ;;9002226.02101,"999,33358-0037-30 ",.01)
 ;;33358-0037-30
 ;;9002226.02101,"999,33358-0037-30 ",.02)
 ;;33358-0037-30
 ;;9002226.02101,"999,33358-0037-60 ",.01)
 ;;33358-0037-60
 ;;9002226.02101,"999,33358-0037-60 ",.02)
 ;;33358-0037-60
 ;;9002226.02101,"999,33358-0038-00 ",.01)
 ;;33358-0038-00
 ;;9002226.02101,"999,33358-0038-00 ",.02)
 ;;33358-0038-00
 ;;9002226.02101,"999,33358-0038-30 ",.01)
 ;;33358-0038-30
 ;;9002226.02101,"999,33358-0038-30 ",.02)
 ;;33358-0038-30
