ATXD6U2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"455,F11.188 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.19 ",.01)
 ;;F11.19 
 ;;9002226.02101,"455,F11.19 ",.02)
 ;;F11.19 
 ;;9002226.02101,"455,F11.19 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.20 ",.01)
 ;;F11.20 
 ;;9002226.02101,"455,F11.20 ",.02)
 ;;F11.20 
 ;;9002226.02101,"455,F11.20 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.220 ",.01)
 ;;F11.220 
 ;;9002226.02101,"455,F11.220 ",.02)
 ;;F11.220 
 ;;9002226.02101,"455,F11.220 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.221 ",.01)
 ;;F11.221 
 ;;9002226.02101,"455,F11.221 ",.02)
 ;;F11.221 
 ;;9002226.02101,"455,F11.221 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.222 ",.01)
 ;;F11.222 
 ;;9002226.02101,"455,F11.222 ",.02)
 ;;F11.222 
 ;;9002226.02101,"455,F11.222 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.229 ",.01)
 ;;F11.229 
 ;;9002226.02101,"455,F11.229 ",.02)
 ;;F11.229 
 ;;9002226.02101,"455,F11.229 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.23 ",.01)
 ;;F11.23 
 ;;9002226.02101,"455,F11.23 ",.02)
 ;;F11.23 
 ;;9002226.02101,"455,F11.23 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.24 ",.01)
 ;;F11.24 
 ;;9002226.02101,"455,F11.24 ",.02)
 ;;F11.24 
 ;;9002226.02101,"455,F11.24 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.250 ",.01)
 ;;F11.250 
 ;;9002226.02101,"455,F11.250 ",.02)
 ;;F11.250 
 ;;9002226.02101,"455,F11.250 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.251 ",.01)
 ;;F11.251 
 ;;9002226.02101,"455,F11.251 ",.02)
 ;;F11.251 
 ;;9002226.02101,"455,F11.251 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.259 ",.01)
 ;;F11.259 
 ;;9002226.02101,"455,F11.259 ",.02)
 ;;F11.259 
 ;;9002226.02101,"455,F11.259 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.281 ",.01)
 ;;F11.281 
 ;;9002226.02101,"455,F11.281 ",.02)
 ;;F11.281 
 ;;9002226.02101,"455,F11.281 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.282 ",.01)
 ;;F11.282 
 ;;9002226.02101,"455,F11.282 ",.02)
 ;;F11.282 
 ;;9002226.02101,"455,F11.282 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.288 ",.01)
 ;;F11.288 
 ;;9002226.02101,"455,F11.288 ",.02)
 ;;F11.288 
 ;;9002226.02101,"455,F11.288 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.29 ",.01)
 ;;F11.29 
 ;;9002226.02101,"455,F11.29 ",.02)
 ;;F11.29 
 ;;9002226.02101,"455,F11.29 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.90 ",.01)
 ;;F11.90 
 ;;9002226.02101,"455,F11.90 ",.02)
 ;;F11.90 
 ;;9002226.02101,"455,F11.90 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.920 ",.01)
 ;;F11.920 
 ;;9002226.02101,"455,F11.920 ",.02)
 ;;F11.920 
 ;;9002226.02101,"455,F11.920 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.921 ",.01)
 ;;F11.921 
 ;;9002226.02101,"455,F11.921 ",.02)
 ;;F11.921 
 ;;9002226.02101,"455,F11.921 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.922 ",.01)
 ;;F11.922 
 ;;9002226.02101,"455,F11.922 ",.02)
 ;;F11.922 
 ;;9002226.02101,"455,F11.922 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.929 ",.01)
 ;;F11.929 
 ;;9002226.02101,"455,F11.929 ",.02)
 ;;F11.929 
 ;;9002226.02101,"455,F11.929 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.93 ",.01)
 ;;F11.93 
 ;;9002226.02101,"455,F11.93 ",.02)
 ;;F11.93 
 ;;9002226.02101,"455,F11.93 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.94 ",.01)
 ;;F11.94 
 ;;9002226.02101,"455,F11.94 ",.02)
 ;;F11.94 
 ;;9002226.02101,"455,F11.94 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.950 ",.01)
 ;;F11.950 
 ;;9002226.02101,"455,F11.950 ",.02)
 ;;F11.950 
 ;;9002226.02101,"455,F11.950 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.951 ",.01)
 ;;F11.951 
 ;;9002226.02101,"455,F11.951 ",.02)
 ;;F11.951 
 ;;9002226.02101,"455,F11.951 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.959 ",.01)
 ;;F11.959 
 ;;9002226.02101,"455,F11.959 ",.02)
 ;;F11.959 
 ;;9002226.02101,"455,F11.959 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.981 ",.01)
 ;;F11.981 
 ;;9002226.02101,"455,F11.981 ",.02)
 ;;F11.981 
 ;;9002226.02101,"455,F11.981 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.982 ",.01)
 ;;F11.982 
 ;;9002226.02101,"455,F11.982 ",.02)
 ;;F11.982 
 ;;9002226.02101,"455,F11.982 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.988 ",.01)
 ;;F11.988 
 ;;9002226.02101,"455,F11.988 ",.02)
 ;;F11.988 
 ;;9002226.02101,"455,F11.988 ",.03)
 ;;30
 ;;9002226.02101,"455,F11.99 ",.01)
 ;;F11.99 
 ;;9002226.02101,"455,F11.99 ",.02)
 ;;F11.99 
 ;;9002226.02101,"455,F11.99 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.10 ",.01)
 ;;F12.10 
 ;;9002226.02101,"455,F12.10 ",.02)
 ;;F12.10 
 ;;9002226.02101,"455,F12.10 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.120 ",.01)
 ;;F12.120 
 ;;9002226.02101,"455,F12.120 ",.02)
 ;;F12.120 
 ;;9002226.02101,"455,F12.120 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.121 ",.01)
 ;;F12.121 
 ;;9002226.02101,"455,F12.121 ",.02)
 ;;F12.121 
 ;;9002226.02101,"455,F12.121 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.122 ",.01)
 ;;F12.122 
 ;;9002226.02101,"455,F12.122 ",.02)
 ;;F12.122 
 ;;9002226.02101,"455,F12.122 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.129 ",.01)
 ;;F12.129 
 ;;9002226.02101,"455,F12.129 ",.02)
 ;;F12.129 
 ;;9002226.02101,"455,F12.129 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.150 ",.01)
 ;;F12.150 
 ;;9002226.02101,"455,F12.150 ",.02)
 ;;F12.150 
 ;;9002226.02101,"455,F12.150 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.151 ",.01)
 ;;F12.151 
 ;;9002226.02101,"455,F12.151 ",.02)
 ;;F12.151 
 ;;9002226.02101,"455,F12.151 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.159 ",.01)
 ;;F12.159 
 ;;9002226.02101,"455,F12.159 ",.02)
 ;;F12.159 
 ;;9002226.02101,"455,F12.159 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.180 ",.01)
 ;;F12.180 
 ;;9002226.02101,"455,F12.180 ",.02)
 ;;F12.180 
 ;;9002226.02101,"455,F12.180 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.188 ",.01)
 ;;F12.188 
 ;;9002226.02101,"455,F12.188 ",.02)
 ;;F12.188 
 ;;9002226.02101,"455,F12.188 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.19 ",.01)
 ;;F12.19 
 ;;9002226.02101,"455,F12.19 ",.02)
 ;;F12.19 
 ;;9002226.02101,"455,F12.19 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.20 ",.01)
 ;;F12.20 
 ;;9002226.02101,"455,F12.20 ",.02)
 ;;F12.20 
 ;;9002226.02101,"455,F12.20 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.220 ",.01)
 ;;F12.220 
 ;;9002226.02101,"455,F12.220 ",.02)
 ;;F12.220 
 ;;9002226.02101,"455,F12.220 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.221 ",.01)
 ;;F12.221 
 ;;9002226.02101,"455,F12.221 ",.02)
 ;;F12.221 
 ;;9002226.02101,"455,F12.221 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.222 ",.01)
 ;;F12.222 
 ;;9002226.02101,"455,F12.222 ",.02)
 ;;F12.222 
 ;;9002226.02101,"455,F12.222 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.229 ",.01)
 ;;F12.229 
 ;;9002226.02101,"455,F12.229 ",.02)
 ;;F12.229 
 ;;9002226.02101,"455,F12.229 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.250 ",.01)
 ;;F12.250 
 ;;9002226.02101,"455,F12.250 ",.02)
 ;;F12.250 
 ;;9002226.02101,"455,F12.250 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.251 ",.01)
 ;;F12.251 
 ;;9002226.02101,"455,F12.251 ",.02)
 ;;F12.251 
 ;;9002226.02101,"455,F12.251 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.259 ",.01)
 ;;F12.259 
 ;;9002226.02101,"455,F12.259 ",.02)
 ;;F12.259 
 ;;9002226.02101,"455,F12.259 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.280 ",.01)
 ;;F12.280 
 ;;9002226.02101,"455,F12.280 ",.02)
 ;;F12.280 
 ;;9002226.02101,"455,F12.280 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.288 ",.01)
 ;;F12.288 
 ;;9002226.02101,"455,F12.288 ",.02)
 ;;F12.288 
 ;;9002226.02101,"455,F12.288 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.29 ",.01)
 ;;F12.29 
 ;;9002226.02101,"455,F12.29 ",.02)
 ;;F12.29 
 ;;9002226.02101,"455,F12.29 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.90 ",.01)
 ;;F12.90 
 ;;9002226.02101,"455,F12.90 ",.02)
 ;;F12.90 
 ;;9002226.02101,"455,F12.90 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.920 ",.01)
 ;;F12.920 
 ;;9002226.02101,"455,F12.920 ",.02)
 ;;F12.920 
 ;;9002226.02101,"455,F12.920 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.921 ",.01)
 ;;F12.921 
 ;;9002226.02101,"455,F12.921 ",.02)
 ;;F12.921 
 ;;9002226.02101,"455,F12.921 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.922 ",.01)
 ;;F12.922 
 ;;9002226.02101,"455,F12.922 ",.02)
 ;;F12.922 
 ;;9002226.02101,"455,F12.922 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.929 ",.01)
 ;;F12.929 
 ;;9002226.02101,"455,F12.929 ",.02)
 ;;F12.929 
 ;;9002226.02101,"455,F12.929 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.950 ",.01)
 ;;F12.950 
 ;;9002226.02101,"455,F12.950 ",.02)
 ;;F12.950 
 ;;9002226.02101,"455,F12.950 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.951 ",.01)
 ;;F12.951 
 ;;9002226.02101,"455,F12.951 ",.02)
 ;;F12.951 
 ;;9002226.02101,"455,F12.951 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.959 ",.01)
 ;;F12.959 
 ;;9002226.02101,"455,F12.959 ",.02)
 ;;F12.959 
 ;;9002226.02101,"455,F12.959 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.980 ",.01)
 ;;F12.980 
 ;;9002226.02101,"455,F12.980 ",.02)
 ;;F12.980 
 ;;9002226.02101,"455,F12.980 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.988 ",.01)
 ;;F12.988 
 ;;9002226.02101,"455,F12.988 ",.02)
 ;;F12.988 
 ;;9002226.02101,"455,F12.988 ",.03)
 ;;30
 ;;9002226.02101,"455,F12.99 ",.01)
 ;;F12.99 
 ;;9002226.02101,"455,F12.99 ",.02)
 ;;F12.99 
 ;;9002226.02101,"455,F12.99 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.10 ",.01)
 ;;F13.10 
 ;;9002226.02101,"455,F13.10 ",.02)
 ;;F13.10 
 ;;9002226.02101,"455,F13.10 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.120 ",.01)
 ;;F13.120 
 ;;9002226.02101,"455,F13.120 ",.02)
 ;;F13.120 
 ;;9002226.02101,"455,F13.120 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.121 ",.01)
 ;;F13.121 
 ;;9002226.02101,"455,F13.121 ",.02)
 ;;F13.121 
 ;;9002226.02101,"455,F13.121 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.129 ",.01)
 ;;F13.129 
 ;;9002226.02101,"455,F13.129 ",.02)
 ;;F13.129 
 ;;9002226.02101,"455,F13.129 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.14 ",.01)
 ;;F13.14 
 ;;9002226.02101,"455,F13.14 ",.02)
 ;;F13.14 
 ;;9002226.02101,"455,F13.14 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.150 ",.01)
 ;;F13.150 
 ;;9002226.02101,"455,F13.150 ",.02)
 ;;F13.150 
 ;;9002226.02101,"455,F13.150 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.151 ",.01)
 ;;F13.151 
 ;;9002226.02101,"455,F13.151 ",.02)
 ;;F13.151 
 ;;9002226.02101,"455,F13.151 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.159 ",.01)
 ;;F13.159 
 ;;9002226.02101,"455,F13.159 ",.02)
 ;;F13.159 
 ;;9002226.02101,"455,F13.159 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.180 ",.01)
 ;;F13.180 
 ;;9002226.02101,"455,F13.180 ",.02)
 ;;F13.180 
 ;;9002226.02101,"455,F13.180 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.181 ",.01)
 ;;F13.181 
 ;;9002226.02101,"455,F13.181 ",.02)
 ;;F13.181 
 ;;9002226.02101,"455,F13.181 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.182 ",.01)
 ;;F13.182 
 ;;9002226.02101,"455,F13.182 ",.02)
 ;;F13.182 
 ;;9002226.02101,"455,F13.182 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.188 ",.01)
 ;;F13.188 
 ;;9002226.02101,"455,F13.188 ",.02)
 ;;F13.188 
 ;;9002226.02101,"455,F13.188 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.19 ",.01)
 ;;F13.19 
 ;;9002226.02101,"455,F13.19 ",.02)
 ;;F13.19 
 ;;9002226.02101,"455,F13.19 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.20 ",.01)
 ;;F13.20 
 ;;9002226.02101,"455,F13.20 ",.02)
 ;;F13.20 
 ;;9002226.02101,"455,F13.20 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.220 ",.01)
 ;;F13.220 
 ;;9002226.02101,"455,F13.220 ",.02)
 ;;F13.220 
 ;;9002226.02101,"455,F13.220 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.221 ",.01)
 ;;F13.221 
 ;;9002226.02101,"455,F13.221 ",.02)
 ;;F13.221 
 ;;9002226.02101,"455,F13.221 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.229 ",.01)
 ;;F13.229 
 ;;9002226.02101,"455,F13.229 ",.02)
 ;;F13.229 
 ;;9002226.02101,"455,F13.229 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.230 ",.01)
 ;;F13.230 
 ;;9002226.02101,"455,F13.230 ",.02)
 ;;F13.230 
 ;;9002226.02101,"455,F13.230 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.231 ",.01)
 ;;F13.231 
 ;;9002226.02101,"455,F13.231 ",.02)
 ;;F13.231 
 ;;9002226.02101,"455,F13.231 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.232 ",.01)
 ;;F13.232 
 ;;9002226.02101,"455,F13.232 ",.02)
 ;;F13.232 
 ;;9002226.02101,"455,F13.232 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.239 ",.01)
 ;;F13.239 
 ;;9002226.02101,"455,F13.239 ",.02)
 ;;F13.239 
 ;;9002226.02101,"455,F13.239 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.24 ",.01)
 ;;F13.24 
 ;;9002226.02101,"455,F13.24 ",.02)
 ;;F13.24 
 ;;9002226.02101,"455,F13.24 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.250 ",.01)
 ;;F13.250 
 ;;9002226.02101,"455,F13.250 ",.02)
 ;;F13.250 
 ;;9002226.02101,"455,F13.250 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.251 ",.01)
 ;;F13.251 
 ;;9002226.02101,"455,F13.251 ",.02)
 ;;F13.251 
 ;;9002226.02101,"455,F13.251 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.259 ",.01)
 ;;F13.259 
 ;;9002226.02101,"455,F13.259 ",.02)
 ;;F13.259 
 ;;9002226.02101,"455,F13.259 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.26 ",.01)
 ;;F13.26 
 ;;9002226.02101,"455,F13.26 ",.02)
 ;;F13.26 
 ;;9002226.02101,"455,F13.26 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.27 ",.01)
 ;;F13.27 
 ;;9002226.02101,"455,F13.27 ",.02)
 ;;F13.27 
 ;;9002226.02101,"455,F13.27 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.280 ",.01)
 ;;F13.280 
 ;;9002226.02101,"455,F13.280 ",.02)
 ;;F13.280 
 ;;9002226.02101,"455,F13.280 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.281 ",.01)
 ;;F13.281 
 ;;9002226.02101,"455,F13.281 ",.02)
 ;;F13.281 
 ;;9002226.02101,"455,F13.281 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.282 ",.01)
 ;;F13.282 
 ;;9002226.02101,"455,F13.282 ",.02)
 ;;F13.282 
 ;;9002226.02101,"455,F13.282 ",.03)
 ;;30
 ;;9002226.02101,"455,F13.288 ",.01)
 ;;F13.288 
 ;;9002226.02101,"455,F13.288 ",.02)
 ;;F13.288 
