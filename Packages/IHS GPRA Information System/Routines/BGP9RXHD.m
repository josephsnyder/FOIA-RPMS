BGP9RXHD ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"314,35452-2 ",.02)
 ;;35452-2
 ;;9002226.02101,"314,35564-4 ",.01)
 ;;35564-4
 ;;9002226.02101,"314,35564-4 ",.02)
 ;;35564-4
 ;;9002226.02101,"314,35565-1 ",.01)
 ;;35565-1
 ;;9002226.02101,"314,35565-1 ",.02)
 ;;35565-1
 ;;9002226.02101,"314,38998-1 ",.01)
 ;;38998-1
 ;;9002226.02101,"314,38998-1 ",.02)
 ;;38998-1
 ;;9002226.02101,"314,40437-6 ",.01)
 ;;40437-6
 ;;9002226.02101,"314,40437-6 ",.02)
 ;;40437-6
 ;;9002226.02101,"314,40438-4 ",.01)
 ;;40438-4
 ;;9002226.02101,"314,40438-4 ",.02)
 ;;40438-4
 ;;9002226.02101,"314,40439-2 ",.01)
 ;;40439-2
 ;;9002226.02101,"314,40439-2 ",.02)
 ;;40439-2
 ;;9002226.02101,"314,40732-0 ",.01)
 ;;40732-0
 ;;9002226.02101,"314,40732-0 ",.02)
 ;;40732-0
 ;;9002226.02101,"314,40733-8 ",.01)
 ;;40733-8
 ;;9002226.02101,"314,40733-8 ",.02)
 ;;40733-8
 ;;9002226.02101,"314,41143-9 ",.01)
 ;;41143-9
 ;;9002226.02101,"314,41143-9 ",.02)
 ;;41143-9
 ;;9002226.02101,"314,41144-7 ",.01)
 ;;41144-7
 ;;9002226.02101,"314,41144-7 ",.02)
 ;;41144-7
 ;;9002226.02101,"314,41145-4 ",.01)
 ;;41145-4
 ;;9002226.02101,"314,41145-4 ",.02)
 ;;41145-4
 ;;9002226.02101,"314,41290-8 ",.01)
 ;;41290-8
 ;;9002226.02101,"314,41290-8 ",.02)
 ;;41290-8
 ;;9002226.02101,"314,41497-9 ",.01)
 ;;41497-9
 ;;9002226.02101,"314,41497-9 ",.02)
 ;;41497-9
 ;;9002226.02101,"314,41498-7 ",.01)
 ;;41498-7
 ;;9002226.02101,"314,41498-7 ",.02)
 ;;41498-7
 ;;9002226.02101,"314,41513-3 ",.01)
 ;;41513-3
 ;;9002226.02101,"314,41513-3 ",.02)
 ;;41513-3
 ;;9002226.02101,"314,41514-1 ",.01)
 ;;41514-1
 ;;9002226.02101,"314,41514-1 ",.02)
 ;;41514-1
 ;;9002226.02101,"314,41515-8 ",.01)
 ;;41515-8
 ;;9002226.02101,"314,41515-8 ",.02)
 ;;41515-8
 ;;9002226.02101,"314,41516-6 ",.01)
 ;;41516-6
 ;;9002226.02101,"314,41516-6 ",.02)
 ;;41516-6
 ;;9002226.02101,"314,42339-2 ",.01)
 ;;42339-2
 ;;9002226.02101,"314,42339-2 ",.02)
 ;;42339-2
 ;;9002226.02101,"314,42600-7 ",.01)
 ;;42600-7
 ;;9002226.02101,"314,42600-7 ",.02)
 ;;42600-7
 ;;9002226.02101,"314,42627-0 ",.01)
 ;;42627-0
 ;;9002226.02101,"314,42627-0 ",.02)
 ;;42627-0
 ;;9002226.02101,"314,42768-2 ",.01)
 ;;42768-2
 ;;9002226.02101,"314,42768-2 ",.02)
 ;;42768-2
 ;;9002226.02101,"314,42917-5 ",.01)
 ;;42917-5
 ;;9002226.02101,"314,42917-5 ",.02)
 ;;42917-5
 ;;9002226.02101,"314,43008-2 ",.01)
 ;;43008-2
 ;;9002226.02101,"314,43008-2 ",.02)
 ;;43008-2
 ;;9002226.02101,"314,43009-0 ",.01)
 ;;43009-0
 ;;9002226.02101,"314,43009-0 ",.02)
 ;;43009-0
 ;;9002226.02101,"314,43010-8 ",.01)
 ;;43010-8
 ;;9002226.02101,"314,43010-8 ",.02)
 ;;43010-8
 ;;9002226.02101,"314,43011-6 ",.01)
 ;;43011-6
 ;;9002226.02101,"314,43011-6 ",.02)
 ;;43011-6
 ;;9002226.02101,"314,43012-4 ",.01)
 ;;43012-4
 ;;9002226.02101,"314,43012-4 ",.02)
 ;;43012-4
 ;;9002226.02101,"314,43013-2 ",.01)
 ;;43013-2
 ;;9002226.02101,"314,43013-2 ",.02)
 ;;43013-2
 ;;9002226.02101,"314,43185-8 ",.01)
 ;;43185-8
 ;;9002226.02101,"314,43185-8 ",.02)
 ;;43185-8
 ;;9002226.02101,"314,43599-0 ",.01)
 ;;43599-0
 ;;9002226.02101,"314,43599-0 ",.02)
 ;;43599-0
 ;;9002226.02101,"314,44531-2 ",.01)
 ;;44531-2
 ;;9002226.02101,"314,44531-2 ",.02)
 ;;44531-2
 ;;9002226.02101,"314,44532-0 ",.01)
 ;;44532-0
 ;;9002226.02101,"314,44532-0 ",.02)
 ;;44532-0
 ;;9002226.02101,"314,44533-8 ",.01)
 ;;44533-8
 ;;9002226.02101,"314,44533-8 ",.02)
 ;;44533-8
 ;;9002226.02101,"314,44607-0 ",.01)
 ;;44607-0
 ;;9002226.02101,"314,44607-0 ",.02)
 ;;44607-0
 ;;9002226.02101,"314,44871-2 ",.01)
 ;;44871-2
 ;;9002226.02101,"314,44871-2 ",.02)
 ;;44871-2
 ;;9002226.02101,"314,44872-0 ",.01)
 ;;44872-0
 ;;9002226.02101,"314,44872-0 ",.02)
 ;;44872-0
 ;;9002226.02101,"314,44873-8 ",.01)
 ;;44873-8
 ;;9002226.02101,"314,44873-8 ",.02)
 ;;44873-8
 ;;9002226.02101,"314,45175-7 ",.01)
 ;;45175-7
 ;;9002226.02101,"314,45175-7 ",.02)
 ;;45175-7
 ;;9002226.02101,"314,45176-5 ",.01)
 ;;45176-5
 ;;9002226.02101,"314,45176-5 ",.02)
 ;;45176-5
 ;;9002226.02101,"314,45182-3 ",.01)
 ;;45182-3
 ;;9002226.02101,"314,45182-3 ",.02)
 ;;45182-3
 ;;9002226.02101,"314,45212-8 ",.01)
 ;;45212-8
 ;;9002226.02101,"314,45212-8 ",.02)
 ;;45212-8
 ;;9002226.02101,"314,47029-4 ",.01)
 ;;47029-4
 ;;9002226.02101,"314,47029-4 ",.02)
 ;;47029-4
 ;;9002226.02101,"314,47359-5 ",.01)
 ;;47359-5
 ;;9002226.02101,"314,47359-5 ",.02)
 ;;47359-5
 ;;9002226.02101,"314,48023-6 ",.01)
 ;;48023-6
 ;;9002226.02101,"314,48023-6 ",.02)
 ;;48023-6
 ;;9002226.02101,"314,48345-3 ",.01)
 ;;48345-3
 ;;9002226.02101,"314,48345-3 ",.02)
 ;;48345-3
 ;;9002226.02101,"314,48346-1 ",.01)
 ;;48346-1
 ;;9002226.02101,"314,48346-1 ",.02)
 ;;48346-1
 ;;9002226.02101,"314,48510-2 ",.01)
 ;;48510-2
 ;;9002226.02101,"314,48510-2 ",.02)
 ;;48510-2
 ;;9002226.02101,"314,48511-0 ",.01)
 ;;48511-0
 ;;9002226.02101,"314,48511-0 ",.02)
 ;;48511-0
 ;;9002226.02101,"314,48551-6 ",.01)
 ;;48551-6
 ;;9002226.02101,"314,48551-6 ",.02)
 ;;48551-6
 ;;9002226.02101,"314,48552-4 ",.01)
 ;;48552-4
 ;;9002226.02101,"314,48552-4 ",.02)
 ;;48552-4
 ;;9002226.02101,"314,48558-1 ",.01)
 ;;48558-1
 ;;9002226.02101,"314,48558-1 ",.02)
 ;;48558-1
