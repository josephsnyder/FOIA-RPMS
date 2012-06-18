BGP6AXGB ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 21, 2005 ;
 ;;7.0;IHS CLINICAL REPORTING;;JAN 24, 2007
 ;;;BGP6;;AUG 21, 2005
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"346,00258-3584-05 ",.02)
 ;;00258-3584-05
 ;;9002226.02101,"346,00258-3614-01 ",.01)
 ;;00258-3614-01
 ;;9002226.02101,"346,00258-3614-01 ",.02)
 ;;00258-3614-01
 ;;9002226.02101,"346,00258-3625-01 ",.01)
 ;;00258-3625-01
 ;;9002226.02101,"346,00258-3625-01 ",.02)
 ;;00258-3625-01
 ;;9002226.02101,"346,00258-3634-01 ",.01)
 ;;00258-3634-01
 ;;9002226.02101,"346,00258-3634-01 ",.02)
 ;;00258-3634-01
 ;;9002226.02101,"346,00258-3638-01 ",.01)
 ;;00258-3638-01
 ;;9002226.02101,"346,00258-3638-01 ",.02)
 ;;00258-3638-01
 ;;9002226.02101,"346,00310-0401-60 ",.01)
 ;;00310-0401-60
 ;;9002226.02101,"346,00310-0401-60 ",.02)
 ;;00310-0401-60
 ;;9002226.02101,"346,00310-0402-39 ",.01)
 ;;00310-0402-39
 ;;9002226.02101,"346,00310-0402-39 ",.02)
 ;;00310-0402-39
 ;;9002226.02101,"346,00310-0402-60 ",.01)
 ;;00310-0402-60
 ;;9002226.02101,"346,00310-0402-60 ",.02)
 ;;00310-0402-60
 ;;9002226.02101,"346,00338-0437-04 ",.01)
 ;;00338-0437-04
 ;;9002226.02101,"346,00338-0437-04 ",.02)
 ;;00338-0437-04
 ;;9002226.02101,"346,00338-0439-03 ",.01)
 ;;00338-0439-03
 ;;9002226.02101,"346,00338-0439-03 ",.02)
 ;;00338-0439-03
 ;;9002226.02101,"346,00338-0439-04 ",.01)
 ;;00338-0439-04
 ;;9002226.02101,"346,00338-0439-04 ",.02)
 ;;00338-0439-04
 ;;9002226.02101,"346,00338-0441-02 ",.01)
 ;;00338-0441-02
 ;;9002226.02101,"346,00338-0441-02 ",.02)
 ;;00338-0441-02
 ;;9002226.02101,"346,00338-0441-03 ",.01)
 ;;00338-0441-03
 ;;9002226.02101,"346,00338-0441-03 ",.02)
 ;;00338-0441-03
 ;;9002226.02101,"346,00338-0443-48 ",.01)
 ;;00338-0443-48
 ;;9002226.02101,"346,00338-0443-48 ",.02)
 ;;00338-0443-48
 ;;9002226.02101,"346,00338-0444-02 ",.01)
 ;;00338-0444-02
 ;;9002226.02101,"346,00338-0444-02 ",.02)
 ;;00338-0444-02
 ;;9002226.02101,"346,00338-0445-41 ",.01)
 ;;00338-0445-41
 ;;9002226.02101,"346,00338-0445-41 ",.02)
 ;;00338-0445-41
 ;;9002226.02101,"346,00338-0445-48 ",.01)
 ;;00338-0445-48
 ;;9002226.02101,"346,00338-0445-48 ",.02)
 ;;00338-0445-48
 ;;9002226.02101,"346,00456-0644-16 ",.01)
 ;;00456-0644-16
 ;;9002226.02101,"346,00456-0644-16 ",.02)
 ;;00456-0644-16
 ;;9002226.02101,"346,00456-4310-01 ",.01)
 ;;00456-4310-01
 ;;9002226.02101,"346,00456-4310-01 ",.02)
 ;;00456-4310-01
 ;;9002226.02101,"346,00456-4310-02 ",.01)
 ;;00456-4310-02
 ;;9002226.02101,"346,00456-4310-02 ",.02)
 ;;00456-4310-02
 ;;9002226.02101,"346,00456-4320-00 ",.01)
 ;;00456-4320-00
 ;;9002226.02101,"346,00456-4320-00 ",.02)
 ;;00456-4320-00
 ;;9002226.02101,"346,00456-4320-01 ",.01)
 ;;00456-4320-01
 ;;9002226.02101,"346,00456-4320-01 ",.02)
 ;;00456-4320-01
 ;;9002226.02101,"346,00456-4320-02 ",.01)
 ;;00456-4320-02
 ;;9002226.02101,"346,00456-4320-02 ",.02)
 ;;00456-4320-02
 ;;9002226.02101,"346,00456-4330-00 ",.01)
 ;;00456-4330-00
 ;;9002226.02101,"346,00456-4330-00 ",.02)
 ;;00456-4330-00
 ;;9002226.02101,"346,00456-4330-01 ",.01)
 ;;00456-4330-01
 ;;9002226.02101,"346,00456-4330-01 ",.02)
 ;;00456-4330-01
 ;;9002226.02101,"346,00456-4330-02 ",.01)
 ;;00456-4330-02
 ;;9002226.02101,"346,00456-4330-02 ",.02)
 ;;00456-4330-02
 ;;9002226.02101,"346,00463-9031-16 ",.01)
 ;;00463-9031-16
 ;;9002226.02101,"346,00463-9031-16 ",.02)
 ;;00463-9031-16
 ;;9002226.02101,"346,00472-0750-21 ",.01)
 ;;00472-0750-21
 ;;9002226.02101,"346,00472-0750-21 ",.02)
 ;;00472-0750-21
 ;;9002226.02101,"346,00472-0750-60 ",.01)
 ;;00472-0750-60
 ;;9002226.02101,"346,00472-0750-60 ",.02)
 ;;00472-0750-60
 ;;9002226.02101,"346,00472-1444-16 ",.01)
 ;;00472-1444-16
 ;;9002226.02101,"346,00472-1444-16 ",.02)
 ;;00472-1444-16
 ;;9002226.02101,"346,00585-0673-02 ",.01)
 ;;00585-0673-02
 ;;9002226.02101,"346,00585-0673-02 ",.02)
 ;;00585-0673-02
 ;;9002226.02101,"346,00585-0673-03 ",.01)
 ;;00585-0673-03
 ;;9002226.02101,"346,00585-0673-03 ",.02)
 ;;00585-0673-03
 ;;9002226.02101,"346,00585-0675-01 ",.01)
 ;;00585-0675-01
 ;;9002226.02101,"346,00585-0675-01 ",.02)
 ;;00585-0675-01
 ;;9002226.02101,"346,00585-0675-02 ",.01)
 ;;00585-0675-02
 ;;9002226.02101,"346,00585-0675-02 ",.02)
 ;;00585-0675-02
 ;;9002226.02101,"346,00585-0685-02 ",.01)
 ;;00585-0685-02
 ;;9002226.02101,"346,00585-0685-02 ",.02)
 ;;00585-0685-02
 ;;9002226.02101,"346,00603-5747-21 ",.01)
 ;;00603-5747-21
 ;;9002226.02101,"346,00603-5747-21 ",.02)
 ;;00603-5747-21
 ;;9002226.02101,"346,00603-5944-21 ",.01)
 ;;00603-5944-21
 ;;9002226.02101,"346,00603-5944-21 ",.02)
 ;;00603-5944-21
 ;;9002226.02101,"346,00603-5944-28 ",.01)
 ;;00603-5944-28
 ;;9002226.02101,"346,00603-5944-28 ",.02)
 ;;00603-5944-28
 ;;9002226.02101,"346,00603-5945-21 ",.01)
 ;;00603-5945-21
 ;;9002226.02101,"346,00603-5945-21 ",.02)
 ;;00603-5945-21
 ;;9002226.02101,"346,00603-5945-28 ",.01)
 ;;00603-5945-28
 ;;9002226.02101,"346,00603-5945-28 ",.02)
 ;;00603-5945-28
 ;;9002226.02101,"346,00603-5945-32 ",.01)
 ;;00603-5945-32
 ;;9002226.02101,"346,00603-5945-32 ",.02)
 ;;00603-5945-32
 ;;9002226.02101,"346,00603-5946-21 ",.01)
 ;;00603-5946-21
 ;;9002226.02101,"346,00603-5946-21 ",.02)
 ;;00603-5946-21
 ;;9002226.02101,"346,00603-5946-28 ",.01)
 ;;00603-5946-28
 ;;9002226.02101,"346,00603-5946-28 ",.02)
 ;;00603-5946-28
 ;;9002226.02101,"346,00603-5946-32 ",.01)
 ;;00603-5946-32
 ;;9002226.02101,"346,00603-5946-32 ",.02)
 ;;00603-5946-32
 ;;9002226.02101,"346,00603-5950-21 ",.01)
 ;;00603-5950-21
 ;;9002226.02101,"346,00603-5950-21 ",.02)
 ;;00603-5950-21
 ;;9002226.02101,"346,00603-5951-21 ",.01)
 ;;00603-5951-21
 ;;9002226.02101,"346,00603-5951-21 ",.02)
 ;;00603-5951-21
 ;;9002226.02101,"346,00603-5952-21 ",.01)
 ;;00603-5952-21
 ;;9002226.02101,"346,00603-5952-21 ",.02)
 ;;00603-5952-21
 ;;9002226.02101,"346,00677-0817-01 ",.01)
 ;;00677-0817-01
 ;;9002226.02101,"346,00677-0817-01 ",.02)
 ;;00677-0817-01
 ;;9002226.02101,"346,00677-0817-05 ",.01)
 ;;00677-0817-05
 ;;9002226.02101,"346,00677-0817-05 ",.02)
 ;;00677-0817-05
 ;;9002226.02101,"346,00677-0846-01 ",.01)
 ;;00677-0846-01
 ;;9002226.02101,"346,00677-0846-01 ",.02)
 ;;00677-0846-01
 ;;9002226.02101,"346,00677-0846-05 ",.01)
 ;;00677-0846-05
 ;;9002226.02101,"346,00677-0846-05 ",.02)
 ;;00677-0846-05
 ;;9002226.02101,"346,00904-1610-60 ",.01)
 ;;00904-1610-60
 ;;9002226.02101,"346,00904-1610-60 ",.02)
 ;;00904-1610-60
 ;;9002226.02101,"346,00904-1610-61 ",.01)
 ;;00904-1610-61
 ;;9002226.02101,"346,00904-1610-61 ",.02)
 ;;00904-1610-61
 ;;9002226.02101,"346,00904-1611-40 ",.01)
 ;;00904-1611-40
 ;;9002226.02101,"346,00904-1611-40 ",.02)
 ;;00904-1611-40
 ;;9002226.02101,"346,00904-1611-60 ",.01)
 ;;00904-1611-60
 ;;9002226.02101,"346,00904-1611-60 ",.02)
 ;;00904-1611-60
 ;;9002226.02101,"346,00904-1611-61 ",.01)
 ;;00904-1611-61
 ;;9002226.02101,"346,00904-1611-61 ",.02)
 ;;00904-1611-61
 ;;9002226.02101,"346,00904-1611-80 ",.01)
 ;;00904-1611-80
 ;;9002226.02101,"346,00904-1611-80 ",.02)
 ;;00904-1611-80
 ;;9002226.02101,"346,00904-1612-40 ",.01)
 ;;00904-1612-40
 ;;9002226.02101,"346,00904-1612-40 ",.02)
 ;;00904-1612-40
 ;;9002226.02101,"346,00904-1612-60 ",.01)
 ;;00904-1612-60
 ;;9002226.02101,"346,00904-1612-60 ",.02)
 ;;00904-1612-60
 ;;9002226.02101,"346,00904-1612-61 ",.01)
 ;;00904-1612-61
 ;;9002226.02101,"346,00904-1612-61 ",.02)
 ;;00904-1612-61
 ;;9002226.02101,"346,00904-1612-80 ",.01)
 ;;00904-1612-80
 ;;9002226.02101,"346,00904-1612-80 ",.02)
 ;;00904-1612-80
 ;;9002226.02101,"346,00904-7849-60 ",.01)
 ;;00904-7849-60
 ;;9002226.02101,"346,00904-7849-60 ",.02)
 ;;00904-7849-60
 ;;9002226.02101,"346,05324-5309-35 ",.01)
 ;;05324-5309-35
 ;;9002226.02101,"346,05324-5309-35 ",.02)
 ;;05324-5309-35
 ;;9002226.02101,"346,05324-5309-45 ",.01)
 ;;05324-5309-45
 ;;9002226.02101,"346,05324-5309-45 ",.02)
 ;;05324-5309-45
 ;;9002226.02101,"346,17236-0324-01 ",.01)
 ;;17236-0324-01
 ;;9002226.02101,"346,17236-0324-01 ",.02)
 ;;17236-0324-01
 ;;9002226.02101,"346,17236-0324-10 ",.01)
 ;;17236-0324-10
 ;;9002226.02101,"346,17236-0324-10 ",.02)
 ;;17236-0324-10
 ;;9002226.02101,"346,17236-0325-01 ",.01)
 ;;17236-0325-01
 ;;9002226.02101,"346,17236-0325-01 ",.02)
 ;;17236-0325-01
 ;;9002226.02101,"346,17236-0325-05 ",.01)
 ;;17236-0325-05
 ;;9002226.02101,"346,17236-0325-05 ",.02)
 ;;17236-0325-05
 ;;9002226.02101,"346,17236-0325-10 ",.01)
 ;;17236-0325-10
 ;;9002226.02101,"346,17236-0325-10 ",.02)
 ;;17236-0325-10
 ;;9002226.02101,"346,17236-0335-01 ",.01)
 ;;17236-0335-01
 ;;9002226.02101,"346,17236-0335-01 ",.02)
 ;;17236-0335-01
 ;;9002226.02101,"346,17317-0571-01 ",.01)
 ;;17317-0571-01
 ;;9002226.02101,"346,17317-0571-01 ",.02)
 ;;17317-0571-01
 ;;9002226.02101,"346,17317-0571-04 ",.01)
 ;;17317-0571-04
 ;;9002226.02101,"346,17317-0571-04 ",.02)
 ;;17317-0571-04
 ;;9002226.02101,"346,17317-0571-05 ",.01)
 ;;17317-0571-05
 ;;9002226.02101,"346,17317-0571-05 ",.02)
 ;;17317-0571-05
 ;;9002226.02101,"346,17317-0571-08 ",.01)
 ;;17317-0571-08
 ;;9002226.02101,"346,17317-0571-08 ",.02)
 ;;17317-0571-08
 ;;9002226.02101,"346,24208-0373-60 ",.01)
 ;;24208-0373-60
 ;;9002226.02101,"346,24208-0373-60 ",.02)
 ;;24208-0373-60
 ;;9002226.02101,"346,24208-0373-62 ",.01)
 ;;24208-0373-62
 ;;9002226.02101,"346,24208-0373-62 ",.02)
 ;;24208-0373-62
 ;;9002226.02101,"346,45902-0689-12 ",.01)
 ;;45902-0689-12
 ;;9002226.02101,"346,45902-0689-12 ",.02)
 ;;45902-0689-12
 ;;9002226.02101,"346,49452-7720-01 ",.01)
 ;;49452-7720-01
 ;;9002226.02101,"346,49452-7720-01 ",.02)
 ;;49452-7720-01
 ;;9002226.02101,"346,49452-7720-02 ",.01)
 ;;49452-7720-02
 ;;9002226.02101,"346,49452-7720-02 ",.02)
 ;;49452-7720-02
 ;;9002226.02101,"346,49452-7720-03 ",.01)
 ;;49452-7720-03
 ;;9002226.02101,"346,49452-7720-03 ",.02)
 ;;49452-7720-03
 ;;9002226.02101,"346,49502-0689-02 ",.01)
 ;;49502-0689-02
 ;;9002226.02101,"346,49502-0689-02 ",.02)
 ;;49502-0689-02
 ;;9002226.02101,"346,50111-0459-01 ",.01)
 ;;50111-0459-01
 ;;9002226.02101,"346,50111-0459-01 ",.02)
 ;;50111-0459-01
 ;;9002226.02101,"346,50111-0459-02 ",.01)
 ;;50111-0459-02
 ;;9002226.02101,"346,50111-0459-02 ",.02)
 ;;50111-0459-02
 ;;9002226.02101,"346,50111-0459-03 ",.01)
 ;;50111-0459-03
 ;;9002226.02101,"346,50111-0459-03 ",.02)
 ;;50111-0459-03
 ;;9002226.02101,"346,50111-0482-01 ",.01)
 ;;50111-0482-01
 ;;9002226.02101,"346,50111-0482-01 ",.02)
 ;;50111-0482-01
 ;;9002226.02101,"346,50111-0482-02 ",.01)
 ;;50111-0482-02
 ;;9002226.02101,"346,50111-0482-02 ",.02)
 ;;50111-0482-02
 ;;9002226.02101,"346,50111-0482-03 ",.01)
 ;;50111-0482-03
 ;;9002226.02101,"346,50111-0482-03 ",.02)
 ;;50111-0482-03
 ;;9002226.02101,"346,50111-0483-01 ",.01)
 ;;50111-0483-01
 ;;9002226.02101,"346,50111-0483-01 ",.02)
 ;;50111-0483-01
 ;;9002226.02101,"346,50111-0483-02 ",.01)
 ;;50111-0483-02
 ;;9002226.02101,"346,50111-0483-02 ",.02)
 ;;50111-0483-02
 ;;9002226.02101,"346,50111-0483-03 ",.01)
 ;;50111-0483-03
 ;;9002226.02101,"346,50111-0483-03 ",.02)
 ;;50111-0483-03
 ;;9002226.02101,"346,50111-0518-01 ",.01)
 ;;50111-0518-01
 ;;9002226.02101,"346,50111-0518-01 ",.02)
 ;;50111-0518-01
 ;;9002226.02101,"346,50474-0100-01 ",.01)
 ;;50474-0100-01
 ;;9002226.02101,"346,50474-0100-01 ",.02)
 ;;50474-0100-01
 ;;9002226.02101,"346,50474-0200-01 ",.01)
 ;;50474-0200-01
 ;;9002226.02101,"346,50474-0200-01 ",.02)
 ;;50474-0200-01
 ;;9002226.02101,"346,50474-0200-50 ",.01)
 ;;50474-0200-50
 ;;9002226.02101,"346,50474-0200-50 ",.02)
 ;;50474-0200-50
 ;;9002226.02101,"346,50474-0200-60 ",.01)
 ;;50474-0200-60
 ;;9002226.02101,"346,50474-0200-60 ",.02)
 ;;50474-0200-60
 ;;9002226.02101,"346,50474-0300-01 ",.01)
 ;;50474-0300-01
 ;;9002226.02101,"346,50474-0300-01 ",.02)
 ;;50474-0300-01
 ;;9002226.02101,"346,50474-0300-50 ",.01)
 ;;50474-0300-50
 ;;9002226.02101,"346,50474-0300-50 ",.02)
 ;;50474-0300-50
 ;;9002226.02101,"346,50474-0300-60 ",.01)
 ;;50474-0300-60
 ;;9002226.02101,"346,50474-0300-60 ",.02)
 ;;50474-0300-60
 ;;9002226.02101,"346,50474-0400-01 ",.01)
 ;;50474-0400-01
 ;;9002226.02101,"346,50474-0400-01 ",.02)
 ;;50474-0400-01
 ;;9002226.02101,"346,51552-0487-99 ",.01)
 ;;51552-0487-99
 ;;9002226.02101,"346,51552-0487-99 ",.02)
 ;;51552-0487-99
 ;;9002226.02101,"346,52959-0279-30 ",.01)
 ;;52959-0279-30
 ;;9002226.02101,"346,52959-0279-30 ",.02)
 ;;52959-0279-30
 ;;9002226.02101,"346,54569-0048-00 ",.01)
 ;;54569-0048-00
 ;;9002226.02101,"346,54569-0048-00 ",.02)
 ;;54569-0048-00
 ;;9002226.02101,"346,54569-0049-00 ",.01)
 ;;54569-0049-00
 ;;9002226.02101,"346,54569-0049-00 ",.02)
 ;;54569-0049-00
 ;;9002226.02101,"346,54569-0065-01 ",.01)
 ;;54569-0065-01
 ;;9002226.02101,"346,54569-0065-01 ",.02)
 ;;54569-0065-01
 ;;9002226.02101,"346,54569-0065-02 ",.01)
 ;;54569-0065-02
 ;;9002226.02101,"346,54569-0065-02 ",.02)
 ;;54569-0065-02
 ;;9002226.02101,"346,54569-0065-05 ",.01)
 ;;54569-0065-05
 ;;9002226.02101,"346,54569-0065-05 ",.02)
 ;;54569-0065-05
 ;;9002226.02101,"346,54569-1012-00 ",.01)
 ;;54569-1012-00
 ;;9002226.02101,"346,54569-1012-00 ",.02)
 ;;54569-1012-00
 ;;9002226.02101,"346,54569-2032-00 ",.01)
 ;;54569-2032-00
 ;;9002226.02101,"346,54569-2032-00 ",.02)
 ;;54569-2032-00
 ;;9002226.02101,"346,54569-2482-00 ",.01)
 ;;54569-2482-00
 ;;9002226.02101,"346,54569-2482-00 ",.02)
 ;;54569-2482-00
 ;;9002226.02101,"346,54569-2482-01 ",.01)
 ;;54569-2482-01
 ;;9002226.02101,"346,54569-2482-01 ",.02)
 ;;54569-2482-01
 ;;9002226.02101,"346,54569-2482-05 ",.01)
 ;;54569-2482-05
 ;;9002226.02101,"346,54569-2482-05 ",.02)
 ;;54569-2482-05
 ;;9002226.02101,"346,54569-2483-00 ",.01)
 ;;54569-2483-00
 ;;9002226.02101,"346,54569-2483-00 ",.02)
 ;;54569-2483-00
