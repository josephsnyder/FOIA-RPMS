ATXXA160 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"873,T63.192A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.193A ",.01)
 ;;T63.193A
 ;;9002226.02101,"873,T63.193A ",.02)
 ;;T63.193A
 ;;9002226.02101,"873,T63.193A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.194A ",.01)
 ;;T63.194A
 ;;9002226.02101,"873,T63.194A ",.02)
 ;;T63.194A
 ;;9002226.02101,"873,T63.194A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.2X1A ",.01)
 ;;T63.2X1A
 ;;9002226.02101,"873,T63.2X1A ",.02)
 ;;T63.2X1A
 ;;9002226.02101,"873,T63.2X1A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.2X2A ",.01)
 ;;T63.2X2A
 ;;9002226.02101,"873,T63.2X2A ",.02)
 ;;T63.2X2A
 ;;9002226.02101,"873,T63.2X2A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.2X3A ",.01)
 ;;T63.2X3A
 ;;9002226.02101,"873,T63.2X3A ",.02)
 ;;T63.2X3A
 ;;9002226.02101,"873,T63.2X3A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.2X4A ",.01)
 ;;T63.2X4A
 ;;9002226.02101,"873,T63.2X4A ",.02)
 ;;T63.2X4A
 ;;9002226.02101,"873,T63.2X4A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.301A ",.01)
 ;;T63.301A
 ;;9002226.02101,"873,T63.301A ",.02)
 ;;T63.301A
 ;;9002226.02101,"873,T63.301A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.302A ",.01)
 ;;T63.302A
 ;;9002226.02101,"873,T63.302A ",.02)
 ;;T63.302A
 ;;9002226.02101,"873,T63.302A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.303A ",.01)
 ;;T63.303A
 ;;9002226.02101,"873,T63.303A ",.02)
 ;;T63.303A
 ;;9002226.02101,"873,T63.303A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.304A ",.01)
 ;;T63.304A
 ;;9002226.02101,"873,T63.304A ",.02)
 ;;T63.304A
 ;;9002226.02101,"873,T63.304A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.311A ",.01)
 ;;T63.311A
 ;;9002226.02101,"873,T63.311A ",.02)
 ;;T63.311A
 ;;9002226.02101,"873,T63.311A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.312A ",.01)
 ;;T63.312A
 ;;9002226.02101,"873,T63.312A ",.02)
 ;;T63.312A
 ;;9002226.02101,"873,T63.312A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.313A ",.01)
 ;;T63.313A
 ;;9002226.02101,"873,T63.313A ",.02)
 ;;T63.313A
 ;;9002226.02101,"873,T63.313A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.314A ",.01)
 ;;T63.314A
 ;;9002226.02101,"873,T63.314A ",.02)
 ;;T63.314A
 ;;9002226.02101,"873,T63.314A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.321A ",.01)
 ;;T63.321A
 ;;9002226.02101,"873,T63.321A ",.02)
 ;;T63.321A
 ;;9002226.02101,"873,T63.321A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.322A ",.01)
 ;;T63.322A
 ;;9002226.02101,"873,T63.322A ",.02)
 ;;T63.322A
 ;;9002226.02101,"873,T63.322A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.323A ",.01)
 ;;T63.323A
 ;;9002226.02101,"873,T63.323A ",.02)
 ;;T63.323A
 ;;9002226.02101,"873,T63.323A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.324A ",.01)
 ;;T63.324A
 ;;9002226.02101,"873,T63.324A ",.02)
 ;;T63.324A
 ;;9002226.02101,"873,T63.324A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.331A ",.01)
 ;;T63.331A
 ;;9002226.02101,"873,T63.331A ",.02)
 ;;T63.331A
 ;;9002226.02101,"873,T63.331A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.332A ",.01)
 ;;T63.332A
 ;;9002226.02101,"873,T63.332A ",.02)
 ;;T63.332A
 ;;9002226.02101,"873,T63.332A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.333A ",.01)
 ;;T63.333A
 ;;9002226.02101,"873,T63.333A ",.02)
 ;;T63.333A
 ;;9002226.02101,"873,T63.333A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.334A ",.01)
 ;;T63.334A
 ;;9002226.02101,"873,T63.334A ",.02)
 ;;T63.334A
 ;;9002226.02101,"873,T63.334A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.391A ",.01)
 ;;T63.391A
 ;;9002226.02101,"873,T63.391A ",.02)
 ;;T63.391A
 ;;9002226.02101,"873,T63.391A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.392A ",.01)
 ;;T63.392A
 ;;9002226.02101,"873,T63.392A ",.02)
 ;;T63.392A
 ;;9002226.02101,"873,T63.392A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.393A ",.01)
 ;;T63.393A
 ;;9002226.02101,"873,T63.393A ",.02)
 ;;T63.393A
 ;;9002226.02101,"873,T63.393A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.394A ",.01)
 ;;T63.394A
 ;;9002226.02101,"873,T63.394A ",.02)
 ;;T63.394A
 ;;9002226.02101,"873,T63.394A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.411A ",.01)
 ;;T63.411A
 ;;9002226.02101,"873,T63.411A ",.02)
 ;;T63.411A
 ;;9002226.02101,"873,T63.411A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.412A ",.01)
 ;;T63.412A
 ;;9002226.02101,"873,T63.412A ",.02)
 ;;T63.412A
 ;;9002226.02101,"873,T63.412A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.413A ",.01)
 ;;T63.413A
 ;;9002226.02101,"873,T63.413A ",.02)
 ;;T63.413A
 ;;9002226.02101,"873,T63.413A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.414A ",.01)
 ;;T63.414A
 ;;9002226.02101,"873,T63.414A ",.02)
 ;;T63.414A
 ;;9002226.02101,"873,T63.414A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.421A ",.01)
 ;;T63.421A
 ;;9002226.02101,"873,T63.421A ",.02)
 ;;T63.421A
 ;;9002226.02101,"873,T63.421A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.422A ",.01)
 ;;T63.422A
 ;;9002226.02101,"873,T63.422A ",.02)
 ;;T63.422A
 ;;9002226.02101,"873,T63.422A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.423A ",.01)
 ;;T63.423A
 ;;9002226.02101,"873,T63.423A ",.02)
 ;;T63.423A
 ;;9002226.02101,"873,T63.423A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.424A ",.01)
 ;;T63.424A
 ;;9002226.02101,"873,T63.424A ",.02)
 ;;T63.424A
 ;;9002226.02101,"873,T63.424A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.431A ",.01)
 ;;T63.431A
 ;;9002226.02101,"873,T63.431A ",.02)
 ;;T63.431A
 ;;9002226.02101,"873,T63.431A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.432A ",.01)
 ;;T63.432A
 ;;9002226.02101,"873,T63.432A ",.02)
 ;;T63.432A
 ;;9002226.02101,"873,T63.432A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.433A ",.01)
 ;;T63.433A
 ;;9002226.02101,"873,T63.433A ",.02)
 ;;T63.433A
 ;;9002226.02101,"873,T63.433A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.434A ",.01)
 ;;T63.434A
 ;;9002226.02101,"873,T63.434A ",.02)
 ;;T63.434A
 ;;9002226.02101,"873,T63.434A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.441A ",.01)
 ;;T63.441A
 ;;9002226.02101,"873,T63.441A ",.02)
 ;;T63.441A
 ;;9002226.02101,"873,T63.441A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.442A ",.01)
 ;;T63.442A
 ;;9002226.02101,"873,T63.442A ",.02)
 ;;T63.442A
 ;;9002226.02101,"873,T63.442A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.443A ",.01)
 ;;T63.443A
 ;;9002226.02101,"873,T63.443A ",.02)
 ;;T63.443A
 ;;9002226.02101,"873,T63.443A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.444A ",.01)
 ;;T63.444A
 ;;9002226.02101,"873,T63.444A ",.02)
 ;;T63.444A
 ;;9002226.02101,"873,T63.444A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.451A ",.01)
 ;;T63.451A
 ;;9002226.02101,"873,T63.451A ",.02)
 ;;T63.451A
 ;;9002226.02101,"873,T63.451A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.452A ",.01)
 ;;T63.452A
 ;;9002226.02101,"873,T63.452A ",.02)
 ;;T63.452A
 ;;9002226.02101,"873,T63.452A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.453A ",.01)
 ;;T63.453A
 ;;9002226.02101,"873,T63.453A ",.02)
 ;;T63.453A
 ;;9002226.02101,"873,T63.453A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.454A ",.01)
 ;;T63.454A
 ;;9002226.02101,"873,T63.454A ",.02)
 ;;T63.454A
 ;;9002226.02101,"873,T63.454A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.461A ",.01)
 ;;T63.461A
 ;;9002226.02101,"873,T63.461A ",.02)
 ;;T63.461A
 ;;9002226.02101,"873,T63.461A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.462A ",.01)
 ;;T63.462A
 ;;9002226.02101,"873,T63.462A ",.02)
 ;;T63.462A
 ;;9002226.02101,"873,T63.462A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.463A ",.01)
 ;;T63.463A
 ;;9002226.02101,"873,T63.463A ",.02)
 ;;T63.463A
 ;;9002226.02101,"873,T63.463A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.464A ",.01)
 ;;T63.464A
 ;;9002226.02101,"873,T63.464A ",.02)
 ;;T63.464A
 ;;9002226.02101,"873,T63.464A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.481A ",.01)
 ;;T63.481A
 ;;9002226.02101,"873,T63.481A ",.02)
 ;;T63.481A
 ;;9002226.02101,"873,T63.481A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.482A ",.01)
 ;;T63.482A
 ;;9002226.02101,"873,T63.482A ",.02)
 ;;T63.482A
 ;;9002226.02101,"873,T63.482A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.483A ",.01)
 ;;T63.483A
 ;;9002226.02101,"873,T63.483A ",.02)
 ;;T63.483A
 ;;9002226.02101,"873,T63.483A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.484A ",.01)
 ;;T63.484A
 ;;9002226.02101,"873,T63.484A ",.02)
 ;;T63.484A
 ;;9002226.02101,"873,T63.484A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.511A ",.01)
 ;;T63.511A
 ;;9002226.02101,"873,T63.511A ",.02)
 ;;T63.511A
 ;;9002226.02101,"873,T63.511A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.512A ",.01)
 ;;T63.512A
 ;;9002226.02101,"873,T63.512A ",.02)
 ;;T63.512A
 ;;9002226.02101,"873,T63.512A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.513A ",.01)
 ;;T63.513A
 ;;9002226.02101,"873,T63.513A ",.02)
 ;;T63.513A
 ;;9002226.02101,"873,T63.513A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.514A ",.01)
 ;;T63.514A
 ;;9002226.02101,"873,T63.514A ",.02)
 ;;T63.514A
 ;;9002226.02101,"873,T63.514A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.591A ",.01)
 ;;T63.591A
 ;;9002226.02101,"873,T63.591A ",.02)
 ;;T63.591A
 ;;9002226.02101,"873,T63.591A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.592A ",.01)
 ;;T63.592A
 ;;9002226.02101,"873,T63.592A ",.02)
 ;;T63.592A
 ;;9002226.02101,"873,T63.592A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.593A ",.01)
 ;;T63.593A
 ;;9002226.02101,"873,T63.593A ",.02)
 ;;T63.593A
 ;;9002226.02101,"873,T63.593A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.594A ",.01)
 ;;T63.594A
 ;;9002226.02101,"873,T63.594A ",.02)
 ;;T63.594A
 ;;9002226.02101,"873,T63.594A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.611A ",.01)
 ;;T63.611A
 ;;9002226.02101,"873,T63.611A ",.02)
 ;;T63.611A
 ;;9002226.02101,"873,T63.611A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.612A ",.01)
 ;;T63.612A
 ;;9002226.02101,"873,T63.612A ",.02)
 ;;T63.612A
 ;;9002226.02101,"873,T63.612A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.613A ",.01)
 ;;T63.613A
 ;;9002226.02101,"873,T63.613A ",.02)
 ;;T63.613A
 ;;9002226.02101,"873,T63.613A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.614A ",.01)
 ;;T63.614A
 ;;9002226.02101,"873,T63.614A ",.02)
 ;;T63.614A
 ;;9002226.02101,"873,T63.614A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.621A ",.01)
 ;;T63.621A
 ;;9002226.02101,"873,T63.621A ",.02)
 ;;T63.621A
 ;;9002226.02101,"873,T63.621A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.622A ",.01)
 ;;T63.622A
 ;;9002226.02101,"873,T63.622A ",.02)
 ;;T63.622A
 ;;9002226.02101,"873,T63.622A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.623A ",.01)
 ;;T63.623A
 ;;9002226.02101,"873,T63.623A ",.02)
 ;;T63.623A
 ;;9002226.02101,"873,T63.623A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.624A ",.01)
 ;;T63.624A
 ;;9002226.02101,"873,T63.624A ",.02)
 ;;T63.624A
 ;;9002226.02101,"873,T63.624A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.631A ",.01)
 ;;T63.631A
 ;;9002226.02101,"873,T63.631A ",.02)
 ;;T63.631A
 ;;9002226.02101,"873,T63.631A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.632A ",.01)
 ;;T63.632A
 ;;9002226.02101,"873,T63.632A ",.02)
 ;;T63.632A
 ;;9002226.02101,"873,T63.632A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.633A ",.01)
 ;;T63.633A
 ;;9002226.02101,"873,T63.633A ",.02)
 ;;T63.633A
 ;;9002226.02101,"873,T63.633A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.634A ",.01)
 ;;T63.634A
 ;;9002226.02101,"873,T63.634A ",.02)
 ;;T63.634A
 ;;9002226.02101,"873,T63.634A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.691A ",.01)
 ;;T63.691A
 ;;9002226.02101,"873,T63.691A ",.02)
 ;;T63.691A
 ;;9002226.02101,"873,T63.691A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.692A ",.01)
 ;;T63.692A
 ;;9002226.02101,"873,T63.692A ",.02)
 ;;T63.692A
 ;;9002226.02101,"873,T63.692A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.693A ",.01)
 ;;T63.693A
 ;;9002226.02101,"873,T63.693A ",.02)
 ;;T63.693A
 ;;9002226.02101,"873,T63.693A ",.03)
 ;;30
 ;;9002226.02101,"873,T63.694A ",.01)
 ;;T63.694A
 ;;9002226.02101,"873,T63.694A ",.02)
 ;;T63.694A
 ;;9002226.02101,"873,T63.694A ",.03)
 ;;30
