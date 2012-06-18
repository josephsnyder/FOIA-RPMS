HLOASUB1 ;IRMFO-ALB/CJM - Subscription Registry (continued) ;03/24/2004  14:43
 ;;1.6;HEALTH LEVEL SEVEN;**126**;Oct 13, 1995;
 ;
INDEX(IEN,PARMARY) ;
 ;Description: This allows an application to build an index of its
 ;subscriptions.  This is optional, but using this function allows the
 ;application to easily find subscriptions without storing the ien.
 ;
 ;Input:
 ;  IEN - ien of the entry in the Subscription Registry
 ;  PARMARY - **pass by reference** an array of parameters with which to build the index.  The format is: PARMARY(1)=<first parameter>, PARMARY(2)=<second parameter>  If PARMARY(i)=null, the parameter will be translated to a single space.
 ;Output:
 ;  function returns 1 on success, 0 otherwise
 ;  PARMARY - left undefined
 ;
 N OK S OK=0
 D
 .Q:'$G(IEN)
 .N OWNER,INDEX,I
 .S OWNER=$P($G(^HLD(779.4,IEN,0)),"^",2)
 .Q:'$L(OWNER)
 .Q:'$D(PARMARY)
 .S INDEX="^HLD(779.4,""AH"",OWNER,"
 .S I=0
 .F  S I=$O(PARMARY(I)) Q:'I  S INDEX=INDEX_""""_$S($L(PARMARY(I)):PARMARY(I),1:" ")_""","
 .S INDEX=$E(INDEX,1,$L(INDEX)-1)_")"
 .S @INDEX=IEN
 .S ^HLD(779.4,"AH KILL",IEN,""""_OWNER_""","_$P(INDEX,"^HLD(779.4,""AH"",OWNER,",2))=""
 .S OK=1
 K PARMARY
 Q OK
 ;
KILLAH(IEN) ;kills the AH x~ref on file 779.4 for a particular subscription registry entry=ien
 Q:'$G(IEN)
 N NEXT,LOCATION
 S NEXT=""
 F  S NEXT=$O(^HLD(779.4,"AH KILL",IEN,NEXT)) Q:'$L(NEXT)  D
 .S LOCATION="^HLD(779.4,""AH"","_NEXT
 .K @LOCATION
 K ^HLD(779.4,"AH KILL",IEN)
 Q
 ;
FIND(OWNER,PARMARY) ;
 ;Description: This allows an application to find a subscription
 ;list.  The application must maintain a private index in order to
 ;utilize this function, via $$INDEX^HLOASUB()
 ;
 ;Input:
 ;  OWNER - owning application name
 ;  PARMARY  **pass by reference** an array of parameters with which the index was built.  The format is: PARMARY(1)=<first parameter>, PARMARY(2)=<second parameter>  If PARMARY(i)=null, the parameter will be translated to a single space.
 ;Output:
 ;  function returns the ien of the subscription list if found, 0 otherwise
 ; PARMARY - left undefined
 ;
 N OK S OK=0
 ;
 D
 .Q:'$D(PARMARY)
 .Q:'$L($G(OWNER))
 .N INDEX,I
 .S INDEX="^HLD(779.4,""AH"",OWNER,"
 .S I=0
 .F  S I=$O(PARMARY(I)) Q:'I  S INDEX=INDEX_""""_$S($L(PARMARY(I)):PARMARY(I),1:" ")_""","
 .S INDEX=$E(INDEX,1,$L(INDEX)-1)_")"
 .S OK=+$G(@INDEX)
 K PARMARY
 Q OK
 ;
UPD(FILE,DA,DATA,ERROR) ;File data into an existing record.
 ; Input:
 ;   FILE - File or sub-file number
 ;   DA - Traditional DA array, with same meaning.
 ;            Pass by reference.
 ;   DATA - Data array to file (pass by reference)
 ;          Format: DATA(<field #>)=<value>
 ;
 ; Output:
 ;  Function Value -     0=error and 1=no error
 ;  ERROR - optional error message - if needed, pass by reference
 ;
 ; Example: To update a record in subfile 2.0361 in record with ien=353,
 ;          subrecord ien=68, with the field .01 value = 21:
 ;    S DATA(.01)=21,DA=68,DA(1)=353 I $$UPDS(2.0361,.DA,.DATA,.ERROR) W !,"DONE"
 ;
 N FDA,FIELD,IENS,ERRORS
 ;
 ;IENS - Internal Entry Number String defined by FM
 ;FDA - the FDA array as defined by FM
 ;
 I '$G(DA) S ERROR="IEN OF RECORD TO BE UPDATED NOT SPECIFIED" Q 0
 S IENS=$$IENS^DILF(.DA)
 S FIELD=0
 F  S FIELD=$O(DATA(FIELD)) Q:'FIELD  D
 .S FDA(FILE,IENS,FIELD)=$G(DATA(FIELD))
 D FILE^DIE("","FDA","ERRORS(1)")
 I +$G(DIERR) D
 .S ERROR=$G(ERRORS(1,"DIERR",1,"TEXT",1))
 E  D
 .S ERROR=""
 ;
 D CLEAN^DILF
 Q $S(+$G(DIERR):0,1:1)
 ;
ADD(FILE,DA,DATA,ERROR,IEN) ;
 ;Description: Creates a new record and files the data.
 ; Input:
 ;   FILE - File or sub-file number
 ;   DA - Traditional FileMan DA array with same
 ;            meaning. Pass by reference.  Only needed if adding to a
 ;            subfile.
 ;   DATA - Data array to file, pass by reference
 ;          Format: DATA(<field #>)=<value>
 ;   IEN - internal entry number to use (optional)
 ;
 ; Output:
 ;   Function Value - If no error then it returns the ien of the created record, else returns NULL.
 ;  DA - returns the ien of the new record, NULL if none created.  If needed, pass by reference.
 ;  ERROR - optional error message - if needed, pass by reference
 ;
 ; Example: To add a record in subfile 2.0361 in the record with ien=353
 ;          with the field .01 value = 21:
 ;  S DATA(.01)=21,DA(1)=353 I $$ADD(2.0361,.DA,.DATA) W !,"DONE"
 ;
 ; Example: If creating a record not in a subfile, would look like this:
 ;          S DATA(.01)=21 I $$ADD(867,,.DATA) W !,"DONE"
 ;
 N FDA,FIELD,IENA,IENS,ERRORS
 ;
 ;IENS - Internal Entry Number String defined by FM
 ;IENA - the Internal Entry Number Array defined by FM
 ;FDA - the FDA array defined by FM
 ;IEN - the ien of the new record
 ;
 S DA="+1"
 S IENS=$$IENS^DILF(.DA)
 S FIELD=0
 F  S FIELD=$O(DATA(FIELD)) Q:'FIELD  D
 .S FDA(FILE,IENS,FIELD)=$G(DATA(FIELD))
 I $G(IEN) S IENA(1)=IEN
 D UPDATE^DIE("","FDA","IENA","ERRORS(1)")
 I +$G(DIERR) D
 .S ERROR=$G(ERRORS(1,"DIERR",1,"TEXT",1))
 .S IEN=""
 E  D
 .S IEN=IENA(1)
 .S ERROR=""
 D CLEAN^DILF
 S DA=IEN
 Q IEN
 ;
DELETE(FILE,DA,ERROR)   ;Delete an existing record.
 N DATA
 S DATA(.01)="@"
 Q $$UPD^HLEMU(FILE,.DA,.DATA,.ERROR)
 Q
 ;
STATNUM(IEN) ;
 ;Description:  Given an ien to the Institution file, returns as the function value the station number. If IEN is NOT passed in, it assumes the local site.  Returns "" on failure.
 ;
 N STATION,RETURN
 S RETURN=""
 I $G(IEN) D
 .Q:'$D(^DIC(4,IEN,0))
 .S STATION=$P($$NNT^XUAF4(IEN),"^",2)
 .S RETURN=$S(+STATION:STATION,1:"")
 E  D
 .S RETURN=$P($$SITE^VASITE(),"^",3)
 Q RETURN
 ;
CHECKWHO(WHO,PARMS,ERROR) ;
 ;Checks the parameters provided in WHO() (see $$ADD).  They must resolve
 ;the link, receiving app and receiving facility.
 ;INPUT:
 ;  WHO - (required, pass by reference) - see $$ADD.
 ;
 ;  WHO("PORT") - if this is valued, it will be used as the remote port
 ;    to connect with rather than the port associated with the link
 ;Output:
 ;  Function returns 1 if the input is resolved successfully, 0 otherwise
 ;    PARMS - (pass by reference)  These subscripts are returned:
 ;     "LINK IEN" - ien of the link 
 ;     "LINK NAME" - name of the link
 ;     "RECEIVING APPLICATION"  - name of the receiving app
 ;     "RECEIVING FACILITY",1)  - component 1
 ;     "RECEIVING FACILITY",2) - component 2
 ;     "RECEIVING FACILITY",3) - component 3
 ;   ERROR - (pass by reference) - if unsuccessful, an error message is returned.
 ;
 N OK
 K ERROR
 S OK=1
 S PARMS("LINK IEN")="",PARMS("LINK NAME")=""
 ;must identify the receiving app
 ;
 D
 .N LEN
 .S LEN=$L($G(WHO("RECEIVING APPLICATION")))
 .I 'LEN S OK=0
 .E  I LEN>60 S OK=0
 .S:'OK ERROR="RECEIVING APPLICATION NOT VALID"
 .S PARMS("RECEIVING APPLICATION")=$G(WHO("RECEIVING APPLICATION"))
 ;
 ;find the station # if Institution ien known
 S:$G(WHO("INSTITUTION IEN")) WHO("STATION NUMBER")=$$STATNUM^HLOASUB1(WHO("INSTITUTION IEN"))
 ;
 ;if destination link specified by name, get its ien
 I '$G(WHO("FACILITY LINK IEN")),$L($G(WHO("FACILITY LINK NAME"))) S WHO("FACILITY LINK IEN")=$O(^HLCS(870,"B",WHO("FACILITY LINK NAME"),0))
 ;
 ;if destination link not specified, find it based on station #
 I +$G(WHO("STATION NUMBER")),'$G(WHO("FACILITY LINK IEN")) S WHO("FACILITY LINK IEN")=$$FINDLINK^HLOTLNK(WHO("STATION NUMBER"))
 ;
 ;if station # not known, find it based on destination link
 I '$G(WHO("STATION NUMBER")),$G(WHO("FACILITY LINK IEN")) S WHO("STATION NUMBER")=$$STATNUM^HLOTLNK(WHO("FACILITY LINK IEN"))
 ;
 S PARMS("RECEIVING FACILITY",1)=$G(WHO("STATION NUMBER"))
 ;
 ;if the destination link is known, get the domain
 S PARMS("RECEIVING FACILITY",2)=$S($G(WHO("FACILITY LINK IEN")):$$DOMAIN^HLOTLNK(WHO("FACILITY LINK IEN")),1:"")
 ;
 S PARMS("RECEIVING FACILITY",3)="DNS"
 ;
 ;find the link to send over - need name & ien
 I $G(WHO("IE LINK IEN")) D
 .S PARMS("LINK IEN")=WHO("IE LINK IEN")
 .S PARMS("LINK NAME")=$P($G(^HLCS(870,PARMS("LINK IEN"),0)),"^")
 .I OK,'$L(PARMS("LINK NAME")) S OK=0,ERROR="INTERFACE ENGINE LOGICAL LINK PROVIDED BUT NOT FOUND"
 E  I $L($G(WHO("IE LINK NAME"))) D
 .S PARMS("LINK NAME")=WHO("IE LINK NAME")
 .S PARMS("LINK IEN")=$O(^HLCS(870,"B",WHO("IE LINK NAME"),0))
 .I OK,'PARMS("LINK IEN") S OK=0,ERROR="INTERFACE ENGINE LOGICAL LINK PROVIDED BUT NOT FOUND"
 E  I $G(WHO("FACILITY LINK IEN")) D
 .S PARMS("LINK IEN")=WHO("FACILITY LINK IEN")
 .S PARMS("LINK NAME")=$P($G(^HLCS(870,PARMS("LINK IEN"),0)),"^")
 .I OK,'$L(PARMS("LINK NAME")) S OK=0,ERROR="RECEIVING FACILITY LOGICAL LINK NOT FOUND"
 E  I $L($G(WHO("FACILITY LINK NAME"))) D
 .S PARMS("LINK NAME")=WHO("FACILITY LINK NAME")
 .S PARMS("LINK IEN")=$O(^HLCS(870,"B",WHO("FACILITY LINK NAME"),0))
 .I OK,'PARMS("LINK IEN") S OK=0,ERROR="RECEIVING FACILITY LOGICAL LINK NOT FOUND"
 I OK,(('PARMS("LINK IEN"))!(PARMS("LINK NAME")="")) S OK=0,ERROR="LOGICAL LINK TO TRANSMIT OVER NOT SPECIFIED"
 ;
 ;need the station # or domain for msg header
 I OK,'$L(PARMS("RECEIVING FACILITY",2)),'PARMS("RECEIVING FACILITY",1) S OK=0,ERROR="RECEIVING FACILITY STATION # AND DOMAIN NOT SPECIFIED"
 ;
 ;append the port#
 I '$G(WHO("PORT")) S PARMS("RECEIVING FACILITY",2)=PARMS("RECEIVING FACILITY",2)_":"_$$PORT^HLOTLNK($G(WHO("FACILITY LINK IEN")))
 E  S PARMS("RECEIVING FACILITY",2)=PARMS("RECEIVING FACILITY",2)_":"_WHO("PORT")
 ;
 Q OK
