BGPM5AG ;IHS/MSC/MMT-CREATED BY ^ATXSTX ON JUL 15, 2011;
 ;;11.1;IHS CLINICAL REPORTING SYSTEM;**1**;JUN 27, 2011;Build 106
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"63304044210 ")
 ;;2698
 ;;21,"63304044230 ")
 ;;2699
 ;;21,"63304044269 ")
 ;;2700
 ;;21,"63304052201 ")
 ;;2701
 ;;21,"63304052210 ")
 ;;2702
 ;;21,"63304052301 ")
 ;;2703
 ;;21,"63304052310 ")
 ;;2704
 ;;21,"63304052401 ")
 ;;2705
 ;;21,"63304052410 ")
 ;;2706
 ;;21,"63304052501 ")
 ;;2707
 ;;21,"63304052510 ")
 ;;2708
 ;;21,"63304053101 ")
 ;;2709
 ;;21,"63304053111 ")
 ;;2710
 ;;21,"63304053177 ")
 ;;2711
 ;;21,"63304053201 ")
 ;;2712
 ;;21,"63304053210 ")
 ;;2713
 ;;21,"63304053211 ")
 ;;2714
 ;;21,"63304053277 ")
 ;;2715
 ;;21,"63304053301 ")
 ;;2716
 ;;21,"63304053310 ")
 ;;2717
 ;;21,"63304053311 ")
 ;;2718
 ;;21,"63304053377 ")
 ;;2719
 ;;21,"63304053401 ")
 ;;2720
 ;;21,"63304053410 ")
 ;;2721
 ;;21,"63304053411 ")
 ;;2722
 ;;21,"63304053477 ")
 ;;2723
 ;;21,"63304053501 ")
 ;;2724
 ;;21,"63304053510 ")
 ;;2725
 ;;21,"63304053511 ")
 ;;2726
 ;;21,"63304053577 ")
 ;;2727
 ;;21,"63304053601 ")
 ;;2728
 ;;21,"63304053605 ")
 ;;2729
 ;;21,"63304053701 ")
 ;;2730
 ;;21,"63304053705 ")
 ;;2731
 ;;21,"63304053801 ")
 ;;2732
 ;;21,"63304053805 ")
 ;;2733
 ;;21,"63304054890 ")
 ;;2734
 ;;21,"63304054990 ")
 ;;2735
 ;;21,"63304055090 ")
 ;;2736
 ;;21,"63304055190 ")
 ;;2737
 ;;21,"63304059901 ")
 ;;2738
 ;;21,"63304059910 ")
 ;;2739
 ;;21,"63304077501 ")
 ;;2740
 ;;21,"63304077505 ")
 ;;2741
 ;;21,"63304077510 ")
 ;;2742
 ;;21,"63304077530 ")
 ;;2743
 ;;21,"63304077590 ")
 ;;2744
 ;;21,"63304077601 ")
 ;;2745
 ;;21,"63304077605 ")
 ;;2746
 ;;21,"63304077610 ")
 ;;2747
 ;;21,"63304077630 ")
 ;;2748
 ;;21,"63304077690 ")
 ;;2749
 ;;21,"63304077701 ")
 ;;2750
 ;;21,"63304077705 ")
 ;;2751
 ;;21,"63304077710 ")
 ;;2752
 ;;21,"63304077730 ")
 ;;2753
 ;;21,"63304077790 ")
 ;;2754
 ;;21,"63304083401 ")
 ;;2755
 ;;21,"63304083410 ")
 ;;2756
 ;;21,"63304083501 ")
 ;;2757
 ;;21,"63304083510 ")
 ;;2758
 ;;21,"63304083601 ")
 ;;2759
 ;;21,"63304083610 ")
 ;;2760
 ;;21,"63304083701 ")
 ;;2761
 ;;21,"63304083710 ")
 ;;2762
 ;;21,"63629125301 ")
 ;;2763
 ;;21,"63629125302 ")
 ;;2764
 ;;21,"63629125401 ")
 ;;2765
 ;;21,"63629125402 ")
 ;;2766
 ;;21,"63629133801 ")
 ;;2767
 ;;21,"63629133802 ")
 ;;2768
 ;;21,"63629133803 ")
 ;;2769
 ;;21,"63629152201 ")
 ;;2770
 ;;21,"63629152202 ")
 ;;2771
 ;;21,"63629152203 ")
 ;;2772
 ;;21,"63629152204 ")
 ;;2773
 ;;21,"63629152205 ")
 ;;2774
 ;;21,"63629152501 ")
 ;;2775
 ;;21,"63629152502 ")
 ;;2776
 ;;21,"63629152503 ")
 ;;2777
 ;;21,"63629152601 ")
 ;;2778
 ;;21,"63629152602 ")
 ;;2779
 ;;21,"63629152603 ")
 ;;2780
 ;;21,"63629152604 ")
 ;;2781
 ;;21,"63629167901 ")
 ;;2782
 ;;21,"63629167902 ")
 ;;2783
 ;;21,"63629167903 ")
 ;;2784
 ;;21,"63629167904 ")
 ;;2785
 ;;21,"63629170601 ")
 ;;2786
 ;;21,"63629170602 ")
 ;;2787
 ;;21,"63629170603 ")
 ;;2788
 ;;21,"63629176101 ")
 ;;2789
 ;;21,"63629176102 ")
 ;;2790
 ;;21,"63629176103 ")
 ;;2791
 ;;21,"63629254101 ")
 ;;2792
 ;;21,"63629254102 ")
 ;;2793
 ;;21,"63629254103 ")
 ;;2794
 ;;21,"63629254104 ")
 ;;2795
 ;;21,"63629268801 ")
 ;;2796
 ;;21,"63629268802 ")
 ;;2797
 ;;21,"63629268803 ")
 ;;2798
 ;;21,"63629268804 ")
 ;;2799
 ;;21,"63629268805 ")
 ;;2800
 ;;21,"63629289601 ")
 ;;2801
 ;;21,"63629290801 ")
 ;;2802
 ;;21,"63629290802 ")
 ;;2803
 ;;21,"63629290803 ")
 ;;2804
 ;;21,"63629290804 ")
 ;;2805
 ;;21,"63629293501 ")
 ;;2806
 ;;21,"63629293502 ")
 ;;2807
 ;;21,"63629293503 ")
 ;;2808
 ;;21,"63629293504 ")
 ;;2809
 ;;21,"63629321701 ")
 ;;2810
 ;;21,"63629373901 ")
 ;;2811
 ;;21,"63629373902 ")
 ;;2812
 ;;21,"63629373903 ")
 ;;2813
 ;;21,"63629447001 ")
 ;;2814
 ;;21,"63629447002 ")
 ;;2815
 ;;21,"63739004201 ")
 ;;2816
 ;;21,"63739004301 ")
 ;;2817
 ;;21,"63739030210 ")
 ;;2818
 ;;21,"63739032205 ")
 ;;2819
 ;;21,"63739034810 ")
 ;;2820
 ;;21,"63739034910 ")
 ;;2821
 ;;21,"63739035010 ")
 ;;2822
 ;;21,"63874034701 ")
 ;;2823
 ;;21,"63874034702 ")
 ;;2824
 ;;21,"63874034705 ")
 ;;2825
 ;;21,"63874034720 ")
 ;;2826
 ;;21,"63874034730 ")
 ;;2827
 ;;21,"63874034740 ")
 ;;2828
 ;;21,"63874034742 ")
 ;;2829
 ;;21,"63874034745 ")
 ;;2830
 ;;21,"63874034790 ")
 ;;2831
 ;;21,"63874034801 ")
 ;;2832
 ;;21,"63874034810 ")
 ;;2833
 ;;21,"63874034814 ")
 ;;2834
 ;;21,"63874034820 ")
 ;;2835
 ;;21,"63874034830 ")
 ;;2836
 ;;21,"63874034860 ")
 ;;2837
 ;;21,"63874034890 ")
 ;;2838
 ;;21,"63874042301 ")
 ;;2839
 ;;21,"63874042307 ")
 ;;2840
 ;;21,"63874042310 ")
 ;;2841
 ;;21,"63874042314 ")
 ;;2842
 ;;21,"63874042320 ")
 ;;2843
 ;;21,"63874042330 ")
 ;;2844
 ;;21,"63874042360 ")
 ;;2845
 ;;21,"63874051401 ")
 ;;2846
 ;;21,"63874051410 ")
 ;;2847
 ;;21,"63874051414 ")
 ;;2848
 ;;21,"63874051415 ")
 ;;2849
 ;;21,"63874051416 ")
 ;;2850
 ;;21,"63874051420 ")
 ;;2851
 ;;21,"63874051428 ")
 ;;2852
 ;;21,"63874051430 ")
 ;;2853
 ;;21,"63874051460 ")
 ;;2854
 ;;21,"63874051490 ")
 ;;2855
 ;;21,"63874052201 ")
 ;;2856
 ;;21,"63874052215 ")
 ;;2857
 ;;21,"63874052230 ")
 ;;2858
 ;;21,"63874052260 ")
 ;;2859
 ;;21,"63874055801 ")
 ;;2860
 ;;21,"63874055810 ")
 ;;2861
 ;;21,"63874055814 ")
 ;;2862
 ;;21,"63874055816 ")
 ;;2863
 ;;21,"63874055828 ")
 ;;2864
 ;;21,"63874055830 ")
 ;;2865
 ;;21,"63874055860 ")
 ;;2866
 ;;21,"63874055890 ")
 ;;2867
 ;;21,"63874065501 ")
 ;;2868
 ;;21,"63874065510 ")
 ;;2869
 ;;21,"63874065520 ")
 ;;2870
 ;;21,"63874065530 ")
 ;;2871
 ;;21,"63874065560 ")
 ;;2872
 ;;21,"63874098701 ")
 ;;2873
 ;;21,"63874098710 ")
 ;;2874
 ;;21,"63874098714 ")
 ;;2875
 ;;21,"63874098720 ")
 ;;2876
 ;;21,"63874098730 ")
 ;;2877
 ;;21,"63874098760 ")
 ;;2878
 ;;21,"63874111409 ")
 ;;2879
 ;;21,"64579001300 ")
 ;;2880
 ;;21,"64579001301 ")
 ;;2881
 ;;21,"64579001400 ")
 ;;2882
 ;;21,"64579001420 ")
 ;;2883
 ;;21,"64579001500 ")
 ;;2884
 ;;21,"64579001501 ")
 ;;2885
 ;;21,"64679090201 ")
 ;;2886
 ;;21,"64679090202 ")
 ;;2887
 ;;21,"64679090301 ")
 ;;2888
 ;;21,"64679090302 ")
 ;;2889
 ;;21,"64679090401 ")
 ;;2890
 ;;21,"64679090402 ")
 ;;2891
 ;;21,"64679090501 ")
 ;;2892
 ;;21,"64679090502 ")
 ;;2893
 ;;21,"64679092301 ")
 ;;2894
 ;;21,"64679092302 ")
 ;;2895
 ;;21,"64679092303 ")
 ;;2896
 ;;21,"64679092307 ")
 ;;2897
 ;;21,"64679092309 ")
 ;;2898
 ;;21,"64679092310 ")
 ;;2899
 ;;21,"64679092401 ")
 ;;2900
 ;;21,"64679092402 ")
 ;;2901
 ;;21,"64679092403 ")
 ;;2902
 ;;21,"64679092407 ")
 ;;2903
 ;;21,"64679092409 ")
 ;;2904
 ;;21,"64679092410 ")
 ;;2905
 ;;21,"64679092501 ")
 ;;2906
 ;;21,"64679092502 ")
 ;;2907
 ;;21,"64679092503 ")
 ;;2908
 ;;21,"64679092507 ")
 ;;2909
 ;;21,"64679092509 ")
 ;;2910
 ;;21,"64679092510 ")
 ;;2911
 ;;21,"64679092601 ")
 ;;2912
 ;;21,"64679092602 ")
 ;;2913
 ;;21,"64679092603 ")
 ;;2914
 ;;21,"64679092607 ")
 ;;2915
 ;;21,"64679092609 ")
 ;;2916
 ;;21,"64679092610 ")
 ;;2917
 ;;21,"64679092701 ")
 ;;2918
 ;;21,"64679092702 ")
 ;;2919
 ;;21,"64679092705 ")
 ;;2920
 ;;21,"64679092709 ")
 ;;2921
 ;;21,"64679092801 ")
 ;;2922
 ;;21,"64679092802 ")
 ;;2923
 ;;21,"64679092805 ")
 ;;2924
 ;;21,"64679092806 ")
 ;;2925
 ;;21,"64679092810 ")
 ;;2926
 ;;21,"64679092901 ")
 ;;2927
 ;;21,"64679092902 ")
 ;;2928
 ;;21,"64679092905 ")
 ;;2929
 ;;21,"64679092906 ")
 ;;2930
 ;;21,"64679092910 ")
 ;;2931
 ;;21,"64679094101 ")
 ;;2932
 ;;21,"64679094102 ")
 ;;2933
 ;;21,"64679094105 ")
 ;;2934
 ;;21,"64679094106 ")
 ;;2935
 ;;21,"64679094110 ")
 ;;2936
 ;;21,"64679094201 ")
 ;;2937
 ;;21,"64679094202 ")
 ;;2938
 ;;21,"64679094205 ")
 ;;2939
 ;;21,"64679094209 ")
 ;;2940
 ;;21,"64679095301 ")
 ;;2941
 ;;21,"64679095302 ")
 ;;2942
 ;;21,"64679095305 ")
 ;;2943
 ;;21,"64679095309 ")
 ;;2944
 ;;21,"64720016110 ")
 ;;2945
 ;;21,"64720016111 ")
 ;;2946
 ;;21,"64720016210 ")
 ;;2947
 ;;21,"64720016211 ")
 ;;2948
 ;;21,"64725005003 ")
 ;;2949
 ;;21,"64725005203 ")
 ;;2950
 ;;21,"64725005303 ")
 ;;2951
 ;;21,"64725012303 ")
 ;;2952
 ;;21,"64725012503 ")
 ;;2953
 ;;21,"64725012603 ")
 ;;2954
 ;;21,"64725019803 ")
 ;;2955
 ;;21,"64725019903 ")
 ;;2956
 ;;21,"64725039403 ")
 ;;2957
 ;;21,"65243030303 ")
 ;;2958
 ;;21,"65243030306 ")
 ;;2959
 ;;21,"65243030309 ")
 ;;2960
 ;;21,"65243030312 ")
 ;;2961
 ;;21,"65243030318 ")
 ;;2962
 ;;21,"65243031403 ")
 ;;2963
 ;;21,"65243031406 ")
 ;;2964
 ;;21,"65243031409 ")
 ;;2965
 ;;21,"65243031412 ")
 ;;2966
 ;;21,"65243031445 ")
 ;;2967
 ;;21,"65243034103 ")
 ;;2968
 ;;21,"65243034106 ")
 ;;2969
 ;;21,"65243034109 ")
 ;;2970
 ;;21,"65243034112 ")
 ;;2971
 ;;21,"65243034145 ")
 ;;2972
 ;;21,"65427001901 ")
 ;;2973
 ;;21,"65427002001 ")
 ;;2974
 ;;21,"65427002101 ")
 ;;2975
 ;;21,"65427002201 ")
 ;;2976
 ;;21,"65841065501 ")
 ;;2977
 ;;21,"65841065505 ")
 ;;2978
 ;;21,"65841065506 ")
 ;;2979
 ;;21,"65841065516 ")
 ;;2980
 ;;21,"65841065530 ")
 ;;2981
 ;;21,"65841065601 ")
 ;;2982
 ;;21,"65841065605 ")
 ;;2983
 ;;21,"65841065606 ")
 ;;2984
 ;;21,"65841065616 ")
 ;;2985
 ;;21,"65841065630 ")
 ;;2986
 ;;21,"65841065701 ")
 ;;2987
 ;;21,"65841065705 ")
 ;;2988
 ;;21,"65841065706 ")
 ;;2989
 ;;21,"65841065716 ")
 ;;2990
 ;;21,"65841065730 ")
 ;;2991
 ;;21,"65841065801 ")
 ;;2992
 ;;21,"65841065805 ")
 ;;2993
 ;;21,"65841065806 ")
 ;;2994
 ;;21,"65841065816 ")
 ;;2995
 ;;21,"65841065830 ")
 ;;2996
 ;;21,"65862003700 ")
 ;;2997
 ;;21,"65862003701 ")
 ;;2998
 ;;21,"65862003705 ")
 ;;2999
 ;;21,"65862003713 ")
 ;;3000
 ;;21,"65862003730 ")
 ;;3001
 ;;21,"65862003800 ")
 ;;3002
 ;;21,"65862003801 ")
 ;;3003
 ;;21,"65862003805 ")
 ;;3004
 ;;21,"65862003813 ")
 ;;3005
 ;;21,"65862003830 ")
 ;;3006
 ;;21,"65862003900 ")
 ;;3007
 ;;21,"65862003901 ")
 ;;3008
 ;;21,"65862003905 ")
 ;;3009
 ;;21,"65862003913 ")
 ;;3010
 ;;21,"65862003930 ")
 ;;3011
 ;;21,"65862004000 ")
 ;;3012
 ;;21,"65862004001 ")
 ;;3013
 ;;21,"65862004005 ")
 ;;3014
 ;;21,"65862004030 ")
 ;;3015
 ;;21,"65862004065 ")
 ;;3016
 ;;21,"65862004100 ")
 ;;3017
 ;;21,"65862004101 ")
 ;;3018
 ;;21,"65862004105 ")
 ;;3019
 ;;21,"65862004130 ")
 ;;3020
 ;;21,"65862004159 ")
 ;;3021
 ;;21,"65862004200 ")
 ;;3022
 ;;21,"65862004201 ")
 ;;3023
 ;;21,"65862004205 ")
 ;;3024
 ;;21,"65862004230 ")
 ;;3025
 ;;21,"65862004249 ")
 ;;3026
 ;;21,"65862004300 ")
 ;;3027
 ;;21,"65862004301 ")
 ;;3028
 ;;21,"65862004305 ")
 ;;3029
 ;;21,"65862004319 ")
 ;;3030
 ;;21,"65862004330 ")
 ;;3031
 ;;21,"65862004399 ")
 ;;3032
 ;;21,"65862004400 ")
 ;;3033
 ;;21,"65862004401 ")
 ;;3034
 ;;21,"65862004405 ")
 ;;3035
 ;;21,"65862004430 ")
 ;;3036
 ;;21,"65862004459 ")
 ;;3037
 ;;21,"65862004499 ")
 ;;3038
 ;;21,"65862004500 ")
 ;;3039
 ;;21,"65862004501 ")
 ;;3040
 ;;21,"65862004505 ")
 ;;3041
 ;;21,"65862004530 ")
 ;;3042
 ;;21,"65862004559 ")
 ;;3043
 ;;21,"65862004599 ")
 ;;3044
 ;;21,"65862016171 ")
 ;;3045
 ;;21,"65862016190 ")
 ;;3046
 ;;21,"65862016230 ")
 ;;3047
 ;;21,"65862016259 ")
 ;;3048
 ;;21,"65862016290 ")
 ;;3049
