BGP71W12 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1221,53002-1422-06 ",.02)
 ;;53002-1422-06
 ;;9002226.02101,"1221,53002-1445-00 ",.01)
 ;;53002-1445-00
 ;;9002226.02101,"1221,53002-1445-00 ",.02)
 ;;53002-1445-00
 ;;9002226.02101,"1221,53002-1445-03 ",.01)
 ;;53002-1445-03
 ;;9002226.02101,"1221,53002-1445-03 ",.02)
 ;;53002-1445-03
 ;;9002226.02101,"1221,53002-1445-06 ",.01)
 ;;53002-1445-06
 ;;9002226.02101,"1221,53002-1445-06 ",.02)
 ;;53002-1445-06
 ;;9002226.02101,"1221,53746-0178-01 ",.01)
 ;;53746-0178-01
 ;;9002226.02101,"1221,53746-0178-01 ",.02)
 ;;53746-0178-01
 ;;9002226.02101,"1221,53746-0178-05 ",.01)
 ;;53746-0178-05
 ;;9002226.02101,"1221,53746-0178-05 ",.02)
 ;;53746-0178-05
 ;;9002226.02101,"1221,53746-0178-10 ",.01)
 ;;53746-0178-10
 ;;9002226.02101,"1221,53746-0178-10 ",.02)
 ;;53746-0178-10
 ;;9002226.02101,"1221,53746-0178-90 ",.01)
 ;;53746-0178-90
 ;;9002226.02101,"1221,53746-0178-90 ",.02)
 ;;53746-0178-90
 ;;9002226.02101,"1221,53746-0179-01 ",.01)
 ;;53746-0179-01
 ;;9002226.02101,"1221,53746-0179-01 ",.02)
 ;;53746-0179-01
 ;;9002226.02101,"1221,53746-0179-05 ",.01)
 ;;53746-0179-05
 ;;9002226.02101,"1221,53746-0179-05 ",.02)
 ;;53746-0179-05
 ;;9002226.02101,"1221,53746-0218-01 ",.01)
 ;;53746-0218-01
 ;;9002226.02101,"1221,53746-0218-01 ",.02)
 ;;53746-0218-01
 ;;9002226.02101,"1221,53746-0218-05 ",.01)
 ;;53746-0218-05
 ;;9002226.02101,"1221,53746-0218-05 ",.02)
 ;;53746-0218-05
 ;;9002226.02101,"1221,53746-0218-10 ",.01)
 ;;53746-0218-10
 ;;9002226.02101,"1221,53746-0218-10 ",.02)
 ;;53746-0218-10
 ;;9002226.02101,"1221,53746-0219-01 ",.01)
 ;;53746-0219-01
 ;;9002226.02101,"1221,53746-0219-01 ",.02)
 ;;53746-0219-01
 ;;9002226.02101,"1221,53746-0219-05 ",.01)
 ;;53746-0219-05
 ;;9002226.02101,"1221,53746-0219-05 ",.02)
 ;;53746-0219-05
 ;;9002226.02101,"1221,53746-0219-10 ",.01)
 ;;53746-0219-10
 ;;9002226.02101,"1221,53746-0219-10 ",.02)
 ;;53746-0219-10
 ;;9002226.02101,"1221,53746-0220-01 ",.01)
 ;;53746-0220-01
 ;;9002226.02101,"1221,53746-0220-01 ",.02)
 ;;53746-0220-01
 ;;9002226.02101,"1221,53746-0220-05 ",.01)
 ;;53746-0220-05
 ;;9002226.02101,"1221,53746-0220-05 ",.02)
 ;;53746-0220-05
 ;;9002226.02101,"1221,53746-0220-10 ",.01)
 ;;53746-0220-10
 ;;9002226.02101,"1221,53746-0220-10 ",.02)
 ;;53746-0220-10
 ;;9002226.02101,"1221,54569-4202-02 ",.01)
 ;;54569-4202-02
 ;;9002226.02101,"1221,54569-4202-02 ",.02)
 ;;54569-4202-02
 ;;9002226.02101,"1221,54569-4740-00 ",.01)
 ;;54569-4740-00
 ;;9002226.02101,"1221,54569-4740-00 ",.02)
 ;;54569-4740-00
 ;;9002226.02101,"1221,54569-5353-00 ",.01)
 ;;54569-5353-00
 ;;9002226.02101,"1221,54569-5353-00 ",.02)
 ;;54569-5353-00
 ;;9002226.02101,"1221,54569-5353-02 ",.01)
 ;;54569-5353-02
 ;;9002226.02101,"1221,54569-5353-02 ",.02)
 ;;54569-5353-02
 ;;9002226.02101,"1221,54569-5353-03 ",.01)
 ;;54569-5353-03
 ;;9002226.02101,"1221,54569-5353-03 ",.02)
 ;;54569-5353-03
 ;;9002226.02101,"1221,54569-5353-04 ",.01)
 ;;54569-5353-04
 ;;9002226.02101,"1221,54569-5353-04 ",.02)
 ;;54569-5353-04
 ;;9002226.02101,"1221,54569-5353-05 ",.01)
 ;;54569-5353-05
 ;;9002226.02101,"1221,54569-5353-05 ",.02)
 ;;54569-5353-05
 ;;9002226.02101,"1221,54569-5353-06 ",.01)
 ;;54569-5353-06
 ;;9002226.02101,"1221,54569-5353-06 ",.02)
 ;;54569-5353-06
 ;;9002226.02101,"1221,54569-5360-00 ",.01)
 ;;54569-5360-00
 ;;9002226.02101,"1221,54569-5360-00 ",.02)
 ;;54569-5360-00
 ;;9002226.02101,"1221,54569-5360-03 ",.01)
 ;;54569-5360-03
 ;;9002226.02101,"1221,54569-5360-03 ",.02)
 ;;54569-5360-03
 ;;9002226.02101,"1221,54569-5360-04 ",.01)
 ;;54569-5360-04
 ;;9002226.02101,"1221,54569-5360-04 ",.02)
 ;;54569-5360-04
 ;;9002226.02101,"1221,54569-5360-05 ",.01)
 ;;54569-5360-05
 ;;9002226.02101,"1221,54569-5360-05 ",.02)
 ;;54569-5360-05
 ;;9002226.02101,"1221,54569-5360-06 ",.01)
 ;;54569-5360-06
 ;;9002226.02101,"1221,54569-5360-06 ",.02)
 ;;54569-5360-06
 ;;9002226.02101,"1221,54569-5373-00 ",.01)
 ;;54569-5373-00
 ;;9002226.02101,"1221,54569-5373-00 ",.02)
 ;;54569-5373-00
 ;;9002226.02101,"1221,54569-5373-02 ",.01)
 ;;54569-5373-02
 ;;9002226.02101,"1221,54569-5373-02 ",.02)
 ;;54569-5373-02
 ;;9002226.02101,"1221,54569-5373-03 ",.01)
 ;;54569-5373-03
 ;;9002226.02101,"1221,54569-5373-03 ",.02)
 ;;54569-5373-03
 ;;9002226.02101,"1221,54569-5373-04 ",.01)
 ;;54569-5373-04
 ;;9002226.02101,"1221,54569-5373-04 ",.02)
 ;;54569-5373-04
 ;;9002226.02101,"1221,54569-5373-05 ",.01)
 ;;54569-5373-05
 ;;9002226.02101,"1221,54569-5373-05 ",.02)
 ;;54569-5373-05
 ;;9002226.02101,"1221,54569-5546-00 ",.01)
 ;;54569-5546-00
 ;;9002226.02101,"1221,54569-5546-00 ",.02)
 ;;54569-5546-00
 ;;9002226.02101,"1221,54569-5546-01 ",.01)
 ;;54569-5546-01
 ;;9002226.02101,"1221,54569-5546-01 ",.02)
 ;;54569-5546-01
 ;;9002226.02101,"1221,54569-5546-02 ",.01)
 ;;54569-5546-02
 ;;9002226.02101,"1221,54569-5546-02 ",.02)
 ;;54569-5546-02
 ;;9002226.02101,"1221,54569-5546-03 ",.01)
 ;;54569-5546-03
 ;;9002226.02101,"1221,54569-5546-03 ",.02)
 ;;54569-5546-03
 ;;9002226.02101,"1221,54569-5618-00 ",.01)
 ;;54569-5618-00
 ;;9002226.02101,"1221,54569-5618-00 ",.02)
 ;;54569-5618-00
 ;;9002226.02101,"1221,54569-5618-01 ",.01)
 ;;54569-5618-01
 ;;9002226.02101,"1221,54569-5618-01 ",.02)
 ;;54569-5618-01
 ;;9002226.02101,"1221,54569-5618-02 ",.01)
 ;;54569-5618-02
 ;;9002226.02101,"1221,54569-5618-02 ",.02)
 ;;54569-5618-02
 ;;9002226.02101,"1221,54569-5618-03 ",.01)
 ;;54569-5618-03
 ;;9002226.02101,"1221,54569-5618-03 ",.02)
 ;;54569-5618-03
 ;;9002226.02101,"1221,54569-5619-00 ",.01)
 ;;54569-5619-00
 ;;9002226.02101,"1221,54569-5619-00 ",.02)
 ;;54569-5619-00
 ;;9002226.02101,"1221,54569-5619-01 ",.01)
 ;;54569-5619-01
 ;;9002226.02101,"1221,54569-5619-01 ",.02)
 ;;54569-5619-01
 ;;9002226.02101,"1221,54569-5619-02 ",.01)
 ;;54569-5619-02
 ;;9002226.02101,"1221,54569-5619-02 ",.02)
 ;;54569-5619-02
 ;;9002226.02101,"1221,54569-5619-03 ",.01)
 ;;54569-5619-03
 ;;9002226.02101,"1221,54569-5619-03 ",.02)
 ;;54569-5619-03
 ;;9002226.02101,"1221,54569-5619-04 ",.01)
 ;;54569-5619-04
 ;;9002226.02101,"1221,54569-5619-04 ",.02)
 ;;54569-5619-04
 ;;9002226.02101,"1221,54569-5992-00 ",.01)
 ;;54569-5992-00
 ;;9002226.02101,"1221,54569-5992-00 ",.02)
 ;;54569-5992-00
 ;;9002226.02101,"1221,54569-5992-01 ",.01)
 ;;54569-5992-01
 ;;9002226.02101,"1221,54569-5992-01 ",.02)
 ;;54569-5992-01
 ;;9002226.02101,"1221,54569-5993-00 ",.01)
 ;;54569-5993-00
 ;;9002226.02101,"1221,54569-5993-00 ",.02)
 ;;54569-5993-00
 ;;9002226.02101,"1221,54569-5993-01 ",.01)
 ;;54569-5993-01
 ;;9002226.02101,"1221,54569-5993-01 ",.02)
 ;;54569-5993-01
 ;;9002226.02101,"1221,54569-6523-00 ",.01)
 ;;54569-6523-00
 ;;9002226.02101,"1221,54569-6523-00 ",.02)
 ;;54569-6523-00
 ;;9002226.02101,"1221,54569-6523-01 ",.01)
 ;;54569-6523-01
 ;;9002226.02101,"1221,54569-6523-01 ",.02)
 ;;54569-6523-01
 ;;9002226.02101,"1221,54738-0925-01 ",.01)
 ;;54738-0925-01
 ;;9002226.02101,"1221,54738-0925-01 ",.02)
 ;;54738-0925-01
 ;;9002226.02101,"1221,54738-0925-02 ",.01)
 ;;54738-0925-02
 ;;9002226.02101,"1221,54738-0925-02 ",.02)
 ;;54738-0925-02
 ;;9002226.02101,"1221,54738-0925-03 ",.01)
 ;;54738-0925-03
 ;;9002226.02101,"1221,54738-0925-03 ",.02)
 ;;54738-0925-03
 ;;9002226.02101,"1221,54738-0926-01 ",.01)
 ;;54738-0926-01
 ;;9002226.02101,"1221,54738-0926-01 ",.02)
 ;;54738-0926-01
 ;;9002226.02101,"1221,54738-0926-02 ",.01)
 ;;54738-0926-02
 ;;9002226.02101,"1221,54738-0926-02 ",.02)
 ;;54738-0926-02
 ;;9002226.02101,"1221,54738-0926-03 ",.01)
 ;;54738-0926-03
 ;;9002226.02101,"1221,54738-0926-03 ",.02)
 ;;54738-0926-03
 ;;9002226.02101,"1221,54738-0927-01 ",.01)
 ;;54738-0927-01
 ;;9002226.02101,"1221,54738-0927-01 ",.02)
 ;;54738-0927-01
 ;;9002226.02101,"1221,54738-0927-02 ",.01)
 ;;54738-0927-02
 ;;9002226.02101,"1221,54738-0927-02 ",.02)
 ;;54738-0927-02
 ;;9002226.02101,"1221,54738-0927-03 ",.01)
 ;;54738-0927-03
 ;;9002226.02101,"1221,54738-0927-03 ",.02)
 ;;54738-0927-03
 ;;9002226.02101,"1221,54868-0795-00 ",.01)
 ;;54868-0795-00
 ;;9002226.02101,"1221,54868-0795-00 ",.02)
 ;;54868-0795-00
 ;;9002226.02101,"1221,54868-0830-00 ",.01)
 ;;54868-0830-00
 ;;9002226.02101,"1221,54868-0830-00 ",.02)
 ;;54868-0830-00
 ;;9002226.02101,"1221,54868-0830-01 ",.01)
 ;;54868-0830-01
 ;;9002226.02101,"1221,54868-0830-01 ",.02)
 ;;54868-0830-01
 ;;9002226.02101,"1221,54868-1097-00 ",.01)
 ;;54868-1097-00
 ;;9002226.02101,"1221,54868-1097-00 ",.02)
 ;;54868-1097-00
 ;;9002226.02101,"1221,54868-1097-01 ",.01)
 ;;54868-1097-01
 ;;9002226.02101,"1221,54868-1097-01 ",.02)
 ;;54868-1097-01
 ;;9002226.02101,"1221,54868-2894-00 ",.01)
 ;;54868-2894-00
 ;;9002226.02101,"1221,54868-2894-00 ",.02)
 ;;54868-2894-00
 ;;9002226.02101,"1221,54868-3546-00 ",.01)
 ;;54868-3546-00
 ;;9002226.02101,"1221,54868-3546-00 ",.02)
 ;;54868-3546-00
 ;;9002226.02101,"1221,54868-3546-01 ",.01)
 ;;54868-3546-01
 ;;9002226.02101,"1221,54868-3546-01 ",.02)
 ;;54868-3546-01
 ;;9002226.02101,"1221,54868-4529-00 ",.01)
 ;;54868-4529-00
 ;;9002226.02101,"1221,54868-4529-00 ",.02)
 ;;54868-4529-00
 ;;9002226.02101,"1221,54868-4529-01 ",.01)
 ;;54868-4529-01
 ;;9002226.02101,"1221,54868-4529-01 ",.02)
 ;;54868-4529-01
 ;;9002226.02101,"1221,54868-4529-02 ",.01)
 ;;54868-4529-02
 ;;9002226.02101,"1221,54868-4529-02 ",.02)
 ;;54868-4529-02
 ;;9002226.02101,"1221,54868-4529-03 ",.01)
 ;;54868-4529-03
 ;;9002226.02101,"1221,54868-4529-03 ",.02)
 ;;54868-4529-03
 ;;9002226.02101,"1221,54868-4561-00 ",.01)
 ;;54868-4561-00
 ;;9002226.02101,"1221,54868-4561-00 ",.02)
 ;;54868-4561-00
 ;;9002226.02101,"1221,54868-4561-01 ",.01)
 ;;54868-4561-01
 ;;9002226.02101,"1221,54868-4561-01 ",.02)
 ;;54868-4561-01
 ;;9002226.02101,"1221,54868-4561-02 ",.01)
 ;;54868-4561-02
 ;;9002226.02101,"1221,54868-4561-02 ",.02)
 ;;54868-4561-02
 ;;9002226.02101,"1221,54868-4561-03 ",.01)
 ;;54868-4561-03
 ;;9002226.02101,"1221,54868-4561-03 ",.02)
 ;;54868-4561-03
 ;;9002226.02101,"1221,54868-4561-04 ",.01)
 ;;54868-4561-04
 ;;9002226.02101,"1221,54868-4561-04 ",.02)
 ;;54868-4561-04
 ;;9002226.02101,"1221,54868-4564-00 ",.01)
 ;;54868-4564-00
 ;;9002226.02101,"1221,54868-4564-00 ",.02)
 ;;54868-4564-00
 ;;9002226.02101,"1221,54868-4564-01 ",.01)
 ;;54868-4564-01
 ;;9002226.02101,"1221,54868-4564-01 ",.02)
 ;;54868-4564-01
 ;;9002226.02101,"1221,54868-4564-02 ",.01)
 ;;54868-4564-02
 ;;9002226.02101,"1221,54868-4564-02 ",.02)
 ;;54868-4564-02
 ;;9002226.02101,"1221,54868-4564-03 ",.01)
 ;;54868-4564-03
 ;;9002226.02101,"1221,54868-4564-03 ",.02)
 ;;54868-4564-03
 ;;9002226.02101,"1221,54868-4564-04 ",.01)
 ;;54868-4564-04
 ;;9002226.02101,"1221,54868-4564-04 ",.02)
 ;;54868-4564-04
 ;;9002226.02101,"1221,54868-4564-05 ",.01)
 ;;54868-4564-05
 ;;9002226.02101,"1221,54868-4564-05 ",.02)
 ;;54868-4564-05
 ;;9002226.02101,"1221,54868-4566-00 ",.01)
 ;;54868-4566-00
 ;;9002226.02101,"1221,54868-4566-00 ",.02)
 ;;54868-4566-00
 ;;9002226.02101,"1221,54868-4566-01 ",.01)
 ;;54868-4566-01
 ;;9002226.02101,"1221,54868-4566-01 ",.02)
 ;;54868-4566-01
 ;;9002226.02101,"1221,54868-4566-02 ",.01)
 ;;54868-4566-02
 ;;9002226.02101,"1221,54868-4566-02 ",.02)
 ;;54868-4566-02
 ;;9002226.02101,"1221,54868-4566-03 ",.01)
 ;;54868-4566-03
 ;;9002226.02101,"1221,54868-4566-03 ",.02)
 ;;54868-4566-03
 ;;9002226.02101,"1221,54868-4566-04 ",.01)
 ;;54868-4566-04
 ;;9002226.02101,"1221,54868-4566-04 ",.02)
 ;;54868-4566-04
 ;;9002226.02101,"1221,54868-4609-00 ",.01)
 ;;54868-4609-00
 ;;9002226.02101,"1221,54868-4609-00 ",.02)
 ;;54868-4609-00
 ;;9002226.02101,"1221,54868-4609-01 ",.01)
 ;;54868-4609-01
 ;;9002226.02101,"1221,54868-4609-01 ",.02)
 ;;54868-4609-01
