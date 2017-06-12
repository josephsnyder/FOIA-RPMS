BGP61R14 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1905,64253-0333-30 ",.02)
 ;;64253-0333-30
 ;;9002226.02101,"1905,64253-0333-33 ",.01)
 ;;64253-0333-33
 ;;9002226.02101,"1905,64253-0333-33 ",.02)
 ;;64253-0333-33
 ;;9002226.02101,"1905,64253-0333-35 ",.01)
 ;;64253-0333-35
 ;;9002226.02101,"1905,64253-0333-35 ",.02)
 ;;64253-0333-35
 ;;9002226.02101,"1905,64253-0333-52 ",.01)
 ;;64253-0333-52
 ;;9002226.02101,"1905,64253-0333-52 ",.02)
 ;;64253-0333-52
 ;;9002226.02101,"1905,64253-0444-21 ",.01)
 ;;64253-0444-21
 ;;9002226.02101,"1905,64253-0444-21 ",.02)
 ;;64253-0444-21
 ;;9002226.02101,"1905,64253-0444-22 ",.01)
 ;;64253-0444-22
 ;;9002226.02101,"1905,64253-0444-22 ",.02)
 ;;64253-0444-22
 ;;9002226.02101,"1905,64253-0444-23 ",.01)
 ;;64253-0444-23
 ;;9002226.02101,"1905,64253-0444-23 ",.02)
 ;;64253-0444-23
 ;;9002226.02101,"1905,64253-0444-25 ",.01)
 ;;64253-0444-25
 ;;9002226.02101,"1905,64253-0444-25 ",.02)
 ;;64253-0444-25
 ;;9002226.02101,"1905,64253-0444-30 ",.01)
 ;;64253-0444-30
 ;;9002226.02101,"1905,64253-0444-30 ",.02)
 ;;64253-0444-30
 ;;9002226.02101,"1905,64253-0444-33 ",.01)
 ;;64253-0444-33
 ;;9002226.02101,"1905,64253-0444-33 ",.02)
 ;;64253-0444-33
 ;;9002226.02101,"1905,64253-0444-35 ",.01)
 ;;64253-0444-35
 ;;9002226.02101,"1905,64253-0444-35 ",.02)
 ;;64253-0444-35
 ;;9002226.02101,"1905,64253-0444-52 ",.01)
 ;;64253-0444-52
 ;;9002226.02101,"1905,64253-0444-52 ",.02)
 ;;64253-0444-52
 ;;9002226.02101,"1905,65162-0761-10 ",.01)
 ;;65162-0761-10
 ;;9002226.02101,"1905,65162-0761-10 ",.02)
 ;;65162-0761-10
 ;;9002226.02101,"1905,65162-0761-11 ",.01)
 ;;65162-0761-11
 ;;9002226.02101,"1905,65162-0761-11 ",.02)
 ;;65162-0761-11
 ;;9002226.02101,"1905,65162-0762-10 ",.01)
 ;;65162-0762-10
 ;;9002226.02101,"1905,65162-0762-10 ",.02)
 ;;65162-0762-10
 ;;9002226.02101,"1905,65162-0762-11 ",.01)
 ;;65162-0762-11
 ;;9002226.02101,"1905,65162-0762-11 ",.02)
 ;;65162-0762-11
 ;;9002226.02101,"1905,65162-0763-10 ",.01)
 ;;65162-0763-10
 ;;9002226.02101,"1905,65162-0763-10 ",.02)
 ;;65162-0763-10
 ;;9002226.02101,"1905,65162-0763-11 ",.01)
 ;;65162-0763-11
 ;;9002226.02101,"1905,65162-0763-11 ",.02)
 ;;65162-0763-11
 ;;9002226.02101,"1905,65162-0764-10 ",.01)
 ;;65162-0764-10
 ;;9002226.02101,"1905,65162-0764-10 ",.02)
 ;;65162-0764-10
 ;;9002226.02101,"1905,65162-0764-11 ",.01)
 ;;65162-0764-11
 ;;9002226.02101,"1905,65162-0764-11 ",.02)
 ;;65162-0764-11
 ;;9002226.02101,"1905,65162-0765-10 ",.01)
 ;;65162-0765-10
 ;;9002226.02101,"1905,65162-0765-10 ",.02)
 ;;65162-0765-10
 ;;9002226.02101,"1905,65162-0765-11 ",.01)
 ;;65162-0765-11
 ;;9002226.02101,"1905,65162-0765-11 ",.02)
 ;;65162-0765-11
 ;;9002226.02101,"1905,65162-0766-10 ",.01)
 ;;65162-0766-10
 ;;9002226.02101,"1905,65162-0766-10 ",.02)
 ;;65162-0766-10
 ;;9002226.02101,"1905,65162-0766-11 ",.01)
 ;;65162-0766-11
 ;;9002226.02101,"1905,65162-0766-11 ",.02)
 ;;65162-0766-11
 ;;9002226.02101,"1905,65162-0767-10 ",.01)
 ;;65162-0767-10
 ;;9002226.02101,"1905,65162-0767-10 ",.02)
 ;;65162-0767-10
 ;;9002226.02101,"1905,65162-0767-11 ",.01)
 ;;65162-0767-11
 ;;9002226.02101,"1905,65162-0767-11 ",.02)
 ;;65162-0767-11
 ;;9002226.02101,"1905,65162-0768-10 ",.01)
 ;;65162-0768-10
 ;;9002226.02101,"1905,65162-0768-10 ",.02)
 ;;65162-0768-10
 ;;9002226.02101,"1905,65162-0768-11 ",.01)
 ;;65162-0768-11
 ;;9002226.02101,"1905,65162-0768-11 ",.02)
 ;;65162-0768-11
 ;;9002226.02101,"1905,65162-0769-10 ",.01)
 ;;65162-0769-10
 ;;9002226.02101,"1905,65162-0769-10 ",.02)
 ;;65162-0769-10
 ;;9002226.02101,"1905,65162-0769-11 ",.01)
 ;;65162-0769-11
 ;;9002226.02101,"1905,65162-0769-11 ",.02)
 ;;65162-0769-11
 ;;9002226.02101,"1905,65243-0274-03 ",.01)
 ;;65243-0274-03
 ;;9002226.02101,"1905,65243-0274-03 ",.02)
 ;;65243-0274-03
 ;;9002226.02101,"1905,66105-0110-10 ",.01)
 ;;66105-0110-10
 ;;9002226.02101,"1905,66105-0110-10 ",.02)
 ;;66105-0110-10
 ;;9002226.02101,"1905,66105-0176-10 ",.01)
 ;;66105-0176-10
 ;;9002226.02101,"1905,66105-0176-10 ",.02)
 ;;66105-0176-10
 ;;9002226.02101,"1905,66105-0518-10 ",.01)
 ;;66105-0518-10
 ;;9002226.02101,"1905,66105-0518-10 ",.02)
 ;;66105-0518-10
 ;;9002226.02101,"1905,66105-0519-10 ",.01)
 ;;66105-0519-10
 ;;9002226.02101,"1905,66105-0519-10 ",.02)
 ;;66105-0519-10
 ;;9002226.02101,"1905,66105-0521-10 ",.01)
 ;;66105-0521-10
 ;;9002226.02101,"1905,66105-0521-10 ",.02)
 ;;66105-0521-10
 ;;9002226.02101,"1905,66105-0523-10 ",.01)
 ;;66105-0523-10
 ;;9002226.02101,"1905,66105-0523-10 ",.02)
 ;;66105-0523-10
 ;;9002226.02101,"1905,66116-0469-30 ",.01)
 ;;66116-0469-30
 ;;9002226.02101,"1905,66116-0469-30 ",.02)
 ;;66116-0469-30
 ;;9002226.02101,"1905,66116-0470-30 ",.01)
 ;;66116-0470-30
 ;;9002226.02101,"1905,66116-0470-30 ",.02)
 ;;66116-0470-30
 ;;9002226.02101,"1905,66267-0268-30 ",.01)
 ;;66267-0268-30
 ;;9002226.02101,"1905,66267-0268-30 ",.02)
 ;;66267-0268-30
 ;;9002226.02101,"1905,66267-0285-30 ",.01)
 ;;66267-0285-30
 ;;9002226.02101,"1905,66267-0285-30 ",.02)
 ;;66267-0285-30
 ;;9002226.02101,"1905,66267-0628-00 ",.01)
 ;;66267-0628-00
 ;;9002226.02101,"1905,66267-0628-00 ",.02)
 ;;66267-0628-00
 ;;9002226.02101,"1905,66267-0629-00 ",.01)
 ;;66267-0629-00
 ;;9002226.02101,"1905,66267-0629-00 ",.02)
 ;;66267-0629-00
 ;;9002226.02101,"1905,66267-0630-00 ",.01)
 ;;66267-0630-00
 ;;9002226.02101,"1905,66267-0630-00 ",.02)
 ;;66267-0630-00
 ;;9002226.02101,"1905,66267-0631-00 ",.01)
 ;;66267-0631-00
 ;;9002226.02101,"1905,66267-0631-00 ",.02)
 ;;66267-0631-00
 ;;9002226.02101,"1905,66267-0632-00 ",.01)
 ;;66267-0632-00
 ;;9002226.02101,"1905,66267-0632-00 ",.02)
 ;;66267-0632-00
 ;;9002226.02101,"1905,66267-0633-00 ",.01)
 ;;66267-0633-00
 ;;9002226.02101,"1905,66267-0633-00 ",.02)
 ;;66267-0633-00
 ;;9002226.02101,"1905,66267-0634-00 ",.01)
 ;;66267-0634-00
 ;;9002226.02101,"1905,66267-0634-00 ",.02)
 ;;66267-0634-00
 ;;9002226.02101,"1905,66267-0635-00 ",.01)
 ;;66267-0635-00
 ;;9002226.02101,"1905,66267-0635-00 ",.02)
 ;;66267-0635-00
 ;;9002226.02101,"1905,66267-0636-00 ",.01)
 ;;66267-0636-00
 ;;9002226.02101,"1905,66267-0636-00 ",.02)
 ;;66267-0636-00
 ;;9002226.02101,"1905,66336-0249-20 ",.01)
 ;;66336-0249-20
 ;;9002226.02101,"1905,66336-0249-20 ",.02)
 ;;66336-0249-20
 ;;9002226.02101,"1905,66336-0249-30 ",.01)
 ;;66336-0249-30
 ;;9002226.02101,"1905,66336-0249-30 ",.02)
 ;;66336-0249-30
 ;;9002226.02101,"1905,66336-0249-60 ",.01)
 ;;66336-0249-60
 ;;9002226.02101,"1905,66336-0249-60 ",.02)
 ;;66336-0249-60
 ;;9002226.02101,"1905,66336-0250-20 ",.01)
 ;;66336-0250-20
 ;;9002226.02101,"1905,66336-0250-20 ",.02)
 ;;66336-0250-20
 ;;9002226.02101,"1905,66336-0250-30 ",.01)
 ;;66336-0250-30
 ;;9002226.02101,"1905,66336-0250-30 ",.02)
 ;;66336-0250-30
 ;;9002226.02101,"1905,66336-0250-90 ",.01)
 ;;66336-0250-90
 ;;9002226.02101,"1905,66336-0250-90 ",.02)
 ;;66336-0250-90
 ;;9002226.02101,"1905,66336-0251-30 ",.01)
 ;;66336-0251-30
 ;;9002226.02101,"1905,66336-0251-30 ",.02)
 ;;66336-0251-30
 ;;9002226.02101,"1905,66336-0251-60 ",.01)
 ;;66336-0251-60
 ;;9002226.02101,"1905,66336-0251-60 ",.02)
 ;;66336-0251-60
 ;;9002226.02101,"1905,66336-0252-14 ",.01)
 ;;66336-0252-14
 ;;9002226.02101,"1905,66336-0252-14 ",.02)
 ;;66336-0252-14
 ;;9002226.02101,"1905,66336-0252-30 ",.01)
 ;;66336-0252-30
 ;;9002226.02101,"1905,66336-0252-30 ",.02)
 ;;66336-0252-30
 ;;9002226.02101,"1905,66336-0252-60 ",.01)
 ;;66336-0252-60
 ;;9002226.02101,"1905,66336-0252-60 ",.02)
 ;;66336-0252-60
 ;;9002226.02101,"1905,66336-0252-90 ",.01)
 ;;66336-0252-90
 ;;9002226.02101,"1905,66336-0252-90 ",.02)
 ;;66336-0252-90
 ;;9002226.02101,"1905,66336-0825-30 ",.01)
 ;;66336-0825-30
 ;;9002226.02101,"1905,66336-0825-30 ",.02)
 ;;66336-0825-30
 ;;9002226.02101,"1905,67457-0582-00 ",.01)
 ;;67457-0582-00
 ;;9002226.02101,"1905,67457-0582-00 ",.02)
 ;;67457-0582-00
 ;;9002226.02101,"1905,67457-0582-10 ",.01)
 ;;67457-0582-10
 ;;9002226.02101,"1905,67457-0582-10 ",.02)
 ;;67457-0582-10
 ;;9002226.02101,"1905,67457-0583-00 ",.01)
 ;;67457-0583-00
 ;;9002226.02101,"1905,67457-0583-00 ",.02)
 ;;67457-0583-00
 ;;9002226.02101,"1905,67457-0583-04 ",.01)
 ;;67457-0583-04
 ;;9002226.02101,"1905,67457-0583-04 ",.02)
 ;;67457-0583-04
 ;;9002226.02101,"1905,67457-0584-00 ",.01)
 ;;67457-0584-00
 ;;9002226.02101,"1905,67457-0584-00 ",.02)
 ;;67457-0584-00
 ;;9002226.02101,"1905,67457-0584-06 ",.01)
 ;;67457-0584-06
 ;;9002226.02101,"1905,67457-0584-06 ",.02)
 ;;67457-0584-06
 ;;9002226.02101,"1905,67457-0585-00 ",.01)
 ;;67457-0585-00
 ;;9002226.02101,"1905,67457-0585-00 ",.02)
 ;;67457-0585-00
 ;;9002226.02101,"1905,67457-0585-08 ",.01)
 ;;67457-0585-08
 ;;9002226.02101,"1905,67457-0585-08 ",.02)
 ;;67457-0585-08
 ;;9002226.02101,"1905,67457-0592-00 ",.01)
 ;;67457-0592-00
 ;;9002226.02101,"1905,67457-0592-00 ",.02)
 ;;67457-0592-00
 ;;9002226.02101,"1905,67457-0592-10 ",.01)
 ;;67457-0592-10
 ;;9002226.02101,"1905,67457-0592-10 ",.02)
 ;;67457-0592-10
 ;;9002226.02101,"1905,67544-0052-15 ",.01)
 ;;67544-0052-15
 ;;9002226.02101,"1905,67544-0052-15 ",.02)
 ;;67544-0052-15
 ;;9002226.02101,"1905,67544-0052-20 ",.01)
 ;;67544-0052-20
 ;;9002226.02101,"1905,67544-0052-20 ",.02)
 ;;67544-0052-20
 ;;9002226.02101,"1905,67544-0052-25 ",.01)
 ;;67544-0052-25
 ;;9002226.02101,"1905,67544-0052-25 ",.02)
 ;;67544-0052-25
 ;;9002226.02101,"1905,67544-0052-28 ",.01)
 ;;67544-0052-28
 ;;9002226.02101,"1905,67544-0052-28 ",.02)
 ;;67544-0052-28
 ;;9002226.02101,"1905,67544-0052-30 ",.01)
 ;;67544-0052-30
 ;;9002226.02101,"1905,67544-0052-30 ",.02)
 ;;67544-0052-30
 ;;9002226.02101,"1905,67544-0052-35 ",.01)
 ;;67544-0052-35
 ;;9002226.02101,"1905,67544-0052-35 ",.02)
 ;;67544-0052-35
 ;;9002226.02101,"1905,67544-0052-38 ",.01)
 ;;67544-0052-38
 ;;9002226.02101,"1905,67544-0052-38 ",.02)
 ;;67544-0052-38
 ;;9002226.02101,"1905,67544-0052-40 ",.01)
 ;;67544-0052-40
 ;;9002226.02101,"1905,67544-0052-40 ",.02)
 ;;67544-0052-40
 ;;9002226.02101,"1905,67544-0052-45 ",.01)
 ;;67544-0052-45
 ;;9002226.02101,"1905,67544-0052-45 ",.02)
 ;;67544-0052-45
 ;;9002226.02101,"1905,67544-0052-50 ",.01)
 ;;67544-0052-50
 ;;9002226.02101,"1905,67544-0052-50 ",.02)
 ;;67544-0052-50
 ;;9002226.02101,"1905,67544-0052-53 ",.01)
 ;;67544-0052-53
 ;;9002226.02101,"1905,67544-0052-53 ",.02)
 ;;67544-0052-53
 ;;9002226.02101,"1905,67544-0052-55 ",.01)
 ;;67544-0052-55
 ;;9002226.02101,"1905,67544-0052-55 ",.02)
 ;;67544-0052-55
 ;;9002226.02101,"1905,67544-0052-57 ",.01)
 ;;67544-0052-57
 ;;9002226.02101,"1905,67544-0052-57 ",.02)
 ;;67544-0052-57
 ;;9002226.02101,"1905,67544-0052-60 ",.01)
 ;;67544-0052-60
 ;;9002226.02101,"1905,67544-0052-60 ",.02)
 ;;67544-0052-60
 ;;9002226.02101,"1905,67544-0052-61 ",.01)
 ;;67544-0052-61
 ;;9002226.02101,"1905,67544-0052-61 ",.02)
 ;;67544-0052-61
 ;;9002226.02101,"1905,67544-0052-65 ",.01)
 ;;67544-0052-65
 ;;9002226.02101,"1905,67544-0052-65 ",.02)
 ;;67544-0052-65
 ;;9002226.02101,"1905,67544-0052-68 ",.01)
 ;;67544-0052-68
 ;;9002226.02101,"1905,67544-0052-68 ",.02)
 ;;67544-0052-68
 ;;9002226.02101,"1905,67544-0052-70 ",.01)
 ;;67544-0052-70
 ;;9002226.02101,"1905,67544-0052-70 ",.02)
 ;;67544-0052-70
 ;;9002226.02101,"1905,67544-0052-78 ",.01)
 ;;67544-0052-78
 ;;9002226.02101,"1905,67544-0052-78 ",.02)
 ;;67544-0052-78
 ;;9002226.02101,"1905,67544-0070-30 ",.01)
 ;;67544-0070-30
 ;;9002226.02101,"1905,67544-0070-30 ",.02)
 ;;67544-0070-30
 ;;9002226.02101,"1905,67544-0194-30 ",.01)
 ;;67544-0194-30
 ;;9002226.02101,"1905,67544-0194-30 ",.02)
 ;;67544-0194-30
 ;;9002226.02101,"1905,67544-0195-30 ",.01)
 ;;67544-0195-30
 ;;9002226.02101,"1905,67544-0195-30 ",.02)
 ;;67544-0195-30
 ;;9002226.02101,"1905,67544-0195-40 ",.01)
 ;;67544-0195-40
 ;;9002226.02101,"1905,67544-0195-40 ",.02)
 ;;67544-0195-40
 ;;9002226.02101,"1905,67544-0195-45 ",.01)
 ;;67544-0195-45
 ;;9002226.02101,"1905,67544-0195-45 ",.02)
 ;;67544-0195-45
 ;;9002226.02101,"1905,67544-0195-53 ",.01)
 ;;67544-0195-53
 ;;9002226.02101,"1905,67544-0195-53 ",.02)
 ;;67544-0195-53
 ;;9002226.02101,"1905,67544-0195-60 ",.01)
 ;;67544-0195-60
 ;;9002226.02101,"1905,67544-0195-60 ",.02)
 ;;67544-0195-60
 ;;9002226.02101,"1905,67544-0318-15 ",.01)
 ;;67544-0318-15
 ;;9002226.02101,"1905,67544-0318-15 ",.02)
 ;;67544-0318-15
 ;;9002226.02101,"1905,67544-0318-30 ",.01)
 ;;67544-0318-30
 ;;9002226.02101,"1905,67544-0318-30 ",.02)
 ;;67544-0318-30
 ;;9002226.02101,"1905,67544-0318-35 ",.01)
 ;;67544-0318-35
 ;;9002226.02101,"1905,67544-0318-35 ",.02)
 ;;67544-0318-35
 ;;9002226.02101,"1905,67544-0318-40 ",.01)
 ;;67544-0318-40
