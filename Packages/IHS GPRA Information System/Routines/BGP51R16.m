BGP51R16 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1197,51079-0949-08 ",.01)
 ;;51079-0949-08
 ;;9002226.02101,"1197,51079-0949-08 ",.02)
 ;;51079-0949-08
 ;;9002226.02101,"1197,51138-0086-30 ",.01)
 ;;51138-0086-30
 ;;9002226.02101,"1197,51138-0086-30 ",.02)
 ;;51138-0086-30
 ;;9002226.02101,"1197,51138-0087-30 ",.01)
 ;;51138-0087-30
 ;;9002226.02101,"1197,51138-0087-30 ",.02)
 ;;51138-0087-30
 ;;9002226.02101,"1197,51138-0088-30 ",.01)
 ;;51138-0088-30
 ;;9002226.02101,"1197,51138-0088-30 ",.02)
 ;;51138-0088-30
 ;;9002226.02101,"1197,51138-0151-30 ",.01)
 ;;51138-0151-30
 ;;9002226.02101,"1197,51138-0151-30 ",.02)
 ;;51138-0151-30
 ;;9002226.02101,"1197,51138-0152-30 ",.01)
 ;;51138-0152-30
 ;;9002226.02101,"1197,51138-0152-30 ",.02)
 ;;51138-0152-30
 ;;9002226.02101,"1197,51138-0153-30 ",.01)
 ;;51138-0153-30
 ;;9002226.02101,"1197,51138-0153-30 ",.02)
 ;;51138-0153-30
 ;;9002226.02101,"1197,51138-0279-30 ",.01)
 ;;51138-0279-30
 ;;9002226.02101,"1197,51138-0279-30 ",.02)
 ;;51138-0279-30
 ;;9002226.02101,"1197,51138-0280-30 ",.01)
 ;;51138-0280-30
 ;;9002226.02101,"1197,51138-0280-30 ",.02)
 ;;51138-0280-30
 ;;9002226.02101,"1197,51138-0281-30 ",.01)
 ;;51138-0281-30
 ;;9002226.02101,"1197,51138-0281-30 ",.02)
 ;;51138-0281-30
 ;;9002226.02101,"1197,51138-0287-30 ",.01)
 ;;51138-0287-30
 ;;9002226.02101,"1197,51138-0287-30 ",.02)
 ;;51138-0287-30
 ;;9002226.02101,"1197,51138-0288-30 ",.01)
 ;;51138-0288-30
 ;;9002226.02101,"1197,51138-0288-30 ",.02)
 ;;51138-0288-30
 ;;9002226.02101,"1197,51138-0289-30 ",.01)
 ;;51138-0289-30
 ;;9002226.02101,"1197,51138-0289-30 ",.02)
 ;;51138-0289-30
 ;;9002226.02101,"1197,51138-0292-30 ",.01)
 ;;51138-0292-30
 ;;9002226.02101,"1197,51138-0292-30 ",.02)
 ;;51138-0292-30
 ;;9002226.02101,"1197,51138-0293-30 ",.01)
 ;;51138-0293-30
 ;;9002226.02101,"1197,51138-0293-30 ",.02)
 ;;51138-0293-30
 ;;9002226.02101,"1197,51138-0294-30 ",.01)
 ;;51138-0294-30
 ;;9002226.02101,"1197,51138-0294-30 ",.02)
 ;;51138-0294-30
 ;;9002226.02101,"1197,51138-0295-30 ",.01)
 ;;51138-0295-30
 ;;9002226.02101,"1197,51138-0295-30 ",.02)
 ;;51138-0295-30
 ;;9002226.02101,"1197,51138-0296-10 ",.01)
 ;;51138-0296-10
 ;;9002226.02101,"1197,51138-0296-10 ",.02)
 ;;51138-0296-10
 ;;9002226.02101,"1197,51138-0296-30 ",.01)
 ;;51138-0296-30
 ;;9002226.02101,"1197,51138-0296-30 ",.02)
 ;;51138-0296-30
 ;;9002226.02101,"1197,51138-0297-30 ",.01)
 ;;51138-0297-30
 ;;9002226.02101,"1197,51138-0297-30 ",.02)
 ;;51138-0297-30
 ;;9002226.02101,"1197,51138-0298-20 ",.01)
 ;;51138-0298-20
 ;;9002226.02101,"1197,51138-0298-20 ",.02)
 ;;51138-0298-20
 ;;9002226.02101,"1197,51138-0298-30 ",.01)
 ;;51138-0298-30
 ;;9002226.02101,"1197,51138-0298-30 ",.02)
 ;;51138-0298-30
 ;;9002226.02101,"1197,51138-0299-30 ",.01)
 ;;51138-0299-30
 ;;9002226.02101,"1197,51138-0299-30 ",.02)
 ;;51138-0299-30
 ;;9002226.02101,"1197,51138-0300-30 ",.01)
 ;;51138-0300-30
 ;;9002226.02101,"1197,51138-0300-30 ",.02)
 ;;51138-0300-30
 ;;9002226.02101,"1197,51138-0301-30 ",.01)
 ;;51138-0301-30
 ;;9002226.02101,"1197,51138-0301-30 ",.02)
 ;;51138-0301-30
 ;;9002226.02101,"1197,51138-0302-10 ",.01)
 ;;51138-0302-10
 ;;9002226.02101,"1197,51138-0302-10 ",.02)
 ;;51138-0302-10
 ;;9002226.02101,"1197,51138-0302-30 ",.01)
 ;;51138-0302-30
 ;;9002226.02101,"1197,51138-0302-30 ",.02)
 ;;51138-0302-30
 ;;9002226.02101,"1197,51138-0303-30 ",.01)
 ;;51138-0303-30
 ;;9002226.02101,"1197,51138-0303-30 ",.02)
 ;;51138-0303-30
 ;;9002226.02101,"1197,51138-0304-20 ",.01)
 ;;51138-0304-20
 ;;9002226.02101,"1197,51138-0304-20 ",.02)
 ;;51138-0304-20
 ;;9002226.02101,"1197,51138-0304-30 ",.01)
 ;;51138-0304-30
 ;;9002226.02101,"1197,51138-0304-30 ",.02)
 ;;51138-0304-30
 ;;9002226.02101,"1197,51138-0305-30 ",.01)
 ;;51138-0305-30
 ;;9002226.02101,"1197,51138-0305-30 ",.02)
 ;;51138-0305-30
 ;;9002226.02101,"1197,51138-0360-10 ",.01)
 ;;51138-0360-10
 ;;9002226.02101,"1197,51138-0360-10 ",.02)
 ;;51138-0360-10
 ;;9002226.02101,"1197,51138-0360-30 ",.01)
 ;;51138-0360-30
 ;;9002226.02101,"1197,51138-0360-30 ",.02)
 ;;51138-0360-30
 ;;9002226.02101,"1197,51138-0361-10 ",.01)
 ;;51138-0361-10
 ;;9002226.02101,"1197,51138-0361-10 ",.02)
 ;;51138-0361-10
 ;;9002226.02101,"1197,51138-0361-30 ",.01)
 ;;51138-0361-30
 ;;9002226.02101,"1197,51138-0361-30 ",.02)
 ;;51138-0361-30
 ;;9002226.02101,"1197,51138-0362-10 ",.01)
 ;;51138-0362-10
 ;;9002226.02101,"1197,51138-0362-10 ",.02)
 ;;51138-0362-10
 ;;9002226.02101,"1197,51138-0362-30 ",.01)
 ;;51138-0362-30
 ;;9002226.02101,"1197,51138-0362-30 ",.02)
 ;;51138-0362-30
 ;;9002226.02101,"1197,51138-0387-10 ",.01)
 ;;51138-0387-10
 ;;9002226.02101,"1197,51138-0387-10 ",.02)
 ;;51138-0387-10
 ;;9002226.02101,"1197,51138-0387-30 ",.01)
 ;;51138-0387-30
 ;;9002226.02101,"1197,51138-0387-30 ",.02)
 ;;51138-0387-30
 ;;9002226.02101,"1197,51138-0388-10 ",.01)
 ;;51138-0388-10
 ;;9002226.02101,"1197,51138-0388-10 ",.02)
 ;;51138-0388-10
 ;;9002226.02101,"1197,51138-0388-30 ",.01)
 ;;51138-0388-30
 ;;9002226.02101,"1197,51138-0388-30 ",.02)
 ;;51138-0388-30
 ;;9002226.02101,"1197,51138-0389-10 ",.01)
 ;;51138-0389-10
 ;;9002226.02101,"1197,51138-0389-10 ",.02)
 ;;51138-0389-10
 ;;9002226.02101,"1197,51138-0389-30 ",.01)
 ;;51138-0389-30
 ;;9002226.02101,"1197,51138-0389-30 ",.02)
 ;;51138-0389-30
 ;;9002226.02101,"1197,51138-0390-10 ",.01)
 ;;51138-0390-10
 ;;9002226.02101,"1197,51138-0390-10 ",.02)
 ;;51138-0390-10
 ;;9002226.02101,"1197,51138-0390-30 ",.01)
 ;;51138-0390-30
 ;;9002226.02101,"1197,51138-0390-30 ",.02)
 ;;51138-0390-30
 ;;9002226.02101,"1197,51138-0391-10 ",.01)
 ;;51138-0391-10
 ;;9002226.02101,"1197,51138-0391-10 ",.02)
 ;;51138-0391-10
 ;;9002226.02101,"1197,51138-0391-30 ",.01)
 ;;51138-0391-30
 ;;9002226.02101,"1197,51138-0391-30 ",.02)
 ;;51138-0391-30
 ;;9002226.02101,"1197,51138-0404-30 ",.01)
 ;;51138-0404-30
 ;;9002226.02101,"1197,51138-0404-30 ",.02)
 ;;51138-0404-30
 ;;9002226.02101,"1197,51138-0405-10 ",.01)
 ;;51138-0405-10
 ;;9002226.02101,"1197,51138-0405-10 ",.02)
 ;;51138-0405-10
 ;;9002226.02101,"1197,51138-0405-30 ",.01)
 ;;51138-0405-30
 ;;9002226.02101,"1197,51138-0405-30 ",.02)
 ;;51138-0405-30
 ;;9002226.02101,"1197,51138-0406-10 ",.01)
 ;;51138-0406-10
 ;;9002226.02101,"1197,51138-0406-10 ",.02)
 ;;51138-0406-10
 ;;9002226.02101,"1197,51138-0406-30 ",.01)
 ;;51138-0406-30
 ;;9002226.02101,"1197,51138-0406-30 ",.02)
 ;;51138-0406-30
 ;;9002226.02101,"1197,51138-0418-30 ",.01)
 ;;51138-0418-30
 ;;9002226.02101,"1197,51138-0418-30 ",.02)
 ;;51138-0418-30
 ;;9002226.02101,"1197,51138-0419-30 ",.01)
 ;;51138-0419-30
 ;;9002226.02101,"1197,51138-0419-30 ",.02)
 ;;51138-0419-30
 ;;9002226.02101,"1197,51138-0420-30 ",.01)
 ;;51138-0420-30
 ;;9002226.02101,"1197,51138-0420-30 ",.02)
 ;;51138-0420-30
 ;;9002226.02101,"1197,51138-0422-30 ",.01)
 ;;51138-0422-30
 ;;9002226.02101,"1197,51138-0422-30 ",.02)
 ;;51138-0422-30
 ;;9002226.02101,"1197,51138-0432-30 ",.01)
 ;;51138-0432-30
 ;;9002226.02101,"1197,51138-0432-30 ",.02)
 ;;51138-0432-30
 ;;9002226.02101,"1197,51138-0433-30 ",.01)
 ;;51138-0433-30
 ;;9002226.02101,"1197,51138-0433-30 ",.02)
 ;;51138-0433-30
 ;;9002226.02101,"1197,51138-0434-30 ",.01)
 ;;51138-0434-30
 ;;9002226.02101,"1197,51138-0434-30 ",.02)
 ;;51138-0434-30
 ;;9002226.02101,"1197,51138-0435-30 ",.01)
 ;;51138-0435-30
 ;;9002226.02101,"1197,51138-0435-30 ",.02)
 ;;51138-0435-30
 ;;9002226.02101,"1197,51138-0531-10 ",.01)
 ;;51138-0531-10
 ;;9002226.02101,"1197,51138-0531-10 ",.02)
 ;;51138-0531-10
 ;;9002226.02101,"1197,51138-0531-30 ",.01)
 ;;51138-0531-30
 ;;9002226.02101,"1197,51138-0531-30 ",.02)
 ;;51138-0531-30
 ;;9002226.02101,"1197,51138-0532-10 ",.01)
 ;;51138-0532-10
 ;;9002226.02101,"1197,51138-0532-10 ",.02)
 ;;51138-0532-10
 ;;9002226.02101,"1197,51138-0532-30 ",.01)
 ;;51138-0532-30
 ;;9002226.02101,"1197,51138-0532-30 ",.02)
 ;;51138-0532-30
 ;;9002226.02101,"1197,51138-0533-10 ",.01)
 ;;51138-0533-10
 ;;9002226.02101,"1197,51138-0533-10 ",.02)
 ;;51138-0533-10
 ;;9002226.02101,"1197,51138-0533-30 ",.01)
 ;;51138-0533-30
 ;;9002226.02101,"1197,51138-0533-30 ",.02)
 ;;51138-0533-30
 ;;9002226.02101,"1197,51138-0534-10 ",.01)
 ;;51138-0534-10
 ;;9002226.02101,"1197,51138-0534-10 ",.02)
 ;;51138-0534-10
 ;;9002226.02101,"1197,51138-0534-30 ",.01)
 ;;51138-0534-30
 ;;9002226.02101,"1197,51138-0534-30 ",.02)
 ;;51138-0534-30
 ;;9002226.02101,"1197,51138-0535-10 ",.01)
 ;;51138-0535-10
 ;;9002226.02101,"1197,51138-0535-10 ",.02)
 ;;51138-0535-10
 ;;9002226.02101,"1197,51138-0535-30 ",.01)
 ;;51138-0535-30
 ;;9002226.02101,"1197,51138-0535-30 ",.02)
 ;;51138-0535-30
 ;;9002226.02101,"1197,51138-0536-10 ",.01)
 ;;51138-0536-10
 ;;9002226.02101,"1197,51138-0536-10 ",.02)
 ;;51138-0536-10
 ;;9002226.02101,"1197,51138-0536-30 ",.01)
 ;;51138-0536-30
 ;;9002226.02101,"1197,51138-0536-30 ",.02)
 ;;51138-0536-30
 ;;9002226.02101,"1197,51138-0544-30 ",.01)
 ;;51138-0544-30
 ;;9002226.02101,"1197,51138-0544-30 ",.02)
 ;;51138-0544-30
 ;;9002226.02101,"1197,51138-0545-30 ",.01)
 ;;51138-0545-30
 ;;9002226.02101,"1197,51138-0545-30 ",.02)
 ;;51138-0545-30
 ;;9002226.02101,"1197,51138-0546-30 ",.01)
 ;;51138-0546-30
 ;;9002226.02101,"1197,51138-0546-30 ",.02)
 ;;51138-0546-30
 ;;9002226.02101,"1197,51138-0547-30 ",.01)
 ;;51138-0547-30
 ;;9002226.02101,"1197,51138-0547-30 ",.02)
 ;;51138-0547-30
 ;;9002226.02101,"1197,51138-0548-30 ",.01)
 ;;51138-0548-30
 ;;9002226.02101,"1197,51138-0548-30 ",.02)
 ;;51138-0548-30
 ;;9002226.02101,"1197,51138-0557-30 ",.01)
 ;;51138-0557-30
 ;;9002226.02101,"1197,51138-0557-30 ",.02)
 ;;51138-0557-30
 ;;9002226.02101,"1197,51138-0558-30 ",.01)
 ;;51138-0558-30
 ;;9002226.02101,"1197,51138-0558-30 ",.02)
 ;;51138-0558-30
 ;;9002226.02101,"1197,51138-0559-30 ",.01)
 ;;51138-0559-30
 ;;9002226.02101,"1197,51138-0559-30 ",.02)
 ;;51138-0559-30
 ;;9002226.02101,"1197,51138-0560-30 ",.01)
 ;;51138-0560-30
 ;;9002226.02101,"1197,51138-0560-30 ",.02)
 ;;51138-0560-30
 ;;9002226.02101,"1197,51138-0576-30 ",.01)
 ;;51138-0576-30
 ;;9002226.02101,"1197,51138-0576-30 ",.02)
 ;;51138-0576-30
 ;;9002226.02101,"1197,51138-0577-20 ",.01)
 ;;51138-0577-20
 ;;9002226.02101,"1197,51138-0577-20 ",.02)
 ;;51138-0577-20
 ;;9002226.02101,"1197,51138-0577-30 ",.01)
 ;;51138-0577-30
 ;;9002226.02101,"1197,51138-0577-30 ",.02)
 ;;51138-0577-30
 ;;9002226.02101,"1197,51138-0578-10 ",.01)
 ;;51138-0578-10
 ;;9002226.02101,"1197,51138-0578-10 ",.02)
 ;;51138-0578-10
 ;;9002226.02101,"1197,51138-0578-30 ",.01)
 ;;51138-0578-30
 ;;9002226.02101,"1197,51138-0578-30 ",.02)
 ;;51138-0578-30
 ;;9002226.02101,"1197,51138-0579-10 ",.01)
 ;;51138-0579-10
 ;;9002226.02101,"1197,51138-0579-10 ",.02)
 ;;51138-0579-10
 ;;9002226.02101,"1197,51138-0579-20 ",.01)
 ;;51138-0579-20
 ;;9002226.02101,"1197,51138-0579-20 ",.02)
 ;;51138-0579-20
 ;;9002226.02101,"1197,51138-0579-30 ",.01)
 ;;51138-0579-30
 ;;9002226.02101,"1197,51138-0579-30 ",.02)
 ;;51138-0579-30
 ;;9002226.02101,"1197,51991-0667-90 ",.01)
 ;;51991-0667-90
 ;;9002226.02101,"1197,51991-0667-90 ",.02)
 ;;51991-0667-90
 ;;9002226.02101,"1197,51991-0668-90 ",.01)
 ;;51991-0668-90
 ;;9002226.02101,"1197,51991-0668-90 ",.02)
 ;;51991-0668-90
 ;;9002226.02101,"1197,52544-0484-01 ",.01)
 ;;52544-0484-01
 ;;9002226.02101,"1197,52544-0484-01 ",.02)
 ;;52544-0484-01
 ;;9002226.02101,"1197,52544-0691-19 ",.01)
 ;;52544-0691-19
 ;;9002226.02101,"1197,52544-0691-19 ",.02)
 ;;52544-0691-19
 ;;9002226.02101,"1197,52544-0691-30 ",.01)
 ;;52544-0691-30
 ;;9002226.02101,"1197,52544-0691-30 ",.02)
 ;;52544-0691-30
 ;;9002226.02101,"1197,52544-0692-19 ",.01)
 ;;52544-0692-19
 ;;9002226.02101,"1197,52544-0692-19 ",.02)
 ;;52544-0692-19
 ;;9002226.02101,"1197,52544-0692-30 ",.01)
 ;;52544-0692-30
 ;;9002226.02101,"1197,52544-0692-30 ",.02)
 ;;52544-0692-30
 ;;9002226.02101,"1197,52544-0693-19 ",.01)
 ;;52544-0693-19
 ;;9002226.02101,"1197,52544-0693-19 ",.02)
 ;;52544-0693-19
 ;;9002226.02101,"1197,52544-0693-30 ",.01)
 ;;52544-0693-30
 ;;9002226.02101,"1197,52544-0693-30 ",.02)
 ;;52544-0693-30
 ;;9002226.02101,"1197,52544-0694-19 ",.01)
 ;;52544-0694-19
 ;;9002226.02101,"1197,52544-0694-19 ",.02)
 ;;52544-0694-19
 ;;9002226.02101,"1197,52544-0694-30 ",.01)
 ;;52544-0694-30
 ;;9002226.02101,"1197,52544-0694-30 ",.02)
 ;;52544-0694-30
 ;;9002226.02101,"1197,52544-0695-19 ",.01)
 ;;52544-0695-19
 ;;9002226.02101,"1197,52544-0695-19 ",.02)
 ;;52544-0695-19
 ;;9002226.02101,"1197,52544-0695-30 ",.01)
 ;;52544-0695-30
 ;;9002226.02101,"1197,52544-0695-30 ",.02)
 ;;52544-0695-30
 ;;9002226.02101,"1197,52959-0050-30 ",.01)
 ;;52959-0050-30
 ;;9002226.02101,"1197,52959-0050-30 ",.02)
 ;;52959-0050-30
 ;;9002226.02101,"1197,52959-0072-01 ",.01)
 ;;52959-0072-01
 ;;9002226.02101,"1197,52959-0072-01 ",.02)
 ;;52959-0072-01
 ;;9002226.02101,"1197,52959-0209-90 ",.01)
 ;;52959-0209-90
 ;;9002226.02101,"1197,52959-0209-90 ",.02)
 ;;52959-0209-90
 ;;9002226.02101,"1197,52959-0910-90 ",.01)
 ;;52959-0910-90
 ;;9002226.02101,"1197,52959-0910-90 ",.02)
 ;;52959-0910-90
 ;;9002226.02101,"1197,52959-0911-30 ",.01)
 ;;52959-0911-30
 ;;9002226.02101,"1197,52959-0911-30 ",.02)
 ;;52959-0911-30
 ;;9002226.02101,"1197,52959-0911-90 ",.01)
 ;;52959-0911-90
 ;;9002226.02101,"1197,52959-0911-90 ",.02)
 ;;52959-0911-90
 ;;9002226.02101,"1197,52959-0982-60 ",.01)
 ;;52959-0982-60
 ;;9002226.02101,"1197,52959-0982-60 ",.02)
 ;;52959-0982-60
 ;;9002226.02101,"1197,52959-0996-60 ",.01)
 ;;52959-0996-60
