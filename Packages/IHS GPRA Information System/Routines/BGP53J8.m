BGP53J8 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"55111-0342-30 ")
 ;;2725
 ;;21,"55111-0343-01 ")
 ;;2726
 ;;21,"55111-0343-05 ")
 ;;2727
 ;;21,"55111-0343-30 ")
 ;;2728
 ;;21,"55111-0344-01 ")
 ;;2729
 ;;21,"55111-0344-05 ")
 ;;2730
 ;;21,"55111-0344-30 ")
 ;;2731
 ;;21,"55111-0453-05 ")
 ;;2732
 ;;21,"55111-0453-30 ")
 ;;2733
 ;;21,"55111-0453-90 ")
 ;;2734
 ;;21,"55111-0454-05 ")
 ;;2735
 ;;21,"55111-0454-30 ")
 ;;2736
 ;;21,"55111-0454-90 ")
 ;;2737
 ;;21,"55111-0455-05 ")
 ;;2738
 ;;21,"55111-0455-30 ")
 ;;2739
 ;;21,"55111-0455-90 ")
 ;;2740
 ;;21,"55111-0545-90 ")
 ;;2741
 ;;21,"55111-0546-05 ")
 ;;2742
 ;;21,"55111-0546-90 ")
 ;;2743
 ;;21,"55111-0547-90 ")
 ;;2744
 ;;21,"55111-0548-05 ")
 ;;2745
 ;;21,"55111-0548-90 ")
 ;;2746
 ;;21,"55111-0549-90 ")
 ;;2747
 ;;21,"55111-0608-60 ")
 ;;2748
 ;;21,"55111-0609-30 ")
 ;;2749
 ;;21,"55111-0609-90 ")
 ;;2750
 ;;21,"55111-0610-10 ")
 ;;2751
 ;;21,"55111-0610-30 ")
 ;;2752
 ;;21,"55289-0016-30 ")
 ;;2753
 ;;21,"55289-0016-60 ")
 ;;2754
 ;;21,"55289-0018-01 ")
 ;;2755
 ;;21,"55289-0018-30 ")
 ;;2756
 ;;21,"55289-0028-21 ")
 ;;2757
 ;;21,"55289-0028-30 ")
 ;;2758
 ;;21,"55289-0036-21 ")
 ;;2759
 ;;21,"55289-0036-30 ")
 ;;2760
 ;;21,"55289-0037-45 ")
 ;;2761
 ;;21,"55289-0037-90 ")
 ;;2762
 ;;21,"55289-0053-45 ")
 ;;2763
 ;;21,"55289-0053-90 ")
 ;;2764
 ;;21,"55289-0060-14 ")
 ;;2765
 ;;21,"55289-0060-30 ")
 ;;2766
 ;;21,"55289-0064-07 ")
 ;;2767
 ;;21,"55289-0064-14 ")
 ;;2768
 ;;21,"55289-0064-30 ")
 ;;2769
 ;;21,"55289-0064-60 ")
 ;;2770
 ;;21,"55289-0064-90 ")
 ;;2771
 ;;21,"55289-0099-30 ")
 ;;2772
 ;;21,"55289-0099-50 ")
 ;;2773
 ;;21,"55289-0124-12 ")
 ;;2774
 ;;21,"55289-0124-30 ")
 ;;2775
 ;;21,"55289-0144-30 ")
 ;;2776
 ;;21,"55289-0144-90 ")
 ;;2777
 ;;21,"55289-0215-22 ")
 ;;2778
 ;;21,"55289-0215-30 ")
 ;;2779
 ;;21,"55289-0216-30 ")
 ;;2780
 ;;21,"55289-0223-30 ")
 ;;2781
 ;;21,"55289-0223-60 ")
 ;;2782
 ;;21,"55289-0223-90 ")
 ;;2783
 ;;21,"55289-0258-30 ")
 ;;2784
 ;;21,"55289-0277-30 ")
 ;;2785
 ;;21,"55289-0291-14 ")
 ;;2786
 ;;21,"55289-0291-30 ")
 ;;2787
 ;;21,"55289-0291-60 ")
 ;;2788
 ;;21,"55289-0308-07 ")
 ;;2789
 ;;21,"55289-0308-14 ")
 ;;2790
 ;;21,"55289-0308-30 ")
 ;;2791
 ;;21,"55289-0370-30 ")
 ;;2792
 ;;21,"55289-0378-30 ")
 ;;2793
 ;;21,"55289-0381-30 ")
 ;;2794
 ;;21,"55289-0381-45 ")
 ;;2795
 ;;21,"55289-0381-60 ")
 ;;2796
 ;;21,"55289-0381-90 ")
 ;;2797
 ;;21,"55289-0409-30 ")
 ;;2798
 ;;21,"55289-0409-60 ")
 ;;2799
 ;;21,"55289-0550-15 ")
 ;;2800
 ;;21,"55289-0550-30 ")
 ;;2801
 ;;21,"55289-0586-30 ")
 ;;2802
 ;;21,"55289-0610-14 ")
 ;;2803
 ;;21,"55289-0610-28 ")
 ;;2804
 ;;21,"55289-0610-30 ")
 ;;2805
 ;;21,"55289-0610-60 ")
 ;;2806
 ;;21,"55289-0610-90 ")
 ;;2807
 ;;21,"55289-0613-14 ")
 ;;2808
 ;;21,"55289-0613-30 ")
 ;;2809
 ;;21,"55289-0613-60 ")
 ;;2810
 ;;21,"55289-0730-01 ")
 ;;2811
 ;;21,"55289-0730-12 ")
 ;;2812
 ;;21,"55289-0730-25 ")
 ;;2813
 ;;21,"55289-0730-30 ")
 ;;2814
 ;;21,"55289-0730-60 ")
 ;;2815
 ;;21,"55289-0730-90 ")
 ;;2816
 ;;21,"55289-0733-30 ")
 ;;2817
 ;;21,"55289-0733-60 ")
 ;;2818
 ;;21,"55289-0768-30 ")
 ;;2819
 ;;21,"55289-0827-30 ")
 ;;2820
 ;;21,"55289-0828-30 ")
 ;;2821
 ;;21,"55289-0830-30 ")
 ;;2822
 ;;21,"55289-0869-30 ")
 ;;2823
 ;;21,"55289-0883-14 ")
 ;;2824
 ;;21,"55289-0883-30 ")
 ;;2825
 ;;21,"55289-0883-90 ")
 ;;2826
 ;;21,"55289-0897-30 ")
 ;;2827
 ;;21,"55289-0900-15 ")
 ;;2828
 ;;21,"55289-0900-30 ")
 ;;2829
 ;;21,"55289-0905-30 ")
 ;;2830
 ;;21,"55289-0922-15 ")
 ;;2831
 ;;21,"55289-0922-30 ")
 ;;2832
 ;;21,"55289-0972-30 ")
 ;;2833
 ;;21,"55289-0972-60 ")
 ;;2834
 ;;21,"55289-0972-90 ")
 ;;2835
 ;;21,"55587-0283-30 ")
 ;;2836
 ;;21,"55587-0283-60 ")
 ;;2837
 ;;21,"55587-0283-90 ")
 ;;2838
 ;;21,"55587-0284-30 ")
 ;;2839
 ;;21,"55587-0284-60 ")
 ;;2840
 ;;21,"55587-0284-90 ")
 ;;2841
 ;;21,"55864-0708-30 ")
 ;;2842
 ;;21,"55887-0125-60 ")
 ;;2843
 ;;21,"55887-0143-30 ")
 ;;2844
 ;;21,"55887-0143-60 ")
 ;;2845
 ;;21,"55887-0143-82 ")
 ;;2846
 ;;21,"55887-0143-90 ")
 ;;2847
 ;;21,"55887-0143-92 ")
 ;;2848
 ;;21,"55887-0144-30 ")
 ;;2849
 ;;21,"55887-0144-60 ")
 ;;2850
 ;;21,"55887-0144-82 ")
 ;;2851
 ;;21,"55887-0144-90 ")
 ;;2852
 ;;21,"55887-0144-92 ")
 ;;2853
 ;;21,"55887-0151-01 ")
 ;;2854
 ;;21,"55887-0151-20 ")
 ;;2855
 ;;21,"55887-0151-30 ")
 ;;2856
 ;;21,"55887-0151-60 ")
 ;;2857
 ;;21,"55887-0151-82 ")
 ;;2858
 ;;21,"55887-0151-90 ")
 ;;2859
 ;;21,"55887-0160-15 ")
 ;;2860
 ;;21,"55887-0160-30 ")
 ;;2861
 ;;21,"55887-0160-60 ")
 ;;2862
 ;;21,"55887-0160-90 ")
 ;;2863
 ;;21,"55887-0168-30 ")
 ;;2864
 ;;21,"55887-0168-60 ")
 ;;2865
 ;;21,"55887-0168-90 ")
 ;;2866
 ;;21,"55887-0193-90 ")
 ;;2867
 ;;21,"55887-0237-30 ")
 ;;2868
 ;;21,"55887-0237-60 ")
 ;;2869
 ;;21,"55887-0237-86 ")
 ;;2870
 ;;21,"55887-0237-90 ")
 ;;2871
 ;;21,"55887-0256-20 ")
 ;;2872
 ;;21,"55887-0260-90 ")
 ;;2873
 ;;21,"55887-0261-01 ")
 ;;2874
 ;;21,"55887-0261-90 ")
 ;;2875
 ;;21,"55887-0283-30 ")
 ;;2876
 ;;21,"55887-0283-60 ")
 ;;2877
 ;;21,"55887-0283-90 ")
 ;;2878
 ;;21,"55887-0284-30 ")
 ;;2879
 ;;21,"55887-0284-60 ")
 ;;2880
 ;;21,"55887-0284-90 ")
 ;;2881
 ;;21,"55887-0288-30 ")
 ;;2882
 ;;21,"55887-0289-30 ")
 ;;2883
 ;;21,"55887-0289-60 ")
 ;;2884
 ;;21,"55887-0356-30 ")
 ;;2885
 ;;21,"55887-0356-60 ")
 ;;2886
 ;;21,"55887-0394-90 ")
 ;;2887
 ;;21,"55887-0398-60 ")
 ;;2888
 ;;21,"55887-0433-30 ")
 ;;2889
 ;;21,"55887-0439-30 ")
 ;;2890
 ;;21,"55887-0439-60 ")
 ;;2891
 ;;21,"55887-0439-92 ")
 ;;2892
 ;;21,"55887-0458-60 ")
 ;;2893
 ;;21,"55887-0458-90 ")
 ;;2894
 ;;21,"55887-0490-30 ")
 ;;2895
 ;;21,"55887-0490-60 ")
 ;;2896
 ;;21,"55887-0490-82 ")
 ;;2897
 ;;21,"55887-0490-90 ")
 ;;2898
 ;;21,"55887-0496-30 ")
 ;;2899
 ;;21,"55887-0496-90 ")
 ;;2900
 ;;21,"55887-0498-30 ")
 ;;2901
 ;;21,"55887-0498-60 ")
 ;;2902
 ;;21,"55887-0502-60 ")
 ;;2903
 ;;21,"55887-0511-20 ")
 ;;2904
 ;;21,"55887-0511-30 ")
 ;;2905
 ;;21,"55887-0511-60 ")
 ;;2906
 ;;21,"55887-0511-82 ")
 ;;2907
 ;;21,"55887-0511-90 ")
 ;;2908
 ;;21,"55887-0518-15 ")
 ;;2909
 ;;21,"55887-0518-30 ")
 ;;2910
 ;;21,"55887-0518-90 ")
 ;;2911
 ;;21,"55887-0549-90 ")
 ;;2912
 ;;21,"55887-0570-40 ")
 ;;2913
 ;;21,"55887-0570-92 ")
 ;;2914
 ;;21,"55887-0572-14 ")
 ;;2915
 ;;21,"55887-0572-90 ")
 ;;2916
 ;;21,"55887-0650-90 ")
 ;;2917
 ;;21,"55887-0650-92 ")
 ;;2918
 ;;21,"55887-0661-60 ")
 ;;2919
 ;;21,"55887-0661-90 ")
 ;;2920
 ;;21,"55887-0662-30 ")
 ;;2921
 ;;21,"55887-0662-60 ")
 ;;2922
 ;;21,"55887-0663-30 ")
 ;;2923
 ;;21,"55887-0663-60 ")
 ;;2924
 ;;21,"55887-0663-90 ")
 ;;2925
 ;;21,"55887-0745-50 ")
 ;;2926
 ;;21,"55887-0871-30 ")
 ;;2927
 ;;21,"55887-0925-30 ")
 ;;2928
 ;;21,"57237-0007-05 ")
 ;;2929
 ;;21,"57237-0007-30 ")
 ;;2930
 ;;21,"57237-0008-05 ")
 ;;2931
 ;;21,"57237-0008-30 ")
 ;;2932
 ;;21,"57237-0009-05 ")
 ;;2933
 ;;21,"57237-0009-30 ")
 ;;2934
 ;;21,"57237-0010-05 ")
 ;;2935
 ;;21,"57237-0010-30 ")
 ;;2936
 ;;21,"57237-0011-06 ")
 ;;2937
 ;;21,"57237-0012-06 ")
 ;;2938
 ;;21,"57237-0013-06 ")
 ;;2939
 ;;21,"57237-0017-60 ")
 ;;2940
 ;;21,"57237-0018-30 ")
 ;;2941
 ;;21,"57237-0018-90 ")
 ;;2942
 ;;21,"57237-0018-99 ")
 ;;2943
 ;;21,"57237-0019-30 ")
 ;;2944
 ;;21,"57237-0019-90 ")
 ;;2945
 ;;21,"57237-0019-99 ")
 ;;2946
 ;;21,"57664-0357-88 ")
 ;;2947
 ;;21,"57664-0361-13 ")
 ;;2948
 ;;21,"57664-0361-88 ")
 ;;2949
 ;;21,"57664-0362-13 ")
 ;;2950
 ;;21,"57664-0362-88 ")
 ;;2951
 ;;21,"57664-0421-13 ")
 ;;2952
 ;;21,"57664-0421-83 ")
 ;;2953
 ;;21,"57664-0421-99 ")
 ;;2954
 ;;21,"57664-0422-13 ")
 ;;2955
 ;;21,"57664-0422-18 ")
 ;;2956
 ;;21,"57664-0422-83 ")
 ;;2957
 ;;21,"57664-0422-99 ")
 ;;2958
 ;;21,"57664-0424-13 ")
 ;;2959
 ;;21,"57664-0424-83 ")
 ;;2960
 ;;21,"57664-0424-99 ")
 ;;2961
 ;;21,"57664-0425-13 ")
 ;;2962
 ;;21,"57664-0425-83 ")
 ;;2963
 ;;21,"57664-0425-99 ")
 ;;2964
 ;;21,"57664-0499-18 ")
 ;;2965
 ;;21,"57664-0499-83 ")
 ;;2966
 ;;21,"57664-0500-18 ")
 ;;2967
 ;;21,"57664-0500-83 ")
 ;;2968
 ;;21,"57664-0501-18 ")
 ;;2969
 ;;21,"57664-0501-83 ")
 ;;2970
 ;;21,"57664-0507-13 ")
 ;;2971
 ;;21,"57664-0507-88 ")
 ;;2972
 ;;21,"57664-0508-13 ")
 ;;2973
 ;;21,"57664-0508-18 ")
 ;;2974
 ;;21,"57664-0508-88 ")
 ;;2975
 ;;21,"57664-0509-13 ")
 ;;2976
 ;;21,"57664-0509-18 ")
 ;;2977
 ;;21,"57664-0509-88 ")
 ;;2978
 ;;21,"57664-0510-18 ")
 ;;2979
 ;;21,"57664-0510-83 ")
 ;;2980
 ;;21,"57866-0920-01 ")
 ;;2981
 ;;21,"57866-0920-02 ")
 ;;2982
 ;;21,"57866-0920-03 ")
 ;;2983
 ;;21,"57866-0922-01 ")
 ;;2984
 ;;21,"57866-0922-02 ")
 ;;2985
 ;;21,"57866-0922-03 ")
 ;;2986
 ;;21,"57866-3061-02 ")
 ;;2987
 ;;21,"57866-3071-01 ")
 ;;2988
 ;;21,"57866-3072-01 ")
 ;;2989
 ;;21,"57866-3072-02 ")
 ;;2990
 ;;21,"57866-3072-03 ")
 ;;2991
 ;;21,"57866-3073-01 ")
 ;;2992
 ;;21,"57866-3073-02 ")
 ;;2993
 ;;21,"57866-3073-03 ")
 ;;2994
 ;;21,"57866-3906-01 ")
 ;;2995
 ;;21,"57866-3907-01 ")
 ;;2996
 ;;21,"57866-3930-01 ")
 ;;2997
 ;;21,"57866-3931-01 ")
 ;;2998
 ;;21,"57866-4688-01 ")
 ;;2999
 ;;21,"57866-4688-02 ")
 ;;3000
 ;;21,"57866-4688-03 ")
 ;;3001
 ;;21,"57866-4688-04 ")
 ;;3002
 ;;21,"57866-4715-01 ")
 ;;3003
 ;;21,"57866-4715-02 ")
 ;;3004
 ;;21,"57866-4715-03 ")
 ;;3005
 ;;21,"57866-4715-04 ")
 ;;3006
 ;;21,"57866-6650-01 ")
 ;;3007
 ;;21,"57866-6650-02 ")
 ;;3008
 ;;21,"57866-6650-03 ")
 ;;3009
 ;;21,"58016-0004-00 ")
 ;;3010
 ;;21,"58016-0004-30 ")
 ;;3011
 ;;21,"58016-0004-60 ")
 ;;3012
 ;;21,"58016-0004-90 ")
 ;;3013
 ;;21,"58016-0009-00 ")
 ;;3014
 ;;21,"58016-0009-30 ")
 ;;3015
 ;;21,"58016-0009-60 ")
 ;;3016
 ;;21,"58016-0009-90 ")
 ;;3017
 ;;21,"58016-0010-00 ")
 ;;3018
 ;;21,"58016-0010-30 ")
 ;;3019
 ;;21,"58016-0010-60 ")
 ;;3020
 ;;21,"58016-0010-90 ")
 ;;3021
 ;;21,"58016-0011-00 ")
 ;;3022
 ;;21,"58016-0011-30 ")
 ;;3023
 ;;21,"58016-0011-60 ")
 ;;3024
 ;;21,"58016-0011-90 ")
 ;;3025
 ;;21,"58016-0024-00 ")
 ;;3026
 ;;21,"58016-0024-30 ")
 ;;3027
 ;;21,"58016-0024-60 ")
 ;;3028
 ;;21,"58016-0024-90 ")
 ;;3029
 ;;21,"58016-0027-00 ")
 ;;3030
 ;;21,"58016-0027-30 ")
 ;;3031
 ;;21,"58016-0027-60 ")
 ;;3032
 ;;21,"58016-0027-90 ")
 ;;3033
 ;;21,"58016-0030-00 ")
 ;;3034
 ;;21,"58016-0030-30 ")
 ;;3035
 ;;21,"58016-0030-60 ")
 ;;3036
 ;;21,"58016-0030-90 ")
 ;;3037
 ;;21,"58016-0031-00 ")
 ;;3038
 ;;21,"58016-0031-30 ")
 ;;3039
 ;;21,"58016-0031-60 ")
 ;;3040
 ;;21,"58016-0031-90 ")
 ;;3041
 ;;21,"58016-0100-00 ")
 ;;3042
 ;;21,"58016-0100-30 ")
 ;;3043
 ;;21,"58016-0100-60 ")
 ;;3044
 ;;21,"58016-0100-90 ")
 ;;3045
 ;;21,"58016-0178-00 ")
 ;;3046
 ;;21,"58016-0178-02 ")
 ;;3047
 ;;21,"58016-0178-04 ")
 ;;3048
 ;;21,"58016-0178-05 ")
 ;;3049
 ;;21,"58016-0178-10 ")
 ;;3050
 ;;21,"58016-0178-12 ")
 ;;3051
 ;;21,"58016-0178-14 ")
 ;;3052
 ;;21,"58016-0178-15 ")
 ;;3053
 ;;21,"58016-0178-20 ")
 ;;3054
 ;;21,"58016-0178-30 ")
 ;;3055
 ;;21,"58016-0178-40 ")
 ;;3056
 ;;21,"58016-0178-50 ")
 ;;3057
 ;;21,"58016-0178-60 ")
 ;;3058
 ;;21,"58016-0178-89 ")
 ;;3059
 ;;21,"58016-0178-90 ")
 ;;3060
 ;;21,"58016-0178-99 ")
 ;;3061
 ;;21,"58016-0220-00 ")
 ;;3062
 ;;21,"58016-0220-30 ")
 ;;3063
 ;;21,"58016-0220-60 ")
 ;;3064
 ;;21,"58016-0220-90 ")
 ;;3065
 ;;21,"58016-0224-00 ")
 ;;3066
 ;;21,"58016-0224-02 ")
 ;;3067
 ;;21,"58016-0224-04 ")
 ;;3068
 ;;21,"58016-0224-05 ")
 ;;3069
 ;;21,"58016-0224-10 ")
 ;;3070
 ;;21,"58016-0224-12 ")
 ;;3071
 ;;21,"58016-0224-14 ")
 ;;3072
 ;;21,"58016-0224-15 ")
 ;;3073
 ;;21,"58016-0224-20 ")
 ;;3074
 ;;21,"58016-0224-30 ")
 ;;3075
 ;;21,"58016-0224-40 ")
 ;;3076
 ;;21,"58016-0224-50 ")
 ;;3077
 ;;21,"58016-0224-60 ")
 ;;3078
 ;;21,"58016-0224-89 ")
 ;;3079
 ;;21,"58016-0224-90 ")
 ;;3080
 ;;21,"58016-0224-99 ")
 ;;3081
 ;;21,"58016-0240-00 ")
 ;;3082
 ;;21,"58016-0240-02 ")
 ;;3083
 ;;21,"58016-0240-03 ")
 ;;3084
 ;;21,"58016-0240-30 ")
 ;;3085
 ;;21,"58016-0240-60 ")
 ;;3086
 ;;21,"58016-0240-90 ")
 ;;3087
 ;;21,"58016-0263-00 ")
 ;;3088
 ;;21,"58016-0263-02 ")
 ;;3089
 ;;21,"58016-0263-03 ")
 ;;3090
 ;;21,"58016-0263-10 ")
 ;;3091
 ;;21,"58016-0263-12 ")
 ;;3092
 ;;21,"58016-0263-15 ")
 ;;3093
 ;;21,"58016-0263-20 ")
 ;;3094
 ;;21,"58016-0263-28 ")
 ;;3095
 ;;21,"58016-0263-30 ")
 ;;3096
 ;;21,"58016-0263-60 ")
 ;;3097
 ;;21,"58016-0263-73 ")
 ;;3098
 ;;21,"58016-0263-89 ")
 ;;3099
 ;;21,"58016-0263-90 ")
 ;;3100
 ;;21,"58016-0282-00 ")
 ;;3101
 ;;21,"58016-0282-30 ")
 ;;3102
 ;;21,"58016-0282-60 ")
 ;;3103
 ;;21,"58016-0282-90 ")
 ;;3104
 ;;21,"58016-0323-00 ")
 ;;3105
 ;;21,"58016-0323-10 ")
 ;;3106
 ;;21,"58016-0323-14 ")
 ;;3107
 ;;21,"58016-0323-15 ")
 ;;3108
 ;;21,"58016-0323-20 ")
 ;;3109
 ;;21,"58016-0323-21 ")
 ;;3110
