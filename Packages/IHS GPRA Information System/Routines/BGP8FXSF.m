BGP8FXSF ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON SEP 28, 2007 ;
 ;;8.0;IHS CLINICAL REPORTING;;MAR 12, 2008
 ;;;BGP6;;SEP 28, 2007
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"629,00247-0180-03 ",.02)
 ;;00247-0180-03
 ;;9002226.02101,"629,00247-0180-04 ",.01)
 ;;00247-0180-04
 ;;9002226.02101,"629,00247-0180-04 ",.02)
 ;;00247-0180-04
 ;;9002226.02101,"629,00247-0180-06 ",.01)
 ;;00247-0180-06
 ;;9002226.02101,"629,00247-0180-06 ",.02)
 ;;00247-0180-06
 ;;9002226.02101,"629,00247-0180-10 ",.01)
 ;;00247-0180-10
 ;;9002226.02101,"629,00247-0180-10 ",.02)
 ;;00247-0180-10
 ;;9002226.02101,"629,00247-0180-12 ",.01)
 ;;00247-0180-12
 ;;9002226.02101,"629,00247-0180-12 ",.02)
 ;;00247-0180-12
 ;;9002226.02101,"629,00247-0180-14 ",.01)
 ;;00247-0180-14
 ;;9002226.02101,"629,00247-0180-14 ",.02)
 ;;00247-0180-14
 ;;9002226.02101,"629,00247-0180-15 ",.01)
 ;;00247-0180-15
 ;;9002226.02101,"629,00247-0180-15 ",.02)
 ;;00247-0180-15
 ;;9002226.02101,"629,00247-0180-20 ",.01)
 ;;00247-0180-20
 ;;9002226.02101,"629,00247-0180-20 ",.02)
 ;;00247-0180-20
 ;;9002226.02101,"629,00247-0180-21 ",.01)
 ;;00247-0180-21
 ;;9002226.02101,"629,00247-0180-21 ",.02)
 ;;00247-0180-21
 ;;9002226.02101,"629,00247-0180-24 ",.01)
 ;;00247-0180-24
 ;;9002226.02101,"629,00247-0180-24 ",.02)
 ;;00247-0180-24
 ;;9002226.02101,"629,00247-0180-28 ",.01)
 ;;00247-0180-28
 ;;9002226.02101,"629,00247-0180-28 ",.02)
 ;;00247-0180-28
 ;;9002226.02101,"629,00247-0180-40 ",.01)
 ;;00247-0180-40
 ;;9002226.02101,"629,00247-0180-40 ",.02)
 ;;00247-0180-40
 ;;9002226.02101,"629,00247-0180-60 ",.01)
 ;;00247-0180-60
 ;;9002226.02101,"629,00247-0180-60 ",.02)
 ;;00247-0180-60
 ;;9002226.02101,"629,00247-0286-06 ",.01)
 ;;00247-0286-06
 ;;9002226.02101,"629,00247-0286-06 ",.02)
 ;;00247-0286-06
 ;;9002226.02101,"629,00247-0286-16 ",.01)
 ;;00247-0286-16
 ;;9002226.02101,"629,00247-0286-16 ",.02)
 ;;00247-0286-16
 ;;9002226.02101,"629,00247-0286-18 ",.01)
 ;;00247-0286-18
 ;;9002226.02101,"629,00247-0286-18 ",.02)
 ;;00247-0286-18
 ;;9002226.02101,"629,00247-0286-20 ",.01)
 ;;00247-0286-20
 ;;9002226.02101,"629,00247-0286-20 ",.02)
 ;;00247-0286-20
 ;;9002226.02101,"629,00247-0286-30 ",.01)
 ;;00247-0286-30
 ;;9002226.02101,"629,00247-0286-30 ",.02)
 ;;00247-0286-30
 ;;9002226.02101,"629,00247-0286-40 ",.01)
 ;;00247-0286-40
 ;;9002226.02101,"629,00247-0286-40 ",.02)
 ;;00247-0286-40
 ;;9002226.02101,"629,00247-0324-02 ",.01)
 ;;00247-0324-02
 ;;9002226.02101,"629,00247-0324-02 ",.02)
 ;;00247-0324-02
 ;;9002226.02101,"629,00247-0324-08 ",.01)
 ;;00247-0324-08
 ;;9002226.02101,"629,00247-0324-08 ",.02)
 ;;00247-0324-08
 ;;9002226.02101,"629,00247-0324-10 ",.01)
 ;;00247-0324-10
 ;;9002226.02101,"629,00247-0324-10 ",.02)
 ;;00247-0324-10
 ;;9002226.02101,"629,00247-0324-14 ",.01)
 ;;00247-0324-14
 ;;9002226.02101,"629,00247-0324-14 ",.02)
 ;;00247-0324-14
 ;;9002226.02101,"629,00247-0324-20 ",.01)
 ;;00247-0324-20
 ;;9002226.02101,"629,00247-0324-20 ",.02)
 ;;00247-0324-20
 ;;9002226.02101,"629,00247-0324-21 ",.01)
 ;;00247-0324-21
 ;;9002226.02101,"629,00247-0324-21 ",.02)
 ;;00247-0324-21
 ;;9002226.02101,"629,00247-0324-28 ",.01)
 ;;00247-0324-28
 ;;9002226.02101,"629,00247-0324-28 ",.02)
 ;;00247-0324-28
 ;;9002226.02101,"629,00247-0324-30 ",.01)
 ;;00247-0324-30
 ;;9002226.02101,"629,00247-0324-30 ",.02)
 ;;00247-0324-30
 ;;9002226.02101,"629,00247-0341-20 ",.01)
 ;;00247-0341-20
 ;;9002226.02101,"629,00247-0341-20 ",.02)
 ;;00247-0341-20
 ;;9002226.02101,"629,00247-0341-30 ",.01)
 ;;00247-0341-30
 ;;9002226.02101,"629,00247-0341-30 ",.02)
 ;;00247-0341-30
 ;;9002226.02101,"629,00247-0367-10 ",.01)
 ;;00247-0367-10
 ;;9002226.02101,"629,00247-0367-10 ",.02)
 ;;00247-0367-10
 ;;9002226.02101,"629,00247-0367-18 ",.01)
 ;;00247-0367-18
 ;;9002226.02101,"629,00247-0367-18 ",.02)
 ;;00247-0367-18
 ;;9002226.02101,"629,00247-0367-20 ",.01)
 ;;00247-0367-20
 ;;9002226.02101,"629,00247-0367-20 ",.02)
 ;;00247-0367-20
 ;;9002226.02101,"629,00247-0367-28 ",.01)
 ;;00247-0367-28
 ;;9002226.02101,"629,00247-0367-28 ",.02)
 ;;00247-0367-28
 ;;9002226.02101,"629,00247-0367-30 ",.01)
 ;;00247-0367-30
 ;;9002226.02101,"629,00247-0367-30 ",.02)
 ;;00247-0367-30
 ;;9002226.02101,"629,00247-0367-40 ",.01)
 ;;00247-0367-40
 ;;9002226.02101,"629,00247-0367-40 ",.02)
 ;;00247-0367-40
 ;;9002226.02101,"629,00247-0367-56 ",.01)
 ;;00247-0367-56
 ;;9002226.02101,"629,00247-0367-56 ",.02)
 ;;00247-0367-56
 ;;9002226.02101,"629,00247-0368-02 ",.01)
 ;;00247-0368-02
 ;;9002226.02101,"629,00247-0368-02 ",.02)
 ;;00247-0368-02
 ;;9002226.02101,"629,00247-0368-10 ",.01)
 ;;00247-0368-10
 ;;9002226.02101,"629,00247-0368-10 ",.02)
 ;;00247-0368-10
 ;;9002226.02101,"629,00247-0368-14 ",.01)
 ;;00247-0368-14
 ;;9002226.02101,"629,00247-0368-14 ",.02)
 ;;00247-0368-14
 ;;9002226.02101,"629,00247-0368-20 ",.01)
 ;;00247-0368-20
 ;;9002226.02101,"629,00247-0368-20 ",.02)
 ;;00247-0368-20
 ;;9002226.02101,"629,00247-0368-30 ",.01)
 ;;00247-0368-30
 ;;9002226.02101,"629,00247-0368-30 ",.02)
 ;;00247-0368-30
 ;;9002226.02101,"629,00247-0369-24 ",.01)
 ;;00247-0369-24
 ;;9002226.02101,"629,00247-0369-24 ",.02)
 ;;00247-0369-24
 ;;9002226.02101,"629,00247-0369-30 ",.01)
 ;;00247-0369-30
 ;;9002226.02101,"629,00247-0369-30 ",.02)
 ;;00247-0369-30
 ;;9002226.02101,"629,00247-0391-07 ",.01)
 ;;00247-0391-07
 ;;9002226.02101,"629,00247-0391-07 ",.02)
 ;;00247-0391-07
 ;;9002226.02101,"629,00247-0391-15 ",.01)
 ;;00247-0391-15
 ;;9002226.02101,"629,00247-0391-15 ",.02)
 ;;00247-0391-15
 ;;9002226.02101,"629,00247-0391-20 ",.01)
 ;;00247-0391-20
 ;;9002226.02101,"629,00247-0391-20 ",.02)
 ;;00247-0391-20
 ;;9002226.02101,"629,00247-0391-30 ",.01)
 ;;00247-0391-30
 ;;9002226.02101,"629,00247-0391-30 ",.02)
 ;;00247-0391-30
 ;;9002226.02101,"629,00247-0391-40 ",.01)
 ;;00247-0391-40
 ;;9002226.02101,"629,00247-0391-40 ",.02)
 ;;00247-0391-40
 ;;9002226.02101,"629,00254-2410-38 ",.01)
 ;;00254-2410-38
 ;;9002226.02101,"629,00254-2410-38 ",.02)
 ;;00254-2410-38
 ;;9002226.02101,"629,00259-0322-10 ",.01)
 ;;00259-0322-10
 ;;9002226.02101,"629,00259-0322-10 ",.02)
 ;;00259-0322-10
 ;;9002226.02101,"629,00314-0549-10 ",.01)
 ;;00314-0549-10
 ;;9002226.02101,"629,00314-0549-10 ",.02)
 ;;00314-0549-10
 ;;9002226.02101,"629,00339-5823-12 ",.01)
 ;;00339-5823-12
 ;;9002226.02101,"629,00339-5823-12 ",.02)
 ;;00339-5823-12
 ;;9002226.02101,"629,00364-0346-01 ",.01)
 ;;00364-0346-01
 ;;9002226.02101,"629,00364-0346-01 ",.02)
 ;;00364-0346-01
 ;;9002226.02101,"629,00364-0346-05 ",.01)
 ;;00364-0346-05
 ;;9002226.02101,"629,00364-0346-05 ",.02)
 ;;00364-0346-05
 ;;9002226.02101,"629,00364-0347-01 ",.01)
 ;;00364-0347-01
 ;;9002226.02101,"629,00364-0347-01 ",.02)
 ;;00364-0347-01
 ;;9002226.02101,"629,00364-0347-05 ",.01)
 ;;00364-0347-05
 ;;9002226.02101,"629,00364-0347-05 ",.02)
 ;;00364-0347-05
 ;;9002226.02101,"629,00364-0475-01 ",.01)
 ;;00364-0475-01
 ;;9002226.02101,"629,00364-0475-01 ",.02)
 ;;00364-0475-01
 ;;9002226.02101,"629,00364-0475-02 ",.01)
 ;;00364-0475-02
 ;;9002226.02101,"629,00364-0475-02 ",.02)
 ;;00364-0475-02
 ;;9002226.02101,"629,00364-0475-04 ",.01)
 ;;00364-0475-04
 ;;9002226.02101,"629,00364-0475-04 ",.02)
 ;;00364-0475-04
 ;;9002226.02101,"629,00364-0475-05 ",.01)
 ;;00364-0475-05
 ;;9002226.02101,"629,00364-0475-05 ",.02)
 ;;00364-0475-05
 ;;9002226.02101,"629,00364-2348-01 ",.01)
 ;;00364-2348-01
 ;;9002226.02101,"629,00364-2348-01 ",.02)
 ;;00364-2348-01
 ;;9002226.02101,"629,00364-2348-02 ",.01)
 ;;00364-2348-02
 ;;9002226.02101,"629,00364-2348-02 ",.02)
 ;;00364-2348-02
 ;;9002226.02101,"629,00364-2348-05 ",.01)
 ;;00364-2348-05
 ;;9002226.02101,"629,00364-2348-05 ",.02)
 ;;00364-2348-05
 ;;9002226.02101,"629,00364-2830-01 ",.01)
 ;;00364-2830-01
 ;;9002226.02101,"629,00364-2830-01 ",.02)
 ;;00364-2830-01
 ;;9002226.02101,"629,00364-2830-04 ",.01)
 ;;00364-2830-04
 ;;9002226.02101,"629,00364-2830-04 ",.02)
 ;;00364-2830-04
 ;;9002226.02101,"629,00378-0751-01 ",.01)
 ;;00378-0751-01
 ;;9002226.02101,"629,00378-0751-01 ",.02)
 ;;00378-0751-01
 ;;9002226.02101,"629,00378-0751-10 ",.01)
 ;;00378-0751-10
 ;;9002226.02101,"629,00378-0751-10 ",.02)
 ;;00378-0751-10
 ;;9002226.02101,"629,00378-0771-01 ",.01)
 ;;00378-0771-01
 ;;9002226.02101,"629,00378-0771-01 ",.02)
 ;;00378-0771-01
 ;;9002226.02101,"629,00378-0771-05 ",.01)
 ;;00378-0771-05
 ;;9002226.02101,"629,00378-0771-05 ",.02)
 ;;00378-0771-05
 ;;9002226.02101,"629,00378-3354-01 ",.01)
 ;;00378-3354-01
 ;;9002226.02101,"629,00378-3354-01 ",.02)
 ;;00378-3354-01
 ;;9002226.02101,"629,00378-3356-01 ",.01)
 ;;00378-3356-01
 ;;9002226.02101,"629,00378-3356-01 ",.02)
 ;;00378-3356-01
 ;;9002226.02101,"629,00378-3358-01 ",.01)
 ;;00378-3358-01
 ;;9002226.02101,"629,00378-3358-01 ",.02)
 ;;00378-3358-01
 ;;9002226.02101,"629,00378-3358-05 ",.01)
 ;;00378-3358-05
 ;;9002226.02101,"629,00378-3358-05 ",.02)
 ;;00378-3358-05
 ;;9002226.02101,"629,00405-0032-01 ",.01)
 ;;00405-0032-01
 ;;9002226.02101,"629,00405-0032-01 ",.02)
 ;;00405-0032-01
 ;;9002226.02101,"629,00405-4141-01 ",.01)
 ;;00405-4141-01
 ;;9002226.02101,"629,00405-4141-01 ",.02)
 ;;00405-4141-01
 ;;9002226.02101,"629,00405-4141-02 ",.01)
 ;;00405-4141-02
 ;;9002226.02101,"629,00405-4141-02 ",.02)
 ;;00405-4141-02
 ;;9002226.02101,"629,00405-4219-01 ",.01)
 ;;00405-4219-01
 ;;9002226.02101,"629,00405-4219-01 ",.02)
 ;;00405-4219-01
 ;;9002226.02101,"629,00405-4219-02 ",.01)
 ;;00405-4219-02
 ;;9002226.02101,"629,00405-4219-02 ",.02)
 ;;00405-4219-02
 ;;9002226.02101,"629,00405-4290-01 ",.01)
 ;;00405-4290-01
 ;;9002226.02101,"629,00405-4290-01 ",.02)
 ;;00405-4290-01
 ;;9002226.02101,"629,00405-4290-03 ",.01)
 ;;00405-4290-03
 ;;9002226.02101,"629,00405-4290-03 ",.02)
 ;;00405-4290-03
 ;;9002226.02101,"629,00405-4635-01 ",.01)
 ;;00405-4635-01
 ;;9002226.02101,"629,00405-4635-01 ",.02)
 ;;00405-4635-01
 ;;9002226.02101,"629,00405-4635-02 ",.01)
 ;;00405-4635-02
 ;;9002226.02101,"629,00405-4635-02 ",.02)
 ;;00405-4635-02
 ;;9002226.02101,"629,00405-4636-01 ",.01)
 ;;00405-4636-01
 ;;9002226.02101,"629,00405-4636-01 ",.02)
 ;;00405-4636-01
 ;;9002226.02101,"629,00405-4636-02 ",.01)
 ;;00405-4636-02
 ;;9002226.02101,"629,00405-4636-02 ",.02)
 ;;00405-4636-02
 ;;9002226.02101,"629,00405-4641-01 ",.01)
 ;;00405-4641-01
 ;;9002226.02101,"629,00405-4641-01 ",.02)
 ;;00405-4641-01
 ;;9002226.02101,"629,00456-1092-10 ",.01)
 ;;00456-1092-10
 ;;9002226.02101,"629,00456-1092-10 ",.02)
 ;;00456-1092-10
 ;;9002226.02101,"629,00463-1092-10 ",.01)
 ;;00463-1092-10
 ;;9002226.02101,"629,00463-1092-10 ",.02)
 ;;00463-1092-10
 ;;9002226.02101,"629,00463-1106-10 ",.01)
 ;;00463-1106-10
 ;;9002226.02101,"629,00463-1106-10 ",.02)
 ;;00463-1106-10
 ;;9002226.02101,"629,00527-1152-01 ",.01)
 ;;00527-1152-01
 ;;9002226.02101,"629,00527-1152-01 ",.02)
 ;;00527-1152-01
 ;;9002226.02101,"629,00527-1152-05 ",.01)
 ;;00527-1152-05
 ;;9002226.02101,"629,00527-1152-05 ",.02)
 ;;00527-1152-05
 ;;9002226.02101,"629,00527-1302-01 ",.01)
 ;;00527-1302-01
 ;;9002226.02101,"629,00527-1302-01 ",.02)
 ;;00527-1302-01
 ;;9002226.02101,"629,00527-1302-05 ",.01)
 ;;00527-1302-05
 ;;9002226.02101,"629,00527-1302-05 ",.02)
 ;;00527-1302-05
 ;;9002226.02101,"629,00536-3444-01 ",.01)
 ;;00536-3444-01
 ;;9002226.02101,"629,00536-3444-01 ",.02)
 ;;00536-3444-01
 ;;9002226.02101,"629,00555-0585-02 ",.01)
 ;;00555-0585-02
 ;;9002226.02101,"629,00555-0585-02 ",.02)
 ;;00555-0585-02
 ;;9002226.02101,"629,00555-0585-04 ",.01)
 ;;00555-0585-04
 ;;9002226.02101,"629,00555-0585-04 ",.02)
 ;;00555-0585-04
 ;;9002226.02101,"629,00591-2830-01 ",.01)
 ;;00591-2830-01
 ;;9002226.02101,"629,00591-2830-01 ",.02)
 ;;00591-2830-01
 ;;9002226.02101,"629,00591-3222-47 ",.01)
 ;;00591-3222-47
 ;;9002226.02101,"629,00591-3222-47 ",.02)
 ;;00591-3222-47
 ;;9002226.02101,"629,00591-3256-01 ",.01)
 ;;00591-3256-01
 ;;9002226.02101,"629,00591-3256-01 ",.02)
 ;;00591-3256-01
 ;;9002226.02101,"629,00591-5381-01 ",.01)
 ;;00591-5381-01
 ;;9002226.02101,"629,00591-5381-01 ",.02)
 ;;00591-5381-01
 ;;9002226.02101,"629,00591-5381-05 ",.01)
 ;;00591-5381-05
 ;;9002226.02101,"629,00591-5381-05 ",.02)
 ;;00591-5381-05
 ;;9002226.02101,"629,00591-5382-01 ",.01)
 ;;00591-5382-01
 ;;9002226.02101,"629,00591-5382-01 ",.02)
 ;;00591-5382-01
 ;;9002226.02101,"629,00591-5382-05 ",.01)
 ;;00591-5382-05
 ;;9002226.02101,"629,00591-5382-05 ",.02)
 ;;00591-5382-05
 ;;9002226.02101,"629,00591-5513-01 ",.01)
 ;;00591-5513-01
 ;;9002226.02101,"629,00591-5513-01 ",.02)
 ;;00591-5513-01
 ;;9002226.02101,"629,00591-5513-05 ",.01)
 ;;00591-5513-05
 ;;9002226.02101,"629,00591-5513-05 ",.02)
 ;;00591-5513-05
 ;;9002226.02101,"629,00591-5513-10 ",.01)
 ;;00591-5513-10
 ;;9002226.02101,"629,00591-5513-10 ",.02)
 ;;00591-5513-10
 ;;9002226.02101,"629,00591-5658-01 ",.01)
 ;;00591-5658-01
 ;;9002226.02101,"629,00591-5658-01 ",.02)
 ;;00591-5658-01
 ;;9002226.02101,"629,00591-5658-05 ",.01)
 ;;00591-5658-05
 ;;9002226.02101,"629,00591-5658-05 ",.02)
 ;;00591-5658-05
 ;;9002226.02101,"629,00591-5658-10 ",.01)
 ;;00591-5658-10
 ;;9002226.02101,"629,00591-5658-10 ",.02)
 ;;00591-5658-10
 ;;9002226.02101,"629,00603-2582-21 ",.01)
 ;;00603-2582-21
 ;;9002226.02101,"629,00603-2582-21 ",.02)
 ;;00603-2582-21
 ;;9002226.02101,"629,00603-2582-28 ",.01)
 ;;00603-2582-28
 ;;9002226.02101,"629,00603-2582-28 ",.02)
 ;;00603-2582-28
 ;;9002226.02101,"629,00603-2582-32 ",.01)
 ;;00603-2582-32
 ;;9002226.02101,"629,00603-2582-32 ",.02)
 ;;00603-2582-32
 ;;9002226.02101,"629,00603-2583-21 ",.01)
 ;;00603-2583-21
 ;;9002226.02101,"629,00603-2583-21 ",.02)
 ;;00603-2583-21