BGP50F18 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 05, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1728,00440-7552-45 ",.02)
 ;;00440-7552-45
 ;;9002226.02101,"1728,00440-7552-90 ",.01)
 ;;00440-7552-90
 ;;9002226.02101,"1728,00440-7552-90 ",.02)
 ;;00440-7552-90
 ;;9002226.02101,"1728,00440-7552-92 ",.01)
 ;;00440-7552-92
 ;;9002226.02101,"1728,00440-7552-92 ",.02)
 ;;00440-7552-92
 ;;9002226.02101,"1728,00440-7674-81 ",.01)
 ;;00440-7674-81
 ;;9002226.02101,"1728,00440-7674-81 ",.02)
 ;;00440-7674-81
 ;;9002226.02101,"1728,00440-7674-85 ",.01)
 ;;00440-7674-85
 ;;9002226.02101,"1728,00440-7674-85 ",.02)
 ;;00440-7674-85
 ;;9002226.02101,"1728,00440-7674-89 ",.01)
 ;;00440-7674-89
 ;;9002226.02101,"1728,00440-7674-89 ",.02)
 ;;00440-7674-89
 ;;9002226.02101,"1728,00440-7674-90 ",.01)
 ;;00440-7674-90
 ;;9002226.02101,"1728,00440-7674-90 ",.02)
 ;;00440-7674-90
 ;;9002226.02101,"1728,00440-7675-30 ",.01)
 ;;00440-7675-30
 ;;9002226.02101,"1728,00440-7675-30 ",.02)
 ;;00440-7675-30
 ;;9002226.02101,"1728,00440-7675-81 ",.01)
 ;;00440-7675-81
 ;;9002226.02101,"1728,00440-7675-81 ",.02)
 ;;00440-7675-81
 ;;9002226.02101,"1728,00440-7675-85 ",.01)
 ;;00440-7675-85
 ;;9002226.02101,"1728,00440-7675-85 ",.02)
 ;;00440-7675-85
 ;;9002226.02101,"1728,00440-7675-89 ",.01)
 ;;00440-7675-89
 ;;9002226.02101,"1728,00440-7675-89 ",.02)
 ;;00440-7675-89
 ;;9002226.02101,"1728,00440-7675-90 ",.01)
 ;;00440-7675-90
 ;;9002226.02101,"1728,00440-7675-90 ",.02)
 ;;00440-7675-90
 ;;9002226.02101,"1728,00440-7676-14 ",.01)
 ;;00440-7676-14
 ;;9002226.02101,"1728,00440-7676-14 ",.02)
 ;;00440-7676-14
 ;;9002226.02101,"1728,00440-7676-30 ",.01)
 ;;00440-7676-30
 ;;9002226.02101,"1728,00440-7676-30 ",.02)
 ;;00440-7676-30
 ;;9002226.02101,"1728,00440-7676-45 ",.01)
 ;;00440-7676-45
 ;;9002226.02101,"1728,00440-7676-45 ",.02)
 ;;00440-7676-45
 ;;9002226.02101,"1728,00440-7676-81 ",.01)
 ;;00440-7676-81
 ;;9002226.02101,"1728,00440-7676-81 ",.02)
 ;;00440-7676-81
 ;;9002226.02101,"1728,00440-7676-85 ",.01)
 ;;00440-7676-85
 ;;9002226.02101,"1728,00440-7676-85 ",.02)
 ;;00440-7676-85
 ;;9002226.02101,"1728,00440-7676-89 ",.01)
 ;;00440-7676-89
 ;;9002226.02101,"1728,00440-7676-89 ",.02)
 ;;00440-7676-89
 ;;9002226.02101,"1728,00440-7676-90 ",.01)
 ;;00440-7676-90
 ;;9002226.02101,"1728,00440-7676-90 ",.02)
 ;;00440-7676-90
 ;;9002226.02101,"1728,00440-7677-81 ",.01)
 ;;00440-7677-81
 ;;9002226.02101,"1728,00440-7677-81 ",.02)
 ;;00440-7677-81
 ;;9002226.02101,"1728,00440-7677-85 ",.01)
 ;;00440-7677-85
 ;;9002226.02101,"1728,00440-7677-85 ",.02)
 ;;00440-7677-85
 ;;9002226.02101,"1728,00440-7677-89 ",.01)
 ;;00440-7677-89
 ;;9002226.02101,"1728,00440-7677-89 ",.02)
 ;;00440-7677-89
 ;;9002226.02101,"1728,00440-7677-90 ",.01)
 ;;00440-7677-90
 ;;9002226.02101,"1728,00440-7677-90 ",.02)
 ;;00440-7677-90
 ;;9002226.02101,"1728,00440-7682-30 ",.01)
 ;;00440-7682-30
 ;;9002226.02101,"1728,00440-7682-30 ",.02)
 ;;00440-7682-30
 ;;9002226.02101,"1728,00440-7683-30 ",.01)
 ;;00440-7683-30
 ;;9002226.02101,"1728,00440-7683-30 ",.02)
 ;;00440-7683-30
 ;;9002226.02101,"1728,00440-7683-60 ",.01)
 ;;00440-7683-60
 ;;9002226.02101,"1728,00440-7683-60 ",.02)
 ;;00440-7683-60
 ;;9002226.02101,"1728,00440-7684-30 ",.01)
 ;;00440-7684-30
 ;;9002226.02101,"1728,00440-7684-30 ",.02)
 ;;00440-7684-30
 ;;9002226.02101,"1728,00440-8072-06 ",.01)
 ;;00440-8072-06
 ;;9002226.02101,"1728,00440-8072-06 ",.02)
 ;;00440-8072-06
 ;;9002226.02101,"1728,00440-8270-06 ",.01)
 ;;00440-8270-06
 ;;9002226.02101,"1728,00440-8270-06 ",.02)
 ;;00440-8270-06
 ;;9002226.02101,"1728,00440-8272-06 ",.01)
 ;;00440-8272-06
 ;;9002226.02101,"1728,00440-8272-06 ",.02)
 ;;00440-8272-06
 ;;9002226.02101,"1728,00440-8567-30 ",.01)
 ;;00440-8567-30
 ;;9002226.02101,"1728,00440-8567-30 ",.02)
 ;;00440-8567-30
 ;;9002226.02101,"1728,00440-8567-60 ",.01)
 ;;00440-8567-60
 ;;9002226.02101,"1728,00440-8567-60 ",.02)
 ;;00440-8567-60
 ;;9002226.02101,"1728,00440-8567-90 ",.01)
 ;;00440-8567-90
 ;;9002226.02101,"1728,00440-8567-90 ",.02)
 ;;00440-8567-90
 ;;9002226.02101,"1728,00440-8568-30 ",.01)
 ;;00440-8568-30
 ;;9002226.02101,"1728,00440-8568-30 ",.02)
 ;;00440-8568-30
 ;;9002226.02101,"1728,00440-8568-60 ",.01)
 ;;00440-8568-60
 ;;9002226.02101,"1728,00440-8568-60 ",.02)
 ;;00440-8568-60
 ;;9002226.02101,"1728,00440-8568-90 ",.01)
 ;;00440-8568-90
 ;;9002226.02101,"1728,00440-8568-90 ",.02)
 ;;00440-8568-90
 ;;9002226.02101,"1728,00440-8569-30 ",.01)
 ;;00440-8569-30
 ;;9002226.02101,"1728,00440-8569-30 ",.02)
 ;;00440-8569-30
 ;;9002226.02101,"1728,00440-8569-60 ",.01)
 ;;00440-8569-60
 ;;9002226.02101,"1728,00440-8569-60 ",.02)
 ;;00440-8569-60
 ;;9002226.02101,"1728,00440-8569-90 ",.01)
 ;;00440-8569-90
 ;;9002226.02101,"1728,00440-8569-90 ",.02)
 ;;00440-8569-90
 ;;9002226.02101,"1728,00490-0067-00 ",.01)
 ;;00490-0067-00
 ;;9002226.02101,"1728,00490-0067-00 ",.02)
 ;;00490-0067-00
 ;;9002226.02101,"1728,00490-0067-30 ",.01)
 ;;00490-0067-30
 ;;9002226.02101,"1728,00490-0067-30 ",.02)
 ;;00490-0067-30
 ;;9002226.02101,"1728,00490-0067-60 ",.01)
 ;;00490-0067-60
 ;;9002226.02101,"1728,00490-0067-60 ",.02)
 ;;00490-0067-60
 ;;9002226.02101,"1728,00490-0067-90 ",.01)
 ;;00490-0067-90
 ;;9002226.02101,"1728,00490-0067-90 ",.02)
 ;;00490-0067-90
 ;;9002226.02101,"1728,00490-7030-00 ",.01)
 ;;00490-7030-00
 ;;9002226.02101,"1728,00490-7030-00 ",.02)
 ;;00490-7030-00
 ;;9002226.02101,"1728,00490-7030-30 ",.01)
 ;;00490-7030-30
 ;;9002226.02101,"1728,00490-7030-30 ",.02)
 ;;00490-7030-30
 ;;9002226.02101,"1728,00490-7030-60 ",.01)
 ;;00490-7030-60
 ;;9002226.02101,"1728,00490-7030-60 ",.02)
 ;;00490-7030-60
 ;;9002226.02101,"1728,00490-7030-90 ",.01)
 ;;00490-7030-90
 ;;9002226.02101,"1728,00490-7030-90 ",.02)
 ;;00490-7030-90
 ;;9002226.02101,"1728,00574-0110-01 ",.01)
 ;;00574-0110-01
 ;;9002226.02101,"1728,00574-0110-01 ",.02)
 ;;00574-0110-01
 ;;9002226.02101,"1728,00574-0112-15 ",.01)
 ;;00574-0112-15
 ;;9002226.02101,"1728,00574-0112-15 ",.02)
 ;;00574-0112-15
 ;;9002226.02101,"1728,00574-0133-01 ",.01)
 ;;00574-0133-01
 ;;9002226.02101,"1728,00574-0133-01 ",.02)
 ;;00574-0133-01
 ;;9002226.02101,"1728,00574-0134-01 ",.01)
 ;;00574-0134-01
 ;;9002226.02101,"1728,00574-0134-01 ",.02)
 ;;00574-0134-01
 ;;9002226.02101,"1728,00574-0135-01 ",.01)
 ;;00574-0135-01
 ;;9002226.02101,"1728,00574-0135-01 ",.02)
 ;;00574-0135-01
 ;;9002226.02101,"1728,00591-0405-01 ",.01)
 ;;00591-0405-01
 ;;9002226.02101,"1728,00591-0405-01 ",.02)
 ;;00591-0405-01
 ;;9002226.02101,"1728,00591-0405-05 ",.01)
 ;;00591-0405-05
 ;;9002226.02101,"1728,00591-0405-05 ",.02)
 ;;00591-0405-05
 ;;9002226.02101,"1728,00591-0406-01 ",.01)
 ;;00591-0406-01
 ;;9002226.02101,"1728,00591-0406-01 ",.02)
 ;;00591-0406-01
 ;;9002226.02101,"1728,00591-0406-10 ",.01)
 ;;00591-0406-10
 ;;9002226.02101,"1728,00591-0406-10 ",.02)
 ;;00591-0406-10
 ;;9002226.02101,"1728,00591-0407-01 ",.01)
 ;;00591-0407-01
 ;;9002226.02101,"1728,00591-0407-01 ",.02)
 ;;00591-0407-01
 ;;9002226.02101,"1728,00591-0407-10 ",.01)
 ;;00591-0407-10
 ;;9002226.02101,"1728,00591-0407-10 ",.02)
 ;;00591-0407-10
 ;;9002226.02101,"1728,00591-0408-01 ",.01)
 ;;00591-0408-01
 ;;9002226.02101,"1728,00591-0408-01 ",.02)
 ;;00591-0408-01
 ;;9002226.02101,"1728,00591-0408-10 ",.01)
 ;;00591-0408-10
 ;;9002226.02101,"1728,00591-0408-10 ",.02)
 ;;00591-0408-10
 ;;9002226.02101,"1728,00591-0409-01 ",.01)
 ;;00591-0409-01
 ;;9002226.02101,"1728,00591-0409-01 ",.02)
 ;;00591-0409-01
 ;;9002226.02101,"1728,00591-0409-05 ",.01)
 ;;00591-0409-05
 ;;9002226.02101,"1728,00591-0409-05 ",.02)
 ;;00591-0409-05
 ;;9002226.02101,"1728,00591-0860-01 ",.01)
 ;;00591-0860-01
 ;;9002226.02101,"1728,00591-0860-01 ",.02)
 ;;00591-0860-01
 ;;9002226.02101,"1728,00591-0860-05 ",.01)
 ;;00591-0860-05
 ;;9002226.02101,"1728,00591-0860-05 ",.02)
 ;;00591-0860-05
 ;;9002226.02101,"1728,00591-0861-01 ",.01)
 ;;00591-0861-01
 ;;9002226.02101,"1728,00591-0861-01 ",.02)
 ;;00591-0861-01
 ;;9002226.02101,"1728,00591-0861-05 ",.01)
 ;;00591-0861-05
 ;;9002226.02101,"1728,00591-0861-05 ",.02)
 ;;00591-0861-05
 ;;9002226.02101,"1728,00591-0862-01 ",.01)
 ;;00591-0862-01
 ;;9002226.02101,"1728,00591-0862-01 ",.02)
 ;;00591-0862-01
 ;;9002226.02101,"1728,00591-0862-05 ",.01)
 ;;00591-0862-05
 ;;9002226.02101,"1728,00591-0862-05 ",.02)
 ;;00591-0862-05
 ;;9002226.02101,"1728,00591-0885-01 ",.01)
 ;;00591-0885-01
 ;;9002226.02101,"1728,00591-0885-01 ",.02)
 ;;00591-0885-01
 ;;9002226.02101,"1728,00591-2315-10 ",.01)
 ;;00591-2315-10
 ;;9002226.02101,"1728,00591-2315-10 ",.02)
 ;;00591-2315-10
 ;;9002226.02101,"1728,00591-2315-19 ",.01)
 ;;00591-2315-19
 ;;9002226.02101,"1728,00591-2315-19 ",.02)
 ;;00591-2315-19
 ;;9002226.02101,"1728,00591-2316-10 ",.01)
 ;;00591-2316-10
 ;;9002226.02101,"1728,00591-2316-10 ",.02)
 ;;00591-2316-10
 ;;9002226.02101,"1728,00591-2316-19 ",.01)
 ;;00591-2316-19
 ;;9002226.02101,"1728,00591-2316-19 ",.02)
 ;;00591-2316-19
 ;;9002226.02101,"1728,00591-2317-10 ",.01)
 ;;00591-2317-10
 ;;9002226.02101,"1728,00591-2317-10 ",.02)
 ;;00591-2317-10
 ;;9002226.02101,"1728,00591-2317-19 ",.01)
 ;;00591-2317-19
 ;;9002226.02101,"1728,00591-2317-19 ",.02)
 ;;00591-2317-19
 ;;9002226.02101,"1728,00591-2318-19 ",.01)
 ;;00591-2318-19
 ;;9002226.02101,"1728,00591-2318-19 ",.02)
 ;;00591-2318-19
 ;;9002226.02101,"1728,00591-2319-19 ",.01)
 ;;00591-2319-19
 ;;9002226.02101,"1728,00591-2319-19 ",.02)
 ;;00591-2319-19
 ;;9002226.02101,"1728,00591-2782-19 ",.01)
 ;;00591-2782-19
 ;;9002226.02101,"1728,00591-2782-19 ",.02)
 ;;00591-2782-19
 ;;9002226.02101,"1728,00591-2782-30 ",.01)
 ;;00591-2782-30
 ;;9002226.02101,"1728,00591-2782-30 ",.02)
 ;;00591-2782-30
 ;;9002226.02101,"1728,00591-2783-19 ",.01)
 ;;00591-2783-19
 ;;9002226.02101,"1728,00591-2783-19 ",.02)
 ;;00591-2783-19
 ;;9002226.02101,"1728,00591-2783-30 ",.01)
 ;;00591-2783-30
 ;;9002226.02101,"1728,00591-2783-30 ",.02)
 ;;00591-2783-30
 ;;9002226.02101,"1728,00591-2784-19 ",.01)
 ;;00591-2784-19
 ;;9002226.02101,"1728,00591-2784-19 ",.02)
 ;;00591-2784-19
 ;;9002226.02101,"1728,00591-2784-30 ",.01)
 ;;00591-2784-30
 ;;9002226.02101,"1728,00591-2784-30 ",.02)
 ;;00591-2784-30
 ;;9002226.02101,"1728,00591-2785-19 ",.01)
 ;;00591-2785-19
 ;;9002226.02101,"1728,00591-2785-19 ",.02)
 ;;00591-2785-19
 ;;9002226.02101,"1728,00591-2785-30 ",.01)
 ;;00591-2785-30
 ;;9002226.02101,"1728,00591-2785-30 ",.02)
 ;;00591-2785-30
 ;;9002226.02101,"1728,00591-2786-19 ",.01)
 ;;00591-2786-19
 ;;9002226.02101,"1728,00591-2786-19 ",.02)
 ;;00591-2786-19
 ;;9002226.02101,"1728,00591-2786-30 ",.01)
 ;;00591-2786-30
 ;;9002226.02101,"1728,00591-2786-30 ",.02)
 ;;00591-2786-30
 ;;9002226.02101,"1728,00591-3292-15 ",.01)
 ;;00591-3292-15
 ;;9002226.02101,"1728,00591-3292-15 ",.02)
 ;;00591-3292-15
 ;;9002226.02101,"1728,00591-3293-15 ",.01)
 ;;00591-3293-15
 ;;9002226.02101,"1728,00591-3293-15 ",.02)
 ;;00591-3293-15
 ;;9002226.02101,"1728,00591-3294-15 ",.01)
 ;;00591-3294-15
 ;;9002226.02101,"1728,00591-3294-15 ",.02)
 ;;00591-3294-15
 ;;9002226.02101,"1728,00591-3745-10 ",.01)
 ;;00591-3745-10
 ;;9002226.02101,"1728,00591-3745-10 ",.02)
 ;;00591-3745-10
 ;;9002226.02101,"1728,00591-3745-19 ",.01)
 ;;00591-3745-19
 ;;9002226.02101,"1728,00591-3745-19 ",.02)
 ;;00591-3745-19
 ;;9002226.02101,"1728,00591-3746-10 ",.01)
 ;;00591-3746-10
 ;;9002226.02101,"1728,00591-3746-10 ",.02)
 ;;00591-3746-10
 ;;9002226.02101,"1728,00591-3746-19 ",.01)
 ;;00591-3746-19
 ;;9002226.02101,"1728,00591-3746-19 ",.02)
 ;;00591-3746-19
 ;;9002226.02101,"1728,00591-3746-30 ",.01)
 ;;00591-3746-30
 ;;9002226.02101,"1728,00591-3746-30 ",.02)
 ;;00591-3746-30
 ;;9002226.02101,"1728,00591-3747-10 ",.01)
 ;;00591-3747-10
 ;;9002226.02101,"1728,00591-3747-10 ",.02)
 ;;00591-3747-10
 ;;9002226.02101,"1728,00591-3747-19 ",.01)
 ;;00591-3747-19
 ;;9002226.02101,"1728,00591-3747-19 ",.02)
 ;;00591-3747-19
 ;;9002226.02101,"1728,00591-3747-30 ",.01)
 ;;00591-3747-30
 ;;9002226.02101,"1728,00591-3747-30 ",.02)
 ;;00591-3747-30
 ;;9002226.02101,"1728,00591-3757-01 ",.01)
 ;;00591-3757-01
 ;;9002226.02101,"1728,00591-3757-01 ",.02)
 ;;00591-3757-01
 ;;9002226.02101,"1728,00591-3758-01 ",.01)
 ;;00591-3758-01
 ;;9002226.02101,"1728,00591-3758-01 ",.02)
 ;;00591-3758-01
 ;;9002226.02101,"1728,00591-3758-05 ",.01)
 ;;00591-3758-05
 ;;9002226.02101,"1728,00591-3758-05 ",.02)
 ;;00591-3758-05
 ;;9002226.02101,"1728,00591-3759-01 ",.01)
 ;;00591-3759-01
 ;;9002226.02101,"1728,00591-3759-01 ",.02)
 ;;00591-3759-01
 ;;9002226.02101,"1728,00591-3759-05 ",.01)
 ;;00591-3759-05
 ;;9002226.02101,"1728,00591-3759-05 ",.02)
 ;;00591-3759-05
 ;;9002226.02101,"1728,00591-3760-01 ",.01)
 ;;00591-3760-01
 ;;9002226.02101,"1728,00591-3760-01 ",.02)
 ;;00591-3760-01
 ;;9002226.02101,"1728,00591-3760-05 ",.01)
 ;;00591-3760-05
 ;;9002226.02101,"1728,00591-3760-05 ",.02)
 ;;00591-3760-05
 ;;9002226.02101,"1728,00591-3761-01 ",.01)
 ;;00591-3761-01
 ;;9002226.02101,"1728,00591-3761-01 ",.02)
 ;;00591-3761-01
 ;;9002226.02101,"1728,00591-3762-01 ",.01)
 ;;00591-3762-01
 ;;9002226.02101,"1728,00591-3762-01 ",.02)
 ;;00591-3762-01
 ;;9002226.02101,"1728,00597-0039-37 ",.01)
 ;;00597-0039-37
 ;;9002226.02101,"1728,00597-0039-37 ",.02)
 ;;00597-0039-37
 ;;9002226.02101,"1728,00597-0040-37 ",.01)
 ;;00597-0040-37
 ;;9002226.02101,"1728,00597-0040-37 ",.02)
 ;;00597-0040-37
 ;;9002226.02101,"1728,00597-0041-37 ",.01)
 ;;00597-0041-37
 ;;9002226.02101,"1728,00597-0041-37 ",.02)
 ;;00597-0041-37
