ATXXB100 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0RJUXZZ ",.01)
 ;;0RJUXZZ 
 ;;9002226.02101,"1804,0RJUXZZ ",.02)
 ;;0RJUXZZ 
 ;;9002226.02101,"1804,0RJUXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RJVXZZ ",.01)
 ;;0RJVXZZ 
 ;;9002226.02101,"1804,0RJVXZZ ",.02)
 ;;0RJVXZZ 
 ;;9002226.02101,"1804,0RJVXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RJWXZZ ",.01)
 ;;0RJWXZZ 
 ;;9002226.02101,"1804,0RJWXZZ ",.02)
 ;;0RJWXZZ 
 ;;9002226.02101,"1804,0RJWXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RJXXZZ ",.01)
 ;;0RJXXZZ 
 ;;9002226.02101,"1804,0RJXXZZ ",.02)
 ;;0RJXXZZ 
 ;;9002226.02101,"1804,0RJXXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN0XZZ ",.01)
 ;;0RN0XZZ 
 ;;9002226.02101,"1804,0RN0XZZ ",.02)
 ;;0RN0XZZ 
 ;;9002226.02101,"1804,0RN0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN1XZZ ",.01)
 ;;0RN1XZZ 
 ;;9002226.02101,"1804,0RN1XZZ ",.02)
 ;;0RN1XZZ 
 ;;9002226.02101,"1804,0RN1XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN3XZZ ",.01)
 ;;0RN3XZZ 
 ;;9002226.02101,"1804,0RN3XZZ ",.02)
 ;;0RN3XZZ 
 ;;9002226.02101,"1804,0RN3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN4XZZ ",.01)
 ;;0RN4XZZ 
 ;;9002226.02101,"1804,0RN4XZZ ",.02)
 ;;0RN4XZZ 
 ;;9002226.02101,"1804,0RN4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN5XZZ ",.01)
 ;;0RN5XZZ 
 ;;9002226.02101,"1804,0RN5XZZ ",.02)
 ;;0RN5XZZ 
 ;;9002226.02101,"1804,0RN5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN6XZZ ",.01)
 ;;0RN6XZZ 
 ;;9002226.02101,"1804,0RN6XZZ ",.02)
 ;;0RN6XZZ 
 ;;9002226.02101,"1804,0RN6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RN9XZZ ",.01)
 ;;0RN9XZZ 
 ;;9002226.02101,"1804,0RN9XZZ ",.02)
 ;;0RN9XZZ 
 ;;9002226.02101,"1804,0RN9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNAXZZ ",.01)
 ;;0RNAXZZ 
 ;;9002226.02101,"1804,0RNAXZZ ",.02)
 ;;0RNAXZZ 
 ;;9002226.02101,"1804,0RNAXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNBXZZ ",.01)
 ;;0RNBXZZ 
 ;;9002226.02101,"1804,0RNBXZZ ",.02)
 ;;0RNBXZZ 
 ;;9002226.02101,"1804,0RNBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNCXZZ ",.01)
 ;;0RNCXZZ 
 ;;9002226.02101,"1804,0RNCXZZ ",.02)
 ;;0RNCXZZ 
 ;;9002226.02101,"1804,0RNCXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNDXZZ ",.01)
 ;;0RNDXZZ 
 ;;9002226.02101,"1804,0RNDXZZ ",.02)
 ;;0RNDXZZ 
 ;;9002226.02101,"1804,0RNDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNEXZZ ",.01)
 ;;0RNEXZZ 
 ;;9002226.02101,"1804,0RNEXZZ ",.02)
 ;;0RNEXZZ 
 ;;9002226.02101,"1804,0RNEXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNFXZZ ",.01)
 ;;0RNFXZZ 
 ;;9002226.02101,"1804,0RNFXZZ ",.02)
 ;;0RNFXZZ 
 ;;9002226.02101,"1804,0RNFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNGXZZ ",.01)
 ;;0RNGXZZ 
 ;;9002226.02101,"1804,0RNGXZZ ",.02)
 ;;0RNGXZZ 
 ;;9002226.02101,"1804,0RNGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNHXZZ ",.01)
 ;;0RNHXZZ 
 ;;9002226.02101,"1804,0RNHXZZ ",.02)
 ;;0RNHXZZ 
 ;;9002226.02101,"1804,0RNHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNJXZZ ",.01)
 ;;0RNJXZZ 
 ;;9002226.02101,"1804,0RNJXZZ ",.02)
 ;;0RNJXZZ 
 ;;9002226.02101,"1804,0RNJXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNKXZZ ",.01)
 ;;0RNKXZZ 
 ;;9002226.02101,"1804,0RNKXZZ ",.02)
 ;;0RNKXZZ 
 ;;9002226.02101,"1804,0RNKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNLXZZ ",.01)
 ;;0RNLXZZ 
 ;;9002226.02101,"1804,0RNLXZZ ",.02)
 ;;0RNLXZZ 
 ;;9002226.02101,"1804,0RNLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNMXZZ ",.01)
 ;;0RNMXZZ 
 ;;9002226.02101,"1804,0RNMXZZ ",.02)
 ;;0RNMXZZ 
 ;;9002226.02101,"1804,0RNMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNNXZZ ",.01)
 ;;0RNNXZZ 
 ;;9002226.02101,"1804,0RNNXZZ ",.02)
 ;;0RNNXZZ 
 ;;9002226.02101,"1804,0RNNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNPXZZ ",.01)
 ;;0RNPXZZ 
 ;;9002226.02101,"1804,0RNPXZZ ",.02)
 ;;0RNPXZZ 
 ;;9002226.02101,"1804,0RNPXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNQXZZ ",.01)
 ;;0RNQXZZ 
 ;;9002226.02101,"1804,0RNQXZZ ",.02)
 ;;0RNQXZZ 
 ;;9002226.02101,"1804,0RNQXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNRXZZ ",.01)
 ;;0RNRXZZ 
 ;;9002226.02101,"1804,0RNRXZZ ",.02)
 ;;0RNRXZZ 
 ;;9002226.02101,"1804,0RNRXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNSXZZ ",.01)
 ;;0RNSXZZ 
 ;;9002226.02101,"1804,0RNSXZZ ",.02)
 ;;0RNSXZZ 
 ;;9002226.02101,"1804,0RNSXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNTXZZ ",.01)
 ;;0RNTXZZ 
 ;;9002226.02101,"1804,0RNTXZZ ",.02)
 ;;0RNTXZZ 
 ;;9002226.02101,"1804,0RNTXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNUXZZ ",.01)
 ;;0RNUXZZ 
 ;;9002226.02101,"1804,0RNUXZZ ",.02)
 ;;0RNUXZZ 
 ;;9002226.02101,"1804,0RNUXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNVXZZ ",.01)
 ;;0RNVXZZ 
 ;;9002226.02101,"1804,0RNVXZZ ",.02)
 ;;0RNVXZZ 
 ;;9002226.02101,"1804,0RNVXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNWXZZ ",.01)
 ;;0RNWXZZ 
 ;;9002226.02101,"1804,0RNWXZZ ",.02)
 ;;0RNWXZZ 
 ;;9002226.02101,"1804,0RNWXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RNXXZZ ",.01)
 ;;0RNXXZZ 
 ;;9002226.02101,"1804,0RNXXZZ ",.02)
 ;;0RNXXZZ 
 ;;9002226.02101,"1804,0RNXXZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP0X0Z ",.01)
 ;;0RP0X0Z 
 ;;9002226.02101,"1804,0RP0X0Z ",.02)
 ;;0RP0X0Z 
 ;;9002226.02101,"1804,0RP0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP0X3Z ",.01)
 ;;0RP0X3Z 
 ;;9002226.02101,"1804,0RP0X3Z ",.02)
 ;;0RP0X3Z 
 ;;9002226.02101,"1804,0RP0X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP0X4Z ",.01)
 ;;0RP0X4Z 
 ;;9002226.02101,"1804,0RP0X4Z ",.02)
 ;;0RP0X4Z 
 ;;9002226.02101,"1804,0RP0X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP1X0Z ",.01)
 ;;0RP1X0Z 
 ;;9002226.02101,"1804,0RP1X0Z ",.02)
 ;;0RP1X0Z 
 ;;9002226.02101,"1804,0RP1X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP1X3Z ",.01)
 ;;0RP1X3Z 
 ;;9002226.02101,"1804,0RP1X3Z ",.02)
 ;;0RP1X3Z 
 ;;9002226.02101,"1804,0RP1X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP1X4Z ",.01)
 ;;0RP1X4Z 
 ;;9002226.02101,"1804,0RP1X4Z ",.02)
 ;;0RP1X4Z 
 ;;9002226.02101,"1804,0RP1X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP3X0Z ",.01)
 ;;0RP3X0Z 
 ;;9002226.02101,"1804,0RP3X0Z ",.02)
 ;;0RP3X0Z 
 ;;9002226.02101,"1804,0RP3X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP3X3Z ",.01)
 ;;0RP3X3Z 
 ;;9002226.02101,"1804,0RP3X3Z ",.02)
 ;;0RP3X3Z 
 ;;9002226.02101,"1804,0RP3X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP4X0Z ",.01)
 ;;0RP4X0Z 
 ;;9002226.02101,"1804,0RP4X0Z ",.02)
 ;;0RP4X0Z 
 ;;9002226.02101,"1804,0RP4X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP4X3Z ",.01)
 ;;0RP4X3Z 
 ;;9002226.02101,"1804,0RP4X3Z ",.02)
 ;;0RP4X3Z 
 ;;9002226.02101,"1804,0RP4X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP4X4Z ",.01)
 ;;0RP4X4Z 
 ;;9002226.02101,"1804,0RP4X4Z ",.02)
 ;;0RP4X4Z 
 ;;9002226.02101,"1804,0RP4X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP5X0Z ",.01)
 ;;0RP5X0Z 
 ;;9002226.02101,"1804,0RP5X0Z ",.02)
 ;;0RP5X0Z 
 ;;9002226.02101,"1804,0RP5X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP5X3Z ",.01)
 ;;0RP5X3Z 
 ;;9002226.02101,"1804,0RP5X3Z ",.02)
 ;;0RP5X3Z 
 ;;9002226.02101,"1804,0RP5X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP6X0Z ",.01)
 ;;0RP6X0Z 
 ;;9002226.02101,"1804,0RP6X0Z ",.02)
 ;;0RP6X0Z 
 ;;9002226.02101,"1804,0RP6X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP6X3Z ",.01)
 ;;0RP6X3Z 
 ;;9002226.02101,"1804,0RP6X3Z ",.02)
 ;;0RP6X3Z 
 ;;9002226.02101,"1804,0RP6X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP6X4Z ",.01)
 ;;0RP6X4Z 
 ;;9002226.02101,"1804,0RP6X4Z ",.02)
 ;;0RP6X4Z 
 ;;9002226.02101,"1804,0RP6X4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP9X0Z ",.01)
 ;;0RP9X0Z 
 ;;9002226.02101,"1804,0RP9X0Z ",.02)
 ;;0RP9X0Z 
 ;;9002226.02101,"1804,0RP9X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RP9X3Z ",.01)
 ;;0RP9X3Z 
 ;;9002226.02101,"1804,0RP9X3Z ",.02)
 ;;0RP9X3Z 
 ;;9002226.02101,"1804,0RP9X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPAX0Z ",.01)
 ;;0RPAX0Z 
 ;;9002226.02101,"1804,0RPAX0Z ",.02)
 ;;0RPAX0Z 
 ;;9002226.02101,"1804,0RPAX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPAX3Z ",.01)
 ;;0RPAX3Z 
 ;;9002226.02101,"1804,0RPAX3Z ",.02)
 ;;0RPAX3Z 
 ;;9002226.02101,"1804,0RPAX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPAX4Z ",.01)
 ;;0RPAX4Z 
 ;;9002226.02101,"1804,0RPAX4Z ",.02)
 ;;0RPAX4Z 
 ;;9002226.02101,"1804,0RPAX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPBX0Z ",.01)
 ;;0RPBX0Z 
 ;;9002226.02101,"1804,0RPBX0Z ",.02)
 ;;0RPBX0Z 
 ;;9002226.02101,"1804,0RPBX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPBX3Z ",.01)
 ;;0RPBX3Z 
 ;;9002226.02101,"1804,0RPBX3Z ",.02)
 ;;0RPBX3Z 
 ;;9002226.02101,"1804,0RPBX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPCX0Z ",.01)
 ;;0RPCX0Z 
 ;;9002226.02101,"1804,0RPCX0Z ",.02)
 ;;0RPCX0Z 
 ;;9002226.02101,"1804,0RPCX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPCX3Z ",.01)
 ;;0RPCX3Z 
 ;;9002226.02101,"1804,0RPCX3Z ",.02)
 ;;0RPCX3Z 
 ;;9002226.02101,"1804,0RPCX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPDX0Z ",.01)
 ;;0RPDX0Z 
 ;;9002226.02101,"1804,0RPDX0Z ",.02)
 ;;0RPDX0Z 
 ;;9002226.02101,"1804,0RPDX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPDX3Z ",.01)
 ;;0RPDX3Z 
 ;;9002226.02101,"1804,0RPDX3Z ",.02)
 ;;0RPDX3Z 
 ;;9002226.02101,"1804,0RPDX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPEX0Z ",.01)
 ;;0RPEX0Z 
 ;;9002226.02101,"1804,0RPEX0Z ",.02)
 ;;0RPEX0Z 
 ;;9002226.02101,"1804,0RPEX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPEX3Z ",.01)
 ;;0RPEX3Z 
 ;;9002226.02101,"1804,0RPEX3Z ",.02)
 ;;0RPEX3Z 
 ;;9002226.02101,"1804,0RPEX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPEX4Z ",.01)
 ;;0RPEX4Z 
 ;;9002226.02101,"1804,0RPEX4Z ",.02)
 ;;0RPEX4Z 
 ;;9002226.02101,"1804,0RPEX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPFX0Z ",.01)
 ;;0RPFX0Z 
 ;;9002226.02101,"1804,0RPFX0Z ",.02)
 ;;0RPFX0Z 
 ;;9002226.02101,"1804,0RPFX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPFX3Z ",.01)
 ;;0RPFX3Z 
 ;;9002226.02101,"1804,0RPFX3Z ",.02)
 ;;0RPFX3Z 
 ;;9002226.02101,"1804,0RPFX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPFX4Z ",.01)
 ;;0RPFX4Z 
 ;;9002226.02101,"1804,0RPFX4Z ",.02)
 ;;0RPFX4Z 
 ;;9002226.02101,"1804,0RPFX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPGX0Z ",.01)
 ;;0RPGX0Z 
 ;;9002226.02101,"1804,0RPGX0Z ",.02)
 ;;0RPGX0Z 
 ;;9002226.02101,"1804,0RPGX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPGX3Z ",.01)
 ;;0RPGX3Z 
 ;;9002226.02101,"1804,0RPGX3Z ",.02)
 ;;0RPGX3Z 
 ;;9002226.02101,"1804,0RPGX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPGX4Z ",.01)
 ;;0RPGX4Z 
 ;;9002226.02101,"1804,0RPGX4Z ",.02)
 ;;0RPGX4Z 
 ;;9002226.02101,"1804,0RPGX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPHX0Z ",.01)
 ;;0RPHX0Z 
 ;;9002226.02101,"1804,0RPHX0Z ",.02)
 ;;0RPHX0Z 
 ;;9002226.02101,"1804,0RPHX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPHX3Z ",.01)
 ;;0RPHX3Z 
 ;;9002226.02101,"1804,0RPHX3Z ",.02)
 ;;0RPHX3Z 
 ;;9002226.02101,"1804,0RPHX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPHX4Z ",.01)
 ;;0RPHX4Z 
 ;;9002226.02101,"1804,0RPHX4Z ",.02)
 ;;0RPHX4Z 
 ;;9002226.02101,"1804,0RPHX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPJX0Z ",.01)
 ;;0RPJX0Z 
 ;;9002226.02101,"1804,0RPJX0Z ",.02)
 ;;0RPJX0Z 
 ;;9002226.02101,"1804,0RPJX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPJX3Z ",.01)
 ;;0RPJX3Z 
 ;;9002226.02101,"1804,0RPJX3Z ",.02)
 ;;0RPJX3Z 
 ;;9002226.02101,"1804,0RPJX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPJX4Z ",.01)
 ;;0RPJX4Z 
 ;;9002226.02101,"1804,0RPJX4Z ",.02)
 ;;0RPJX4Z 
 ;;9002226.02101,"1804,0RPJX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPKX0Z ",.01)
 ;;0RPKX0Z 
 ;;9002226.02101,"1804,0RPKX0Z ",.02)
 ;;0RPKX0Z 
 ;;9002226.02101,"1804,0RPKX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPKX3Z ",.01)
 ;;0RPKX3Z 
 ;;9002226.02101,"1804,0RPKX3Z ",.02)
 ;;0RPKX3Z 
 ;;9002226.02101,"1804,0RPKX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPKX4Z ",.01)
 ;;0RPKX4Z 
 ;;9002226.02101,"1804,0RPKX4Z ",.02)
 ;;0RPKX4Z 
 ;;9002226.02101,"1804,0RPKX4Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0RPLX0Z ",.01)
 ;;0RPLX0Z 
