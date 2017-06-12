BGP61M15 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,51079-0454-01 ",.02)
 ;;51079-0454-01
 ;;9002226.02101,"1224,51079-0454-20 ",.01)
 ;;51079-0454-20
 ;;9002226.02101,"1224,51079-0454-20 ",.02)
 ;;51079-0454-20
 ;;9002226.02101,"1224,51079-0455-01 ",.01)
 ;;51079-0455-01
 ;;9002226.02101,"1224,51079-0455-01 ",.02)
 ;;51079-0455-01
 ;;9002226.02101,"1224,51079-0455-20 ",.01)
 ;;51079-0455-20
 ;;9002226.02101,"1224,51079-0455-20 ",.02)
 ;;51079-0455-20
 ;;9002226.02101,"1224,51079-0456-01 ",.01)
 ;;51079-0456-01
 ;;9002226.02101,"1224,51079-0456-01 ",.02)
 ;;51079-0456-01
 ;;9002226.02101,"1224,51079-0456-20 ",.01)
 ;;51079-0456-20
 ;;9002226.02101,"1224,51079-0456-20 ",.02)
 ;;51079-0456-20
 ;;9002226.02101,"1224,51079-0458-01 ",.01)
 ;;51079-0458-01
 ;;9002226.02101,"1224,51079-0458-01 ",.02)
 ;;51079-0458-01
 ;;9002226.02101,"1224,51079-0458-20 ",.01)
 ;;51079-0458-20
 ;;9002226.02101,"1224,51079-0458-20 ",.02)
 ;;51079-0458-20
 ;;9002226.02101,"1224,51079-0782-01 ",.01)
 ;;51079-0782-01
 ;;9002226.02101,"1224,51079-0782-01 ",.02)
 ;;51079-0782-01
 ;;9002226.02101,"1224,51079-0782-20 ",.01)
 ;;51079-0782-20
 ;;9002226.02101,"1224,51079-0782-20 ",.02)
 ;;51079-0782-20
 ;;9002226.02101,"1224,51079-0974-01 ",.01)
 ;;51079-0974-01
 ;;9002226.02101,"1224,51079-0974-01 ",.02)
 ;;51079-0974-01
 ;;9002226.02101,"1224,51079-0974-20 ",.01)
 ;;51079-0974-20
 ;;9002226.02101,"1224,51079-0974-20 ",.02)
 ;;51079-0974-20
 ;;9002226.02101,"1224,51079-0975-01 ",.01)
 ;;51079-0975-01
 ;;9002226.02101,"1224,51079-0975-01 ",.02)
 ;;51079-0975-01
 ;;9002226.02101,"1224,51079-0975-20 ",.01)
 ;;51079-0975-20
 ;;9002226.02101,"1224,51079-0975-20 ",.02)
 ;;51079-0975-20
 ;;9002226.02101,"1224,51079-0976-01 ",.01)
 ;;51079-0976-01
 ;;9002226.02101,"1224,51079-0976-01 ",.02)
 ;;51079-0976-01
 ;;9002226.02101,"1224,51079-0976-20 ",.01)
 ;;51079-0976-20
 ;;9002226.02101,"1224,51079-0976-20 ",.02)
 ;;51079-0976-20
 ;;9002226.02101,"1224,51138-0110-30 ",.01)
 ;;51138-0110-30
 ;;9002226.02101,"1224,51138-0110-30 ",.02)
 ;;51138-0110-30
 ;;9002226.02101,"1224,51138-0111-30 ",.01)
 ;;51138-0111-30
 ;;9002226.02101,"1224,51138-0111-30 ",.02)
 ;;51138-0111-30
 ;;9002226.02101,"1224,51138-0112-30 ",.01)
 ;;51138-0112-30
 ;;9002226.02101,"1224,51138-0112-30 ",.02)
 ;;51138-0112-30
 ;;9002226.02101,"1224,51138-0113-30 ",.01)
 ;;51138-0113-30
 ;;9002226.02101,"1224,51138-0113-30 ",.02)
 ;;51138-0113-30
 ;;9002226.02101,"1224,51138-0114-30 ",.01)
 ;;51138-0114-30
 ;;9002226.02101,"1224,51138-0114-30 ",.02)
 ;;51138-0114-30
 ;;9002226.02101,"1224,51138-0220-10 ",.01)
 ;;51138-0220-10
 ;;9002226.02101,"1224,51138-0220-10 ",.02)
 ;;51138-0220-10
 ;;9002226.02101,"1224,51138-0220-30 ",.01)
 ;;51138-0220-30
 ;;9002226.02101,"1224,51138-0220-30 ",.02)
 ;;51138-0220-30
 ;;9002226.02101,"1224,51138-0220-45 ",.01)
 ;;51138-0220-45
 ;;9002226.02101,"1224,51138-0220-45 ",.02)
 ;;51138-0220-45
 ;;9002226.02101,"1224,51138-0220-60 ",.01)
 ;;51138-0220-60
 ;;9002226.02101,"1224,51138-0220-60 ",.02)
 ;;51138-0220-60
 ;;9002226.02101,"1224,51138-0221-15 ",.01)
 ;;51138-0221-15
 ;;9002226.02101,"1224,51138-0221-15 ",.02)
 ;;51138-0221-15
 ;;9002226.02101,"1224,51138-0221-30 ",.01)
 ;;51138-0221-30
 ;;9002226.02101,"1224,51138-0221-30 ",.02)
 ;;51138-0221-30
 ;;9002226.02101,"1224,51138-0221-45 ",.01)
 ;;51138-0221-45
 ;;9002226.02101,"1224,51138-0221-45 ",.02)
 ;;51138-0221-45
 ;;9002226.02101,"1224,51138-0221-60 ",.01)
 ;;51138-0221-60
 ;;9002226.02101,"1224,51138-0221-60 ",.02)
 ;;51138-0221-60
 ;;9002226.02101,"1224,51138-0222-15 ",.01)
 ;;51138-0222-15
 ;;9002226.02101,"1224,51138-0222-15 ",.02)
 ;;51138-0222-15
 ;;9002226.02101,"1224,51138-0222-30 ",.01)
 ;;51138-0222-30
 ;;9002226.02101,"1224,51138-0222-30 ",.02)
 ;;51138-0222-30
 ;;9002226.02101,"1224,51138-0222-45 ",.01)
 ;;51138-0222-45
 ;;9002226.02101,"1224,51138-0222-45 ",.02)
 ;;51138-0222-45
 ;;9002226.02101,"1224,51138-0223-30 ",.01)
 ;;51138-0223-30
 ;;9002226.02101,"1224,51138-0223-30 ",.02)
 ;;51138-0223-30
 ;;9002226.02101,"1224,51138-0227-30 ",.01)
 ;;51138-0227-30
 ;;9002226.02101,"1224,51138-0227-30 ",.02)
 ;;51138-0227-30
 ;;9002226.02101,"1224,51138-0228-30 ",.01)
 ;;51138-0228-30
 ;;9002226.02101,"1224,51138-0228-30 ",.02)
 ;;51138-0228-30
 ;;9002226.02101,"1224,51138-0229-30 ",.01)
 ;;51138-0229-30
 ;;9002226.02101,"1224,51138-0229-30 ",.02)
 ;;51138-0229-30
 ;;9002226.02101,"1224,51138-0230-30 ",.01)
 ;;51138-0230-30
 ;;9002226.02101,"1224,51138-0230-30 ",.02)
 ;;51138-0230-30
 ;;9002226.02101,"1224,51138-0242-30 ",.01)
 ;;51138-0242-30
 ;;9002226.02101,"1224,51138-0242-30 ",.02)
 ;;51138-0242-30
 ;;9002226.02101,"1224,51138-0243-30 ",.01)
 ;;51138-0243-30
 ;;9002226.02101,"1224,51138-0243-30 ",.02)
 ;;51138-0243-30
 ;;9002226.02101,"1224,51138-0244-30 ",.01)
 ;;51138-0244-30
 ;;9002226.02101,"1224,51138-0244-30 ",.02)
 ;;51138-0244-30
 ;;9002226.02101,"1224,51138-0245-30 ",.01)
 ;;51138-0245-30
 ;;9002226.02101,"1224,51138-0245-30 ",.02)
 ;;51138-0245-30
 ;;9002226.02101,"1224,51138-0247-30 ",.01)
 ;;51138-0247-30
 ;;9002226.02101,"1224,51138-0247-30 ",.02)
 ;;51138-0247-30
 ;;9002226.02101,"1224,51138-0248-30 ",.01)
 ;;51138-0248-30
 ;;9002226.02101,"1224,51138-0248-30 ",.02)
 ;;51138-0248-30
 ;;9002226.02101,"1224,51138-0249-30 ",.01)
 ;;51138-0249-30
 ;;9002226.02101,"1224,51138-0249-30 ",.02)
 ;;51138-0249-30
 ;;9002226.02101,"1224,51138-0257-30 ",.01)
 ;;51138-0257-30
 ;;9002226.02101,"1224,51138-0257-30 ",.02)
 ;;51138-0257-30
 ;;9002226.02101,"1224,51138-0258-15 ",.01)
 ;;51138-0258-15
 ;;9002226.02101,"1224,51138-0258-15 ",.02)
 ;;51138-0258-15
 ;;9002226.02101,"1224,51138-0258-30 ",.01)
 ;;51138-0258-30
 ;;9002226.02101,"1224,51138-0258-30 ",.02)
 ;;51138-0258-30
 ;;9002226.02101,"1224,51138-0259-30 ",.01)
 ;;51138-0259-30
 ;;9002226.02101,"1224,51138-0259-30 ",.02)
 ;;51138-0259-30
 ;;9002226.02101,"1224,51138-0260-30 ",.01)
 ;;51138-0260-30
 ;;9002226.02101,"1224,51138-0260-30 ",.02)
 ;;51138-0260-30
 ;;9002226.02101,"1224,51138-0261-30 ",.01)
 ;;51138-0261-30
 ;;9002226.02101,"1224,51138-0261-30 ",.02)
 ;;51138-0261-30
 ;;9002226.02101,"1224,51138-0262-30 ",.01)
 ;;51138-0262-30
 ;;9002226.02101,"1224,51138-0262-30 ",.02)
 ;;51138-0262-30
 ;;9002226.02101,"1224,51138-0263-30 ",.01)
 ;;51138-0263-30
 ;;9002226.02101,"1224,51138-0263-30 ",.02)
 ;;51138-0263-30
 ;;9002226.02101,"1224,51138-0264-30 ",.01)
 ;;51138-0264-30
 ;;9002226.02101,"1224,51138-0264-30 ",.02)
 ;;51138-0264-30
 ;;9002226.02101,"1224,51138-0274-30 ",.01)
 ;;51138-0274-30
 ;;9002226.02101,"1224,51138-0274-30 ",.02)
 ;;51138-0274-30
 ;;9002226.02101,"1224,51138-0275-30 ",.01)
 ;;51138-0275-30
 ;;9002226.02101,"1224,51138-0275-30 ",.02)
 ;;51138-0275-30
 ;;9002226.02101,"1224,51138-0276-30 ",.01)
 ;;51138-0276-30
 ;;9002226.02101,"1224,51138-0276-30 ",.02)
 ;;51138-0276-30
 ;;9002226.02101,"1224,51138-0363-30 ",.01)
 ;;51138-0363-30
 ;;9002226.02101,"1224,51138-0363-30 ",.02)
 ;;51138-0363-30
 ;;9002226.02101,"1224,51138-0364-30 ",.01)
 ;;51138-0364-30
 ;;9002226.02101,"1224,51138-0364-30 ",.02)
 ;;51138-0364-30
 ;;9002226.02101,"1224,51138-0365-30 ",.01)
 ;;51138-0365-30
 ;;9002226.02101,"1224,51138-0365-30 ",.02)
 ;;51138-0365-30
 ;;9002226.02101,"1224,51138-0366-30 ",.01)
 ;;51138-0366-30
 ;;9002226.02101,"1224,51138-0366-30 ",.02)
 ;;51138-0366-30
 ;;9002226.02101,"1224,52343-0021-30 ",.01)
 ;;52343-0021-30
 ;;9002226.02101,"1224,52343-0021-30 ",.02)
 ;;52343-0021-30
 ;;9002226.02101,"1224,52343-0021-90 ",.01)
 ;;52343-0021-90
 ;;9002226.02101,"1224,52343-0021-90 ",.02)
 ;;52343-0021-90
 ;;9002226.02101,"1224,52343-0021-99 ",.01)
 ;;52343-0021-99
 ;;9002226.02101,"1224,52343-0021-99 ",.02)
 ;;52343-0021-99
 ;;9002226.02101,"1224,52343-0022-30 ",.01)
 ;;52343-0022-30
 ;;9002226.02101,"1224,52343-0022-30 ",.02)
 ;;52343-0022-30
 ;;9002226.02101,"1224,52343-0022-45 ",.01)
 ;;52343-0022-45
 ;;9002226.02101,"1224,52343-0022-45 ",.02)
 ;;52343-0022-45
 ;;9002226.02101,"1224,52343-0022-90 ",.01)
 ;;52343-0022-90
 ;;9002226.02101,"1224,52343-0022-90 ",.02)
 ;;52343-0022-90
 ;;9002226.02101,"1224,52343-0022-99 ",.01)
 ;;52343-0022-99
 ;;9002226.02101,"1224,52343-0022-99 ",.02)
 ;;52343-0022-99
 ;;9002226.02101,"1224,52343-0023-30 ",.01)
 ;;52343-0023-30
 ;;9002226.02101,"1224,52343-0023-30 ",.02)
 ;;52343-0023-30
 ;;9002226.02101,"1224,52343-0023-45 ",.01)
 ;;52343-0023-45
 ;;9002226.02101,"1224,52343-0023-45 ",.02)
 ;;52343-0023-45
 ;;9002226.02101,"1224,52343-0023-90 ",.01)
 ;;52343-0023-90
 ;;9002226.02101,"1224,52343-0023-90 ",.02)
 ;;52343-0023-90
 ;;9002226.02101,"1224,52343-0023-99 ",.01)
 ;;52343-0023-99
 ;;9002226.02101,"1224,52343-0023-99 ",.02)
 ;;52343-0023-99
 ;;9002226.02101,"1224,52343-0024-30 ",.01)
 ;;52343-0024-30
 ;;9002226.02101,"1224,52343-0024-30 ",.02)
 ;;52343-0024-30
 ;;9002226.02101,"1224,52343-0024-45 ",.01)
 ;;52343-0024-45
 ;;9002226.02101,"1224,52343-0024-45 ",.02)
 ;;52343-0024-45
 ;;9002226.02101,"1224,52343-0024-90 ",.01)
 ;;52343-0024-90
 ;;9002226.02101,"1224,52343-0024-90 ",.02)
 ;;52343-0024-90
 ;;9002226.02101,"1224,52343-0024-99 ",.01)
 ;;52343-0024-99
 ;;9002226.02101,"1224,52343-0024-99 ",.02)
 ;;52343-0024-99
 ;;9002226.02101,"1224,52343-0025-30 ",.01)
 ;;52343-0025-30
 ;;9002226.02101,"1224,52343-0025-30 ",.02)
 ;;52343-0025-30
 ;;9002226.02101,"1224,52343-0025-45 ",.01)
 ;;52343-0025-45
 ;;9002226.02101,"1224,52343-0025-45 ",.02)
 ;;52343-0025-45
 ;;9002226.02101,"1224,52343-0025-90 ",.01)
 ;;52343-0025-90
 ;;9002226.02101,"1224,52343-0025-90 ",.02)
 ;;52343-0025-90
 ;;9002226.02101,"1224,52343-0025-99 ",.01)
 ;;52343-0025-99
 ;;9002226.02101,"1224,52343-0025-99 ",.02)
 ;;52343-0025-99
 ;;9002226.02101,"1224,52959-0046-30 ",.01)
 ;;52959-0046-30
 ;;9002226.02101,"1224,52959-0046-30 ",.02)
 ;;52959-0046-30
 ;;9002226.02101,"1224,52959-0112-30 ",.01)
 ;;52959-0112-30
 ;;9002226.02101,"1224,52959-0112-30 ",.02)
 ;;52959-0112-30
 ;;9002226.02101,"1224,52959-0720-30 ",.01)
 ;;52959-0720-30
 ;;9002226.02101,"1224,52959-0720-30 ",.02)
 ;;52959-0720-30
 ;;9002226.02101,"1224,52959-0759-90 ",.01)
 ;;52959-0759-90
 ;;9002226.02101,"1224,52959-0759-90 ",.02)
 ;;52959-0759-90
 ;;9002226.02101,"1224,52959-0760-90 ",.01)
 ;;52959-0760-90
 ;;9002226.02101,"1224,52959-0760-90 ",.02)
 ;;52959-0760-90
 ;;9002226.02101,"1224,52959-0944-30 ",.01)
 ;;52959-0944-30
 ;;9002226.02101,"1224,52959-0944-30 ",.02)
 ;;52959-0944-30
 ;;9002226.02101,"1224,52959-0974-00 ",.01)
 ;;52959-0974-00
 ;;9002226.02101,"1224,52959-0974-00 ",.02)
 ;;52959-0974-00
 ;;9002226.02101,"1224,52959-0974-30 ",.01)
 ;;52959-0974-30
 ;;9002226.02101,"1224,52959-0974-30 ",.02)
 ;;52959-0974-30
 ;;9002226.02101,"1224,52959-0988-30 ",.01)
 ;;52959-0988-30
 ;;9002226.02101,"1224,52959-0988-30 ",.02)
 ;;52959-0988-30
 ;;9002226.02101,"1224,52959-0989-30 ",.01)
 ;;52959-0989-30
 ;;9002226.02101,"1224,52959-0989-30 ",.02)
 ;;52959-0989-30
 ;;9002226.02101,"1224,53002-0570-00 ",.01)
 ;;53002-0570-00
 ;;9002226.02101,"1224,53002-0570-00 ",.02)
 ;;53002-0570-00
 ;;9002226.02101,"1224,53002-0570-30 ",.01)
 ;;53002-0570-30
 ;;9002226.02101,"1224,53002-0570-30 ",.02)
 ;;53002-0570-30
 ;;9002226.02101,"1224,53002-1177-00 ",.01)
 ;;53002-1177-00
 ;;9002226.02101,"1224,53002-1177-00 ",.02)
 ;;53002-1177-00
 ;;9002226.02101,"1224,53002-1177-03 ",.01)
 ;;53002-1177-03
 ;;9002226.02101,"1224,53002-1177-03 ",.02)
 ;;53002-1177-03
 ;;9002226.02101,"1224,53002-1385-00 ",.01)
 ;;53002-1385-00
 ;;9002226.02101,"1224,53002-1385-00 ",.02)
 ;;53002-1385-00
 ;;9002226.02101,"1224,53002-1385-03 ",.01)
 ;;53002-1385-03
 ;;9002226.02101,"1224,53002-1385-03 ",.02)
 ;;53002-1385-03
 ;;9002226.02101,"1224,53002-1527-00 ",.01)
 ;;53002-1527-00
 ;;9002226.02101,"1224,53002-1527-00 ",.02)
 ;;53002-1527-00
 ;;9002226.02101,"1224,53002-1527-03 ",.01)
 ;;53002-1527-03
 ;;9002226.02101,"1224,53002-1527-03 ",.02)
 ;;53002-1527-03
 ;;9002226.02101,"1224,53002-1528-00 ",.01)
 ;;53002-1528-00
 ;;9002226.02101,"1224,53002-1528-00 ",.02)
 ;;53002-1528-00
 ;;9002226.02101,"1224,53002-1528-03 ",.01)
 ;;53002-1528-03
 ;;9002226.02101,"1224,53002-1528-03 ",.02)
 ;;53002-1528-03
 ;;9002226.02101,"1224,53002-1569-00 ",.01)
 ;;53002-1569-00
 ;;9002226.02101,"1224,53002-1569-00 ",.02)
 ;;53002-1569-00
 ;;9002226.02101,"1224,53002-1569-03 ",.01)
 ;;53002-1569-03
 ;;9002226.02101,"1224,53002-1569-03 ",.02)
 ;;53002-1569-03
 ;;9002226.02101,"1224,53217-0113-30 ",.01)
 ;;53217-0113-30
 ;;9002226.02101,"1224,53217-0113-30 ",.02)
 ;;53217-0113-30
 ;;9002226.02101,"1224,53217-0113-90 ",.01)
 ;;53217-0113-90
