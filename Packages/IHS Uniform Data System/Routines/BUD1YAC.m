BUD1YAC ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON NOV 25, 2011 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1113,00186-0916-12 ",.01)
 ;;00186-0916-12
 ;;9002226.02101,"1113,00186-0916-12 ",.02)
 ;;00186-0916-12
 ;;9002226.02101,"1113,00186-0917-06 ",.01)
 ;;00186-0917-06
 ;;9002226.02101,"1113,00186-0917-06 ",.02)
 ;;00186-0917-06
 ;;9002226.02101,"1113,00247-0667-08 ",.01)
 ;;00247-0667-08
 ;;9002226.02101,"1113,00247-0667-08 ",.02)
 ;;00247-0667-08
 ;;9002226.02101,"1113,00247-0674-41 ",.01)
 ;;00247-0674-41
 ;;9002226.02101,"1113,00247-0674-41 ",.02)
 ;;00247-0674-41
 ;;9002226.02101,"1113,00256-0114-01 ",.01)
 ;;00256-0114-01
 ;;9002226.02101,"1113,00256-0114-01 ",.02)
 ;;00256-0114-01
 ;;9002226.02101,"1113,00256-0115-01 ",.01)
 ;;00256-0115-01
 ;;9002226.02101,"1113,00256-0115-01 ",.02)
 ;;00256-0115-01
 ;;9002226.02101,"1113,00256-0150-01 ",.01)
 ;;00256-0150-01
 ;;9002226.02101,"1113,00256-0150-01 ",.02)
 ;;00256-0150-01
 ;;9002226.02101,"1113,00258-3581-01 ",.01)
 ;;00258-3581-01
 ;;9002226.02101,"1113,00258-3581-01 ",.02)
 ;;00258-3581-01
 ;;9002226.02101,"1113,00258-3581-05 ",.01)
 ;;00258-3581-05
 ;;9002226.02101,"1113,00258-3581-05 ",.02)
 ;;00258-3581-05
 ;;9002226.02101,"1113,00258-3581-10 ",.01)
 ;;00258-3581-10
 ;;9002226.02101,"1113,00258-3581-10 ",.02)
 ;;00258-3581-10
 ;;9002226.02101,"1113,00258-3583-01 ",.01)
 ;;00258-3583-01
 ;;9002226.02101,"1113,00258-3583-01 ",.02)
 ;;00258-3583-01
 ;;9002226.02101,"1113,00258-3583-05 ",.01)
 ;;00258-3583-05
 ;;9002226.02101,"1113,00258-3583-05 ",.02)
 ;;00258-3583-05
 ;;9002226.02101,"1113,00258-3583-10 ",.01)
 ;;00258-3583-10
 ;;9002226.02101,"1113,00258-3583-10 ",.02)
 ;;00258-3583-10
 ;;9002226.02101,"1113,00258-3584-01 ",.01)
 ;;00258-3584-01
 ;;9002226.02101,"1113,00258-3584-01 ",.02)
 ;;00258-3584-01
 ;;9002226.02101,"1113,00258-3584-05 ",.01)
 ;;00258-3584-05
 ;;9002226.02101,"1113,00258-3584-05 ",.02)
 ;;00258-3584-05
 ;;9002226.02101,"1113,00258-3614-01 ",.01)
 ;;00258-3614-01
 ;;9002226.02101,"1113,00258-3614-01 ",.02)
 ;;00258-3614-01
 ;;9002226.02101,"1113,00258-3625-01 ",.01)
 ;;00258-3625-01
 ;;9002226.02101,"1113,00258-3625-01 ",.02)
 ;;00258-3625-01
 ;;9002226.02101,"1113,00258-3634-01 ",.01)
 ;;00258-3634-01
 ;;9002226.02101,"1113,00258-3634-01 ",.02)
 ;;00258-3634-01
 ;;9002226.02101,"1113,00258-3638-01 ",.01)
 ;;00258-3638-01
 ;;9002226.02101,"1113,00258-3638-01 ",.02)
 ;;00258-3638-01
 ;;9002226.02101,"1113,00310-0401-60 ",.01)
 ;;00310-0401-60
 ;;9002226.02101,"1113,00310-0401-60 ",.02)
 ;;00310-0401-60
 ;;9002226.02101,"1113,00310-0402-39 ",.01)
 ;;00310-0402-39
 ;;9002226.02101,"1113,00310-0402-39 ",.02)
 ;;00310-0402-39
 ;;9002226.02101,"1113,00310-0402-60 ",.01)
 ;;00310-0402-60
 ;;9002226.02101,"1113,00310-0402-60 ",.02)
 ;;00310-0402-60
 ;;9002226.02101,"1113,00310-0411-60 ",.01)
 ;;00310-0411-60
 ;;9002226.02101,"1113,00310-0411-60 ",.02)
 ;;00310-0411-60
 ;;9002226.02101,"1113,00310-0412-60 ",.01)
 ;;00310-0412-60
 ;;9002226.02101,"1113,00310-0412-60 ",.02)
 ;;00310-0412-60
 ;;9002226.02101,"1113,00440-8355-99 ",.01)
 ;;00440-8355-99
 ;;9002226.02101,"1113,00440-8355-99 ",.02)
 ;;00440-8355-99
 ;;9002226.02101,"1113,00440-8530-30 ",.01)
 ;;00440-8530-30
 ;;9002226.02101,"1113,00440-8530-30 ",.02)
 ;;00440-8530-30
 ;;9002226.02101,"1113,00440-8531-10 ",.01)
 ;;00440-8531-10
 ;;9002226.02101,"1113,00440-8531-10 ",.02)
 ;;00440-8531-10
 ;;9002226.02101,"1113,00440-8531-30 ",.01)
 ;;00440-8531-30
 ;;9002226.02101,"1113,00440-8531-30 ",.02)
 ;;00440-8531-30
 ;;9002226.02101,"1113,00440-8531-90 ",.01)
 ;;00440-8531-90
 ;;9002226.02101,"1113,00440-8531-90 ",.02)
 ;;00440-8531-90
 ;;9002226.02101,"1113,00440-8531-94 ",.01)
 ;;00440-8531-94
 ;;9002226.02101,"1113,00440-8531-94 ",.02)
 ;;00440-8531-94
 ;;9002226.02101,"1113,00440-8532-20 ",.01)
 ;;00440-8532-20
 ;;9002226.02101,"1113,00440-8532-20 ",.02)
 ;;00440-8532-20
 ;;9002226.02101,"1113,00440-8532-30 ",.01)
 ;;00440-8532-30
 ;;9002226.02101,"1113,00440-8532-30 ",.02)
 ;;00440-8532-30
 ;;9002226.02101,"1113,00440-8532-90 ",.01)
 ;;00440-8532-90
 ;;9002226.02101,"1113,00440-8532-90 ",.02)
 ;;00440-8532-90
 ;;9002226.02101,"1113,00440-8532-94 ",.01)
 ;;00440-8532-94
 ;;9002226.02101,"1113,00440-8532-94 ",.02)
 ;;00440-8532-94
 ;;9002226.02101,"1113,00456-0670-99 ",.01)
 ;;00456-0670-99
 ;;9002226.02101,"1113,00456-0670-99 ",.02)
 ;;00456-0670-99
 ;;9002226.02101,"1113,00456-0672-99 ",.01)
 ;;00456-0672-99
 ;;9002226.02101,"1113,00456-0672-99 ",.02)
 ;;00456-0672-99
 ;;9002226.02101,"1113,00456-4301-01 ",.01)
 ;;00456-4301-01
 ;;9002226.02101,"1113,00456-4301-01 ",.02)
 ;;00456-4301-01
 ;;9002226.02101,"1113,00456-4302-01 ",.01)
 ;;00456-4302-01
 ;;9002226.02101,"1113,00456-4302-01 ",.02)
 ;;00456-4302-01
 ;;9002226.02101,"1113,00456-4303-01 ",.01)
 ;;00456-4303-01
 ;;9002226.02101,"1113,00456-4303-01 ",.02)
 ;;00456-4303-01
 ;;9002226.02101,"1113,00456-4310-01 ",.01)
 ;;00456-4310-01
 ;;9002226.02101,"1113,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"1113,00456-4310-02 ",.01)
 ;;00456-4310-02
 ;;9002226.02101,"1113,00456-4310-02 ",.02)
 ;;00456-4310-02
 ;;9002226.02101,"1113,00456-4320-00 ",.01)
 ;;00456-4320-00
 ;;9002226.02101,"1113,00456-4320-00 ",.02)
 ;;00456-4320-00
 ;;9002226.02101,"1113,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"1113,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"1113,00456-4320-02 ",.01)
 ;;00456-4320-02
 ;;9002226.02101,"1113,00456-4320-02 ",.02)
 ;;00456-4320-02
 ;;9002226.02101,"1113,00456-4330-00 ",.01)
 ;;00456-4330-00
 ;;9002226.02101,"1113,00456-4330-00 ",.02)
 ;;00456-4330-00
 ;;9002226.02101,"1113,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"1113,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"1113,00456-4330-02 ",.01)
 ;;00456-4330-02
 ;;9002226.02101,"1113,00456-4330-02 ",.02)
 ;;00456-4330-02
 ;;9002226.02101,"1113,00456-4345-01 ",.01)
 ;;00456-4345-01
 ;;9002226.02101,"1113,00456-4345-01 ",.02)
 ;;00456-4345-01
 ;;9002226.02101,"1113,00490-0080-00 ",.01)
 ;;00490-0080-00
 ;;9002226.02101,"1113,00490-0080-00 ",.02)
 ;;00490-0080-00
 ;;9002226.02101,"1113,00490-0080-30 ",.01)
 ;;00490-0080-30
 ;;9002226.02101,"1113,00490-0080-30 ",.02)
 ;;00490-0080-30
 ;;9002226.02101,"1113,00490-0080-60 ",.01)
 ;;00490-0080-60
 ;;9002226.02101,"1113,00490-0080-60 ",.02)
 ;;00490-0080-60
 ;;9002226.02101,"1113,00490-0080-90 ",.01)
 ;;00490-0080-90
 ;;9002226.02101,"1113,00490-0080-90 ",.02)
 ;;00490-0080-90
 ;;9002226.02101,"1113,00585-0675-01 ",.01)
 ;;00585-0675-01
 ;;9002226.02101,"1113,00585-0675-01 ",.02)
 ;;00585-0675-01
 ;;9002226.02101,"1113,00585-0675-02 ",.01)
 ;;00585-0675-02
 ;;9002226.02101,"1113,00585-0675-02 ",.02)
 ;;00585-0675-02
 ;;9002226.02101,"1113,00585-0685-02 ",.01)
 ;;00585-0685-02
 ;;9002226.02101,"1113,00585-0685-02 ",.02)
 ;;00585-0685-02
 ;;9002226.02101,"1113,00603-5944-21 ",.01)
 ;;00603-5944-21
 ;;9002226.02101,"1113,00603-5944-21 ",.02)
 ;;00603-5944-21
 ;;9002226.02101,"1113,00603-5944-28 ",.01)
 ;;00603-5944-28
 ;;9002226.02101,"1113,00603-5944-28 ",.02)
 ;;00603-5944-28
 ;;9002226.02101,"1113,00603-5945-21 ",.01)
 ;;00603-5945-21
 ;;9002226.02101,"1113,00603-5945-21 ",.02)
 ;;00603-5945-21
 ;;9002226.02101,"1113,00603-5945-28 ",.01)
 ;;00603-5945-28
 ;;9002226.02101,"1113,00603-5945-28 ",.02)
 ;;00603-5945-28
 ;;9002226.02101,"1113,00603-5945-32 ",.01)
 ;;00603-5945-32
 ;;9002226.02101,"1113,00603-5945-32 ",.02)
 ;;00603-5945-32
 ;;9002226.02101,"1113,00603-5946-21 ",.01)
 ;;00603-5946-21
 ;;9002226.02101,"1113,00603-5946-21 ",.02)
 ;;00603-5946-21
 ;;9002226.02101,"1113,00603-5946-28 ",.01)
 ;;00603-5946-28
 ;;9002226.02101,"1113,00603-5946-28 ",.02)
 ;;00603-5946-28
 ;;9002226.02101,"1113,00603-5946-32 ",.01)
 ;;00603-5946-32
 ;;9002226.02101,"1113,00603-5946-32 ",.02)
 ;;00603-5946-32
 ;;9002226.02101,"1113,00603-5950-21 ",.01)
 ;;00603-5950-21
 ;;9002226.02101,"1113,00603-5950-21 ",.02)
 ;;00603-5950-21
 ;;9002226.02101,"1113,00603-5951-21 ",.01)
 ;;00603-5951-21
 ;;9002226.02101,"1113,00603-5951-21 ",.02)
 ;;00603-5951-21
 ;;9002226.02101,"1113,00603-5952-21 ",.01)
 ;;00603-5952-21
 ;;9002226.02101,"1113,00603-5952-21 ",.02)
 ;;00603-5952-21
 ;;9002226.02101,"1113,00677-0817-01 ",.01)
 ;;00677-0817-01
 ;;9002226.02101,"1113,00677-0817-01 ",.02)
 ;;00677-0817-01
 ;;9002226.02101,"1113,00677-0817-05 ",.01)
 ;;00677-0817-05
 ;;9002226.02101,"1113,00677-0817-05 ",.02)
 ;;00677-0817-05
 ;;9002226.02101,"1113,00677-0846-01 ",.01)
 ;;00677-0846-01
 ;;9002226.02101,"1113,00677-0846-01 ",.02)
 ;;00677-0846-01
 ;;9002226.02101,"1113,00677-0846-05 ",.01)
 ;;00677-0846-05
 ;;9002226.02101,"1113,00677-0846-05 ",.02)
 ;;00677-0846-05
 ;;9002226.02101,"1113,00904-1610-60 ",.01)
 ;;00904-1610-60
 ;;9002226.02101,"1113,00904-1610-60 ",.02)
 ;;00904-1610-60
 ;;9002226.02101,"1113,00904-1610-61 ",.01)
 ;;00904-1610-61
 ;;9002226.02101,"1113,00904-1610-61 ",.02)
 ;;00904-1610-61
 ;;9002226.02101,"1113,00904-1611-60 ",.01)
 ;;00904-1611-60
 ;;9002226.02101,"1113,00904-1611-60 ",.02)
 ;;00904-1611-60
 ;;9002226.02101,"1113,00904-1611-61 ",.01)
 ;;00904-1611-61
 ;;9002226.02101,"1113,00904-1611-61 ",.02)
 ;;00904-1611-61
 ;;9002226.02101,"1113,00904-1611-80 ",.01)
 ;;00904-1611-80
 ;;9002226.02101,"1113,00904-1611-80 ",.02)
 ;;00904-1611-80
 ;;9002226.02101,"1113,00904-1612-40 ",.01)
 ;;00904-1612-40
 ;;9002226.02101,"1113,00904-1612-40 ",.02)
 ;;00904-1612-40
 ;;9002226.02101,"1113,00904-1612-60 ",.01)
 ;;00904-1612-60
 ;;9002226.02101,"1113,00904-1612-60 ",.02)
 ;;00904-1612-60
 ;;9002226.02101,"1113,00904-1612-61 ",.01)
 ;;00904-1612-61
 ;;9002226.02101,"1113,00904-1612-61 ",.02)
 ;;00904-1612-61
 ;;9002226.02101,"1113,00904-1612-80 ",.01)
 ;;00904-1612-80
 ;;9002226.02101,"1113,00904-1612-80 ",.02)
 ;;00904-1612-80
 ;;9002226.02101,"1113,00904-5887-61 ",.01)
 ;;00904-5887-61
 ;;9002226.02101,"1113,00904-5887-61 ",.02)
 ;;00904-5887-61
 ;;9002226.02101,"1113,00904-5888-61 ",.01)
 ;;00904-5888-61
 ;;9002226.02101,"1113,00904-5888-61 ",.02)
 ;;00904-5888-61
 ;;9002226.02101,"1113,00904-5889-61 ",.01)
 ;;00904-5889-61
 ;;9002226.02101,"1113,00904-5889-61 ",.02)
 ;;00904-5889-61
 ;;9002226.02101,"1113,00904-7849-60 ",.01)
 ;;00904-7849-60
 ;;9002226.02101,"1113,00904-7849-60 ",.02)
 ;;00904-7849-60
 ;;9002226.02101,"1113,10122-0901-12 ",.01)
 ;;10122-0901-12
 ;;9002226.02101,"1113,10122-0901-12 ",.02)
 ;;10122-0901-12
 ;;9002226.02101,"1113,10122-0902-12 ",.01)
 ;;10122-0902-12
 ;;9002226.02101,"1113,10122-0902-12 ",.02)
 ;;10122-0902-12
 ;;9002226.02101,"1113,12280-0042-90 ",.01)
 ;;12280-0042-90
 ;;9002226.02101,"1113,12280-0042-90 ",.02)
 ;;12280-0042-90
 ;;9002226.02101,"1113,12280-0173-60 ",.01)
 ;;12280-0173-60
 ;;9002226.02101,"1113,12280-0173-60 ",.02)
 ;;12280-0173-60
 ;;9002226.02101,"1113,13411-0151-01 ",.01)
 ;;13411-0151-01
 ;;9002226.02101,"1113,13411-0151-01 ",.02)
 ;;13411-0151-01
 ;;9002226.02101,"1113,13411-0151-03 ",.01)
 ;;13411-0151-03
 ;;9002226.02101,"1113,13411-0151-03 ",.02)
 ;;13411-0151-03
 ;;9002226.02101,"1113,13411-0151-06 ",.01)
 ;;13411-0151-06
 ;;9002226.02101,"1113,13411-0151-06 ",.02)
 ;;13411-0151-06
 ;;9002226.02101,"1113,13411-0151-09 ",.01)
 ;;13411-0151-09
 ;;9002226.02101,"1113,13411-0151-09 ",.02)
 ;;13411-0151-09
 ;;9002226.02101,"1113,13411-0151-15 ",.01)
 ;;13411-0151-15
 ;;9002226.02101,"1113,13411-0151-15 ",.02)
 ;;13411-0151-15
 ;;9002226.02101,"1113,13411-0160-01 ",.01)
 ;;13411-0160-01
 ;;9002226.02101,"1113,13411-0160-01 ",.02)
 ;;13411-0160-01
 ;;9002226.02101,"1113,13411-0160-03 ",.01)
 ;;13411-0160-03
 ;;9002226.02101,"1113,13411-0160-03 ",.02)
 ;;13411-0160-03
 ;;9002226.02101,"1113,13411-0160-06 ",.01)
 ;;13411-0160-06
 ;;9002226.02101,"1113,13411-0160-06 ",.02)
 ;;13411-0160-06
 ;;9002226.02101,"1113,13411-0160-09 ",.01)
 ;;13411-0160-09
 ;;9002226.02101,"1113,13411-0160-09 ",.02)
 ;;13411-0160-09
 ;;9002226.02101,"1113,13411-0160-15 ",.01)
 ;;13411-0160-15
 ;;9002226.02101,"1113,13411-0160-15 ",.02)
 ;;13411-0160-15
 ;;9002226.02101,"1113,16571-0011-10 ",.01)
 ;;16571-0011-10
 ;;9002226.02101,"1113,16571-0011-10 ",.02)
 ;;16571-0011-10
 ;;9002226.02101,"1113,16590-0025-20 ",.01)
 ;;16590-0025-20
 ;;9002226.02101,"1113,16590-0025-20 ",.02)
 ;;16590-0025-20
 ;;9002226.02101,"1113,16590-0860-71 ",.01)
 ;;16590-0860-71
 ;;9002226.02101,"1113,16590-0860-71 ",.02)
 ;;16590-0860-71
 ;;9002226.02101,"1113,16590-0860-73 ",.01)
 ;;16590-0860-73
 ;;9002226.02101,"1113,16590-0860-73 ",.02)
 ;;16590-0860-73
 ;;9002226.02101,"1113,17236-0324-01 ",.01)
 ;;17236-0324-01
 ;;9002226.02101,"1113,17236-0324-01 ",.02)
 ;;17236-0324-01
 ;;9002226.02101,"1113,17236-0324-10 ",.01)
 ;;17236-0324-10
 ;;9002226.02101,"1113,17236-0324-10 ",.02)
 ;;17236-0324-10
 ;;9002226.02101,"1113,17236-0325-01 ",.01)
 ;;17236-0325-01
 ;;9002226.02101,"1113,17236-0325-01 ",.02)
 ;;17236-0325-01
 ;;9002226.02101,"1113,17236-0325-10 ",.01)
 ;;17236-0325-10
 ;;9002226.02101,"1113,17236-0325-10 ",.02)
 ;;17236-0325-10
 ;;9002226.02101,"1113,17236-0335-01 ",.01)
 ;;17236-0335-01
 ;;9002226.02101,"1113,17236-0335-01 ",.02)
 ;;17236-0335-01
 ;;9002226.02101,"1113,17236-0335-05 ",.01)
 ;;17236-0335-05
 ;;9002226.02101,"1113,17236-0335-05 ",.02)
 ;;17236-0335-05
 ;;9002226.02101,"1113,21695-0196-01 ",.01)
 ;;21695-0196-01
 ;;9002226.02101,"1113,21695-0196-01 ",.02)
 ;;21695-0196-01
 ;;9002226.02101,"1113,21695-0197-01 ",.01)
 ;;21695-0197-01
 ;;9002226.02101,"1113,21695-0197-01 ",.02)
 ;;21695-0197-01
 ;;9002226.02101,"1113,21695-0221-30 ",.01)
 ;;21695-0221-30
