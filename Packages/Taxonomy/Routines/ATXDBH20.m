ATXDBH20 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 20, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1959,O34.40 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.41 ",.01)
 ;;O34.41 
 ;;9002226.02101,"1959,O34.41 ",.02)
 ;;O34.41 
 ;;9002226.02101,"1959,O34.41 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.42 ",.01)
 ;;O34.42 
 ;;9002226.02101,"1959,O34.42 ",.02)
 ;;O34.42 
 ;;9002226.02101,"1959,O34.42 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.43 ",.01)
 ;;O34.43 
 ;;9002226.02101,"1959,O34.43 ",.02)
 ;;O34.43 
 ;;9002226.02101,"1959,O34.43 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.511 ",.01)
 ;;O34.511 
 ;;9002226.02101,"1959,O34.511 ",.02)
 ;;O34.511 
 ;;9002226.02101,"1959,O34.511 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.512 ",.01)
 ;;O34.512 
 ;;9002226.02101,"1959,O34.512 ",.02)
 ;;O34.512 
 ;;9002226.02101,"1959,O34.512 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.513 ",.01)
 ;;O34.513 
 ;;9002226.02101,"1959,O34.513 ",.02)
 ;;O34.513 
 ;;9002226.02101,"1959,O34.513 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.519 ",.01)
 ;;O34.519 
 ;;9002226.02101,"1959,O34.519 ",.02)
 ;;O34.519 
 ;;9002226.02101,"1959,O34.519 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.521 ",.01)
 ;;O34.521 
 ;;9002226.02101,"1959,O34.521 ",.02)
 ;;O34.521 
 ;;9002226.02101,"1959,O34.521 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.522 ",.01)
 ;;O34.522 
 ;;9002226.02101,"1959,O34.522 ",.02)
 ;;O34.522 
 ;;9002226.02101,"1959,O34.522 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.523 ",.01)
 ;;O34.523 
 ;;9002226.02101,"1959,O34.523 ",.02)
 ;;O34.523 
 ;;9002226.02101,"1959,O34.523 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.529 ",.01)
 ;;O34.529 
 ;;9002226.02101,"1959,O34.529 ",.02)
 ;;O34.529 
 ;;9002226.02101,"1959,O34.529 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.531 ",.01)
 ;;O34.531 
 ;;9002226.02101,"1959,O34.531 ",.02)
 ;;O34.531 
 ;;9002226.02101,"1959,O34.531 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.532 ",.01)
 ;;O34.532 
 ;;9002226.02101,"1959,O34.532 ",.02)
 ;;O34.532 
 ;;9002226.02101,"1959,O34.532 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.533 ",.01)
 ;;O34.533 
 ;;9002226.02101,"1959,O34.533 ",.02)
 ;;O34.533 
 ;;9002226.02101,"1959,O34.533 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.539 ",.01)
 ;;O34.539 
 ;;9002226.02101,"1959,O34.539 ",.02)
 ;;O34.539 
 ;;9002226.02101,"1959,O34.539 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.591 ",.01)
 ;;O34.591 
 ;;9002226.02101,"1959,O34.591 ",.02)
 ;;O34.591 
 ;;9002226.02101,"1959,O34.591 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.592 ",.01)
 ;;O34.592 
 ;;9002226.02101,"1959,O34.592 ",.02)
 ;;O34.592 
 ;;9002226.02101,"1959,O34.592 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.593 ",.01)
 ;;O34.593 
 ;;9002226.02101,"1959,O34.593 ",.02)
 ;;O34.593 
 ;;9002226.02101,"1959,O34.593 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.599 ",.01)
 ;;O34.599 
 ;;9002226.02101,"1959,O34.599 ",.02)
 ;;O34.599 
 ;;9002226.02101,"1959,O34.599 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.60 ",.01)
 ;;O34.60 
 ;;9002226.02101,"1959,O34.60 ",.02)
 ;;O34.60 
 ;;9002226.02101,"1959,O34.60 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.61 ",.01)
 ;;O34.61 
 ;;9002226.02101,"1959,O34.61 ",.02)
 ;;O34.61 
 ;;9002226.02101,"1959,O34.61 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.62 ",.01)
 ;;O34.62 
 ;;9002226.02101,"1959,O34.62 ",.02)
 ;;O34.62 
 ;;9002226.02101,"1959,O34.62 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.63 ",.01)
 ;;O34.63 
 ;;9002226.02101,"1959,O34.63 ",.02)
 ;;O34.63 
 ;;9002226.02101,"1959,O34.63 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.70 ",.01)
 ;;O34.70 
 ;;9002226.02101,"1959,O34.70 ",.02)
 ;;O34.70 
 ;;9002226.02101,"1959,O34.70 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.71 ",.01)
 ;;O34.71 
 ;;9002226.02101,"1959,O34.71 ",.02)
 ;;O34.71 
 ;;9002226.02101,"1959,O34.71 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.72 ",.01)
 ;;O34.72 
 ;;9002226.02101,"1959,O34.72 ",.02)
 ;;O34.72 
 ;;9002226.02101,"1959,O34.72 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.73 ",.01)
 ;;O34.73 
 ;;9002226.02101,"1959,O34.73 ",.02)
 ;;O34.73 
 ;;9002226.02101,"1959,O34.73 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.80 ",.01)
 ;;O34.80 
 ;;9002226.02101,"1959,O34.80 ",.02)
 ;;O34.80 
 ;;9002226.02101,"1959,O34.80 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.81 ",.01)
 ;;O34.81 
 ;;9002226.02101,"1959,O34.81 ",.02)
 ;;O34.81 
 ;;9002226.02101,"1959,O34.81 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.82 ",.01)
 ;;O34.82 
 ;;9002226.02101,"1959,O34.82 ",.02)
 ;;O34.82 
 ;;9002226.02101,"1959,O34.82 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.83 ",.01)
 ;;O34.83 
 ;;9002226.02101,"1959,O34.83 ",.02)
 ;;O34.83 
 ;;9002226.02101,"1959,O34.83 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.90 ",.01)
 ;;O34.90 
 ;;9002226.02101,"1959,O34.90 ",.02)
 ;;O34.90 
 ;;9002226.02101,"1959,O34.90 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.91 ",.01)
 ;;O34.91 
 ;;9002226.02101,"1959,O34.91 ",.02)
 ;;O34.91 
 ;;9002226.02101,"1959,O34.91 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.92 ",.01)
 ;;O34.92 
 ;;9002226.02101,"1959,O34.92 ",.02)
 ;;O34.92 
 ;;9002226.02101,"1959,O34.92 ",.03)
 ;;30
 ;;9002226.02101,"1959,O34.93 ",.01)
 ;;O34.93 
 ;;9002226.02101,"1959,O34.93 ",.02)
 ;;O34.93 
 ;;9002226.02101,"1959,O34.93 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX0 ",.01)
 ;;O35.0XX0 
 ;;9002226.02101,"1959,O35.0XX0 ",.02)
 ;;O35.0XX0 
 ;;9002226.02101,"1959,O35.0XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX1 ",.01)
 ;;O35.0XX1 
 ;;9002226.02101,"1959,O35.0XX1 ",.02)
 ;;O35.0XX1 
 ;;9002226.02101,"1959,O35.0XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX2 ",.01)
 ;;O35.0XX2 
 ;;9002226.02101,"1959,O35.0XX2 ",.02)
 ;;O35.0XX2 
 ;;9002226.02101,"1959,O35.0XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX3 ",.01)
 ;;O35.0XX3 
 ;;9002226.02101,"1959,O35.0XX3 ",.02)
 ;;O35.0XX3 
 ;;9002226.02101,"1959,O35.0XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX4 ",.01)
 ;;O35.0XX4 
 ;;9002226.02101,"1959,O35.0XX4 ",.02)
 ;;O35.0XX4 
 ;;9002226.02101,"1959,O35.0XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX5 ",.01)
 ;;O35.0XX5 
 ;;9002226.02101,"1959,O35.0XX5 ",.02)
 ;;O35.0XX5 
 ;;9002226.02101,"1959,O35.0XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.0XX9 ",.01)
 ;;O35.0XX9 
 ;;9002226.02101,"1959,O35.0XX9 ",.02)
 ;;O35.0XX9 
 ;;9002226.02101,"1959,O35.0XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX0 ",.01)
 ;;O35.1XX0 
 ;;9002226.02101,"1959,O35.1XX0 ",.02)
 ;;O35.1XX0 
 ;;9002226.02101,"1959,O35.1XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX1 ",.01)
 ;;O35.1XX1 
 ;;9002226.02101,"1959,O35.1XX1 ",.02)
 ;;O35.1XX1 
 ;;9002226.02101,"1959,O35.1XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX2 ",.01)
 ;;O35.1XX2 
 ;;9002226.02101,"1959,O35.1XX2 ",.02)
 ;;O35.1XX2 
 ;;9002226.02101,"1959,O35.1XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX3 ",.01)
 ;;O35.1XX3 
 ;;9002226.02101,"1959,O35.1XX3 ",.02)
 ;;O35.1XX3 
 ;;9002226.02101,"1959,O35.1XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX4 ",.01)
 ;;O35.1XX4 
 ;;9002226.02101,"1959,O35.1XX4 ",.02)
 ;;O35.1XX4 
 ;;9002226.02101,"1959,O35.1XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX5 ",.01)
 ;;O35.1XX5 
 ;;9002226.02101,"1959,O35.1XX5 ",.02)
 ;;O35.1XX5 
 ;;9002226.02101,"1959,O35.1XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.1XX9 ",.01)
 ;;O35.1XX9 
 ;;9002226.02101,"1959,O35.1XX9 ",.02)
 ;;O35.1XX9 
 ;;9002226.02101,"1959,O35.1XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX0 ",.01)
 ;;O35.2XX0 
 ;;9002226.02101,"1959,O35.2XX0 ",.02)
 ;;O35.2XX0 
 ;;9002226.02101,"1959,O35.2XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX1 ",.01)
 ;;O35.2XX1 
 ;;9002226.02101,"1959,O35.2XX1 ",.02)
 ;;O35.2XX1 
 ;;9002226.02101,"1959,O35.2XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX2 ",.01)
 ;;O35.2XX2 
 ;;9002226.02101,"1959,O35.2XX2 ",.02)
 ;;O35.2XX2 
 ;;9002226.02101,"1959,O35.2XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX3 ",.01)
 ;;O35.2XX3 
 ;;9002226.02101,"1959,O35.2XX3 ",.02)
 ;;O35.2XX3 
 ;;9002226.02101,"1959,O35.2XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX4 ",.01)
 ;;O35.2XX4 
 ;;9002226.02101,"1959,O35.2XX4 ",.02)
 ;;O35.2XX4 
 ;;9002226.02101,"1959,O35.2XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX5 ",.01)
 ;;O35.2XX5 
 ;;9002226.02101,"1959,O35.2XX5 ",.02)
 ;;O35.2XX5 
 ;;9002226.02101,"1959,O35.2XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.2XX9 ",.01)
 ;;O35.2XX9 
 ;;9002226.02101,"1959,O35.2XX9 ",.02)
 ;;O35.2XX9 
 ;;9002226.02101,"1959,O35.2XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX0 ",.01)
 ;;O35.3XX0 
 ;;9002226.02101,"1959,O35.3XX0 ",.02)
 ;;O35.3XX0 
 ;;9002226.02101,"1959,O35.3XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX1 ",.01)
 ;;O35.3XX1 
 ;;9002226.02101,"1959,O35.3XX1 ",.02)
 ;;O35.3XX1 
 ;;9002226.02101,"1959,O35.3XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX2 ",.01)
 ;;O35.3XX2 
 ;;9002226.02101,"1959,O35.3XX2 ",.02)
 ;;O35.3XX2 
 ;;9002226.02101,"1959,O35.3XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX3 ",.01)
 ;;O35.3XX3 
 ;;9002226.02101,"1959,O35.3XX3 ",.02)
 ;;O35.3XX3 
 ;;9002226.02101,"1959,O35.3XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX4 ",.01)
 ;;O35.3XX4 
 ;;9002226.02101,"1959,O35.3XX4 ",.02)
 ;;O35.3XX4 
 ;;9002226.02101,"1959,O35.3XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX5 ",.01)
 ;;O35.3XX5 
 ;;9002226.02101,"1959,O35.3XX5 ",.02)
 ;;O35.3XX5 
 ;;9002226.02101,"1959,O35.3XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.3XX9 ",.01)
 ;;O35.3XX9 
 ;;9002226.02101,"1959,O35.3XX9 ",.02)
 ;;O35.3XX9 
 ;;9002226.02101,"1959,O35.3XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX0 ",.01)
 ;;O35.4XX0 
 ;;9002226.02101,"1959,O35.4XX0 ",.02)
 ;;O35.4XX0 
 ;;9002226.02101,"1959,O35.4XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX1 ",.01)
 ;;O35.4XX1 
 ;;9002226.02101,"1959,O35.4XX1 ",.02)
 ;;O35.4XX1 
 ;;9002226.02101,"1959,O35.4XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX2 ",.01)
 ;;O35.4XX2 
 ;;9002226.02101,"1959,O35.4XX2 ",.02)
 ;;O35.4XX2 
 ;;9002226.02101,"1959,O35.4XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX3 ",.01)
 ;;O35.4XX3 
 ;;9002226.02101,"1959,O35.4XX3 ",.02)
 ;;O35.4XX3 
 ;;9002226.02101,"1959,O35.4XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX4 ",.01)
 ;;O35.4XX4 
 ;;9002226.02101,"1959,O35.4XX4 ",.02)
 ;;O35.4XX4 
 ;;9002226.02101,"1959,O35.4XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX5 ",.01)
 ;;O35.4XX5 
 ;;9002226.02101,"1959,O35.4XX5 ",.02)
 ;;O35.4XX5 
 ;;9002226.02101,"1959,O35.4XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.4XX9 ",.01)
 ;;O35.4XX9 
 ;;9002226.02101,"1959,O35.4XX9 ",.02)
 ;;O35.4XX9 
 ;;9002226.02101,"1959,O35.4XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX0 ",.01)
 ;;O35.5XX0 
 ;;9002226.02101,"1959,O35.5XX0 ",.02)
 ;;O35.5XX0 
 ;;9002226.02101,"1959,O35.5XX0 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX1 ",.01)
 ;;O35.5XX1 
 ;;9002226.02101,"1959,O35.5XX1 ",.02)
 ;;O35.5XX1 
 ;;9002226.02101,"1959,O35.5XX1 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX2 ",.01)
 ;;O35.5XX2 
 ;;9002226.02101,"1959,O35.5XX2 ",.02)
 ;;O35.5XX2 
 ;;9002226.02101,"1959,O35.5XX2 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX3 ",.01)
 ;;O35.5XX3 
 ;;9002226.02101,"1959,O35.5XX3 ",.02)
 ;;O35.5XX3 
 ;;9002226.02101,"1959,O35.5XX3 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX4 ",.01)
 ;;O35.5XX4 
 ;;9002226.02101,"1959,O35.5XX4 ",.02)
 ;;O35.5XX4 
 ;;9002226.02101,"1959,O35.5XX4 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX5 ",.01)
 ;;O35.5XX5 
 ;;9002226.02101,"1959,O35.5XX5 ",.02)
 ;;O35.5XX5 
 ;;9002226.02101,"1959,O35.5XX5 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.5XX9 ",.01)
 ;;O35.5XX9 
 ;;9002226.02101,"1959,O35.5XX9 ",.02)
 ;;O35.5XX9 
 ;;9002226.02101,"1959,O35.5XX9 ",.03)
 ;;30
 ;;9002226.02101,"1959,O35.6XX0 ",.01)
 ;;O35.6XX0 
