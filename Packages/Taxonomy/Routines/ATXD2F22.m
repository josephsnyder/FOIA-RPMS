ATXD2F22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2015;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"374,S82.125C ",.01)
 ;;S82.125C
 ;;9002226.02101,"374,S82.125C ",.02)
 ;;S82.125C
 ;;9002226.02101,"374,S82.125C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.126A ",.01)
 ;;S82.126A
 ;;9002226.02101,"374,S82.126A ",.02)
 ;;S82.126A
 ;;9002226.02101,"374,S82.126A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.126B ",.01)
 ;;S82.126B
 ;;9002226.02101,"374,S82.126B ",.02)
 ;;S82.126B
 ;;9002226.02101,"374,S82.126B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.126C ",.01)
 ;;S82.126C
 ;;9002226.02101,"374,S82.126C ",.02)
 ;;S82.126C
 ;;9002226.02101,"374,S82.126C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.131A ",.01)
 ;;S82.131A
 ;;9002226.02101,"374,S82.131A ",.02)
 ;;S82.131A
 ;;9002226.02101,"374,S82.131A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.131B ",.01)
 ;;S82.131B
 ;;9002226.02101,"374,S82.131B ",.02)
 ;;S82.131B
 ;;9002226.02101,"374,S82.131B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.131C ",.01)
 ;;S82.131C
 ;;9002226.02101,"374,S82.131C ",.02)
 ;;S82.131C
 ;;9002226.02101,"374,S82.131C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.132A ",.01)
 ;;S82.132A
 ;;9002226.02101,"374,S82.132A ",.02)
 ;;S82.132A
 ;;9002226.02101,"374,S82.132A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.132B ",.01)
 ;;S82.132B
 ;;9002226.02101,"374,S82.132B ",.02)
 ;;S82.132B
 ;;9002226.02101,"374,S82.132B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.132C ",.01)
 ;;S82.132C
 ;;9002226.02101,"374,S82.132C ",.02)
 ;;S82.132C
 ;;9002226.02101,"374,S82.132C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.133A ",.01)
 ;;S82.133A
 ;;9002226.02101,"374,S82.133A ",.02)
 ;;S82.133A
 ;;9002226.02101,"374,S82.133A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.133B ",.01)
 ;;S82.133B
 ;;9002226.02101,"374,S82.133B ",.02)
 ;;S82.133B
 ;;9002226.02101,"374,S82.133B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.133C ",.01)
 ;;S82.133C
 ;;9002226.02101,"374,S82.133C ",.02)
 ;;S82.133C
 ;;9002226.02101,"374,S82.133C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.134A ",.01)
 ;;S82.134A
 ;;9002226.02101,"374,S82.134A ",.02)
 ;;S82.134A
 ;;9002226.02101,"374,S82.134A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.134B ",.01)
 ;;S82.134B
 ;;9002226.02101,"374,S82.134B ",.02)
 ;;S82.134B
 ;;9002226.02101,"374,S82.134B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.134C ",.01)
 ;;S82.134C
 ;;9002226.02101,"374,S82.134C ",.02)
 ;;S82.134C
 ;;9002226.02101,"374,S82.134C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.135A ",.01)
 ;;S82.135A
 ;;9002226.02101,"374,S82.135A ",.02)
 ;;S82.135A
 ;;9002226.02101,"374,S82.135A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.135B ",.01)
 ;;S82.135B
 ;;9002226.02101,"374,S82.135B ",.02)
 ;;S82.135B
 ;;9002226.02101,"374,S82.135B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.135C ",.01)
 ;;S82.135C
 ;;9002226.02101,"374,S82.135C ",.02)
 ;;S82.135C
 ;;9002226.02101,"374,S82.135C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.136A ",.01)
 ;;S82.136A
 ;;9002226.02101,"374,S82.136A ",.02)
 ;;S82.136A
 ;;9002226.02101,"374,S82.136A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.136B ",.01)
 ;;S82.136B
 ;;9002226.02101,"374,S82.136B ",.02)
 ;;S82.136B
 ;;9002226.02101,"374,S82.136B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.136C ",.01)
 ;;S82.136C
 ;;9002226.02101,"374,S82.136C ",.02)
 ;;S82.136C
 ;;9002226.02101,"374,S82.136C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.141A ",.01)
 ;;S82.141A
 ;;9002226.02101,"374,S82.141A ",.02)
 ;;S82.141A
 ;;9002226.02101,"374,S82.141A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.141B ",.01)
 ;;S82.141B
 ;;9002226.02101,"374,S82.141B ",.02)
 ;;S82.141B
 ;;9002226.02101,"374,S82.141B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.141C ",.01)
 ;;S82.141C
 ;;9002226.02101,"374,S82.141C ",.02)
 ;;S82.141C
 ;;9002226.02101,"374,S82.141C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.142A ",.01)
 ;;S82.142A
 ;;9002226.02101,"374,S82.142A ",.02)
 ;;S82.142A
 ;;9002226.02101,"374,S82.142A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.142B ",.01)
 ;;S82.142B
 ;;9002226.02101,"374,S82.142B ",.02)
 ;;S82.142B
 ;;9002226.02101,"374,S82.142B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.142C ",.01)
 ;;S82.142C
 ;;9002226.02101,"374,S82.142C ",.02)
 ;;S82.142C
 ;;9002226.02101,"374,S82.142C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.143A ",.01)
 ;;S82.143A
 ;;9002226.02101,"374,S82.143A ",.02)
 ;;S82.143A
 ;;9002226.02101,"374,S82.143A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.143B ",.01)
 ;;S82.143B
 ;;9002226.02101,"374,S82.143B ",.02)
 ;;S82.143B
 ;;9002226.02101,"374,S82.143B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.143C ",.01)
 ;;S82.143C
 ;;9002226.02101,"374,S82.143C ",.02)
 ;;S82.143C
 ;;9002226.02101,"374,S82.143C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.144A ",.01)
 ;;S82.144A
 ;;9002226.02101,"374,S82.144A ",.02)
 ;;S82.144A
 ;;9002226.02101,"374,S82.144A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.144B ",.01)
 ;;S82.144B
 ;;9002226.02101,"374,S82.144B ",.02)
 ;;S82.144B
 ;;9002226.02101,"374,S82.144B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.144C ",.01)
 ;;S82.144C
 ;;9002226.02101,"374,S82.144C ",.02)
 ;;S82.144C
 ;;9002226.02101,"374,S82.144C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.145A ",.01)
 ;;S82.145A
 ;;9002226.02101,"374,S82.145A ",.02)
 ;;S82.145A
 ;;9002226.02101,"374,S82.145A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.145B ",.01)
 ;;S82.145B
 ;;9002226.02101,"374,S82.145B ",.02)
 ;;S82.145B
 ;;9002226.02101,"374,S82.145B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.145C ",.01)
 ;;S82.145C
 ;;9002226.02101,"374,S82.145C ",.02)
 ;;S82.145C
 ;;9002226.02101,"374,S82.145C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.146A ",.01)
 ;;S82.146A
 ;;9002226.02101,"374,S82.146A ",.02)
 ;;S82.146A
 ;;9002226.02101,"374,S82.146A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.146B ",.01)
 ;;S82.146B
 ;;9002226.02101,"374,S82.146B ",.02)
 ;;S82.146B
 ;;9002226.02101,"374,S82.146B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.146C ",.01)
 ;;S82.146C
 ;;9002226.02101,"374,S82.146C ",.02)
 ;;S82.146C
 ;;9002226.02101,"374,S82.146C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.151A ",.01)
 ;;S82.151A
 ;;9002226.02101,"374,S82.151A ",.02)
 ;;S82.151A
 ;;9002226.02101,"374,S82.151A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.151B ",.01)
 ;;S82.151B
 ;;9002226.02101,"374,S82.151B ",.02)
 ;;S82.151B
 ;;9002226.02101,"374,S82.151B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.151C ",.01)
 ;;S82.151C
 ;;9002226.02101,"374,S82.151C ",.02)
 ;;S82.151C
 ;;9002226.02101,"374,S82.151C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.152A ",.01)
 ;;S82.152A
 ;;9002226.02101,"374,S82.152A ",.02)
 ;;S82.152A
 ;;9002226.02101,"374,S82.152A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.152B ",.01)
 ;;S82.152B
 ;;9002226.02101,"374,S82.152B ",.02)
 ;;S82.152B
 ;;9002226.02101,"374,S82.152B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.152C ",.01)
 ;;S82.152C
 ;;9002226.02101,"374,S82.152C ",.02)
 ;;S82.152C
 ;;9002226.02101,"374,S82.152C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.153A ",.01)
 ;;S82.153A
 ;;9002226.02101,"374,S82.153A ",.02)
 ;;S82.153A
 ;;9002226.02101,"374,S82.153A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.153B ",.01)
 ;;S82.153B
 ;;9002226.02101,"374,S82.153B ",.02)
 ;;S82.153B
 ;;9002226.02101,"374,S82.153B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.153C ",.01)
 ;;S82.153C
 ;;9002226.02101,"374,S82.153C ",.02)
 ;;S82.153C
 ;;9002226.02101,"374,S82.153C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.154A ",.01)
 ;;S82.154A
 ;;9002226.02101,"374,S82.154A ",.02)
 ;;S82.154A
 ;;9002226.02101,"374,S82.154A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.154B ",.01)
 ;;S82.154B
 ;;9002226.02101,"374,S82.154B ",.02)
 ;;S82.154B
 ;;9002226.02101,"374,S82.154B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.154C ",.01)
 ;;S82.154C
 ;;9002226.02101,"374,S82.154C ",.02)
 ;;S82.154C
 ;;9002226.02101,"374,S82.154C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.155A ",.01)
 ;;S82.155A
 ;;9002226.02101,"374,S82.155A ",.02)
 ;;S82.155A
 ;;9002226.02101,"374,S82.155A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.155B ",.01)
 ;;S82.155B
 ;;9002226.02101,"374,S82.155B ",.02)
 ;;S82.155B
 ;;9002226.02101,"374,S82.155B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.155C ",.01)
 ;;S82.155C
 ;;9002226.02101,"374,S82.155C ",.02)
 ;;S82.155C
 ;;9002226.02101,"374,S82.155C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.156A ",.01)
 ;;S82.156A
 ;;9002226.02101,"374,S82.156A ",.02)
 ;;S82.156A
 ;;9002226.02101,"374,S82.156A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.156B ",.01)
 ;;S82.156B
 ;;9002226.02101,"374,S82.156B ",.02)
 ;;S82.156B
 ;;9002226.02101,"374,S82.156B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.156C ",.01)
 ;;S82.156C
 ;;9002226.02101,"374,S82.156C ",.02)
 ;;S82.156C
 ;;9002226.02101,"374,S82.156C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.161A ",.01)
 ;;S82.161A
 ;;9002226.02101,"374,S82.161A ",.02)
 ;;S82.161A
 ;;9002226.02101,"374,S82.161A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.162A ",.01)
 ;;S82.162A
 ;;9002226.02101,"374,S82.162A ",.02)
 ;;S82.162A
 ;;9002226.02101,"374,S82.162A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.169A ",.01)
 ;;S82.169A
 ;;9002226.02101,"374,S82.169A ",.02)
 ;;S82.169A
 ;;9002226.02101,"374,S82.169A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.191A ",.01)
 ;;S82.191A
 ;;9002226.02101,"374,S82.191A ",.02)
 ;;S82.191A
 ;;9002226.02101,"374,S82.191A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.191B ",.01)
 ;;S82.191B
 ;;9002226.02101,"374,S82.191B ",.02)
 ;;S82.191B
 ;;9002226.02101,"374,S82.191B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.191C ",.01)
 ;;S82.191C
 ;;9002226.02101,"374,S82.191C ",.02)
 ;;S82.191C
 ;;9002226.02101,"374,S82.191C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.192A ",.01)
 ;;S82.192A
 ;;9002226.02101,"374,S82.192A ",.02)
 ;;S82.192A
 ;;9002226.02101,"374,S82.192A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.192B ",.01)
 ;;S82.192B
 ;;9002226.02101,"374,S82.192B ",.02)
 ;;S82.192B
 ;;9002226.02101,"374,S82.192B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.192C ",.01)
 ;;S82.192C
 ;;9002226.02101,"374,S82.192C ",.02)
 ;;S82.192C
 ;;9002226.02101,"374,S82.192C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.199A ",.01)
 ;;S82.199A
 ;;9002226.02101,"374,S82.199A ",.02)
 ;;S82.199A
 ;;9002226.02101,"374,S82.199A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.199B ",.01)
 ;;S82.199B
 ;;9002226.02101,"374,S82.199B ",.02)
 ;;S82.199B
 ;;9002226.02101,"374,S82.199B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.199C ",.01)
 ;;S82.199C
 ;;9002226.02101,"374,S82.199C ",.02)
 ;;S82.199C
 ;;9002226.02101,"374,S82.199C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.201A ",.01)
 ;;S82.201A
 ;;9002226.02101,"374,S82.201A ",.02)
 ;;S82.201A
 ;;9002226.02101,"374,S82.201A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.201B ",.01)
 ;;S82.201B
 ;;9002226.02101,"374,S82.201B ",.02)
 ;;S82.201B
 ;;9002226.02101,"374,S82.201B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.201C ",.01)
 ;;S82.201C
 ;;9002226.02101,"374,S82.201C ",.02)
 ;;S82.201C
 ;;9002226.02101,"374,S82.201C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.202A ",.01)
 ;;S82.202A
 ;;9002226.02101,"374,S82.202A ",.02)
 ;;S82.202A
 ;;9002226.02101,"374,S82.202A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.202B ",.01)
 ;;S82.202B
 ;;9002226.02101,"374,S82.202B ",.02)
 ;;S82.202B
 ;;9002226.02101,"374,S82.202B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.202C ",.01)
 ;;S82.202C
 ;;9002226.02101,"374,S82.202C ",.02)
 ;;S82.202C
 ;;9002226.02101,"374,S82.202C ",.03)
 ;;30
 ;;9002226.02101,"374,S82.209A ",.01)
 ;;S82.209A
 ;;9002226.02101,"374,S82.209A ",.02)
 ;;S82.209A
 ;;9002226.02101,"374,S82.209A ",.03)
 ;;30
 ;;9002226.02101,"374,S82.209B ",.01)
 ;;S82.209B
 ;;9002226.02101,"374,S82.209B ",.02)
 ;;S82.209B
 ;;9002226.02101,"374,S82.209B ",.03)
 ;;30
 ;;9002226.02101,"374,S82.209C ",.01)
 ;;S82.209C
