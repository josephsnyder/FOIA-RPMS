BGP06Z7 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAY 23, 2010;
 ;;10.0;IHS CLINICAL REPORTING;;JUN 18, 2010
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"982,00247-0088-77 ",.02)
 ;;00247-0088-77
 ;;9002226.02101,"982,00247-0088-90 ",.01)
 ;;00247-0088-90
 ;;9002226.02101,"982,00247-0088-90 ",.02)
 ;;00247-0088-90
 ;;9002226.02101,"982,00247-0112-03 ",.01)
 ;;00247-0112-03
 ;;9002226.02101,"982,00247-0112-03 ",.02)
 ;;00247-0112-03
 ;;9002226.02101,"982,00247-0112-04 ",.01)
 ;;00247-0112-04
 ;;9002226.02101,"982,00247-0112-04 ",.02)
 ;;00247-0112-04
 ;;9002226.02101,"982,00247-0112-10 ",.01)
 ;;00247-0112-10
 ;;9002226.02101,"982,00247-0112-10 ",.02)
 ;;00247-0112-10
 ;;9002226.02101,"982,00247-0112-12 ",.01)
 ;;00247-0112-12
 ;;9002226.02101,"982,00247-0112-12 ",.02)
 ;;00247-0112-12
 ;;9002226.02101,"982,00247-0112-14 ",.01)
 ;;00247-0112-14
 ;;9002226.02101,"982,00247-0112-14 ",.02)
 ;;00247-0112-14
 ;;9002226.02101,"982,00247-0112-15 ",.01)
 ;;00247-0112-15
 ;;9002226.02101,"982,00247-0112-15 ",.02)
 ;;00247-0112-15
 ;;9002226.02101,"982,00247-0112-16 ",.01)
 ;;00247-0112-16
 ;;9002226.02101,"982,00247-0112-16 ",.02)
 ;;00247-0112-16
 ;;9002226.02101,"982,00247-0112-20 ",.01)
 ;;00247-0112-20
 ;;9002226.02101,"982,00247-0112-20 ",.02)
 ;;00247-0112-20
 ;;9002226.02101,"982,00247-0112-24 ",.01)
 ;;00247-0112-24
 ;;9002226.02101,"982,00247-0112-24 ",.02)
 ;;00247-0112-24
 ;;9002226.02101,"982,00247-0112-28 ",.01)
 ;;00247-0112-28
 ;;9002226.02101,"982,00247-0112-28 ",.02)
 ;;00247-0112-28
 ;;9002226.02101,"982,00247-0112-30 ",.01)
 ;;00247-0112-30
 ;;9002226.02101,"982,00247-0112-30 ",.02)
 ;;00247-0112-30
 ;;9002226.02101,"982,00247-0112-40 ",.01)
 ;;00247-0112-40
 ;;9002226.02101,"982,00247-0112-40 ",.02)
 ;;00247-0112-40
 ;;9002226.02101,"982,00247-0180-03 ",.01)
 ;;00247-0180-03
 ;;9002226.02101,"982,00247-0180-03 ",.02)
 ;;00247-0180-03
 ;;9002226.02101,"982,00247-0180-04 ",.01)
 ;;00247-0180-04
 ;;9002226.02101,"982,00247-0180-04 ",.02)
 ;;00247-0180-04
 ;;9002226.02101,"982,00247-0180-06 ",.01)
 ;;00247-0180-06
 ;;9002226.02101,"982,00247-0180-06 ",.02)
 ;;00247-0180-06
 ;;9002226.02101,"982,00247-0180-10 ",.01)
 ;;00247-0180-10
 ;;9002226.02101,"982,00247-0180-10 ",.02)
 ;;00247-0180-10
 ;;9002226.02101,"982,00247-0180-12 ",.01)
 ;;00247-0180-12
 ;;9002226.02101,"982,00247-0180-12 ",.02)
 ;;00247-0180-12
 ;;9002226.02101,"982,00247-0180-14 ",.01)
 ;;00247-0180-14
 ;;9002226.02101,"982,00247-0180-14 ",.02)
 ;;00247-0180-14
 ;;9002226.02101,"982,00247-0180-15 ",.01)
 ;;00247-0180-15
 ;;9002226.02101,"982,00247-0180-15 ",.02)
 ;;00247-0180-15
 ;;9002226.02101,"982,00247-0180-20 ",.01)
 ;;00247-0180-20
 ;;9002226.02101,"982,00247-0180-20 ",.02)
 ;;00247-0180-20
 ;;9002226.02101,"982,00247-0180-21 ",.01)
 ;;00247-0180-21
 ;;9002226.02101,"982,00247-0180-21 ",.02)
 ;;00247-0180-21
 ;;9002226.02101,"982,00247-0180-24 ",.01)
 ;;00247-0180-24
 ;;9002226.02101,"982,00247-0180-24 ",.02)
 ;;00247-0180-24
 ;;9002226.02101,"982,00247-0180-28 ",.01)
 ;;00247-0180-28
 ;;9002226.02101,"982,00247-0180-28 ",.02)
 ;;00247-0180-28
 ;;9002226.02101,"982,00247-0180-40 ",.01)
 ;;00247-0180-40
 ;;9002226.02101,"982,00247-0180-40 ",.02)
 ;;00247-0180-40
 ;;9002226.02101,"982,00247-0180-60 ",.01)
 ;;00247-0180-60
 ;;9002226.02101,"982,00247-0180-60 ",.02)
 ;;00247-0180-60
 ;;9002226.02101,"982,00247-0286-06 ",.01)
 ;;00247-0286-06
 ;;9002226.02101,"982,00247-0286-06 ",.02)
 ;;00247-0286-06
 ;;9002226.02101,"982,00247-0286-16 ",.01)
 ;;00247-0286-16
 ;;9002226.02101,"982,00247-0286-16 ",.02)
 ;;00247-0286-16
 ;;9002226.02101,"982,00247-0286-18 ",.01)
 ;;00247-0286-18
 ;;9002226.02101,"982,00247-0286-18 ",.02)
 ;;00247-0286-18
 ;;9002226.02101,"982,00247-0286-20 ",.01)
 ;;00247-0286-20
 ;;9002226.02101,"982,00247-0286-20 ",.02)
 ;;00247-0286-20
 ;;9002226.02101,"982,00247-0286-30 ",.01)
 ;;00247-0286-30
 ;;9002226.02101,"982,00247-0286-30 ",.02)
 ;;00247-0286-30
 ;;9002226.02101,"982,00247-0286-40 ",.01)
 ;;00247-0286-40
 ;;9002226.02101,"982,00247-0286-40 ",.02)
 ;;00247-0286-40
 ;;9002226.02101,"982,00247-0324-02 ",.01)
 ;;00247-0324-02
 ;;9002226.02101,"982,00247-0324-02 ",.02)
 ;;00247-0324-02
 ;;9002226.02101,"982,00247-0324-08 ",.01)
 ;;00247-0324-08
 ;;9002226.02101,"982,00247-0324-08 ",.02)
 ;;00247-0324-08
 ;;9002226.02101,"982,00247-0324-10 ",.01)
 ;;00247-0324-10
 ;;9002226.02101,"982,00247-0324-10 ",.02)
 ;;00247-0324-10
 ;;9002226.02101,"982,00247-0324-14 ",.01)
 ;;00247-0324-14
 ;;9002226.02101,"982,00247-0324-14 ",.02)
 ;;00247-0324-14
 ;;9002226.02101,"982,00247-0324-20 ",.01)
 ;;00247-0324-20
 ;;9002226.02101,"982,00247-0324-20 ",.02)
 ;;00247-0324-20
 ;;9002226.02101,"982,00247-0324-21 ",.01)
 ;;00247-0324-21
 ;;9002226.02101,"982,00247-0324-21 ",.02)
 ;;00247-0324-21
 ;;9002226.02101,"982,00247-0324-28 ",.01)
 ;;00247-0324-28
 ;;9002226.02101,"982,00247-0324-28 ",.02)
 ;;00247-0324-28
 ;;9002226.02101,"982,00247-0324-30 ",.01)
 ;;00247-0324-30
 ;;9002226.02101,"982,00247-0324-30 ",.02)
 ;;00247-0324-30
 ;;9002226.02101,"982,00247-0341-20 ",.01)
 ;;00247-0341-20
 ;;9002226.02101,"982,00247-0341-20 ",.02)
 ;;00247-0341-20
 ;;9002226.02101,"982,00247-0341-30 ",.01)
 ;;00247-0341-30
 ;;9002226.02101,"982,00247-0341-30 ",.02)
 ;;00247-0341-30
 ;;9002226.02101,"982,00247-0368-02 ",.01)
 ;;00247-0368-02
 ;;9002226.02101,"982,00247-0368-02 ",.02)
 ;;00247-0368-02
 ;;9002226.02101,"982,00247-0368-08 ",.01)
 ;;00247-0368-08
 ;;9002226.02101,"982,00247-0368-08 ",.02)
 ;;00247-0368-08
 ;;9002226.02101,"982,00247-0368-10 ",.01)
 ;;00247-0368-10
 ;;9002226.02101,"982,00247-0368-10 ",.02)
 ;;00247-0368-10
 ;;9002226.02101,"982,00247-0368-14 ",.01)
 ;;00247-0368-14
 ;;9002226.02101,"982,00247-0368-14 ",.02)
 ;;00247-0368-14
 ;;9002226.02101,"982,00247-0368-20 ",.01)
 ;;00247-0368-20
 ;;9002226.02101,"982,00247-0368-20 ",.02)
 ;;00247-0368-20
 ;;9002226.02101,"982,00247-0368-30 ",.01)
 ;;00247-0368-30
 ;;9002226.02101,"982,00247-0368-30 ",.02)
 ;;00247-0368-30
 ;;9002226.02101,"982,00247-0369-24 ",.01)
 ;;00247-0369-24
 ;;9002226.02101,"982,00247-0369-24 ",.02)
 ;;00247-0369-24
 ;;9002226.02101,"982,00247-0369-30 ",.01)
 ;;00247-0369-30
 ;;9002226.02101,"982,00247-0369-30 ",.02)
 ;;00247-0369-30
 ;;9002226.02101,"982,00247-0391-07 ",.01)
 ;;00247-0391-07
 ;;9002226.02101,"982,00247-0391-07 ",.02)
 ;;00247-0391-07
 ;;9002226.02101,"982,00247-0391-15 ",.01)
 ;;00247-0391-15
 ;;9002226.02101,"982,00247-0391-15 ",.02)
 ;;00247-0391-15
 ;;9002226.02101,"982,00247-0391-20 ",.01)
 ;;00247-0391-20
 ;;9002226.02101,"982,00247-0391-20 ",.02)
 ;;00247-0391-20
 ;;9002226.02101,"982,00247-0391-30 ",.01)
 ;;00247-0391-30
 ;;9002226.02101,"982,00247-0391-30 ",.02)
 ;;00247-0391-30
 ;;9002226.02101,"982,00247-0391-40 ",.01)
 ;;00247-0391-40
 ;;9002226.02101,"982,00247-0391-40 ",.02)
 ;;00247-0391-40
 ;;9002226.02101,"982,00247-0610-02 ",.01)
 ;;00247-0610-02
 ;;9002226.02101,"982,00247-0610-02 ",.02)
 ;;00247-0610-02
 ;;9002226.02101,"982,00247-0610-06 ",.01)
 ;;00247-0610-06
 ;;9002226.02101,"982,00247-0610-06 ",.02)
 ;;00247-0610-06
 ;;9002226.02101,"982,00247-0610-15 ",.01)
 ;;00247-0610-15
 ;;9002226.02101,"982,00247-0610-15 ",.02)
 ;;00247-0610-15
 ;;9002226.02101,"982,00247-0610-16 ",.01)
 ;;00247-0610-16
 ;;9002226.02101,"982,00247-0610-16 ",.02)
 ;;00247-0610-16
 ;;9002226.02101,"982,00247-0610-18 ",.01)
 ;;00247-0610-18
 ;;9002226.02101,"982,00247-0610-18 ",.02)
 ;;00247-0610-18
 ;;9002226.02101,"982,00247-0610-20 ",.01)
 ;;00247-0610-20
 ;;9002226.02101,"982,00247-0610-20 ",.02)
 ;;00247-0610-20
 ;;9002226.02101,"982,00247-0610-21 ",.01)
 ;;00247-0610-21
 ;;9002226.02101,"982,00247-0610-21 ",.02)
 ;;00247-0610-21
 ;;9002226.02101,"982,00247-0610-30 ",.01)
 ;;00247-0610-30
 ;;9002226.02101,"982,00247-0610-30 ",.02)
 ;;00247-0610-30
 ;;9002226.02101,"982,00247-0610-32 ",.01)
 ;;00247-0610-32
 ;;9002226.02101,"982,00247-0610-32 ",.02)
 ;;00247-0610-32
 ;;9002226.02101,"982,00247-0610-40 ",.01)
 ;;00247-0610-40
 ;;9002226.02101,"982,00247-0610-40 ",.02)
 ;;00247-0610-40
 ;;9002226.02101,"982,00247-0610-42 ",.01)
 ;;00247-0610-42
 ;;9002226.02101,"982,00247-0610-42 ",.02)
 ;;00247-0610-42
 ;;9002226.02101,"982,00247-0610-60 ",.01)
 ;;00247-0610-60
 ;;9002226.02101,"982,00247-0610-60 ",.02)
 ;;00247-0610-60
 ;;9002226.02101,"982,00247-0708-08 ",.01)
 ;;00247-0708-08
 ;;9002226.02101,"982,00247-0708-08 ",.02)
 ;;00247-0708-08
 ;;9002226.02101,"982,00247-0708-20 ",.01)
 ;;00247-0708-20
 ;;9002226.02101,"982,00247-0708-20 ",.02)
 ;;00247-0708-20
 ;;9002226.02101,"982,00247-0708-21 ",.01)
 ;;00247-0708-21
 ;;9002226.02101,"982,00247-0708-21 ",.02)
 ;;00247-0708-21
 ;;9002226.02101,"982,00247-0708-28 ",.01)
 ;;00247-0708-28
 ;;9002226.02101,"982,00247-0708-28 ",.02)
 ;;00247-0708-28
 ;;9002226.02101,"982,00247-0708-30 ",.01)
 ;;00247-0708-30
 ;;9002226.02101,"982,00247-0708-30 ",.02)
 ;;00247-0708-30
 ;;9002226.02101,"982,00247-0708-36 ",.01)
 ;;00247-0708-36
 ;;9002226.02101,"982,00247-0708-36 ",.02)
 ;;00247-0708-36
 ;;9002226.02101,"982,00247-1054-21 ",.01)
 ;;00247-1054-21
 ;;9002226.02101,"982,00247-1054-21 ",.02)
 ;;00247-1054-21
 ;;9002226.02101,"982,00247-1054-60 ",.01)
 ;;00247-1054-60
 ;;9002226.02101,"982,00247-1054-60 ",.02)
 ;;00247-1054-60
 ;;9002226.02101,"982,00247-1055-07 ",.01)
 ;;00247-1055-07
 ;;9002226.02101,"982,00247-1055-07 ",.02)
 ;;00247-1055-07
 ;;9002226.02101,"982,00247-1055-28 ",.01)
 ;;00247-1055-28
 ;;9002226.02101,"982,00247-1055-28 ",.02)
 ;;00247-1055-28
 ;;9002226.02101,"982,00247-1055-40 ",.01)
 ;;00247-1055-40
 ;;9002226.02101,"982,00247-1055-40 ",.02)
 ;;00247-1055-40
 ;;9002226.02101,"982,00247-1055-60 ",.01)
 ;;00247-1055-60
 ;;9002226.02101,"982,00247-1055-60 ",.02)
 ;;00247-1055-60
 ;;9002226.02101,"982,00247-1540-12 ",.01)
 ;;00247-1540-12
 ;;9002226.02101,"982,00247-1540-12 ",.02)
 ;;00247-1540-12
 ;;9002226.02101,"982,00247-1540-20 ",.01)
 ;;00247-1540-20
 ;;9002226.02101,"982,00247-1540-20 ",.02)
 ;;00247-1540-20
 ;;9002226.02101,"982,00247-1540-28 ",.01)
 ;;00247-1540-28
 ;;9002226.02101,"982,00247-1540-28 ",.02)
 ;;00247-1540-28
 ;;9002226.02101,"982,00247-1540-30 ",.01)
 ;;00247-1540-30
 ;;9002226.02101,"982,00247-1540-30 ",.02)
 ;;00247-1540-30
 ;;9002226.02101,"982,00247-1761-20 ",.01)
 ;;00247-1761-20
 ;;9002226.02101,"982,00247-1761-20 ",.02)
 ;;00247-1761-20
 ;;9002226.02101,"982,00247-2048-10 ",.01)
 ;;00247-2048-10
 ;;9002226.02101,"982,00247-2048-10 ",.02)
 ;;00247-2048-10
 ;;9002226.02101,"982,00247-2048-20 ",.01)
 ;;00247-2048-20
 ;;9002226.02101,"982,00247-2048-20 ",.02)
 ;;00247-2048-20
 ;;9002226.02101,"982,00247-2048-21 ",.01)
 ;;00247-2048-21
 ;;9002226.02101,"982,00247-2048-21 ",.02)
 ;;00247-2048-21
 ;;9002226.02101,"982,00247-2048-30 ",.01)
 ;;00247-2048-30
 ;;9002226.02101,"982,00247-2048-30 ",.02)
 ;;00247-2048-30
 ;;9002226.02101,"982,00247-2048-40 ",.01)
 ;;00247-2048-40
 ;;9002226.02101,"982,00247-2048-40 ",.02)
 ;;00247-2048-40
 ;;9002226.02101,"982,00247-2219-21 ",.01)
 ;;00247-2219-21
 ;;9002226.02101,"982,00247-2219-21 ",.02)
 ;;00247-2219-21
 ;;9002226.02101,"982,00254-2410-38 ",.01)
 ;;00254-2410-38
 ;;9002226.02101,"982,00254-2410-38 ",.02)
 ;;00254-2410-38
 ;;9002226.02101,"982,00364-0346-01 ",.01)
 ;;00364-0346-01
 ;;9002226.02101,"982,00364-0346-01 ",.02)
 ;;00364-0346-01
 ;;9002226.02101,"982,00364-0346-05 ",.01)
 ;;00364-0346-05
 ;;9002226.02101,"982,00364-0346-05 ",.02)
 ;;00364-0346-05
 ;;9002226.02101,"982,00364-0347-01 ",.01)
 ;;00364-0347-01
 ;;9002226.02101,"982,00364-0347-01 ",.02)
 ;;00364-0347-01
 ;;9002226.02101,"982,00364-0347-05 ",.01)
 ;;00364-0347-05
 ;;9002226.02101,"982,00364-0347-05 ",.02)
 ;;00364-0347-05
 ;;9002226.02101,"982,00364-0475-01 ",.01)
 ;;00364-0475-01
 ;;9002226.02101,"982,00364-0475-01 ",.02)
 ;;00364-0475-01
 ;;9002226.02101,"982,00364-0475-02 ",.01)
 ;;00364-0475-02
 ;;9002226.02101,"982,00364-0475-02 ",.02)
 ;;00364-0475-02
 ;;9002226.02101,"982,00364-0475-04 ",.01)
 ;;00364-0475-04
 ;;9002226.02101,"982,00364-0475-04 ",.02)
 ;;00364-0475-04
 ;;9002226.02101,"982,00364-0475-05 ",.01)
 ;;00364-0475-05
 ;;9002226.02101,"982,00364-0475-05 ",.02)
 ;;00364-0475-05
 ;;9002226.02101,"982,00364-2348-01 ",.01)
 ;;00364-2348-01
 ;;9002226.02101,"982,00364-2348-01 ",.02)
 ;;00364-2348-01
 ;;9002226.02101,"982,00364-2348-02 ",.01)
 ;;00364-2348-02
 ;;9002226.02101,"982,00364-2348-02 ",.02)
 ;;00364-2348-02
 ;;9002226.02101,"982,00364-2348-05 ",.01)
 ;;00364-2348-05
 ;;9002226.02101,"982,00364-2348-05 ",.02)
 ;;00364-2348-05
 ;;9002226.02101,"982,00364-2830-01 ",.01)
 ;;00364-2830-01
 ;;9002226.02101,"982,00364-2830-01 ",.02)
 ;;00364-2830-01
 ;;9002226.02101,"982,00364-2830-04 ",.01)
 ;;00364-2830-04
 ;;9002226.02101,"982,00364-2830-04 ",.02)
 ;;00364-2830-04
 ;;9002226.02101,"982,00378-0751-01 ",.01)
 ;;00378-0751-01
 ;;9002226.02101,"982,00378-0751-01 ",.02)
 ;;00378-0751-01
 ;;9002226.02101,"982,00378-0751-10 ",.01)
 ;;00378-0751-10
 ;;9002226.02101,"982,00378-0751-10 ",.02)
 ;;00378-0751-10
 ;;9002226.02101,"982,00378-0751-93 ",.01)
 ;;00378-0751-93
 ;;9002226.02101,"982,00378-0751-93 ",.02)
 ;;00378-0751-93
 ;;9002226.02101,"982,00378-0771-01 ",.01)
 ;;00378-0771-01
 ;;9002226.02101,"982,00378-0771-01 ",.02)
 ;;00378-0771-01
 ;;9002226.02101,"982,00378-0771-05 ",.01)
 ;;00378-0771-05
 ;;9002226.02101,"982,00378-0771-05 ",.02)
 ;;00378-0771-05
 ;;9002226.02101,"982,00378-0771-93 ",.01)
 ;;00378-0771-93
 ;;9002226.02101,"982,00378-0771-93 ",.02)
 ;;00378-0771-93
 ;;9002226.02101,"982,00378-3358-01 ",.01)
 ;;00378-3358-01
