BGP9RXBB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55370-0154-07 ")
 ;;151
 ;;21,"55370-0154-09 ")
 ;;152
 ;;21,"55390-0555-01 ")
 ;;153
 ;;21,"55390-0555-10 ")
 ;;154
 ;;21,"55390-0555-90 ")
 ;;155
 ;;21,"55829-0235-10 ")
 ;;156
 ;;21,"55829-0236-10 ")
 ;;157
 ;;21,"55829-0237-10 ")
 ;;158
 ;;21,"60505-0715-00 ")
 ;;159
 ;;21,"60505-0715-01 ")
 ;;160
 ;;21,"61392-0549-30 ")
 ;;161
 ;;21,"61392-0549-31 ")
 ;;162
 ;;21,"61392-0549-32 ")
 ;;163
 ;;21,"61392-0549-34 ")
 ;;164
 ;;21,"61392-0549-39 ")
 ;;165
 ;;21,"61392-0549-45 ")
 ;;166
 ;;21,"61392-0549-51 ")
 ;;167
 ;;21,"61392-0549-54 ")
 ;;168
 ;;21,"61392-0549-56 ")
 ;;169
 ;;21,"61392-0549-60 ")
 ;;170
 ;;21,"61392-0549-90 ")
 ;;171
 ;;21,"61392-0549-91 ")
 ;;172
 ;;21,"61392-0552-30 ")
 ;;173
 ;;21,"61392-0552-31 ")
 ;;174
 ;;21,"61392-0552-32 ")
 ;;175
 ;;21,"61392-0552-39 ")
 ;;176
 ;;21,"61392-0552-45 ")
 ;;177
 ;;21,"61392-0552-51 ")
 ;;178
 ;;21,"61392-0552-54 ")
 ;;179
 ;;21,"61392-0552-56 ")
 ;;180
 ;;21,"61392-0552-60 ")
 ;;181
 ;;21,"61392-0552-90 ")
 ;;182
 ;;21,"61392-0552-91 ")
 ;;183
 ;;21,"63323-0613-02 ")
 ;;184
 ;;21,"63323-0613-10 ")
 ;;185
 ;;21,"64731-0575-01 ")
 ;;186
 ;;21,"64731-0575-10 ")
 ;;187
 ;;21,"64731-0576-01 ")
 ;;188
 ;;21,"64731-0576-10 ")
 ;;189
 ;;21,"68115-0663-00 ")
 ;;190
 ;;9002226,737,.01)
 ;;BGP HEDIS VASODILATOR NDC
 ;;9002226,737,.02)
 ;;@
 ;;9002226,737,.04)
 ;;n
 ;;9002226,737,.06)
 ;;@
 ;;9002226,737,.08)
 ;;@
 ;;9002226,737,.09)
 ;;@
 ;;9002226,737,.11)
 ;;@
 ;;9002226,737,.12)
 ;;@
 ;;9002226,737,.13)
 ;;1
 ;;9002226,737,.14)
 ;;@
 ;;9002226,737,.15)
 ;;@
 ;;9002226,737,.16)
 ;;@
 ;;9002226,737,.17)
 ;;@
 ;;9002226,737,3101)
 ;;@
 ;;9002226.02101,"737,00005-3743-23 ",.01)
 ;;00005-3743-23
 ;;9002226.02101,"737,00005-3743-23 ",.02)
 ;;00005-3743-23
 ;;9002226.02101,"737,00005-3743-31 ",.01)
 ;;00005-3743-31
 ;;9002226.02101,"737,00005-3743-31 ",.02)
 ;;00005-3743-31
 ;;9002226.02101,"737,00005-3790-23 ",.01)
 ;;00005-3790-23
 ;;9002226.02101,"737,00005-3790-23 ",.02)
 ;;00005-3790-23
 ;;9002226.02101,"737,00005-3791-23 ",.01)
 ;;00005-3791-23
 ;;9002226.02101,"737,00005-3791-23 ",.02)
 ;;00005-3791-23
 ;;9002226.02101,"737,00005-3791-31 ",.01)
 ;;00005-3791-31
 ;;9002226.02101,"737,00005-3791-31 ",.02)
 ;;00005-3791-31
 ;;9002226.02101,"737,00074-2043-02 ",.01)
 ;;00074-2043-02
 ;;9002226.02101,"737,00074-2043-02 ",.02)
 ;;00074-2043-02
 ;;9002226.02101,"737,00074-2043-10 ",.01)
 ;;00074-2043-10
 ;;9002226.02101,"737,00074-2043-10 ",.02)
 ;;00074-2043-10
 ;;9002226.02101,"737,00087-0543-01 ",.01)
 ;;00087-0543-01
 ;;9002226.02101,"737,00087-0543-01 ",.02)
 ;;00087-0543-01
 ;;9002226.02101,"737,00087-0544-01 ",.01)
 ;;00087-0544-01
 ;;9002226.02101,"737,00087-0544-01 ",.02)
 ;;00087-0544-01
 ;;9002226.02101,"737,00182-1055-01 ",.01)
 ;;00182-1055-01
 ;;9002226.02101,"737,00182-1055-01 ",.02)
 ;;00182-1055-01
 ;;9002226.02101,"737,00182-1055-10 ",.01)
 ;;00182-1055-10
 ;;9002226.02101,"737,00182-1055-10 ",.02)
 ;;00182-1055-10
 ;;9002226.02101,"737,00182-1056-01 ",.01)
 ;;00182-1056-01
 ;;9002226.02101,"737,00182-1056-01 ",.02)
 ;;00182-1056-01
 ;;9002226.02101,"737,00182-1056-10 ",.01)
 ;;00182-1056-10
 ;;9002226.02101,"737,00182-1056-10 ",.02)
 ;;00182-1056-10
 ;;9002226.02101,"737,00182-1568-89 ",.01)
 ;;00182-1568-89
 ;;9002226.02101,"737,00182-1568-89 ",.02)
 ;;00182-1568-89
 ;;9002226.02101,"737,00182-1569-89 ",.01)
 ;;00182-1569-89
 ;;9002226.02101,"737,00182-1569-89 ",.02)
 ;;00182-1569-89
 ;;9002226.02101,"737,00182-1570-89 ",.01)
 ;;00182-1570-89
 ;;9002226.02101,"737,00182-1570-89 ",.02)
 ;;00182-1570-89
 ;;9002226.02101,"737,00185-0530-01 ",.01)
 ;;00185-0530-01
 ;;9002226.02101,"737,00185-0530-01 ",.02)
 ;;00185-0530-01
 ;;9002226.02101,"737,00185-0530-10 ",.01)
 ;;00185-0530-10
 ;;9002226.02101,"737,00185-0530-10 ",.02)
 ;;00185-0530-10
 ;;9002226.02101,"737,00185-0531-01 ",.01)
 ;;00185-0531-01
 ;;9002226.02101,"737,00185-0531-01 ",.02)
 ;;00185-0531-01
 ;;9002226.02101,"737,00185-0531-10 ",.01)
 ;;00185-0531-10
 ;;9002226.02101,"737,00185-0531-10 ",.02)
 ;;00185-0531-10
 ;;9002226.02101,"737,00223-0837-01 ",.01)
 ;;00223-0837-01
 ;;9002226.02101,"737,00223-0837-01 ",.02)
 ;;00223-0837-01
 ;;9002226.02101,"737,00223-0837-02 ",.01)
 ;;00223-0837-02
 ;;9002226.02101,"737,00223-0837-02 ",.02)
 ;;00223-0837-02
 ;;9002226.02101,"737,00228-2183-10 ",.01)
 ;;00228-2183-10
 ;;9002226.02101,"737,00228-2183-10 ",.02)
 ;;00228-2183-10
 ;;9002226.02101,"737,00228-2183-96 ",.01)
 ;;00228-2183-96
 ;;9002226.02101,"737,00228-2183-96 ",.02)
 ;;00228-2183-96
 ;;9002226.02101,"737,00228-2185-10 ",.01)
 ;;00228-2185-10
 ;;9002226.02101,"737,00228-2185-10 ",.02)
 ;;00228-2185-10
 ;;9002226.02101,"737,00228-2185-96 ",.01)
 ;;00228-2185-96
 ;;9002226.02101,"737,00228-2185-96 ",.02)
 ;;00228-2185-96
 ;;9002226.02101,"737,00228-2193-10 ",.01)
 ;;00228-2193-10
 ;;9002226.02101,"737,00228-2193-10 ",.02)
 ;;00228-2193-10
 ;;9002226.02101,"737,00228-2193-96 ",.01)
 ;;00228-2193-96
 ;;9002226.02101,"737,00228-2193-96 ",.02)
 ;;00228-2193-96
 ;;9002226.02101,"737,00302-2290-01 ",.01)
 ;;00302-2290-01
