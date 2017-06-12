ATXD3K ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;;BGP OSTEOPOROSIS DXS
 ;
 ; This routine loads Taxonomy BGP OSTEOPOROSIS DXS
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"733.00 ")
 ;;1
 ;;21,"M80.00XA ")
 ;;2
 ;;21,"M80.011A ")
 ;;3
 ;;21,"M80.012A ")
 ;;4
 ;;21,"M80.019A ")
 ;;5
 ;;21,"M80.021A ")
 ;;6
 ;;21,"M80.022A ")
 ;;7
 ;;21,"M80.029A ")
 ;;8
 ;;21,"M80.031A ")
 ;;9
 ;;21,"M80.032A ")
 ;;10
 ;;21,"M80.039A ")
 ;;11
 ;;21,"M80.041A ")
 ;;12
 ;;21,"M80.042A ")
 ;;13
 ;;21,"M80.049A ")
 ;;14
 ;;21,"M80.051A ")
 ;;15
 ;;21,"M80.052A ")
 ;;16
 ;;21,"M80.059A ")
 ;;17
 ;;21,"M80.061A ")
 ;;18
 ;;21,"M80.062A ")
 ;;19
 ;;21,"M80.069A ")
 ;;20
 ;;21,"M80.071A ")
 ;;21
 ;;21,"M80.072A ")
 ;;22
 ;;21,"M80.079A ")
 ;;23
 ;;21,"M80.08XA ")
 ;;24
 ;;21,"M80.80XA ")
 ;;25
 ;;21,"M80.811A ")
 ;;26
 ;;21,"M80.812A ")
 ;;27
 ;;21,"M80.819A ")
 ;;28
 ;;21,"M80.821A ")
 ;;29
 ;;21,"M80.822A ")
 ;;30
 ;;21,"M80.829A ")
 ;;31
 ;;21,"M80.831A ")
 ;;32
 ;;21,"M80.832A ")
 ;;33
 ;;21,"M80.839A ")
 ;;34
 ;;21,"M80.841A ")
 ;;35
 ;;21,"M80.842A ")
 ;;36
 ;;21,"M80.849A ")
 ;;37
 ;;21,"M80.851A ")
 ;;38
 ;;21,"M80.852A ")
 ;;39
 ;;21,"M80.859A ")
 ;;40
 ;;21,"M80.861A ")
 ;;41
 ;;21,"M80.862A ")
 ;;42
 ;;21,"M80.869A ")
 ;;43
 ;;21,"M80.871A ")
 ;;44
 ;;21,"M80.872A ")
 ;;45
 ;;21,"M80.879A ")
 ;;46
 ;;21,"M80.88XA ")
 ;;47
 ;;21,"M81.0 ")
 ;;48
 ;;21,"M81.6 ")
 ;;49
 ;;21,"M81.8 ")
 ;;50
 ;;21,"M84.40XA ")
 ;;51
 ;;21,"M84.411A ")
 ;;52
 ;;21,"M84.412A ")
 ;;53
 ;;21,"M84.419A ")
 ;;54
 ;;21,"M84.421A ")
 ;;55
 ;;21,"M84.422A ")
 ;;56
 ;;21,"M84.429A ")
 ;;57
 ;;21,"M84.431A ")
 ;;58
 ;;21,"M84.432A ")
 ;;59
 ;;21,"M84.433A ")
 ;;60
 ;;21,"M84.434A ")
 ;;61
 ;;21,"M84.439A ")
 ;;62
 ;;21,"M84.441A ")
 ;;63
 ;;21,"M84.442A ")
 ;;64
 ;;21,"M84.443A ")
 ;;65
 ;;21,"M84.444A ")
 ;;66
 ;;21,"M84.445A ")
 ;;67
 ;;21,"M84.446A ")
 ;;68
 ;;21,"M84.451A ")
 ;;69
 ;;21,"M84.452A ")
 ;;70
 ;;21,"M84.453A ")
 ;;71
 ;;21,"M84.454A ")
 ;;72
 ;;21,"M84.459A ")
 ;;73
 ;;21,"M84.461A ")
 ;;74
 ;;21,"M84.462A ")
 ;;75
 ;;21,"M84.463A ")
 ;;76
 ;;21,"M84.464A ")
 ;;77
 ;;21,"M84.469A ")
 ;;78
 ;;21,"M84.471A ")
 ;;79
 ;;21,"M84.472A ")
 ;;80
 ;;21,"M84.473A ")
 ;;81
 ;;21,"M84.474A ")
 ;;82
 ;;21,"M84.475A ")
 ;;83
 ;;21,"M84.476A ")
 ;;84
 ;;21,"M84.477A ")
 ;;85
 ;;21,"M84.478A ")
 ;;86
 ;;21,"M84.479A ")
 ;;87
 ;;21,"M84.48XA ")
 ;;88
 ;;21,"M84.60XA ")
 ;;89
 ;;21,"M84.611A ")
 ;;90
 ;;21,"M84.612A ")
 ;;91
 ;;21,"M84.619A ")
 ;;92
 ;;21,"M84.621A ")
 ;;93
 ;;21,"M84.622A ")
 ;;94
 ;;21,"M84.629A ")
 ;;95
 ;;21,"M84.631A ")
 ;;96
 ;;21,"M84.632A ")
 ;;97
 ;;21,"M84.633A ")
 ;;98
 ;;21,"M84.634A ")
 ;;99
 ;;21,"M84.639A ")
 ;;100
 ;;21,"M84.641A ")
 ;;101
 ;;21,"M84.642A ")
 ;;102
 ;;21,"M84.649A ")
 ;;103
 ;;21,"M84.650A ")
 ;;104
 ;;21,"M84.651A ")
 ;;105
 ;;21,"M84.652A ")
 ;;106
 ;;21,"M84.653A ")
 ;;107
 ;;21,"M84.659A ")
 ;;108
 ;;21,"M84.661A ")
 ;;109
 ;;21,"M84.662A ")
 ;;110
 ;;21,"M84.663A ")
 ;;111
 ;;21,"M84.664A ")
 ;;112
 ;;21,"M84.669A ")
 ;;113
 ;;21,"M84.671A ")
 ;;114
 ;;21,"M84.672A ")
 ;;115
 ;;21,"M84.673A ")
 ;;116
 ;;21,"M84.674A ")
 ;;117
 ;;21,"M84.675A ")
 ;;118
 ;;21,"M84.676A ")
 ;;119
 ;;21,"M84.68XA ")
 ;;120
 ;;9002226,501,.01)
 ;;BGP OSTEOPOROSIS DXS
 ;;9002226,501,.02)
 ;;@
 ;;9002226,501,.04)
 ;;n
 ;;9002226,501,.06)
 ;;@
 ;;9002226,501,.08)
 ;;0
 ;;9002226,501,.09)
 ;;3130515
 ;;9002226,501,.11)
 ;;@
 ;;9002226,501,.12)
 ;;31
 ;;9002226,501,.13)
 ;;1
 ;;9002226,501,.14)
 ;;@
 ;;9002226,501,.15)
 ;;80
 ;;9002226,501,.16)
 ;;@
 ;;9002226,501,.17)
 ;;@
 ;;9002226,501,3101)
 ;;@
 ;;9002226.02101,"501,733.00 ",.01)
 ;;733.00 
 ;;9002226.02101,"501,733.00 ",.02)
 ;;733.99 
 ;;9002226.02101,"501,733.00 ",.03)
 ;;1
 ;;9002226.02101,"501,M80.00XA ",.01)
 ;;M80.00XA
 ;;9002226.02101,"501,M80.00XA ",.02)
 ;;M80.00XA
 ;;9002226.02101,"501,M80.00XA ",.03)
 ;;30
 ;;9002226.02101,"501,M80.011A ",.01)
 ;;M80.011A
 ;;9002226.02101,"501,M80.011A ",.02)
 ;;M80.011A
 ;;9002226.02101,"501,M80.011A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.012A ",.01)
 ;;M80.012A
 ;;9002226.02101,"501,M80.012A ",.02)
 ;;M80.012A
 ;;9002226.02101,"501,M80.012A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.019A ",.01)
 ;;M80.019A
 ;;9002226.02101,"501,M80.019A ",.02)
 ;;M80.019A
 ;;9002226.02101,"501,M80.019A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.021A ",.01)
 ;;M80.021A
 ;;9002226.02101,"501,M80.021A ",.02)
 ;;M80.021A
 ;;9002226.02101,"501,M80.021A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.022A ",.01)
 ;;M80.022A
 ;;9002226.02101,"501,M80.022A ",.02)
 ;;M80.022A
 ;;9002226.02101,"501,M80.022A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.029A ",.01)
 ;;M80.029A
 ;;9002226.02101,"501,M80.029A ",.02)
 ;;M80.029A
 ;;9002226.02101,"501,M80.029A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.031A ",.01)
 ;;M80.031A
 ;;9002226.02101,"501,M80.031A ",.02)
 ;;M80.031A
 ;;9002226.02101,"501,M80.031A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.032A ",.01)
 ;;M80.032A
 ;;9002226.02101,"501,M80.032A ",.02)
 ;;M80.032A
 ;;9002226.02101,"501,M80.032A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.039A ",.01)
 ;;M80.039A
 ;;9002226.02101,"501,M80.039A ",.02)
 ;;M80.039A
 ;;9002226.02101,"501,M80.039A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.041A ",.01)
 ;;M80.041A
 ;;9002226.02101,"501,M80.041A ",.02)
 ;;M80.041A
 ;;9002226.02101,"501,M80.041A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.042A ",.01)
 ;;M80.042A
 ;;9002226.02101,"501,M80.042A ",.02)
 ;;M80.042A
 ;;9002226.02101,"501,M80.042A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.049A ",.01)
 ;;M80.049A
 ;;9002226.02101,"501,M80.049A ",.02)
 ;;M80.049A
 ;;9002226.02101,"501,M80.049A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.051A ",.01)
 ;;M80.051A
 ;;9002226.02101,"501,M80.051A ",.02)
 ;;M80.051A
 ;;9002226.02101,"501,M80.051A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.052A ",.01)
 ;;M80.052A
 ;;9002226.02101,"501,M80.052A ",.02)
 ;;M80.052A
 ;;9002226.02101,"501,M80.052A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.059A ",.01)
 ;;M80.059A
 ;;9002226.02101,"501,M80.059A ",.02)
 ;;M80.059A
 ;;9002226.02101,"501,M80.059A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.061A ",.01)
 ;;M80.061A
 ;;9002226.02101,"501,M80.061A ",.02)
 ;;M80.061A
 ;;9002226.02101,"501,M80.061A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.062A ",.01)
 ;;M80.062A
 ;;9002226.02101,"501,M80.062A ",.02)
 ;;M80.062A
 ;;9002226.02101,"501,M80.062A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.069A ",.01)
 ;;M80.069A
 ;;9002226.02101,"501,M80.069A ",.02)
 ;;M80.069A
 ;;9002226.02101,"501,M80.069A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.071A ",.01)
 ;;M80.071A
 ;;9002226.02101,"501,M80.071A ",.02)
 ;;M80.071A
 ;;9002226.02101,"501,M80.071A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.072A ",.01)
 ;;M80.072A
 ;;9002226.02101,"501,M80.072A ",.02)
 ;;M80.072A
 ;;9002226.02101,"501,M80.072A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.079A ",.01)
 ;;M80.079A
 ;;9002226.02101,"501,M80.079A ",.02)
 ;;M80.079A
 ;;9002226.02101,"501,M80.079A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.08XA ",.01)
 ;;M80.08XA
 ;;9002226.02101,"501,M80.08XA ",.02)
 ;;M80.08XA
 ;;9002226.02101,"501,M80.08XA ",.03)
 ;;30
 ;;9002226.02101,"501,M80.80XA ",.01)
 ;;M80.80XA
 ;;9002226.02101,"501,M80.80XA ",.02)
 ;;M80.80XA
 ;;9002226.02101,"501,M80.80XA ",.03)
 ;;30
 ;;9002226.02101,"501,M80.811A ",.01)
 ;;M80.811A
 ;;9002226.02101,"501,M80.811A ",.02)
 ;;M80.811A
 ;;9002226.02101,"501,M80.811A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.812A ",.01)
 ;;M80.812A
 ;;9002226.02101,"501,M80.812A ",.02)
 ;;M80.812A
 ;;9002226.02101,"501,M80.812A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.819A ",.01)
 ;;M80.819A
 ;;9002226.02101,"501,M80.819A ",.02)
 ;;M80.819A
 ;;9002226.02101,"501,M80.819A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.821A ",.01)
 ;;M80.821A
 ;;9002226.02101,"501,M80.821A ",.02)
 ;;M80.821A
 ;;9002226.02101,"501,M80.821A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.822A ",.01)
 ;;M80.822A
 ;;9002226.02101,"501,M80.822A ",.02)
 ;;M80.822A
 ;;9002226.02101,"501,M80.822A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.829A ",.01)
 ;;M80.829A
 ;;9002226.02101,"501,M80.829A ",.02)
 ;;M80.829A
 ;;9002226.02101,"501,M80.829A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.831A ",.01)
 ;;M80.831A
 ;;9002226.02101,"501,M80.831A ",.02)
 ;;M80.831A
 ;;9002226.02101,"501,M80.831A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.832A ",.01)
 ;;M80.832A
 ;;9002226.02101,"501,M80.832A ",.02)
 ;;M80.832A
 ;;9002226.02101,"501,M80.832A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.839A ",.01)
 ;;M80.839A
 ;;9002226.02101,"501,M80.839A ",.02)
 ;;M80.839A
 ;;9002226.02101,"501,M80.839A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.841A ",.01)
 ;;M80.841A
 ;;9002226.02101,"501,M80.841A ",.02)
 ;;M80.841A
 ;;9002226.02101,"501,M80.841A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.842A ",.01)
 ;;M80.842A
 ;;9002226.02101,"501,M80.842A ",.02)
 ;;M80.842A
 ;;9002226.02101,"501,M80.842A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.849A ",.01)
 ;;M80.849A
 ;;9002226.02101,"501,M80.849A ",.02)
 ;;M80.849A
 ;;9002226.02101,"501,M80.849A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.851A ",.01)
 ;;M80.851A
 ;;9002226.02101,"501,M80.851A ",.02)
 ;;M80.851A
 ;;9002226.02101,"501,M80.851A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.852A ",.01)
 ;;M80.852A
 ;;9002226.02101,"501,M80.852A ",.02)
 ;;M80.852A
 ;;9002226.02101,"501,M80.852A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.859A ",.01)
 ;;M80.859A
 ;;9002226.02101,"501,M80.859A ",.02)
 ;;M80.859A
 ;;9002226.02101,"501,M80.859A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.861A ",.01)
 ;;M80.861A
 ;;9002226.02101,"501,M80.861A ",.02)
 ;;M80.861A
 ;;9002226.02101,"501,M80.861A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.862A ",.01)
 ;;M80.862A
 ;;9002226.02101,"501,M80.862A ",.02)
 ;;M80.862A
 ;;9002226.02101,"501,M80.862A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.869A ",.01)
 ;;M80.869A
 ;;9002226.02101,"501,M80.869A ",.02)
 ;;M80.869A
 ;;9002226.02101,"501,M80.869A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.871A ",.01)
 ;;M80.871A
 ;;9002226.02101,"501,M80.871A ",.02)
 ;;M80.871A
 ;;9002226.02101,"501,M80.871A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.872A ",.01)
 ;;M80.872A
 ;;9002226.02101,"501,M80.872A ",.02)
 ;;M80.872A
 ;;9002226.02101,"501,M80.872A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.879A ",.01)
 ;;M80.879A
 ;;9002226.02101,"501,M80.879A ",.02)
 ;;M80.879A
 ;;9002226.02101,"501,M80.879A ",.03)
 ;;30
 ;;9002226.02101,"501,M80.88XA ",.01)
 ;;M80.88XA
 ;;9002226.02101,"501,M80.88XA ",.02)
 ;;M80.88XA
 ;;9002226.02101,"501,M80.88XA ",.03)
 ;;30
 ;;9002226.02101,"501,M81.0 ",.01)
 ;;M81.0
 ;;9002226.02101,"501,M81.0 ",.02)
 ;;M81.0
 ;;9002226.02101,"501,M81.0 ",.03)
 ;;30
 ;;9002226.02101,"501,M81.6 ",.01)
 ;;M81.6
 ;;9002226.02101,"501,M81.6 ",.02)
 ;;M81.6
 ;;9002226.02101,"501,M81.6 ",.03)
 ;;30
 ;;9002226.02101,"501,M81.8 ",.01)
 ;;M81.8
 ;;9002226.02101,"501,M81.8 ",.02)
 ;;M81.8
 ;;9002226.02101,"501,M81.8 ",.03)
 ;;30
 ;;9002226.02101,"501,M84.40XA ",.01)
 ;;M84.40XA
 ;;9002226.02101,"501,M84.40XA ",.02)
 ;;M84.40XA
 ;;9002226.02101,"501,M84.40XA ",.03)
 ;;30
 ;;9002226.02101,"501,M84.411A ",.01)
 ;;M84.411A
 ;;9002226.02101,"501,M84.411A ",.02)
 ;;M84.411A
 ;;9002226.02101,"501,M84.411A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.412A ",.01)
 ;;M84.412A
 ;;9002226.02101,"501,M84.412A ",.02)
 ;;M84.412A
 ;;9002226.02101,"501,M84.412A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.419A ",.01)
 ;;M84.419A
 ;;9002226.02101,"501,M84.419A ",.02)
 ;;M84.419A
 ;;9002226.02101,"501,M84.419A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.421A ",.01)
 ;;M84.421A
 ;;9002226.02101,"501,M84.421A ",.02)
 ;;M84.421A
 ;;9002226.02101,"501,M84.421A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.422A ",.01)
 ;;M84.422A
 ;;9002226.02101,"501,M84.422A ",.02)
 ;;M84.422A
 ;;9002226.02101,"501,M84.422A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.429A ",.01)
 ;;M84.429A
 ;;9002226.02101,"501,M84.429A ",.02)
 ;;M84.429A
 ;;9002226.02101,"501,M84.429A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.431A ",.01)
 ;;M84.431A
 ;;9002226.02101,"501,M84.431A ",.02)
 ;;M84.431A
 ;;9002226.02101,"501,M84.431A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.432A ",.01)
 ;;M84.432A
 ;;9002226.02101,"501,M84.432A ",.02)
 ;;M84.432A
 ;;9002226.02101,"501,M84.432A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.433A ",.01)
 ;;M84.433A
 ;;9002226.02101,"501,M84.433A ",.02)
 ;;M84.433A
 ;;9002226.02101,"501,M84.433A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.434A ",.01)
 ;;M84.434A
 ;;9002226.02101,"501,M84.434A ",.02)
 ;;M84.434A
 ;;9002226.02101,"501,M84.434A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.439A ",.01)
 ;;M84.439A
 ;;9002226.02101,"501,M84.439A ",.02)
 ;;M84.439A
 ;;9002226.02101,"501,M84.439A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.441A ",.01)
 ;;M84.441A
 ;;9002226.02101,"501,M84.441A ",.02)
 ;;M84.441A
 ;;9002226.02101,"501,M84.441A ",.03)
 ;;30
 ;;9002226.02101,"501,M84.442A ",.01)
 ;;M84.442A
 ;;9002226.02101,"501,M84.442A ",.02)
 ;;M84.442A
 ;
OTHER ; OTHER ROUTINES
 D ^ATXD3K2
 Q
