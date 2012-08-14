BGP6EXN ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;;BGP HIV TEST LOINC CODES
 ;
 ; This routine loads Taxonomy BGP HIV TEST LOINC CODES
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 D OTHER
 I $O(^TMP("ATX",$J,3.6,0)) D BULL^ATXSTX2
 I $O(^TMP("ATX",$J,9002226,0)) D TAX^ATXSTX2
 D KILL^ATXSTX2
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"10351-5 ")
 ;;1
 ;;21,"10901-7 ")
 ;;2
 ;;21,"10902-5 ")
 ;;3
 ;;21,"11078-3 ")
 ;;4
 ;;21,"11079-1 ")
 ;;5
 ;;21,"11080-9 ")
 ;;6
 ;;21,"11081-7 ")
 ;;7
 ;;21,"11082-5 ")
 ;;8
 ;;21,"12855-3 ")
 ;;9
 ;;21,"12856-1 ")
 ;;10
 ;;21,"12857-9 ")
 ;;11
 ;;21,"12858-7 ")
 ;;12
 ;;21,"12859-5 ")
 ;;13
 ;;21,"12870-2 ")
 ;;14
 ;;21,"12871-0 ")
 ;;15
 ;;21,"12872-8 ")
 ;;16
 ;;21,"12875-1 ")
 ;;17
 ;;21,"12876-9 ")
 ;;18
 ;;21,"12893-4 ")
 ;;19
 ;;21,"12894-2 ")
 ;;20
 ;;21,"12895-9 ")
 ;;21
 ;;21,"13499-9 ")
 ;;22
 ;;21,"13920-4 ")
 ;;23
 ;;21,"14092-1 ")
 ;;24
 ;;21,"14126-7 ")
 ;;25
 ;;21,"16132-3 ")
 ;;26
 ;;21,"16974-8 ")
 ;;27
 ;;21,"16975-5 ")
 ;;28
 ;;21,"16976-3 ")
 ;;29
 ;;21,"16977-1 ")
 ;;30
 ;;21,"16978-9 ")
 ;;31
 ;;21,"16979-7 ")
 ;;32
 ;;21,"18396-2 ")
 ;;33
 ;;21,"19110-6 ")
 ;;34
 ;;21,"20447-9 ")
 ;;35
 ;;21,"21007-0 ")
 ;;36
 ;;21,"21008-8 ")
 ;;37
 ;;21,"21009-6 ")
 ;;38
 ;;21,"21331-4 ")
 ;;39
 ;;21,"21332-2 ")
 ;;40
 ;;21,"21333-0 ")
 ;;41
 ;;21,"21334-8 ")
 ;;42
 ;;21,"21335-5 ")
 ;;43
 ;;21,"21336-3 ")
 ;;44
 ;;21,"21337-1 ")
 ;;45
 ;;21,"21338-9 ")
 ;;46
 ;;21,"21339-7 ")
 ;;47
 ;;21,"21340-5 ")
 ;;48
 ;;21,"22356-0 ")
 ;;49
 ;;21,"22357-8 ")
 ;;50
 ;;21,"22358-6 ")
 ;;51
 ;;21,"23876-6 ")
 ;;52
 ;;21,"24012-7 ")
 ;;53
 ;;21,"24013-5 ")
 ;;54
 ;;21,"25835-0 ")
 ;;55
 ;;21,"25836-8 ")
 ;;56
 ;;21,"25841-8 ")
 ;;57
 ;;21,"25842-6 ")
 ;;58
 ;;21,"28004-0 ")
 ;;59
 ;;21,"28052-9 ")
 ;;60
 ;;21,"29327-4 ")
 ;;61
 ;;21,"29539-4 ")
 ;;62
 ;;21,"29541-0 ")
 ;;63
 ;;21,"29893-5 ")
 ;;64
 ;;21,"30245-5 ")
 ;;65
 ;;21,"30361-0 ")
 ;;66
 ;;21,"30554-0 ")
 ;;67
 ;;21,"31072-2 ")
 ;;68
 ;;21,"31073-0 ")
 ;;69
 ;;21,"31201-7 ")
 ;;70
 ;;21,"31430-2 ")
 ;;71
 ;;21,"32571-2 ")
 ;;72
 ;;21,"32602-5 ")
 ;;73
 ;;21,"5017-9 ")
 ;;74
 ;;21,"5018-7 ")
 ;;75
 ;;21,"5220-9 ")
 ;;76
 ;;21,"5221-7 ")
 ;;77
 ;;21,"5222-5 ")
 ;;78
 ;;21,"5223-3 ")
 ;;79
 ;;21,"5224-1 ")
 ;;80
 ;;21,"5225-8 ")
 ;;81
 ;;21,"6429-5 ")
 ;;82
 ;;21,"6430-3 ")
 ;;83
 ;;21,"6431-1 ")
 ;;84
 ;;21,"7917-8 ")
 ;;85
 ;;21,"7918-6 ")
 ;;86
 ;;21,"7919-4 ")
 ;;87
 ;;21,"9660-2 ")
 ;;88
 ;;21,"9661-0 ")
 ;;89
 ;;21,"9662-8 ")
 ;;90
 ;;21,"9663-6 ")
 ;;91
 ;;21,"9664-4 ")
 ;;92
 ;;21,"9665-1 ")
 ;;93
 ;;21,"9666-9 ")
 ;;94
 ;;21,"9667-7 ")
 ;;95
 ;;21,"9668-5 ")
 ;;96
 ;;21,"9669-3 ")
 ;;97
 ;;21,"9821-0 ")
 ;;98
 ;;21,"9836-8 ")
 ;;99
 ;;21,"9837-6 ")
 ;;100
 ;;9002226,314,.01)
 ;;BGP HIV TEST LOINC CODES
 ;;9002226,314,.02)
 ;;@
 ;;9002226,314,.04)
 ;;n
 ;;9002226,314,.06)
 ;;@
 ;;9002226,314,.08)
 ;;@
 ;;9002226,314,.09)
 ;;@
 ;;9002226,314,.11)
 ;;@
 ;;9002226,314,.12)
 ;;@
 ;;9002226,314,.13)
 ;;1
 ;;9002226,314,.14)
 ;;FIHS
 ;;9002226,314,.15)
 ;;95.3
 ;;9002226,314,.16)
 ;;0
 ;;9002226,314,.17)
 ;;@
 ;;9002226,314,3101)
 ;;@
 ;;9002226.02101,"314,10351-5 ",.01)
 ;;10351-5
 ;;9002226.02101,"314,10351-5 ",.02)
 ;;10351-5
 ;;9002226.02101,"314,10901-7 ",.01)
 ;;10901-7
 ;;9002226.02101,"314,10901-7 ",.02)
 ;;10901-7
 ;;9002226.02101,"314,10902-5 ",.01)
 ;;10902-5
 ;;9002226.02101,"314,10902-5 ",.02)
 ;;10902-5
 ;;9002226.02101,"314,11078-3 ",.01)
 ;;11078-3
 ;;9002226.02101,"314,11078-3 ",.02)
 ;;11078-3
 ;;9002226.02101,"314,11079-1 ",.01)
 ;;11079-1
 ;;9002226.02101,"314,11079-1 ",.02)
 ;;11079-1
 ;;9002226.02101,"314,11080-9 ",.01)
 ;;11080-9
 ;;9002226.02101,"314,11080-9 ",.02)
 ;;11080-9
 ;;9002226.02101,"314,11081-7 ",.01)
 ;;11081-7
 ;;9002226.02101,"314,11081-7 ",.02)
 ;;11081-7
 ;;9002226.02101,"314,11082-5 ",.01)
 ;;11082-5
 ;;9002226.02101,"314,11082-5 ",.02)
 ;;11082-5
 ;;9002226.02101,"314,12855-3 ",.01)
 ;;12855-3
 ;;9002226.02101,"314,12855-3 ",.02)
 ;;12855-3
 ;;9002226.02101,"314,12856-1 ",.01)
 ;;12856-1
 ;;9002226.02101,"314,12856-1 ",.02)
 ;;12856-1
 ;;9002226.02101,"314,12857-9 ",.01)
 ;;12857-9
 ;;9002226.02101,"314,12857-9 ",.02)
 ;;12857-9
 ;;9002226.02101,"314,12858-7 ",.01)
 ;;12858-7
 ;;9002226.02101,"314,12858-7 ",.02)
 ;;12858-7
 ;;9002226.02101,"314,12859-5 ",.01)
 ;;12859-5
 ;;9002226.02101,"314,12859-5 ",.02)
 ;;12859-5
 ;;9002226.02101,"314,12870-2 ",.01)
 ;;12870-2
 ;;9002226.02101,"314,12870-2 ",.02)
 ;;12870-2
 ;;9002226.02101,"314,12871-0 ",.01)
 ;;12871-0
 ;;9002226.02101,"314,12871-0 ",.02)
 ;;12871-0
 ;;9002226.02101,"314,12872-8 ",.01)
 ;;12872-8
 ;;9002226.02101,"314,12872-8 ",.02)
 ;;12872-8
 ;;9002226.02101,"314,12875-1 ",.01)
 ;;12875-1
 ;;9002226.02101,"314,12875-1 ",.02)
 ;;12875-1
 ;;9002226.02101,"314,12876-9 ",.01)
 ;;12876-9
 ;;9002226.02101,"314,12876-9 ",.02)
 ;;12876-9
 ;;9002226.02101,"314,12893-4 ",.01)
 ;;12893-4
 ;;9002226.02101,"314,12893-4 ",.02)
 ;;12893-4
 ;;9002226.02101,"314,12894-2 ",.01)
 ;;12894-2
 ;;9002226.02101,"314,12894-2 ",.02)
 ;;12894-2
 ;;9002226.02101,"314,12895-9 ",.01)
 ;;12895-9
 ;;9002226.02101,"314,12895-9 ",.02)
 ;;12895-9
 ;;9002226.02101,"314,13499-9 ",.01)
 ;;13499-9
 ;;9002226.02101,"314,13499-9 ",.02)
 ;;13499-9
 ;;9002226.02101,"314,13920-4 ",.01)
 ;;13920-4
 ;;9002226.02101,"314,13920-4 ",.02)
 ;;13920-4
 ;;9002226.02101,"314,14092-1 ",.01)
 ;;14092-1
 ;;9002226.02101,"314,14092-1 ",.02)
 ;;14092-1
 ;;9002226.02101,"314,14126-7 ",.01)
 ;;14126-7
 ;;9002226.02101,"314,14126-7 ",.02)
 ;;14126-7
 ;;9002226.02101,"314,16132-3 ",.01)
 ;;16132-3
 ;;9002226.02101,"314,16132-3 ",.02)
 ;;16132-3
 ;;9002226.02101,"314,16974-8 ",.01)
 ;;16974-8
 ;;9002226.02101,"314,16974-8 ",.02)
 ;;16974-8
 ;;9002226.02101,"314,16975-5 ",.01)
 ;;16975-5
 ;;9002226.02101,"314,16975-5 ",.02)
 ;;16975-5
 ;;9002226.02101,"314,16976-3 ",.01)
 ;;16976-3
 ;;9002226.02101,"314,16976-3 ",.02)
 ;;16976-3
 ;;9002226.02101,"314,16977-1 ",.01)
 ;;16977-1
 ;;9002226.02101,"314,16977-1 ",.02)
 ;;16977-1
 ;;9002226.02101,"314,16978-9 ",.01)
 ;;16978-9
 ;;9002226.02101,"314,16978-9 ",.02)
 ;;16978-9
 ;;9002226.02101,"314,16979-7 ",.01)
 ;;16979-7
 ;;9002226.02101,"314,16979-7 ",.02)
 ;;16979-7
 ;;9002226.02101,"314,18396-2 ",.01)
 ;;18396-2
 ;;9002226.02101,"314,18396-2 ",.02)
 ;;18396-2
 ;;9002226.02101,"314,19110-6 ",.01)
 ;;19110-6
 ;;9002226.02101,"314,19110-6 ",.02)
 ;;19110-6
 ;;9002226.02101,"314,20447-9 ",.01)
 ;;20447-9
 ;;9002226.02101,"314,20447-9 ",.02)
 ;;20447-9
 ;;9002226.02101,"314,21007-0 ",.01)
 ;;21007-0
 ;;9002226.02101,"314,21007-0 ",.02)
 ;;21007-0
 ;;9002226.02101,"314,21008-8 ",.01)
 ;;21008-8
 ;;9002226.02101,"314,21008-8 ",.02)
 ;;21008-8
 ;;9002226.02101,"314,21009-6 ",.01)
 ;;21009-6
 ;;9002226.02101,"314,21009-6 ",.02)
 ;;21009-6
 ;;9002226.02101,"314,21331-4 ",.01)
 ;;21331-4
 ;;9002226.02101,"314,21331-4 ",.02)
 ;;21331-4
 ;;9002226.02101,"314,21332-2 ",.01)
 ;;21332-2
 ;;9002226.02101,"314,21332-2 ",.02)
 ;;21332-2
 ;;9002226.02101,"314,21333-0 ",.01)
 ;;21333-0
 ;;9002226.02101,"314,21333-0 ",.02)
 ;;21333-0
 ;;9002226.02101,"314,21334-8 ",.01)
 ;;21334-8
 ;;9002226.02101,"314,21334-8 ",.02)
 ;;21334-8
 ;;9002226.02101,"314,21335-5 ",.01)
 ;;21335-5
 ;;9002226.02101,"314,21335-5 ",.02)
 ;;21335-5
 ;;9002226.02101,"314,21336-3 ",.01)
 ;;21336-3
 ;;9002226.02101,"314,21336-3 ",.02)
 ;;21336-3
 ;;9002226.02101,"314,21337-1 ",.01)
 ;;21337-1
 ;;9002226.02101,"314,21337-1 ",.02)
 ;;21337-1
 ;;9002226.02101,"314,21338-9 ",.01)
 ;;21338-9
 ;;9002226.02101,"314,21338-9 ",.02)
 ;;21338-9
 ;;9002226.02101,"314,21339-7 ",.01)
 ;;21339-7
 ;;9002226.02101,"314,21339-7 ",.02)
 ;;21339-7
 ;;9002226.02101,"314,21340-5 ",.01)
 ;;21340-5
 ;;9002226.02101,"314,21340-5 ",.02)
 ;;21340-5
 ;;9002226.02101,"314,22356-0 ",.01)
 ;;22356-0
 ;;9002226.02101,"314,22356-0 ",.02)
 ;;22356-0
 ;;9002226.02101,"314,22357-8 ",.01)
 ;;22357-8
 ;;9002226.02101,"314,22357-8 ",.02)
 ;;22357-8
 ;;9002226.02101,"314,22358-6 ",.01)
 ;;22358-6
 ;;9002226.02101,"314,22358-6 ",.02)
 ;;22358-6
 ;;9002226.02101,"314,23876-6 ",.01)
 ;;23876-6
 ;;9002226.02101,"314,23876-6 ",.02)
 ;;23876-6
 ;;9002226.02101,"314,24012-7 ",.01)
 ;;24012-7
 ;;9002226.02101,"314,24012-7 ",.02)
 ;;24012-7
 ;;9002226.02101,"314,24013-5 ",.01)
 ;;24013-5
 ;;9002226.02101,"314,24013-5 ",.02)
 ;;24013-5
 ;;9002226.02101,"314,25835-0 ",.01)
 ;;25835-0
 ;;9002226.02101,"314,25835-0 ",.02)
 ;;25835-0
 ;;9002226.02101,"314,25836-8 ",.01)
 ;;25836-8
 ;;9002226.02101,"314,25836-8 ",.02)
 ;;25836-8
 ;;9002226.02101,"314,25841-8 ",.01)
 ;;25841-8
 ;;9002226.02101,"314,25841-8 ",.02)
 ;;25841-8
 ;;9002226.02101,"314,25842-6 ",.01)
 ;;25842-6
 ;;9002226.02101,"314,25842-6 ",.02)
 ;;25842-6
 ;;9002226.02101,"314,28004-0 ",.01)
 ;;28004-0
 ;;9002226.02101,"314,28004-0 ",.02)
 ;;28004-0
 ;;9002226.02101,"314,28052-9 ",.01)
 ;;28052-9
 ;;9002226.02101,"314,28052-9 ",.02)
 ;;28052-9
 ;;9002226.02101,"314,29327-4 ",.01)
 ;;29327-4
 ;;9002226.02101,"314,29327-4 ",.02)
 ;;29327-4
 ;;9002226.02101,"314,29539-4 ",.01)
 ;;29539-4
 ;;9002226.02101,"314,29539-4 ",.02)
 ;;29539-4
 ;;9002226.02101,"314,29541-0 ",.01)
 ;;29541-0
 ;;9002226.02101,"314,29541-0 ",.02)
 ;;29541-0
 ;;9002226.02101,"314,29893-5 ",.01)
 ;;29893-5
 ;;9002226.02101,"314,29893-5 ",.02)
 ;;29893-5
 ;;9002226.02101,"314,30245-5 ",.01)
 ;;30245-5
 ;;9002226.02101,"314,30245-5 ",.02)
 ;;30245-5
 ;;9002226.02101,"314,30361-0 ",.01)
 ;;30361-0
 ;;9002226.02101,"314,30361-0 ",.02)
 ;;30361-0
 ;;9002226.02101,"314,30554-0 ",.01)
 ;;30554-0
 ;;9002226.02101,"314,30554-0 ",.02)
 ;;30554-0
 ;;9002226.02101,"314,31072-2 ",.01)
 ;;31072-2
 ;;9002226.02101,"314,31072-2 ",.02)
 ;;31072-2
 ;;9002226.02101,"314,31073-0 ",.01)
 ;;31073-0
 ;;9002226.02101,"314,31073-0 ",.02)
 ;;31073-0
 ;;9002226.02101,"314,31201-7 ",.01)
 ;;31201-7
 ;;9002226.02101,"314,31201-7 ",.02)
 ;;31201-7
 ;;9002226.02101,"314,31430-2 ",.01)
 ;;31430-2
 ;;9002226.02101,"314,31430-2 ",.02)
 ;;31430-2
 ;;9002226.02101,"314,32571-2 ",.01)
 ;;32571-2
 ;;9002226.02101,"314,32571-2 ",.02)
 ;;32571-2
 ;;9002226.02101,"314,32602-5 ",.01)
 ;;32602-5
 ;;9002226.02101,"314,32602-5 ",.02)
 ;;32602-5
 ;;9002226.02101,"314,5017-9 ",.01)
 ;;5017-9
 ;;9002226.02101,"314,5017-9 ",.02)
 ;;5017-9
 ;;9002226.02101,"314,5018-7 ",.01)
 ;;5018-7
 ;;9002226.02101,"314,5018-7 ",.02)
 ;;5018-7
 ;;9002226.02101,"314,5220-9 ",.01)
 ;;5220-9
 ;;9002226.02101,"314,5220-9 ",.02)
 ;;5220-9
 ;;9002226.02101,"314,5221-7 ",.01)
 ;;5221-7
 ;;9002226.02101,"314,5221-7 ",.02)
 ;;5221-7
 ;;9002226.02101,"314,5222-5 ",.01)
 ;;5222-5
 ;;9002226.02101,"314,5222-5 ",.02)
 ;;5222-5
 ;;9002226.02101,"314,5223-3 ",.01)
 ;;5223-3
 ;;9002226.02101,"314,5223-3 ",.02)
 ;;5223-3
 ;;9002226.02101,"314,5224-1 ",.01)
 ;;5224-1
 ;;9002226.02101,"314,5224-1 ",.02)
 ;;5224-1
 ;;9002226.02101,"314,5225-8 ",.01)
 ;;5225-8
 ;;9002226.02101,"314,5225-8 ",.02)
 ;;5225-8
 ;;9002226.02101,"314,6429-5 ",.01)
 ;;6429-5
 ;;9002226.02101,"314,6429-5 ",.02)
 ;;6429-5
 ;;9002226.02101,"314,6430-3 ",.01)
 ;;6430-3
 ;;9002226.02101,"314,6430-3 ",.02)
 ;;6430-3
 ;;9002226.02101,"314,6431-1 ",.01)
 ;;6431-1
 ;;9002226.02101,"314,6431-1 ",.02)
 ;;6431-1
 ;;9002226.02101,"314,7917-8 ",.01)
 ;;7917-8
 ;;9002226.02101,"314,7917-8 ",.02)
 ;;7917-8
 ;;9002226.02101,"314,7918-6 ",.01)
 ;;7918-6
 ;;9002226.02101,"314,7918-6 ",.02)
 ;;7918-6
 ;;9002226.02101,"314,7919-4 ",.01)
 ;;7919-4
 ;;9002226.02101,"314,7919-4 ",.02)
 ;;7919-4
 ;;9002226.02101,"314,9660-2 ",.01)
 ;;9660-2
 ;;9002226.02101,"314,9660-2 ",.02)
 ;;9660-2
 ;;9002226.02101,"314,9661-0 ",.01)
 ;;9661-0
 ;;9002226.02101,"314,9661-0 ",.02)
 ;;9661-0
 ;;9002226.02101,"314,9662-8 ",.01)
 ;;9662-8
 ;;9002226.02101,"314,9662-8 ",.02)
 ;;9662-8
 ;;9002226.02101,"314,9663-6 ",.01)
 ;;9663-6
 ;;9002226.02101,"314,9663-6 ",.02)
 ;;9663-6
 ;;9002226.02101,"314,9664-4 ",.01)
 ;;9664-4
 ;;9002226.02101,"314,9664-4 ",.02)
 ;;9664-4
 ;;9002226.02101,"314,9665-1 ",.01)
 ;;9665-1
 ;;9002226.02101,"314,9665-1 ",.02)
 ;;9665-1
 ;;9002226.02101,"314,9666-9 ",.01)
 ;;9666-9
 ;;9002226.02101,"314,9666-9 ",.02)
 ;;9666-9
 ;;9002226.02101,"314,9667-7 ",.01)
 ;;9667-7
 ;;9002226.02101,"314,9667-7 ",.02)
 ;;9667-7
 ;;9002226.02101,"314,9668-5 ",.01)
 ;;9668-5
 ;;9002226.02101,"314,9668-5 ",.02)
 ;;9668-5
 ;;9002226.02101,"314,9669-3 ",.01)
 ;;9669-3
 ;;9002226.02101,"314,9669-3 ",.02)
 ;;9669-3
 ;;9002226.02101,"314,9821-0 ",.01)
 ;;9821-0
 ;;9002226.02101,"314,9821-0 ",.02)
 ;;9821-0
 ;;9002226.02101,"314,9836-8 ",.01)
 ;;9836-8
 ;;9002226.02101,"314,9836-8 ",.02)
 ;;9836-8
 ;;9002226.02101,"314,9837-6 ",.01)
 ;;9837-6
 ;;9002226.02101,"314,9837-6 ",.02)
 ;;9837-6
 ;
OTHER ; OTHER ROUTINES
 Q