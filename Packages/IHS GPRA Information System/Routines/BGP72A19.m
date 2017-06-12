BGP72A19 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1876,43353-0582-80 ",.01)
 ;;43353-0582-80
 ;;9002226.02101,"1876,43353-0582-80 ",.02)
 ;;43353-0582-80
 ;;9002226.02101,"1876,43353-0585-94 ",.01)
 ;;43353-0585-94
 ;;9002226.02101,"1876,43353-0585-94 ",.02)
 ;;43353-0585-94
 ;;9002226.02101,"1876,43353-0589-30 ",.01)
 ;;43353-0589-30
 ;;9002226.02101,"1876,43353-0589-30 ",.02)
 ;;43353-0589-30
 ;;9002226.02101,"1876,43353-0589-53 ",.01)
 ;;43353-0589-53
 ;;9002226.02101,"1876,43353-0589-53 ",.02)
 ;;43353-0589-53
 ;;9002226.02101,"1876,43353-0589-60 ",.01)
 ;;43353-0589-60
 ;;9002226.02101,"1876,43353-0589-60 ",.02)
 ;;43353-0589-60
 ;;9002226.02101,"1876,43353-0589-70 ",.01)
 ;;43353-0589-70
 ;;9002226.02101,"1876,43353-0589-70 ",.02)
 ;;43353-0589-70
 ;;9002226.02101,"1876,43353-0589-75 ",.01)
 ;;43353-0589-75
 ;;9002226.02101,"1876,43353-0589-75 ",.02)
 ;;43353-0589-75
 ;;9002226.02101,"1876,43353-0589-80 ",.01)
 ;;43353-0589-80
 ;;9002226.02101,"1876,43353-0589-80 ",.02)
 ;;43353-0589-80
 ;;9002226.02101,"1876,43353-0589-92 ",.01)
 ;;43353-0589-92
 ;;9002226.02101,"1876,43353-0589-92 ",.02)
 ;;43353-0589-92
 ;;9002226.02101,"1876,43353-0589-94 ",.01)
 ;;43353-0589-94
 ;;9002226.02101,"1876,43353-0589-94 ",.02)
 ;;43353-0589-94
 ;;9002226.02101,"1876,43353-0589-96 ",.01)
 ;;43353-0589-96
 ;;9002226.02101,"1876,43353-0589-96 ",.02)
 ;;43353-0589-96
 ;;9002226.02101,"1876,43353-0656-53 ",.01)
 ;;43353-0656-53
 ;;9002226.02101,"1876,43353-0656-53 ",.02)
 ;;43353-0656-53
 ;;9002226.02101,"1876,43353-0656-60 ",.01)
 ;;43353-0656-60
 ;;9002226.02101,"1876,43353-0656-60 ",.02)
 ;;43353-0656-60
 ;;9002226.02101,"1876,43353-0656-70 ",.01)
 ;;43353-0656-70
 ;;9002226.02101,"1876,43353-0656-70 ",.02)
 ;;43353-0656-70
 ;;9002226.02101,"1876,43353-0656-80 ",.01)
 ;;43353-0656-80
 ;;9002226.02101,"1876,43353-0656-80 ",.02)
 ;;43353-0656-80
 ;;9002226.02101,"1876,43353-0656-90 ",.01)
 ;;43353-0656-90
 ;;9002226.02101,"1876,43353-0656-90 ",.02)
 ;;43353-0656-90
 ;;9002226.02101,"1876,43353-0656-92 ",.01)
 ;;43353-0656-92
 ;;9002226.02101,"1876,43353-0656-92 ",.02)
 ;;43353-0656-92
 ;;9002226.02101,"1876,43353-0656-94 ",.01)
 ;;43353-0656-94
 ;;9002226.02101,"1876,43353-0656-94 ",.02)
 ;;43353-0656-94
 ;;9002226.02101,"1876,43353-0659-60 ",.01)
 ;;43353-0659-60
 ;;9002226.02101,"1876,43353-0659-60 ",.02)
 ;;43353-0659-60
 ;;9002226.02101,"1876,43353-0659-80 ",.01)
 ;;43353-0659-80
 ;;9002226.02101,"1876,43353-0659-80 ",.02)
 ;;43353-0659-80
 ;;9002226.02101,"1876,43353-0811-53 ",.01)
 ;;43353-0811-53
 ;;9002226.02101,"1876,43353-0811-53 ",.02)
 ;;43353-0811-53
 ;;9002226.02101,"1876,43353-0842-30 ",.01)
 ;;43353-0842-30
 ;;9002226.02101,"1876,43353-0842-30 ",.02)
 ;;43353-0842-30
 ;;9002226.02101,"1876,43353-0842-60 ",.01)
 ;;43353-0842-60
 ;;9002226.02101,"1876,43353-0842-60 ",.02)
 ;;43353-0842-60
 ;;9002226.02101,"1876,43353-0842-80 ",.01)
 ;;43353-0842-80
 ;;9002226.02101,"1876,43353-0842-80 ",.02)
 ;;43353-0842-80
 ;;9002226.02101,"1876,43353-0885-45 ",.01)
 ;;43353-0885-45
 ;;9002226.02101,"1876,43353-0885-45 ",.02)
 ;;43353-0885-45
 ;;9002226.02101,"1876,43353-0885-53 ",.01)
 ;;43353-0885-53
 ;;9002226.02101,"1876,43353-0885-53 ",.02)
 ;;43353-0885-53
 ;;9002226.02101,"1876,43353-0885-60 ",.01)
 ;;43353-0885-60
 ;;9002226.02101,"1876,43353-0885-60 ",.02)
 ;;43353-0885-60
 ;;9002226.02101,"1876,43353-0885-73 ",.01)
 ;;43353-0885-73
 ;;9002226.02101,"1876,43353-0885-73 ",.02)
 ;;43353-0885-73
 ;;9002226.02101,"1876,43353-0885-80 ",.01)
 ;;43353-0885-80
 ;;9002226.02101,"1876,43353-0885-80 ",.02)
 ;;43353-0885-80
 ;;9002226.02101,"1876,43353-0885-86 ",.01)
 ;;43353-0885-86
 ;;9002226.02101,"1876,43353-0885-86 ",.02)
 ;;43353-0885-86
 ;;9002226.02101,"1876,43353-0894-30 ",.01)
 ;;43353-0894-30
 ;;9002226.02101,"1876,43353-0894-30 ",.02)
 ;;43353-0894-30
 ;;9002226.02101,"1876,43353-0936-30 ",.01)
 ;;43353-0936-30
 ;;9002226.02101,"1876,43353-0936-30 ",.02)
 ;;43353-0936-30
 ;;9002226.02101,"1876,43353-0936-45 ",.01)
 ;;43353-0936-45
 ;;9002226.02101,"1876,43353-0936-45 ",.02)
 ;;43353-0936-45
 ;;9002226.02101,"1876,43353-0936-73 ",.01)
 ;;43353-0936-73
 ;;9002226.02101,"1876,43353-0936-73 ",.02)
 ;;43353-0936-73
 ;;9002226.02101,"1876,43353-0936-86 ",.01)
 ;;43353-0936-86
 ;;9002226.02101,"1876,43353-0936-86 ",.02)
 ;;43353-0936-86
 ;;9002226.02101,"1876,43353-0982-30 ",.01)
 ;;43353-0982-30
 ;;9002226.02101,"1876,43353-0982-30 ",.02)
 ;;43353-0982-30
 ;;9002226.02101,"1876,43353-0982-53 ",.01)
 ;;43353-0982-53
 ;;9002226.02101,"1876,43353-0982-53 ",.02)
 ;;43353-0982-53
 ;;9002226.02101,"1876,43353-0982-60 ",.01)
 ;;43353-0982-60
 ;;9002226.02101,"1876,43353-0982-60 ",.02)
 ;;43353-0982-60
 ;;9002226.02101,"1876,43353-0982-80 ",.01)
 ;;43353-0982-80
 ;;9002226.02101,"1876,43353-0982-80 ",.02)
 ;;43353-0982-80
 ;;9002226.02101,"1876,43353-0982-92 ",.01)
 ;;43353-0982-92
 ;;9002226.02101,"1876,43353-0982-92 ",.02)
 ;;43353-0982-92
 ;;9002226.02101,"1876,43353-0982-94 ",.01)
 ;;43353-0982-94
 ;;9002226.02101,"1876,43353-0982-94 ",.02)
 ;;43353-0982-94
 ;;9002226.02101,"1876,43353-0982-96 ",.01)
 ;;43353-0982-96
 ;;9002226.02101,"1876,43353-0982-96 ",.02)
 ;;43353-0982-96
 ;;9002226.02101,"1876,43353-0987-30 ",.01)
 ;;43353-0987-30
 ;;9002226.02101,"1876,43353-0987-30 ",.02)
 ;;43353-0987-30
 ;;9002226.02101,"1876,43353-0987-45 ",.01)
 ;;43353-0987-45
 ;;9002226.02101,"1876,43353-0987-45 ",.02)
 ;;43353-0987-45
 ;;9002226.02101,"1876,43353-0987-53 ",.01)
 ;;43353-0987-53
 ;;9002226.02101,"1876,43353-0987-53 ",.02)
 ;;43353-0987-53
 ;;9002226.02101,"1876,43353-0987-60 ",.01)
 ;;43353-0987-60
 ;;9002226.02101,"1876,43353-0987-60 ",.02)
 ;;43353-0987-60
 ;;9002226.02101,"1876,43353-0987-73 ",.01)
 ;;43353-0987-73
 ;;9002226.02101,"1876,43353-0987-73 ",.02)
 ;;43353-0987-73
 ;;9002226.02101,"1876,43353-0987-80 ",.01)
 ;;43353-0987-80
 ;;9002226.02101,"1876,43353-0987-80 ",.02)
 ;;43353-0987-80
 ;;9002226.02101,"1876,43353-0987-86 ",.01)
 ;;43353-0987-86
 ;;9002226.02101,"1876,43353-0987-86 ",.02)
 ;;43353-0987-86
 ;;9002226.02101,"1876,43547-0248-10 ",.01)
 ;;43547-0248-10
 ;;9002226.02101,"1876,43547-0248-10 ",.02)
 ;;43547-0248-10
 ;;9002226.02101,"1876,43547-0248-11 ",.01)
 ;;43547-0248-11
 ;;9002226.02101,"1876,43547-0248-11 ",.02)
 ;;43547-0248-11
 ;;9002226.02101,"1876,43547-0248-50 ",.01)
 ;;43547-0248-50
 ;;9002226.02101,"1876,43547-0248-50 ",.02)
 ;;43547-0248-50
 ;;9002226.02101,"1876,43547-0249-10 ",.01)
 ;;43547-0249-10
 ;;9002226.02101,"1876,43547-0249-10 ",.02)
 ;;43547-0249-10
 ;;9002226.02101,"1876,43547-0249-11 ",.01)
 ;;43547-0249-11
 ;;9002226.02101,"1876,43547-0249-11 ",.02)
 ;;43547-0249-11
 ;;9002226.02101,"1876,43547-0249-50 ",.01)
 ;;43547-0249-50
 ;;9002226.02101,"1876,43547-0249-50 ",.02)
 ;;43547-0249-50
 ;;9002226.02101,"1876,43547-0250-10 ",.01)
 ;;43547-0250-10
 ;;9002226.02101,"1876,43547-0250-10 ",.02)
 ;;43547-0250-10
 ;;9002226.02101,"1876,43547-0250-11 ",.01)
 ;;43547-0250-11
 ;;9002226.02101,"1876,43547-0250-11 ",.02)
 ;;43547-0250-11
 ;;9002226.02101,"1876,43547-0250-50 ",.01)
 ;;43547-0250-50
 ;;9002226.02101,"1876,43547-0250-50 ",.02)
 ;;43547-0250-50
 ;;9002226.02101,"1876,43547-0320-10 ",.01)
 ;;43547-0320-10
 ;;9002226.02101,"1876,43547-0320-10 ",.02)
 ;;43547-0320-10
 ;;9002226.02101,"1876,43547-0320-11 ",.01)
 ;;43547-0320-11
 ;;9002226.02101,"1876,43547-0320-11 ",.02)
 ;;43547-0320-11
 ;;9002226.02101,"1876,43547-0320-50 ",.01)
 ;;43547-0320-50
 ;;9002226.02101,"1876,43547-0320-50 ",.02)
 ;;43547-0320-50
 ;;9002226.02101,"1876,43547-0321-10 ",.01)
 ;;43547-0321-10
 ;;9002226.02101,"1876,43547-0321-10 ",.02)
 ;;43547-0321-10
 ;;9002226.02101,"1876,43547-0321-50 ",.01)
 ;;43547-0321-50
 ;;9002226.02101,"1876,43547-0321-50 ",.02)
 ;;43547-0321-50
 ;;9002226.02101,"1876,43547-0322-10 ",.01)
 ;;43547-0322-10
 ;;9002226.02101,"1876,43547-0322-10 ",.02)
 ;;43547-0322-10
 ;;9002226.02101,"1876,43547-0322-50 ",.01)
 ;;43547-0322-50
 ;;9002226.02101,"1876,43547-0322-50 ",.02)
 ;;43547-0322-50
 ;;9002226.02101,"1876,43547-0357-10 ",.01)
 ;;43547-0357-10
 ;;9002226.02101,"1876,43547-0357-10 ",.02)
 ;;43547-0357-10
 ;;9002226.02101,"1876,43547-0357-11 ",.01)
 ;;43547-0357-11
 ;;9002226.02101,"1876,43547-0357-11 ",.02)
 ;;43547-0357-11
 ;;9002226.02101,"1876,43547-0357-50 ",.01)
 ;;43547-0357-50
 ;;9002226.02101,"1876,43547-0357-50 ",.02)
 ;;43547-0357-50
 ;;9002226.02101,"1876,43547-0358-10 ",.01)
 ;;43547-0358-10
 ;;9002226.02101,"1876,43547-0358-10 ",.02)
 ;;43547-0358-10
 ;;9002226.02101,"1876,43547-0358-50 ",.01)
 ;;43547-0358-50
 ;;9002226.02101,"1876,43547-0358-50 ",.02)
 ;;43547-0358-50
 ;;9002226.02101,"1876,43547-0359-10 ",.01)
 ;;43547-0359-10
 ;;9002226.02101,"1876,43547-0359-10 ",.02)
 ;;43547-0359-10
 ;;9002226.02101,"1876,43547-0359-50 ",.01)
 ;;43547-0359-50
 ;;9002226.02101,"1876,43547-0359-50 ",.02)
 ;;43547-0359-50
 ;;9002226.02101,"1876,43683-0123-60 ",.01)
 ;;43683-0123-60
 ;;9002226.02101,"1876,43683-0123-60 ",.02)
 ;;43683-0123-60
 ;;9002226.02101,"1876,43683-0124-30 ",.01)
 ;;43683-0124-30
 ;;9002226.02101,"1876,43683-0124-30 ",.02)
 ;;43683-0124-30
 ;;9002226.02101,"1876,43683-0131-30 ",.01)
 ;;43683-0131-30
 ;;9002226.02101,"1876,43683-0131-30 ",.02)
 ;;43683-0131-30
 ;;9002226.02101,"1876,43683-0131-60 ",.01)
 ;;43683-0131-60
 ;;9002226.02101,"1876,43683-0131-60 ",.02)
 ;;43683-0131-60
 ;;9002226.02101,"1876,43683-0132-30 ",.01)
 ;;43683-0132-30
 ;;9002226.02101,"1876,43683-0132-30 ",.02)
 ;;43683-0132-30
 ;;9002226.02101,"1876,43683-0132-60 ",.01)
 ;;43683-0132-60
 ;;9002226.02101,"1876,43683-0132-60 ",.02)
 ;;43683-0132-60
 ;;9002226.02101,"1876,45802-0087-65 ",.01)
 ;;45802-0087-65
 ;;9002226.02101,"1876,45802-0087-65 ",.02)
 ;;45802-0087-65
 ;;9002226.02101,"1876,45802-0103-65 ",.01)
 ;;45802-0103-65
 ;;9002226.02101,"1876,45802-0103-65 ",.02)
 ;;45802-0103-65
 ;;9002226.02101,"1876,45802-0150-65 ",.01)
 ;;45802-0150-65
 ;;9002226.02101,"1876,45802-0150-65 ",.02)
 ;;45802-0150-65
 ;;9002226.02101,"1876,45802-0169-72 ",.01)
 ;;45802-0169-72
 ;;9002226.02101,"1876,45802-0169-72 ",.02)
 ;;45802-0169-72
 ;;9002226.02101,"1876,45802-0211-72 ",.01)
 ;;45802-0211-72
 ;;9002226.02101,"1876,45802-0211-72 ",.02)
 ;;45802-0211-72
 ;;9002226.02101,"1876,45802-0238-65 ",.01)
 ;;45802-0238-65
 ;;9002226.02101,"1876,45802-0238-65 ",.02)
 ;;45802-0238-65
 ;;9002226.02101,"1876,45802-0260-65 ",.01)
 ;;45802-0260-65
 ;;9002226.02101,"1876,45802-0260-65 ",.02)
 ;;45802-0260-65
 ;;9002226.02101,"1876,45802-0304-65 ",.01)
 ;;45802-0304-65
 ;;9002226.02101,"1876,45802-0304-65 ",.02)
 ;;45802-0304-65
 ;;9002226.02101,"1876,45802-0351-65 ",.01)
 ;;45802-0351-65
 ;;9002226.02101,"1876,45802-0351-65 ",.02)
 ;;45802-0351-65
 ;;9002226.02101,"1876,45802-0402-65 ",.01)
 ;;45802-0402-65
 ;;9002226.02101,"1876,45802-0402-65 ",.02)
 ;;45802-0402-65
 ;;9002226.02101,"1876,45802-0499-65 ",.01)
 ;;45802-0499-65
 ;;9002226.02101,"1876,45802-0499-65 ",.02)
 ;;45802-0499-65
 ;;9002226.02101,"1876,45802-0770-78 ",.01)
 ;;45802-0770-78
 ;;9002226.02101,"1876,45802-0770-78 ",.02)
 ;;45802-0770-78
 ;;9002226.02101,"1876,45802-0822-78 ",.01)
 ;;45802-0822-78
 ;;9002226.02101,"1876,45802-0822-78 ",.02)
 ;;45802-0822-78
 ;;9002226.02101,"1876,45802-0947-78 ",.01)
 ;;45802-0947-78
 ;;9002226.02101,"1876,45802-0947-78 ",.02)
 ;;45802-0947-78
 ;;9002226.02101,"1876,45963-0753-02 ",.01)
 ;;45963-0753-02
 ;;9002226.02101,"1876,45963-0753-02 ",.02)
 ;;45963-0753-02
 ;;9002226.02101,"1876,47463-0241-30 ",.01)
 ;;47463-0241-30
 ;;9002226.02101,"1876,47463-0241-30 ",.02)
 ;;47463-0241-30
 ;;9002226.02101,"1876,47463-0242-30 ",.01)
 ;;47463-0242-30
