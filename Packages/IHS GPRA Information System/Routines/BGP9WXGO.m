BGP9WXGO ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON MAR 25, 2009 ;
 ;;9.0;IHS CLINICAL REPORTING;;JUL 1, 2009
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"477,60505-0224-01 ",.02)
 ;;60505-0224-01
 ;;9002226.02101,"477,60505-0551-03 ",.01)
 ;;60505-0551-03
 ;;9002226.02101,"477,60505-0551-03 ",.02)
 ;;60505-0551-03
 ;;9002226.02101,"477,60505-0552-03 ",.01)
 ;;60505-0552-03
 ;;9002226.02101,"477,60505-0552-03 ",.02)
 ;;60505-0552-03
 ;;9002226.02101,"477,60505-0553-01 ",.01)
 ;;60505-0553-01
 ;;9002226.02101,"477,60505-0553-01 ",.02)
 ;;60505-0553-01
 ;;9002226.02101,"477,60758-0801-05 ",.01)
 ;;60758-0801-05
 ;;9002226.02101,"477,60758-0801-05 ",.02)
 ;;60758-0801-05
 ;;9002226.02101,"477,60758-0801-10 ",.01)
 ;;60758-0801-10
 ;;9002226.02101,"477,60758-0801-10 ",.02)
 ;;60758-0801-10
 ;;9002226.02101,"477,60758-0802-10 ",.01)
 ;;60758-0802-10
 ;;9002226.02101,"477,60758-0802-10 ",.02)
 ;;60758-0802-10
 ;;9002226.02101,"477,60976-0347-44 ",.01)
 ;;60976-0347-44
 ;;9002226.02101,"477,60976-0347-44 ",.02)
 ;;60976-0347-44
 ;;9002226.02101,"477,60976-0348-43 ",.01)
 ;;60976-0348-43
 ;;9002226.02101,"477,60976-0348-43 ",.02)
 ;;60976-0348-43
 ;;9002226.02101,"477,61314-0224-05 ",.01)
 ;;61314-0224-05
 ;;9002226.02101,"477,61314-0224-05 ",.02)
 ;;61314-0224-05
 ;;9002226.02101,"477,61314-0226-05 ",.01)
 ;;61314-0226-05
 ;;9002226.02101,"477,61314-0226-05 ",.02)
 ;;61314-0226-05
 ;;9002226.02101,"477,61314-0226-10 ",.01)
 ;;61314-0226-10
 ;;9002226.02101,"477,61314-0226-10 ",.02)
 ;;61314-0226-10
 ;;9002226.02101,"477,61314-0227-05 ",.01)
 ;;61314-0227-05
 ;;9002226.02101,"477,61314-0227-05 ",.02)
 ;;61314-0227-05
 ;;9002226.02101,"477,61314-0227-10 ",.01)
 ;;61314-0227-10
 ;;9002226.02101,"477,61314-0227-10 ",.02)
 ;;61314-0227-10
 ;;9002226.02101,"477,61314-0238-05 ",.01)
 ;;61314-0238-05
 ;;9002226.02101,"477,61314-0238-05 ",.02)
 ;;61314-0238-05
 ;;9002226.02101,"477,61314-0238-10 ",.01)
 ;;61314-0238-10
 ;;9002226.02101,"477,61314-0238-10 ",.02)
 ;;61314-0238-10
 ;;9002226.02101,"477,61392-0018-30 ",.01)
 ;;61392-0018-30
 ;;9002226.02101,"477,61392-0018-30 ",.02)
 ;;61392-0018-30
 ;;9002226.02101,"477,61392-0018-31 ",.01)
 ;;61392-0018-31
 ;;9002226.02101,"477,61392-0018-31 ",.02)
 ;;61392-0018-31
 ;;9002226.02101,"477,61392-0018-32 ",.01)
 ;;61392-0018-32
 ;;9002226.02101,"477,61392-0018-32 ",.02)
 ;;61392-0018-32
 ;;9002226.02101,"477,61392-0018-39 ",.01)
 ;;61392-0018-39
 ;;9002226.02101,"477,61392-0018-39 ",.02)
 ;;61392-0018-39
 ;;9002226.02101,"477,61392-0018-45 ",.01)
 ;;61392-0018-45
 ;;9002226.02101,"477,61392-0018-45 ",.02)
 ;;61392-0018-45
 ;;9002226.02101,"477,61392-0018-51 ",.01)
 ;;61392-0018-51
 ;;9002226.02101,"477,61392-0018-51 ",.02)
 ;;61392-0018-51
 ;;9002226.02101,"477,61392-0018-54 ",.01)
 ;;61392-0018-54
 ;;9002226.02101,"477,61392-0018-54 ",.02)
 ;;61392-0018-54
 ;;9002226.02101,"477,61392-0018-56 ",.01)
 ;;61392-0018-56
 ;;9002226.02101,"477,61392-0018-56 ",.02)
 ;;61392-0018-56
 ;;9002226.02101,"477,61392-0018-60 ",.01)
 ;;61392-0018-60
 ;;9002226.02101,"477,61392-0018-60 ",.02)
 ;;61392-0018-60
 ;;9002226.02101,"477,61392-0018-90 ",.01)
 ;;61392-0018-90
 ;;9002226.02101,"477,61392-0018-90 ",.02)
 ;;61392-0018-90
 ;;9002226.02101,"477,61392-0018-91 ",.01)
 ;;61392-0018-91
 ;;9002226.02101,"477,61392-0018-91 ",.02)
 ;;61392-0018-91
 ;;9002226.02101,"477,61392-0069-31 ",.01)
 ;;61392-0069-31
 ;;9002226.02101,"477,61392-0069-31 ",.02)
 ;;61392-0069-31
 ;;9002226.02101,"477,61392-0069-32 ",.01)
 ;;61392-0069-32
 ;;9002226.02101,"477,61392-0069-32 ",.02)
 ;;61392-0069-32
 ;;9002226.02101,"477,61392-0069-39 ",.01)
 ;;61392-0069-39
 ;;9002226.02101,"477,61392-0069-39 ",.02)
 ;;61392-0069-39
 ;;9002226.02101,"477,61392-0069-45 ",.01)
 ;;61392-0069-45
 ;;9002226.02101,"477,61392-0069-45 ",.02)
 ;;61392-0069-45
 ;;9002226.02101,"477,61392-0069-51 ",.01)
 ;;61392-0069-51
 ;;9002226.02101,"477,61392-0069-51 ",.02)
 ;;61392-0069-51
 ;;9002226.02101,"477,61392-0069-54 ",.01)
 ;;61392-0069-54
 ;;9002226.02101,"477,61392-0069-54 ",.02)
 ;;61392-0069-54
 ;;9002226.02101,"477,61392-0069-60 ",.01)
 ;;61392-0069-60
 ;;9002226.02101,"477,61392-0069-60 ",.02)
 ;;61392-0069-60
 ;;9002226.02101,"477,61392-0069-90 ",.01)
 ;;61392-0069-90
 ;;9002226.02101,"477,61392-0069-90 ",.02)
 ;;61392-0069-90
 ;;9002226.02101,"477,61392-0069-91 ",.01)
 ;;61392-0069-91
 ;;9002226.02101,"477,61392-0069-91 ",.02)
 ;;61392-0069-91
 ;;9002226.02101,"477,61392-0280-30 ",.01)
 ;;61392-0280-30
 ;;9002226.02101,"477,61392-0280-30 ",.02)
 ;;61392-0280-30
 ;;9002226.02101,"477,61392-0280-31 ",.01)
 ;;61392-0280-31
 ;;9002226.02101,"477,61392-0280-31 ",.02)
 ;;61392-0280-31
 ;;9002226.02101,"477,61392-0280-32 ",.01)
 ;;61392-0280-32
 ;;9002226.02101,"477,61392-0280-32 ",.02)
 ;;61392-0280-32
 ;;9002226.02101,"477,61392-0280-39 ",.01)
 ;;61392-0280-39
 ;;9002226.02101,"477,61392-0280-39 ",.02)
 ;;61392-0280-39
 ;;9002226.02101,"477,61392-0280-45 ",.01)
 ;;61392-0280-45
 ;;9002226.02101,"477,61392-0280-45 ",.02)
 ;;61392-0280-45
 ;;9002226.02101,"477,61392-0280-51 ",.01)
 ;;61392-0280-51
 ;;9002226.02101,"477,61392-0280-51 ",.02)
 ;;61392-0280-51
 ;;9002226.02101,"477,61392-0280-54 ",.01)
 ;;61392-0280-54
 ;;9002226.02101,"477,61392-0280-54 ",.02)
 ;;61392-0280-54
 ;;9002226.02101,"477,61392-0280-56 ",.01)
 ;;61392-0280-56
