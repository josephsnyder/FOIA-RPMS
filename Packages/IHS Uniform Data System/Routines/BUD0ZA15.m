BUD0ZA15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2010 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,00093-5712-05 ",.02)
 ;;00093-5712-05
 ;;9002226.02101,"1062,00093-5712-19 ",.01)
 ;;00093-5712-19
 ;;9002226.02101,"1062,00093-5712-19 ",.02)
 ;;00093-5712-19
 ;;9002226.02101,"1062,00093-5712-93 ",.01)
 ;;00093-5712-93
 ;;9002226.02101,"1062,00093-5712-93 ",.02)
 ;;00093-5712-93
 ;;9002226.02101,"1062,00093-7254-01 ",.01)
 ;;00093-7254-01
 ;;9002226.02101,"1062,00093-7254-01 ",.02)
 ;;00093-7254-01
 ;;9002226.02101,"1062,00093-7255-01 ",.01)
 ;;00093-7255-01
 ;;9002226.02101,"1062,00093-7255-01 ",.02)
 ;;00093-7255-01
 ;;9002226.02101,"1062,00093-7256-01 ",.01)
 ;;00093-7256-01
 ;;9002226.02101,"1062,00093-7256-01 ",.02)
 ;;00093-7256-01
 ;;9002226.02101,"1062,00093-7256-52 ",.01)
 ;;00093-7256-52
 ;;9002226.02101,"1062,00093-7256-52 ",.02)
 ;;00093-7256-52
 ;;9002226.02101,"1062,00093-7260-01 ",.01)
 ;;00093-7260-01
 ;;9002226.02101,"1062,00093-7260-01 ",.02)
 ;;00093-7260-01
 ;;9002226.02101,"1062,00093-7261-01 ",.01)
 ;;00093-7261-01
 ;;9002226.02101,"1062,00093-7261-01 ",.02)
 ;;00093-7261-01
 ;;9002226.02101,"1062,00093-7261-05 ",.01)
 ;;00093-7261-05
 ;;9002226.02101,"1062,00093-7261-05 ",.02)
 ;;00093-7261-05
 ;;9002226.02101,"1062,00093-7262-01 ",.01)
 ;;00093-7262-01
 ;;9002226.02101,"1062,00093-7262-01 ",.02)
 ;;00093-7262-01
 ;;9002226.02101,"1062,00093-7262-05 ",.01)
 ;;00093-7262-05
 ;;9002226.02101,"1062,00093-7262-05 ",.02)
 ;;00093-7262-05
 ;;9002226.02101,"1062,00093-7455-01 ",.01)
 ;;00093-7455-01
 ;;9002226.02101,"1062,00093-7455-01 ",.02)
 ;;00093-7455-01
 ;;9002226.02101,"1062,00093-7456-01 ",.01)
 ;;00093-7456-01
 ;;9002226.02101,"1062,00093-7456-01 ",.02)
 ;;00093-7456-01
 ;;9002226.02101,"1062,00093-7457-01 ",.01)
 ;;00093-7457-01
 ;;9002226.02101,"1062,00093-7457-01 ",.02)
 ;;00093-7457-01
 ;;9002226.02101,"1062,00093-8034-01 ",.01)
 ;;00093-8034-01
 ;;9002226.02101,"1062,00093-8034-01 ",.02)
 ;;00093-8034-01
 ;;9002226.02101,"1062,00093-8035-01 ",.01)
 ;;00093-8035-01
 ;;9002226.02101,"1062,00093-8035-01 ",.02)
 ;;00093-8035-01
 ;;9002226.02101,"1062,00093-8035-05 ",.01)
 ;;00093-8035-05
 ;;9002226.02101,"1062,00093-8035-05 ",.02)
 ;;00093-8035-05
 ;;9002226.02101,"1062,00093-8035-10 ",.01)
 ;;00093-8035-10
 ;;9002226.02101,"1062,00093-8035-10 ",.02)
 ;;00093-8035-10
 ;;9002226.02101,"1062,00093-8036-01 ",.01)
 ;;00093-8036-01
 ;;9002226.02101,"1062,00093-8036-01 ",.02)
 ;;00093-8036-01
 ;;9002226.02101,"1062,00093-8342-01 ",.01)
 ;;00093-8342-01
 ;;9002226.02101,"1062,00093-8342-01 ",.02)
 ;;00093-8342-01
 ;;9002226.02101,"1062,00093-8343-01 ",.01)
 ;;00093-8343-01
 ;;9002226.02101,"1062,00093-8343-01 ",.02)
 ;;00093-8343-01
 ;;9002226.02101,"1062,00093-8343-05 ",.01)
 ;;00093-8343-05
 ;;9002226.02101,"1062,00093-8343-05 ",.02)
 ;;00093-8343-05
 ;;9002226.02101,"1062,00093-8343-10 ",.01)
 ;;00093-8343-10
 ;;9002226.02101,"1062,00093-8343-10 ",.02)
 ;;00093-8343-10
 ;;9002226.02101,"1062,00093-8344-01 ",.01)
 ;;00093-8344-01
 ;;9002226.02101,"1062,00093-8344-01 ",.02)
 ;;00093-8344-01
 ;;9002226.02101,"1062,00093-8344-05 ",.01)
 ;;00093-8344-05
 ;;9002226.02101,"1062,00093-8344-05 ",.02)
 ;;00093-8344-05
 ;;9002226.02101,"1062,00093-8344-10 ",.01)
 ;;00093-8344-10
 ;;9002226.02101,"1062,00093-8344-10 ",.02)
 ;;00093-8344-10
 ;;9002226.02101,"1062,00093-8344-19 ",.01)
 ;;00093-8344-19
 ;;9002226.02101,"1062,00093-8344-19 ",.02)
 ;;00093-8344-19
 ;;9002226.02101,"1062,00093-8344-93 ",.01)
 ;;00093-8344-93
 ;;9002226.02101,"1062,00093-8344-93 ",.02)
 ;;00093-8344-93
 ;;9002226.02101,"1062,00093-9364-01 ",.01)
 ;;00093-9364-01
 ;;9002226.02101,"1062,00093-9364-01 ",.02)
 ;;00093-9364-01
 ;;9002226.02101,"1062,00093-9364-05 ",.01)
 ;;00093-9364-05
 ;;9002226.02101,"1062,00093-9364-05 ",.02)
 ;;00093-9364-05
 ;;9002226.02101,"1062,00093-9364-10 ",.01)
 ;;00093-9364-10
 ;;9002226.02101,"1062,00093-9364-10 ",.02)
 ;;00093-9364-10
 ;;9002226.02101,"1062,00093-9433-01 ",.01)
 ;;00093-9433-01
 ;;9002226.02101,"1062,00093-9433-01 ",.02)
 ;;00093-9433-01
 ;;9002226.02101,"1062,00093-9433-05 ",.01)
 ;;00093-9433-05
 ;;9002226.02101,"1062,00093-9433-05 ",.02)
 ;;00093-9433-05
 ;;9002226.02101,"1062,00093-9477-53 ",.01)
 ;;00093-9477-53
 ;;9002226.02101,"1062,00093-9477-53 ",.02)
 ;;00093-9477-53
 ;;9002226.02101,"1062,00143-9918-01 ",.01)
 ;;00143-9918-01
 ;;9002226.02101,"1062,00143-9918-01 ",.02)
 ;;00143-9918-01
 ;;9002226.02101,"1062,00143-9919-01 ",.01)
 ;;00143-9919-01
 ;;9002226.02101,"1062,00143-9919-01 ",.02)
 ;;00143-9919-01
 ;;9002226.02101,"1062,00143-9919-05 ",.01)
 ;;00143-9919-05
 ;;9002226.02101,"1062,00143-9919-05 ",.02)
 ;;00143-9919-05
 ;;9002226.02101,"1062,00143-9920-01 ",.01)
 ;;00143-9920-01
 ;;9002226.02101,"1062,00143-9920-01 ",.02)
 ;;00143-9920-01
 ;;9002226.02101,"1062,00143-9920-05 ",.01)
 ;;00143-9920-05
 ;;9002226.02101,"1062,00143-9920-05 ",.02)
 ;;00143-9920-05
 ;;9002226.02101,"1062,00143-9920-10 ",.01)
 ;;00143-9920-10
 ;;9002226.02101,"1062,00143-9920-10 ",.02)
 ;;00143-9920-10
 ;;9002226.02101,"1062,00169-0017-71 ",.01)
 ;;00169-0017-71
 ;;9002226.02101,"1062,00169-0017-71 ",.02)
 ;;00169-0017-71
 ;;9002226.02101,"1062,00169-0045-71 ",.01)
 ;;00169-0045-71
 ;;9002226.02101,"1062,00169-0045-71 ",.02)
 ;;00169-0045-71
