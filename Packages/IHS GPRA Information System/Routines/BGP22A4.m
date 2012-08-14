BGP22A4 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 03, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"462,00247-1973-60 ",.01)
 ;;00247-1973-60
 ;;9002226.02101,"462,00247-1973-60 ",.02)
 ;;00247-1973-60
 ;;9002226.02101,"462,00247-1983-60 ",.01)
 ;;00247-1983-60
 ;;9002226.02101,"462,00247-1983-60 ",.02)
 ;;00247-1983-60
 ;;9002226.02101,"462,00247-2215-60 ",.01)
 ;;00247-2215-60
 ;;9002226.02101,"462,00247-2215-60 ",.02)
 ;;00247-2215-60
 ;;9002226.02101,"462,00456-0670-99 ",.01)
 ;;00456-0670-99
 ;;9002226.02101,"462,00456-0670-99 ",.02)
 ;;00456-0670-99
 ;;9002226.02101,"462,00456-0672-99 ",.01)
 ;;00456-0672-99
 ;;9002226.02101,"462,00456-0672-99 ",.02)
 ;;00456-0672-99
 ;;9002226.02101,"462,12280-0410-13 ",.01)
 ;;12280-0410-13
 ;;9002226.02101,"462,12280-0410-13 ",.02)
 ;;12280-0410-13
 ;;9002226.02101,"462,16590-0025-20 ",.01)
 ;;16590-0025-20
 ;;9002226.02101,"462,16590-0025-20 ",.02)
 ;;16590-0025-20
 ;;9002226.02101,"462,16590-0860-71 ",.01)
 ;;16590-0860-71
 ;;9002226.02101,"462,16590-0860-71 ",.02)
 ;;16590-0860-71
 ;;9002226.02101,"462,16590-0860-73 ",.01)
 ;;16590-0860-73
 ;;9002226.02101,"462,16590-0860-73 ",.02)
 ;;16590-0860-73
 ;;9002226.02101,"462,21695-0196-01 ",.01)
 ;;21695-0196-01
 ;;9002226.02101,"462,21695-0196-01 ",.02)
 ;;21695-0196-01
 ;;9002226.02101,"462,21695-0197-01 ",.01)
 ;;21695-0197-01
 ;;9002226.02101,"462,21695-0197-01 ",.02)
 ;;21695-0197-01
 ;;9002226.02101,"462,23490-7541-01 ",.01)
 ;;23490-7541-01
 ;;9002226.02101,"462,23490-7541-01 ",.02)
 ;;23490-7541-01
 ;;9002226.02101,"462,23490-7542-01 ",.01)
 ;;23490-7542-01
 ;;9002226.02101,"462,23490-7542-01 ",.02)
 ;;23490-7542-01
 ;;9002226.02101,"462,23490-9405-00 ",.01)
 ;;23490-9405-00
 ;;9002226.02101,"462,23490-9405-00 ",.02)
 ;;23490-9405-00
 ;;9002226.02101,"462,35356-0099-14 ",.01)
 ;;35356-0099-14
 ;;9002226.02101,"462,35356-0099-14 ",.02)
 ;;35356-0099-14
 ;;9002226.02101,"462,35356-0157-01 ",.01)
 ;;35356-0157-01
 ;;9002226.02101,"462,35356-0157-01 ",.02)
 ;;35356-0157-01
 ;;9002226.02101,"462,35356-0494-01 ",.01)
 ;;35356-0494-01
 ;;9002226.02101,"462,35356-0494-01 ",.02)
 ;;35356-0494-01
 ;;9002226.02101,"462,49999-0614-01 ",.01)
 ;;49999-0614-01
 ;;9002226.02101,"462,49999-0614-01 ",.02)
 ;;49999-0614-01
 ;;9002226.02101,"462,49999-0614-12 ",.01)
 ;;49999-0614-12
 ;;9002226.02101,"462,49999-0614-12 ",.02)
 ;;49999-0614-12
 ;;9002226.02101,"462,49999-0819-60 ",.01)
 ;;49999-0819-60
 ;;9002226.02101,"462,49999-0819-60 ",.02)
 ;;49999-0819-60
 ;;9002226.02101,"462,49999-0984-60 ",.01)
 ;;49999-0984-60
 ;;9002226.02101,"462,49999-0984-60 ",.02)
 ;;49999-0984-60
 ;;9002226.02101,"462,49999-0985-60 ",.01)
 ;;49999-0985-60
 ;;9002226.02101,"462,49999-0985-60 ",.02)
 ;;49999-0985-60
 ;;9002226.02101,"462,51479-0011-03 ",.01)
 ;;51479-0011-03
 ;;9002226.02101,"462,51479-0011-03 ",.02)
 ;;51479-0011-03
 ;;9002226.02101,"462,52959-0131-00 ",.01)
 ;;52959-0131-00
 ;;9002226.02101,"462,52959-0131-00 ",.02)
 ;;52959-0131-00
 ;;9002226.02101,"462,52959-0286-03 ",.01)
 ;;52959-0286-03
 ;;9002226.02101,"462,52959-0286-03 ",.02)
 ;;52959-0286-03
 ;;9002226.02101,"462,52959-0585-00 ",.01)
 ;;52959-0585-00
 ;;9002226.02101,"462,52959-0585-00 ",.02)
 ;;52959-0585-00
 ;;9002226.02101,"462,52959-0596-01 ",.01)
 ;;52959-0596-01
 ;;9002226.02101,"462,52959-0596-01 ",.02)
 ;;52959-0596-01
 ;;9002226.02101,"462,52959-0598-01 ",.01)
 ;;52959-0598-01
 ;;9002226.02101,"462,52959-0598-01 ",.02)
 ;;52959-0598-01
 ;;9002226.02101,"462,52959-1198-00 ",.01)
 ;;52959-1198-00
 ;;9002226.02101,"462,52959-1198-00 ",.02)
 ;;52959-1198-00
 ;;9002226.02101,"462,52959-1447-01 ",.01)
 ;;52959-1447-01
 ;;9002226.02101,"462,52959-1447-01 ",.02)
 ;;52959-1447-01
 ;;9002226.02101,"462,52959-1466-01 ",.01)
 ;;52959-1466-01
 ;;9002226.02101,"462,52959-1466-01 ",.02)
 ;;52959-1466-01
 ;;9002226.02101,"462,53002-1436-01 ",.01)
 ;;53002-1436-01
 ;;9002226.02101,"462,53002-1436-01 ",.02)
 ;;53002-1436-01
 ;;9002226.02101,"462,53002-1477-01 ",.01)
 ;;53002-1477-01
 ;;9002226.02101,"462,53002-1477-01 ",.02)
 ;;53002-1477-01
 ;;9002226.02101,"462,54569-0053-00 ",.01)
 ;;54569-0053-00
 ;;9002226.02101,"462,54569-0053-00 ",.02)
 ;;54569-0053-00
 ;;9002226.02101,"462,54569-0067-00 ",.01)
 ;;54569-0067-00
 ;;9002226.02101,"462,54569-0067-00 ",.02)
 ;;54569-0067-00
 ;;9002226.02101,"462,54569-1004-00 ",.01)
 ;;54569-1004-00
 ;;9002226.02101,"462,54569-1004-00 ",.02)
 ;;54569-1004-00
 ;;9002226.02101,"462,54569-1013-00 ",.01)
 ;;54569-1013-00
 ;;9002226.02101,"462,54569-1013-00 ",.02)
 ;;54569-1013-00
 ;;9002226.02101,"462,54569-3656-00 ",.01)
 ;;54569-3656-00
 ;;9002226.02101,"462,54569-3656-00 ",.02)
 ;;54569-3656-00
 ;;9002226.02101,"462,54569-3976-00 ",.01)
 ;;54569-3976-00
 ;;9002226.02101,"462,54569-3976-00 ",.02)
 ;;54569-3976-00
 ;;9002226.02101,"462,54569-4540-00 ",.01)
 ;;54569-4540-00
 ;;9002226.02101,"462,54569-4540-00 ",.02)
 ;;54569-4540-00
 ;;9002226.02101,"462,54569-4602-00 ",.01)
 ;;54569-4602-00
 ;;9002226.02101,"462,54569-4602-00 ",.02)
 ;;54569-4602-00
 ;;9002226.02101,"462,54569-4603-00 ",.01)
 ;;54569-4603-00
 ;;9002226.02101,"462,54569-4603-00 ",.02)
 ;;54569-4603-00
 ;;9002226.02101,"462,54569-4741-00 ",.01)
 ;;54569-4741-00
 ;;9002226.02101,"462,54569-4741-00 ",.02)
 ;;54569-4741-00