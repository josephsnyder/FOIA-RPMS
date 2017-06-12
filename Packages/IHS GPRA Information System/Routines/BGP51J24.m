BGP51J24 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,58016-0341-60 ",.02)
 ;;58016-0341-60
 ;;9002226.02101,"730,58016-0341-90 ",.01)
 ;;58016-0341-90
 ;;9002226.02101,"730,58016-0341-90 ",.02)
 ;;58016-0341-90
 ;;9002226.02101,"730,58016-0342-00 ",.01)
 ;;58016-0342-00
 ;;9002226.02101,"730,58016-0342-00 ",.02)
 ;;58016-0342-00
 ;;9002226.02101,"730,58016-0342-10 ",.01)
 ;;58016-0342-10
 ;;9002226.02101,"730,58016-0342-10 ",.02)
 ;;58016-0342-10
 ;;9002226.02101,"730,58016-0342-20 ",.01)
 ;;58016-0342-20
 ;;9002226.02101,"730,58016-0342-20 ",.02)
 ;;58016-0342-20
 ;;9002226.02101,"730,58016-0342-30 ",.01)
 ;;58016-0342-30
 ;;9002226.02101,"730,58016-0342-30 ",.02)
 ;;58016-0342-30
 ;;9002226.02101,"730,58016-0342-40 ",.01)
 ;;58016-0342-40
 ;;9002226.02101,"730,58016-0342-40 ",.02)
 ;;58016-0342-40
 ;;9002226.02101,"730,58016-0342-60 ",.01)
 ;;58016-0342-60
 ;;9002226.02101,"730,58016-0342-60 ",.02)
 ;;58016-0342-60
 ;;9002226.02101,"730,58016-0342-90 ",.01)
 ;;58016-0342-90
 ;;9002226.02101,"730,58016-0342-90 ",.02)
 ;;58016-0342-90
 ;;9002226.02101,"730,58016-0493-00 ",.01)
 ;;58016-0493-00
 ;;9002226.02101,"730,58016-0493-00 ",.02)
 ;;58016-0493-00
 ;;9002226.02101,"730,58016-0493-02 ",.01)
 ;;58016-0493-02
 ;;9002226.02101,"730,58016-0493-02 ",.02)
 ;;58016-0493-02
 ;;9002226.02101,"730,58016-0493-30 ",.01)
 ;;58016-0493-30
 ;;9002226.02101,"730,58016-0493-30 ",.02)
 ;;58016-0493-30
 ;;9002226.02101,"730,58016-0493-60 ",.01)
 ;;58016-0493-60
 ;;9002226.02101,"730,58016-0493-60 ",.02)
 ;;58016-0493-60
 ;;9002226.02101,"730,58016-0493-90 ",.01)
 ;;58016-0493-90
 ;;9002226.02101,"730,58016-0493-90 ",.02)
 ;;58016-0493-90
 ;;9002226.02101,"730,58016-0596-00 ",.01)
 ;;58016-0596-00
 ;;9002226.02101,"730,58016-0596-00 ",.02)
 ;;58016-0596-00
 ;;9002226.02101,"730,58016-0596-30 ",.01)
 ;;58016-0596-30
 ;;9002226.02101,"730,58016-0596-30 ",.02)
 ;;58016-0596-30
 ;;9002226.02101,"730,58016-0596-60 ",.01)
 ;;58016-0596-60
 ;;9002226.02101,"730,58016-0596-60 ",.02)
 ;;58016-0596-60
 ;;9002226.02101,"730,58016-0596-90 ",.01)
 ;;58016-0596-90
 ;;9002226.02101,"730,58016-0596-90 ",.02)
 ;;58016-0596-90
 ;;9002226.02101,"730,58016-0663-00 ",.01)
 ;;58016-0663-00
 ;;9002226.02101,"730,58016-0663-00 ",.02)
 ;;58016-0663-00
 ;;9002226.02101,"730,58016-0663-30 ",.01)
 ;;58016-0663-30
 ;;9002226.02101,"730,58016-0663-30 ",.02)
 ;;58016-0663-30
 ;;9002226.02101,"730,58016-0663-60 ",.01)
 ;;58016-0663-60
 ;;9002226.02101,"730,58016-0663-60 ",.02)
 ;;58016-0663-60
 ;;9002226.02101,"730,58016-0663-90 ",.01)
 ;;58016-0663-90
 ;;9002226.02101,"730,58016-0663-90 ",.02)
 ;;58016-0663-90
 ;;9002226.02101,"730,58016-0709-00 ",.01)
 ;;58016-0709-00
 ;;9002226.02101,"730,58016-0709-00 ",.02)
 ;;58016-0709-00
 ;;9002226.02101,"730,58016-0709-02 ",.01)
 ;;58016-0709-02
 ;;9002226.02101,"730,58016-0709-02 ",.02)
 ;;58016-0709-02
 ;;9002226.02101,"730,58016-0709-03 ",.01)
 ;;58016-0709-03
 ;;9002226.02101,"730,58016-0709-03 ",.02)
 ;;58016-0709-03
 ;;9002226.02101,"730,58016-0709-20 ",.01)
 ;;58016-0709-20
 ;;9002226.02101,"730,58016-0709-20 ",.02)
 ;;58016-0709-20
 ;;9002226.02101,"730,58016-0709-30 ",.01)
 ;;58016-0709-30
 ;;9002226.02101,"730,58016-0709-30 ",.02)
 ;;58016-0709-30
 ;;9002226.02101,"730,58016-0709-40 ",.01)
 ;;58016-0709-40
 ;;9002226.02101,"730,58016-0709-40 ",.02)
 ;;58016-0709-40
 ;;9002226.02101,"730,58016-0709-42 ",.01)
 ;;58016-0709-42
 ;;9002226.02101,"730,58016-0709-42 ",.02)
 ;;58016-0709-42
 ;;9002226.02101,"730,58016-0709-50 ",.01)
 ;;58016-0709-50
 ;;9002226.02101,"730,58016-0709-50 ",.02)
 ;;58016-0709-50
 ;;9002226.02101,"730,58016-0709-73 ",.01)
 ;;58016-0709-73
 ;;9002226.02101,"730,58016-0709-73 ",.02)
 ;;58016-0709-73
 ;;9002226.02101,"730,58016-0709-89 ",.01)
 ;;58016-0709-89
 ;;9002226.02101,"730,58016-0709-89 ",.02)
 ;;58016-0709-89
 ;;9002226.02101,"730,58016-0710-00 ",.01)
 ;;58016-0710-00
 ;;9002226.02101,"730,58016-0710-00 ",.02)
 ;;58016-0710-00
 ;;9002226.02101,"730,58016-0710-30 ",.01)
 ;;58016-0710-30
 ;;9002226.02101,"730,58016-0710-30 ",.02)
 ;;58016-0710-30
 ;;9002226.02101,"730,58016-0710-60 ",.01)
 ;;58016-0710-60
 ;;9002226.02101,"730,58016-0710-60 ",.02)
 ;;58016-0710-60
 ;;9002226.02101,"730,58016-0710-90 ",.01)
 ;;58016-0710-90
 ;;9002226.02101,"730,58016-0710-90 ",.02)
 ;;58016-0710-90
 ;;9002226.02101,"730,58016-0710-99 ",.01)
 ;;58016-0710-99
 ;;9002226.02101,"730,58016-0710-99 ",.02)
 ;;58016-0710-99
 ;;9002226.02101,"730,58016-0797-00 ",.01)
 ;;58016-0797-00
 ;;9002226.02101,"730,58016-0797-00 ",.02)
 ;;58016-0797-00
 ;;9002226.02101,"730,58016-0797-30 ",.01)
 ;;58016-0797-30
 ;;9002226.02101,"730,58016-0797-30 ",.02)
 ;;58016-0797-30
 ;;9002226.02101,"730,58016-0797-60 ",.01)
 ;;58016-0797-60
 ;;9002226.02101,"730,58016-0797-60 ",.02)
 ;;58016-0797-60
 ;;9002226.02101,"730,58016-0797-90 ",.01)
 ;;58016-0797-90
 ;;9002226.02101,"730,58016-0797-90 ",.02)
 ;;58016-0797-90
 ;;9002226.02101,"730,58016-0808-00 ",.01)
 ;;58016-0808-00
 ;;9002226.02101,"730,58016-0808-00 ",.02)
 ;;58016-0808-00
 ;;9002226.02101,"730,58016-0808-30 ",.01)
 ;;58016-0808-30
 ;;9002226.02101,"730,58016-0808-30 ",.02)
 ;;58016-0808-30
 ;;9002226.02101,"730,58016-0808-60 ",.01)
 ;;58016-0808-60
 ;;9002226.02101,"730,58016-0808-60 ",.02)
 ;;58016-0808-60
 ;;9002226.02101,"730,58016-0808-90 ",.01)
 ;;58016-0808-90
 ;;9002226.02101,"730,58016-0808-90 ",.02)
 ;;58016-0808-90
 ;;9002226.02101,"730,58016-0813-00 ",.01)
 ;;58016-0813-00
 ;;9002226.02101,"730,58016-0813-00 ",.02)
 ;;58016-0813-00
 ;;9002226.02101,"730,58016-0813-02 ",.01)
 ;;58016-0813-02
 ;;9002226.02101,"730,58016-0813-02 ",.02)
 ;;58016-0813-02
 ;;9002226.02101,"730,58016-0813-03 ",.01)
 ;;58016-0813-03
 ;;9002226.02101,"730,58016-0813-03 ",.02)
 ;;58016-0813-03
 ;;9002226.02101,"730,58016-0813-10 ",.01)
 ;;58016-0813-10
 ;;9002226.02101,"730,58016-0813-10 ",.02)
 ;;58016-0813-10
 ;;9002226.02101,"730,58016-0813-12 ",.01)
 ;;58016-0813-12
 ;;9002226.02101,"730,58016-0813-12 ",.02)
 ;;58016-0813-12
 ;;9002226.02101,"730,58016-0813-15 ",.01)
 ;;58016-0813-15
 ;;9002226.02101,"730,58016-0813-15 ",.02)
 ;;58016-0813-15
 ;;9002226.02101,"730,58016-0813-20 ",.01)
 ;;58016-0813-20
 ;;9002226.02101,"730,58016-0813-20 ",.02)
 ;;58016-0813-20
 ;;9002226.02101,"730,58016-0813-24 ",.01)
 ;;58016-0813-24
 ;;9002226.02101,"730,58016-0813-24 ",.02)
 ;;58016-0813-24
 ;;9002226.02101,"730,58016-0813-30 ",.01)
 ;;58016-0813-30
 ;;9002226.02101,"730,58016-0813-30 ",.02)
 ;;58016-0813-30
 ;;9002226.02101,"730,58016-0813-50 ",.01)
 ;;58016-0813-50
 ;;9002226.02101,"730,58016-0813-50 ",.02)
 ;;58016-0813-50
 ;;9002226.02101,"730,58016-0813-60 ",.01)
 ;;58016-0813-60
 ;;9002226.02101,"730,58016-0813-60 ",.02)
 ;;58016-0813-60
 ;;9002226.02101,"730,58016-0813-73 ",.01)
 ;;58016-0813-73
 ;;9002226.02101,"730,58016-0813-73 ",.02)
 ;;58016-0813-73
 ;;9002226.02101,"730,58016-0813-89 ",.01)
 ;;58016-0813-89
 ;;9002226.02101,"730,58016-0813-89 ",.02)
 ;;58016-0813-89
 ;;9002226.02101,"730,58016-0813-90 ",.01)
 ;;58016-0813-90
 ;;9002226.02101,"730,58016-0813-90 ",.02)
 ;;58016-0813-90
 ;;9002226.02101,"730,58016-0813-99 ",.01)
 ;;58016-0813-99
 ;;9002226.02101,"730,58016-0813-99 ",.02)
 ;;58016-0813-99
 ;;9002226.02101,"730,58016-0814-00 ",.01)
 ;;58016-0814-00
 ;;9002226.02101,"730,58016-0814-00 ",.02)
 ;;58016-0814-00
 ;;9002226.02101,"730,58016-0814-02 ",.01)
 ;;58016-0814-02
 ;;9002226.02101,"730,58016-0814-02 ",.02)
 ;;58016-0814-02
 ;;9002226.02101,"730,58016-0814-15 ",.01)
 ;;58016-0814-15
 ;;9002226.02101,"730,58016-0814-15 ",.02)
 ;;58016-0814-15
 ;;9002226.02101,"730,58016-0814-20 ",.01)
 ;;58016-0814-20
 ;;9002226.02101,"730,58016-0814-20 ",.02)
 ;;58016-0814-20
 ;;9002226.02101,"730,58016-0814-25 ",.01)
 ;;58016-0814-25
 ;;9002226.02101,"730,58016-0814-25 ",.02)
 ;;58016-0814-25
 ;;9002226.02101,"730,58016-0814-30 ",.01)
 ;;58016-0814-30
 ;;9002226.02101,"730,58016-0814-30 ",.02)
 ;;58016-0814-30
 ;;9002226.02101,"730,58016-0814-40 ",.01)
 ;;58016-0814-40
 ;;9002226.02101,"730,58016-0814-40 ",.02)
 ;;58016-0814-40
 ;;9002226.02101,"730,58016-0814-45 ",.01)
 ;;58016-0814-45
 ;;9002226.02101,"730,58016-0814-45 ",.02)
 ;;58016-0814-45
 ;;9002226.02101,"730,58016-0814-50 ",.01)
 ;;58016-0814-50
 ;;9002226.02101,"730,58016-0814-50 ",.02)
 ;;58016-0814-50
 ;;9002226.02101,"730,58016-0814-60 ",.01)
 ;;58016-0814-60
 ;;9002226.02101,"730,58016-0814-60 ",.02)
 ;;58016-0814-60
 ;;9002226.02101,"730,58016-0814-89 ",.01)
 ;;58016-0814-89
 ;;9002226.02101,"730,58016-0814-89 ",.02)
 ;;58016-0814-89
 ;;9002226.02101,"730,58016-0814-90 ",.01)
 ;;58016-0814-90
 ;;9002226.02101,"730,58016-0814-90 ",.02)
 ;;58016-0814-90
 ;;9002226.02101,"730,58016-0814-99 ",.01)
 ;;58016-0814-99
 ;;9002226.02101,"730,58016-0814-99 ",.02)
 ;;58016-0814-99
 ;;9002226.02101,"730,58016-0815-00 ",.01)
 ;;58016-0815-00
 ;;9002226.02101,"730,58016-0815-00 ",.02)
 ;;58016-0815-00
 ;;9002226.02101,"730,58016-0815-15 ",.01)
 ;;58016-0815-15
 ;;9002226.02101,"730,58016-0815-15 ",.02)
 ;;58016-0815-15
 ;;9002226.02101,"730,58016-0815-20 ",.01)
 ;;58016-0815-20
 ;;9002226.02101,"730,58016-0815-20 ",.02)
 ;;58016-0815-20
 ;;9002226.02101,"730,58016-0815-21 ",.01)
 ;;58016-0815-21
 ;;9002226.02101,"730,58016-0815-21 ",.02)
 ;;58016-0815-21
 ;;9002226.02101,"730,58016-0815-28 ",.01)
 ;;58016-0815-28
 ;;9002226.02101,"730,58016-0815-28 ",.02)
 ;;58016-0815-28
 ;;9002226.02101,"730,58016-0815-30 ",.01)
 ;;58016-0815-30
 ;;9002226.02101,"730,58016-0815-30 ",.02)
 ;;58016-0815-30
 ;;9002226.02101,"730,58016-0815-60 ",.01)
 ;;58016-0815-60
 ;;9002226.02101,"730,58016-0815-60 ",.02)
 ;;58016-0815-60
 ;;9002226.02101,"730,58016-0815-90 ",.01)
 ;;58016-0815-90
 ;;9002226.02101,"730,58016-0815-90 ",.02)
 ;;58016-0815-90
 ;;9002226.02101,"730,58016-0815-99 ",.01)
 ;;58016-0815-99
 ;;9002226.02101,"730,58016-0815-99 ",.02)
 ;;58016-0815-99
 ;;9002226.02101,"730,58016-0826-06 ",.01)
 ;;58016-0826-06
 ;;9002226.02101,"730,58016-0826-06 ",.02)
 ;;58016-0826-06
 ;;9002226.02101,"730,58016-0826-50 ",.01)
 ;;58016-0826-50
 ;;9002226.02101,"730,58016-0826-50 ",.02)
 ;;58016-0826-50
 ;;9002226.02101,"730,58016-0833-00 ",.01)
 ;;58016-0833-00
 ;;9002226.02101,"730,58016-0833-00 ",.02)
 ;;58016-0833-00
 ;;9002226.02101,"730,58016-0833-10 ",.01)
 ;;58016-0833-10
 ;;9002226.02101,"730,58016-0833-10 ",.02)
 ;;58016-0833-10
 ;;9002226.02101,"730,58016-0833-14 ",.01)
 ;;58016-0833-14
 ;;9002226.02101,"730,58016-0833-14 ",.02)
 ;;58016-0833-14
 ;;9002226.02101,"730,58016-0833-15 ",.01)
 ;;58016-0833-15
 ;;9002226.02101,"730,58016-0833-15 ",.02)
 ;;58016-0833-15
 ;;9002226.02101,"730,58016-0833-20 ",.01)
 ;;58016-0833-20
 ;;9002226.02101,"730,58016-0833-20 ",.02)
 ;;58016-0833-20
 ;;9002226.02101,"730,58016-0833-21 ",.01)
 ;;58016-0833-21
 ;;9002226.02101,"730,58016-0833-21 ",.02)
 ;;58016-0833-21
 ;;9002226.02101,"730,58016-0833-30 ",.01)
 ;;58016-0833-30
 ;;9002226.02101,"730,58016-0833-30 ",.02)
 ;;58016-0833-30
 ;;9002226.02101,"730,58016-0833-40 ",.01)
 ;;58016-0833-40
 ;;9002226.02101,"730,58016-0833-40 ",.02)
 ;;58016-0833-40
 ;;9002226.02101,"730,58016-0833-50 ",.01)
 ;;58016-0833-50
 ;;9002226.02101,"730,58016-0833-50 ",.02)
 ;;58016-0833-50
 ;;9002226.02101,"730,58016-0833-60 ",.01)
 ;;58016-0833-60
 ;;9002226.02101,"730,58016-0833-60 ",.02)
 ;;58016-0833-60
 ;;9002226.02101,"730,58016-0833-90 ",.01)
 ;;58016-0833-90
 ;;9002226.02101,"730,58016-0833-90 ",.02)
 ;;58016-0833-90
 ;;9002226.02101,"730,58016-0834-00 ",.01)
 ;;58016-0834-00
 ;;9002226.02101,"730,58016-0834-00 ",.02)
 ;;58016-0834-00
 ;;9002226.02101,"730,58016-0834-10 ",.01)
 ;;58016-0834-10
 ;;9002226.02101,"730,58016-0834-10 ",.02)
 ;;58016-0834-10
 ;;9002226.02101,"730,58016-0834-14 ",.01)
 ;;58016-0834-14
 ;;9002226.02101,"730,58016-0834-14 ",.02)
 ;;58016-0834-14
 ;;9002226.02101,"730,58016-0834-15 ",.01)
 ;;58016-0834-15
 ;;9002226.02101,"730,58016-0834-15 ",.02)
 ;;58016-0834-15
 ;;9002226.02101,"730,58016-0834-20 ",.01)
 ;;58016-0834-20
 ;;9002226.02101,"730,58016-0834-20 ",.02)
 ;;58016-0834-20
 ;;9002226.02101,"730,58016-0834-21 ",.01)
 ;;58016-0834-21
 ;;9002226.02101,"730,58016-0834-21 ",.02)
 ;;58016-0834-21
 ;;9002226.02101,"730,58016-0834-30 ",.01)
 ;;58016-0834-30
 ;;9002226.02101,"730,58016-0834-30 ",.02)
 ;;58016-0834-30
 ;;9002226.02101,"730,58016-0834-40 ",.01)
 ;;58016-0834-40
 ;;9002226.02101,"730,58016-0834-40 ",.02)
 ;;58016-0834-40
 ;;9002226.02101,"730,58016-0834-50 ",.01)
 ;;58016-0834-50
 ;;9002226.02101,"730,58016-0834-50 ",.02)
 ;;58016-0834-50
 ;;9002226.02101,"730,58016-0834-60 ",.01)
 ;;58016-0834-60
 ;;9002226.02101,"730,58016-0834-60 ",.02)
 ;;58016-0834-60
 ;;9002226.02101,"730,58016-0834-90 ",.01)
 ;;58016-0834-90
 ;;9002226.02101,"730,58016-0834-90 ",.02)
 ;;58016-0834-90
 ;;9002226.02101,"730,58016-0839-00 ",.01)
 ;;58016-0839-00
 ;;9002226.02101,"730,58016-0839-00 ",.02)
 ;;58016-0839-00
 ;;9002226.02101,"730,58016-0839-12 ",.01)
 ;;58016-0839-12
 ;;9002226.02101,"730,58016-0839-12 ",.02)
 ;;58016-0839-12
 ;;9002226.02101,"730,58016-0839-15 ",.01)
 ;;58016-0839-15
 ;;9002226.02101,"730,58016-0839-15 ",.02)
 ;;58016-0839-15
 ;;9002226.02101,"730,58016-0839-20 ",.01)
 ;;58016-0839-20
 ;;9002226.02101,"730,58016-0839-20 ",.02)
 ;;58016-0839-20
 ;;9002226.02101,"730,58016-0839-30 ",.01)
 ;;58016-0839-30
 ;;9002226.02101,"730,58016-0839-30 ",.02)
 ;;58016-0839-30
 ;;9002226.02101,"730,58016-0841-00 ",.01)
 ;;58016-0841-00
