LRHYUTL ;VA/DALOI/HOAK - UNIVERSAL UTILITY ; 13-Aug-2013 09:16 ; MKK
 ;;5.2;LAB SERVICE;**405,1033**;NOV 01, 1997
 ;
 ; This routine is used to enhance display processes for Vista.
 ;
 ;
GRAFON ;
 D GSET^%ZISS
 QUIT
GRAFOFF ;
 W IOG0 D GKILL^%ZISS
 QUIT
SCRNON ;
 N X,Y
 D ENS^%ZISS
 QUIT
SCRNOFF ;
 N X,Y
 D KILL^%ZISS
 ;
 QUIT
