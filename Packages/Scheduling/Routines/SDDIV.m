SDDIV ;BSN/GRR - MULTI-DIVISION SELECT ; 27 FEB 84  9:40 am
 ;;5.3;Scheduling;**20,1013,1015,1017**;Aug 13, 1993;Build 5
 ;IHS/ANMC/LJF 6/30/2000 changed $N to $O
 ;ihs/cmi/maw 05/02/2011 PATCH 1013 added WLLET for wait list letters
 ;ihs/cmi/maw 08/22/2013 PATCH 1017 changed code when looking at DIV on non multi sites
 ;
ROUT S DIC("A")="ROUTING SLIPS FOR WHICH DIVISION: " G ASK
APLST S DIC("A")="APPOINTMENT LIST FOR WHICH DIVISION: " G ASK
FRLST S DIC("A")="FILE ROOM LIST FOR WHICH DIVISION: " G ASK
CLST S DIC("A")="CLINIC LIST FOR WHICH DIVISION: " G ASK
PALST S DIC("A")="PRE-APPOINTMENT LETTERS FOR WHICH DIVISION: " G DIC
CNLET S DIC("A")="CANCELLATION LETTERS FOR WHICH DIVISION: " G DIC
PCNLET S DIC("A")="APPOINTMENT CANCELLATION LETTERS FOR WHICH DIVISION: " G DIC
WLLET S DIC("A")="WAIT LIST LETTERS FOR WHICH DIVISION: " G DIC
NSLET S DIC("A")="NO-SHOW LETTERS/AUTO REBOOK REPORT FOR WHICH DIVISION: " G ASK
NSLET1 S DIC("A")="NO-SHOW LETTERS FOR WHICH DIVISION: " G DIC
RALST S DIC("A")="RADIOLOGY LIST FOR WHICH DIVISION: " G ASK
A223 S DIC("A")="AMIS SEGMENT 223 FOR WHICH DIVISION: " G ASK
CSSD S DIC("A")="CREATE SURVEY DISPOSITIONING RECORDS FOR WHICH DIVISION (ENTER 'ALL' FOR ALL DIVISIONS): " G ASK
SDCP S DIC("A")="CLINIC PROFILES FOR WHICH DIVISION: " G ASK
DSSA S DIC("A")="DISPOSITION SURVEY APPOINTMENTS FOR WHICH DIVISION: " G ASK
PSDR S DIC("A")="DIVISION (ENTER 'ALL' FOR ALL DIVISIONS): " G ASK2
CSEE S DIC("A")="ENTER VISIT DATA FOR WHICH DIVISION: " G ASK
CALST S DIC("A")="CLINIC ASSIGNMENT LIST FOR WHICH DIVISION: " G ASK
CACTLST S DIC("A")="CLINIC WORKLOAD LIST FOR WHICH DIVISION: " G ASK
 Q
 ;
ASK S ALL=0,SDEF=$$PRIM^VASITE G:'$D(^DG(40.8,SDEF,0)) ERR W !,DIC("A")," ",$P(^(0),"^"),"// " R X:DTIME I X["^" G ERR
 I X="ALL" S ALL=1 I $D(SDALL),'SDALL S X="?",ALL=0 W *7," ??"
 S:X="" DIV=SDEF G:X=""!(X="ALL") AWAY S DIC="^DG(40.8,",DIC(0)="EQMN" I X["?",$S('$D(SDALL):1,SDALL:1,1:0) W "    Enter 'ALL' for all divisions or"
DIC D ^DIC G:X["?"!((Y<0)&('$D(SDLT))) ASK Q:$D(SDLT)&(Y'>0)  S:$D(SDLT) SDV1=+Y S DIV=+Y K DIC Q
AWAY S Y=1 K DIC,SDEF Q
ERR S Y=-1 K DIC,SDALL,SDEF Q
ASK2 ;S (VAUTD,Y)=0 I '$D(^DG(40.8,$N(^DG(40.8,0)),0)) W !,*7,"***WARNING...MEDICAL CENTER DIVISION FILE IS NOT SET UP" G ERR  ;IHS/ANMC/LJF 6/30/2000
 S (VAUTD,Y)=0 I '$D(^DG(40.8,+$O(^DG(40.8,0)),0)) W !,*7,"***WARNING...MEDICAL CENTER DIVISION FILE IS NOT SET UP" G ERR  ;IHS/ANMC/LJF 6/30/2000
 I $D(^DG(43,1,"GL")),$P(^("GL"),U,2) G DIVISION^VAUTOMA
 ;S I=$N(^DG(40.8,0)) G:'$D(^DG(40.8,I,0)) ERR S VAUTD(I)=$P(^(0),U) K DIC Q  ;IHS/ANMC/LJF 6/30/2000
 ;S I=+$O(^DG(40.8,0)) G:'$D(^DG(40.8,I,0)) ERR S VAUTD(I)=$P(^(0),U) K DIC Q  ;IHS/ANMC/LJF 6/30/2000
 S I=+$O(^DG(40.8,"AD",DUZ(2),0)) G:'$D(^DG(40.8,I,0)) ERR S VAUTD(I)=$P(^(0),U) K DIC Q  ;ihs/cmi/maw 08/22/2013 PATCH 1017 for sites that are not multi div but have multiple entries in the file
 ; *** Notify IB if any significant changes occur in this routine. ***
