VAFHLNK1 ;ALB/GRR - HL7 NK1 SEGMENT BUILDER ;06/08/99
 ;;5.3;Registration;**190**;Aug 13, 1993
 ;
 ;This routine will build an HL7 NK1 segment for an inpatient.
 ;
EN(DFN,VAFHMIEN,VAFSTR) ;Entry point of routine
 ;DFN - Patient Internal Entry Number
 ;VAFHMIEN - Patient Movement Internal Entry Number
 ;VAFHSTR - Sequence numbers to be included
 ;
 N VAFHLREC,VAFHA,VAFHSUB,VAFHADD,VAFHLOC,VAFHREL,VAFHNAME S VAFHSUB=""
 Q:$$GET1^DIQ(2,DFN,".211","I")="" ""
 S $P(VAFHLREC,HL("FS"))="NK1"
 S $P(VAFHLREC,HL("FS"),2)=1 ;THE SET ID FOR NK1
 I VAFSTR[",2," S VAFHNAME=$$HLNAME^DGRUUTL($$GET1^DIQ(2,DFN,".211","E")),$P(VAFHLREC,HL("FS"),3)=$TR(VAFHNAME,"^",$E(HL("ECH"))) ;NEXT OF KIN NAME IN HL7 FORMAT
 I VAFSTR[",3," S VAFHREL=$$RELATE^DGRUUTL($$GET1^DIQ(2,DFN,".212","E")),$P(VAFHLREC,HL("FS"),4)=$P(VAFHREL,"^")_$E(HL("ECH"))_$P(VAFHREL,"^",2) ;NEXT OF KIN RELATIONSHIP
 I VAFSTR[",4," D
 .S VAFHADD=$$GET1^DIQ(2,DFN,".213","E")_"^"_$$GET1^DIQ(2,DFN,".214","E")_"^"_$$GET1^DIQ(2,DFN,".215","E") ;NEXT OF KIN STREET ADDRESS'S
 .S VAFHLOC=$$GET1^DIQ(2,DFN,".216","E")_"^"_$$GET1^DIQ(2,DFN,".217","I")_"^"_$$GET1^DIQ(2,DFN,".218","E") ;NEXT OF KIN CITY, STATE, AND ZIP
 .S $P(VAFHLREC,HL("FS"),5)=$$HLADDR^HLFNC(VAFHADD,VAFHLOC) ;CONVERT TO HL7 FORMAT
 I VAFSTR[",5," S $P(VAFHLREC,HL("FS"),6)=$$HLPHONE^HLFNC($$GET1^DIQ(2,DFN,".219","E")) ;NEXT OF KIN HOME PHONE IN HL7 FORMAT
QUITNK1 Q VAFHLREC
