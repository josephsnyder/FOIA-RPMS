ATXXA73 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S53.002A ",.02)
 ;;S53.002A
 ;;9002226.02101,"873,S53.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.003A ",.01)
 ;;S53.003A
 ;;9002226.02101,"873,S53.003A ",.02)
 ;;S53.003A
 ;;9002226.02101,"873,S53.003A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.004A ",.01)
 ;;S53.004A
 ;;9002226.02101,"873,S53.004A ",.02)
 ;;S53.004A
 ;;9002226.02101,"873,S53.004A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.005A ",.01)
 ;;S53.005A
 ;;9002226.02101,"873,S53.005A ",.02)
 ;;S53.005A
 ;;9002226.02101,"873,S53.005A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.006A ",.01)
 ;;S53.006A
 ;;9002226.02101,"873,S53.006A ",.02)
 ;;S53.006A
 ;;9002226.02101,"873,S53.006A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.011A ",.01)
 ;;S53.011A
 ;;9002226.02101,"873,S53.011A ",.02)
 ;;S53.011A
 ;;9002226.02101,"873,S53.011A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.012A ",.01)
 ;;S53.012A
 ;;9002226.02101,"873,S53.012A ",.02)
 ;;S53.012A
 ;;9002226.02101,"873,S53.012A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.013A ",.01)
 ;;S53.013A
 ;;9002226.02101,"873,S53.013A ",.02)
 ;;S53.013A
 ;;9002226.02101,"873,S53.013A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.014A ",.01)
 ;;S53.014A
 ;;9002226.02101,"873,S53.014A ",.02)
 ;;S53.014A
 ;;9002226.02101,"873,S53.014A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.015A ",.01)
 ;;S53.015A
 ;;9002226.02101,"873,S53.015A ",.02)
 ;;S53.015A
 ;;9002226.02101,"873,S53.015A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.016A ",.01)
 ;;S53.016A
 ;;9002226.02101,"873,S53.016A ",.02)
 ;;S53.016A
 ;;9002226.02101,"873,S53.016A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.021A ",.01)
 ;;S53.021A
 ;;9002226.02101,"873,S53.021A ",.02)
 ;;S53.021A
 ;;9002226.02101,"873,S53.021A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.022A ",.01)
 ;;S53.022A
 ;;9002226.02101,"873,S53.022A ",.02)
 ;;S53.022A
 ;;9002226.02101,"873,S53.022A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.023A ",.01)
 ;;S53.023A
 ;;9002226.02101,"873,S53.023A ",.02)
 ;;S53.023A
 ;;9002226.02101,"873,S53.023A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.024A ",.01)
 ;;S53.024A
 ;;9002226.02101,"873,S53.024A ",.02)
 ;;S53.024A
 ;;9002226.02101,"873,S53.024A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.025A ",.01)
 ;;S53.025A
 ;;9002226.02101,"873,S53.025A ",.02)
 ;;S53.025A
 ;;9002226.02101,"873,S53.025A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.026A ",.01)
 ;;S53.026A
 ;;9002226.02101,"873,S53.026A ",.02)
 ;;S53.026A
 ;;9002226.02101,"873,S53.026A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.031A ",.01)
 ;;S53.031A
 ;;9002226.02101,"873,S53.031A ",.02)
 ;;S53.031A
 ;;9002226.02101,"873,S53.031A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.032A ",.01)
 ;;S53.032A
 ;;9002226.02101,"873,S53.032A ",.02)
 ;;S53.032A
 ;;9002226.02101,"873,S53.032A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.033A ",.01)
 ;;S53.033A
 ;;9002226.02101,"873,S53.033A ",.02)
 ;;S53.033A
 ;;9002226.02101,"873,S53.033A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.091A ",.01)
 ;;S53.091A
 ;;9002226.02101,"873,S53.091A ",.02)
 ;;S53.091A
 ;;9002226.02101,"873,S53.091A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.092A ",.01)
 ;;S53.092A
 ;;9002226.02101,"873,S53.092A ",.02)
 ;;S53.092A
 ;;9002226.02101,"873,S53.092A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.093A ",.01)
 ;;S53.093A
 ;;9002226.02101,"873,S53.093A ",.02)
 ;;S53.093A
 ;;9002226.02101,"873,S53.093A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.094A ",.01)
 ;;S53.094A
 ;;9002226.02101,"873,S53.094A ",.02)
 ;;S53.094A
 ;;9002226.02101,"873,S53.094A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.095A ",.01)
 ;;S53.095A
 ;;9002226.02101,"873,S53.095A ",.02)
 ;;S53.095A
 ;;9002226.02101,"873,S53.095A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.096A ",.01)
 ;;S53.096A
 ;;9002226.02101,"873,S53.096A ",.02)
 ;;S53.096A
 ;;9002226.02101,"873,S53.096A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.101A ",.01)
 ;;S53.101A
 ;;9002226.02101,"873,S53.101A ",.02)
 ;;S53.101A
 ;;9002226.02101,"873,S53.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.102A ",.01)
 ;;S53.102A
 ;;9002226.02101,"873,S53.102A ",.02)
 ;;S53.102A
 ;;9002226.02101,"873,S53.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.103A ",.01)
 ;;S53.103A
 ;;9002226.02101,"873,S53.103A ",.02)
 ;;S53.103A
 ;;9002226.02101,"873,S53.103A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.104A ",.01)
 ;;S53.104A
 ;;9002226.02101,"873,S53.104A ",.02)
 ;;S53.104A
 ;;9002226.02101,"873,S53.104A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.105A ",.01)
 ;;S53.105A
 ;;9002226.02101,"873,S53.105A ",.02)
 ;;S53.105A
 ;;9002226.02101,"873,S53.105A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.106A ",.01)
 ;;S53.106A
 ;;9002226.02101,"873,S53.106A ",.02)
 ;;S53.106A
 ;;9002226.02101,"873,S53.106A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.111A ",.01)
 ;;S53.111A
 ;;9002226.02101,"873,S53.111A ",.02)
 ;;S53.111A
 ;;9002226.02101,"873,S53.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.112A ",.01)
 ;;S53.112A
 ;;9002226.02101,"873,S53.112A ",.02)
 ;;S53.112A
 ;;9002226.02101,"873,S53.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.113A ",.01)
 ;;S53.113A
 ;;9002226.02101,"873,S53.113A ",.02)
 ;;S53.113A
 ;;9002226.02101,"873,S53.113A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.114A ",.01)
 ;;S53.114A
 ;;9002226.02101,"873,S53.114A ",.02)
 ;;S53.114A
 ;;9002226.02101,"873,S53.114A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.115A ",.01)
 ;;S53.115A
 ;;9002226.02101,"873,S53.115A ",.02)
 ;;S53.115A
 ;;9002226.02101,"873,S53.115A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.116A ",.01)
 ;;S53.116A
 ;;9002226.02101,"873,S53.116A ",.02)
 ;;S53.116A
 ;;9002226.02101,"873,S53.116A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.121A ",.01)
 ;;S53.121A
 ;;9002226.02101,"873,S53.121A ",.02)
 ;;S53.121A
 ;;9002226.02101,"873,S53.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.122A ",.01)
 ;;S53.122A
 ;;9002226.02101,"873,S53.122A ",.02)
 ;;S53.122A
 ;;9002226.02101,"873,S53.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.123A ",.01)
 ;;S53.123A
 ;;9002226.02101,"873,S53.123A ",.02)
 ;;S53.123A
 ;;9002226.02101,"873,S53.123A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.124A ",.01)
 ;;S53.124A
 ;;9002226.02101,"873,S53.124A ",.02)
 ;;S53.124A
 ;;9002226.02101,"873,S53.124A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.125A ",.01)
 ;;S53.125A
 ;;9002226.02101,"873,S53.125A ",.02)
 ;;S53.125A
 ;;9002226.02101,"873,S53.125A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.126A ",.01)
 ;;S53.126A
 ;;9002226.02101,"873,S53.126A ",.02)
 ;;S53.126A
 ;;9002226.02101,"873,S53.126A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.131A ",.01)
 ;;S53.131A
 ;;9002226.02101,"873,S53.131A ",.02)
 ;;S53.131A
 ;;9002226.02101,"873,S53.131A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.132A ",.01)
 ;;S53.132A
 ;;9002226.02101,"873,S53.132A ",.02)
 ;;S53.132A
 ;;9002226.02101,"873,S53.132A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.133A ",.01)
 ;;S53.133A
 ;;9002226.02101,"873,S53.133A ",.02)
 ;;S53.133A
 ;;9002226.02101,"873,S53.133A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.134A ",.01)
 ;;S53.134A
 ;;9002226.02101,"873,S53.134A ",.02)
 ;;S53.134A
 ;;9002226.02101,"873,S53.134A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.135A ",.01)
 ;;S53.135A
 ;;9002226.02101,"873,S53.135A ",.02)
 ;;S53.135A
 ;;9002226.02101,"873,S53.135A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.136A ",.01)
 ;;S53.136A
 ;;9002226.02101,"873,S53.136A ",.02)
 ;;S53.136A
 ;;9002226.02101,"873,S53.136A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.141A ",.01)
 ;;S53.141A
 ;;9002226.02101,"873,S53.141A ",.02)
 ;;S53.141A
 ;;9002226.02101,"873,S53.141A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.142A ",.01)
 ;;S53.142A
 ;;9002226.02101,"873,S53.142A ",.02)
 ;;S53.142A
 ;;9002226.02101,"873,S53.142A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.143A ",.01)
 ;;S53.143A
 ;;9002226.02101,"873,S53.143A ",.02)
 ;;S53.143A
 ;;9002226.02101,"873,S53.143A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.144A ",.01)
 ;;S53.144A
 ;;9002226.02101,"873,S53.144A ",.02)
 ;;S53.144A
 ;;9002226.02101,"873,S53.144A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.145A ",.01)
 ;;S53.145A
 ;;9002226.02101,"873,S53.145A ",.02)
 ;;S53.145A
 ;;9002226.02101,"873,S53.145A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.146A ",.01)
 ;;S53.146A
 ;;9002226.02101,"873,S53.146A ",.02)
 ;;S53.146A
 ;;9002226.02101,"873,S53.146A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.191A ",.01)
 ;;S53.191A
 ;;9002226.02101,"873,S53.191A ",.02)
 ;;S53.191A
 ;;9002226.02101,"873,S53.191A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.192A ",.01)
 ;;S53.192A
 ;;9002226.02101,"873,S53.192A ",.02)
 ;;S53.192A
 ;;9002226.02101,"873,S53.192A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.193A ",.01)
 ;;S53.193A
 ;;9002226.02101,"873,S53.193A ",.02)
 ;;S53.193A
 ;;9002226.02101,"873,S53.193A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.194A ",.01)
 ;;S53.194A
 ;;9002226.02101,"873,S53.194A ",.02)
 ;;S53.194A
 ;;9002226.02101,"873,S53.194A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.195A ",.01)
 ;;S53.195A
 ;;9002226.02101,"873,S53.195A ",.02)
 ;;S53.195A
 ;;9002226.02101,"873,S53.195A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.196A ",.01)
 ;;S53.196A
 ;;9002226.02101,"873,S53.196A ",.02)
 ;;S53.196A
 ;;9002226.02101,"873,S53.196A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.20XA ",.01)
 ;;S53.20XA
 ;;9002226.02101,"873,S53.20XA ",.02)
 ;;S53.20XA
 ;;9002226.02101,"873,S53.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.21XA ",.01)
 ;;S53.21XA
 ;;9002226.02101,"873,S53.21XA ",.02)
 ;;S53.21XA
 ;;9002226.02101,"873,S53.21XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.22XA ",.01)
 ;;S53.22XA
 ;;9002226.02101,"873,S53.22XA ",.02)
 ;;S53.22XA
 ;;9002226.02101,"873,S53.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.30XA ",.01)
 ;;S53.30XA
 ;;9002226.02101,"873,S53.30XA ",.02)
 ;;S53.30XA
 ;;9002226.02101,"873,S53.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.31XA ",.01)
 ;;S53.31XA
 ;;9002226.02101,"873,S53.31XA ",.02)
 ;;S53.31XA
 ;;9002226.02101,"873,S53.31XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.32XA ",.01)
 ;;S53.32XA
 ;;9002226.02101,"873,S53.32XA ",.02)
 ;;S53.32XA
 ;;9002226.02101,"873,S53.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,S53.401A ",.01)
 ;;S53.401A
 ;;9002226.02101,"873,S53.401A ",.02)
 ;;S53.401A
 ;;9002226.02101,"873,S53.401A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.402A ",.01)
 ;;S53.402A
 ;;9002226.02101,"873,S53.402A ",.02)
 ;;S53.402A
 ;;9002226.02101,"873,S53.402A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.409A ",.01)
 ;;S53.409A
 ;;9002226.02101,"873,S53.409A ",.02)
 ;;S53.409A
 ;;9002226.02101,"873,S53.409A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.411A ",.01)
 ;;S53.411A
 ;;9002226.02101,"873,S53.411A ",.02)
 ;;S53.411A
 ;;9002226.02101,"873,S53.411A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.412A ",.01)
 ;;S53.412A
 ;;9002226.02101,"873,S53.412A ",.02)
 ;;S53.412A
 ;;9002226.02101,"873,S53.412A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.419A ",.01)
 ;;S53.419A
 ;;9002226.02101,"873,S53.419A ",.02)
 ;;S53.419A
 ;;9002226.02101,"873,S53.419A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.421A ",.01)
 ;;S53.421A
 ;;9002226.02101,"873,S53.421A ",.02)
 ;;S53.421A
 ;;9002226.02101,"873,S53.421A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.422A ",.01)
 ;;S53.422A
 ;;9002226.02101,"873,S53.422A ",.02)
 ;;S53.422A
 ;;9002226.02101,"873,S53.422A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.429A ",.01)
 ;;S53.429A
 ;;9002226.02101,"873,S53.429A ",.02)
 ;;S53.429A
 ;;9002226.02101,"873,S53.429A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.431A ",.01)
 ;;S53.431A
 ;;9002226.02101,"873,S53.431A ",.02)
 ;;S53.431A
 ;;9002226.02101,"873,S53.431A ",.03)
 ;;30
 ;;9002226.02101,"873,S53.432A ",.01)
 ;;S53.432A
 ;;9002226.02101,"873,S53.432A ",.02)
 ;;S53.432A
