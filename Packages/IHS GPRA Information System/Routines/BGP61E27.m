BGP61E27 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 18, 2015 ;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1218,65243-0265-06 ",.02)
 ;;65243-0265-06
 ;;9002226.02101,"1218,65243-0265-09 ",.01)
 ;;65243-0265-09
 ;;9002226.02101,"1218,65243-0265-09 ",.02)
 ;;65243-0265-09
 ;;9002226.02101,"1218,65243-0265-18 ",.01)
 ;;65243-0265-18
 ;;9002226.02101,"1218,65243-0265-18 ",.02)
 ;;65243-0265-18
 ;;9002226.02101,"1218,65243-0265-45 ",.01)
 ;;65243-0265-45
 ;;9002226.02101,"1218,65243-0265-45 ",.02)
 ;;65243-0265-45
 ;;9002226.02101,"1218,65243-0308-03 ",.01)
 ;;65243-0308-03
 ;;9002226.02101,"1218,65243-0308-03 ",.02)
 ;;65243-0308-03
 ;;9002226.02101,"1218,65243-0308-09 ",.01)
 ;;65243-0308-09
 ;;9002226.02101,"1218,65243-0308-09 ",.02)
 ;;65243-0308-09
 ;;9002226.02101,"1218,65243-0308-18 ",.01)
 ;;65243-0308-18
 ;;9002226.02101,"1218,65243-0308-18 ",.02)
 ;;65243-0308-18
 ;;9002226.02101,"1218,65243-0329-03 ",.01)
 ;;65243-0329-03
 ;;9002226.02101,"1218,65243-0329-03 ",.02)
 ;;65243-0329-03
 ;;9002226.02101,"1218,65243-0329-09 ",.01)
 ;;65243-0329-09
 ;;9002226.02101,"1218,65243-0329-09 ",.02)
 ;;65243-0329-09
 ;;9002226.02101,"1218,65243-0329-18 ",.01)
 ;;65243-0329-18
 ;;9002226.02101,"1218,65243-0329-18 ",.02)
 ;;65243-0329-18
 ;;9002226.02101,"1218,65243-0347-09 ",.01)
 ;;65243-0347-09
 ;;9002226.02101,"1218,65243-0347-09 ",.02)
 ;;65243-0347-09
 ;;9002226.02101,"1218,65243-0379-09 ",.01)
 ;;65243-0379-09
 ;;9002226.02101,"1218,65243-0379-09 ",.02)
 ;;65243-0379-09
 ;;9002226.02101,"1218,65243-0379-18 ",.01)
 ;;65243-0379-18
 ;;9002226.02101,"1218,65243-0379-18 ",.02)
 ;;65243-0379-18
 ;;9002226.02101,"1218,65243-0382-09 ",.01)
 ;;65243-0382-09
 ;;9002226.02101,"1218,65243-0382-09 ",.02)
 ;;65243-0382-09
 ;;9002226.02101,"1218,65243-0382-18 ",.01)
 ;;65243-0382-18
 ;;9002226.02101,"1218,65243-0382-18 ",.02)
 ;;65243-0382-18
 ;;9002226.02101,"1218,65483-0391-10 ",.01)
 ;;65483-0391-10
 ;;9002226.02101,"1218,65483-0391-10 ",.02)
 ;;65483-0391-10
 ;;9002226.02101,"1218,65483-0392-10 ",.01)
 ;;65483-0392-10
 ;;9002226.02101,"1218,65483-0392-10 ",.02)
 ;;65483-0392-10
 ;;9002226.02101,"1218,65483-0393-10 ",.01)
 ;;65483-0393-10
 ;;9002226.02101,"1218,65483-0393-10 ",.02)
 ;;65483-0393-10
 ;;9002226.02101,"1218,65862-0062-01 ",.01)
 ;;65862-0062-01
 ;;9002226.02101,"1218,65862-0062-01 ",.02)
 ;;65862-0062-01
 ;;9002226.02101,"1218,65862-0062-99 ",.01)
 ;;65862-0062-99
 ;;9002226.02101,"1218,65862-0062-99 ",.02)
 ;;65862-0062-99
 ;;9002226.02101,"1218,65862-0063-01 ",.01)
 ;;65862-0063-01
 ;;9002226.02101,"1218,65862-0063-01 ",.02)
 ;;65862-0063-01
 ;;9002226.02101,"1218,65862-0063-99 ",.01)
 ;;65862-0063-99
 ;;9002226.02101,"1218,65862-0063-99 ",.02)
 ;;65862-0063-99
 ;;9002226.02101,"1218,65862-0064-01 ",.01)
 ;;65862-0064-01
 ;;9002226.02101,"1218,65862-0064-01 ",.02)
 ;;65862-0064-01
 ;;9002226.02101,"1218,65862-0064-99 ",.01)
 ;;65862-0064-99
 ;;9002226.02101,"1218,65862-0064-99 ",.02)
 ;;65862-0064-99
 ;;9002226.02101,"1218,65862-0086-01 ",.01)
 ;;65862-0086-01
 ;;9002226.02101,"1218,65862-0086-01 ",.02)
 ;;65862-0086-01
 ;;9002226.02101,"1218,65862-0086-30 ",.01)
 ;;65862-0086-30
 ;;9002226.02101,"1218,65862-0086-30 ",.02)
 ;;65862-0086-30
 ;;9002226.02101,"1218,65862-0087-01 ",.01)
 ;;65862-0087-01
 ;;9002226.02101,"1218,65862-0087-01 ",.02)
 ;;65862-0087-01
 ;;9002226.02101,"1218,65862-0087-30 ",.01)
 ;;65862-0087-30
 ;;9002226.02101,"1218,65862-0087-30 ",.02)
 ;;65862-0087-30
 ;;9002226.02101,"1218,65862-0142-01 ",.01)
 ;;65862-0142-01
 ;;9002226.02101,"1218,65862-0142-01 ",.02)
 ;;65862-0142-01
 ;;9002226.02101,"1218,65862-0142-05 ",.01)
 ;;65862-0142-05
 ;;9002226.02101,"1218,65862-0142-05 ",.02)
 ;;65862-0142-05
 ;;9002226.02101,"1218,65862-0143-01 ",.01)
 ;;65862-0143-01
 ;;9002226.02101,"1218,65862-0143-01 ",.02)
 ;;65862-0143-01
 ;;9002226.02101,"1218,65862-0143-05 ",.01)
 ;;65862-0143-05
 ;;9002226.02101,"1218,65862-0143-05 ",.02)
 ;;65862-0143-05
 ;;9002226.02101,"1218,65862-0144-01 ",.01)
 ;;65862-0144-01
 ;;9002226.02101,"1218,65862-0144-01 ",.02)
 ;;65862-0144-01
 ;;9002226.02101,"1218,65862-0144-05 ",.01)
 ;;65862-0144-05
 ;;9002226.02101,"1218,65862-0144-05 ",.02)
 ;;65862-0144-05
 ;;9002226.02101,"1218,65862-0145-01 ",.01)
 ;;65862-0145-01
 ;;9002226.02101,"1218,65862-0145-01 ",.02)
 ;;65862-0145-01
 ;;9002226.02101,"1218,65862-0145-05 ",.01)
 ;;65862-0145-05
 ;;9002226.02101,"1218,65862-0145-05 ",.02)
 ;;65862-0145-05
 ;;9002226.02101,"1218,65862-0168-01 ",.01)
 ;;65862-0168-01
 ;;9002226.02101,"1218,65862-0168-01 ",.02)
 ;;65862-0168-01
 ;;9002226.02101,"1218,65862-0168-99 ",.01)
 ;;65862-0168-99
 ;;9002226.02101,"1218,65862-0168-99 ",.02)
 ;;65862-0168-99
 ;;9002226.02101,"1218,65862-0169-01 ",.01)
 ;;65862-0169-01
 ;;9002226.02101,"1218,65862-0169-01 ",.02)
 ;;65862-0169-01
 ;;9002226.02101,"1218,65862-0169-99 ",.01)
 ;;65862-0169-99
 ;;9002226.02101,"1218,65862-0169-99 ",.02)
 ;;65862-0169-99
 ;;9002226.02101,"1218,65862-0170-01 ",.01)
 ;;65862-0170-01
 ;;9002226.02101,"1218,65862-0170-01 ",.02)
 ;;65862-0170-01
 ;;9002226.02101,"1218,65862-0170-99 ",.01)
 ;;65862-0170-99
 ;;9002226.02101,"1218,65862-0170-99 ",.02)
 ;;65862-0170-99
 ;;9002226.02101,"1218,66105-0994-03 ",.01)
 ;;66105-0994-03
 ;;9002226.02101,"1218,66105-0994-03 ",.02)
 ;;66105-0994-03
 ;;9002226.02101,"1218,66105-0994-06 ",.01)
 ;;66105-0994-06
 ;;9002226.02101,"1218,66105-0994-06 ",.02)
 ;;66105-0994-06
 ;;9002226.02101,"1218,66105-0994-10 ",.01)
 ;;66105-0994-10
 ;;9002226.02101,"1218,66105-0994-10 ",.02)
 ;;66105-0994-10
 ;;9002226.02101,"1218,66105-0994-11 ",.01)
 ;;66105-0994-11
 ;;9002226.02101,"1218,66105-0994-11 ",.02)
 ;;66105-0994-11
 ;;9002226.02101,"1218,66105-0994-15 ",.01)
 ;;66105-0994-15
 ;;9002226.02101,"1218,66105-0994-15 ",.02)
 ;;66105-0994-15
 ;;9002226.02101,"1218,66105-0996-03 ",.01)
 ;;66105-0996-03
 ;;9002226.02101,"1218,66105-0996-03 ",.02)
 ;;66105-0996-03
 ;;9002226.02101,"1218,66105-0996-06 ",.01)
 ;;66105-0996-06
 ;;9002226.02101,"1218,66105-0996-06 ",.02)
 ;;66105-0996-06
 ;;9002226.02101,"1218,66105-0996-10 ",.01)
 ;;66105-0996-10
 ;;9002226.02101,"1218,66105-0996-10 ",.02)
 ;;66105-0996-10
 ;;9002226.02101,"1218,66105-0996-11 ",.01)
 ;;66105-0996-11
 ;;9002226.02101,"1218,66105-0996-11 ",.02)
 ;;66105-0996-11
 ;;9002226.02101,"1218,66105-0996-15 ",.01)
 ;;66105-0996-15
 ;;9002226.02101,"1218,66105-0996-15 ",.02)
 ;;66105-0996-15
 ;;9002226.02101,"1218,66116-0239-30 ",.01)
 ;;66116-0239-30
 ;;9002226.02101,"1218,66116-0239-30 ",.02)
 ;;66116-0239-30
 ;;9002226.02101,"1218,66116-0421-30 ",.01)
 ;;66116-0421-30
 ;;9002226.02101,"1218,66116-0421-30 ",.02)
 ;;66116-0421-30
 ;;9002226.02101,"1218,66116-0455-30 ",.01)
 ;;66116-0455-30
 ;;9002226.02101,"1218,66116-0455-30 ",.02)
 ;;66116-0455-30
 ;;9002226.02101,"1218,66116-0456-30 ",.01)
 ;;66116-0456-30
 ;;9002226.02101,"1218,66116-0456-30 ",.02)
 ;;66116-0456-30
 ;;9002226.02101,"1218,66267-0029-30 ",.01)
 ;;66267-0029-30
 ;;9002226.02101,"1218,66267-0029-30 ",.02)
 ;;66267-0029-30
 ;;9002226.02101,"1218,66267-0029-60 ",.01)
 ;;66267-0029-60
 ;;9002226.02101,"1218,66267-0029-60 ",.02)
 ;;66267-0029-60
 ;;9002226.02101,"1218,66267-0029-90 ",.01)
 ;;66267-0029-90
 ;;9002226.02101,"1218,66267-0029-90 ",.02)
 ;;66267-0029-90
 ;;9002226.02101,"1218,66267-0029-91 ",.01)
 ;;66267-0029-91
 ;;9002226.02101,"1218,66267-0029-91 ",.02)
 ;;66267-0029-91
 ;;9002226.02101,"1218,66267-0029-92 ",.01)
 ;;66267-0029-92
 ;;9002226.02101,"1218,66267-0029-92 ",.02)
 ;;66267-0029-92
 ;;9002226.02101,"1218,66267-0030-30 ",.01)
 ;;66267-0030-30
 ;;9002226.02101,"1218,66267-0030-30 ",.02)
 ;;66267-0030-30
 ;;9002226.02101,"1218,66267-0030-60 ",.01)
 ;;66267-0030-60
 ;;9002226.02101,"1218,66267-0030-60 ",.02)
 ;;66267-0030-60
 ;;9002226.02101,"1218,66267-0031-30 ",.01)
 ;;66267-0031-30
 ;;9002226.02101,"1218,66267-0031-30 ",.02)
 ;;66267-0031-30
 ;;9002226.02101,"1218,66267-0031-60 ",.01)
 ;;66267-0031-60
 ;;9002226.02101,"1218,66267-0031-60 ",.02)
 ;;66267-0031-60
 ;;9002226.02101,"1218,66267-0240-30 ",.01)
 ;;66267-0240-30
 ;;9002226.02101,"1218,66267-0240-30 ",.02)
 ;;66267-0240-30
 ;;9002226.02101,"1218,66267-0346-30 ",.01)
 ;;66267-0346-30
 ;;9002226.02101,"1218,66267-0346-30 ",.02)
 ;;66267-0346-30
 ;;9002226.02101,"1218,66267-0346-60 ",.01)
 ;;66267-0346-60
 ;;9002226.02101,"1218,66267-0346-60 ",.02)
 ;;66267-0346-60
 ;;9002226.02101,"1218,66267-0346-90 ",.01)
 ;;66267-0346-90
 ;;9002226.02101,"1218,66267-0346-90 ",.02)
 ;;66267-0346-90
 ;;9002226.02101,"1218,66267-0346-91 ",.01)
 ;;66267-0346-91
 ;;9002226.02101,"1218,66267-0346-91 ",.02)
 ;;66267-0346-91
 ;;9002226.02101,"1218,66267-0346-92 ",.01)
 ;;66267-0346-92
 ;;9002226.02101,"1218,66267-0346-92 ",.02)
 ;;66267-0346-92
 ;;9002226.02101,"1218,66267-0346-93 ",.01)
 ;;66267-0346-93
 ;;9002226.02101,"1218,66267-0346-93 ",.02)
 ;;66267-0346-93
 ;;9002226.02101,"1218,66336-0514-30 ",.01)
 ;;66336-0514-30
 ;;9002226.02101,"1218,66336-0514-30 ",.02)
 ;;66336-0514-30
 ;;9002226.02101,"1218,66336-0514-60 ",.01)
 ;;66336-0514-60
 ;;9002226.02101,"1218,66336-0514-60 ",.02)
 ;;66336-0514-60
 ;;9002226.02101,"1218,66336-0514-62 ",.01)
 ;;66336-0514-62
 ;;9002226.02101,"1218,66336-0514-62 ",.02)
 ;;66336-0514-62
 ;;9002226.02101,"1218,66336-0514-90 ",.01)
 ;;66336-0514-90
 ;;9002226.02101,"1218,66336-0514-90 ",.02)
 ;;66336-0514-90
 ;;9002226.02101,"1218,66336-0523-30 ",.01)
 ;;66336-0523-30
 ;;9002226.02101,"1218,66336-0523-30 ",.02)
 ;;66336-0523-30
 ;;9002226.02101,"1218,66336-0523-60 ",.01)
 ;;66336-0523-60
 ;;9002226.02101,"1218,66336-0523-60 ",.02)
 ;;66336-0523-60
 ;;9002226.02101,"1218,66336-0523-62 ",.01)
 ;;66336-0523-62
 ;;9002226.02101,"1218,66336-0523-62 ",.02)
 ;;66336-0523-62
 ;;9002226.02101,"1218,66336-0523-90 ",.01)
 ;;66336-0523-90
 ;;9002226.02101,"1218,66336-0523-90 ",.02)
 ;;66336-0523-90
 ;;9002226.02101,"1218,66336-0587-00 ",.01)
 ;;66336-0587-00
 ;;9002226.02101,"1218,66336-0587-00 ",.02)
 ;;66336-0587-00
 ;;9002226.02101,"1218,66336-0587-30 ",.01)
 ;;66336-0587-30
 ;;9002226.02101,"1218,66336-0587-30 ",.02)
 ;;66336-0587-30
 ;;9002226.02101,"1218,66336-0587-60 ",.01)
 ;;66336-0587-60
 ;;9002226.02101,"1218,66336-0587-60 ",.02)
 ;;66336-0587-60
 ;;9002226.02101,"1218,66336-0587-90 ",.01)
 ;;66336-0587-90
 ;;9002226.02101,"1218,66336-0587-90 ",.02)
 ;;66336-0587-90
 ;;9002226.02101,"1218,66336-0612-30 ",.01)
 ;;66336-0612-30
 ;;9002226.02101,"1218,66336-0612-30 ",.02)
 ;;66336-0612-30
 ;;9002226.02101,"1218,66336-0612-90 ",.01)
 ;;66336-0612-90
 ;;9002226.02101,"1218,66336-0612-90 ",.02)
 ;;66336-0612-90
 ;;9002226.02101,"1218,66336-0719-30 ",.01)
 ;;66336-0719-30
 ;;9002226.02101,"1218,66336-0719-30 ",.02)
 ;;66336-0719-30
 ;;9002226.02101,"1218,66336-0719-60 ",.01)
 ;;66336-0719-60
 ;;9002226.02101,"1218,66336-0719-60 ",.02)
 ;;66336-0719-60
 ;;9002226.02101,"1218,66336-0719-90 ",.01)
 ;;66336-0719-90
 ;;9002226.02101,"1218,66336-0719-90 ",.02)
 ;;66336-0719-90
 ;;9002226.02101,"1218,66336-0772-30 ",.01)
 ;;66336-0772-30
 ;;9002226.02101,"1218,66336-0772-30 ",.02)
 ;;66336-0772-30
 ;;9002226.02101,"1218,66336-0772-60 ",.01)
 ;;66336-0772-60
 ;;9002226.02101,"1218,66336-0772-60 ",.02)
 ;;66336-0772-60
 ;;9002226.02101,"1218,66336-0772-62 ",.01)
 ;;66336-0772-62
 ;;9002226.02101,"1218,66336-0772-62 ",.02)
 ;;66336-0772-62
 ;;9002226.02101,"1218,66336-0772-90 ",.01)
 ;;66336-0772-90
 ;;9002226.02101,"1218,66336-0772-90 ",.02)
 ;;66336-0772-90
 ;;9002226.02101,"1218,66336-0808-30 ",.01)
 ;;66336-0808-30
 ;;9002226.02101,"1218,66336-0808-30 ",.02)
 ;;66336-0808-30
 ;;9002226.02101,"1218,66336-0808-60 ",.01)
 ;;66336-0808-60
 ;;9002226.02101,"1218,66336-0808-60 ",.02)
 ;;66336-0808-60
 ;;9002226.02101,"1218,66336-0808-62 ",.01)
 ;;66336-0808-62
 ;;9002226.02101,"1218,66336-0808-62 ",.02)
 ;;66336-0808-62
 ;;9002226.02101,"1218,66336-0808-90 ",.01)
 ;;66336-0808-90
 ;;9002226.02101,"1218,66336-0808-90 ",.02)
 ;;66336-0808-90
 ;;9002226.02101,"1218,66336-0811-90 ",.01)
 ;;66336-0811-90
 ;;9002226.02101,"1218,66336-0811-90 ",.02)
 ;;66336-0811-90
 ;;9002226.02101,"1218,66336-0837-30 ",.01)
 ;;66336-0837-30
 ;;9002226.02101,"1218,66336-0837-30 ",.02)
 ;;66336-0837-30
 ;;9002226.02101,"1218,66336-0837-60 ",.01)
 ;;66336-0837-60
 ;;9002226.02101,"1218,66336-0837-60 ",.02)
 ;;66336-0837-60
 ;;9002226.02101,"1218,66336-0837-62 ",.01)
 ;;66336-0837-62
 ;;9002226.02101,"1218,66336-0837-62 ",.02)
 ;;66336-0837-62
 ;;9002226.02101,"1218,66336-0837-90 ",.01)
 ;;66336-0837-90
 ;;9002226.02101,"1218,66336-0837-90 ",.02)
 ;;66336-0837-90
 ;;9002226.02101,"1218,66336-0914-30 ",.01)
 ;;66336-0914-30
