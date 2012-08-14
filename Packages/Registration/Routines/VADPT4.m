VADPT4 ;ALB/MRL/MJK - PATIENT VARIABLES; 12 DEC 1988
 ;;5.3;Registration;**343,342,1004**;Aug 13, 1993
 ;IHS/OIT/LJF  11/10/2005 PATCH 1004 included for sites where it has been overwritten
 ;
7 ;Eligibility [ELIG]
 F I=.15,.3,.31,.32,.36,.361,"INE","TYPE","VET" S VAX(I)=$S($D(^DPT(DFN,I)):^(I),1:"")
 S VAZ=$P(VAX(.36),"^",1) S:$D(^DIC(8,+VAZ,0)) VAZ=VAZ_"^"_$P(^(0),"^",1) S @VAV@($P(VAS,"^",1))=VAZ
 S VAX=0 F I=0:0 S VAX=$O(^DPT(DFN,"E",VAX)) Q:VAX'>0  S VAZ=VAX I $D(^DIC(8,+VAZ,0)),+@VAV@($P(VAS,"^"))'=VAZ S VAZ=VAZ_"^"_$P(^DIC(8,+VAZ,0),"^") S @VAV@($P(VAS,"^",1),VAX)=VAZ
 S VAZ=$P(VAX(.32),"^",3) S:$D(^DIC(21,+VAZ,0)) VAZ=VAZ_"^"_$P(^(0),"^",1) S @VAV@($P(VAS,"^",2))=VAZ
 S VAZ=$S($P(VAX(.3),"^",1)="Y":1,1:0) S:VAZ VAZ=VAZ_"^"_$P(VAX(.3),"^",2) S @VAV@($P(VAS,"^",3))=VAZ
 S @VAV@($P(VAS,"^",4))=$S(VAX("VET")="Y":1,1:0),VAZ=$S(+$P(VAX(.15),"^",2):0,1:1),@VAV@($P(VAS,"^",5))=VAZ
 I VAZ F I=1:1:6 S @VAV@($P(VAS,"^",5),I)="" G 71
 S VAZ=$P(VAX(.15),"^",2),Y=VAZ X ^DD("DD") S @VAV@($P(VAS,"^",5),1)=VAZ_"^"_Y,VAZ=$P(VAX("INE"),"^",1) S:VAZ]"" VAZ=VAZ_"^"_$P("VAMC^REGIONAL OFFICE^RPC","^",VAZ) S @VAV@($P(VAS,"^",5),2)=VAZ
 S @VAV@($P(VAS,"^",5),3)=$P(VAX("INE"),"^",3),VAZ=$P(VAX("INE"),"^",4) S:$D(^DIC(5,+VAZ,0)) VAZ=VAZ_"^"_$P(^(0),"^",1) S @VAV@($P(VAS,"^",5),4)=VAZ
 S @VAV@($P(VAS,"^",5),5)=$P(VAX("INE"),"^",6),@VAV@($P(VAS,"^",5),6)=$P(VAX(.3),"^",7)
71 S VAZ=VAX("TYPE") S:$D(^DG(391,+VAZ,0)) VAZ=VAZ_"^"_$P(^(0),"^",1) S @VAV@($P(VAS,"^",6))=VAZ
 S @VAV@($P(VAS,"^",7))=$P(VAX(.31),"^",3),VAZ=$P(VAX(.361),"^",1) S:VAZ]"" VAZ=VAZ_"^"_$S(VAZ="V":"VERIFIED",VAZ="P":"PENDING VERIFICATION",VAZ="R":"PENDING RE-VERIFICATION",1:"") S @VAV@($P(VAS,"^",8))=VAZ
 I $D(^DPT(DFN,0)) S VAX=$P(^(0),"^",14),VAX=$G(^DG(408.32,+VAX,0)) I VAX]"" S @VAV@($P(VAS,"^",9))=$P(VAX,"^",2)_"^"_$P(VAX,"^",1)
 Q
 ;
8 ;Monetary Benefits [MB]
 N DGTOTVA
 S @VAV@($P(VAS,"^",6))=0 ; SSI no longer supported
 D ALL^DGMTU21(DFN,"V",DT,"I")
 S VAX=$G(^DGMT(408.21,+$G(DGINC("V")),0)) F I=8,11,13 S @VAV@($S(I=8:$P(VAS,"^",3),I=11:$P(VAS,"^",5),1:$P(VAS,"^",8)))=$S($P(VAX,"^",I)'="":"1^"_$P(VAX,"^",I),1:0)
 S VAX=$G(^DPT(DFN,.362))
 S DGTOTVA=$P(VAX,U,20)
 F I=12,13,14 S @VAV@($S(I=12:$P(VAS,"^",1),(I=13):$P(VAS,"^",2),1:$P(VAS,"^",4)))=$S($P(VAX,"^",I)="Y":1_U_DGTOTVA,1:0)
 S I=17 S @VAV@($P(VAS,"^",9))=$S($P(VAX,"^",17)="Y":1_U_$P(VAX,U,6),1:0)
 S VAX=$G(^DPT(DFN,.3)) S @VAV@($P(VAS,"^",7))=$S($P(VAX,"^",11)="Y":1_U_DGTOTVA,1:0)
 K DGDEP,DGREL,DGINC,DGINR Q
 ;
9 ;Service information
 F I=.32,.321,.52,.53 S VAX(I)=$S($D(^DPT(DFN,I)):^(I),1:"")
 S VAX("N")=.321 F I=1,2,3 S VAX(3)=I,VAZ=$S($P(VAX(.321),"^",I)="Y":1,1:0),@VAV@($P(VAS,"^",VAX(3)))=VAZ I VAZ S VAX(1)=$S(I=1:"4^5",I=2:"7^9^8",1:11),VAX(4)=0 D 91
 S VAX("N")=.52 F I=5,11 S VAX(3)=$S(I=5:4,1:5),VAX(1)=$S(I=5:"7^8",1:"13^14"),VAZ=$S($P(VAX(.52),"^",I)="Y":1,1:0),@VAV@($P(VAS,"^",VAX(3)))=VAZ I VAZ S VAX(4)=0 D 91
 F I=6,7,8 S @VAV@($P(VAS,"^",I))="" F VAX(1)=1:1:5 S @VAV@($P(VAS,"^",I),VAX(1))=""
 S VAX("N")=.32,VAZ=$S($P(VAX(.32),"^",5)]"":1,1:0),@VAV@($P(VAS,"^",6))=VAZ I VAZ,$P(VAX(.32),"^",19)="Y" S VAZ=1,@VAV@($P(VAS,"^",7))=VAZ I VAZ,$P(VAX(.32),"^",20)="Y" S @VAV@($P(VAS,"^",8))=1
 F I=6,7,8 I @VAV@($P(VAS,"^",I)) S VAX(3)=I,VAX(1)=$S(I=6:"6^7",I=7:"11^12",1:"16^17"),VAX(4)=3 D 91
 S VAX("N")=.53,VAX(3)=9,VAX(1)="2^3",VAZ=$S($P(VAX(.53),U)="Y":1,$P(VAX(.53),U)="N":1,1:0),@VAV@($P(VAS,U,VAX(3)))=$S($P(VAX(.53),U)="Y":1,$P(VAX(.53),U)="N":0,1:"") I VAZ S VAX(4)=0 D 93
 Q
 ;
91 F VAX(2)=1:1 S VAX(4)=VAX(4)+1,X=+$P(VAX(1),"^",VAX(2)) Q:'X  S X=$P(VAX(VAX("N")),"^",X),VAZ=X,Y=VAZ X:Y]"" ^DD("DD") S @VAV@($P(VAS,"^",VAX(3)),VAX(4))=$S(VAZ]"":VAZ_"^"_Y,1:"")
 Q:VAX(3)=1!(VAX(3)=9)
 I VAX(3)=2 S @VAV@($P(VAS,"^",2),4)=$P(VAX(.321),"^",10) S (X,VAZ)=$P(VAX(.321),"^",13) S:X]"" VAZ=VAZ_"^"_$S(X="K":"KOREAN DMZ",1:"VIETNAM") S @VAV@($P(VAS,"^",2),5)=VAZ Q
 I VAX(3)<4 S X=$P(VAX(.321),"^",12),VAZ=X S:X]"" VAZ=VAZ_"^"_$S(X="T":"NUCLEAR TESTING",X="N":"NAGASAKI/HIROSHIMA",1:"BOTH") S @VAV@($P(VAS,"^",3),2)=VAZ Q
 I VAX(3)<6 S X=$P(VAX(VAX("N")),"^",$S(VAX(3)=4:6,1:12)),VAZ=X S:$D(^DIC(22,+X,0)) VAZ=VAZ_"^"_$P(^(0),"^",1) S @VAV@($P(VAS,"^",VAX(3)),3)=VAZ Q
 S X=$S(VAX(3)=6:5,VAX(3)=7:10,1:15),VAX(2)=0 F VAX(5)=X,X+3,X-1 S VAX(2)=VAX(2)+1,VAZ=$P(VAX(VAX("N")),"^",VAX(5)),@VAV@($P(VAS,"^",VAX(3)),VAX(2))=VAZ I "^4^5^9^10^14^15^"[("^"_VAX(5)_"^"),+VAZ D 92
 Q
92 S VAX(6)="^DIC("_$S('(VAX(5)#5):23,1:25)_","_+VAZ_",0)" I $D(@(VAX(6))) S VAZ=$P(^(0),"^",1),@VAV@($P(VAS,"^",VAX(3)),VAX(2))=@VAV@($P(VAS,"^",VAX(3)),VAX(2))_"^"_VAZ
 Q
93 ;
 NEW VAFILE,VAIENS,VAFLDS,VAARR,VAI
 S VAFILE=2,VAIENS=DFN_",",VAFLDS=".532;.533"
 D GETS^DIQ(VAFILE,VAIENS,VAFLDS,"IEN","VAARR")
 F VAI=1:1 S VAFLDS(VAI)=$P(VAFLDS,";",VAI) Q:VAFLDS(VAI)=""  D
 . I '$D(VAARR(VAFILE,VAIENS,VAFLDS(VAI),"I")),'$D(VAARR(VAFILE,VAIENS,VAFLDS(VAI),"E")) S @VAV@($P(VAS,"^",VAX(3)),VAI)=""
 . E  S @VAV@($P(VAS,U,VAX(3)),VAI)=$G(VAARR(VAFILE,VAIENS,VAFLDS(VAI),"I"))_"^"_$G(VAARR(VAFILE,VAIENS,VAFLDS(VAI),"E"))
 Q