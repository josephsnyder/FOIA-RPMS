BQIHEADR ;GDHS/HSD/ALA-Standard Display Header ; 05 Feb 2016  9:32 AM
 ;;2.5;ICARE MANAGEMENT SYSTEM;;May 24, 2016;Build 27
 ;
 ;
 ; This is the standard display header for each patient
 ; where most of the information is hidden but translated
 ; by the GUI
 ;
HDR(OWNR,PLIEN,DFN,HHDR,HVAL) ;EP - Header
 NEW IEN,HDR,VALUE,HEADR,DORD,HDOB,Y,ORD
 S VALUE=""
 I DFN'="" S Y=$$GET1^DIQ(9000001,DFN_",",1102.2,"I"),HDOB=$$FMTE^BQIUL1(Y)
 I DFN'="" S VALUE=DFN_U_$$FLG^BTPWPPAT(DFN)_U_$$FLG^BQIULPT(OWNR,PLIEN,DFN)_U_$$SENS^BQIULPT(DFN)_U_$$CALR^BQIULPT(DFN)_U_$$MFLAG^BQIULPT(OWNR,PLIEN,DFN)_U_HDOB_U
 S HEADR="I00010DFN^T00001TICKLER_INDICATOR^T00001FLAG_INDICATOR^T00001SENS_FLAG^T00001COMM_FLAG^T00001HIDE_MANUAL^D00030HIDE_DOB^"
 S HVAL=VALUE,HHDR=HEADR
 Q
