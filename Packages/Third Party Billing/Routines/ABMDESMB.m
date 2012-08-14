ABMDESMB ; IHS/ASDST/DMJ - Summarized Claim AMBULANCE. Info ;   
 ;;2.6;IHS 3P BILLING SYSTEM;;NOV 12, 2009
 ;
 ; IHS/SD/SDR - v2.5 p8 - task 6
 ;   New routine
 ;
 ; IHS/SD/SDR - v2.6 CSV
 ;
AMB ;EP for AMB charges
 I $G(ABMP("VTYP",993)),'$G(ABMPRINT) Q:ABMP("VTYP",993)'=ABMP("EXP")
 S ABMCAT=47 D PCK^ABMDESM1 Q:$G(ABMQUIT)
 S ABMX=0 F ABMS("I")=ABMS("I"):1 S ABMX=$O(@(ABMP("GL")_"47,"_ABMX_")")) Q:'ABMX  S ABMX("X")=ABMX D AMB1
 Q
 ;
AMB1 S ABMX(0)=@(ABMP("GL")_"47,"_ABMX("X")_",0)")
 S ABMZ("UNIT")=$P(ABMX(0),U,3)
 S:'+ABMZ("UNIT") ABMZ("UNIT")=1
 S ABMX("SUB")=(ABMZ("UNIT")*$P(ABMX(0),U,4))
 S ABMS("TOT")=ABMS("TOT")+ABMX("SUB")
 I $P(^ABMDEXP(ABMP("EXP"),0),U)'["UB" G AMBH
 ; ABMS(revn)=Totl Charge^units^Unit Charge^CPT Code
AMBU S ABMX("R")=$P(ABMX(0),U,2) Q:ABMX("R")=""
 I $D(ABMS(ABMX("R"))) S $P(ABMS(ABMX("R")),U)=$P(ABMS(ABMX("R")),U)+ABMX("SUB")
 E  S ABMS(ABMX("R"))=ABMX("SUB")
 Q
 ;
AMBH ;ABMS ARRAY FOR HCFA 1500
 ; ABMS(#)=Charge^date from^date to^CPT Code^Corr. ICD^units^typ serv^Description
 S ABMS(ABMS("I"))=ABMX("SUB")
 S ABMCAT=47 D HDT^ABMDESM1
 S $P(ABMS(ABMS("I")),U,5)=$P(ABMX(0),U,6)
 S $P(ABMS(ABMS("I")),U,6)=ABMZ("UNIT")
 I $P(ABMX(0),U,16) D
 .S $P(ABMS(ABMS("I")),U,7)=$P($G(^ABMDCODE($P(ABMX(0),U,16),0)),U)
 E  S $P(ABMS(ABMS("I")),U,7)=1
 S $P(ABMS(ABMS("I")),U,10)=$P($G(ABMX(0)),U,15)  ;POS
 S ABMX("C")=$P(ABMX(0),U) D CPT
 S ABMX("C")=$P(ABMX(0),U) D CPT S $P(ABMS(ABMS("I")),U,4)=ABMX("C")_$S($P(ABMX(0),U,5)]"":"-"_$P(ABMX(0),U,5),1:"")_$S($P(ABMX(0),U,8)]"":"-"_$P(ABMX(0),U,8),1:"")_$S($P(ABMX(0),U,9)]"":"-"_$P(ABMX(0),U,9),1:"")
 S $P(ABMS(ABMS("I")),U,8)=$P($$CPT^ABMCVAPI(+ABMX(0),ABMP("VDT")),U,3)  ;CSV-c
 S ABMDPRV=$$GETPRV^ABMDFUTL
 I +$G(ABMDPRV)'=0 D
 .Q:'$$K24^ABMDFUTL
 .S $P(ABMS(ABMS("I")),U,9)=$$K24N^ABMDFUTL(ABMDPRV)
 .S $P(ABMS(ABMS("I")),U,11)=$P($$NPI^XUSNPI("Individual_ID",ABMDPRV),U)
 Q
 ;
REVN ;EP for REVENUE charges
 S ABMX("ER")=+$P($G(@(ABMP("GL")_"9)")),U,8) I 'ABMX("ER") Q
 S ABMX("REV")=+$P($G(@(ABMP("GL")_"9)")),U,7) I 'ABMX("REV") Q
 I $P(^ABMDEXP(ABMP("EXP"),0),U)["UB" S $P(ABMS(ABMX("REV")),U)=$S($D(ABMS(ABMX("REV"))):$P(ABMS(ABMX("REV")),U)+ABMX("ER"),1:ABMX("ER")) G TREVN
 S ABMS(ABMS("I"))=ABMX("ER")
 S X=$S($P($G(@(ABMP("GL")_"6)")),U)]"":$P(@(ABMP("GL")_"6)"),U),1:$P($G(@(ABMP("GL")_"7)")),U))
 S $P(ABMS(ABMS("I")),U,2)=$$HDT^ABMDUTL(X)
 S $P(ABMS(ABMS("I")),U,8)=$P(^AUTTREVN(ABMX("REV"),0),U,2)
 S ABMS("I")=ABMS("I")+1
TREVN S ABMS("TOT")=ABMS("TOT")+ABMX("ER")
 Q
 ;
ROO ;EP for R&B Charges
 I $G(ABMP("VTYP",991)),'$G(ABMPRINT) Q:ABMP("VTYP",991)'=ABMP("EXP")
 S ABMCAT=25 D PCK^ABMDESM1 Q:$G(ABMQUIT)
 S ABMX=0 F ABMS("I")=ABMS("I"):1 S ABMX=$O(@(ABMP("GL")_"25,"_ABMX_")")) Q:'ABMX  S ABMX("X")=ABMX D ROO1
 Q
 ;
ROO1 S ABMX(0)=@(ABMP("GL")_"25,"_ABMX("X")_",0)")
 S ABMZ("UNIT")=$P(ABMX(0),U,2)
 S:'+ABMZ("UNIT") ABMZ("UNIT")=1
 S ABMX("SUB")=(ABMZ("UNIT")*$P(ABMX(0),U,3))
 S ABMS("TOT")=ABMS("TOT")+ABMX("SUB")
 I $P(^ABMDEXP(ABMP("EXP"),0),U)'["UB" G ROOH
ROOU S ABMX("R")=$P(ABMX(0),U,1)
 I $D(ABMS(ABMX("R"))) S $P(ABMS(ABMX("R")),U)=$P(ABMS(ABMX("R")),U)+ABMX("SUB"),$P(ABMS(ABMX("R")),U,2)=$P(ABMS(ABMX("R")),U,2)+ABMZ("UNIT")
 E  S ABMS(ABMX("R"))=ABMX("SUB")_U_ABMZ("UNIT")_U_$P(ABMX(0),U,3)
 Q
 ;
ROOH S ABMS(ABMS("I"))=ABMX("SUB")
 S ABMCAT=25 D HDT^ABMDESM1
 S $P(ABMS(ABMS("I")),U,4)="R&B"
 S $P(ABMS(ABMS("I")),U,6)=ABMZ("UNIT")
 S $P(ABMS(ABMS("I")),U,8)=$P(^AUTTREVN(+ABMX(0),0),U,2)
 Q
 ;
CPT I ABMX("C")]"" S ABMX("C")=$P($$CPT^ABMCVAPI(ABMX("C"),ABMP("VDT")),U,2)  ;CSV-c
 Q
SUP ;EP - for SUPPLY charges
 S ABMCAT=45 D PCK^ABMDESM1 Q:$G(ABMQUIT)
 N K S K=+$O(ABMS(99999),-1)
 I $G(ABMP("CDFN")) D  Q
 .N I S I=0 F  S I=$O(^ABMDCLM(DUZ(2),ABMP("CDFN"),45,I)) Q:'I  D
 ..N J F J=1:1:7 S ABMX(J)=$P(^ABMDCLM(DUZ(2),ABMP("CDFN"),45,I,0),"^",J)
 ..D SSET
 I $G(ABMP("BDFN")) D
 .N I S I=0 F  S I=$O(^ABMDBILL(DUZ(2),ABMP("BDFN"),45,I)) Q:'I  D
 ..N J F J=1:1:7 S ABMX(J)=$P(^ABMDBILL(DUZ(2),ABMP("BDFN"),45,I,0),"^",J)
 ..D SSET
 Q
SSET ;SET ABMS ARRAY
 Q:'$D(^ABMCM(ABMX(1)))    ; Item deleted from supply file
 S:'+ABMX(3) ABMX(3)=1
 S K=K+1
 S:'ABMX(5) ABMX(5)=270
 S ABMX("SUB")=ABMX(3)*ABMX(4)
 S ABMS("TOT")=+$G(ABMS("TOT"))+ABMX("SUB")
 I $P(^ABMDEXP(ABMP("EXP"),0),U)["UB" D SUB Q
 S ABMS(K)=ABMX("SUB")
 S $P(ABMS(K),U,2)=$$HDT^ABMDUTL(ABMX(2))
 S $P(ABMS(K),U,3)=$P(ABMS(K),U,2)
 S $P(ABMS(K),U,4)=$P($$CPT^ABMCVAPI(+ABMX(7),ABMP("VDT")),U,2)  ;CSV-c
 S $P(ABMS(K),U,5)=ABMX(6)
 S $P(ABMS(K),U,6)=ABMX(3)
 S $P(ABMS(K),U,7)=9
 S $P(ABMS(K),U,8)=$P(^ABMCM(ABMX(1),0),U)
 Q
SUB ;SET ABMS ARRAY FOR UB-92 TYPE FORM
 S $P(ABMS(ABMX(5)),"^",1)=+$P($G(ABMS(ABMX(5))),U)+ABMX("SUB")
 Q