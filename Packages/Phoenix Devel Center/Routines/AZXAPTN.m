AZXAPTN ; IHS/PHXAO/TMJ - ROI CUMMULATIVE PATIENT HX FOR CHART ;
 ;;2.0;RELEASE OF INFORMATION;;FEB 21, 2002
 ;
SERVICE ;PICK PATIENT NAME ENTRY
 W !!!
 S DIC=2 S DIC("A")="Enter a Patient Name: " S DIC(0)="AEMIQO" D ^DIC
 G END:Y<1 S AZXAPTN=+Y
 I AZXAPTN="" Q
PRINT ;PRINT CUMMULATIVE PATIENT RECORD OF ALL DISCLOSURES
 W !
 S FLDS="[AZXA GS ACCOUNTING RECORD]",BY="@INTERNAL(#.03)",DIC="^AZXAREC(",L=0
 S FR=AZXAPTN,TO=AZXAPTN
 K DHIT,DIOEND,DIOBEG
 D EN1^DIP
END ;
 K AZXAPTN,X,DD0,B Q
