BCH1I00B ; IHS/TUCSON/LAB - NO DESCRIPTION PROVIDED ; 
 ;;1.0;IHS RPMS CHR SYSTEM;**2**;OCT 28, 1996
 F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,999) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q Q
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,1,2)
 ;;=4,3^30
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,2,0)
 ;;=2^Enter the Hospital or Clinic Name^1
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,2,2)
 ;;=^^2,3
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,"B",1,1)
 ;;=
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,"B",2,2)
 ;;=
 ;;^UTILITY(U,$J,"DIST(.404,",110,40,"C","ENTER THE HOSPITAL OR CLINIC NAME",2)
 ;;=
 ;;^UTILITY(U,$J,"DIST(.404,",113,0)
 ;;=BCH EDIT TESTS/MSR/RF^90002
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,0)
 ;;=^.4044I^28^28
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,1,0)
 ;;=1^******* EDIT MEASUREMENTS/TEST/REPRODUCTIVE FACTORS *******^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,1,2)
 ;;=^^1,9
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,2,0)
 ;;=4^BP^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,2,1)
 ;;=1201
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,2,2)
 ;;=5,9^10^5,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,3,0)
 ;;=6^WT^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,3,1)
 ;;=1202
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,3,2)
 ;;=6,9^10^6,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,4,0)
 ;;=7^HT^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,4,1)
 ;;=1203
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,4,2)
 ;;=7,9^10^7,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,5,0)
 ;;=11^HC^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,5,1)
 ;;=1204
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,5,2)
 ;;=8,9^10^8,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,6,0)
 ;;=18^VU^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,6,1)
 ;;=1205
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,6,2)
 ;;=10,9^10^10,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,7,0)
 ;;=22^VC^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,7,1)
 ;;=1206
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,7,2)
 ;;=11,9^10^11,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,8,0)
 ;;=23^TEMP^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,8,1)
 ;;=1207
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,8,2)
 ;;=13,9^10^13,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,9,0)
 ;;=25^PULSE^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,9,1)
 ;;=1208
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,9,2)
 ;;=14,9^10^14,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,10,0)
 ;;=26^RESP^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,10,1)
 ;;=1209
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,10,2)
 ;;=15,9^10^15,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,11,0)
 ;;=2^** MEASUREMENTS **^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,11,2)
 ;;=^^3,2
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,12,0)
 ;;=3^** TESTS **^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,12,2)
 ;;=^^3,39
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,13,0)
 ;;=24^** REPRODUCTIVE FACTORS **^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,13,2)
 ;;=^^13,33
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,14,0)
 ;;=27^LMP^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,14,1)
 ;;=.13
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,14,2)
 ;;=15,33^11^15,28
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,15,0)
 ;;=28^FP METHOD^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,15,1)
 ;;=.14
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,15,2)
 ;;=15,58^5^15,47
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,16,0)
 ;;=5^PPD^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,16,1)
 ;;=1210
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,16,2)
 ;;=5,30^11^5,25
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,17,0)
 ;;=8^BLOOD SUGAR^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,17,2)
 ;;=^^7,25
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,18,0)
 ;;=9^Date^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,18,1)
 ;;=1301
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,18,2)
 ;;=7,44^11^7,38
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,19,0)
 ;;=10^Result^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,19,1)
 ;;=1302
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,19,2)
 ;;=7,65^8^7,57
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,20,0)
 ;;=12^THRT CULT^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,20,2)
 ;;=^^8,25
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,21,0)
 ;;=15^HCT^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,21,2)
 ;;=^^9,25
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,22,0)
 ;;=19^UA^1
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,22,2)
 ;;=^^10,25
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,23,0)
 ;;=13^Date^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,23,1)
 ;;=1303
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,23,2)
 ;;=8,44^11^8,38
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,24,0)
 ;;=16^Date^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,24,1)
 ;;=1307
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,24,2)
 ;;=9,44^11^9,38
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,25,0)
 ;;=20^Date^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,25,1)
 ;;=1305
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,25,2)
 ;;=10,44^11^10,38
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,26,0)
 ;;=14^Result^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,26,1)
 ;;=1304
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,26,2)
 ;;=8,65^8^8,57
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,27,0)
 ;;=17^Result^3
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,27,1)
 ;;=1308
 ;;^UTILITY(U,$J,"DIST(.404,",113,40,27,2)
 ;;=9,65^8^9,57
