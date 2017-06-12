BGP61E25 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,60760-0145-98 ",.02)
 ;;60760-0145-98
 ;;9002226.02101,"1218,60760-0251-60 ",.01)
 ;;60760-0251-60
 ;;9002226.02101,"1218,60760-0251-60 ",.02)
 ;;60760-0251-60
 ;;9002226.02101,"1218,60760-0251-98 ",.01)
 ;;60760-0251-98
 ;;9002226.02101,"1218,60760-0251-98 ",.02)
 ;;60760-0251-98
 ;;9002226.02101,"1218,60760-0252-30 ",.01)
 ;;60760-0252-30
 ;;9002226.02101,"1218,60760-0252-30 ",.02)
 ;;60760-0252-30
 ;;9002226.02101,"1218,60760-0252-60 ",.01)
 ;;60760-0252-60
 ;;9002226.02101,"1218,60760-0252-60 ",.02)
 ;;60760-0252-60
 ;;9002226.02101,"1218,60760-0252-90 ",.01)
 ;;60760-0252-90
 ;;9002226.02101,"1218,60760-0252-90 ",.02)
 ;;60760-0252-90
 ;;9002226.02101,"1218,60760-0292-60 ",.01)
 ;;60760-0292-60
 ;;9002226.02101,"1218,60760-0292-60 ",.02)
 ;;60760-0292-60
 ;;9002226.02101,"1218,60760-0976-30 ",.01)
 ;;60760-0976-30
 ;;9002226.02101,"1218,60760-0976-30 ",.02)
 ;;60760-0976-30
 ;;9002226.02101,"1218,60760-0976-90 ",.01)
 ;;60760-0976-90
 ;;9002226.02101,"1218,60760-0976-90 ",.02)
 ;;60760-0976-90
 ;;9002226.02101,"1218,60760-0977-30 ",.01)
 ;;60760-0977-30
 ;;9002226.02101,"1218,60760-0977-30 ",.02)
 ;;60760-0977-30
 ;;9002226.02101,"1218,60760-0977-90 ",.01)
 ;;60760-0977-90
 ;;9002226.02101,"1218,60760-0977-90 ",.02)
 ;;60760-0977-90
 ;;9002226.02101,"1218,60760-0978-30 ",.01)
 ;;60760-0978-30
 ;;9002226.02101,"1218,60760-0978-30 ",.02)
 ;;60760-0978-30
 ;;9002226.02101,"1218,60760-0978-90 ",.01)
 ;;60760-0978-90
 ;;9002226.02101,"1218,60760-0978-90 ",.02)
 ;;60760-0978-90
 ;;9002226.02101,"1218,60793-0283-01 ",.01)
 ;;60793-0283-01
 ;;9002226.02101,"1218,60793-0283-01 ",.02)
 ;;60793-0283-01
 ;;9002226.02101,"1218,60793-0284-01 ",.01)
 ;;60793-0284-01
 ;;9002226.02101,"1218,60793-0284-01 ",.02)
 ;;60793-0284-01
 ;;9002226.02101,"1218,60793-0800-01 ",.01)
 ;;60793-0800-01
 ;;9002226.02101,"1218,60793-0800-01 ",.02)
 ;;60793-0800-01
 ;;9002226.02101,"1218,60793-0801-01 ",.01)
 ;;60793-0801-01
 ;;9002226.02101,"1218,60793-0801-01 ",.02)
 ;;60793-0801-01
 ;;9002226.02101,"1218,60793-0802-01 ",.01)
 ;;60793-0802-01
 ;;9002226.02101,"1218,60793-0802-01 ",.02)
 ;;60793-0802-01
 ;;9002226.02101,"1218,61919-0052-60 ",.01)
 ;;61919-0052-60
 ;;9002226.02101,"1218,61919-0052-60 ",.02)
 ;;61919-0052-60
 ;;9002226.02101,"1218,61919-0256-30 ",.01)
 ;;61919-0256-30
 ;;9002226.02101,"1218,61919-0256-30 ",.02)
 ;;61919-0256-30
 ;;9002226.02101,"1218,61919-0257-90 ",.01)
 ;;61919-0257-90
 ;;9002226.02101,"1218,61919-0257-90 ",.02)
 ;;61919-0257-90
 ;;9002226.02101,"1218,61919-0317-30 ",.01)
 ;;61919-0317-30
 ;;9002226.02101,"1218,61919-0317-30 ",.02)
 ;;61919-0317-30
 ;;9002226.02101,"1218,61919-0317-90 ",.01)
 ;;61919-0317-90
 ;;9002226.02101,"1218,61919-0317-90 ",.02)
 ;;61919-0317-90
 ;;9002226.02101,"1218,61919-0428-90 ",.01)
 ;;61919-0428-90
 ;;9002226.02101,"1218,61919-0428-90 ",.02)
 ;;61919-0428-90
 ;;9002226.02101,"1218,61919-0533-90 ",.01)
 ;;61919-0533-90
 ;;9002226.02101,"1218,61919-0533-90 ",.02)
 ;;61919-0533-90
 ;;9002226.02101,"1218,61919-0808-30 ",.01)
 ;;61919-0808-30
 ;;9002226.02101,"1218,61919-0808-30 ",.02)
 ;;61919-0808-30
 ;;9002226.02101,"1218,62037-0830-01 ",.01)
 ;;62037-0830-01
 ;;9002226.02101,"1218,62037-0830-01 ",.02)
 ;;62037-0830-01
 ;;9002226.02101,"1218,62037-0830-10 ",.01)
 ;;62037-0830-10
 ;;9002226.02101,"1218,62037-0830-10 ",.02)
 ;;62037-0830-10
 ;;9002226.02101,"1218,62037-0831-01 ",.01)
 ;;62037-0831-01
 ;;9002226.02101,"1218,62037-0831-01 ",.02)
 ;;62037-0831-01
 ;;9002226.02101,"1218,62037-0831-10 ",.01)
 ;;62037-0831-10
 ;;9002226.02101,"1218,62037-0831-10 ",.02)
 ;;62037-0831-10
 ;;9002226.02101,"1218,62037-0832-01 ",.01)
 ;;62037-0832-01
 ;;9002226.02101,"1218,62037-0832-01 ",.02)
 ;;62037-0832-01
 ;;9002226.02101,"1218,62037-0832-10 ",.01)
 ;;62037-0832-10
 ;;9002226.02101,"1218,62037-0832-10 ",.02)
 ;;62037-0832-10
 ;;9002226.02101,"1218,62037-0833-01 ",.01)
 ;;62037-0833-01
 ;;9002226.02101,"1218,62037-0833-01 ",.02)
 ;;62037-0833-01
 ;;9002226.02101,"1218,62037-0833-10 ",.01)
 ;;62037-0833-10
 ;;9002226.02101,"1218,62037-0833-10 ",.02)
 ;;62037-0833-10
 ;;9002226.02101,"1218,62584-0265-01 ",.01)
 ;;62584-0265-01
 ;;9002226.02101,"1218,62584-0265-01 ",.02)
 ;;62584-0265-01
 ;;9002226.02101,"1218,62584-0265-11 ",.01)
 ;;62584-0265-11
 ;;9002226.02101,"1218,62584-0265-11 ",.02)
 ;;62584-0265-11
 ;;9002226.02101,"1218,62584-0266-01 ",.01)
 ;;62584-0266-01
 ;;9002226.02101,"1218,62584-0266-01 ",.02)
 ;;62584-0266-01
 ;;9002226.02101,"1218,62584-0266-11 ",.01)
 ;;62584-0266-11
 ;;9002226.02101,"1218,62584-0266-11 ",.02)
 ;;62584-0266-11
 ;;9002226.02101,"1218,62584-0267-01 ",.01)
 ;;62584-0267-01
 ;;9002226.02101,"1218,62584-0267-01 ",.02)
 ;;62584-0267-01
 ;;9002226.02101,"1218,62584-0267-11 ",.01)
 ;;62584-0267-11
 ;;9002226.02101,"1218,62584-0267-11 ",.02)
 ;;62584-0267-11
 ;;9002226.02101,"1218,62584-0467-01 ",.01)
 ;;62584-0467-01
 ;;9002226.02101,"1218,62584-0467-01 ",.02)
 ;;62584-0467-01
 ;;9002226.02101,"1218,62584-0467-11 ",.01)
 ;;62584-0467-11
 ;;9002226.02101,"1218,62584-0467-11 ",.02)
 ;;62584-0467-11
 ;;9002226.02101,"1218,62584-0715-01 ",.01)
 ;;62584-0715-01
 ;;9002226.02101,"1218,62584-0715-01 ",.02)
 ;;62584-0715-01
 ;;9002226.02101,"1218,62584-0715-11 ",.01)
 ;;62584-0715-11
 ;;9002226.02101,"1218,62584-0715-11 ",.02)
 ;;62584-0715-11
 ;;9002226.02101,"1218,62756-0368-88 ",.01)
 ;;62756-0368-88
 ;;9002226.02101,"1218,62756-0368-88 ",.02)
 ;;62756-0368-88
 ;;9002226.02101,"1218,62756-0369-88 ",.01)
 ;;62756-0369-88
 ;;9002226.02101,"1218,62756-0369-88 ",.02)
 ;;62756-0369-88
 ;;9002226.02101,"1218,62756-0370-88 ",.01)
 ;;62756-0370-88
 ;;9002226.02101,"1218,62756-0370-88 ",.02)
 ;;62756-0370-88
 ;;9002226.02101,"1218,63304-0579-01 ",.01)
 ;;63304-0579-01
 ;;9002226.02101,"1218,63304-0579-01 ",.02)
 ;;63304-0579-01
 ;;9002226.02101,"1218,63304-0579-10 ",.01)
 ;;63304-0579-10
 ;;9002226.02101,"1218,63304-0579-10 ",.02)
 ;;63304-0579-10
 ;;9002226.02101,"1218,63304-0580-01 ",.01)
 ;;63304-0580-01
 ;;9002226.02101,"1218,63304-0580-01 ",.02)
 ;;63304-0580-01
 ;;9002226.02101,"1218,63304-0580-10 ",.01)
 ;;63304-0580-10
 ;;9002226.02101,"1218,63304-0580-10 ",.02)
 ;;63304-0580-10
 ;;9002226.02101,"1218,63304-0581-01 ",.01)
 ;;63304-0581-01
 ;;9002226.02101,"1218,63304-0581-01 ",.02)
 ;;63304-0581-01
 ;;9002226.02101,"1218,63304-0581-10 ",.01)
 ;;63304-0581-10
 ;;9002226.02101,"1218,63304-0581-10 ",.02)
 ;;63304-0581-10
 ;;9002226.02101,"1218,63304-0621-01 ",.01)
 ;;63304-0621-01
 ;;9002226.02101,"1218,63304-0621-01 ",.02)
 ;;63304-0621-01
 ;;9002226.02101,"1218,63304-0621-10 ",.01)
 ;;63304-0621-10
 ;;9002226.02101,"1218,63304-0621-10 ",.02)
 ;;63304-0621-10
 ;;9002226.02101,"1218,63304-0622-01 ",.01)
 ;;63304-0622-01
 ;;9002226.02101,"1218,63304-0622-01 ",.02)
 ;;63304-0622-01
 ;;9002226.02101,"1218,63304-0622-10 ",.01)
 ;;63304-0622-10
 ;;9002226.02101,"1218,63304-0622-10 ",.02)
 ;;63304-0622-10
 ;;9002226.02101,"1218,63304-0623-01 ",.01)
 ;;63304-0623-01
 ;;9002226.02101,"1218,63304-0623-01 ",.02)
 ;;63304-0623-01
 ;;9002226.02101,"1218,63304-0623-10 ",.01)
 ;;63304-0623-10
 ;;9002226.02101,"1218,63304-0623-10 ",.02)
 ;;63304-0623-10
 ;;9002226.02101,"1218,63629-1423-01 ",.01)
 ;;63629-1423-01
 ;;9002226.02101,"1218,63629-1423-01 ",.02)
 ;;63629-1423-01
 ;;9002226.02101,"1218,63629-1423-02 ",.01)
 ;;63629-1423-02
 ;;9002226.02101,"1218,63629-1423-02 ",.02)
 ;;63629-1423-02
 ;;9002226.02101,"1218,63629-1462-01 ",.01)
 ;;63629-1462-01
 ;;9002226.02101,"1218,63629-1462-01 ",.02)
 ;;63629-1462-01
 ;;9002226.02101,"1218,63629-1462-02 ",.01)
 ;;63629-1462-02
 ;;9002226.02101,"1218,63629-1462-02 ",.02)
 ;;63629-1462-02
 ;;9002226.02101,"1218,63629-1462-03 ",.01)
 ;;63629-1462-03
 ;;9002226.02101,"1218,63629-1462-03 ",.02)
 ;;63629-1462-03
 ;;9002226.02101,"1218,63629-1463-01 ",.01)
 ;;63629-1463-01
 ;;9002226.02101,"1218,63629-1463-01 ",.02)
 ;;63629-1463-01
 ;;9002226.02101,"1218,63629-1463-02 ",.01)
 ;;63629-1463-02
 ;;9002226.02101,"1218,63629-1463-02 ",.02)
 ;;63629-1463-02
 ;;9002226.02101,"1218,63629-1463-03 ",.01)
 ;;63629-1463-03
 ;;9002226.02101,"1218,63629-1463-03 ",.02)
 ;;63629-1463-03
 ;;9002226.02101,"1218,63629-1463-04 ",.01)
 ;;63629-1463-04
 ;;9002226.02101,"1218,63629-1463-04 ",.02)
 ;;63629-1463-04
 ;;9002226.02101,"1218,63629-1463-05 ",.01)
 ;;63629-1463-05
 ;;9002226.02101,"1218,63629-1463-05 ",.02)
 ;;63629-1463-05
 ;;9002226.02101,"1218,63629-1674-01 ",.01)
 ;;63629-1674-01
 ;;9002226.02101,"1218,63629-1674-01 ",.02)
 ;;63629-1674-01
 ;;9002226.02101,"1218,63629-1740-01 ",.01)
 ;;63629-1740-01
 ;;9002226.02101,"1218,63629-1740-01 ",.02)
 ;;63629-1740-01
 ;;9002226.02101,"1218,63629-1740-02 ",.01)
 ;;63629-1740-02
 ;;9002226.02101,"1218,63629-1740-02 ",.02)
 ;;63629-1740-02
 ;;9002226.02101,"1218,63629-1740-03 ",.01)
 ;;63629-1740-03
 ;;9002226.02101,"1218,63629-1740-03 ",.02)
 ;;63629-1740-03
 ;;9002226.02101,"1218,63629-1785-01 ",.01)
 ;;63629-1785-01
 ;;9002226.02101,"1218,63629-1785-01 ",.02)
 ;;63629-1785-01
 ;;9002226.02101,"1218,63629-1785-02 ",.01)
 ;;63629-1785-02
 ;;9002226.02101,"1218,63629-1785-02 ",.02)
 ;;63629-1785-02
 ;;9002226.02101,"1218,63629-1785-03 ",.01)
 ;;63629-1785-03
 ;;9002226.02101,"1218,63629-1785-03 ",.02)
 ;;63629-1785-03
 ;;9002226.02101,"1218,63629-1842-01 ",.01)
 ;;63629-1842-01
 ;;9002226.02101,"1218,63629-1842-01 ",.02)
 ;;63629-1842-01
 ;;9002226.02101,"1218,63629-2570-01 ",.01)
 ;;63629-2570-01
 ;;9002226.02101,"1218,63629-2570-01 ",.02)
 ;;63629-2570-01
 ;;9002226.02101,"1218,63629-2570-02 ",.01)
 ;;63629-2570-02
 ;;9002226.02101,"1218,63629-2570-02 ",.02)
 ;;63629-2570-02
 ;;9002226.02101,"1218,63629-2570-03 ",.01)
 ;;63629-2570-03
 ;;9002226.02101,"1218,63629-2570-03 ",.02)
 ;;63629-2570-03
 ;;9002226.02101,"1218,63629-2570-04 ",.01)
 ;;63629-2570-04
 ;;9002226.02101,"1218,63629-2570-04 ",.02)
 ;;63629-2570-04
 ;;9002226.02101,"1218,63629-2626-01 ",.01)
 ;;63629-2626-01
 ;;9002226.02101,"1218,63629-2626-01 ",.02)
 ;;63629-2626-01
 ;;9002226.02101,"1218,63629-2626-02 ",.01)
 ;;63629-2626-02
 ;;9002226.02101,"1218,63629-2626-02 ",.02)
 ;;63629-2626-02
 ;;9002226.02101,"1218,63629-2626-03 ",.01)
 ;;63629-2626-03
 ;;9002226.02101,"1218,63629-2626-03 ",.02)
 ;;63629-2626-03
 ;;9002226.02101,"1218,63629-2626-04 ",.01)
 ;;63629-2626-04
 ;;9002226.02101,"1218,63629-2626-04 ",.02)
 ;;63629-2626-04
 ;;9002226.02101,"1218,63629-2909-01 ",.01)
 ;;63629-2909-01
 ;;9002226.02101,"1218,63629-2909-01 ",.02)
 ;;63629-2909-01
 ;;9002226.02101,"1218,63629-2909-02 ",.01)
 ;;63629-2909-02
 ;;9002226.02101,"1218,63629-2909-02 ",.02)
 ;;63629-2909-02
 ;;9002226.02101,"1218,63629-2909-03 ",.01)
 ;;63629-2909-03
 ;;9002226.02101,"1218,63629-2909-03 ",.02)
 ;;63629-2909-03
 ;;9002226.02101,"1218,63629-2909-04 ",.01)
 ;;63629-2909-04
 ;;9002226.02101,"1218,63629-2909-04 ",.02)
 ;;63629-2909-04
 ;;9002226.02101,"1218,63629-3587-01 ",.01)
 ;;63629-3587-01
 ;;9002226.02101,"1218,63629-3587-01 ",.02)
 ;;63629-3587-01
 ;;9002226.02101,"1218,63629-3587-02 ",.01)
 ;;63629-3587-02
 ;;9002226.02101,"1218,63629-3587-02 ",.02)
 ;;63629-3587-02
 ;;9002226.02101,"1218,63629-3636-01 ",.01)
 ;;63629-3636-01
 ;;9002226.02101,"1218,63629-3636-01 ",.02)
 ;;63629-3636-01
 ;;9002226.02101,"1218,63629-3636-02 ",.01)
 ;;63629-3636-02
 ;;9002226.02101,"1218,63629-3636-02 ",.02)
 ;;63629-3636-02
 ;;9002226.02101,"1218,63629-3668-01 ",.01)
 ;;63629-3668-01
 ;;9002226.02101,"1218,63629-3668-01 ",.02)
 ;;63629-3668-01
 ;;9002226.02101,"1218,63629-3668-02 ",.01)
 ;;63629-3668-02
 ;;9002226.02101,"1218,63629-3668-02 ",.02)
 ;;63629-3668-02
 ;;9002226.02101,"1218,63629-3668-03 ",.01)
 ;;63629-3668-03
 ;;9002226.02101,"1218,63629-3668-03 ",.02)
 ;;63629-3668-03
 ;;9002226.02101,"1218,63629-3669-01 ",.01)
 ;;63629-3669-01
 ;;9002226.02101,"1218,63629-3669-01 ",.02)
 ;;63629-3669-01
 ;;9002226.02101,"1218,63629-3669-02 ",.01)
 ;;63629-3669-02
 ;;9002226.02101,"1218,63629-3669-02 ",.02)
 ;;63629-3669-02
 ;;9002226.02101,"1218,63629-3669-03 ",.01)
 ;;63629-3669-03
 ;;9002226.02101,"1218,63629-3669-03 ",.02)
 ;;63629-3669-03
 ;;9002226.02101,"1218,63629-3738-01 ",.01)
 ;;63629-3738-01
 ;;9002226.02101,"1218,63629-3738-01 ",.02)
 ;;63629-3738-01
 ;;9002226.02101,"1218,63629-3871-01 ",.01)
 ;;63629-3871-01
 ;;9002226.02101,"1218,63629-3871-01 ",.02)
 ;;63629-3871-01
 ;;9002226.02101,"1218,63629-4060-01 ",.01)
 ;;63629-4060-01
 ;;9002226.02101,"1218,63629-4060-01 ",.02)
 ;;63629-4060-01
 ;;9002226.02101,"1218,63629-4060-02 ",.01)
 ;;63629-4060-02
