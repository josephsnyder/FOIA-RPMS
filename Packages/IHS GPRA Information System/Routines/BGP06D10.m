BGP06D10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"978,00603-0241-18 ",.01)
 ;;00603-0241-18
 ;;9002226.02101,"978,00603-0241-18 ",.02)
 ;;00603-0241-18
 ;;9002226.02101,"978,00603-0822-54 ",.01)
 ;;00603-0822-54
 ;;9002226.02101,"978,00603-0822-54 ",.02)
 ;;00603-0822-54
 ;;9002226.02101,"978,00603-0823-54 ",.01)
 ;;00603-0823-54
 ;;9002226.02101,"978,00603-0823-54 ",.02)
 ;;00603-0823-54
 ;;9002226.02101,"978,00603-0823-58 ",.01)
 ;;00603-0823-58
 ;;9002226.02101,"978,00603-0823-58 ",.02)
 ;;00603-0823-58
 ;;9002226.02101,"978,00603-0823-81 ",.01)
 ;;00603-0823-81
 ;;9002226.02101,"978,00603-0823-81 ",.02)
 ;;00603-0823-81
 ;;9002226.02101,"978,00603-0823-94 ",.01)
 ;;00603-0823-94
 ;;9002226.02101,"978,00603-0823-94 ",.02)
 ;;00603-0823-94
 ;;9002226.02101,"978,00603-0860-54 ",.01)
 ;;00603-0860-54
 ;;9002226.02101,"978,00603-0860-54 ",.02)
 ;;00603-0860-54
 ;;9002226.02101,"978,00603-1117-58 ",.01)
 ;;00603-1117-58
 ;;9002226.02101,"978,00603-1117-58 ",.02)
 ;;00603-1117-58
 ;;9002226.02101,"978,00603-1175-58 ",.01)
 ;;00603-1175-58
 ;;9002226.02101,"978,00603-1175-58 ",.02)
 ;;00603-1175-58
 ;;9002226.02101,"978,00603-1310-58 ",.01)
 ;;00603-1310-58
 ;;9002226.02101,"978,00603-1310-58 ",.02)
 ;;00603-1310-58
 ;;9002226.02101,"978,00603-1584-54 ",.01)
 ;;00603-1584-54
 ;;9002226.02101,"978,00603-1584-54 ",.02)
 ;;00603-1584-54
 ;;9002226.02101,"978,00603-1584-58 ",.01)
 ;;00603-1584-58
 ;;9002226.02101,"978,00603-1584-58 ",.02)
 ;;00603-1584-58
 ;;9002226.02101,"978,00603-1585-54 ",.01)
 ;;00603-1585-54
 ;;9002226.02101,"978,00603-1585-54 ",.02)
 ;;00603-1585-54
 ;;9002226.02101,"978,00603-1585-58 ",.01)
 ;;00603-1585-58
 ;;9002226.02101,"978,00603-1585-58 ",.02)
 ;;00603-1585-58
 ;;9002226.02101,"978,00603-1586-54 ",.01)
 ;;00603-1586-54
 ;;9002226.02101,"978,00603-1586-54 ",.02)
 ;;00603-1586-54
 ;;9002226.02101,"978,00603-1586-58 ",.01)
 ;;00603-1586-58
 ;;9002226.02101,"978,00603-1586-58 ",.02)
 ;;00603-1586-58
 ;;9002226.02101,"978,00603-1587-54 ",.01)
 ;;00603-1587-54
 ;;9002226.02101,"978,00603-1587-54 ",.02)
 ;;00603-1587-54
 ;;9002226.02101,"978,00603-1587-58 ",.01)
 ;;00603-1587-58
 ;;9002226.02101,"978,00603-1587-58 ",.02)
 ;;00603-1587-58
 ;;9002226.02101,"978,00603-1588-54 ",.01)
 ;;00603-1588-54
 ;;9002226.02101,"978,00603-1588-54 ",.02)
 ;;00603-1588-54
 ;;9002226.02101,"978,00603-1588-58 ",.01)
 ;;00603-1588-58
 ;;9002226.02101,"978,00603-1588-58 ",.02)
 ;;00603-1588-58
 ;;9002226.02101,"978,00603-3198-21 ",.01)
 ;;00603-3198-21
 ;;9002226.02101,"978,00603-3198-21 ",.02)
 ;;00603-3198-21
 ;;9002226.02101,"978,00603-3199-21 ",.01)
 ;;00603-3199-21
 ;;9002226.02101,"978,00603-3199-21 ",.02)
 ;;00603-3199-21
 ;;9002226.02101,"978,00603-3337-21 ",.01)
 ;;00603-3337-21
 ;;9002226.02101,"978,00603-3337-21 ",.02)
 ;;00603-3337-21
 ;;9002226.02101,"978,00603-3337-32 ",.01)
 ;;00603-3337-32
 ;;9002226.02101,"978,00603-3337-32 ",.02)
 ;;00603-3337-32
 ;;9002226.02101,"978,00603-3338-21 ",.01)
 ;;00603-3338-21
 ;;9002226.02101,"978,00603-3338-21 ",.02)
 ;;00603-3338-21
 ;;9002226.02101,"978,00603-3338-32 ",.01)
 ;;00603-3338-32
 ;;9002226.02101,"978,00603-3338-32 ",.02)
 ;;00603-3338-32
 ;;9002226.02101,"978,00603-3339-21 ",.01)
 ;;00603-3339-21
 ;;9002226.02101,"978,00603-3339-21 ",.02)
 ;;00603-3339-21
 ;;9002226.02101,"978,00603-3339-32 ",.01)
 ;;00603-3339-32
 ;;9002226.02101,"978,00603-3339-32 ",.02)
 ;;00603-3339-32
 ;;9002226.02101,"978,00603-3340-21 ",.01)
 ;;00603-3340-21
 ;;9002226.02101,"978,00603-3340-21 ",.02)
 ;;00603-3340-21
 ;;9002226.02101,"978,00603-3340-32 ",.01)
 ;;00603-3340-32
 ;;9002226.02101,"978,00603-3340-32 ",.02)
 ;;00603-3340-32
 ;;9002226.02101,"978,00603-3967-21 ",.01)
 ;;00603-3967-21
 ;;9002226.02101,"978,00603-3967-21 ",.02)
 ;;00603-3967-21
 ;;9002226.02101,"978,00603-3967-28 ",.01)
 ;;00603-3967-28
 ;;9002226.02101,"978,00603-3967-28 ",.02)
 ;;00603-3967-28
 ;;9002226.02101,"978,00603-3967-32 ",.01)
 ;;00603-3967-32
 ;;9002226.02101,"978,00603-3967-32 ",.02)
 ;;00603-3967-32
 ;;9002226.02101,"978,00603-3968-21 ",.01)
 ;;00603-3968-21
 ;;9002226.02101,"978,00603-3968-21 ",.02)
 ;;00603-3968-21
 ;;9002226.02101,"978,00603-3968-28 ",.01)
 ;;00603-3968-28
 ;;9002226.02101,"978,00603-3968-28 ",.02)
 ;;00603-3968-28
 ;;9002226.02101,"978,00603-3968-32 ",.01)
 ;;00603-3968-32
 ;;9002226.02101,"978,00603-3968-32 ",.02)
 ;;00603-3968-32
 ;;9002226.02101,"978,00603-3969-21 ",.01)
 ;;00603-3969-21
 ;;9002226.02101,"978,00603-3969-21 ",.02)
 ;;00603-3969-21
 ;;9002226.02101,"978,00603-3969-28 ",.01)
 ;;00603-3969-28
 ;;9002226.02101,"978,00603-3969-28 ",.02)
 ;;00603-3969-28
 ;;9002226.02101,"978,00603-3994-21 ",.01)
 ;;00603-3994-21
 ;;9002226.02101,"978,00603-3994-21 ",.02)
 ;;00603-3994-21
 ;;9002226.02101,"978,00603-3994-28 ",.01)
 ;;00603-3994-28
 ;;9002226.02101,"978,00603-3994-28 ",.02)
 ;;00603-3994-28
 ;;9002226.02101,"978,00603-3995-21 ",.01)
 ;;00603-3995-21
 ;;9002226.02101,"978,00603-3995-21 ",.02)
 ;;00603-3995-21
 ;;9002226.02101,"978,00603-5437-21 ",.01)
 ;;00603-5437-21
 ;;9002226.02101,"978,00603-5437-21 ",.02)
 ;;00603-5437-21
 ;;9002226.02101,"978,00603-5438-21 ",.01)
 ;;00603-5438-21
 ;;9002226.02101,"978,00603-5438-21 ",.02)
 ;;00603-5438-21
 ;;9002226.02101,"978,00603-5438-32 ",.01)
 ;;00603-5438-32
 ;;9002226.02101,"978,00603-5438-32 ",.02)
 ;;00603-5438-32
 ;;9002226.02101,"978,00603-5439-21 ",.01)
 ;;00603-5439-21
 ;;9002226.02101,"978,00603-5439-21 ",.02)
 ;;00603-5439-21
 ;;9002226.02101,"978,00615-0331-53 ",.01)
 ;;00615-0331-53
 ;;9002226.02101,"978,00615-0331-53 ",.02)
 ;;00615-0331-53
 ;;9002226.02101,"978,00615-0331-63 ",.01)
 ;;00615-0331-63
 ;;9002226.02101,"978,00615-0331-63 ",.02)
 ;;00615-0331-63
 ;;9002226.02101,"978,00615-0332-13 ",.01)
 ;;00615-0332-13
 ;;9002226.02101,"978,00615-0332-13 ",.02)
 ;;00615-0332-13
 ;;9002226.02101,"978,00615-0332-63 ",.01)
 ;;00615-0332-63
 ;;9002226.02101,"978,00615-0332-63 ",.02)
 ;;00615-0332-63
 ;;9002226.02101,"978,00615-0368-01 ",.01)
 ;;00615-0368-01
 ;;9002226.02101,"978,00615-0368-01 ",.02)
 ;;00615-0368-01
 ;;9002226.02101,"978,00615-0368-10 ",.01)
 ;;00615-0368-10
 ;;9002226.02101,"978,00615-0368-10 ",.02)
 ;;00615-0368-10
 ;;9002226.02101,"978,00615-0368-32 ",.01)
 ;;00615-0368-32
 ;;9002226.02101,"978,00615-0368-32 ",.02)
 ;;00615-0368-32
 ;;9002226.02101,"978,00615-0369-01 ",.01)
 ;;00615-0369-01
 ;;9002226.02101,"978,00615-0369-01 ",.02)
 ;;00615-0369-01
 ;;9002226.02101,"978,00615-0369-10 ",.01)
 ;;00615-0369-10
 ;;9002226.02101,"978,00615-0369-10 ",.02)
 ;;00615-0369-10
 ;;9002226.02101,"978,00615-0369-32 ",.01)
 ;;00615-0369-32
 ;;9002226.02101,"978,00615-0369-32 ",.02)
 ;;00615-0369-32
 ;;9002226.02101,"978,00615-0369-53 ",.01)
 ;;00615-0369-53
 ;;9002226.02101,"978,00615-0369-53 ",.02)
 ;;00615-0369-53
 ;;9002226.02101,"978,00615-0369-63 ",.01)
 ;;00615-0369-63
 ;;9002226.02101,"978,00615-0369-63 ",.02)
 ;;00615-0369-63
 ;;9002226.02101,"978,00615-1525-13 ",.01)
 ;;00615-1525-13
 ;;9002226.02101,"978,00615-1525-13 ",.02)
 ;;00615-1525-13
 ;;9002226.02101,"978,00615-1526-43 ",.01)
 ;;00615-1526-43
 ;;9002226.02101,"978,00615-1526-43 ",.02)
 ;;00615-1526-43
 ;;9002226.02101,"978,00615-1526-53 ",.01)
 ;;00615-1526-53
 ;;9002226.02101,"978,00615-1526-53 ",.02)
 ;;00615-1526-53
 ;;9002226.02101,"978,00615-1526-63 ",.01)
 ;;00615-1526-63
 ;;9002226.02101,"978,00615-1526-63 ",.02)
 ;;00615-1526-63
 ;;9002226.02101,"978,00615-1536-13 ",.01)
 ;;00615-1536-13
 ;;9002226.02101,"978,00615-1536-13 ",.02)
 ;;00615-1536-13
 ;;9002226.02101,"978,00677-0597-01 ",.01)
 ;;00677-0597-01
 ;;9002226.02101,"978,00677-0597-01 ",.02)
 ;;00677-0597-01
 ;;9002226.02101,"978,00677-0604-01 ",.01)
 ;;00677-0604-01
 ;;9002226.02101,"978,00677-0604-01 ",.02)
 ;;00677-0604-01
 ;;9002226.02101,"978,00677-0604-05 ",.01)
 ;;00677-0604-05
 ;;9002226.02101,"978,00677-0604-05 ",.02)
 ;;00677-0604-05
 ;;9002226.02101,"978,00677-0604-10 ",.01)
 ;;00677-0604-10
 ;;9002226.02101,"978,00677-0604-10 ",.02)
 ;;00677-0604-10
 ;;9002226.02101,"978,00677-0605-01 ",.01)
 ;;00677-0605-01
 ;;9002226.02101,"978,00677-0605-01 ",.02)
 ;;00677-0605-01
 ;;9002226.02101,"978,00677-0605-05 ",.01)
 ;;00677-0605-05
 ;;9002226.02101,"978,00677-0605-05 ",.02)
 ;;00677-0605-05
 ;;9002226.02101,"978,00677-0605-10 ",.01)
 ;;00677-0605-10
 ;;9002226.02101,"978,00677-0605-10 ",.02)
 ;;00677-0605-10
 ;;9002226.02101,"978,00677-0606-01 ",.01)
 ;;00677-0606-01
 ;;9002226.02101,"978,00677-0606-01 ",.02)
 ;;00677-0606-01
 ;;9002226.02101,"978,00677-0606-05 ",.01)
 ;;00677-0606-05
 ;;9002226.02101,"978,00677-0606-05 ",.02)
 ;;00677-0606-05
 ;;9002226.02101,"978,00677-0606-10 ",.01)
 ;;00677-0606-10
 ;;9002226.02101,"978,00677-0606-10 ",.02)
 ;;00677-0606-10
 ;;9002226.02101,"978,00677-1827-33 ",.01)
 ;;00677-1827-33
 ;;9002226.02101,"978,00677-1827-33 ",.02)
 ;;00677-1827-33
 ;;9002226.02101,"978,00677-1828-33 ",.01)
 ;;00677-1828-33
 ;;9002226.02101,"978,00677-1828-33 ",.02)
 ;;00677-1828-33
 ;;9002226.02101,"978,00677-1856-01 ",.01)
 ;;00677-1856-01
 ;;9002226.02101,"978,00677-1856-01 ",.02)
 ;;00677-1856-01
 ;;9002226.02101,"978,00677-1856-10 ",.01)
 ;;00677-1856-10
 ;;9002226.02101,"978,00677-1856-10 ",.02)
 ;;00677-1856-10
 ;;9002226.02101,"978,00677-1857-01 ",.01)
 ;;00677-1857-01
 ;;9002226.02101,"978,00677-1857-01 ",.02)
 ;;00677-1857-01
 ;;9002226.02101,"978,00677-1857-10 ",.01)
 ;;00677-1857-10
 ;;9002226.02101,"978,00677-1857-10 ",.02)
 ;;00677-1857-10
 ;;9002226.02101,"978,00677-1914-41 ",.01)
 ;;00677-1914-41
 ;;9002226.02101,"978,00677-1914-41 ",.02)
 ;;00677-1914-41
 ;;9002226.02101,"978,00677-1956-41 ",.01)
 ;;00677-1956-41
 ;;9002226.02101,"978,00677-1956-41 ",.02)
 ;;00677-1956-41
 ;;9002226.02101,"978,00677-1957-06 ",.01)
 ;;00677-1957-06
 ;;9002226.02101,"978,00677-1957-06 ",.02)
 ;;00677-1957-06
 ;;9002226.02101,"978,00677-1958-06 ",.01)
 ;;00677-1958-06
 ;;9002226.02101,"978,00677-1958-06 ",.02)
 ;;00677-1958-06
 ;;9002226.02101,"978,00677-1959-41 ",.01)
 ;;00677-1959-41
 ;;9002226.02101,"978,00677-1959-41 ",.02)
 ;;00677-1959-41
 ;;9002226.02101,"978,00677-1960-41 ",.01)
 ;;00677-1960-41
 ;;9002226.02101,"978,00677-1960-41 ",.02)
 ;;00677-1960-41
 ;;9002226.02101,"978,00677-1961-06 ",.01)
 ;;00677-1961-06
 ;;9002226.02101,"978,00677-1961-06 ",.02)
 ;;00677-1961-06
 ;;9002226.02101,"978,00781-1125-01 ",.01)
 ;;00781-1125-01
 ;;9002226.02101,"978,00781-1125-01 ",.02)
 ;;00781-1125-01
 ;;9002226.02101,"978,00781-1830-01 ",.01)
 ;;00781-1830-01
 ;;9002226.02101,"978,00781-1830-01 ",.02)
 ;;00781-1830-01
 ;;9002226.02101,"978,00781-1832-01 ",.01)
 ;;00781-1832-01
 ;;9002226.02101,"978,00781-1832-01 ",.02)
 ;;00781-1832-01
 ;;9002226.02101,"978,00781-2256-01 ",.01)
 ;;00781-2256-01
 ;;9002226.02101,"978,00781-2256-01 ",.02)
 ;;00781-2256-01
 ;;9002226.02101,"978,00781-2458-13 ",.01)
 ;;00781-2458-13
 ;;9002226.02101,"978,00781-2458-13 ",.02)
 ;;00781-2458-13
 ;;9002226.02101,"978,00781-2498-13 ",.01)
 ;;00781-2498-13
 ;;9002226.02101,"978,00781-2498-13 ",.02)
 ;;00781-2498-13
 ;;9002226.02101,"978,00781-6575-04 ",.01)
 ;;00781-6575-04
 ;;9002226.02101,"978,00781-6575-04 ",.02)
 ;;00781-6575-04
 ;;9002226.02101,"978,00781-6575-16 ",.01)
 ;;00781-6575-16
 ;;9002226.02101,"978,00781-6575-16 ",.02)
 ;;00781-6575-16
 ;;9002226.02101,"978,00781-6575-28 ",.01)
 ;;00781-6575-28
 ;;9002226.02101,"978,00781-6575-28 ",.02)
 ;;00781-6575-28
 ;;9002226.02101,"978,00904-0123-09 ",.01)
 ;;00904-0123-09
 ;;9002226.02101,"978,00904-0123-09 ",.02)
 ;;00904-0123-09
 ;;9002226.02101,"978,00904-0123-16 ",.01)
 ;;00904-0123-16
 ;;9002226.02101,"978,00904-0123-16 ",.02)
 ;;00904-0123-16
 ;;9002226.02101,"978,00904-0357-40 ",.01)
 ;;00904-0357-40
 ;;9002226.02101,"978,00904-0357-40 ",.02)
 ;;00904-0357-40
 ;;9002226.02101,"978,00904-0357-60 ",.01)
 ;;00904-0357-60
 ;;9002226.02101,"978,00904-0357-60 ",.02)
 ;;00904-0357-60
 ;;9002226.02101,"978,00904-0358-40 ",.01)
 ;;00904-0358-40
 ;;9002226.02101,"978,00904-0358-40 ",.02)
 ;;00904-0358-40
 ;;9002226.02101,"978,00904-0358-60 ",.01)
 ;;00904-0358-60
 ;;9002226.02101,"978,00904-0358-60 ",.02)
 ;;00904-0358-60
 ;;9002226.02101,"978,00904-0359-40 ",.01)
 ;;00904-0359-40
 ;;9002226.02101,"978,00904-0359-40 ",.02)
 ;;00904-0359-40
 ;;9002226.02101,"978,00904-0359-60 ",.01)
 ;;00904-0359-60
 ;;9002226.02101,"978,00904-0359-60 ",.02)
 ;;00904-0359-60
 ;;9002226.02101,"978,00904-0624-16 ",.01)
 ;;00904-0624-16
 ;;9002226.02101,"978,00904-0624-16 ",.02)
 ;;00904-0624-16
 ;;9002226.02101,"978,00904-0624-28 ",.01)
 ;;00904-0624-28
 ;;9002226.02101,"978,00904-0624-28 ",.02)
 ;;00904-0624-28
 ;;9002226.02101,"978,00904-1145-61 ",.01)
 ;;00904-1145-61
 ;;9002226.02101,"978,00904-1145-61 ",.02)
 ;;00904-1145-61
 ;;9002226.02101,"978,00904-1145-70 ",.01)
 ;;00904-1145-70
 ;;9002226.02101,"978,00904-1145-70 ",.02)
 ;;00904-1145-70
 ;;9002226.02101,"978,00904-1146-16 ",.01)
 ;;00904-1146-16
 ;;9002226.02101,"978,00904-1146-16 ",.02)
 ;;00904-1146-16
 ;;9002226.02101,"978,00904-1146-28 ",.01)
 ;;00904-1146-28
 ;;9002226.02101,"978,00904-1146-28 ",.02)
 ;;00904-1146-28
 ;;9002226.02101,"978,00904-1228-00 ",.01)
 ;;00904-1228-00
 ;;9002226.02101,"978,00904-1228-00 ",.02)
 ;;00904-1228-00
 ;;9002226.02101,"978,00904-1228-20 ",.01)
 ;;00904-1228-20
 ;;9002226.02101,"978,00904-1228-20 ",.02)
 ;;00904-1228-20
 ;;9002226.02101,"978,00904-1508-00 ",.01)
 ;;00904-1508-00
 ;;9002226.02101,"978,00904-1508-00 ",.02)
 ;;00904-1508-00
