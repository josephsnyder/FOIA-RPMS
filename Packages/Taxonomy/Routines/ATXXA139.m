ATXXA139 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T23.242A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.249A ",.01)
 ;;T23.249A
 ;;9002226.02101,"873,T23.249A ",.02)
 ;;T23.249A
 ;;9002226.02101,"873,T23.249A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.251A ",.01)
 ;;T23.251A
 ;;9002226.02101,"873,T23.251A ",.02)
 ;;T23.251A
 ;;9002226.02101,"873,T23.251A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.252A ",.01)
 ;;T23.252A
 ;;9002226.02101,"873,T23.252A ",.02)
 ;;T23.252A
 ;;9002226.02101,"873,T23.252A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.259A ",.01)
 ;;T23.259A
 ;;9002226.02101,"873,T23.259A ",.02)
 ;;T23.259A
 ;;9002226.02101,"873,T23.259A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.261A ",.01)
 ;;T23.261A
 ;;9002226.02101,"873,T23.261A ",.02)
 ;;T23.261A
 ;;9002226.02101,"873,T23.261A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.262A ",.01)
 ;;T23.262A
 ;;9002226.02101,"873,T23.262A ",.02)
 ;;T23.262A
 ;;9002226.02101,"873,T23.262A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.269A ",.01)
 ;;T23.269A
 ;;9002226.02101,"873,T23.269A ",.02)
 ;;T23.269A
 ;;9002226.02101,"873,T23.269A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.271A ",.01)
 ;;T23.271A
 ;;9002226.02101,"873,T23.271A ",.02)
 ;;T23.271A
 ;;9002226.02101,"873,T23.271A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.272A ",.01)
 ;;T23.272A
 ;;9002226.02101,"873,T23.272A ",.02)
 ;;T23.272A
 ;;9002226.02101,"873,T23.272A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.279A ",.01)
 ;;T23.279A
 ;;9002226.02101,"873,T23.279A ",.02)
 ;;T23.279A
 ;;9002226.02101,"873,T23.279A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.291A ",.01)
 ;;T23.291A
 ;;9002226.02101,"873,T23.291A ",.02)
 ;;T23.291A
 ;;9002226.02101,"873,T23.291A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.292A ",.01)
 ;;T23.292A
 ;;9002226.02101,"873,T23.292A ",.02)
 ;;T23.292A
 ;;9002226.02101,"873,T23.292A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.299A ",.01)
 ;;T23.299A
 ;;9002226.02101,"873,T23.299A ",.02)
 ;;T23.299A
 ;;9002226.02101,"873,T23.299A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.301A ",.01)
 ;;T23.301A
 ;;9002226.02101,"873,T23.301A ",.02)
 ;;T23.301A
 ;;9002226.02101,"873,T23.301A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.302A ",.01)
 ;;T23.302A
 ;;9002226.02101,"873,T23.302A ",.02)
 ;;T23.302A
 ;;9002226.02101,"873,T23.302A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.309A ",.01)
 ;;T23.309A
 ;;9002226.02101,"873,T23.309A ",.02)
 ;;T23.309A
 ;;9002226.02101,"873,T23.309A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.311A ",.01)
 ;;T23.311A
 ;;9002226.02101,"873,T23.311A ",.02)
 ;;T23.311A
 ;;9002226.02101,"873,T23.311A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.312A ",.01)
 ;;T23.312A
 ;;9002226.02101,"873,T23.312A ",.02)
 ;;T23.312A
 ;;9002226.02101,"873,T23.312A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.319A ",.01)
 ;;T23.319A
 ;;9002226.02101,"873,T23.319A ",.02)
 ;;T23.319A
 ;;9002226.02101,"873,T23.319A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.321A ",.01)
 ;;T23.321A
 ;;9002226.02101,"873,T23.321A ",.02)
 ;;T23.321A
 ;;9002226.02101,"873,T23.321A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.322A ",.01)
 ;;T23.322A
 ;;9002226.02101,"873,T23.322A ",.02)
 ;;T23.322A
 ;;9002226.02101,"873,T23.322A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.329A ",.01)
 ;;T23.329A
 ;;9002226.02101,"873,T23.329A ",.02)
 ;;T23.329A
 ;;9002226.02101,"873,T23.329A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.331A ",.01)
 ;;T23.331A
 ;;9002226.02101,"873,T23.331A ",.02)
 ;;T23.331A
 ;;9002226.02101,"873,T23.331A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.332A ",.01)
 ;;T23.332A
 ;;9002226.02101,"873,T23.332A ",.02)
 ;;T23.332A
 ;;9002226.02101,"873,T23.332A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.339A ",.01)
 ;;T23.339A
 ;;9002226.02101,"873,T23.339A ",.02)
 ;;T23.339A
 ;;9002226.02101,"873,T23.339A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.341A ",.01)
 ;;T23.341A
 ;;9002226.02101,"873,T23.341A ",.02)
 ;;T23.341A
 ;;9002226.02101,"873,T23.341A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.342A ",.01)
 ;;T23.342A
 ;;9002226.02101,"873,T23.342A ",.02)
 ;;T23.342A
 ;;9002226.02101,"873,T23.342A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.349A ",.01)
 ;;T23.349A
 ;;9002226.02101,"873,T23.349A ",.02)
 ;;T23.349A
 ;;9002226.02101,"873,T23.349A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.351A ",.01)
 ;;T23.351A
 ;;9002226.02101,"873,T23.351A ",.02)
 ;;T23.351A
 ;;9002226.02101,"873,T23.351A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.352A ",.01)
 ;;T23.352A
 ;;9002226.02101,"873,T23.352A ",.02)
 ;;T23.352A
 ;;9002226.02101,"873,T23.352A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.359A ",.01)
 ;;T23.359A
 ;;9002226.02101,"873,T23.359A ",.02)
 ;;T23.359A
 ;;9002226.02101,"873,T23.359A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.361A ",.01)
 ;;T23.361A
 ;;9002226.02101,"873,T23.361A ",.02)
 ;;T23.361A
 ;;9002226.02101,"873,T23.361A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.362A ",.01)
 ;;T23.362A
 ;;9002226.02101,"873,T23.362A ",.02)
 ;;T23.362A
 ;;9002226.02101,"873,T23.362A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.369A ",.01)
 ;;T23.369A
 ;;9002226.02101,"873,T23.369A ",.02)
 ;;T23.369A
 ;;9002226.02101,"873,T23.369A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.371A ",.01)
 ;;T23.371A
 ;;9002226.02101,"873,T23.371A ",.02)
 ;;T23.371A
 ;;9002226.02101,"873,T23.371A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.372A ",.01)
 ;;T23.372A
 ;;9002226.02101,"873,T23.372A ",.02)
 ;;T23.372A
 ;;9002226.02101,"873,T23.372A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.379A ",.01)
 ;;T23.379A
 ;;9002226.02101,"873,T23.379A ",.02)
 ;;T23.379A
 ;;9002226.02101,"873,T23.379A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.391A ",.01)
 ;;T23.391A
 ;;9002226.02101,"873,T23.391A ",.02)
 ;;T23.391A
 ;;9002226.02101,"873,T23.391A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.392A ",.01)
 ;;T23.392A
 ;;9002226.02101,"873,T23.392A ",.02)
 ;;T23.392A
 ;;9002226.02101,"873,T23.392A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.399A ",.01)
 ;;T23.399A
 ;;9002226.02101,"873,T23.399A ",.02)
 ;;T23.399A
 ;;9002226.02101,"873,T23.399A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.401A ",.01)
 ;;T23.401A
 ;;9002226.02101,"873,T23.401A ",.02)
 ;;T23.401A
 ;;9002226.02101,"873,T23.401A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.402A ",.01)
 ;;T23.402A
 ;;9002226.02101,"873,T23.402A ",.02)
 ;;T23.402A
 ;;9002226.02101,"873,T23.402A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.409A ",.01)
 ;;T23.409A
 ;;9002226.02101,"873,T23.409A ",.02)
 ;;T23.409A
 ;;9002226.02101,"873,T23.409A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.411A ",.01)
 ;;T23.411A
 ;;9002226.02101,"873,T23.411A ",.02)
 ;;T23.411A
 ;;9002226.02101,"873,T23.411A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.412A ",.01)
 ;;T23.412A
 ;;9002226.02101,"873,T23.412A ",.02)
 ;;T23.412A
 ;;9002226.02101,"873,T23.412A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.419A ",.01)
 ;;T23.419A
 ;;9002226.02101,"873,T23.419A ",.02)
 ;;T23.419A
 ;;9002226.02101,"873,T23.419A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.421A ",.01)
 ;;T23.421A
 ;;9002226.02101,"873,T23.421A ",.02)
 ;;T23.421A
 ;;9002226.02101,"873,T23.421A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.422A ",.01)
 ;;T23.422A
 ;;9002226.02101,"873,T23.422A ",.02)
 ;;T23.422A
 ;;9002226.02101,"873,T23.422A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.429A ",.01)
 ;;T23.429A
 ;;9002226.02101,"873,T23.429A ",.02)
 ;;T23.429A
 ;;9002226.02101,"873,T23.429A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.431A ",.01)
 ;;T23.431A
 ;;9002226.02101,"873,T23.431A ",.02)
 ;;T23.431A
 ;;9002226.02101,"873,T23.431A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.432A ",.01)
 ;;T23.432A
 ;;9002226.02101,"873,T23.432A ",.02)
 ;;T23.432A
 ;;9002226.02101,"873,T23.432A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.439A ",.01)
 ;;T23.439A
 ;;9002226.02101,"873,T23.439A ",.02)
 ;;T23.439A
 ;;9002226.02101,"873,T23.439A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.441A ",.01)
 ;;T23.441A
 ;;9002226.02101,"873,T23.441A ",.02)
 ;;T23.441A
 ;;9002226.02101,"873,T23.441A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.442A ",.01)
 ;;T23.442A
 ;;9002226.02101,"873,T23.442A ",.02)
 ;;T23.442A
 ;;9002226.02101,"873,T23.442A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.449A ",.01)
 ;;T23.449A
 ;;9002226.02101,"873,T23.449A ",.02)
 ;;T23.449A
 ;;9002226.02101,"873,T23.449A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.451A ",.01)
 ;;T23.451A
 ;;9002226.02101,"873,T23.451A ",.02)
 ;;T23.451A
 ;;9002226.02101,"873,T23.451A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.452A ",.01)
 ;;T23.452A
 ;;9002226.02101,"873,T23.452A ",.02)
 ;;T23.452A
 ;;9002226.02101,"873,T23.452A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.459A ",.01)
 ;;T23.459A
 ;;9002226.02101,"873,T23.459A ",.02)
 ;;T23.459A
 ;;9002226.02101,"873,T23.459A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.461A ",.01)
 ;;T23.461A
 ;;9002226.02101,"873,T23.461A ",.02)
 ;;T23.461A
 ;;9002226.02101,"873,T23.461A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.462A ",.01)
 ;;T23.462A
 ;;9002226.02101,"873,T23.462A ",.02)
 ;;T23.462A
 ;;9002226.02101,"873,T23.462A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.469A ",.01)
 ;;T23.469A
 ;;9002226.02101,"873,T23.469A ",.02)
 ;;T23.469A
 ;;9002226.02101,"873,T23.469A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.471A ",.01)
 ;;T23.471A
 ;;9002226.02101,"873,T23.471A ",.02)
 ;;T23.471A
 ;;9002226.02101,"873,T23.471A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.472A ",.01)
 ;;T23.472A
 ;;9002226.02101,"873,T23.472A ",.02)
 ;;T23.472A
 ;;9002226.02101,"873,T23.472A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.479A ",.01)
 ;;T23.479A
 ;;9002226.02101,"873,T23.479A ",.02)
 ;;T23.479A
 ;;9002226.02101,"873,T23.479A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.491A ",.01)
 ;;T23.491A
 ;;9002226.02101,"873,T23.491A ",.02)
 ;;T23.491A
 ;;9002226.02101,"873,T23.491A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.492A ",.01)
 ;;T23.492A
 ;;9002226.02101,"873,T23.492A ",.02)
 ;;T23.492A
 ;;9002226.02101,"873,T23.492A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.499A ",.01)
 ;;T23.499A
 ;;9002226.02101,"873,T23.499A ",.02)
 ;;T23.499A
 ;;9002226.02101,"873,T23.499A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.501A ",.01)
 ;;T23.501A
 ;;9002226.02101,"873,T23.501A ",.02)
 ;;T23.501A
 ;;9002226.02101,"873,T23.501A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.502A ",.01)
 ;;T23.502A
 ;;9002226.02101,"873,T23.502A ",.02)
 ;;T23.502A
 ;;9002226.02101,"873,T23.502A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.509A ",.01)
 ;;T23.509A
 ;;9002226.02101,"873,T23.509A ",.02)
 ;;T23.509A
 ;;9002226.02101,"873,T23.509A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.511A ",.01)
 ;;T23.511A
 ;;9002226.02101,"873,T23.511A ",.02)
 ;;T23.511A
 ;;9002226.02101,"873,T23.511A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.512A ",.01)
 ;;T23.512A
 ;;9002226.02101,"873,T23.512A ",.02)
 ;;T23.512A
 ;;9002226.02101,"873,T23.512A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.519A ",.01)
 ;;T23.519A
 ;;9002226.02101,"873,T23.519A ",.02)
 ;;T23.519A
 ;;9002226.02101,"873,T23.519A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.521A ",.01)
 ;;T23.521A
 ;;9002226.02101,"873,T23.521A ",.02)
 ;;T23.521A
 ;;9002226.02101,"873,T23.521A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.522A ",.01)
 ;;T23.522A
 ;;9002226.02101,"873,T23.522A ",.02)
 ;;T23.522A
 ;;9002226.02101,"873,T23.522A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.529A ",.01)
 ;;T23.529A
 ;;9002226.02101,"873,T23.529A ",.02)
 ;;T23.529A
 ;;9002226.02101,"873,T23.529A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.531A ",.01)
 ;;T23.531A
 ;;9002226.02101,"873,T23.531A ",.02)
 ;;T23.531A
 ;;9002226.02101,"873,T23.531A ",.03)
 ;;30
 ;;9002226.02101,"873,T23.532A ",.01)
 ;;T23.532A
 ;;9002226.02101,"873,T23.532A ",.02)
 ;;T23.532A
 ;;9002226.02101,"873,T23.532A ",.03)
 ;;30
