ATXXB258 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,F14Z0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z0LZ ",.01)
 ;;F14Z0LZ 
 ;;9002226.02101,"1804,F14Z0LZ ",.02)
 ;;F14Z0LZ 
 ;;9002226.02101,"1804,F14Z0LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z0PZ ",.01)
 ;;F14Z0PZ 
 ;;9002226.02101,"1804,F14Z0PZ ",.02)
 ;;F14Z0PZ 
 ;;9002226.02101,"1804,F14Z0PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z0YZ ",.01)
 ;;F14Z0YZ 
 ;;9002226.02101,"1804,F14Z0YZ ",.02)
 ;;F14Z0YZ 
 ;;9002226.02101,"1804,F14Z0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z0ZZ ",.01)
 ;;F14Z0ZZ 
 ;;9002226.02101,"1804,F14Z0ZZ ",.02)
 ;;F14Z0ZZ 
 ;;9002226.02101,"1804,F14Z0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z15Z ",.01)
 ;;F14Z15Z 
 ;;9002226.02101,"1804,F14Z15Z ",.02)
 ;;F14Z15Z 
 ;;9002226.02101,"1804,F14Z15Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z1ZZ ",.01)
 ;;F14Z1ZZ 
 ;;9002226.02101,"1804,F14Z1ZZ ",.02)
 ;;F14Z1ZZ 
 ;;9002226.02101,"1804,F14Z1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z21Z ",.01)
 ;;F14Z21Z 
 ;;9002226.02101,"1804,F14Z21Z ",.02)
 ;;F14Z21Z 
 ;;9002226.02101,"1804,F14Z21Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z22Z ",.01)
 ;;F14Z22Z 
 ;;9002226.02101,"1804,F14Z22Z ",.02)
 ;;F14Z22Z 
 ;;9002226.02101,"1804,F14Z22Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z23Z ",.01)
 ;;F14Z23Z 
 ;;9002226.02101,"1804,F14Z23Z ",.02)
 ;;F14Z23Z 
 ;;9002226.02101,"1804,F14Z23Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z24Z ",.01)
 ;;F14Z24Z 
 ;;9002226.02101,"1804,F14Z24Z ",.02)
 ;;F14Z24Z 
 ;;9002226.02101,"1804,F14Z24Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z25Z ",.01)
 ;;F14Z25Z 
 ;;9002226.02101,"1804,F14Z25Z ",.02)
 ;;F14Z25Z 
 ;;9002226.02101,"1804,F14Z25Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z2KZ ",.01)
 ;;F14Z2KZ 
 ;;9002226.02101,"1804,F14Z2KZ ",.02)
 ;;F14Z2KZ 
 ;;9002226.02101,"1804,F14Z2KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z2LZ ",.01)
 ;;F14Z2LZ 
 ;;9002226.02101,"1804,F14Z2LZ ",.02)
 ;;F14Z2LZ 
 ;;9002226.02101,"1804,F14Z2LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z2PZ ",.01)
 ;;F14Z2PZ 
 ;;9002226.02101,"1804,F14Z2PZ ",.02)
 ;;F14Z2PZ 
 ;;9002226.02101,"1804,F14Z2PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z2ZZ ",.01)
 ;;F14Z2ZZ 
 ;;9002226.02101,"1804,F14Z2ZZ ",.02)
 ;;F14Z2ZZ 
 ;;9002226.02101,"1804,F14Z2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z31Z ",.01)
 ;;F14Z31Z 
 ;;9002226.02101,"1804,F14Z31Z ",.02)
 ;;F14Z31Z 
 ;;9002226.02101,"1804,F14Z31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z32Z ",.01)
 ;;F14Z32Z 
 ;;9002226.02101,"1804,F14Z32Z ",.02)
 ;;F14Z32Z 
 ;;9002226.02101,"1804,F14Z32Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z33Z ",.01)
 ;;F14Z33Z 
 ;;9002226.02101,"1804,F14Z33Z ",.02)
 ;;F14Z33Z 
 ;;9002226.02101,"1804,F14Z33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z34Z ",.01)
 ;;F14Z34Z 
 ;;9002226.02101,"1804,F14Z34Z ",.02)
 ;;F14Z34Z 
 ;;9002226.02101,"1804,F14Z34Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z35Z ",.01)
 ;;F14Z35Z 
 ;;9002226.02101,"1804,F14Z35Z ",.02)
 ;;F14Z35Z 
 ;;9002226.02101,"1804,F14Z35Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z3KZ ",.01)
 ;;F14Z3KZ 
 ;;9002226.02101,"1804,F14Z3KZ ",.02)
 ;;F14Z3KZ 
 ;;9002226.02101,"1804,F14Z3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z3LZ ",.01)
 ;;F14Z3LZ 
 ;;9002226.02101,"1804,F14Z3LZ ",.02)
 ;;F14Z3LZ 
 ;;9002226.02101,"1804,F14Z3LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z3PZ ",.01)
 ;;F14Z3PZ 
 ;;9002226.02101,"1804,F14Z3PZ ",.02)
 ;;F14Z3PZ 
 ;;9002226.02101,"1804,F14Z3PZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z3ZZ ",.01)
 ;;F14Z3ZZ 
 ;;9002226.02101,"1804,F14Z3ZZ ",.02)
 ;;F14Z3ZZ 
 ;;9002226.02101,"1804,F14Z3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z41Z ",.01)
 ;;F14Z41Z 
 ;;9002226.02101,"1804,F14Z41Z ",.02)
 ;;F14Z41Z 
 ;;9002226.02101,"1804,F14Z41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z42Z ",.01)
 ;;F14Z42Z 
 ;;9002226.02101,"1804,F14Z42Z ",.02)
 ;;F14Z42Z 
 ;;9002226.02101,"1804,F14Z42Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z43Z ",.01)
 ;;F14Z43Z 
 ;;9002226.02101,"1804,F14Z43Z ",.02)
 ;;F14Z43Z 
 ;;9002226.02101,"1804,F14Z43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z44Z ",.01)
 ;;F14Z44Z 
 ;;9002226.02101,"1804,F14Z44Z ",.02)
 ;;F14Z44Z 
 ;;9002226.02101,"1804,F14Z44Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z4KZ ",.01)
 ;;F14Z4KZ 
 ;;9002226.02101,"1804,F14Z4KZ ",.02)
 ;;F14Z4KZ 
 ;;9002226.02101,"1804,F14Z4KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z4LZ ",.01)
 ;;F14Z4LZ 
 ;;9002226.02101,"1804,F14Z4LZ ",.02)
 ;;F14Z4LZ 
 ;;9002226.02101,"1804,F14Z4LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z4ZZ ",.01)
 ;;F14Z4ZZ 
 ;;9002226.02101,"1804,F14Z4ZZ ",.02)
 ;;F14Z4ZZ 
 ;;9002226.02101,"1804,F14Z4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z51Z ",.01)
 ;;F14Z51Z 
 ;;9002226.02101,"1804,F14Z51Z ",.02)
 ;;F14Z51Z 
 ;;9002226.02101,"1804,F14Z51Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z52Z ",.01)
 ;;F14Z52Z 
 ;;9002226.02101,"1804,F14Z52Z ",.02)
 ;;F14Z52Z 
 ;;9002226.02101,"1804,F14Z52Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z53Z ",.01)
 ;;F14Z53Z 
 ;;9002226.02101,"1804,F14Z53Z ",.02)
 ;;F14Z53Z 
 ;;9002226.02101,"1804,F14Z53Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z54Z ",.01)
 ;;F14Z54Z 
 ;;9002226.02101,"1804,F14Z54Z ",.02)
 ;;F14Z54Z 
 ;;9002226.02101,"1804,F14Z54Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z55Z ",.01)
 ;;F14Z55Z 
 ;;9002226.02101,"1804,F14Z55Z ",.02)
 ;;F14Z55Z 
 ;;9002226.02101,"1804,F14Z55Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z5KZ ",.01)
 ;;F14Z5KZ 
 ;;9002226.02101,"1804,F14Z5KZ ",.02)
 ;;F14Z5KZ 
 ;;9002226.02101,"1804,F14Z5KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z5LZ ",.01)
 ;;F14Z5LZ 
 ;;9002226.02101,"1804,F14Z5LZ ",.02)
 ;;F14Z5LZ 
 ;;9002226.02101,"1804,F14Z5LZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z5ZZ ",.01)
 ;;F14Z5ZZ 
 ;;9002226.02101,"1804,F14Z5ZZ ",.02)
 ;;F14Z5ZZ 
 ;;9002226.02101,"1804,F14Z5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z65Z ",.01)
 ;;F14Z65Z 
 ;;9002226.02101,"1804,F14Z65Z ",.02)
 ;;F14Z65Z 
 ;;9002226.02101,"1804,F14Z65Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z6ZZ ",.01)
 ;;F14Z6ZZ 
 ;;9002226.02101,"1804,F14Z6ZZ ",.02)
 ;;F14Z6ZZ 
 ;;9002226.02101,"1804,F14Z6ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z70Z ",.01)
 ;;F14Z70Z 
 ;;9002226.02101,"1804,F14Z70Z ",.02)
 ;;F14Z70Z 
 ;;9002226.02101,"1804,F14Z70Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z7ZZ ",.01)
 ;;F14Z7ZZ 
 ;;9002226.02101,"1804,F14Z7ZZ ",.02)
 ;;F14Z7ZZ 
 ;;9002226.02101,"1804,F14Z7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z85Z ",.01)
 ;;F14Z85Z 
 ;;9002226.02101,"1804,F14Z85Z ",.02)
 ;;F14Z85Z 
 ;;9002226.02101,"1804,F14Z85Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F14Z8ZZ ",.01)
 ;;F14Z8ZZ 
 ;;9002226.02101,"1804,F14Z8ZZ ",.02)
 ;;F14Z8ZZ 
 ;;9002226.02101,"1804,F14Z8ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z08Z ",.01)
 ;;F15Z08Z 
 ;;9002226.02101,"1804,F15Z08Z ",.02)
 ;;F15Z08Z 
 ;;9002226.02101,"1804,F15Z08Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z0ZZ ",.01)
 ;;F15Z0ZZ 
 ;;9002226.02101,"1804,F15Z0ZZ ",.02)
 ;;F15Z0ZZ 
 ;;9002226.02101,"1804,F15Z0ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z18Z ",.01)
 ;;F15Z18Z 
 ;;9002226.02101,"1804,F15Z18Z ",.02)
 ;;F15Z18Z 
 ;;9002226.02101,"1804,F15Z18Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z1ZZ ",.01)
 ;;F15Z1ZZ 
 ;;9002226.02101,"1804,F15Z1ZZ ",.02)
 ;;F15Z1ZZ 
 ;;9002226.02101,"1804,F15Z1ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z28Z ",.01)
 ;;F15Z28Z 
 ;;9002226.02101,"1804,F15Z28Z ",.02)
 ;;F15Z28Z 
 ;;9002226.02101,"1804,F15Z28Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z2ZZ ",.01)
 ;;F15Z2ZZ 
 ;;9002226.02101,"1804,F15Z2ZZ ",.02)
 ;;F15Z2ZZ 
 ;;9002226.02101,"1804,F15Z2ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z38Z ",.01)
 ;;F15Z38Z 
 ;;9002226.02101,"1804,F15Z38Z ",.02)
 ;;F15Z38Z 
 ;;9002226.02101,"1804,F15Z38Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z3ZZ ",.01)
 ;;F15Z3ZZ 
 ;;9002226.02101,"1804,F15Z3ZZ ",.02)
 ;;F15Z3ZZ 
 ;;9002226.02101,"1804,F15Z3ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z48Z ",.01)
 ;;F15Z48Z 
 ;;9002226.02101,"1804,F15Z48Z ",.02)
 ;;F15Z48Z 
 ;;9002226.02101,"1804,F15Z48Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z4ZZ ",.01)
 ;;F15Z4ZZ 
 ;;9002226.02101,"1804,F15Z4ZZ ",.02)
 ;;F15Z4ZZ 
 ;;9002226.02101,"1804,F15Z4ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z58Z ",.01)
 ;;F15Z58Z 
 ;;9002226.02101,"1804,F15Z58Z ",.02)
 ;;F15Z58Z 
 ;;9002226.02101,"1804,F15Z58Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z5ZZ ",.01)
 ;;F15Z5ZZ 
 ;;9002226.02101,"1804,F15Z5ZZ ",.02)
 ;;F15Z5ZZ 
 ;;9002226.02101,"1804,F15Z5ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z68Z ",.01)
 ;;F15Z68Z 
 ;;9002226.02101,"1804,F15Z68Z ",.02)
 ;;F15Z68Z 
 ;;9002226.02101,"1804,F15Z68Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z6ZZ ",.01)
 ;;F15Z6ZZ 
 ;;9002226.02101,"1804,F15Z6ZZ ",.02)
 ;;F15Z6ZZ 
 ;;9002226.02101,"1804,F15Z6ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z75Z ",.01)
 ;;F15Z75Z 
 ;;9002226.02101,"1804,F15Z75Z ",.02)
 ;;F15Z75Z 
 ;;9002226.02101,"1804,F15Z75Z ",.03)
 ;;31
 ;;9002226.02101,"1804,F15Z7ZZ ",.01)
 ;;F15Z7ZZ 
 ;;9002226.02101,"1804,F15Z7ZZ ",.02)
 ;;F15Z7ZZ 
 ;;9002226.02101,"1804,F15Z7ZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ10ZZZ ",.01)
 ;;GZ10ZZZ 
 ;;9002226.02101,"1804,GZ10ZZZ ",.02)
 ;;GZ10ZZZ 
 ;;9002226.02101,"1804,GZ10ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ11ZZZ ",.01)
 ;;GZ11ZZZ 
 ;;9002226.02101,"1804,GZ11ZZZ ",.02)
 ;;GZ11ZZZ 
 ;;9002226.02101,"1804,GZ11ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ12ZZZ ",.01)
 ;;GZ12ZZZ 
 ;;9002226.02101,"1804,GZ12ZZZ ",.02)
 ;;GZ12ZZZ 
 ;;9002226.02101,"1804,GZ12ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ13ZZZ ",.01)
 ;;GZ13ZZZ 
 ;;9002226.02101,"1804,GZ13ZZZ ",.02)
 ;;GZ13ZZZ 
 ;;9002226.02101,"1804,GZ13ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ14ZZZ ",.01)
 ;;GZ14ZZZ 
 ;;9002226.02101,"1804,GZ14ZZZ ",.02)
 ;;GZ14ZZZ 
 ;;9002226.02101,"1804,GZ14ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ2ZZZZ ",.01)
 ;;GZ2ZZZZ 
 ;;9002226.02101,"1804,GZ2ZZZZ ",.02)
 ;;GZ2ZZZZ 
 ;;9002226.02101,"1804,GZ2ZZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ3ZZZZ ",.01)
 ;;GZ3ZZZZ 
 ;;9002226.02101,"1804,GZ3ZZZZ ",.02)
 ;;GZ3ZZZZ 
 ;;9002226.02101,"1804,GZ3ZZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ50ZZZ ",.01)
 ;;GZ50ZZZ 
 ;;9002226.02101,"1804,GZ50ZZZ ",.02)
 ;;GZ50ZZZ 
 ;;9002226.02101,"1804,GZ50ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ51ZZZ ",.01)
 ;;GZ51ZZZ 
 ;;9002226.02101,"1804,GZ51ZZZ ",.02)
 ;;GZ51ZZZ 
 ;;9002226.02101,"1804,GZ51ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ52ZZZ ",.01)
 ;;GZ52ZZZ 
 ;;9002226.02101,"1804,GZ52ZZZ ",.02)
 ;;GZ52ZZZ 
 ;;9002226.02101,"1804,GZ52ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ53ZZZ ",.01)
 ;;GZ53ZZZ 
 ;;9002226.02101,"1804,GZ53ZZZ ",.02)
 ;;GZ53ZZZ 
 ;;9002226.02101,"1804,GZ53ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ54ZZZ ",.01)
 ;;GZ54ZZZ 
 ;;9002226.02101,"1804,GZ54ZZZ ",.02)
 ;;GZ54ZZZ 
 ;;9002226.02101,"1804,GZ54ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ55ZZZ ",.01)
 ;;GZ55ZZZ 
 ;;9002226.02101,"1804,GZ55ZZZ ",.02)
 ;;GZ55ZZZ 
 ;;9002226.02101,"1804,GZ55ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ56ZZZ ",.01)
 ;;GZ56ZZZ 
 ;;9002226.02101,"1804,GZ56ZZZ ",.02)
 ;;GZ56ZZZ 
 ;;9002226.02101,"1804,GZ56ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ58ZZZ ",.01)
 ;;GZ58ZZZ 
 ;;9002226.02101,"1804,GZ58ZZZ ",.02)
 ;;GZ58ZZZ 
 ;;9002226.02101,"1804,GZ58ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ59ZZZ ",.01)
 ;;GZ59ZZZ 
 ;;9002226.02101,"1804,GZ59ZZZ ",.02)
 ;;GZ59ZZZ 
 ;;9002226.02101,"1804,GZ59ZZZ ",.03)
 ;;31
 ;;9002226.02101,"1804,GZ60ZZZ ",.01)
 ;;GZ60ZZZ 
 ;;9002226.02101,"1804,GZ60ZZZ ",.02)
 ;;GZ60ZZZ 
 ;;9002226.02101,"1804,GZ60ZZZ ",.03)
 ;;31
