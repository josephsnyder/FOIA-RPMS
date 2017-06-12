BGP51O13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,33358-0274-60 ",.02)
 ;;33358-0274-60
 ;;9002226.02101,"804,33358-0325-01 ",.01)
 ;;33358-0325-01
 ;;9002226.02101,"804,33358-0325-01 ",.02)
 ;;33358-0325-01
 ;;9002226.02101,"804,33358-0325-30 ",.01)
 ;;33358-0325-30
 ;;9002226.02101,"804,33358-0325-30 ",.02)
 ;;33358-0325-30
 ;;9002226.02101,"804,33358-0325-45 ",.01)
 ;;33358-0325-45
 ;;9002226.02101,"804,33358-0325-45 ",.02)
 ;;33358-0325-45
 ;;9002226.02101,"804,33358-0325-60 ",.01)
 ;;33358-0325-60
 ;;9002226.02101,"804,33358-0325-60 ",.02)
 ;;33358-0325-60
 ;;9002226.02101,"804,33358-0325-90 ",.01)
 ;;33358-0325-90
 ;;9002226.02101,"804,33358-0325-90 ",.02)
 ;;33358-0325-90
 ;;9002226.02101,"804,35356-0262-10 ",.01)
 ;;35356-0262-10
 ;;9002226.02101,"804,35356-0262-10 ",.02)
 ;;35356-0262-10
 ;;9002226.02101,"804,35356-0262-30 ",.01)
 ;;35356-0262-30
 ;;9002226.02101,"804,35356-0262-30 ",.02)
 ;;35356-0262-30
 ;;9002226.02101,"804,35356-0262-60 ",.01)
 ;;35356-0262-60
 ;;9002226.02101,"804,35356-0262-60 ",.02)
 ;;35356-0262-60
 ;;9002226.02101,"804,35356-0262-90 ",.01)
 ;;35356-0262-90
 ;;9002226.02101,"804,35356-0262-90 ",.02)
 ;;35356-0262-90
 ;;9002226.02101,"804,35356-0263-01 ",.01)
 ;;35356-0263-01
 ;;9002226.02101,"804,35356-0263-01 ",.02)
 ;;35356-0263-01
 ;;9002226.02101,"804,35356-0263-30 ",.01)
 ;;35356-0263-30
 ;;9002226.02101,"804,35356-0263-30 ",.02)
 ;;35356-0263-30
 ;;9002226.02101,"804,35356-0265-15 ",.01)
 ;;35356-0265-15
 ;;9002226.02101,"804,35356-0265-15 ",.02)
 ;;35356-0265-15
 ;;9002226.02101,"804,35356-0265-20 ",.01)
 ;;35356-0265-20
 ;;9002226.02101,"804,35356-0265-20 ",.02)
 ;;35356-0265-20
 ;;9002226.02101,"804,35356-0501-30 ",.01)
 ;;35356-0501-30
 ;;9002226.02101,"804,35356-0501-30 ",.02)
 ;;35356-0501-30
 ;;9002226.02101,"804,35356-0501-60 ",.01)
 ;;35356-0501-60
 ;;9002226.02101,"804,35356-0501-60 ",.02)
 ;;35356-0501-60
 ;;9002226.02101,"804,35356-0570-15 ",.01)
 ;;35356-0570-15
 ;;9002226.02101,"804,35356-0570-15 ",.02)
 ;;35356-0570-15
 ;;9002226.02101,"804,35356-0570-20 ",.01)
 ;;35356-0570-20
 ;;9002226.02101,"804,35356-0570-20 ",.02)
 ;;35356-0570-20
 ;;9002226.02101,"804,35356-0570-30 ",.01)
 ;;35356-0570-30
 ;;9002226.02101,"804,35356-0570-30 ",.02)
 ;;35356-0570-30
 ;;9002226.02101,"804,35356-0570-60 ",.01)
 ;;35356-0570-60
 ;;9002226.02101,"804,35356-0570-60 ",.02)
 ;;35356-0570-60
 ;;9002226.02101,"804,35356-0570-90 ",.01)
 ;;35356-0570-90
 ;;9002226.02101,"804,35356-0570-90 ",.02)
 ;;35356-0570-90
 ;;9002226.02101,"804,35356-0617-90 ",.01)
 ;;35356-0617-90
 ;;9002226.02101,"804,35356-0617-90 ",.02)
 ;;35356-0617-90
 ;;9002226.02101,"804,35356-0653-01 ",.01)
 ;;35356-0653-01
 ;;9002226.02101,"804,35356-0653-01 ",.02)
 ;;35356-0653-01
 ;;9002226.02101,"804,35356-0653-07 ",.01)
 ;;35356-0653-07
 ;;9002226.02101,"804,35356-0653-07 ",.02)
 ;;35356-0653-07
 ;;9002226.02101,"804,35356-0653-12 ",.01)
 ;;35356-0653-12
 ;;9002226.02101,"804,35356-0653-12 ",.02)
 ;;35356-0653-12
 ;;9002226.02101,"804,35356-0653-15 ",.01)
 ;;35356-0653-15
 ;;9002226.02101,"804,35356-0653-15 ",.02)
 ;;35356-0653-15
 ;;9002226.02101,"804,35356-0653-20 ",.01)
 ;;35356-0653-20
 ;;9002226.02101,"804,35356-0653-20 ",.02)
 ;;35356-0653-20
 ;;9002226.02101,"804,35356-0653-21 ",.01)
 ;;35356-0653-21
 ;;9002226.02101,"804,35356-0653-21 ",.02)
 ;;35356-0653-21
 ;;9002226.02101,"804,35356-0653-30 ",.01)
 ;;35356-0653-30
 ;;9002226.02101,"804,35356-0653-30 ",.02)
 ;;35356-0653-30
 ;;9002226.02101,"804,35356-0653-60 ",.01)
 ;;35356-0653-60
 ;;9002226.02101,"804,35356-0653-60 ",.02)
 ;;35356-0653-60
 ;;9002226.02101,"804,35356-0653-90 ",.01)
 ;;35356-0653-90
 ;;9002226.02101,"804,35356-0653-90 ",.02)
 ;;35356-0653-90
 ;;9002226.02101,"804,35356-0689-01 ",.01)
 ;;35356-0689-01
 ;;9002226.02101,"804,35356-0689-01 ",.02)
 ;;35356-0689-01
 ;;9002226.02101,"804,35356-0689-20 ",.01)
 ;;35356-0689-20
 ;;9002226.02101,"804,35356-0689-20 ",.02)
 ;;35356-0689-20
 ;;9002226.02101,"804,35356-0689-30 ",.01)
 ;;35356-0689-30
 ;;9002226.02101,"804,35356-0689-30 ",.02)
 ;;35356-0689-30
 ;;9002226.02101,"804,35356-0689-40 ",.01)
 ;;35356-0689-40
 ;;9002226.02101,"804,35356-0689-40 ",.02)
 ;;35356-0689-40
 ;;9002226.02101,"804,35356-0689-60 ",.01)
 ;;35356-0689-60
 ;;9002226.02101,"804,35356-0689-60 ",.02)
 ;;35356-0689-60
 ;;9002226.02101,"804,35356-0689-90 ",.01)
 ;;35356-0689-90
 ;;9002226.02101,"804,35356-0689-90 ",.02)
 ;;35356-0689-90
 ;;9002226.02101,"804,35356-0690-01 ",.01)
 ;;35356-0690-01
 ;;9002226.02101,"804,35356-0690-01 ",.02)
 ;;35356-0690-01
 ;;9002226.02101,"804,35356-0690-20 ",.01)
 ;;35356-0690-20
 ;;9002226.02101,"804,35356-0690-20 ",.02)
 ;;35356-0690-20
 ;;9002226.02101,"804,35356-0690-30 ",.01)
 ;;35356-0690-30
 ;;9002226.02101,"804,35356-0690-30 ",.02)
 ;;35356-0690-30
 ;;9002226.02101,"804,35356-0690-40 ",.01)
 ;;35356-0690-40
 ;;9002226.02101,"804,35356-0690-40 ",.02)
 ;;35356-0690-40
 ;;9002226.02101,"804,35356-0690-60 ",.01)
 ;;35356-0690-60
 ;;9002226.02101,"804,35356-0690-60 ",.02)
 ;;35356-0690-60
 ;;9002226.02101,"804,35356-0690-90 ",.01)
 ;;35356-0690-90
 ;;9002226.02101,"804,35356-0690-90 ",.02)
 ;;35356-0690-90
 ;;9002226.02101,"804,35356-0717-15 ",.01)
 ;;35356-0717-15
 ;;9002226.02101,"804,35356-0717-15 ",.02)
 ;;35356-0717-15
 ;;9002226.02101,"804,35356-0717-30 ",.01)
 ;;35356-0717-30
 ;;9002226.02101,"804,35356-0717-30 ",.02)
 ;;35356-0717-30
 ;;9002226.02101,"804,35356-0721-01 ",.01)
 ;;35356-0721-01
 ;;9002226.02101,"804,35356-0721-01 ",.02)
 ;;35356-0721-01
 ;;9002226.02101,"804,35356-0721-20 ",.01)
 ;;35356-0721-20
 ;;9002226.02101,"804,35356-0721-20 ",.02)
 ;;35356-0721-20
 ;;9002226.02101,"804,35356-0721-30 ",.01)
 ;;35356-0721-30
 ;;9002226.02101,"804,35356-0721-30 ",.02)
 ;;35356-0721-30
 ;;9002226.02101,"804,35356-0721-40 ",.01)
 ;;35356-0721-40
 ;;9002226.02101,"804,35356-0721-40 ",.02)
 ;;35356-0721-40
 ;;9002226.02101,"804,35356-0721-60 ",.01)
 ;;35356-0721-60
 ;;9002226.02101,"804,35356-0721-60 ",.02)
 ;;35356-0721-60
 ;;9002226.02101,"804,35356-0721-90 ",.01)
 ;;35356-0721-90
 ;;9002226.02101,"804,35356-0721-90 ",.02)
 ;;35356-0721-90
 ;;9002226.02101,"804,35356-0734-01 ",.01)
 ;;35356-0734-01
 ;;9002226.02101,"804,35356-0734-01 ",.02)
 ;;35356-0734-01
 ;;9002226.02101,"804,35356-0734-20 ",.01)
 ;;35356-0734-20
 ;;9002226.02101,"804,35356-0734-20 ",.02)
 ;;35356-0734-20
 ;;9002226.02101,"804,35356-0734-30 ",.01)
 ;;35356-0734-30
 ;;9002226.02101,"804,35356-0734-30 ",.02)
 ;;35356-0734-30
 ;;9002226.02101,"804,35356-0734-40 ",.01)
 ;;35356-0734-40
 ;;9002226.02101,"804,35356-0734-40 ",.02)
 ;;35356-0734-40
 ;;9002226.02101,"804,35356-0734-60 ",.01)
 ;;35356-0734-60
 ;;9002226.02101,"804,35356-0734-60 ",.02)
 ;;35356-0734-60
 ;;9002226.02101,"804,35356-0734-90 ",.01)
 ;;35356-0734-90
 ;;9002226.02101,"804,35356-0734-90 ",.02)
 ;;35356-0734-90
 ;;9002226.02101,"804,35356-0765-01 ",.01)
 ;;35356-0765-01
 ;;9002226.02101,"804,35356-0765-01 ",.02)
 ;;35356-0765-01
 ;;9002226.02101,"804,35356-0765-30 ",.01)
 ;;35356-0765-30
 ;;9002226.02101,"804,35356-0765-30 ",.02)
 ;;35356-0765-30
 ;;9002226.02101,"804,35356-0765-60 ",.01)
 ;;35356-0765-60
 ;;9002226.02101,"804,35356-0765-60 ",.02)
 ;;35356-0765-60
 ;;9002226.02101,"804,35356-0765-90 ",.01)
 ;;35356-0765-90
 ;;9002226.02101,"804,35356-0765-90 ",.02)
 ;;35356-0765-90
 ;;9002226.02101,"804,35356-0805-01 ",.01)
 ;;35356-0805-01
 ;;9002226.02101,"804,35356-0805-01 ",.02)
 ;;35356-0805-01
 ;;9002226.02101,"804,35356-0805-14 ",.01)
 ;;35356-0805-14
 ;;9002226.02101,"804,35356-0805-14 ",.02)
 ;;35356-0805-14
 ;;9002226.02101,"804,35356-0805-15 ",.01)
 ;;35356-0805-15
 ;;9002226.02101,"804,35356-0805-15 ",.02)
 ;;35356-0805-15
 ;;9002226.02101,"804,35356-0805-20 ",.01)
 ;;35356-0805-20
 ;;9002226.02101,"804,35356-0805-20 ",.02)
 ;;35356-0805-20
 ;;9002226.02101,"804,35356-0805-30 ",.01)
 ;;35356-0805-30
 ;;9002226.02101,"804,35356-0805-30 ",.02)
 ;;35356-0805-30
 ;;9002226.02101,"804,35356-0805-60 ",.01)
 ;;35356-0805-60
 ;;9002226.02101,"804,35356-0805-60 ",.02)
 ;;35356-0805-60
 ;;9002226.02101,"804,35356-0805-90 ",.01)
 ;;35356-0805-90
 ;;9002226.02101,"804,35356-0805-90 ",.02)
 ;;35356-0805-90
 ;;9002226.02101,"804,35356-0813-01 ",.01)
 ;;35356-0813-01
 ;;9002226.02101,"804,35356-0813-01 ",.02)
 ;;35356-0813-01
 ;;9002226.02101,"804,35356-0813-15 ",.01)
 ;;35356-0813-15
 ;;9002226.02101,"804,35356-0813-15 ",.02)
 ;;35356-0813-15
 ;;9002226.02101,"804,35356-0813-20 ",.01)
 ;;35356-0813-20
 ;;9002226.02101,"804,35356-0813-20 ",.02)
 ;;35356-0813-20
 ;;9002226.02101,"804,35356-0813-30 ",.01)
 ;;35356-0813-30
 ;;9002226.02101,"804,35356-0813-30 ",.02)
 ;;35356-0813-30
 ;;9002226.02101,"804,35356-0813-40 ",.01)
 ;;35356-0813-40
 ;;9002226.02101,"804,35356-0813-40 ",.02)
 ;;35356-0813-40
 ;;9002226.02101,"804,35356-0813-60 ",.01)
 ;;35356-0813-60
 ;;9002226.02101,"804,35356-0813-60 ",.02)
 ;;35356-0813-60
 ;;9002226.02101,"804,35356-0813-90 ",.01)
 ;;35356-0813-90
 ;;9002226.02101,"804,35356-0813-90 ",.02)
 ;;35356-0813-90
 ;;9002226.02101,"804,35356-0847-00 ",.01)
 ;;35356-0847-00
 ;;9002226.02101,"804,35356-0847-00 ",.02)
 ;;35356-0847-00
 ;;9002226.02101,"804,35356-0847-21 ",.01)
 ;;35356-0847-21
 ;;9002226.02101,"804,35356-0847-21 ",.02)
 ;;35356-0847-21
 ;;9002226.02101,"804,35356-0847-30 ",.01)
 ;;35356-0847-30
 ;;9002226.02101,"804,35356-0847-30 ",.02)
 ;;35356-0847-30
 ;;9002226.02101,"804,35356-0887-30 ",.01)
 ;;35356-0887-30
 ;;9002226.02101,"804,35356-0887-30 ",.02)
 ;;35356-0887-30
 ;;9002226.02101,"804,35356-0887-60 ",.01)
 ;;35356-0887-60
 ;;9002226.02101,"804,35356-0887-60 ",.02)
 ;;35356-0887-60
 ;;9002226.02101,"804,35356-0987-14 ",.01)
 ;;35356-0987-14
 ;;9002226.02101,"804,35356-0987-14 ",.02)
 ;;35356-0987-14
 ;;9002226.02101,"804,35356-0987-20 ",.01)
 ;;35356-0987-20
 ;;9002226.02101,"804,35356-0987-20 ",.02)
 ;;35356-0987-20
 ;;9002226.02101,"804,35356-0987-30 ",.01)
 ;;35356-0987-30
 ;;9002226.02101,"804,35356-0987-30 ",.02)
 ;;35356-0987-30
 ;;9002226.02101,"804,35356-0987-60 ",.01)
 ;;35356-0987-60
 ;;9002226.02101,"804,35356-0987-60 ",.02)
 ;;35356-0987-60
 ;;9002226.02101,"804,42254-0035-07 ",.01)
 ;;42254-0035-07
 ;;9002226.02101,"804,42254-0035-07 ",.02)
 ;;42254-0035-07
 ;;9002226.02101,"804,42254-0035-15 ",.01)
 ;;42254-0035-15
 ;;9002226.02101,"804,42254-0035-15 ",.02)
 ;;42254-0035-15
 ;;9002226.02101,"804,42254-0035-28 ",.01)
 ;;42254-0035-28
 ;;9002226.02101,"804,42254-0035-28 ",.02)
 ;;42254-0035-28
 ;;9002226.02101,"804,42254-0035-30 ",.01)
 ;;42254-0035-30
 ;;9002226.02101,"804,42254-0035-30 ",.02)
 ;;42254-0035-30
 ;;9002226.02101,"804,42254-0035-40 ",.01)
 ;;42254-0035-40
 ;;9002226.02101,"804,42254-0035-40 ",.02)
 ;;42254-0035-40
 ;;9002226.02101,"804,42254-0035-60 ",.01)
 ;;42254-0035-60
 ;;9002226.02101,"804,42254-0035-60 ",.02)
 ;;42254-0035-60
 ;;9002226.02101,"804,42254-0035-90 ",.01)
 ;;42254-0035-90
 ;;9002226.02101,"804,42254-0035-90 ",.02)
 ;;42254-0035-90
 ;;9002226.02101,"804,42254-0038-07 ",.01)
 ;;42254-0038-07
 ;;9002226.02101,"804,42254-0038-07 ",.02)
 ;;42254-0038-07
 ;;9002226.02101,"804,42254-0038-20 ",.01)
 ;;42254-0038-20
 ;;9002226.02101,"804,42254-0038-20 ",.02)
 ;;42254-0038-20
 ;;9002226.02101,"804,42254-0038-30 ",.01)
 ;;42254-0038-30
 ;;9002226.02101,"804,42254-0038-30 ",.02)
 ;;42254-0038-30
 ;;9002226.02101,"804,42254-0038-40 ",.01)
 ;;42254-0038-40
 ;;9002226.02101,"804,42254-0038-40 ",.02)
 ;;42254-0038-40
 ;;9002226.02101,"804,42254-0038-60 ",.01)
 ;;42254-0038-60
 ;;9002226.02101,"804,42254-0038-60 ",.02)
 ;;42254-0038-60
 ;;9002226.02101,"804,42254-0038-90 ",.01)
 ;;42254-0038-90
 ;;9002226.02101,"804,42254-0038-90 ",.02)
 ;;42254-0038-90
 ;;9002226.02101,"804,42254-0040-10 ",.01)
 ;;42254-0040-10
 ;;9002226.02101,"804,42254-0040-10 ",.02)
 ;;42254-0040-10
 ;;9002226.02101,"804,42254-0040-16 ",.01)
 ;;42254-0040-16
 ;;9002226.02101,"804,42254-0040-16 ",.02)
 ;;42254-0040-16
 ;;9002226.02101,"804,42254-0040-30 ",.01)
 ;;42254-0040-30
 ;;9002226.02101,"804,42254-0040-30 ",.02)
 ;;42254-0040-30
 ;;9002226.02101,"804,42254-0040-60 ",.01)
 ;;42254-0040-60
 ;;9002226.02101,"804,42254-0040-60 ",.02)
 ;;42254-0040-60
 ;;9002226.02101,"804,42254-0040-90 ",.01)
 ;;42254-0040-90
 ;;9002226.02101,"804,42254-0040-90 ",.02)
 ;;42254-0040-90
 ;;9002226.02101,"804,42254-0068-15 ",.01)
 ;;42254-0068-15
 ;;9002226.02101,"804,42254-0068-15 ",.02)
 ;;42254-0068-15
 ;;9002226.02101,"804,42254-0068-20 ",.01)
 ;;42254-0068-20
 ;;9002226.02101,"804,42254-0068-20 ",.02)
 ;;42254-0068-20
 ;;9002226.02101,"804,42254-0068-30 ",.01)
 ;;42254-0068-30
 ;;9002226.02101,"804,42254-0068-30 ",.02)
 ;;42254-0068-30
 ;;9002226.02101,"804,42254-0068-40 ",.01)
 ;;42254-0068-40
 ;;9002226.02101,"804,42254-0068-40 ",.02)
 ;;42254-0068-40
 ;;9002226.02101,"804,42254-0068-42 ",.01)
 ;;42254-0068-42
 ;;9002226.02101,"804,42254-0068-42 ",.02)
 ;;42254-0068-42
 ;;9002226.02101,"804,42254-0068-45 ",.01)
 ;;42254-0068-45
 ;;9002226.02101,"804,42254-0068-45 ",.02)
 ;;42254-0068-45
 ;;9002226.02101,"804,42254-0068-60 ",.01)
 ;;42254-0068-60
 ;;9002226.02101,"804,42254-0068-60 ",.02)
 ;;42254-0068-60
 ;;9002226.02101,"804,42254-0068-72 ",.01)
 ;;42254-0068-72
 ;;9002226.02101,"804,42254-0068-72 ",.02)
 ;;42254-0068-72
 ;;9002226.02101,"804,42254-0068-90 ",.01)
 ;;42254-0068-90
 ;;9002226.02101,"804,42254-0068-90 ",.02)
 ;;42254-0068-90
 ;;9002226.02101,"804,42254-0076-07 ",.01)
 ;;42254-0076-07
