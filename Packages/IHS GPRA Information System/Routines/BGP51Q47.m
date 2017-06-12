BGP51Q47 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1729,66105-0842-06 ",.01)
 ;;66105-0842-06
 ;;9002226.02101,"1729,66105-0842-06 ",.02)
 ;;66105-0842-06
 ;;9002226.02101,"1729,66105-0842-09 ",.01)
 ;;66105-0842-09
 ;;9002226.02101,"1729,66105-0842-09 ",.02)
 ;;66105-0842-09
 ;;9002226.02101,"1729,66105-0842-10 ",.01)
 ;;66105-0842-10
 ;;9002226.02101,"1729,66105-0842-10 ",.02)
 ;;66105-0842-10
 ;;9002226.02101,"1729,66105-0842-28 ",.01)
 ;;66105-0842-28
 ;;9002226.02101,"1729,66105-0842-28 ",.02)
 ;;66105-0842-28
 ;;9002226.02101,"1729,66116-0237-30 ",.01)
 ;;66116-0237-30
 ;;9002226.02101,"1729,66116-0237-30 ",.02)
 ;;66116-0237-30
 ;;9002226.02101,"1729,66116-0279-30 ",.01)
 ;;66116-0279-30
 ;;9002226.02101,"1729,66116-0279-30 ",.02)
 ;;66116-0279-30
 ;;9002226.02101,"1729,66116-0435-30 ",.01)
 ;;66116-0435-30
 ;;9002226.02101,"1729,66116-0435-30 ",.02)
 ;;66116-0435-30
 ;;9002226.02101,"1729,66116-0436-30 ",.01)
 ;;66116-0436-30
 ;;9002226.02101,"1729,66116-0436-30 ",.02)
 ;;66116-0436-30
 ;;9002226.02101,"1729,66267-0253-30 ",.01)
 ;;66267-0253-30
 ;;9002226.02101,"1729,66267-0253-30 ",.02)
 ;;66267-0253-30
 ;;9002226.02101,"1729,66267-0323-30 ",.01)
 ;;66267-0323-30
 ;;9002226.02101,"1729,66267-0323-30 ",.02)
 ;;66267-0323-30
 ;;9002226.02101,"1729,66267-0323-60 ",.01)
 ;;66267-0323-60
 ;;9002226.02101,"1729,66267-0323-60 ",.02)
 ;;66267-0323-60
 ;;9002226.02101,"1729,66267-0323-90 ",.01)
 ;;66267-0323-90
 ;;9002226.02101,"1729,66267-0323-90 ",.02)
 ;;66267-0323-90
 ;;9002226.02101,"1729,66267-0323-91 ",.01)
 ;;66267-0323-91
 ;;9002226.02101,"1729,66267-0323-91 ",.02)
 ;;66267-0323-91
 ;;9002226.02101,"1729,66267-0380-30 ",.01)
 ;;66267-0380-30
 ;;9002226.02101,"1729,66267-0380-30 ",.02)
 ;;66267-0380-30
 ;;9002226.02101,"1729,66267-0380-60 ",.01)
 ;;66267-0380-60
 ;;9002226.02101,"1729,66267-0380-60 ",.02)
 ;;66267-0380-60
 ;;9002226.02101,"1729,66267-0380-90 ",.01)
 ;;66267-0380-90
 ;;9002226.02101,"1729,66267-0380-90 ",.02)
 ;;66267-0380-90
 ;;9002226.02101,"1729,66267-0380-91 ",.01)
 ;;66267-0380-91
 ;;9002226.02101,"1729,66267-0380-91 ",.02)
 ;;66267-0380-91
 ;;9002226.02101,"1729,66267-0413-30 ",.01)
 ;;66267-0413-30
 ;;9002226.02101,"1729,66267-0413-30 ",.02)
 ;;66267-0413-30
 ;;9002226.02101,"1729,66267-0413-60 ",.01)
 ;;66267-0413-60
 ;;9002226.02101,"1729,66267-0413-60 ",.02)
 ;;66267-0413-60
 ;;9002226.02101,"1729,66267-0413-90 ",.01)
 ;;66267-0413-90
 ;;9002226.02101,"1729,66267-0413-90 ",.02)
 ;;66267-0413-90
 ;;9002226.02101,"1729,66267-0413-92 ",.01)
 ;;66267-0413-92
 ;;9002226.02101,"1729,66267-0413-92 ",.02)
 ;;66267-0413-92
 ;;9002226.02101,"1729,66267-0523-30 ",.01)
 ;;66267-0523-30
 ;;9002226.02101,"1729,66267-0523-30 ",.02)
 ;;66267-0523-30
 ;;9002226.02101,"1729,66267-0523-60 ",.01)
 ;;66267-0523-60
 ;;9002226.02101,"1729,66267-0523-60 ",.02)
 ;;66267-0523-60
 ;;9002226.02101,"1729,66267-0570-30 ",.01)
 ;;66267-0570-30
 ;;9002226.02101,"1729,66267-0570-30 ",.02)
 ;;66267-0570-30
 ;;9002226.02101,"1729,66267-0577-30 ",.01)
 ;;66267-0577-30
 ;;9002226.02101,"1729,66267-0577-30 ",.02)
 ;;66267-0577-30
 ;;9002226.02101,"1729,66267-0583-30 ",.01)
 ;;66267-0583-30
 ;;9002226.02101,"1729,66267-0583-30 ",.02)
 ;;66267-0583-30
 ;;9002226.02101,"1729,66267-0751-30 ",.01)
 ;;66267-0751-30
 ;;9002226.02101,"1729,66267-0751-30 ",.02)
 ;;66267-0751-30
 ;;9002226.02101,"1729,66267-0751-90 ",.01)
 ;;66267-0751-90
 ;;9002226.02101,"1729,66267-0751-90 ",.02)
 ;;66267-0751-90
 ;;9002226.02101,"1729,66267-0752-30 ",.01)
 ;;66267-0752-30
 ;;9002226.02101,"1729,66267-0752-30 ",.02)
 ;;66267-0752-30
 ;;9002226.02101,"1729,66267-0752-90 ",.01)
 ;;66267-0752-90
 ;;9002226.02101,"1729,66267-0752-90 ",.02)
 ;;66267-0752-90
 ;;9002226.02101,"1729,66267-1009-00 ",.01)
 ;;66267-1009-00
 ;;9002226.02101,"1729,66267-1009-00 ",.02)
 ;;66267-1009-00
 ;;9002226.02101,"1729,66336-0124-30 ",.01)
 ;;66336-0124-30
 ;;9002226.02101,"1729,66336-0124-30 ",.02)
 ;;66336-0124-30
 ;;9002226.02101,"1729,66336-0124-90 ",.01)
 ;;66336-0124-90
 ;;9002226.02101,"1729,66336-0124-90 ",.02)
 ;;66336-0124-90
 ;;9002226.02101,"1729,66336-0169-30 ",.01)
 ;;66336-0169-30
 ;;9002226.02101,"1729,66336-0169-30 ",.02)
 ;;66336-0169-30
 ;;9002226.02101,"1729,66336-0232-30 ",.01)
 ;;66336-0232-30
 ;;9002226.02101,"1729,66336-0232-30 ",.02)
 ;;66336-0232-30
 ;;9002226.02101,"1729,66336-0387-30 ",.01)
 ;;66336-0387-30
 ;;9002226.02101,"1729,66336-0387-30 ",.02)
 ;;66336-0387-30
 ;;9002226.02101,"1729,66336-0387-90 ",.01)
 ;;66336-0387-90
 ;;9002226.02101,"1729,66336-0387-90 ",.02)
 ;;66336-0387-90
 ;;9002226.02101,"1729,66336-0389-30 ",.01)
 ;;66336-0389-30
 ;;9002226.02101,"1729,66336-0389-30 ",.02)
 ;;66336-0389-30
 ;;9002226.02101,"1729,66336-0389-60 ",.01)
 ;;66336-0389-60
 ;;9002226.02101,"1729,66336-0389-60 ",.02)
 ;;66336-0389-60
 ;;9002226.02101,"1729,66336-0389-90 ",.01)
 ;;66336-0389-90
 ;;9002226.02101,"1729,66336-0389-90 ",.02)
 ;;66336-0389-90
 ;;9002226.02101,"1729,66336-0391-30 ",.01)
 ;;66336-0391-30
 ;;9002226.02101,"1729,66336-0391-30 ",.02)
 ;;66336-0391-30
 ;;9002226.02101,"1729,66336-0391-60 ",.01)
 ;;66336-0391-60
 ;;9002226.02101,"1729,66336-0391-60 ",.02)
 ;;66336-0391-60
 ;;9002226.02101,"1729,66336-0391-90 ",.01)
 ;;66336-0391-90
 ;;9002226.02101,"1729,66336-0391-90 ",.02)
 ;;66336-0391-90
 ;;9002226.02101,"1729,66336-0393-30 ",.01)
 ;;66336-0393-30
 ;;9002226.02101,"1729,66336-0393-30 ",.02)
 ;;66336-0393-30
 ;;9002226.02101,"1729,66336-0393-60 ",.01)
 ;;66336-0393-60
 ;;9002226.02101,"1729,66336-0393-60 ",.02)
 ;;66336-0393-60
 ;;9002226.02101,"1729,66336-0393-90 ",.01)
 ;;66336-0393-90
 ;;9002226.02101,"1729,66336-0393-90 ",.02)
 ;;66336-0393-90
 ;;9002226.02101,"1729,66336-0572-30 ",.01)
 ;;66336-0572-30
 ;;9002226.02101,"1729,66336-0572-30 ",.02)
 ;;66336-0572-30
 ;;9002226.02101,"1729,66336-0572-90 ",.01)
 ;;66336-0572-90
 ;;9002226.02101,"1729,66336-0572-90 ",.02)
 ;;66336-0572-90
 ;;9002226.02101,"1729,66336-0618-60 ",.01)
 ;;66336-0618-60
 ;;9002226.02101,"1729,66336-0618-60 ",.02)
 ;;66336-0618-60
 ;;9002226.02101,"1729,66336-0665-15 ",.01)
 ;;66336-0665-15
 ;;9002226.02101,"1729,66336-0665-15 ",.02)
 ;;66336-0665-15
 ;;9002226.02101,"1729,66336-0665-30 ",.01)
 ;;66336-0665-30
 ;;9002226.02101,"1729,66336-0665-30 ",.02)
 ;;66336-0665-30
 ;;9002226.02101,"1729,66336-0665-90 ",.01)
 ;;66336-0665-90
 ;;9002226.02101,"1729,66336-0665-90 ",.02)
 ;;66336-0665-90
 ;;9002226.02101,"1729,66336-0666-30 ",.01)
 ;;66336-0666-30
 ;;9002226.02101,"1729,66336-0666-30 ",.02)
 ;;66336-0666-30
 ;;9002226.02101,"1729,66336-0666-90 ",.01)
 ;;66336-0666-90
 ;;9002226.02101,"1729,66336-0666-90 ",.02)
 ;;66336-0666-90
 ;;9002226.02101,"1729,66336-0672-60 ",.01)
 ;;66336-0672-60
 ;;9002226.02101,"1729,66336-0672-60 ",.02)
 ;;66336-0672-60
 ;;9002226.02101,"1729,66336-0691-30 ",.01)
 ;;66336-0691-30
 ;;9002226.02101,"1729,66336-0691-30 ",.02)
 ;;66336-0691-30
 ;;9002226.02101,"1729,66336-0691-90 ",.01)
 ;;66336-0691-90
 ;;9002226.02101,"1729,66336-0691-90 ",.02)
 ;;66336-0691-90
 ;;9002226.02101,"1729,66336-0741-30 ",.01)
 ;;66336-0741-30
 ;;9002226.02101,"1729,66336-0741-30 ",.02)
 ;;66336-0741-30
 ;;9002226.02101,"1729,66336-0741-60 ",.01)
 ;;66336-0741-60
 ;;9002226.02101,"1729,66336-0741-60 ",.02)
 ;;66336-0741-60
 ;;9002226.02101,"1729,66336-0741-62 ",.01)
 ;;66336-0741-62
 ;;9002226.02101,"1729,66336-0741-62 ",.02)
 ;;66336-0741-62
 ;;9002226.02101,"1729,66336-0741-90 ",.01)
 ;;66336-0741-90
 ;;9002226.02101,"1729,66336-0741-90 ",.02)
 ;;66336-0741-90
 ;;9002226.02101,"1729,66336-0750-30 ",.01)
 ;;66336-0750-30
 ;;9002226.02101,"1729,66336-0750-30 ",.02)
 ;;66336-0750-30
 ;;9002226.02101,"1729,66336-0750-60 ",.01)
 ;;66336-0750-60
 ;;9002226.02101,"1729,66336-0750-60 ",.02)
 ;;66336-0750-60
 ;;9002226.02101,"1729,66336-0750-90 ",.01)
 ;;66336-0750-90
 ;;9002226.02101,"1729,66336-0750-90 ",.02)
 ;;66336-0750-90
 ;;9002226.02101,"1729,66336-0773-30 ",.01)
 ;;66336-0773-30
 ;;9002226.02101,"1729,66336-0773-30 ",.02)
 ;;66336-0773-30
 ;;9002226.02101,"1729,66336-0773-60 ",.01)
 ;;66336-0773-60
 ;;9002226.02101,"1729,66336-0773-60 ",.02)
 ;;66336-0773-60
 ;;9002226.02101,"1729,66336-0773-90 ",.01)
 ;;66336-0773-90
 ;;9002226.02101,"1729,66336-0773-90 ",.02)
 ;;66336-0773-90
 ;;9002226.02101,"1729,66336-0794-60 ",.01)
 ;;66336-0794-60
 ;;9002226.02101,"1729,66336-0794-60 ",.02)
 ;;66336-0794-60
 ;;9002226.02101,"1729,66336-0805-30 ",.01)
 ;;66336-0805-30
 ;;9002226.02101,"1729,66336-0805-30 ",.02)
 ;;66336-0805-30
 ;;9002226.02101,"1729,66336-0805-90 ",.01)
 ;;66336-0805-90
 ;;9002226.02101,"1729,66336-0805-90 ",.02)
 ;;66336-0805-90
 ;;9002226.02101,"1729,66336-0810-30 ",.01)
 ;;66336-0810-30
 ;;9002226.02101,"1729,66336-0810-30 ",.02)
 ;;66336-0810-30
 ;;9002226.02101,"1729,66336-0810-90 ",.01)
 ;;66336-0810-90
 ;;9002226.02101,"1729,66336-0810-90 ",.02)
 ;;66336-0810-90
 ;;9002226.02101,"1729,66336-0867-30 ",.01)
 ;;66336-0867-30
 ;;9002226.02101,"1729,66336-0867-30 ",.02)
 ;;66336-0867-30
 ;;9002226.02101,"1729,66336-0867-90 ",.01)
 ;;66336-0867-90
 ;;9002226.02101,"1729,66336-0867-90 ",.02)
 ;;66336-0867-90
 ;;9002226.02101,"1729,66336-0946-30 ",.01)
 ;;66336-0946-30
 ;;9002226.02101,"1729,66336-0946-30 ",.02)
 ;;66336-0946-30
 ;;9002226.02101,"1729,66336-0946-60 ",.01)
 ;;66336-0946-60
 ;;9002226.02101,"1729,66336-0946-60 ",.02)
 ;;66336-0946-60
 ;;9002226.02101,"1729,66336-0946-90 ",.01)
 ;;66336-0946-90
 ;;9002226.02101,"1729,66336-0946-90 ",.02)
 ;;66336-0946-90
 ;;9002226.02101,"1729,66336-0972-30 ",.01)
 ;;66336-0972-30
 ;;9002226.02101,"1729,66336-0972-30 ",.02)
 ;;66336-0972-30
 ;;9002226.02101,"1729,66336-0972-62 ",.01)
 ;;66336-0972-62
 ;;9002226.02101,"1729,66336-0972-62 ",.02)
 ;;66336-0972-62
 ;;9002226.02101,"1729,66336-0972-90 ",.01)
 ;;66336-0972-90
 ;;9002226.02101,"1729,66336-0972-90 ",.02)
 ;;66336-0972-90
 ;;9002226.02101,"1729,66685-0302-00 ",.01)
 ;;66685-0302-00
 ;;9002226.02101,"1729,66685-0302-00 ",.02)
 ;;66685-0302-00
 ;;9002226.02101,"1729,66685-0302-02 ",.01)
 ;;66685-0302-02
 ;;9002226.02101,"1729,66685-0302-02 ",.02)
 ;;66685-0302-02
 ;;9002226.02101,"1729,66685-0303-00 ",.01)
 ;;66685-0303-00
 ;;9002226.02101,"1729,66685-0303-00 ",.02)
 ;;66685-0303-00
 ;;9002226.02101,"1729,66685-0303-02 ",.01)
 ;;66685-0303-02
 ;;9002226.02101,"1729,66685-0303-02 ",.02)
 ;;66685-0303-02
 ;;9002226.02101,"1729,66685-0304-00 ",.01)
 ;;66685-0304-00
 ;;9002226.02101,"1729,66685-0304-00 ",.02)
 ;;66685-0304-00
 ;;9002226.02101,"1729,66685-0304-02 ",.01)
 ;;66685-0304-02
 ;;9002226.02101,"1729,66685-0304-02 ",.02)
 ;;66685-0304-02
 ;;9002226.02101,"1729,66685-0701-01 ",.01)
 ;;66685-0701-01
 ;;9002226.02101,"1729,66685-0701-01 ",.02)
 ;;66685-0701-01
 ;;9002226.02101,"1729,66685-0701-02 ",.01)
 ;;66685-0701-02
 ;;9002226.02101,"1729,66685-0701-02 ",.02)
 ;;66685-0701-02
 ;;9002226.02101,"1729,66685-0702-01 ",.01)
 ;;66685-0702-01
 ;;9002226.02101,"1729,66685-0702-01 ",.02)
 ;;66685-0702-01
 ;;9002226.02101,"1729,66685-0702-02 ",.01)
 ;;66685-0702-02
 ;;9002226.02101,"1729,66685-0702-02 ",.02)
 ;;66685-0702-02
 ;;9002226.02101,"1729,66685-0702-03 ",.01)
 ;;66685-0702-03
 ;;9002226.02101,"1729,66685-0702-03 ",.02)
 ;;66685-0702-03
 ;;9002226.02101,"1729,66685-0703-02 ",.01)
 ;;66685-0703-02
 ;;9002226.02101,"1729,66685-0703-02 ",.02)
 ;;66685-0703-02
 ;;9002226.02101,"1729,66685-0704-01 ",.01)
 ;;66685-0704-01
 ;;9002226.02101,"1729,66685-0704-01 ",.02)
 ;;66685-0704-01
 ;;9002226.02101,"1729,66685-0704-02 ",.01)
 ;;66685-0704-02
 ;;9002226.02101,"1729,66685-0704-02 ",.02)
 ;;66685-0704-02
 ;;9002226.02101,"1729,66685-0704-03 ",.01)
 ;;66685-0704-03
 ;;9002226.02101,"1729,66685-0704-03 ",.02)
 ;;66685-0704-03
 ;;9002226.02101,"1729,66685-0705-01 ",.01)
 ;;66685-0705-01
 ;;9002226.02101,"1729,66685-0705-01 ",.02)
 ;;66685-0705-01
 ;;9002226.02101,"1729,66685-0705-02 ",.01)
 ;;66685-0705-02
 ;;9002226.02101,"1729,66685-0705-02 ",.02)
 ;;66685-0705-02
 ;;9002226.02101,"1729,66685-0706-01 ",.01)
 ;;66685-0706-01
 ;;9002226.02101,"1729,66685-0706-01 ",.02)
 ;;66685-0706-01
 ;;9002226.02101,"1729,66685-0706-03 ",.01)
 ;;66685-0706-03
 ;;9002226.02101,"1729,66685-0706-03 ",.02)
 ;;66685-0706-03
 ;;9002226.02101,"1729,66685-0706-04 ",.01)
 ;;66685-0706-04
 ;;9002226.02101,"1729,66685-0706-04 ",.02)
 ;;66685-0706-04
 ;;9002226.02101,"1729,67544-0062-30 ",.01)
 ;;67544-0062-30
 ;;9002226.02101,"1729,67544-0062-30 ",.02)
 ;;67544-0062-30
 ;;9002226.02101,"1729,67544-0062-60 ",.01)
 ;;67544-0062-60
 ;;9002226.02101,"1729,67544-0062-60 ",.02)
 ;;67544-0062-60
 ;;9002226.02101,"1729,67544-0062-82 ",.01)
 ;;67544-0062-82
 ;;9002226.02101,"1729,67544-0062-82 ",.02)
 ;;67544-0062-82
 ;;9002226.02101,"1729,67544-0128-15 ",.01)
 ;;67544-0128-15
 ;;9002226.02101,"1729,67544-0128-15 ",.02)
 ;;67544-0128-15
 ;;9002226.02101,"1729,67544-0128-30 ",.01)
 ;;67544-0128-30
 ;;9002226.02101,"1729,67544-0128-30 ",.02)
 ;;67544-0128-30
 ;;9002226.02101,"1729,67544-0128-45 ",.01)
 ;;67544-0128-45
 ;;9002226.02101,"1729,67544-0128-45 ",.02)
 ;;67544-0128-45
 ;;9002226.02101,"1729,67544-0128-53 ",.01)
 ;;67544-0128-53
 ;;9002226.02101,"1729,67544-0128-53 ",.02)
 ;;67544-0128-53
 ;;9002226.02101,"1729,67544-0128-60 ",.01)
 ;;67544-0128-60
 ;;9002226.02101,"1729,67544-0128-60 ",.02)
 ;;67544-0128-60
 ;;9002226.02101,"1729,67544-0134-15 ",.01)
 ;;67544-0134-15
 ;;9002226.02101,"1729,67544-0134-15 ",.02)
 ;;67544-0134-15
 ;;9002226.02101,"1729,67544-0134-30 ",.01)
 ;;67544-0134-30
