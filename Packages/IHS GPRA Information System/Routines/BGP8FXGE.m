BGP8FXGE ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"624,00603-3213-21 ",.02)
 ;;00603-3213-21
 ;;9002226.02101,"624,00603-3213-28 ",.01)
 ;;00603-3213-28
 ;;9002226.02101,"624,00603-3213-28 ",.02)
 ;;00603-3213-28
 ;;9002226.02101,"624,00603-3214-21 ",.01)
 ;;00603-3214-21
 ;;9002226.02101,"624,00603-3214-21 ",.02)
 ;;00603-3214-21
 ;;9002226.02101,"624,00603-3214-28 ",.01)
 ;;00603-3214-28
 ;;9002226.02101,"624,00603-3214-28 ",.02)
 ;;00603-3214-28
 ;;9002226.02101,"624,00603-3214-32 ",.01)
 ;;00603-3214-32
 ;;9002226.02101,"624,00603-3214-32 ",.02)
 ;;00603-3214-32
 ;;9002226.02101,"624,00603-3215-21 ",.01)
 ;;00603-3215-21
 ;;9002226.02101,"624,00603-3215-21 ",.02)
 ;;00603-3215-21
 ;;9002226.02101,"624,00603-3215-28 ",.01)
 ;;00603-3215-28
 ;;9002226.02101,"624,00603-3215-28 ",.02)
 ;;00603-3215-28
 ;;9002226.02101,"624,00603-3215-32 ",.01)
 ;;00603-3215-32
 ;;9002226.02101,"624,00603-3215-32 ",.02)
 ;;00603-3215-32
 ;;9002226.02101,"624,00603-3216-28 ",.01)
 ;;00603-3216-28
 ;;9002226.02101,"624,00603-3216-28 ",.02)
 ;;00603-3216-28
 ;;9002226.02101,"624,00603-3217-28 ",.01)
 ;;00603-3217-28
 ;;9002226.02101,"624,00603-3217-28 ",.02)
 ;;00603-3217-28
 ;;9002226.02101,"624,00603-3218-28 ",.01)
 ;;00603-3218-28
 ;;9002226.02101,"624,00603-3218-28 ",.02)
 ;;00603-3218-28
 ;;9002226.02101,"624,00603-3691-21 ",.01)
 ;;00603-3691-21
 ;;9002226.02101,"624,00603-3691-21 ",.02)
 ;;00603-3691-21
 ;;9002226.02101,"624,00603-3692-28 ",.01)
 ;;00603-3692-28
 ;;9002226.02101,"624,00603-3692-28 ",.02)
 ;;00603-3692-28
 ;;9002226.02101,"624,00615-0435-05 ",.01)
 ;;00615-0435-05
 ;;9002226.02101,"624,00615-0435-05 ",.02)
 ;;00615-0435-05
 ;;9002226.02101,"624,00615-0435-10 ",.01)
 ;;00615-0435-10
 ;;9002226.02101,"624,00615-0435-10 ",.02)
 ;;00615-0435-10
 ;;9002226.02101,"624,00615-0436-01 ",.01)
 ;;00615-0436-01
 ;;9002226.02101,"624,00615-0436-01 ",.02)
 ;;00615-0436-01
 ;;9002226.02101,"624,00615-0436-10 ",.01)
 ;;00615-0436-10
 ;;9002226.02101,"624,00615-0436-10 ",.02)
 ;;00615-0436-10
 ;;9002226.02101,"624,00615-0437-01 ",.01)
 ;;00615-0437-01
 ;;9002226.02101,"624,00615-0437-01 ",.02)
 ;;00615-0437-01
 ;;9002226.02101,"624,00615-0437-05 ",.01)
 ;;00615-0437-05
 ;;9002226.02101,"624,00615-0437-05 ",.02)
 ;;00615-0437-05
 ;;9002226.02101,"624,00615-0437-10 ",.01)
 ;;00615-0437-10
 ;;9002226.02101,"624,00615-0437-10 ",.02)
 ;;00615-0437-10
 ;;9002226.02101,"624,00615-0461-47 ",.01)
 ;;00615-0461-47
 ;;9002226.02101,"624,00615-0461-47 ",.02)
 ;;00615-0461-47
 ;;9002226.02101,"624,00615-1532-53 ",.01)
 ;;00615-1532-53
 ;;9002226.02101,"624,00615-1532-53 ",.02)
 ;;00615-1532-53
 ;;9002226.02101,"624,00615-1532-63 ",.01)
 ;;00615-1532-63
 ;;9002226.02101,"624,00615-1532-63 ",.02)
 ;;00615-1532-63
 ;;9002226.02101,"624,00615-1533-01 ",.01)
 ;;00615-1533-01
 ;;9002226.02101,"624,00615-1533-01 ",.02)
 ;;00615-1533-01
 ;;9002226.02101,"624,00615-1533-10 ",.01)
 ;;00615-1533-10
 ;;9002226.02101,"624,00615-1533-10 ",.02)
 ;;00615-1533-10
 ;;9002226.02101,"624,00615-1533-32 ",.01)
 ;;00615-1533-32
 ;;9002226.02101,"624,00615-1533-32 ",.02)
 ;;00615-1533-32
 ;;9002226.02101,"624,00615-1533-53 ",.01)
 ;;00615-1533-53
 ;;9002226.02101,"624,00615-1533-53 ",.02)
 ;;00615-1533-53
 ;;9002226.02101,"624,00615-1533-63 ",.01)
 ;;00615-1533-63
 ;;9002226.02101,"624,00615-1533-63 ",.02)
 ;;00615-1533-63
 ;;9002226.02101,"624,00641-0371-25 ",.01)
 ;;00641-0371-25
 ;;9002226.02101,"624,00641-0371-25 ",.02)
 ;;00641-0371-25
 ;;9002226.02101,"624,00641-1408-33 ",.01)
 ;;00641-1408-33
 ;;9002226.02101,"624,00641-1408-33 ",.02)
 ;;00641-1408-33
 ;;9002226.02101,"624,00641-1408-35 ",.01)
 ;;00641-1408-35
 ;;9002226.02101,"624,00641-1408-35 ",.02)
 ;;00641-1408-35
 ;;9002226.02101,"624,00641-2289-41 ",.01)
 ;;00641-2289-41
 ;;9002226.02101,"624,00641-2289-41 ",.02)
 ;;00641-2289-41
 ;;9002226.02101,"624,00677-0457-01 ",.01)
 ;;00677-0457-01
 ;;9002226.02101,"624,00677-0457-01 ",.02)
 ;;00677-0457-01
 ;;9002226.02101,"624,00677-0459-01 ",.01)
 ;;00677-0459-01
 ;;9002226.02101,"624,00677-0459-01 ",.02)
 ;;00677-0459-01
 ;;9002226.02101,"624,00677-1088-21 ",.01)
 ;;00677-1088-21
 ;;9002226.02101,"624,00677-1088-21 ",.02)
 ;;00677-1088-21
 ;;9002226.02101,"624,00781-1482-01 ",.01)
 ;;00781-1482-01
 ;;9002226.02101,"624,00781-1482-01 ",.02)
 ;;00781-1482-01
 ;;9002226.02101,"624,00781-1482-05 ",.01)
 ;;00781-1482-05
 ;;9002226.02101,"624,00781-1482-05 ",.02)
 ;;00781-1482-05
 ;;9002226.02101,"624,00781-1482-13 ",.01)
 ;;00781-1482-13
 ;;9002226.02101,"624,00781-1482-13 ",.02)
 ;;00781-1482-13
 ;;9002226.02101,"624,00781-1483-01 ",.01)
 ;;00781-1483-01
 ;;9002226.02101,"624,00781-1483-01 ",.02)
 ;;00781-1483-01
 ;;9002226.02101,"624,00781-1483-05 ",.01)
 ;;00781-1483-05
 ;;9002226.02101,"624,00781-1483-05 ",.02)
 ;;00781-1483-05
 ;;9002226.02101,"624,00781-1483-13 ",.01)
 ;;00781-1483-13
 ;;9002226.02101,"624,00781-1483-13 ",.02)
 ;;00781-1483-13
 ;;9002226.02101,"624,00781-1484-01 ",.01)
 ;;00781-1484-01
 ;;9002226.02101,"624,00781-1484-01 ",.02)
 ;;00781-1484-01
 ;;9002226.02101,"624,00781-1484-05 ",.01)
 ;;00781-1484-05
 ;;9002226.02101,"624,00781-1484-05 ",.02)
 ;;00781-1484-05
 ;;9002226.02101,"624,00781-1484-13 ",.01)
 ;;00781-1484-13
 ;;9002226.02101,"624,00781-1484-13 ",.02)
 ;;00781-1484-13
 ;;9002226.02101,"624,00781-2080-01 ",.01)
 ;;00781-2080-01
 ;;9002226.02101,"624,00781-2080-01 ",.02)
 ;;00781-2080-01
 ;;9002226.02101,"624,00781-2080-05 ",.01)
 ;;00781-2080-05
 ;;9002226.02101,"624,00781-2080-05 ",.02)
 ;;00781-2080-05
 ;;9002226.02101,"624,00781-2080-10 ",.01)
 ;;00781-2080-10
 ;;9002226.02101,"624,00781-2080-10 ",.02)
 ;;00781-2080-10
 ;;9002226.02101,"624,00781-2082-05 ",.01)
 ;;00781-2082-05
 ;;9002226.02101,"624,00781-2082-05 ",.02)
 ;;00781-2082-05
 ;;9002226.02101,"624,00781-2082-10 ",.01)
 ;;00781-2082-10
 ;;9002226.02101,"624,00781-2082-10 ",.02)
 ;;00781-2082-10
 ;;9002226.02101,"624,00781-2084-01 ",.01)
 ;;00781-2084-01
 ;;9002226.02101,"624,00781-2084-01 ",.02)
 ;;00781-2084-01
 ;;9002226.02101,"624,00781-2084-05 ",.01)
 ;;00781-2084-05
 ;;9002226.02101,"624,00781-2084-05 ",.02)
 ;;00781-2084-05
 ;;9002226.02101,"624,00781-2084-10 ",.01)
 ;;00781-2084-10
 ;;9002226.02101,"624,00781-2084-10 ",.02)
 ;;00781-2084-10
 ;;9002226.02101,"624,00839-1130-06 ",.01)
 ;;00839-1130-06
 ;;9002226.02101,"624,00839-1130-06 ",.02)
 ;;00839-1130-06
 ;;9002226.02101,"624,00839-1130-16 ",.01)
 ;;00839-1130-16
 ;;9002226.02101,"624,00839-1130-16 ",.02)
 ;;00839-1130-16
 ;;9002226.02101,"624,00839-1131-06 ",.01)
 ;;00839-1131-06
 ;;9002226.02101,"624,00839-1131-06 ",.02)
 ;;00839-1131-06
 ;;9002226.02101,"624,00839-1131-16 ",.01)
 ;;00839-1131-16
 ;;9002226.02101,"624,00839-1131-16 ",.02)
 ;;00839-1131-16
 ;;9002226.02101,"624,00839-1132-06 ",.01)
 ;;00839-1132-06
 ;;9002226.02101,"624,00839-1132-06 ",.02)
 ;;00839-1132-06
 ;;9002226.02101,"624,00839-7131-06 ",.01)
 ;;00839-7131-06
 ;;9002226.02101,"624,00839-7131-06 ",.02)
 ;;00839-7131-06
 ;;9002226.02101,"624,00839-7131-16 ",.01)
 ;;00839-7131-16
 ;;9002226.02101,"624,00839-7131-16 ",.02)
 ;;00839-7131-16
 ;;9002226.02101,"624,00839-7132-06 ",.01)
 ;;00839-7132-06
 ;;9002226.02101,"624,00839-7132-06 ",.02)
 ;;00839-7132-06
 ;;9002226.02101,"624,00839-7132-16 ",.01)
 ;;00839-7132-16
 ;;9002226.02101,"624,00839-7132-16 ",.02)
 ;;00839-7132-16
 ;;9002226.02101,"624,00839-7133-06 ",.01)
 ;;00839-7133-06
 ;;9002226.02101,"624,00839-7133-06 ",.02)
 ;;00839-7133-06
 ;;9002226.02101,"624,00839-7133-12 ",.01)
 ;;00839-7133-12
 ;;9002226.02101,"624,00839-7133-12 ",.02)
 ;;00839-7133-12
 ;;9002226.02101,"624,00839-7133-16 ",.01)
 ;;00839-7133-16
 ;;9002226.02101,"624,00839-7133-16 ",.02)
 ;;00839-7133-16
 ;;9002226.02101,"624,00839-7154-06 ",.01)
 ;;00839-7154-06
 ;;9002226.02101,"624,00839-7154-06 ",.02)
 ;;00839-7154-06
 ;;9002226.02101,"624,00839-7154-12 ",.01)
 ;;00839-7154-12
 ;;9002226.02101,"624,00839-7154-12 ",.02)
 ;;00839-7154-12
 ;;9002226.02101,"624,00839-7155-06 ",.01)
 ;;00839-7155-06
 ;;9002226.02101,"624,00839-7155-06 ",.02)
 ;;00839-7155-06
 ;;9002226.02101,"624,00839-7155-12 ",.01)
 ;;00839-7155-12
 ;;9002226.02101,"624,00839-7155-12 ",.02)
 ;;00839-7155-12
 ;;9002226.02101,"624,00839-7190-30 ",.01)
 ;;00839-7190-30
 ;;9002226.02101,"624,00839-7190-30 ",.02)
 ;;00839-7190-30
 ;;9002226.02101,"624,00839-7279-06 ",.01)
 ;;00839-7279-06
 ;;9002226.02101,"624,00839-7279-06 ",.02)
 ;;00839-7279-06
 ;;9002226.02101,"624,00839-7279-12 ",.01)
 ;;00839-7279-12
 ;;9002226.02101,"624,00839-7279-12 ",.02)
 ;;00839-7279-12
 ;;9002226.02101,"624,00839-7280-06 ",.01)
 ;;00839-7280-06
 ;;9002226.02101,"624,00839-7280-06 ",.02)
 ;;00839-7280-06
 ;;9002226.02101,"624,00839-7280-12 ",.01)
 ;;00839-7280-12
 ;;9002226.02101,"624,00839-7280-12 ",.02)
 ;;00839-7280-12
 ;;9002226.02101,"624,00904-0090-40 ",.01)
 ;;00904-0090-40
 ;;9002226.02101,"624,00904-0090-40 ",.02)
 ;;00904-0090-40
 ;;9002226.02101,"624,00904-0090-60 ",.01)
 ;;00904-0090-60
 ;;9002226.02101,"624,00904-0090-60 ",.02)
 ;;00904-0090-60
 ;;9002226.02101,"624,00904-0090-80 ",.01)
 ;;00904-0090-80
 ;;9002226.02101,"624,00904-0090-80 ",.02)
 ;;00904-0090-80
 ;;9002226.02101,"624,00904-0091-40 ",.01)
 ;;00904-0091-40
 ;;9002226.02101,"624,00904-0091-40 ",.02)
 ;;00904-0091-40
 ;;9002226.02101,"624,00904-0091-60 ",.01)
 ;;00904-0091-60
 ;;9002226.02101,"624,00904-0091-60 ",.02)
 ;;00904-0091-60
 ;;9002226.02101,"624,00904-0091-80 ",.01)
 ;;00904-0091-80
 ;;9002226.02101,"624,00904-0091-80 ",.02)
 ;;00904-0091-80
 ;;9002226.02101,"624,00904-0092-40 ",.01)
 ;;00904-0092-40
 ;;9002226.02101,"624,00904-0092-40 ",.02)
 ;;00904-0092-40
 ;;9002226.02101,"624,00904-0092-60 ",.01)
 ;;00904-0092-60
 ;;9002226.02101,"624,00904-0092-60 ",.02)
 ;;00904-0092-60
 ;;9002226.02101,"624,00904-1700-40 ",.01)
 ;;00904-1700-40
 ;;9002226.02101,"624,00904-1700-40 ",.02)
 ;;00904-1700-40
 ;;9002226.02101,"624,00904-1700-60 ",.01)
 ;;00904-1700-60
 ;;9002226.02101,"624,00904-1700-60 ",.02)
 ;;00904-1700-60
 ;;9002226.02101,"624,00904-1701-40 ",.01)
 ;;00904-1701-40
 ;;9002226.02101,"624,00904-1701-40 ",.02)
 ;;00904-1701-40
 ;;9002226.02101,"624,00904-2800-40 ",.01)
 ;;00904-2800-40
 ;;9002226.02101,"624,00904-2800-40 ",.02)
 ;;00904-2800-40
 ;;9002226.02101,"624,00904-2800-60 ",.01)
 ;;00904-2800-60
 ;;9002226.02101,"624,00904-2800-60 ",.02)
 ;;00904-2800-60
 ;;9002226.02101,"624,00904-2800-61 ",.01)
 ;;00904-2800-61
 ;;9002226.02101,"624,00904-2800-61 ",.02)
 ;;00904-2800-61
 ;;9002226.02101,"624,00904-2801-40 ",.01)
 ;;00904-2801-40
 ;;9002226.02101,"624,00904-2801-40 ",.02)
 ;;00904-2801-40
 ;;9002226.02101,"624,00904-2801-60 ",.01)
 ;;00904-2801-60
 ;;9002226.02101,"624,00904-2801-60 ",.02)
 ;;00904-2801-60
 ;;9002226.02101,"624,00904-2801-61 ",.01)
 ;;00904-2801-61
 ;;9002226.02101,"624,00904-2801-61 ",.02)
 ;;00904-2801-61
 ;;9002226.02101,"624,00904-3901-40 ",.01)
 ;;00904-3901-40
 ;;9002226.02101,"624,00904-3901-40 ",.02)
 ;;00904-3901-40
 ;;9002226.02101,"624,00904-3901-60 ",.01)
 ;;00904-3901-60
 ;;9002226.02101,"624,00904-3901-60 ",.02)
 ;;00904-3901-60
 ;;9002226.02101,"624,00904-3901-61 ",.01)
 ;;00904-3901-61
 ;;9002226.02101,"624,00904-3901-61 ",.02)
 ;;00904-3901-61
 ;;9002226.02101,"624,00904-3901-80 ",.01)
 ;;00904-3901-80
 ;;9002226.02101,"624,00904-3901-80 ",.02)
 ;;00904-3901-80
 ;;9002226.02101,"624,00904-3902-40 ",.01)
 ;;00904-3902-40
 ;;9002226.02101,"624,00904-3902-40 ",.02)
 ;;00904-3902-40
 ;;9002226.02101,"624,00904-3902-60 ",.01)
 ;;00904-3902-60
 ;;9002226.02101,"624,00904-3902-60 ",.02)
 ;;00904-3902-60
 ;;9002226.02101,"624,00904-3902-61 ",.01)
 ;;00904-3902-61
 ;;9002226.02101,"624,00904-3902-61 ",.02)
 ;;00904-3902-61
 ;;9002226.02101,"624,00904-3902-80 ",.01)
 ;;00904-3902-80
 ;;9002226.02101,"624,00904-3902-80 ",.02)
 ;;00904-3902-80
 ;;9002226.02101,"624,00904-3903-40 ",.01)
 ;;00904-3903-40
 ;;9002226.02101,"624,00904-3903-40 ",.02)
 ;;00904-3903-40
 ;;9002226.02101,"624,00904-3903-60 ",.01)
 ;;00904-3903-60
 ;;9002226.02101,"624,00904-3903-60 ",.02)
 ;;00904-3903-60
 ;;9002226.02101,"624,00904-3903-80 ",.01)
 ;;00904-3903-80
 ;;9002226.02101,"624,00904-3903-80 ",.02)
 ;;00904-3903-80
 ;;9002226.02101,"624,10019-0004-44 ",.01)
 ;;10019-0004-44
 ;;9002226.02101,"624,10019-0004-44 ",.02)
 ;;10019-0004-44
 ;;9002226.02101,"624,10019-0005-42 ",.01)
 ;;10019-0005-42
 ;;9002226.02101,"624,10019-0005-42 ",.02)
 ;;10019-0005-42
 ;;9002226.02101,"624,10019-0005-67 ",.01)
 ;;10019-0005-67
 ;;9002226.02101,"624,10019-0005-67 ",.02)
 ;;10019-0005-67
 ;;9002226.02101,"624,12280-0006-00 ",.01)
 ;;12280-0006-00
 ;;9002226.02101,"624,12280-0006-00 ",.02)
 ;;12280-0006-00
 ;;9002226.02101,"624,12280-0219-00 ",.01)
 ;;12280-0219-00
 ;;9002226.02101,"624,12280-0219-00 ",.02)
 ;;12280-0219-00
 ;;9002226.02101,"624,49884-0958-01 ",.01)
 ;;49884-0958-01
 ;;9002226.02101,"624,49884-0958-01 ",.02)
 ;;49884-0958-01
 ;;9002226.02101,"624,49884-0959-01 ",.01)
 ;;49884-0959-01
 ;;9002226.02101,"624,49884-0959-01 ",.02)
 ;;49884-0959-01
 ;;9002226.02101,"624,49884-0960-01 ",.01)
 ;;49884-0960-01
 ;;9002226.02101,"624,49884-0960-01 ",.02)
 ;;49884-0960-01
 ;;9002226.02101,"624,49884-0961-01 ",.01)
 ;;49884-0961-01
 ;;9002226.02101,"624,49884-0961-01 ",.02)
 ;;49884-0961-01
 ;;9002226.02101,"624,49884-0962-01 ",.01)
 ;;49884-0962-01
 ;;9002226.02101,"624,49884-0962-01 ",.02)
 ;;49884-0962-01
 ;;9002226.02101,"624,51079-0141-20 ",.01)
 ;;51079-0141-20
 ;;9002226.02101,"624,51079-0141-20 ",.02)
 ;;51079-0141-20
