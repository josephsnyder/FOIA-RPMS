ATXXB70 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0DNH8ZZ ",.01)
 ;;0DNH8ZZ 
 ;;9002226.02101,"1804,0DNH8ZZ ",.02)
 ;;0DNH8ZZ 
 ;;9002226.02101,"1804,0DNH8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNK7ZZ ",.01)
 ;;0DNK7ZZ 
 ;;9002226.02101,"1804,0DNK7ZZ ",.02)
 ;;0DNK7ZZ 
 ;;9002226.02101,"1804,0DNK7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNK8ZZ ",.01)
 ;;0DNK8ZZ 
 ;;9002226.02101,"1804,0DNK8ZZ ",.02)
 ;;0DNK8ZZ 
 ;;9002226.02101,"1804,0DNK8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNL7ZZ ",.01)
 ;;0DNL7ZZ 
 ;;9002226.02101,"1804,0DNL7ZZ ",.02)
 ;;0DNL7ZZ 
 ;;9002226.02101,"1804,0DNL7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNL8ZZ ",.01)
 ;;0DNL8ZZ 
 ;;9002226.02101,"1804,0DNL8ZZ ",.02)
 ;;0DNL8ZZ 
 ;;9002226.02101,"1804,0DNL8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNM7ZZ ",.01)
 ;;0DNM7ZZ 
 ;;9002226.02101,"1804,0DNM7ZZ ",.02)
 ;;0DNM7ZZ 
 ;;9002226.02101,"1804,0DNM7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNM8ZZ ",.01)
 ;;0DNM8ZZ 
 ;;9002226.02101,"1804,0DNM8ZZ ",.02)
 ;;0DNM8ZZ 
 ;;9002226.02101,"1804,0DNM8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNN7ZZ ",.01)
 ;;0DNN7ZZ 
 ;;9002226.02101,"1804,0DNN7ZZ ",.02)
 ;;0DNN7ZZ 
 ;;9002226.02101,"1804,0DNN7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNN8ZZ ",.01)
 ;;0DNN8ZZ 
 ;;9002226.02101,"1804,0DNN8ZZ ",.02)
 ;;0DNN8ZZ 
 ;;9002226.02101,"1804,0DNN8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNP7ZZ ",.01)
 ;;0DNP7ZZ 
 ;;9002226.02101,"1804,0DNP7ZZ ",.02)
 ;;0DNP7ZZ 
 ;;9002226.02101,"1804,0DNP7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DNP8ZZ ",.01)
 ;;0DNP8ZZ 
 ;;9002226.02101,"1804,0DNP8ZZ ",.02)
 ;;0DNP8ZZ 
 ;;9002226.02101,"1804,0DNP8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP0X0Z ",.01)
 ;;0DP0X0Z 
 ;;9002226.02101,"1804,0DP0X0Z ",.02)
 ;;0DP0X0Z 
 ;;9002226.02101,"1804,0DP0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP0X2Z ",.01)
 ;;0DP0X2Z 
 ;;9002226.02101,"1804,0DP0X2Z ",.02)
 ;;0DP0X2Z 
 ;;9002226.02101,"1804,0DP0X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP0X3Z ",.01)
 ;;0DP0X3Z 
 ;;9002226.02101,"1804,0DP0X3Z ",.02)
 ;;0DP0X3Z 
 ;;9002226.02101,"1804,0DP0X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP0XDZ ",.01)
 ;;0DP0XDZ 
 ;;9002226.02101,"1804,0DP0XDZ ",.02)
 ;;0DP0XDZ 
 ;;9002226.02101,"1804,0DP0XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP0XUZ ",.01)
 ;;0DP0XUZ 
 ;;9002226.02101,"1804,0DP0XUZ ",.02)
 ;;0DP0XUZ 
 ;;9002226.02101,"1804,0DP0XUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP571Z ",.01)
 ;;0DP571Z 
 ;;9002226.02101,"1804,0DP571Z ",.02)
 ;;0DP571Z 
 ;;9002226.02101,"1804,0DP571Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP581Z ",.01)
 ;;0DP581Z 
 ;;9002226.02101,"1804,0DP581Z ",.02)
 ;;0DP581Z 
 ;;9002226.02101,"1804,0DP581Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP5X1Z ",.01)
 ;;0DP5X1Z 
 ;;9002226.02101,"1804,0DP5X1Z ",.02)
 ;;0DP5X1Z 
 ;;9002226.02101,"1804,0DP5X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP5X2Z ",.01)
 ;;0DP5X2Z 
 ;;9002226.02101,"1804,0DP5X2Z ",.02)
 ;;0DP5X2Z 
 ;;9002226.02101,"1804,0DP5X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP5X3Z ",.01)
 ;;0DP5X3Z 
 ;;9002226.02101,"1804,0DP5X3Z ",.02)
 ;;0DP5X3Z 
 ;;9002226.02101,"1804,0DP5X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP5XDZ ",.01)
 ;;0DP5XDZ 
 ;;9002226.02101,"1804,0DP5XDZ ",.02)
 ;;0DP5XDZ 
 ;;9002226.02101,"1804,0DP5XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP5XUZ ",.01)
 ;;0DP5XUZ 
 ;;9002226.02101,"1804,0DP5XUZ ",.02)
 ;;0DP5XUZ 
 ;;9002226.02101,"1804,0DP5XUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP6X0Z ",.01)
 ;;0DP6X0Z 
 ;;9002226.02101,"1804,0DP6X0Z ",.02)
 ;;0DP6X0Z 
 ;;9002226.02101,"1804,0DP6X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP6X2Z ",.01)
 ;;0DP6X2Z 
 ;;9002226.02101,"1804,0DP6X2Z ",.02)
 ;;0DP6X2Z 
 ;;9002226.02101,"1804,0DP6X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP6X3Z ",.01)
 ;;0DP6X3Z 
 ;;9002226.02101,"1804,0DP6X3Z ",.02)
 ;;0DP6X3Z 
 ;;9002226.02101,"1804,0DP6X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP6XDZ ",.01)
 ;;0DP6XDZ 
 ;;9002226.02101,"1804,0DP6XDZ ",.02)
 ;;0DP6XDZ 
 ;;9002226.02101,"1804,0DP6XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DP6XUZ ",.01)
 ;;0DP6XUZ 
 ;;9002226.02101,"1804,0DP6XUZ ",.02)
 ;;0DP6XUZ 
 ;;9002226.02101,"1804,0DP6XUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPDX0Z ",.01)
 ;;0DPDX0Z 
 ;;9002226.02101,"1804,0DPDX0Z ",.02)
 ;;0DPDX0Z 
 ;;9002226.02101,"1804,0DPDX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPDX2Z ",.01)
 ;;0DPDX2Z 
 ;;9002226.02101,"1804,0DPDX2Z ",.02)
 ;;0DPDX2Z 
 ;;9002226.02101,"1804,0DPDX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPDX3Z ",.01)
 ;;0DPDX3Z 
 ;;9002226.02101,"1804,0DPDX3Z ",.02)
 ;;0DPDX3Z 
 ;;9002226.02101,"1804,0DPDX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPDXDZ ",.01)
 ;;0DPDXDZ 
 ;;9002226.02101,"1804,0DPDXDZ ",.02)
 ;;0DPDXDZ 
 ;;9002226.02101,"1804,0DPDXDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPDXUZ ",.01)
 ;;0DPDXUZ 
 ;;9002226.02101,"1804,0DPDXUZ ",.02)
 ;;0DPDXUZ 
 ;;9002226.02101,"1804,0DPDXUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPP71Z ",.01)
 ;;0DPP71Z 
 ;;9002226.02101,"1804,0DPP71Z ",.02)
 ;;0DPP71Z 
 ;;9002226.02101,"1804,0DPP71Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPP81Z ",.01)
 ;;0DPP81Z 
 ;;9002226.02101,"1804,0DPP81Z ",.02)
 ;;0DPP81Z 
 ;;9002226.02101,"1804,0DPP81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DPPX1Z ",.01)
 ;;0DPPX1Z 
 ;;9002226.02101,"1804,0DPPX1Z ",.02)
 ;;0DPPX1Z 
 ;;9002226.02101,"1804,0DPPX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DS97ZZ ",.01)
 ;;0DS97ZZ 
 ;;9002226.02101,"1804,0DS97ZZ ",.02)
 ;;0DS97ZZ 
 ;;9002226.02101,"1804,0DS97ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DS98ZZ ",.01)
 ;;0DS98ZZ 
 ;;9002226.02101,"1804,0DS98ZZ ",.02)
 ;;0DS98ZZ 
 ;;9002226.02101,"1804,0DS98ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DS9XZZ ",.01)
 ;;0DS9XZZ 
 ;;9002226.02101,"1804,0DS9XZZ ",.02)
 ;;0DS9XZZ 
 ;;9002226.02101,"1804,0DS9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSA7ZZ ",.01)
 ;;0DSA7ZZ 
 ;;9002226.02101,"1804,0DSA7ZZ ",.02)
 ;;0DSA7ZZ 
 ;;9002226.02101,"1804,0DSA7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSA8ZZ ",.01)
 ;;0DSA8ZZ 
 ;;9002226.02101,"1804,0DSA8ZZ ",.02)
 ;;0DSA8ZZ 
 ;;9002226.02101,"1804,0DSA8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSAXZZ ",.01)
 ;;0DSAXZZ 
 ;;9002226.02101,"1804,0DSAXZZ ",.02)
 ;;0DSAXZZ 
 ;;9002226.02101,"1804,0DSAXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSB7ZZ ",.01)
 ;;0DSB7ZZ 
 ;;9002226.02101,"1804,0DSB7ZZ ",.02)
 ;;0DSB7ZZ 
 ;;9002226.02101,"1804,0DSB7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSB8ZZ ",.01)
 ;;0DSB8ZZ 
 ;;9002226.02101,"1804,0DSB8ZZ ",.02)
 ;;0DSB8ZZ 
 ;;9002226.02101,"1804,0DSB8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSBXZZ ",.01)
 ;;0DSBXZZ 
 ;;9002226.02101,"1804,0DSBXZZ ",.02)
 ;;0DSBXZZ 
 ;;9002226.02101,"1804,0DSBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSHXZZ ",.01)
 ;;0DSHXZZ 
 ;;9002226.02101,"1804,0DSHXZZ ",.02)
 ;;0DSHXZZ 
 ;;9002226.02101,"1804,0DSHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSK7ZZ ",.01)
 ;;0DSK7ZZ 
 ;;9002226.02101,"1804,0DSK7ZZ ",.02)
 ;;0DSK7ZZ 
 ;;9002226.02101,"1804,0DSK7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSK8ZZ ",.01)
 ;;0DSK8ZZ 
 ;;9002226.02101,"1804,0DSK8ZZ ",.02)
 ;;0DSK8ZZ 
 ;;9002226.02101,"1804,0DSK8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSKXZZ ",.01)
 ;;0DSKXZZ 
 ;;9002226.02101,"1804,0DSKXZZ ",.02)
 ;;0DSKXZZ 
 ;;9002226.02101,"1804,0DSKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSL7ZZ ",.01)
 ;;0DSL7ZZ 
 ;;9002226.02101,"1804,0DSL7ZZ ",.02)
 ;;0DSL7ZZ 
 ;;9002226.02101,"1804,0DSL7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSL8ZZ ",.01)
 ;;0DSL8ZZ 
 ;;9002226.02101,"1804,0DSL8ZZ ",.02)
 ;;0DSL8ZZ 
 ;;9002226.02101,"1804,0DSL8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSLXZZ ",.01)
 ;;0DSLXZZ 
 ;;9002226.02101,"1804,0DSLXZZ ",.02)
 ;;0DSLXZZ 
 ;;9002226.02101,"1804,0DSLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSM7ZZ ",.01)
 ;;0DSM7ZZ 
 ;;9002226.02101,"1804,0DSM7ZZ ",.02)
 ;;0DSM7ZZ 
 ;;9002226.02101,"1804,0DSM7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSM8ZZ ",.01)
 ;;0DSM8ZZ 
 ;;9002226.02101,"1804,0DSM8ZZ ",.02)
 ;;0DSM8ZZ 
 ;;9002226.02101,"1804,0DSM8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSMXZZ ",.01)
 ;;0DSMXZZ 
 ;;9002226.02101,"1804,0DSMXZZ ",.02)
 ;;0DSMXZZ 
 ;;9002226.02101,"1804,0DSMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSN7ZZ ",.01)
 ;;0DSN7ZZ 
 ;;9002226.02101,"1804,0DSN7ZZ ",.02)
 ;;0DSN7ZZ 
 ;;9002226.02101,"1804,0DSN7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSN8ZZ ",.01)
 ;;0DSN8ZZ 
 ;;9002226.02101,"1804,0DSN8ZZ ",.02)
 ;;0DSN8ZZ 
 ;;9002226.02101,"1804,0DSN8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSNXZZ ",.01)
 ;;0DSNXZZ 
 ;;9002226.02101,"1804,0DSNXZZ ",.02)
 ;;0DSNXZZ 
 ;;9002226.02101,"1804,0DSNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DSPXZZ ",.01)
 ;;0DSPXZZ 
 ;;9002226.02101,"1804,0DSPXZZ ",.02)
 ;;0DSPXZZ 
 ;;9002226.02101,"1804,0DSPXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0X0Z ",.01)
 ;;0DW0X0Z 
 ;;9002226.02101,"1804,0DW0X0Z ",.02)
 ;;0DW0X0Z 
 ;;9002226.02101,"1804,0DW0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0X2Z ",.01)
 ;;0DW0X2Z 
 ;;9002226.02101,"1804,0DW0X2Z ",.02)
 ;;0DW0X2Z 
 ;;9002226.02101,"1804,0DW0X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0X3Z ",.01)
 ;;0DW0X3Z 
 ;;9002226.02101,"1804,0DW0X3Z ",.02)
 ;;0DW0X3Z 
 ;;9002226.02101,"1804,0DW0X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0X7Z ",.01)
 ;;0DW0X7Z 
 ;;9002226.02101,"1804,0DW0X7Z ",.02)
 ;;0DW0X7Z 
 ;;9002226.02101,"1804,0DW0X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0XCZ ",.01)
 ;;0DW0XCZ 
 ;;9002226.02101,"1804,0DW0XCZ ",.02)
 ;;0DW0XCZ 
 ;;9002226.02101,"1804,0DW0XCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0XDZ ",.01)
 ;;0DW0XDZ 
 ;;9002226.02101,"1804,0DW0XDZ ",.02)
 ;;0DW0XDZ 
 ;;9002226.02101,"1804,0DW0XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0XJZ ",.01)
 ;;0DW0XJZ 
 ;;9002226.02101,"1804,0DW0XJZ ",.02)
 ;;0DW0XJZ 
 ;;9002226.02101,"1804,0DW0XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0XKZ ",.01)
 ;;0DW0XKZ 
 ;;9002226.02101,"1804,0DW0XKZ ",.02)
 ;;0DW0XKZ 
 ;;9002226.02101,"1804,0DW0XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW0XUZ ",.01)
 ;;0DW0XUZ 
 ;;9002226.02101,"1804,0DW0XUZ ",.02)
 ;;0DW0XUZ 
 ;;9002226.02101,"1804,0DW0XUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW5XDZ ",.01)
 ;;0DW5XDZ 
 ;;9002226.02101,"1804,0DW5XDZ ",.02)
 ;;0DW5XDZ 
 ;;9002226.02101,"1804,0DW5XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6X0Z ",.01)
 ;;0DW6X0Z 
 ;;9002226.02101,"1804,0DW6X0Z ",.02)
 ;;0DW6X0Z 
 ;;9002226.02101,"1804,0DW6X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6X2Z ",.01)
 ;;0DW6X2Z 
 ;;9002226.02101,"1804,0DW6X2Z ",.02)
 ;;0DW6X2Z 
 ;;9002226.02101,"1804,0DW6X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6X3Z ",.01)
 ;;0DW6X3Z 
 ;;9002226.02101,"1804,0DW6X3Z ",.02)
 ;;0DW6X3Z 
 ;;9002226.02101,"1804,0DW6X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6X7Z ",.01)
 ;;0DW6X7Z 
 ;;9002226.02101,"1804,0DW6X7Z ",.02)
 ;;0DW6X7Z 
 ;;9002226.02101,"1804,0DW6X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6XCZ ",.01)
 ;;0DW6XCZ 
 ;;9002226.02101,"1804,0DW6XCZ ",.02)
 ;;0DW6XCZ 
 ;;9002226.02101,"1804,0DW6XCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6XDZ ",.01)
 ;;0DW6XDZ 
 ;;9002226.02101,"1804,0DW6XDZ ",.02)
 ;;0DW6XDZ 
 ;;9002226.02101,"1804,0DW6XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6XJZ ",.01)
 ;;0DW6XJZ 
 ;;9002226.02101,"1804,0DW6XJZ ",.02)
 ;;0DW6XJZ 
 ;;9002226.02101,"1804,0DW6XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6XKZ ",.01)
 ;;0DW6XKZ 
 ;;9002226.02101,"1804,0DW6XKZ ",.02)
 ;;0DW6XKZ 
 ;;9002226.02101,"1804,0DW6XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DW6XUZ ",.01)
 ;;0DW6XUZ 
 ;;9002226.02101,"1804,0DW6XUZ ",.02)
 ;;0DW6XUZ 
 ;;9002226.02101,"1804,0DW6XUZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0DWDX0Z ",.01)
 ;;0DWDX0Z 
