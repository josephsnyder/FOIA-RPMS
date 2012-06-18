BGP13S28 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"999,67286-4177-01 ",.02)
 ;;67286-4177-01
 ;;9002226.02101,"999,67286-4179-01 ",.01)
 ;;67286-4179-01
 ;;9002226.02101,"999,67286-4179-01 ",.02)
 ;;67286-4179-01
 ;;9002226.02101,"999,67544-0043-30 ",.01)
 ;;67544-0043-30
 ;;9002226.02101,"999,67544-0043-30 ",.02)
 ;;67544-0043-30
 ;;9002226.02101,"999,67544-0076-30 ",.01)
 ;;67544-0076-30
 ;;9002226.02101,"999,67544-0076-30 ",.02)
 ;;67544-0076-30
 ;;9002226.02101,"999,67544-0087-30 ",.01)
 ;;67544-0087-30
 ;;9002226.02101,"999,67544-0087-30 ",.02)
 ;;67544-0087-30
 ;;9002226.02101,"999,67544-0122-30 ",.01)
 ;;67544-0122-30
 ;;9002226.02101,"999,67544-0122-30 ",.02)
 ;;67544-0122-30
 ;;9002226.02101,"999,67544-0130-30 ",.01)
 ;;67544-0130-30
 ;;9002226.02101,"999,67544-0130-30 ",.02)
 ;;67544-0130-30
 ;;9002226.02101,"999,67544-0143-30 ",.01)
 ;;67544-0143-30
 ;;9002226.02101,"999,67544-0143-30 ",.02)
 ;;67544-0143-30
 ;;9002226.02101,"999,67544-0161-30 ",.01)
 ;;67544-0161-30
 ;;9002226.02101,"999,67544-0161-30 ",.02)
 ;;67544-0161-30
 ;;9002226.02101,"999,67544-0208-30 ",.01)
 ;;67544-0208-30
 ;;9002226.02101,"999,67544-0208-30 ",.02)
 ;;67544-0208-30
 ;;9002226.02101,"999,67544-0240-30 ",.01)
 ;;67544-0240-30
 ;;9002226.02101,"999,67544-0240-30 ",.02)
 ;;67544-0240-30
 ;;9002226.02101,"999,67544-0272-30 ",.01)
 ;;67544-0272-30
 ;;9002226.02101,"999,67544-0272-30 ",.02)
 ;;67544-0272-30
 ;;9002226.02101,"999,67544-0305-30 ",.01)
 ;;67544-0305-30
 ;;9002226.02101,"999,67544-0305-30 ",.02)
 ;;67544-0305-30
 ;;9002226.02101,"999,67544-0326-30 ",.01)
 ;;67544-0326-30
 ;;9002226.02101,"999,67544-0326-30 ",.02)
 ;;67544-0326-30
 ;;9002226.02101,"999,67544-0332-60 ",.01)
 ;;67544-0332-60
 ;;9002226.02101,"999,67544-0332-60 ",.02)
 ;;67544-0332-60
 ;;9002226.02101,"999,67544-0376-30 ",.01)
 ;;67544-0376-30
 ;;9002226.02101,"999,67544-0376-30 ",.02)
 ;;67544-0376-30
 ;;9002226.02101,"999,67544-0491-45 ",.01)
 ;;67544-0491-45
 ;;9002226.02101,"999,67544-0491-45 ",.02)
 ;;67544-0491-45
 ;;9002226.02101,"999,67544-0567-30 ",.01)
 ;;67544-0567-30
 ;;9002226.02101,"999,67544-0567-30 ",.02)
 ;;67544-0567-30
 ;;9002226.02101,"999,67544-0567-60 ",.01)
 ;;67544-0567-60
 ;;9002226.02101,"999,67544-0567-60 ",.02)
 ;;67544-0567-60
 ;;9002226.02101,"999,67544-0573-82 ",.01)
 ;;67544-0573-82
 ;;9002226.02101,"999,67544-0573-82 ",.02)
 ;;67544-0573-82
 ;;9002226.02101,"999,67544-0627-80 ",.01)
 ;;67544-0627-80
 ;;9002226.02101,"999,67544-0627-80 ",.02)
 ;;67544-0627-80
 ;;9002226.02101,"999,67544-0911-60 ",.01)
 ;;67544-0911-60
 ;;9002226.02101,"999,67544-0911-60 ",.02)
 ;;67544-0911-60
 ;;9002226.02101,"999,67801-0304-30 ",.01)
 ;;67801-0304-30
 ;;9002226.02101,"999,67801-0304-30 ",.02)
 ;;67801-0304-30
 ;;9002226.02101,"999,67801-0315-30 ",.01)
 ;;67801-0315-30
 ;;9002226.02101,"999,67801-0315-30 ",.02)
 ;;67801-0315-30
 ;;9002226.02101,"999,67801-0316-03 ",.01)
 ;;67801-0316-03
 ;;9002226.02101,"999,67801-0316-03 ",.02)
 ;;67801-0316-03
 ;;9002226.02101,"999,67857-0700-01 ",.01)
 ;;67857-0700-01
 ;;9002226.02101,"999,67857-0700-01 ",.02)
 ;;67857-0700-01
 ;;9002226.02101,"999,67857-0701-01 ",.01)
 ;;67857-0701-01
 ;;9002226.02101,"999,67857-0701-01 ",.02)
 ;;67857-0701-01
 ;;9002226.02101,"999,68084-0209-01 ",.01)
 ;;68084-0209-01
 ;;9002226.02101,"999,68084-0209-01 ",.02)
 ;;68084-0209-01
 ;;9002226.02101,"999,68084-0209-11 ",.01)
 ;;68084-0209-11
 ;;9002226.02101,"999,68084-0209-11 ",.02)
 ;;68084-0209-11
 ;;9002226.02101,"999,68084-0210-01 ",.01)
 ;;68084-0210-01
 ;;9002226.02101,"999,68084-0210-01 ",.02)
 ;;68084-0210-01
 ;;9002226.02101,"999,68084-0210-11 ",.01)
 ;;68084-0210-11
 ;;9002226.02101,"999,68084-0210-11 ",.02)
 ;;68084-0210-11
 ;;9002226.02101,"999,68084-0211-01 ",.01)
 ;;68084-0211-01
 ;;9002226.02101,"999,68084-0211-01 ",.02)
 ;;68084-0211-01
 ;;9002226.02101,"999,68084-0211-11 ",.01)
 ;;68084-0211-11
 ;;9002226.02101,"999,68084-0211-11 ",.02)
 ;;68084-0211-11
 ;;9002226.02101,"999,68084-0212-01 ",.01)
 ;;68084-0212-01
 ;;9002226.02101,"999,68084-0212-01 ",.02)
 ;;68084-0212-01
 ;;9002226.02101,"999,68084-0212-11 ",.01)
 ;;68084-0212-11
 ;;9002226.02101,"999,68084-0212-11 ",.02)
 ;;68084-0212-11
 ;;9002226.02101,"999,68084-0261-01 ",.01)
 ;;68084-0261-01
 ;;9002226.02101,"999,68084-0261-01 ",.02)
 ;;68084-0261-01
 ;;9002226.02101,"999,68084-0261-11 ",.01)
 ;;68084-0261-11
 ;;9002226.02101,"999,68084-0261-11 ",.02)
 ;;68084-0261-11
 ;;9002226.02101,"999,68084-0262-01 ",.01)
 ;;68084-0262-01
 ;;9002226.02101,"999,68084-0262-01 ",.02)
 ;;68084-0262-01
 ;;9002226.02101,"999,68084-0262-11 ",.01)
 ;;68084-0262-11
 ;;9002226.02101,"999,68084-0262-11 ",.02)
 ;;68084-0262-11
 ;;9002226.02101,"999,68084-0263-01 ",.01)
 ;;68084-0263-01
 ;;9002226.02101,"999,68084-0263-01 ",.02)
 ;;68084-0263-01
 ;;9002226.02101,"999,68084-0263-11 ",.01)
 ;;68084-0263-11
 ;;9002226.02101,"999,68084-0263-11 ",.02)
 ;;68084-0263-11
 ;;9002226.02101,"999,68084-0264-01 ",.01)
 ;;68084-0264-01
 ;;9002226.02101,"999,68084-0264-01 ",.02)
 ;;68084-0264-01
 ;;9002226.02101,"999,68084-0264-11 ",.01)
 ;;68084-0264-11
 ;;9002226.02101,"999,68084-0264-11 ",.02)
 ;;68084-0264-11
 ;;9002226.02101,"999,68084-0301-01 ",.01)
 ;;68084-0301-01
 ;;9002226.02101,"999,68084-0301-01 ",.02)
 ;;68084-0301-01
 ;;9002226.02101,"999,68084-0302-21 ",.01)
 ;;68084-0302-21
 ;;9002226.02101,"999,68084-0302-21 ",.02)
 ;;68084-0302-21
 ;;9002226.02101,"999,68084-0303-01 ",.01)
 ;;68084-0303-01
 ;;9002226.02101,"999,68084-0303-01 ",.02)
 ;;68084-0303-01
 ;;9002226.02101,"999,68084-0304-01 ",.01)
 ;;68084-0304-01
 ;;9002226.02101,"999,68084-0304-01 ",.02)
 ;;68084-0304-01
 ;;9002226.02101,"999,68084-0387-01 ",.01)
 ;;68084-0387-01
 ;;9002226.02101,"999,68084-0387-01 ",.02)
 ;;68084-0387-01
 ;;9002226.02101,"999,68115-0038-30 ",.01)
 ;;68115-0038-30
 ;;9002226.02101,"999,68115-0038-30 ",.02)
 ;;68115-0038-30
 ;;9002226.02101,"999,68115-0039-30 ",.01)
 ;;68115-0039-30
 ;;9002226.02101,"999,68115-0039-30 ",.02)
 ;;68115-0039-30
 ;;9002226.02101,"999,68115-0039-60 ",.01)
 ;;68115-0039-60
 ;;9002226.02101,"999,68115-0039-60 ",.02)
 ;;68115-0039-60
 ;;9002226.02101,"999,68115-0039-90 ",.01)
 ;;68115-0039-90
 ;;9002226.02101,"999,68115-0039-90 ",.02)
 ;;68115-0039-90
 ;;9002226.02101,"999,68115-0040-15 ",.01)
 ;;68115-0040-15
 ;;9002226.02101,"999,68115-0040-15 ",.02)
 ;;68115-0040-15
 ;;9002226.02101,"999,68115-0040-30 ",.01)
 ;;68115-0040-30
 ;;9002226.02101,"999,68115-0040-30 ",.02)
 ;;68115-0040-30
 ;;9002226.02101,"999,68115-0040-60 ",.01)
 ;;68115-0040-60
 ;;9002226.02101,"999,68115-0040-60 ",.02)
 ;;68115-0040-60
 ;;9002226.02101,"999,68115-0040-90 ",.01)
 ;;68115-0040-90
 ;;9002226.02101,"999,68115-0040-90 ",.02)
 ;;68115-0040-90
 ;;9002226.02101,"999,68115-0238-00 ",.01)
 ;;68115-0238-00
 ;;9002226.02101,"999,68115-0238-00 ",.02)
 ;;68115-0238-00
 ;;9002226.02101,"999,68115-0238-30 ",.01)
 ;;68115-0238-30
 ;;9002226.02101,"999,68115-0238-30 ",.02)
 ;;68115-0238-30
 ;;9002226.02101,"999,68115-0238-60 ",.01)
 ;;68115-0238-60
 ;;9002226.02101,"999,68115-0238-60 ",.02)
 ;;68115-0238-60
 ;;9002226.02101,"999,68115-0238-90 ",.01)
 ;;68115-0238-90
 ;;9002226.02101,"999,68115-0238-90 ",.02)
 ;;68115-0238-90
 ;;9002226.02101,"999,68115-0239-30 ",.01)
 ;;68115-0239-30
 ;;9002226.02101,"999,68115-0239-30 ",.02)
 ;;68115-0239-30
 ;;9002226.02101,"999,68115-0239-60 ",.01)
 ;;68115-0239-60
 ;;9002226.02101,"999,68115-0239-60 ",.02)
 ;;68115-0239-60
 ;;9002226.02101,"999,68115-0239-90 ",.01)
 ;;68115-0239-90
 ;;9002226.02101,"999,68115-0239-90 ",.02)
 ;;68115-0239-90
 ;;9002226.02101,"999,68115-0239-97 ",.01)
 ;;68115-0239-97
 ;;9002226.02101,"999,68115-0239-97 ",.02)
 ;;68115-0239-97
 ;;9002226.02101,"999,68115-0307-60 ",.01)
 ;;68115-0307-60
 ;;9002226.02101,"999,68115-0307-60 ",.02)
 ;;68115-0307-60
 ;;9002226.02101,"999,68115-0308-60 ",.01)
 ;;68115-0308-60
 ;;9002226.02101,"999,68115-0308-60 ",.02)
 ;;68115-0308-60
 ;;9002226.02101,"999,68115-0308-99 ",.01)
 ;;68115-0308-99
 ;;9002226.02101,"999,68115-0308-99 ",.02)
 ;;68115-0308-99
 ;;9002226.02101,"999,68115-0309-30 ",.01)
 ;;68115-0309-30
 ;;9002226.02101,"999,68115-0309-30 ",.02)
 ;;68115-0309-30
 ;;9002226.02101,"999,68115-0309-60 ",.01)
 ;;68115-0309-60
 ;;9002226.02101,"999,68115-0309-60 ",.02)
 ;;68115-0309-60
 ;;9002226.02101,"999,68115-0309-90 ",.01)
 ;;68115-0309-90
 ;;9002226.02101,"999,68115-0309-90 ",.02)
 ;;68115-0309-90
 ;;9002226.02101,"999,68115-0310-30 ",.01)
 ;;68115-0310-30
 ;;9002226.02101,"999,68115-0310-30 ",.02)
 ;;68115-0310-30
 ;;9002226.02101,"999,68115-0310-60 ",.01)
 ;;68115-0310-60
 ;;9002226.02101,"999,68115-0310-60 ",.02)
 ;;68115-0310-60
 ;;9002226.02101,"999,68115-0419-30 ",.01)
 ;;68115-0419-30
 ;;9002226.02101,"999,68115-0419-30 ",.02)
 ;;68115-0419-30
 ;;9002226.02101,"999,68115-0551-00 ",.01)
 ;;68115-0551-00
 ;;9002226.02101,"999,68115-0551-00 ",.02)
 ;;68115-0551-00
 ;;9002226.02101,"999,68115-0629-00 ",.01)
 ;;68115-0629-00
 ;;9002226.02101,"999,68115-0629-00 ",.02)
 ;;68115-0629-00
 ;;9002226.02101,"999,68115-0629-30 ",.01)
 ;;68115-0629-30
 ;;9002226.02101,"999,68115-0629-30 ",.02)
 ;;68115-0629-30
 ;;9002226.02101,"999,68115-0661-00 ",.01)
 ;;68115-0661-00
 ;;9002226.02101,"999,68115-0661-00 ",.02)
 ;;68115-0661-00
 ;;9002226.02101,"999,68115-0715-00 ",.01)
 ;;68115-0715-00
 ;;9002226.02101,"999,68115-0715-00 ",.02)
 ;;68115-0715-00
 ;;9002226.02101,"999,68115-0727-00 ",.01)
 ;;68115-0727-00
 ;;9002226.02101,"999,68115-0727-00 ",.02)
 ;;68115-0727-00
 ;;9002226.02101,"999,68115-0727-30 ",.01)
 ;;68115-0727-30
 ;;9002226.02101,"999,68115-0727-30 ",.02)
 ;;68115-0727-30
 ;;9002226.02101,"999,68115-0741-00 ",.01)
 ;;68115-0741-00
 ;;9002226.02101,"999,68115-0741-00 ",.02)
 ;;68115-0741-00
 ;;9002226.02101,"999,68382-0022-01 ",.01)
 ;;68382-0022-01
 ;;9002226.02101,"999,68382-0022-01 ",.02)
 ;;68382-0022-01
 ;;9002226.02101,"999,68382-0022-10 ",.01)
 ;;68382-0022-10
 ;;9002226.02101,"999,68382-0022-10 ",.02)
 ;;68382-0022-10
 ;;9002226.02101,"999,68382-0023-01 ",.01)
 ;;68382-0023-01
 ;;9002226.02101,"999,68382-0023-01 ",.02)
 ;;68382-0023-01
 ;;9002226.02101,"999,68382-0023-10 ",.01)
 ;;68382-0023-10
 ;;9002226.02101,"999,68382-0023-10 ",.02)
 ;;68382-0023-10
 ;;9002226.02101,"999,68382-0024-01 ",.01)
 ;;68382-0024-01
 ;;9002226.02101,"999,68382-0024-01 ",.02)
 ;;68382-0024-01
 ;;9002226.02101,"999,68382-0024-10 ",.01)
 ;;68382-0024-10
 ;;9002226.02101,"999,68382-0024-10 ",.02)
 ;;68382-0024-10
 ;;9002226.02101,"999,68382-0092-01 ",.01)
 ;;68382-0092-01
 ;;9002226.02101,"999,68382-0092-01 ",.02)
 ;;68382-0092-01
 ;;9002226.02101,"999,68382-0092-05 ",.01)
 ;;68382-0092-05
 ;;9002226.02101,"999,68382-0092-05 ",.02)
 ;;68382-0092-05
 ;;9002226.02101,"999,68382-0092-17 ",.01)
 ;;68382-0092-17
 ;;9002226.02101,"999,68382-0092-17 ",.02)
 ;;68382-0092-17
 ;;9002226.02101,"999,68382-0093-01 ",.01)
 ;;68382-0093-01
 ;;9002226.02101,"999,68382-0093-01 ",.02)
 ;;68382-0093-01
 ;;9002226.02101,"999,68382-0093-05 ",.01)
 ;;68382-0093-05
 ;;9002226.02101,"999,68382-0093-05 ",.02)
 ;;68382-0093-05
 ;;9002226.02101,"999,68382-0093-17 ",.01)
 ;;68382-0093-17
 ;;9002226.02101,"999,68382-0093-17 ",.02)
 ;;68382-0093-17
 ;;9002226.02101,"999,68382-0094-01 ",.01)
 ;;68382-0094-01
 ;;9002226.02101,"999,68382-0094-01 ",.02)
 ;;68382-0094-01
 ;;9002226.02101,"999,68382-0094-05 ",.01)
 ;;68382-0094-05
 ;;9002226.02101,"999,68382-0094-05 ",.02)
 ;;68382-0094-05
 ;;9002226.02101,"999,68382-0094-17 ",.01)
 ;;68382-0094-17
 ;;9002226.02101,"999,68382-0094-17 ",.02)
 ;;68382-0094-17
 ;;9002226.02101,"999,68382-0095-01 ",.01)
 ;;68382-0095-01
 ;;9002226.02101,"999,68382-0095-01 ",.02)
 ;;68382-0095-01
 ;;9002226.02101,"999,68382-0095-05 ",.01)
 ;;68382-0095-05
 ;;9002226.02101,"999,68382-0095-05 ",.02)
 ;;68382-0095-05
 ;;9002226.02101,"999,68382-0095-17 ",.01)
 ;;68382-0095-17
 ;;9002226.02101,"999,68382-0095-17 ",.02)
 ;;68382-0095-17
 ;;9002226.02101,"999,68387-0538-30 ",.01)
 ;;68387-0538-30
 ;;9002226.02101,"999,68387-0538-30 ",.02)
 ;;68387-0538-30
 ;;9002226.02101,"999,68387-0539-30 ",.01)
 ;;68387-0539-30
 ;;9002226.02101,"999,68387-0539-30 ",.02)
 ;;68387-0539-30
 ;;9002226.02101,"999,68462-0162-01 ",.01)
 ;;68462-0162-01
 ;;9002226.02101,"999,68462-0162-01 ",.02)
 ;;68462-0162-01
 ;;9002226.02101,"999,68462-0162-05 ",.01)
 ;;68462-0162-05
 ;;9002226.02101,"999,68462-0162-05 ",.02)
 ;;68462-0162-05
 ;;9002226.02101,"999,68462-0163-01 ",.01)
 ;;68462-0163-01
 ;;9002226.02101,"999,68462-0163-01 ",.02)
 ;;68462-0163-01
