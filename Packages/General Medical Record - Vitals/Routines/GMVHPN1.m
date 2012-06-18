GMVHPN1 ;HIOFO/YH,FT-HP LASER PAIN CHART - FORM ;11/6/01  15:16
 ;;5.0;GEN. MED. REC. - VITALS;;Oct 31, 2002
 ;
 ; This routine uses the following IAs:
 ; <None>
 ;
EN1 ;RESET PRINTER, SET PAGE SIZE (PORTRAIT) AND PCL PICTURE FRAME 8 1/2"*11"
EN2 ;
 W !,$CHAR(27),"E",$CHAR(27),"&l1E",$CHAR(27),"*c5952x7920Y",$CHAR(27),"%0B"
 W !,"IN;SP1;IP;SC-3,18,-16,12,1;PW.3;PA0,0;FT3,1;RR16,12;PW.3;PA0,-1;EA16,12;PA-3,-1;EA16,0;PW.15;PU;"
 S I(1)="" F I=1:1:5 S I(1)=I(1)_"PU"_(1.6*I)_",12;PD"_(1.6*I)_",-1;"
 W !,I(1)
 S I(1)="" F I=6:1:9 S I(1)=I(1)_"PU"_(1.6*I)_",12;PD"_(1.6*I)_",-1;"
 W !,I(1) K I
 ;PRINT LABEL
 W !,"PU;DT#,1;"
 W !,"SD1,277,2,1,4,10,5,1,6,5,7,4;SS;LO12;PA-2,11.6;LBDate/Time#;"
 W !,"PA-2,10.8;LBPain Scale#;PA-0.6,10;LB10#;PU0,11;PD16,11;PU16,10;PD0,10;PU-0.4,9;LB9#;"
 W !,"PU0,9;PD16,9;PU16,8;PD0,8;PU-0.4,8;LB8#;PU0,7;PD16,7;PU16,6;PD0,6;"
 W !,"PU-0.4,7;LB7#PU0,5;PD16,5;PU16,4;PD0,4;PU-0.4,6;LB6#;"
 W !,"PU-0.4,5;LB5#;PU-0.4,4;LB4#;PU0,3;PD16,3;PU16,2;PD0,2;"
 W !,"PU-0.4,3;LB3#;PU0,1;PD16,1;PU-0.4,2;LB2#;PU-0.4,1;LB1#;"
 ;LABEL THE LOWER BOX
 W !,"SS;LO11;PA-1,-0.9;LBPain#;"
 W !,"PA0,-2;LB0 - No pain     10 - Worst imaginable pain     99 - Unable to respond#;"
 W !,"SD1,277,2,1,4,11,5,1,6,5,7,4;SS;PA12,-11.5;LBMedical Record#;PA12,-12;LBPain Chart#;"
 W !,"PA12,-12.5;LBSF 512#;"
 I GTNM=0 W !,"PA3,10;LBTHERE  IS  NO  DATA  FOR  THIS  PERIOD#;"
 W "PW.3;SD1,277,2,1,4,8,5,1,6,5,7,4;SS;LO7;PU;" S I=0 F  S I=$O(GRAPHR(I)) Q:I'>0  W !,GRAPHR(I)
 W !,"PU;LO1;"
 ;PRINT DATE
 W !,"SD1,277,2,1,4,9,5,1,6,5,7,4;SS;"
 S J=11.5,J(1)=1 D WRTLN^GMVHPN2
 ;PRINT TIME
 S J=11.2,J(1)=17 D WRTLN^GMVHPN2
 ;PRINT PAIN
 S J=-0.8,J(1)=332 D WRTLN^GMVHPN2
 D PTID^GMVHPN2
 ;ENTER PCL MODE, RESET PRINTER AND EJECT PAGE
Q1 ;
 W !,"PA-3,22;",$CHAR(27),"&r0F",$CHAR(27),"%0A" K I Q
