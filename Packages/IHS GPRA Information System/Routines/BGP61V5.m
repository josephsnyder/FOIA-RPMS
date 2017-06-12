BGP61V5 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"614,40204-0 ",.02)
 ;;40204-0
 ;;9002226.02101,"614,40205-7 ",.01)
 ;;40205-7
 ;;9002226.02101,"614,40205-7 ",.02)
 ;;40205-7
 ;;9002226.02101,"614,40206-5 ",.01)
 ;;40206-5
 ;;9002226.02101,"614,40206-5 ",.02)
 ;;40206-5
 ;;9002226.02101,"614,40207-3 ",.01)
 ;;40207-3
 ;;9002226.02101,"614,40207-3 ",.02)
 ;;40207-3
 ;;9002226.02101,"614,40208-1 ",.01)
 ;;40208-1
 ;;9002226.02101,"614,40208-1 ",.02)
 ;;40208-1
 ;;9002226.02101,"614,40209-9 ",.01)
 ;;40209-9
 ;;9002226.02101,"614,40209-9 ",.02)
 ;;40209-9
 ;;9002226.02101,"614,40210-7 ",.01)
 ;;40210-7
 ;;9002226.02101,"614,40210-7 ",.02)
 ;;40210-7
 ;;9002226.02101,"614,40211-5 ",.01)
 ;;40211-5
 ;;9002226.02101,"614,40211-5 ",.02)
 ;;40211-5
 ;;9002226.02101,"614,40212-3 ",.01)
 ;;40212-3
 ;;9002226.02101,"614,40212-3 ",.02)
 ;;40212-3
 ;;9002226.02101,"614,40213-1 ",.01)
 ;;40213-1
 ;;9002226.02101,"614,40213-1 ",.02)
 ;;40213-1
 ;;9002226.02101,"614,40214-9 ",.01)
 ;;40214-9
 ;;9002226.02101,"614,40214-9 ",.02)
 ;;40214-9
 ;;9002226.02101,"614,40215-6 ",.01)
 ;;40215-6
 ;;9002226.02101,"614,40215-6 ",.02)
 ;;40215-6
 ;;9002226.02101,"614,40216-4 ",.01)
 ;;40216-4
 ;;9002226.02101,"614,40216-4 ",.02)
 ;;40216-4
 ;;9002226.02101,"614,40217-2 ",.01)
 ;;40217-2
 ;;9002226.02101,"614,40217-2 ",.02)
 ;;40217-2
 ;;9002226.02101,"614,40218-0 ",.01)
 ;;40218-0
 ;;9002226.02101,"614,40218-0 ",.02)
 ;;40218-0
 ;;9002226.02101,"614,40219-8 ",.01)
 ;;40219-8
 ;;9002226.02101,"614,40219-8 ",.02)
 ;;40219-8
 ;;9002226.02101,"614,40220-6 ",.01)
 ;;40220-6
 ;;9002226.02101,"614,40220-6 ",.02)
 ;;40220-6
 ;;9002226.02101,"614,40221-4 ",.01)
 ;;40221-4
 ;;9002226.02101,"614,40221-4 ",.02)
 ;;40221-4
 ;;9002226.02101,"614,40222-2 ",.01)
 ;;40222-2
 ;;9002226.02101,"614,40222-2 ",.02)
 ;;40222-2
 ;;9002226.02101,"614,40259-4 ",.01)
 ;;40259-4
 ;;9002226.02101,"614,40259-4 ",.02)
 ;;40259-4
 ;;9002226.02101,"614,40260-2 ",.01)
 ;;40260-2
 ;;9002226.02101,"614,40260-2 ",.02)
 ;;40260-2
 ;;9002226.02101,"614,40261-0 ",.01)
 ;;40261-0
 ;;9002226.02101,"614,40261-0 ",.02)
 ;;40261-0
 ;;9002226.02101,"614,40262-8 ",.01)
 ;;40262-8
 ;;9002226.02101,"614,40262-8 ",.02)
 ;;40262-8
 ;;9002226.02101,"614,40263-6 ",.01)
 ;;40263-6
 ;;9002226.02101,"614,40263-6 ",.02)
 ;;40263-6
 ;;9002226.02101,"614,40276-8 ",.01)
 ;;40276-8
 ;;9002226.02101,"614,40276-8 ",.02)
 ;;40276-8
 ;;9002226.02101,"614,40277-6 ",.01)
 ;;40277-6
 ;;9002226.02101,"614,40277-6 ",.02)
 ;;40277-6
 ;;9002226.02101,"614,40278-4 ",.01)
 ;;40278-4
 ;;9002226.02101,"614,40278-4 ",.02)
 ;;40278-4
 ;;9002226.02101,"614,40279-2 ",.01)
 ;;40279-2
 ;;9002226.02101,"614,40279-2 ",.02)
 ;;40279-2
 ;;9002226.02101,"614,40280-0 ",.01)
 ;;40280-0
 ;;9002226.02101,"614,40280-0 ",.02)
 ;;40280-0
 ;;9002226.02101,"614,40285-9 ",.01)
 ;;40285-9
 ;;9002226.02101,"614,40285-9 ",.02)
 ;;40285-9
 ;;9002226.02101,"614,40286-7 ",.01)
 ;;40286-7
 ;;9002226.02101,"614,40286-7 ",.02)
 ;;40286-7
 ;;9002226.02101,"614,40287-5 ",.01)
 ;;40287-5
 ;;9002226.02101,"614,40287-5 ",.02)
 ;;40287-5
 ;;9002226.02101,"614,40318-8 ",.01)
 ;;40318-8
 ;;9002226.02101,"614,40318-8 ",.02)
 ;;40318-8
 ;;9002226.02101,"614,40319-6 ",.01)
 ;;40319-6
 ;;9002226.02101,"614,40319-6 ",.02)
 ;;40319-6
 ;;9002226.02101,"614,40320-4 ",.01)
 ;;40320-4
 ;;9002226.02101,"614,40320-4 ",.02)
 ;;40320-4
 ;;9002226.02101,"614,40321-2 ",.01)
 ;;40321-2
 ;;9002226.02101,"614,40321-2 ",.02)
 ;;40321-2
 ;;9002226.02101,"614,40322-0 ",.01)
 ;;40322-0
 ;;9002226.02101,"614,40322-0 ",.02)
 ;;40322-0
 ;;9002226.02101,"614,40323-8 ",.01)
 ;;40323-8
 ;;9002226.02101,"614,40323-8 ",.02)
 ;;40323-8
 ;;9002226.02101,"614,40324-6 ",.01)
 ;;40324-6
 ;;9002226.02101,"614,40324-6 ",.02)
 ;;40324-6
 ;;9002226.02101,"614,40858-3 ",.01)
 ;;40858-3
 ;;9002226.02101,"614,40858-3 ",.02)
 ;;40858-3
 ;;9002226.02101,"614,40875-7 ",.01)
 ;;40875-7
 ;;9002226.02101,"614,40875-7 ",.02)
 ;;40875-7
 ;;9002226.02101,"614,41024-1 ",.01)
 ;;41024-1
 ;;9002226.02101,"614,41024-1 ",.02)
 ;;41024-1
 ;;9002226.02101,"614,41604-0 ",.01)
 ;;41604-0
 ;;9002226.02101,"614,41604-0 ",.02)
 ;;41604-0
 ;;9002226.02101,"614,41651-1 ",.01)
 ;;41651-1
 ;;9002226.02101,"614,41651-1 ",.02)
 ;;41651-1
 ;;9002226.02101,"614,41652-9 ",.01)
 ;;41652-9
 ;;9002226.02101,"614,41652-9 ",.02)
 ;;41652-9
 ;;9002226.02101,"614,41653-7 ",.01)
 ;;41653-7
 ;;9002226.02101,"614,41653-7 ",.02)
 ;;41653-7
 ;;9002226.02101,"614,43740-0 ",.01)
 ;;43740-0
 ;;9002226.02101,"614,43740-0 ",.02)
 ;;43740-0
 ;;9002226.02101,"614,44919-9 ",.01)
 ;;44919-9
 ;;9002226.02101,"614,44919-9 ",.02)
 ;;44919-9
 ;;9002226.02101,"614,45052-8 ",.01)
 ;;45052-8
 ;;9002226.02101,"614,45052-8 ",.02)
 ;;45052-8
 ;;9002226.02101,"614,45053-6 ",.01)
 ;;45053-6
 ;;9002226.02101,"614,45053-6 ",.02)
 ;;45053-6
 ;;9002226.02101,"614,45054-4 ",.01)
 ;;45054-4
 ;;9002226.02101,"614,45054-4 ",.02)
 ;;45054-4
 ;;9002226.02101,"614,45055-1 ",.01)
 ;;45055-1
 ;;9002226.02101,"614,45055-1 ",.02)
 ;;45055-1
 ;;9002226.02101,"614,45056-9 ",.01)
 ;;45056-9
 ;;9002226.02101,"614,45056-9 ",.02)
 ;;45056-9
 ;;9002226.02101,"614,45298-7 ",.01)
 ;;45298-7
 ;;9002226.02101,"614,45298-7 ",.02)
 ;;45298-7
 ;;9002226.02101,"614,45299-5 ",.01)
 ;;45299-5
 ;;9002226.02101,"614,45299-5 ",.02)
 ;;45299-5
 ;;9002226.02101,"614,47622-6 ",.01)
 ;;47622-6
 ;;9002226.02101,"614,47622-6 ",.02)
 ;;47622-6
 ;;9002226.02101,"614,47859-4 ",.01)
 ;;47859-4
 ;;9002226.02101,"614,47859-4 ",.02)
 ;;47859-4
 ;;9002226.02101,"614,47995-6 ",.01)
 ;;47995-6
 ;;9002226.02101,"614,47995-6 ",.02)
 ;;47995-6
 ;;9002226.02101,"614,48109-3 ",.01)
 ;;48109-3
 ;;9002226.02101,"614,48109-3 ",.02)
 ;;48109-3
 ;;9002226.02101,"614,48605-0 ",.01)
 ;;48605-0
 ;;9002226.02101,"614,48605-0 ",.02)
 ;;48605-0
 ;;9002226.02101,"614,48606-8 ",.01)
 ;;48606-8
 ;;9002226.02101,"614,48606-8 ",.02)
 ;;48606-8
 ;;9002226.02101,"614,48607-6 ",.01)
 ;;48607-6
 ;;9002226.02101,"614,48607-6 ",.02)
 ;;48607-6
 ;;9002226.02101,"614,48810-6 ",.01)
 ;;48810-6
 ;;9002226.02101,"614,48810-6 ",.02)
 ;;48810-6
 ;;9002226.02101,"614,48983-1 ",.01)
 ;;48983-1
 ;;9002226.02101,"614,48983-1 ",.02)
 ;;48983-1
 ;;9002226.02101,"614,48984-9 ",.01)
 ;;48984-9
 ;;9002226.02101,"614,48984-9 ",.02)
 ;;48984-9
 ;;9002226.02101,"614,48985-6 ",.01)
 ;;48985-6
 ;;9002226.02101,"614,48985-6 ",.02)
 ;;48985-6
 ;;9002226.02101,"614,48986-4 ",.01)
 ;;48986-4
 ;;9002226.02101,"614,48986-4 ",.02)
 ;;48986-4
 ;;9002226.02101,"614,48988-0 ",.01)
 ;;48988-0
 ;;9002226.02101,"614,48988-0 ",.02)
 ;;48988-0
 ;;9002226.02101,"614,48989-8 ",.01)
 ;;48989-8
 ;;9002226.02101,"614,48989-8 ",.02)
 ;;48989-8
 ;;9002226.02101,"614,48990-6 ",.01)
 ;;48990-6
 ;;9002226.02101,"614,48990-6 ",.02)
 ;;48990-6
 ;;9002226.02101,"614,48991-4 ",.01)
 ;;48991-4
 ;;9002226.02101,"614,48991-4 ",.02)
 ;;48991-4
 ;;9002226.02101,"614,48992-2 ",.01)
 ;;48992-2
 ;;9002226.02101,"614,48992-2 ",.02)
 ;;48992-2
 ;;9002226.02101,"614,48993-0 ",.01)
 ;;48993-0
 ;;9002226.02101,"614,48993-0 ",.02)
 ;;48993-0
 ;;9002226.02101,"614,48994-8 ",.01)
 ;;48994-8
 ;;9002226.02101,"614,48994-8 ",.02)
 ;;48994-8
 ;;9002226.02101,"614,49134-0 ",.01)
 ;;49134-0
 ;;9002226.02101,"614,49134-0 ",.02)
 ;;49134-0
 ;;9002226.02101,"614,49688-5 ",.01)
 ;;49688-5
 ;;9002226.02101,"614,49688-5 ",.02)
 ;;49688-5
 ;;9002226.02101,"614,49689-3 ",.01)
 ;;49689-3
 ;;9002226.02101,"614,49689-3 ",.02)
 ;;49689-3
 ;;9002226.02101,"614,50206-2 ",.01)
 ;;50206-2
 ;;9002226.02101,"614,50206-2 ",.02)
 ;;50206-2
 ;;9002226.02101,"614,50207-0 ",.01)
 ;;50207-0
 ;;9002226.02101,"614,50207-0 ",.02)
 ;;50207-0
 ;;9002226.02101,"614,50208-8 ",.01)
 ;;50208-8
 ;;9002226.02101,"614,50208-8 ",.02)
 ;;50208-8
 ;;9002226.02101,"614,50212-0 ",.01)
 ;;50212-0
 ;;9002226.02101,"614,50212-0 ",.02)
 ;;50212-0
 ;;9002226.02101,"614,50213-8 ",.01)
 ;;50213-8
 ;;9002226.02101,"614,50213-8 ",.02)
 ;;50213-8
 ;;9002226.02101,"614,50214-6 ",.01)
 ;;50214-6
 ;;9002226.02101,"614,50214-6 ",.02)
 ;;50214-6
 ;;9002226.02101,"614,50215-3 ",.01)
 ;;50215-3
 ;;9002226.02101,"614,50215-3 ",.02)
 ;;50215-3
 ;;9002226.02101,"614,50216-1 ",.01)
 ;;50216-1
 ;;9002226.02101,"614,50216-1 ",.02)
 ;;50216-1
 ;;9002226.02101,"614,50217-9 ",.01)
 ;;50217-9
 ;;9002226.02101,"614,50217-9 ",.02)
 ;;50217-9
 ;;9002226.02101,"614,50218-7 ",.01)
 ;;50218-7
 ;;9002226.02101,"614,50218-7 ",.02)
 ;;50218-7
 ;;9002226.02101,"614,50586-7 ",.01)
 ;;50586-7
 ;;9002226.02101,"614,50586-7 ",.02)
 ;;50586-7
 ;;9002226.02101,"614,50587-5 ",.01)
 ;;50587-5
 ;;9002226.02101,"614,50587-5 ",.02)
 ;;50587-5
 ;;9002226.02101,"614,50588-3 ",.01)
 ;;50588-3
 ;;9002226.02101,"614,50588-3 ",.02)
 ;;50588-3
 ;;9002226.02101,"614,50589-1 ",.01)
 ;;50589-1
 ;;9002226.02101,"614,50589-1 ",.02)
 ;;50589-1
 ;;9002226.02101,"614,50608-9 ",.01)
 ;;50608-9
 ;;9002226.02101,"614,50608-9 ",.02)
 ;;50608-9
 ;;9002226.02101,"614,50667-5 ",.01)
 ;;50667-5
 ;;9002226.02101,"614,50667-5 ",.02)
 ;;50667-5
 ;;9002226.02101,"614,50751-7 ",.01)
 ;;50751-7
 ;;9002226.02101,"614,50751-7 ",.02)
 ;;50751-7
 ;;9002226.02101,"614,51426-5 ",.01)
 ;;51426-5
 ;;9002226.02101,"614,51426-5 ",.02)
 ;;51426-5
 ;;9002226.02101,"614,51596-5 ",.01)
 ;;51596-5
 ;;9002226.02101,"614,51596-5 ",.02)
 ;;51596-5
 ;;9002226.02101,"614,51597-3 ",.01)
 ;;51597-3
 ;;9002226.02101,"614,51597-3 ",.02)
 ;;51597-3
 ;;9002226.02101,"614,51766-4 ",.01)
 ;;51766-4
 ;;9002226.02101,"614,51766-4 ",.02)
 ;;51766-4
 ;;9002226.02101,"614,51767-2 ",.01)
 ;;51767-2
 ;;9002226.02101,"614,51767-2 ",.02)
 ;;51767-2
 ;;9002226.02101,"614,51768-0 ",.01)
 ;;51768-0
 ;;9002226.02101,"614,51768-0 ",.02)
 ;;51768-0
 ;;9002226.02101,"614,51769-8 ",.01)
 ;;51769-8
 ;;9002226.02101,"614,51769-8 ",.02)
 ;;51769-8
 ;;9002226.02101,"614,53049-3 ",.01)
 ;;53049-3
 ;;9002226.02101,"614,53049-3 ",.02)
 ;;53049-3
 ;;9002226.02101,"614,53093-1 ",.01)
 ;;53093-1
 ;;9002226.02101,"614,53093-1 ",.02)
 ;;53093-1
 ;;9002226.02101,"614,53094-9 ",.01)
 ;;53094-9
 ;;9002226.02101,"614,53094-9 ",.02)
 ;;53094-9
 ;;9002226.02101,"614,53474-3 ",.01)
 ;;53474-3
 ;;9002226.02101,"614,53474-3 ",.02)
 ;;53474-3
 ;;9002226.02101,"614,53475-0 ",.01)
 ;;53475-0
 ;;9002226.02101,"614,53475-0 ",.02)
 ;;53475-0
 ;;9002226.02101,"614,53476-8 ",.01)
 ;;53476-8
 ;;9002226.02101,"614,53476-8 ",.02)
 ;;53476-8
 ;;9002226.02101,"614,53480-0 ",.01)
 ;;53480-0
 ;;9002226.02101,"614,53480-0 ",.02)
 ;;53480-0
 ;;9002226.02101,"614,53481-8 ",.01)
 ;;53481-8
 ;;9002226.02101,"614,53481-8 ",.02)
 ;;53481-8
 ;;9002226.02101,"614,53482-6 ",.01)
 ;;53482-6
 ;;9002226.02101,"614,53482-6 ",.02)
 ;;53482-6
 ;;9002226.02101,"614,53483-4 ",.01)
 ;;53483-4
 ;;9002226.02101,"614,53483-4 ",.02)
 ;;53483-4
 ;;9002226.02101,"614,53484-2 ",.01)
 ;;53484-2
 ;;9002226.02101,"614,53484-2 ",.02)
 ;;53484-2
 ;;9002226.02101,"614,53485-9 ",.01)
 ;;53485-9
 ;;9002226.02101,"614,53485-9 ",.02)
 ;;53485-9
 ;;9002226.02101,"614,53486-7 ",.01)
 ;;53486-7
 ;;9002226.02101,"614,53486-7 ",.02)
 ;;53486-7
 ;;9002226.02101,"614,53487-5 ",.01)
 ;;53487-5
 ;;9002226.02101,"614,53487-5 ",.02)
 ;;53487-5
 ;;9002226.02101,"614,53553-4 ",.01)
 ;;53553-4
 ;;9002226.02101,"614,53553-4 ",.02)
 ;;53553-4
 ;;9002226.02101,"614,53928-8 ",.01)
 ;;53928-8
 ;;9002226.02101,"614,53928-8 ",.02)
 ;;53928-8
 ;;9002226.02101,"614,53929-6 ",.01)
 ;;53929-6
 ;;9002226.02101,"614,53929-6 ",.02)
 ;;53929-6
 ;;9002226.02101,"614,54248-0 ",.01)
 ;;54248-0
 ;;9002226.02101,"614,54248-0 ",.02)
 ;;54248-0
 ;;9002226.02101,"614,54249-8 ",.01)
 ;;54249-8
 ;;9002226.02101,"614,54249-8 ",.02)
 ;;54249-8
 ;;9002226.02101,"614,54250-6 ",.01)
 ;;54250-6
 ;;9002226.02101,"614,54250-6 ",.02)
 ;;54250-6
 ;;9002226.02101,"614,54251-4 ",.01)
 ;;54251-4
 ;;9002226.02101,"614,54251-4 ",.02)
 ;;54251-4
 ;;9002226.02101,"614,54252-2 ",.01)
 ;;54252-2
 ;;9002226.02101,"614,54252-2 ",.02)
 ;;54252-2
 ;;9002226.02101,"614,54253-0 ",.01)
 ;;54253-0
 ;;9002226.02101,"614,54253-0 ",.02)
 ;;54253-0
 ;;9002226.02101,"614,54254-8 ",.01)
 ;;54254-8
 ;;9002226.02101,"614,54254-8 ",.02)
 ;;54254-8
 ;;9002226.02101,"614,54255-5 ",.01)
 ;;54255-5
 ;;9002226.02101,"614,54255-5 ",.02)
 ;;54255-5
 ;;9002226.02101,"614,54256-3 ",.01)
 ;;54256-3
 ;;9002226.02101,"614,54256-3 ",.02)
 ;;54256-3
