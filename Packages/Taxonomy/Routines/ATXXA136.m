ATXXA136 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T22.032A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.039A ",.01)
 ;;T22.039A
 ;;9002226.02101,"873,T22.039A ",.02)
 ;;T22.039A
 ;;9002226.02101,"873,T22.039A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.041A ",.01)
 ;;T22.041A
 ;;9002226.02101,"873,T22.041A ",.02)
 ;;T22.041A
 ;;9002226.02101,"873,T22.041A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.042A ",.01)
 ;;T22.042A
 ;;9002226.02101,"873,T22.042A ",.02)
 ;;T22.042A
 ;;9002226.02101,"873,T22.042A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.049A ",.01)
 ;;T22.049A
 ;;9002226.02101,"873,T22.049A ",.02)
 ;;T22.049A
 ;;9002226.02101,"873,T22.049A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.051A ",.01)
 ;;T22.051A
 ;;9002226.02101,"873,T22.051A ",.02)
 ;;T22.051A
 ;;9002226.02101,"873,T22.051A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.052A ",.01)
 ;;T22.052A
 ;;9002226.02101,"873,T22.052A ",.02)
 ;;T22.052A
 ;;9002226.02101,"873,T22.052A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.059A ",.01)
 ;;T22.059A
 ;;9002226.02101,"873,T22.059A ",.02)
 ;;T22.059A
 ;;9002226.02101,"873,T22.059A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.061A ",.01)
 ;;T22.061A
 ;;9002226.02101,"873,T22.061A ",.02)
 ;;T22.061A
 ;;9002226.02101,"873,T22.061A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.062A ",.01)
 ;;T22.062A
 ;;9002226.02101,"873,T22.062A ",.02)
 ;;T22.062A
 ;;9002226.02101,"873,T22.062A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.069A ",.01)
 ;;T22.069A
 ;;9002226.02101,"873,T22.069A ",.02)
 ;;T22.069A
 ;;9002226.02101,"873,T22.069A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.091A ",.01)
 ;;T22.091A
 ;;9002226.02101,"873,T22.091A ",.02)
 ;;T22.091A
 ;;9002226.02101,"873,T22.091A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.092A ",.01)
 ;;T22.092A
 ;;9002226.02101,"873,T22.092A ",.02)
 ;;T22.092A
 ;;9002226.02101,"873,T22.092A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.099A ",.01)
 ;;T22.099A
 ;;9002226.02101,"873,T22.099A ",.02)
 ;;T22.099A
 ;;9002226.02101,"873,T22.099A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.10XA ",.01)
 ;;T22.10XA
 ;;9002226.02101,"873,T22.10XA ",.02)
 ;;T22.10XA
 ;;9002226.02101,"873,T22.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,T22.111A ",.01)
 ;;T22.111A
 ;;9002226.02101,"873,T22.111A ",.02)
 ;;T22.111A
 ;;9002226.02101,"873,T22.111A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.112A ",.01)
 ;;T22.112A
 ;;9002226.02101,"873,T22.112A ",.02)
 ;;T22.112A
 ;;9002226.02101,"873,T22.112A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.119A ",.01)
 ;;T22.119A
 ;;9002226.02101,"873,T22.119A ",.02)
 ;;T22.119A
 ;;9002226.02101,"873,T22.119A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.121A ",.01)
 ;;T22.121A
 ;;9002226.02101,"873,T22.121A ",.02)
 ;;T22.121A
 ;;9002226.02101,"873,T22.121A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.122A ",.01)
 ;;T22.122A
 ;;9002226.02101,"873,T22.122A ",.02)
 ;;T22.122A
 ;;9002226.02101,"873,T22.122A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.129A ",.01)
 ;;T22.129A
 ;;9002226.02101,"873,T22.129A ",.02)
 ;;T22.129A
 ;;9002226.02101,"873,T22.129A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.131A ",.01)
 ;;T22.131A
 ;;9002226.02101,"873,T22.131A ",.02)
 ;;T22.131A
 ;;9002226.02101,"873,T22.131A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.132A ",.01)
 ;;T22.132A
 ;;9002226.02101,"873,T22.132A ",.02)
 ;;T22.132A
 ;;9002226.02101,"873,T22.132A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.139A ",.01)
 ;;T22.139A
 ;;9002226.02101,"873,T22.139A ",.02)
 ;;T22.139A
 ;;9002226.02101,"873,T22.139A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.141A ",.01)
 ;;T22.141A
 ;;9002226.02101,"873,T22.141A ",.02)
 ;;T22.141A
 ;;9002226.02101,"873,T22.141A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.142A ",.01)
 ;;T22.142A
 ;;9002226.02101,"873,T22.142A ",.02)
 ;;T22.142A
 ;;9002226.02101,"873,T22.142A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.149A ",.01)
 ;;T22.149A
 ;;9002226.02101,"873,T22.149A ",.02)
 ;;T22.149A
 ;;9002226.02101,"873,T22.149A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.151A ",.01)
 ;;T22.151A
 ;;9002226.02101,"873,T22.151A ",.02)
 ;;T22.151A
 ;;9002226.02101,"873,T22.151A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.152A ",.01)
 ;;T22.152A
 ;;9002226.02101,"873,T22.152A ",.02)
 ;;T22.152A
 ;;9002226.02101,"873,T22.152A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.159A ",.01)
 ;;T22.159A
 ;;9002226.02101,"873,T22.159A ",.02)
 ;;T22.159A
 ;;9002226.02101,"873,T22.159A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.161A ",.01)
 ;;T22.161A
 ;;9002226.02101,"873,T22.161A ",.02)
 ;;T22.161A
 ;;9002226.02101,"873,T22.161A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.162A ",.01)
 ;;T22.162A
 ;;9002226.02101,"873,T22.162A ",.02)
 ;;T22.162A
 ;;9002226.02101,"873,T22.162A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.169A ",.01)
 ;;T22.169A
 ;;9002226.02101,"873,T22.169A ",.02)
 ;;T22.169A
 ;;9002226.02101,"873,T22.169A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.191A ",.01)
 ;;T22.191A
 ;;9002226.02101,"873,T22.191A ",.02)
 ;;T22.191A
 ;;9002226.02101,"873,T22.191A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.192A ",.01)
 ;;T22.192A
 ;;9002226.02101,"873,T22.192A ",.02)
 ;;T22.192A
 ;;9002226.02101,"873,T22.192A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.199A ",.01)
 ;;T22.199A
 ;;9002226.02101,"873,T22.199A ",.02)
 ;;T22.199A
 ;;9002226.02101,"873,T22.199A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.20XA ",.01)
 ;;T22.20XA
 ;;9002226.02101,"873,T22.20XA ",.02)
 ;;T22.20XA
 ;;9002226.02101,"873,T22.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,T22.211A ",.01)
 ;;T22.211A
 ;;9002226.02101,"873,T22.211A ",.02)
 ;;T22.211A
 ;;9002226.02101,"873,T22.211A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.212A ",.01)
 ;;T22.212A
 ;;9002226.02101,"873,T22.212A ",.02)
 ;;T22.212A
 ;;9002226.02101,"873,T22.212A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.219A ",.01)
 ;;T22.219A
 ;;9002226.02101,"873,T22.219A ",.02)
 ;;T22.219A
 ;;9002226.02101,"873,T22.219A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.221A ",.01)
 ;;T22.221A
 ;;9002226.02101,"873,T22.221A ",.02)
 ;;T22.221A
 ;;9002226.02101,"873,T22.221A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.222A ",.01)
 ;;T22.222A
 ;;9002226.02101,"873,T22.222A ",.02)
 ;;T22.222A
 ;;9002226.02101,"873,T22.222A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.229A ",.01)
 ;;T22.229A
 ;;9002226.02101,"873,T22.229A ",.02)
 ;;T22.229A
 ;;9002226.02101,"873,T22.229A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.231A ",.01)
 ;;T22.231A
 ;;9002226.02101,"873,T22.231A ",.02)
 ;;T22.231A
 ;;9002226.02101,"873,T22.231A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.232A ",.01)
 ;;T22.232A
 ;;9002226.02101,"873,T22.232A ",.02)
 ;;T22.232A
 ;;9002226.02101,"873,T22.232A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.239A ",.01)
 ;;T22.239A
 ;;9002226.02101,"873,T22.239A ",.02)
 ;;T22.239A
 ;;9002226.02101,"873,T22.239A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.241A ",.01)
 ;;T22.241A
 ;;9002226.02101,"873,T22.241A ",.02)
 ;;T22.241A
 ;;9002226.02101,"873,T22.241A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.242A ",.01)
 ;;T22.242A
 ;;9002226.02101,"873,T22.242A ",.02)
 ;;T22.242A
 ;;9002226.02101,"873,T22.242A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.249A ",.01)
 ;;T22.249A
 ;;9002226.02101,"873,T22.249A ",.02)
 ;;T22.249A
 ;;9002226.02101,"873,T22.249A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.251A ",.01)
 ;;T22.251A
 ;;9002226.02101,"873,T22.251A ",.02)
 ;;T22.251A
 ;;9002226.02101,"873,T22.251A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.252A ",.01)
 ;;T22.252A
 ;;9002226.02101,"873,T22.252A ",.02)
 ;;T22.252A
 ;;9002226.02101,"873,T22.252A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.259A ",.01)
 ;;T22.259A
 ;;9002226.02101,"873,T22.259A ",.02)
 ;;T22.259A
 ;;9002226.02101,"873,T22.259A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.261A ",.01)
 ;;T22.261A
 ;;9002226.02101,"873,T22.261A ",.02)
 ;;T22.261A
 ;;9002226.02101,"873,T22.261A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.262A ",.01)
 ;;T22.262A
 ;;9002226.02101,"873,T22.262A ",.02)
 ;;T22.262A
 ;;9002226.02101,"873,T22.262A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.269A ",.01)
 ;;T22.269A
 ;;9002226.02101,"873,T22.269A ",.02)
 ;;T22.269A
 ;;9002226.02101,"873,T22.269A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.291A ",.01)
 ;;T22.291A
 ;;9002226.02101,"873,T22.291A ",.02)
 ;;T22.291A
 ;;9002226.02101,"873,T22.291A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.292A ",.01)
 ;;T22.292A
 ;;9002226.02101,"873,T22.292A ",.02)
 ;;T22.292A
 ;;9002226.02101,"873,T22.292A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.299A ",.01)
 ;;T22.299A
 ;;9002226.02101,"873,T22.299A ",.02)
 ;;T22.299A
 ;;9002226.02101,"873,T22.299A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.30XA ",.01)
 ;;T22.30XA
 ;;9002226.02101,"873,T22.30XA ",.02)
 ;;T22.30XA
 ;;9002226.02101,"873,T22.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,T22.311A ",.01)
 ;;T22.311A
 ;;9002226.02101,"873,T22.311A ",.02)
 ;;T22.311A
 ;;9002226.02101,"873,T22.311A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.312A ",.01)
 ;;T22.312A
 ;;9002226.02101,"873,T22.312A ",.02)
 ;;T22.312A
 ;;9002226.02101,"873,T22.312A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.319A ",.01)
 ;;T22.319A
 ;;9002226.02101,"873,T22.319A ",.02)
 ;;T22.319A
 ;;9002226.02101,"873,T22.319A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.321A ",.01)
 ;;T22.321A
 ;;9002226.02101,"873,T22.321A ",.02)
 ;;T22.321A
 ;;9002226.02101,"873,T22.321A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.322A ",.01)
 ;;T22.322A
 ;;9002226.02101,"873,T22.322A ",.02)
 ;;T22.322A
 ;;9002226.02101,"873,T22.322A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.329A ",.01)
 ;;T22.329A
 ;;9002226.02101,"873,T22.329A ",.02)
 ;;T22.329A
 ;;9002226.02101,"873,T22.329A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.331A ",.01)
 ;;T22.331A
 ;;9002226.02101,"873,T22.331A ",.02)
 ;;T22.331A
 ;;9002226.02101,"873,T22.331A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.332A ",.01)
 ;;T22.332A
 ;;9002226.02101,"873,T22.332A ",.02)
 ;;T22.332A
 ;;9002226.02101,"873,T22.332A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.339A ",.01)
 ;;T22.339A
 ;;9002226.02101,"873,T22.339A ",.02)
 ;;T22.339A
 ;;9002226.02101,"873,T22.339A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.341A ",.01)
 ;;T22.341A
 ;;9002226.02101,"873,T22.341A ",.02)
 ;;T22.341A
 ;;9002226.02101,"873,T22.341A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.342A ",.01)
 ;;T22.342A
 ;;9002226.02101,"873,T22.342A ",.02)
 ;;T22.342A
 ;;9002226.02101,"873,T22.342A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.349A ",.01)
 ;;T22.349A
 ;;9002226.02101,"873,T22.349A ",.02)
 ;;T22.349A
 ;;9002226.02101,"873,T22.349A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.351A ",.01)
 ;;T22.351A
 ;;9002226.02101,"873,T22.351A ",.02)
 ;;T22.351A
 ;;9002226.02101,"873,T22.351A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.352A ",.01)
 ;;T22.352A
 ;;9002226.02101,"873,T22.352A ",.02)
 ;;T22.352A
 ;;9002226.02101,"873,T22.352A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.359A ",.01)
 ;;T22.359A
 ;;9002226.02101,"873,T22.359A ",.02)
 ;;T22.359A
 ;;9002226.02101,"873,T22.359A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.361A ",.01)
 ;;T22.361A
 ;;9002226.02101,"873,T22.361A ",.02)
 ;;T22.361A
 ;;9002226.02101,"873,T22.361A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.362A ",.01)
 ;;T22.362A
 ;;9002226.02101,"873,T22.362A ",.02)
 ;;T22.362A
 ;;9002226.02101,"873,T22.362A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.369A ",.01)
 ;;T22.369A
 ;;9002226.02101,"873,T22.369A ",.02)
 ;;T22.369A
 ;;9002226.02101,"873,T22.369A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.391A ",.01)
 ;;T22.391A
 ;;9002226.02101,"873,T22.391A ",.02)
 ;;T22.391A
 ;;9002226.02101,"873,T22.391A ",.03)
 ;;30
 ;;9002226.02101,"873,T22.392A ",.01)
 ;;T22.392A
 ;;9002226.02101,"873,T22.392A ",.02)
 ;;T22.392A
 ;;9002226.02101,"873,T22.392A ",.03)
 ;;30
