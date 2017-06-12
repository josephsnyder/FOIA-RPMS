BGP71U3 ; IHS/CMI/LAB -CREATED BY ^ATXSTX ON AUG 11, 2016 ;
 ;;17.0;IHS CLINICAL REPORTING;;AUG 30, 2016;Build 16
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"00591-2168-10 ")
 ;;683
 ;;21,"00591-2168-19 ")
 ;;684
 ;;21,"00591-2169-10 ")
 ;;685
 ;;21,"00591-2169-19 ")
 ;;686
 ;;21,"00591-2170-05 ")
 ;;687
 ;;21,"00591-2170-19 ")
 ;;688
 ;;21,"00591-2315-10 ")
 ;;689
 ;;21,"00591-2315-19 ")
 ;;690
 ;;21,"00591-2316-10 ")
 ;;691
 ;;21,"00591-2316-19 ")
 ;;692
 ;;21,"00591-2317-10 ")
 ;;693
 ;;21,"00591-2317-19 ")
 ;;694
 ;;21,"00591-2318-19 ")
 ;;695
 ;;21,"00591-2319-19 ")
 ;;696
 ;;21,"00591-2782-19 ")
 ;;697
 ;;21,"00591-2782-30 ")
 ;;698
 ;;21,"00591-2783-19 ")
 ;;699
 ;;21,"00591-2783-30 ")
 ;;700
 ;;21,"00591-2784-19 ")
 ;;701
 ;;21,"00591-2784-30 ")
 ;;702
 ;;21,"00591-2785-19 ")
 ;;703
 ;;21,"00591-2785-30 ")
 ;;704
 ;;21,"00591-2786-19 ")
 ;;705
 ;;21,"00591-2786-30 ")
 ;;706
 ;;21,"00591-3292-15 ")
 ;;707
 ;;21,"00591-3292-45 ")
 ;;708
 ;;21,"00591-3293-15 ")
 ;;709
 ;;21,"00591-3293-45 ")
 ;;710
 ;;21,"00591-3294-15 ")
 ;;711
 ;;21,"00591-3294-45 ")
 ;;712
 ;;21,"00591-3745-10 ")
 ;;713
 ;;21,"00591-3745-19 ")
 ;;714
 ;;21,"00591-3746-10 ")
 ;;715
 ;;21,"00591-3746-19 ")
 ;;716
 ;;21,"00591-3746-30 ")
 ;;717
 ;;21,"00591-3747-10 ")
 ;;718
 ;;21,"00591-3747-19 ")
 ;;719
 ;;21,"00591-3747-30 ")
 ;;720
 ;;21,"00591-3757-01 ")
 ;;721
 ;;21,"00591-3758-01 ")
 ;;722
 ;;21,"00591-3758-05 ")
 ;;723
 ;;21,"00591-3759-01 ")
 ;;724
 ;;21,"00591-3759-05 ")
 ;;725
 ;;21,"00591-3760-01 ")
 ;;726
 ;;21,"00591-3760-05 ")
 ;;727
 ;;21,"00591-3761-01 ")
 ;;728
 ;;21,"00591-3762-01 ")
 ;;729
 ;;21,"00597-0039-37 ")
 ;;730
 ;;21,"00597-0040-37 ")
 ;;731
 ;;21,"00597-0041-37 ")
 ;;732
 ;;21,"00597-0042-37 ")
 ;;733
 ;;21,"00597-0043-37 ")
 ;;734
 ;;21,"00597-0044-37 ")
 ;;735
 ;;21,"00597-0124-37 ")
 ;;736
 ;;21,"00597-0125-37 ")
 ;;737
 ;;21,"00597-0126-37 ")
 ;;738
 ;;21,"00597-0127-37 ")
 ;;739
 ;;21,"00603-4080-02 ")
 ;;740
 ;;21,"00603-4080-16 ")
 ;;741
 ;;21,"00603-4081-02 ")
 ;;742
 ;;21,"00603-4081-16 ")
 ;;743
 ;;21,"00603-4081-28 ")
 ;;744
 ;;21,"00603-4082-02 ")
 ;;745
 ;;21,"00603-4082-16 ")
 ;;746
 ;;21,"00603-4082-28 ")
 ;;747
 ;;21,"00603-4088-02 ")
 ;;748
 ;;21,"00603-4088-16 ")
 ;;749
 ;;21,"00603-4089-02 ")
 ;;750
 ;;21,"00603-4089-16 ")
 ;;751
 ;;21,"00603-4209-21 ")
 ;;752
 ;;21,"00603-4209-28 ")
 ;;753
 ;;21,"00603-4210-02 ")
 ;;754
 ;;21,"00603-4210-16 ")
 ;;755
 ;;21,"00603-4210-21 ")
 ;;756
 ;;21,"00603-4210-28 ")
 ;;757
 ;;21,"00603-4210-30 ")
 ;;758
 ;;21,"00603-4210-32 ")
 ;;759
 ;;21,"00603-4210-60 ")
 ;;760
 ;;21,"00603-4211-02 ")
 ;;761
 ;;21,"00603-4211-21 ")
 ;;762
 ;;21,"00603-4211-28 ")
 ;;763
 ;;21,"00603-4211-32 ")
 ;;764
 ;;21,"00603-4211-34 ")
 ;;765
 ;;21,"00603-4211-60 ")
 ;;766
 ;;21,"00603-4212-02 ")
 ;;767
 ;;21,"00603-4212-21 ")
 ;;768
 ;;21,"00603-4212-28 ")
 ;;769
 ;;21,"00603-4212-32 ")
 ;;770
 ;;21,"00603-4212-34 ")
 ;;771
 ;;21,"00603-4212-60 ")
 ;;772
 ;;21,"00603-4213-21 ")
 ;;773
 ;;21,"00603-4213-28 ")
 ;;774
 ;;21,"00603-4214-02 ")
 ;;775
 ;;21,"00603-4214-04 ")
 ;;776
 ;;21,"00603-4214-21 ")
 ;;777
 ;;21,"00603-4214-28 ")
 ;;778
 ;;21,"00603-4214-30 ")
 ;;779
 ;;21,"00603-4214-32 ")
 ;;780
 ;;21,"00603-4214-60 ")
 ;;781
 ;;21,"00603-4224-02 ")
 ;;782
 ;;21,"00603-4224-32 ")
 ;;783
 ;;21,"00603-4225-02 ")
 ;;784
 ;;21,"00603-4225-16 ")
 ;;785
 ;;21,"00603-4225-32 ")
 ;;786
 ;;21,"00603-4226-02 ")
 ;;787
 ;;21,"00603-4226-16 ")
 ;;788
 ;;21,"00603-4226-32 ")
 ;;789
 ;;21,"00603-4228-02 ")
 ;;790
 ;;21,"00603-4228-16 ")
 ;;791
 ;;21,"00603-4228-32 ")
 ;;792
 ;;21,"00603-4229-02 ")
 ;;793
 ;;21,"00603-4229-16 ")
 ;;794
 ;;21,"00603-4229-32 ")
 ;;795
 ;;21,"00603-4230-02 ")
 ;;796
 ;;21,"00603-4230-16 ")
 ;;797
 ;;21,"00603-4230-32 ")
 ;;798
 ;;21,"00603-5914-16 ")
 ;;799
 ;;21,"00603-5915-16 ")
 ;;800
 ;;21,"00603-5916-16 ")
 ;;801
 ;;21,"00603-5926-16 ")
 ;;802
 ;;21,"00603-5927-16 ")
 ;;803
 ;;21,"00603-5928-16 ")
 ;;804
 ;;21,"00603-6340-02 ")
 ;;805
 ;;21,"00603-6341-02 ")
 ;;806
 ;;21,"00603-6341-28 ")
 ;;807
 ;;21,"00603-6342-02 ")
 ;;808
 ;;21,"00603-6342-28 ")
 ;;809
 ;;21,"00603-6343-02 ")
 ;;810
 ;;21,"00603-6343-28 ")
 ;;811
 ;;21,"00603-6345-02 ")
 ;;812
 ;;21,"00603-6345-28 ")
 ;;813
 ;;21,"00603-6346-02 ")
 ;;814
 ;;21,"00603-6346-28 ")
 ;;815
 ;;21,"00603-6347-02 ")
 ;;816
 ;;21,"00603-6347-28 ")
 ;;817
 ;;21,"00603-6348-02 ")
 ;;818
 ;;21,"00603-6348-28 ")
 ;;819
 ;;21,"00603-6349-02 ")
 ;;820
 ;;21,"00603-6349-28 ")
 ;;821
 ;;21,"00713-1044-01 ")
 ;;822
 ;;21,"00713-1052-01 ")
 ;;823
 ;;21,"00781-1839-01 ")
 ;;824
 ;;21,"00781-1891-01 ")
 ;;825
 ;;21,"00781-1892-01 ")
 ;;826
 ;;21,"00781-2271-01 ")
 ;;827
 ;;21,"00781-2272-01 ")
 ;;828
 ;;21,"00781-2272-10 ")
 ;;829
 ;;21,"00781-2273-01 ")
 ;;830
 ;;21,"00781-2273-10 ")
 ;;831
 ;;21,"00781-2274-01 ")
 ;;832
 ;;21,"00781-2274-10 ")
 ;;833
 ;;21,"00781-2277-01 ")
 ;;834
 ;;21,"00781-2279-01 ")
 ;;835
 ;;21,"00781-5204-10 ")
 ;;836
 ;;21,"00781-5204-31 ")
 ;;837
 ;;21,"00781-5204-92 ")
 ;;838
 ;;21,"00781-5206-10 ")
 ;;839
 ;;21,"00781-5206-31 ")
 ;;840
 ;;21,"00781-5206-92 ")
 ;;841
 ;;21,"00781-5207-10 ")
 ;;842
 ;;21,"00781-5207-31 ")
 ;;843
 ;;21,"00781-5207-92 ")
 ;;844
 ;;21,"00781-5372-06 ")
 ;;845
 ;;21,"00781-5372-64 ")
 ;;846
 ;;21,"00781-5374-06 ")
 ;;847
 ;;21,"00781-5374-64 ")
 ;;848
 ;;21,"00781-5378-06 ")
 ;;849
 ;;21,"00781-5378-64 ")
 ;;850
 ;;21,"00781-5607-31 ")
 ;;851
 ;;21,"00781-5608-92 ")
 ;;852
 ;;21,"00781-5615-31 ")
 ;;853
 ;;21,"00781-5618-92 ")
 ;;854
 ;;21,"00781-5619-92 ")
 ;;855
 ;;21,"00781-5628-31 ")
 ;;856
 ;;21,"00781-5639-31 ")
 ;;857
 ;;21,"00781-5643-31 ")
 ;;858
 ;;21,"00781-5700-10 ")
 ;;859
 ;;21,"00781-5700-92 ")
 ;;860
 ;;21,"00781-5701-10 ")
 ;;861
 ;;21,"00781-5701-31 ")
 ;;862
 ;;21,"00781-5701-92 ")
 ;;863
 ;;21,"00781-5702-10 ")
 ;;864
 ;;21,"00781-5702-31 ")
 ;;865
 ;;21,"00781-5702-92 ")
 ;;866
 ;;21,"00781-5756-31 ")
 ;;867
 ;;21,"00781-5760-31 ")
 ;;868
 ;;21,"00781-5771-31 ")
 ;;869
 ;;21,"00781-5787-31 ")
 ;;870
 ;;21,"00781-5794-31 ")
 ;;871
 ;;21,"00781-5805-10 ")
 ;;872
 ;;21,"00781-5805-92 ")
 ;;873
 ;;21,"00781-5806-10 ")
 ;;874
 ;;21,"00781-5806-31 ")
 ;;875
 ;;21,"00781-5806-92 ")
 ;;876
 ;;21,"00781-5807-10 ")
 ;;877
 ;;21,"00781-5807-31 ")
 ;;878
 ;;21,"00781-5807-92 ")
 ;;879
 ;;21,"00781-5816-10 ")
 ;;880
 ;;21,"00781-5816-31 ")
 ;;881
 ;;21,"00781-5816-92 ")
 ;;882
 ;;21,"00781-5817-10 ")
 ;;883
 ;;21,"00781-5817-31 ")
 ;;884
 ;;21,"00781-5817-92 ")
 ;;885
 ;;21,"00781-5818-10 ")
 ;;886
 ;;21,"00781-5818-31 ")
 ;;887
 ;;21,"00781-5818-92 ")
 ;;888
 ;;21,"00781-5936-31 ")
 ;;889
 ;;21,"00781-5937-31 ")
 ;;890
 ;;21,"00781-5938-31 ")
 ;;891
 ;;21,"00781-5938-92 ")
 ;;892
 ;;21,"00781-5939-31 ")
 ;;893
 ;;21,"00781-5939-92 ")
 ;;894
 ;;21,"00781-5948-10 ")
 ;;895
 ;;21,"00781-5948-92 ")
 ;;896
 ;;21,"00781-5949-10 ")
 ;;897
 ;;21,"00781-5949-64 ")
 ;;898
 ;;21,"00781-5949-92 ")
 ;;899
 ;;21,"00781-5950-10 ")
 ;;900
 ;;21,"00781-5950-64 ")
 ;;901
 ;;21,"00781-5950-92 ")
 ;;902
 ;;21,"00781-5951-10 ")
 ;;903
 ;;21,"00781-5951-64 ")
 ;;904
 ;;21,"00781-5951-92 ")
 ;;905
 ;;21,"00781-5952-10 ")
 ;;906
 ;;21,"00781-5952-64 ")
 ;;907
 ;;21,"00781-5952-92 ")
 ;;908
 ;;21,"00832-0483-11 ")
 ;;909
 ;;21,"00832-0484-11 ")
 ;;910
 ;;21,"00832-0485-11 ")
 ;;911
 ;;21,"00904-5501-60 ")
 ;;912
 ;;21,"00904-5502-61 ")
 ;;913
 ;;21,"00904-5609-61 ")
 ;;914
 ;;21,"00904-5610-61 ")
 ;;915
 ;;21,"00904-5611-61 ")
 ;;916
 ;;21,"00904-5638-89 ")
 ;;917
 ;;21,"00904-5639-43 ")
 ;;918
 ;;21,"00904-5639-46 ")
 ;;919
 ;;21,"00904-5639-48 ")
 ;;920
 ;;21,"00904-5640-46 ")
 ;;921
 ;;21,"00904-5640-48 ")
 ;;922
 ;;21,"00904-5640-89 ")
 ;;923
 ;;21,"00904-5642-89 ")
 ;;924
 ;;21,"00904-5701-61 ")
 ;;925
 ;;21,"00904-5808-43 ")
 ;;926
 ;;21,"00904-5808-46 ")
 ;;927
 ;;21,"00904-5808-48 ")
 ;;928
 ;;21,"00904-5808-61 ")
 ;;929
 ;;21,"00904-5808-80 ")
 ;;930
 ;;21,"00904-5808-89 ")
 ;;931
 ;;21,"00904-5808-93 ")
 ;;932
 ;;21,"00904-5809-43 ")
 ;;933
 ;;21,"00904-5809-46 ")
 ;;934
 ;;21,"00904-5809-48 ")
 ;;935
 ;;21,"00904-5809-61 ")
 ;;936
 ;;21,"00904-5809-80 ")
 ;;937
 ;;21,"00904-5809-89 ")
 ;;938
 ;;21,"00904-5809-93 ")
 ;;939
 ;;21,"00904-5810-43 ")
 ;;940
 ;;21,"00904-5810-46 ")
 ;;941
 ;;21,"00904-5810-48 ")
 ;;942
 ;;21,"00904-5810-52 ")
 ;;943
 ;;21,"00904-5810-61 ")
 ;;944
 ;;21,"00904-5810-80 ")
 ;;945
 ;;21,"00904-5810-89 ")
 ;;946
 ;;21,"00904-5810-93 ")
 ;;947
 ;;21,"00904-5811-43 ")
 ;;948
 ;;21,"00904-5811-46 ")
 ;;949
 ;;21,"00904-5811-61 ")
 ;;950
 ;;21,"00904-5811-80 ")
 ;;951
 ;;21,"00904-5811-89 ")
 ;;952
 ;;21,"00904-6189-40 ")
 ;;953
 ;;21,"00904-6190-40 ")
 ;;954
 ;;21,"00904-6191-40 ")
 ;;955
 ;;21,"00904-6192-40 ")
 ;;956
 ;;21,"00904-6389-61 ")
 ;;957
 ;;21,"00904-6390-61 ")
 ;;958
 ;;21,"00904-6391-61 ")
 ;;959
 ;;21,"00904-6484-80 ")
 ;;960
 ;;21,"00904-6485-61 ")
 ;;961
 ;;21,"00904-6485-80 ")
 ;;962
 ;;21,"00904-6486-61 ")
 ;;963
 ;;21,"00904-6486-80 ")
 ;;964
 ;;21,"00904-6487-61 ")
 ;;965
 ;;21,"00904-6487-80 ")
 ;;966
 ;;21,"00955-1040-30 ")
 ;;967
 ;;21,"00955-1040-90 ")
 ;;968
 ;;21,"00955-1041-30 ")
 ;;969
 ;;21,"00955-1041-90 ")
 ;;970
 ;;21,"00955-1042-30 ")
 ;;971
 ;;21,"00955-1042-90 ")
 ;;972
 ;;21,"00955-1045-30 ")
 ;;973
 ;;21,"00955-1045-90 ")
 ;;974
 ;;21,"00955-1046-30 ")
 ;;975
 ;;21,"00955-1046-90 ")
 ;;976
 ;;21,"10135-0599-01 ")
 ;;977
 ;;21,"10135-0600-01 ")
 ;;978
 ;;21,"10544-0170-30 ")
 ;;979
 ;;21,"10544-0195-90 ")
 ;;980
 ;;21,"10544-0237-30 ")
 ;;981
 ;;21,"10544-0238-60 ")
 ;;982
 ;;21,"10544-0239-60 ")
 ;;983
 ;;21,"10544-0240-30 ")
 ;;984
 ;;21,"10544-0293-30 ")
 ;;985
 ;;21,"10544-0293-90 ")
 ;;986
 ;;21,"10544-0554-30 ")
 ;;987
 ;;21,"10544-0554-90 ")
 ;;988
 ;;21,"10544-0564-30 ")
 ;;989
 ;;21,"10544-0566-30 ")
 ;;990
 ;;21,"10544-0566-90 ")
 ;;991
 ;;21,"10544-0585-30 ")
 ;;992
 ;;21,"10544-0588-30 ")
 ;;993
 ;;21,"10544-0623-30 ")
 ;;994
 ;;21,"10544-0632-30 ")
 ;;995
 ;;21,"10544-0633-30 ")
 ;;996
 ;;21,"13668-0067-30 ")
 ;;997
 ;;21,"13668-0068-90 ")
 ;;998
 ;;21,"13668-0069-90 ")
 ;;999
 ;;21,"13668-0070-90 ")
 ;;1000
 ;;21,"13668-0113-10 ")
 ;;1001
 ;;21,"13668-0113-90 ")
 ;;1002
 ;;21,"13668-0115-10 ")
 ;;1003
 ;;21,"13668-0115-30 ")
 ;;1004
 ;;21,"13668-0115-90 ")
 ;;1005
 ;;21,"13668-0116-10 ")
 ;;1006
 ;;21,"13668-0116-30 ")
 ;;1007
 ;;21,"13668-0116-90 ")
 ;;1008
 ;;21,"13668-0117-10 ")
 ;;1009
 ;;21,"13668-0117-30 ")
 ;;1010
 ;;21,"13668-0117-90 ")
 ;;1011
 ;;21,"13668-0118-10 ")
 ;;1012
 ;;21,"13668-0118-30 ")
 ;;1013
 ;;21,"13668-0118-90 ")
 ;;1014
 ;;21,"13668-0156-30 ")
 ;;1015
 ;;21,"13668-0156-36 ")
 ;;1016
 ;;21,"13668-0156-72 ")
 ;;1017
 ;;21,"13668-0157-30 ")
 ;;1018
 ;;21,"13668-0157-36 ")
 ;;1019
 ;;21,"13668-0157-72 ")
 ;;1020
 ;;21,"13668-0158-30 ")
 ;;1021
 ;;21,"13668-0158-36 ")
 ;;1022
 ;;21,"13668-0158-72 ")
 ;;1023
