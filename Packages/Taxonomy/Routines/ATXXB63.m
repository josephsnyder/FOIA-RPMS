ATXXB63 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0BHL81Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP0X0Z ",.01)
 ;;0BP0X0Z 
 ;;9002226.02101,"1804,0BP0X0Z ",.02)
 ;;0BP0X0Z 
 ;;9002226.02101,"1804,0BP0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP0X1Z ",.01)
 ;;0BP0X1Z 
 ;;9002226.02101,"1804,0BP0X1Z ",.02)
 ;;0BP0X1Z 
 ;;9002226.02101,"1804,0BP0X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP0X2Z ",.01)
 ;;0BP0X2Z 
 ;;9002226.02101,"1804,0BP0X2Z ",.02)
 ;;0BP0X2Z 
 ;;9002226.02101,"1804,0BP0X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP0X3Z ",.01)
 ;;0BP0X3Z 
 ;;9002226.02101,"1804,0BP0X3Z ",.02)
 ;;0BP0X3Z 
 ;;9002226.02101,"1804,0BP0X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP0XDZ ",.01)
 ;;0BP0XDZ 
 ;;9002226.02101,"1804,0BP0XDZ ",.02)
 ;;0BP0XDZ 
 ;;9002226.02101,"1804,0BP0XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP1X0Z ",.01)
 ;;0BP1X0Z 
 ;;9002226.02101,"1804,0BP1X0Z ",.02)
 ;;0BP1X0Z 
 ;;9002226.02101,"1804,0BP1X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP1X2Z ",.01)
 ;;0BP1X2Z 
 ;;9002226.02101,"1804,0BP1X2Z ",.02)
 ;;0BP1X2Z 
 ;;9002226.02101,"1804,0BP1X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP1XDZ ",.01)
 ;;0BP1XDZ 
 ;;9002226.02101,"1804,0BP1XDZ ",.02)
 ;;0BP1XDZ 
 ;;9002226.02101,"1804,0BP1XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BP1XFZ ",.01)
 ;;0BP1XFZ 
 ;;9002226.02101,"1804,0BP1XFZ ",.02)
 ;;0BP1XFZ 
 ;;9002226.02101,"1804,0BP1XFZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPKX0Z ",.01)
 ;;0BPKX0Z 
 ;;9002226.02101,"1804,0BPKX0Z ",.02)
 ;;0BPKX0Z 
 ;;9002226.02101,"1804,0BPKX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPKX1Z ",.01)
 ;;0BPKX1Z 
 ;;9002226.02101,"1804,0BPKX1Z ",.02)
 ;;0BPKX1Z 
 ;;9002226.02101,"1804,0BPKX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPKX2Z ",.01)
 ;;0BPKX2Z 
 ;;9002226.02101,"1804,0BPKX2Z ",.02)
 ;;0BPKX2Z 
 ;;9002226.02101,"1804,0BPKX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPKX3Z ",.01)
 ;;0BPKX3Z 
 ;;9002226.02101,"1804,0BPKX3Z ",.02)
 ;;0BPKX3Z 
 ;;9002226.02101,"1804,0BPKX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPLX0Z ",.01)
 ;;0BPLX0Z 
 ;;9002226.02101,"1804,0BPLX0Z ",.02)
 ;;0BPLX0Z 
 ;;9002226.02101,"1804,0BPLX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPLX1Z ",.01)
 ;;0BPLX1Z 
 ;;9002226.02101,"1804,0BPLX1Z ",.02)
 ;;0BPLX1Z 
 ;;9002226.02101,"1804,0BPLX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPLX2Z ",.01)
 ;;0BPLX2Z 
 ;;9002226.02101,"1804,0BPLX2Z ",.02)
 ;;0BPLX2Z 
 ;;9002226.02101,"1804,0BPLX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPLX3Z ",.01)
 ;;0BPLX3Z 
 ;;9002226.02101,"1804,0BPLX3Z ",.02)
 ;;0BPLX3Z 
 ;;9002226.02101,"1804,0BPLX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPQX0Z ",.01)
 ;;0BPQX0Z 
 ;;9002226.02101,"1804,0BPQX0Z ",.02)
 ;;0BPQX0Z 
 ;;9002226.02101,"1804,0BPQX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPQX1Z ",.01)
 ;;0BPQX1Z 
 ;;9002226.02101,"1804,0BPQX1Z ",.02)
 ;;0BPQX1Z 
 ;;9002226.02101,"1804,0BPQX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPQX2Z ",.01)
 ;;0BPQX2Z 
 ;;9002226.02101,"1804,0BPQX2Z ",.02)
 ;;0BPQX2Z 
 ;;9002226.02101,"1804,0BPQX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPTX0Z ",.01)
 ;;0BPTX0Z 
 ;;9002226.02101,"1804,0BPTX0Z ",.02)
 ;;0BPTX0Z 
 ;;9002226.02101,"1804,0BPTX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPTX2Z ",.01)
 ;;0BPTX2Z 
 ;;9002226.02101,"1804,0BPTX2Z ",.02)
 ;;0BPTX2Z 
 ;;9002226.02101,"1804,0BPTX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BPTXMZ ",.01)
 ;;0BPTXMZ 
 ;;9002226.02101,"1804,0BPTXMZ ",.02)
 ;;0BPTXMZ 
 ;;9002226.02101,"1804,0BPTXMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0X0Z ",.01)
 ;;0BW0X0Z 
 ;;9002226.02101,"1804,0BW0X0Z ",.02)
 ;;0BW0X0Z 
 ;;9002226.02101,"1804,0BW0X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0X2Z ",.01)
 ;;0BW0X2Z 
 ;;9002226.02101,"1804,0BW0X2Z ",.02)
 ;;0BW0X2Z 
 ;;9002226.02101,"1804,0BW0X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0X3Z ",.01)
 ;;0BW0X3Z 
 ;;9002226.02101,"1804,0BW0X3Z ",.02)
 ;;0BW0X3Z 
 ;;9002226.02101,"1804,0BW0X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0X7Z ",.01)
 ;;0BW0X7Z 
 ;;9002226.02101,"1804,0BW0X7Z ",.02)
 ;;0BW0X7Z 
 ;;9002226.02101,"1804,0BW0X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0XCZ ",.01)
 ;;0BW0XCZ 
 ;;9002226.02101,"1804,0BW0XCZ ",.02)
 ;;0BW0XCZ 
 ;;9002226.02101,"1804,0BW0XCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0XDZ ",.01)
 ;;0BW0XDZ 
 ;;9002226.02101,"1804,0BW0XDZ ",.02)
 ;;0BW0XDZ 
 ;;9002226.02101,"1804,0BW0XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0XJZ ",.01)
 ;;0BW0XJZ 
 ;;9002226.02101,"1804,0BW0XJZ ",.02)
 ;;0BW0XJZ 
 ;;9002226.02101,"1804,0BW0XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW0XKZ ",.01)
 ;;0BW0XKZ 
 ;;9002226.02101,"1804,0BW0XKZ ",.02)
 ;;0BW0XKZ 
 ;;9002226.02101,"1804,0BW0XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1X0Z ",.01)
 ;;0BW1X0Z 
 ;;9002226.02101,"1804,0BW1X0Z ",.02)
 ;;0BW1X0Z 
 ;;9002226.02101,"1804,0BW1X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1X2Z ",.01)
 ;;0BW1X2Z 
 ;;9002226.02101,"1804,0BW1X2Z ",.02)
 ;;0BW1X2Z 
 ;;9002226.02101,"1804,0BW1X2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1X7Z ",.01)
 ;;0BW1X7Z 
 ;;9002226.02101,"1804,0BW1X7Z ",.02)
 ;;0BW1X7Z 
 ;;9002226.02101,"1804,0BW1X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1XCZ ",.01)
 ;;0BW1XCZ 
 ;;9002226.02101,"1804,0BW1XCZ ",.02)
 ;;0BW1XCZ 
 ;;9002226.02101,"1804,0BW1XCZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1XDZ ",.01)
 ;;0BW1XDZ 
 ;;9002226.02101,"1804,0BW1XDZ ",.02)
 ;;0BW1XDZ 
 ;;9002226.02101,"1804,0BW1XDZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1XFZ ",.01)
 ;;0BW1XFZ 
 ;;9002226.02101,"1804,0BW1XFZ ",.02)
 ;;0BW1XFZ 
 ;;9002226.02101,"1804,0BW1XFZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1XJZ ",.01)
 ;;0BW1XJZ 
 ;;9002226.02101,"1804,0BW1XJZ ",.02)
 ;;0BW1XJZ 
 ;;9002226.02101,"1804,0BW1XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BW1XKZ ",.01)
 ;;0BW1XKZ 
 ;;9002226.02101,"1804,0BW1XKZ ",.02)
 ;;0BW1XKZ 
 ;;9002226.02101,"1804,0BW1XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWKX0Z ",.01)
 ;;0BWKX0Z 
 ;;9002226.02101,"1804,0BWKX0Z ",.02)
 ;;0BWKX0Z 
 ;;9002226.02101,"1804,0BWKX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWKX2Z ",.01)
 ;;0BWKX2Z 
 ;;9002226.02101,"1804,0BWKX2Z ",.02)
 ;;0BWKX2Z 
 ;;9002226.02101,"1804,0BWKX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWKX3Z ",.01)
 ;;0BWKX3Z 
 ;;9002226.02101,"1804,0BWKX3Z ",.02)
 ;;0BWKX3Z 
 ;;9002226.02101,"1804,0BWKX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWLX0Z ",.01)
 ;;0BWLX0Z 
 ;;9002226.02101,"1804,0BWLX0Z ",.02)
 ;;0BWLX0Z 
 ;;9002226.02101,"1804,0BWLX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWLX2Z ",.01)
 ;;0BWLX2Z 
 ;;9002226.02101,"1804,0BWLX2Z ",.02)
 ;;0BWLX2Z 
 ;;9002226.02101,"1804,0BWLX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWLX3Z ",.01)
 ;;0BWLX3Z 
 ;;9002226.02101,"1804,0BWLX3Z ",.02)
 ;;0BWLX3Z 
 ;;9002226.02101,"1804,0BWLX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWQX0Z ",.01)
 ;;0BWQX0Z 
 ;;9002226.02101,"1804,0BWQX0Z ",.02)
 ;;0BWQX0Z 
 ;;9002226.02101,"1804,0BWQX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWQX2Z ",.01)
 ;;0BWQX2Z 
 ;;9002226.02101,"1804,0BWQX2Z ",.02)
 ;;0BWQX2Z 
 ;;9002226.02101,"1804,0BWQX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTX0Z ",.01)
 ;;0BWTX0Z 
 ;;9002226.02101,"1804,0BWTX0Z ",.02)
 ;;0BWTX0Z 
 ;;9002226.02101,"1804,0BWTX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTX2Z ",.01)
 ;;0BWTX2Z 
 ;;9002226.02101,"1804,0BWTX2Z ",.02)
 ;;0BWTX2Z 
 ;;9002226.02101,"1804,0BWTX2Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTX7Z ",.01)
 ;;0BWTX7Z 
 ;;9002226.02101,"1804,0BWTX7Z ",.02)
 ;;0BWTX7Z 
 ;;9002226.02101,"1804,0BWTX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTXJZ ",.01)
 ;;0BWTXJZ 
 ;;9002226.02101,"1804,0BWTXJZ ",.02)
 ;;0BWTXJZ 
 ;;9002226.02101,"1804,0BWTXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTXKZ ",.01)
 ;;0BWTXKZ 
 ;;9002226.02101,"1804,0BWTXKZ ",.02)
 ;;0BWTXKZ 
 ;;9002226.02101,"1804,0BWTXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0BWTXMZ ",.01)
 ;;0BWTXMZ 
 ;;9002226.02101,"1804,0BWTXMZ ",.02)
 ;;0BWTXMZ 
 ;;9002226.02101,"1804,0BWTXMZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2AX0Z ",.01)
 ;;0C2AX0Z 
 ;;9002226.02101,"1804,0C2AX0Z ",.02)
 ;;0C2AX0Z 
 ;;9002226.02101,"1804,0C2AX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2AXYZ ",.01)
 ;;0C2AXYZ 
 ;;9002226.02101,"1804,0C2AXYZ ",.02)
 ;;0C2AXYZ 
 ;;9002226.02101,"1804,0C2AXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2SX0Z ",.01)
 ;;0C2SX0Z 
 ;;9002226.02101,"1804,0C2SX0Z ",.02)
 ;;0C2SX0Z 
 ;;9002226.02101,"1804,0C2SX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2SXYZ ",.01)
 ;;0C2SXYZ 
 ;;9002226.02101,"1804,0C2SXYZ ",.02)
 ;;0C2SXYZ 
 ;;9002226.02101,"1804,0C2SXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2YX0Z ",.01)
 ;;0C2YX0Z 
 ;;9002226.02101,"1804,0C2YX0Z ",.02)
 ;;0C2YX0Z 
 ;;9002226.02101,"1804,0C2YX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0C2YXYZ ",.01)
 ;;0C2YXYZ 
 ;;9002226.02101,"1804,0C2YXYZ ",.02)
 ;;0C2YXYZ 
 ;;9002226.02101,"1804,0C2YXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C550ZZ ",.01)
 ;;0C550ZZ 
 ;;9002226.02101,"1804,0C550ZZ ",.02)
 ;;0C550ZZ 
 ;;9002226.02101,"1804,0C550ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C553ZZ ",.01)
 ;;0C553ZZ 
 ;;9002226.02101,"1804,0C553ZZ ",.02)
 ;;0C553ZZ 
 ;;9002226.02101,"1804,0C553ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C55XZZ ",.01)
 ;;0C55XZZ 
 ;;9002226.02101,"1804,0C55XZZ ",.02)
 ;;0C55XZZ 
 ;;9002226.02101,"1804,0C55XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C560ZZ ",.01)
 ;;0C560ZZ 
 ;;9002226.02101,"1804,0C560ZZ ",.02)
 ;;0C560ZZ 
 ;;9002226.02101,"1804,0C560ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C563ZZ ",.01)
 ;;0C563ZZ 
 ;;9002226.02101,"1804,0C563ZZ ",.02)
 ;;0C563ZZ 
 ;;9002226.02101,"1804,0C563ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C56XZZ ",.01)
 ;;0C56XZZ 
 ;;9002226.02101,"1804,0C56XZZ ",.02)
 ;;0C56XZZ 
 ;;9002226.02101,"1804,0C56XZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5W0Z0 ",.01)
 ;;0C5W0Z0 
 ;;9002226.02101,"1804,0C5W0Z0 ",.02)
 ;;0C5W0Z0 
 ;;9002226.02101,"1804,0C5W0Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5W0Z1 ",.01)
 ;;0C5W0Z1 
 ;;9002226.02101,"1804,0C5W0Z1 ",.02)
 ;;0C5W0Z1 
 ;;9002226.02101,"1804,0C5W0Z1 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5W0Z2 ",.01)
 ;;0C5W0Z2 
 ;;9002226.02101,"1804,0C5W0Z2 ",.02)
 ;;0C5W0Z2 
 ;;9002226.02101,"1804,0C5W0Z2 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5WXZ0 ",.01)
 ;;0C5WXZ0 
 ;;9002226.02101,"1804,0C5WXZ0 ",.02)
 ;;0C5WXZ0 
 ;;9002226.02101,"1804,0C5WXZ0 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5WXZ1 ",.01)
 ;;0C5WXZ1 
 ;;9002226.02101,"1804,0C5WXZ1 ",.02)
 ;;0C5WXZ1 
 ;;9002226.02101,"1804,0C5WXZ1 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5WXZ2 ",.01)
 ;;0C5WXZ2 
 ;;9002226.02101,"1804,0C5WXZ2 ",.02)
 ;;0C5WXZ2 
 ;;9002226.02101,"1804,0C5WXZ2 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5X0Z0 ",.01)
 ;;0C5X0Z0 
 ;;9002226.02101,"1804,0C5X0Z0 ",.02)
 ;;0C5X0Z0 
 ;;9002226.02101,"1804,0C5X0Z0 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5X0Z1 ",.01)
 ;;0C5X0Z1 
 ;;9002226.02101,"1804,0C5X0Z1 ",.02)
 ;;0C5X0Z1 
 ;;9002226.02101,"1804,0C5X0Z1 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5X0Z2 ",.01)
 ;;0C5X0Z2 
 ;;9002226.02101,"1804,0C5X0Z2 ",.02)
 ;;0C5X0Z2 
 ;;9002226.02101,"1804,0C5X0Z2 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5XXZ0 ",.01)
 ;;0C5XXZ0 
 ;;9002226.02101,"1804,0C5XXZ0 ",.02)
 ;;0C5XXZ0 
 ;;9002226.02101,"1804,0C5XXZ0 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5XXZ1 ",.01)
 ;;0C5XXZ1 
 ;;9002226.02101,"1804,0C5XXZ1 ",.02)
 ;;0C5XXZ1 
 ;;9002226.02101,"1804,0C5XXZ1 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C5XXZ2 ",.01)
 ;;0C5XXZ2 
 ;;9002226.02101,"1804,0C5XXZ2 ",.02)
 ;;0C5XXZ2 
 ;;9002226.02101,"1804,0C5XXZ2 ",.03)
 ;;31
 ;;9002226.02101,"1804,0C7M7ZZ ",.01)
 ;;0C7M7ZZ 
 ;;9002226.02101,"1804,0C7M7ZZ ",.02)
 ;;0C7M7ZZ 
 ;;9002226.02101,"1804,0C7M7ZZ ",.03)
 ;;31
