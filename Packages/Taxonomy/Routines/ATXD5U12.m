ATXD5U12 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON NOV 12, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"174,T63.114A ",.01)
 ;;T63.114A 
 ;;9002226.02101,"174,T63.114A ",.02)
 ;;T63.114A 
 ;;9002226.02101,"174,T63.114A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.114D ",.01)
 ;;T63.114D 
 ;;9002226.02101,"174,T63.114D ",.02)
 ;;T63.114D 
 ;;9002226.02101,"174,T63.114D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.114S ",.01)
 ;;T63.114S 
 ;;9002226.02101,"174,T63.114S ",.02)
 ;;T63.114S 
 ;;9002226.02101,"174,T63.114S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.124A ",.01)
 ;;T63.124A 
 ;;9002226.02101,"174,T63.124A ",.02)
 ;;T63.124A 
 ;;9002226.02101,"174,T63.124A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.124D ",.01)
 ;;T63.124D 
 ;;9002226.02101,"174,T63.124D ",.02)
 ;;T63.124D 
 ;;9002226.02101,"174,T63.124D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.124S ",.01)
 ;;T63.124S 
 ;;9002226.02101,"174,T63.124S ",.02)
 ;;T63.124S 
 ;;9002226.02101,"174,T63.124S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.194A ",.01)
 ;;T63.194A 
 ;;9002226.02101,"174,T63.194A ",.02)
 ;;T63.194A 
 ;;9002226.02101,"174,T63.194A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.194D ",.01)
 ;;T63.194D 
 ;;9002226.02101,"174,T63.194D ",.02)
 ;;T63.194D 
 ;;9002226.02101,"174,T63.194D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.194S ",.01)
 ;;T63.194S 
 ;;9002226.02101,"174,T63.194S ",.02)
 ;;T63.194S 
 ;;9002226.02101,"174,T63.194S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.2X4A ",.01)
 ;;T63.2X4A 
 ;;9002226.02101,"174,T63.2X4A ",.02)
 ;;T63.2X4A 
 ;;9002226.02101,"174,T63.2X4A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.2X4D ",.01)
 ;;T63.2X4D 
 ;;9002226.02101,"174,T63.2X4D ",.02)
 ;;T63.2X4D 
 ;;9002226.02101,"174,T63.2X4D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.2X4S ",.01)
 ;;T63.2X4S 
 ;;9002226.02101,"174,T63.2X4S ",.02)
 ;;T63.2X4S 
 ;;9002226.02101,"174,T63.2X4S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.304A ",.01)
 ;;T63.304A 
 ;;9002226.02101,"174,T63.304A ",.02)
 ;;T63.304A 
 ;;9002226.02101,"174,T63.304A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.304D ",.01)
 ;;T63.304D 
 ;;9002226.02101,"174,T63.304D ",.02)
 ;;T63.304D 
 ;;9002226.02101,"174,T63.304D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.304S ",.01)
 ;;T63.304S 
 ;;9002226.02101,"174,T63.304S ",.02)
 ;;T63.304S 
 ;;9002226.02101,"174,T63.304S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.314A ",.01)
 ;;T63.314A 
 ;;9002226.02101,"174,T63.314A ",.02)
 ;;T63.314A 
 ;;9002226.02101,"174,T63.314A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.314D ",.01)
 ;;T63.314D 
 ;;9002226.02101,"174,T63.314D ",.02)
 ;;T63.314D 
 ;;9002226.02101,"174,T63.314D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.314S ",.01)
 ;;T63.314S 
 ;;9002226.02101,"174,T63.314S ",.02)
 ;;T63.314S 
 ;;9002226.02101,"174,T63.314S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.324A ",.01)
 ;;T63.324A 
 ;;9002226.02101,"174,T63.324A ",.02)
 ;;T63.324A 
 ;;9002226.02101,"174,T63.324A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.324D ",.01)
 ;;T63.324D 
 ;;9002226.02101,"174,T63.324D ",.02)
 ;;T63.324D 
 ;;9002226.02101,"174,T63.324D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.324S ",.01)
 ;;T63.324S 
 ;;9002226.02101,"174,T63.324S ",.02)
 ;;T63.324S 
 ;;9002226.02101,"174,T63.324S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.334A ",.01)
 ;;T63.334A 
 ;;9002226.02101,"174,T63.334A ",.02)
 ;;T63.334A 
 ;;9002226.02101,"174,T63.334A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.334D ",.01)
 ;;T63.334D 
 ;;9002226.02101,"174,T63.334D ",.02)
 ;;T63.334D 
 ;;9002226.02101,"174,T63.334D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.334S ",.01)
 ;;T63.334S 
 ;;9002226.02101,"174,T63.334S ",.02)
 ;;T63.334S 
 ;;9002226.02101,"174,T63.334S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.394A ",.01)
 ;;T63.394A 
 ;;9002226.02101,"174,T63.394A ",.02)
 ;;T63.394A 
 ;;9002226.02101,"174,T63.394A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.394D ",.01)
 ;;T63.394D 
 ;;9002226.02101,"174,T63.394D ",.02)
 ;;T63.394D 
 ;;9002226.02101,"174,T63.394D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.394S ",.01)
 ;;T63.394S 
 ;;9002226.02101,"174,T63.394S ",.02)
 ;;T63.394S 
 ;;9002226.02101,"174,T63.394S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.414A ",.01)
 ;;T63.414A 
 ;;9002226.02101,"174,T63.414A ",.02)
 ;;T63.414A 
 ;;9002226.02101,"174,T63.414A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.414D ",.01)
 ;;T63.414D 
 ;;9002226.02101,"174,T63.414D ",.02)
 ;;T63.414D 
 ;;9002226.02101,"174,T63.414D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.414S ",.01)
 ;;T63.414S 
 ;;9002226.02101,"174,T63.414S ",.02)
 ;;T63.414S 
 ;;9002226.02101,"174,T63.414S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.424A ",.01)
 ;;T63.424A 
 ;;9002226.02101,"174,T63.424A ",.02)
 ;;T63.424A 
 ;;9002226.02101,"174,T63.424A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.424D ",.01)
 ;;T63.424D 
 ;;9002226.02101,"174,T63.424D ",.02)
 ;;T63.424D 
 ;;9002226.02101,"174,T63.424D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.424S ",.01)
 ;;T63.424S 
 ;;9002226.02101,"174,T63.424S ",.02)
 ;;T63.424S 
 ;;9002226.02101,"174,T63.424S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.434A ",.01)
 ;;T63.434A 
 ;;9002226.02101,"174,T63.434A ",.02)
 ;;T63.434A 
 ;;9002226.02101,"174,T63.434A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.434D ",.01)
 ;;T63.434D 
 ;;9002226.02101,"174,T63.434D ",.02)
 ;;T63.434D 
 ;;9002226.02101,"174,T63.434D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.434S ",.01)
 ;;T63.434S 
 ;;9002226.02101,"174,T63.434S ",.02)
 ;;T63.434S 
 ;;9002226.02101,"174,T63.434S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.444A ",.01)
 ;;T63.444A 
 ;;9002226.02101,"174,T63.444A ",.02)
 ;;T63.444A 
 ;;9002226.02101,"174,T63.444A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.444D ",.01)
 ;;T63.444D 
 ;;9002226.02101,"174,T63.444D ",.02)
 ;;T63.444D 
 ;;9002226.02101,"174,T63.444D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.444S ",.01)
 ;;T63.444S 
 ;;9002226.02101,"174,T63.444S ",.02)
 ;;T63.444S 
 ;;9002226.02101,"174,T63.444S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.454A ",.01)
 ;;T63.454A 
 ;;9002226.02101,"174,T63.454A ",.02)
 ;;T63.454A 
 ;;9002226.02101,"174,T63.454A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.454D ",.01)
 ;;T63.454D 
 ;;9002226.02101,"174,T63.454D ",.02)
 ;;T63.454D 
 ;;9002226.02101,"174,T63.454D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.454S ",.01)
 ;;T63.454S 
 ;;9002226.02101,"174,T63.454S ",.02)
 ;;T63.454S 
 ;;9002226.02101,"174,T63.454S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.464A ",.01)
 ;;T63.464A 
 ;;9002226.02101,"174,T63.464A ",.02)
 ;;T63.464A 
 ;;9002226.02101,"174,T63.464A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.464D ",.01)
 ;;T63.464D 
 ;;9002226.02101,"174,T63.464D ",.02)
 ;;T63.464D 
 ;;9002226.02101,"174,T63.464D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.464S ",.01)
 ;;T63.464S 
 ;;9002226.02101,"174,T63.464S ",.02)
 ;;T63.464S 
 ;;9002226.02101,"174,T63.464S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.484A ",.01)
 ;;T63.484A 
 ;;9002226.02101,"174,T63.484A ",.02)
 ;;T63.484A 
 ;;9002226.02101,"174,T63.484A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.484D ",.01)
 ;;T63.484D 
 ;;9002226.02101,"174,T63.484D ",.02)
 ;;T63.484D 
 ;;9002226.02101,"174,T63.484D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.484S ",.01)
 ;;T63.484S 
 ;;9002226.02101,"174,T63.484S ",.02)
 ;;T63.484S 
 ;;9002226.02101,"174,T63.484S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.514A ",.01)
 ;;T63.514A 
 ;;9002226.02101,"174,T63.514A ",.02)
 ;;T63.514A 
 ;;9002226.02101,"174,T63.514A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.514D ",.01)
 ;;T63.514D 
 ;;9002226.02101,"174,T63.514D ",.02)
 ;;T63.514D 
 ;;9002226.02101,"174,T63.514D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.514S ",.01)
 ;;T63.514S 
 ;;9002226.02101,"174,T63.514S ",.02)
 ;;T63.514S 
 ;;9002226.02101,"174,T63.514S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.594A ",.01)
 ;;T63.594A 
 ;;9002226.02101,"174,T63.594A ",.02)
 ;;T63.594A 
 ;;9002226.02101,"174,T63.594A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.594D ",.01)
 ;;T63.594D 
 ;;9002226.02101,"174,T63.594D ",.02)
 ;;T63.594D 
 ;;9002226.02101,"174,T63.594D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.594S ",.01)
 ;;T63.594S 
 ;;9002226.02101,"174,T63.594S ",.02)
 ;;T63.594S 
 ;;9002226.02101,"174,T63.594S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.614A ",.01)
 ;;T63.614A 
 ;;9002226.02101,"174,T63.614A ",.02)
 ;;T63.614A 
 ;;9002226.02101,"174,T63.614A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.614D ",.01)
 ;;T63.614D 
 ;;9002226.02101,"174,T63.614D ",.02)
 ;;T63.614D 
 ;;9002226.02101,"174,T63.614D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.614S ",.01)
 ;;T63.614S 
 ;;9002226.02101,"174,T63.614S ",.02)
 ;;T63.614S 
 ;;9002226.02101,"174,T63.614S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.624A ",.01)
 ;;T63.624A 
 ;;9002226.02101,"174,T63.624A ",.02)
 ;;T63.624A 
 ;;9002226.02101,"174,T63.624A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.624D ",.01)
 ;;T63.624D 
 ;;9002226.02101,"174,T63.624D ",.02)
 ;;T63.624D 
 ;;9002226.02101,"174,T63.624D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.624S ",.01)
 ;;T63.624S 
 ;;9002226.02101,"174,T63.624S ",.02)
 ;;T63.624S 
 ;;9002226.02101,"174,T63.624S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.634A ",.01)
 ;;T63.634A 
 ;;9002226.02101,"174,T63.634A ",.02)
 ;;T63.634A 
 ;;9002226.02101,"174,T63.634A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.634D ",.01)
 ;;T63.634D 
 ;;9002226.02101,"174,T63.634D ",.02)
 ;;T63.634D 
 ;;9002226.02101,"174,T63.634D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.634S ",.01)
 ;;T63.634S 
 ;;9002226.02101,"174,T63.634S ",.02)
 ;;T63.634S 
 ;;9002226.02101,"174,T63.634S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.694A ",.01)
 ;;T63.694A 
 ;;9002226.02101,"174,T63.694A ",.02)
 ;;T63.694A 
 ;;9002226.02101,"174,T63.694A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.694D ",.01)
 ;;T63.694D 
 ;;9002226.02101,"174,T63.694D ",.02)
 ;;T63.694D 
 ;;9002226.02101,"174,T63.694D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.694S ",.01)
 ;;T63.694S 
 ;;9002226.02101,"174,T63.694S ",.02)
 ;;T63.694S 
 ;;9002226.02101,"174,T63.694S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.714A ",.01)
 ;;T63.714A 
 ;;9002226.02101,"174,T63.714A ",.02)
 ;;T63.714A 
 ;;9002226.02101,"174,T63.714A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.714D ",.01)
 ;;T63.714D 
 ;;9002226.02101,"174,T63.714D ",.02)
 ;;T63.714D 
 ;;9002226.02101,"174,T63.714D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.714S ",.01)
 ;;T63.714S 
 ;;9002226.02101,"174,T63.714S ",.02)
 ;;T63.714S 
 ;;9002226.02101,"174,T63.714S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.794A ",.01)
 ;;T63.794A 
 ;;9002226.02101,"174,T63.794A ",.02)
 ;;T63.794A 
 ;;9002226.02101,"174,T63.794A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.794D ",.01)
 ;;T63.794D 
 ;;9002226.02101,"174,T63.794D ",.02)
 ;;T63.794D 
 ;;9002226.02101,"174,T63.794D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.794S ",.01)
 ;;T63.794S 
 ;;9002226.02101,"174,T63.794S ",.02)
 ;;T63.794S 
 ;;9002226.02101,"174,T63.794S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.814A ",.01)
 ;;T63.814A 
 ;;9002226.02101,"174,T63.814A ",.02)
 ;;T63.814A 
 ;;9002226.02101,"174,T63.814A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.814D ",.01)
 ;;T63.814D 
 ;;9002226.02101,"174,T63.814D ",.02)
 ;;T63.814D 
 ;;9002226.02101,"174,T63.814D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.814S ",.01)
 ;;T63.814S 
 ;;9002226.02101,"174,T63.814S ",.02)
 ;;T63.814S 
 ;;9002226.02101,"174,T63.814S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.824A ",.01)
 ;;T63.824A 
 ;;9002226.02101,"174,T63.824A ",.02)
 ;;T63.824A 
 ;;9002226.02101,"174,T63.824A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.824D ",.01)
 ;;T63.824D 
 ;;9002226.02101,"174,T63.824D ",.02)
 ;;T63.824D 
 ;;9002226.02101,"174,T63.824D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.824S ",.01)
 ;;T63.824S 
 ;;9002226.02101,"174,T63.824S ",.02)
 ;;T63.824S 
 ;;9002226.02101,"174,T63.824S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.834A ",.01)
 ;;T63.834A 
 ;;9002226.02101,"174,T63.834A ",.02)
 ;;T63.834A 
 ;;9002226.02101,"174,T63.834A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.834D ",.01)
 ;;T63.834D 
 ;;9002226.02101,"174,T63.834D ",.02)
 ;;T63.834D 
 ;;9002226.02101,"174,T63.834D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.834S ",.01)
 ;;T63.834S 
 ;;9002226.02101,"174,T63.834S ",.02)
 ;;T63.834S 
 ;;9002226.02101,"174,T63.834S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.894A ",.01)
 ;;T63.894A 
 ;;9002226.02101,"174,T63.894A ",.02)
 ;;T63.894A 
 ;;9002226.02101,"174,T63.894A ",.03)
 ;;30
 ;;9002226.02101,"174,T63.894D ",.01)
 ;;T63.894D 
 ;;9002226.02101,"174,T63.894D ",.02)
 ;;T63.894D 
 ;;9002226.02101,"174,T63.894D ",.03)
 ;;30
 ;;9002226.02101,"174,T63.894S ",.01)
 ;;T63.894S 
 ;;9002226.02101,"174,T63.894S ",.02)
 ;;T63.894S 
 ;;9002226.02101,"174,T63.894S ",.03)
 ;;30
 ;;9002226.02101,"174,T63.94XA ",.01)
 ;;T63.94XA 
 ;;9002226.02101,"174,T63.94XA ",.02)
 ;;T63.94XA 
 ;;9002226.02101,"174,T63.94XA ",.03)
 ;;30
 ;;9002226.02101,"174,T63.94XD ",.01)
 ;;T63.94XD 
 ;;9002226.02101,"174,T63.94XD ",.02)
 ;;T63.94XD 
 ;;9002226.02101,"174,T63.94XD ",.03)
 ;;30
 ;;9002226.02101,"174,T63.94XS ",.01)
 ;;T63.94XS 
 ;;9002226.02101,"174,T63.94XS ",.02)
 ;;T63.94XS 
 ;;9002226.02101,"174,T63.94XS ",.03)
 ;;30
 ;;9002226.02101,"174,T64.04XA ",.01)
 ;;T64.04XA 
 ;;9002226.02101,"174,T64.04XA ",.02)
 ;;T64.04XA 
 ;;9002226.02101,"174,T64.04XA ",.03)
 ;;30
 ;;9002226.02101,"174,T64.04XD ",.01)
 ;;T64.04XD 
 ;;9002226.02101,"174,T64.04XD ",.02)
 ;;T64.04XD 
 ;;9002226.02101,"174,T64.04XD ",.03)
 ;;30
 ;;9002226.02101,"174,T64.04XS ",.01)
 ;;T64.04XS 
 ;;9002226.02101,"174,T64.04XS ",.02)
 ;;T64.04XS 
