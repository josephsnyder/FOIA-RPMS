ATXXA29 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S00.401A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.402A ",.01)
 ;;S00.402A
 ;;9002226.02101,"873,S00.402A ",.02)
 ;;S00.402A
 ;;9002226.02101,"873,S00.402A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.409A ",.01)
 ;;S00.409A
 ;;9002226.02101,"873,S00.409A ",.02)
 ;;S00.409A
 ;;9002226.02101,"873,S00.409A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.411A ",.01)
 ;;S00.411A
 ;;9002226.02101,"873,S00.411A ",.02)
 ;;S00.411A
 ;;9002226.02101,"873,S00.411A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.412A ",.01)
 ;;S00.412A
 ;;9002226.02101,"873,S00.412A ",.02)
 ;;S00.412A
 ;;9002226.02101,"873,S00.412A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.419A ",.01)
 ;;S00.419A
 ;;9002226.02101,"873,S00.419A ",.02)
 ;;S00.419A
 ;;9002226.02101,"873,S00.419A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.431A ",.01)
 ;;S00.431A
 ;;9002226.02101,"873,S00.431A ",.02)
 ;;S00.431A
 ;;9002226.02101,"873,S00.431A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.432A ",.01)
 ;;S00.432A
 ;;9002226.02101,"873,S00.432A ",.02)
 ;;S00.432A
 ;;9002226.02101,"873,S00.432A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.439A ",.01)
 ;;S00.439A
 ;;9002226.02101,"873,S00.439A ",.02)
 ;;S00.439A
 ;;9002226.02101,"873,S00.439A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.441A ",.01)
 ;;S00.441A
 ;;9002226.02101,"873,S00.441A ",.02)
 ;;S00.441A
 ;;9002226.02101,"873,S00.441A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.442A ",.01)
 ;;S00.442A
 ;;9002226.02101,"873,S00.442A ",.02)
 ;;S00.442A
 ;;9002226.02101,"873,S00.442A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.449A ",.01)
 ;;S00.449A
 ;;9002226.02101,"873,S00.449A ",.02)
 ;;S00.449A
 ;;9002226.02101,"873,S00.449A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.451A ",.01)
 ;;S00.451A
 ;;9002226.02101,"873,S00.451A ",.02)
 ;;S00.451A
 ;;9002226.02101,"873,S00.451A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.452A ",.01)
 ;;S00.452A
 ;;9002226.02101,"873,S00.452A ",.02)
 ;;S00.452A
 ;;9002226.02101,"873,S00.452A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.459A ",.01)
 ;;S00.459A
 ;;9002226.02101,"873,S00.459A ",.02)
 ;;S00.459A
 ;;9002226.02101,"873,S00.459A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.471A ",.01)
 ;;S00.471A
 ;;9002226.02101,"873,S00.471A ",.02)
 ;;S00.471A
 ;;9002226.02101,"873,S00.471A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.472A ",.01)
 ;;S00.472A
 ;;9002226.02101,"873,S00.472A ",.02)
 ;;S00.472A
 ;;9002226.02101,"873,S00.472A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.479A ",.01)
 ;;S00.479A
 ;;9002226.02101,"873,S00.479A ",.02)
 ;;S00.479A
 ;;9002226.02101,"873,S00.479A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.501A ",.01)
 ;;S00.501A
 ;;9002226.02101,"873,S00.501A ",.02)
 ;;S00.501A
 ;;9002226.02101,"873,S00.501A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.502A ",.01)
 ;;S00.502A
 ;;9002226.02101,"873,S00.502A ",.02)
 ;;S00.502A
 ;;9002226.02101,"873,S00.502A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.511A ",.01)
 ;;S00.511A
 ;;9002226.02101,"873,S00.511A ",.02)
 ;;S00.511A
 ;;9002226.02101,"873,S00.511A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.512A ",.01)
 ;;S00.512A
 ;;9002226.02101,"873,S00.512A ",.02)
 ;;S00.512A
 ;;9002226.02101,"873,S00.512A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.531A ",.01)
 ;;S00.531A
 ;;9002226.02101,"873,S00.531A ",.02)
 ;;S00.531A
 ;;9002226.02101,"873,S00.531A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.532A ",.01)
 ;;S00.532A
 ;;9002226.02101,"873,S00.532A ",.02)
 ;;S00.532A
 ;;9002226.02101,"873,S00.532A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.541A ",.01)
 ;;S00.541A
 ;;9002226.02101,"873,S00.541A ",.02)
 ;;S00.541A
 ;;9002226.02101,"873,S00.541A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.542A ",.01)
 ;;S00.542A
 ;;9002226.02101,"873,S00.542A ",.02)
 ;;S00.542A
 ;;9002226.02101,"873,S00.542A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.551A ",.01)
 ;;S00.551A
 ;;9002226.02101,"873,S00.551A ",.02)
 ;;S00.551A
 ;;9002226.02101,"873,S00.551A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.552A ",.01)
 ;;S00.552A
 ;;9002226.02101,"873,S00.552A ",.02)
 ;;S00.552A
 ;;9002226.02101,"873,S00.552A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.571A ",.01)
 ;;S00.571A
 ;;9002226.02101,"873,S00.571A ",.02)
 ;;S00.571A
 ;;9002226.02101,"873,S00.571A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.572A ",.01)
 ;;S00.572A
 ;;9002226.02101,"873,S00.572A ",.02)
 ;;S00.572A
 ;;9002226.02101,"873,S00.572A ",.03)
 ;;30
 ;;9002226.02101,"873,S00.80XA ",.01)
 ;;S00.80XA
 ;;9002226.02101,"873,S00.80XA ",.02)
 ;;S00.80XA
 ;;9002226.02101,"873,S00.80XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.81XA ",.01)
 ;;S00.81XA
 ;;9002226.02101,"873,S00.81XA ",.02)
 ;;S00.81XA
 ;;9002226.02101,"873,S00.81XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.83XA ",.01)
 ;;S00.83XA
 ;;9002226.02101,"873,S00.83XA ",.02)
 ;;S00.83XA
 ;;9002226.02101,"873,S00.83XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.84XA ",.01)
 ;;S00.84XA
 ;;9002226.02101,"873,S00.84XA ",.02)
 ;;S00.84XA
 ;;9002226.02101,"873,S00.84XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.85XA ",.01)
 ;;S00.85XA
 ;;9002226.02101,"873,S00.85XA ",.02)
 ;;S00.85XA
 ;;9002226.02101,"873,S00.85XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.87XA ",.01)
 ;;S00.87XA
 ;;9002226.02101,"873,S00.87XA ",.02)
 ;;S00.87XA
 ;;9002226.02101,"873,S00.87XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.90XA ",.01)
 ;;S00.90XA
 ;;9002226.02101,"873,S00.90XA ",.02)
 ;;S00.90XA
 ;;9002226.02101,"873,S00.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.91XA ",.01)
 ;;S00.91XA
 ;;9002226.02101,"873,S00.91XA ",.02)
 ;;S00.91XA
 ;;9002226.02101,"873,S00.91XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.93XA ",.01)
 ;;S00.93XA
 ;;9002226.02101,"873,S00.93XA ",.02)
 ;;S00.93XA
 ;;9002226.02101,"873,S00.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.94XA ",.01)
 ;;S00.94XA
 ;;9002226.02101,"873,S00.94XA ",.02)
 ;;S00.94XA
 ;;9002226.02101,"873,S00.94XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.95XA ",.01)
 ;;S00.95XA
 ;;9002226.02101,"873,S00.95XA ",.02)
 ;;S00.95XA
 ;;9002226.02101,"873,S00.95XA ",.03)
 ;;30
 ;;9002226.02101,"873,S00.97XA ",.01)
 ;;S00.97XA
 ;;9002226.02101,"873,S00.97XA ",.02)
 ;;S00.97XA
 ;;9002226.02101,"873,S00.97XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.00XA ",.01)
 ;;S01.00XA
 ;;9002226.02101,"873,S01.00XA ",.02)
 ;;S01.00XA
 ;;9002226.02101,"873,S01.00XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.01XA ",.01)
 ;;S01.01XA
 ;;9002226.02101,"873,S01.01XA ",.02)
 ;;S01.01XA
 ;;9002226.02101,"873,S01.01XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.02XA ",.01)
 ;;S01.02XA
 ;;9002226.02101,"873,S01.02XA ",.02)
 ;;S01.02XA
 ;;9002226.02101,"873,S01.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.03XA ",.01)
 ;;S01.03XA
 ;;9002226.02101,"873,S01.03XA ",.02)
 ;;S01.03XA
 ;;9002226.02101,"873,S01.03XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.04XA ",.01)
 ;;S01.04XA
 ;;9002226.02101,"873,S01.04XA ",.02)
 ;;S01.04XA
 ;;9002226.02101,"873,S01.04XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.05XA ",.01)
 ;;S01.05XA
 ;;9002226.02101,"873,S01.05XA ",.02)
 ;;S01.05XA
 ;;9002226.02101,"873,S01.05XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.101A ",.01)
 ;;S01.101A
 ;;9002226.02101,"873,S01.101A ",.02)
 ;;S01.101A
 ;;9002226.02101,"873,S01.101A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.102A ",.01)
 ;;S01.102A
 ;;9002226.02101,"873,S01.102A ",.02)
 ;;S01.102A
 ;;9002226.02101,"873,S01.102A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.109A ",.01)
 ;;S01.109A
 ;;9002226.02101,"873,S01.109A ",.02)
 ;;S01.109A
 ;;9002226.02101,"873,S01.109A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.111A ",.01)
 ;;S01.111A
 ;;9002226.02101,"873,S01.111A ",.02)
 ;;S01.111A
 ;;9002226.02101,"873,S01.111A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.112A ",.01)
 ;;S01.112A
 ;;9002226.02101,"873,S01.112A ",.02)
 ;;S01.112A
 ;;9002226.02101,"873,S01.112A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.119A ",.01)
 ;;S01.119A
 ;;9002226.02101,"873,S01.119A ",.02)
 ;;S01.119A
 ;;9002226.02101,"873,S01.119A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.121A ",.01)
 ;;S01.121A
 ;;9002226.02101,"873,S01.121A ",.02)
 ;;S01.121A
 ;;9002226.02101,"873,S01.121A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.122A ",.01)
 ;;S01.122A
 ;;9002226.02101,"873,S01.122A ",.02)
 ;;S01.122A
 ;;9002226.02101,"873,S01.122A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.129A ",.01)
 ;;S01.129A
 ;;9002226.02101,"873,S01.129A ",.02)
 ;;S01.129A
 ;;9002226.02101,"873,S01.129A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.131A ",.01)
 ;;S01.131A
 ;;9002226.02101,"873,S01.131A ",.02)
 ;;S01.131A
 ;;9002226.02101,"873,S01.131A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.132A ",.01)
 ;;S01.132A
 ;;9002226.02101,"873,S01.132A ",.02)
 ;;S01.132A
 ;;9002226.02101,"873,S01.132A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.139A ",.01)
 ;;S01.139A
 ;;9002226.02101,"873,S01.139A ",.02)
 ;;S01.139A
 ;;9002226.02101,"873,S01.139A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.141A ",.01)
 ;;S01.141A
 ;;9002226.02101,"873,S01.141A ",.02)
 ;;S01.141A
 ;;9002226.02101,"873,S01.141A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.142A ",.01)
 ;;S01.142A
 ;;9002226.02101,"873,S01.142A ",.02)
 ;;S01.142A
 ;;9002226.02101,"873,S01.142A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.149A ",.01)
 ;;S01.149A
 ;;9002226.02101,"873,S01.149A ",.02)
 ;;S01.149A
 ;;9002226.02101,"873,S01.149A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.151A ",.01)
 ;;S01.151A
 ;;9002226.02101,"873,S01.151A ",.02)
 ;;S01.151A
 ;;9002226.02101,"873,S01.151A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.152A ",.01)
 ;;S01.152A
 ;;9002226.02101,"873,S01.152A ",.02)
 ;;S01.152A
 ;;9002226.02101,"873,S01.152A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.159A ",.01)
 ;;S01.159A
 ;;9002226.02101,"873,S01.159A ",.02)
 ;;S01.159A
 ;;9002226.02101,"873,S01.159A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.20XA ",.01)
 ;;S01.20XA
 ;;9002226.02101,"873,S01.20XA ",.02)
 ;;S01.20XA
 ;;9002226.02101,"873,S01.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.21XA ",.01)
 ;;S01.21XA
 ;;9002226.02101,"873,S01.21XA ",.02)
 ;;S01.21XA
 ;;9002226.02101,"873,S01.21XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.22XA ",.01)
 ;;S01.22XA
 ;;9002226.02101,"873,S01.22XA ",.02)
 ;;S01.22XA
 ;;9002226.02101,"873,S01.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.23XA ",.01)
 ;;S01.23XA
 ;;9002226.02101,"873,S01.23XA ",.02)
 ;;S01.23XA
 ;;9002226.02101,"873,S01.23XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.24XA ",.01)
 ;;S01.24XA
 ;;9002226.02101,"873,S01.24XA ",.02)
 ;;S01.24XA
 ;;9002226.02101,"873,S01.24XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.25XA ",.01)
 ;;S01.25XA
 ;;9002226.02101,"873,S01.25XA ",.02)
 ;;S01.25XA
 ;;9002226.02101,"873,S01.25XA ",.03)
 ;;30
 ;;9002226.02101,"873,S01.301A ",.01)
 ;;S01.301A
 ;;9002226.02101,"873,S01.301A ",.02)
 ;;S01.301A
 ;;9002226.02101,"873,S01.301A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.302A ",.01)
 ;;S01.302A
 ;;9002226.02101,"873,S01.302A ",.02)
 ;;S01.302A
 ;;9002226.02101,"873,S01.302A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.309A ",.01)
 ;;S01.309A
 ;;9002226.02101,"873,S01.309A ",.02)
 ;;S01.309A
 ;;9002226.02101,"873,S01.309A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.311A ",.01)
 ;;S01.311A
 ;;9002226.02101,"873,S01.311A ",.02)
 ;;S01.311A
 ;;9002226.02101,"873,S01.311A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.312A ",.01)
 ;;S01.312A
 ;;9002226.02101,"873,S01.312A ",.02)
 ;;S01.312A
 ;;9002226.02101,"873,S01.312A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.319A ",.01)
 ;;S01.319A
 ;;9002226.02101,"873,S01.319A ",.02)
 ;;S01.319A
 ;;9002226.02101,"873,S01.319A ",.03)
 ;;30
 ;;9002226.02101,"873,S01.321A ",.01)
 ;;S01.321A
 ;;9002226.02101,"873,S01.321A ",.02)
 ;;S01.321A
 ;;9002226.02101,"873,S01.321A ",.03)
 ;;30
