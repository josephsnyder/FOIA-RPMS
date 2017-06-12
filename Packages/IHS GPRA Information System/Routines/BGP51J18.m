BGP51J18 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"730,51079-0566-20 ",.02)
 ;;51079-0566-20
 ;;9002226.02101,"730,51079-0567-01 ",.01)
 ;;51079-0567-01
 ;;9002226.02101,"730,51079-0567-01 ",.02)
 ;;51079-0567-01
 ;;9002226.02101,"730,51079-0567-20 ",.01)
 ;;51079-0567-20
 ;;9002226.02101,"730,51079-0567-20 ",.02)
 ;;51079-0567-20
 ;;9002226.02101,"730,51079-0580-01 ",.01)
 ;;51079-0580-01
 ;;9002226.02101,"730,51079-0580-01 ",.02)
 ;;51079-0580-01
 ;;9002226.02101,"730,51079-0580-20 ",.01)
 ;;51079-0580-20
 ;;9002226.02101,"730,51079-0580-20 ",.02)
 ;;51079-0580-20
 ;;9002226.02101,"730,51079-0651-01 ",.01)
 ;;51079-0651-01
 ;;9002226.02101,"730,51079-0651-01 ",.02)
 ;;51079-0651-01
 ;;9002226.02101,"730,51079-0651-20 ",.01)
 ;;51079-0651-20
 ;;9002226.02101,"730,51079-0651-20 ",.02)
 ;;51079-0651-20
 ;;9002226.02101,"730,51079-0724-01 ",.01)
 ;;51079-0724-01
 ;;9002226.02101,"730,51079-0724-01 ",.02)
 ;;51079-0724-01
 ;;9002226.02101,"730,51079-0724-20 ",.01)
 ;;51079-0724-20
 ;;9002226.02101,"730,51079-0724-20 ",.02)
 ;;51079-0724-20
 ;;9002226.02101,"730,51079-0725-01 ",.01)
 ;;51079-0725-01
 ;;9002226.02101,"730,51079-0725-01 ",.02)
 ;;51079-0725-01
 ;;9002226.02101,"730,51079-0725-20 ",.01)
 ;;51079-0725-20
 ;;9002226.02101,"730,51079-0725-20 ",.02)
 ;;51079-0725-20
 ;;9002226.02101,"730,51138-0001-30 ",.01)
 ;;51138-0001-30
 ;;9002226.02101,"730,51138-0001-30 ",.02)
 ;;51138-0001-30
 ;;9002226.02101,"730,51138-0002-30 ",.01)
 ;;51138-0002-30
 ;;9002226.02101,"730,51138-0002-30 ",.02)
 ;;51138-0002-30
 ;;9002226.02101,"730,51138-0003-30 ",.01)
 ;;51138-0003-30
 ;;9002226.02101,"730,51138-0003-30 ",.02)
 ;;51138-0003-30
 ;;9002226.02101,"730,51138-0004-30 ",.01)
 ;;51138-0004-30
 ;;9002226.02101,"730,51138-0004-30 ",.02)
 ;;51138-0004-30
 ;;9002226.02101,"730,51138-0005-30 ",.01)
 ;;51138-0005-30
 ;;9002226.02101,"730,51138-0005-30 ",.02)
 ;;51138-0005-30
 ;;9002226.02101,"730,51138-0006-30 ",.01)
 ;;51138-0006-30
 ;;9002226.02101,"730,51138-0006-30 ",.02)
 ;;51138-0006-30
 ;;9002226.02101,"730,51138-0012-30 ",.01)
 ;;51138-0012-30
 ;;9002226.02101,"730,51138-0012-30 ",.02)
 ;;51138-0012-30
 ;;9002226.02101,"730,51138-0028-30 ",.01)
 ;;51138-0028-30
 ;;9002226.02101,"730,51138-0028-30 ",.02)
 ;;51138-0028-30
 ;;9002226.02101,"730,51138-0029-30 ",.01)
 ;;51138-0029-30
 ;;9002226.02101,"730,51138-0029-30 ",.02)
 ;;51138-0029-30
 ;;9002226.02101,"730,51138-0030-30 ",.01)
 ;;51138-0030-30
 ;;9002226.02101,"730,51138-0030-30 ",.02)
 ;;51138-0030-30
 ;;9002226.02101,"730,51138-0031-30 ",.01)
 ;;51138-0031-30
 ;;9002226.02101,"730,51138-0031-30 ",.02)
 ;;51138-0031-30
 ;;9002226.02101,"730,51138-0032-30 ",.01)
 ;;51138-0032-30
 ;;9002226.02101,"730,51138-0032-30 ",.02)
 ;;51138-0032-30
 ;;9002226.02101,"730,51285-0538-02 ",.01)
 ;;51285-0538-02
 ;;9002226.02101,"730,51285-0538-02 ",.02)
 ;;51285-0538-02
 ;;9002226.02101,"730,51285-0539-02 ",.01)
 ;;51285-0539-02
 ;;9002226.02101,"730,51285-0539-02 ",.02)
 ;;51285-0539-02
 ;;9002226.02101,"730,51285-0554-02 ",.01)
 ;;51285-0554-02
 ;;9002226.02101,"730,51285-0554-02 ",.02)
 ;;51285-0554-02
 ;;9002226.02101,"730,51293-0605-01 ",.01)
 ;;51293-0605-01
 ;;9002226.02101,"730,51293-0605-01 ",.02)
 ;;51293-0605-01
 ;;9002226.02101,"730,51293-0606-01 ",.01)
 ;;51293-0606-01
 ;;9002226.02101,"730,51293-0606-01 ",.02)
 ;;51293-0606-01
 ;;9002226.02101,"730,51672-4011-01 ",.01)
 ;;51672-4011-01
 ;;9002226.02101,"730,51672-4011-01 ",.02)
 ;;51672-4011-01
 ;;9002226.02101,"730,51672-4011-05 ",.01)
 ;;51672-4011-05
 ;;9002226.02101,"730,51672-4011-05 ",.02)
 ;;51672-4011-05
 ;;9002226.02101,"730,51672-4011-06 ",.01)
 ;;51672-4011-06
 ;;9002226.02101,"730,51672-4011-06 ",.02)
 ;;51672-4011-06
 ;;9002226.02101,"730,51672-4012-01 ",.01)
 ;;51672-4012-01
 ;;9002226.02101,"730,51672-4012-01 ",.02)
 ;;51672-4012-01
 ;;9002226.02101,"730,51672-4012-05 ",.01)
 ;;51672-4012-05
 ;;9002226.02101,"730,51672-4012-05 ",.02)
 ;;51672-4012-05
 ;;9002226.02101,"730,51672-4012-06 ",.01)
 ;;51672-4012-06
 ;;9002226.02101,"730,51672-4012-06 ",.02)
 ;;51672-4012-06
 ;;9002226.02101,"730,51672-4013-01 ",.01)
 ;;51672-4013-01
 ;;9002226.02101,"730,51672-4013-01 ",.02)
 ;;51672-4013-01
 ;;9002226.02101,"730,51672-4013-05 ",.01)
 ;;51672-4013-05
 ;;9002226.02101,"730,51672-4013-05 ",.02)
 ;;51672-4013-05
 ;;9002226.02101,"730,51672-4013-06 ",.01)
 ;;51672-4013-06
 ;;9002226.02101,"730,51672-4013-06 ",.02)
 ;;51672-4013-06
 ;;9002226.02101,"730,51862-0179-01 ",.01)
 ;;51862-0179-01
 ;;9002226.02101,"730,51862-0179-01 ",.02)
 ;;51862-0179-01
 ;;9002226.02101,"730,51991-0073-01 ",.01)
 ;;51991-0073-01
 ;;9002226.02101,"730,51991-0073-01 ",.02)
 ;;51991-0073-01
 ;;9002226.02101,"730,51991-0074-01 ",.01)
 ;;51991-0074-01
 ;;9002226.02101,"730,51991-0074-01 ",.02)
 ;;51991-0074-01
 ;;9002226.02101,"730,51991-0074-05 ",.01)
 ;;51991-0074-05
 ;;9002226.02101,"730,51991-0074-05 ",.02)
 ;;51991-0074-05
 ;;9002226.02101,"730,51991-0080-51 ",.01)
 ;;51991-0080-51
 ;;9002226.02101,"730,51991-0080-51 ",.02)
 ;;51991-0080-51
 ;;9002226.02101,"730,51991-0080-52 ",.01)
 ;;51991-0080-52
 ;;9002226.02101,"730,51991-0080-52 ",.02)
 ;;51991-0080-52
 ;;9002226.02101,"730,52544-0080-01 ",.01)
 ;;52544-0080-01
 ;;9002226.02101,"730,52544-0080-01 ",.02)
 ;;52544-0080-01
 ;;9002226.02101,"730,52544-0082-01 ",.01)
 ;;52544-0082-01
 ;;9002226.02101,"730,52544-0082-01 ",.02)
 ;;52544-0082-01
 ;;9002226.02101,"730,52544-0955-01 ",.01)
 ;;52544-0955-01
 ;;9002226.02101,"730,52544-0955-01 ",.02)
 ;;52544-0955-01
 ;;9002226.02101,"730,52544-0956-01 ",.01)
 ;;52544-0956-01
 ;;9002226.02101,"730,52544-0956-01 ",.02)
 ;;52544-0956-01
 ;;9002226.02101,"730,52544-0957-01 ",.01)
 ;;52544-0957-01
 ;;9002226.02101,"730,52544-0957-01 ",.02)
 ;;52544-0957-01
 ;;9002226.02101,"730,52544-0957-05 ",.01)
 ;;52544-0957-05
 ;;9002226.02101,"730,52544-0957-05 ",.02)
 ;;52544-0957-05
 ;;9002226.02101,"730,52544-0958-01 ",.01)
 ;;52544-0958-01
 ;;9002226.02101,"730,52544-0958-01 ",.02)
 ;;52544-0958-01
 ;;9002226.02101,"730,52959-0008-02 ",.01)
 ;;52959-0008-02
 ;;9002226.02101,"730,52959-0008-02 ",.02)
 ;;52959-0008-02
 ;;9002226.02101,"730,52959-0008-15 ",.01)
 ;;52959-0008-15
 ;;9002226.02101,"730,52959-0008-15 ",.02)
 ;;52959-0008-15
 ;;9002226.02101,"730,52959-0008-20 ",.01)
 ;;52959-0008-20
 ;;9002226.02101,"730,52959-0008-20 ",.02)
 ;;52959-0008-20
 ;;9002226.02101,"730,52959-0008-30 ",.01)
 ;;52959-0008-30
 ;;9002226.02101,"730,52959-0008-30 ",.02)
 ;;52959-0008-30
 ;;9002226.02101,"730,52959-0008-40 ",.01)
 ;;52959-0008-40
 ;;9002226.02101,"730,52959-0008-40 ",.02)
 ;;52959-0008-40
 ;;9002226.02101,"730,52959-0008-50 ",.01)
 ;;52959-0008-50
 ;;9002226.02101,"730,52959-0008-50 ",.02)
 ;;52959-0008-50
 ;;9002226.02101,"730,52959-0008-60 ",.01)
 ;;52959-0008-60
 ;;9002226.02101,"730,52959-0008-60 ",.02)
 ;;52959-0008-60
 ;;9002226.02101,"730,52959-0008-90 ",.01)
 ;;52959-0008-90
 ;;9002226.02101,"730,52959-0008-90 ",.02)
 ;;52959-0008-90
 ;;9002226.02101,"730,52959-0023-06 ",.01)
 ;;52959-0023-06
 ;;9002226.02101,"730,52959-0023-06 ",.02)
 ;;52959-0023-06
 ;;9002226.02101,"730,52959-0023-20 ",.01)
 ;;52959-0023-20
 ;;9002226.02101,"730,52959-0023-20 ",.02)
 ;;52959-0023-20
 ;;9002226.02101,"730,52959-0023-30 ",.01)
 ;;52959-0023-30
 ;;9002226.02101,"730,52959-0023-30 ",.02)
 ;;52959-0023-30
 ;;9002226.02101,"730,52959-0023-50 ",.01)
 ;;52959-0023-50
 ;;9002226.02101,"730,52959-0023-50 ",.02)
 ;;52959-0023-50
 ;;9002226.02101,"730,52959-0023-60 ",.01)
 ;;52959-0023-60
 ;;9002226.02101,"730,52959-0023-60 ",.02)
 ;;52959-0023-60
 ;;9002226.02101,"730,52959-0274-03 ",.01)
 ;;52959-0274-03
 ;;9002226.02101,"730,52959-0274-03 ",.02)
 ;;52959-0274-03
 ;;9002226.02101,"730,52959-0274-06 ",.01)
 ;;52959-0274-06
 ;;9002226.02101,"730,52959-0274-06 ",.02)
 ;;52959-0274-06
 ;;9002226.02101,"730,52959-0274-30 ",.01)
 ;;52959-0274-30
 ;;9002226.02101,"730,52959-0274-30 ",.02)
 ;;52959-0274-30
 ;;9002226.02101,"730,52959-0284-00 ",.01)
 ;;52959-0284-00
 ;;9002226.02101,"730,52959-0284-00 ",.02)
 ;;52959-0284-00
 ;;9002226.02101,"730,52959-0284-30 ",.01)
 ;;52959-0284-30
 ;;9002226.02101,"730,52959-0284-30 ",.02)
 ;;52959-0284-30
 ;;9002226.02101,"730,52959-0284-60 ",.01)
 ;;52959-0284-60
 ;;9002226.02101,"730,52959-0284-60 ",.02)
 ;;52959-0284-60
 ;;9002226.02101,"730,52959-0348-00 ",.01)
 ;;52959-0348-00
 ;;9002226.02101,"730,52959-0348-00 ",.02)
 ;;52959-0348-00
 ;;9002226.02101,"730,52959-0348-02 ",.01)
 ;;52959-0348-02
 ;;9002226.02101,"730,52959-0348-02 ",.02)
 ;;52959-0348-02
 ;;9002226.02101,"730,52959-0348-10 ",.01)
 ;;52959-0348-10
 ;;9002226.02101,"730,52959-0348-10 ",.02)
 ;;52959-0348-10
 ;;9002226.02101,"730,52959-0348-12 ",.01)
 ;;52959-0348-12
 ;;9002226.02101,"730,52959-0348-12 ",.02)
 ;;52959-0348-12
 ;;9002226.02101,"730,52959-0348-14 ",.01)
 ;;52959-0348-14
 ;;9002226.02101,"730,52959-0348-14 ",.02)
 ;;52959-0348-14
 ;;9002226.02101,"730,52959-0348-15 ",.01)
 ;;52959-0348-15
 ;;9002226.02101,"730,52959-0348-15 ",.02)
 ;;52959-0348-15
 ;;9002226.02101,"730,52959-0348-20 ",.01)
 ;;52959-0348-20
 ;;9002226.02101,"730,52959-0348-20 ",.02)
 ;;52959-0348-20
 ;;9002226.02101,"730,52959-0348-30 ",.01)
 ;;52959-0348-30
 ;;9002226.02101,"730,52959-0348-30 ",.02)
 ;;52959-0348-30
 ;;9002226.02101,"730,52959-0348-50 ",.01)
 ;;52959-0348-50
 ;;9002226.02101,"730,52959-0348-50 ",.02)
 ;;52959-0348-50
 ;;9002226.02101,"730,52959-0348-60 ",.01)
 ;;52959-0348-60
 ;;9002226.02101,"730,52959-0348-60 ",.02)
 ;;52959-0348-60
 ;;9002226.02101,"730,52959-0348-90 ",.01)
 ;;52959-0348-90
 ;;9002226.02101,"730,52959-0348-90 ",.02)
 ;;52959-0348-90
 ;;9002226.02101,"730,52959-0362-10 ",.01)
 ;;52959-0362-10
 ;;9002226.02101,"730,52959-0362-10 ",.02)
 ;;52959-0362-10
 ;;9002226.02101,"730,52959-0362-15 ",.01)
 ;;52959-0362-15
 ;;9002226.02101,"730,52959-0362-15 ",.02)
 ;;52959-0362-15
 ;;9002226.02101,"730,52959-0362-20 ",.01)
 ;;52959-0362-20
 ;;9002226.02101,"730,52959-0362-20 ",.02)
 ;;52959-0362-20
 ;;9002226.02101,"730,52959-0362-30 ",.01)
 ;;52959-0362-30
 ;;9002226.02101,"730,52959-0362-30 ",.02)
 ;;52959-0362-30
 ;;9002226.02101,"730,52959-0362-60 ",.01)
 ;;52959-0362-60
 ;;9002226.02101,"730,52959-0362-60 ",.02)
 ;;52959-0362-60
 ;;9002226.02101,"730,52959-0363-10 ",.01)
 ;;52959-0363-10
 ;;9002226.02101,"730,52959-0363-10 ",.02)
 ;;52959-0363-10
 ;;9002226.02101,"730,52959-0363-15 ",.01)
 ;;52959-0363-15
 ;;9002226.02101,"730,52959-0363-15 ",.02)
 ;;52959-0363-15
 ;;9002226.02101,"730,52959-0363-20 ",.01)
 ;;52959-0363-20
 ;;9002226.02101,"730,52959-0363-20 ",.02)
 ;;52959-0363-20
 ;;9002226.02101,"730,52959-0363-21 ",.01)
 ;;52959-0363-21
 ;;9002226.02101,"730,52959-0363-21 ",.02)
 ;;52959-0363-21
 ;;9002226.02101,"730,52959-0363-25 ",.01)
 ;;52959-0363-25
 ;;9002226.02101,"730,52959-0363-25 ",.02)
 ;;52959-0363-25
 ;;9002226.02101,"730,52959-0363-30 ",.01)
 ;;52959-0363-30
 ;;9002226.02101,"730,52959-0363-30 ",.02)
 ;;52959-0363-30
 ;;9002226.02101,"730,52959-0363-60 ",.01)
 ;;52959-0363-60
 ;;9002226.02101,"730,52959-0363-60 ",.02)
 ;;52959-0363-60
 ;;9002226.02101,"730,52959-0370-00 ",.01)
 ;;52959-0370-00
 ;;9002226.02101,"730,52959-0370-00 ",.02)
 ;;52959-0370-00
 ;;9002226.02101,"730,52959-0370-02 ",.01)
 ;;52959-0370-02
 ;;9002226.02101,"730,52959-0370-02 ",.02)
 ;;52959-0370-02
 ;;9002226.02101,"730,52959-0370-12 ",.01)
 ;;52959-0370-12
 ;;9002226.02101,"730,52959-0370-12 ",.02)
 ;;52959-0370-12
 ;;9002226.02101,"730,52959-0370-20 ",.01)
 ;;52959-0370-20
 ;;9002226.02101,"730,52959-0370-20 ",.02)
 ;;52959-0370-20
 ;;9002226.02101,"730,52959-0370-25 ",.01)
 ;;52959-0370-25
 ;;9002226.02101,"730,52959-0370-25 ",.02)
 ;;52959-0370-25
 ;;9002226.02101,"730,52959-0370-30 ",.01)
 ;;52959-0370-30
 ;;9002226.02101,"730,52959-0370-30 ",.02)
 ;;52959-0370-30
 ;;9002226.02101,"730,52959-0370-50 ",.01)
 ;;52959-0370-50
 ;;9002226.02101,"730,52959-0370-50 ",.02)
 ;;52959-0370-50
 ;;9002226.02101,"730,52959-0370-60 ",.01)
 ;;52959-0370-60
 ;;9002226.02101,"730,52959-0370-60 ",.02)
 ;;52959-0370-60
 ;;9002226.02101,"730,52959-0370-90 ",.01)
 ;;52959-0370-90
 ;;9002226.02101,"730,52959-0370-90 ",.02)
 ;;52959-0370-90
 ;;9002226.02101,"730,52959-0399-00 ",.01)
 ;;52959-0399-00
 ;;9002226.02101,"730,52959-0399-00 ",.02)
 ;;52959-0399-00
 ;;9002226.02101,"730,52959-0399-02 ",.01)
 ;;52959-0399-02
 ;;9002226.02101,"730,52959-0399-02 ",.02)
 ;;52959-0399-02
 ;;9002226.02101,"730,52959-0399-30 ",.01)
 ;;52959-0399-30
 ;;9002226.02101,"730,52959-0399-30 ",.02)
 ;;52959-0399-30
 ;;9002226.02101,"730,52959-0399-50 ",.01)
 ;;52959-0399-50
 ;;9002226.02101,"730,52959-0399-50 ",.02)
 ;;52959-0399-50
 ;;9002226.02101,"730,52959-0399-90 ",.01)
 ;;52959-0399-90
 ;;9002226.02101,"730,52959-0399-90 ",.02)
 ;;52959-0399-90
 ;;9002226.02101,"730,52959-0514-00 ",.01)
 ;;52959-0514-00
 ;;9002226.02101,"730,52959-0514-00 ",.02)
 ;;52959-0514-00
 ;;9002226.02101,"730,52959-0514-01 ",.01)
 ;;52959-0514-01
 ;;9002226.02101,"730,52959-0514-01 ",.02)
 ;;52959-0514-01
 ;;9002226.02101,"730,52959-0514-10 ",.01)
 ;;52959-0514-10
 ;;9002226.02101,"730,52959-0514-10 ",.02)
 ;;52959-0514-10
 ;;9002226.02101,"730,52959-0514-20 ",.01)
 ;;52959-0514-20
 ;;9002226.02101,"730,52959-0514-20 ",.02)
 ;;52959-0514-20
 ;;9002226.02101,"730,52959-0514-21 ",.01)
 ;;52959-0514-21
 ;;9002226.02101,"730,52959-0514-21 ",.02)
 ;;52959-0514-21
 ;;9002226.02101,"730,52959-0514-30 ",.01)
 ;;52959-0514-30
