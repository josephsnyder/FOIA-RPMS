ATXF4E3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 15, 2016;
 ;;5.1;TAXONOMY;**15**;FEB 04, 1997;Build 20
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2108,C44.121 ",.02)
 ;;C44.129
 ;;9002226.02101,"2108,C44.121 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.211 ",.01)
 ;;C44.211
 ;;9002226.02101,"2108,C44.211 ",.02)
 ;;C44.219
 ;;9002226.02101,"2108,C44.211 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.221 ",.01)
 ;;C44.221
 ;;9002226.02101,"2108,C44.221 ",.02)
 ;;C44.229
 ;;9002226.02101,"2108,C44.221 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.310 ",.01)
 ;;C44.310
 ;;9002226.02101,"2108,C44.310 ",.02)
 ;;C44.319
 ;;9002226.02101,"2108,C44.310 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.320 ",.01)
 ;;C44.320
 ;;9002226.02101,"2108,C44.320 ",.02)
 ;;C44.329
 ;;9002226.02101,"2108,C44.320 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.41 ",.01)
 ;;C44.41
 ;;9002226.02101,"2108,C44.41 ",.02)
 ;;C44.41
 ;;9002226.02101,"2108,C44.41 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.510 ",.01)
 ;;C44.510
 ;;9002226.02101,"2108,C44.510 ",.02)
 ;;C44.519
 ;;9002226.02101,"2108,C44.510 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.520 ",.01)
 ;;C44.520
 ;;9002226.02101,"2108,C44.520 ",.02)
 ;;C44.529
 ;;9002226.02101,"2108,C44.520 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.611 ",.01)
 ;;C44.611
 ;;9002226.02101,"2108,C44.611 ",.02)
 ;;C44.619
 ;;9002226.02101,"2108,C44.611 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.621 ",.01)
 ;;C44.621
 ;;9002226.02101,"2108,C44.621 ",.02)
 ;;C44.629
 ;;9002226.02101,"2108,C44.621 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.711 ",.01)
 ;;C44.711
 ;;9002226.02101,"2108,C44.711 ",.02)
 ;;C44.719
 ;;9002226.02101,"2108,C44.711 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.721 ",.01)
 ;;C44.721
 ;;9002226.02101,"2108,C44.721 ",.02)
 ;;C44.729
 ;;9002226.02101,"2108,C44.721 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.81 ",.01)
 ;;C44.81
 ;;9002226.02101,"2108,C44.81 ",.02)
 ;;C44.82
 ;;9002226.02101,"2108,C44.81 ",.03)
 ;;30
 ;;9002226.02101,"2108,C44.91 ",.01)
 ;;C44.91
 ;;9002226.02101,"2108,C44.91 ",.02)
 ;;C44.92
 ;;9002226.02101,"2108,C44.91 ",.03)
 ;;30
 ;;9002226.02101,"2108,D10.0 ",.01)
 ;;D10.0
 ;;9002226.02101,"2108,D10.0 ",.02)
 ;;D10.2
 ;;9002226.02101,"2108,D10.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D10.30 ",.01)
 ;;D10.30
 ;;9002226.02101,"2108,D10.30 ",.02)
 ;;D10.9
 ;;9002226.02101,"2108,D10.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D11.0 ",.01)
 ;;D11.0
 ;;9002226.02101,"2108,D11.0 ",.02)
 ;;D11.9
 ;;9002226.02101,"2108,D11.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D12.0 ",.01)
 ;;D12.0
 ;;9002226.02101,"2108,D12.0 ",.02)
 ;;D12.9
 ;;9002226.02101,"2108,D12.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D13.0 ",.01)
 ;;D13.0
 ;;9002226.02101,"2108,D13.0 ",.02)
 ;;D13.2
 ;;9002226.02101,"2108,D13.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D13.30 ",.01)
 ;;D13.30
 ;;9002226.02101,"2108,D13.30 ",.02)
 ;;D13.9
 ;;9002226.02101,"2108,D13.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D14.0 ",.01)
 ;;D14.0
 ;;9002226.02101,"2108,D14.0 ",.02)
 ;;D14.2
 ;;9002226.02101,"2108,D14.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D14.30 ",.01)
 ;;D14.30
 ;;9002226.02101,"2108,D14.30 ",.02)
 ;;D14.4
 ;;9002226.02101,"2108,D14.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D15.0 ",.01)
 ;;D15.0
 ;;9002226.02101,"2108,D15.0 ",.02)
 ;;D15.9
 ;;9002226.02101,"2108,D15.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D16.00 ",.01)
 ;;D16.00
 ;;9002226.02101,"2108,D16.00 ",.02)
 ;;D16.02
 ;;9002226.02101,"2108,D16.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D16.10 ",.01)
 ;;D16.10
 ;;9002226.02101,"2108,D16.10 ",.02)
 ;;D16.12
 ;;9002226.02101,"2108,D16.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D16.20 ",.01)
 ;;D16.20
 ;;9002226.02101,"2108,D16.20 ",.02)
 ;;D16.22
 ;;9002226.02101,"2108,D16.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D16.30 ",.01)
 ;;D16.30
 ;;9002226.02101,"2108,D16.30 ",.02)
 ;;D16.9
 ;;9002226.02101,"2108,D16.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D17.0 ",.01)
 ;;D17.0
 ;;9002226.02101,"2108,D17.0 ",.02)
 ;;D17.1
 ;;9002226.02101,"2108,D17.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D17.20 ",.01)
 ;;D17.20
 ;;9002226.02101,"2108,D17.20 ",.02)
 ;;D17.24
 ;;9002226.02101,"2108,D17.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D17.30 ",.01)
 ;;D17.30
 ;;9002226.02101,"2108,D17.30 ",.02)
 ;;D17.6
 ;;9002226.02101,"2108,D17.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D17.71 ",.01)
 ;;D17.71
 ;;9002226.02101,"2108,D17.71 ",.02)
 ;;D17.9
 ;;9002226.02101,"2108,D17.71 ",.03)
 ;;30
 ;;9002226.02101,"2108,D18.00 ",.01)
 ;;D18.00
 ;;9002226.02101,"2108,D18.00 ",.02)
 ;;D18.01
 ;;9002226.02101,"2108,D18.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D18.03 ",.01)
 ;;D18.03
 ;;9002226.02101,"2108,D18.03 ",.02)
 ;;D18.09
 ;;9002226.02101,"2108,D18.03 ",.03)
 ;;30
 ;;9002226.02101,"2108,D19.0 ",.01)
 ;;D19.0
 ;;9002226.02101,"2108,D19.0 ",.02)
 ;;D19.9
 ;;9002226.02101,"2108,D19.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D20.0 ",.01)
 ;;D20.0
 ;;9002226.02101,"2108,D20.0 ",.02)
 ;;D20.1
 ;;9002226.02101,"2108,D20.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D21.0 ",.01)
 ;;D21.0
 ;;9002226.02101,"2108,D21.0 ",.02)
 ;;D21.0
 ;;9002226.02101,"2108,D21.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D21.10 ",.01)
 ;;D21.10
 ;;9002226.02101,"2108,D21.10 ",.02)
 ;;D21.12
 ;;9002226.02101,"2108,D21.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D21.20 ",.01)
 ;;D21.20
 ;;9002226.02101,"2108,D21.20 ",.02)
 ;;D21.9
 ;;9002226.02101,"2108,D21.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.0 ",.01)
 ;;D22.0
 ;;9002226.02101,"2108,D22.0 ",.02)
 ;;D22.0
 ;;9002226.02101,"2108,D22.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.10 ",.01)
 ;;D22.10
 ;;9002226.02101,"2108,D22.10 ",.02)
 ;;D22.12
 ;;9002226.02101,"2108,D22.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.20 ",.01)
 ;;D22.20
 ;;9002226.02101,"2108,D22.20 ",.02)
 ;;D22.22
 ;;9002226.02101,"2108,D22.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.30 ",.01)
 ;;D22.30
 ;;9002226.02101,"2108,D22.30 ",.02)
 ;;D22.5
 ;;9002226.02101,"2108,D22.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.60 ",.01)
 ;;D22.60
 ;;9002226.02101,"2108,D22.60 ",.02)
 ;;D22.62
 ;;9002226.02101,"2108,D22.60 ",.03)
 ;;30
 ;;9002226.02101,"2108,D22.70 ",.01)
 ;;D22.70
 ;;9002226.02101,"2108,D22.70 ",.02)
 ;;D22.9
 ;;9002226.02101,"2108,D22.70 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.0 ",.01)
 ;;D23.0
 ;;9002226.02101,"2108,D23.0 ",.02)
 ;;D23.0
 ;;9002226.02101,"2108,D23.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.10 ",.01)
 ;;D23.10
 ;;9002226.02101,"2108,D23.10 ",.02)
 ;;D23.12
 ;;9002226.02101,"2108,D23.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.20 ",.01)
 ;;D23.20
 ;;9002226.02101,"2108,D23.20 ",.02)
 ;;D23.22
 ;;9002226.02101,"2108,D23.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.30 ",.01)
 ;;D23.30
 ;;9002226.02101,"2108,D23.30 ",.02)
 ;;D23.5
 ;;9002226.02101,"2108,D23.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.60 ",.01)
 ;;D23.60
 ;;9002226.02101,"2108,D23.60 ",.02)
 ;;D23.62
 ;;9002226.02101,"2108,D23.60 ",.03)
 ;;30
 ;;9002226.02101,"2108,D23.70 ",.01)
 ;;D23.70
 ;;9002226.02101,"2108,D23.70 ",.02)
 ;;D23.9
 ;;9002226.02101,"2108,D23.70 ",.03)
 ;;30
 ;;9002226.02101,"2108,D24.1 ",.01)
 ;;D24.1
 ;;9002226.02101,"2108,D24.1 ",.02)
 ;;D24.9
 ;;9002226.02101,"2108,D24.1 ",.03)
 ;;30
 ;;9002226.02101,"2108,D25.0 ",.01)
 ;;D25.0
 ;;9002226.02101,"2108,D25.0 ",.02)
 ;;D25.9
 ;;9002226.02101,"2108,D25.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D26.0 ",.01)
 ;;D26.0
 ;;9002226.02101,"2108,D26.0 ",.02)
 ;;D26.9
 ;;9002226.02101,"2108,D26.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D27.0 ",.01)
 ;;D27.0
 ;;9002226.02101,"2108,D27.0 ",.02)
 ;;D27.9
 ;;9002226.02101,"2108,D27.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D28.0 ",.01)
 ;;D28.0
 ;;9002226.02101,"2108,D28.0 ",.02)
 ;;D28.9
 ;;9002226.02101,"2108,D28.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D29.0 ",.01)
 ;;D29.0
 ;;9002226.02101,"2108,D29.0 ",.02)
 ;;D29.1
 ;;9002226.02101,"2108,D29.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D29.20 ",.01)
 ;;D29.20
 ;;9002226.02101,"2108,D29.20 ",.02)
 ;;D29.22
 ;;9002226.02101,"2108,D29.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D29.30 ",.01)
 ;;D29.30
 ;;9002226.02101,"2108,D29.30 ",.02)
 ;;D29.9
 ;;9002226.02101,"2108,D29.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D30.00 ",.01)
 ;;D30.00
 ;;9002226.02101,"2108,D30.00 ",.02)
 ;;D30.02
 ;;9002226.02101,"2108,D30.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D30.10 ",.01)
 ;;D30.10
 ;;9002226.02101,"2108,D30.10 ",.02)
 ;;D30.12
 ;;9002226.02101,"2108,D30.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D30.20 ",.01)
 ;;D30.20
 ;;9002226.02101,"2108,D30.20 ",.02)
 ;;D30.9
 ;;9002226.02101,"2108,D30.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.00 ",.01)
 ;;D31.00
 ;;9002226.02101,"2108,D31.00 ",.02)
 ;;D31.02
 ;;9002226.02101,"2108,D31.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.10 ",.01)
 ;;D31.10
 ;;9002226.02101,"2108,D31.10 ",.02)
 ;;D31.12
 ;;9002226.02101,"2108,D31.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.20 ",.01)
 ;;D31.20
 ;;9002226.02101,"2108,D31.20 ",.02)
 ;;D31.22
 ;;9002226.02101,"2108,D31.20 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.30 ",.01)
 ;;D31.30
 ;;9002226.02101,"2108,D31.30 ",.02)
 ;;D31.32
 ;;9002226.02101,"2108,D31.30 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.40 ",.01)
 ;;D31.40
 ;;9002226.02101,"2108,D31.40 ",.02)
 ;;D31.42
 ;;9002226.02101,"2108,D31.40 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.50 ",.01)
 ;;D31.50
 ;;9002226.02101,"2108,D31.50 ",.02)
 ;;D31.52
 ;;9002226.02101,"2108,D31.50 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.60 ",.01)
 ;;D31.60
 ;;9002226.02101,"2108,D31.60 ",.02)
 ;;D31.62
 ;;9002226.02101,"2108,D31.60 ",.03)
 ;;30
 ;;9002226.02101,"2108,D31.90 ",.01)
 ;;D31.90
 ;;9002226.02101,"2108,D31.90 ",.02)
 ;;D31.92
 ;;9002226.02101,"2108,D31.90 ",.03)
 ;;30
 ;;9002226.02101,"2108,D35.00 ",.01)
 ;;D35.00
 ;;9002226.02101,"2108,D35.00 ",.02)
 ;;D35.02
 ;;9002226.02101,"2108,D35.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D35.1 ",.01)
 ;;D35.1
 ;;9002226.02101,"2108,D35.1 ",.02)
 ;;D35.1
 ;;9002226.02101,"2108,D35.1 ",.03)
 ;;30
 ;;9002226.02101,"2108,D35.5 ",.01)
 ;;D35.5
 ;;9002226.02101,"2108,D35.5 ",.02)
 ;;D35.9
 ;;9002226.02101,"2108,D35.5 ",.03)
 ;;30
 ;;9002226.02101,"2108,D36.0 ",.01)
 ;;D36.0
 ;;9002226.02101,"2108,D36.0 ",.02)
 ;;D36.0
 ;;9002226.02101,"2108,D36.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D36.10 ",.01)
 ;;D36.10
 ;;9002226.02101,"2108,D36.10 ",.02)
 ;;D36.17
 ;;9002226.02101,"2108,D36.10 ",.03)
 ;;30
 ;;9002226.02101,"2108,D36.7 ",.01)
 ;;D36.7
 ;;9002226.02101,"2108,D36.7 ",.02)
 ;;D36.9
 ;;9002226.02101,"2108,D36.7 ",.03)
 ;;30
 ;;9002226.02101,"2108,D37.01 ",.01)
 ;;D37.01
 ;;9002226.02101,"2108,D37.01 ",.02)
 ;;D37.02
 ;;9002226.02101,"2108,D37.01 ",.03)
 ;;30
 ;;9002226.02101,"2108,D37.030 ",.01)
 ;;D37.030
 ;;9002226.02101,"2108,D37.030 ",.02)
 ;;D37.9
 ;;9002226.02101,"2108,D37.030 ",.03)
 ;;30
 ;;9002226.02101,"2108,D38.0 ",.01)
 ;;D38.0
 ;;9002226.02101,"2108,D38.0 ",.02)
 ;;D38.6
 ;;9002226.02101,"2108,D38.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D39.0 ",.01)
 ;;D39.0
 ;;9002226.02101,"2108,D39.0 ",.02)
 ;;D39.9
 ;;9002226.02101,"2108,D39.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D3A.00 ",.01)
 ;;D3A.00
 ;;9002226.02101,"2108,D3A.00 ",.02)
 ;;D3A.8
 ;;9002226.02101,"2108,D3A.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D40.0 ",.01)
 ;;D40.0
 ;;9002226.02101,"2108,D40.0 ",.02)
 ;;D40.9
 ;;9002226.02101,"2108,D40.0 ",.03)
 ;;30
 ;;9002226.02101,"2108,D41.00 ",.01)
 ;;D41.00
 ;;9002226.02101,"2108,D41.00 ",.02)
 ;;D41.9
 ;;9002226.02101,"2108,D41.00 ",.03)
 ;;30
 ;;9002226.02101,"2108,D44.0 ",.01)
 ;;D44.0
 ;;9002226.02101,"2108,D44.0 ",.02)
 ;;D44.0
