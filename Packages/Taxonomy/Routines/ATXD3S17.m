ATXD3S17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1011,O36.0925 ",.02)
 ;;O36.0925 
 ;;9002226.02101,"1011,O36.0925 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0929 ",.01)
 ;;O36.0929 
 ;;9002226.02101,"1011,O36.0929 ",.02)
 ;;O36.0929 
 ;;9002226.02101,"1011,O36.0929 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0930 ",.01)
 ;;O36.0930 
 ;;9002226.02101,"1011,O36.0930 ",.02)
 ;;O36.0930 
 ;;9002226.02101,"1011,O36.0930 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0931 ",.01)
 ;;O36.0931 
 ;;9002226.02101,"1011,O36.0931 ",.02)
 ;;O36.0931 
 ;;9002226.02101,"1011,O36.0931 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0932 ",.01)
 ;;O36.0932 
 ;;9002226.02101,"1011,O36.0932 ",.02)
 ;;O36.0932 
 ;;9002226.02101,"1011,O36.0932 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0933 ",.01)
 ;;O36.0933 
 ;;9002226.02101,"1011,O36.0933 ",.02)
 ;;O36.0933 
 ;;9002226.02101,"1011,O36.0933 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0934 ",.01)
 ;;O36.0934 
 ;;9002226.02101,"1011,O36.0934 ",.02)
 ;;O36.0934 
 ;;9002226.02101,"1011,O36.0934 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0935 ",.01)
 ;;O36.0935 
 ;;9002226.02101,"1011,O36.0935 ",.02)
 ;;O36.0935 
 ;;9002226.02101,"1011,O36.0935 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0939 ",.01)
 ;;O36.0939 
 ;;9002226.02101,"1011,O36.0939 ",.02)
 ;;O36.0939 
 ;;9002226.02101,"1011,O36.0939 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0990 ",.01)
 ;;O36.0990 
 ;;9002226.02101,"1011,O36.0990 ",.02)
 ;;O36.0990 
 ;;9002226.02101,"1011,O36.0990 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0991 ",.01)
 ;;O36.0991 
 ;;9002226.02101,"1011,O36.0991 ",.02)
 ;;O36.0991 
 ;;9002226.02101,"1011,O36.0991 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0992 ",.01)
 ;;O36.0992 
 ;;9002226.02101,"1011,O36.0992 ",.02)
 ;;O36.0992 
 ;;9002226.02101,"1011,O36.0992 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0993 ",.01)
 ;;O36.0993 
 ;;9002226.02101,"1011,O36.0993 ",.02)
 ;;O36.0993 
 ;;9002226.02101,"1011,O36.0993 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0994 ",.01)
 ;;O36.0994 
 ;;9002226.02101,"1011,O36.0994 ",.02)
 ;;O36.0994 
 ;;9002226.02101,"1011,O36.0994 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0995 ",.01)
 ;;O36.0995 
 ;;9002226.02101,"1011,O36.0995 ",.02)
 ;;O36.0995 
 ;;9002226.02101,"1011,O36.0995 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.0999 ",.01)
 ;;O36.0999 
 ;;9002226.02101,"1011,O36.0999 ",.02)
 ;;O36.0999 
 ;;9002226.02101,"1011,O36.0999 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1110 ",.01)
 ;;O36.1110 
 ;;9002226.02101,"1011,O36.1110 ",.02)
 ;;O36.1110 
 ;;9002226.02101,"1011,O36.1110 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1111 ",.01)
 ;;O36.1111 
 ;;9002226.02101,"1011,O36.1111 ",.02)
 ;;O36.1111 
 ;;9002226.02101,"1011,O36.1111 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1112 ",.01)
 ;;O36.1112 
 ;;9002226.02101,"1011,O36.1112 ",.02)
 ;;O36.1112 
 ;;9002226.02101,"1011,O36.1112 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1113 ",.01)
 ;;O36.1113 
 ;;9002226.02101,"1011,O36.1113 ",.02)
 ;;O36.1113 
 ;;9002226.02101,"1011,O36.1113 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1114 ",.01)
 ;;O36.1114 
 ;;9002226.02101,"1011,O36.1114 ",.02)
 ;;O36.1114 
 ;;9002226.02101,"1011,O36.1114 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1115 ",.01)
 ;;O36.1115 
 ;;9002226.02101,"1011,O36.1115 ",.02)
 ;;O36.1115 
 ;;9002226.02101,"1011,O36.1115 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1119 ",.01)
 ;;O36.1119 
 ;;9002226.02101,"1011,O36.1119 ",.02)
 ;;O36.1119 
 ;;9002226.02101,"1011,O36.1119 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1120 ",.01)
 ;;O36.1120 
 ;;9002226.02101,"1011,O36.1120 ",.02)
 ;;O36.1120 
 ;;9002226.02101,"1011,O36.1120 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1121 ",.01)
 ;;O36.1121 
 ;;9002226.02101,"1011,O36.1121 ",.02)
 ;;O36.1121 
 ;;9002226.02101,"1011,O36.1121 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1122 ",.01)
 ;;O36.1122 
 ;;9002226.02101,"1011,O36.1122 ",.02)
 ;;O36.1122 
 ;;9002226.02101,"1011,O36.1122 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1123 ",.01)
 ;;O36.1123 
 ;;9002226.02101,"1011,O36.1123 ",.02)
 ;;O36.1123 
 ;;9002226.02101,"1011,O36.1123 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1124 ",.01)
 ;;O36.1124 
 ;;9002226.02101,"1011,O36.1124 ",.02)
 ;;O36.1124 
 ;;9002226.02101,"1011,O36.1124 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1125 ",.01)
 ;;O36.1125 
 ;;9002226.02101,"1011,O36.1125 ",.02)
 ;;O36.1125 
 ;;9002226.02101,"1011,O36.1125 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1129 ",.01)
 ;;O36.1129 
 ;;9002226.02101,"1011,O36.1129 ",.02)
 ;;O36.1129 
 ;;9002226.02101,"1011,O36.1129 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1130 ",.01)
 ;;O36.1130 
 ;;9002226.02101,"1011,O36.1130 ",.02)
 ;;O36.1130 
 ;;9002226.02101,"1011,O36.1130 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1131 ",.01)
 ;;O36.1131 
 ;;9002226.02101,"1011,O36.1131 ",.02)
 ;;O36.1131 
 ;;9002226.02101,"1011,O36.1131 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1132 ",.01)
 ;;O36.1132 
 ;;9002226.02101,"1011,O36.1132 ",.02)
 ;;O36.1132 
 ;;9002226.02101,"1011,O36.1132 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1133 ",.01)
 ;;O36.1133 
 ;;9002226.02101,"1011,O36.1133 ",.02)
 ;;O36.1133 
 ;;9002226.02101,"1011,O36.1133 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1134 ",.01)
 ;;O36.1134 
 ;;9002226.02101,"1011,O36.1134 ",.02)
 ;;O36.1134 
 ;;9002226.02101,"1011,O36.1134 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1135 ",.01)
 ;;O36.1135 
 ;;9002226.02101,"1011,O36.1135 ",.02)
 ;;O36.1135 
 ;;9002226.02101,"1011,O36.1135 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1139 ",.01)
 ;;O36.1139 
 ;;9002226.02101,"1011,O36.1139 ",.02)
 ;;O36.1139 
 ;;9002226.02101,"1011,O36.1139 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1190 ",.01)
 ;;O36.1190 
 ;;9002226.02101,"1011,O36.1190 ",.02)
 ;;O36.1190 
 ;;9002226.02101,"1011,O36.1190 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1191 ",.01)
 ;;O36.1191 
 ;;9002226.02101,"1011,O36.1191 ",.02)
 ;;O36.1191 
 ;;9002226.02101,"1011,O36.1191 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1192 ",.01)
 ;;O36.1192 
 ;;9002226.02101,"1011,O36.1192 ",.02)
 ;;O36.1192 
 ;;9002226.02101,"1011,O36.1192 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1193 ",.01)
 ;;O36.1193 
 ;;9002226.02101,"1011,O36.1193 ",.02)
 ;;O36.1193 
 ;;9002226.02101,"1011,O36.1193 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1194 ",.01)
 ;;O36.1194 
 ;;9002226.02101,"1011,O36.1194 ",.02)
 ;;O36.1194 
 ;;9002226.02101,"1011,O36.1194 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1195 ",.01)
 ;;O36.1195 
 ;;9002226.02101,"1011,O36.1195 ",.02)
 ;;O36.1195 
 ;;9002226.02101,"1011,O36.1195 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1199 ",.01)
 ;;O36.1199 
 ;;9002226.02101,"1011,O36.1199 ",.02)
 ;;O36.1199 
 ;;9002226.02101,"1011,O36.1199 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1910 ",.01)
 ;;O36.1910 
 ;;9002226.02101,"1011,O36.1910 ",.02)
 ;;O36.1910 
 ;;9002226.02101,"1011,O36.1910 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1911 ",.01)
 ;;O36.1911 
 ;;9002226.02101,"1011,O36.1911 ",.02)
 ;;O36.1911 
 ;;9002226.02101,"1011,O36.1911 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1912 ",.01)
 ;;O36.1912 
 ;;9002226.02101,"1011,O36.1912 ",.02)
 ;;O36.1912 
 ;;9002226.02101,"1011,O36.1912 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1913 ",.01)
 ;;O36.1913 
 ;;9002226.02101,"1011,O36.1913 ",.02)
 ;;O36.1913 
 ;;9002226.02101,"1011,O36.1913 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1914 ",.01)
 ;;O36.1914 
 ;;9002226.02101,"1011,O36.1914 ",.02)
 ;;O36.1914 
 ;;9002226.02101,"1011,O36.1914 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1915 ",.01)
 ;;O36.1915 
 ;;9002226.02101,"1011,O36.1915 ",.02)
 ;;O36.1915 
 ;;9002226.02101,"1011,O36.1915 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1919 ",.01)
 ;;O36.1919 
 ;;9002226.02101,"1011,O36.1919 ",.02)
 ;;O36.1919 
 ;;9002226.02101,"1011,O36.1919 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1920 ",.01)
 ;;O36.1920 
 ;;9002226.02101,"1011,O36.1920 ",.02)
 ;;O36.1920 
 ;;9002226.02101,"1011,O36.1920 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1921 ",.01)
 ;;O36.1921 
 ;;9002226.02101,"1011,O36.1921 ",.02)
 ;;O36.1921 
 ;;9002226.02101,"1011,O36.1921 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1922 ",.01)
 ;;O36.1922 
 ;;9002226.02101,"1011,O36.1922 ",.02)
 ;;O36.1922 
 ;;9002226.02101,"1011,O36.1922 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1923 ",.01)
 ;;O36.1923 
 ;;9002226.02101,"1011,O36.1923 ",.02)
 ;;O36.1923 
 ;;9002226.02101,"1011,O36.1923 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1924 ",.01)
 ;;O36.1924 
 ;;9002226.02101,"1011,O36.1924 ",.02)
 ;;O36.1924 
 ;;9002226.02101,"1011,O36.1924 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1925 ",.01)
 ;;O36.1925 
 ;;9002226.02101,"1011,O36.1925 ",.02)
 ;;O36.1925 
 ;;9002226.02101,"1011,O36.1925 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1929 ",.01)
 ;;O36.1929 
 ;;9002226.02101,"1011,O36.1929 ",.02)
 ;;O36.1929 
 ;;9002226.02101,"1011,O36.1929 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1930 ",.01)
 ;;O36.1930 
 ;;9002226.02101,"1011,O36.1930 ",.02)
 ;;O36.1930 
 ;;9002226.02101,"1011,O36.1930 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1931 ",.01)
 ;;O36.1931 
 ;;9002226.02101,"1011,O36.1931 ",.02)
 ;;O36.1931 
 ;;9002226.02101,"1011,O36.1931 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1932 ",.01)
 ;;O36.1932 
 ;;9002226.02101,"1011,O36.1932 ",.02)
 ;;O36.1932 
 ;;9002226.02101,"1011,O36.1932 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1933 ",.01)
 ;;O36.1933 
 ;;9002226.02101,"1011,O36.1933 ",.02)
 ;;O36.1933 
 ;;9002226.02101,"1011,O36.1933 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1934 ",.01)
 ;;O36.1934 
 ;;9002226.02101,"1011,O36.1934 ",.02)
 ;;O36.1934 
 ;;9002226.02101,"1011,O36.1934 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1935 ",.01)
 ;;O36.1935 
 ;;9002226.02101,"1011,O36.1935 ",.02)
 ;;O36.1935 
 ;;9002226.02101,"1011,O36.1935 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1939 ",.01)
 ;;O36.1939 
 ;;9002226.02101,"1011,O36.1939 ",.02)
 ;;O36.1939 
 ;;9002226.02101,"1011,O36.1939 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1990 ",.01)
 ;;O36.1990 
 ;;9002226.02101,"1011,O36.1990 ",.02)
 ;;O36.1990 
 ;;9002226.02101,"1011,O36.1990 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1991 ",.01)
 ;;O36.1991 
 ;;9002226.02101,"1011,O36.1991 ",.02)
 ;;O36.1991 
 ;;9002226.02101,"1011,O36.1991 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1992 ",.01)
 ;;O36.1992 
 ;;9002226.02101,"1011,O36.1992 ",.02)
 ;;O36.1992 
 ;;9002226.02101,"1011,O36.1992 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1993 ",.01)
 ;;O36.1993 
 ;;9002226.02101,"1011,O36.1993 ",.02)
 ;;O36.1993 
 ;;9002226.02101,"1011,O36.1993 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1994 ",.01)
 ;;O36.1994 
 ;;9002226.02101,"1011,O36.1994 ",.02)
 ;;O36.1994 
 ;;9002226.02101,"1011,O36.1994 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1995 ",.01)
 ;;O36.1995 
 ;;9002226.02101,"1011,O36.1995 ",.02)
 ;;O36.1995 
 ;;9002226.02101,"1011,O36.1995 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.1999 ",.01)
 ;;O36.1999 
 ;;9002226.02101,"1011,O36.1999 ",.02)
 ;;O36.1999 
 ;;9002226.02101,"1011,O36.1999 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X0 ",.01)
 ;;O36.20X0 
 ;;9002226.02101,"1011,O36.20X0 ",.02)
 ;;O36.20X0 
 ;;9002226.02101,"1011,O36.20X0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X1 ",.01)
 ;;O36.20X1 
 ;;9002226.02101,"1011,O36.20X1 ",.02)
 ;;O36.20X1 
 ;;9002226.02101,"1011,O36.20X1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X2 ",.01)
 ;;O36.20X2 
 ;;9002226.02101,"1011,O36.20X2 ",.02)
 ;;O36.20X2 
 ;;9002226.02101,"1011,O36.20X2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X3 ",.01)
 ;;O36.20X3 
 ;;9002226.02101,"1011,O36.20X3 ",.02)
 ;;O36.20X3 
 ;;9002226.02101,"1011,O36.20X3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X4 ",.01)
 ;;O36.20X4 
 ;;9002226.02101,"1011,O36.20X4 ",.02)
 ;;O36.20X4 
 ;;9002226.02101,"1011,O36.20X4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X5 ",.01)
 ;;O36.20X5 
 ;;9002226.02101,"1011,O36.20X5 ",.02)
 ;;O36.20X5 
 ;;9002226.02101,"1011,O36.20X5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.20X9 ",.01)
 ;;O36.20X9 
 ;;9002226.02101,"1011,O36.20X9 ",.02)
 ;;O36.20X9 
 ;;9002226.02101,"1011,O36.20X9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X0 ",.01)
 ;;O36.21X0 
 ;;9002226.02101,"1011,O36.21X0 ",.02)
 ;;O36.21X0 
 ;;9002226.02101,"1011,O36.21X0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X1 ",.01)
 ;;O36.21X1 
 ;;9002226.02101,"1011,O36.21X1 ",.02)
 ;;O36.21X1 
 ;;9002226.02101,"1011,O36.21X1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X2 ",.01)
 ;;O36.21X2 
 ;;9002226.02101,"1011,O36.21X2 ",.02)
 ;;O36.21X2 
 ;;9002226.02101,"1011,O36.21X2 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X3 ",.01)
 ;;O36.21X3 
 ;;9002226.02101,"1011,O36.21X3 ",.02)
 ;;O36.21X3 
 ;;9002226.02101,"1011,O36.21X3 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X4 ",.01)
 ;;O36.21X4 
 ;;9002226.02101,"1011,O36.21X4 ",.02)
 ;;O36.21X4 
 ;;9002226.02101,"1011,O36.21X4 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X5 ",.01)
 ;;O36.21X5 
 ;;9002226.02101,"1011,O36.21X5 ",.02)
 ;;O36.21X5 
 ;;9002226.02101,"1011,O36.21X5 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.21X9 ",.01)
 ;;O36.21X9 
 ;;9002226.02101,"1011,O36.21X9 ",.02)
 ;;O36.21X9 
 ;;9002226.02101,"1011,O36.21X9 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.22X0 ",.01)
 ;;O36.22X0 
 ;;9002226.02101,"1011,O36.22X0 ",.02)
 ;;O36.22X0 
 ;;9002226.02101,"1011,O36.22X0 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.22X1 ",.01)
 ;;O36.22X1 
 ;;9002226.02101,"1011,O36.22X1 ",.02)
 ;;O36.22X1 
 ;;9002226.02101,"1011,O36.22X1 ",.03)
 ;;30
 ;;9002226.02101,"1011,O36.22X2 ",.01)
 ;;O36.22X2 
