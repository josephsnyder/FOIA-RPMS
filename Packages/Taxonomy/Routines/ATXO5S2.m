ATXO5S2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 01, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1847,03170JD ",.01)
 ;;03170JD 
 ;;9002226.02101,"1847,03170JD ",.02)
 ;;03170JD 
 ;;9002226.02101,"1847,03170JD ",.03)
 ;;31
 ;;9002226.02101,"1847,03170JF ",.01)
 ;;03170JF 
 ;;9002226.02101,"1847,03170JF ",.02)
 ;;03170JF 
 ;;9002226.02101,"1847,03170JF ",.03)
 ;;31
 ;;9002226.02101,"1847,03170KD ",.01)
 ;;03170KD 
 ;;9002226.02101,"1847,03170KD ",.02)
 ;;03170KD 
 ;;9002226.02101,"1847,03170KD ",.03)
 ;;31
 ;;9002226.02101,"1847,03170KF ",.01)
 ;;03170KF 
 ;;9002226.02101,"1847,03170KF ",.02)
 ;;03170KF 
 ;;9002226.02101,"1847,03170KF ",.03)
 ;;31
 ;;9002226.02101,"1847,03170ZD ",.01)
 ;;03170ZD 
 ;;9002226.02101,"1847,03170ZD ",.02)
 ;;03170ZD 
 ;;9002226.02101,"1847,03170ZD ",.03)
 ;;31
 ;;9002226.02101,"1847,03170ZF ",.01)
 ;;03170ZF 
 ;;9002226.02101,"1847,03170ZF ",.02)
 ;;03170ZF 
 ;;9002226.02101,"1847,03170ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,031809D ",.01)
 ;;031809D 
 ;;9002226.02101,"1847,031809D ",.02)
 ;;031809D 
 ;;9002226.02101,"1847,031809D ",.03)
 ;;31
 ;;9002226.02101,"1847,031809F ",.01)
 ;;031809F 
 ;;9002226.02101,"1847,031809F ",.02)
 ;;031809F 
 ;;9002226.02101,"1847,031809F ",.03)
 ;;31
 ;;9002226.02101,"1847,03180AD ",.01)
 ;;03180AD 
 ;;9002226.02101,"1847,03180AD ",.02)
 ;;03180AD 
 ;;9002226.02101,"1847,03180AD ",.03)
 ;;31
 ;;9002226.02101,"1847,03180AF ",.01)
 ;;03180AF 
 ;;9002226.02101,"1847,03180AF ",.02)
 ;;03180AF 
 ;;9002226.02101,"1847,03180AF ",.03)
 ;;31
 ;;9002226.02101,"1847,03180JD ",.01)
 ;;03180JD 
 ;;9002226.02101,"1847,03180JD ",.02)
 ;;03180JD 
 ;;9002226.02101,"1847,03180JD ",.03)
 ;;31
 ;;9002226.02101,"1847,03180JF ",.01)
 ;;03180JF 
 ;;9002226.02101,"1847,03180JF ",.02)
 ;;03180JF 
 ;;9002226.02101,"1847,03180JF ",.03)
 ;;31
 ;;9002226.02101,"1847,03180KD ",.01)
 ;;03180KD 
 ;;9002226.02101,"1847,03180KD ",.02)
 ;;03180KD 
 ;;9002226.02101,"1847,03180KD ",.03)
 ;;31
 ;;9002226.02101,"1847,03180KF ",.01)
 ;;03180KF 
 ;;9002226.02101,"1847,03180KF ",.02)
 ;;03180KF 
 ;;9002226.02101,"1847,03180KF ",.03)
 ;;31
 ;;9002226.02101,"1847,03180ZD ",.01)
 ;;03180ZD 
 ;;9002226.02101,"1847,03180ZD ",.02)
 ;;03180ZD 
 ;;9002226.02101,"1847,03180ZD ",.03)
 ;;31
 ;;9002226.02101,"1847,03180ZF ",.01)
 ;;03180ZF 
 ;;9002226.02101,"1847,03180ZF ",.02)
 ;;03180ZF 
 ;;9002226.02101,"1847,03180ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,031909F ",.01)
 ;;031909F 
 ;;9002226.02101,"1847,031909F ",.02)
 ;;031909F 
 ;;9002226.02101,"1847,031909F ",.03)
 ;;31
 ;;9002226.02101,"1847,03190AF ",.01)
 ;;03190AF 
 ;;9002226.02101,"1847,03190AF ",.02)
 ;;03190AF 
 ;;9002226.02101,"1847,03190AF ",.03)
 ;;31
 ;;9002226.02101,"1847,03190JF ",.01)
 ;;03190JF 
 ;;9002226.02101,"1847,03190JF ",.02)
 ;;03190JF 
 ;;9002226.02101,"1847,03190JF ",.03)
 ;;31
 ;;9002226.02101,"1847,03190KF ",.01)
 ;;03190KF 
 ;;9002226.02101,"1847,03190KF ",.02)
 ;;03190KF 
 ;;9002226.02101,"1847,03190KF ",.03)
 ;;31
 ;;9002226.02101,"1847,03190ZF ",.01)
 ;;03190ZF 
 ;;9002226.02101,"1847,03190ZF ",.02)
 ;;03190ZF 
 ;;9002226.02101,"1847,03190ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,031A09F ",.01)
 ;;031A09F 
 ;;9002226.02101,"1847,031A09F ",.02)
 ;;031A09F 
 ;;9002226.02101,"1847,031A09F ",.03)
 ;;31
 ;;9002226.02101,"1847,031A0AF ",.01)
 ;;031A0AF 
 ;;9002226.02101,"1847,031A0AF ",.02)
 ;;031A0AF 
 ;;9002226.02101,"1847,031A0AF ",.03)
 ;;31
 ;;9002226.02101,"1847,031A0JF ",.01)
 ;;031A0JF 
 ;;9002226.02101,"1847,031A0JF ",.02)
 ;;031A0JF 
 ;;9002226.02101,"1847,031A0JF ",.03)
 ;;31
 ;;9002226.02101,"1847,031A0KF ",.01)
 ;;031A0KF 
 ;;9002226.02101,"1847,031A0KF ",.02)
 ;;031A0KF 
 ;;9002226.02101,"1847,031A0KF ",.03)
 ;;31
 ;;9002226.02101,"1847,031A0ZF ",.01)
 ;;031A0ZF 
 ;;9002226.02101,"1847,031A0ZF ",.02)
 ;;031A0ZF 
 ;;9002226.02101,"1847,031A0ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,031B09F ",.01)
 ;;031B09F 
 ;;9002226.02101,"1847,031B09F ",.02)
 ;;031B09F 
 ;;9002226.02101,"1847,031B09F ",.03)
 ;;31
 ;;9002226.02101,"1847,031B0AF ",.01)
 ;;031B0AF 
 ;;9002226.02101,"1847,031B0AF ",.02)
 ;;031B0AF 
 ;;9002226.02101,"1847,031B0AF ",.03)
 ;;31
 ;;9002226.02101,"1847,031B0JF ",.01)
 ;;031B0JF 
 ;;9002226.02101,"1847,031B0JF ",.02)
 ;;031B0JF 
 ;;9002226.02101,"1847,031B0JF ",.03)
 ;;31
 ;;9002226.02101,"1847,031B0KF ",.01)
 ;;031B0KF 
 ;;9002226.02101,"1847,031B0KF ",.02)
 ;;031B0KF 
 ;;9002226.02101,"1847,031B0KF ",.03)
 ;;31
 ;;9002226.02101,"1847,031B0ZF ",.01)
 ;;031B0ZF 
 ;;9002226.02101,"1847,031B0ZF ",.02)
 ;;031B0ZF 
 ;;9002226.02101,"1847,031B0ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,031C09F ",.01)
 ;;031C09F 
 ;;9002226.02101,"1847,031C09F ",.02)
 ;;031C09F 
 ;;9002226.02101,"1847,031C09F ",.03)
 ;;31
 ;;9002226.02101,"1847,031C0AF ",.01)
 ;;031C0AF 
 ;;9002226.02101,"1847,031C0AF ",.02)
 ;;031C0AF 
 ;;9002226.02101,"1847,031C0AF ",.03)
 ;;31
 ;;9002226.02101,"1847,031C0JF ",.01)
 ;;031C0JF 
 ;;9002226.02101,"1847,031C0JF ",.02)
 ;;031C0JF 
 ;;9002226.02101,"1847,031C0JF ",.03)
 ;;31
 ;;9002226.02101,"1847,031C0KF ",.01)
 ;;031C0KF 
 ;;9002226.02101,"1847,031C0KF ",.02)
 ;;031C0KF 
 ;;9002226.02101,"1847,031C0KF ",.03)
 ;;31
 ;;9002226.02101,"1847,031C0ZF ",.01)
 ;;031C0ZF 
 ;;9002226.02101,"1847,031C0ZF ",.02)
 ;;031C0ZF 
 ;;9002226.02101,"1847,031C0ZF ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK0CZ ",.01)
 ;;03LK0CZ 
 ;;9002226.02101,"1847,03LK0CZ ",.02)
 ;;03LK0CZ 
 ;;9002226.02101,"1847,03LK0CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK0ZZ ",.01)
 ;;03LK0ZZ 
 ;;9002226.02101,"1847,03LK0ZZ ",.02)
 ;;03LK0ZZ 
 ;;9002226.02101,"1847,03LK0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK3CZ ",.01)
 ;;03LK3CZ 
 ;;9002226.02101,"1847,03LK3CZ ",.02)
 ;;03LK3CZ 
 ;;9002226.02101,"1847,03LK3CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK3ZZ ",.01)
 ;;03LK3ZZ 
 ;;9002226.02101,"1847,03LK3ZZ ",.02)
 ;;03LK3ZZ 
 ;;9002226.02101,"1847,03LK3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK4CZ ",.01)
 ;;03LK4CZ 
 ;;9002226.02101,"1847,03LK4CZ ",.02)
 ;;03LK4CZ 
 ;;9002226.02101,"1847,03LK4CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LK4ZZ ",.01)
 ;;03LK4ZZ 
 ;;9002226.02101,"1847,03LK4ZZ ",.02)
 ;;03LK4ZZ 
 ;;9002226.02101,"1847,03LK4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL0CZ ",.01)
 ;;03LL0CZ 
 ;;9002226.02101,"1847,03LL0CZ ",.02)
 ;;03LL0CZ 
 ;;9002226.02101,"1847,03LL0CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL0ZZ ",.01)
 ;;03LL0ZZ 
 ;;9002226.02101,"1847,03LL0ZZ ",.02)
 ;;03LL0ZZ 
 ;;9002226.02101,"1847,03LL0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL3CZ ",.01)
 ;;03LL3CZ 
 ;;9002226.02101,"1847,03LL3CZ ",.02)
 ;;03LL3CZ 
 ;;9002226.02101,"1847,03LL3CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL3ZZ ",.01)
 ;;03LL3ZZ 
 ;;9002226.02101,"1847,03LL3ZZ ",.02)
 ;;03LL3ZZ 
 ;;9002226.02101,"1847,03LL3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL4CZ ",.01)
 ;;03LL4CZ 
 ;;9002226.02101,"1847,03LL4CZ ",.02)
 ;;03LL4CZ 
 ;;9002226.02101,"1847,03LL4CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03LL4ZZ ",.01)
 ;;03LL4ZZ 
 ;;9002226.02101,"1847,03LL4ZZ ",.02)
 ;;03LL4ZZ 
 ;;9002226.02101,"1847,03LL4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY07Z ",.01)
 ;;03PY07Z 
 ;;9002226.02101,"1847,03PY07Z ",.02)
 ;;03PY07Z 
 ;;9002226.02101,"1847,03PY07Z ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY0JZ ",.01)
 ;;03PY0JZ 
 ;;9002226.02101,"1847,03PY0JZ ",.02)
 ;;03PY0JZ 
 ;;9002226.02101,"1847,03PY0JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY0KZ ",.01)
 ;;03PY0KZ 
 ;;9002226.02101,"1847,03PY0KZ ",.02)
 ;;03PY0KZ 
 ;;9002226.02101,"1847,03PY0KZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY37Z ",.01)
 ;;03PY37Z 
 ;;9002226.02101,"1847,03PY37Z ",.02)
 ;;03PY37Z 
 ;;9002226.02101,"1847,03PY37Z ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY3JZ ",.01)
 ;;03PY3JZ 
 ;;9002226.02101,"1847,03PY3JZ ",.02)
 ;;03PY3JZ 
 ;;9002226.02101,"1847,03PY3JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY3KZ ",.01)
 ;;03PY3KZ 
 ;;9002226.02101,"1847,03PY3KZ ",.02)
 ;;03PY3KZ 
 ;;9002226.02101,"1847,03PY3KZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY47Z ",.01)
 ;;03PY47Z 
 ;;9002226.02101,"1847,03PY47Z ",.02)
 ;;03PY47Z 
 ;;9002226.02101,"1847,03PY47Z ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY4JZ ",.01)
 ;;03PY4JZ 
 ;;9002226.02101,"1847,03PY4JZ ",.02)
 ;;03PY4JZ 
 ;;9002226.02101,"1847,03PY4JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03PY4KZ ",.01)
 ;;03PY4KZ 
 ;;9002226.02101,"1847,03PY4KZ ",.02)
 ;;03PY4KZ 
 ;;9002226.02101,"1847,03PY4KZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VK0CZ ",.01)
 ;;03VK0CZ 
 ;;9002226.02101,"1847,03VK0CZ ",.02)
 ;;03VK0CZ 
 ;;9002226.02101,"1847,03VK0CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VK3CZ ",.01)
 ;;03VK3CZ 
 ;;9002226.02101,"1847,03VK3CZ ",.02)
 ;;03VK3CZ 
 ;;9002226.02101,"1847,03VK3CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VK4CZ ",.01)
 ;;03VK4CZ 
 ;;9002226.02101,"1847,03VK4CZ ",.02)
 ;;03VK4CZ 
 ;;9002226.02101,"1847,03VK4CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VL0CZ ",.01)
 ;;03VL0CZ 
 ;;9002226.02101,"1847,03VL0CZ ",.02)
 ;;03VL0CZ 
 ;;9002226.02101,"1847,03VL0CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VL3CZ ",.01)
 ;;03VL3CZ 
 ;;9002226.02101,"1847,03VL3CZ ",.02)
 ;;03VL3CZ 
 ;;9002226.02101,"1847,03VL3CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03VL4CZ ",.01)
 ;;03VL4CZ 
 ;;9002226.02101,"1847,03VL4CZ ",.02)
 ;;03VL4CZ 
 ;;9002226.02101,"1847,03VL4CZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03WY0JZ ",.01)
 ;;03WY0JZ 
 ;;9002226.02101,"1847,03WY0JZ ",.02)
 ;;03WY0JZ 
 ;;9002226.02101,"1847,03WY0JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03WY3JZ ",.01)
 ;;03WY3JZ 
 ;;9002226.02101,"1847,03WY3JZ ",.02)
 ;;03WY3JZ 
 ;;9002226.02101,"1847,03WY3JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03WY4JZ ",.01)
 ;;03WY4JZ 
 ;;9002226.02101,"1847,03WY4JZ ",.02)
 ;;03WY4JZ 
 ;;9002226.02101,"1847,03WY4JZ ",.03)
 ;;31
 ;;9002226.02101,"1847,03WYXJZ ",.01)
 ;;03WYXJZ 
 ;;9002226.02101,"1847,03WYXJZ ",.02)
 ;;03WYXJZ 
 ;;9002226.02101,"1847,03WYXJZ ",.03)
 ;;31
 ;;9002226.02101,"1847,05HY33Z ",.01)
 ;;05HY33Z 
 ;;9002226.02101,"1847,05HY33Z ",.02)
 ;;05HY33Z 
 ;;9002226.02101,"1847,05HY33Z ",.03)
 ;;31
 ;;9002226.02101,"1847,06HY33Z ",.01)
 ;;06HY33Z 
 ;;9002226.02101,"1847,06HY33Z ",.02)
 ;;06HY33Z 
 ;;9002226.02101,"1847,06HY33Z ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB00ZZ ",.01)
 ;;0TB00ZZ 
 ;;9002226.02101,"1847,0TB00ZZ ",.02)
 ;;0TB00ZZ 
 ;;9002226.02101,"1847,0TB00ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB03ZZ ",.01)
 ;;0TB03ZZ 
 ;;9002226.02101,"1847,0TB03ZZ ",.02)
 ;;0TB03ZZ 
 ;;9002226.02101,"1847,0TB03ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB04ZZ ",.01)
 ;;0TB04ZZ 
 ;;9002226.02101,"1847,0TB04ZZ ",.02)
 ;;0TB04ZZ 
 ;;9002226.02101,"1847,0TB04ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB07ZZ ",.01)
 ;;0TB07ZZ 
 ;;9002226.02101,"1847,0TB07ZZ ",.02)
 ;;0TB07ZZ 
 ;;9002226.02101,"1847,0TB07ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB08ZZ ",.01)
 ;;0TB08ZZ 
 ;;9002226.02101,"1847,0TB08ZZ ",.02)
 ;;0TB08ZZ 
 ;;9002226.02101,"1847,0TB08ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB10ZZ ",.01)
 ;;0TB10ZZ 
 ;;9002226.02101,"1847,0TB10ZZ ",.02)
 ;;0TB10ZZ 
 ;;9002226.02101,"1847,0TB10ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB13ZZ ",.01)
 ;;0TB13ZZ 
 ;;9002226.02101,"1847,0TB13ZZ ",.02)
 ;;0TB13ZZ 
 ;;9002226.02101,"1847,0TB13ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB14ZZ ",.01)
 ;;0TB14ZZ 
 ;;9002226.02101,"1847,0TB14ZZ ",.02)
 ;;0TB14ZZ 
 ;;9002226.02101,"1847,0TB14ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB17ZZ ",.01)
 ;;0TB17ZZ 
 ;;9002226.02101,"1847,0TB17ZZ ",.02)
 ;;0TB17ZZ 
 ;;9002226.02101,"1847,0TB17ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB18ZZ ",.01)
 ;;0TB18ZZ 
 ;;9002226.02101,"1847,0TB18ZZ ",.02)
 ;;0TB18ZZ 
 ;;9002226.02101,"1847,0TB18ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB30ZZ ",.01)
 ;;0TB30ZZ 
 ;;9002226.02101,"1847,0TB30ZZ ",.02)
 ;;0TB30ZZ 
 ;;9002226.02101,"1847,0TB30ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB33ZZ ",.01)
 ;;0TB33ZZ 
 ;;9002226.02101,"1847,0TB33ZZ ",.02)
 ;;0TB33ZZ 
 ;;9002226.02101,"1847,0TB33ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB34ZZ ",.01)
 ;;0TB34ZZ 
 ;;9002226.02101,"1847,0TB34ZZ ",.02)
 ;;0TB34ZZ 
 ;;9002226.02101,"1847,0TB34ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB37ZZ ",.01)
 ;;0TB37ZZ 
 ;;9002226.02101,"1847,0TB37ZZ ",.02)
 ;;0TB37ZZ 
 ;;9002226.02101,"1847,0TB37ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB38ZZ ",.01)
 ;;0TB38ZZ 
 ;;9002226.02101,"1847,0TB38ZZ ",.02)
 ;;0TB38ZZ 
 ;;9002226.02101,"1847,0TB38ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB40ZZ ",.01)
 ;;0TB40ZZ 
 ;;9002226.02101,"1847,0TB40ZZ ",.02)
 ;;0TB40ZZ 
 ;;9002226.02101,"1847,0TB40ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB43ZZ ",.01)
 ;;0TB43ZZ 
 ;;9002226.02101,"1847,0TB43ZZ ",.02)
 ;;0TB43ZZ 
 ;;9002226.02101,"1847,0TB43ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB44ZZ ",.01)
 ;;0TB44ZZ 
 ;;9002226.02101,"1847,0TB44ZZ ",.02)
 ;;0TB44ZZ 
 ;;9002226.02101,"1847,0TB44ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB47ZZ ",.01)
 ;;0TB47ZZ 
 ;;9002226.02101,"1847,0TB47ZZ ",.02)
 ;;0TB47ZZ 
 ;;9002226.02101,"1847,0TB47ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TB48ZZ ",.01)
 ;;0TB48ZZ 
 ;;9002226.02101,"1847,0TB48ZZ ",.02)
 ;;0TB48ZZ 
 ;;9002226.02101,"1847,0TB48ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TS00ZZ ",.01)
 ;;0TS00ZZ 
 ;;9002226.02101,"1847,0TS00ZZ ",.02)
 ;;0TS00ZZ 
 ;;9002226.02101,"1847,0TS00ZZ ",.03)
 ;;31
 ;;9002226.02101,"1847,0TS10ZZ ",.01)
 ;;0TS10ZZ 
 ;;9002226.02101,"1847,0TS10ZZ ",.02)
 ;;0TS10ZZ 
