ATXD8P22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 12, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"913,O36.1194 ",.01)
 ;;O36.1194 
 ;;9002226.02101,"913,O36.1194 ",.02)
 ;;O36.1194 
 ;;9002226.02101,"913,O36.1194 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1195 ",.01)
 ;;O36.1195 
 ;;9002226.02101,"913,O36.1195 ",.02)
 ;;O36.1195 
 ;;9002226.02101,"913,O36.1195 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1199 ",.01)
 ;;O36.1199 
 ;;9002226.02101,"913,O36.1199 ",.02)
 ;;O36.1199 
 ;;9002226.02101,"913,O36.1199 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1910 ",.01)
 ;;O36.1910 
 ;;9002226.02101,"913,O36.1910 ",.02)
 ;;O36.1910 
 ;;9002226.02101,"913,O36.1910 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1911 ",.01)
 ;;O36.1911 
 ;;9002226.02101,"913,O36.1911 ",.02)
 ;;O36.1911 
 ;;9002226.02101,"913,O36.1911 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1912 ",.01)
 ;;O36.1912 
 ;;9002226.02101,"913,O36.1912 ",.02)
 ;;O36.1912 
 ;;9002226.02101,"913,O36.1912 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1913 ",.01)
 ;;O36.1913 
 ;;9002226.02101,"913,O36.1913 ",.02)
 ;;O36.1913 
 ;;9002226.02101,"913,O36.1913 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1914 ",.01)
 ;;O36.1914 
 ;;9002226.02101,"913,O36.1914 ",.02)
 ;;O36.1914 
 ;;9002226.02101,"913,O36.1914 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1915 ",.01)
 ;;O36.1915 
 ;;9002226.02101,"913,O36.1915 ",.02)
 ;;O36.1915 
 ;;9002226.02101,"913,O36.1915 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1919 ",.01)
 ;;O36.1919 
 ;;9002226.02101,"913,O36.1919 ",.02)
 ;;O36.1919 
 ;;9002226.02101,"913,O36.1919 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1920 ",.01)
 ;;O36.1920 
 ;;9002226.02101,"913,O36.1920 ",.02)
 ;;O36.1920 
 ;;9002226.02101,"913,O36.1920 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1921 ",.01)
 ;;O36.1921 
 ;;9002226.02101,"913,O36.1921 ",.02)
 ;;O36.1921 
 ;;9002226.02101,"913,O36.1921 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1922 ",.01)
 ;;O36.1922 
 ;;9002226.02101,"913,O36.1922 ",.02)
 ;;O36.1922 
 ;;9002226.02101,"913,O36.1922 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1923 ",.01)
 ;;O36.1923 
 ;;9002226.02101,"913,O36.1923 ",.02)
 ;;O36.1923 
 ;;9002226.02101,"913,O36.1923 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1924 ",.01)
 ;;O36.1924 
 ;;9002226.02101,"913,O36.1924 ",.02)
 ;;O36.1924 
 ;;9002226.02101,"913,O36.1924 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1925 ",.01)
 ;;O36.1925 
 ;;9002226.02101,"913,O36.1925 ",.02)
 ;;O36.1925 
 ;;9002226.02101,"913,O36.1925 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1929 ",.01)
 ;;O36.1929 
 ;;9002226.02101,"913,O36.1929 ",.02)
 ;;O36.1929 
 ;;9002226.02101,"913,O36.1929 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1930 ",.01)
 ;;O36.1930 
 ;;9002226.02101,"913,O36.1930 ",.02)
 ;;O36.1930 
 ;;9002226.02101,"913,O36.1930 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1931 ",.01)
 ;;O36.1931 
 ;;9002226.02101,"913,O36.1931 ",.02)
 ;;O36.1931 
 ;;9002226.02101,"913,O36.1931 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1932 ",.01)
 ;;O36.1932 
 ;;9002226.02101,"913,O36.1932 ",.02)
 ;;O36.1932 
 ;;9002226.02101,"913,O36.1932 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1933 ",.01)
 ;;O36.1933 
 ;;9002226.02101,"913,O36.1933 ",.02)
 ;;O36.1933 
 ;;9002226.02101,"913,O36.1933 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1934 ",.01)
 ;;O36.1934 
 ;;9002226.02101,"913,O36.1934 ",.02)
 ;;O36.1934 
 ;;9002226.02101,"913,O36.1934 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1935 ",.01)
 ;;O36.1935 
 ;;9002226.02101,"913,O36.1935 ",.02)
 ;;O36.1935 
 ;;9002226.02101,"913,O36.1935 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1939 ",.01)
 ;;O36.1939 
 ;;9002226.02101,"913,O36.1939 ",.02)
 ;;O36.1939 
 ;;9002226.02101,"913,O36.1939 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1990 ",.01)
 ;;O36.1990 
 ;;9002226.02101,"913,O36.1990 ",.02)
 ;;O36.1990 
 ;;9002226.02101,"913,O36.1990 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1991 ",.01)
 ;;O36.1991 
 ;;9002226.02101,"913,O36.1991 ",.02)
 ;;O36.1991 
 ;;9002226.02101,"913,O36.1991 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1992 ",.01)
 ;;O36.1992 
 ;;9002226.02101,"913,O36.1992 ",.02)
 ;;O36.1992 
 ;;9002226.02101,"913,O36.1992 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1993 ",.01)
 ;;O36.1993 
 ;;9002226.02101,"913,O36.1993 ",.02)
 ;;O36.1993 
 ;;9002226.02101,"913,O36.1993 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1994 ",.01)
 ;;O36.1994 
 ;;9002226.02101,"913,O36.1994 ",.02)
 ;;O36.1994 
 ;;9002226.02101,"913,O36.1994 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1995 ",.01)
 ;;O36.1995 
 ;;9002226.02101,"913,O36.1995 ",.02)
 ;;O36.1995 
 ;;9002226.02101,"913,O36.1995 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.1999 ",.01)
 ;;O36.1999 
 ;;9002226.02101,"913,O36.1999 ",.02)
 ;;O36.1999 
 ;;9002226.02101,"913,O36.1999 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X0 ",.01)
 ;;O36.20X0 
 ;;9002226.02101,"913,O36.20X0 ",.02)
 ;;O36.20X0 
 ;;9002226.02101,"913,O36.20X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X1 ",.01)
 ;;O36.20X1 
 ;;9002226.02101,"913,O36.20X1 ",.02)
 ;;O36.20X1 
 ;;9002226.02101,"913,O36.20X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X2 ",.01)
 ;;O36.20X2 
 ;;9002226.02101,"913,O36.20X2 ",.02)
 ;;O36.20X2 
 ;;9002226.02101,"913,O36.20X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X3 ",.01)
 ;;O36.20X3 
 ;;9002226.02101,"913,O36.20X3 ",.02)
 ;;O36.20X3 
 ;;9002226.02101,"913,O36.20X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X4 ",.01)
 ;;O36.20X4 
 ;;9002226.02101,"913,O36.20X4 ",.02)
 ;;O36.20X4 
 ;;9002226.02101,"913,O36.20X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X5 ",.01)
 ;;O36.20X5 
 ;;9002226.02101,"913,O36.20X5 ",.02)
 ;;O36.20X5 
 ;;9002226.02101,"913,O36.20X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.20X9 ",.01)
 ;;O36.20X9 
 ;;9002226.02101,"913,O36.20X9 ",.02)
 ;;O36.20X9 
 ;;9002226.02101,"913,O36.20X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X0 ",.01)
 ;;O36.21X0 
 ;;9002226.02101,"913,O36.21X0 ",.02)
 ;;O36.21X0 
 ;;9002226.02101,"913,O36.21X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X1 ",.01)
 ;;O36.21X1 
 ;;9002226.02101,"913,O36.21X1 ",.02)
 ;;O36.21X1 
 ;;9002226.02101,"913,O36.21X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X2 ",.01)
 ;;O36.21X2 
 ;;9002226.02101,"913,O36.21X2 ",.02)
 ;;O36.21X2 
 ;;9002226.02101,"913,O36.21X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X3 ",.01)
 ;;O36.21X3 
 ;;9002226.02101,"913,O36.21X3 ",.02)
 ;;O36.21X3 
 ;;9002226.02101,"913,O36.21X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X4 ",.01)
 ;;O36.21X4 
 ;;9002226.02101,"913,O36.21X4 ",.02)
 ;;O36.21X4 
 ;;9002226.02101,"913,O36.21X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X5 ",.01)
 ;;O36.21X5 
 ;;9002226.02101,"913,O36.21X5 ",.02)
 ;;O36.21X5 
 ;;9002226.02101,"913,O36.21X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.21X9 ",.01)
 ;;O36.21X9 
 ;;9002226.02101,"913,O36.21X9 ",.02)
 ;;O36.21X9 
 ;;9002226.02101,"913,O36.21X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X0 ",.01)
 ;;O36.22X0 
 ;;9002226.02101,"913,O36.22X0 ",.02)
 ;;O36.22X0 
 ;;9002226.02101,"913,O36.22X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X1 ",.01)
 ;;O36.22X1 
 ;;9002226.02101,"913,O36.22X1 ",.02)
 ;;O36.22X1 
 ;;9002226.02101,"913,O36.22X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X2 ",.01)
 ;;O36.22X2 
 ;;9002226.02101,"913,O36.22X2 ",.02)
 ;;O36.22X2 
 ;;9002226.02101,"913,O36.22X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X3 ",.01)
 ;;O36.22X3 
 ;;9002226.02101,"913,O36.22X3 ",.02)
 ;;O36.22X3 
 ;;9002226.02101,"913,O36.22X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X4 ",.01)
 ;;O36.22X4 
 ;;9002226.02101,"913,O36.22X4 ",.02)
 ;;O36.22X4 
 ;;9002226.02101,"913,O36.22X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X5 ",.01)
 ;;O36.22X5 
 ;;9002226.02101,"913,O36.22X5 ",.02)
 ;;O36.22X5 
 ;;9002226.02101,"913,O36.22X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.22X9 ",.01)
 ;;O36.22X9 
 ;;9002226.02101,"913,O36.22X9 ",.02)
 ;;O36.22X9 
 ;;9002226.02101,"913,O36.22X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X0 ",.01)
 ;;O36.23X0 
 ;;9002226.02101,"913,O36.23X0 ",.02)
 ;;O36.23X0 
 ;;9002226.02101,"913,O36.23X0 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X1 ",.01)
 ;;O36.23X1 
 ;;9002226.02101,"913,O36.23X1 ",.02)
 ;;O36.23X1 
 ;;9002226.02101,"913,O36.23X1 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X2 ",.01)
 ;;O36.23X2 
 ;;9002226.02101,"913,O36.23X2 ",.02)
 ;;O36.23X2 
 ;;9002226.02101,"913,O36.23X2 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X3 ",.01)
 ;;O36.23X3 
 ;;9002226.02101,"913,O36.23X3 ",.02)
 ;;O36.23X3 
 ;;9002226.02101,"913,O36.23X3 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X4 ",.01)
 ;;O36.23X4 
 ;;9002226.02101,"913,O36.23X4 ",.02)
 ;;O36.23X4 
 ;;9002226.02101,"913,O36.23X4 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X5 ",.01)
 ;;O36.23X5 
 ;;9002226.02101,"913,O36.23X5 ",.02)
 ;;O36.23X5 
 ;;9002226.02101,"913,O36.23X5 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.23X9 ",.01)
 ;;O36.23X9 
 ;;9002226.02101,"913,O36.23X9 ",.02)
 ;;O36.23X9 
 ;;9002226.02101,"913,O36.23X9 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX0 ",.01)
 ;;O36.4XX0 
 ;;9002226.02101,"913,O36.4XX0 ",.02)
 ;;O36.4XX0 
 ;;9002226.02101,"913,O36.4XX0 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX1 ",.01)
 ;;O36.4XX1 
 ;;9002226.02101,"913,O36.4XX1 ",.02)
 ;;O36.4XX1 
 ;;9002226.02101,"913,O36.4XX1 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX2 ",.01)
 ;;O36.4XX2 
 ;;9002226.02101,"913,O36.4XX2 ",.02)
 ;;O36.4XX2 
 ;;9002226.02101,"913,O36.4XX2 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX3 ",.01)
 ;;O36.4XX3 
 ;;9002226.02101,"913,O36.4XX3 ",.02)
 ;;O36.4XX3 
 ;;9002226.02101,"913,O36.4XX3 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX4 ",.01)
 ;;O36.4XX4 
 ;;9002226.02101,"913,O36.4XX4 ",.02)
 ;;O36.4XX4 
 ;;9002226.02101,"913,O36.4XX4 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX5 ",.01)
 ;;O36.4XX5 
 ;;9002226.02101,"913,O36.4XX5 ",.02)
 ;;O36.4XX5 
 ;;9002226.02101,"913,O36.4XX5 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.4XX9 ",.01)
 ;;O36.4XX9 
 ;;9002226.02101,"913,O36.4XX9 ",.02)
 ;;O36.4XX9 
 ;;9002226.02101,"913,O36.4XX9 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5110 ",.01)
 ;;O36.5110 
 ;;9002226.02101,"913,O36.5110 ",.02)
 ;;O36.5110 
 ;;9002226.02101,"913,O36.5110 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5111 ",.01)
 ;;O36.5111 
 ;;9002226.02101,"913,O36.5111 ",.02)
 ;;O36.5111 
 ;;9002226.02101,"913,O36.5111 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5112 ",.01)
 ;;O36.5112 
 ;;9002226.02101,"913,O36.5112 ",.02)
 ;;O36.5112 
 ;;9002226.02101,"913,O36.5112 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5113 ",.01)
 ;;O36.5113 
 ;;9002226.02101,"913,O36.5113 ",.02)
 ;;O36.5113 
 ;;9002226.02101,"913,O36.5113 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5114 ",.01)
 ;;O36.5114 
 ;;9002226.02101,"913,O36.5114 ",.02)
 ;;O36.5114 
 ;;9002226.02101,"913,O36.5114 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5115 ",.01)
 ;;O36.5115 
 ;;9002226.02101,"913,O36.5115 ",.02)
 ;;O36.5115 
 ;;9002226.02101,"913,O36.5115 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5119 ",.01)
 ;;O36.5119 
 ;;9002226.02101,"913,O36.5119 ",.02)
 ;;O36.5119 
 ;;9002226.02101,"913,O36.5119 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5120 ",.01)
 ;;O36.5120 
 ;;9002226.02101,"913,O36.5120 ",.02)
 ;;O36.5120 
 ;;9002226.02101,"913,O36.5120 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5121 ",.01)
 ;;O36.5121 
 ;;9002226.02101,"913,O36.5121 ",.02)
 ;;O36.5121 
 ;;9002226.02101,"913,O36.5121 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5122 ",.01)
 ;;O36.5122 
 ;;9002226.02101,"913,O36.5122 ",.02)
 ;;O36.5122 
 ;;9002226.02101,"913,O36.5122 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5123 ",.01)
 ;;O36.5123 
 ;;9002226.02101,"913,O36.5123 ",.02)
 ;;O36.5123 
 ;;9002226.02101,"913,O36.5123 ",.03)
 ;;30
 ;;9002226.02101,"913,O36.5124 ",.01)
 ;;O36.5124 
