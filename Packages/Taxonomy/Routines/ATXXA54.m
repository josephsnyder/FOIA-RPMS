ATXXA54 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,S37.042A ",.01)
 ;;S37.042A
 ;;9002226.02101,"873,S37.042A ",.02)
 ;;S37.042A
 ;;9002226.02101,"873,S37.042A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.049A ",.01)
 ;;S37.049A
 ;;9002226.02101,"873,S37.049A ",.02)
 ;;S37.049A
 ;;9002226.02101,"873,S37.049A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.051A ",.01)
 ;;S37.051A
 ;;9002226.02101,"873,S37.051A ",.02)
 ;;S37.051A
 ;;9002226.02101,"873,S37.051A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.052A ",.01)
 ;;S37.052A
 ;;9002226.02101,"873,S37.052A ",.02)
 ;;S37.052A
 ;;9002226.02101,"873,S37.052A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.059A ",.01)
 ;;S37.059A
 ;;9002226.02101,"873,S37.059A ",.02)
 ;;S37.059A
 ;;9002226.02101,"873,S37.059A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.061A ",.01)
 ;;S37.061A
 ;;9002226.02101,"873,S37.061A ",.02)
 ;;S37.061A
 ;;9002226.02101,"873,S37.061A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.062A ",.01)
 ;;S37.062A
 ;;9002226.02101,"873,S37.062A ",.02)
 ;;S37.062A
 ;;9002226.02101,"873,S37.062A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.069A ",.01)
 ;;S37.069A
 ;;9002226.02101,"873,S37.069A ",.02)
 ;;S37.069A
 ;;9002226.02101,"873,S37.069A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.091A ",.01)
 ;;S37.091A
 ;;9002226.02101,"873,S37.091A ",.02)
 ;;S37.091A
 ;;9002226.02101,"873,S37.091A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.092A ",.01)
 ;;S37.092A
 ;;9002226.02101,"873,S37.092A ",.02)
 ;;S37.092A
 ;;9002226.02101,"873,S37.092A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.099A ",.01)
 ;;S37.099A
 ;;9002226.02101,"873,S37.099A ",.02)
 ;;S37.099A
 ;;9002226.02101,"873,S37.099A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.10XA ",.01)
 ;;S37.10XA
 ;;9002226.02101,"873,S37.10XA ",.02)
 ;;S37.10XA
 ;;9002226.02101,"873,S37.10XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.12XA ",.01)
 ;;S37.12XA
 ;;9002226.02101,"873,S37.12XA ",.02)
 ;;S37.12XA
 ;;9002226.02101,"873,S37.12XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.13XA ",.01)
 ;;S37.13XA
 ;;9002226.02101,"873,S37.13XA ",.02)
 ;;S37.13XA
 ;;9002226.02101,"873,S37.13XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.19XA ",.01)
 ;;S37.19XA
 ;;9002226.02101,"873,S37.19XA ",.02)
 ;;S37.19XA
 ;;9002226.02101,"873,S37.19XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.20XA ",.01)
 ;;S37.20XA
 ;;9002226.02101,"873,S37.20XA ",.02)
 ;;S37.20XA
 ;;9002226.02101,"873,S37.20XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.22XA ",.01)
 ;;S37.22XA
 ;;9002226.02101,"873,S37.22XA ",.02)
 ;;S37.22XA
 ;;9002226.02101,"873,S37.22XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.23XA ",.01)
 ;;S37.23XA
 ;;9002226.02101,"873,S37.23XA ",.02)
 ;;S37.23XA
 ;;9002226.02101,"873,S37.23XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.29XA ",.01)
 ;;S37.29XA
 ;;9002226.02101,"873,S37.29XA ",.02)
 ;;S37.29XA
 ;;9002226.02101,"873,S37.29XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.30XA ",.01)
 ;;S37.30XA
 ;;9002226.02101,"873,S37.30XA ",.02)
 ;;S37.30XA
 ;;9002226.02101,"873,S37.30XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.32XA ",.01)
 ;;S37.32XA
 ;;9002226.02101,"873,S37.32XA ",.02)
 ;;S37.32XA
 ;;9002226.02101,"873,S37.32XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.33XA ",.01)
 ;;S37.33XA
 ;;9002226.02101,"873,S37.33XA ",.02)
 ;;S37.33XA
 ;;9002226.02101,"873,S37.33XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.39XA ",.01)
 ;;S37.39XA
 ;;9002226.02101,"873,S37.39XA ",.02)
 ;;S37.39XA
 ;;9002226.02101,"873,S37.39XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.401A ",.01)
 ;;S37.401A
 ;;9002226.02101,"873,S37.401A ",.02)
 ;;S37.401A
 ;;9002226.02101,"873,S37.401A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.402A ",.01)
 ;;S37.402A
 ;;9002226.02101,"873,S37.402A ",.02)
 ;;S37.402A
 ;;9002226.02101,"873,S37.402A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.409A ",.01)
 ;;S37.409A
 ;;9002226.02101,"873,S37.409A ",.02)
 ;;S37.409A
 ;;9002226.02101,"873,S37.409A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.421A ",.01)
 ;;S37.421A
 ;;9002226.02101,"873,S37.421A ",.02)
 ;;S37.421A
 ;;9002226.02101,"873,S37.421A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.422A ",.01)
 ;;S37.422A
 ;;9002226.02101,"873,S37.422A ",.02)
 ;;S37.422A
 ;;9002226.02101,"873,S37.422A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.429A ",.01)
 ;;S37.429A
 ;;9002226.02101,"873,S37.429A ",.02)
 ;;S37.429A
 ;;9002226.02101,"873,S37.429A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.431A ",.01)
 ;;S37.431A
 ;;9002226.02101,"873,S37.431A ",.02)
 ;;S37.431A
 ;;9002226.02101,"873,S37.431A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.432A ",.01)
 ;;S37.432A
 ;;9002226.02101,"873,S37.432A ",.02)
 ;;S37.432A
 ;;9002226.02101,"873,S37.432A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.439A ",.01)
 ;;S37.439A
 ;;9002226.02101,"873,S37.439A ",.02)
 ;;S37.439A
 ;;9002226.02101,"873,S37.439A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.491A ",.01)
 ;;S37.491A
 ;;9002226.02101,"873,S37.491A ",.02)
 ;;S37.491A
 ;;9002226.02101,"873,S37.491A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.492A ",.01)
 ;;S37.492A
 ;;9002226.02101,"873,S37.492A ",.02)
 ;;S37.492A
 ;;9002226.02101,"873,S37.492A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.499A ",.01)
 ;;S37.499A
 ;;9002226.02101,"873,S37.499A ",.02)
 ;;S37.499A
 ;;9002226.02101,"873,S37.499A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.501A ",.01)
 ;;S37.501A
 ;;9002226.02101,"873,S37.501A ",.02)
 ;;S37.501A
 ;;9002226.02101,"873,S37.501A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.502A ",.01)
 ;;S37.502A
 ;;9002226.02101,"873,S37.502A ",.02)
 ;;S37.502A
 ;;9002226.02101,"873,S37.502A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.509A ",.01)
 ;;S37.509A
 ;;9002226.02101,"873,S37.509A ",.02)
 ;;S37.509A
 ;;9002226.02101,"873,S37.509A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.511A ",.01)
 ;;S37.511A
 ;;9002226.02101,"873,S37.511A ",.02)
 ;;S37.511A
 ;;9002226.02101,"873,S37.511A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.512A ",.01)
 ;;S37.512A
 ;;9002226.02101,"873,S37.512A ",.02)
 ;;S37.512A
 ;;9002226.02101,"873,S37.512A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.519A ",.01)
 ;;S37.519A
 ;;9002226.02101,"873,S37.519A ",.02)
 ;;S37.519A
 ;;9002226.02101,"873,S37.519A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.521A ",.01)
 ;;S37.521A
 ;;9002226.02101,"873,S37.521A ",.02)
 ;;S37.521A
 ;;9002226.02101,"873,S37.521A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.522A ",.01)
 ;;S37.522A
 ;;9002226.02101,"873,S37.522A ",.02)
 ;;S37.522A
 ;;9002226.02101,"873,S37.522A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.529A ",.01)
 ;;S37.529A
 ;;9002226.02101,"873,S37.529A ",.02)
 ;;S37.529A
 ;;9002226.02101,"873,S37.529A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.531A ",.01)
 ;;S37.531A
 ;;9002226.02101,"873,S37.531A ",.02)
 ;;S37.531A
 ;;9002226.02101,"873,S37.531A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.532A ",.01)
 ;;S37.532A
 ;;9002226.02101,"873,S37.532A ",.02)
 ;;S37.532A
 ;;9002226.02101,"873,S37.532A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.539A ",.01)
 ;;S37.539A
 ;;9002226.02101,"873,S37.539A ",.02)
 ;;S37.539A
 ;;9002226.02101,"873,S37.539A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.591A ",.01)
 ;;S37.591A
 ;;9002226.02101,"873,S37.591A ",.02)
 ;;S37.591A
 ;;9002226.02101,"873,S37.591A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.592A ",.01)
 ;;S37.592A
 ;;9002226.02101,"873,S37.592A ",.02)
 ;;S37.592A
 ;;9002226.02101,"873,S37.592A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.599A ",.01)
 ;;S37.599A
 ;;9002226.02101,"873,S37.599A ",.02)
 ;;S37.599A
 ;;9002226.02101,"873,S37.599A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.60XA ",.01)
 ;;S37.60XA
 ;;9002226.02101,"873,S37.60XA ",.02)
 ;;S37.60XA
 ;;9002226.02101,"873,S37.60XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.62XA ",.01)
 ;;S37.62XA
 ;;9002226.02101,"873,S37.62XA ",.02)
 ;;S37.62XA
 ;;9002226.02101,"873,S37.62XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.63XA ",.01)
 ;;S37.63XA
 ;;9002226.02101,"873,S37.63XA ",.02)
 ;;S37.63XA
 ;;9002226.02101,"873,S37.63XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.69XA ",.01)
 ;;S37.69XA
 ;;9002226.02101,"873,S37.69XA ",.02)
 ;;S37.69XA
 ;;9002226.02101,"873,S37.69XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.812A ",.01)
 ;;S37.812A
 ;;9002226.02101,"873,S37.812A ",.02)
 ;;S37.812A
 ;;9002226.02101,"873,S37.812A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.813A ",.01)
 ;;S37.813A
 ;;9002226.02101,"873,S37.813A ",.02)
 ;;S37.813A
 ;;9002226.02101,"873,S37.813A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.818A ",.01)
 ;;S37.818A
 ;;9002226.02101,"873,S37.818A ",.02)
 ;;S37.818A
 ;;9002226.02101,"873,S37.818A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.819A ",.01)
 ;;S37.819A
 ;;9002226.02101,"873,S37.819A ",.02)
 ;;S37.819A
 ;;9002226.02101,"873,S37.819A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.822A ",.01)
 ;;S37.822A
 ;;9002226.02101,"873,S37.822A ",.02)
 ;;S37.822A
 ;;9002226.02101,"873,S37.822A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.823A ",.01)
 ;;S37.823A
 ;;9002226.02101,"873,S37.823A ",.02)
 ;;S37.823A
 ;;9002226.02101,"873,S37.823A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.828A ",.01)
 ;;S37.828A
 ;;9002226.02101,"873,S37.828A ",.02)
 ;;S37.828A
 ;;9002226.02101,"873,S37.828A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.829A ",.01)
 ;;S37.829A
 ;;9002226.02101,"873,S37.829A ",.02)
 ;;S37.829A
 ;;9002226.02101,"873,S37.829A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.892A ",.01)
 ;;S37.892A
 ;;9002226.02101,"873,S37.892A ",.02)
 ;;S37.892A
 ;;9002226.02101,"873,S37.892A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.893A ",.01)
 ;;S37.893A
 ;;9002226.02101,"873,S37.893A ",.02)
 ;;S37.893A
 ;;9002226.02101,"873,S37.893A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.898A ",.01)
 ;;S37.898A
 ;;9002226.02101,"873,S37.898A ",.02)
 ;;S37.898A
 ;;9002226.02101,"873,S37.898A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.899A ",.01)
 ;;S37.899A
 ;;9002226.02101,"873,S37.899A ",.02)
 ;;S37.899A
 ;;9002226.02101,"873,S37.899A ",.03)
 ;;30
 ;;9002226.02101,"873,S37.90XA ",.01)
 ;;S37.90XA
 ;;9002226.02101,"873,S37.90XA ",.02)
 ;;S37.90XA
 ;;9002226.02101,"873,S37.90XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.92XA ",.01)
 ;;S37.92XA
 ;;9002226.02101,"873,S37.92XA ",.02)
 ;;S37.92XA
 ;;9002226.02101,"873,S37.92XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.93XA ",.01)
 ;;S37.93XA
 ;;9002226.02101,"873,S37.93XA ",.02)
 ;;S37.93XA
 ;;9002226.02101,"873,S37.93XA ",.03)
 ;;30
 ;;9002226.02101,"873,S37.99XA ",.01)
 ;;S37.99XA
 ;;9002226.02101,"873,S37.99XA ",.02)
 ;;S37.99XA
 ;;9002226.02101,"873,S37.99XA ",.03)
 ;;30
 ;;9002226.02101,"873,S38.001A ",.01)
 ;;S38.001A
 ;;9002226.02101,"873,S38.001A ",.02)
 ;;S38.001A
 ;;9002226.02101,"873,S38.001A ",.03)
 ;;30
 ;;9002226.02101,"873,S38.002A ",.01)
 ;;S38.002A
 ;;9002226.02101,"873,S38.002A ",.02)
 ;;S38.002A
 ;;9002226.02101,"873,S38.002A ",.03)
 ;;30
 ;;9002226.02101,"873,S38.01XA ",.01)
 ;;S38.01XA
 ;;9002226.02101,"873,S38.01XA ",.02)
 ;;S38.01XA
 ;;9002226.02101,"873,S38.01XA ",.03)
 ;;30
 ;;9002226.02101,"873,S38.02XA ",.01)
 ;;S38.02XA
 ;;9002226.02101,"873,S38.02XA ",.02)
 ;;S38.02XA
 ;;9002226.02101,"873,S38.02XA ",.03)
 ;;30
 ;;9002226.02101,"873,S38.03XA ",.01)
 ;;S38.03XA
 ;;9002226.02101,"873,S38.03XA ",.02)
 ;;S38.03XA
 ;;9002226.02101,"873,S38.03XA ",.03)
 ;;30
 ;;9002226.02101,"873,S38.1XXA ",.01)
 ;;S38.1XXA
 ;;9002226.02101,"873,S38.1XXA ",.02)
 ;;S38.1XXA
 ;;9002226.02101,"873,S38.1XXA ",.03)
 ;;30
 ;;9002226.02101,"873,S38.211A ",.01)
 ;;S38.211A
 ;;9002226.02101,"873,S38.211A ",.02)
 ;;S38.211A
 ;;9002226.02101,"873,S38.211A ",.03)
 ;;30
 ;;9002226.02101,"873,S38.212A ",.01)
 ;;S38.212A
 ;;9002226.02101,"873,S38.212A ",.02)
 ;;S38.212A
 ;;9002226.02101,"873,S38.212A ",.03)
 ;;30
 ;;9002226.02101,"873,S38.221A ",.01)
 ;;S38.221A
