BGP53N5 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 24, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"747,54569-5242-00 ",.02)
 ;;54569-5242-00
 ;;9002226.02101,"747,54569-5243-00 ",.01)
 ;;54569-5243-00
 ;;9002226.02101,"747,54569-5243-00 ",.02)
 ;;54569-5243-00
 ;;9002226.02101,"747,54569-5663-00 ",.01)
 ;;54569-5663-00
 ;;9002226.02101,"747,54569-5663-00 ",.02)
 ;;54569-5663-00
 ;;9002226.02101,"747,54569-5671-00 ",.01)
 ;;54569-5671-00
 ;;9002226.02101,"747,54569-5671-00 ",.02)
 ;;54569-5671-00
 ;;9002226.02101,"747,54569-5928-00 ",.01)
 ;;54569-5928-00
 ;;9002226.02101,"747,54569-5928-00 ",.02)
 ;;54569-5928-00
 ;;9002226.02101,"747,54569-6265-00 ",.01)
 ;;54569-6265-00
 ;;9002226.02101,"747,54569-6265-00 ",.02)
 ;;54569-6265-00
 ;;9002226.02101,"747,54569-6266-00 ",.01)
 ;;54569-6266-00
 ;;9002226.02101,"747,54569-6266-00 ",.02)
 ;;54569-6266-00
 ;;9002226.02101,"747,54569-6321-00 ",.01)
 ;;54569-6321-00
 ;;9002226.02101,"747,54569-6321-00 ",.02)
 ;;54569-6321-00
 ;;9002226.02101,"747,54569-6348-00 ",.01)
 ;;54569-6348-00
 ;;9002226.02101,"747,54569-6348-00 ",.02)
 ;;54569-6348-00
 ;;9002226.02101,"747,54838-0556-80 ",.01)
 ;;54838-0556-80
 ;;9002226.02101,"747,54838-0556-80 ",.02)
 ;;54838-0556-80
 ;;9002226.02101,"747,54868-0028-00 ",.01)
 ;;54868-0028-00
 ;;9002226.02101,"747,54868-0028-00 ",.02)
 ;;54868-0028-00
 ;;9002226.02101,"747,54868-0028-01 ",.01)
 ;;54868-0028-01
 ;;9002226.02101,"747,54868-0028-01 ",.02)
 ;;54868-0028-01
 ;;9002226.02101,"747,54868-0028-02 ",.01)
 ;;54868-0028-02
 ;;9002226.02101,"747,54868-0028-02 ",.02)
 ;;54868-0028-02
 ;;9002226.02101,"747,54868-0028-03 ",.01)
 ;;54868-0028-03
 ;;9002226.02101,"747,54868-0028-03 ",.02)
 ;;54868-0028-03
 ;;9002226.02101,"747,54868-0028-05 ",.01)
 ;;54868-0028-05
 ;;9002226.02101,"747,54868-0028-05 ",.02)
 ;;54868-0028-05
 ;;9002226.02101,"747,54868-0028-06 ",.01)
 ;;54868-0028-06
 ;;9002226.02101,"747,54868-0028-06 ",.02)
 ;;54868-0028-06
 ;;9002226.02101,"747,54868-0029-00 ",.01)
 ;;54868-0029-00
 ;;9002226.02101,"747,54868-0029-00 ",.02)
 ;;54868-0029-00
 ;;9002226.02101,"747,54868-0029-02 ",.01)
 ;;54868-0029-02
 ;;9002226.02101,"747,54868-0029-02 ",.02)
 ;;54868-0029-02
 ;;9002226.02101,"747,54868-0029-03 ",.01)
 ;;54868-0029-03
 ;;9002226.02101,"747,54868-0029-03 ",.02)
 ;;54868-0029-03
 ;;9002226.02101,"747,54868-0029-05 ",.01)
 ;;54868-0029-05
 ;;9002226.02101,"747,54868-0029-05 ",.02)
 ;;54868-0029-05
 ;;9002226.02101,"747,54868-0029-06 ",.01)
 ;;54868-0029-06
 ;;9002226.02101,"747,54868-0029-06 ",.02)
 ;;54868-0029-06
 ;;9002226.02101,"747,54868-0029-07 ",.01)
 ;;54868-0029-07
 ;;9002226.02101,"747,54868-0029-07 ",.02)
 ;;54868-0029-07
 ;;9002226.02101,"747,54868-1438-00 ",.01)
 ;;54868-1438-00
 ;;9002226.02101,"747,54868-1438-00 ",.02)
 ;;54868-1438-00
 ;;9002226.02101,"747,54868-1438-01 ",.01)
 ;;54868-1438-01
 ;;9002226.02101,"747,54868-1438-01 ",.02)
 ;;54868-1438-01
 ;;9002226.02101,"747,54868-1461-01 ",.01)
 ;;54868-1461-01
 ;;9002226.02101,"747,54868-1461-01 ",.02)
 ;;54868-1461-01
 ;;9002226.02101,"747,54868-1461-02 ",.01)
 ;;54868-1461-02
 ;;9002226.02101,"747,54868-1461-02 ",.02)
 ;;54868-1461-02
 ;;9002226.02101,"747,54868-1883-01 ",.01)
 ;;54868-1883-01
 ;;9002226.02101,"747,54868-1883-01 ",.02)
 ;;54868-1883-01
 ;;9002226.02101,"747,54868-1894-02 ",.01)
 ;;54868-1894-02
 ;;9002226.02101,"747,54868-1894-02 ",.02)
 ;;54868-1894-02
 ;;9002226.02101,"747,54868-2710-00 ",.01)
 ;;54868-2710-00
 ;;9002226.02101,"747,54868-2710-00 ",.02)
 ;;54868-2710-00
 ;;9002226.02101,"747,54868-2710-01 ",.01)
 ;;54868-2710-01
 ;;9002226.02101,"747,54868-2710-01 ",.02)
 ;;54868-2710-01
 ;;9002226.02101,"747,54868-2822-00 ",.01)
 ;;54868-2822-00
 ;;9002226.02101,"747,54868-2822-00 ",.02)
 ;;54868-2822-00
 ;;9002226.02101,"747,54868-3283-00 ",.01)
 ;;54868-3283-00
 ;;9002226.02101,"747,54868-3283-00 ",.02)
 ;;54868-3283-00
 ;;9002226.02101,"747,54868-3283-01 ",.01)
 ;;54868-3283-01
 ;;9002226.02101,"747,54868-3283-01 ",.02)
 ;;54868-3283-01
 ;;9002226.02101,"747,54868-3283-02 ",.01)
 ;;54868-3283-02
 ;;9002226.02101,"747,54868-3283-02 ",.02)
 ;;54868-3283-02
 ;;9002226.02101,"747,54868-4172-00 ",.01)
 ;;54868-4172-00
 ;;9002226.02101,"747,54868-4172-00 ",.02)
 ;;54868-4172-00
 ;;9002226.02101,"747,54868-4172-01 ",.01)
 ;;54868-4172-01
 ;;9002226.02101,"747,54868-4172-01 ",.02)
 ;;54868-4172-01
 ;;9002226.02101,"747,54868-4172-02 ",.01)
 ;;54868-4172-02
 ;;9002226.02101,"747,54868-4172-02 ",.02)
 ;;54868-4172-02
 ;;9002226.02101,"747,54868-4516-00 ",.01)
 ;;54868-4516-00
 ;;9002226.02101,"747,54868-4516-00 ",.02)
 ;;54868-4516-00
 ;;9002226.02101,"747,54868-4517-00 ",.01)
 ;;54868-4517-00
 ;;9002226.02101,"747,54868-4517-00 ",.02)
 ;;54868-4517-00
 ;;9002226.02101,"747,54868-4518-00 ",.01)
 ;;54868-4518-00
 ;;9002226.02101,"747,54868-4518-00 ",.02)
 ;;54868-4518-00
 ;;9002226.02101,"747,54868-4630-00 ",.01)
 ;;54868-4630-00
 ;;9002226.02101,"747,54868-4630-00 ",.02)
 ;;54868-4630-00
 ;;9002226.02101,"747,54868-4847-00 ",.01)
 ;;54868-4847-00
 ;;9002226.02101,"747,54868-4847-00 ",.02)
 ;;54868-4847-00
 ;;9002226.02101,"747,54868-5294-00 ",.01)
 ;;54868-5294-00
 ;;9002226.02101,"747,54868-5294-00 ",.02)
 ;;54868-5294-00
 ;;9002226.02101,"747,54868-5362-00 ",.01)
 ;;54868-5362-00
 ;;9002226.02101,"747,54868-5362-00 ",.02)
 ;;54868-5362-00
 ;;9002226.02101,"747,54868-5547-00 ",.01)
 ;;54868-5547-00
 ;;9002226.02101,"747,54868-5547-00 ",.02)
 ;;54868-5547-00
 ;;9002226.02101,"747,54868-5547-01 ",.01)
 ;;54868-5547-01
 ;;9002226.02101,"747,54868-5547-01 ",.02)
 ;;54868-5547-01
 ;;9002226.02101,"747,54868-5547-02 ",.01)
 ;;54868-5547-02
 ;;9002226.02101,"747,54868-5547-02 ",.02)
 ;;54868-5547-02
 ;;9002226.02101,"747,54868-5637-00 ",.01)
 ;;54868-5637-00
 ;;9002226.02101,"747,54868-5637-00 ",.02)
 ;;54868-5637-00
 ;;9002226.02101,"747,54868-5844-00 ",.01)
 ;;54868-5844-00
 ;;9002226.02101,"747,54868-5844-00 ",.02)
 ;;54868-5844-00
 ;;9002226.02101,"747,54868-5857-00 ",.01)
 ;;54868-5857-00
 ;;9002226.02101,"747,54868-5857-00 ",.02)
 ;;54868-5857-00
 ;;9002226.02101,"747,54868-5858-00 ",.01)
 ;;54868-5858-00
 ;;9002226.02101,"747,54868-5858-00 ",.02)
 ;;54868-5858-00
 ;;9002226.02101,"747,54868-5936-00 ",.01)
 ;;54868-5936-00
 ;;9002226.02101,"747,54868-5936-00 ",.02)
 ;;54868-5936-00
 ;;9002226.02101,"747,54868-5937-00 ",.01)
 ;;54868-5937-00
 ;;9002226.02101,"747,54868-5937-00 ",.02)
 ;;54868-5937-00
 ;;9002226.02101,"747,54868-5989-00 ",.01)
 ;;54868-5989-00
 ;;9002226.02101,"747,54868-5989-00 ",.02)
 ;;54868-5989-00
 ;;9002226.02101,"747,54868-5990-00 ",.01)
 ;;54868-5990-00
 ;;9002226.02101,"747,54868-5990-00 ",.02)
 ;;54868-5990-00
 ;;9002226.02101,"747,54868-5995-00 ",.01)
 ;;54868-5995-00
 ;;9002226.02101,"747,54868-5995-00 ",.02)
 ;;54868-5995-00
 ;;9002226.02101,"747,55045-1868-03 ",.01)
 ;;55045-1868-03
 ;;9002226.02101,"747,55045-1868-03 ",.02)
 ;;55045-1868-03
 ;;9002226.02101,"747,55045-2520-07 ",.01)
 ;;55045-2520-07
 ;;9002226.02101,"747,55045-2520-07 ",.02)
 ;;55045-2520-07
 ;;9002226.02101,"747,55045-3063-00 ",.01)
 ;;55045-3063-00
 ;;9002226.02101,"747,55045-3063-00 ",.02)
 ;;55045-3063-00
 ;;9002226.02101,"747,55045-3351-00 ",.01)
 ;;55045-3351-00
 ;;9002226.02101,"747,55045-3351-00 ",.02)
 ;;55045-3351-00
 ;;9002226.02101,"747,55045-3354-00 ",.01)
 ;;55045-3354-00
 ;;9002226.02101,"747,55045-3354-00 ",.02)
 ;;55045-3354-00
 ;;9002226.02101,"747,55045-3388-01 ",.01)
 ;;55045-3388-01
 ;;9002226.02101,"747,55045-3388-01 ",.02)
 ;;55045-3388-01
 ;;9002226.02101,"747,55045-3686-01 ",.01)
 ;;55045-3686-01
 ;;9002226.02101,"747,55045-3686-01 ",.02)
 ;;55045-3686-01
 ;;9002226.02101,"747,55045-3695-08 ",.01)
 ;;55045-3695-08
 ;;9002226.02101,"747,55045-3695-08 ",.02)
 ;;55045-3695-08
 ;;9002226.02101,"747,55045-3768-08 ",.01)
 ;;55045-3768-08
 ;;9002226.02101,"747,55045-3768-08 ",.02)
 ;;55045-3768-08
 ;;9002226.02101,"747,55111-0593-30 ",.01)
 ;;55111-0593-30
 ;;9002226.02101,"747,55111-0593-30 ",.02)
 ;;55111-0593-30
 ;;9002226.02101,"747,55111-0593-90 ",.01)
 ;;55111-0593-90
 ;;9002226.02101,"747,55111-0593-90 ",.02)
 ;;55111-0593-90
 ;;9002226.02101,"747,55111-0594-30 ",.01)
 ;;55111-0594-30
 ;;9002226.02101,"747,55111-0594-30 ",.02)
 ;;55111-0594-30
 ;;9002226.02101,"747,55111-0594-90 ",.01)
 ;;55111-0594-90
 ;;9002226.02101,"747,55111-0594-90 ",.02)
 ;;55111-0594-90
 ;;9002226.02101,"747,55111-0625-60 ",.01)
 ;;55111-0625-60
 ;;9002226.02101,"747,55111-0625-60 ",.02)
 ;;55111-0625-60
 ;;9002226.02101,"747,55111-0626-60 ",.01)
 ;;55111-0626-60
 ;;9002226.02101,"747,55111-0626-60 ",.02)
 ;;55111-0626-60
 ;;9002226.02101,"747,55111-0725-10 ",.01)
 ;;55111-0725-10
 ;;9002226.02101,"747,55111-0725-10 ",.02)
 ;;55111-0725-10
 ;;9002226.02101,"747,55111-0725-30 ",.01)
 ;;55111-0725-30
 ;;9002226.02101,"747,55111-0725-30 ",.02)
 ;;55111-0725-30
 ;;9002226.02101,"747,55111-0725-90 ",.01)
 ;;55111-0725-90
 ;;9002226.02101,"747,55111-0725-90 ",.02)
 ;;55111-0725-90
 ;;9002226.02101,"747,55111-0725-94 ",.01)
 ;;55111-0725-94
 ;;9002226.02101,"747,55111-0725-94 ",.02)
 ;;55111-0725-94
 ;;9002226.02101,"747,55111-0763-03 ",.01)
 ;;55111-0763-03
 ;;9002226.02101,"747,55111-0763-03 ",.02)
 ;;55111-0763-03
 ;;9002226.02101,"747,55289-0789-30 ",.01)
 ;;55289-0789-30
 ;;9002226.02101,"747,55289-0789-30 ",.02)
 ;;55289-0789-30
 ;;9002226.02101,"747,55289-0961-15 ",.01)
 ;;55289-0961-15
 ;;9002226.02101,"747,55289-0961-15 ",.02)
 ;;55289-0961-15
 ;;9002226.02101,"747,55289-0961-30 ",.01)
 ;;55289-0961-30
 ;;9002226.02101,"747,55289-0961-30 ",.02)
 ;;55289-0961-30
 ;;9002226.02101,"747,55289-0989-21 ",.01)
 ;;55289-0989-21
 ;;9002226.02101,"747,55289-0989-21 ",.02)
 ;;55289-0989-21
 ;;9002226.02101,"747,55289-0989-30 ",.01)
 ;;55289-0989-30
 ;;9002226.02101,"747,55289-0989-30 ",.02)
 ;;55289-0989-30
 ;;9002226.02101,"747,55289-0990-21 ",.01)
 ;;55289-0990-21
 ;;9002226.02101,"747,55289-0990-21 ",.02)
 ;;55289-0990-21
 ;;9002226.02101,"747,55289-0990-30 ",.01)
 ;;55289-0990-30
 ;;9002226.02101,"747,55289-0990-30 ",.02)
 ;;55289-0990-30
 ;;9002226.02101,"747,55887-0120-90 ",.01)
 ;;55887-0120-90
 ;;9002226.02101,"747,55887-0120-90 ",.02)
 ;;55887-0120-90
 ;;9002226.02101,"747,55887-0277-30 ",.01)
 ;;55887-0277-30
 ;;9002226.02101,"747,55887-0277-30 ",.02)
 ;;55887-0277-30
 ;;9002226.02101,"747,55887-0678-60 ",.01)
 ;;55887-0678-60
 ;;9002226.02101,"747,55887-0678-60 ",.02)
 ;;55887-0678-60
 ;;9002226.02101,"747,55887-0847-60 ",.01)
 ;;55887-0847-60
 ;;9002226.02101,"747,55887-0847-60 ",.02)
 ;;55887-0847-60
 ;;9002226.02101,"747,55887-0847-90 ",.01)
 ;;55887-0847-90
 ;;9002226.02101,"747,55887-0847-90 ",.02)
 ;;55887-0847-90
 ;;9002226.02101,"747,58016-4604-01 ",.01)
 ;;58016-4604-01
 ;;9002226.02101,"747,58016-4604-01 ",.02)
 ;;58016-4604-01
 ;;9002226.02101,"747,58016-4813-01 ",.01)
 ;;58016-4813-01
 ;;9002226.02101,"747,58016-4813-01 ",.02)
 ;;58016-4813-01
 ;;9002226.02101,"747,58864-0658-30 ",.01)
 ;;58864-0658-30
 ;;9002226.02101,"747,58864-0658-30 ",.02)
 ;;58864-0658-30
 ;;9002226.02101,"747,58864-0694-30 ",.01)
 ;;58864-0694-30
 ;;9002226.02101,"747,58864-0694-30 ",.02)
 ;;58864-0694-30
 ;;9002226.02101,"747,59243-0021-10 ",.01)
 ;;59243-0021-10
 ;;9002226.02101,"747,59243-0021-10 ",.02)
 ;;59243-0021-10
 ;;9002226.02101,"747,59310-0175-40 ",.01)
 ;;59310-0175-40
 ;;9002226.02101,"747,59310-0175-40 ",.02)
 ;;59310-0175-40
 ;;9002226.02101,"747,59310-0177-80 ",.01)
 ;;59310-0177-80
 ;;9002226.02101,"747,59310-0177-80 ",.02)
 ;;59310-0177-80
 ;;9002226.02101,"747,59310-0202-40 ",.01)
 ;;59310-0202-40
 ;;9002226.02101,"747,59310-0202-40 ",.02)
 ;;59310-0202-40
 ;;9002226.02101,"747,59310-0204-80 ",.01)
 ;;59310-0204-80
 ;;9002226.02101,"747,59310-0204-80 ",.02)
 ;;59310-0204-80
 ;;9002226.02101,"747,59762-0030-01 ",.01)
 ;;59762-0030-01
 ;;9002226.02101,"747,59762-0030-01 ",.02)
 ;;59762-0030-01
 ;;9002226.02101,"747,59762-0030-02 ",.01)
 ;;59762-0030-02
 ;;9002226.02101,"747,59762-0030-02 ",.02)
 ;;59762-0030-02
 ;;9002226.02101,"747,59762-0045-01 ",.01)
 ;;59762-0045-01
 ;;9002226.02101,"747,59762-0045-01 ",.02)
 ;;59762-0045-01
 ;;9002226.02101,"747,59762-0045-02 ",.01)
 ;;59762-0045-02
 ;;9002226.02101,"747,59762-0045-02 ",.02)
 ;;59762-0045-02
 ;;9002226.02101,"747,59762-0046-01 ",.01)
 ;;59762-0046-01
 ;;9002226.02101,"747,59762-0046-01 ",.02)
 ;;59762-0046-01
 ;;9002226.02101,"747,59762-0046-02 ",.01)
 ;;59762-0046-02
 ;;9002226.02101,"747,59762-0046-02 ",.02)
 ;;59762-0046-02
 ;;9002226.02101,"747,60258-0335-16 ",.01)
 ;;60258-0335-16
 ;;9002226.02101,"747,60258-0335-16 ",.02)
 ;;60258-0335-16
 ;;9002226.02101,"747,60258-0336-01 ",.01)
 ;;60258-0336-01
 ;;9002226.02101,"747,60258-0336-01 ",.02)
 ;;60258-0336-01
 ;;9002226.02101,"747,60258-0371-16 ",.01)
 ;;60258-0371-16
 ;;9002226.02101,"747,60258-0371-16 ",.02)
 ;;60258-0371-16
 ;;9002226.02101,"747,60346-0282-74 ",.01)
 ;;60346-0282-74
 ;;9002226.02101,"747,60346-0282-74 ",.02)
 ;;60346-0282-74
 ;;9002226.02101,"747,60505-3562-03 ",.01)
 ;;60505-3562-03
 ;;9002226.02101,"747,60505-3562-03 ",.02)
 ;;60505-3562-03
 ;;9002226.02101,"747,60505-3562-08 ",.01)
 ;;60505-3562-08
 ;;9002226.02101,"747,60505-3562-08 ",.02)
 ;;60505-3562-08
 ;;9002226.02101,"747,60505-3562-09 ",.01)
 ;;60505-3562-09
 ;;9002226.02101,"747,60505-3562-09 ",.02)
 ;;60505-3562-09
 ;;9002226.02101,"747,60505-3573-03 ",.01)
 ;;60505-3573-03
 ;;9002226.02101,"747,60505-3573-03 ",.02)
 ;;60505-3573-03
 ;;9002226.02101,"747,60505-3573-08 ",.01)
 ;;60505-3573-08
