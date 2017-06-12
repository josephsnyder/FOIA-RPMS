BGP51R7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,00069-2650-66 ",.02)
 ;;00069-2650-66
 ;;9002226.02101,"1197,00069-2650-72 ",.01)
 ;;00069-2650-72
 ;;9002226.02101,"1197,00069-2650-72 ",.02)
 ;;00069-2650-72
 ;;9002226.02101,"1197,00069-2660-41 ",.01)
 ;;00069-2660-41
 ;;9002226.02101,"1197,00069-2660-41 ",.02)
 ;;00069-2660-41
 ;;9002226.02101,"1197,00069-2660-66 ",.01)
 ;;00069-2660-66
 ;;9002226.02101,"1197,00069-2660-66 ",.02)
 ;;00069-2660-66
 ;;9002226.02101,"1197,00069-2660-72 ",.01)
 ;;00069-2660-72
 ;;9002226.02101,"1197,00069-2660-72 ",.02)
 ;;00069-2660-72
 ;;9002226.02101,"1197,00069-2670-66 ",.01)
 ;;00069-2670-66
 ;;9002226.02101,"1197,00069-2670-66 ",.02)
 ;;00069-2670-66
 ;;9002226.02101,"1197,00069-2960-30 ",.01)
 ;;00069-2960-30
 ;;9002226.02101,"1197,00069-2960-30 ",.02)
 ;;00069-2960-30
 ;;9002226.02101,"1197,00069-2970-30 ",.01)
 ;;00069-2970-30
 ;;9002226.02101,"1197,00069-2970-30 ",.02)
 ;;00069-2970-30
 ;;9002226.02101,"1197,00069-2980-30 ",.01)
 ;;00069-2980-30
 ;;9002226.02101,"1197,00069-2980-30 ",.02)
 ;;00069-2980-30
 ;;9002226.02101,"1197,00074-3045-30 ",.01)
 ;;00074-3045-30
 ;;9002226.02101,"1197,00074-3045-30 ",.02)
 ;;00074-3045-30
 ;;9002226.02101,"1197,00074-3045-90 ",.01)
 ;;00074-3045-90
 ;;9002226.02101,"1197,00074-3045-90 ",.02)
 ;;00074-3045-90
 ;;9002226.02101,"1197,00074-3061-30 ",.01)
 ;;00074-3061-30
 ;;9002226.02101,"1197,00074-3061-30 ",.02)
 ;;00074-3061-30
 ;;9002226.02101,"1197,00074-3061-90 ",.01)
 ;;00074-3061-90
 ;;9002226.02101,"1197,00074-3061-90 ",.02)
 ;;00074-3061-90
 ;;9002226.02101,"1197,00074-3062-30 ",.01)
 ;;00074-3062-30
 ;;9002226.02101,"1197,00074-3062-30 ",.02)
 ;;00074-3062-30
 ;;9002226.02101,"1197,00074-3062-90 ",.01)
 ;;00074-3062-90
 ;;9002226.02101,"1197,00074-3062-90 ",.02)
 ;;00074-3062-90
 ;;9002226.02101,"1197,00074-3063-30 ",.01)
 ;;00074-3063-30
 ;;9002226.02101,"1197,00074-3063-30 ",.02)
 ;;00074-3063-30
 ;;9002226.02101,"1197,00074-3063-90 ",.01)
 ;;00074-3063-90
 ;;9002226.02101,"1197,00074-3063-90 ",.02)
 ;;00074-3063-90
 ;;9002226.02101,"1197,00074-3064-30 ",.01)
 ;;00074-3064-30
 ;;9002226.02101,"1197,00074-3064-30 ",.02)
 ;;00074-3064-30
 ;;9002226.02101,"1197,00074-3064-90 ",.01)
 ;;00074-3064-90
 ;;9002226.02101,"1197,00074-3064-90 ",.02)
 ;;00074-3064-90
 ;;9002226.02101,"1197,00074-3069-30 ",.01)
 ;;00074-3069-30
 ;;9002226.02101,"1197,00074-3069-30 ",.02)
 ;;00074-3069-30
 ;;9002226.02101,"1197,00074-3069-90 ",.01)
 ;;00074-3069-90
 ;;9002226.02101,"1197,00074-3069-90 ",.02)
 ;;00074-3069-90
 ;;9002226.02101,"1197,00074-3287-13 ",.01)
 ;;00074-3287-13
 ;;9002226.02101,"1197,00074-3287-13 ",.02)
 ;;00074-3287-13
 ;;9002226.02101,"1197,00074-3288-13 ",.01)
 ;;00074-3288-13
 ;;9002226.02101,"1197,00074-3288-13 ",.02)
 ;;00074-3288-13
 ;;9002226.02101,"1197,00074-3289-13 ",.01)
 ;;00074-3289-13
 ;;9002226.02101,"1197,00074-3289-13 ",.02)
 ;;00074-3289-13
 ;;9002226.02101,"1197,00074-3290-13 ",.01)
 ;;00074-3290-13
 ;;9002226.02101,"1197,00074-3290-13 ",.02)
 ;;00074-3290-13
 ;;9002226.02101,"1197,00078-0364-05 ",.01)
 ;;00078-0364-05
 ;;9002226.02101,"1197,00078-0364-05 ",.02)
 ;;00078-0364-05
 ;;9002226.02101,"1197,00078-0379-05 ",.01)
 ;;00078-0379-05
 ;;9002226.02101,"1197,00078-0379-05 ",.02)
 ;;00078-0379-05
 ;;9002226.02101,"1197,00078-0384-05 ",.01)
 ;;00078-0384-05
 ;;9002226.02101,"1197,00078-0384-05 ",.02)
 ;;00078-0384-05
 ;;9002226.02101,"1197,00078-0404-05 ",.01)
 ;;00078-0404-05
 ;;9002226.02101,"1197,00078-0404-05 ",.02)
 ;;00078-0404-05
 ;;9002226.02101,"1197,00078-0405-05 ",.01)
 ;;00078-0405-05
 ;;9002226.02101,"1197,00078-0405-05 ",.02)
 ;;00078-0405-05
 ;;9002226.02101,"1197,00078-0406-05 ",.01)
 ;;00078-0406-05
 ;;9002226.02101,"1197,00078-0406-05 ",.02)
 ;;00078-0406-05
 ;;9002226.02101,"1197,00078-0488-15 ",.01)
 ;;00078-0488-15
 ;;9002226.02101,"1197,00078-0488-15 ",.02)
 ;;00078-0488-15
 ;;9002226.02101,"1197,00078-0489-15 ",.01)
 ;;00078-0489-15
 ;;9002226.02101,"1197,00078-0489-15 ",.02)
 ;;00078-0489-15
 ;;9002226.02101,"1197,00078-0490-15 ",.01)
 ;;00078-0490-15
 ;;9002226.02101,"1197,00078-0490-15 ",.02)
 ;;00078-0490-15
 ;;9002226.02101,"1197,00078-0491-15 ",.01)
 ;;00078-0491-15
 ;;9002226.02101,"1197,00078-0491-15 ",.02)
 ;;00078-0491-15
 ;;9002226.02101,"1197,00078-0559-15 ",.01)
 ;;00078-0559-15
 ;;9002226.02101,"1197,00078-0559-15 ",.02)
 ;;00078-0559-15
 ;;9002226.02101,"1197,00078-0560-15 ",.01)
 ;;00078-0560-15
 ;;9002226.02101,"1197,00078-0560-15 ",.02)
 ;;00078-0560-15
 ;;9002226.02101,"1197,00078-0561-15 ",.01)
 ;;00078-0561-15
 ;;9002226.02101,"1197,00078-0561-15 ",.02)
 ;;00078-0561-15
 ;;9002226.02101,"1197,00078-0562-15 ",.01)
 ;;00078-0562-15
 ;;9002226.02101,"1197,00078-0562-15 ",.02)
 ;;00078-0562-15
 ;;9002226.02101,"1197,00078-0563-15 ",.01)
 ;;00078-0563-15
 ;;9002226.02101,"1197,00078-0563-15 ",.02)
 ;;00078-0563-15
 ;;9002226.02101,"1197,00078-0603-15 ",.01)
 ;;00078-0603-15
 ;;9002226.02101,"1197,00078-0603-15 ",.02)
 ;;00078-0603-15
 ;;9002226.02101,"1197,00078-0604-15 ",.01)
 ;;00078-0604-15
 ;;9002226.02101,"1197,00078-0604-15 ",.02)
 ;;00078-0604-15
 ;;9002226.02101,"1197,00078-0605-15 ",.01)
 ;;00078-0605-15
 ;;9002226.02101,"1197,00078-0605-15 ",.02)
 ;;00078-0605-15
 ;;9002226.02101,"1197,00078-0606-15 ",.01)
 ;;00078-0606-15
 ;;9002226.02101,"1197,00078-0606-15 ",.02)
 ;;00078-0606-15
 ;;9002226.02101,"1197,00078-0610-15 ",.01)
 ;;00078-0610-15
 ;;9002226.02101,"1197,00078-0610-15 ",.02)
 ;;00078-0610-15
 ;;9002226.02101,"1197,00078-0611-15 ",.01)
 ;;00078-0611-15
 ;;9002226.02101,"1197,00078-0611-15 ",.02)
 ;;00078-0611-15
 ;;9002226.02101,"1197,00078-0612-15 ",.01)
 ;;00078-0612-15
 ;;9002226.02101,"1197,00078-0612-15 ",.02)
 ;;00078-0612-15
 ;;9002226.02101,"1197,00078-0613-15 ",.01)
 ;;00078-0613-15
 ;;9002226.02101,"1197,00078-0613-15 ",.02)
 ;;00078-0613-15
 ;;9002226.02101,"1197,00078-0614-15 ",.01)
 ;;00078-0614-15
 ;;9002226.02101,"1197,00078-0614-15 ",.02)
 ;;00078-0614-15
 ;;9002226.02101,"1197,00085-1701-01 ",.01)
 ;;00085-1701-01
 ;;9002226.02101,"1197,00085-1701-01 ",.02)
 ;;00085-1701-01
 ;;9002226.02101,"1197,00085-1701-02 ",.01)
 ;;00085-1701-02
 ;;9002226.02101,"1197,00085-1701-02 ",.02)
 ;;00085-1701-02
 ;;9002226.02101,"1197,00085-1701-03 ",.01)
 ;;00085-1701-03
 ;;9002226.02101,"1197,00085-1701-03 ",.02)
 ;;00085-1701-03
 ;;9002226.02101,"1197,00085-1716-01 ",.01)
 ;;00085-1716-01
 ;;9002226.02101,"1197,00085-1716-01 ",.02)
 ;;00085-1716-01
 ;;9002226.02101,"1197,00085-1716-02 ",.01)
 ;;00085-1716-02
 ;;9002226.02101,"1197,00085-1716-02 ",.02)
 ;;00085-1716-02
 ;;9002226.02101,"1197,00085-1716-03 ",.01)
 ;;00085-1716-03
 ;;9002226.02101,"1197,00085-1716-03 ",.02)
 ;;00085-1716-03
 ;;9002226.02101,"1197,00085-1722-01 ",.01)
 ;;00085-1722-01
 ;;9002226.02101,"1197,00085-1722-01 ",.02)
 ;;00085-1722-01
 ;;9002226.02101,"1197,00085-1722-02 ",.01)
 ;;00085-1722-02
 ;;9002226.02101,"1197,00085-1722-02 ",.02)
 ;;00085-1722-02
 ;;9002226.02101,"1197,00091-2489-23 ",.01)
 ;;00091-2489-23
 ;;9002226.02101,"1197,00091-2489-23 ",.02)
 ;;00091-2489-23
 ;;9002226.02101,"1197,00091-2490-23 ",.01)
 ;;00091-2490-23
 ;;9002226.02101,"1197,00091-2490-23 ",.02)
 ;;00091-2490-23
 ;;9002226.02101,"1197,00091-2491-23 ",.01)
 ;;00091-2491-23
 ;;9002226.02101,"1197,00091-2491-23 ",.02)
 ;;00091-2491-23
 ;;9002226.02101,"1197,00091-2495-23 ",.01)
 ;;00091-2495-23
 ;;9002226.02101,"1197,00091-2495-23 ",.02)
 ;;00091-2495-23
 ;;9002226.02101,"1197,00091-4085-01 ",.01)
 ;;00091-4085-01
 ;;9002226.02101,"1197,00091-4085-01 ",.02)
 ;;00091-4085-01
 ;;9002226.02101,"1197,00091-4086-01 ",.01)
 ;;00091-4086-01
 ;;9002226.02101,"1197,00091-4086-01 ",.02)
 ;;00091-4086-01
 ;;9002226.02101,"1197,00091-4087-01 ",.01)
 ;;00091-4087-01
 ;;9002226.02101,"1197,00091-4087-01 ",.02)
 ;;00091-4087-01
 ;;9002226.02101,"1197,00093-0083-98 ",.01)
 ;;00093-0083-98
 ;;9002226.02101,"1197,00093-0083-98 ",.02)
 ;;00093-0083-98
 ;;9002226.02101,"1197,00093-0318-01 ",.01)
 ;;00093-0318-01
 ;;9002226.02101,"1197,00093-0318-01 ",.02)
 ;;00093-0318-01
 ;;9002226.02101,"1197,00093-0318-05 ",.01)
 ;;00093-0318-05
 ;;9002226.02101,"1197,00093-0318-05 ",.02)
 ;;00093-0318-05
 ;;9002226.02101,"1197,00093-0319-01 ",.01)
 ;;00093-0319-01
 ;;9002226.02101,"1197,00093-0319-01 ",.02)
 ;;00093-0319-01
 ;;9002226.02101,"1197,00093-0319-05 ",.01)
 ;;00093-0319-05
 ;;9002226.02101,"1197,00093-0319-05 ",.02)
 ;;00093-0319-05
 ;;9002226.02101,"1197,00093-0320-01 ",.01)
 ;;00093-0320-01
 ;;9002226.02101,"1197,00093-0320-01 ",.02)
 ;;00093-0320-01
 ;;9002226.02101,"1197,00093-0321-01 ",.01)
 ;;00093-0321-01
 ;;9002226.02101,"1197,00093-0321-01 ",.02)
 ;;00093-0321-01
 ;;9002226.02101,"1197,00093-0819-01 ",.01)
 ;;00093-0819-01
 ;;9002226.02101,"1197,00093-0819-01 ",.02)
 ;;00093-0819-01
 ;;9002226.02101,"1197,00093-0819-55 ",.01)
 ;;00093-0819-55
 ;;9002226.02101,"1197,00093-0819-55 ",.02)
 ;;00093-0819-55
 ;;9002226.02101,"1197,00093-1022-01 ",.01)
 ;;00093-1022-01
 ;;9002226.02101,"1197,00093-1022-01 ",.02)
 ;;00093-1022-01
 ;;9002226.02101,"1197,00093-1022-19 ",.01)
 ;;00093-1022-19
 ;;9002226.02101,"1197,00093-1022-19 ",.02)
 ;;00093-1022-19
 ;;9002226.02101,"1197,00093-1022-55 ",.01)
 ;;00093-1022-55
 ;;9002226.02101,"1197,00093-1022-55 ",.02)
 ;;00093-1022-55
 ;;9002226.02101,"1197,00093-1022-93 ",.01)
 ;;00093-1022-93
 ;;9002226.02101,"1197,00093-1022-93 ",.02)
 ;;00093-1022-93
 ;;9002226.02101,"1197,00093-1023-01 ",.01)
 ;;00093-1023-01
 ;;9002226.02101,"1197,00093-1023-01 ",.02)
 ;;00093-1023-01
 ;;9002226.02101,"1197,00093-1023-19 ",.01)
 ;;00093-1023-19
 ;;9002226.02101,"1197,00093-1023-19 ",.02)
 ;;00093-1023-19
 ;;9002226.02101,"1197,00093-1023-93 ",.01)
 ;;00093-1023-93
 ;;9002226.02101,"1197,00093-1023-93 ",.02)
 ;;00093-1023-93
 ;;9002226.02101,"1197,00093-2057-01 ",.01)
 ;;00093-2057-01
 ;;9002226.02101,"1197,00093-2057-01 ",.02)
 ;;00093-2057-01
 ;;9002226.02101,"1197,00093-2057-55 ",.01)
 ;;00093-2057-55
 ;;9002226.02101,"1197,00093-2057-55 ",.02)
 ;;00093-2057-55
 ;;9002226.02101,"1197,00093-2058-01 ",.01)
 ;;00093-2058-01
 ;;9002226.02101,"1197,00093-2058-01 ",.02)
 ;;00093-2058-01
 ;;9002226.02101,"1197,00093-2058-55 ",.01)
 ;;00093-2058-55
 ;;9002226.02101,"1197,00093-2058-55 ",.02)
 ;;00093-2058-55
 ;;9002226.02101,"1197,00093-2059-01 ",.01)
 ;;00093-2059-01
 ;;9002226.02101,"1197,00093-2059-01 ",.02)
 ;;00093-2059-01
 ;;9002226.02101,"1197,00093-3043-01 ",.01)
 ;;00093-3043-01
 ;;9002226.02101,"1197,00093-3043-01 ",.02)
 ;;00093-3043-01
 ;;9002226.02101,"1197,00093-3044-01 ",.01)
 ;;00093-3044-01
 ;;9002226.02101,"1197,00093-3044-01 ",.02)
 ;;00093-3044-01
 ;;9002226.02101,"1197,00093-3044-05 ",.01)
 ;;00093-3044-05
 ;;9002226.02101,"1197,00093-3044-05 ",.02)
 ;;00093-3044-05
 ;;9002226.02101,"1197,00093-3045-01 ",.01)
 ;;00093-3045-01
 ;;9002226.02101,"1197,00093-3045-01 ",.02)
 ;;00093-3045-01
 ;;9002226.02101,"1197,00093-3045-05 ",.01)
 ;;00093-3045-05
 ;;9002226.02101,"1197,00093-3045-05 ",.02)
 ;;00093-3045-05
 ;;9002226.02101,"1197,00093-5112-98 ",.01)
 ;;00093-5112-98
 ;;9002226.02101,"1197,00093-5112-98 ",.02)
 ;;00093-5112-98
 ;;9002226.02101,"1197,00093-5117-98 ",.01)
 ;;00093-5117-98
 ;;9002226.02101,"1197,00093-5117-98 ",.02)
 ;;00093-5117-98
 ;;9002226.02101,"1197,00093-5118-98 ",.01)
 ;;00093-5118-98
 ;;9002226.02101,"1197,00093-5118-98 ",.02)
 ;;00093-5118-98
 ;;9002226.02101,"1197,00093-5119-98 ",.01)
 ;;00093-5119-98
 ;;9002226.02101,"1197,00093-5119-98 ",.02)
 ;;00093-5119-98
 ;;9002226.02101,"1197,00093-5173-01 ",.01)
 ;;00093-5173-01
 ;;9002226.02101,"1197,00093-5173-01 ",.02)
 ;;00093-5173-01
 ;;9002226.02101,"1197,00093-5173-55 ",.01)
 ;;00093-5173-55
 ;;9002226.02101,"1197,00093-5173-55 ",.02)
 ;;00093-5173-55
 ;;9002226.02101,"1197,00093-5272-01 ",.01)
 ;;00093-5272-01
 ;;9002226.02101,"1197,00093-5272-01 ",.02)
 ;;00093-5272-01
 ;;9002226.02101,"1197,00093-5272-19 ",.01)
 ;;00093-5272-19
 ;;9002226.02101,"1197,00093-5272-19 ",.02)
 ;;00093-5272-19
 ;;9002226.02101,"1197,00093-5272-55 ",.01)
 ;;00093-5272-55
 ;;9002226.02101,"1197,00093-5272-55 ",.02)
 ;;00093-5272-55
 ;;9002226.02101,"1197,00093-5272-93 ",.01)
 ;;00093-5272-93
 ;;9002226.02101,"1197,00093-5272-93 ",.02)
 ;;00093-5272-93
 ;;9002226.02101,"1197,00093-7167-55 ",.01)
 ;;00093-7167-55
 ;;9002226.02101,"1197,00093-7167-55 ",.02)
 ;;00093-7167-55
 ;;9002226.02101,"1197,00093-7167-98 ",.01)
 ;;00093-7167-98
 ;;9002226.02101,"1197,00093-7167-98 ",.02)
 ;;00093-7167-98
 ;;9002226.02101,"1197,00093-7168-98 ",.01)
 ;;00093-7168-98
 ;;9002226.02101,"1197,00093-7168-98 ",.02)
 ;;00093-7168-98
 ;;9002226.02101,"1197,00093-7370-01 ",.01)
 ;;00093-7370-01
 ;;9002226.02101,"1197,00093-7370-01 ",.02)
 ;;00093-7370-01
 ;;9002226.02101,"1197,00093-7371-01 ",.01)
 ;;00093-7371-01
 ;;9002226.02101,"1197,00093-7371-01 ",.02)
 ;;00093-7371-01
 ;;9002226.02101,"1197,00093-7371-10 ",.01)
 ;;00093-7371-10
 ;;9002226.02101,"1197,00093-7371-10 ",.02)
 ;;00093-7371-10
 ;;9002226.02101,"1197,00093-7372-01 ",.01)
 ;;00093-7372-01
 ;;9002226.02101,"1197,00093-7372-01 ",.02)
 ;;00093-7372-01
 ;;9002226.02101,"1197,00093-7372-10 ",.01)
 ;;00093-7372-10
 ;;9002226.02101,"1197,00093-7372-10 ",.02)
 ;;00093-7372-10
 ;;9002226.02101,"1197,00093-7373-01 ",.01)
 ;;00093-7373-01
 ;;9002226.02101,"1197,00093-7373-01 ",.02)
 ;;00093-7373-01
 ;;9002226.02101,"1197,00093-7373-10 ",.01)
 ;;00093-7373-10
 ;;9002226.02101,"1197,00093-7373-10 ",.02)
 ;;00093-7373-10
