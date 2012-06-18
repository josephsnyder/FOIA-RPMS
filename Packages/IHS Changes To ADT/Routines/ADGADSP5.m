ADGADSP5 ; IHS/ADC/PDW/ENM - A & D SHEET PRINT (SUMMARY) ; [ 03/25/1999  11:48 AM ]
 ;;5.0;ADMISSION/DISCHARGE/TRANSFER;;MAR 25, 1999
 ;
 ;***> Summary format of ADMISSIONS & DISCHARGES SHEET (cont.)
 ;
A1 G B1:'$D(^TMP("DGZADS",$J,"TS"))
 W !! I $Y>(IOSL-5) D NEWPG^ADGADSP3 G END1:DGSTOP=U
 W ?6,"SERVICE TRANSFERS IN",?47,"SERVICE TRANSFERS OUT",!
 W DGLIN,?42,DGLIN,!
 ;
 ;***> loop thru service transfers
 S DGNM=0
A2 S DGNM=$O(^TMP("DGZADS",$J,"TS",DGNM)) G B1:DGNM="" S DFN=0
A3 S DFN=$O(^TMP("DGZADS",$J,"TS",DGNM,DFN)) G A2:DFN="" S DGTST=0
A4 S DGTST=$O(^TMP("DGZADS",$J,"TS",DGNM,DFN,DGTST)) G A3:DGTST=""
 S DGSTR=^TMP("DGZADS",$J,"TS",DGNM,DFN,DGTST)
 S DGX=$P(DGSTR,U) I DGX'="" S DGX=$P($G(^DIC(45.7,DGX,0)),U) ;old srv
 S DGX1=$P(DGSTR,U,2) I DGX1'="" S DGX1=$P($G(^DIC(45.7,DGX1,0)),U) ;new
 S DGCHT=$P(^AUPNPAT(DFN,41,DUZ(2),0),U,2)  ;chart #
 S DGCHT="00000"_DGCHT,DGCHT=$E(DGCHT,$L(DGCHT)-5,$L(DGCHT))
 S DGCHT=$E(DGCHT,1,2)_"-"_$E(DGCHT,3,4)_"-"_$E(DGCHT,5,6)
 W !,$E(DGX1,1,3),?5,DGCHT,"  ",$E(DGNM,1,20),?42,$E(DGX,1,3)
 W ?47,DGCHT,"  ",$E(DGNM,1,20)
 I $Y>(IOSL-5) D NEWPG^ADGADSP3 G END1:DGSTOP=U
 G A4
 ;
B1 W !! I $Y>(IOSL-5) D NEWPG^ADGADSP3 G END1:DGSTOP=U
 W:$D(^TMP("DGZADS",$J,"AB1")) ?6,"RETURN FROM LEAVE"
 W:$D(^TMP("DGZADS",$J,"AB")) ?47,"ABSENT ON LEAVE"
 W ! I $D(^TMP("DGZADS",$J,"AB1")) W DGLIN
 I $D(^TMP("DGZADS",$J,"AB")) W ?42,DGLIN
 ;
 ;***> loop thru absences
 W ! S (DGNM,DGI)=0
B2 S DGNM=$O(^TMP("DGZADS",$J,"AB1",DGNM)) G C1:DGNM="" S DFN=0
B3 S DFN=$O(^TMP("DGZADS",$J,"AB1",DGNM,DFN)) G B2:DFN="" S DGTRN=0
B4 S DGTRN=$O(^TMP("DGZADS",$J,"AB1",DGNM,DFN,DGTRN)) G B3:DGTRN=""
 S DGSTR=^TMP("DGZADS",$J,"AB1",DGNM,DFN,DGTRN) D LINE1^ADGADSP4 G B4
 ;
C1 S (DGNM,DGI)=0
C2 S DGNM=$O(^TMP("DGZADS",$J,"AB",DGNM)) G C5:DGNM="" S DFN=0
C3 S DFN=$O(^TMP("DGZADS",$J,"AB",DGNM,DFN)) G C2:DFN="" S DGTRN=0
C4 S DGTRN=$O(^TMP("DGZADS",$J,"AB",DGNM,DFN,DGTRN)) G C3:DGTRN=""
 S DGSTR=^TMP("DGZADS",$J,"AB",DGNM,DFN,DGTRN) D LINE2^ADGADSP4 G C4
 ;
C5 F DGI=1:1 Q:'$D(DGL(DGI))  D  Q:DGSTOP=U
 .W !,DGL(DGI),?42,DGL(DGI,0) I $Y>(IOSL-5) D NEWPG^ADGADSP3
 G END1:DGSTOP=U
 K DGL,DGI
 ;
D1 G NEXT:'$D(^TMP("DGZADS",$J,"DT"))
 W !! I $Y>(IOSL-5) D NEWPG^ADGADSP3 G END1:DGSTOP=U
 W ?52,"DEATHS",!?42,DGLIN,!
 ;
 ;***> loop thru deaths
 S (DGNM,DGI)=0
D2 S DGNM=$O(^TMP("DGZADS",$J,"DT",DGNM)) G D5:DGNM="" S DGCHT=0
D3 S DGCHT=$O(^TMP("DGZADS",$J,"DT",DGNM,DGCHT)) G D2:DGCHT="" S DGM=0
D4 S DGM=$O(^TMP("DGZADS",$J,"DT",DGNM,DGCHT,DGM)) G D3:DGM=""
 S DGSTR=^TMP("DGZADS",$J,"DT",DGNM,DGCHT,DGM) D LINE2^ADGADSP4 G D4
 ;
D5 F DGI=1:1 Q:'$D(DGL(DGI,0))  D  Q:DGSTOP=U
 .W !?42,DGL(DGI,0)
 .I $Y>(IOSL-5) D NEWPG^ADGADSP3
 G END1:DGSTOP=U
 K DGL,DGI
 ;
NEXT D ^ADGADSP6  ;day surgery print
END I IOST["C-" K DIR S DIR("A")="Press RETURN to continue",DIR(0)="E" D ^DIR
END1 ;EP;***> ending point for summary A&D Sheets
 W @IOF D KILL^ADGUTIL
 D ^%ZISC K ^TMP("DGZADS",$J)
 Q
 ;
