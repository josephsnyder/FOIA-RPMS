ATXD5P21 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"169,Y36.890A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.890D ",.01)
 ;;Y36.890D 
 ;;9002226.02101,"169,Y36.890D ",.02)
 ;;Y36.890D 
 ;;9002226.02101,"169,Y36.890D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.890S ",.01)
 ;;Y36.890S 
 ;;9002226.02101,"169,Y36.890S ",.02)
 ;;Y36.890S 
 ;;9002226.02101,"169,Y36.890S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.891A ",.01)
 ;;Y36.891A 
 ;;9002226.02101,"169,Y36.891A ",.02)
 ;;Y36.891A 
 ;;9002226.02101,"169,Y36.891A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.891D ",.01)
 ;;Y36.891D 
 ;;9002226.02101,"169,Y36.891D ",.02)
 ;;Y36.891D 
 ;;9002226.02101,"169,Y36.891D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.891S ",.01)
 ;;Y36.891S 
 ;;9002226.02101,"169,Y36.891S ",.02)
 ;;Y36.891S 
 ;;9002226.02101,"169,Y36.891S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.90XA ",.01)
 ;;Y36.90XA 
 ;;9002226.02101,"169,Y36.90XA ",.02)
 ;;Y36.90XA 
 ;;9002226.02101,"169,Y36.90XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.90XD ",.01)
 ;;Y36.90XD 
 ;;9002226.02101,"169,Y36.90XD ",.02)
 ;;Y36.90XD 
 ;;9002226.02101,"169,Y36.90XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.90XS ",.01)
 ;;Y36.90XS 
 ;;9002226.02101,"169,Y36.90XS ",.02)
 ;;Y36.90XS 
 ;;9002226.02101,"169,Y36.90XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.91XA ",.01)
 ;;Y36.91XA 
 ;;9002226.02101,"169,Y36.91XA ",.02)
 ;;Y36.91XA 
 ;;9002226.02101,"169,Y36.91XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.91XD ",.01)
 ;;Y36.91XD 
 ;;9002226.02101,"169,Y36.91XD ",.02)
 ;;Y36.91XD 
 ;;9002226.02101,"169,Y36.91XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.91XS ",.01)
 ;;Y36.91XS 
 ;;9002226.02101,"169,Y36.91XS ",.02)
 ;;Y36.91XS 
 ;;9002226.02101,"169,Y36.91XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.92XA ",.01)
 ;;Y36.92XA 
 ;;9002226.02101,"169,Y36.92XA ",.02)
 ;;Y36.92XA 
 ;;9002226.02101,"169,Y36.92XA ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.92XD ",.01)
 ;;Y36.92XD 
 ;;9002226.02101,"169,Y36.92XD ",.02)
 ;;Y36.92XD 
 ;;9002226.02101,"169,Y36.92XD ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.92XS ",.01)
 ;;Y36.92XS 
 ;;9002226.02101,"169,Y36.92XS ",.02)
 ;;Y36.92XS 
 ;;9002226.02101,"169,Y36.92XS ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.000A ",.01)
 ;;Y37.000A 
 ;;9002226.02101,"169,Y37.000A ",.02)
 ;;Y37.000A 
 ;;9002226.02101,"169,Y37.000A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.000D ",.01)
 ;;Y37.000D 
 ;;9002226.02101,"169,Y37.000D ",.02)
 ;;Y37.000D 
 ;;9002226.02101,"169,Y37.000D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.000S ",.01)
 ;;Y37.000S 
 ;;9002226.02101,"169,Y37.000S ",.02)
 ;;Y37.000S 
 ;;9002226.02101,"169,Y37.000S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.001A ",.01)
 ;;Y37.001A 
 ;;9002226.02101,"169,Y37.001A ",.02)
 ;;Y37.001A 
 ;;9002226.02101,"169,Y37.001A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.001D ",.01)
 ;;Y37.001D 
 ;;9002226.02101,"169,Y37.001D ",.02)
 ;;Y37.001D 
 ;;9002226.02101,"169,Y37.001D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.001S ",.01)
 ;;Y37.001S 
 ;;9002226.02101,"169,Y37.001S ",.02)
 ;;Y37.001S 
 ;;9002226.02101,"169,Y37.001S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.010A ",.01)
 ;;Y37.010A 
 ;;9002226.02101,"169,Y37.010A ",.02)
 ;;Y37.010A 
 ;;9002226.02101,"169,Y37.010A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.010D ",.01)
 ;;Y37.010D 
 ;;9002226.02101,"169,Y37.010D ",.02)
 ;;Y37.010D 
 ;;9002226.02101,"169,Y37.010D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.010S ",.01)
 ;;Y37.010S 
 ;;9002226.02101,"169,Y37.010S ",.02)
 ;;Y37.010S 
 ;;9002226.02101,"169,Y37.010S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.011A ",.01)
 ;;Y37.011A 
 ;;9002226.02101,"169,Y37.011A ",.02)
 ;;Y37.011A 
 ;;9002226.02101,"169,Y37.011A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.011D ",.01)
 ;;Y37.011D 
 ;;9002226.02101,"169,Y37.011D ",.02)
 ;;Y37.011D 
 ;;9002226.02101,"169,Y37.011D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.011S ",.01)
 ;;Y37.011S 
 ;;9002226.02101,"169,Y37.011S ",.02)
 ;;Y37.011S 
 ;;9002226.02101,"169,Y37.011S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.020A ",.01)
 ;;Y37.020A 
 ;;9002226.02101,"169,Y37.020A ",.02)
 ;;Y37.020A 
 ;;9002226.02101,"169,Y37.020A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.020D ",.01)
 ;;Y37.020D 
 ;;9002226.02101,"169,Y37.020D ",.02)
 ;;Y37.020D 
 ;;9002226.02101,"169,Y37.020D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.020S ",.01)
 ;;Y37.020S 
 ;;9002226.02101,"169,Y37.020S ",.02)
 ;;Y37.020S 
 ;;9002226.02101,"169,Y37.020S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.021A ",.01)
 ;;Y37.021A 
 ;;9002226.02101,"169,Y37.021A ",.02)
 ;;Y37.021A 
 ;;9002226.02101,"169,Y37.021A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.021D ",.01)
 ;;Y37.021D 
 ;;9002226.02101,"169,Y37.021D ",.02)
 ;;Y37.021D 
 ;;9002226.02101,"169,Y37.021D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.021S ",.01)
 ;;Y37.021S 
 ;;9002226.02101,"169,Y37.021S ",.02)
 ;;Y37.021S 
 ;;9002226.02101,"169,Y37.021S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.030A ",.01)
 ;;Y37.030A 
 ;;9002226.02101,"169,Y37.030A ",.02)
 ;;Y37.030A 
 ;;9002226.02101,"169,Y37.030A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.030D ",.01)
 ;;Y37.030D 
 ;;9002226.02101,"169,Y37.030D ",.02)
 ;;Y37.030D 
 ;;9002226.02101,"169,Y37.030D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.030S ",.01)
 ;;Y37.030S 
 ;;9002226.02101,"169,Y37.030S ",.02)
 ;;Y37.030S 
 ;;9002226.02101,"169,Y37.030S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.031A ",.01)
 ;;Y37.031A 
 ;;9002226.02101,"169,Y37.031A ",.02)
 ;;Y37.031A 
 ;;9002226.02101,"169,Y37.031A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.031D ",.01)
 ;;Y37.031D 
 ;;9002226.02101,"169,Y37.031D ",.02)
 ;;Y37.031D 
 ;;9002226.02101,"169,Y37.031D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.031S ",.01)
 ;;Y37.031S 
 ;;9002226.02101,"169,Y37.031S ",.02)
 ;;Y37.031S 
 ;;9002226.02101,"169,Y37.031S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.040A ",.01)
 ;;Y37.040A 
 ;;9002226.02101,"169,Y37.040A ",.02)
 ;;Y37.040A 
 ;;9002226.02101,"169,Y37.040A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.040D ",.01)
 ;;Y37.040D 
 ;;9002226.02101,"169,Y37.040D ",.02)
 ;;Y37.040D 
 ;;9002226.02101,"169,Y37.040D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.040S ",.01)
 ;;Y37.040S 
 ;;9002226.02101,"169,Y37.040S ",.02)
 ;;Y37.040S 
 ;;9002226.02101,"169,Y37.040S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.041A ",.01)
 ;;Y37.041A 
 ;;9002226.02101,"169,Y37.041A ",.02)
 ;;Y37.041A 
 ;;9002226.02101,"169,Y37.041A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.041D ",.01)
 ;;Y37.041D 
 ;;9002226.02101,"169,Y37.041D ",.02)
 ;;Y37.041D 
 ;;9002226.02101,"169,Y37.041D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.041S ",.01)
 ;;Y37.041S 
 ;;9002226.02101,"169,Y37.041S ",.02)
 ;;Y37.041S 
 ;;9002226.02101,"169,Y37.041S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.050A ",.01)
 ;;Y37.050A 
 ;;9002226.02101,"169,Y37.050A ",.02)
 ;;Y37.050A 
 ;;9002226.02101,"169,Y37.050A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.050D ",.01)
 ;;Y37.050D 
 ;;9002226.02101,"169,Y37.050D ",.02)
 ;;Y37.050D 
 ;;9002226.02101,"169,Y37.050D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.050S ",.01)
 ;;Y37.050S 
 ;;9002226.02101,"169,Y37.050S ",.02)
 ;;Y37.050S 
 ;;9002226.02101,"169,Y37.050S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.051A ",.01)
 ;;Y37.051A 
 ;;9002226.02101,"169,Y37.051A ",.02)
 ;;Y37.051A 
 ;;9002226.02101,"169,Y37.051A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.051D ",.01)
 ;;Y37.051D 
 ;;9002226.02101,"169,Y37.051D ",.02)
 ;;Y37.051D 
 ;;9002226.02101,"169,Y37.051D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.051S ",.01)
 ;;Y37.051S 
 ;;9002226.02101,"169,Y37.051S ",.02)
 ;;Y37.051S 
 ;;9002226.02101,"169,Y37.051S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.090A ",.01)
 ;;Y37.090A 
 ;;9002226.02101,"169,Y37.090A ",.02)
 ;;Y37.090A 
 ;;9002226.02101,"169,Y37.090A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.090D ",.01)
 ;;Y37.090D 
 ;;9002226.02101,"169,Y37.090D ",.02)
 ;;Y37.090D 
 ;;9002226.02101,"169,Y37.090D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.090S ",.01)
 ;;Y37.090S 
 ;;9002226.02101,"169,Y37.090S ",.02)
 ;;Y37.090S 
 ;;9002226.02101,"169,Y37.090S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.091A ",.01)
 ;;Y37.091A 
 ;;9002226.02101,"169,Y37.091A ",.02)
 ;;Y37.091A 
 ;;9002226.02101,"169,Y37.091A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.091D ",.01)
 ;;Y37.091D 
 ;;9002226.02101,"169,Y37.091D ",.02)
 ;;Y37.091D 
 ;;9002226.02101,"169,Y37.091D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.091S ",.01)
 ;;Y37.091S 
 ;;9002226.02101,"169,Y37.091S ",.02)
 ;;Y37.091S 
 ;;9002226.02101,"169,Y37.091S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.100A ",.01)
 ;;Y37.100A 
 ;;9002226.02101,"169,Y37.100A ",.02)
 ;;Y37.100A 
 ;;9002226.02101,"169,Y37.100A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.100D ",.01)
 ;;Y37.100D 
 ;;9002226.02101,"169,Y37.100D ",.02)
 ;;Y37.100D 
 ;;9002226.02101,"169,Y37.100D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.100S ",.01)
 ;;Y37.100S 
 ;;9002226.02101,"169,Y37.100S ",.02)
 ;;Y37.100S 
 ;;9002226.02101,"169,Y37.100S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.101A ",.01)
 ;;Y37.101A 
 ;;9002226.02101,"169,Y37.101A ",.02)
 ;;Y37.101A 
 ;;9002226.02101,"169,Y37.101A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.101D ",.01)
 ;;Y37.101D 
 ;;9002226.02101,"169,Y37.101D ",.02)
 ;;Y37.101D 
 ;;9002226.02101,"169,Y37.101D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.101S ",.01)
 ;;Y37.101S 
 ;;9002226.02101,"169,Y37.101S ",.02)
 ;;Y37.101S 
 ;;9002226.02101,"169,Y37.101S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.110A ",.01)
 ;;Y37.110A 
 ;;9002226.02101,"169,Y37.110A ",.02)
 ;;Y37.110A 
 ;;9002226.02101,"169,Y37.110A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.110D ",.01)
 ;;Y37.110D 
 ;;9002226.02101,"169,Y37.110D ",.02)
 ;;Y37.110D 
 ;;9002226.02101,"169,Y37.110D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.110S ",.01)
 ;;Y37.110S 
 ;;9002226.02101,"169,Y37.110S ",.02)
 ;;Y37.110S 
 ;;9002226.02101,"169,Y37.110S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.111A ",.01)
 ;;Y37.111A 
 ;;9002226.02101,"169,Y37.111A ",.02)
 ;;Y37.111A 
 ;;9002226.02101,"169,Y37.111A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.111D ",.01)
 ;;Y37.111D 
 ;;9002226.02101,"169,Y37.111D ",.02)
 ;;Y37.111D 
 ;;9002226.02101,"169,Y37.111D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.111S ",.01)
 ;;Y37.111S 
 ;;9002226.02101,"169,Y37.111S ",.02)
 ;;Y37.111S 
 ;;9002226.02101,"169,Y37.111S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.120A ",.01)
 ;;Y37.120A 
 ;;9002226.02101,"169,Y37.120A ",.02)
 ;;Y37.120A 
 ;;9002226.02101,"169,Y37.120A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.120D ",.01)
 ;;Y37.120D 
 ;;9002226.02101,"169,Y37.120D ",.02)
 ;;Y37.120D 
 ;;9002226.02101,"169,Y37.120D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.120S ",.01)
 ;;Y37.120S 
 ;;9002226.02101,"169,Y37.120S ",.02)
 ;;Y37.120S 
 ;;9002226.02101,"169,Y37.120S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.121A ",.01)
 ;;Y37.121A 
 ;;9002226.02101,"169,Y37.121A ",.02)
 ;;Y37.121A 
 ;;9002226.02101,"169,Y37.121A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.121D ",.01)
 ;;Y37.121D 
 ;;9002226.02101,"169,Y37.121D ",.02)
 ;;Y37.121D 
 ;;9002226.02101,"169,Y37.121D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.121S ",.01)
 ;;Y37.121S 
 ;;9002226.02101,"169,Y37.121S ",.02)
 ;;Y37.121S 
 ;;9002226.02101,"169,Y37.121S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.130A ",.01)
 ;;Y37.130A 
 ;;9002226.02101,"169,Y37.130A ",.02)
 ;;Y37.130A 
 ;;9002226.02101,"169,Y37.130A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.130D ",.01)
 ;;Y37.130D 
 ;;9002226.02101,"169,Y37.130D ",.02)
 ;;Y37.130D 
 ;;9002226.02101,"169,Y37.130D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.130S ",.01)
 ;;Y37.130S 
 ;;9002226.02101,"169,Y37.130S ",.02)
 ;;Y37.130S 
 ;;9002226.02101,"169,Y37.130S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.131A ",.01)
 ;;Y37.131A 
 ;;9002226.02101,"169,Y37.131A ",.02)
 ;;Y37.131A 
 ;;9002226.02101,"169,Y37.131A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.131D ",.01)
 ;;Y37.131D 
 ;;9002226.02101,"169,Y37.131D ",.02)
 ;;Y37.131D 
 ;;9002226.02101,"169,Y37.131D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.131S ",.01)
 ;;Y37.131S 
 ;;9002226.02101,"169,Y37.131S ",.02)
 ;;Y37.131S 
 ;;9002226.02101,"169,Y37.131S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.140A ",.01)
 ;;Y37.140A 
 ;;9002226.02101,"169,Y37.140A ",.02)
 ;;Y37.140A 
 ;;9002226.02101,"169,Y37.140A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.140D ",.01)
 ;;Y37.140D 
 ;;9002226.02101,"169,Y37.140D ",.02)
 ;;Y37.140D 
 ;;9002226.02101,"169,Y37.140D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.140S ",.01)
 ;;Y37.140S 
 ;;9002226.02101,"169,Y37.140S ",.02)
 ;;Y37.140S 
 ;;9002226.02101,"169,Y37.140S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.141A ",.01)
 ;;Y37.141A 
 ;;9002226.02101,"169,Y37.141A ",.02)
 ;;Y37.141A 
 ;;9002226.02101,"169,Y37.141A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.141D ",.01)
 ;;Y37.141D 
 ;;9002226.02101,"169,Y37.141D ",.02)
 ;;Y37.141D 
 ;;9002226.02101,"169,Y37.141D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.141S ",.01)
 ;;Y37.141S 
 ;;9002226.02101,"169,Y37.141S ",.02)
 ;;Y37.141S 
 ;;9002226.02101,"169,Y37.141S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.190A ",.01)
 ;;Y37.190A 
 ;;9002226.02101,"169,Y37.190A ",.02)
 ;;Y37.190A 
 ;;9002226.02101,"169,Y37.190A ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.190D ",.01)
 ;;Y37.190D 
 ;;9002226.02101,"169,Y37.190D ",.02)
 ;;Y37.190D 
 ;;9002226.02101,"169,Y37.190D ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.190S ",.01)
 ;;Y37.190S 
 ;;9002226.02101,"169,Y37.190S ",.02)
 ;;Y37.190S 
 ;;9002226.02101,"169,Y37.190S ",.03)
 ;;30
 ;;9002226.02101,"169,Y37.191A ",.01)
 ;;Y37.191A 
