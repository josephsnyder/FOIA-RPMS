BGP06A40 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"974,49884-0511-01 ",.01)
 ;;49884-0511-01
 ;;9002226.02101,"974,49884-0511-01 ",.02)
 ;;49884-0511-01
 ;;9002226.02101,"974,49884-0512-01 ",.01)
 ;;49884-0512-01
 ;;9002226.02101,"974,49884-0512-01 ",.02)
 ;;49884-0512-01
 ;;9002226.02101,"974,49884-0513-03 ",.01)
 ;;49884-0513-03
 ;;9002226.02101,"974,49884-0513-03 ",.02)
 ;;49884-0513-03
 ;;9002226.02101,"974,49884-0579-01 ",.01)
 ;;49884-0579-01
 ;;9002226.02101,"974,49884-0579-01 ",.02)
 ;;49884-0579-01
 ;;9002226.02101,"974,49884-0579-10 ",.01)
 ;;49884-0579-10
 ;;9002226.02101,"974,49884-0579-10 ",.02)
 ;;49884-0579-10
 ;;9002226.02101,"974,49884-0637-01 ",.01)
 ;;49884-0637-01
 ;;9002226.02101,"974,49884-0637-01 ",.02)
 ;;49884-0637-01
 ;;9002226.02101,"974,49884-0637-05 ",.01)
 ;;49884-0637-05
 ;;9002226.02101,"974,49884-0637-05 ",.02)
 ;;49884-0637-05
 ;;9002226.02101,"974,49884-0637-74 ",.01)
 ;;49884-0637-74
 ;;9002226.02101,"974,49884-0637-74 ",.02)
 ;;49884-0637-74
 ;;9002226.02101,"974,49884-0638-01 ",.01)
 ;;49884-0638-01
 ;;9002226.02101,"974,49884-0638-01 ",.02)
 ;;49884-0638-01
 ;;9002226.02101,"974,49884-0638-05 ",.01)
 ;;49884-0638-05
 ;;9002226.02101,"974,49884-0638-05 ",.02)
 ;;49884-0638-05
 ;;9002226.02101,"974,49884-0638-74 ",.01)
 ;;49884-0638-74
 ;;9002226.02101,"974,49884-0638-74 ",.02)
 ;;49884-0638-74
 ;;9002226.02101,"974,49884-0639-03 ",.01)
 ;;49884-0639-03
 ;;9002226.02101,"974,49884-0639-03 ",.02)
 ;;49884-0639-03
 ;;9002226.02101,"974,49884-0639-05 ",.01)
 ;;49884-0639-05
 ;;9002226.02101,"974,49884-0639-05 ",.02)
 ;;49884-0639-05
 ;;9002226.02101,"974,49884-0639-74 ",.01)
 ;;49884-0639-74
 ;;9002226.02101,"974,49884-0639-74 ",.02)
 ;;49884-0639-74
 ;;9002226.02101,"974,49884-0643-01 ",.01)
 ;;49884-0643-01
 ;;9002226.02101,"974,49884-0643-01 ",.02)
 ;;49884-0643-01
 ;;9002226.02101,"974,49884-0644-03 ",.01)
 ;;49884-0644-03
 ;;9002226.02101,"974,49884-0644-03 ",.02)
 ;;49884-0644-03
 ;;9002226.02101,"974,49884-0684-01 ",.01)
 ;;49884-0684-01
 ;;9002226.02101,"974,49884-0684-01 ",.02)
 ;;49884-0684-01
 ;;9002226.02101,"974,49884-0726-01 ",.01)
 ;;49884-0726-01
 ;;9002226.02101,"974,49884-0726-01 ",.02)
 ;;49884-0726-01
 ;;9002226.02101,"974,49884-0727-03 ",.01)
 ;;49884-0727-03
 ;;9002226.02101,"974,49884-0727-03 ",.02)
 ;;49884-0727-03
 ;;9002226.02101,"974,49884-0727-04 ",.01)
 ;;49884-0727-04
 ;;9002226.02101,"974,49884-0727-04 ",.02)
 ;;49884-0727-04
 ;;9002226.02101,"974,49884-0797-01 ",.01)
 ;;49884-0797-01
 ;;9002226.02101,"974,49884-0797-01 ",.02)
 ;;49884-0797-01
 ;;9002226.02101,"974,49884-0798-01 ",.01)
 ;;49884-0798-01
 ;;9002226.02101,"974,49884-0798-01 ",.02)
 ;;49884-0798-01
 ;;9002226.02101,"974,49884-0799-33 ",.01)
 ;;49884-0799-33
 ;;9002226.02101,"974,49884-0799-33 ",.02)
 ;;49884-0799-33
 ;;9002226.02101,"974,49999-0015-00 ",.01)
 ;;49999-0015-00
 ;;9002226.02101,"974,49999-0015-00 ",.02)
 ;;49999-0015-00
 ;;9002226.02101,"974,49999-0015-06 ",.01)
 ;;49999-0015-06
 ;;9002226.02101,"974,49999-0015-06 ",.02)
 ;;49999-0015-06
 ;;9002226.02101,"974,49999-0015-08 ",.01)
 ;;49999-0015-08
 ;;9002226.02101,"974,49999-0015-08 ",.02)
 ;;49999-0015-08
 ;;9002226.02101,"974,49999-0015-12 ",.01)
 ;;49999-0015-12
 ;;9002226.02101,"974,49999-0015-12 ",.02)
 ;;49999-0015-12
 ;;9002226.02101,"974,49999-0015-15 ",.01)
 ;;49999-0015-15
 ;;9002226.02101,"974,49999-0015-15 ",.02)
 ;;49999-0015-15
 ;;9002226.02101,"974,49999-0015-20 ",.01)
 ;;49999-0015-20
 ;;9002226.02101,"974,49999-0015-20 ",.02)
 ;;49999-0015-20
 ;;9002226.02101,"974,49999-0015-21 ",.01)
 ;;49999-0015-21
 ;;9002226.02101,"974,49999-0015-21 ",.02)
 ;;49999-0015-21
 ;;9002226.02101,"974,49999-0015-28 ",.01)
 ;;49999-0015-28
 ;;9002226.02101,"974,49999-0015-28 ",.02)
 ;;49999-0015-28
 ;;9002226.02101,"974,49999-0015-30 ",.01)
 ;;49999-0015-30
 ;;9002226.02101,"974,49999-0015-30 ",.02)
 ;;49999-0015-30
 ;;9002226.02101,"974,49999-0015-40 ",.01)
 ;;49999-0015-40
 ;;9002226.02101,"974,49999-0015-40 ",.02)
 ;;49999-0015-40
 ;;9002226.02101,"974,49999-0015-45 ",.01)
 ;;49999-0015-45
 ;;9002226.02101,"974,49999-0015-45 ",.02)
 ;;49999-0015-45
 ;;9002226.02101,"974,49999-0016-04 ",.01)
 ;;49999-0016-04
 ;;9002226.02101,"974,49999-0016-04 ",.02)
 ;;49999-0016-04
 ;;9002226.02101,"974,49999-0016-21 ",.01)
 ;;49999-0016-21
 ;;9002226.02101,"974,49999-0016-21 ",.02)
 ;;49999-0016-21
 ;;9002226.02101,"974,49999-0016-30 ",.01)
 ;;49999-0016-30
 ;;9002226.02101,"974,49999-0016-30 ",.02)
 ;;49999-0016-30
 ;;9002226.02101,"974,49999-0016-40 ",.01)
 ;;49999-0016-40
 ;;9002226.02101,"974,49999-0016-40 ",.02)
 ;;49999-0016-40
 ;;9002226.02101,"974,49999-0033-30 ",.01)
 ;;49999-0033-30
 ;;9002226.02101,"974,49999-0033-30 ",.02)
 ;;49999-0033-30
 ;;9002226.02101,"974,49999-0260-15 ",.01)
 ;;49999-0260-15
 ;;9002226.02101,"974,49999-0260-15 ",.02)
 ;;49999-0260-15
 ;;9002226.02101,"974,49999-0366-01 ",.01)
 ;;49999-0366-01
 ;;9002226.02101,"974,49999-0366-01 ",.02)
 ;;49999-0366-01
 ;;9002226.02101,"974,50111-0341-01 ",.01)
 ;;50111-0341-01
 ;;9002226.02101,"974,50111-0341-01 ",.02)
 ;;50111-0341-01
 ;;9002226.02101,"974,50111-0341-02 ",.01)
 ;;50111-0341-02
 ;;9002226.02101,"974,50111-0341-02 ",.02)
 ;;50111-0341-02
 ;;9002226.02101,"974,50111-0342-01 ",.01)
 ;;50111-0342-01
 ;;9002226.02101,"974,50111-0342-01 ",.02)
 ;;50111-0342-01
 ;;9002226.02101,"974,50111-0342-02 ",.01)
 ;;50111-0342-02
 ;;9002226.02101,"974,50111-0342-02 ",.02)
 ;;50111-0342-02
 ;;9002226.02101,"974,50111-0767-28 ",.01)
 ;;50111-0767-28
 ;;9002226.02101,"974,50111-0767-28 ",.02)
 ;;50111-0767-28
 ;;9002226.02101,"974,50111-0787-10 ",.01)
 ;;50111-0787-10
 ;;9002226.02101,"974,50111-0787-10 ",.02)
 ;;50111-0787-10
 ;;9002226.02101,"974,50111-0787-52 ",.01)
 ;;50111-0787-52
 ;;9002226.02101,"974,50111-0787-52 ",.02)
 ;;50111-0787-52
 ;;9002226.02101,"974,50111-0787-66 ",.01)
 ;;50111-0787-66
 ;;9002226.02101,"974,50111-0787-66 ",.02)
 ;;50111-0787-66
 ;;9002226.02101,"974,50111-0788-10 ",.01)
 ;;50111-0788-10
 ;;9002226.02101,"974,50111-0788-10 ",.02)
 ;;50111-0788-10
 ;;9002226.02101,"974,50111-0788-52 ",.01)
 ;;50111-0788-52
 ;;9002226.02101,"974,50111-0788-52 ",.02)
 ;;50111-0788-52
 ;;9002226.02101,"974,50111-0788-67 ",.01)
 ;;50111-0788-67
 ;;9002226.02101,"974,50111-0788-67 ",.02)
 ;;50111-0788-67
 ;;9002226.02101,"974,50111-0789-10 ",.01)
 ;;50111-0789-10
 ;;9002226.02101,"974,50111-0789-10 ",.02)
 ;;50111-0789-10
 ;;9002226.02101,"974,50111-0791-20 ",.01)
 ;;50111-0791-20
 ;;9002226.02101,"974,50111-0791-20 ",.02)
 ;;50111-0791-20
 ;;9002226.02101,"974,50111-0792-22 ",.01)
 ;;50111-0792-22
 ;;9002226.02101,"974,50111-0792-22 ",.02)
 ;;50111-0792-22
 ;;9002226.02101,"974,50111-0793-20 ",.01)
 ;;50111-0793-20
 ;;9002226.02101,"974,50111-0793-20 ",.02)
 ;;50111-0793-20
 ;;9002226.02101,"974,50383-0823-16 ",.01)
 ;;50383-0823-16
 ;;9002226.02101,"974,50383-0823-16 ",.02)
 ;;50383-0823-16
 ;;9002226.02101,"974,50383-0824-16 ",.01)
 ;;50383-0824-16
 ;;9002226.02101,"974,50383-0824-16 ",.02)
 ;;50383-0824-16
 ;;9002226.02101,"974,50962-0302-20 ",.01)
 ;;50962-0302-20
 ;;9002226.02101,"974,50962-0302-20 ",.02)
 ;;50962-0302-20
 ;;9002226.02101,"974,50962-0302-60 ",.01)
 ;;50962-0302-60
 ;;9002226.02101,"974,50962-0302-60 ",.02)
 ;;50962-0302-60
 ;;9002226.02101,"974,50962-0302-61 ",.01)
 ;;50962-0302-61
 ;;9002226.02101,"974,50962-0302-61 ",.02)
 ;;50962-0302-61
 ;;9002226.02101,"974,51079-0016-20 ",.01)
 ;;51079-0016-20
 ;;9002226.02101,"974,51079-0016-20 ",.02)
 ;;51079-0016-20
 ;;9002226.02101,"974,51079-0017-20 ",.01)
 ;;51079-0017-20
 ;;9002226.02101,"974,51079-0017-20 ",.02)
 ;;51079-0017-20
 ;;9002226.02101,"974,51079-0128-20 ",.01)
 ;;51079-0128-20
 ;;9002226.02101,"974,51079-0128-20 ",.02)
 ;;51079-0128-20
 ;;9002226.02101,"974,51079-0128-90 ",.01)
 ;;51079-0128-90
 ;;9002226.02101,"974,51079-0128-90 ",.02)
 ;;51079-0128-90
 ;;9002226.02101,"974,51079-0218-20 ",.01)
 ;;51079-0218-20
 ;;9002226.02101,"974,51079-0218-20 ",.02)
 ;;51079-0218-20
 ;;9002226.02101,"974,51079-0233-20 ",.01)
 ;;51079-0233-20
 ;;9002226.02101,"974,51079-0233-20 ",.02)
 ;;51079-0233-20
 ;;9002226.02101,"974,51079-0234-20 ",.01)
 ;;51079-0234-20
 ;;9002226.02101,"974,51079-0234-20 ",.02)
 ;;51079-0234-20
 ;;9002226.02101,"974,51079-0265-20 ",.01)
 ;;51079-0265-20
 ;;9002226.02101,"974,51079-0265-20 ",.02)
 ;;51079-0265-20
 ;;9002226.02101,"974,51079-0267-20 ",.01)
 ;;51079-0267-20
 ;;9002226.02101,"974,51079-0267-20 ",.02)
 ;;51079-0267-20
 ;;9002226.02101,"974,51079-0522-20 ",.01)
 ;;51079-0522-20
 ;;9002226.02101,"974,51079-0522-20 ",.02)
 ;;51079-0522-20
 ;;9002226.02101,"974,51079-0554-20 ",.01)
 ;;51079-0554-20
 ;;9002226.02101,"974,51079-0554-20 ",.02)
 ;;51079-0554-20
 ;;9002226.02101,"974,51079-0598-19 ",.01)
 ;;51079-0598-19
 ;;9002226.02101,"974,51079-0598-19 ",.02)
 ;;51079-0598-19
 ;;9002226.02101,"974,51079-0598-20 ",.01)
 ;;51079-0598-20
 ;;9002226.02101,"974,51079-0598-20 ",.02)
 ;;51079-0598-20
 ;;9002226.02101,"974,51079-0600-20 ",.01)
 ;;51079-0600-20
 ;;9002226.02101,"974,51079-0600-20 ",.02)
 ;;51079-0600-20
 ;;9002226.02101,"974,51079-0601-20 ",.01)
 ;;51079-0601-20
 ;;9002226.02101,"974,51079-0601-20 ",.02)
 ;;51079-0601-20
 ;;9002226.02101,"974,51079-0604-20 ",.01)
 ;;51079-0604-20
 ;;9002226.02101,"974,51079-0604-20 ",.02)
 ;;51079-0604-20
 ;;9002226.02101,"974,51079-0605-20 ",.01)
 ;;51079-0605-20
 ;;9002226.02101,"974,51079-0605-20 ",.02)
 ;;51079-0605-20
 ;;9002226.02101,"974,51079-0615-20 ",.01)
 ;;51079-0615-20
 ;;9002226.02101,"974,51079-0615-20 ",.02)
 ;;51079-0615-20
 ;;9002226.02101,"974,51079-0616-20 ",.01)
 ;;51079-0616-20
 ;;9002226.02101,"974,51079-0616-20 ",.02)
 ;;51079-0616-20
 ;;9002226.02101,"974,51079-0618-20 ",.01)
 ;;51079-0618-20
 ;;9002226.02101,"974,51079-0618-20 ",.02)
 ;;51079-0618-20
 ;;9002226.02101,"974,51479-0035-03 ",.01)
 ;;51479-0035-03
 ;;9002226.02101,"974,51479-0035-03 ",.02)
 ;;51479-0035-03
 ;;9002226.02101,"974,51479-0035-60 ",.01)
 ;;51479-0035-60
 ;;9002226.02101,"974,51479-0035-60 ",.02)
 ;;51479-0035-60
 ;;9002226.02101,"974,51479-0036-60 ",.01)
 ;;51479-0036-60
 ;;9002226.02101,"974,51479-0036-60 ",.02)
 ;;51479-0036-60
 ;;9002226.02101,"974,51641-0111-64 ",.01)
 ;;51641-0111-64
 ;;9002226.02101,"974,51641-0111-64 ",.02)
 ;;51641-0111-64
 ;;9002226.02101,"974,51641-0111-66 ",.01)
 ;;51641-0111-66
 ;;9002226.02101,"974,51641-0111-66 ",.02)
 ;;51641-0111-66
 ;;9002226.02101,"974,51641-0111-68 ",.01)
 ;;51641-0111-68
 ;;9002226.02101,"974,51641-0111-68 ",.02)
 ;;51641-0111-68
 ;;9002226.02101,"974,51655-0009-29 ",.01)
 ;;51655-0009-29
 ;;9002226.02101,"974,51655-0009-29 ",.02)
 ;;51655-0009-29
 ;;9002226.02101,"974,51655-0009-51 ",.01)
 ;;51655-0009-51
 ;;9002226.02101,"974,51655-0009-51 ",.02)
 ;;51655-0009-51
 ;;9002226.02101,"974,51655-0009-52 ",.01)
 ;;51655-0009-52
 ;;9002226.02101,"974,51655-0009-52 ",.02)
 ;;51655-0009-52
 ;;9002226.02101,"974,51655-0010-51 ",.01)
 ;;51655-0010-51
 ;;9002226.02101,"974,51655-0010-51 ",.02)
 ;;51655-0010-51
 ;;9002226.02101,"974,51655-0024-29 ",.01)
 ;;51655-0024-29
 ;;9002226.02101,"974,51655-0024-29 ",.02)
 ;;51655-0024-29
 ;;9002226.02101,"974,51655-0024-51 ",.01)
 ;;51655-0024-51
 ;;9002226.02101,"974,51655-0024-51 ",.02)
 ;;51655-0024-51
 ;;9002226.02101,"974,51655-0025-51 ",.01)
 ;;51655-0025-51
 ;;9002226.02101,"974,51655-0025-51 ",.02)
 ;;51655-0025-51
 ;;9002226.02101,"974,51655-0075-24 ",.01)
 ;;51655-0075-24
 ;;9002226.02101,"974,51655-0075-24 ",.02)
 ;;51655-0075-24
 ;;9002226.02101,"974,51655-0075-51 ",.01)
 ;;51655-0075-51
 ;;9002226.02101,"974,51655-0075-51 ",.02)
 ;;51655-0075-51
 ;;9002226.02101,"974,51655-0097-29 ",.01)
 ;;51655-0097-29
 ;;9002226.02101,"974,51655-0097-29 ",.02)
 ;;51655-0097-29
 ;;9002226.02101,"974,51655-0097-51 ",.01)
 ;;51655-0097-51
 ;;9002226.02101,"974,51655-0097-51 ",.02)
 ;;51655-0097-51
 ;;9002226.02101,"974,51655-0098-29 ",.01)
 ;;51655-0098-29
 ;;9002226.02101,"974,51655-0098-29 ",.02)
 ;;51655-0098-29
 ;;9002226.02101,"974,51655-0098-51 ",.01)
 ;;51655-0098-51
 ;;9002226.02101,"974,51655-0098-51 ",.02)
 ;;51655-0098-51
 ;;9002226.02101,"974,51655-0098-95 ",.01)
 ;;51655-0098-95
 ;;9002226.02101,"974,51655-0098-95 ",.02)
 ;;51655-0098-95
 ;;9002226.02101,"974,51655-0104-51 ",.01)
 ;;51655-0104-51
 ;;9002226.02101,"974,51655-0104-51 ",.02)
 ;;51655-0104-51
 ;;9002226.02101,"974,51655-0112-24 ",.01)
 ;;51655-0112-24
 ;;9002226.02101,"974,51655-0112-24 ",.02)
 ;;51655-0112-24
 ;;9002226.02101,"974,51655-0112-25 ",.01)
 ;;51655-0112-25
 ;;9002226.02101,"974,51655-0112-25 ",.02)
 ;;51655-0112-25
 ;;9002226.02101,"974,51655-0112-29 ",.01)
 ;;51655-0112-29
 ;;9002226.02101,"974,51655-0112-29 ",.02)
 ;;51655-0112-29
 ;;9002226.02101,"974,51655-0112-52 ",.01)
 ;;51655-0112-52
 ;;9002226.02101,"974,51655-0112-52 ",.02)
 ;;51655-0112-52
 ;;9002226.02101,"974,51655-0112-84 ",.01)
 ;;51655-0112-84
 ;;9002226.02101,"974,51655-0112-84 ",.02)
 ;;51655-0112-84
 ;;9002226.02101,"974,51655-0112-87 ",.01)
 ;;51655-0112-87
 ;;9002226.02101,"974,51655-0112-87 ",.02)
 ;;51655-0112-87
 ;;9002226.02101,"974,51655-0152-29 ",.01)
 ;;51655-0152-29
 ;;9002226.02101,"974,51655-0152-29 ",.02)
 ;;51655-0152-29
 ;;9002226.02101,"974,51655-0157-24 ",.01)
 ;;51655-0157-24
 ;;9002226.02101,"974,51655-0157-24 ",.02)
 ;;51655-0157-24
 ;;9002226.02101,"974,51655-0186-52 ",.01)
 ;;51655-0186-52
 ;;9002226.02101,"974,51655-0186-52 ",.02)
 ;;51655-0186-52
