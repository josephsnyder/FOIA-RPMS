BLRPOVC ;IHS/ITSC/TPF - PURPOSE OF VISIT COMPLIANCE REPORT [ 01/24/2003  1:11 PM ]
 ;;5.2;LR;**1015**;NOV 18, 2002
 ;
START ;EP
 ;S IOP="HOME"
 ;
 ;GET FROM DATE
FR K DIR
 S DIR(0)="D"
 S DIR("B")="T-1"
 S DIR("A")="Starting ORDER DATE"
 D ^DIR
 Q:$D(DTOUT)!($D(DUOUT))
 S FR=Y
 ;GET TO DATE
TO ;
 K DIR
 S DIR(0)="D"
 S DIR("B")="T"
 S DIR("A")="Ending ORDER DATE"
 D ^DIR
 G:$D(DTOUT)!($D(DUOUT)) FR
 ;
 S TO=Y
 D PRINT
 Q
PRINT S DIC="^LRO(69,",BY="DATE ORDERED"
 S BY="DATE ORDERED"
 S FLDS="[BLR LAB POV COMPLIANCE REPORT]",L=0
 S DIFRTO="?"
 ;S DIS(1)="I $G(D2)'="""",$P($G(^LRO(69,D0,1,D1,2,D2,0)),U,9)'=""CA"""
 D EN1^DIP
 Q