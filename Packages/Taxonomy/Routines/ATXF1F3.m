ATXF1F3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JUL 09, 2015;
 ;;5.1;TAXONOMY;**12**;FEB 04, 1997;Build 5
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"488,O30.012 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.022 ",.01)
 ;;O30.022
 ;;9002226.02101,"488,O30.022 ",.02)
 ;;O30.022
 ;;9002226.02101,"488,O30.022 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.032 ",.01)
 ;;O30.032
 ;;9002226.02101,"488,O30.032 ",.02)
 ;;O30.032
 ;;9002226.02101,"488,O30.032 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.042 ",.01)
 ;;O30.042
 ;;9002226.02101,"488,O30.042 ",.02)
 ;;O30.042
 ;;9002226.02101,"488,O30.042 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.092 ",.01)
 ;;O30.092
 ;;9002226.02101,"488,O30.092 ",.02)
 ;;O30.092
 ;;9002226.02101,"488,O30.092 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.102 ",.01)
 ;;O30.102
 ;;9002226.02101,"488,O30.102 ",.02)
 ;;O30.102
 ;;9002226.02101,"488,O30.102 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.112 ",.01)
 ;;O30.112
 ;;9002226.02101,"488,O30.112 ",.02)
 ;;O30.112
 ;;9002226.02101,"488,O30.112 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.122 ",.01)
 ;;O30.122
 ;;9002226.02101,"488,O30.122 ",.02)
 ;;O30.122
 ;;9002226.02101,"488,O30.122 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.192 ",.01)
 ;;O30.192
 ;;9002226.02101,"488,O30.192 ",.02)
 ;;O30.192
 ;;9002226.02101,"488,O30.192 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.202 ",.01)
 ;;O30.202
 ;;9002226.02101,"488,O30.202 ",.02)
 ;;O30.202
 ;;9002226.02101,"488,O30.202 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.212 ",.01)
 ;;O30.212
 ;;9002226.02101,"488,O30.212 ",.02)
 ;;O30.212
 ;;9002226.02101,"488,O30.212 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.222 ",.01)
 ;;O30.222
 ;;9002226.02101,"488,O30.222 ",.02)
 ;;O30.222
 ;;9002226.02101,"488,O30.222 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.292 ",.01)
 ;;O30.292
 ;;9002226.02101,"488,O30.292 ",.02)
 ;;O30.292
 ;;9002226.02101,"488,O30.292 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.802 ",.01)
 ;;O30.802
 ;;9002226.02101,"488,O30.802 ",.02)
 ;;O30.802
 ;;9002226.02101,"488,O30.802 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.812 ",.01)
 ;;O30.812
 ;;9002226.02101,"488,O30.812 ",.02)
 ;;O30.812
 ;;9002226.02101,"488,O30.812 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.822 ",.01)
 ;;O30.822
 ;;9002226.02101,"488,O30.822 ",.02)
 ;;O30.822
 ;;9002226.02101,"488,O30.822 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.892 ",.01)
 ;;O30.892
 ;;9002226.02101,"488,O30.892 ",.02)
 ;;O30.892
 ;;9002226.02101,"488,O30.892 ",.03)
 ;;30
 ;;9002226.02101,"488,O30.92 ",.01)
 ;;O30.92
 ;;9002226.02101,"488,O30.92 ",.02)
 ;;O30.92
 ;;9002226.02101,"488,O30.92 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X0 ",.01)
 ;;O31.02X0
 ;;9002226.02101,"488,O31.02X0 ",.02)
 ;;O31.02X0
 ;;9002226.02101,"488,O31.02X0 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X1 ",.01)
 ;;O31.02X1
 ;;9002226.02101,"488,O31.02X1 ",.02)
 ;;O31.02X1
 ;;9002226.02101,"488,O31.02X1 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X2 ",.01)
 ;;O31.02X2
 ;;9002226.02101,"488,O31.02X2 ",.02)
 ;;O31.02X2
 ;;9002226.02101,"488,O31.02X2 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X3 ",.01)
 ;;O31.02X3
 ;;9002226.02101,"488,O31.02X3 ",.02)
 ;;O31.02X3
 ;;9002226.02101,"488,O31.02X3 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X4 ",.01)
 ;;O31.02X4
 ;;9002226.02101,"488,O31.02X4 ",.02)
 ;;O31.02X4
 ;;9002226.02101,"488,O31.02X4 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X5 ",.01)
 ;;O31.02X5
 ;;9002226.02101,"488,O31.02X5 ",.02)
 ;;O31.02X5
 ;;9002226.02101,"488,O31.02X5 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.02X9 ",.01)
 ;;O31.02X9
 ;;9002226.02101,"488,O31.02X9 ",.02)
 ;;O31.02X9
 ;;9002226.02101,"488,O31.02X9 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X0 ",.01)
 ;;O31.12X0
 ;;9002226.02101,"488,O31.12X0 ",.02)
 ;;O31.12X0
 ;;9002226.02101,"488,O31.12X0 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X1 ",.01)
 ;;O31.12X1
 ;;9002226.02101,"488,O31.12X1 ",.02)
 ;;O31.12X1
 ;;9002226.02101,"488,O31.12X1 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X2 ",.01)
 ;;O31.12X2
 ;;9002226.02101,"488,O31.12X2 ",.02)
 ;;O31.12X2
 ;;9002226.02101,"488,O31.12X2 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X3 ",.01)
 ;;O31.12X3
 ;;9002226.02101,"488,O31.12X3 ",.02)
 ;;O31.12X3
 ;;9002226.02101,"488,O31.12X3 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X4 ",.01)
 ;;O31.12X4
 ;;9002226.02101,"488,O31.12X4 ",.02)
 ;;O31.12X4
 ;;9002226.02101,"488,O31.12X4 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X5 ",.01)
 ;;O31.12X5
 ;;9002226.02101,"488,O31.12X5 ",.02)
 ;;O31.12X5
 ;;9002226.02101,"488,O31.12X5 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.12X9 ",.01)
 ;;O31.12X9
 ;;9002226.02101,"488,O31.12X9 ",.02)
 ;;O31.12X9
 ;;9002226.02101,"488,O31.12X9 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X0 ",.01)
 ;;O31.22X0
 ;;9002226.02101,"488,O31.22X0 ",.02)
 ;;O31.22X0
 ;;9002226.02101,"488,O31.22X0 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X1 ",.01)
 ;;O31.22X1
 ;;9002226.02101,"488,O31.22X1 ",.02)
 ;;O31.22X1
 ;;9002226.02101,"488,O31.22X1 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X2 ",.01)
 ;;O31.22X2
 ;;9002226.02101,"488,O31.22X2 ",.02)
 ;;O31.22X2
 ;;9002226.02101,"488,O31.22X2 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X3 ",.01)
 ;;O31.22X3
 ;;9002226.02101,"488,O31.22X3 ",.02)
 ;;O31.22X3
 ;;9002226.02101,"488,O31.22X3 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X4 ",.01)
 ;;O31.22X4
 ;;9002226.02101,"488,O31.22X4 ",.02)
 ;;O31.22X4
 ;;9002226.02101,"488,O31.22X4 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X5 ",.01)
 ;;O31.22X5
 ;;9002226.02101,"488,O31.22X5 ",.02)
 ;;O31.22X5
 ;;9002226.02101,"488,O31.22X5 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.22X9 ",.01)
 ;;O31.22X9
 ;;9002226.02101,"488,O31.22X9 ",.02)
 ;;O31.22X9
 ;;9002226.02101,"488,O31.22X9 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X0 ",.01)
 ;;O31.32X0
 ;;9002226.02101,"488,O31.32X0 ",.02)
 ;;O31.32X0
 ;;9002226.02101,"488,O31.32X0 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X1 ",.01)
 ;;O31.32X1
 ;;9002226.02101,"488,O31.32X1 ",.02)
 ;;O31.32X1
 ;;9002226.02101,"488,O31.32X1 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X2 ",.01)
 ;;O31.32X2
 ;;9002226.02101,"488,O31.32X2 ",.02)
 ;;O31.32X2
 ;;9002226.02101,"488,O31.32X2 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X3 ",.01)
 ;;O31.32X3
 ;;9002226.02101,"488,O31.32X3 ",.02)
 ;;O31.32X3
 ;;9002226.02101,"488,O31.32X3 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X4 ",.01)
 ;;O31.32X4
 ;;9002226.02101,"488,O31.32X4 ",.02)
 ;;O31.32X4
 ;;9002226.02101,"488,O31.32X4 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X5 ",.01)
 ;;O31.32X5
 ;;9002226.02101,"488,O31.32X5 ",.02)
 ;;O31.32X5
 ;;9002226.02101,"488,O31.32X5 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.32X9 ",.01)
 ;;O31.32X9
 ;;9002226.02101,"488,O31.32X9 ",.02)
 ;;O31.32X9
 ;;9002226.02101,"488,O31.32X9 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X20 ",.01)
 ;;O31.8X20
 ;;9002226.02101,"488,O31.8X20 ",.02)
 ;;O31.8X20
 ;;9002226.02101,"488,O31.8X20 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X21 ",.01)
 ;;O31.8X21
 ;;9002226.02101,"488,O31.8X21 ",.02)
 ;;O31.8X21
 ;;9002226.02101,"488,O31.8X21 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X22 ",.01)
 ;;O31.8X22
 ;;9002226.02101,"488,O31.8X22 ",.02)
 ;;O31.8X22
 ;;9002226.02101,"488,O31.8X22 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X23 ",.01)
 ;;O31.8X23
 ;;9002226.02101,"488,O31.8X23 ",.02)
 ;;O31.8X23
 ;;9002226.02101,"488,O31.8X23 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X24 ",.01)
 ;;O31.8X24
 ;;9002226.02101,"488,O31.8X24 ",.02)
 ;;O31.8X24
 ;;9002226.02101,"488,O31.8X24 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X25 ",.01)
 ;;O31.8X25
 ;;9002226.02101,"488,O31.8X25 ",.02)
 ;;O31.8X25
 ;;9002226.02101,"488,O31.8X25 ",.03)
 ;;30
 ;;9002226.02101,"488,O31.8X29 ",.01)
 ;;O31.8X29
 ;;9002226.02101,"488,O31.8X29 ",.02)
 ;;O31.8X29
 ;;9002226.02101,"488,O31.8X29 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.02 ",.01)
 ;;O34.02
 ;;9002226.02101,"488,O34.02 ",.02)
 ;;O34.02
 ;;9002226.02101,"488,O34.02 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.12 ",.01)
 ;;O34.12
 ;;9002226.02101,"488,O34.12 ",.02)
 ;;O34.12
 ;;9002226.02101,"488,O34.12 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.32 ",.01)
 ;;O34.32
 ;;9002226.02101,"488,O34.32 ",.02)
 ;;O34.32
 ;;9002226.02101,"488,O34.32 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.42 ",.01)
 ;;O34.42
 ;;9002226.02101,"488,O34.42 ",.02)
 ;;O34.42
 ;;9002226.02101,"488,O34.42 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.512 ",.01)
 ;;O34.512
 ;;9002226.02101,"488,O34.512 ",.02)
 ;;O34.512
 ;;9002226.02101,"488,O34.512 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.522 ",.01)
 ;;O34.522
 ;;9002226.02101,"488,O34.522 ",.02)
 ;;O34.522
 ;;9002226.02101,"488,O34.522 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.532 ",.01)
 ;;O34.532
 ;;9002226.02101,"488,O34.532 ",.02)
 ;;O34.532
 ;;9002226.02101,"488,O34.532 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.592 ",.01)
 ;;O34.592
 ;;9002226.02101,"488,O34.592 ",.02)
 ;;O34.592
 ;;9002226.02101,"488,O34.592 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.62 ",.01)
 ;;O34.62
 ;;9002226.02101,"488,O34.62 ",.02)
 ;;O34.62
 ;;9002226.02101,"488,O34.62 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.72 ",.01)
 ;;O34.72
 ;;9002226.02101,"488,O34.72 ",.02)
 ;;O34.72
 ;;9002226.02101,"488,O34.72 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.82 ",.01)
 ;;O34.82
 ;;9002226.02101,"488,O34.82 ",.02)
 ;;O34.82
 ;;9002226.02101,"488,O34.82 ",.03)
 ;;30
 ;;9002226.02101,"488,O34.92 ",.01)
 ;;O34.92
 ;;9002226.02101,"488,O34.92 ",.02)
 ;;O34.92
 ;;9002226.02101,"488,O34.92 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0120 ",.01)
 ;;O36.0120
 ;;9002226.02101,"488,O36.0120 ",.02)
 ;;O36.0120
 ;;9002226.02101,"488,O36.0120 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0121 ",.01)
 ;;O36.0121
 ;;9002226.02101,"488,O36.0121 ",.02)
 ;;O36.0121
 ;;9002226.02101,"488,O36.0121 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0122 ",.01)
 ;;O36.0122
 ;;9002226.02101,"488,O36.0122 ",.02)
 ;;O36.0122
 ;;9002226.02101,"488,O36.0122 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0123 ",.01)
 ;;O36.0123
 ;;9002226.02101,"488,O36.0123 ",.02)
 ;;O36.0123
 ;;9002226.02101,"488,O36.0123 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0124 ",.01)
 ;;O36.0124
 ;;9002226.02101,"488,O36.0124 ",.02)
 ;;O36.0124
 ;;9002226.02101,"488,O36.0124 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0125 ",.01)
 ;;O36.0125
 ;;9002226.02101,"488,O36.0125 ",.02)
 ;;O36.0125
 ;;9002226.02101,"488,O36.0125 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0129 ",.01)
 ;;O36.0129
 ;;9002226.02101,"488,O36.0129 ",.02)
 ;;O36.0129
 ;;9002226.02101,"488,O36.0129 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0920 ",.01)
 ;;O36.0920
 ;;9002226.02101,"488,O36.0920 ",.02)
 ;;O36.0920
 ;;9002226.02101,"488,O36.0920 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0921 ",.01)
 ;;O36.0921
 ;;9002226.02101,"488,O36.0921 ",.02)
 ;;O36.0921
 ;;9002226.02101,"488,O36.0921 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0922 ",.01)
 ;;O36.0922
 ;;9002226.02101,"488,O36.0922 ",.02)
 ;;O36.0922
 ;;9002226.02101,"488,O36.0922 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0923 ",.01)
 ;;O36.0923
 ;;9002226.02101,"488,O36.0923 ",.02)
 ;;O36.0923
 ;;9002226.02101,"488,O36.0923 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0924 ",.01)
 ;;O36.0924
 ;;9002226.02101,"488,O36.0924 ",.02)
 ;;O36.0924
 ;;9002226.02101,"488,O36.0924 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0925 ",.01)
 ;;O36.0925
 ;;9002226.02101,"488,O36.0925 ",.02)
 ;;O36.0925
 ;;9002226.02101,"488,O36.0925 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.0929 ",.01)
 ;;O36.0929
 ;;9002226.02101,"488,O36.0929 ",.02)
 ;;O36.0929
 ;;9002226.02101,"488,O36.0929 ",.03)
 ;;30
 ;;9002226.02101,"488,O36.1120 ",.01)
 ;;O36.1120
 ;;9002226.02101,"488,O36.1120 ",.02)
 ;;O36.1120
 ;;9002226.02101,"488,O36.1120 ",.03)
 ;;30
