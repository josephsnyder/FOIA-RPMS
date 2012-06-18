BGP21J38 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1199,67544-0566-70 ",.01)
 ;;67544-0566-70
 ;;9002226.02101,"1199,67544-0566-70 ",.02)
 ;;67544-0566-70
 ;;9002226.02101,"1199,67544-0566-80 ",.01)
 ;;67544-0566-80
 ;;9002226.02101,"1199,67544-0566-80 ",.02)
 ;;67544-0566-80
 ;;9002226.02101,"1199,67544-0566-90 ",.01)
 ;;67544-0566-90
 ;;9002226.02101,"1199,67544-0566-90 ",.02)
 ;;67544-0566-90
 ;;9002226.02101,"1199,67544-0566-92 ",.01)
 ;;67544-0566-92
 ;;9002226.02101,"1199,67544-0566-92 ",.02)
 ;;67544-0566-92
 ;;9002226.02101,"1199,67544-0566-94 ",.01)
 ;;67544-0566-94
 ;;9002226.02101,"1199,67544-0566-94 ",.02)
 ;;67544-0566-94
 ;;9002226.02101,"1199,67544-0613-53 ",.01)
 ;;67544-0613-53
 ;;9002226.02101,"1199,67544-0613-53 ",.02)
 ;;67544-0613-53
 ;;9002226.02101,"1199,67544-0613-60 ",.01)
 ;;67544-0613-60
 ;;9002226.02101,"1199,67544-0613-60 ",.02)
 ;;67544-0613-60
 ;;9002226.02101,"1199,67544-0613-70 ",.01)
 ;;67544-0613-70
 ;;9002226.02101,"1199,67544-0613-70 ",.02)
 ;;67544-0613-70
 ;;9002226.02101,"1199,67544-0613-80 ",.01)
 ;;67544-0613-80
 ;;9002226.02101,"1199,67544-0613-80 ",.02)
 ;;67544-0613-80
 ;;9002226.02101,"1199,67544-0613-90 ",.01)
 ;;67544-0613-90
 ;;9002226.02101,"1199,67544-0613-90 ",.02)
 ;;67544-0613-90
 ;;9002226.02101,"1199,67544-0613-92 ",.01)
 ;;67544-0613-92
 ;;9002226.02101,"1199,67544-0613-92 ",.02)
 ;;67544-0613-92
 ;;9002226.02101,"1199,67544-0613-94 ",.01)
 ;;67544-0613-94
 ;;9002226.02101,"1199,67544-0613-94 ",.02)
 ;;67544-0613-94
 ;;9002226.02101,"1199,67544-0643-80 ",.01)
 ;;67544-0643-80
 ;;9002226.02101,"1199,67544-0643-80 ",.02)
 ;;67544-0643-80
 ;;9002226.02101,"1199,67544-0643-94 ",.01)
 ;;67544-0643-94
 ;;9002226.02101,"1199,67544-0643-94 ",.02)
 ;;67544-0643-94
 ;;9002226.02101,"1199,67544-0653-53 ",.01)
 ;;67544-0653-53
 ;;9002226.02101,"1199,67544-0653-53 ",.02)
 ;;67544-0653-53
 ;;9002226.02101,"1199,67544-0653-60 ",.01)
 ;;67544-0653-60
 ;;9002226.02101,"1199,67544-0653-60 ",.02)
 ;;67544-0653-60
 ;;9002226.02101,"1199,67544-0653-70 ",.01)
 ;;67544-0653-70
 ;;9002226.02101,"1199,67544-0653-70 ",.02)
 ;;67544-0653-70
 ;;9002226.02101,"1199,67544-0653-80 ",.01)
 ;;67544-0653-80
 ;;9002226.02101,"1199,67544-0653-80 ",.02)
 ;;67544-0653-80
 ;;9002226.02101,"1199,67544-0653-90 ",.01)
 ;;67544-0653-90
 ;;9002226.02101,"1199,67544-0653-90 ",.02)
 ;;67544-0653-90
 ;;9002226.02101,"1199,67544-0653-92 ",.01)
 ;;67544-0653-92
 ;;9002226.02101,"1199,67544-0653-92 ",.02)
 ;;67544-0653-92
 ;;9002226.02101,"1199,67544-0653-94 ",.01)
 ;;67544-0653-94
 ;;9002226.02101,"1199,67544-0653-94 ",.02)
 ;;67544-0653-94
 ;;9002226.02101,"1199,67544-0661-41 ",.01)
 ;;67544-0661-41
 ;;9002226.02101,"1199,67544-0661-41 ",.02)
 ;;67544-0661-41
 ;;9002226.02101,"1199,67544-0661-81 ",.01)
 ;;67544-0661-81
 ;;9002226.02101,"1199,67544-0661-81 ",.02)
 ;;67544-0661-81
 ;;9002226.02101,"1199,67544-0751-60 ",.01)
 ;;67544-0751-60
 ;;9002226.02101,"1199,67544-0751-60 ",.02)
 ;;67544-0751-60
 ;;9002226.02101,"1199,67544-0751-80 ",.01)
 ;;67544-0751-80
 ;;9002226.02101,"1199,67544-0751-80 ",.02)
 ;;67544-0751-80
 ;;9002226.02101,"1199,67544-0756-60 ",.01)
 ;;67544-0756-60
 ;;9002226.02101,"1199,67544-0756-60 ",.02)
 ;;67544-0756-60
 ;;9002226.02101,"1199,67544-0756-80 ",.01)
 ;;67544-0756-80
 ;;9002226.02101,"1199,67544-0756-80 ",.02)
 ;;67544-0756-80
 ;;9002226.02101,"1199,67544-0808-60 ",.01)
 ;;67544-0808-60
 ;;9002226.02101,"1199,67544-0808-60 ",.02)
 ;;67544-0808-60
 ;;9002226.02101,"1199,67544-0875-60 ",.01)
 ;;67544-0875-60
 ;;9002226.02101,"1199,67544-0875-60 ",.02)
 ;;67544-0875-60
 ;;9002226.02101,"1199,67544-0875-80 ",.01)
 ;;67544-0875-80
 ;;9002226.02101,"1199,67544-0875-80 ",.02)
 ;;67544-0875-80
 ;;9002226.02101,"1199,67544-0927-60 ",.01)
 ;;67544-0927-60
 ;;9002226.02101,"1199,67544-0927-60 ",.02)
 ;;67544-0927-60
 ;;9002226.02101,"1199,67544-1129-70 ",.01)
 ;;67544-1129-70
 ;;9002226.02101,"1199,67544-1129-70 ",.02)
 ;;67544-1129-70
 ;;9002226.02101,"1199,68071-0028-30 ",.01)
 ;;68071-0028-30
 ;;9002226.02101,"1199,68071-0028-30 ",.02)
 ;;68071-0028-30
 ;;9002226.02101,"1199,68071-0028-60 ",.01)
 ;;68071-0028-60
 ;;9002226.02101,"1199,68071-0028-60 ",.02)
 ;;68071-0028-60
 ;;9002226.02101,"1199,68084-0111-01 ",.01)
 ;;68084-0111-01
 ;;9002226.02101,"1199,68084-0111-01 ",.02)
 ;;68084-0111-01
 ;;9002226.02101,"1199,68084-0111-11 ",.01)
 ;;68084-0111-11
 ;;9002226.02101,"1199,68084-0111-11 ",.02)
 ;;68084-0111-11
 ;;9002226.02101,"1199,68084-0112-01 ",.01)
 ;;68084-0112-01
 ;;9002226.02101,"1199,68084-0112-01 ",.02)
 ;;68084-0112-01
 ;;9002226.02101,"1199,68084-0112-11 ",.01)
 ;;68084-0112-11
 ;;9002226.02101,"1199,68084-0112-11 ",.02)
 ;;68084-0112-11
 ;;9002226.02101,"1199,68084-0136-01 ",.01)
 ;;68084-0136-01
 ;;9002226.02101,"1199,68084-0136-01 ",.02)
 ;;68084-0136-01
 ;;9002226.02101,"1199,68084-0136-11 ",.01)
 ;;68084-0136-11
 ;;9002226.02101,"1199,68084-0136-11 ",.02)
 ;;68084-0136-11
 ;;9002226.02101,"1199,68084-0137-01 ",.01)
 ;;68084-0137-01
 ;;9002226.02101,"1199,68084-0137-01 ",.02)
 ;;68084-0137-01
 ;;9002226.02101,"1199,68084-0137-11 ",.01)
 ;;68084-0137-11
 ;;9002226.02101,"1199,68084-0137-11 ",.02)
 ;;68084-0137-11
 ;;9002226.02101,"1199,68084-0138-01 ",.01)
 ;;68084-0138-01
