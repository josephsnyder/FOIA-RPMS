BGP53W5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 16, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"614,40040-8 ",.02)
 ;;40040-8
 ;;9002226.02101,"614,40041-6 ",.01)
 ;;40041-6
 ;;9002226.02101,"614,40041-6 ",.02)
 ;;40041-6
 ;;9002226.02101,"614,40042-4 ",.01)
 ;;40042-4
 ;;9002226.02101,"614,40042-4 ",.02)
 ;;40042-4
 ;;9002226.02101,"614,40043-2 ",.01)
 ;;40043-2
 ;;9002226.02101,"614,40043-2 ",.02)
 ;;40043-2
 ;;9002226.02101,"614,40044-0 ",.01)
 ;;40044-0
 ;;9002226.02101,"614,40044-0 ",.02)
 ;;40044-0
 ;;9002226.02101,"614,40045-7 ",.01)
 ;;40045-7
 ;;9002226.02101,"614,40045-7 ",.02)
 ;;40045-7
 ;;9002226.02101,"614,40148-9 ",.01)
 ;;40148-9
 ;;9002226.02101,"614,40148-9 ",.02)
 ;;40148-9
 ;;9002226.02101,"614,40149-7 ",.01)
 ;;40149-7
 ;;9002226.02101,"614,40149-7 ",.02)
 ;;40149-7
 ;;9002226.02101,"614,40150-5 ",.01)
 ;;40150-5
 ;;9002226.02101,"614,40150-5 ",.02)
 ;;40150-5
 ;;9002226.02101,"614,40151-3 ",.01)
 ;;40151-3
 ;;9002226.02101,"614,40151-3 ",.02)
 ;;40151-3
 ;;9002226.02101,"614,40152-1 ",.01)
 ;;40152-1
 ;;9002226.02101,"614,40152-1 ",.02)
 ;;40152-1
 ;;9002226.02101,"614,40153-9 ",.01)
 ;;40153-9
 ;;9002226.02101,"614,40153-9 ",.02)
 ;;40153-9
 ;;9002226.02101,"614,40154-7 ",.01)
 ;;40154-7
 ;;9002226.02101,"614,40154-7 ",.02)
 ;;40154-7
 ;;9002226.02101,"614,40155-4 ",.01)
 ;;40155-4
 ;;9002226.02101,"614,40155-4 ",.02)
 ;;40155-4
 ;;9002226.02101,"614,40156-2 ",.01)
 ;;40156-2
 ;;9002226.02101,"614,40156-2 ",.02)
 ;;40156-2
 ;;9002226.02101,"614,40157-0 ",.01)
 ;;40157-0
 ;;9002226.02101,"614,40157-0 ",.02)
 ;;40157-0
 ;;9002226.02101,"614,40158-8 ",.01)
 ;;40158-8
 ;;9002226.02101,"614,40158-8 ",.02)
 ;;40158-8
 ;;9002226.02101,"614,40159-6 ",.01)
 ;;40159-6
 ;;9002226.02101,"614,40159-6 ",.02)
 ;;40159-6
 ;;9002226.02101,"614,40160-4 ",.01)
 ;;40160-4
 ;;9002226.02101,"614,40160-4 ",.02)
 ;;40160-4
 ;;9002226.02101,"614,40161-2 ",.01)
 ;;40161-2
 ;;9002226.02101,"614,40161-2 ",.02)
 ;;40161-2
 ;;9002226.02101,"614,40162-0 ",.01)
 ;;40162-0
 ;;9002226.02101,"614,40162-0 ",.02)
 ;;40162-0
 ;;9002226.02101,"614,40163-8 ",.01)
 ;;40163-8
 ;;9002226.02101,"614,40163-8 ",.02)
 ;;40163-8
 ;;9002226.02101,"614,40164-6 ",.01)
 ;;40164-6
 ;;9002226.02101,"614,40164-6 ",.02)
 ;;40164-6
 ;;9002226.02101,"614,40165-3 ",.01)
 ;;40165-3
 ;;9002226.02101,"614,40165-3 ",.02)
 ;;40165-3
 ;;9002226.02101,"614,40166-1 ",.01)
 ;;40166-1
 ;;9002226.02101,"614,40166-1 ",.02)
 ;;40166-1
 ;;9002226.02101,"614,40167-9 ",.01)
 ;;40167-9
 ;;9002226.02101,"614,40167-9 ",.02)
 ;;40167-9
 ;;9002226.02101,"614,40168-7 ",.01)
 ;;40168-7
 ;;9002226.02101,"614,40168-7 ",.02)
 ;;40168-7
 ;;9002226.02101,"614,40169-5 ",.01)
 ;;40169-5
 ;;9002226.02101,"614,40169-5 ",.02)
 ;;40169-5
 ;;9002226.02101,"614,40170-3 ",.01)
 ;;40170-3
 ;;9002226.02101,"614,40170-3 ",.02)
 ;;40170-3
 ;;9002226.02101,"614,40171-1 ",.01)
 ;;40171-1
 ;;9002226.02101,"614,40171-1 ",.02)
 ;;40171-1
 ;;9002226.02101,"614,40172-9 ",.01)
 ;;40172-9
 ;;9002226.02101,"614,40172-9 ",.02)
 ;;40172-9
 ;;9002226.02101,"614,40173-7 ",.01)
 ;;40173-7
 ;;9002226.02101,"614,40173-7 ",.02)
 ;;40173-7
 ;;9002226.02101,"614,40174-5 ",.01)
 ;;40174-5
 ;;9002226.02101,"614,40174-5 ",.02)
 ;;40174-5
 ;;9002226.02101,"614,40175-2 ",.01)
 ;;40175-2
 ;;9002226.02101,"614,40175-2 ",.02)
 ;;40175-2
 ;;9002226.02101,"614,40176-0 ",.01)
 ;;40176-0
 ;;9002226.02101,"614,40176-0 ",.02)
 ;;40176-0
 ;;9002226.02101,"614,40177-8 ",.01)
 ;;40177-8
 ;;9002226.02101,"614,40177-8 ",.02)
 ;;40177-8
 ;;9002226.02101,"614,40178-6 ",.01)
 ;;40178-6
 ;;9002226.02101,"614,40178-6 ",.02)
 ;;40178-6
 ;;9002226.02101,"614,40179-4 ",.01)
 ;;40179-4
 ;;9002226.02101,"614,40179-4 ",.02)
 ;;40179-4
 ;;9002226.02101,"614,40180-2 ",.01)
 ;;40180-2
 ;;9002226.02101,"614,40180-2 ",.02)
 ;;40180-2
 ;;9002226.02101,"614,40181-0 ",.01)
 ;;40181-0
 ;;9002226.02101,"614,40181-0 ",.02)
 ;;40181-0
 ;;9002226.02101,"614,40182-8 ",.01)
 ;;40182-8
 ;;9002226.02101,"614,40182-8 ",.02)
 ;;40182-8
 ;;9002226.02101,"614,40183-6 ",.01)
 ;;40183-6
 ;;9002226.02101,"614,40183-6 ",.02)
 ;;40183-6
 ;;9002226.02101,"614,40184-4 ",.01)
 ;;40184-4
 ;;9002226.02101,"614,40184-4 ",.02)
 ;;40184-4
 ;;9002226.02101,"614,40185-1 ",.01)
 ;;40185-1
 ;;9002226.02101,"614,40185-1 ",.02)
 ;;40185-1
 ;;9002226.02101,"614,40186-9 ",.01)
 ;;40186-9
 ;;9002226.02101,"614,40186-9 ",.02)
 ;;40186-9
 ;;9002226.02101,"614,40187-7 ",.01)
 ;;40187-7
 ;;9002226.02101,"614,40187-7 ",.02)
 ;;40187-7
 ;;9002226.02101,"614,40188-5 ",.01)
 ;;40188-5
 ;;9002226.02101,"614,40188-5 ",.02)
 ;;40188-5
 ;;9002226.02101,"614,40189-3 ",.01)
 ;;40189-3
 ;;9002226.02101,"614,40189-3 ",.02)
 ;;40189-3
 ;;9002226.02101,"614,40190-1 ",.01)
 ;;40190-1
 ;;9002226.02101,"614,40190-1 ",.02)
 ;;40190-1
 ;;9002226.02101,"614,40191-9 ",.01)
 ;;40191-9
 ;;9002226.02101,"614,40191-9 ",.02)
 ;;40191-9
 ;;9002226.02101,"614,40192-7 ",.01)
 ;;40192-7
 ;;9002226.02101,"614,40192-7 ",.02)
 ;;40192-7
 ;;9002226.02101,"614,40193-5 ",.01)
 ;;40193-5
 ;;9002226.02101,"614,40193-5 ",.02)
 ;;40193-5
 ;;9002226.02101,"614,40194-3 ",.01)
 ;;40194-3
 ;;9002226.02101,"614,40194-3 ",.02)
 ;;40194-3
 ;;9002226.02101,"614,40195-0 ",.01)
 ;;40195-0
 ;;9002226.02101,"614,40195-0 ",.02)
 ;;40195-0
 ;;9002226.02101,"614,40196-8 ",.01)
 ;;40196-8
 ;;9002226.02101,"614,40196-8 ",.02)
 ;;40196-8
 ;;9002226.02101,"614,40197-6 ",.01)
 ;;40197-6
 ;;9002226.02101,"614,40197-6 ",.02)
 ;;40197-6
 ;;9002226.02101,"614,40198-4 ",.01)
 ;;40198-4
 ;;9002226.02101,"614,40198-4 ",.02)
 ;;40198-4
 ;;9002226.02101,"614,40199-2 ",.01)
 ;;40199-2
 ;;9002226.02101,"614,40199-2 ",.02)
 ;;40199-2
 ;;9002226.02101,"614,40200-8 ",.01)
 ;;40200-8
 ;;9002226.02101,"614,40200-8 ",.02)
 ;;40200-8
 ;;9002226.02101,"614,40201-6 ",.01)
 ;;40201-6
 ;;9002226.02101,"614,40201-6 ",.02)
 ;;40201-6
 ;;9002226.02101,"614,40202-4 ",.01)
 ;;40202-4
 ;;9002226.02101,"614,40202-4 ",.02)
 ;;40202-4
 ;;9002226.02101,"614,40203-2 ",.01)
 ;;40203-2
 ;;9002226.02101,"614,40203-2 ",.02)
 ;;40203-2
 ;;9002226.02101,"614,40204-0 ",.01)
 ;;40204-0
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
 ;;9002226.02101,"614,42604-9 ",.01)
 ;;42604-9
 ;;9002226.02101,"614,42604-9 ",.02)
 ;;42604-9
 ;;9002226.02101,"614,42609-8 ",.01)
 ;;42609-8
 ;;9002226.02101,"614,42609-8 ",.02)
 ;;42609-8
 ;;9002226.02101,"614,42615-5 ",.01)
 ;;42615-5
 ;;9002226.02101,"614,42615-5 ",.02)
 ;;42615-5
 ;;9002226.02101,"614,42629-6 ",.01)
 ;;42629-6
 ;;9002226.02101,"614,42629-6 ",.02)
 ;;42629-6
 ;;9002226.02101,"614,42631-2 ",.01)
 ;;42631-2
 ;;9002226.02101,"614,42631-2 ",.02)
 ;;42631-2
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
