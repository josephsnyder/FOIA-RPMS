BGP5DPE3 ;IHS/CMI/LAB - patient ed report; 
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
 ;
SET73 ;EP
 I BGPTIME=2 D SET73P Q
 I BGPTIME=3 D SET73B Q
 I '$D(^BGPPEDCK(BGPRPT,18,0)) S ^BGPPEDCK(BGPRPT,18,0)="^90554.1218A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,18,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCK(BGPRPT,18,0),U,3)+BGPC,$P(^BGPPEDCK(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCK(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET73P ;
 I '$D(^BGPPEDPK(BGPRPT,18,0)) S ^BGPPEDPK(BGPRPT,18,0)="^90554.1318A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,18,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,18,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPK(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET73B ;
 I '$D(^BGPPEDBK(BGPRPT,18,0)) S ^BGPPEDBK(BGPRPT,18,0)="^90554.1418A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,18,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,18,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,18,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,18,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,18,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,18,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,18,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBK(BGPRPT,18,"B",BGPT,Z)=""
 Q
SET74 ;EP
 I BGPTIME=2 D SET74P Q
 I BGPTIME=3 D SET74B Q
 I '$D(^BGPPEDCK(BGPRPT,19,0)) S ^BGPPEDCK(BGPRPT,19,0)="^90554.1219A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,19,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCK(BGPRPT,19,0),U,3)+BGPC,$P(^BGPPEDCK(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCK(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET74P ;
 I '$D(^BGPPEDPK(BGPRPT,19,0)) S ^BGPPEDPK(BGPRPT,19,0)="^90554.1319A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,19,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,19,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPK(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET74B ;
 I '$D(^BGPPEDBK(BGPRPT,19,0)) S ^BGPPEDBK(BGPRPT,19,0)="^90554.1419A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,19,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,19,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,19,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,19,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,19,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,19,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,19,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBK(BGPRPT,19,"B",BGPT,Z)=""
 Q
SET75 ;EP
 I BGPTIME=2 D SET75P Q
 I BGPTIME=3 D SET75B Q
 I '$D(^BGPPEDCK(BGPRPT,21,0)) S ^BGPPEDCK(BGPRPT,21,0)="^90554.1221A^0^0"
 S Z=$O(^BGPPEDCK(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDCK(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDCK(BGPRPT,21,Z,0),U,3)+BGPC
 S Z=$P(^BGPPEDCK(BGPRPT,21,0),U,3)+BGPC,$P(^BGPPEDCK(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDCK(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDCK(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_BGPC
 S ^BGPPEDCK(BGPRPT,21,"B",BGPT,Z)=""
 Q
SET75P ;
 I '$D(^BGPPEDPK(BGPRPT,21,0)) S ^BGPPEDPK(BGPRPT,21,0)="^90554.1321A^0^0"
 S Z=$O(^BGPPEDPK(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDPK(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDPK(BGPRPT,21,Z,0),U,3)+1
 S Z=$P(^BGPPEDPK(BGPRPT,21,0),U,3)+1,$P(^BGPPEDPK(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDPK(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDPK(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDPK(BGPRPT,21,"B",BGPT,Z)=""
 Q
SET75B ;
 I '$D(^BGPPEDBK(BGPRPT,21,0)) S ^BGPPEDBK(BGPRPT,21,0)="^90554.1421A^0^0"
 S Z=$O(^BGPPEDBK(BGPRPT,21,"B",BGPT,0)) I Z D  Q
 .S $P(^BGPPEDBK(BGPRPT,21,Z,0),U,3)=$P(^BGPPEDBK(BGPRPT,21,Z,0),U,3)+1
 S Z=$P(^BGPPEDBK(BGPRPT,21,0),U,3)+1,$P(^BGPPEDBK(BGPRPT,21,0),U,3)=Z,$P(^BGPPEDBK(BGPRPT,21,0),U,4)=Z
 S ^BGPPEDBK(BGPRPT,21,Z,0)=BGPT_U_BGPT_U_1
 S ^BGPPEDBK(BGPRPT,21,"B",BGPT,Z)=""
 Q
