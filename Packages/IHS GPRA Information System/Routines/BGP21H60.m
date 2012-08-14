BGP21H60 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 14, 2011;
 ;;12.0;IHS CLINICAL REPORTING;;JAN 9, 2012;Build 51
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,64455-0798-30 ",.02)
 ;;64455-0798-30
 ;;9002226.02101,"1197,64455-0798-42 ",.01)
 ;;64455-0798-42
 ;;9002226.02101,"1197,64455-0798-42 ",.02)
 ;;64455-0798-42
 ;;9002226.02101,"1197,64455-0798-49 ",.01)
 ;;64455-0798-49
 ;;9002226.02101,"1197,64455-0798-49 ",.02)
 ;;64455-0798-49
 ;;9002226.02101,"1197,64455-0799-42 ",.01)
 ;;64455-0799-42
 ;;9002226.02101,"1197,64455-0799-42 ",.02)
 ;;64455-0799-42
 ;;9002226.02101,"1197,64679-0421-01 ",.01)
 ;;64679-0421-01
 ;;9002226.02101,"1197,64679-0421-01 ",.02)
 ;;64679-0421-01
 ;;9002226.02101,"1197,64679-0422-01 ",.01)
 ;;64679-0422-01
 ;;9002226.02101,"1197,64679-0422-01 ",.02)
 ;;64679-0422-01
 ;;9002226.02101,"1197,64679-0422-02 ",.01)
 ;;64679-0422-02
 ;;9002226.02101,"1197,64679-0422-02 ",.02)
 ;;64679-0422-02
 ;;9002226.02101,"1197,64679-0423-01 ",.01)
 ;;64679-0423-01
 ;;9002226.02101,"1197,64679-0423-01 ",.02)
 ;;64679-0423-01
 ;;9002226.02101,"1197,64679-0423-02 ",.01)
 ;;64679-0423-02
 ;;9002226.02101,"1197,64679-0423-02 ",.02)
 ;;64679-0423-02
 ;;9002226.02101,"1197,65162-0006-09 ",.01)
 ;;65162-0006-09
 ;;9002226.02101,"1197,65162-0006-09 ",.02)
 ;;65162-0006-09
 ;;9002226.02101,"1197,65162-0006-50 ",.01)
 ;;65162-0006-50
 ;;9002226.02101,"1197,65162-0006-50 ",.02)
 ;;65162-0006-50
 ;;9002226.02101,"1197,65162-0007-09 ",.01)
 ;;65162-0007-09
 ;;9002226.02101,"1197,65162-0007-09 ",.02)
 ;;65162-0007-09
 ;;9002226.02101,"1197,65162-0007-50 ",.01)
 ;;65162-0007-50
 ;;9002226.02101,"1197,65162-0007-50 ",.02)
 ;;65162-0007-50
 ;;9002226.02101,"1197,65162-0008-09 ",.01)
 ;;65162-0008-09
 ;;9002226.02101,"1197,65162-0008-09 ",.02)
 ;;65162-0008-09
 ;;9002226.02101,"1197,65162-0008-50 ",.01)
 ;;65162-0008-50
 ;;9002226.02101,"1197,65162-0008-50 ",.02)
 ;;65162-0008-50
 ;;9002226.02101,"1197,65162-0588-10 ",.01)
 ;;65162-0588-10
 ;;9002226.02101,"1197,65162-0588-10 ",.02)
 ;;65162-0588-10
 ;;9002226.02101,"1197,65162-0589-10 ",.01)
 ;;65162-0589-10
 ;;9002226.02101,"1197,65162-0589-10 ",.02)
 ;;65162-0589-10
 ;;9002226.02101,"1197,65243-0028-09 ",.01)
 ;;65243-0028-09
 ;;9002226.02101,"1197,65243-0028-09 ",.02)
 ;;65243-0028-09
 ;;9002226.02101,"1197,65243-0054-09 ",.01)
 ;;65243-0054-09
 ;;9002226.02101,"1197,65243-0054-09 ",.02)
 ;;65243-0054-09
 ;;9002226.02101,"1197,65243-0111-09 ",.01)
 ;;65243-0111-09
 ;;9002226.02101,"1197,65243-0111-09 ",.02)
 ;;65243-0111-09
 ;;9002226.02101,"1197,65243-0260-09 ",.01)
 ;;65243-0260-09
 ;;9002226.02101,"1197,65243-0260-09 ",.02)
 ;;65243-0260-09
 ;;9002226.02101,"1197,65243-0311-09 ",.01)
 ;;65243-0311-09
 ;;9002226.02101,"1197,65243-0311-09 ",.02)
 ;;65243-0311-09
 ;;9002226.02101,"1197,65243-0312-09 ",.01)
 ;;65243-0312-09
 ;;9002226.02101,"1197,65243-0312-09 ",.02)
 ;;65243-0312-09
 ;;9002226.02101,"1197,65243-0312-18 ",.01)
 ;;65243-0312-18
 ;;9002226.02101,"1197,65243-0312-18 ",.02)
 ;;65243-0312-18
 ;;9002226.02101,"1197,65243-0317-09 ",.01)
 ;;65243-0317-09
 ;;9002226.02101,"1197,65243-0317-09 ",.02)
 ;;65243-0317-09
 ;;9002226.02101,"1197,65243-0318-09 ",.01)
 ;;65243-0318-09
 ;;9002226.02101,"1197,65243-0318-09 ",.02)
 ;;65243-0318-09
 ;;9002226.02101,"1197,65597-0110-10 ",.01)
 ;;65597-0110-10
 ;;9002226.02101,"1197,65597-0110-10 ",.02)
 ;;65597-0110-10
 ;;9002226.02101,"1197,65597-0110-30 ",.01)
 ;;65597-0110-30
 ;;9002226.02101,"1197,65597-0110-30 ",.02)
 ;;65597-0110-30
 ;;9002226.02101,"1197,65597-0110-90 ",.01)
 ;;65597-0110-90
 ;;9002226.02101,"1197,65597-0110-90 ",.02)
 ;;65597-0110-90
 ;;9002226.02101,"1197,65597-0111-10 ",.01)
 ;;65597-0111-10
 ;;9002226.02101,"1197,65597-0111-10 ",.02)
 ;;65597-0111-10
 ;;9002226.02101,"1197,65597-0111-30 ",.01)
 ;;65597-0111-30
 ;;9002226.02101,"1197,65597-0111-30 ",.02)
 ;;65597-0111-30
 ;;9002226.02101,"1197,65597-0111-90 ",.01)
 ;;65597-0111-90
 ;;9002226.02101,"1197,65597-0111-90 ",.02)
 ;;65597-0111-90
 ;;9002226.02101,"1197,65597-0112-10 ",.01)
 ;;65597-0112-10
 ;;9002226.02101,"1197,65597-0112-10 ",.02)
 ;;65597-0112-10
 ;;9002226.02101,"1197,65597-0112-30 ",.01)
 ;;65597-0112-30
 ;;9002226.02101,"1197,65597-0112-30 ",.02)
 ;;65597-0112-30
 ;;9002226.02101,"1197,65597-0112-90 ",.01)
 ;;65597-0112-90
 ;;9002226.02101,"1197,65597-0112-90 ",.02)
 ;;65597-0112-90
 ;;9002226.02101,"1197,65597-0113-10 ",.01)
 ;;65597-0113-10
 ;;9002226.02101,"1197,65597-0113-10 ",.02)
 ;;65597-0113-10
 ;;9002226.02101,"1197,65597-0113-30 ",.01)
 ;;65597-0113-30
 ;;9002226.02101,"1197,65597-0113-30 ",.02)
 ;;65597-0113-30
 ;;9002226.02101,"1197,65597-0113-90 ",.01)
 ;;65597-0113-90
 ;;9002226.02101,"1197,65597-0113-90 ",.02)
 ;;65597-0113-90
 ;;9002226.02101,"1197,65597-0114-30 ",.01)
 ;;65597-0114-30
 ;;9002226.02101,"1197,65597-0114-30 ",.02)
 ;;65597-0114-30
 ;;9002226.02101,"1197,65597-0114-90 ",.01)
 ;;65597-0114-90
 ;;9002226.02101,"1197,65597-0114-90 ",.02)
 ;;65597-0114-90
 ;;9002226.02101,"1197,65597-0115-30 ",.01)
 ;;65597-0115-30
 ;;9002226.02101,"1197,65597-0115-30 ",.02)
 ;;65597-0115-30
 ;;9002226.02101,"1197,65597-0115-90 ",.01)
 ;;65597-0115-90
 ;;9002226.02101,"1197,65597-0115-90 ",.02)
 ;;65597-0115-90
 ;;9002226.02101,"1197,65597-0116-30 ",.01)
 ;;65597-0116-30
 ;;9002226.02101,"1197,65597-0116-30 ",.02)
 ;;65597-0116-30