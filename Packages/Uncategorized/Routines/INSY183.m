INSY183 ;slt;19 Aug 1994@090349;compiled gis system data
 ;;3.01;BHL IHS Interfaces with GIS;;JUL 01, 2001
 ;COPYRIGHT 1991-2000 SAIC
 Q
 ;
EN F I=1:2 S %ODD=$E($T(EN+I),4,999) Q:%ODD=""  S %EVEN=$E($T(EN+(I+1)),4,999) S X="^UTILITY(""INHSYS"","_$J_","_$P(%ODD,",",2,99),@X=%EVEN
 ;;^UTILITY(562037788,"SGDT",11,3)
 ;;S:$L(X) (X,INSETID(X))=$G(INSETID(X))+1
 ;;^UTILITY(562037788,"SGDT",12,0)
 ;;COMPOSITE^CM
 ;;^UTILITY(562037788,"SGDT",13,0)
 ;;COMPOSITE ID NUMBER AND NAME^CN
 ;;^UTILITY(562037788,"SGDT",13,1,0)
 ;;^^3^3
 ;;^UTILITY(562037788,"SGDT",13,1,1,0)
 ;;This data type is used to combine a Person Name data type with an ID
 ;;^UTILITY(562037788,"SGDT",13,1,2,0)
 ;;number and takes the form:
 ;;^UTILITY(562037788,"SGDT",13,1,3,0)
 ;;     ID\last\first\mi\title
 ;;^UTILITY(562037788,"SGDT",13,2)
 ;;
 ;;^UTILITY(562037788,"SGDT",13,50)
 ;;K:'X X I $D(X) S X="`"_+X
 ;;^UTILITY(562037788,"SGDT",15,0)
 ;;COMPOSITE PERSON NAME^CP
 ;;^UTILITY(562037788,"SGDT",15,1,0)
 ;;1^^1^1
 ;;^UTILITY(562037788,"SGDT",15,1,1,0)
 ;;Composite data type which is a person's name.  This will transform the name portion into the internal or transportable format.
 ;;^UTILITY(562037788,"SGDT",15,2)
 ;;I X]"" S X=+X_"\"_$TR($P(X,"\",2,9),".") N Y S Y=X,X=+Y_"\"_$P(X,"\",2)_$S($P(X,"\",3)]"":","_$P(X,"\",3),1:"") S:$P(Y,"\",4)]"" X=X_" "_$P(Y,"\",4) S:$P(Y,"\",5)]"" X=X_" "_$P(Y,"\",5)
 ;;^UTILITY(562037788,"SGDT",15,3)
 ;;I X]"" S X=$P(X,",")_"\"_$P($P(X,",",2)," ")_$S($P($P(X,",",2)," ",2)]"":"\"_$P($P(X,",",2)," ",2),1:"")
 ;;^UTILITY(562037788,"SGDT",15,50)
 ;;K:'X X I $D(X) S X="`"_+X
 ;;^UTILITY(562037788,"SGDT",16,0)
 ;;COMPOSITE ID WITH CHECK DIGIT^CK
 ;;^UTILITY(562037788,"SGDT",16,1,0)
 ;;3^^3^3^2940128
 ;;^UTILITY(562037788,"SGDT",16,1,1,0)
 ;;*** NOT AVAILABLE ** 
 ;;^UTILITY(562037788,"SGDT",16,1,2,0)
 ;;A composite consisting of three components: an id number, a check digit, and
 ;;^UTILITY(562037788,"SGDT",16,1,3,0)
 ;;a code showing the check digit scheme employed.
 ;;^UTILITY(562037788,"SGDT",17,0)
 ;;CODED ELEMENT^CE
 ;;^UTILITY(562037788,"SGDT",17,3)
 ;;S X=$$CE^INHUT(X)
 ;;^UTILITY(562037788,"SGDT",19,0)
 ;;COMPOSITE PERSON NAME SPECIAL^CX
 ;;^UTILITY(562037788,"SGDT",19,3)
 ;;S X=$$CN^INHUT(X)
 ;;^UTILITY(562037788,"SGF",170,0)
 ;;HL PATIENT NAME^PERSON NAME^48
 ;;^UTILITY(562037788,"SGF",170,"C")
 ;;NAME
 ;;^UTILITY(562037788,"SGF",171,0)
 ;;HL GENDER^CODED ID^1
 ;;^UTILITY(562037788,"SGF",171,"C")
 ;;SEX
 ;;^UTILITY(562037788,"SGF",172,0)
 ;;HL DATE OF BIRTH^DATE^8
 ;;^UTILITY(562037788,"SGF",172,"C")
 ;;DOB
 ;;^UTILITY(562037788,"SGF",173,0)
 ;;HL RACE^CODED ID^1
 ;;^UTILITY(562037788,"SGF",173,10,0)
 ;;^4012.02P^1^0
 ;;^UTILITY(562037788,"SGF",173,"C")
 ;;RACE:CODE
 ;;^UTILITY(562037788,"SGF",174,0)
 ;;HL RELIGION^CODED ID^3
 ;;^UTILITY(562037788,"SGF",174,"C")
 ;;RELIGION:CODE
 ;;^UTILITY(562037788,"SGF",175,0)
 ;;HL MARITAL STATUS^CODED ID^1
 ;;^UTILITY(562037788,"SGF",175,"C")
 ;;MARITAL STATUS:ABBREVIATION
 ;;^UTILITY(562037788,"SGF",176,0)
 ;;HL PATIENT ADDRESS^ADDRESS^178
 ;;^UTILITY(562037788,"SGF",176,10,0)
 ;;^4012.02P^6^5
 ;;^UTILITY(562037788,"SGF",176,10,1,0)
 ;;HL STREET ADDRESS^1
 ;;^UTILITY(562037788,"SGF",176,10,2,0)
 ;;HL OTHER DESIGNATION^2
 ;;^UTILITY(562037788,"SGF",176,10,3,0)
 ;;HL CITY^3
 ;;^UTILITY(562037788,"SGF",176,10,5,0)
 ;;HL ZIP OR POSTAL CODE^5
 ;;^UTILITY(562037788,"SGF",176,10,6,0)
 ;;HL STATE^4
 ;;^UTILITY(562037788,"SGF",176,10,"AS",1,1)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"AS",2,2)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"AS",3,3)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"AS",4,6)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"AS",5,5)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"B",177,1)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"B",178,2)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"B",179,3)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"B",181,5)
 ;;
 ;;^UTILITY(562037788,"SGF",176,10,"B",182,6)
 ;;
 ;;^UTILITY(562037788,"SGF",177,0)
 ;;HL STREET ADDRESS^STRING^36
 ;;^UTILITY(562037788,"SGF",177,"C")
 ;;STREET ADDRESS
 ;;^UTILITY(562037788,"SGF",178,0)
 ;;HL OTHER DESIGNATION^STRING^36
 ;;^UTILITY(562037788,"SGF",178,"C")
 ;;#.112_$S($L(#.113):" ",1:"")_#.113
 ;;^UTILITY(562037788,"SGF",179,0)
 ;;HL CITY^STRING^20
 ;;^UTILITY(562037788,"SGF",179,"C")
 ;;CITY
 ;;^UTILITY(562037788,"SGF",181,0)
 ;;HL ZIP OR POSTAL CODE^STRING^10
 ;;^UTILITY(562037788,"SGF",181,"C")
 ;;ZIP CODE
 ;;^UTILITY(562037788,"SGF",182,0)
 ;;HL STATE^STRING^71
 ;;^UTILITY(562037788,"SGF",182,5)
 ;;
 ;;^UTILITY(562037788,"SGF",182,"C")
 ;;STATE
 ;;^UTILITY(562037788,"SGF",185,0)
 ;;HL PATIENT ACCOUNT NUM^COMPOSITE ID WITH CHECK DIGIT^20
 ;;^UTILITY(562037788,"SGF",185,"C")
 ;;
 ;;^UTILITY(562037788,"SGF",186,0)
 ;;HL COUNTY CODE^CODED ID^4
 ;;^UTILITY(562037788,"SGF",187,0)
 ;;HL ALTERNATE PATIENT^STRING^15
 ;;^UTILITY(562037788,"SGF",187,"C")
 ;;#8000
 ;;^UTILITY(562037788,"SGF",188,0)
 ;;HL PHONE NUMBER - HOME^TELEPHONE NUMBER^14
 ;;^UTILITY(562037788,"SGF",188,"C")
 ;;PHONE
 ;;^UTILITY(562037788,"SGF",189,0)
 ;;HL PHONE NUMBER-BUSINES^TELEPHONE NUMBER^18
 ;;^UTILITY(562037788,"SGF",189,"C")
 ;;OFFICE PHONE
 ;;^UTILITY(562037788,"SGF",190,0)
 ;;HL PATIENT EXTERNAL ID^COMPOSITE ID WITH CHECK DIGIT^16
 ;;^UTILITY(562037788,"SGF",191,0)
 ;;HL MOTHER'S MAIDEN NAME^STRING^30
 ;;^UTILITY(562037788,"SGF",192,0)
 ;;HL PATIEN ALIAS^PERSON NAME^48
 ;;^UTILITY(562037788,"SGF",193,0)
 ;;HL LANGUAGE - PATIENT^STRING^25
 ;;^UTILITY(562037788,"SGF",194,0)
 ;;HL SSN NUMBER - PATIENT^STRING^16
 ;;^UTILITY(562037788,"SGF",194,"C")
 ;;#.09
 ;;^UTILITY(562037788,"SGF",195,0)
 ;;HL DRIVER'S LIC NUM^COMPOSITE^25
 ;;^UTILITY(562037788,"SGF",196,0)
 ;;HL SET ID - PATIENT ID^SET ID^4
 ;;^UTILITY(562037788,"SGF",196,"C")
 ;;"PID"
 ;;^UTILITY(562037788,"SGF",201,0)
 ;;HL FIELD SEPARATOR^STRING^1
 ;;^UTILITY(562037788,"SGF",202,0)
 ;;HL ENCODING CHARACTERS^STRING^4
 ;;^UTILITY(562037788,"SGF",203,0)
 ;;HL SENDING APPLICATIONS^STRING^15
 ;;^UTILITY(562037788,"SGF",204,0)
 ;;HL SENDING FACILITY^STRING^20
 ;;^UTILITY(562037788,"SGF",205,0)
 ;;HL RECEIVING APPLICATIO^STRING^15
 ;;^UTILITY(562037788,"SGF",206,0)
 ;;HL RECEIVING FACILITY^STRING^30
 ;;^UTILITY(562037788,"SGF",207,0)
 ;;HL DATE/TIME OF MESSAGE^TIME STAMP^19
 Q
