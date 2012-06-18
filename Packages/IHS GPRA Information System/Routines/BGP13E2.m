BGP13E2 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON APR 14, 2011 ;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;;JUN 27, 2011;Build 33
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"990,00677-0824-01 ",.01)
 ;;00677-0824-01
 ;;9002226.02101,"990,00677-0824-01 ",.02)
 ;;00677-0824-01
 ;;9002226.02101,"990,00677-0824-10 ",.01)
 ;;00677-0824-10
 ;;9002226.02101,"990,00677-0824-10 ",.02)
 ;;00677-0824-10
 ;;9002226.02101,"990,00677-0825-01 ",.01)
 ;;00677-0825-01
 ;;9002226.02101,"990,00677-0825-01 ",.02)
 ;;00677-0825-01
 ;;9002226.02101,"990,00677-0832-01 ",.01)
 ;;00677-0832-01
 ;;9002226.02101,"990,00677-0832-01 ",.02)
 ;;00677-0832-01
 ;;9002226.02101,"990,00677-0832-06 ",.01)
 ;;00677-0832-06
 ;;9002226.02101,"990,00677-0832-06 ",.02)
 ;;00677-0832-06
 ;;9002226.02101,"990,00781-0268-06 ",.01)
 ;;00781-0268-06
 ;;9002226.02101,"990,00781-0268-06 ",.02)
 ;;00781-0268-06
 ;;9002226.02101,"990,00781-1604-01 ",.01)
 ;;00781-1604-01
 ;;9002226.02101,"990,00781-1604-01 ",.02)
 ;;00781-1604-01
 ;;9002226.02101,"990,00781-1614-01 ",.01)
 ;;00781-1614-01
 ;;9002226.02101,"990,00781-1614-01 ",.02)
 ;;00781-1614-01
 ;;9002226.02101,"990,00781-1624-01 ",.01)
 ;;00781-1624-01
 ;;9002226.02101,"990,00781-1624-01 ",.02)
 ;;00781-1624-01
 ;;9002226.02101,"990,00781-1624-10 ",.01)
 ;;00781-1624-10
 ;;9002226.02101,"990,00781-1624-10 ",.02)
 ;;00781-1624-10
 ;;9002226.02101,"990,00781-1634-01 ",.01)
 ;;00781-1634-01
 ;;9002226.02101,"990,00781-1634-01 ",.02)
 ;;00781-1634-01
 ;;9002226.02101,"990,00781-1644-01 ",.01)
 ;;00781-1644-01
 ;;9002226.02101,"990,00781-1644-01 ",.02)
 ;;00781-1644-01
 ;;9002226.02101,"990,00781-1664-01 ",.01)
 ;;00781-1664-01
 ;;9002226.02101,"990,00781-1664-01 ",.02)
 ;;00781-1664-01
 ;;9002226.02101,"990,00781-1674-01 ",.01)
 ;;00781-1674-01
 ;;9002226.02101,"990,00781-1674-01 ",.02)
 ;;00781-1674-01
 ;;9002226.02101,"990,00781-6150-04 ",.01)
 ;;00781-6150-04
 ;;9002226.02101,"990,00781-6150-04 ",.02)
 ;;00781-6150-04
 ;;9002226.02101,"990,00904-1614-60 ",.01)
 ;;00904-1614-60
 ;;9002226.02101,"990,00904-1614-60 ",.02)
 ;;00904-1614-60
 ;;9002226.02101,"990,00904-1614-80 ",.01)
 ;;00904-1614-80
 ;;9002226.02101,"990,00904-1614-80 ",.02)
 ;;00904-1614-80
 ;;9002226.02101,"990,00904-1615-60 ",.01)
 ;;00904-1615-60
 ;;9002226.02101,"990,00904-1615-60 ",.02)
 ;;00904-1615-60
 ;;9002226.02101,"990,00904-1616-60 ",.01)
 ;;00904-1616-60
 ;;9002226.02101,"990,00904-1616-60 ",.02)
 ;;00904-1616-60
 ;;9002226.02101,"990,00904-1616-80 ",.01)
 ;;00904-1616-80
 ;;9002226.02101,"990,00904-1616-80 ",.02)
 ;;00904-1616-80
 ;;9002226.02101,"990,00904-1617-60 ",.01)
 ;;00904-1617-60
 ;;9002226.02101,"990,00904-1617-60 ",.02)
 ;;00904-1617-60
 ;;9002226.02101,"990,00904-1617-80 ",.01)
 ;;00904-1617-80
 ;;9002226.02101,"990,00904-1617-80 ",.02)
 ;;00904-1617-80
 ;;9002226.02101,"990,00904-1618-40 ",.01)
 ;;00904-1618-40
 ;;9002226.02101,"990,00904-1618-40 ",.02)
 ;;00904-1618-40
 ;;9002226.02101,"990,00904-1618-60 ",.01)
 ;;00904-1618-60
 ;;9002226.02101,"990,00904-1618-60 ",.02)
 ;;00904-1618-60
 ;;9002226.02101,"990,00904-1618-80 ",.01)
 ;;00904-1618-80
 ;;9002226.02101,"990,00904-1618-80 ",.02)
 ;;00904-1618-80
 ;;9002226.02101,"990,00904-1793-60 ",.01)
 ;;00904-1793-60
 ;;9002226.02101,"990,00904-1793-60 ",.02)
 ;;00904-1793-60
 ;;9002226.02101,"990,00904-1793-61 ",.01)
 ;;00904-1793-61
 ;;9002226.02101,"990,00904-1793-61 ",.02)
 ;;00904-1793-61
 ;;9002226.02101,"990,00904-1793-80 ",.01)
 ;;00904-1793-80
 ;;9002226.02101,"990,00904-1793-80 ",.02)
 ;;00904-1793-80
 ;;9002226.02101,"990,00904-1794-60 ",.01)
 ;;00904-1794-60
 ;;9002226.02101,"990,00904-1794-60 ",.02)
 ;;00904-1794-60
 ;;9002226.02101,"990,00904-1795-60 ",.01)
 ;;00904-1795-60
 ;;9002226.02101,"990,00904-1795-60 ",.02)
 ;;00904-1795-60
 ;;9002226.02101,"990,00904-1795-61 ",.01)
 ;;00904-1795-61
 ;;9002226.02101,"990,00904-1795-61 ",.02)
 ;;00904-1795-61
 ;;9002226.02101,"990,00904-1795-80 ",.01)
 ;;00904-1795-80
 ;;9002226.02101,"990,00904-1795-80 ",.02)
 ;;00904-1795-80
 ;;9002226.02101,"990,00904-1796-60 ",.01)
 ;;00904-1796-60
 ;;9002226.02101,"990,00904-1796-60 ",.02)
 ;;00904-1796-60
 ;;9002226.02101,"990,00904-1796-61 ",.01)
 ;;00904-1796-61
 ;;9002226.02101,"990,00904-1796-61 ",.02)
 ;;00904-1796-61
 ;;9002226.02101,"990,00904-1796-80 ",.01)
 ;;00904-1796-80
 ;;9002226.02101,"990,00904-1796-80 ",.02)
 ;;00904-1796-80
 ;;9002226.02101,"990,00904-1797-60 ",.01)
 ;;00904-1797-60
 ;;9002226.02101,"990,00904-1797-60 ",.02)
 ;;00904-1797-60
 ;;9002226.02101,"990,00904-1797-61 ",.01)
 ;;00904-1797-61
 ;;9002226.02101,"990,00904-1797-61 ",.02)
 ;;00904-1797-61
 ;;9002226.02101,"990,00904-1798-61 ",.01)
 ;;00904-1798-61
 ;;9002226.02101,"990,00904-1798-61 ",.02)
 ;;00904-1798-61
 ;;9002226.02101,"990,00904-1799-40 ",.01)
 ;;00904-1799-40
 ;;9002226.02101,"990,00904-1799-40 ",.02)
 ;;00904-1799-40
 ;;9002226.02101,"990,00904-1799-60 ",.01)
 ;;00904-1799-60
 ;;9002226.02101,"990,00904-1799-60 ",.02)
 ;;00904-1799-60
 ;;9002226.02101,"990,00904-1800-61 ",.01)
 ;;00904-1800-61
 ;;9002226.02101,"990,00904-1800-61 ",.02)
 ;;00904-1800-61
 ;;9002226.02101,"990,00904-1801-80 ",.01)
 ;;00904-1801-80
 ;;9002226.02101,"990,00904-1801-80 ",.02)
 ;;00904-1801-80
 ;;9002226.02101,"990,00904-1802-61 ",.01)
 ;;00904-1802-61
 ;;9002226.02101,"990,00904-1802-61 ",.02)
 ;;00904-1802-61
 ;;9002226.02101,"990,00904-1803-61 ",.01)
 ;;00904-1803-61
 ;;9002226.02101,"990,00904-1803-61 ",.02)
 ;;00904-1803-61
 ;;9002226.02101,"990,00904-1804-61 ",.01)
 ;;00904-1804-61
 ;;9002226.02101,"990,00904-1804-61 ",.02)
 ;;00904-1804-61
 ;;9002226.02101,"990,00904-1805-61 ",.01)
 ;;00904-1805-61
 ;;9002226.02101,"990,00904-1805-61 ",.02)
 ;;00904-1805-61
 ;;9002226.02101,"990,00904-1806-61 ",.01)
 ;;00904-1806-61
 ;;9002226.02101,"990,00904-1806-61 ",.02)
 ;;00904-1806-61
 ;;9002226.02101,"990,00904-1808-20 ",.01)
 ;;00904-1808-20
 ;;9002226.02101,"990,00904-1808-20 ",.02)
 ;;00904-1808-20
 ;;9002226.02101,"990,00904-1809-20 ",.01)
 ;;00904-1809-20
 ;;9002226.02101,"990,00904-1809-20 ",.02)
 ;;00904-1809-20
 ;;9002226.02101,"990,00904-5240-60 ",.01)
 ;;00904-5240-60
 ;;9002226.02101,"990,00904-5240-60 ",.02)
 ;;00904-5240-60
 ;;9002226.02101,"990,00904-5241-60 ",.01)
 ;;00904-5241-60
 ;;9002226.02101,"990,00904-5241-60 ",.02)
 ;;00904-5241-60
 ;;9002226.02101,"990,00904-5242-60 ",.01)
 ;;00904-5242-60
 ;;9002226.02101,"990,00904-5242-60 ",.02)
 ;;00904-5242-60
 ;;9002226.02101,"990,00904-7649-60 ",.01)
 ;;00904-7649-60
 ;;9002226.02101,"990,00904-7649-60 ",.02)
 ;;00904-7649-60
 ;;9002226.02101,"990,17236-0301-01 ",.01)
 ;;17236-0301-01
 ;;9002226.02101,"990,17236-0301-01 ",.02)
 ;;17236-0301-01
 ;;9002226.02101,"990,17236-0301-10 ",.01)
 ;;17236-0301-10
 ;;9002226.02101,"990,17236-0301-10 ",.02)
 ;;17236-0301-10
 ;;9002226.02101,"990,17236-0302-01 ",.01)
 ;;17236-0302-01
 ;;9002226.02101,"990,17236-0302-01 ",.02)
 ;;17236-0302-01
 ;;9002226.02101,"990,17236-0302-10 ",.01)
 ;;17236-0302-10
 ;;9002226.02101,"990,17236-0302-10 ",.02)
 ;;17236-0302-10
 ;;9002226.02101,"990,17236-0305-01 ",.01)
 ;;17236-0305-01
 ;;9002226.02101,"990,17236-0305-01 ",.02)
 ;;17236-0305-01
 ;;9002226.02101,"990,17236-0305-10 ",.01)
 ;;17236-0305-10
 ;;9002226.02101,"990,17236-0305-10 ",.02)
 ;;17236-0305-10
 ;;9002226.02101,"990,17236-0318-01 ",.01)
 ;;17236-0318-01
 ;;9002226.02101,"990,17236-0318-01 ",.02)
 ;;17236-0318-01
 ;;9002226.02101,"990,17236-0318-10 ",.01)
 ;;17236-0318-10
 ;;9002226.02101,"990,17236-0318-10 ",.02)
 ;;17236-0318-10
 ;;9002226.02101,"990,51079-0565-01 ",.01)
 ;;51079-0565-01
 ;;9002226.02101,"990,51079-0565-01 ",.02)
 ;;51079-0565-01
 ;;9002226.02101,"990,51079-0565-20 ",.01)
 ;;51079-0565-20
 ;;9002226.02101,"990,51079-0565-20 ",.02)
 ;;51079-0565-20
 ;;9002226.02101,"990,51079-0566-01 ",.01)
 ;;51079-0566-01
 ;;9002226.02101,"990,51079-0566-01 ",.02)
 ;;51079-0566-01
 ;;9002226.02101,"990,51079-0566-20 ",.01)
 ;;51079-0566-20
 ;;9002226.02101,"990,51079-0566-20 ",.02)
 ;;51079-0566-20
 ;;9002226.02101,"990,51079-0567-01 ",.01)
 ;;51079-0567-01
 ;;9002226.02101,"990,51079-0567-01 ",.02)
 ;;51079-0567-01
 ;;9002226.02101,"990,51079-0567-20 ",.01)
 ;;51079-0567-20
 ;;9002226.02101,"990,51079-0567-20 ",.02)
 ;;51079-0567-20
 ;;9002226.02101,"990,51079-0580-01 ",.01)
 ;;51079-0580-01
 ;;9002226.02101,"990,51079-0580-01 ",.02)
 ;;51079-0580-01
 ;;9002226.02101,"990,51079-0580-20 ",.01)
 ;;51079-0580-20
 ;;9002226.02101,"990,51079-0580-20 ",.02)
 ;;51079-0580-20
 ;;9002226.02101,"990,53489-0148-01 ",.01)
 ;;53489-0148-01
 ;;9002226.02101,"990,53489-0148-01 ",.02)
 ;;53489-0148-01
 ;;9002226.02101,"990,53489-0148-10 ",.01)
 ;;53489-0148-10
 ;;9002226.02101,"990,53489-0148-10 ",.02)
 ;;53489-0148-10
 ;;9002226.02101,"990,53489-0149-01 ",.01)
 ;;53489-0149-01
 ;;9002226.02101,"990,53489-0149-01 ",.02)
 ;;53489-0149-01
 ;;9002226.02101,"990,53489-0149-10 ",.01)
 ;;53489-0149-10
 ;;9002226.02101,"990,53489-0149-10 ",.02)
 ;;53489-0149-10
 ;;9002226.02101,"990,53489-0150-01 ",.01)
 ;;53489-0150-01
 ;;9002226.02101,"990,53489-0150-01 ",.02)
 ;;53489-0150-01
 ;;9002226.02101,"990,53489-0150-10 ",.01)
 ;;53489-0150-10
 ;;9002226.02101,"990,53489-0150-10 ",.02)
 ;;53489-0150-10
 ;;9002226.02101,"990,53489-0500-01 ",.01)
 ;;53489-0500-01
 ;;9002226.02101,"990,53489-0500-01 ",.02)
 ;;53489-0500-01
 ;;9002226.02101,"990,54868-0067-00 ",.01)
 ;;54868-0067-00
 ;;9002226.02101,"990,54868-0067-00 ",.02)
 ;;54868-0067-00
 ;;9002226.02101,"990,54868-0067-04 ",.01)
 ;;54868-0067-04
 ;;9002226.02101,"990,54868-0067-04 ",.02)
 ;;54868-0067-04
 ;;9002226.02101,"990,54868-0067-05 ",.01)
 ;;54868-0067-05
 ;;9002226.02101,"990,54868-0067-05 ",.02)
 ;;54868-0067-05
 ;;9002226.02101,"990,54868-1828-00 ",.01)
 ;;54868-1828-00
 ;;9002226.02101,"990,54868-1828-00 ",.02)
 ;;54868-1828-00
 ;;9002226.02101,"990,54868-1828-02 ",.01)
 ;;54868-1828-02
 ;;9002226.02101,"990,54868-1828-02 ",.02)
 ;;54868-1828-02
 ;;9002226.02101,"990,54868-1832-00 ",.01)
 ;;54868-1832-00
 ;;9002226.02101,"990,54868-1832-00 ",.02)
 ;;54868-1832-00
 ;;9002226.02101,"990,54868-1832-02 ",.01)
 ;;54868-1832-02
 ;;9002226.02101,"990,54868-1832-02 ",.02)
 ;;54868-1832-02
 ;;9002226.02101,"990,54868-1832-03 ",.01)
 ;;54868-1832-03
 ;;9002226.02101,"990,54868-1832-03 ",.02)
 ;;54868-1832-03
 ;;9002226.02101,"990,57866-1042-01 ",.01)
 ;;57866-1042-01
 ;;9002226.02101,"990,57866-1042-01 ",.02)
 ;;57866-1042-01
 ;;9002226.02101,"990,57866-4642-03 ",.01)
 ;;57866-4642-03
 ;;9002226.02101,"990,57866-4642-03 ",.02)
 ;;57866-4642-03
 ;;9002226.02101,"990,57866-4643-01 ",.01)
 ;;57866-4643-01
 ;;9002226.02101,"990,57866-4643-01 ",.02)
 ;;57866-4643-01
 ;;9002226.02101,"990,57866-4644-01 ",.01)
 ;;57866-4644-01
 ;;9002226.02101,"990,57866-4644-01 ",.02)
 ;;57866-4644-01
 ;;9002226.02101,"990,61392-0462-15 ",.01)
 ;;61392-0462-15
 ;;9002226.02101,"990,61392-0462-15 ",.02)
 ;;61392-0462-15
 ;;9002226.02101,"990,61392-0462-30 ",.01)
 ;;61392-0462-30
 ;;9002226.02101,"990,61392-0462-30 ",.02)
 ;;61392-0462-30
 ;;9002226.02101,"990,61392-0462-31 ",.01)
 ;;61392-0462-31
 ;;9002226.02101,"990,61392-0462-31 ",.02)
 ;;61392-0462-31
 ;;9002226.02101,"990,61392-0462-32 ",.01)
 ;;61392-0462-32
 ;;9002226.02101,"990,61392-0462-32 ",.02)
 ;;61392-0462-32
 ;;9002226.02101,"990,61392-0462-39 ",.01)
 ;;61392-0462-39
 ;;9002226.02101,"990,61392-0462-39 ",.02)
 ;;61392-0462-39
 ;;9002226.02101,"990,61392-0462-45 ",.01)
 ;;61392-0462-45
 ;;9002226.02101,"990,61392-0462-45 ",.02)
 ;;61392-0462-45
 ;;9002226.02101,"990,61392-0462-51 ",.01)
 ;;61392-0462-51
 ;;9002226.02101,"990,61392-0462-51 ",.02)
 ;;61392-0462-51
 ;;9002226.02101,"990,61392-0462-54 ",.01)
 ;;61392-0462-54
 ;;9002226.02101,"990,61392-0462-54 ",.02)
 ;;61392-0462-54
 ;;9002226.02101,"990,61392-0462-56 ",.01)
 ;;61392-0462-56
 ;;9002226.02101,"990,61392-0462-56 ",.02)
 ;;61392-0462-56
 ;;9002226.02101,"990,61392-0462-60 ",.01)
 ;;61392-0462-60
 ;;9002226.02101,"990,61392-0462-60 ",.02)
 ;;61392-0462-60
 ;;9002226.02101,"990,61392-0462-90 ",.01)
 ;;61392-0462-90
 ;;9002226.02101,"990,61392-0462-90 ",.02)
 ;;61392-0462-90
 ;;9002226.02101,"990,61392-0462-91 ",.01)
 ;;61392-0462-91
 ;;9002226.02101,"990,61392-0462-91 ",.02)
 ;;61392-0462-91
 ;;9002226.02101,"990,61392-0463-30 ",.01)
 ;;61392-0463-30
 ;;9002226.02101,"990,61392-0463-30 ",.02)
 ;;61392-0463-30
 ;;9002226.02101,"990,61392-0463-31 ",.01)
 ;;61392-0463-31
 ;;9002226.02101,"990,61392-0463-31 ",.02)
 ;;61392-0463-31
 ;;9002226.02101,"990,61392-0463-32 ",.01)
 ;;61392-0463-32
 ;;9002226.02101,"990,61392-0463-32 ",.02)
 ;;61392-0463-32
 ;;9002226.02101,"990,61392-0463-39 ",.01)
 ;;61392-0463-39
