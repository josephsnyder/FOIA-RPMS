ATXXB147 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0YUM4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN07Z ",.01)
 ;;0YUN07Z 
 ;;9002226.02101,"1804,0YUN07Z ",.02)
 ;;0YUN07Z 
 ;;9002226.02101,"1804,0YUN07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN0JZ ",.01)
 ;;0YUN0JZ 
 ;;9002226.02101,"1804,0YUN0JZ ",.02)
 ;;0YUN0JZ 
 ;;9002226.02101,"1804,0YUN0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN0KZ ",.01)
 ;;0YUN0KZ 
 ;;9002226.02101,"1804,0YUN0KZ ",.02)
 ;;0YUN0KZ 
 ;;9002226.02101,"1804,0YUN0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN47Z ",.01)
 ;;0YUN47Z 
 ;;9002226.02101,"1804,0YUN47Z ",.02)
 ;;0YUN47Z 
 ;;9002226.02101,"1804,0YUN47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN4JZ ",.01)
 ;;0YUN4JZ 
 ;;9002226.02101,"1804,0YUN4JZ ",.02)
 ;;0YUN4JZ 
 ;;9002226.02101,"1804,0YUN4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUN4KZ ",.01)
 ;;0YUN4KZ 
 ;;9002226.02101,"1804,0YUN4KZ ",.02)
 ;;0YUN4KZ 
 ;;9002226.02101,"1804,0YUN4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP07Z ",.01)
 ;;0YUP07Z 
 ;;9002226.02101,"1804,0YUP07Z ",.02)
 ;;0YUP07Z 
 ;;9002226.02101,"1804,0YUP07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP0JZ ",.01)
 ;;0YUP0JZ 
 ;;9002226.02101,"1804,0YUP0JZ ",.02)
 ;;0YUP0JZ 
 ;;9002226.02101,"1804,0YUP0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP0KZ ",.01)
 ;;0YUP0KZ 
 ;;9002226.02101,"1804,0YUP0KZ ",.02)
 ;;0YUP0KZ 
 ;;9002226.02101,"1804,0YUP0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP47Z ",.01)
 ;;0YUP47Z 
 ;;9002226.02101,"1804,0YUP47Z ",.02)
 ;;0YUP47Z 
 ;;9002226.02101,"1804,0YUP47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP4JZ ",.01)
 ;;0YUP4JZ 
 ;;9002226.02101,"1804,0YUP4JZ ",.02)
 ;;0YUP4JZ 
 ;;9002226.02101,"1804,0YUP4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUP4KZ ",.01)
 ;;0YUP4KZ 
 ;;9002226.02101,"1804,0YUP4KZ ",.02)
 ;;0YUP4KZ 
 ;;9002226.02101,"1804,0YUP4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ07Z ",.01)
 ;;0YUQ07Z 
 ;;9002226.02101,"1804,0YUQ07Z ",.02)
 ;;0YUQ07Z 
 ;;9002226.02101,"1804,0YUQ07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ0JZ ",.01)
 ;;0YUQ0JZ 
 ;;9002226.02101,"1804,0YUQ0JZ ",.02)
 ;;0YUQ0JZ 
 ;;9002226.02101,"1804,0YUQ0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ0KZ ",.01)
 ;;0YUQ0KZ 
 ;;9002226.02101,"1804,0YUQ0KZ ",.02)
 ;;0YUQ0KZ 
 ;;9002226.02101,"1804,0YUQ0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ47Z ",.01)
 ;;0YUQ47Z 
 ;;9002226.02101,"1804,0YUQ47Z ",.02)
 ;;0YUQ47Z 
 ;;9002226.02101,"1804,0YUQ47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ4JZ ",.01)
 ;;0YUQ4JZ 
 ;;9002226.02101,"1804,0YUQ4JZ ",.02)
 ;;0YUQ4JZ 
 ;;9002226.02101,"1804,0YUQ4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUQ4KZ ",.01)
 ;;0YUQ4KZ 
 ;;9002226.02101,"1804,0YUQ4KZ ",.02)
 ;;0YUQ4KZ 
 ;;9002226.02101,"1804,0YUQ4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR07Z ",.01)
 ;;0YUR07Z 
 ;;9002226.02101,"1804,0YUR07Z ",.02)
 ;;0YUR07Z 
 ;;9002226.02101,"1804,0YUR07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR0JZ ",.01)
 ;;0YUR0JZ 
 ;;9002226.02101,"1804,0YUR0JZ ",.02)
 ;;0YUR0JZ 
 ;;9002226.02101,"1804,0YUR0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR0KZ ",.01)
 ;;0YUR0KZ 
 ;;9002226.02101,"1804,0YUR0KZ ",.02)
 ;;0YUR0KZ 
 ;;9002226.02101,"1804,0YUR0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR47Z ",.01)
 ;;0YUR47Z 
 ;;9002226.02101,"1804,0YUR47Z ",.02)
 ;;0YUR47Z 
 ;;9002226.02101,"1804,0YUR47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR4JZ ",.01)
 ;;0YUR4JZ 
 ;;9002226.02101,"1804,0YUR4JZ ",.02)
 ;;0YUR4JZ 
 ;;9002226.02101,"1804,0YUR4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUR4KZ ",.01)
 ;;0YUR4KZ 
 ;;9002226.02101,"1804,0YUR4KZ ",.02)
 ;;0YUR4KZ 
 ;;9002226.02101,"1804,0YUR4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS07Z ",.01)
 ;;0YUS07Z 
 ;;9002226.02101,"1804,0YUS07Z ",.02)
 ;;0YUS07Z 
 ;;9002226.02101,"1804,0YUS07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS0JZ ",.01)
 ;;0YUS0JZ 
 ;;9002226.02101,"1804,0YUS0JZ ",.02)
 ;;0YUS0JZ 
 ;;9002226.02101,"1804,0YUS0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS0KZ ",.01)
 ;;0YUS0KZ 
 ;;9002226.02101,"1804,0YUS0KZ ",.02)
 ;;0YUS0KZ 
 ;;9002226.02101,"1804,0YUS0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS47Z ",.01)
 ;;0YUS47Z 
 ;;9002226.02101,"1804,0YUS47Z ",.02)
 ;;0YUS47Z 
 ;;9002226.02101,"1804,0YUS47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS4JZ ",.01)
 ;;0YUS4JZ 
 ;;9002226.02101,"1804,0YUS4JZ ",.02)
 ;;0YUS4JZ 
 ;;9002226.02101,"1804,0YUS4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUS4KZ ",.01)
 ;;0YUS4KZ 
 ;;9002226.02101,"1804,0YUS4KZ ",.02)
 ;;0YUS4KZ 
 ;;9002226.02101,"1804,0YUS4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT07Z ",.01)
 ;;0YUT07Z 
 ;;9002226.02101,"1804,0YUT07Z ",.02)
 ;;0YUT07Z 
 ;;9002226.02101,"1804,0YUT07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT0JZ ",.01)
 ;;0YUT0JZ 
 ;;9002226.02101,"1804,0YUT0JZ ",.02)
 ;;0YUT0JZ 
 ;;9002226.02101,"1804,0YUT0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT0KZ ",.01)
 ;;0YUT0KZ 
 ;;9002226.02101,"1804,0YUT0KZ ",.02)
 ;;0YUT0KZ 
 ;;9002226.02101,"1804,0YUT0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT47Z ",.01)
 ;;0YUT47Z 
 ;;9002226.02101,"1804,0YUT47Z ",.02)
 ;;0YUT47Z 
 ;;9002226.02101,"1804,0YUT47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT4JZ ",.01)
 ;;0YUT4JZ 
 ;;9002226.02101,"1804,0YUT4JZ ",.02)
 ;;0YUT4JZ 
 ;;9002226.02101,"1804,0YUT4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUT4KZ ",.01)
 ;;0YUT4KZ 
 ;;9002226.02101,"1804,0YUT4KZ ",.02)
 ;;0YUT4KZ 
 ;;9002226.02101,"1804,0YUT4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU07Z ",.01)
 ;;0YUU07Z 
 ;;9002226.02101,"1804,0YUU07Z ",.02)
 ;;0YUU07Z 
 ;;9002226.02101,"1804,0YUU07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU0JZ ",.01)
 ;;0YUU0JZ 
 ;;9002226.02101,"1804,0YUU0JZ ",.02)
 ;;0YUU0JZ 
 ;;9002226.02101,"1804,0YUU0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU0KZ ",.01)
 ;;0YUU0KZ 
 ;;9002226.02101,"1804,0YUU0KZ ",.02)
 ;;0YUU0KZ 
 ;;9002226.02101,"1804,0YUU0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU47Z ",.01)
 ;;0YUU47Z 
 ;;9002226.02101,"1804,0YUU47Z ",.02)
 ;;0YUU47Z 
 ;;9002226.02101,"1804,0YUU47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU4JZ ",.01)
 ;;0YUU4JZ 
 ;;9002226.02101,"1804,0YUU4JZ ",.02)
 ;;0YUU4JZ 
 ;;9002226.02101,"1804,0YUU4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUU4KZ ",.01)
 ;;0YUU4KZ 
 ;;9002226.02101,"1804,0YUU4KZ ",.02)
 ;;0YUU4KZ 
 ;;9002226.02101,"1804,0YUU4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV07Z ",.01)
 ;;0YUV07Z 
 ;;9002226.02101,"1804,0YUV07Z ",.02)
 ;;0YUV07Z 
 ;;9002226.02101,"1804,0YUV07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV0JZ ",.01)
 ;;0YUV0JZ 
 ;;9002226.02101,"1804,0YUV0JZ ",.02)
 ;;0YUV0JZ 
 ;;9002226.02101,"1804,0YUV0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV0KZ ",.01)
 ;;0YUV0KZ 
 ;;9002226.02101,"1804,0YUV0KZ ",.02)
 ;;0YUV0KZ 
 ;;9002226.02101,"1804,0YUV0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV47Z ",.01)
 ;;0YUV47Z 
 ;;9002226.02101,"1804,0YUV47Z ",.02)
 ;;0YUV47Z 
 ;;9002226.02101,"1804,0YUV47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV4JZ ",.01)
 ;;0YUV4JZ 
 ;;9002226.02101,"1804,0YUV4JZ ",.02)
 ;;0YUV4JZ 
 ;;9002226.02101,"1804,0YUV4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUV4KZ ",.01)
 ;;0YUV4KZ 
 ;;9002226.02101,"1804,0YUV4KZ ",.02)
 ;;0YUV4KZ 
 ;;9002226.02101,"1804,0YUV4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW07Z ",.01)
 ;;0YUW07Z 
 ;;9002226.02101,"1804,0YUW07Z ",.02)
 ;;0YUW07Z 
 ;;9002226.02101,"1804,0YUW07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW0JZ ",.01)
 ;;0YUW0JZ 
 ;;9002226.02101,"1804,0YUW0JZ ",.02)
 ;;0YUW0JZ 
 ;;9002226.02101,"1804,0YUW0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW0KZ ",.01)
 ;;0YUW0KZ 
 ;;9002226.02101,"1804,0YUW0KZ ",.02)
 ;;0YUW0KZ 
 ;;9002226.02101,"1804,0YUW0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW47Z ",.01)
 ;;0YUW47Z 
 ;;9002226.02101,"1804,0YUW47Z ",.02)
 ;;0YUW47Z 
 ;;9002226.02101,"1804,0YUW47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW4JZ ",.01)
 ;;0YUW4JZ 
 ;;9002226.02101,"1804,0YUW4JZ ",.02)
 ;;0YUW4JZ 
 ;;9002226.02101,"1804,0YUW4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUW4KZ ",.01)
 ;;0YUW4KZ 
 ;;9002226.02101,"1804,0YUW4KZ ",.02)
 ;;0YUW4KZ 
 ;;9002226.02101,"1804,0YUW4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX07Z ",.01)
 ;;0YUX07Z 
 ;;9002226.02101,"1804,0YUX07Z ",.02)
 ;;0YUX07Z 
 ;;9002226.02101,"1804,0YUX07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX0JZ ",.01)
 ;;0YUX0JZ 
 ;;9002226.02101,"1804,0YUX0JZ ",.02)
 ;;0YUX0JZ 
 ;;9002226.02101,"1804,0YUX0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX0KZ ",.01)
 ;;0YUX0KZ 
 ;;9002226.02101,"1804,0YUX0KZ ",.02)
 ;;0YUX0KZ 
 ;;9002226.02101,"1804,0YUX0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX47Z ",.01)
 ;;0YUX47Z 
 ;;9002226.02101,"1804,0YUX47Z ",.02)
 ;;0YUX47Z 
 ;;9002226.02101,"1804,0YUX47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX4JZ ",.01)
 ;;0YUX4JZ 
 ;;9002226.02101,"1804,0YUX4JZ ",.02)
 ;;0YUX4JZ 
 ;;9002226.02101,"1804,0YUX4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUX4KZ ",.01)
 ;;0YUX4KZ 
 ;;9002226.02101,"1804,0YUX4KZ ",.02)
 ;;0YUX4KZ 
 ;;9002226.02101,"1804,0YUX4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY07Z ",.01)
 ;;0YUY07Z 
 ;;9002226.02101,"1804,0YUY07Z ",.02)
 ;;0YUY07Z 
 ;;9002226.02101,"1804,0YUY07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY0JZ ",.01)
 ;;0YUY0JZ 
 ;;9002226.02101,"1804,0YUY0JZ ",.02)
 ;;0YUY0JZ 
 ;;9002226.02101,"1804,0YUY0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY0KZ ",.01)
 ;;0YUY0KZ 
 ;;9002226.02101,"1804,0YUY0KZ ",.02)
 ;;0YUY0KZ 
 ;;9002226.02101,"1804,0YUY0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY47Z ",.01)
 ;;0YUY47Z 
 ;;9002226.02101,"1804,0YUY47Z ",.02)
 ;;0YUY47Z 
 ;;9002226.02101,"1804,0YUY47Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY4JZ ",.01)
 ;;0YUY4JZ 
 ;;9002226.02101,"1804,0YUY4JZ ",.02)
 ;;0YUY4JZ 
 ;;9002226.02101,"1804,0YUY4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YUY4KZ ",.01)
 ;;0YUY4KZ 
 ;;9002226.02101,"1804,0YUY4KZ ",.02)
 ;;0YUY4KZ 
 ;;9002226.02101,"1804,0YUY4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW900Z ",.01)
 ;;0YW900Z 
 ;;9002226.02101,"1804,0YW900Z ",.02)
 ;;0YW900Z 
 ;;9002226.02101,"1804,0YW900Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW903Z ",.01)
 ;;0YW903Z 
 ;;9002226.02101,"1804,0YW903Z ",.02)
 ;;0YW903Z 
 ;;9002226.02101,"1804,0YW903Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW907Z ",.01)
 ;;0YW907Z 
 ;;9002226.02101,"1804,0YW907Z ",.02)
 ;;0YW907Z 
 ;;9002226.02101,"1804,0YW907Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW90JZ ",.01)
 ;;0YW90JZ 
 ;;9002226.02101,"1804,0YW90JZ ",.02)
 ;;0YW90JZ 
 ;;9002226.02101,"1804,0YW90JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW90KZ ",.01)
 ;;0YW90KZ 
 ;;9002226.02101,"1804,0YW90KZ ",.02)
 ;;0YW90KZ 
 ;;9002226.02101,"1804,0YW90KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW90YZ ",.01)
 ;;0YW90YZ 
 ;;9002226.02101,"1804,0YW90YZ ",.02)
 ;;0YW90YZ 
 ;;9002226.02101,"1804,0YW90YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW930Z ",.01)
 ;;0YW930Z 
 ;;9002226.02101,"1804,0YW930Z ",.02)
 ;;0YW930Z 
 ;;9002226.02101,"1804,0YW930Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW933Z ",.01)
 ;;0YW933Z 
 ;;9002226.02101,"1804,0YW933Z ",.02)
 ;;0YW933Z 
 ;;9002226.02101,"1804,0YW933Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW937Z ",.01)
 ;;0YW937Z 
 ;;9002226.02101,"1804,0YW937Z ",.02)
 ;;0YW937Z 
 ;;9002226.02101,"1804,0YW937Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW93JZ ",.01)
 ;;0YW93JZ 
 ;;9002226.02101,"1804,0YW93JZ ",.02)
 ;;0YW93JZ 
 ;;9002226.02101,"1804,0YW93JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW93KZ ",.01)
 ;;0YW93KZ 
 ;;9002226.02101,"1804,0YW93KZ ",.02)
 ;;0YW93KZ 
 ;;9002226.02101,"1804,0YW93KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0YW93YZ ",.01)
 ;;0YW93YZ 
 ;;9002226.02101,"1804,0YW93YZ ",.02)
 ;;0YW93YZ 
 ;;9002226.02101,"1804,0YW93YZ ",.03)
 ;;31
