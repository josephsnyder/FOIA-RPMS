BGP21J9 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"67544-0566-94 ")
 ;;1182
 ;;21,"67544-0613-53 ")
 ;;1183
 ;;21,"67544-0613-60 ")
 ;;1184
 ;;21,"67544-0613-70 ")
 ;;1185
 ;;21,"67544-0613-80 ")
 ;;1186
 ;;21,"67544-0613-90 ")
 ;;1187
 ;;21,"67544-0613-92 ")
 ;;1188
 ;;21,"67544-0613-94 ")
 ;;1189
 ;;21,"67544-0643-80 ")
 ;;1190
 ;;21,"67544-0643-94 ")
 ;;1191
 ;;21,"67544-0653-53 ")
 ;;1192
 ;;21,"67544-0653-60 ")
 ;;1193
 ;;21,"67544-0653-70 ")
 ;;1194
 ;;21,"67544-0653-80 ")
 ;;1195
 ;;21,"67544-0653-90 ")
 ;;1196
 ;;21,"67544-0653-92 ")
 ;;1197
 ;;21,"67544-0653-94 ")
 ;;1198
 ;;21,"67544-0661-41 ")
 ;;926
 ;;21,"67544-0661-81 ")
 ;;927
 ;;21,"67544-0751-60 ")
 ;;507
 ;;21,"67544-0751-80 ")
 ;;508
 ;;21,"67544-0756-60 ")
 ;;661
 ;;21,"67544-0756-80 ")
 ;;662
 ;;21,"67544-0808-60 ")
 ;;742
 ;;21,"67544-0875-60 ")
 ;;996
 ;;21,"67544-0875-80 ")
 ;;997
 ;;21,"67544-0927-60 ")
 ;;937
 ;;21,"67544-1129-70 ")
 ;;180
 ;;21,"68071-0028-30 ")
 ;;181
 ;;21,"68071-0028-60 ")
 ;;182
 ;;21,"68084-0111-01 ")
 ;;801
 ;;21,"68084-0111-11 ")
 ;;802
 ;;21,"68084-0112-01 ")
 ;;743
 ;;21,"68084-0112-11 ")
 ;;744
 ;;21,"68084-0136-01 ")
 ;;65
 ;;21,"68084-0136-11 ")
 ;;66
 ;;21,"68084-0137-01 ")
 ;;111
 ;;21,"68084-0137-11 ")
 ;;112
 ;;21,"68084-0138-01 ")
 ;;183
 ;;21,"68084-0138-11 ")
 ;;184
 ;;21,"68084-0295-11 ")
 ;;764
 ;;21,"68084-0295-21 ")
 ;;765
 ;;21,"68084-0326-01 ")
 ;;319
 ;;21,"68084-0326-11 ")
 ;;320
 ;;21,"68084-0327-01 ")
 ;;378
 ;;21,"68084-0327-11 ")
 ;;379
 ;;21,"68115-0154-30 ")
 ;;519
 ;;21,"68115-0154-60 ")
 ;;520
 ;;21,"68115-0155-30 ")
 ;;674
 ;;21,"68115-0155-60 ")
 ;;675
 ;;21,"68115-0155-90 ")
 ;;676
 ;;21,"68115-0156-30 ")
 ;;748
 ;;21,"68115-0157-30 ")
 ;;806
 ;;21,"68115-0158-30 ")
 ;;115
 ;;21,"68115-0158-60 ")
 ;;116
 ;;21,"68115-0159-30 ")
 ;;189
 ;;21,"68115-0159-60 ")
 ;;190
 ;;21,"68115-0160-30 ")
 ;;1003
 ;;21,"68115-0161-30 ")
 ;;1211
 ;;21,"68115-0161-60 ")
 ;;1212
 ;;21,"68115-0616-00 ")
 ;;807
 ;;21,"68115-0622-00 ")
 ;;888
 ;;21,"68115-0840-00 ")
 ;;382
 ;;21,"68258-1012-01 ")
 ;;671
 ;;21,"68258-1013-01 ")
 ;;516
 ;;21,"68258-1014-01 ")
 ;;1208
 ;;21,"68258-1051-01 ")
 ;;746
 ;;21,"68645-0150-54 ")
 ;;663
 ;;21,"68645-0151-59 ")
 ;;509
 ;;21,"68645-0210-54 ")
 ;;998
 ;;21,"68645-0211-54 ")
 ;;1199
 ;;9002226,1199,.01)
 ;;BGP PQA SULFONYLUREA NDC
 ;;9002226,1199,.02)
 ;;@
 ;;9002226,1199,.04)
 ;;n
 ;;9002226,1199,.06)
 ;;@
 ;;9002226,1199,.08)
 ;;@
 ;;9002226,1199,.09)
 ;;@
 ;;9002226,1199,.11)
 ;;@
 ;;9002226,1199,.12)
 ;;@
 ;;9002226,1199,.13)
 ;;1
 ;;9002226,1199,.14)
 ;;@
 ;;9002226,1199,.15)
 ;;@
 ;;9002226,1199,.16)
 ;;@
 ;;9002226,1199,.17)
 ;;@
 ;;9002226,1199,3101)
 ;;@
 ;;9002226.02101,"1199,00007-3148-13 ",.01)
 ;;00007-3148-13
 ;;9002226.02101,"1199,00007-3148-13 ",.02)
 ;;00007-3148-13
 ;;9002226.02101,"1199,00007-3149-13 ",.01)
 ;;00007-3149-13
 ;;9002226.02101,"1199,00007-3149-13 ",.02)
 ;;00007-3149-13
 ;;9002226.02101,"1199,00007-3151-13 ",.01)
 ;;00007-3151-13
 ;;9002226.02101,"1199,00007-3151-13 ",.02)
 ;;00007-3151-13
 ;;9002226.02101,"1199,00007-3152-13 ",.01)
 ;;00007-3152-13
 ;;9002226.02101,"1199,00007-3152-13 ",.02)
 ;;00007-3152-13
 ;;9002226.02101,"1199,00007-3153-13 ",.01)
 ;;00007-3153-13
 ;;9002226.02101,"1199,00007-3153-13 ",.02)
 ;;00007-3153-13
 ;;9002226.02101,"1199,00009-0070-02 ",.01)
 ;;00009-0070-02
 ;;9002226.02101,"1199,00009-0070-02 ",.02)
 ;;00009-0070-02
 ;;9002226.02101,"1199,00009-0114-04 ",.01)
 ;;00009-0114-04
 ;;9002226.02101,"1199,00009-0114-04 ",.02)
 ;;00009-0114-04
 ;;9002226.02101,"1199,00009-0114-05 ",.01)
 ;;00009-0114-05
 ;;9002226.02101,"1199,00009-0114-05 ",.02)
 ;;00009-0114-05
 ;;9002226.02101,"1199,00009-0131-01 ",.01)
 ;;00009-0131-01
 ;;9002226.02101,"1199,00009-0131-01 ",.02)
 ;;00009-0131-01
 ;;9002226.02101,"1199,00009-0141-01 ",.01)
 ;;00009-0141-01
 ;;9002226.02101,"1199,00009-0141-01 ",.02)
 ;;00009-0141-01
 ;;9002226.02101,"1199,00009-0141-02 ",.01)
 ;;00009-0141-02
 ;;9002226.02101,"1199,00009-0141-02 ",.02)
 ;;00009-0141-02
 ;;9002226.02101,"1199,00009-0171-03 ",.01)
 ;;00009-0171-03
 ;;9002226.02101,"1199,00009-0171-03 ",.02)
 ;;00009-0171-03
 ;;9002226.02101,"1199,00009-0171-05 ",.01)
 ;;00009-0171-05
 ;;9002226.02101,"1199,00009-0171-05 ",.02)
 ;;00009-0171-05
 ;;9002226.02101,"1199,00009-0171-06 ",.01)
 ;;00009-0171-06
 ;;9002226.02101,"1199,00009-0171-06 ",.02)
 ;;00009-0171-06
 ;;9002226.02101,"1199,00009-0171-07 ",.01)
 ;;00009-0171-07
 ;;9002226.02101,"1199,00009-0171-07 ",.02)
 ;;00009-0171-07
 ;;9002226.02101,"1199,00009-0341-01 ",.01)
 ;;00009-0341-01
 ;;9002226.02101,"1199,00009-0341-01 ",.02)
 ;;00009-0341-01
 ;;9002226.02101,"1199,00009-0341-02 ",.01)
 ;;00009-0341-02
 ;;9002226.02101,"1199,00009-0341-02 ",.02)
 ;;00009-0341-02
 ;;9002226.02101,"1199,00009-0352-01 ",.01)
 ;;00009-0352-01
 ;;9002226.02101,"1199,00009-0352-01 ",.02)
 ;;00009-0352-01
 ;;9002226.02101,"1199,00009-0352-02 ",.01)
 ;;00009-0352-02
 ;;9002226.02101,"1199,00009-0352-02 ",.02)
 ;;00009-0352-02
