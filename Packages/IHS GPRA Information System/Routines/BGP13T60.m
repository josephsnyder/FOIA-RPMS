BGP13T60 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"992,63874-0430-28 ",.02)
 ;;63874-0430-28
 ;;9002226.02101,"992,63874-0430-30 ",.01)
 ;;63874-0430-30
 ;;9002226.02101,"992,63874-0430-30 ",.02)
 ;;63874-0430-30
 ;;9002226.02101,"992,63874-0430-40 ",.01)
 ;;63874-0430-40
 ;;9002226.02101,"992,63874-0430-40 ",.02)
 ;;63874-0430-40
 ;;9002226.02101,"992,63874-0430-50 ",.01)
 ;;63874-0430-50
 ;;9002226.02101,"992,63874-0430-50 ",.02)
 ;;63874-0430-50
 ;;9002226.02101,"992,63874-0430-60 ",.01)
 ;;63874-0430-60
 ;;9002226.02101,"992,63874-0430-60 ",.02)
 ;;63874-0430-60
 ;;9002226.02101,"992,63874-0430-90 ",.01)
 ;;63874-0430-90
 ;;9002226.02101,"992,63874-0430-90 ",.02)
 ;;63874-0430-90
 ;;9002226.02101,"992,63874-0537-01 ",.01)
 ;;63874-0537-01
 ;;9002226.02101,"992,63874-0537-01 ",.02)
 ;;63874-0537-01
 ;;9002226.02101,"992,63874-0537-04 ",.01)
 ;;63874-0537-04
 ;;9002226.02101,"992,63874-0537-04 ",.02)
 ;;63874-0537-04
 ;;9002226.02101,"992,63874-0537-10 ",.01)
 ;;63874-0537-10
 ;;9002226.02101,"992,63874-0537-10 ",.02)
 ;;63874-0537-10
 ;;9002226.02101,"992,63874-0537-12 ",.01)
 ;;63874-0537-12
 ;;9002226.02101,"992,63874-0537-12 ",.02)
 ;;63874-0537-12
 ;;9002226.02101,"992,63874-0537-14 ",.01)
 ;;63874-0537-14
 ;;9002226.02101,"992,63874-0537-14 ",.02)
 ;;63874-0537-14
 ;;9002226.02101,"992,63874-0537-15 ",.01)
 ;;63874-0537-15
 ;;9002226.02101,"992,63874-0537-15 ",.02)
 ;;63874-0537-15
 ;;9002226.02101,"992,63874-0537-20 ",.01)
 ;;63874-0537-20
 ;;9002226.02101,"992,63874-0537-20 ",.02)
 ;;63874-0537-20
 ;;9002226.02101,"992,63874-0537-30 ",.01)
 ;;63874-0537-30
 ;;9002226.02101,"992,63874-0537-30 ",.02)
 ;;63874-0537-30
 ;;9002226.02101,"992,63874-0537-40 ",.01)
 ;;63874-0537-40
 ;;9002226.02101,"992,63874-0537-40 ",.02)
 ;;63874-0537-40
 ;;9002226.02101,"992,63874-0537-60 ",.01)
 ;;63874-0537-60
 ;;9002226.02101,"992,63874-0537-60 ",.02)
 ;;63874-0537-60
 ;;9002226.02101,"992,63874-0537-90 ",.01)
 ;;63874-0537-90
 ;;9002226.02101,"992,63874-0537-90 ",.02)
 ;;63874-0537-90
 ;;9002226.02101,"992,63874-0538-01 ",.01)
 ;;63874-0538-01
 ;;9002226.02101,"992,63874-0538-01 ",.02)
 ;;63874-0538-01
 ;;9002226.02101,"992,63874-0538-10 ",.01)
 ;;63874-0538-10
 ;;9002226.02101,"992,63874-0538-10 ",.02)
 ;;63874-0538-10
 ;;9002226.02101,"992,63874-0538-14 ",.01)
 ;;63874-0538-14
 ;;9002226.02101,"992,63874-0538-14 ",.02)
 ;;63874-0538-14
 ;;9002226.02101,"992,63874-0538-15 ",.01)
 ;;63874-0538-15
 ;;9002226.02101,"992,63874-0538-15 ",.02)
 ;;63874-0538-15
 ;;9002226.02101,"992,63874-0538-20 ",.01)
 ;;63874-0538-20
 ;;9002226.02101,"992,63874-0538-20 ",.02)
 ;;63874-0538-20
 ;;9002226.02101,"992,63874-0538-30 ",.01)
 ;;63874-0538-30
 ;;9002226.02101,"992,63874-0538-30 ",.02)
 ;;63874-0538-30
 ;;9002226.02101,"992,63874-0538-60 ",.01)
 ;;63874-0538-60
 ;;9002226.02101,"992,63874-0538-60 ",.02)
 ;;63874-0538-60
 ;;9002226.02101,"992,63874-0540-20 ",.01)
 ;;63874-0540-20
 ;;9002226.02101,"992,63874-0540-20 ",.02)
 ;;63874-0540-20
 ;;9002226.02101,"992,63874-0540-30 ",.01)
 ;;63874-0540-30
 ;;9002226.02101,"992,63874-0540-30 ",.02)
 ;;63874-0540-30
 ;;9002226.02101,"992,63874-0540-60 ",.01)
 ;;63874-0540-60
 ;;9002226.02101,"992,63874-0540-60 ",.02)
 ;;63874-0540-60
 ;;9002226.02101,"992,63874-0542-14 ",.01)
 ;;63874-0542-14
 ;;9002226.02101,"992,63874-0542-14 ",.02)
 ;;63874-0542-14
 ;;9002226.02101,"992,63874-0542-20 ",.01)
 ;;63874-0542-20
 ;;9002226.02101,"992,63874-0542-20 ",.02)
 ;;63874-0542-20
 ;;9002226.02101,"992,63874-0542-30 ",.01)
 ;;63874-0542-30
 ;;9002226.02101,"992,63874-0542-30 ",.02)
 ;;63874-0542-30
 ;;9002226.02101,"992,63874-0542-60 ",.01)
 ;;63874-0542-60
 ;;9002226.02101,"992,63874-0542-60 ",.02)
 ;;63874-0542-60
 ;;9002226.02101,"992,63874-0555-01 ",.01)
 ;;63874-0555-01
 ;;9002226.02101,"992,63874-0555-01 ",.02)
 ;;63874-0555-01
 ;;9002226.02101,"992,63874-0555-10 ",.01)
 ;;63874-0555-10
 ;;9002226.02101,"992,63874-0555-10 ",.02)
 ;;63874-0555-10
 ;;9002226.02101,"992,63874-0555-14 ",.01)
 ;;63874-0555-14
 ;;9002226.02101,"992,63874-0555-14 ",.02)
 ;;63874-0555-14
 ;;9002226.02101,"992,63874-0555-15 ",.01)
 ;;63874-0555-15
 ;;9002226.02101,"992,63874-0555-15 ",.02)
 ;;63874-0555-15
 ;;9002226.02101,"992,63874-0555-20 ",.01)
 ;;63874-0555-20
 ;;9002226.02101,"992,63874-0555-20 ",.02)
 ;;63874-0555-20
 ;;9002226.02101,"992,63874-0555-30 ",.01)
 ;;63874-0555-30
 ;;9002226.02101,"992,63874-0555-30 ",.02)
 ;;63874-0555-30
 ;;9002226.02101,"992,63874-0555-60 ",.01)
 ;;63874-0555-60
 ;;9002226.02101,"992,63874-0555-60 ",.02)
 ;;63874-0555-60
 ;;9002226.02101,"992,63874-0560-01 ",.01)
 ;;63874-0560-01
 ;;9002226.02101,"992,63874-0560-01 ",.02)
 ;;63874-0560-01
 ;;9002226.02101,"992,63874-0560-04 ",.01)
 ;;63874-0560-04
 ;;9002226.02101,"992,63874-0560-04 ",.02)
 ;;63874-0560-04
 ;;9002226.02101,"992,63874-0560-10 ",.01)
 ;;63874-0560-10
 ;;9002226.02101,"992,63874-0560-10 ",.02)
 ;;63874-0560-10
 ;;9002226.02101,"992,63874-0560-12 ",.01)
 ;;63874-0560-12
 ;;9002226.02101,"992,63874-0560-12 ",.02)
 ;;63874-0560-12
 ;;9002226.02101,"992,63874-0560-14 ",.01)
 ;;63874-0560-14
 ;;9002226.02101,"992,63874-0560-14 ",.02)
 ;;63874-0560-14
 ;;9002226.02101,"992,63874-0560-15 ",.01)
 ;;63874-0560-15
 ;;9002226.02101,"992,63874-0560-15 ",.02)
 ;;63874-0560-15
 ;;9002226.02101,"992,63874-0560-20 ",.01)
 ;;63874-0560-20
 ;;9002226.02101,"992,63874-0560-20 ",.02)
 ;;63874-0560-20
 ;;9002226.02101,"992,63874-0560-28 ",.01)
 ;;63874-0560-28
 ;;9002226.02101,"992,63874-0560-28 ",.02)
 ;;63874-0560-28
 ;;9002226.02101,"992,63874-0560-30 ",.01)
 ;;63874-0560-30
 ;;9002226.02101,"992,63874-0560-30 ",.02)
 ;;63874-0560-30
 ;;9002226.02101,"992,63874-0560-40 ",.01)
 ;;63874-0560-40
 ;;9002226.02101,"992,63874-0560-40 ",.02)
 ;;63874-0560-40
 ;;9002226.02101,"992,63874-0560-60 ",.01)
 ;;63874-0560-60
 ;;9002226.02101,"992,63874-0560-60 ",.02)
 ;;63874-0560-60
 ;;9002226.02101,"992,63874-0560-90 ",.01)
 ;;63874-0560-90
 ;;9002226.02101,"992,63874-0560-90 ",.02)
 ;;63874-0560-90
 ;;9002226.02101,"992,63874-0567-30 ",.01)
 ;;63874-0567-30
 ;;9002226.02101,"992,63874-0567-30 ",.02)
 ;;63874-0567-30
 ;;9002226.02101,"992,63874-0567-60 ",.01)
 ;;63874-0567-60
 ;;9002226.02101,"992,63874-0567-60 ",.02)
 ;;63874-0567-60
 ;;9002226.02101,"992,63874-0573-01 ",.01)
 ;;63874-0573-01
 ;;9002226.02101,"992,63874-0573-01 ",.02)
 ;;63874-0573-01
 ;;9002226.02101,"992,63874-0573-04 ",.01)
 ;;63874-0573-04
 ;;9002226.02101,"992,63874-0573-04 ",.02)
 ;;63874-0573-04
 ;;9002226.02101,"992,63874-0573-10 ",.01)
 ;;63874-0573-10
 ;;9002226.02101,"992,63874-0573-10 ",.02)
 ;;63874-0573-10
 ;;9002226.02101,"992,63874-0573-14 ",.01)
 ;;63874-0573-14
 ;;9002226.02101,"992,63874-0573-14 ",.02)
 ;;63874-0573-14
 ;;9002226.02101,"992,63874-0573-15 ",.01)
 ;;63874-0573-15
 ;;9002226.02101,"992,63874-0573-15 ",.02)
 ;;63874-0573-15
 ;;9002226.02101,"992,63874-0573-20 ",.01)
 ;;63874-0573-20
 ;;9002226.02101,"992,63874-0573-20 ",.02)
 ;;63874-0573-20
 ;;9002226.02101,"992,63874-0573-21 ",.01)
 ;;63874-0573-21
 ;;9002226.02101,"992,63874-0573-21 ",.02)
 ;;63874-0573-21
 ;;9002226.02101,"992,63874-0573-28 ",.01)
 ;;63874-0573-28
 ;;9002226.02101,"992,63874-0573-28 ",.02)
 ;;63874-0573-28
 ;;9002226.02101,"992,63874-0573-30 ",.01)
 ;;63874-0573-30
 ;;9002226.02101,"992,63874-0573-30 ",.02)
 ;;63874-0573-30
 ;;9002226.02101,"992,63874-0573-60 ",.01)
 ;;63874-0573-60
 ;;9002226.02101,"992,63874-0573-60 ",.02)
 ;;63874-0573-60
 ;;9002226.02101,"992,63874-0573-72 ",.01)
 ;;63874-0573-72
 ;;9002226.02101,"992,63874-0573-72 ",.02)
 ;;63874-0573-72
 ;;9002226.02101,"992,63874-0573-74 ",.01)
 ;;63874-0573-74
 ;;9002226.02101,"992,63874-0573-74 ",.02)
 ;;63874-0573-74
 ;;9002226.02101,"992,63874-0573-77 ",.01)
 ;;63874-0573-77
 ;;9002226.02101,"992,63874-0573-77 ",.02)
 ;;63874-0573-77
 ;;9002226.02101,"992,63874-0573-90 ",.01)
 ;;63874-0573-90
 ;;9002226.02101,"992,63874-0573-90 ",.02)
 ;;63874-0573-90
 ;;9002226.02101,"992,63874-0574-01 ",.01)
 ;;63874-0574-01
 ;;9002226.02101,"992,63874-0574-01 ",.02)
 ;;63874-0574-01
 ;;9002226.02101,"992,63874-0574-04 ",.01)
 ;;63874-0574-04
 ;;9002226.02101,"992,63874-0574-04 ",.02)
 ;;63874-0574-04
 ;;9002226.02101,"992,63874-0574-10 ",.01)
 ;;63874-0574-10
 ;;9002226.02101,"992,63874-0574-10 ",.02)
 ;;63874-0574-10
 ;;9002226.02101,"992,63874-0574-14 ",.01)
 ;;63874-0574-14
 ;;9002226.02101,"992,63874-0574-14 ",.02)
 ;;63874-0574-14
 ;;9002226.02101,"992,63874-0574-20 ",.01)
 ;;63874-0574-20
 ;;9002226.02101,"992,63874-0574-20 ",.02)
 ;;63874-0574-20
 ;;9002226.02101,"992,63874-0574-21 ",.01)
 ;;63874-0574-21
 ;;9002226.02101,"992,63874-0574-21 ",.02)
 ;;63874-0574-21
 ;;9002226.02101,"992,63874-0574-28 ",.01)
 ;;63874-0574-28
 ;;9002226.02101,"992,63874-0574-28 ",.02)
 ;;63874-0574-28
 ;;9002226.02101,"992,63874-0574-30 ",.01)
 ;;63874-0574-30
 ;;9002226.02101,"992,63874-0574-30 ",.02)
 ;;63874-0574-30
 ;;9002226.02101,"992,63874-0574-60 ",.01)
 ;;63874-0574-60
 ;;9002226.02101,"992,63874-0574-60 ",.02)
 ;;63874-0574-60
 ;;9002226.02101,"992,63874-0574-72 ",.01)
 ;;63874-0574-72
 ;;9002226.02101,"992,63874-0574-72 ",.02)
 ;;63874-0574-72
 ;;9002226.02101,"992,63874-0574-74 ",.01)
 ;;63874-0574-74
 ;;9002226.02101,"992,63874-0574-74 ",.02)
 ;;63874-0574-74
 ;;9002226.02101,"992,63874-0574-77 ",.01)
 ;;63874-0574-77
 ;;9002226.02101,"992,63874-0574-77 ",.02)
 ;;63874-0574-77
 ;;9002226.02101,"992,63874-0574-90 ",.01)
 ;;63874-0574-90
 ;;9002226.02101,"992,63874-0574-90 ",.02)
 ;;63874-0574-90
 ;;9002226.02101,"992,63874-0579-01 ",.01)
 ;;63874-0579-01
 ;;9002226.02101,"992,63874-0579-01 ",.02)
 ;;63874-0579-01
 ;;9002226.02101,"992,63874-0579-04 ",.01)
 ;;63874-0579-04
 ;;9002226.02101,"992,63874-0579-04 ",.02)
 ;;63874-0579-04
 ;;9002226.02101,"992,63874-0579-10 ",.01)
 ;;63874-0579-10
 ;;9002226.02101,"992,63874-0579-10 ",.02)
 ;;63874-0579-10
 ;;9002226.02101,"992,63874-0579-12 ",.01)
 ;;63874-0579-12
 ;;9002226.02101,"992,63874-0579-12 ",.02)
 ;;63874-0579-12
 ;;9002226.02101,"992,63874-0579-14 ",.01)
 ;;63874-0579-14
 ;;9002226.02101,"992,63874-0579-14 ",.02)
 ;;63874-0579-14
 ;;9002226.02101,"992,63874-0579-15 ",.01)
 ;;63874-0579-15
 ;;9002226.02101,"992,63874-0579-15 ",.02)
 ;;63874-0579-15
 ;;9002226.02101,"992,63874-0579-20 ",.01)
 ;;63874-0579-20
 ;;9002226.02101,"992,63874-0579-20 ",.02)
 ;;63874-0579-20
 ;;9002226.02101,"992,63874-0579-28 ",.01)
 ;;63874-0579-28
 ;;9002226.02101,"992,63874-0579-28 ",.02)
 ;;63874-0579-28
 ;;9002226.02101,"992,63874-0579-30 ",.01)
 ;;63874-0579-30
 ;;9002226.02101,"992,63874-0579-30 ",.02)
 ;;63874-0579-30
 ;;9002226.02101,"992,63874-0579-32 ",.01)
 ;;63874-0579-32
 ;;9002226.02101,"992,63874-0579-32 ",.02)
 ;;63874-0579-32
 ;;9002226.02101,"992,63874-0579-40 ",.01)
 ;;63874-0579-40
 ;;9002226.02101,"992,63874-0579-40 ",.02)
 ;;63874-0579-40
 ;;9002226.02101,"992,63874-0579-50 ",.01)
 ;;63874-0579-50
 ;;9002226.02101,"992,63874-0579-50 ",.02)
 ;;63874-0579-50
 ;;9002226.02101,"992,63874-0579-60 ",.01)
 ;;63874-0579-60
 ;;9002226.02101,"992,63874-0579-60 ",.02)
 ;;63874-0579-60
 ;;9002226.02101,"992,63874-0579-90 ",.01)
 ;;63874-0579-90
 ;;9002226.02101,"992,63874-0579-90 ",.02)
 ;;63874-0579-90
 ;;9002226.02101,"992,63874-0580-01 ",.01)
 ;;63874-0580-01
 ;;9002226.02101,"992,63874-0580-01 ",.02)
 ;;63874-0580-01
 ;;9002226.02101,"992,63874-0580-14 ",.01)
 ;;63874-0580-14
 ;;9002226.02101,"992,63874-0580-14 ",.02)
 ;;63874-0580-14
 ;;9002226.02101,"992,63874-0580-15 ",.01)
 ;;63874-0580-15
 ;;9002226.02101,"992,63874-0580-15 ",.02)
 ;;63874-0580-15
 ;;9002226.02101,"992,63874-0580-20 ",.01)
 ;;63874-0580-20
 ;;9002226.02101,"992,63874-0580-20 ",.02)
 ;;63874-0580-20
 ;;9002226.02101,"992,63874-0580-30 ",.01)
 ;;63874-0580-30
 ;;9002226.02101,"992,63874-0580-30 ",.02)
 ;;63874-0580-30
 ;;9002226.02101,"992,63874-0580-60 ",.01)
 ;;63874-0580-60
 ;;9002226.02101,"992,63874-0580-60 ",.02)
 ;;63874-0580-60
 ;;9002226.02101,"992,63874-0580-90 ",.01)
 ;;63874-0580-90
 ;;9002226.02101,"992,63874-0580-90 ",.02)
 ;;63874-0580-90
 ;;9002226.02101,"992,63874-0596-01 ",.01)
 ;;63874-0596-01
 ;;9002226.02101,"992,63874-0596-01 ",.02)
 ;;63874-0596-01
 ;;9002226.02101,"992,63874-0596-10 ",.01)
 ;;63874-0596-10
 ;;9002226.02101,"992,63874-0596-10 ",.02)
 ;;63874-0596-10
 ;;9002226.02101,"992,63874-0596-14 ",.01)
 ;;63874-0596-14
 ;;9002226.02101,"992,63874-0596-14 ",.02)
 ;;63874-0596-14
 ;;9002226.02101,"992,63874-0596-15 ",.01)
 ;;63874-0596-15
 ;;9002226.02101,"992,63874-0596-15 ",.02)
 ;;63874-0596-15
