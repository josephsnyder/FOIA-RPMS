BGP53J51 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"798,63874-0573-20 ",.01)
 ;;63874-0573-20
 ;;9002226.02101,"798,63874-0573-20 ",.02)
 ;;63874-0573-20
 ;;9002226.02101,"798,63874-0573-21 ",.01)
 ;;63874-0573-21
 ;;9002226.02101,"798,63874-0573-21 ",.02)
 ;;63874-0573-21
 ;;9002226.02101,"798,63874-0573-28 ",.01)
 ;;63874-0573-28
 ;;9002226.02101,"798,63874-0573-28 ",.02)
 ;;63874-0573-28
 ;;9002226.02101,"798,63874-0573-30 ",.01)
 ;;63874-0573-30
 ;;9002226.02101,"798,63874-0573-30 ",.02)
 ;;63874-0573-30
 ;;9002226.02101,"798,63874-0573-60 ",.01)
 ;;63874-0573-60
 ;;9002226.02101,"798,63874-0573-60 ",.02)
 ;;63874-0573-60
 ;;9002226.02101,"798,63874-0573-72 ",.01)
 ;;63874-0573-72
 ;;9002226.02101,"798,63874-0573-72 ",.02)
 ;;63874-0573-72
 ;;9002226.02101,"798,63874-0573-74 ",.01)
 ;;63874-0573-74
 ;;9002226.02101,"798,63874-0573-74 ",.02)
 ;;63874-0573-74
 ;;9002226.02101,"798,63874-0573-77 ",.01)
 ;;63874-0573-77
 ;;9002226.02101,"798,63874-0573-77 ",.02)
 ;;63874-0573-77
 ;;9002226.02101,"798,63874-0573-90 ",.01)
 ;;63874-0573-90
 ;;9002226.02101,"798,63874-0573-90 ",.02)
 ;;63874-0573-90
 ;;9002226.02101,"798,63874-0574-01 ",.01)
 ;;63874-0574-01
 ;;9002226.02101,"798,63874-0574-01 ",.02)
 ;;63874-0574-01
 ;;9002226.02101,"798,63874-0574-04 ",.01)
 ;;63874-0574-04
 ;;9002226.02101,"798,63874-0574-04 ",.02)
 ;;63874-0574-04
 ;;9002226.02101,"798,63874-0574-10 ",.01)
 ;;63874-0574-10
 ;;9002226.02101,"798,63874-0574-10 ",.02)
 ;;63874-0574-10
 ;;9002226.02101,"798,63874-0574-14 ",.01)
 ;;63874-0574-14
 ;;9002226.02101,"798,63874-0574-14 ",.02)
 ;;63874-0574-14
 ;;9002226.02101,"798,63874-0574-20 ",.01)
 ;;63874-0574-20
 ;;9002226.02101,"798,63874-0574-20 ",.02)
 ;;63874-0574-20
 ;;9002226.02101,"798,63874-0574-21 ",.01)
 ;;63874-0574-21
 ;;9002226.02101,"798,63874-0574-21 ",.02)
 ;;63874-0574-21
 ;;9002226.02101,"798,63874-0574-28 ",.01)
 ;;63874-0574-28
 ;;9002226.02101,"798,63874-0574-28 ",.02)
 ;;63874-0574-28
 ;;9002226.02101,"798,63874-0574-30 ",.01)
 ;;63874-0574-30
 ;;9002226.02101,"798,63874-0574-30 ",.02)
 ;;63874-0574-30
 ;;9002226.02101,"798,63874-0574-60 ",.01)
 ;;63874-0574-60
 ;;9002226.02101,"798,63874-0574-60 ",.02)
 ;;63874-0574-60
 ;;9002226.02101,"798,63874-0574-72 ",.01)
 ;;63874-0574-72
 ;;9002226.02101,"798,63874-0574-72 ",.02)
 ;;63874-0574-72
 ;;9002226.02101,"798,63874-0574-74 ",.01)
 ;;63874-0574-74
 ;;9002226.02101,"798,63874-0574-74 ",.02)
 ;;63874-0574-74
 ;;9002226.02101,"798,63874-0574-77 ",.01)
 ;;63874-0574-77
 ;;9002226.02101,"798,63874-0574-77 ",.02)
 ;;63874-0574-77
 ;;9002226.02101,"798,63874-0574-90 ",.01)
 ;;63874-0574-90
 ;;9002226.02101,"798,63874-0574-90 ",.02)
 ;;63874-0574-90
 ;;9002226.02101,"798,63874-0579-01 ",.01)
 ;;63874-0579-01
 ;;9002226.02101,"798,63874-0579-01 ",.02)
 ;;63874-0579-01
 ;;9002226.02101,"798,63874-0579-04 ",.01)
 ;;63874-0579-04
 ;;9002226.02101,"798,63874-0579-04 ",.02)
 ;;63874-0579-04
 ;;9002226.02101,"798,63874-0579-10 ",.01)
 ;;63874-0579-10
 ;;9002226.02101,"798,63874-0579-10 ",.02)
 ;;63874-0579-10
 ;;9002226.02101,"798,63874-0579-12 ",.01)
 ;;63874-0579-12
 ;;9002226.02101,"798,63874-0579-12 ",.02)
 ;;63874-0579-12
 ;;9002226.02101,"798,63874-0579-14 ",.01)
 ;;63874-0579-14
 ;;9002226.02101,"798,63874-0579-14 ",.02)
 ;;63874-0579-14
 ;;9002226.02101,"798,63874-0579-15 ",.01)
 ;;63874-0579-15
 ;;9002226.02101,"798,63874-0579-15 ",.02)
 ;;63874-0579-15
 ;;9002226.02101,"798,63874-0579-20 ",.01)
 ;;63874-0579-20
 ;;9002226.02101,"798,63874-0579-20 ",.02)
 ;;63874-0579-20
 ;;9002226.02101,"798,63874-0579-28 ",.01)
 ;;63874-0579-28
 ;;9002226.02101,"798,63874-0579-28 ",.02)
 ;;63874-0579-28
 ;;9002226.02101,"798,63874-0579-30 ",.01)
 ;;63874-0579-30
 ;;9002226.02101,"798,63874-0579-30 ",.02)
 ;;63874-0579-30
 ;;9002226.02101,"798,63874-0579-32 ",.01)
 ;;63874-0579-32
 ;;9002226.02101,"798,63874-0579-32 ",.02)
 ;;63874-0579-32
 ;;9002226.02101,"798,63874-0579-40 ",.01)
 ;;63874-0579-40
 ;;9002226.02101,"798,63874-0579-40 ",.02)
 ;;63874-0579-40
 ;;9002226.02101,"798,63874-0579-50 ",.01)
 ;;63874-0579-50
 ;;9002226.02101,"798,63874-0579-50 ",.02)
 ;;63874-0579-50
 ;;9002226.02101,"798,63874-0579-60 ",.01)
 ;;63874-0579-60
 ;;9002226.02101,"798,63874-0579-60 ",.02)
 ;;63874-0579-60
 ;;9002226.02101,"798,63874-0579-90 ",.01)
 ;;63874-0579-90
 ;;9002226.02101,"798,63874-0579-90 ",.02)
 ;;63874-0579-90
 ;;9002226.02101,"798,63874-0580-01 ",.01)
 ;;63874-0580-01
 ;;9002226.02101,"798,63874-0580-01 ",.02)
 ;;63874-0580-01
 ;;9002226.02101,"798,63874-0580-14 ",.01)
 ;;63874-0580-14
 ;;9002226.02101,"798,63874-0580-14 ",.02)
 ;;63874-0580-14
 ;;9002226.02101,"798,63874-0580-15 ",.01)
 ;;63874-0580-15
 ;;9002226.02101,"798,63874-0580-15 ",.02)
 ;;63874-0580-15
 ;;9002226.02101,"798,63874-0580-20 ",.01)
 ;;63874-0580-20
 ;;9002226.02101,"798,63874-0580-20 ",.02)
 ;;63874-0580-20
 ;;9002226.02101,"798,63874-0580-30 ",.01)
 ;;63874-0580-30
 ;;9002226.02101,"798,63874-0580-30 ",.02)
 ;;63874-0580-30
 ;;9002226.02101,"798,63874-0580-60 ",.01)
 ;;63874-0580-60
 ;;9002226.02101,"798,63874-0580-60 ",.02)
 ;;63874-0580-60
 ;;9002226.02101,"798,63874-0580-90 ",.01)
 ;;63874-0580-90
 ;;9002226.02101,"798,63874-0580-90 ",.02)
 ;;63874-0580-90
 ;;9002226.02101,"798,63874-0596-01 ",.01)
 ;;63874-0596-01
 ;;9002226.02101,"798,63874-0596-01 ",.02)
 ;;63874-0596-01
 ;;9002226.02101,"798,63874-0596-10 ",.01)
 ;;63874-0596-10
 ;;9002226.02101,"798,63874-0596-10 ",.02)
 ;;63874-0596-10
 ;;9002226.02101,"798,63874-0596-14 ",.01)
 ;;63874-0596-14
 ;;9002226.02101,"798,63874-0596-14 ",.02)
 ;;63874-0596-14
 ;;9002226.02101,"798,63874-0596-15 ",.01)
 ;;63874-0596-15
 ;;9002226.02101,"798,63874-0596-15 ",.02)
 ;;63874-0596-15
 ;;9002226.02101,"798,63874-0596-20 ",.01)
 ;;63874-0596-20
 ;;9002226.02101,"798,63874-0596-20 ",.02)
 ;;63874-0596-20
 ;;9002226.02101,"798,63874-0596-30 ",.01)
 ;;63874-0596-30
 ;;9002226.02101,"798,63874-0596-30 ",.02)
 ;;63874-0596-30
 ;;9002226.02101,"798,63874-0596-60 ",.01)
 ;;63874-0596-60
 ;;9002226.02101,"798,63874-0596-60 ",.02)
 ;;63874-0596-60
 ;;9002226.02101,"798,63874-0599-01 ",.01)
 ;;63874-0599-01
 ;;9002226.02101,"798,63874-0599-01 ",.02)
 ;;63874-0599-01
 ;;9002226.02101,"798,63874-0599-10 ",.01)
 ;;63874-0599-10
 ;;9002226.02101,"798,63874-0599-10 ",.02)
 ;;63874-0599-10
 ;;9002226.02101,"798,63874-0599-14 ",.01)
 ;;63874-0599-14
 ;;9002226.02101,"798,63874-0599-14 ",.02)
 ;;63874-0599-14
 ;;9002226.02101,"798,63874-0599-15 ",.01)
 ;;63874-0599-15
 ;;9002226.02101,"798,63874-0599-15 ",.02)
 ;;63874-0599-15
 ;;9002226.02101,"798,63874-0599-20 ",.01)
 ;;63874-0599-20
 ;;9002226.02101,"798,63874-0599-20 ",.02)
 ;;63874-0599-20
 ;;9002226.02101,"798,63874-0599-21 ",.01)
 ;;63874-0599-21
 ;;9002226.02101,"798,63874-0599-21 ",.02)
 ;;63874-0599-21
 ;;9002226.02101,"798,63874-0599-28 ",.01)
 ;;63874-0599-28
 ;;9002226.02101,"798,63874-0599-28 ",.02)
 ;;63874-0599-28
 ;;9002226.02101,"798,63874-0599-30 ",.01)
 ;;63874-0599-30
 ;;9002226.02101,"798,63874-0599-30 ",.02)
 ;;63874-0599-30
 ;;9002226.02101,"798,63874-0599-40 ",.01)
 ;;63874-0599-40
 ;;9002226.02101,"798,63874-0599-40 ",.02)
 ;;63874-0599-40
 ;;9002226.02101,"798,63874-0599-50 ",.01)
 ;;63874-0599-50
 ;;9002226.02101,"798,63874-0599-50 ",.02)
 ;;63874-0599-50
 ;;9002226.02101,"798,63874-0599-60 ",.01)
 ;;63874-0599-60
 ;;9002226.02101,"798,63874-0599-60 ",.02)
 ;;63874-0599-60
 ;;9002226.02101,"798,63874-0599-90 ",.01)
 ;;63874-0599-90
 ;;9002226.02101,"798,63874-0599-90 ",.02)
 ;;63874-0599-90
 ;;9002226.02101,"798,63874-0609-01 ",.01)
 ;;63874-0609-01
 ;;9002226.02101,"798,63874-0609-01 ",.02)
 ;;63874-0609-01
 ;;9002226.02101,"798,63874-0609-10 ",.01)
 ;;63874-0609-10
 ;;9002226.02101,"798,63874-0609-10 ",.02)
 ;;63874-0609-10
 ;;9002226.02101,"798,63874-0609-20 ",.01)
 ;;63874-0609-20
 ;;9002226.02101,"798,63874-0609-20 ",.02)
 ;;63874-0609-20
 ;;9002226.02101,"798,63874-0609-30 ",.01)
 ;;63874-0609-30
 ;;9002226.02101,"798,63874-0609-30 ",.02)
 ;;63874-0609-30
 ;;9002226.02101,"798,63874-0609-60 ",.01)
 ;;63874-0609-60
 ;;9002226.02101,"798,63874-0609-60 ",.02)
 ;;63874-0609-60
 ;;9002226.02101,"798,63874-0609-90 ",.01)
 ;;63874-0609-90
 ;;9002226.02101,"798,63874-0609-90 ",.02)
 ;;63874-0609-90
 ;;9002226.02101,"798,63874-0616-01 ",.01)
 ;;63874-0616-01
 ;;9002226.02101,"798,63874-0616-01 ",.02)
 ;;63874-0616-01
 ;;9002226.02101,"798,63874-0616-04 ",.01)
 ;;63874-0616-04
 ;;9002226.02101,"798,63874-0616-04 ",.02)
 ;;63874-0616-04
 ;;9002226.02101,"798,63874-0616-10 ",.01)
 ;;63874-0616-10
 ;;9002226.02101,"798,63874-0616-10 ",.02)
 ;;63874-0616-10
 ;;9002226.02101,"798,63874-0616-12 ",.01)
 ;;63874-0616-12
 ;;9002226.02101,"798,63874-0616-12 ",.02)
 ;;63874-0616-12
 ;;9002226.02101,"798,63874-0616-15 ",.01)
 ;;63874-0616-15
 ;;9002226.02101,"798,63874-0616-15 ",.02)
 ;;63874-0616-15
 ;;9002226.02101,"798,63874-0616-20 ",.01)
 ;;63874-0616-20
 ;;9002226.02101,"798,63874-0616-20 ",.02)
 ;;63874-0616-20
 ;;9002226.02101,"798,63874-0616-25 ",.01)
 ;;63874-0616-25
 ;;9002226.02101,"798,63874-0616-25 ",.02)
 ;;63874-0616-25
 ;;9002226.02101,"798,63874-0616-28 ",.01)
 ;;63874-0616-28
 ;;9002226.02101,"798,63874-0616-28 ",.02)
 ;;63874-0616-28
 ;;9002226.02101,"798,63874-0616-30 ",.01)
 ;;63874-0616-30
 ;;9002226.02101,"798,63874-0616-30 ",.02)
 ;;63874-0616-30
 ;;9002226.02101,"798,63874-0616-40 ",.01)
 ;;63874-0616-40
 ;;9002226.02101,"798,63874-0616-40 ",.02)
 ;;63874-0616-40
 ;;9002226.02101,"798,63874-0616-50 ",.01)
 ;;63874-0616-50
 ;;9002226.02101,"798,63874-0616-50 ",.02)
 ;;63874-0616-50
 ;;9002226.02101,"798,63874-0616-60 ",.01)
 ;;63874-0616-60
 ;;9002226.02101,"798,63874-0616-60 ",.02)
 ;;63874-0616-60
 ;;9002226.02101,"798,63874-0616-70 ",.01)
 ;;63874-0616-70
 ;;9002226.02101,"798,63874-0616-70 ",.02)
 ;;63874-0616-70
 ;;9002226.02101,"798,63874-0616-72 ",.01)
 ;;63874-0616-72
 ;;9002226.02101,"798,63874-0616-72 ",.02)
 ;;63874-0616-72
 ;;9002226.02101,"798,63874-0616-74 ",.01)
 ;;63874-0616-74
 ;;9002226.02101,"798,63874-0616-74 ",.02)
 ;;63874-0616-74
 ;;9002226.02101,"798,63874-0616-77 ",.01)
 ;;63874-0616-77
 ;;9002226.02101,"798,63874-0616-77 ",.02)
 ;;63874-0616-77
 ;;9002226.02101,"798,63874-0616-80 ",.01)
 ;;63874-0616-80
 ;;9002226.02101,"798,63874-0616-80 ",.02)
 ;;63874-0616-80
 ;;9002226.02101,"798,63874-0616-90 ",.01)
 ;;63874-0616-90
 ;;9002226.02101,"798,63874-0616-90 ",.02)
 ;;63874-0616-90
 ;;9002226.02101,"798,63874-0638-01 ",.01)
 ;;63874-0638-01
 ;;9002226.02101,"798,63874-0638-01 ",.02)
 ;;63874-0638-01
 ;;9002226.02101,"798,63874-0638-04 ",.01)
 ;;63874-0638-04
 ;;9002226.02101,"798,63874-0638-04 ",.02)
 ;;63874-0638-04
 ;;9002226.02101,"798,63874-0638-10 ",.01)
 ;;63874-0638-10
 ;;9002226.02101,"798,63874-0638-10 ",.02)
 ;;63874-0638-10
 ;;9002226.02101,"798,63874-0638-14 ",.01)
 ;;63874-0638-14
 ;;9002226.02101,"798,63874-0638-14 ",.02)
 ;;63874-0638-14
 ;;9002226.02101,"798,63874-0638-15 ",.01)
 ;;63874-0638-15
 ;;9002226.02101,"798,63874-0638-15 ",.02)
 ;;63874-0638-15
 ;;9002226.02101,"798,63874-0638-20 ",.01)
 ;;63874-0638-20
 ;;9002226.02101,"798,63874-0638-20 ",.02)
 ;;63874-0638-20
 ;;9002226.02101,"798,63874-0638-21 ",.01)
 ;;63874-0638-21
 ;;9002226.02101,"798,63874-0638-21 ",.02)
 ;;63874-0638-21
 ;;9002226.02101,"798,63874-0638-28 ",.01)
 ;;63874-0638-28
 ;;9002226.02101,"798,63874-0638-28 ",.02)
 ;;63874-0638-28
 ;;9002226.02101,"798,63874-0638-30 ",.01)
 ;;63874-0638-30
 ;;9002226.02101,"798,63874-0638-30 ",.02)
 ;;63874-0638-30
 ;;9002226.02101,"798,63874-0638-40 ",.01)
 ;;63874-0638-40
 ;;9002226.02101,"798,63874-0638-40 ",.02)
 ;;63874-0638-40
 ;;9002226.02101,"798,63874-0638-50 ",.01)
 ;;63874-0638-50
 ;;9002226.02101,"798,63874-0638-50 ",.02)
 ;;63874-0638-50
 ;;9002226.02101,"798,63874-0638-60 ",.01)
 ;;63874-0638-60
 ;;9002226.02101,"798,63874-0638-60 ",.02)
 ;;63874-0638-60
 ;;9002226.02101,"798,63874-0638-90 ",.01)
 ;;63874-0638-90
 ;;9002226.02101,"798,63874-0638-90 ",.02)
 ;;63874-0638-90
 ;;9002226.02101,"798,63874-0670-10 ",.01)
 ;;63874-0670-10
 ;;9002226.02101,"798,63874-0670-10 ",.02)
 ;;63874-0670-10
 ;;9002226.02101,"798,63874-0670-15 ",.01)
 ;;63874-0670-15
 ;;9002226.02101,"798,63874-0670-15 ",.02)
 ;;63874-0670-15
 ;;9002226.02101,"798,63874-0670-20 ",.01)
 ;;63874-0670-20
 ;;9002226.02101,"798,63874-0670-20 ",.02)
 ;;63874-0670-20
 ;;9002226.02101,"798,63874-0670-30 ",.01)
 ;;63874-0670-30
 ;;9002226.02101,"798,63874-0670-30 ",.02)
 ;;63874-0670-30
 ;;9002226.02101,"798,63874-0766-30 ",.01)
 ;;63874-0766-30
 ;;9002226.02101,"798,63874-0766-30 ",.02)
 ;;63874-0766-30
 ;;9002226.02101,"798,63874-0766-60 ",.01)
 ;;63874-0766-60
 ;;9002226.02101,"798,63874-0766-60 ",.02)
 ;;63874-0766-60
 ;;9002226.02101,"798,63874-0767-10 ",.01)
 ;;63874-0767-10
 ;;9002226.02101,"798,63874-0767-10 ",.02)
 ;;63874-0767-10
 ;;9002226.02101,"798,63874-0767-14 ",.01)
 ;;63874-0767-14
 ;;9002226.02101,"798,63874-0767-14 ",.02)
 ;;63874-0767-14
 ;;9002226.02101,"798,63874-0767-30 ",.01)
 ;;63874-0767-30
 ;;9002226.02101,"798,63874-0767-30 ",.02)
 ;;63874-0767-30
 ;;9002226.02101,"798,63874-0775-01 ",.01)
 ;;63874-0775-01
 ;;9002226.02101,"798,63874-0775-01 ",.02)
 ;;63874-0775-01
 ;;9002226.02101,"798,63874-0775-12 ",.01)
 ;;63874-0775-12
 ;;9002226.02101,"798,63874-0775-12 ",.02)
 ;;63874-0775-12
 ;;9002226.02101,"798,63874-0775-15 ",.01)
 ;;63874-0775-15
 ;;9002226.02101,"798,63874-0775-15 ",.02)
 ;;63874-0775-15
