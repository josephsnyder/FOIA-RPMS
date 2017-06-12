BGP61I4 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"68788-0141-03 ")
 ;;1102
 ;;21,"68788-9128-03 ")
 ;;1103
 ;;21,"68788-9128-06 ")
 ;;1104
 ;;21,"68788-9128-09 ")
 ;;1105
 ;;21,"68788-9716-03 ")
 ;;1106
 ;;21,"68788-9716-06 ")
 ;;1107
 ;;21,"68788-9716-09 ")
 ;;1108
 ;;21,"68788-9728-03 ")
 ;;1109
 ;;21,"68788-9918-03 ")
 ;;1110
 ;;21,"76439-0123-10 ")
 ;;1111
 ;;21,"76439-0124-10 ")
 ;;1112
 ;;21,"76439-0125-10 ")
 ;;1113
 ;;9002226,1222,.01)
 ;;BGP PQA SULFONYLUREA NDC
 ;;9002226,1222,.02)
 ;;@
 ;;9002226,1222,.04)
 ;;n
 ;;9002226,1222,.06)
 ;;@
 ;;9002226,1222,.08)
 ;;@
 ;;9002226,1222,.09)
 ;;3150818
 ;;9002226,1222,.11)
 ;;@
 ;;9002226,1222,.12)
 ;;@
 ;;9002226,1222,.13)
 ;;1
 ;;9002226,1222,.14)
 ;;@
 ;;9002226,1222,.15)
 ;;50.67
 ;;9002226,1222,.16)
 ;;@
 ;;9002226,1222,.17)
 ;;@
 ;;9002226,1222,3101)
 ;;@
 ;;9002226.02101,"1222,00009-0341-01 ",.01)
 ;;00009-0341-01
 ;;9002226.02101,"1222,00009-0341-01 ",.02)
 ;;00009-0341-01
 ;;9002226.02101,"1222,00009-0352-01 ",.01)
 ;;00009-0352-01
 ;;9002226.02101,"1222,00009-0352-01 ",.02)
 ;;00009-0352-01
 ;;9002226.02101,"1222,00009-0352-04 ",.01)
 ;;00009-0352-04
 ;;9002226.02101,"1222,00009-0352-04 ",.02)
 ;;00009-0352-04
 ;;9002226.02101,"1222,00009-3449-01 ",.01)
 ;;00009-3449-01
 ;;9002226.02101,"1222,00009-3449-01 ",.02)
 ;;00009-3449-01
 ;;9002226.02101,"1222,00009-3449-03 ",.01)
 ;;00009-3449-03
 ;;9002226.02101,"1222,00009-3449-03 ",.02)
 ;;00009-3449-03
 ;;9002226.02101,"1222,00039-0051-10 ",.01)
 ;;00039-0051-10
 ;;9002226.02101,"1222,00039-0051-10 ",.02)
 ;;00039-0051-10
 ;;9002226.02101,"1222,00039-0052-10 ",.01)
 ;;00039-0052-10
 ;;9002226.02101,"1222,00039-0052-10 ",.02)
 ;;00039-0052-10
 ;;9002226.02101,"1222,00039-0052-70 ",.01)
 ;;00039-0052-70
 ;;9002226.02101,"1222,00039-0052-70 ",.02)
 ;;00039-0052-70
 ;;9002226.02101,"1222,00039-0053-05 ",.01)
 ;;00039-0053-05
 ;;9002226.02101,"1222,00039-0053-05 ",.02)
 ;;00039-0053-05
 ;;9002226.02101,"1222,00039-0221-10 ",.01)
 ;;00039-0221-10
 ;;9002226.02101,"1222,00039-0221-10 ",.02)
 ;;00039-0221-10
 ;;9002226.02101,"1222,00039-0222-10 ",.01)
 ;;00039-0222-10
 ;;9002226.02101,"1222,00039-0222-10 ",.02)
 ;;00039-0222-10
 ;;9002226.02101,"1222,00039-0223-10 ",.01)
 ;;00039-0223-10
 ;;9002226.02101,"1222,00039-0223-10 ",.02)
 ;;00039-0223-10
 ;;9002226.02101,"1222,00049-0170-01 ",.01)
 ;;00049-0170-01
 ;;9002226.02101,"1222,00049-0170-01 ",.02)
 ;;00049-0170-01
 ;;9002226.02101,"1222,00049-0174-02 ",.01)
 ;;00049-0174-02
 ;;9002226.02101,"1222,00049-0174-02 ",.02)
 ;;00049-0174-02
 ;;9002226.02101,"1222,00049-0178-07 ",.01)
 ;;00049-0178-07
 ;;9002226.02101,"1222,00049-0178-07 ",.02)
 ;;00049-0178-07
 ;;9002226.02101,"1222,00049-0178-08 ",.01)
 ;;00049-0178-08
 ;;9002226.02101,"1222,00049-0178-08 ",.02)
 ;;00049-0178-08
 ;;9002226.02101,"1222,00049-1550-66 ",.01)
 ;;00049-1550-66
 ;;9002226.02101,"1222,00049-1550-66 ",.02)
 ;;00049-1550-66
 ;;9002226.02101,"1222,00049-1550-73 ",.01)
 ;;00049-1550-73
 ;;9002226.02101,"1222,00049-1550-73 ",.02)
 ;;00049-1550-73
 ;;9002226.02101,"1222,00049-1560-66 ",.01)
 ;;00049-1560-66
 ;;9002226.02101,"1222,00049-1560-66 ",.02)
 ;;00049-1560-66
 ;;9002226.02101,"1222,00049-1560-73 ",.01)
 ;;00049-1560-73
 ;;9002226.02101,"1222,00049-1560-73 ",.02)
 ;;00049-1560-73
 ;;9002226.02101,"1222,00049-1620-30 ",.01)
 ;;00049-1620-30
 ;;9002226.02101,"1222,00049-1620-30 ",.02)
 ;;00049-1620-30
 ;;9002226.02101,"1222,00049-4110-66 ",.01)
 ;;00049-4110-66
 ;;9002226.02101,"1222,00049-4110-66 ",.02)
 ;;00049-4110-66
 ;;9002226.02101,"1222,00049-4120-66 ",.01)
 ;;00049-4120-66
 ;;9002226.02101,"1222,00049-4120-66 ",.02)
 ;;00049-4120-66
 ;;9002226.02101,"1222,00087-6072-11 ",.01)
 ;;00087-6072-11
 ;;9002226.02101,"1222,00087-6072-11 ",.02)
 ;;00087-6072-11
 ;;9002226.02101,"1222,00087-6073-11 ",.01)
 ;;00087-6073-11
 ;;9002226.02101,"1222,00087-6073-11 ",.02)
 ;;00087-6073-11
 ;;9002226.02101,"1222,00087-6074-11 ",.01)
 ;;00087-6074-11
 ;;9002226.02101,"1222,00087-6074-11 ",.02)
 ;;00087-6074-11
 ;;9002226.02101,"1222,00093-5710-01 ",.01)
 ;;00093-5710-01
 ;;9002226.02101,"1222,00093-5710-01 ",.02)
 ;;00093-5710-01
 ;;9002226.02101,"1222,00093-5710-05 ",.01)
 ;;00093-5710-05
 ;;9002226.02101,"1222,00093-5710-05 ",.02)
 ;;00093-5710-05
 ;;9002226.02101,"1222,00093-5710-19 ",.01)
 ;;00093-5710-19
 ;;9002226.02101,"1222,00093-5710-19 ",.02)
 ;;00093-5710-19
 ;;9002226.02101,"1222,00093-5710-93 ",.01)
 ;;00093-5710-93
 ;;9002226.02101,"1222,00093-5710-93 ",.02)
 ;;00093-5710-93
 ;;9002226.02101,"1222,00093-5711-01 ",.01)
 ;;00093-5711-01
 ;;9002226.02101,"1222,00093-5711-01 ",.02)
 ;;00093-5711-01
 ;;9002226.02101,"1222,00093-5711-05 ",.01)
 ;;00093-5711-05
 ;;9002226.02101,"1222,00093-5711-05 ",.02)
 ;;00093-5711-05
 ;;9002226.02101,"1222,00093-5711-19 ",.01)
 ;;00093-5711-19
 ;;9002226.02101,"1222,00093-5711-19 ",.02)
 ;;00093-5711-19
 ;;9002226.02101,"1222,00093-5711-93 ",.01)
 ;;00093-5711-93
 ;;9002226.02101,"1222,00093-5711-93 ",.02)
 ;;00093-5711-93
 ;;9002226.02101,"1222,00093-5712-01 ",.01)
 ;;00093-5712-01
 ;;9002226.02101,"1222,00093-5712-01 ",.02)
 ;;00093-5712-01
 ;;9002226.02101,"1222,00093-5712-05 ",.01)
 ;;00093-5712-05
 ;;9002226.02101,"1222,00093-5712-05 ",.02)
 ;;00093-5712-05
 ;;9002226.02101,"1222,00093-5712-19 ",.01)
 ;;00093-5712-19
 ;;9002226.02101,"1222,00093-5712-19 ",.02)
 ;;00093-5712-19
 ;;9002226.02101,"1222,00093-5712-93 ",.01)
 ;;00093-5712-93
 ;;9002226.02101,"1222,00093-5712-93 ",.02)
 ;;00093-5712-93
 ;;9002226.02101,"1222,00093-7254-01 ",.01)
 ;;00093-7254-01
 ;;9002226.02101,"1222,00093-7254-01 ",.02)
 ;;00093-7254-01
 ;;9002226.02101,"1222,00093-7255-01 ",.01)
 ;;00093-7255-01
 ;;9002226.02101,"1222,00093-7255-01 ",.02)
 ;;00093-7255-01
 ;;9002226.02101,"1222,00093-7256-01 ",.01)
 ;;00093-7256-01
 ;;9002226.02101,"1222,00093-7256-01 ",.02)
 ;;00093-7256-01
 ;;9002226.02101,"1222,00093-7256-52 ",.01)
 ;;00093-7256-52
 ;;9002226.02101,"1222,00093-7256-52 ",.02)
 ;;00093-7256-52
 ;;9002226.02101,"1222,00093-7261-05 ",.01)
 ;;00093-7261-05
 ;;9002226.02101,"1222,00093-7261-05 ",.02)
 ;;00093-7261-05
 ;;9002226.02101,"1222,00093-7262-05 ",.01)
 ;;00093-7262-05
 ;;9002226.02101,"1222,00093-7262-05 ",.02)
 ;;00093-7262-05
 ;;9002226.02101,"1222,00093-7455-01 ",.01)
 ;;00093-7455-01
 ;;9002226.02101,"1222,00093-7455-01 ",.02)
 ;;00093-7455-01
 ;;9002226.02101,"1222,00093-7456-01 ",.01)
 ;;00093-7456-01
 ;;9002226.02101,"1222,00093-7456-01 ",.02)
 ;;00093-7456-01
 ;;9002226.02101,"1222,00093-7457-01 ",.01)
 ;;00093-7457-01
 ;;9002226.02101,"1222,00093-7457-01 ",.02)
 ;;00093-7457-01
 ;;9002226.02101,"1222,00093-8034-01 ",.01)
 ;;00093-8034-01
 ;;9002226.02101,"1222,00093-8034-01 ",.02)
 ;;00093-8034-01
 ;;9002226.02101,"1222,00093-8035-01 ",.01)
 ;;00093-8035-01
 ;;9002226.02101,"1222,00093-8035-01 ",.02)
 ;;00093-8035-01
 ;;9002226.02101,"1222,00093-8035-05 ",.01)
 ;;00093-8035-05
 ;;9002226.02101,"1222,00093-8035-05 ",.02)
 ;;00093-8035-05
 ;;9002226.02101,"1222,00093-8036-01 ",.01)
 ;;00093-8036-01
 ;;9002226.02101,"1222,00093-8036-01 ",.02)
 ;;00093-8036-01
 ;;9002226.02101,"1222,00093-8342-01 ",.01)
 ;;00093-8342-01
 ;;9002226.02101,"1222,00093-8342-01 ",.02)
 ;;00093-8342-01
 ;;9002226.02101,"1222,00093-8343-01 ",.01)
 ;;00093-8343-01
 ;;9002226.02101,"1222,00093-8343-01 ",.02)
 ;;00093-8343-01
 ;;9002226.02101,"1222,00093-8343-05 ",.01)
 ;;00093-8343-05
 ;;9002226.02101,"1222,00093-8343-05 ",.02)
 ;;00093-8343-05
 ;;9002226.02101,"1222,00093-8343-10 ",.01)
 ;;00093-8343-10
 ;;9002226.02101,"1222,00093-8343-10 ",.02)
 ;;00093-8343-10
 ;;9002226.02101,"1222,00093-8343-98 ",.01)
 ;;00093-8343-98
 ;;9002226.02101,"1222,00093-8343-98 ",.02)
 ;;00093-8343-98
 ;;9002226.02101,"1222,00093-8344-01 ",.01)
 ;;00093-8344-01
 ;;9002226.02101,"1222,00093-8344-01 ",.02)
 ;;00093-8344-01
 ;;9002226.02101,"1222,00093-8344-05 ",.01)
 ;;00093-8344-05
 ;;9002226.02101,"1222,00093-8344-05 ",.02)
 ;;00093-8344-05
 ;;9002226.02101,"1222,00093-8344-10 ",.01)
 ;;00093-8344-10
 ;;9002226.02101,"1222,00093-8344-10 ",.02)
 ;;00093-8344-10
 ;;9002226.02101,"1222,00093-8344-19 ",.01)
 ;;00093-8344-19
 ;;9002226.02101,"1222,00093-8344-19 ",.02)
 ;;00093-8344-19
 ;;9002226.02101,"1222,00093-8344-93 ",.01)
 ;;00093-8344-93
 ;;9002226.02101,"1222,00093-8344-93 ",.02)
 ;;00093-8344-93
 ;;9002226.02101,"1222,00093-8344-98 ",.01)
 ;;00093-8344-98
 ;;9002226.02101,"1222,00093-8344-98 ",.02)
 ;;00093-8344-98
 ;;9002226.02101,"1222,00093-9364-01 ",.01)
 ;;00093-9364-01
 ;;9002226.02101,"1222,00093-9364-01 ",.02)
 ;;00093-9364-01
 ;;9002226.02101,"1222,00093-9364-05 ",.01)
 ;;00093-9364-05
 ;;9002226.02101,"1222,00093-9364-05 ",.02)
 ;;00093-9364-05
 ;;9002226.02101,"1222,00093-9364-10 ",.01)
 ;;00093-9364-10
 ;;9002226.02101,"1222,00093-9364-10 ",.02)
 ;;00093-9364-10
 ;;9002226.02101,"1222,00093-9433-01 ",.01)
 ;;00093-9433-01
 ;;9002226.02101,"1222,00093-9433-01 ",.02)
 ;;00093-9433-01
 ;;9002226.02101,"1222,00093-9433-05 ",.01)
 ;;00093-9433-05
 ;;9002226.02101,"1222,00093-9433-05 ",.02)
 ;;00093-9433-05
 ;;9002226.02101,"1222,00093-9477-53 ",.01)
 ;;00093-9477-53
 ;;9002226.02101,"1222,00093-9477-53 ",.02)
 ;;00093-9477-53
 ;;9002226.02101,"1222,00143-9918-01 ",.01)
 ;;00143-9918-01
 ;;9002226.02101,"1222,00143-9918-01 ",.02)
 ;;00143-9918-01
 ;;9002226.02101,"1222,00143-9919-01 ",.01)
 ;;00143-9919-01
 ;;9002226.02101,"1222,00143-9919-01 ",.02)
 ;;00143-9919-01
 ;;9002226.02101,"1222,00143-9919-05 ",.01)
 ;;00143-9919-05
 ;;9002226.02101,"1222,00143-9919-05 ",.02)
 ;;00143-9919-05
 ;;9002226.02101,"1222,00143-9920-01 ",.01)
 ;;00143-9920-01
 ;;9002226.02101,"1222,00143-9920-01 ",.02)
 ;;00143-9920-01
 ;;9002226.02101,"1222,00143-9920-05 ",.01)
 ;;00143-9920-05
 ;;9002226.02101,"1222,00143-9920-05 ",.02)
 ;;00143-9920-05
 ;;9002226.02101,"1222,00143-9920-10 ",.01)
 ;;00143-9920-10
 ;;9002226.02101,"1222,00143-9920-10 ",.02)
 ;;00143-9920-10
 ;;9002226.02101,"1222,00172-3649-00 ",.01)
 ;;00172-3649-00
 ;;9002226.02101,"1222,00172-3649-00 ",.02)
 ;;00172-3649-00
 ;;9002226.02101,"1222,00172-3649-10 ",.01)
 ;;00172-3649-10
 ;;9002226.02101,"1222,00172-3649-10 ",.02)
 ;;00172-3649-10
 ;;9002226.02101,"1222,00172-3649-60 ",.01)
 ;;00172-3649-60
 ;;9002226.02101,"1222,00172-3649-60 ",.02)
 ;;00172-3649-60
 ;;9002226.02101,"1222,00172-3650-00 ",.01)
 ;;00172-3650-00
 ;;9002226.02101,"1222,00172-3650-00 ",.02)
 ;;00172-3650-00
 ;;9002226.02101,"1222,00172-3650-10 ",.01)
 ;;00172-3650-10
 ;;9002226.02101,"1222,00172-3650-10 ",.02)
 ;;00172-3650-10
 ;;9002226.02101,"1222,00172-3650-60 ",.01)
 ;;00172-3650-60
 ;;9002226.02101,"1222,00172-3650-60 ",.02)
 ;;00172-3650-60
 ;;9002226.02101,"1222,00172-3650-70 ",.01)
 ;;00172-3650-70
 ;;9002226.02101,"1222,00172-3650-70 ",.02)
 ;;00172-3650-70
 ;;9002226.02101,"1222,00173-0841-13 ",.01)
 ;;00173-0841-13
 ;;9002226.02101,"1222,00173-0841-13 ",.02)
 ;;00173-0841-13
 ;;9002226.02101,"1222,00173-0842-13 ",.01)
 ;;00173-0842-13
 ;;9002226.02101,"1222,00173-0842-13 ",.02)
 ;;00173-0842-13
 ;;9002226.02101,"1222,00173-0843-13 ",.01)
 ;;00173-0843-13
 ;;9002226.02101,"1222,00173-0843-13 ",.02)
 ;;00173-0843-13
 ;;9002226.02101,"1222,00173-0844-13 ",.01)
 ;;00173-0844-13
 ;;9002226.02101,"1222,00173-0844-13 ",.02)
 ;;00173-0844-13
 ;;9002226.02101,"1222,00173-0845-13 ",.01)
 ;;00173-0845-13
 ;;9002226.02101,"1222,00173-0845-13 ",.02)
 ;;00173-0845-13
 ;;9002226.02101,"1222,00182-2646-89 ",.01)
 ;;00182-2646-89
 ;;9002226.02101,"1222,00182-2646-89 ",.02)
 ;;00182-2646-89
 ;;9002226.02101,"1222,00228-2751-11 ",.01)
 ;;00228-2751-11
 ;;9002226.02101,"1222,00228-2751-11 ",.02)
 ;;00228-2751-11
 ;;9002226.02101,"1222,00228-2751-50 ",.01)
 ;;00228-2751-50
 ;;9002226.02101,"1222,00228-2751-50 ",.02)
 ;;00228-2751-50
 ;;9002226.02101,"1222,00228-2752-11 ",.01)
 ;;00228-2752-11
 ;;9002226.02101,"1222,00228-2752-11 ",.02)
 ;;00228-2752-11
 ;;9002226.02101,"1222,00228-2752-50 ",.01)
 ;;00228-2752-50
 ;;9002226.02101,"1222,00228-2752-50 ",.02)
 ;;00228-2752-50
 ;;9002226.02101,"1222,00228-2753-11 ",.01)
 ;;00228-2753-11
 ;;9002226.02101,"1222,00228-2753-11 ",.02)
 ;;00228-2753-11
 ;;9002226.02101,"1222,00228-2753-50 ",.01)
 ;;00228-2753-50
 ;;9002226.02101,"1222,00228-2753-50 ",.02)
 ;;00228-2753-50
 ;;9002226.02101,"1222,00228-2898-03 ",.01)
 ;;00228-2898-03
 ;;9002226.02101,"1222,00228-2898-03 ",.02)
 ;;00228-2898-03
 ;;9002226.02101,"1222,00228-2899-96 ",.01)
 ;;00228-2899-96
 ;;9002226.02101,"1222,00228-2899-96 ",.02)
 ;;00228-2899-96
