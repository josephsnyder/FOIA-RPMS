BGP21L21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1201,16714-0685-01 ",.02)
 ;;16714-0685-01
 ;;9002226.02101,"1201,16714-0685-02 ",.01)
 ;;16714-0685-02
 ;;9002226.02101,"1201,16714-0685-02 ",.02)
 ;;16714-0685-02
 ;;9002226.02101,"1201,16714-0685-03 ",.01)
 ;;16714-0685-03
 ;;9002226.02101,"1201,16714-0685-03 ",.02)
 ;;16714-0685-03
 ;;9002226.02101,"1201,16729-0004-10 ",.01)
 ;;16729-0004-10
 ;;9002226.02101,"1201,16729-0004-10 ",.02)
 ;;16729-0004-10
 ;;9002226.02101,"1201,16729-0004-15 ",.01)
 ;;16729-0004-15
 ;;9002226.02101,"1201,16729-0004-15 ",.02)
 ;;16729-0004-15
 ;;9002226.02101,"1201,16729-0004-17 ",.01)
 ;;16729-0004-17
 ;;9002226.02101,"1201,16729-0004-17 ",.02)
 ;;16729-0004-17
 ;;9002226.02101,"1201,16729-0005-10 ",.01)
 ;;16729-0005-10
 ;;9002226.02101,"1201,16729-0005-10 ",.02)
 ;;16729-0005-10
 ;;9002226.02101,"1201,16729-0005-15 ",.01)
 ;;16729-0005-15
 ;;9002226.02101,"1201,16729-0005-15 ",.02)
 ;;16729-0005-15
 ;;9002226.02101,"1201,16729-0005-17 ",.01)
 ;;16729-0005-17
 ;;9002226.02101,"1201,16729-0005-17 ",.02)
 ;;16729-0005-17
 ;;9002226.02101,"1201,16729-0006-10 ",.01)
 ;;16729-0006-10
 ;;9002226.02101,"1201,16729-0006-10 ",.02)
 ;;16729-0006-10
 ;;9002226.02101,"1201,16729-0006-15 ",.01)
 ;;16729-0006-15
 ;;9002226.02101,"1201,16729-0006-15 ",.02)
 ;;16729-0006-15
 ;;9002226.02101,"1201,16729-0006-17 ",.01)
 ;;16729-0006-17
 ;;9002226.02101,"1201,16729-0006-17 ",.02)
 ;;16729-0006-17
 ;;9002226.02101,"1201,16729-0007-10 ",.01)
 ;;16729-0007-10
 ;;9002226.02101,"1201,16729-0007-10 ",.02)
 ;;16729-0007-10
 ;;9002226.02101,"1201,16729-0007-15 ",.01)
 ;;16729-0007-15
 ;;9002226.02101,"1201,16729-0007-15 ",.02)
 ;;16729-0007-15
 ;;9002226.02101,"1201,16729-0007-17 ",.01)
 ;;16729-0007-17
 ;;9002226.02101,"1201,16729-0007-17 ",.02)
 ;;16729-0007-17
 ;;9002226.02101,"1201,21695-0178-30 ",.01)
 ;;21695-0178-30
 ;;9002226.02101,"1201,21695-0178-30 ",.02)
 ;;21695-0178-30
 ;;9002226.02101,"1201,21695-0179-30 ",.01)
 ;;21695-0179-30
 ;;9002226.02101,"1201,21695-0179-30 ",.02)
 ;;21695-0179-30
 ;;9002226.02101,"1201,21695-0179-90 ",.01)
 ;;21695-0179-90
 ;;9002226.02101,"1201,21695-0179-90 ",.02)
 ;;21695-0179-90
 ;;9002226.02101,"1201,21695-0180-30 ",.01)
 ;;21695-0180-30
 ;;9002226.02101,"1201,21695-0180-30 ",.02)
 ;;21695-0180-30
 ;;9002226.02101,"1201,21695-0180-90 ",.01)
 ;;21695-0180-90
 ;;9002226.02101,"1201,21695-0180-90 ",.02)
 ;;21695-0180-90
 ;;9002226.02101,"1201,21695-0255-90 ",.01)
 ;;21695-0255-90
 ;;9002226.02101,"1201,21695-0255-90 ",.02)
 ;;21695-0255-90
 ;;9002226.02101,"1201,21695-0287-90 ",.01)
 ;;21695-0287-90
 ;;9002226.02101,"1201,21695-0287-90 ",.02)
 ;;21695-0287-90
 ;;9002226.02101,"1201,21695-0288-90 ",.01)
 ;;21695-0288-90
 ;;9002226.02101,"1201,21695-0288-90 ",.02)
 ;;21695-0288-90
 ;;9002226.02101,"1201,21695-0325-30 ",.01)
 ;;21695-0325-30
 ;;9002226.02101,"1201,21695-0325-30 ",.02)
 ;;21695-0325-30
 ;;9002226.02101,"1201,21695-0339-30 ",.01)
 ;;21695-0339-30
 ;;9002226.02101,"1201,21695-0339-30 ",.02)
 ;;21695-0339-30
 ;;9002226.02101,"1201,21695-0534-30 ",.01)
 ;;21695-0534-30
 ;;9002226.02101,"1201,21695-0534-30 ",.02)
 ;;21695-0534-30
 ;;9002226.02101,"1201,21695-0535-30 ",.01)
 ;;21695-0535-30
 ;;9002226.02101,"1201,21695-0535-30 ",.02)
 ;;21695-0535-30
 ;;9002226.02101,"1201,21695-0535-90 ",.01)
 ;;21695-0535-90
 ;;9002226.02101,"1201,21695-0535-90 ",.02)
 ;;21695-0535-90
 ;;9002226.02101,"1201,21695-0536-30 ",.01)
 ;;21695-0536-30
 ;;9002226.02101,"1201,21695-0536-30 ",.02)
 ;;21695-0536-30
 ;;9002226.02101,"1201,21695-0536-90 ",.01)
 ;;21695-0536-90
 ;;9002226.02101,"1201,21695-0536-90 ",.02)
 ;;21695-0536-90
 ;;9002226.02101,"1201,21695-0659-30 ",.01)
 ;;21695-0659-30
 ;;9002226.02101,"1201,21695-0659-30 ",.02)
 ;;21695-0659-30
 ;;9002226.02101,"1201,21695-0738-90 ",.01)
 ;;21695-0738-90
 ;;9002226.02101,"1201,21695-0738-90 ",.02)
 ;;21695-0738-90
 ;;9002226.02101,"1201,21695-0739-30 ",.01)
 ;;21695-0739-30
 ;;9002226.02101,"1201,21695-0739-30 ",.02)
 ;;21695-0739-30
 ;;9002226.02101,"1201,21695-0739-90 ",.01)
 ;;21695-0739-90
 ;;9002226.02101,"1201,21695-0739-90 ",.02)
 ;;21695-0739-90
 ;;9002226.02101,"1201,21695-0740-30 ",.01)
 ;;21695-0740-30
 ;;9002226.02101,"1201,21695-0740-30 ",.02)
 ;;21695-0740-30
 ;;9002226.02101,"1201,21695-0740-90 ",.01)
 ;;21695-0740-90
 ;;9002226.02101,"1201,21695-0740-90 ",.02)
 ;;21695-0740-90
 ;;9002226.02101,"1201,21695-0741-30 ",.01)
 ;;21695-0741-30
 ;;9002226.02101,"1201,21695-0741-30 ",.02)
 ;;21695-0741-30
 ;;9002226.02101,"1201,21695-0741-90 ",.01)
 ;;21695-0741-90
 ;;9002226.02101,"1201,21695-0741-90 ",.02)
 ;;21695-0741-90
 ;;9002226.02101,"1201,21695-0742-30 ",.01)
 ;;21695-0742-30
 ;;9002226.02101,"1201,21695-0742-30 ",.02)
 ;;21695-0742-30
 ;;9002226.02101,"1201,21695-0742-90 ",.01)
 ;;21695-0742-90
 ;;9002226.02101,"1201,21695-0742-90 ",.02)
 ;;21695-0742-90
 ;;9002226.02101,"1201,21695-0759-90 ",.01)
 ;;21695-0759-90
 ;;9002226.02101,"1201,21695-0759-90 ",.02)
 ;;21695-0759-90
 ;;9002226.02101,"1201,21695-0827-30 ",.01)
 ;;21695-0827-30
 ;;9002226.02101,"1201,21695-0827-30 ",.02)
 ;;21695-0827-30
 ;;9002226.02101,"1201,23490-0132-03 ",.01)
 ;;23490-0132-03
 ;;9002226.02101,"1201,23490-0132-03 ",.02)
 ;;23490-0132-03
