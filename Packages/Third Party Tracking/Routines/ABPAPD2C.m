ABPAPD2C ;DISPLAY CLAIMS FOR PAYMENT; [ 07/08/91  3:43 PM ]
 ;;1.4;AO PVT-INS TRACKING;*0*;IHS-OKC/KJR;JULY 25, 1991
A0 S U="^",DC=1,D0=ABPATDFN K DXS W @IOF,! D ^ABPAPDA K DXS,ABPA("C")
 K DIC,DIE,DA,DR,ABPA("QF"),ABPACAMT,ABPACCNT,ABPA("HP"),ABPA("CP")
 S ABPADOS=ABPAFRDT-1,(ABPACAMT,ABPACCNT,ABPAOBAL,ABPATPD)=0
 S (ABPATA2,ABPATA3,ABPATA4,ABPATA5,ABPATA7)=0
 F ABPA("I")=0:0 D  Q:$D(ABPA("QF",1))=1
 .S ABPADOS=$O(^ABPVAO("PC",ABPATDFN,ABPADOS))
 .I +ABPADOS=0!(ABPADOS>ABPATODT) S ABPA("QF",1)="" Q
 .K ABPA("QF",2) S DA=0 F ABPA("II")=0:0 D  Q:$D(ABPA("QF",2))=1
 ..S DA=$O(^ABPVAO("PC",ABPATDFN,ABPADOS,DA))
 ..I +DA=0 S ABPA("QF",2)="" Q
 ..Q:$D(^ABPVAO(ABPATDFN,1,DA,0))'=1!($D(ABPACSCR(+DA))=1)
 ..S ABPAPTR=+DA,ABPADATA=^ABPVAO(ABPATDFN,1,ABPAPTR,0)
 ..S ABPA("CP",ABPADOS,DA)="0^0^0^0^0^0"
 ..S ABPA("HP",ABPADOS,DA)=ABPA("CP",ABPADOS,DA)
 ..;-------------------------------------------------------------------
 ..;PROCEDURE TO BUILD PAYMENT HISTORY ARRAY
 ..F ABPAJ=2:1:5 S @("ABPAP"_ABPAJ)=0
 ..S ABPAZ=0 F ABPAJ=0:0 S ABPAPTOT=0 D  Q:+ABPAZ=0
 ...S ABPAZ=$O(^ABPVAO("PD",ABPATDFN,DA,ABPAZ)) Q:+ABPAZ=0
 ...S ABPAZZ=0 F ABPAK=0:0 D  Q:+ABPAZZ=0
 ....S ABPAZZ=$O(^ABPVAO(ABPATDFN,"P",ABPAZ,"D",ABPAZZ)) Q:+ABPAZZ=0
 ....Q:$D(^ABPVAO(ABPATDFN,"P",ABPAZ,"D",ABPAZZ,0))'=1  S ABPARCD=^(0)
 ....Q:$P(ABPARCD,"^",2)'=DA  F ABPAL=3:1:6 D
 .....S @("ABPAP"_(ABPAL-1))=@("ABPAP"_(ABPAL-1))+$P(ABPARCD,"^",ABPAL)
 ..S ABPAPTOT=ABPAP2+ABPAP3+ABPAP4+ABPAP5,ABPATPD=ABPATPD+ABPAPTOT
 ..S ABPABAL=($P(ABPADATA,"^",7)-ABPAPTOT)-(+$P(ABPADATA,"^",3))
 ..S $P(ABPA("HP",ABPADOS,DA),"^")=ABPABAL,ABPAOBAL=ABPAOBAL+ABPABAL
 ..F ABPAJ=2:1:5 S $P(ABPA("HP",ABPADOS,DA),"^",ABPAJ)=@("ABPAP"_ABPAJ)
 ..S $P(ABPA("HP",ABPADOS,DA),"^",6)=ABPAPTOT
 ..S $P(ABPA("HP",ABPADOS,DA),"^",7)=+$P(ABPADATA,"^",3)
 ..;-------------------------------------------------------------------
 ..S ABPACCNT=ABPACCNT+1,ABPA("C",ABPACCNT)=DA
 ..W !,ABPACCNT,?2,$J($P(ABPADATA,"^",2),7)
 ..S ABPA("DTIN")=+ABPADATA D DTCVT^ABPAMAIN W ?10,$J(ABPA("DTOUT"),8)
 ..W ?19,$J($P(ABPADATA,"^",7),8,2)
 ..S ABPACAMT=ABPACAMT+$P(ABPADATA,"^",7)
 ..F I=28,37 S J=$E(I) D
 ...W ?I,$J($P(ABPA("HP",ABPADOS,DA),"^",J),8,2)
 ...S @("ABPATA"_J)=@("ABPATA"_J)+$P(ABPA("HP",ABPADOS,DA),"^",J)
 ..W ?46,$J($P(ABPA("HP",ABPADOS,DA),"^",4),7,2)
 ..S ABPATA4=ABPATA4+$P(ABPA("HP",ABPADOS,DA),"^",4)
 ..W ?54,$J($P(ABPA("HP",ABPADOS,DA),"^",5),8,2)
 ..S ABPATA5=ABPATA5+$P(ABPA("HP",ABPADOS,DA),"^",5)
 ..W ?63,$J($P(ABPA("HP",ABPADOS,DA),"^",7),8,2)
 ..S ABPATA7=ABPATA7+$P(ABPA("HP",ABPADOS,DA),"^",7)
 ..W ?72,$J(ABPABAL,8,2)
 I +ABPACCNT<1 D  Q
 .W !!?5,*7,"<<< NO 'ELIGIBLE' CLAIMS FOUND FOR THIS DATE OF SERVICE "
 .W "PERIOD >>>" H 3
 I +ABPACCNT>1 W ! D
 .F ABPAI=19,28,37 W ?(ABPAI),"--------"
 .W ?46,"-------",?54,"--------",?63,"--------",?72,"--------"
 .W !?19,$J(ABPACAMT,8,2),?28,$J(ABPATA2,8,2),?37,$J(ABPATA3,8,2)
 .W ?46,$J(ABPATA4,7,2),?54,$J(ABPATA5,8,2)
 .W ?63,$J(ABPATA7,8,2),?72,$J(ABPAOBAL,8,2)
 W !,ABPAXX
 Q