ATXXA88 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S62.632A ",.02)
 ;;S62.632A
 ;;9002226.02101,"873,S62.632A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.632B ",.01)
 ;;S62.632B
 ;;9002226.02101,"873,S62.632B ",.02)
 ;;S62.632B
 ;;9002226.02101,"873,S62.632B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.633A ",.01)
 ;;S62.633A
 ;;9002226.02101,"873,S62.633A ",.02)
 ;;S62.633A
 ;;9002226.02101,"873,S62.633A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.633B ",.01)
 ;;S62.633B
 ;;9002226.02101,"873,S62.633B ",.02)
 ;;S62.633B
 ;;9002226.02101,"873,S62.633B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.634A ",.01)
 ;;S62.634A
 ;;9002226.02101,"873,S62.634A ",.02)
 ;;S62.634A
 ;;9002226.02101,"873,S62.634A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.634B ",.01)
 ;;S62.634B
 ;;9002226.02101,"873,S62.634B ",.02)
 ;;S62.634B
 ;;9002226.02101,"873,S62.634B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.635A ",.01)
 ;;S62.635A
 ;;9002226.02101,"873,S62.635A ",.02)
 ;;S62.635A
 ;;9002226.02101,"873,S62.635A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.635B ",.01)
 ;;S62.635B
 ;;9002226.02101,"873,S62.635B ",.02)
 ;;S62.635B
 ;;9002226.02101,"873,S62.635B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.636A ",.01)
 ;;S62.636A
 ;;9002226.02101,"873,S62.636A ",.02)
 ;;S62.636A
 ;;9002226.02101,"873,S62.636A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.636B ",.01)
 ;;S62.636B
 ;;9002226.02101,"873,S62.636B ",.02)
 ;;S62.636B
 ;;9002226.02101,"873,S62.636B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.637A ",.01)
 ;;S62.637A
 ;;9002226.02101,"873,S62.637A ",.02)
 ;;S62.637A
 ;;9002226.02101,"873,S62.637A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.637B ",.01)
 ;;S62.637B
 ;;9002226.02101,"873,S62.637B ",.02)
 ;;S62.637B
 ;;9002226.02101,"873,S62.637B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.638A ",.01)
 ;;S62.638A
 ;;9002226.02101,"873,S62.638A ",.02)
 ;;S62.638A
 ;;9002226.02101,"873,S62.638A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.638B ",.01)
 ;;S62.638B
 ;;9002226.02101,"873,S62.638B ",.02)
 ;;S62.638B
 ;;9002226.02101,"873,S62.638B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.639A ",.01)
 ;;S62.639A
 ;;9002226.02101,"873,S62.639A ",.02)
 ;;S62.639A
 ;;9002226.02101,"873,S62.639A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.639B ",.01)
 ;;S62.639B
 ;;9002226.02101,"873,S62.639B ",.02)
 ;;S62.639B
 ;;9002226.02101,"873,S62.639B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.640A ",.01)
 ;;S62.640A
 ;;9002226.02101,"873,S62.640A ",.02)
 ;;S62.640A
 ;;9002226.02101,"873,S62.640A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.640B ",.01)
 ;;S62.640B
 ;;9002226.02101,"873,S62.640B ",.02)
 ;;S62.640B
 ;;9002226.02101,"873,S62.640B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.641A ",.01)
 ;;S62.641A
 ;;9002226.02101,"873,S62.641A ",.02)
 ;;S62.641A
 ;;9002226.02101,"873,S62.641A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.641B ",.01)
 ;;S62.641B
 ;;9002226.02101,"873,S62.641B ",.02)
 ;;S62.641B
 ;;9002226.02101,"873,S62.641B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.642A ",.01)
 ;;S62.642A
 ;;9002226.02101,"873,S62.642A ",.02)
 ;;S62.642A
 ;;9002226.02101,"873,S62.642A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.642B ",.01)
 ;;S62.642B
 ;;9002226.02101,"873,S62.642B ",.02)
 ;;S62.642B
 ;;9002226.02101,"873,S62.642B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.643A ",.01)
 ;;S62.643A
 ;;9002226.02101,"873,S62.643A ",.02)
 ;;S62.643A
 ;;9002226.02101,"873,S62.643A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.643B ",.01)
 ;;S62.643B
 ;;9002226.02101,"873,S62.643B ",.02)
 ;;S62.643B
 ;;9002226.02101,"873,S62.643B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.644A ",.01)
 ;;S62.644A
 ;;9002226.02101,"873,S62.644A ",.02)
 ;;S62.644A
 ;;9002226.02101,"873,S62.644A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.644B ",.01)
 ;;S62.644B
 ;;9002226.02101,"873,S62.644B ",.02)
 ;;S62.644B
 ;;9002226.02101,"873,S62.644B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.645A ",.01)
 ;;S62.645A
 ;;9002226.02101,"873,S62.645A ",.02)
 ;;S62.645A
 ;;9002226.02101,"873,S62.645A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.645B ",.01)
 ;;S62.645B
 ;;9002226.02101,"873,S62.645B ",.02)
 ;;S62.645B
 ;;9002226.02101,"873,S62.645B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.646A ",.01)
 ;;S62.646A
 ;;9002226.02101,"873,S62.646A ",.02)
 ;;S62.646A
 ;;9002226.02101,"873,S62.646A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.646B ",.01)
 ;;S62.646B
 ;;9002226.02101,"873,S62.646B ",.02)
 ;;S62.646B
 ;;9002226.02101,"873,S62.646B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.647A ",.01)
 ;;S62.647A
 ;;9002226.02101,"873,S62.647A ",.02)
 ;;S62.647A
 ;;9002226.02101,"873,S62.647A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.647B ",.01)
 ;;S62.647B
 ;;9002226.02101,"873,S62.647B ",.02)
 ;;S62.647B
 ;;9002226.02101,"873,S62.647B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.648A ",.01)
 ;;S62.648A
 ;;9002226.02101,"873,S62.648A ",.02)
 ;;S62.648A
 ;;9002226.02101,"873,S62.648A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.648B ",.01)
 ;;S62.648B
 ;;9002226.02101,"873,S62.648B ",.02)
 ;;S62.648B
 ;;9002226.02101,"873,S62.648B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.649A ",.01)
 ;;S62.649A
 ;;9002226.02101,"873,S62.649A ",.02)
 ;;S62.649A
 ;;9002226.02101,"873,S62.649A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.649B ",.01)
 ;;S62.649B
 ;;9002226.02101,"873,S62.649B ",.02)
 ;;S62.649B
 ;;9002226.02101,"873,S62.649B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.650A ",.01)
 ;;S62.650A
 ;;9002226.02101,"873,S62.650A ",.02)
 ;;S62.650A
 ;;9002226.02101,"873,S62.650A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.650B ",.01)
 ;;S62.650B
 ;;9002226.02101,"873,S62.650B ",.02)
 ;;S62.650B
 ;;9002226.02101,"873,S62.650B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.651A ",.01)
 ;;S62.651A
 ;;9002226.02101,"873,S62.651A ",.02)
 ;;S62.651A
 ;;9002226.02101,"873,S62.651A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.651B ",.01)
 ;;S62.651B
 ;;9002226.02101,"873,S62.651B ",.02)
 ;;S62.651B
 ;;9002226.02101,"873,S62.651B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.652A ",.01)
 ;;S62.652A
 ;;9002226.02101,"873,S62.652A ",.02)
 ;;S62.652A
 ;;9002226.02101,"873,S62.652A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.652B ",.01)
 ;;S62.652B
 ;;9002226.02101,"873,S62.652B ",.02)
 ;;S62.652B
 ;;9002226.02101,"873,S62.652B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.653A ",.01)
 ;;S62.653A
 ;;9002226.02101,"873,S62.653A ",.02)
 ;;S62.653A
 ;;9002226.02101,"873,S62.653A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.653B ",.01)
 ;;S62.653B
 ;;9002226.02101,"873,S62.653B ",.02)
 ;;S62.653B
 ;;9002226.02101,"873,S62.653B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.654A ",.01)
 ;;S62.654A
 ;;9002226.02101,"873,S62.654A ",.02)
 ;;S62.654A
 ;;9002226.02101,"873,S62.654A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.654B ",.01)
 ;;S62.654B
 ;;9002226.02101,"873,S62.654B ",.02)
 ;;S62.654B
 ;;9002226.02101,"873,S62.654B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.655A ",.01)
 ;;S62.655A
 ;;9002226.02101,"873,S62.655A ",.02)
 ;;S62.655A
 ;;9002226.02101,"873,S62.655A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.655B ",.01)
 ;;S62.655B
 ;;9002226.02101,"873,S62.655B ",.02)
 ;;S62.655B
 ;;9002226.02101,"873,S62.655B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.656A ",.01)
 ;;S62.656A
 ;;9002226.02101,"873,S62.656A ",.02)
 ;;S62.656A
 ;;9002226.02101,"873,S62.656A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.656B ",.01)
 ;;S62.656B
 ;;9002226.02101,"873,S62.656B ",.02)
 ;;S62.656B
 ;;9002226.02101,"873,S62.656B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.657A ",.01)
 ;;S62.657A
 ;;9002226.02101,"873,S62.657A ",.02)
 ;;S62.657A
 ;;9002226.02101,"873,S62.657A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.657B ",.01)
 ;;S62.657B
 ;;9002226.02101,"873,S62.657B ",.02)
 ;;S62.657B
 ;;9002226.02101,"873,S62.657B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.658A ",.01)
 ;;S62.658A
 ;;9002226.02101,"873,S62.658A ",.02)
 ;;S62.658A
 ;;9002226.02101,"873,S62.658A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.658B ",.01)
 ;;S62.658B
 ;;9002226.02101,"873,S62.658B ",.02)
 ;;S62.658B
 ;;9002226.02101,"873,S62.658B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.659A ",.01)
 ;;S62.659A
 ;;9002226.02101,"873,S62.659A ",.02)
 ;;S62.659A
 ;;9002226.02101,"873,S62.659A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.659B ",.01)
 ;;S62.659B
 ;;9002226.02101,"873,S62.659B ",.02)
 ;;S62.659B
 ;;9002226.02101,"873,S62.659B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.660A ",.01)
 ;;S62.660A
 ;;9002226.02101,"873,S62.660A ",.02)
 ;;S62.660A
 ;;9002226.02101,"873,S62.660A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.660B ",.01)
 ;;S62.660B
 ;;9002226.02101,"873,S62.660B ",.02)
 ;;S62.660B
 ;;9002226.02101,"873,S62.660B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.661A ",.01)
 ;;S62.661A
 ;;9002226.02101,"873,S62.661A ",.02)
 ;;S62.661A
 ;;9002226.02101,"873,S62.661A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.661B ",.01)
 ;;S62.661B
 ;;9002226.02101,"873,S62.661B ",.02)
 ;;S62.661B
 ;;9002226.02101,"873,S62.661B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.662A ",.01)
 ;;S62.662A
 ;;9002226.02101,"873,S62.662A ",.02)
 ;;S62.662A
 ;;9002226.02101,"873,S62.662A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.662B ",.01)
 ;;S62.662B
 ;;9002226.02101,"873,S62.662B ",.02)
 ;;S62.662B
 ;;9002226.02101,"873,S62.662B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.663A ",.01)
 ;;S62.663A
 ;;9002226.02101,"873,S62.663A ",.02)
 ;;S62.663A
 ;;9002226.02101,"873,S62.663A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.663B ",.01)
 ;;S62.663B
 ;;9002226.02101,"873,S62.663B ",.02)
 ;;S62.663B
 ;;9002226.02101,"873,S62.663B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.664A ",.01)
 ;;S62.664A
 ;;9002226.02101,"873,S62.664A ",.02)
 ;;S62.664A
 ;;9002226.02101,"873,S62.664A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.664B ",.01)
 ;;S62.664B
 ;;9002226.02101,"873,S62.664B ",.02)
 ;;S62.664B
 ;;9002226.02101,"873,S62.664B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.665A ",.01)
 ;;S62.665A
 ;;9002226.02101,"873,S62.665A ",.02)
 ;;S62.665A
 ;;9002226.02101,"873,S62.665A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.665B ",.01)
 ;;S62.665B
 ;;9002226.02101,"873,S62.665B ",.02)
 ;;S62.665B
 ;;9002226.02101,"873,S62.665B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.666A ",.01)
 ;;S62.666A
 ;;9002226.02101,"873,S62.666A ",.02)
 ;;S62.666A
 ;;9002226.02101,"873,S62.666A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.666B ",.01)
 ;;S62.666B
 ;;9002226.02101,"873,S62.666B ",.02)
 ;;S62.666B
 ;;9002226.02101,"873,S62.666B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.667A ",.01)
 ;;S62.667A
 ;;9002226.02101,"873,S62.667A ",.02)
 ;;S62.667A
 ;;9002226.02101,"873,S62.667A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.667B ",.01)
 ;;S62.667B
 ;;9002226.02101,"873,S62.667B ",.02)
 ;;S62.667B
 ;;9002226.02101,"873,S62.667B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.668A ",.01)
 ;;S62.668A
 ;;9002226.02101,"873,S62.668A ",.02)
 ;;S62.668A
 ;;9002226.02101,"873,S62.668A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.668B ",.01)
 ;;S62.668B
 ;;9002226.02101,"873,S62.668B ",.02)
 ;;S62.668B
 ;;9002226.02101,"873,S62.668B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.669A ",.01)
 ;;S62.669A
 ;;9002226.02101,"873,S62.669A ",.02)
 ;;S62.669A
 ;;9002226.02101,"873,S62.669A ",.03)
 ;;30
 ;;9002226.02101,"873,S62.669B ",.01)
 ;;S62.669B
 ;;9002226.02101,"873,S62.669B ",.02)
 ;;S62.669B
 ;;9002226.02101,"873,S62.669B ",.03)
 ;;30
 ;;9002226.02101,"873,S62.90XA ",.01)
 ;;S62.90XA
 ;;9002226.02101,"873,S62.90XA ",.02)
 ;;S62.90XA
 ;;9002226.02101,"873,S62.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S62.90XB ",.01)
 ;;S62.90XB
 ;;9002226.02101,"873,S62.90XB ",.02)
 ;;S62.90XB
 ;;9002226.02101,"873,S62.90XB ",.03)
 ;;30
 ;;9002226.02101,"873,S62.91XA ",.01)
 ;;S62.91XA
 ;;9002226.02101,"873,S62.91XA ",.02)
 ;;S62.91XA
