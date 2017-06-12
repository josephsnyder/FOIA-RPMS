BMCFPRN1 ;IHS/OIT/FCJ - PRINT REFERRAL FORM PART 2 ;        [ 11/29/2006  8:42 AM ]
 ;;4.0;REFERRED CARE INFO SYSTEM;**1,3**;JAN 09, 2006;Build 51
 ;;IHS/ITSC/FCJ SPLIT RTN FROM BMCFPRN, MULT CHGS TO CALL BMCFPRN
 ;4.0*1 5.17.06 IHS/OIT/FCJ ADDED PRINTING OF ELIG DATES
 ;     FOR MEDICARE AND MEDICAID
 ;4.0*3 11.29.06 IHS/OIT/FCJ NOT EXITING LOOP W/MUL INS W/SAME #
 ;
OTHPAY ;ENTRY POINT
 ;Third Party Coverage as of Best Avail Beg Dt or Today
 S Y=$$ANYINS^BMCRLU($P(BMCR0,U,3),$S($$AVDOS^BMCRLU(BMCREF)]"":$$AVDOS^BMCRLU(BMCREF,"I"),1:DT))
 ;
BEGDT ;Write Msg based on existence of Best Avail Beg & No Third Party
 I 'Y D  Q
 .S BMCDT=$$AVDOS^BMCRLU(BMCREF)
 .I BMCDT'="" S X="Records indicate patient has no third party coverage for this Service Date.",N=1,T=0,C=0 D W^BMCFPRN Q
 .E  S X="Our records indicate that the patient has no third party coverage as of today.",N=1,T=0,C=0 D W^BMCFPRN Q:BMCQUIT
 S X="Our records, as of "_$$FMTE^XLFDT(DT,"5D")_" indicate that this patient has the following",C=0,T=0,N=1 D W^BMCFPRN Q:BMCQUIT
 S X="third party coverage:",C=0,T=0,N=1 D W^BMCFPRN Q:BMCQUIT
 ;
THIRD ;display third party coverage
 ;4.0*1 5.17.06 IHS.OIT.FCJ CHG NEXT SECTION TO PRT ELG DT AND COV
MCR S BMCI=1
 ;I $$MCR^AUPNPAT(BMCDFN,DT) S BMCI=BMCI+1,X="MEDICARE:  - "_$P($G(^AUPNMCR(BMCDFN,0)),U,3)_$P($G(^AUTTMCS($P($G(^AUPNMCR(BMCDFN,0)),U,4),0)),U,1),N=1,C=0,T=10 D W^BMCFPRN Q:BMCQUIT
 I $$MCR^AUPNPAT(BMCDFN,DT) D
 .S BMCN=0 F  S BMCN=$O(^AUPNMCR("B",BMCDFN,BMCN)) Q:BMCN'?1N.N  D
 ..Q:'$D(^AUPNMCR(BMCN,11))
 ..S BMCE=0,J=0 F  S J=$O(^AUPNMCR(BMCN,11,J)) Q:J'=+J  D
 ...Q:J>DT
 ...I $P(^AUPNMCR(BMCN,11,J,0),U,2)]"",$P(^(0),U,2)<DT Q
 ...S BMCE=1,BMCE(J)=^AUPNMCR(BMCN,11,J,0)
 ..Q:'BMCE
 ..S BMCNUM="",BMCNUM=$P($G(^AUPNMCR(BMCN,0)),U,3)_$P($G(^AUTTMCS($P($G(^AUPNMCR(BMCDFN,0)),U,4),0)),U,1)
 ..I BMCNUM="" S BMCNUM="NO POLICY #"
 ..S C=0,N=1,T=10,BMCI=BMCI+1,X="PATIENT HAS MEDICARE: - "_BMCNUM,N=1,C=0,T=10 D W^BMCFPRN Q:BMCQUIT
 ..I $G(BMCE) S BMCEB="" F  S BMCEB=$O(BMCE(BMCEB)) Q:BMCEB'?1N.N  D
 ...S BMCEBDT=$P(^AUPNMCR(BMCN,11,BMCEB,0),U)
 ...S BMCEEDT=$P(^AUPNMCR(BMCN,11,BMCEB,0),U,2),BMCECOV=$P(^(0),U,3)
 ...S:BMCEEDT="" BMCEEDT="OPEN"
 ...S C=0,N=1,T=10,X="ELIG DATES: "_$$FMTE^XLFDT(BMCEBDT,"5D")_" TO "
 ...S X=X_$$FMTE^XLFDT(BMCEEDT,"5D")_"   COVERAGE: "_BMCECOV D W^BMCFPRN Q:BMCQUIT
 K BMCE,BMCEB,BMCEEDT,BMCEBDT,BMCECOV
MCD I $$MCD^AUPNPAT(BMCDFN,DT) D
 .S BMCN=0 F  S BMCN=$O(^AUPNMCD("B",BMCDFN,BMCN)) Q:BMCN'?1N.N  D
 ..Q:'$D(^AUPNMCD(BMCN,11))
 ..;4.0*3 11.29.06 IHS/OIT/FCJ NOT EXITING PROP W/MUL INS W/SAME #
 ..;S BMCE=0,J=0 F  S J=$O(^AUPNMCD(BMCN,11,J)) Q:J'=+J  D
 ..S BMCE=0,J=0 F  S J=$O(^AUPNMCD(BMCN,11,J)) Q:J'?1N.N  D
 ...Q:J>DT
 ...I $P(^AUPNMCD(BMCN,11,J,0),U,2)]"",$P(^(0),U,2)<DT Q
 ...S BMCE=1,BMCE(J)=^AUPNMCD(BMCN,11,J,0)
 ..Q:'BMCE
 ..;S BMCNI=$P(^AUPNMCD(BMCN,0),U,10) ;4.0*1 2.9.06 IHS.OIT.FCJ
 ..S BMCNI=$P(^AUPNMCD(BMCN,0),U,10),BMCX="" ;4.0*1 2.9.06 IHS.OIT.FCJ
 ..I BMCNI]"" S BMCX=$P($G(^AUTNINS(BMCNI,0)),U)
 ..S:BMCX="" BMCX="UNKNOWN"
 ..S BMCNUM="",BMCNUM=$P($G(^AUPNMCD(BMCN,0)),U,3)
 ..I BMCNUM="" S BMCNUM="NO POLICY #"
 ..S BMCX=BMCX_" - "_BMCNUM
 ..S C=0,N=1,T=10,BMCI=BMCI+1,X="PATIENT HAS MEDICAID-PLAN NAME:  "_BMCX D W^BMCFPRN Q:BMCQUIT
 ..I $G(BMCE) S BMCEBDT="" F  S BMCEBDT=$O(BMCE(BMCEBDT)) Q:BMCEBDT'?1N.N  D
 ...S BMCEEDT=$P(^AUPNMCD(BMCN,11,BMCEBDT,0),U,2),BMCECOV=$P(^(0),U,3)
 ...S:BMCEEDT="" BMCEEDT="OPEN"
 ...S C=0,N=1,T=10,X="ELIG DATES: "_$$FMTE^XLFDT(BMCEBDT,"5D")_" TO "
 ...S X=X_$$FMTE^XLFDT(BMCEEDT,"5D")_"   COVERAGE: "_BMCECOV D W^BMCFPRN
 ...K BMCE(BMCEBDT)
 ..;4.0*1 5.17.06 IHS.OIT.FCJ END OF CHANGES
 K BMCE,BMCEEDT,BMCEBDT,BMCECOV
 ;
PVTINS ;Private Insurance Companies
 S (P,DFN)=BMCDFN,D=DT,BMCFLAG=1,BMCPCNT=0 K BMCPRNM D PI^BMCRLU1
 K P,D,BMCFLAG,BMCPCNT
 I '$D(BMCPRNM) W !,?10,"NO PRIVATE INSURANCE COVERAGE"
 I $D(BMCPRNM) D
 .W !,?10,"PRIVATE INSURER(S): "
 .S BMCX=0
 .F  S BMCX=$O(BMCPRNM(BMCX)) Q:BMCX'=+BMCX  W ?32,BMCPRNM(BMCX),!
 ;
RR ;RAILROAD INS.
 S BMCI=1
 I $$RAIL^BMCRLU(BMCDFN,DT) S BMCI=BMCI+1,X="RAILROAD:  - "_$P($G(^AUTTRRP($P($G(^AUPNRRE(BMCDFN,0)),U,3),0)),U,1)_$P($G(^AUPNRRE(BMCDFN,0)),U,4),N=1,C=0,T=10 D W^BMCFPRN Q:BMCQUIT
 Q
