ATXO5H2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 13, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1797,0RJUXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0RJVXZZ ",.01)
 ;;0RJVXZZ 
 ;;9002226.02101,"1797,0RJVXZZ ",.02)
 ;;0RJVXZZ 
 ;;9002226.02101,"1797,0RJVXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0RJWXZZ ",.01)
 ;;0RJWXZZ 
 ;;9002226.02101,"1797,0RJWXZZ ",.02)
 ;;0RJWXZZ 
 ;;9002226.02101,"1797,0RJWXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0RJXXZZ ",.01)
 ;;0RJXXZZ 
 ;;9002226.02101,"1797,0RJXXZZ ",.02)
 ;;0RJXXZZ 
 ;;9002226.02101,"1797,0RJXXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ0XZZ ",.01)
 ;;0SJ0XZZ 
 ;;9002226.02101,"1797,0SJ0XZZ ",.02)
 ;;0SJ0XZZ 
 ;;9002226.02101,"1797,0SJ0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ2XZZ ",.01)
 ;;0SJ2XZZ 
 ;;9002226.02101,"1797,0SJ2XZZ ",.02)
 ;;0SJ2XZZ 
 ;;9002226.02101,"1797,0SJ2XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ3XZZ ",.01)
 ;;0SJ3XZZ 
 ;;9002226.02101,"1797,0SJ3XZZ ",.02)
 ;;0SJ3XZZ 
 ;;9002226.02101,"1797,0SJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ4XZZ ",.01)
 ;;0SJ4XZZ 
 ;;9002226.02101,"1797,0SJ4XZZ ",.02)
 ;;0SJ4XZZ 
 ;;9002226.02101,"1797,0SJ4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ5XZZ ",.01)
 ;;0SJ5XZZ 
 ;;9002226.02101,"1797,0SJ5XZZ ",.02)
 ;;0SJ5XZZ 
 ;;9002226.02101,"1797,0SJ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ6XZZ ",.01)
 ;;0SJ6XZZ 
 ;;9002226.02101,"1797,0SJ6XZZ ",.02)
 ;;0SJ6XZZ 
 ;;9002226.02101,"1797,0SJ6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ7XZZ ",.01)
 ;;0SJ7XZZ 
 ;;9002226.02101,"1797,0SJ7XZZ ",.02)
 ;;0SJ7XZZ 
 ;;9002226.02101,"1797,0SJ7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ8XZZ ",.01)
 ;;0SJ8XZZ 
 ;;9002226.02101,"1797,0SJ8XZZ ",.02)
 ;;0SJ8XZZ 
 ;;9002226.02101,"1797,0SJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJ9XZZ ",.01)
 ;;0SJ9XZZ 
 ;;9002226.02101,"1797,0SJ9XZZ ",.02)
 ;;0SJ9XZZ 
 ;;9002226.02101,"1797,0SJ9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJBXZZ ",.01)
 ;;0SJBXZZ 
 ;;9002226.02101,"1797,0SJBXZZ ",.02)
 ;;0SJBXZZ 
 ;;9002226.02101,"1797,0SJBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJCXZZ ",.01)
 ;;0SJCXZZ 
 ;;9002226.02101,"1797,0SJCXZZ ",.02)
 ;;0SJCXZZ 
 ;;9002226.02101,"1797,0SJCXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJDXZZ ",.01)
 ;;0SJDXZZ 
 ;;9002226.02101,"1797,0SJDXZZ ",.02)
 ;;0SJDXZZ 
 ;;9002226.02101,"1797,0SJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJFXZZ ",.01)
 ;;0SJFXZZ 
 ;;9002226.02101,"1797,0SJFXZZ ",.02)
 ;;0SJFXZZ 
 ;;9002226.02101,"1797,0SJFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJGXZZ ",.01)
 ;;0SJGXZZ 
 ;;9002226.02101,"1797,0SJGXZZ ",.02)
 ;;0SJGXZZ 
 ;;9002226.02101,"1797,0SJGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJHXZZ ",.01)
 ;;0SJHXZZ 
 ;;9002226.02101,"1797,0SJHXZZ ",.02)
 ;;0SJHXZZ 
 ;;9002226.02101,"1797,0SJHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJJXZZ ",.01)
 ;;0SJJXZZ 
 ;;9002226.02101,"1797,0SJJXZZ ",.02)
 ;;0SJJXZZ 
 ;;9002226.02101,"1797,0SJJXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJKXZZ ",.01)
 ;;0SJKXZZ 
 ;;9002226.02101,"1797,0SJKXZZ ",.02)
 ;;0SJKXZZ 
 ;;9002226.02101,"1797,0SJKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJLXZZ ",.01)
 ;;0SJLXZZ 
 ;;9002226.02101,"1797,0SJLXZZ ",.02)
 ;;0SJLXZZ 
 ;;9002226.02101,"1797,0SJLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJMXZZ ",.01)
 ;;0SJMXZZ 
 ;;9002226.02101,"1797,0SJMXZZ ",.02)
 ;;0SJMXZZ 
 ;;9002226.02101,"1797,0SJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJNXZZ ",.01)
 ;;0SJNXZZ 
 ;;9002226.02101,"1797,0SJNXZZ ",.02)
 ;;0SJNXZZ 
 ;;9002226.02101,"1797,0SJNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJPXZZ ",.01)
 ;;0SJPXZZ 
 ;;9002226.02101,"1797,0SJPXZZ ",.02)
 ;;0SJPXZZ 
 ;;9002226.02101,"1797,0SJPXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0SJQXZZ ",.01)
 ;;0SJQXZZ 
 ;;9002226.02101,"1797,0SJQXZZ ",.02)
 ;;0SJQXZZ 
 ;;9002226.02101,"1797,0SJQXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0TJ5XZZ ",.01)
 ;;0TJ5XZZ 
 ;;9002226.02101,"1797,0TJ5XZZ ",.02)
 ;;0TJ5XZZ 
 ;;9002226.02101,"1797,0TJ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0TJ9XZZ ",.01)
 ;;0TJ9XZZ 
 ;;9002226.02101,"1797,0TJ9XZZ ",.02)
 ;;0TJ9XZZ 
 ;;9002226.02101,"1797,0TJ9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0TJBXZZ ",.01)
 ;;0TJBXZZ 
 ;;9002226.02101,"1797,0TJBXZZ ",.02)
 ;;0TJBXZZ 
 ;;9002226.02101,"1797,0TJBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0TJDXZZ ",.01)
 ;;0TJDXZZ 
 ;;9002226.02101,"1797,0TJDXZZ ",.02)
 ;;0TJDXZZ 
 ;;9002226.02101,"1797,0TJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0UJ3XZZ ",.01)
 ;;0UJ3XZZ 
 ;;9002226.02101,"1797,0UJ3XZZ ",.02)
 ;;0UJ3XZZ 
 ;;9002226.02101,"1797,0UJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0UJ8XZZ ",.01)
 ;;0UJ8XZZ 
 ;;9002226.02101,"1797,0UJ8XZZ ",.02)
 ;;0UJ8XZZ 
 ;;9002226.02101,"1797,0UJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0UJDXZZ ",.01)
 ;;0UJDXZZ 
 ;;9002226.02101,"1797,0UJDXZZ ",.02)
 ;;0UJDXZZ 
 ;;9002226.02101,"1797,0UJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0UJHXZZ ",.01)
 ;;0UJHXZZ 
 ;;9002226.02101,"1797,0UJHXZZ ",.02)
 ;;0UJHXZZ 
 ;;9002226.02101,"1797,0UJHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0UJMXZZ ",.01)
 ;;0UJMXZZ 
 ;;9002226.02101,"1797,0UJMXZZ ",.02)
 ;;0UJMXZZ 
 ;;9002226.02101,"1797,0UJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJ4XZZ ",.01)
 ;;0VJ4XZZ 
 ;;9002226.02101,"1797,0VJ4XZZ ",.02)
 ;;0VJ4XZZ 
 ;;9002226.02101,"1797,0VJ4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJ8XZZ ",.01)
 ;;0VJ8XZZ 
 ;;9002226.02101,"1797,0VJ8XZZ ",.02)
 ;;0VJ8XZZ 
 ;;9002226.02101,"1797,0VJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJDXZZ ",.01)
 ;;0VJDXZZ 
 ;;9002226.02101,"1797,0VJDXZZ ",.02)
 ;;0VJDXZZ 
 ;;9002226.02101,"1797,0VJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJMXZZ ",.01)
 ;;0VJMXZZ 
 ;;9002226.02101,"1797,0VJMXZZ ",.02)
 ;;0VJMXZZ 
 ;;9002226.02101,"1797,0VJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJRXZZ ",.01)
 ;;0VJRXZZ 
 ;;9002226.02101,"1797,0VJRXZZ ",.02)
 ;;0VJRXZZ 
 ;;9002226.02101,"1797,0VJRXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0VJSXZZ ",.01)
 ;;0VJSXZZ 
 ;;9002226.02101,"1797,0VJSXZZ ",.02)
 ;;0VJSXZZ 
 ;;9002226.02101,"1797,0VJSXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ0XZZ ",.01)
 ;;0WJ0XZZ 
 ;;9002226.02101,"1797,0WJ0XZZ ",.02)
 ;;0WJ0XZZ 
 ;;9002226.02101,"1797,0WJ0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ2XZZ ",.01)
 ;;0WJ2XZZ 
 ;;9002226.02101,"1797,0WJ2XZZ ",.02)
 ;;0WJ2XZZ 
 ;;9002226.02101,"1797,0WJ2XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ3XZZ ",.01)
 ;;0WJ3XZZ 
 ;;9002226.02101,"1797,0WJ3XZZ ",.02)
 ;;0WJ3XZZ 
 ;;9002226.02101,"1797,0WJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ4XZZ ",.01)
 ;;0WJ4XZZ 
 ;;9002226.02101,"1797,0WJ4XZZ ",.02)
 ;;0WJ4XZZ 
 ;;9002226.02101,"1797,0WJ4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ5XZZ ",.01)
 ;;0WJ5XZZ 
 ;;9002226.02101,"1797,0WJ5XZZ ",.02)
 ;;0WJ5XZZ 
 ;;9002226.02101,"1797,0WJ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ6XZZ ",.01)
 ;;0WJ6XZZ 
 ;;9002226.02101,"1797,0WJ6XZZ ",.02)
 ;;0WJ6XZZ 
 ;;9002226.02101,"1797,0WJ6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJ8XZZ ",.01)
 ;;0WJ8XZZ 
 ;;9002226.02101,"1797,0WJ8XZZ ",.02)
 ;;0WJ8XZZ 
 ;;9002226.02101,"1797,0WJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJFXZZ ",.01)
 ;;0WJFXZZ 
 ;;9002226.02101,"1797,0WJFXZZ ",.02)
 ;;0WJFXZZ 
 ;;9002226.02101,"1797,0WJFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJKXZZ ",.01)
 ;;0WJKXZZ 
 ;;9002226.02101,"1797,0WJKXZZ ",.02)
 ;;0WJKXZZ 
 ;;9002226.02101,"1797,0WJKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJLXZZ ",.01)
 ;;0WJLXZZ 
 ;;9002226.02101,"1797,0WJLXZZ ",.02)
 ;;0WJLXZZ 
 ;;9002226.02101,"1797,0WJLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJMXZZ ",.01)
 ;;0WJMXZZ 
 ;;9002226.02101,"1797,0WJMXZZ ",.02)
 ;;0WJMXZZ 
 ;;9002226.02101,"1797,0WJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0WJNXZZ ",.01)
 ;;0WJNXZZ 
 ;;9002226.02101,"1797,0WJNXZZ ",.02)
 ;;0WJNXZZ 
 ;;9002226.02101,"1797,0WJNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ2XZZ ",.01)
 ;;0XJ2XZZ 
 ;;9002226.02101,"1797,0XJ2XZZ ",.02)
 ;;0XJ2XZZ 
 ;;9002226.02101,"1797,0XJ2XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ3XZZ ",.01)
 ;;0XJ3XZZ 
 ;;9002226.02101,"1797,0XJ3XZZ ",.02)
 ;;0XJ3XZZ 
 ;;9002226.02101,"1797,0XJ3XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ4XZZ ",.01)
 ;;0XJ4XZZ 
 ;;9002226.02101,"1797,0XJ4XZZ ",.02)
 ;;0XJ4XZZ 
 ;;9002226.02101,"1797,0XJ4XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ5XZZ ",.01)
 ;;0XJ5XZZ 
 ;;9002226.02101,"1797,0XJ5XZZ ",.02)
 ;;0XJ5XZZ 
 ;;9002226.02101,"1797,0XJ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ6XZZ ",.01)
 ;;0XJ6XZZ 
 ;;9002226.02101,"1797,0XJ6XZZ ",.02)
 ;;0XJ6XZZ 
 ;;9002226.02101,"1797,0XJ6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ7XZZ ",.01)
 ;;0XJ7XZZ 
 ;;9002226.02101,"1797,0XJ7XZZ ",.02)
 ;;0XJ7XZZ 
 ;;9002226.02101,"1797,0XJ7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ8XZZ ",.01)
 ;;0XJ8XZZ 
 ;;9002226.02101,"1797,0XJ8XZZ ",.02)
 ;;0XJ8XZZ 
 ;;9002226.02101,"1797,0XJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJ9XZZ ",.01)
 ;;0XJ9XZZ 
 ;;9002226.02101,"1797,0XJ9XZZ ",.02)
 ;;0XJ9XZZ 
 ;;9002226.02101,"1797,0XJ9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJBXZZ ",.01)
 ;;0XJBXZZ 
 ;;9002226.02101,"1797,0XJBXZZ ",.02)
 ;;0XJBXZZ 
 ;;9002226.02101,"1797,0XJBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJCXZZ ",.01)
 ;;0XJCXZZ 
 ;;9002226.02101,"1797,0XJCXZZ ",.02)
 ;;0XJCXZZ 
 ;;9002226.02101,"1797,0XJCXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJDXZZ ",.01)
 ;;0XJDXZZ 
 ;;9002226.02101,"1797,0XJDXZZ ",.02)
 ;;0XJDXZZ 
 ;;9002226.02101,"1797,0XJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJFXZZ ",.01)
 ;;0XJFXZZ 
 ;;9002226.02101,"1797,0XJFXZZ ",.02)
 ;;0XJFXZZ 
 ;;9002226.02101,"1797,0XJFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJGXZZ ",.01)
 ;;0XJGXZZ 
 ;;9002226.02101,"1797,0XJGXZZ ",.02)
 ;;0XJGXZZ 
 ;;9002226.02101,"1797,0XJGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJHXZZ ",.01)
 ;;0XJHXZZ 
 ;;9002226.02101,"1797,0XJHXZZ ",.02)
 ;;0XJHXZZ 
 ;;9002226.02101,"1797,0XJHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJJXZZ ",.01)
 ;;0XJJXZZ 
 ;;9002226.02101,"1797,0XJJXZZ ",.02)
 ;;0XJJXZZ 
 ;;9002226.02101,"1797,0XJJXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0XJKXZZ ",.01)
 ;;0XJKXZZ 
 ;;9002226.02101,"1797,0XJKXZZ ",.02)
 ;;0XJKXZZ 
 ;;9002226.02101,"1797,0XJKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ0XZZ ",.01)
 ;;0YJ0XZZ 
 ;;9002226.02101,"1797,0YJ0XZZ ",.02)
 ;;0YJ0XZZ 
 ;;9002226.02101,"1797,0YJ0XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ1XZZ ",.01)
 ;;0YJ1XZZ 
 ;;9002226.02101,"1797,0YJ1XZZ ",.02)
 ;;0YJ1XZZ 
 ;;9002226.02101,"1797,0YJ1XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ5XZZ ",.01)
 ;;0YJ5XZZ 
 ;;9002226.02101,"1797,0YJ5XZZ ",.02)
 ;;0YJ5XZZ 
 ;;9002226.02101,"1797,0YJ5XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ6XZZ ",.01)
 ;;0YJ6XZZ 
 ;;9002226.02101,"1797,0YJ6XZZ ",.02)
 ;;0YJ6XZZ 
 ;;9002226.02101,"1797,0YJ6XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ7XZZ ",.01)
 ;;0YJ7XZZ 
 ;;9002226.02101,"1797,0YJ7XZZ ",.02)
 ;;0YJ7XZZ 
 ;;9002226.02101,"1797,0YJ7XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ8XZZ ",.01)
 ;;0YJ8XZZ 
 ;;9002226.02101,"1797,0YJ8XZZ ",.02)
 ;;0YJ8XZZ 
 ;;9002226.02101,"1797,0YJ8XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJ9XZZ ",.01)
 ;;0YJ9XZZ 
 ;;9002226.02101,"1797,0YJ9XZZ ",.02)
 ;;0YJ9XZZ 
 ;;9002226.02101,"1797,0YJ9XZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJAXZZ ",.01)
 ;;0YJAXZZ 
 ;;9002226.02101,"1797,0YJAXZZ ",.02)
 ;;0YJAXZZ 
 ;;9002226.02101,"1797,0YJAXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJBXZZ ",.01)
 ;;0YJBXZZ 
 ;;9002226.02101,"1797,0YJBXZZ ",.02)
 ;;0YJBXZZ 
 ;;9002226.02101,"1797,0YJBXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJCXZZ ",.01)
 ;;0YJCXZZ 
 ;;9002226.02101,"1797,0YJCXZZ ",.02)
 ;;0YJCXZZ 
 ;;9002226.02101,"1797,0YJCXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJDXZZ ",.01)
 ;;0YJDXZZ 
 ;;9002226.02101,"1797,0YJDXZZ ",.02)
 ;;0YJDXZZ 
 ;;9002226.02101,"1797,0YJDXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJEXZZ ",.01)
 ;;0YJEXZZ 
 ;;9002226.02101,"1797,0YJEXZZ ",.02)
 ;;0YJEXZZ 
 ;;9002226.02101,"1797,0YJEXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJFXZZ ",.01)
 ;;0YJFXZZ 
 ;;9002226.02101,"1797,0YJFXZZ ",.02)
 ;;0YJFXZZ 
 ;;9002226.02101,"1797,0YJFXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJGXZZ ",.01)
 ;;0YJGXZZ 
 ;;9002226.02101,"1797,0YJGXZZ ",.02)
 ;;0YJGXZZ 
 ;;9002226.02101,"1797,0YJGXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJHXZZ ",.01)
 ;;0YJHXZZ 
 ;;9002226.02101,"1797,0YJHXZZ ",.02)
 ;;0YJHXZZ 
 ;;9002226.02101,"1797,0YJHXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJJXZZ ",.01)
 ;;0YJJXZZ 
 ;;9002226.02101,"1797,0YJJXZZ ",.02)
 ;;0YJJXZZ 
 ;;9002226.02101,"1797,0YJJXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJKXZZ ",.01)
 ;;0YJKXZZ 
 ;;9002226.02101,"1797,0YJKXZZ ",.02)
 ;;0YJKXZZ 
 ;;9002226.02101,"1797,0YJKXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJLXZZ ",.01)
 ;;0YJLXZZ 
 ;;9002226.02101,"1797,0YJLXZZ ",.02)
 ;;0YJLXZZ 
 ;;9002226.02101,"1797,0YJLXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJMXZZ ",.01)
 ;;0YJMXZZ 
 ;;9002226.02101,"1797,0YJMXZZ ",.02)
 ;;0YJMXZZ 
 ;;9002226.02101,"1797,0YJMXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,0YJNXZZ ",.01)
 ;;0YJNXZZ 
 ;;9002226.02101,"1797,0YJNXZZ ",.02)
 ;;0YJNXZZ 
 ;;9002226.02101,"1797,0YJNXZZ ",.03)
 ;;31
 ;;9002226.02101,"1797,89.39 ",.01)
 ;;89.39 
 ;;9002226.02101,"1797,89.39 ",.02)
 ;;89.39 
 ;;9002226.02101,"1797,89.39 ",.03)
 ;;2
 ;;9002226.02101,"1797,F0105YZ ",.01)
 ;;F0105YZ 
 ;;9002226.02101,"1797,F0105YZ ",.02)
 ;;F0105YZ 
 ;;9002226.02101,"1797,F0105YZ ",.03)
 ;;31
 ;;9002226.02101,"1797,F0105ZZ ",.01)
 ;;F0105ZZ 
