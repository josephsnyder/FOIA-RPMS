ATXD5P20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"169,Y36.450D ",.01)
 ;;Y36.450D 
 ;;9002226.02101,"169,Y36.450D ",.02)
 ;;Y36.450D 
 ;;9002226.02101,"169,Y36.450D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.450S ",.01)
 ;;Y36.450S 
 ;;9002226.02101,"169,Y36.450S ",.02)
 ;;Y36.450S 
 ;;9002226.02101,"169,Y36.450S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.451A ",.01)
 ;;Y36.451A 
 ;;9002226.02101,"169,Y36.451A ",.02)
 ;;Y36.451A 
 ;;9002226.02101,"169,Y36.451A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.451D ",.01)
 ;;Y36.451D 
 ;;9002226.02101,"169,Y36.451D ",.02)
 ;;Y36.451D 
 ;;9002226.02101,"169,Y36.451D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.451S ",.01)
 ;;Y36.451S 
 ;;9002226.02101,"169,Y36.451S ",.02)
 ;;Y36.451S 
 ;;9002226.02101,"169,Y36.451S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.460A ",.01)
 ;;Y36.460A 
 ;;9002226.02101,"169,Y36.460A ",.02)
 ;;Y36.460A 
 ;;9002226.02101,"169,Y36.460A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.460D ",.01)
 ;;Y36.460D 
 ;;9002226.02101,"169,Y36.460D ",.02)
 ;;Y36.460D 
 ;;9002226.02101,"169,Y36.460D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.460S ",.01)
 ;;Y36.460S 
 ;;9002226.02101,"169,Y36.460S ",.02)
 ;;Y36.460S 
 ;;9002226.02101,"169,Y36.460S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.461A ",.01)
 ;;Y36.461A 
 ;;9002226.02101,"169,Y36.461A ",.02)
 ;;Y36.461A 
 ;;9002226.02101,"169,Y36.461A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.461D ",.01)
 ;;Y36.461D 
 ;;9002226.02101,"169,Y36.461D ",.02)
 ;;Y36.461D 
 ;;9002226.02101,"169,Y36.461D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.461S ",.01)
 ;;Y36.461S 
 ;;9002226.02101,"169,Y36.461S ",.02)
 ;;Y36.461S 
 ;;9002226.02101,"169,Y36.461S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.470A ",.01)
 ;;Y36.470A 
 ;;9002226.02101,"169,Y36.470A ",.02)
 ;;Y36.470A 
 ;;9002226.02101,"169,Y36.470A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.470D ",.01)
 ;;Y36.470D 
 ;;9002226.02101,"169,Y36.470D ",.02)
 ;;Y36.470D 
 ;;9002226.02101,"169,Y36.470D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.470S ",.01)
 ;;Y36.470S 
 ;;9002226.02101,"169,Y36.470S ",.02)
 ;;Y36.470S 
 ;;9002226.02101,"169,Y36.470S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.471A ",.01)
 ;;Y36.471A 
 ;;9002226.02101,"169,Y36.471A ",.02)
 ;;Y36.471A 
 ;;9002226.02101,"169,Y36.471A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.471D ",.01)
 ;;Y36.471D 
 ;;9002226.02101,"169,Y36.471D ",.02)
 ;;Y36.471D 
 ;;9002226.02101,"169,Y36.471D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.471S ",.01)
 ;;Y36.471S 
 ;;9002226.02101,"169,Y36.471S ",.02)
 ;;Y36.471S 
 ;;9002226.02101,"169,Y36.471S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.490A ",.01)
 ;;Y36.490A 
 ;;9002226.02101,"169,Y36.490A ",.02)
 ;;Y36.490A 
 ;;9002226.02101,"169,Y36.490A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.490D ",.01)
 ;;Y36.490D 
 ;;9002226.02101,"169,Y36.490D ",.02)
 ;;Y36.490D 
 ;;9002226.02101,"169,Y36.490D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.490S ",.01)
 ;;Y36.490S 
 ;;9002226.02101,"169,Y36.490S ",.02)
 ;;Y36.490S 
 ;;9002226.02101,"169,Y36.490S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.491A ",.01)
 ;;Y36.491A 
 ;;9002226.02101,"169,Y36.491A ",.02)
 ;;Y36.491A 
 ;;9002226.02101,"169,Y36.491A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.491D ",.01)
 ;;Y36.491D 
 ;;9002226.02101,"169,Y36.491D ",.02)
 ;;Y36.491D 
 ;;9002226.02101,"169,Y36.491D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.491S ",.01)
 ;;Y36.491S 
 ;;9002226.02101,"169,Y36.491S ",.02)
 ;;Y36.491S 
 ;;9002226.02101,"169,Y36.491S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.500A ",.01)
 ;;Y36.500A 
 ;;9002226.02101,"169,Y36.500A ",.02)
 ;;Y36.500A 
 ;;9002226.02101,"169,Y36.500A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.500D ",.01)
 ;;Y36.500D 
 ;;9002226.02101,"169,Y36.500D ",.02)
 ;;Y36.500D 
 ;;9002226.02101,"169,Y36.500D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.500S ",.01)
 ;;Y36.500S 
 ;;9002226.02101,"169,Y36.500S ",.02)
 ;;Y36.500S 
 ;;9002226.02101,"169,Y36.500S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.501A ",.01)
 ;;Y36.501A 
 ;;9002226.02101,"169,Y36.501A ",.02)
 ;;Y36.501A 
 ;;9002226.02101,"169,Y36.501A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.501D ",.01)
 ;;Y36.501D 
 ;;9002226.02101,"169,Y36.501D ",.02)
 ;;Y36.501D 
 ;;9002226.02101,"169,Y36.501D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.501S ",.01)
 ;;Y36.501S 
 ;;9002226.02101,"169,Y36.501S ",.02)
 ;;Y36.501S 
 ;;9002226.02101,"169,Y36.501S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.510A ",.01)
 ;;Y36.510A 
 ;;9002226.02101,"169,Y36.510A ",.02)
 ;;Y36.510A 
 ;;9002226.02101,"169,Y36.510A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.510D ",.01)
 ;;Y36.510D 
 ;;9002226.02101,"169,Y36.510D ",.02)
 ;;Y36.510D 
 ;;9002226.02101,"169,Y36.510D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.510S ",.01)
 ;;Y36.510S 
 ;;9002226.02101,"169,Y36.510S ",.02)
 ;;Y36.510S 
 ;;9002226.02101,"169,Y36.510S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.511A ",.01)
 ;;Y36.511A 
 ;;9002226.02101,"169,Y36.511A ",.02)
 ;;Y36.511A 
 ;;9002226.02101,"169,Y36.511A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.511D ",.01)
 ;;Y36.511D 
 ;;9002226.02101,"169,Y36.511D ",.02)
 ;;Y36.511D 
 ;;9002226.02101,"169,Y36.511D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.511S ",.01)
 ;;Y36.511S 
 ;;9002226.02101,"169,Y36.511S ",.02)
 ;;Y36.511S 
 ;;9002226.02101,"169,Y36.511S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.520A ",.01)
 ;;Y36.520A 
 ;;9002226.02101,"169,Y36.520A ",.02)
 ;;Y36.520A 
 ;;9002226.02101,"169,Y36.520A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.520D ",.01)
 ;;Y36.520D 
 ;;9002226.02101,"169,Y36.520D ",.02)
 ;;Y36.520D 
 ;;9002226.02101,"169,Y36.520D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.520S ",.01)
 ;;Y36.520S 
 ;;9002226.02101,"169,Y36.520S ",.02)
 ;;Y36.520S 
 ;;9002226.02101,"169,Y36.520S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.521A ",.01)
 ;;Y36.521A 
 ;;9002226.02101,"169,Y36.521A ",.02)
 ;;Y36.521A 
 ;;9002226.02101,"169,Y36.521A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.521D ",.01)
 ;;Y36.521D 
 ;;9002226.02101,"169,Y36.521D ",.02)
 ;;Y36.521D 
 ;;9002226.02101,"169,Y36.521D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.521S ",.01)
 ;;Y36.521S 
 ;;9002226.02101,"169,Y36.521S ",.02)
 ;;Y36.521S 
 ;;9002226.02101,"169,Y36.521S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.530A ",.01)
 ;;Y36.530A 
 ;;9002226.02101,"169,Y36.530A ",.02)
 ;;Y36.530A 
 ;;9002226.02101,"169,Y36.530A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.530D ",.01)
 ;;Y36.530D 
 ;;9002226.02101,"169,Y36.530D ",.02)
 ;;Y36.530D 
 ;;9002226.02101,"169,Y36.530D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.530S ",.01)
 ;;Y36.530S 
 ;;9002226.02101,"169,Y36.530S ",.02)
 ;;Y36.530S 
 ;;9002226.02101,"169,Y36.530S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.531A ",.01)
 ;;Y36.531A 
 ;;9002226.02101,"169,Y36.531A ",.02)
 ;;Y36.531A 
 ;;9002226.02101,"169,Y36.531A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.531D ",.01)
 ;;Y36.531D 
 ;;9002226.02101,"169,Y36.531D ",.02)
 ;;Y36.531D 
 ;;9002226.02101,"169,Y36.531D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.531S ",.01)
 ;;Y36.531S 
 ;;9002226.02101,"169,Y36.531S ",.02)
 ;;Y36.531S 
 ;;9002226.02101,"169,Y36.531S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.540A ",.01)
 ;;Y36.540A 
 ;;9002226.02101,"169,Y36.540A ",.02)
 ;;Y36.540A 
 ;;9002226.02101,"169,Y36.540A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.540D ",.01)
 ;;Y36.540D 
 ;;9002226.02101,"169,Y36.540D ",.02)
 ;;Y36.540D 
 ;;9002226.02101,"169,Y36.540D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.540S ",.01)
 ;;Y36.540S 
 ;;9002226.02101,"169,Y36.540S ",.02)
 ;;Y36.540S 
 ;;9002226.02101,"169,Y36.540S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.541A ",.01)
 ;;Y36.541A 
 ;;9002226.02101,"169,Y36.541A ",.02)
 ;;Y36.541A 
 ;;9002226.02101,"169,Y36.541A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.541D ",.01)
 ;;Y36.541D 
 ;;9002226.02101,"169,Y36.541D ",.02)
 ;;Y36.541D 
 ;;9002226.02101,"169,Y36.541D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.541S ",.01)
 ;;Y36.541S 
 ;;9002226.02101,"169,Y36.541S ",.02)
 ;;Y36.541S 
 ;;9002226.02101,"169,Y36.541S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.590A ",.01)
 ;;Y36.590A 
 ;;9002226.02101,"169,Y36.590A ",.02)
 ;;Y36.590A 
 ;;9002226.02101,"169,Y36.590A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.590D ",.01)
 ;;Y36.590D 
 ;;9002226.02101,"169,Y36.590D ",.02)
 ;;Y36.590D 
 ;;9002226.02101,"169,Y36.590D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.590S ",.01)
 ;;Y36.590S 
 ;;9002226.02101,"169,Y36.590S ",.02)
 ;;Y36.590S 
 ;;9002226.02101,"169,Y36.590S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.591A ",.01)
 ;;Y36.591A 
 ;;9002226.02101,"169,Y36.591A ",.02)
 ;;Y36.591A 
 ;;9002226.02101,"169,Y36.591A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.591D ",.01)
 ;;Y36.591D 
 ;;9002226.02101,"169,Y36.591D ",.02)
 ;;Y36.591D 
 ;;9002226.02101,"169,Y36.591D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.591S ",.01)
 ;;Y36.591S 
 ;;9002226.02101,"169,Y36.591S ",.02)
 ;;Y36.591S 
 ;;9002226.02101,"169,Y36.591S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X0A ",.01)
 ;;Y36.6X0A 
 ;;9002226.02101,"169,Y36.6X0A ",.02)
 ;;Y36.6X0A 
 ;;9002226.02101,"169,Y36.6X0A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X0D ",.01)
 ;;Y36.6X0D 
 ;;9002226.02101,"169,Y36.6X0D ",.02)
 ;;Y36.6X0D 
 ;;9002226.02101,"169,Y36.6X0D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X0S ",.01)
 ;;Y36.6X0S 
 ;;9002226.02101,"169,Y36.6X0S ",.02)
 ;;Y36.6X0S 
 ;;9002226.02101,"169,Y36.6X0S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X1A ",.01)
 ;;Y36.6X1A 
 ;;9002226.02101,"169,Y36.6X1A ",.02)
 ;;Y36.6X1A 
 ;;9002226.02101,"169,Y36.6X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X1D ",.01)
 ;;Y36.6X1D 
 ;;9002226.02101,"169,Y36.6X1D ",.02)
 ;;Y36.6X1D 
 ;;9002226.02101,"169,Y36.6X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.6X1S ",.01)
 ;;Y36.6X1S 
 ;;9002226.02101,"169,Y36.6X1S ",.02)
 ;;Y36.6X1S 
 ;;9002226.02101,"169,Y36.6X1S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X0A ",.01)
 ;;Y36.7X0A 
 ;;9002226.02101,"169,Y36.7X0A ",.02)
 ;;Y36.7X0A 
 ;;9002226.02101,"169,Y36.7X0A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X0D ",.01)
 ;;Y36.7X0D 
 ;;9002226.02101,"169,Y36.7X0D ",.02)
 ;;Y36.7X0D 
 ;;9002226.02101,"169,Y36.7X0D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X0S ",.01)
 ;;Y36.7X0S 
 ;;9002226.02101,"169,Y36.7X0S ",.02)
 ;;Y36.7X0S 
 ;;9002226.02101,"169,Y36.7X0S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X1A ",.01)
 ;;Y36.7X1A 
 ;;9002226.02101,"169,Y36.7X1A ",.02)
 ;;Y36.7X1A 
 ;;9002226.02101,"169,Y36.7X1A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X1D ",.01)
 ;;Y36.7X1D 
 ;;9002226.02101,"169,Y36.7X1D ",.02)
 ;;Y36.7X1D 
 ;;9002226.02101,"169,Y36.7X1D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.7X1S ",.01)
 ;;Y36.7X1S 
 ;;9002226.02101,"169,Y36.7X1S ",.02)
 ;;Y36.7X1S 
 ;;9002226.02101,"169,Y36.7X1S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.810A ",.01)
 ;;Y36.810A 
 ;;9002226.02101,"169,Y36.810A ",.02)
 ;;Y36.810A 
 ;;9002226.02101,"169,Y36.810A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.810D ",.01)
 ;;Y36.810D 
 ;;9002226.02101,"169,Y36.810D ",.02)
 ;;Y36.810D 
 ;;9002226.02101,"169,Y36.810D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.810S ",.01)
 ;;Y36.810S 
 ;;9002226.02101,"169,Y36.810S ",.02)
 ;;Y36.810S 
 ;;9002226.02101,"169,Y36.810S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.811A ",.01)
 ;;Y36.811A 
 ;;9002226.02101,"169,Y36.811A ",.02)
 ;;Y36.811A 
 ;;9002226.02101,"169,Y36.811A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.811D ",.01)
 ;;Y36.811D 
 ;;9002226.02101,"169,Y36.811D ",.02)
 ;;Y36.811D 
 ;;9002226.02101,"169,Y36.811D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.811S ",.01)
 ;;Y36.811S 
 ;;9002226.02101,"169,Y36.811S ",.02)
 ;;Y36.811S 
 ;;9002226.02101,"169,Y36.811S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.820A ",.01)
 ;;Y36.820A 
 ;;9002226.02101,"169,Y36.820A ",.02)
 ;;Y36.820A 
 ;;9002226.02101,"169,Y36.820A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.820D ",.01)
 ;;Y36.820D 
 ;;9002226.02101,"169,Y36.820D ",.02)
 ;;Y36.820D 
 ;;9002226.02101,"169,Y36.820D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.820S ",.01)
 ;;Y36.820S 
 ;;9002226.02101,"169,Y36.820S ",.02)
 ;;Y36.820S 
 ;;9002226.02101,"169,Y36.820S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.821A ",.01)
 ;;Y36.821A 
 ;;9002226.02101,"169,Y36.821A ",.02)
 ;;Y36.821A 
 ;;9002226.02101,"169,Y36.821A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.821D ",.01)
 ;;Y36.821D 
 ;;9002226.02101,"169,Y36.821D ",.02)
 ;;Y36.821D 
 ;;9002226.02101,"169,Y36.821D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.821S ",.01)
 ;;Y36.821S 
 ;;9002226.02101,"169,Y36.821S ",.02)
 ;;Y36.821S 
 ;;9002226.02101,"169,Y36.821S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.880A ",.01)
 ;;Y36.880A 
 ;;9002226.02101,"169,Y36.880A ",.02)
 ;;Y36.880A 
 ;;9002226.02101,"169,Y36.880A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.880D ",.01)
 ;;Y36.880D 
 ;;9002226.02101,"169,Y36.880D ",.02)
 ;;Y36.880D 
 ;;9002226.02101,"169,Y36.880D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.880S ",.01)
 ;;Y36.880S 
 ;;9002226.02101,"169,Y36.880S ",.02)
 ;;Y36.880S 
 ;;9002226.02101,"169,Y36.880S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.881A ",.01)
 ;;Y36.881A 
 ;;9002226.02101,"169,Y36.881A ",.02)
 ;;Y36.881A 
 ;;9002226.02101,"169,Y36.881A ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.881D ",.01)
 ;;Y36.881D 
 ;;9002226.02101,"169,Y36.881D ",.02)
 ;;Y36.881D 
 ;;9002226.02101,"169,Y36.881D ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.881S ",.01)
 ;;Y36.881S 
 ;;9002226.02101,"169,Y36.881S ",.02)
 ;;Y36.881S 
 ;;9002226.02101,"169,Y36.881S ",.03)
 ;;30
 ;;9002226.02101,"169,Y36.890A ",.01)
 ;;Y36.890A 
 ;;9002226.02101,"169,Y36.890A ",.02)
 ;;Y36.890A 
