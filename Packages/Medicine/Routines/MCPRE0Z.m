MCPRE0Z ;HISC/DAD-DD CLEAN UP ;7/25/96  12:22
 ;;2.3;Medicine;;09/13/1996
 ;
 N DATA,DIU,LOOP,VERSION,TEXT
 S TEXT(1)=""
 S TEXT(2)="Killing the Medicine data dictionaries."
 D MES^XPDUTL(.TEXT) K TEXT
 ;
 S VERSION=$P($G(^XTMP("MC","VER")),U)
 F LOOP=1:1 S DATA=$P($T(DD+LOOP),";",3) Q:DATA=""  D
 . S DIU=$P(DATA,U)
 . S DIU(0)=$S(VERSION<2:"DT",DIU=690.2:"DT",DIU=697.3:"DT",1:"T")
 . I $$VFILE^DILFD(DIU) D EN^DIU2 K DIU
 . Q
 Q
DD ;;File#
 ;;690
 ;;690.1
 ;;690.2
 ;;690.5
 ;;690.99
 ;;691
 ;;691.1
 ;;691.5
 ;;691.6
 ;;691.7
 ;;691.8
 ;;691.9
 ;;692
 ;;693
 ;;693.2
 ;;693.3
 ;;693.5
 ;;693.6
 ;;694
 ;;694.1
 ;;694.5
 ;;694.8
 ;;695
 ;;695.1
 ;;695.3
 ;;695.4
 ;;695.5
 ;;695.6
 ;;695.8
 ;;695.9
 ;;696
 ;;696.1
 ;;696.2
 ;;696.3
 ;;696.4
 ;;696.5
 ;;696.7
 ;;696.9
 ;;697
 ;;697.1
 ;;697.2
 ;;697.3
 ;;697.5
 ;;698
 ;;698.1
 ;;698.2
 ;;698.3
 ;;698.4
 ;;698.6
 ;;698.9
 ;;699
 ;;699.48
 ;;699.5
 ;;699.55
 ;;699.57
 ;;699.6
 ;;699.65
 ;;699.7
 ;;699.81
 ;;699.82
 ;;699.83
 ;;699.84
 ;;699.85
 ;;699.86
 ;;699.88
 ;;699.9
 ;;700
 ;;700.1
 ;;700.2
 ;;700.5
 ;;701
