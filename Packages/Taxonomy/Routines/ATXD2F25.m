ATXD2F25 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2015;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"374,S82.434A ",.01)
 ;;S82.434A
 ;;9002226.02101,"374,S82.434A ",.02)
 ;;S82.434A
 ;;9002226.02101,"374,S82.434A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.434B ",.01)
 ;;S82.434B
 ;;9002226.02101,"374,S82.434B ",.02)
 ;;S82.434B
 ;;9002226.02101,"374,S82.434B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.434C ",.01)
 ;;S82.434C
 ;;9002226.02101,"374,S82.434C ",.02)
 ;;S82.434C
 ;;9002226.02101,"374,S82.434C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.435A ",.01)
 ;;S82.435A
 ;;9002226.02101,"374,S82.435A ",.02)
 ;;S82.435A
 ;;9002226.02101,"374,S82.435A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.435B ",.01)
 ;;S82.435B
 ;;9002226.02101,"374,S82.435B ",.02)
 ;;S82.435B
 ;;9002226.02101,"374,S82.435B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.435C ",.01)
 ;;S82.435C
 ;;9002226.02101,"374,S82.435C ",.02)
 ;;S82.435C
 ;;9002226.02101,"374,S82.435C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.436A ",.01)
 ;;S82.436A
 ;;9002226.02101,"374,S82.436A ",.02)
 ;;S82.436A
 ;;9002226.02101,"374,S82.436A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.436B ",.01)
 ;;S82.436B
 ;;9002226.02101,"374,S82.436B ",.02)
 ;;S82.436B
 ;;9002226.02101,"374,S82.436B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.436C ",.01)
 ;;S82.436C
 ;;9002226.02101,"374,S82.436C ",.02)
 ;;S82.436C
 ;;9002226.02101,"374,S82.436C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.441A ",.01)
 ;;S82.441A
 ;;9002226.02101,"374,S82.441A ",.02)
 ;;S82.441A
 ;;9002226.02101,"374,S82.441A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.441B ",.01)
 ;;S82.441B
 ;;9002226.02101,"374,S82.441B ",.02)
 ;;S82.441B
 ;;9002226.02101,"374,S82.441B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.441C ",.01)
 ;;S82.441C
 ;;9002226.02101,"374,S82.441C ",.02)
 ;;S82.441C
 ;;9002226.02101,"374,S82.441C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.442A ",.01)
 ;;S82.442A
 ;;9002226.02101,"374,S82.442A ",.02)
 ;;S82.442A
 ;;9002226.02101,"374,S82.442A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.442B ",.01)
 ;;S82.442B
 ;;9002226.02101,"374,S82.442B ",.02)
 ;;S82.442B
 ;;9002226.02101,"374,S82.442B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.442C ",.01)
 ;;S82.442C
 ;;9002226.02101,"374,S82.442C ",.02)
 ;;S82.442C
 ;;9002226.02101,"374,S82.442C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.443A ",.01)
 ;;S82.443A
 ;;9002226.02101,"374,S82.443A ",.02)
 ;;S82.443A
 ;;9002226.02101,"374,S82.443A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.443B ",.01)
 ;;S82.443B
 ;;9002226.02101,"374,S82.443B ",.02)
 ;;S82.443B
 ;;9002226.02101,"374,S82.443B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.443C ",.01)
 ;;S82.443C
 ;;9002226.02101,"374,S82.443C ",.02)
 ;;S82.443C
 ;;9002226.02101,"374,S82.443C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.444A ",.01)
 ;;S82.444A
 ;;9002226.02101,"374,S82.444A ",.02)
 ;;S82.444A
 ;;9002226.02101,"374,S82.444A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.444B ",.01)
 ;;S82.444B
 ;;9002226.02101,"374,S82.444B ",.02)
 ;;S82.444B
 ;;9002226.02101,"374,S82.444B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.444C ",.01)
 ;;S82.444C
 ;;9002226.02101,"374,S82.444C ",.02)
 ;;S82.444C
 ;;9002226.02101,"374,S82.444C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.445A ",.01)
 ;;S82.445A
 ;;9002226.02101,"374,S82.445A ",.02)
 ;;S82.445A
 ;;9002226.02101,"374,S82.445A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.445B ",.01)
 ;;S82.445B
 ;;9002226.02101,"374,S82.445B ",.02)
 ;;S82.445B
 ;;9002226.02101,"374,S82.445B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.445C ",.01)
 ;;S82.445C
 ;;9002226.02101,"374,S82.445C ",.02)
 ;;S82.445C
 ;;9002226.02101,"374,S82.445C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.446A ",.01)
 ;;S82.446A
 ;;9002226.02101,"374,S82.446A ",.02)
 ;;S82.446A
 ;;9002226.02101,"374,S82.446A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.446B ",.01)
 ;;S82.446B
 ;;9002226.02101,"374,S82.446B ",.02)
 ;;S82.446B
 ;;9002226.02101,"374,S82.446B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.446C ",.01)
 ;;S82.446C
 ;;9002226.02101,"374,S82.446C ",.02)
 ;;S82.446C
 ;;9002226.02101,"374,S82.446C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.451A ",.01)
 ;;S82.451A
 ;;9002226.02101,"374,S82.451A ",.02)
 ;;S82.451A
 ;;9002226.02101,"374,S82.451A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.451B ",.01)
 ;;S82.451B
 ;;9002226.02101,"374,S82.451B ",.02)
 ;;S82.451B
 ;;9002226.02101,"374,S82.451B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.451C ",.01)
 ;;S82.451C
 ;;9002226.02101,"374,S82.451C ",.02)
 ;;S82.451C
 ;;9002226.02101,"374,S82.451C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.452A ",.01)
 ;;S82.452A
 ;;9002226.02101,"374,S82.452A ",.02)
 ;;S82.452A
 ;;9002226.02101,"374,S82.452A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.452B ",.01)
 ;;S82.452B
 ;;9002226.02101,"374,S82.452B ",.02)
 ;;S82.452B
 ;;9002226.02101,"374,S82.452B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.452C ",.01)
 ;;S82.452C
 ;;9002226.02101,"374,S82.452C ",.02)
 ;;S82.452C
 ;;9002226.02101,"374,S82.452C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.453A ",.01)
 ;;S82.453A
 ;;9002226.02101,"374,S82.453A ",.02)
 ;;S82.453A
 ;;9002226.02101,"374,S82.453A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.453B ",.01)
 ;;S82.453B
 ;;9002226.02101,"374,S82.453B ",.02)
 ;;S82.453B
 ;;9002226.02101,"374,S82.453B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.453C ",.01)
 ;;S82.453C
 ;;9002226.02101,"374,S82.453C ",.02)
 ;;S82.453C
 ;;9002226.02101,"374,S82.453C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.454A ",.01)
 ;;S82.454A
 ;;9002226.02101,"374,S82.454A ",.02)
 ;;S82.454A
 ;;9002226.02101,"374,S82.454A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.454B ",.01)
 ;;S82.454B
 ;;9002226.02101,"374,S82.454B ",.02)
 ;;S82.454B
 ;;9002226.02101,"374,S82.454B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.454C ",.01)
 ;;S82.454C
 ;;9002226.02101,"374,S82.454C ",.02)
 ;;S82.454C
 ;;9002226.02101,"374,S82.454C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.455A ",.01)
 ;;S82.455A
 ;;9002226.02101,"374,S82.455A ",.02)
 ;;S82.455A
 ;;9002226.02101,"374,S82.455A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.455B ",.01)
 ;;S82.455B
 ;;9002226.02101,"374,S82.455B ",.02)
 ;;S82.455B
 ;;9002226.02101,"374,S82.455B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.455C ",.01)
 ;;S82.455C
 ;;9002226.02101,"374,S82.455C ",.02)
 ;;S82.455C
 ;;9002226.02101,"374,S82.455C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.456A ",.01)
 ;;S82.456A
 ;;9002226.02101,"374,S82.456A ",.02)
 ;;S82.456A
 ;;9002226.02101,"374,S82.456A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.456B ",.01)
 ;;S82.456B
 ;;9002226.02101,"374,S82.456B ",.02)
 ;;S82.456B
 ;;9002226.02101,"374,S82.456B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.456C ",.01)
 ;;S82.456C
 ;;9002226.02101,"374,S82.456C ",.02)
 ;;S82.456C
 ;;9002226.02101,"374,S82.456C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.461A ",.01)
 ;;S82.461A
 ;;9002226.02101,"374,S82.461A ",.02)
 ;;S82.461A
 ;;9002226.02101,"374,S82.461A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.461B ",.01)
 ;;S82.461B
 ;;9002226.02101,"374,S82.461B ",.02)
 ;;S82.461B
 ;;9002226.02101,"374,S82.461B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.461C ",.01)
 ;;S82.461C
 ;;9002226.02101,"374,S82.461C ",.02)
 ;;S82.461C
 ;;9002226.02101,"374,S82.461C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.462A ",.01)
 ;;S82.462A
 ;;9002226.02101,"374,S82.462A ",.02)
 ;;S82.462A
 ;;9002226.02101,"374,S82.462A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.462B ",.01)
 ;;S82.462B
 ;;9002226.02101,"374,S82.462B ",.02)
 ;;S82.462B
 ;;9002226.02101,"374,S82.462B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.462C ",.01)
 ;;S82.462C
 ;;9002226.02101,"374,S82.462C ",.02)
 ;;S82.462C
 ;;9002226.02101,"374,S82.462C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.463A ",.01)
 ;;S82.463A
 ;;9002226.02101,"374,S82.463A ",.02)
 ;;S82.463A
 ;;9002226.02101,"374,S82.463A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.463B ",.01)
 ;;S82.463B
 ;;9002226.02101,"374,S82.463B ",.02)
 ;;S82.463B
 ;;9002226.02101,"374,S82.463B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.463C ",.01)
 ;;S82.463C
 ;;9002226.02101,"374,S82.463C ",.02)
 ;;S82.463C
 ;;9002226.02101,"374,S82.463C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.464A ",.01)
 ;;S82.464A
 ;;9002226.02101,"374,S82.464A ",.02)
 ;;S82.464A
 ;;9002226.02101,"374,S82.464A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.464B ",.01)
 ;;S82.464B
 ;;9002226.02101,"374,S82.464B ",.02)
 ;;S82.464B
 ;;9002226.02101,"374,S82.464B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.464C ",.01)
 ;;S82.464C
 ;;9002226.02101,"374,S82.464C ",.02)
 ;;S82.464C
 ;;9002226.02101,"374,S82.464C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.465A ",.01)
 ;;S82.465A
 ;;9002226.02101,"374,S82.465A ",.02)
 ;;S82.465A
 ;;9002226.02101,"374,S82.465A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.465B ",.01)
 ;;S82.465B
 ;;9002226.02101,"374,S82.465B ",.02)
 ;;S82.465B
 ;;9002226.02101,"374,S82.465B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.465C ",.01)
 ;;S82.465C
 ;;9002226.02101,"374,S82.465C ",.02)
 ;;S82.465C
 ;;9002226.02101,"374,S82.465C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.466A ",.01)
 ;;S82.466A
 ;;9002226.02101,"374,S82.466A ",.02)
 ;;S82.466A
 ;;9002226.02101,"374,S82.466A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.466B ",.01)
 ;;S82.466B
 ;;9002226.02101,"374,S82.466B ",.02)
 ;;S82.466B
 ;;9002226.02101,"374,S82.466B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.466C ",.01)
 ;;S82.466C
 ;;9002226.02101,"374,S82.466C ",.02)
 ;;S82.466C
 ;;9002226.02101,"374,S82.466C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.491A ",.01)
 ;;S82.491A
 ;;9002226.02101,"374,S82.491A ",.02)
 ;;S82.491A
 ;;9002226.02101,"374,S82.491A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.491B ",.01)
 ;;S82.491B
 ;;9002226.02101,"374,S82.491B ",.02)
 ;;S82.491B
 ;;9002226.02101,"374,S82.491B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.491C ",.01)
 ;;S82.491C
 ;;9002226.02101,"374,S82.491C ",.02)
 ;;S82.491C
 ;;9002226.02101,"374,S82.491C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.492A ",.01)
 ;;S82.492A
 ;;9002226.02101,"374,S82.492A ",.02)
 ;;S82.492A
 ;;9002226.02101,"374,S82.492A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.492B ",.01)
 ;;S82.492B
 ;;9002226.02101,"374,S82.492B ",.02)
 ;;S82.492B
 ;;9002226.02101,"374,S82.492B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.492C ",.01)
 ;;S82.492C
 ;;9002226.02101,"374,S82.492C ",.02)
 ;;S82.492C
 ;;9002226.02101,"374,S82.492C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.499A ",.01)
 ;;S82.499A
 ;;9002226.02101,"374,S82.499A ",.02)
 ;;S82.499A
 ;;9002226.02101,"374,S82.499A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.499B ",.01)
 ;;S82.499B
 ;;9002226.02101,"374,S82.499B ",.02)
 ;;S82.499B
 ;;9002226.02101,"374,S82.499B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.499C ",.01)
 ;;S82.499C
 ;;9002226.02101,"374,S82.499C ",.02)
 ;;S82.499C
 ;;9002226.02101,"374,S82.499C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.51XA ",.01)
 ;;S82.51XA
 ;;9002226.02101,"374,S82.51XA ",.02)
 ;;S82.51XA
 ;;9002226.02101,"374,S82.51XA ",.03)
 ;;30
 ;;9002226.02101,"374,S82.51XB ",.01)
 ;;S82.51XB
 ;;9002226.02101,"374,S82.51XB ",.02)
 ;;S82.51XB
 ;;9002226.02101,"374,S82.51XB ",.03)
 ;;30
 ;;9002226.02101,"374,S82.51XC ",.01)
 ;;S82.51XC
 ;;9002226.02101,"374,S82.51XC ",.02)
 ;;S82.51XC
 ;;9002226.02101,"374,S82.51XC ",.03)
 ;;30
 ;;9002226.02101,"374,S82.52XA ",.01)
 ;;S82.52XA
 ;;9002226.02101,"374,S82.52XA ",.02)
 ;;S82.52XA
 ;;9002226.02101,"374,S82.52XA ",.03)
 ;;30
 ;;9002226.02101,"374,S82.52XB ",.01)
 ;;S82.52XB
 ;;9002226.02101,"374,S82.52XB ",.02)
 ;;S82.52XB
 ;;9002226.02101,"374,S82.52XB ",.03)
 ;;30
 ;;9002226.02101,"374,S82.52XC ",.01)
 ;;S82.52XC
 ;;9002226.02101,"374,S82.52XC ",.02)
 ;;S82.52XC
 ;;9002226.02101,"374,S82.52XC ",.03)
 ;;30
 ;;9002226.02101,"374,S82.53XA ",.01)
 ;;S82.53XA
