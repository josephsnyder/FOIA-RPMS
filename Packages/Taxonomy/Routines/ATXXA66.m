ATXXA66 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S51.039A ",.01)
 ;;S51.039A
 ;;9002226.02101,"873,S51.039A ",.02)
 ;;S51.039A
 ;;9002226.02101,"873,S51.039A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.041A ",.01)
 ;;S51.041A
 ;;9002226.02101,"873,S51.041A ",.02)
 ;;S51.041A
 ;;9002226.02101,"873,S51.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.042A ",.01)
 ;;S51.042A
 ;;9002226.02101,"873,S51.042A ",.02)
 ;;S51.042A
 ;;9002226.02101,"873,S51.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.049A ",.01)
 ;;S51.049A
 ;;9002226.02101,"873,S51.049A ",.02)
 ;;S51.049A
 ;;9002226.02101,"873,S51.049A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.051A ",.01)
 ;;S51.051A
 ;;9002226.02101,"873,S51.051A ",.02)
 ;;S51.051A
 ;;9002226.02101,"873,S51.051A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.052A ",.01)
 ;;S51.052A
 ;;9002226.02101,"873,S51.052A ",.02)
 ;;S51.052A
 ;;9002226.02101,"873,S51.052A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.059A ",.01)
 ;;S51.059A
 ;;9002226.02101,"873,S51.059A ",.02)
 ;;S51.059A
 ;;9002226.02101,"873,S51.059A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.801A ",.01)
 ;;S51.801A
 ;;9002226.02101,"873,S51.801A ",.02)
 ;;S51.801A
 ;;9002226.02101,"873,S51.801A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.802A ",.01)
 ;;S51.802A
 ;;9002226.02101,"873,S51.802A ",.02)
 ;;S51.802A
 ;;9002226.02101,"873,S51.802A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.809A ",.01)
 ;;S51.809A
 ;;9002226.02101,"873,S51.809A ",.02)
 ;;S51.809A
 ;;9002226.02101,"873,S51.809A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.811A ",.01)
 ;;S51.811A
 ;;9002226.02101,"873,S51.811A ",.02)
 ;;S51.811A
 ;;9002226.02101,"873,S51.811A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.812A ",.01)
 ;;S51.812A
 ;;9002226.02101,"873,S51.812A ",.02)
 ;;S51.812A
 ;;9002226.02101,"873,S51.812A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.819A ",.01)
 ;;S51.819A
 ;;9002226.02101,"873,S51.819A ",.02)
 ;;S51.819A
 ;;9002226.02101,"873,S51.819A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.821A ",.01)
 ;;S51.821A
 ;;9002226.02101,"873,S51.821A ",.02)
 ;;S51.821A
 ;;9002226.02101,"873,S51.821A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.822A ",.01)
 ;;S51.822A
 ;;9002226.02101,"873,S51.822A ",.02)
 ;;S51.822A
 ;;9002226.02101,"873,S51.822A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.829A ",.01)
 ;;S51.829A
 ;;9002226.02101,"873,S51.829A ",.02)
 ;;S51.829A
 ;;9002226.02101,"873,S51.829A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.831A ",.01)
 ;;S51.831A
 ;;9002226.02101,"873,S51.831A ",.02)
 ;;S51.831A
 ;;9002226.02101,"873,S51.831A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.832A ",.01)
 ;;S51.832A
 ;;9002226.02101,"873,S51.832A ",.02)
 ;;S51.832A
 ;;9002226.02101,"873,S51.832A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.839A ",.01)
 ;;S51.839A
 ;;9002226.02101,"873,S51.839A ",.02)
 ;;S51.839A
 ;;9002226.02101,"873,S51.839A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.841A ",.01)
 ;;S51.841A
 ;;9002226.02101,"873,S51.841A ",.02)
 ;;S51.841A
 ;;9002226.02101,"873,S51.841A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.842A ",.01)
 ;;S51.842A
 ;;9002226.02101,"873,S51.842A ",.02)
 ;;S51.842A
 ;;9002226.02101,"873,S51.842A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.849A ",.01)
 ;;S51.849A
 ;;9002226.02101,"873,S51.849A ",.02)
 ;;S51.849A
 ;;9002226.02101,"873,S51.849A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.851A ",.01)
 ;;S51.851A
 ;;9002226.02101,"873,S51.851A ",.02)
 ;;S51.851A
 ;;9002226.02101,"873,S51.851A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.852A ",.01)
 ;;S51.852A
 ;;9002226.02101,"873,S51.852A ",.02)
 ;;S51.852A
 ;;9002226.02101,"873,S51.852A ",.03)
 ;;30
 ;;9002226.02101,"873,S51.859A ",.01)
 ;;S51.859A
 ;;9002226.02101,"873,S51.859A ",.02)
 ;;S51.859A
 ;;9002226.02101,"873,S51.859A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.001A ",.01)
 ;;S52.001A
 ;;9002226.02101,"873,S52.001A ",.02)
 ;;S52.001A
 ;;9002226.02101,"873,S52.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.001B ",.01)
 ;;S52.001B
 ;;9002226.02101,"873,S52.001B ",.02)
 ;;S52.001B
 ;;9002226.02101,"873,S52.001B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.001C ",.01)
 ;;S52.001C
 ;;9002226.02101,"873,S52.001C ",.02)
 ;;S52.001C
 ;;9002226.02101,"873,S52.001C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.002A ",.01)
 ;;S52.002A
 ;;9002226.02101,"873,S52.002A ",.02)
 ;;S52.002A
 ;;9002226.02101,"873,S52.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.002B ",.01)
 ;;S52.002B
 ;;9002226.02101,"873,S52.002B ",.02)
 ;;S52.002B
 ;;9002226.02101,"873,S52.002B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.002C ",.01)
 ;;S52.002C
 ;;9002226.02101,"873,S52.002C ",.02)
 ;;S52.002C
 ;;9002226.02101,"873,S52.002C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.009A ",.01)
 ;;S52.009A
 ;;9002226.02101,"873,S52.009A ",.02)
 ;;S52.009A
 ;;9002226.02101,"873,S52.009A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.009B ",.01)
 ;;S52.009B
 ;;9002226.02101,"873,S52.009B ",.02)
 ;;S52.009B
 ;;9002226.02101,"873,S52.009B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.009C ",.01)
 ;;S52.009C
 ;;9002226.02101,"873,S52.009C ",.02)
 ;;S52.009C
 ;;9002226.02101,"873,S52.009C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.011A ",.01)
 ;;S52.011A
 ;;9002226.02101,"873,S52.011A ",.02)
 ;;S52.011A
 ;;9002226.02101,"873,S52.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.012A ",.01)
 ;;S52.012A
 ;;9002226.02101,"873,S52.012A ",.02)
 ;;S52.012A
 ;;9002226.02101,"873,S52.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.019A ",.01)
 ;;S52.019A
 ;;9002226.02101,"873,S52.019A ",.02)
 ;;S52.019A
 ;;9002226.02101,"873,S52.019A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.021A ",.01)
 ;;S52.021A
 ;;9002226.02101,"873,S52.021A ",.02)
 ;;S52.021A
 ;;9002226.02101,"873,S52.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.021B ",.01)
 ;;S52.021B
 ;;9002226.02101,"873,S52.021B ",.02)
 ;;S52.021B
 ;;9002226.02101,"873,S52.021B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.021C ",.01)
 ;;S52.021C
 ;;9002226.02101,"873,S52.021C ",.02)
 ;;S52.021C
 ;;9002226.02101,"873,S52.021C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.022A ",.01)
 ;;S52.022A
 ;;9002226.02101,"873,S52.022A ",.02)
 ;;S52.022A
 ;;9002226.02101,"873,S52.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.022B ",.01)
 ;;S52.022B
 ;;9002226.02101,"873,S52.022B ",.02)
 ;;S52.022B
 ;;9002226.02101,"873,S52.022B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.022C ",.01)
 ;;S52.022C
 ;;9002226.02101,"873,S52.022C ",.02)
 ;;S52.022C
 ;;9002226.02101,"873,S52.022C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.023A ",.01)
 ;;S52.023A
 ;;9002226.02101,"873,S52.023A ",.02)
 ;;S52.023A
 ;;9002226.02101,"873,S52.023A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.023B ",.01)
 ;;S52.023B
 ;;9002226.02101,"873,S52.023B ",.02)
 ;;S52.023B
 ;;9002226.02101,"873,S52.023B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.023C ",.01)
 ;;S52.023C
 ;;9002226.02101,"873,S52.023C ",.02)
 ;;S52.023C
 ;;9002226.02101,"873,S52.023C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.024A ",.01)
 ;;S52.024A
 ;;9002226.02101,"873,S52.024A ",.02)
 ;;S52.024A
 ;;9002226.02101,"873,S52.024A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.024B ",.01)
 ;;S52.024B
 ;;9002226.02101,"873,S52.024B ",.02)
 ;;S52.024B
 ;;9002226.02101,"873,S52.024B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.024C ",.01)
 ;;S52.024C
 ;;9002226.02101,"873,S52.024C ",.02)
 ;;S52.024C
 ;;9002226.02101,"873,S52.024C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.025A ",.01)
 ;;S52.025A
 ;;9002226.02101,"873,S52.025A ",.02)
 ;;S52.025A
 ;;9002226.02101,"873,S52.025A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.025B ",.01)
 ;;S52.025B
 ;;9002226.02101,"873,S52.025B ",.02)
 ;;S52.025B
 ;;9002226.02101,"873,S52.025B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.025C ",.01)
 ;;S52.025C
 ;;9002226.02101,"873,S52.025C ",.02)
 ;;S52.025C
 ;;9002226.02101,"873,S52.025C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.026A ",.01)
 ;;S52.026A
 ;;9002226.02101,"873,S52.026A ",.02)
 ;;S52.026A
 ;;9002226.02101,"873,S52.026A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.026B ",.01)
 ;;S52.026B
 ;;9002226.02101,"873,S52.026B ",.02)
 ;;S52.026B
 ;;9002226.02101,"873,S52.026B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.026C ",.01)
 ;;S52.026C
 ;;9002226.02101,"873,S52.026C ",.02)
 ;;S52.026C
 ;;9002226.02101,"873,S52.026C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.031A ",.01)
 ;;S52.031A
 ;;9002226.02101,"873,S52.031A ",.02)
 ;;S52.031A
 ;;9002226.02101,"873,S52.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.031B ",.01)
 ;;S52.031B
 ;;9002226.02101,"873,S52.031B ",.02)
 ;;S52.031B
 ;;9002226.02101,"873,S52.031B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.031C ",.01)
 ;;S52.031C
 ;;9002226.02101,"873,S52.031C ",.02)
 ;;S52.031C
 ;;9002226.02101,"873,S52.031C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.032A ",.01)
 ;;S52.032A
 ;;9002226.02101,"873,S52.032A ",.02)
 ;;S52.032A
 ;;9002226.02101,"873,S52.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.032B ",.01)
 ;;S52.032B
 ;;9002226.02101,"873,S52.032B ",.02)
 ;;S52.032B
 ;;9002226.02101,"873,S52.032B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.032C ",.01)
 ;;S52.032C
 ;;9002226.02101,"873,S52.032C ",.02)
 ;;S52.032C
 ;;9002226.02101,"873,S52.032C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.033A ",.01)
 ;;S52.033A
 ;;9002226.02101,"873,S52.033A ",.02)
 ;;S52.033A
 ;;9002226.02101,"873,S52.033A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.033B ",.01)
 ;;S52.033B
 ;;9002226.02101,"873,S52.033B ",.02)
 ;;S52.033B
 ;;9002226.02101,"873,S52.033B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.033C ",.01)
 ;;S52.033C
 ;;9002226.02101,"873,S52.033C ",.02)
 ;;S52.033C
 ;;9002226.02101,"873,S52.033C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.034A ",.01)
 ;;S52.034A
 ;;9002226.02101,"873,S52.034A ",.02)
 ;;S52.034A
 ;;9002226.02101,"873,S52.034A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.034B ",.01)
 ;;S52.034B
 ;;9002226.02101,"873,S52.034B ",.02)
 ;;S52.034B
 ;;9002226.02101,"873,S52.034B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.034C ",.01)
 ;;S52.034C
 ;;9002226.02101,"873,S52.034C ",.02)
 ;;S52.034C
 ;;9002226.02101,"873,S52.034C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.035A ",.01)
 ;;S52.035A
 ;;9002226.02101,"873,S52.035A ",.02)
 ;;S52.035A
 ;;9002226.02101,"873,S52.035A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.035B ",.01)
 ;;S52.035B
 ;;9002226.02101,"873,S52.035B ",.02)
 ;;S52.035B
 ;;9002226.02101,"873,S52.035B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.035C ",.01)
 ;;S52.035C
 ;;9002226.02101,"873,S52.035C ",.02)
 ;;S52.035C
 ;;9002226.02101,"873,S52.035C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.036A ",.01)
 ;;S52.036A
 ;;9002226.02101,"873,S52.036A ",.02)
 ;;S52.036A
 ;;9002226.02101,"873,S52.036A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.036B ",.01)
 ;;S52.036B
 ;;9002226.02101,"873,S52.036B ",.02)
 ;;S52.036B
 ;;9002226.02101,"873,S52.036B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.036C ",.01)
 ;;S52.036C
 ;;9002226.02101,"873,S52.036C ",.02)
 ;;S52.036C
 ;;9002226.02101,"873,S52.036C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.041A ",.01)
 ;;S52.041A
 ;;9002226.02101,"873,S52.041A ",.02)
 ;;S52.041A
 ;;9002226.02101,"873,S52.041A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.041B ",.01)
 ;;S52.041B
 ;;9002226.02101,"873,S52.041B ",.02)
 ;;S52.041B
 ;;9002226.02101,"873,S52.041B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.041C ",.01)
 ;;S52.041C
 ;;9002226.02101,"873,S52.041C ",.02)
 ;;S52.041C
 ;;9002226.02101,"873,S52.041C ",.03)
 ;;30
 ;;9002226.02101,"873,S52.042A ",.01)
 ;;S52.042A
 ;;9002226.02101,"873,S52.042A ",.02)
 ;;S52.042A
 ;;9002226.02101,"873,S52.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S52.042B ",.01)
 ;;S52.042B
 ;;9002226.02101,"873,S52.042B ",.02)
 ;;S52.042B
 ;;9002226.02101,"873,S52.042B ",.03)
 ;;30
 ;;9002226.02101,"873,S52.042C ",.01)
 ;;S52.042C
