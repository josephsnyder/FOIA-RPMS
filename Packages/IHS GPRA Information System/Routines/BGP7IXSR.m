BGP7IXSR ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 16, 2006 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"635,60505-0206-03 ",.02)
 ;;60505-0206-03
 ;;9002226.02101,"635,60505-0207-03 ",.01)
 ;;60505-0207-03
 ;;9002226.02101,"635,60505-0207-03 ",.02)
 ;;60505-0207-03
 ;;9002226.02101,"635,60505-2510-02 ",.01)
 ;;60505-2510-02
 ;;9002226.02101,"635,60505-2510-02 ",.02)
 ;;60505-2510-02
 ;;9002226.02101,"635,60505-2511-02 ",.01)
 ;;60505-2511-02
 ;;9002226.02101,"635,60505-2511-02 ",.02)
 ;;60505-2511-02
 ;;9002226.02101,"635,60505-2512-02 ",.01)
 ;;60505-2512-02
 ;;9002226.02101,"635,60505-2512-02 ",.02)
 ;;60505-2512-02
 ;;9002226.02101,"635,60763-1011-00 ",.01)
 ;;60763-1011-00
 ;;9002226.02101,"635,60763-1011-00 ",.02)
 ;;60763-1011-00
 ;;9002226.02101,"635,60763-1011-02 ",.01)
 ;;60763-1011-02
 ;;9002226.02101,"635,60763-1011-02 ",.02)
 ;;60763-1011-02
 ;;9002226.02101,"635,60763-1012-00 ",.01)
 ;;60763-1012-00
 ;;9002226.02101,"635,60763-1012-00 ",.02)
 ;;60763-1012-00
 ;;9002226.02101,"635,60763-1012-02 ",.01)
 ;;60763-1012-02
 ;;9002226.02101,"635,60763-1012-02 ",.02)
 ;;60763-1012-02
 ;;9002226.02101,"635,60763-1013-00 ",.01)
 ;;60763-1013-00
 ;;9002226.02101,"635,60763-1013-00 ",.02)
 ;;60763-1013-00
 ;;9002226.02101,"635,60951-0721-90 ",.01)
 ;;60951-0721-90
 ;;9002226.02101,"635,60951-0721-90 ",.02)
 ;;60951-0721-90
 ;;9002226.02101,"635,60951-0724-90 ",.01)
 ;;60951-0724-90
 ;;9002226.02101,"635,60951-0724-90 ",.02)
 ;;60951-0724-90
 ;;9002226.02101,"635,60951-0731-70 ",.01)
 ;;60951-0731-70
 ;;9002226.02101,"635,60951-0731-70 ",.02)
 ;;60951-0731-70
 ;;9002226.02101,"635,60951-0733-70 ",.01)
 ;;60951-0733-70
 ;;9002226.02101,"635,60951-0733-70 ",.02)
 ;;60951-0733-70
 ;;9002226.02101,"635,60951-0739-70 ",.01)
 ;;60951-0739-70
 ;;9002226.02101,"635,60951-0739-70 ",.02)
 ;;60951-0739-70
 ;;9002226.02101,"635,60951-0741-70 ",.01)
 ;;60951-0741-70
 ;;9002226.02101,"635,60951-0741-70 ",.02)
 ;;60951-0741-70
 ;;9002226.02101,"635,61570-0110-01 ",.01)
 ;;61570-0110-01
 ;;9002226.02101,"635,61570-0110-01 ",.02)
 ;;61570-0110-01
 ;;9002226.02101,"635,61570-0110-56 ",.01)
 ;;61570-0110-56
 ;;9002226.02101,"635,61570-0110-56 ",.02)
 ;;61570-0110-56
 ;;9002226.02101,"635,61570-0111-01 ",.01)
 ;;61570-0111-01
 ;;9002226.02101,"635,61570-0111-01 ",.02)
 ;;61570-0111-01
 ;;9002226.02101,"635,61570-0111-05 ",.01)
 ;;61570-0111-05
 ;;9002226.02101,"635,61570-0111-05 ",.02)
 ;;61570-0111-05
 ;;9002226.02101,"635,61570-0111-56 ",.01)
 ;;61570-0111-56
 ;;9002226.02101,"635,61570-0111-56 ",.02)
 ;;61570-0111-56
 ;;9002226.02101,"635,61570-0112-01 ",.01)
 ;;61570-0112-01
 ;;9002226.02101,"635,61570-0112-01 ",.02)
 ;;61570-0112-01
 ;;9002226.02101,"635,61570-0112-05 ",.01)
 ;;61570-0112-05
 ;;9002226.02101,"635,61570-0112-05 ",.02)
 ;;61570-0112-05
 ;;9002226.02101,"635,61570-0112-56 ",.01)
 ;;61570-0112-56
 ;;9002226.02101,"635,61570-0112-56 ",.02)
 ;;61570-0112-56
 ;;9002226.02101,"635,61570-0120-01 ",.01)
 ;;61570-0120-01
 ;;9002226.02101,"635,61570-0120-01 ",.02)
 ;;61570-0120-01
 ;;9002226.02101,"635,61570-0120-05 ",.01)
 ;;61570-0120-05
 ;;9002226.02101,"635,61570-0120-05 ",.02)
 ;;61570-0120-05
 ;;9002226.02101,"635,62033-0101-20 ",.01)
 ;;62033-0101-20
 ;;9002226.02101,"635,62033-0101-20 ",.02)
 ;;62033-0101-20
 ;;9002226.02101,"635,62037-0516-01 ",.01)
 ;;62037-0516-01
 ;;9002226.02101,"635,62037-0516-01 ",.02)
 ;;62037-0516-01
 ;;9002226.02101,"635,62037-0517-01 ",.01)
 ;;62037-0517-01
 ;;9002226.02101,"635,62037-0517-01 ",.02)
 ;;62037-0517-01
 ;;9002226.02101,"635,62037-0518-01 ",.01)
 ;;62037-0518-01
 ;;9002226.02101,"635,62037-0518-01 ",.02)
 ;;62037-0518-01
 ;;9002226.02101,"635,62037-0519-01 ",.01)
 ;;62037-0519-01
 ;;9002226.02101,"635,62037-0519-01 ",.02)
 ;;62037-0519-01
 ;;9002226.02101,"635,62037-0756-01 ",.01)
 ;;62037-0756-01
 ;;9002226.02101,"635,62037-0756-01 ",.02)
 ;;62037-0756-01
 ;;9002226.02101,"635,62037-0757-01 ",.01)
 ;;62037-0757-01
 ;;9002226.02101,"635,62037-0757-01 ",.02)
 ;;62037-0757-01
 ;;9002226.02101,"635,62037-0758-01 ",.01)
 ;;62037-0758-01
 ;;9002226.02101,"635,62037-0758-01 ",.02)
 ;;62037-0758-01
 ;;9002226.02101,"635,62037-0759-01 ",.01)
 ;;62037-0759-01
 ;;9002226.02101,"635,62037-0759-01 ",.02)
 ;;62037-0759-01
 ;;9002226.02101,"635,62037-0936-90 ",.01)
 ;;62037-0936-90
 ;;9002226.02101,"635,62037-0936-90 ",.02)
 ;;62037-0936-90
 ;;9002226.02101,"635,62037-0937-90 ",.01)
 ;;62037-0937-90
 ;;9002226.02101,"635,62037-0937-90 ",.02)
 ;;62037-0937-90
 ;;9002226.02101,"635,62175-0171-37 ",.01)
 ;;62175-0171-37
 ;;9002226.02101,"635,62175-0171-37 ",.02)
 ;;62175-0171-37
 ;;9002226.02101,"635,62175-0177-37 ",.01)
 ;;62175-0177-37
 ;;9002226.02101,"635,62175-0177-37 ",.02)
 ;;62175-0177-37
 ;;9002226.02101,"635,62584-0164-06 ",.01)
 ;;62584-0164-06
 ;;9002226.02101,"635,62584-0164-06 ",.02)
 ;;62584-0164-06
 ;;9002226.02101,"635,62584-0166-06 ",.01)
 ;;62584-0166-06
 ;;9002226.02101,"635,62584-0166-06 ",.02)
 ;;62584-0166-06
 ;;9002226.02101,"635,62584-0636-01 ",.01)
 ;;62584-0636-01
 ;;9002226.02101,"635,62584-0636-01 ",.02)
 ;;62584-0636-01
 ;;9002226.02101,"635,62584-0636-33 ",.01)
 ;;62584-0636-33
 ;;9002226.02101,"635,62584-0636-33 ",.02)
 ;;62584-0636-33
 ;;9002226.02101,"635,62584-0637-01 ",.01)
 ;;62584-0637-01
 ;;9002226.02101,"635,62584-0637-01 ",.02)
 ;;62584-0637-01
 ;;9002226.02101,"635,62584-0637-33 ",.01)
 ;;62584-0637-33
 ;;9002226.02101,"635,62584-0637-33 ",.02)
 ;;62584-0637-33
 ;;9002226.02101,"635,63304-0403-01 ",.01)
 ;;63304-0403-01
 ;;9002226.02101,"635,63304-0403-01 ",.02)
 ;;63304-0403-01
 ;;9002226.02101,"635,63304-0404-01 ",.01)
 ;;63304-0404-01
 ;;9002226.02101,"635,63304-0404-01 ",.02)
 ;;63304-0404-01
 ;;9002226.02101,"635,63304-0522-01 ",.01)
 ;;63304-0522-01
 ;;9002226.02101,"635,63304-0522-01 ",.02)
 ;;63304-0522-01
 ;;9002226.02101,"635,63304-0522-10 ",.01)
 ;;63304-0522-10
 ;;9002226.02101,"635,63304-0522-10 ",.02)
 ;;63304-0522-10
 ;;9002226.02101,"635,63304-0523-01 ",.01)
 ;;63304-0523-01
 ;;9002226.02101,"635,63304-0523-01 ",.02)
 ;;63304-0523-01
 ;;9002226.02101,"635,63304-0523-10 ",.01)
 ;;63304-0523-10
 ;;9002226.02101,"635,63304-0523-10 ",.02)
 ;;63304-0523-10
 ;;9002226.02101,"635,63304-0524-01 ",.01)
 ;;63304-0524-01
 ;;9002226.02101,"635,63304-0524-01 ",.02)
 ;;63304-0524-01
 ;;9002226.02101,"635,63304-0524-10 ",.01)
 ;;63304-0524-10
 ;;9002226.02101,"635,63304-0524-10 ",.02)
 ;;63304-0524-10
 ;;9002226.02101,"635,63304-0525-01 ",.01)
 ;;63304-0525-01
 ;;9002226.02101,"635,63304-0525-01 ",.02)
 ;;63304-0525-01
 ;;9002226.02101,"635,63304-0525-10 ",.01)
 ;;63304-0525-10
 ;;9002226.02101,"635,63304-0525-10 ",.02)
 ;;63304-0525-10
 ;;9002226.02101,"635,63304-0531-01 ",.01)
 ;;63304-0531-01
 ;;9002226.02101,"635,63304-0531-01 ",.02)
 ;;63304-0531-01
 ;;9002226.02101,"635,63304-0532-01 ",.01)
 ;;63304-0532-01
 ;;9002226.02101,"635,63304-0532-01 ",.02)
 ;;63304-0532-01
 ;;9002226.02101,"635,63304-0532-10 ",.01)
 ;;63304-0532-10
 ;;9002226.02101,"635,63304-0532-10 ",.02)
 ;;63304-0532-10
 ;;9002226.02101,"635,63304-0533-01 ",.01)
 ;;63304-0533-01
 ;;9002226.02101,"635,63304-0533-01 ",.02)
 ;;63304-0533-01
 ;;9002226.02101,"635,63304-0533-10 ",.01)
 ;;63304-0533-10
 ;;9002226.02101,"635,63304-0533-10 ",.02)
 ;;63304-0533-10
 ;;9002226.02101,"635,63304-0534-01 ",.01)
 ;;63304-0534-01
 ;;9002226.02101,"635,63304-0534-01 ",.02)
 ;;63304-0534-01
 ;;9002226.02101,"635,63304-0534-10 ",.01)
 ;;63304-0534-10
 ;;9002226.02101,"635,63304-0534-10 ",.02)
 ;;63304-0534-10
 ;;9002226.02101,"635,63304-0535-01 ",.01)
 ;;63304-0535-01
 ;;9002226.02101,"635,63304-0535-01 ",.02)
 ;;63304-0535-01
 ;;9002226.02101,"635,63304-0535-10 ",.01)
 ;;63304-0535-10
 ;;9002226.02101,"635,63304-0535-10 ",.02)
 ;;63304-0535-10
 ;;9002226.02101,"635,63304-0736-00 ",.01)
 ;;63304-0736-00
 ;;9002226.02101,"635,63304-0736-00 ",.02)
 ;;63304-0736-00
 ;;9002226.02101,"635,63304-0736-05 ",.01)
 ;;63304-0736-05
 ;;9002226.02101,"635,63304-0736-05 ",.02)
 ;;63304-0736-05
 ;;9002226.02101,"635,63304-0736-90 ",.01)
 ;;63304-0736-90
 ;;9002226.02101,"635,63304-0736-90 ",.02)
 ;;63304-0736-90
 ;;9002226.02101,"635,63304-0737-05 ",.01)
 ;;63304-0737-05
 ;;9002226.02101,"635,63304-0737-05 ",.02)
 ;;63304-0737-05
 ;;9002226.02101,"635,63304-0737-90 ",.01)
 ;;63304-0737-90
 ;;9002226.02101,"635,63304-0737-90 ",.02)
 ;;63304-0737-90
 ;;9002226.02101,"635,63304-0738-05 ",.01)
 ;;63304-0738-05
 ;;9002226.02101,"635,63304-0738-05 ",.02)
 ;;63304-0738-05
 ;;9002226.02101,"635,63304-0738-90 ",.01)
 ;;63304-0738-90
 ;;9002226.02101,"635,63304-0738-90 ",.02)
 ;;63304-0738-90
 ;;9002226.02101,"635,63304-0739-05 ",.01)
 ;;63304-0739-05
 ;;9002226.02101,"635,63304-0739-05 ",.02)
 ;;63304-0739-05
 ;;9002226.02101,"635,63304-0739-90 ",.01)
 ;;63304-0739-90
 ;;9002226.02101,"635,63304-0739-90 ",.02)
 ;;63304-0739-90
 ;;9002226.02101,"635,63304-0775-10 ",.01)
 ;;63304-0775-10
 ;;9002226.02101,"635,63304-0775-10 ",.02)
 ;;63304-0775-10
 ;;9002226.02101,"635,63304-0775-90 ",.01)
 ;;63304-0775-90
 ;;9002226.02101,"635,63304-0775-90 ",.02)
 ;;63304-0775-90
 ;;9002226.02101,"635,63304-0776-10 ",.01)
 ;;63304-0776-10
 ;;9002226.02101,"635,63304-0776-10 ",.02)
 ;;63304-0776-10
 ;;9002226.02101,"635,63304-0776-90 ",.01)
 ;;63304-0776-90
 ;;9002226.02101,"635,63304-0776-90 ",.02)
 ;;63304-0776-90
 ;;9002226.02101,"635,63304-0777-10 ",.01)
 ;;63304-0777-10
 ;;9002226.02101,"635,63304-0777-10 ",.02)
 ;;63304-0777-10
 ;;9002226.02101,"635,63304-0777-90 ",.01)
 ;;63304-0777-90
 ;;9002226.02101,"635,63304-0777-90 ",.02)
 ;;63304-0777-90
 ;;9002226.02101,"635,63304-0834-01 ",.01)
 ;;63304-0834-01
 ;;9002226.02101,"635,63304-0834-01 ",.02)
 ;;63304-0834-01
 ;;9002226.02101,"635,63304-0834-10 ",.01)
 ;;63304-0834-10
 ;;9002226.02101,"635,63304-0834-10 ",.02)
 ;;63304-0834-10
 ;;9002226.02101,"635,63304-0835-01 ",.01)
 ;;63304-0835-01
 ;;9002226.02101,"635,63304-0835-01 ",.02)
 ;;63304-0835-01
 ;;9002226.02101,"635,63304-0835-10 ",.01)
 ;;63304-0835-10
 ;;9002226.02101,"635,63304-0835-10 ",.02)
 ;;63304-0835-10
 ;;9002226.02101,"635,63304-0836-01 ",.01)
 ;;63304-0836-01
 ;;9002226.02101,"635,63304-0836-01 ",.02)
 ;;63304-0836-01
 ;;9002226.02101,"635,63304-0836-10 ",.01)
 ;;63304-0836-10
 ;;9002226.02101,"635,63304-0836-10 ",.02)
 ;;63304-0836-10
 ;;9002226.02101,"635,63304-0837-01 ",.01)
 ;;63304-0837-01
 ;;9002226.02101,"635,63304-0837-01 ",.02)
 ;;63304-0837-01
 ;;9002226.02101,"635,63304-0837-10 ",.01)
 ;;63304-0837-10
 ;;9002226.02101,"635,63304-0837-10 ",.02)
 ;;63304-0837-10
 ;;9002226.02101,"635,63739-0042-01 ",.01)
 ;;63739-0042-01
 ;;9002226.02101,"635,63739-0042-01 ",.02)
 ;;63739-0042-01
 ;;9002226.02101,"635,63739-0042-02 ",.01)
 ;;63739-0042-02
 ;;9002226.02101,"635,63739-0042-02 ",.02)
 ;;63739-0042-02
 ;;9002226.02101,"635,63739-0042-03 ",.01)
 ;;63739-0042-03
 ;;9002226.02101,"635,63739-0042-03 ",.02)
 ;;63739-0042-03
 ;;9002226.02101,"635,63739-0042-15 ",.01)
 ;;63739-0042-15
 ;;9002226.02101,"635,63739-0042-15 ",.02)
 ;;63739-0042-15
 ;;9002226.02101,"635,63739-0043-01 ",.01)
 ;;63739-0043-01
 ;;9002226.02101,"635,63739-0043-01 ",.02)
 ;;63739-0043-01
 ;;9002226.02101,"635,63739-0043-02 ",.01)
 ;;63739-0043-02
 ;;9002226.02101,"635,63739-0043-02 ",.02)
 ;;63739-0043-02
 ;;9002226.02101,"635,63739-0043-03 ",.01)
 ;;63739-0043-03
 ;;9002226.02101,"635,63739-0043-03 ",.02)
 ;;63739-0043-03
 ;;9002226.02101,"635,63739-0043-15 ",.01)
 ;;63739-0043-15
 ;;9002226.02101,"635,63739-0043-15 ",.02)
 ;;63739-0043-15
 ;;9002226.02101,"635,63739-0302-15 ",.01)
 ;;63739-0302-15
 ;;9002226.02101,"635,63739-0302-15 ",.02)
 ;;63739-0302-15
 ;;9002226.02101,"635,63739-0322-15 ",.01)
 ;;63739-0322-15
 ;;9002226.02101,"635,63739-0322-15 ",.02)
 ;;63739-0322-15
 ;;9002226.02101,"635,63739-0323-15 ",.01)
 ;;63739-0323-15
 ;;9002226.02101,"635,63739-0323-15 ",.02)
 ;;63739-0323-15
 ;;9002226.02101,"635,63739-0348-15 ",.01)
 ;;63739-0348-15
 ;;9002226.02101,"635,63739-0348-15 ",.02)
 ;;63739-0348-15
 ;;9002226.02101,"635,63739-0349-15 ",.01)
 ;;63739-0349-15
 ;;9002226.02101,"635,63739-0349-15 ",.02)
 ;;63739-0349-15
 ;;9002226.02101,"635,63739-0350-15 ",.01)
 ;;63739-0350-15
 ;;9002226.02101,"635,63739-0350-15 ",.02)
 ;;63739-0350-15
 ;;9002226.02101,"635,63874-0058-10 ",.01)
 ;;63874-0058-10
 ;;9002226.02101,"635,63874-0058-10 ",.02)
 ;;63874-0058-10
 ;;9002226.02101,"635,63874-0058-15 ",.01)
 ;;63874-0058-15
 ;;9002226.02101,"635,63874-0058-15 ",.02)
 ;;63874-0058-15
 ;;9002226.02101,"635,63874-0058-30 ",.01)
 ;;63874-0058-30
 ;;9002226.02101,"635,63874-0058-30 ",.02)
 ;;63874-0058-30
 ;;9002226.02101,"635,63874-0058-90 ",.01)
 ;;63874-0058-90
 ;;9002226.02101,"635,63874-0058-90 ",.02)
 ;;63874-0058-90
 ;;9002226.02101,"635,63874-0347-01 ",.01)
 ;;63874-0347-01
 ;;9002226.02101,"635,63874-0347-01 ",.02)
 ;;63874-0347-01
 ;;9002226.02101,"635,63874-0347-02 ",.01)
 ;;63874-0347-02
 ;;9002226.02101,"635,63874-0347-02 ",.02)
 ;;63874-0347-02
 ;;9002226.02101,"635,63874-0347-05 ",.01)
 ;;63874-0347-05
 ;;9002226.02101,"635,63874-0347-05 ",.02)
 ;;63874-0347-05
 ;;9002226.02101,"635,63874-0347-20 ",.01)
 ;;63874-0347-20
 ;;9002226.02101,"635,63874-0347-20 ",.02)
 ;;63874-0347-20
 ;;9002226.02101,"635,63874-0347-30 ",.01)
 ;;63874-0347-30
 ;;9002226.02101,"635,63874-0347-30 ",.02)
 ;;63874-0347-30
 ;;9002226.02101,"635,63874-0347-40 ",.01)
 ;;63874-0347-40
 ;;9002226.02101,"635,63874-0347-40 ",.02)
 ;;63874-0347-40
 ;;9002226.02101,"635,63874-0347-42 ",.01)
 ;;63874-0347-42
