STUSER ;DJM;SET LOAD BALANCING PARAMETERS;
 ;COPYRIGHT MICRONETICS DESIGN CORP.
 S SV=$V(44) Q:'$ZB($V(SV,-3,2),16,1)
 S MINSLC=50,MAXSLC=425,SLCINCR=50,SLC=100,SLC1=999999999,SLC2=999999999,RUNSLC=125
 V $V(44)+2:-3:$ZB($V($V(44)+2,-3,2),#40,7):2,SV+144::+SLC:2,SV+146::+RUNSLC:2,SV+148::+SLC1:4,SV+152::+SLC2:4,SV+138::+MINSLC:2,SV+140::+MAXSLC:2,SV+142::+SLCINCR:2
 D ^ZUINIT
 Q