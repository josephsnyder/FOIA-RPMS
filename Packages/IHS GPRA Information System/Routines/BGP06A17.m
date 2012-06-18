BGP06A17 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"974,00002-5058-68 ",.01)
 ;;00002-5058-68
 ;;9002226.02101,"974,00002-5058-68 ",.02)
 ;;00002-5058-68
 ;;9002226.02101,"974,00002-5130-48 ",.01)
 ;;00002-5130-48
 ;;9002226.02101,"974,00002-5130-48 ",.02)
 ;;00002-5130-48
 ;;9002226.02101,"974,00002-5132-48 ",.01)
 ;;00002-5132-48
 ;;9002226.02101,"974,00002-5132-48 ",.02)
 ;;00002-5132-48
 ;;9002226.02101,"974,00002-5135-48 ",.01)
 ;;00002-5135-48
 ;;9002226.02101,"974,00002-5135-48 ",.02)
 ;;00002-5135-48
 ;;9002226.02101,"974,00002-5135-87 ",.01)
 ;;00002-5135-87
 ;;9002226.02101,"974,00002-5135-87 ",.02)
 ;;00002-5135-87
 ;;9002226.02101,"974,00002-5136-18 ",.01)
 ;;00002-5136-18
 ;;9002226.02101,"974,00002-5136-18 ",.02)
 ;;00002-5136-18
 ;;9002226.02101,"974,00002-5136-48 ",.01)
 ;;00002-5136-48
 ;;9002226.02101,"974,00002-5136-48 ",.02)
 ;;00002-5136-48
 ;;9002226.02101,"974,00002-5136-87 ",.01)
 ;;00002-5136-87
 ;;9002226.02101,"974,00002-5136-87 ",.02)
 ;;00002-5136-87
 ;;9002226.02101,"974,00002-5357-25 ",.01)
 ;;00002-5357-25
 ;;9002226.02101,"974,00002-5357-25 ",.02)
 ;;00002-5357-25
 ;;9002226.02101,"974,00002-5358-10 ",.01)
 ;;00002-5358-10
 ;;9002226.02101,"974,00002-5358-10 ",.02)
 ;;00002-5358-10
 ;;9002226.02101,"974,00002-5359-10 ",.01)
 ;;00002-5359-10
 ;;9002226.02101,"974,00002-5359-10 ",.02)
 ;;00002-5359-10
 ;;9002226.02101,"974,00002-5360-10 ",.01)
 ;;00002-5360-10
 ;;9002226.02101,"974,00002-5360-10 ",.02)
 ;;00002-5360-10
 ;;9002226.02101,"974,00002-5361-16 ",.01)
 ;;00002-5361-16
 ;;9002226.02101,"974,00002-5361-16 ",.02)
 ;;00002-5361-16
 ;;9002226.02101,"974,00002-5362-25 ",.01)
 ;;00002-5362-25
 ;;9002226.02101,"974,00002-5362-25 ",.02)
 ;;00002-5362-25
 ;;9002226.02101,"974,00002-5363-10 ",.01)
 ;;00002-5363-10
 ;;9002226.02101,"974,00002-5363-10 ",.02)
 ;;00002-5363-10
 ;;9002226.02101,"974,00002-7014-01 ",.01)
 ;;00002-7014-01
 ;;9002226.02101,"974,00002-7014-01 ",.02)
 ;;00002-7014-01
 ;;9002226.02101,"974,00002-7014-16 ",.01)
 ;;00002-7014-16
 ;;9002226.02101,"974,00002-7014-16 ",.02)
 ;;00002-7014-16
 ;;9002226.02101,"974,00002-7266-01 ",.01)
 ;;00002-7266-01
 ;;9002226.02101,"974,00002-7266-01 ",.02)
 ;;00002-7266-01
 ;;9002226.02101,"974,00002-7266-25 ",.01)
 ;;00002-7266-25
 ;;9002226.02101,"974,00002-7266-25 ",.02)
 ;;00002-7266-25
 ;;9002226.02101,"974,00002-7271-01 ",.01)
 ;;00002-7271-01
 ;;9002226.02101,"974,00002-7271-01 ",.02)
 ;;00002-7271-01
 ;;9002226.02101,"974,00002-7271-25 ",.01)
 ;;00002-7271-25
 ;;9002226.02101,"974,00002-7271-25 ",.02)
 ;;00002-7271-25
 ;;9002226.02101,"974,00002-7272-01 ",.01)
 ;;00002-7272-01
 ;;9002226.02101,"974,00002-7272-01 ",.02)
 ;;00002-7272-01
 ;;9002226.02101,"974,00002-7272-10 ",.01)
 ;;00002-7272-10
 ;;9002226.02101,"974,00002-7272-10 ",.02)
 ;;00002-7272-10
 ;;9002226.02101,"974,00002-7273-01 ",.01)
 ;;00002-7273-01
 ;;9002226.02101,"974,00002-7273-01 ",.02)
 ;;00002-7273-01
 ;;9002226.02101,"974,00002-7273-10 ",.01)
 ;;00002-7273-10
 ;;9002226.02101,"974,00002-7273-10 ",.02)
 ;;00002-7273-10
 ;;9002226.02101,"974,00002-7274-01 ",.01)
 ;;00002-7274-01
 ;;9002226.02101,"974,00002-7274-01 ",.02)
 ;;00002-7274-01
 ;;9002226.02101,"974,00002-7274-10 ",.01)
 ;;00002-7274-10
 ;;9002226.02101,"974,00002-7274-10 ",.02)
 ;;00002-7274-10
 ;;9002226.02101,"974,00002-7275-01 ",.01)
 ;;00002-7275-01
 ;;9002226.02101,"974,00002-7275-01 ",.02)
 ;;00002-7275-01
 ;;9002226.02101,"974,00002-7275-16 ",.01)
 ;;00002-7275-16
 ;;9002226.02101,"974,00002-7275-16 ",.02)
 ;;00002-7275-16
 ;;9002226.02101,"974,00002-7278-01 ",.01)
 ;;00002-7278-01
 ;;9002226.02101,"974,00002-7278-01 ",.02)
 ;;00002-7278-01
 ;;9002226.02101,"974,00002-7278-25 ",.01)
 ;;00002-7278-25
 ;;9002226.02101,"974,00002-7278-25 ",.02)
 ;;00002-7278-25
 ;;9002226.02101,"974,00002-7279-01 ",.01)
 ;;00002-7279-01
 ;;9002226.02101,"974,00002-7279-01 ",.02)
 ;;00002-7279-01
 ;;9002226.02101,"974,00002-7279-10 ",.01)
 ;;00002-7279-10
 ;;9002226.02101,"974,00002-7279-10 ",.02)
 ;;00002-7279-10
 ;;9002226.02101,"974,00002-9011-99 ",.01)
 ;;00002-9011-99
 ;;9002226.02101,"974,00002-9011-99 ",.02)
 ;;00002-9011-99
 ;;9002226.02101,"974,00003-0101-20 ",.01)
 ;;00003-0101-20
 ;;9002226.02101,"974,00003-0101-20 ",.02)
 ;;00003-0101-20
 ;;9002226.02101,"974,00003-0101-30 ",.01)
 ;;00003-0101-30
 ;;9002226.02101,"974,00003-0101-30 ",.02)
 ;;00003-0101-30
 ;;9002226.02101,"974,00003-0101-50 ",.01)
 ;;00003-0101-50
 ;;9002226.02101,"974,00003-0101-50 ",.02)
 ;;00003-0101-50
 ;;9002226.02101,"974,00003-0101-51 ",.01)
 ;;00003-0101-51
 ;;9002226.02101,"974,00003-0101-51 ",.02)
 ;;00003-0101-51
 ;;9002226.02101,"974,00003-0101-60 ",.01)
 ;;00003-0101-60
 ;;9002226.02101,"974,00003-0101-60 ",.02)
 ;;00003-0101-60
 ;;9002226.02101,"974,00003-0109-20 ",.01)
 ;;00003-0109-20
 ;;9002226.02101,"974,00003-0109-20 ",.02)
 ;;00003-0109-20
 ;;9002226.02101,"974,00003-0109-30 ",.01)
 ;;00003-0109-30
 ;;9002226.02101,"974,00003-0109-30 ",.02)
 ;;00003-0109-30
 ;;9002226.02101,"974,00003-0109-51 ",.01)
 ;;00003-0109-51
 ;;9002226.02101,"974,00003-0109-51 ",.02)
 ;;00003-0109-51
 ;;9002226.02101,"974,00003-0109-55 ",.01)
 ;;00003-0109-55
 ;;9002226.02101,"974,00003-0109-55 ",.02)
 ;;00003-0109-55
 ;;9002226.02101,"974,00003-0109-60 ",.01)
 ;;00003-0109-60
 ;;9002226.02101,"974,00003-0109-60 ",.02)
 ;;00003-0109-60
 ;;9002226.02101,"974,00003-0109-70 ",.01)
 ;;00003-0109-70
 ;;9002226.02101,"974,00003-0109-70 ",.02)
 ;;00003-0109-70
 ;;9002226.02101,"974,00003-0113-50 ",.01)
 ;;00003-0113-50
 ;;9002226.02101,"974,00003-0113-50 ",.02)
 ;;00003-0113-50
 ;;9002226.02101,"974,00003-0114-50 ",.01)
 ;;00003-0114-50
 ;;9002226.02101,"974,00003-0114-50 ",.02)
 ;;00003-0114-50
 ;;9002226.02101,"974,00003-0115-50 ",.01)
 ;;00003-0115-50
 ;;9002226.02101,"974,00003-0115-50 ",.02)
 ;;00003-0115-50
 ;;9002226.02101,"974,00003-0115-75 ",.01)
 ;;00003-0115-75
 ;;9002226.02101,"974,00003-0115-75 ",.02)
 ;;00003-0115-75
 ;;9002226.02101,"974,00003-0116-50 ",.01)
 ;;00003-0116-50
 ;;9002226.02101,"974,00003-0116-50 ",.02)
 ;;00003-0116-50
 ;;9002226.02101,"974,00003-0116-75 ",.01)
 ;;00003-0116-75
 ;;9002226.02101,"974,00003-0116-75 ",.02)
 ;;00003-0116-75
 ;;9002226.02101,"974,00003-0122-50 ",.01)
 ;;00003-0122-50
 ;;9002226.02101,"974,00003-0122-50 ",.02)
 ;;00003-0122-50
 ;;9002226.02101,"974,00003-0122-60 ",.01)
 ;;00003-0122-60
 ;;9002226.02101,"974,00003-0122-60 ",.02)
 ;;00003-0122-60
 ;;9002226.02101,"974,00003-0134-50 ",.01)
 ;;00003-0134-50
 ;;9002226.02101,"974,00003-0134-50 ",.02)
 ;;00003-0134-50
 ;;9002226.02101,"974,00003-0134-60 ",.01)
 ;;00003-0134-60
 ;;9002226.02101,"974,00003-0134-60 ",.02)
 ;;00003-0134-60
 ;;9002226.02101,"974,00003-0171-50 ",.01)
 ;;00003-0171-50
 ;;9002226.02101,"974,00003-0171-50 ",.02)
 ;;00003-0171-50
 ;;9002226.02101,"974,00003-0603-43 ",.01)
 ;;00003-0603-43
 ;;9002226.02101,"974,00003-0603-43 ",.02)
 ;;00003-0603-43
 ;;9002226.02101,"974,00003-0634-41 ",.01)
 ;;00003-0634-41
 ;;9002226.02101,"974,00003-0634-41 ",.02)
 ;;00003-0634-41
 ;;9002226.02101,"974,00003-0655-40 ",.01)
 ;;00003-0655-40
 ;;9002226.02101,"974,00003-0655-40 ",.02)
 ;;00003-0655-40
 ;;9002226.02101,"974,00003-0655-60 ",.01)
 ;;00003-0655-60
 ;;9002226.02101,"974,00003-0655-60 ",.02)
 ;;00003-0655-60
 ;;9002226.02101,"974,00003-0663-45 ",.01)
 ;;00003-0663-45
 ;;9002226.02101,"974,00003-0663-45 ",.02)
 ;;00003-0663-45
 ;;9002226.02101,"974,00003-0668-05 ",.01)
 ;;00003-0668-05
 ;;9002226.02101,"974,00003-0668-05 ",.02)
 ;;00003-0668-05
 ;;9002226.02101,"974,00003-0681-44 ",.01)
 ;;00003-0681-44
 ;;9002226.02101,"974,00003-0681-44 ",.02)
 ;;00003-0681-44
 ;;9002226.02101,"974,00003-0681-54 ",.01)
 ;;00003-0681-54
 ;;9002226.02101,"974,00003-0681-54 ",.02)
 ;;00003-0681-54
 ;;9002226.02101,"974,00003-0682-44 ",.01)
 ;;00003-0682-44
 ;;9002226.02101,"974,00003-0682-44 ",.02)
 ;;00003-0682-44
 ;;9002226.02101,"974,00003-0682-54 ",.01)
 ;;00003-0682-54
 ;;9002226.02101,"974,00003-0682-54 ",.02)
 ;;00003-0682-54
 ;;9002226.02101,"974,00003-0749-50 ",.01)
 ;;00003-0749-50
 ;;9002226.02101,"974,00003-0749-50 ",.02)
 ;;00003-0749-50
 ;;9002226.02101,"974,00003-0749-60 ",.01)
 ;;00003-0749-60
 ;;9002226.02101,"974,00003-0749-60 ",.02)
 ;;00003-0749-60
 ;;9002226.02101,"974,00003-0763-40 ",.01)
 ;;00003-0763-40
 ;;9002226.02101,"974,00003-0763-40 ",.02)
 ;;00003-0763-40
 ;;9002226.02101,"974,00003-0763-50 ",.01)
 ;;00003-0763-50
 ;;9002226.02101,"974,00003-0763-50 ",.02)
 ;;00003-0763-50
 ;;9002226.02101,"974,00003-0812-40 ",.01)
 ;;00003-0812-40
 ;;9002226.02101,"974,00003-0812-40 ",.02)
 ;;00003-0812-40
 ;;9002226.02101,"974,00003-0812-60 ",.01)
 ;;00003-0812-60
 ;;9002226.02101,"974,00003-0812-60 ",.02)
 ;;00003-0812-60
 ;;9002226.02101,"974,00003-0815-50 ",.01)
 ;;00003-0815-50
 ;;9002226.02101,"974,00003-0815-50 ",.02)
 ;;00003-0815-50
 ;;9002226.02101,"974,00003-0874-50 ",.01)
 ;;00003-0874-50
 ;;9002226.02101,"974,00003-0874-50 ",.02)
 ;;00003-0874-50
 ;;9002226.02101,"974,00003-0969-09 ",.01)
 ;;00003-0969-09
 ;;9002226.02101,"974,00003-0969-09 ",.02)
 ;;00003-0969-09
 ;;9002226.02101,"974,00003-0969-61 ",.01)
 ;;00003-0969-61
 ;;9002226.02101,"974,00003-0969-61 ",.02)
 ;;00003-0969-61
 ;;9002226.02101,"974,00003-0972-52 ",.01)
 ;;00003-0972-52
 ;;9002226.02101,"974,00003-0972-52 ",.02)
 ;;00003-0972-52
 ;;9002226.02101,"974,00003-0972-61 ",.01)
 ;;00003-0972-61
 ;;9002226.02101,"974,00003-0972-61 ",.02)
 ;;00003-0972-61
 ;;9002226.02101,"974,00003-1193-50 ",.01)
 ;;00003-1193-50
 ;;9002226.02101,"974,00003-1193-50 ",.02)
 ;;00003-1193-50
 ;;9002226.02101,"974,00003-1194-50 ",.01)
 ;;00003-1194-50
 ;;9002226.02101,"974,00003-1194-50 ",.02)
 ;;00003-1194-50
 ;;9002226.02101,"974,00003-1194-80 ",.01)
 ;;00003-1194-80
 ;;9002226.02101,"974,00003-1194-80 ",.02)
 ;;00003-1194-80
 ;;9002226.02101,"974,00003-1737-30 ",.01)
 ;;00003-1737-30
 ;;9002226.02101,"974,00003-1737-30 ",.02)
 ;;00003-1737-30
 ;;9002226.02101,"974,00003-1737-40 ",.01)
 ;;00003-1737-40
 ;;9002226.02101,"974,00003-1737-40 ",.02)
 ;;00003-1737-40
 ;;9002226.02101,"974,00003-1737-45 ",.01)
 ;;00003-1737-45
 ;;9002226.02101,"974,00003-1737-45 ",.02)
 ;;00003-1737-45
 ;;9002226.02101,"974,00003-1738-15 ",.01)
 ;;00003-1738-15
 ;;9002226.02101,"974,00003-1738-15 ",.02)
 ;;00003-1738-15
 ;;9002226.02101,"974,00003-1738-30 ",.01)
 ;;00003-1738-30
 ;;9002226.02101,"974,00003-1738-30 ",.02)
 ;;00003-1738-30
 ;;9002226.02101,"974,00003-1738-40 ",.01)
 ;;00003-1738-40
 ;;9002226.02101,"974,00003-1738-40 ",.02)
 ;;00003-1738-40
 ;;9002226.02101,"974,00003-1738-45 ",.01)
 ;;00003-1738-45
 ;;9002226.02101,"974,00003-1738-45 ",.02)
 ;;00003-1738-45
 ;;9002226.02101,"974,00004-0050-01 ",.01)
 ;;00004-0050-01
 ;;9002226.02101,"974,00004-0050-01 ",.02)
 ;;00004-0050-01
 ;;9002226.02101,"974,00004-0117-01 ",.01)
 ;;00004-0117-01
 ;;9002226.02101,"974,00004-0117-01 ",.02)
 ;;00004-0117-01
 ;;9002226.02101,"974,00004-0117-04 ",.01)
 ;;00004-0117-04
 ;;9002226.02101,"974,00004-0117-04 ",.02)
 ;;00004-0117-04
 ;;9002226.02101,"974,00004-0117-14 ",.01)
 ;;00004-0117-14
 ;;9002226.02101,"974,00004-0117-14 ",.02)
 ;;00004-0117-14
 ;;9002226.02101,"974,00004-1003-28 ",.01)
 ;;00004-1003-28
 ;;9002226.02101,"974,00004-1003-28 ",.02)
 ;;00004-1003-28
 ;;9002226.02101,"974,00004-1033-28 ",.01)
 ;;00004-1033-28
 ;;9002226.02101,"974,00004-1033-28 ",.02)
 ;;00004-1033-28
 ;;9002226.02101,"974,00004-1962-01 ",.01)
 ;;00004-1962-01
 ;;9002226.02101,"974,00004-1962-01 ",.02)
 ;;00004-1962-01
 ;;9002226.02101,"974,00004-1962-02 ",.01)
 ;;00004-1962-02
 ;;9002226.02101,"974,00004-1962-02 ",.02)
 ;;00004-1962-02
 ;;9002226.02101,"974,00004-1963-01 ",.01)
 ;;00004-1963-01
 ;;9002226.02101,"974,00004-1963-01 ",.02)
 ;;00004-1963-01
 ;;9002226.02101,"974,00004-1963-02 ",.01)
 ;;00004-1963-02
 ;;9002226.02101,"974,00004-1963-02 ",.02)
 ;;00004-1963-02
 ;;9002226.02101,"974,00004-1964-01 ",.01)
 ;;00004-1964-01
 ;;9002226.02101,"974,00004-1964-01 ",.02)
 ;;00004-1964-01
 ;;9002226.02101,"974,00004-1964-02 ",.01)
 ;;00004-1964-02
 ;;9002226.02101,"974,00004-1964-02 ",.02)
 ;;00004-1964-02
 ;;9002226.02101,"974,00004-1964-04 ",.01)
 ;;00004-1964-04
 ;;9002226.02101,"974,00004-1964-04 ",.02)
 ;;00004-1964-04
 ;;9002226.02101,"974,00004-1964-05 ",.01)
 ;;00004-1964-05
 ;;9002226.02101,"974,00004-1964-05 ",.02)
 ;;00004-1964-05
 ;;9002226.02101,"974,00004-1965-01 ",.01)
 ;;00004-1965-01
 ;;9002226.02101,"974,00004-1965-01 ",.02)
 ;;00004-1965-01
 ;;9002226.02101,"974,00004-1965-02 ",.01)
 ;;00004-1965-02
 ;;9002226.02101,"974,00004-1965-02 ",.02)
 ;;00004-1965-02
 ;;9002226.02101,"974,00004-1965-05 ",.01)
 ;;00004-1965-05
 ;;9002226.02101,"974,00004-1965-05 ",.02)
 ;;00004-1965-05
 ;;9002226.02101,"974,00004-1971-01 ",.01)
 ;;00004-1971-01
 ;;9002226.02101,"974,00004-1971-01 ",.02)
 ;;00004-1971-01
 ;;9002226.02101,"974,00004-2002-78 ",.01)
 ;;00004-2002-78
 ;;9002226.02101,"974,00004-2002-78 ",.02)
 ;;00004-2002-78
 ;;9002226.02101,"974,00004-2003-78 ",.01)
 ;;00004-2003-78
 ;;9002226.02101,"974,00004-2003-78 ",.02)
 ;;00004-2003-78
 ;;9002226.02101,"974,00005-3116-18 ",.01)
 ;;00005-3116-18
 ;;9002226.02101,"974,00005-3116-18 ",.02)
 ;;00005-3116-18
 ;;9002226.02101,"974,00005-3116-31 ",.01)
 ;;00005-3116-31
 ;;9002226.02101,"974,00005-3116-31 ",.02)
 ;;00005-3116-31
 ;;9002226.02101,"974,00005-3135-23 ",.01)
 ;;00005-3135-23
 ;;9002226.02101,"974,00005-3135-23 ",.02)
 ;;00005-3135-23
