BUD1ZA38 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON DEC 13, 2011 ;
 ;;10.0;IHS/RPMS UNIFORM DATA SYSTEM;;FEB 04, 2016;Build 50
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1062,58864-0670-30 ",.01)
 ;;58864-0670-30
 ;;9002226.02101,"1062,58864-0670-30 ",.02)
 ;;58864-0670-30
 ;;9002226.02101,"1062,58864-0687-30 ",.01)
 ;;58864-0687-30
 ;;9002226.02101,"1062,58864-0687-30 ",.02)
 ;;58864-0687-30
 ;;9002226.02101,"1062,58864-0687-60 ",.01)
 ;;58864-0687-60
 ;;9002226.02101,"1062,58864-0687-60 ",.02)
 ;;58864-0687-60
 ;;9002226.02101,"1062,58864-0689-30 ",.01)
 ;;58864-0689-30
 ;;9002226.02101,"1062,58864-0689-30 ",.02)
 ;;58864-0689-30
 ;;9002226.02101,"1062,58864-0689-60 ",.01)
 ;;58864-0689-60
 ;;9002226.02101,"1062,58864-0689-60 ",.02)
 ;;58864-0689-60
 ;;9002226.02101,"1062,58864-0705-30 ",.01)
 ;;58864-0705-30
 ;;9002226.02101,"1062,58864-0705-30 ",.02)
 ;;58864-0705-30
 ;;9002226.02101,"1062,58864-0745-15 ",.01)
 ;;58864-0745-15
 ;;9002226.02101,"1062,58864-0745-15 ",.02)
 ;;58864-0745-15
 ;;9002226.02101,"1062,58864-0745-30 ",.01)
 ;;58864-0745-30
 ;;9002226.02101,"1062,58864-0745-30 ",.02)
 ;;58864-0745-30
 ;;9002226.02101,"1062,58864-0858-30 ",.01)
 ;;58864-0858-30
 ;;9002226.02101,"1062,58864-0858-30 ",.02)
 ;;58864-0858-30
 ;;9002226.02101,"1062,58864-0862-30 ",.01)
 ;;58864-0862-30
 ;;9002226.02101,"1062,58864-0862-30 ",.02)
 ;;58864-0862-30
 ;;9002226.02101,"1062,58864-0952-30 ",.01)
 ;;58864-0952-30
 ;;9002226.02101,"1062,58864-0952-30 ",.02)
 ;;58864-0952-30
 ;;9002226.02101,"1062,58864-0953-30 ",.01)
 ;;58864-0953-30
 ;;9002226.02101,"1062,58864-0953-30 ",.02)
 ;;58864-0953-30
 ;;9002226.02101,"1062,58864-0956-30 ",.01)
 ;;58864-0956-30
 ;;9002226.02101,"1062,58864-0956-30 ",.02)
 ;;58864-0956-30
 ;;9002226.02101,"1062,58864-0957-30 ",.01)
 ;;58864-0957-30
 ;;9002226.02101,"1062,58864-0957-30 ",.02)
 ;;58864-0957-30
 ;;9002226.02101,"1062,59060-1833-02 ",.01)
 ;;59060-1833-02
 ;;9002226.02101,"1062,59060-1833-02 ",.02)
 ;;59060-1833-02
 ;;9002226.02101,"1062,59060-1834-02 ",.01)
 ;;59060-1834-02
 ;;9002226.02101,"1062,59060-1834-02 ",.02)
 ;;59060-1834-02
 ;;9002226.02101,"1062,59060-1837-02 ",.01)
 ;;59060-1837-02
 ;;9002226.02101,"1062,59060-1837-02 ",.02)
 ;;59060-1837-02
 ;;9002226.02101,"1062,59060-2317-04 ",.01)
 ;;59060-2317-04
 ;;9002226.02101,"1062,59060-2317-04 ",.02)
 ;;59060-2317-04
 ;;9002226.02101,"1062,59762-3725-01 ",.01)
 ;;59762-3725-01
 ;;9002226.02101,"1062,59762-3725-01 ",.02)
 ;;59762-3725-01
 ;;9002226.02101,"1062,59762-3726-03 ",.01)
 ;;59762-3726-03
 ;;9002226.02101,"1062,59762-3726-03 ",.02)
 ;;59762-3726-03
 ;;9002226.02101,"1062,59762-3727-03 ",.01)
 ;;59762-3727-03
 ;;9002226.02101,"1062,59762-3727-03 ",.02)
 ;;59762-3727-03
 ;;9002226.02101,"1062,59762-3727-04 ",.01)
 ;;59762-3727-04
 ;;9002226.02101,"1062,59762-3727-04 ",.02)
 ;;59762-3727-04
 ;;9002226.02101,"1062,59762-3727-06 ",.01)
 ;;59762-3727-06
 ;;9002226.02101,"1062,59762-3727-06 ",.02)
 ;;59762-3727-06
 ;;9002226.02101,"1062,59762-3727-07 ",.01)
 ;;59762-3727-07
 ;;9002226.02101,"1062,59762-3727-07 ",.02)
 ;;59762-3727-07
 ;;9002226.02101,"1062,59762-3781-01 ",.01)
 ;;59762-3781-01
 ;;9002226.02101,"1062,59762-3781-01 ",.02)
 ;;59762-3781-01
 ;;9002226.02101,"1062,59762-3782-01 ",.01)
 ;;59762-3782-01
 ;;9002226.02101,"1062,59762-3782-01 ",.02)
 ;;59762-3782-01
 ;;9002226.02101,"1062,59762-3782-03 ",.01)
 ;;59762-3782-03
 ;;9002226.02101,"1062,59762-3782-03 ",.02)
 ;;59762-3782-03
 ;;9002226.02101,"1062,59762-3783-01 ",.01)
 ;;59762-3783-01
 ;;9002226.02101,"1062,59762-3783-01 ",.02)
 ;;59762-3783-01
 ;;9002226.02101,"1062,59762-3783-02 ",.01)
 ;;59762-3783-02
 ;;9002226.02101,"1062,59762-3783-02 ",.02)
 ;;59762-3783-02
 ;;9002226.02101,"1062,59762-3783-03 ",.01)
 ;;59762-3783-03
 ;;9002226.02101,"1062,59762-3783-03 ",.02)
 ;;59762-3783-03
 ;;9002226.02101,"1062,59762-5031-01 ",.01)
 ;;59762-5031-01
 ;;9002226.02101,"1062,59762-5031-01 ",.02)
 ;;59762-5031-01
 ;;9002226.02101,"1062,59762-5032-01 ",.01)
 ;;59762-5032-01
 ;;9002226.02101,"1062,59762-5032-01 ",.02)
 ;;59762-5032-01
 ;;9002226.02101,"1062,59762-5032-02 ",.01)
 ;;59762-5032-02
 ;;9002226.02101,"1062,59762-5032-02 ",.02)
 ;;59762-5032-02
 ;;9002226.02101,"1062,59762-5033-01 ",.01)
 ;;59762-5033-01
 ;;9002226.02101,"1062,59762-5033-01 ",.02)
 ;;59762-5033-01
 ;;9002226.02101,"1062,59762-5033-02 ",.01)
 ;;59762-5033-02
 ;;9002226.02101,"1062,59762-5033-02 ",.02)
 ;;59762-5033-02
 ;;9002226.02101,"1062,60429-0082-30 ",.01)
 ;;60429-0082-30
 ;;9002226.02101,"1062,60429-0082-30 ",.02)
 ;;60429-0082-30
 ;;9002226.02101,"1062,60429-0082-60 ",.01)
 ;;60429-0082-60
 ;;9002226.02101,"1062,60429-0082-60 ",.02)
 ;;60429-0082-60
 ;;9002226.02101,"1062,60429-0083-12 ",.01)
 ;;60429-0083-12
 ;;9002226.02101,"1062,60429-0083-12 ",.02)
 ;;60429-0083-12
 ;;9002226.02101,"1062,60429-0083-30 ",.01)
 ;;60429-0083-30
 ;;9002226.02101,"1062,60429-0083-30 ",.02)
 ;;60429-0083-30
 ;;9002226.02101,"1062,60429-0083-60 ",.01)
 ;;60429-0083-60
 ;;9002226.02101,"1062,60429-0083-60 ",.02)
 ;;60429-0083-60
 ;;9002226.02101,"1062,60429-0085-12 ",.01)
 ;;60429-0085-12
 ;;9002226.02101,"1062,60429-0085-12 ",.02)
 ;;60429-0085-12
 ;;9002226.02101,"1062,60429-0085-18 ",.01)
 ;;60429-0085-18
 ;;9002226.02101,"1062,60429-0085-18 ",.02)
 ;;60429-0085-18
 ;;9002226.02101,"1062,60429-0085-27 ",.01)
 ;;60429-0085-27
