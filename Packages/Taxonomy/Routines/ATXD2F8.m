ATXD2F8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 17, 2015;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"374,S52.109A ",.02)
 ;;S52.109A
 ;;9002226.02101,"374,S52.109A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.109B ",.01)
 ;;S52.109B
 ;;9002226.02101,"374,S52.109B ",.02)
 ;;S52.109B
 ;;9002226.02101,"374,S52.109B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.109C ",.01)
 ;;S52.109C
 ;;9002226.02101,"374,S52.109C ",.02)
 ;;S52.109C
 ;;9002226.02101,"374,S52.109C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.111A ",.01)
 ;;S52.111A
 ;;9002226.02101,"374,S52.111A ",.02)
 ;;S52.111A
 ;;9002226.02101,"374,S52.111A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.112A ",.01)
 ;;S52.112A
 ;;9002226.02101,"374,S52.112A ",.02)
 ;;S52.112A
 ;;9002226.02101,"374,S52.112A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.119A ",.01)
 ;;S52.119A
 ;;9002226.02101,"374,S52.119A ",.02)
 ;;S52.119A
 ;;9002226.02101,"374,S52.119A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.121A ",.01)
 ;;S52.121A
 ;;9002226.02101,"374,S52.121A ",.02)
 ;;S52.121A
 ;;9002226.02101,"374,S52.121A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.121B ",.01)
 ;;S52.121B
 ;;9002226.02101,"374,S52.121B ",.02)
 ;;S52.121B
 ;;9002226.02101,"374,S52.121B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.121C ",.01)
 ;;S52.121C
 ;;9002226.02101,"374,S52.121C ",.02)
 ;;S52.121C
 ;;9002226.02101,"374,S52.121C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.122A ",.01)
 ;;S52.122A
 ;;9002226.02101,"374,S52.122A ",.02)
 ;;S52.122A
 ;;9002226.02101,"374,S52.122A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.122B ",.01)
 ;;S52.122B
 ;;9002226.02101,"374,S52.122B ",.02)
 ;;S52.122B
 ;;9002226.02101,"374,S52.122B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.122C ",.01)
 ;;S52.122C
 ;;9002226.02101,"374,S52.122C ",.02)
 ;;S52.122C
 ;;9002226.02101,"374,S52.122C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.123A ",.01)
 ;;S52.123A
 ;;9002226.02101,"374,S52.123A ",.02)
 ;;S52.123A
 ;;9002226.02101,"374,S52.123A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.123B ",.01)
 ;;S52.123B
 ;;9002226.02101,"374,S52.123B ",.02)
 ;;S52.123B
 ;;9002226.02101,"374,S52.123B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.123C ",.01)
 ;;S52.123C
 ;;9002226.02101,"374,S52.123C ",.02)
 ;;S52.123C
 ;;9002226.02101,"374,S52.123C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.124A ",.01)
 ;;S52.124A
 ;;9002226.02101,"374,S52.124A ",.02)
 ;;S52.124A
 ;;9002226.02101,"374,S52.124A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.124B ",.01)
 ;;S52.124B
 ;;9002226.02101,"374,S52.124B ",.02)
 ;;S52.124B
 ;;9002226.02101,"374,S52.124B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.124C ",.01)
 ;;S52.124C
 ;;9002226.02101,"374,S52.124C ",.02)
 ;;S52.124C
 ;;9002226.02101,"374,S52.124C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.125A ",.01)
 ;;S52.125A
 ;;9002226.02101,"374,S52.125A ",.02)
 ;;S52.125A
 ;;9002226.02101,"374,S52.125A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.125B ",.01)
 ;;S52.125B
 ;;9002226.02101,"374,S52.125B ",.02)
 ;;S52.125B
 ;;9002226.02101,"374,S52.125B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.125C ",.01)
 ;;S52.125C
 ;;9002226.02101,"374,S52.125C ",.02)
 ;;S52.125C
 ;;9002226.02101,"374,S52.125C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.126A ",.01)
 ;;S52.126A
 ;;9002226.02101,"374,S52.126A ",.02)
 ;;S52.126A
 ;;9002226.02101,"374,S52.126A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.126B ",.01)
 ;;S52.126B
 ;;9002226.02101,"374,S52.126B ",.02)
 ;;S52.126B
 ;;9002226.02101,"374,S52.126B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.126C ",.01)
 ;;S52.126C
 ;;9002226.02101,"374,S52.126C ",.02)
 ;;S52.126C
 ;;9002226.02101,"374,S52.126C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.131A ",.01)
 ;;S52.131A
 ;;9002226.02101,"374,S52.131A ",.02)
 ;;S52.131A
 ;;9002226.02101,"374,S52.131A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.131B ",.01)
 ;;S52.131B
 ;;9002226.02101,"374,S52.131B ",.02)
 ;;S52.131B
 ;;9002226.02101,"374,S52.131B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.131C ",.01)
 ;;S52.131C
 ;;9002226.02101,"374,S52.131C ",.02)
 ;;S52.131C
 ;;9002226.02101,"374,S52.131C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.132A ",.01)
 ;;S52.132A
 ;;9002226.02101,"374,S52.132A ",.02)
 ;;S52.132A
 ;;9002226.02101,"374,S52.132A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.132B ",.01)
 ;;S52.132B
 ;;9002226.02101,"374,S52.132B ",.02)
 ;;S52.132B
 ;;9002226.02101,"374,S52.132B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.132C ",.01)
 ;;S52.132C
 ;;9002226.02101,"374,S52.132C ",.02)
 ;;S52.132C
 ;;9002226.02101,"374,S52.132C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.133A ",.01)
 ;;S52.133A
 ;;9002226.02101,"374,S52.133A ",.02)
 ;;S52.133A
 ;;9002226.02101,"374,S52.133A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.133B ",.01)
 ;;S52.133B
 ;;9002226.02101,"374,S52.133B ",.02)
 ;;S52.133B
 ;;9002226.02101,"374,S52.133B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.133C ",.01)
 ;;S52.133C
 ;;9002226.02101,"374,S52.133C ",.02)
 ;;S52.133C
 ;;9002226.02101,"374,S52.133C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.134A ",.01)
 ;;S52.134A
 ;;9002226.02101,"374,S52.134A ",.02)
 ;;S52.134A
 ;;9002226.02101,"374,S52.134A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.134B ",.01)
 ;;S52.134B
 ;;9002226.02101,"374,S52.134B ",.02)
 ;;S52.134B
 ;;9002226.02101,"374,S52.134B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.134C ",.01)
 ;;S52.134C
 ;;9002226.02101,"374,S52.134C ",.02)
 ;;S52.134C
 ;;9002226.02101,"374,S52.134C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.135A ",.01)
 ;;S52.135A
 ;;9002226.02101,"374,S52.135A ",.02)
 ;;S52.135A
 ;;9002226.02101,"374,S52.135A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.135B ",.01)
 ;;S52.135B
 ;;9002226.02101,"374,S52.135B ",.02)
 ;;S52.135B
 ;;9002226.02101,"374,S52.135B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.135C ",.01)
 ;;S52.135C
 ;;9002226.02101,"374,S52.135C ",.02)
 ;;S52.135C
 ;;9002226.02101,"374,S52.135C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.136A ",.01)
 ;;S52.136A
 ;;9002226.02101,"374,S52.136A ",.02)
 ;;S52.136A
 ;;9002226.02101,"374,S52.136A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.136B ",.01)
 ;;S52.136B
 ;;9002226.02101,"374,S52.136B ",.02)
 ;;S52.136B
 ;;9002226.02101,"374,S52.136B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.136C ",.01)
 ;;S52.136C
 ;;9002226.02101,"374,S52.136C ",.02)
 ;;S52.136C
 ;;9002226.02101,"374,S52.136C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.181A ",.01)
 ;;S52.181A
 ;;9002226.02101,"374,S52.181A ",.02)
 ;;S52.181A
 ;;9002226.02101,"374,S52.181A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.181B ",.01)
 ;;S52.181B
 ;;9002226.02101,"374,S52.181B ",.02)
 ;;S52.181B
 ;;9002226.02101,"374,S52.181B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.181C ",.01)
 ;;S52.181C
 ;;9002226.02101,"374,S52.181C ",.02)
 ;;S52.181C
 ;;9002226.02101,"374,S52.181C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.182A ",.01)
 ;;S52.182A
 ;;9002226.02101,"374,S52.182A ",.02)
 ;;S52.182A
 ;;9002226.02101,"374,S52.182A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.182B ",.01)
 ;;S52.182B
 ;;9002226.02101,"374,S52.182B ",.02)
 ;;S52.182B
 ;;9002226.02101,"374,S52.182B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.182C ",.01)
 ;;S52.182C
 ;;9002226.02101,"374,S52.182C ",.02)
 ;;S52.182C
 ;;9002226.02101,"374,S52.182C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.189A ",.01)
 ;;S52.189A
 ;;9002226.02101,"374,S52.189A ",.02)
 ;;S52.189A
 ;;9002226.02101,"374,S52.189A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.189B ",.01)
 ;;S52.189B
 ;;9002226.02101,"374,S52.189B ",.02)
 ;;S52.189B
 ;;9002226.02101,"374,S52.189B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.189C ",.01)
 ;;S52.189C
 ;;9002226.02101,"374,S52.189C ",.02)
 ;;S52.189C
 ;;9002226.02101,"374,S52.189C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.201A ",.01)
 ;;S52.201A
 ;;9002226.02101,"374,S52.201A ",.02)
 ;;S52.201A
 ;;9002226.02101,"374,S52.201A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.201B ",.01)
 ;;S52.201B
 ;;9002226.02101,"374,S52.201B ",.02)
 ;;S52.201B
 ;;9002226.02101,"374,S52.201B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.201C ",.01)
 ;;S52.201C
 ;;9002226.02101,"374,S52.201C ",.02)
 ;;S52.201C
 ;;9002226.02101,"374,S52.201C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.202A ",.01)
 ;;S52.202A
 ;;9002226.02101,"374,S52.202A ",.02)
 ;;S52.202A
 ;;9002226.02101,"374,S52.202A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.202B ",.01)
 ;;S52.202B
 ;;9002226.02101,"374,S52.202B ",.02)
 ;;S52.202B
 ;;9002226.02101,"374,S52.202B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.202C ",.01)
 ;;S52.202C
 ;;9002226.02101,"374,S52.202C ",.02)
 ;;S52.202C
 ;;9002226.02101,"374,S52.202C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.209A ",.01)
 ;;S52.209A
 ;;9002226.02101,"374,S52.209A ",.02)
 ;;S52.209A
 ;;9002226.02101,"374,S52.209A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.209B ",.01)
 ;;S52.209B
 ;;9002226.02101,"374,S52.209B ",.02)
 ;;S52.209B
 ;;9002226.02101,"374,S52.209B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.209C ",.01)
 ;;S52.209C
 ;;9002226.02101,"374,S52.209C ",.02)
 ;;S52.209C
 ;;9002226.02101,"374,S52.209C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.211A ",.01)
 ;;S52.211A
 ;;9002226.02101,"374,S52.211A ",.02)
 ;;S52.211A
 ;;9002226.02101,"374,S52.211A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.212A ",.01)
 ;;S52.212A
 ;;9002226.02101,"374,S52.212A ",.02)
 ;;S52.212A
 ;;9002226.02101,"374,S52.212A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.219A ",.01)
 ;;S52.219A
 ;;9002226.02101,"374,S52.219A ",.02)
 ;;S52.219A
 ;;9002226.02101,"374,S52.219A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.221A ",.01)
 ;;S52.221A
 ;;9002226.02101,"374,S52.221A ",.02)
 ;;S52.221A
 ;;9002226.02101,"374,S52.221A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.221B ",.01)
 ;;S52.221B
 ;;9002226.02101,"374,S52.221B ",.02)
 ;;S52.221B
 ;;9002226.02101,"374,S52.221B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.221C ",.01)
 ;;S52.221C
 ;;9002226.02101,"374,S52.221C ",.02)
 ;;S52.221C
 ;;9002226.02101,"374,S52.221C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.222A ",.01)
 ;;S52.222A
 ;;9002226.02101,"374,S52.222A ",.02)
 ;;S52.222A
 ;;9002226.02101,"374,S52.222A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.222B ",.01)
 ;;S52.222B
 ;;9002226.02101,"374,S52.222B ",.02)
 ;;S52.222B
 ;;9002226.02101,"374,S52.222B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.222C ",.01)
 ;;S52.222C
 ;;9002226.02101,"374,S52.222C ",.02)
 ;;S52.222C
 ;;9002226.02101,"374,S52.222C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.223A ",.01)
 ;;S52.223A
 ;;9002226.02101,"374,S52.223A ",.02)
 ;;S52.223A
 ;;9002226.02101,"374,S52.223A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.223B ",.01)
 ;;S52.223B
 ;;9002226.02101,"374,S52.223B ",.02)
 ;;S52.223B
 ;;9002226.02101,"374,S52.223B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.223C ",.01)
 ;;S52.223C
 ;;9002226.02101,"374,S52.223C ",.02)
 ;;S52.223C
 ;;9002226.02101,"374,S52.223C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.224A ",.01)
 ;;S52.224A
 ;;9002226.02101,"374,S52.224A ",.02)
 ;;S52.224A
 ;;9002226.02101,"374,S52.224A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.224B ",.01)
 ;;S52.224B
 ;;9002226.02101,"374,S52.224B ",.02)
 ;;S52.224B
 ;;9002226.02101,"374,S52.224B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.224C ",.01)
 ;;S52.224C
 ;;9002226.02101,"374,S52.224C ",.02)
 ;;S52.224C
 ;;9002226.02101,"374,S52.224C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.225A ",.01)
 ;;S52.225A
 ;;9002226.02101,"374,S52.225A ",.02)
 ;;S52.225A
 ;;9002226.02101,"374,S52.225A ",.03)
 ;;30
 ;;9002226.02101,"374,S52.225B ",.01)
 ;;S52.225B
 ;;9002226.02101,"374,S52.225B ",.02)
 ;;S52.225B
 ;;9002226.02101,"374,S52.225B ",.03)
 ;;30
 ;;9002226.02101,"374,S52.225C ",.01)
 ;;S52.225C
 ;;9002226.02101,"374,S52.225C ",.02)
 ;;S52.225C
 ;;9002226.02101,"374,S52.225C ",.03)
 ;;30
 ;;9002226.02101,"374,S52.226A ",.01)
 ;;S52.226A
 ;;9002226.02101,"374,S52.226A ",.02)
 ;;S52.226A
