ICDTBL7C ;ALB/MJB - GROUPER UTILITY FUNCTIONS;08/09/2010
 ;;18.0;DRG Grouper;**50,61**;Oct 20, 2000;Build 7
DRG700 S ICDRG=$S(ICDMCC=2:698,ICDMCC=1:699,1:700) Q
DRG707 ;
DRG708 S ICDRG=$S(ICDMCC>0:707,1:708) Q
DRG709 ;
DRG710 S ICDRG=$S(ICDMCC>0:709,1:710) Q
DRG711 ;
DRG712 S ICDRG=$S(ICDMCC>0:711,1:712) Q
DRG713 ;
DRG714 S ICDRG=$S(ICDMCC>0:713,1:714) Q
DRG715 ;
DRG716 I ICDPD["M" S ICDRG=$S(ICDMCC>0:715,1:716) Q
DRG717 ;
DRG718 I ICDPD["M" S ICDRG=$S(ICDMCC>0:715,1:716) Q
 S ICDRG=$S(ICDMCC>0:717,1:718) Q
DRG722 ;
DRG723 ;
DRG724 S ICDRG=$S(ICDMCC=2:722,ICDMCC=1:723,1:724) Q
DRG725 ;
DRG726 S ICDRG=$S(ICDMCC=2:725,1:726) Q
DRG727 ;DRGs 727-728,757-759
 S ICDRG=999
 S ICDRG=$S(SEX="M":728,1:759) I SEX="" S ICDRG=999,ICDRTC=4 Q
 I ICDRG=728 S ICDRG=$S(ICDMCC=2:727,1:728) Q
 I ICDRG=759 S ICDRG=$S(ICDMCC=2:757,ICDMCC=1:758,1:759)
 Q
DRG728 D DRG727 Q
DRG729 ;
DRG730 S ICDRG=$S(ICDMCC>0:729,1:730) Q
DRG734 ;
DRG735 S ICDRG=$S(ICDMCC>0:734,1:735) Q
DRG736 ;DRGs 736-743
 S ICDRG=999
 I ICDOR="" D DRG760 Q
 S ICDRG=$S(ICDPD["M":$S(ICDPD["o":738,ICDMCC=2:739,1:741),1:743)
 I ICDRG=738 S ICDRG=$S(ICDMCC=2:736,ICDMCC=1:737,1:738) Q
 I ICDRG=741 S ICDRG=$S(ICDMCC=1:740,1:741) Q
 I ICDRG=743 S ICDRG=$S(ICDMCC>0:742,1:743)
 Q
DRG737 D DRG736 Q
DRG738 D DRG736 Q
DRG739 D DRG736 Q
DRG740 D DRG736 Q
DRG741 D DRG736 Q
DRG742 D DRG736 Q
DRG743 D DRG736 Q
DRG744 ;
DRG745 S ICDRG=$S(ICDMCC>0:744,1:745) Q
DRG746 ;
DRG747 S ICDRG=$S(ICDMCC>0:746,1:747) Q
DRG748 S ICDRG=748 Q
DRG749 ;
DRG750 S ICDRG=$S(ICDMCC>0:749,1:750) Q
DRG754 ;
DRG755 ;
DRG756 S ICDRG=$S(ICDMCC=2:754,ICDMCC=1:755,1:756) Q
DRG757 D DRG727 Q
DRG758 D DRG727 Q
DRG759 D DRG727 Q
DRG760 ;
DRG761 S ICDRG=$S(ICDMCC>0:760,1:761) Q
DRG765 ;
DRG766 I ICDPD["D" S ICDRG=$S(ICDMCC>0:765,1:766) Q
 S ICDRG=""
DRG767 I ICDPD["D",ICDOR["s" S ICDRG=767 Q
DRG768 I ICDPD["D" S ICDRG=768 Q
 Q
DRG769 I ICDOR["" S ICDRG=776 Q
 S ICDRG=769 Q
DRG770 S ICDRG=770 Q
DRG774 ;
 I ICDPD'["v" Q
 I ICDPD["v",ICDOR'["O" S ICDDRG=774
 D ONLY
 N I,J S I="",J=0 F  S I=$O(ICDOP(I)) Q:I']""  D
 . I '$D(A(I)) S J=1
 I J=0 S ICDRG=774 Q
 Q
DRG775 ;S ICDRG=775 Q
 I ICDPD'["v" S DRG=775 Q
 I ICDPD["v"&(ICDOR["") D DRG774 Q
 I ICDPD["v" Q
 I ICDPD'["v",ICDOR'["O" S DRG=775
 D ONLY
 N I,J S I="",J=0 F  S I=$O(ICDOP(I)) Q:I']""  D
 . I '$D(A(I)) S J=1
 I J=0 S ICDRG=775 Q
 Q
DRG776 S ICDRG=776 Q
DRG777 S ICDRG=777 Q
DRG778 S ICDRG=778 Q
DRG779 S ICDRG=779
 I $D(ICDOP(" 69.01")) S ICDRG=770 Q
 I $D(ICDOP(" 69.02")) S ICDRG=770 Q
 I $D(ICDOP(" 69.09")) S ICDRG=770 Q
 I $D(ICDOP(" 69.51")) S ICDRG=770 Q
 I $D(ICDOP(" 69.52")) S ICDRG=770 Q
 I $D(ICDOP(" 74.91")) S ICDRG=770 Q
 Q
DRG780 S ICDRG=780 Q
DRG781 I ICDPD["u"!(ICDPD["u") S ICDRG=781 Q
DRG782 S ICDRG=782 Q
DRG789 S ICDRG=789 Q
DRG790 S ICDRG=790 Q
DRG791 S ICDRG=791 Q
DRG792 S ICDRG=792 Q
DRG793 S ICDRG=793 Q
DRG794 S ICDRG=794 Q
DRG795 I ICDSD["S" D DRG794 Q
 S ICDRG=795 Q
DRG799 S ICDRG=$S(ICDMCC=2:799,ICDMCC=1:800,1:801) Q
 Q
ONLY ;this is a list of op for 774 and 775 to usee
 N A
 S A(" 48.71")=""
 S A(" 49.59")=""
 S A(" 67.51")=""
 S A(" 67.59")=""
 S A(" 67.61")=""
 S A(" 67.69")=""
 S A(" 70.13")=""
 S A(" 70.14")=""
 S A(" 70.24")=""
 S A(" 70.31")=""
 S A(" 70.33")=""
 S A(" 70.71")=""
 S A(" 70.79")=""
 S A(" 71.01")=""
 S A(" 71.09")=""
 S A(" 71.11")=""
 S A(" 77.19")=""
 S A(" 71.3")=""
 S A(" 71.71")=""
 S A(" 71.79")=""
 S A(" 73.99")=""
 S A(" 75.50")=""
 S A(" 75.51")=""
 S A(" 75.61")=""
 Q
