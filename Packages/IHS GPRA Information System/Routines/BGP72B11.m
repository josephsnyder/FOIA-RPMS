BGP72B11 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1224,21695-0534-30 ",.01)
 ;;21695-0534-30
 ;;9002226.02101,"1224,21695-0534-30 ",.02)
 ;;21695-0534-30
 ;;9002226.02101,"1224,21695-0535-30 ",.01)
 ;;21695-0535-30
 ;;9002226.02101,"1224,21695-0535-30 ",.02)
 ;;21695-0535-30
 ;;9002226.02101,"1224,21695-0535-90 ",.01)
 ;;21695-0535-90
 ;;9002226.02101,"1224,21695-0535-90 ",.02)
 ;;21695-0535-90
 ;;9002226.02101,"1224,21695-0536-30 ",.01)
 ;;21695-0536-30
 ;;9002226.02101,"1224,21695-0536-30 ",.02)
 ;;21695-0536-30
 ;;9002226.02101,"1224,21695-0536-90 ",.01)
 ;;21695-0536-90
 ;;9002226.02101,"1224,21695-0536-90 ",.02)
 ;;21695-0536-90
 ;;9002226.02101,"1224,21695-0659-30 ",.01)
 ;;21695-0659-30
 ;;9002226.02101,"1224,21695-0659-30 ",.02)
 ;;21695-0659-30
 ;;9002226.02101,"1224,21695-0738-90 ",.01)
 ;;21695-0738-90
 ;;9002226.02101,"1224,21695-0738-90 ",.02)
 ;;21695-0738-90
 ;;9002226.02101,"1224,21695-0739-30 ",.01)
 ;;21695-0739-30
 ;;9002226.02101,"1224,21695-0739-30 ",.02)
 ;;21695-0739-30
 ;;9002226.02101,"1224,21695-0739-90 ",.01)
 ;;21695-0739-90
 ;;9002226.02101,"1224,21695-0739-90 ",.02)
 ;;21695-0739-90
 ;;9002226.02101,"1224,21695-0740-30 ",.01)
 ;;21695-0740-30
 ;;9002226.02101,"1224,21695-0740-30 ",.02)
 ;;21695-0740-30
 ;;9002226.02101,"1224,21695-0740-90 ",.01)
 ;;21695-0740-90
 ;;9002226.02101,"1224,21695-0740-90 ",.02)
 ;;21695-0740-90
 ;;9002226.02101,"1224,21695-0741-30 ",.01)
 ;;21695-0741-30
 ;;9002226.02101,"1224,21695-0741-30 ",.02)
 ;;21695-0741-30
 ;;9002226.02101,"1224,21695-0741-90 ",.01)
 ;;21695-0741-90
 ;;9002226.02101,"1224,21695-0741-90 ",.02)
 ;;21695-0741-90
 ;;9002226.02101,"1224,21695-0742-30 ",.01)
 ;;21695-0742-30
 ;;9002226.02101,"1224,21695-0742-30 ",.02)
 ;;21695-0742-30
 ;;9002226.02101,"1224,21695-0742-90 ",.01)
 ;;21695-0742-90
 ;;9002226.02101,"1224,21695-0742-90 ",.02)
 ;;21695-0742-90
 ;;9002226.02101,"1224,21695-0759-90 ",.01)
 ;;21695-0759-90
 ;;9002226.02101,"1224,21695-0759-90 ",.02)
 ;;21695-0759-90
 ;;9002226.02101,"1224,21695-0827-30 ",.01)
 ;;21695-0827-30
 ;;9002226.02101,"1224,21695-0827-30 ",.02)
 ;;21695-0827-30
 ;;9002226.02101,"1224,24658-0210-10 ",.01)
 ;;24658-0210-10
 ;;9002226.02101,"1224,24658-0210-10 ",.02)
 ;;24658-0210-10
 ;;9002226.02101,"1224,24658-0210-30 ",.01)
 ;;24658-0210-30
 ;;9002226.02101,"1224,24658-0210-30 ",.02)
 ;;24658-0210-30
 ;;9002226.02101,"1224,24658-0210-45 ",.01)
 ;;24658-0210-45
 ;;9002226.02101,"1224,24658-0210-45 ",.02)
 ;;24658-0210-45
 ;;9002226.02101,"1224,24658-0210-90 ",.01)
 ;;24658-0210-90
 ;;9002226.02101,"1224,24658-0210-90 ",.02)
 ;;24658-0210-90
 ;;9002226.02101,"1224,24658-0211-10 ",.01)
 ;;24658-0211-10
 ;;9002226.02101,"1224,24658-0211-10 ",.02)
 ;;24658-0211-10
 ;;9002226.02101,"1224,24658-0211-30 ",.01)
 ;;24658-0211-30
 ;;9002226.02101,"1224,24658-0211-30 ",.02)
 ;;24658-0211-30
 ;;9002226.02101,"1224,24658-0211-45 ",.01)
 ;;24658-0211-45
 ;;9002226.02101,"1224,24658-0211-45 ",.02)
 ;;24658-0211-45
 ;;9002226.02101,"1224,24658-0211-90 ",.01)
 ;;24658-0211-90
 ;;9002226.02101,"1224,24658-0211-90 ",.02)
 ;;24658-0211-90
 ;;9002226.02101,"1224,24658-0212-10 ",.01)
 ;;24658-0212-10
 ;;9002226.02101,"1224,24658-0212-10 ",.02)
 ;;24658-0212-10
 ;;9002226.02101,"1224,24658-0212-30 ",.01)
 ;;24658-0212-30
 ;;9002226.02101,"1224,24658-0212-30 ",.02)
 ;;24658-0212-30
 ;;9002226.02101,"1224,24658-0212-45 ",.01)
 ;;24658-0212-45
 ;;9002226.02101,"1224,24658-0212-45 ",.02)
 ;;24658-0212-45
 ;;9002226.02101,"1224,24658-0212-90 ",.01)
 ;;24658-0212-90
 ;;9002226.02101,"1224,24658-0212-90 ",.02)
 ;;24658-0212-90
 ;;9002226.02101,"1224,24658-0213-10 ",.01)
 ;;24658-0213-10
 ;;9002226.02101,"1224,24658-0213-10 ",.02)
 ;;24658-0213-10
 ;;9002226.02101,"1224,24658-0213-30 ",.01)
 ;;24658-0213-30
 ;;9002226.02101,"1224,24658-0213-30 ",.02)
 ;;24658-0213-30
 ;;9002226.02101,"1224,24658-0213-45 ",.01)
 ;;24658-0213-45
 ;;9002226.02101,"1224,24658-0213-45 ",.02)
 ;;24658-0213-45
 ;;9002226.02101,"1224,24658-0213-90 ",.01)
 ;;24658-0213-90
 ;;9002226.02101,"1224,24658-0213-90 ",.02)
 ;;24658-0213-90
 ;;9002226.02101,"1224,24658-0214-10 ",.01)
 ;;24658-0214-10
 ;;9002226.02101,"1224,24658-0214-10 ",.02)
 ;;24658-0214-10
 ;;9002226.02101,"1224,24658-0214-30 ",.01)
 ;;24658-0214-30
 ;;9002226.02101,"1224,24658-0214-30 ",.02)
 ;;24658-0214-30
 ;;9002226.02101,"1224,24658-0214-45 ",.01)
 ;;24658-0214-45
 ;;9002226.02101,"1224,24658-0214-45 ",.02)
 ;;24658-0214-45
 ;;9002226.02101,"1224,24658-0214-90 ",.01)
 ;;24658-0214-90
 ;;9002226.02101,"1224,24658-0214-90 ",.02)
 ;;24658-0214-90
 ;;9002226.02101,"1224,24658-0300-10 ",.01)
 ;;24658-0300-10
 ;;9002226.02101,"1224,24658-0300-10 ",.02)
 ;;24658-0300-10
 ;;9002226.02101,"1224,24658-0300-30 ",.01)
 ;;24658-0300-30
 ;;9002226.02101,"1224,24658-0300-30 ",.02)
 ;;24658-0300-30
 ;;9002226.02101,"1224,24658-0300-45 ",.01)
 ;;24658-0300-45
 ;;9002226.02101,"1224,24658-0300-45 ",.02)
 ;;24658-0300-45
 ;;9002226.02101,"1224,24658-0300-90 ",.01)
 ;;24658-0300-90
 ;;9002226.02101,"1224,24658-0300-90 ",.02)
 ;;24658-0300-90
 ;;9002226.02101,"1224,24658-0301-10 ",.01)
 ;;24658-0301-10
 ;;9002226.02101,"1224,24658-0301-10 ",.02)
 ;;24658-0301-10
 ;;9002226.02101,"1224,24658-0301-15 ",.01)
 ;;24658-0301-15
 ;;9002226.02101,"1224,24658-0301-15 ",.02)
 ;;24658-0301-15
 ;;9002226.02101,"1224,24658-0301-30 ",.01)
 ;;24658-0301-30
 ;;9002226.02101,"1224,24658-0301-30 ",.02)
 ;;24658-0301-30
 ;;9002226.02101,"1224,24658-0301-45 ",.01)
 ;;24658-0301-45
 ;;9002226.02101,"1224,24658-0301-45 ",.02)
 ;;24658-0301-45
 ;;9002226.02101,"1224,24658-0301-90 ",.01)
 ;;24658-0301-90
 ;;9002226.02101,"1224,24658-0301-90 ",.02)
 ;;24658-0301-90
 ;;9002226.02101,"1224,24658-0302-10 ",.01)
 ;;24658-0302-10
 ;;9002226.02101,"1224,24658-0302-10 ",.02)
 ;;24658-0302-10
 ;;9002226.02101,"1224,24658-0302-15 ",.01)
 ;;24658-0302-15
 ;;9002226.02101,"1224,24658-0302-15 ",.02)
 ;;24658-0302-15
 ;;9002226.02101,"1224,24658-0302-30 ",.01)
 ;;24658-0302-30
 ;;9002226.02101,"1224,24658-0302-30 ",.02)
 ;;24658-0302-30
 ;;9002226.02101,"1224,24658-0302-45 ",.01)
 ;;24658-0302-45
 ;;9002226.02101,"1224,24658-0302-45 ",.02)
 ;;24658-0302-45
 ;;9002226.02101,"1224,24658-0302-90 ",.01)
 ;;24658-0302-90
 ;;9002226.02101,"1224,24658-0302-90 ",.02)
 ;;24658-0302-90
 ;;9002226.02101,"1224,24658-0303-10 ",.01)
 ;;24658-0303-10
 ;;9002226.02101,"1224,24658-0303-10 ",.02)
 ;;24658-0303-10
 ;;9002226.02101,"1224,24658-0303-15 ",.01)
 ;;24658-0303-15
 ;;9002226.02101,"1224,24658-0303-15 ",.02)
 ;;24658-0303-15
 ;;9002226.02101,"1224,24658-0303-30 ",.01)
 ;;24658-0303-30
 ;;9002226.02101,"1224,24658-0303-30 ",.02)
 ;;24658-0303-30
 ;;9002226.02101,"1224,24658-0303-45 ",.01)
 ;;24658-0303-45
 ;;9002226.02101,"1224,24658-0303-45 ",.02)
 ;;24658-0303-45
 ;;9002226.02101,"1224,24658-0303-90 ",.01)
 ;;24658-0303-90
 ;;9002226.02101,"1224,24658-0303-90 ",.02)
 ;;24658-0303-90
 ;;9002226.02101,"1224,24658-0304-10 ",.01)
 ;;24658-0304-10
 ;;9002226.02101,"1224,24658-0304-10 ",.02)
 ;;24658-0304-10
 ;;9002226.02101,"1224,24658-0304-15 ",.01)
 ;;24658-0304-15
 ;;9002226.02101,"1224,24658-0304-15 ",.02)
 ;;24658-0304-15
 ;;9002226.02101,"1224,24658-0304-30 ",.01)
 ;;24658-0304-30
 ;;9002226.02101,"1224,24658-0304-30 ",.02)
 ;;24658-0304-30
 ;;9002226.02101,"1224,24658-0304-45 ",.01)
 ;;24658-0304-45
 ;;9002226.02101,"1224,24658-0304-45 ",.02)
 ;;24658-0304-45
 ;;9002226.02101,"1224,24658-0304-90 ",.01)
 ;;24658-0304-90
 ;;9002226.02101,"1224,24658-0304-90 ",.02)
 ;;24658-0304-90
 ;;9002226.02101,"1224,31722-0510-10 ",.01)
 ;;31722-0510-10
 ;;9002226.02101,"1224,31722-0510-10 ",.02)
 ;;31722-0510-10
 ;;9002226.02101,"1224,31722-0510-90 ",.01)
 ;;31722-0510-90
 ;;9002226.02101,"1224,31722-0510-90 ",.02)
 ;;31722-0510-90
 ;;9002226.02101,"1224,31722-0511-10 ",.01)
 ;;31722-0511-10
 ;;9002226.02101,"1224,31722-0511-10 ",.02)
 ;;31722-0511-10
 ;;9002226.02101,"1224,31722-0511-90 ",.01)
 ;;31722-0511-90
 ;;9002226.02101,"1224,31722-0511-90 ",.02)
 ;;31722-0511-90
 ;;9002226.02101,"1224,31722-0512-10 ",.01)
 ;;31722-0512-10
 ;;9002226.02101,"1224,31722-0512-10 ",.02)
 ;;31722-0512-10
 ;;9002226.02101,"1224,31722-0512-90 ",.01)
 ;;31722-0512-90
 ;;9002226.02101,"1224,31722-0512-90 ",.02)
 ;;31722-0512-90
 ;;9002226.02101,"1224,31722-0513-10 ",.01)
 ;;31722-0513-10
 ;;9002226.02101,"1224,31722-0513-10 ",.02)
 ;;31722-0513-10
 ;;9002226.02101,"1224,31722-0513-90 ",.01)
 ;;31722-0513-90
 ;;9002226.02101,"1224,31722-0513-90 ",.02)
 ;;31722-0513-90
 ;;9002226.02101,"1224,31722-0514-90 ",.01)
 ;;31722-0514-90
 ;;9002226.02101,"1224,31722-0514-90 ",.02)
 ;;31722-0514-90
 ;;9002226.02101,"1224,33261-0541-02 ",.01)
 ;;33261-0541-02
 ;;9002226.02101,"1224,33261-0541-02 ",.02)
 ;;33261-0541-02
 ;;9002226.02101,"1224,33261-0541-30 ",.01)
 ;;33261-0541-30
 ;;9002226.02101,"1224,33261-0541-30 ",.02)
 ;;33261-0541-30
 ;;9002226.02101,"1224,33261-0541-60 ",.01)
 ;;33261-0541-60
 ;;9002226.02101,"1224,33261-0541-60 ",.02)
 ;;33261-0541-60
 ;;9002226.02101,"1224,33261-0541-90 ",.01)
 ;;33261-0541-90
 ;;9002226.02101,"1224,33261-0541-90 ",.02)
 ;;33261-0541-90
 ;;9002226.02101,"1224,33261-0542-02 ",.01)
 ;;33261-0542-02
 ;;9002226.02101,"1224,33261-0542-02 ",.02)
 ;;33261-0542-02
 ;;9002226.02101,"1224,33261-0542-30 ",.01)
 ;;33261-0542-30
 ;;9002226.02101,"1224,33261-0542-30 ",.02)
 ;;33261-0542-30
 ;;9002226.02101,"1224,33261-0542-60 ",.01)
 ;;33261-0542-60
 ;;9002226.02101,"1224,33261-0542-60 ",.02)
 ;;33261-0542-60
 ;;9002226.02101,"1224,33261-0542-90 ",.01)
 ;;33261-0542-90
 ;;9002226.02101,"1224,33261-0542-90 ",.02)
 ;;33261-0542-90
 ;;9002226.02101,"1224,33261-0546-00 ",.01)
 ;;33261-0546-00
 ;;9002226.02101,"1224,33261-0546-00 ",.02)
 ;;33261-0546-00
 ;;9002226.02101,"1224,33261-0546-30 ",.01)
 ;;33261-0546-30
 ;;9002226.02101,"1224,33261-0546-30 ",.02)
 ;;33261-0546-30
 ;;9002226.02101,"1224,33261-0546-60 ",.01)
 ;;33261-0546-60
 ;;9002226.02101,"1224,33261-0546-60 ",.02)
 ;;33261-0546-60
 ;;9002226.02101,"1224,33261-0546-90 ",.01)
 ;;33261-0546-90
 ;;9002226.02101,"1224,33261-0546-90 ",.02)
 ;;33261-0546-90
 ;;9002226.02101,"1224,33261-0547-02 ",.01)
 ;;33261-0547-02
 ;;9002226.02101,"1224,33261-0547-02 ",.02)
 ;;33261-0547-02
 ;;9002226.02101,"1224,33261-0547-30 ",.01)
 ;;33261-0547-30
 ;;9002226.02101,"1224,33261-0547-30 ",.02)
 ;;33261-0547-30
 ;;9002226.02101,"1224,33261-0547-60 ",.01)
 ;;33261-0547-60
 ;;9002226.02101,"1224,33261-0547-60 ",.02)
 ;;33261-0547-60
 ;;9002226.02101,"1224,33261-0547-90 ",.01)
 ;;33261-0547-90
 ;;9002226.02101,"1224,33261-0547-90 ",.02)
 ;;33261-0547-90
 ;;9002226.02101,"1224,33261-0548-30 ",.01)
 ;;33261-0548-30
 ;;9002226.02101,"1224,33261-0548-30 ",.02)
 ;;33261-0548-30
 ;;9002226.02101,"1224,33261-0548-60 ",.01)
 ;;33261-0548-60
 ;;9002226.02101,"1224,33261-0548-60 ",.02)
 ;;33261-0548-60
 ;;9002226.02101,"1224,33261-0549-00 ",.01)
 ;;33261-0549-00
 ;;9002226.02101,"1224,33261-0549-00 ",.02)
 ;;33261-0549-00
 ;;9002226.02101,"1224,33261-0549-30 ",.01)
 ;;33261-0549-30
 ;;9002226.02101,"1224,33261-0549-30 ",.02)
 ;;33261-0549-30
 ;;9002226.02101,"1224,33261-0549-60 ",.01)
 ;;33261-0549-60
 ;;9002226.02101,"1224,33261-0549-60 ",.02)
 ;;33261-0549-60
 ;;9002226.02101,"1224,33261-0549-90 ",.01)
 ;;33261-0549-90
 ;;9002226.02101,"1224,33261-0549-90 ",.02)
 ;;33261-0549-90
 ;;9002226.02101,"1224,33261-0867-00 ",.01)
 ;;33261-0867-00
 ;;9002226.02101,"1224,33261-0867-00 ",.02)
 ;;33261-0867-00
 ;;9002226.02101,"1224,33261-0867-30 ",.01)
 ;;33261-0867-30
 ;;9002226.02101,"1224,33261-0867-30 ",.02)
 ;;33261-0867-30
 ;;9002226.02101,"1224,33261-0867-60 ",.01)
 ;;33261-0867-60
