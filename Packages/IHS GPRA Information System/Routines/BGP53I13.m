BGP53I13 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0103-40 ")
 ;;4655
 ;;21,"58016-0105-00 ")
 ;;4656
 ;;21,"58016-0105-60 ")
 ;;4657
 ;;21,"58016-0105-90 ")
 ;;4658
 ;;21,"58016-0109-00 ")
 ;;4659
 ;;21,"58016-0109-02 ")
 ;;4660
 ;;21,"58016-0109-06 ")
 ;;4661
 ;;21,"58016-0109-07 ")
 ;;4662
 ;;21,"58016-0109-10 ")
 ;;4663
 ;;21,"58016-0109-14 ")
 ;;4664
 ;;21,"58016-0109-18 ")
 ;;4665
 ;;21,"58016-0109-20 ")
 ;;4666
 ;;21,"58016-0109-21 ")
 ;;4667
 ;;21,"58016-0109-24 ")
 ;;4668
 ;;21,"58016-0109-28 ")
 ;;4669
 ;;21,"58016-0109-30 ")
 ;;4670
 ;;21,"58016-0109-40 ")
 ;;4671
 ;;21,"58016-0109-50 ")
 ;;4672
 ;;21,"58016-0109-60 ")
 ;;4673
 ;;21,"58016-0109-73 ")
 ;;4674
 ;;21,"58016-0109-80 ")
 ;;4675
 ;;21,"58016-0109-89 ")
 ;;4676
 ;;21,"58016-0109-90 ")
 ;;4677
 ;;21,"58016-0114-10 ")
 ;;4678
 ;;21,"58016-0114-14 ")
 ;;4679
 ;;21,"58016-0114-20 ")
 ;;4680
 ;;21,"58016-0114-30 ")
 ;;4681
 ;;21,"58016-0114-60 ")
 ;;4682
 ;;21,"58016-0115-10 ")
 ;;4683
 ;;21,"58016-0115-14 ")
 ;;4684
 ;;21,"58016-0115-20 ")
 ;;4685
 ;;21,"58016-0115-30 ")
 ;;4686
 ;;21,"58016-0115-60 ")
 ;;4687
 ;;21,"58016-0116-00 ")
 ;;4688
 ;;21,"58016-0116-10 ")
 ;;4689
 ;;21,"58016-0116-12 ")
 ;;4690
 ;;21,"58016-0116-15 ")
 ;;4691
 ;;21,"58016-0116-20 ")
 ;;4692
 ;;21,"58016-0116-30 ")
 ;;4693
 ;;21,"58016-0117-00 ")
 ;;4694
 ;;21,"58016-0117-10 ")
 ;;4695
 ;;21,"58016-0117-12 ")
 ;;4696
 ;;21,"58016-0117-14 ")
 ;;4697
 ;;21,"58016-0117-15 ")
 ;;4698
 ;;21,"58016-0117-20 ")
 ;;4699
 ;;21,"58016-0117-30 ")
 ;;4700
 ;;21,"58016-0118-10 ")
 ;;4701
 ;;21,"58016-0118-12 ")
 ;;4702
 ;;21,"58016-0118-14 ")
 ;;4703
 ;;21,"58016-0118-15 ")
 ;;4704
 ;;21,"58016-0118-20 ")
 ;;4705
 ;;21,"58016-0118-30 ")
 ;;4706
 ;;21,"58016-0118-50 ")
 ;;4707
 ;;21,"58016-0119-00 ")
 ;;4708
 ;;21,"58016-0119-02 ")
 ;;4709
 ;;21,"58016-0119-03 ")
 ;;4710
 ;;21,"58016-0119-10 ")
 ;;4711
 ;;21,"58016-0119-12 ")
 ;;4712
 ;;21,"58016-0119-14 ")
 ;;4713
 ;;21,"58016-0119-15 ")
 ;;4714
 ;;21,"58016-0119-20 ")
 ;;4715
 ;;21,"58016-0119-25 ")
 ;;4716
 ;;21,"58016-0119-30 ")
 ;;4717
 ;;21,"58016-0119-40 ")
 ;;4718
 ;;21,"58016-0119-60 ")
 ;;4719
 ;;21,"58016-0119-73 ")
 ;;4720
 ;;21,"58016-0119-89 ")
 ;;4721
 ;;21,"58016-0119-90 ")
 ;;4722
 ;;21,"58016-0121-00 ")
 ;;4723
 ;;21,"58016-0121-10 ")
 ;;4724
 ;;21,"58016-0121-12 ")
 ;;4725
 ;;21,"58016-0121-14 ")
 ;;4726
 ;;21,"58016-0121-15 ")
 ;;4727
 ;;21,"58016-0121-18 ")
 ;;4728
 ;;21,"58016-0121-20 ")
 ;;4729
 ;;21,"58016-0121-24 ")
 ;;4730
 ;;21,"58016-0121-28 ")
 ;;4731
 ;;21,"58016-0121-30 ")
 ;;4732
 ;;21,"58016-0121-40 ")
 ;;4733
 ;;21,"58016-0122-00 ")
 ;;4734
 ;;21,"58016-0122-12 ")
 ;;4735
 ;;21,"58016-0122-14 ")
 ;;4736
 ;;21,"58016-0122-15 ")
 ;;4737
 ;;21,"58016-0122-20 ")
 ;;4738
 ;;21,"58016-0122-28 ")
 ;;4739
 ;;21,"58016-0122-30 ")
 ;;4740
 ;;21,"58016-0122-40 ")
 ;;4741
 ;;21,"58016-0122-50 ")
 ;;4742
 ;;21,"58016-0123-00 ")
 ;;4743
 ;;21,"58016-0123-12 ")
 ;;4744
 ;;21,"58016-0123-15 ")
 ;;4745
 ;;21,"58016-0123-20 ")
 ;;4746
 ;;21,"58016-0123-24 ")
 ;;4747
 ;;21,"58016-0123-28 ")
 ;;4748
 ;;21,"58016-0123-30 ")
 ;;4749
 ;;21,"58016-0123-40 ")
 ;;4750
 ;;21,"58016-0126-00 ")
 ;;4751
 ;;21,"58016-0126-15 ")
 ;;4752
 ;;21,"58016-0126-18 ")
 ;;4753
 ;;21,"58016-0126-20 ")
 ;;4754
 ;;21,"58016-0126-21 ")
 ;;4755
 ;;21,"58016-0126-28 ")
 ;;4756
 ;;21,"58016-0126-30 ")
 ;;4757
 ;;21,"58016-0126-42 ")
 ;;4758
 ;;21,"58016-0126-60 ")
 ;;4759
 ;;21,"58016-0126-99 ")
 ;;4760
 ;;21,"58016-0127-06 ")
 ;;4761
 ;;21,"58016-0127-08 ")
 ;;4762
 ;;21,"58016-0127-10 ")
 ;;4763
 ;;21,"58016-0127-14 ")
 ;;4764
 ;;21,"58016-0127-20 ")
 ;;4765
 ;;21,"58016-0127-21 ")
 ;;4766
 ;;21,"58016-0127-24 ")
 ;;4767
 ;;21,"58016-0127-28 ")
 ;;4768
 ;;21,"58016-0127-30 ")
 ;;4769
 ;;21,"58016-0127-40 ")
 ;;4770
 ;;21,"58016-0127-42 ")
 ;;4771
 ;;21,"58016-0127-50 ")
 ;;4772
 ;;21,"58016-0127-60 ")
 ;;4773
 ;;21,"58016-0137-00 ")
 ;;4774
 ;;21,"58016-0137-02 ")
 ;;4775
 ;;21,"58016-0137-10 ")
 ;;4776
 ;;21,"58016-0137-12 ")
 ;;4777
 ;;21,"58016-0137-15 ")
 ;;4778
 ;;21,"58016-0137-20 ")
 ;;4779
 ;;21,"58016-0137-30 ")
 ;;4780
 ;;21,"58016-0137-60 ")
 ;;4781
 ;;21,"58016-0137-90 ")
 ;;4782
 ;;21,"58016-0138-00 ")
 ;;4783
 ;;21,"58016-0138-02 ")
 ;;4784
 ;;21,"58016-0138-03 ")
 ;;4785
 ;;21,"58016-0138-12 ")
 ;;4786
 ;;21,"58016-0138-14 ")
 ;;4787
 ;;21,"58016-0138-15 ")
 ;;4788
 ;;21,"58016-0138-20 ")
 ;;4789
 ;;21,"58016-0138-21 ")
 ;;4790
 ;;21,"58016-0138-24 ")
 ;;4791
 ;;21,"58016-0138-28 ")
 ;;4792
 ;;21,"58016-0138-30 ")
 ;;4793
 ;;21,"58016-0138-40 ")
 ;;4794
 ;;21,"58016-0138-56 ")
 ;;4795
 ;;21,"58016-0138-60 ")
 ;;4796
 ;;21,"58016-0138-73 ")
 ;;4797
 ;;21,"58016-0138-89 ")
 ;;4798
 ;;21,"58016-0139-00 ")
 ;;4799
 ;;21,"58016-0139-02 ")
 ;;4800
 ;;21,"58016-0139-03 ")
 ;;4801
 ;;21,"58016-0139-04 ")
 ;;4802
 ;;21,"58016-0139-05 ")
 ;;4803
 ;;21,"58016-0139-06 ")
 ;;4804
 ;;21,"58016-0139-08 ")
 ;;4805
 ;;21,"58016-0139-10 ")
 ;;4806
 ;;21,"58016-0139-12 ")
 ;;4807
 ;;21,"58016-0139-14 ")
 ;;4808
 ;;21,"58016-0139-15 ")
 ;;4809
 ;;21,"58016-0139-18 ")
 ;;4810
 ;;21,"58016-0139-20 ")
 ;;4811
 ;;21,"58016-0139-21 ")
 ;;4812
 ;;21,"58016-0139-24 ")
 ;;4813
 ;;21,"58016-0139-28 ")
 ;;4814
 ;;21,"58016-0139-30 ")
 ;;4815
 ;;21,"58016-0139-40 ")
 ;;4816
 ;;21,"58016-0139-50 ")
 ;;4817
 ;;21,"58016-0139-56 ")
 ;;4818
 ;;21,"58016-0139-60 ")
 ;;4819
 ;;21,"58016-0139-73 ")
 ;;4820
 ;;21,"58016-0139-89 ")
 ;;4821
 ;;21,"58016-0145-18 ")
 ;;4822
 ;;21,"58016-0146-00 ")
 ;;4823
 ;;21,"58016-0146-02 ")
 ;;4824
 ;;21,"58016-0146-03 ")
 ;;4825
 ;;21,"58016-0146-10 ")
 ;;4826
 ;;21,"58016-0146-12 ")
 ;;4827
 ;;21,"58016-0146-16 ")
 ;;4828
 ;;21,"58016-0146-20 ")
 ;;4829
 ;;21,"58016-0146-21 ")
 ;;4830
 ;;21,"58016-0146-24 ")
 ;;4831
 ;;21,"58016-0146-28 ")
 ;;4832
 ;;21,"58016-0146-30 ")
 ;;4833
 ;;21,"58016-0146-40 ")
 ;;4834
 ;;21,"58016-0146-60 ")
 ;;4835
 ;;21,"58016-0146-73 ")
 ;;4836
 ;;21,"58016-0146-89 ")
 ;;4837
 ;;21,"58016-0146-90 ")
 ;;4838
 ;;21,"58016-0147-00 ")
 ;;4839
 ;;21,"58016-0147-02 ")
 ;;4840
 ;;21,"58016-0147-03 ")
 ;;4841
 ;;21,"58016-0147-06 ")
 ;;4842
 ;;21,"58016-0147-10 ")
 ;;4843
 ;;21,"58016-0147-12 ")
 ;;4844
 ;;21,"58016-0147-15 ")
 ;;4845
 ;;21,"58016-0147-16 ")
 ;;4846
 ;;21,"58016-0147-20 ")
 ;;4847
 ;;21,"58016-0147-21 ")
 ;;4848
 ;;21,"58016-0147-24 ")
 ;;4849
 ;;21,"58016-0147-28 ")
 ;;4850
 ;;21,"58016-0147-30 ")
 ;;4851
 ;;21,"58016-0147-40 ")
 ;;4852
 ;;21,"58016-0147-50 ")
 ;;4853
 ;;21,"58016-0147-60 ")
 ;;4854
 ;;21,"58016-0147-73 ")
 ;;4855
 ;;21,"58016-0147-89 ")
 ;;4856
 ;;21,"58016-0147-90 ")
 ;;4857
 ;;21,"58016-0148-00 ")
 ;;4858
 ;;21,"58016-0148-08 ")
 ;;4859
 ;;21,"58016-0148-09 ")
 ;;4860
 ;;21,"58016-0148-10 ")
 ;;4861
 ;;21,"58016-0148-12 ")
 ;;4862
 ;;21,"58016-0148-14 ")
 ;;4863
 ;;21,"58016-0148-15 ")
 ;;4864
 ;;21,"58016-0148-20 ")
 ;;4865
 ;;21,"58016-0148-24 ")
 ;;4866
 ;;21,"58016-0148-28 ")
 ;;4867
 ;;21,"58016-0148-30 ")
 ;;4868
 ;;21,"58016-0148-40 ")
 ;;4869
 ;;21,"58016-0148-50 ")
 ;;4870
 ;;21,"58016-0149-00 ")
 ;;4871
 ;;21,"58016-0149-07 ")
 ;;4872
 ;;21,"58016-0149-10 ")
 ;;4873
 ;;21,"58016-0149-20 ")
 ;;4874
 ;;21,"58016-0149-21 ")
 ;;4875
 ;;21,"58016-0149-24 ")
 ;;4876
 ;;21,"58016-0149-25 ")
 ;;4877
 ;;21,"58016-0149-28 ")
 ;;4878
 ;;21,"58016-0149-30 ")
 ;;4879
 ;;21,"58016-0149-40 ")
 ;;4880
 ;;21,"58016-0156-00 ")
 ;;4881
 ;;21,"58016-0156-02 ")
 ;;4882
 ;;21,"58016-0156-03 ")
 ;;4883
 ;;21,"58016-0156-06 ")
 ;;4884
 ;;21,"58016-0156-07 ")
 ;;4885
 ;;21,"58016-0156-10 ")
 ;;4886
 ;;21,"58016-0156-12 ")
 ;;4887
 ;;21,"58016-0156-14 ")
 ;;4888
 ;;21,"58016-0156-15 ")
 ;;4889
 ;;21,"58016-0156-16 ")
 ;;4890
 ;;21,"58016-0156-20 ")
 ;;4891
 ;;21,"58016-0156-21 ")
 ;;4892
 ;;21,"58016-0156-24 ")
 ;;4893
 ;;21,"58016-0156-28 ")
 ;;4894
 ;;21,"58016-0156-30 ")
 ;;4895
 ;;21,"58016-0156-40 ")
 ;;4896
 ;;21,"58016-0156-60 ")
 ;;4897
 ;;21,"58016-0156-73 ")
 ;;4898
 ;;21,"58016-0156-89 ")
 ;;4899
 ;;21,"58016-0161-10 ")
 ;;4900
 ;;21,"58016-0161-12 ")
 ;;4901
 ;;21,"58016-0161-14 ")
 ;;4902
 ;;21,"58016-0161-15 ")
 ;;4903
 ;;21,"58016-0161-16 ")
 ;;4904
 ;;21,"58016-0161-18 ")
 ;;4905
 ;;21,"58016-0161-20 ")
 ;;4906
 ;;21,"58016-0161-21 ")
 ;;4907
 ;;21,"58016-0161-24 ")
 ;;4908
 ;;21,"58016-0161-28 ")
 ;;4909
 ;;21,"58016-0161-30 ")
 ;;4910
 ;;21,"58016-0161-40 ")
 ;;4911
 ;;21,"58016-0161-50 ")
 ;;4912
 ;;21,"58016-0161-60 ")
 ;;4913
 ;;21,"58016-0162-28 ")
 ;;4914
 ;;21,"58016-0162-30 ")
 ;;4915
 ;;21,"58016-0162-40 ")
 ;;4916
 ;;21,"58016-0167-00 ")
 ;;4917
 ;;21,"58016-0167-20 ")
 ;;4918
 ;;21,"58016-0167-40 ")
 ;;4919
 ;;21,"58016-0171-20 ")
 ;;4920
 ;;21,"58016-0171-30 ")
 ;;4921
 ;;21,"58016-0204-00 ")
 ;;4922
 ;;21,"58016-0204-30 ")
 ;;4923
 ;;21,"58016-0204-60 ")
 ;;4924
 ;;21,"58016-0204-90 ")
 ;;4925
 ;;21,"58016-0284-15 ")
 ;;4926
 ;;21,"58016-0284-20 ")
 ;;4927
 ;;21,"58016-0284-30 ")
 ;;4928
 ;;21,"58016-0284-50 ")
 ;;4929
 ;;21,"58016-0299-00 ")
 ;;4930
 ;;21,"58016-0299-30 ")
 ;;4931
 ;;21,"58016-0299-60 ")
 ;;4932
 ;;21,"58016-0299-90 ")
 ;;4933
 ;;21,"58016-0339-30 ")
 ;;4934
 ;;21,"58016-0391-00 ")
 ;;4935
 ;;21,"58016-0391-01 ")
 ;;4936
 ;;21,"58016-0391-06 ")
 ;;4937
 ;;21,"58016-0391-10 ")
 ;;4938
 ;;21,"58016-0391-15 ")
 ;;4939
 ;;21,"58016-0391-18 ")
 ;;4940
 ;;21,"58016-0391-20 ")
 ;;4941
 ;;21,"58016-0391-28 ")
 ;;4942
 ;;21,"58016-0391-30 ")
 ;;4943
 ;;21,"58016-0391-60 ")
 ;;4944
 ;;21,"58016-0391-90 ")
 ;;4945
 ;;21,"58016-0453-00 ")
 ;;4946
 ;;21,"58016-0453-12 ")
 ;;4947
 ;;21,"58016-0453-15 ")
 ;;4948
 ;;21,"58016-0453-20 ")
 ;;4949
 ;;21,"58016-0453-21 ")
 ;;4950
 ;;21,"58016-0453-30 ")
 ;;4951
 ;;21,"58016-0453-40 ")
 ;;4952
 ;;21,"58016-0550-10 ")
 ;;4953
 ;;21,"58016-0550-12 ")
 ;;4954
 ;;21,"58016-0550-14 ")
 ;;4955
 ;;21,"58016-0550-15 ")
 ;;4956
 ;;21,"58016-0550-20 ")
 ;;4957
 ;;21,"58016-0550-30 ")
 ;;4958
 ;;21,"58016-0550-40 ")
 ;;4959
 ;;21,"58016-0573-00 ")
 ;;4960
 ;;21,"58016-0573-07 ")
 ;;4961
 ;;21,"58016-0573-10 ")
 ;;4962
 ;;21,"58016-0573-20 ")
 ;;4963
 ;;21,"58016-0573-30 ")
 ;;4964
 ;;21,"58016-0573-60 ")
 ;;4965
 ;;21,"58016-0573-90 ")
 ;;4966
 ;;21,"58016-0633-00 ")
 ;;4967
 ;;21,"58016-0633-30 ")
 ;;4968
 ;;21,"58016-0633-60 ")
 ;;4969
 ;;21,"58016-0633-90 ")
 ;;4970
 ;;21,"58016-0634-00 ")
 ;;4971
 ;;21,"58016-0634-30 ")
 ;;4972
 ;;21,"58016-0634-60 ")
 ;;4973
 ;;21,"58016-0634-90 ")
 ;;4974
 ;;21,"58016-0643-00 ")
 ;;4975
 ;;21,"58016-0643-02 ")
 ;;4976
 ;;21,"58016-0643-04 ")
 ;;4977
 ;;21,"58016-0643-09 ")
 ;;4978
 ;;21,"58016-0643-12 ")
 ;;4979
 ;;21,"58016-0643-15 ")
 ;;4980
 ;;21,"58016-0643-18 ")
 ;;4981
 ;;21,"58016-0643-20 ")
 ;;4982
 ;;21,"58016-0643-21 ")
 ;;4983
 ;;21,"58016-0643-24 ")
 ;;4984
 ;;21,"58016-0643-30 ")
 ;;4985
 ;;21,"58016-0643-40 ")
 ;;4986
 ;;21,"58016-0643-50 ")
 ;;4987
 ;;21,"58016-0643-60 ")
 ;;4988
 ;;21,"58016-0643-89 ")
 ;;4989
 ;;21,"58016-0643-90 ")
 ;;4990
 ;;21,"58016-0643-99 ")
 ;;4991
 ;;21,"58016-0810-00 ")
 ;;4992
 ;;21,"58016-0810-12 ")
 ;;4993
 ;;21,"58016-0810-15 ")
 ;;4994
 ;;21,"58016-0810-30 ")
 ;;4995
 ;;21,"58016-0872-12 ")
 ;;4996
 ;;21,"58016-0872-15 ")
 ;;4997
 ;;21,"58016-0872-18 ")
 ;;4998
 ;;21,"58016-0872-20 ")
 ;;4999
 ;;21,"58016-0872-24 ")
 ;;5000
 ;;21,"58016-0872-30 ")
 ;;5001
 ;;21,"58016-0873-00 ")
 ;;5002
 ;;21,"58016-0873-15 ")
 ;;5003
 ;;21,"58016-0873-20 ")
 ;;5004
 ;;21,"58016-0873-30 ")
 ;;5005
 ;;21,"58016-0924-00 ")
 ;;5006
 ;;21,"58016-0924-30 ")
 ;;5007
 ;;21,"58016-0924-60 ")
 ;;5008
 ;;21,"58016-0924-90 ")
 ;;5009
 ;;21,"58016-0953-00 ")
 ;;5010
 ;;21,"58016-0953-02 ")
 ;;5011
 ;;21,"58016-0953-10 ")
 ;;5012
 ;;21,"58016-0953-12 ")
 ;;5013
 ;;21,"58016-0953-15 ")
 ;;5014
 ;;21,"58016-0953-20 ")
 ;;5015
 ;;21,"58016-0953-30 ")
 ;;5016
 ;;21,"58016-0953-60 ")
 ;;5017
 ;;21,"58016-0953-90 ")
 ;;5018
 ;;21,"58016-0955-00 ")
 ;;5019
 ;;21,"58016-0955-30 ")
 ;;5020
 ;;21,"58016-0955-60 ")
 ;;5021
 ;;21,"58016-0955-90 ")
 ;;5022
 ;;21,"58016-0957-00 ")
 ;;5023
 ;;21,"58016-0957-02 ")
 ;;5024
 ;;21,"58016-0957-10 ")
 ;;5025
 ;;21,"58016-0957-12 ")
 ;;5026
 ;;21,"58016-0957-15 ")
 ;;5027
 ;;21,"58016-0957-20 ")
 ;;5028
 ;;21,"58016-0957-30 ")
 ;;5029
 ;;21,"58016-0957-60 ")
 ;;5030
 ;;21,"58016-0957-90 ")
 ;;5031
 ;;21,"58016-0964-00 ")
 ;;5032
 ;;21,"58016-0964-30 ")
 ;;5033
 ;;21,"58016-0964-60 ")
 ;;5034
 ;;21,"58016-0964-90 ")
 ;;5035
 ;;21,"58016-0975-00 ")
 ;;5036
 ;;21,"58016-0975-30 ")
 ;;5037
 ;;21,"58016-0975-60 ")
 ;;5038
 ;;21,"58016-0975-90 ")
 ;;5039
 ;;21,"58016-1004-01 ")
 ;;5040
