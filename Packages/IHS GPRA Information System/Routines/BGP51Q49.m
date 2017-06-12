BGP51Q49 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,67544-0454-30 ",.01)
 ;;67544-0454-30
 ;;9002226.02101,"1729,67544-0454-30 ",.02)
 ;;67544-0454-30
 ;;9002226.02101,"1729,67544-0454-40 ",.01)
 ;;67544-0454-40
 ;;9002226.02101,"1729,67544-0454-40 ",.02)
 ;;67544-0454-40
 ;;9002226.02101,"1729,67544-0454-45 ",.01)
 ;;67544-0454-45
 ;;9002226.02101,"1729,67544-0454-45 ",.02)
 ;;67544-0454-45
 ;;9002226.02101,"1729,67544-0454-60 ",.01)
 ;;67544-0454-60
 ;;9002226.02101,"1729,67544-0454-60 ",.02)
 ;;67544-0454-60
 ;;9002226.02101,"1729,67544-0489-15 ",.01)
 ;;67544-0489-15
 ;;9002226.02101,"1729,67544-0489-15 ",.02)
 ;;67544-0489-15
 ;;9002226.02101,"1729,67544-0489-30 ",.01)
 ;;67544-0489-30
 ;;9002226.02101,"1729,67544-0489-30 ",.02)
 ;;67544-0489-30
 ;;9002226.02101,"1729,67544-0489-60 ",.01)
 ;;67544-0489-60
 ;;9002226.02101,"1729,67544-0489-60 ",.02)
 ;;67544-0489-60
 ;;9002226.02101,"1729,67544-0678-60 ",.01)
 ;;67544-0678-60
 ;;9002226.02101,"1729,67544-0678-60 ",.02)
 ;;67544-0678-60
 ;;9002226.02101,"1729,67544-0992-30 ",.01)
 ;;67544-0992-30
 ;;9002226.02101,"1729,67544-0992-30 ",.02)
 ;;67544-0992-30
 ;;9002226.02101,"1729,67544-0997-30 ",.01)
 ;;67544-0997-30
 ;;9002226.02101,"1729,67544-0997-30 ",.02)
 ;;67544-0997-30
 ;;9002226.02101,"1729,67544-0999-60 ",.01)
 ;;67544-0999-60
 ;;9002226.02101,"1729,67544-0999-60 ",.02)
 ;;67544-0999-60
 ;;9002226.02101,"1729,67544-0999-80 ",.01)
 ;;67544-0999-80
 ;;9002226.02101,"1729,67544-0999-80 ",.02)
 ;;67544-0999-80
 ;;9002226.02101,"1729,67544-1010-30 ",.01)
 ;;67544-1010-30
 ;;9002226.02101,"1729,67544-1010-30 ",.02)
 ;;67544-1010-30
 ;;9002226.02101,"1729,67544-1010-60 ",.01)
 ;;67544-1010-60
 ;;9002226.02101,"1729,67544-1010-60 ",.02)
 ;;67544-1010-60
 ;;9002226.02101,"1729,67544-1038-30 ",.01)
 ;;67544-1038-30
 ;;9002226.02101,"1729,67544-1038-30 ",.02)
 ;;67544-1038-30
 ;;9002226.02101,"1729,67544-1038-45 ",.01)
 ;;67544-1038-45
 ;;9002226.02101,"1729,67544-1038-45 ",.02)
 ;;67544-1038-45
 ;;9002226.02101,"1729,67544-1042-45 ",.01)
 ;;67544-1042-45
 ;;9002226.02101,"1729,67544-1042-45 ",.02)
 ;;67544-1042-45
 ;;9002226.02101,"1729,67544-1042-60 ",.01)
 ;;67544-1042-60
 ;;9002226.02101,"1729,67544-1042-60 ",.02)
 ;;67544-1042-60
 ;;9002226.02101,"1729,67544-1054-30 ",.01)
 ;;67544-1054-30
 ;;9002226.02101,"1729,67544-1054-30 ",.02)
 ;;67544-1054-30
 ;;9002226.02101,"1729,67544-1057-30 ",.01)
 ;;67544-1057-30
 ;;9002226.02101,"1729,67544-1057-30 ",.02)
 ;;67544-1057-30
 ;;9002226.02101,"1729,67544-1082-45 ",.01)
 ;;67544-1082-45
 ;;9002226.02101,"1729,67544-1082-45 ",.02)
 ;;67544-1082-45
 ;;9002226.02101,"1729,67544-1105-30 ",.01)
 ;;67544-1105-30
 ;;9002226.02101,"1729,67544-1105-30 ",.02)
 ;;67544-1105-30
 ;;9002226.02101,"1729,67544-1105-45 ",.01)
 ;;67544-1105-45
 ;;9002226.02101,"1729,67544-1105-45 ",.02)
 ;;67544-1105-45
 ;;9002226.02101,"1729,67544-1348-45 ",.01)
 ;;67544-1348-45
 ;;9002226.02101,"1729,67544-1348-45 ",.02)
 ;;67544-1348-45
 ;;9002226.02101,"1729,67544-1348-60 ",.01)
 ;;67544-1348-60
 ;;9002226.02101,"1729,67544-1348-60 ",.02)
 ;;67544-1348-60
 ;;9002226.02101,"1729,67544-1350-45 ",.01)
 ;;67544-1350-45
 ;;9002226.02101,"1729,67544-1350-45 ",.02)
 ;;67544-1350-45
 ;;9002226.02101,"1729,67544-1350-60 ",.01)
 ;;67544-1350-60
 ;;9002226.02101,"1729,67544-1350-60 ",.02)
 ;;67544-1350-60
 ;;9002226.02101,"1729,67544-1372-45 ",.01)
 ;;67544-1372-45
 ;;9002226.02101,"1729,67544-1372-45 ",.02)
 ;;67544-1372-45
 ;;9002226.02101,"1729,67544-1386-30 ",.01)
 ;;67544-1386-30
 ;;9002226.02101,"1729,67544-1386-30 ",.02)
 ;;67544-1386-30
 ;;9002226.02101,"1729,67544-1386-60 ",.01)
 ;;67544-1386-60
 ;;9002226.02101,"1729,67544-1386-60 ",.02)
 ;;67544-1386-60
 ;;9002226.02101,"1729,67544-1387-45 ",.01)
 ;;67544-1387-45
 ;;9002226.02101,"1729,67544-1387-45 ",.02)
 ;;67544-1387-45
 ;;9002226.02101,"1729,68001-0130-00 ",.01)
 ;;68001-0130-00
 ;;9002226.02101,"1729,68001-0130-00 ",.02)
 ;;68001-0130-00
 ;;9002226.02101,"1729,68001-0131-00 ",.01)
 ;;68001-0131-00
 ;;9002226.02101,"1729,68001-0131-00 ",.02)
 ;;68001-0131-00
 ;;9002226.02101,"1729,68001-0132-00 ",.01)
 ;;68001-0132-00
 ;;9002226.02101,"1729,68001-0132-00 ",.02)
 ;;68001-0132-00
 ;;9002226.02101,"1729,68001-0133-00 ",.01)
 ;;68001-0133-00
 ;;9002226.02101,"1729,68001-0133-00 ",.02)
 ;;68001-0133-00
 ;;9002226.02101,"1729,68001-0134-00 ",.01)
 ;;68001-0134-00
 ;;9002226.02101,"1729,68001-0134-00 ",.02)
 ;;68001-0134-00
 ;;9002226.02101,"1729,68001-0135-00 ",.01)
 ;;68001-0135-00
 ;;9002226.02101,"1729,68001-0135-00 ",.02)
 ;;68001-0135-00
 ;;9002226.02101,"1729,68001-0140-04 ",.01)
 ;;68001-0140-04
 ;;9002226.02101,"1729,68001-0140-04 ",.02)
 ;;68001-0140-04
 ;;9002226.02101,"1729,68001-0141-00 ",.01)
 ;;68001-0141-00
 ;;9002226.02101,"1729,68001-0141-00 ",.02)
 ;;68001-0141-00
 ;;9002226.02101,"1729,68001-0141-03 ",.01)
 ;;68001-0141-03
 ;;9002226.02101,"1729,68001-0141-03 ",.02)
 ;;68001-0141-03
 ;;9002226.02101,"1729,68001-0142-00 ",.01)
 ;;68001-0142-00
 ;;9002226.02101,"1729,68001-0142-00 ",.02)
 ;;68001-0142-00
 ;;9002226.02101,"1729,68001-0142-03 ",.01)
 ;;68001-0142-03
 ;;9002226.02101,"1729,68001-0142-03 ",.02)
 ;;68001-0142-03
 ;;9002226.02101,"1729,68001-0143-00 ",.01)
 ;;68001-0143-00
 ;;9002226.02101,"1729,68001-0143-00 ",.02)
 ;;68001-0143-00
 ;;9002226.02101,"1729,68001-0143-03 ",.01)
 ;;68001-0143-03
 ;;9002226.02101,"1729,68001-0143-03 ",.02)
 ;;68001-0143-03
 ;;9002226.02101,"1729,68001-0186-05 ",.01)
 ;;68001-0186-05
 ;;9002226.02101,"1729,68001-0186-05 ",.02)
 ;;68001-0186-05
 ;;9002226.02101,"1729,68001-0187-05 ",.01)
 ;;68001-0187-05
 ;;9002226.02101,"1729,68001-0187-05 ",.02)
 ;;68001-0187-05
 ;;9002226.02101,"1729,68001-0188-05 ",.01)
 ;;68001-0188-05
 ;;9002226.02101,"1729,68001-0188-05 ",.02)
 ;;68001-0188-05
 ;;9002226.02101,"1729,68001-0189-05 ",.01)
 ;;68001-0189-05
 ;;9002226.02101,"1729,68001-0189-05 ",.02)
 ;;68001-0189-05
 ;;9002226.02101,"1729,68001-0207-00 ",.01)
 ;;68001-0207-00
 ;;9002226.02101,"1729,68001-0207-00 ",.02)
 ;;68001-0207-00
 ;;9002226.02101,"1729,68001-0207-08 ",.01)
 ;;68001-0207-08
 ;;9002226.02101,"1729,68001-0207-08 ",.02)
 ;;68001-0207-08
 ;;9002226.02101,"1729,68001-0208-00 ",.01)
 ;;68001-0208-00
 ;;9002226.02101,"1729,68001-0208-00 ",.02)
 ;;68001-0208-00
 ;;9002226.02101,"1729,68001-0208-08 ",.01)
 ;;68001-0208-08
 ;;9002226.02101,"1729,68001-0208-08 ",.02)
 ;;68001-0208-08
 ;;9002226.02101,"1729,68001-0209-00 ",.01)
 ;;68001-0209-00
 ;;9002226.02101,"1729,68001-0209-00 ",.02)
 ;;68001-0209-00
 ;;9002226.02101,"1729,68001-0209-08 ",.01)
 ;;68001-0209-08
 ;;9002226.02101,"1729,68001-0209-08 ",.02)
 ;;68001-0209-08
 ;;9002226.02101,"1729,68001-0210-00 ",.01)
 ;;68001-0210-00
 ;;9002226.02101,"1729,68001-0210-00 ",.02)
 ;;68001-0210-00
 ;;9002226.02101,"1729,68001-0210-08 ",.01)
 ;;68001-0210-08
 ;;9002226.02101,"1729,68001-0210-08 ",.02)
 ;;68001-0210-08
 ;;9002226.02101,"1729,68001-0211-00 ",.01)
 ;;68001-0211-00
 ;;9002226.02101,"1729,68001-0211-00 ",.02)
 ;;68001-0211-00
 ;;9002226.02101,"1729,68001-0211-08 ",.01)
 ;;68001-0211-08
 ;;9002226.02101,"1729,68001-0211-08 ",.02)
 ;;68001-0211-08
 ;;9002226.02101,"1729,68001-0212-00 ",.01)
 ;;68001-0212-00
 ;;9002226.02101,"1729,68001-0212-00 ",.02)
 ;;68001-0212-00
 ;;9002226.02101,"1729,68071-0026-30 ",.01)
 ;;68071-0026-30
 ;;9002226.02101,"1729,68071-0026-30 ",.02)
 ;;68071-0026-30
 ;;9002226.02101,"1729,68071-0026-60 ",.01)
 ;;68071-0026-60
 ;;9002226.02101,"1729,68071-0026-60 ",.02)
 ;;68071-0026-60
 ;;9002226.02101,"1729,68071-0026-90 ",.01)
 ;;68071-0026-90
 ;;9002226.02101,"1729,68071-0026-90 ",.02)
 ;;68071-0026-90
 ;;9002226.02101,"1729,68071-0146-30 ",.01)
 ;;68071-0146-30
 ;;9002226.02101,"1729,68071-0146-30 ",.02)
 ;;68071-0146-30
 ;;9002226.02101,"1729,68071-0146-60 ",.01)
 ;;68071-0146-60
 ;;9002226.02101,"1729,68071-0146-60 ",.02)
 ;;68071-0146-60
 ;;9002226.02101,"1729,68071-0146-90 ",.01)
 ;;68071-0146-90
 ;;9002226.02101,"1729,68071-0146-90 ",.02)
 ;;68071-0146-90
 ;;9002226.02101,"1729,68071-0146-91 ",.01)
 ;;68071-0146-91
 ;;9002226.02101,"1729,68071-0146-91 ",.02)
 ;;68071-0146-91
 ;;9002226.02101,"1729,68071-0153-30 ",.01)
 ;;68071-0153-30
 ;;9002226.02101,"1729,68071-0153-30 ",.02)
 ;;68071-0153-30
 ;;9002226.02101,"1729,68071-0153-60 ",.01)
 ;;68071-0153-60
 ;;9002226.02101,"1729,68071-0153-60 ",.02)
 ;;68071-0153-60
 ;;9002226.02101,"1729,68071-0153-90 ",.01)
 ;;68071-0153-90
 ;;9002226.02101,"1729,68071-0153-90 ",.02)
 ;;68071-0153-90
 ;;9002226.02101,"1729,68071-0785-30 ",.01)
 ;;68071-0785-30
 ;;9002226.02101,"1729,68071-0785-30 ",.02)
 ;;68071-0785-30
 ;;9002226.02101,"1729,68071-0785-60 ",.01)
 ;;68071-0785-60
 ;;9002226.02101,"1729,68071-0785-60 ",.02)
 ;;68071-0785-60
 ;;9002226.02101,"1729,68071-0786-30 ",.01)
 ;;68071-0786-30
 ;;9002226.02101,"1729,68071-0786-30 ",.02)
 ;;68071-0786-30
 ;;9002226.02101,"1729,68071-0786-60 ",.01)
 ;;68071-0786-60
 ;;9002226.02101,"1729,68071-0786-60 ",.02)
 ;;68071-0786-60
 ;;9002226.02101,"1729,68071-0787-60 ",.01)
 ;;68071-0787-60
 ;;9002226.02101,"1729,68071-0787-60 ",.02)
 ;;68071-0787-60
 ;;9002226.02101,"1729,68071-0857-30 ",.01)
 ;;68071-0857-30
 ;;9002226.02101,"1729,68071-0857-30 ",.02)
 ;;68071-0857-30
 ;;9002226.02101,"1729,68071-0884-30 ",.01)
 ;;68071-0884-30
 ;;9002226.02101,"1729,68071-0884-30 ",.02)
 ;;68071-0884-30
 ;;9002226.02101,"1729,68071-1517-09 ",.01)
 ;;68071-1517-09
 ;;9002226.02101,"1729,68071-1517-09 ",.02)
 ;;68071-1517-09
 ;;9002226.02101,"1729,68084-0007-11 ",.01)
 ;;68084-0007-11
 ;;9002226.02101,"1729,68084-0007-11 ",.02)
 ;;68084-0007-11
 ;;9002226.02101,"1729,68084-0007-21 ",.01)
 ;;68084-0007-21
 ;;9002226.02101,"1729,68084-0007-21 ",.02)
 ;;68084-0007-21
 ;;9002226.02101,"1729,68084-0060-01 ",.01)
 ;;68084-0060-01
 ;;9002226.02101,"1729,68084-0060-01 ",.02)
 ;;68084-0060-01
 ;;9002226.02101,"1729,68084-0060-11 ",.01)
 ;;68084-0060-11
 ;;9002226.02101,"1729,68084-0060-11 ",.02)
 ;;68084-0060-11
 ;;9002226.02101,"1729,68084-0061-01 ",.01)
 ;;68084-0061-01
 ;;9002226.02101,"1729,68084-0061-01 ",.02)
 ;;68084-0061-01
 ;;9002226.02101,"1729,68084-0061-11 ",.01)
 ;;68084-0061-11
 ;;9002226.02101,"1729,68084-0061-11 ",.02)
 ;;68084-0061-11
 ;;9002226.02101,"1729,68084-0062-01 ",.01)
 ;;68084-0062-01
 ;;9002226.02101,"1729,68084-0062-01 ",.02)
 ;;68084-0062-01
 ;;9002226.02101,"1729,68084-0062-11 ",.01)
 ;;68084-0062-11
 ;;9002226.02101,"1729,68084-0062-11 ",.02)
 ;;68084-0062-11
 ;;9002226.02101,"1729,68084-0064-01 ",.01)
 ;;68084-0064-01
 ;;9002226.02101,"1729,68084-0064-01 ",.02)
 ;;68084-0064-01
 ;;9002226.02101,"1729,68084-0064-11 ",.01)
 ;;68084-0064-11
 ;;9002226.02101,"1729,68084-0064-11 ",.02)
 ;;68084-0064-11
 ;;9002226.02101,"1729,68084-0196-01 ",.01)
 ;;68084-0196-01
 ;;9002226.02101,"1729,68084-0196-01 ",.02)
 ;;68084-0196-01
 ;;9002226.02101,"1729,68084-0196-11 ",.01)
 ;;68084-0196-11
 ;;9002226.02101,"1729,68084-0196-11 ",.02)
 ;;68084-0196-11
 ;;9002226.02101,"1729,68084-0197-01 ",.01)
 ;;68084-0197-01
 ;;9002226.02101,"1729,68084-0197-01 ",.02)
 ;;68084-0197-01
 ;;9002226.02101,"1729,68084-0197-11 ",.01)
 ;;68084-0197-11
 ;;9002226.02101,"1729,68084-0197-11 ",.02)
 ;;68084-0197-11
 ;;9002226.02101,"1729,68084-0198-01 ",.01)
 ;;68084-0198-01
 ;;9002226.02101,"1729,68084-0198-01 ",.02)
 ;;68084-0198-01
 ;;9002226.02101,"1729,68084-0198-11 ",.01)
 ;;68084-0198-11
 ;;9002226.02101,"1729,68084-0198-11 ",.02)
 ;;68084-0198-11
 ;;9002226.02101,"1729,68084-0199-01 ",.01)
 ;;68084-0199-01
 ;;9002226.02101,"1729,68084-0199-01 ",.02)
 ;;68084-0199-01
 ;;9002226.02101,"1729,68084-0199-11 ",.01)
 ;;68084-0199-11
 ;;9002226.02101,"1729,68084-0199-11 ",.02)
 ;;68084-0199-11
 ;;9002226.02101,"1729,68084-0266-01 ",.01)
 ;;68084-0266-01
 ;;9002226.02101,"1729,68084-0266-01 ",.02)
 ;;68084-0266-01
 ;;9002226.02101,"1729,68084-0266-11 ",.01)
 ;;68084-0266-11
 ;;9002226.02101,"1729,68084-0266-11 ",.02)
 ;;68084-0266-11
 ;;9002226.02101,"1729,68084-0267-01 ",.01)
 ;;68084-0267-01
 ;;9002226.02101,"1729,68084-0267-01 ",.02)
 ;;68084-0267-01
 ;;9002226.02101,"1729,68084-0267-11 ",.01)
 ;;68084-0267-11
 ;;9002226.02101,"1729,68084-0267-11 ",.02)
 ;;68084-0267-11
 ;;9002226.02101,"1729,68084-0268-01 ",.01)
 ;;68084-0268-01
 ;;9002226.02101,"1729,68084-0268-01 ",.02)
 ;;68084-0268-01
 ;;9002226.02101,"1729,68084-0268-11 ",.01)
 ;;68084-0268-11
 ;;9002226.02101,"1729,68084-0268-11 ",.02)
 ;;68084-0268-11
 ;;9002226.02101,"1729,68084-0294-11 ",.01)
 ;;68084-0294-11
 ;;9002226.02101,"1729,68084-0294-11 ",.02)
 ;;68084-0294-11
 ;;9002226.02101,"1729,68084-0294-21 ",.01)
 ;;68084-0294-21
 ;;9002226.02101,"1729,68084-0294-21 ",.02)
 ;;68084-0294-21
 ;;9002226.02101,"1729,68084-0346-01 ",.01)
 ;;68084-0346-01
 ;;9002226.02101,"1729,68084-0346-01 ",.02)
 ;;68084-0346-01
 ;;9002226.02101,"1729,68084-0346-11 ",.01)
 ;;68084-0346-11
 ;;9002226.02101,"1729,68084-0346-11 ",.02)
 ;;68084-0346-11
 ;;9002226.02101,"1729,68084-0347-01 ",.01)
 ;;68084-0347-01
 ;;9002226.02101,"1729,68084-0347-01 ",.02)
 ;;68084-0347-01
 ;;9002226.02101,"1729,68084-0347-11 ",.01)
 ;;68084-0347-11
 ;;9002226.02101,"1729,68084-0347-11 ",.02)
 ;;68084-0347-11
 ;;9002226.02101,"1729,68084-0348-01 ",.01)
 ;;68084-0348-01
 ;;9002226.02101,"1729,68084-0348-01 ",.02)
 ;;68084-0348-01
 ;;9002226.02101,"1729,68084-0348-11 ",.01)
 ;;68084-0348-11
 ;;9002226.02101,"1729,68084-0348-11 ",.02)
 ;;68084-0348-11
 ;;9002226.02101,"1729,68084-0349-11 ",.01)
 ;;68084-0349-11
