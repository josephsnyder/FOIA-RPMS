LRAPSE ; IHS/DIR/AAB - AP SEARCHES ; 17-Oct-2014 09:22 ; MKK
 ;;5.2;LR;**1002,72,1034**;NOV 1, 1997;Build 88
 ;
 D @$S(LRSS'="AU":"^LRAPSM",1:"^LRAUSM"),END Q
 ;
M D ^LRAP G:'$D(Y) END S S(7)="MORPHOLOGY",LRSN=61.1,V=2 G LRAPSE
D D ^LRAP G:'$D(Y) END S S(7)="DISEASE",LRSN=61.4,V=1 G LRAPSE
F D ^LRAP G:'$D(Y) END S S(7)="FUNCTION",LRSN=61.3,V=3 G LRAPSE
E D ^LRAP G:'$D(Y) END S S(7)="ETIOLOGY",LRSN=61.2,V=2 G LRAPSE
P D ^LRAP G:'$D(Y) END S S(7)="PROCEDURE",LRSN=61.5,V=4 G LRAPSE
L S LRDICS="SPCYEM" D ^LRAP G:'$D(Y) END S S(7)="MULTI-AXIAL" D ^LRAPSEM,END Q
I D ^LRAP G:'$D(Y) END D @$S(LRSS'="AU":"^LRSPSICD",1:"^LRAUSICD"),END Q
T D ^LRAP G:'$D(Y) END D ^LRAPFTS,END Q  ;free text search
 ;
END D V^LRU Q
