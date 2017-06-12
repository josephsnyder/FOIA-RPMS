BGP71J11 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1795,43378-0104-08 ",.01)
 ;;43378-0104-08
 ;;9002226.02101,"1795,43378-0104-08 ",.02)
 ;;43378-0104-08
 ;;9002226.02101,"1795,43378-0105-08 ",.01)
 ;;43378-0105-08
 ;;9002226.02101,"1795,43378-0105-08 ",.02)
 ;;43378-0105-08
 ;;9002226.02101,"1795,43378-0106-08 ",.01)
 ;;43378-0106-08
 ;;9002226.02101,"1795,43378-0106-08 ",.02)
 ;;43378-0106-08
 ;;9002226.02101,"1795,43378-0114-08 ",.01)
 ;;43378-0114-08
 ;;9002226.02101,"1795,43378-0114-08 ",.02)
 ;;43378-0114-08
 ;;9002226.02101,"1795,43378-0115-08 ",.01)
 ;;43378-0115-08
 ;;9002226.02101,"1795,43378-0115-08 ",.02)
 ;;43378-0115-08
 ;;9002226.02101,"1795,43378-0116-08 ",.01)
 ;;43378-0116-08
 ;;9002226.02101,"1795,43378-0116-08 ",.02)
 ;;43378-0116-08
 ;;9002226.02101,"1795,44523-0825-01 ",.01)
 ;;44523-0825-01
 ;;9002226.02101,"1795,44523-0825-01 ",.02)
 ;;44523-0825-01
 ;;9002226.02101,"1795,45802-0758-00 ",.01)
 ;;45802-0758-00
 ;;9002226.02101,"1795,45802-0758-00 ",.02)
 ;;45802-0758-00
 ;;9002226.02101,"1795,45802-0758-30 ",.01)
 ;;45802-0758-30
 ;;9002226.02101,"1795,45802-0758-30 ",.02)
 ;;45802-0758-30
 ;;9002226.02101,"1795,45802-0759-00 ",.01)
 ;;45802-0759-00
 ;;9002226.02101,"1795,45802-0759-00 ",.02)
 ;;45802-0759-00
 ;;9002226.02101,"1795,45802-0759-30 ",.01)
 ;;45802-0759-30
 ;;9002226.02101,"1795,45802-0759-30 ",.02)
 ;;45802-0759-30
 ;;9002226.02101,"1795,47463-0045-60 ",.01)
 ;;47463-0045-60
 ;;9002226.02101,"1795,47463-0045-60 ",.02)
 ;;47463-0045-60
 ;;9002226.02101,"1795,47463-0355-90 ",.01)
 ;;47463-0355-90
 ;;9002226.02101,"1795,47463-0355-90 ",.02)
 ;;47463-0355-90
 ;;9002226.02101,"1795,47463-0367-15 ",.01)
 ;;47463-0367-15
 ;;9002226.02101,"1795,47463-0367-15 ",.02)
 ;;47463-0367-15
 ;;9002226.02101,"1795,47463-0367-30 ",.01)
 ;;47463-0367-30
 ;;9002226.02101,"1795,47463-0367-30 ",.02)
 ;;47463-0367-30
 ;;9002226.02101,"1795,47463-0367-60 ",.01)
 ;;47463-0367-60
 ;;9002226.02101,"1795,47463-0367-60 ",.02)
 ;;47463-0367-60
 ;;9002226.02101,"1795,47463-0603-00 ",.01)
 ;;47463-0603-00
 ;;9002226.02101,"1795,47463-0603-00 ",.02)
 ;;47463-0603-00
 ;;9002226.02101,"1795,47463-0603-12 ",.01)
 ;;47463-0603-12
 ;;9002226.02101,"1795,47463-0603-12 ",.02)
 ;;47463-0603-12
 ;;9002226.02101,"1795,47463-0603-15 ",.01)
 ;;47463-0603-15
 ;;9002226.02101,"1795,47463-0603-15 ",.02)
 ;;47463-0603-15
 ;;9002226.02101,"1795,47463-0603-20 ",.01)
 ;;47463-0603-20
 ;;9002226.02101,"1795,47463-0603-20 ",.02)
 ;;47463-0603-20
 ;;9002226.02101,"1795,47463-0603-30 ",.01)
 ;;47463-0603-30
 ;;9002226.02101,"1795,47463-0603-30 ",.02)
 ;;47463-0603-30
 ;;9002226.02101,"1795,47463-0603-40 ",.01)
 ;;47463-0603-40
 ;;9002226.02101,"1795,47463-0603-40 ",.02)
 ;;47463-0603-40
 ;;9002226.02101,"1795,47463-0603-60 ",.01)
 ;;47463-0603-60
 ;;9002226.02101,"1795,47463-0603-60 ",.02)
 ;;47463-0603-60
 ;;9002226.02101,"1795,47463-0603-71 ",.01)
 ;;47463-0603-71
 ;;9002226.02101,"1795,47463-0603-71 ",.02)
 ;;47463-0603-71
 ;;9002226.02101,"1795,47463-0603-90 ",.01)
 ;;47463-0603-90
 ;;9002226.02101,"1795,47463-0603-90 ",.02)
 ;;47463-0603-90
 ;;9002226.02101,"1795,47463-0604-30 ",.01)
 ;;47463-0604-30
 ;;9002226.02101,"1795,47463-0604-30 ",.02)
 ;;47463-0604-30
 ;;9002226.02101,"1795,47463-0609-30 ",.01)
 ;;47463-0609-30
 ;;9002226.02101,"1795,47463-0609-30 ",.02)
 ;;47463-0609-30
 ;;9002226.02101,"1795,47463-0609-60 ",.01)
 ;;47463-0609-60
 ;;9002226.02101,"1795,47463-0609-60 ",.02)
 ;;47463-0609-60
 ;;9002226.02101,"1795,49884-0235-33 ",.01)
 ;;49884-0235-33
 ;;9002226.02101,"1795,49884-0235-33 ",.02)
 ;;49884-0235-33
 ;;9002226.02101,"1795,49884-0235-37 ",.01)
 ;;49884-0235-37
 ;;9002226.02101,"1795,49884-0235-37 ",.02)
 ;;49884-0235-37
 ;;9002226.02101,"1795,49999-0024-00 ",.01)
 ;;49999-0024-00
 ;;9002226.02101,"1795,49999-0024-00 ",.02)
 ;;49999-0024-00
 ;;9002226.02101,"1795,49999-0024-12 ",.01)
 ;;49999-0024-12
 ;;9002226.02101,"1795,49999-0024-12 ",.02)
 ;;49999-0024-12
 ;;9002226.02101,"1795,49999-0024-20 ",.01)
 ;;49999-0024-20
 ;;9002226.02101,"1795,49999-0024-20 ",.02)
 ;;49999-0024-20
 ;;9002226.02101,"1795,49999-0024-24 ",.01)
 ;;49999-0024-24
 ;;9002226.02101,"1795,49999-0024-24 ",.02)
 ;;49999-0024-24
 ;;9002226.02101,"1795,49999-0024-30 ",.01)
 ;;49999-0024-30
 ;;9002226.02101,"1795,49999-0024-30 ",.02)
 ;;49999-0024-30
 ;;9002226.02101,"1795,49999-0024-50 ",.01)
 ;;49999-0024-50
 ;;9002226.02101,"1795,49999-0024-50 ",.02)
 ;;49999-0024-50
 ;;9002226.02101,"1795,49999-0024-60 ",.01)
 ;;49999-0024-60
 ;;9002226.02101,"1795,49999-0024-60 ",.02)
 ;;49999-0024-60
 ;;9002226.02101,"1795,49999-0024-90 ",.01)
 ;;49999-0024-90
 ;;9002226.02101,"1795,49999-0024-90 ",.02)
 ;;49999-0024-90
 ;;9002226.02101,"1795,49999-0035-24 ",.01)
 ;;49999-0035-24
 ;;9002226.02101,"1795,49999-0035-24 ",.02)
 ;;49999-0035-24
 ;;9002226.02101,"1795,49999-0035-30 ",.01)
 ;;49999-0035-30
 ;;9002226.02101,"1795,49999-0035-30 ",.02)
 ;;49999-0035-30
 ;;9002226.02101,"1795,49999-0035-60 ",.01)
 ;;49999-0035-60
 ;;9002226.02101,"1795,49999-0035-60 ",.02)
 ;;49999-0035-60
 ;;9002226.02101,"1795,49999-0036-12 ",.01)
 ;;49999-0036-12
 ;;9002226.02101,"1795,49999-0036-12 ",.02)
 ;;49999-0036-12
 ;;9002226.02101,"1795,49999-0036-60 ",.01)
 ;;49999-0036-60
 ;;9002226.02101,"1795,49999-0036-60 ",.02)
 ;;49999-0036-60
 ;;9002226.02101,"1795,49999-0090-05 ",.01)
 ;;49999-0090-05
 ;;9002226.02101,"1795,49999-0090-05 ",.02)
 ;;49999-0090-05
 ;;9002226.02101,"1795,49999-0090-10 ",.01)
 ;;49999-0090-10
 ;;9002226.02101,"1795,49999-0090-10 ",.02)
 ;;49999-0090-10
 ;;9002226.02101,"1795,49999-0090-12 ",.01)
 ;;49999-0090-12
 ;;9002226.02101,"1795,49999-0090-12 ",.02)
 ;;49999-0090-12
 ;;9002226.02101,"1795,49999-0090-15 ",.01)
 ;;49999-0090-15
 ;;9002226.02101,"1795,49999-0090-15 ",.02)
 ;;49999-0090-15
 ;;9002226.02101,"1795,49999-0090-20 ",.01)
 ;;49999-0090-20
 ;;9002226.02101,"1795,49999-0090-20 ",.02)
 ;;49999-0090-20
 ;;9002226.02101,"1795,49999-0090-30 ",.01)
 ;;49999-0090-30
 ;;9002226.02101,"1795,49999-0090-30 ",.02)
 ;;49999-0090-30
 ;;9002226.02101,"1795,49999-0090-60 ",.01)
 ;;49999-0090-60
 ;;9002226.02101,"1795,49999-0090-60 ",.02)
 ;;49999-0090-60
 ;;9002226.02101,"1795,49999-0090-90 ",.01)
 ;;49999-0090-90
 ;;9002226.02101,"1795,49999-0090-90 ",.02)
 ;;49999-0090-90
 ;;9002226.02101,"1795,49999-0091-04 ",.01)
 ;;49999-0091-04
 ;;9002226.02101,"1795,49999-0091-04 ",.02)
 ;;49999-0091-04
 ;;9002226.02101,"1795,49999-0091-30 ",.01)
 ;;49999-0091-30
 ;;9002226.02101,"1795,49999-0091-30 ",.02)
 ;;49999-0091-30
 ;;9002226.02101,"1795,49999-0152-04 ",.01)
 ;;49999-0152-04
 ;;9002226.02101,"1795,49999-0152-04 ",.02)
 ;;49999-0152-04
 ;;9002226.02101,"1795,49999-0262-04 ",.01)
 ;;49999-0262-04
 ;;9002226.02101,"1795,49999-0262-04 ",.02)
 ;;49999-0262-04
 ;;9002226.02101,"1795,49999-0314-04 ",.01)
 ;;49999-0314-04
 ;;9002226.02101,"1795,49999-0314-04 ",.02)
 ;;49999-0314-04
 ;;9002226.02101,"1795,49999-0326-04 ",.01)
 ;;49999-0326-04
 ;;9002226.02101,"1795,49999-0326-04 ",.02)
 ;;49999-0326-04
 ;;9002226.02101,"1795,49999-0339-12 ",.01)
 ;;49999-0339-12
 ;;9002226.02101,"1795,49999-0339-12 ",.02)
 ;;49999-0339-12
 ;;9002226.02101,"1795,49999-0340-12 ",.01)
 ;;49999-0340-12
 ;;9002226.02101,"1795,49999-0340-12 ",.02)
 ;;49999-0340-12
 ;;9002226.02101,"1795,49999-0493-18 ",.01)
 ;;49999-0493-18
 ;;9002226.02101,"1795,49999-0493-18 ",.02)
 ;;49999-0493-18
 ;;9002226.02101,"1795,49999-0594-30 ",.01)
 ;;49999-0594-30
 ;;9002226.02101,"1795,49999-0594-30 ",.02)
 ;;49999-0594-30
 ;;9002226.02101,"1795,49999-0594-90 ",.01)
 ;;49999-0594-90
 ;;9002226.02101,"1795,49999-0594-90 ",.02)
 ;;49999-0594-90
 ;;9002226.02101,"1795,49999-0657-04 ",.01)
 ;;49999-0657-04
 ;;9002226.02101,"1795,49999-0657-04 ",.02)
 ;;49999-0657-04
 ;;9002226.02101,"1795,49999-0701-20 ",.01)
 ;;49999-0701-20
 ;;9002226.02101,"1795,49999-0701-20 ",.02)
 ;;49999-0701-20
 ;;9002226.02101,"1795,49999-0701-30 ",.01)
 ;;49999-0701-30
 ;;9002226.02101,"1795,49999-0701-30 ",.02)
 ;;49999-0701-30
 ;;9002226.02101,"1795,49999-0768-20 ",.01)
 ;;49999-0768-20
 ;;9002226.02101,"1795,49999-0768-20 ",.02)
 ;;49999-0768-20
 ;;9002226.02101,"1795,49999-0768-30 ",.01)
 ;;49999-0768-30
 ;;9002226.02101,"1795,49999-0768-30 ",.02)
 ;;49999-0768-30
 ;;9002226.02101,"1795,49999-0902-20 ",.01)
 ;;49999-0902-20
 ;;9002226.02101,"1795,49999-0902-20 ",.02)
 ;;49999-0902-20
 ;;9002226.02101,"1795,49999-0902-30 ",.01)
 ;;49999-0902-30
 ;;9002226.02101,"1795,49999-0902-30 ",.02)
 ;;49999-0902-30
 ;;9002226.02101,"1795,50111-0393-01 ",.01)
 ;;50111-0393-01
 ;;9002226.02101,"1795,50111-0393-01 ",.02)
 ;;50111-0393-01
 ;;9002226.02101,"1795,50111-0394-01 ",.01)
 ;;50111-0394-01
 ;;9002226.02101,"1795,50111-0394-01 ",.02)
 ;;50111-0394-01
 ;;9002226.02101,"1795,50111-0394-03 ",.01)
 ;;50111-0394-03
 ;;9002226.02101,"1795,50111-0394-03 ",.02)
 ;;50111-0394-03
 ;;9002226.02101,"1795,50111-0395-01 ",.01)
 ;;50111-0395-01
 ;;9002226.02101,"1795,50111-0395-01 ",.02)
 ;;50111-0395-01
 ;;9002226.02101,"1795,50111-0395-03 ",.01)
 ;;50111-0395-03
 ;;9002226.02101,"1795,50111-0395-03 ",.02)
 ;;50111-0395-03
 ;;9002226.02101,"1795,50268-0115-11 ",.01)
 ;;50268-0115-11
 ;;9002226.02101,"1795,50268-0115-11 ",.02)
 ;;50268-0115-11
 ;;9002226.02101,"1795,50268-0115-15 ",.01)
 ;;50268-0115-15
 ;;9002226.02101,"1795,50268-0115-15 ",.02)
 ;;50268-0115-15
 ;;9002226.02101,"1795,50268-0116-11 ",.01)
 ;;50268-0116-11
 ;;9002226.02101,"1795,50268-0116-11 ",.02)
 ;;50268-0116-11
 ;;9002226.02101,"1795,50268-0116-15 ",.01)
 ;;50268-0116-15
 ;;9002226.02101,"1795,50268-0116-15 ",.02)
 ;;50268-0116-15
 ;;9002226.02101,"1795,50268-0117-11 ",.01)
 ;;50268-0117-11
 ;;9002226.02101,"1795,50268-0117-11 ",.02)
 ;;50268-0117-11
 ;;9002226.02101,"1795,50268-0117-15 ",.01)
 ;;50268-0117-15
 ;;9002226.02101,"1795,50268-0117-15 ",.02)
 ;;50268-0117-15
 ;;9002226.02101,"1795,50383-0796-16 ",.01)
 ;;50383-0796-16
 ;;9002226.02101,"1795,50383-0796-16 ",.02)
 ;;50383-0796-16
 ;;9002226.02101,"1795,50383-0801-16 ",.01)
 ;;50383-0801-16
 ;;9002226.02101,"1795,50383-0801-16 ",.02)
 ;;50383-0801-16
 ;;9002226.02101,"1795,50383-0802-16 ",.01)
 ;;50383-0802-16
 ;;9002226.02101,"1795,50383-0802-16 ",.02)
 ;;50383-0802-16
 ;;9002226.02101,"1795,50383-0803-16 ",.01)
 ;;50383-0803-16
 ;;9002226.02101,"1795,50383-0803-16 ",.02)
 ;;50383-0803-16
 ;;9002226.02101,"1795,50383-0804-16 ",.01)
 ;;50383-0804-16
 ;;9002226.02101,"1795,50383-0804-16 ",.02)
 ;;50383-0804-16
 ;;9002226.02101,"1795,50383-0805-04 ",.01)
 ;;50383-0805-04
 ;;9002226.02101,"1795,50383-0805-04 ",.02)
 ;;50383-0805-04
 ;;9002226.02101,"1795,50383-0805-16 ",.01)
 ;;50383-0805-16
 ;;9002226.02101,"1795,50383-0805-16 ",.02)
 ;;50383-0805-16
 ;;9002226.02101,"1795,50436-1867-00 ",.01)
 ;;50436-1867-00
 ;;9002226.02101,"1795,50436-1867-00 ",.02)
 ;;50436-1867-00
 ;;9002226.02101,"1795,50436-3875-03 ",.01)
 ;;50436-3875-03
 ;;9002226.02101,"1795,50436-3875-03 ",.02)
 ;;50436-3875-03
 ;;9002226.02101,"1795,50436-4379-02 ",.01)
 ;;50436-4379-02
 ;;9002226.02101,"1795,50436-4379-02 ",.02)
 ;;50436-4379-02
 ;;9002226.02101,"1795,50436-4379-03 ",.01)
 ;;50436-4379-03
 ;;9002226.02101,"1795,50436-4379-03 ",.02)
 ;;50436-4379-03
 ;;9002226.02101,"1795,50436-4379-05 ",.01)
 ;;50436-4379-05
 ;;9002226.02101,"1795,50436-4379-05 ",.02)
 ;;50436-4379-05
 ;;9002226.02101,"1795,50742-0190-01 ",.01)
 ;;50742-0190-01
 ;;9002226.02101,"1795,50742-0190-01 ",.02)
 ;;50742-0190-01
 ;;9002226.02101,"1795,50742-0190-10 ",.01)
 ;;50742-0190-10
 ;;9002226.02101,"1795,50742-0190-10 ",.02)
 ;;50742-0190-10
 ;;9002226.02101,"1795,50991-0320-16 ",.01)
 ;;50991-0320-16
