BGP53J10 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON FEB 23, 2015;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"58016-0875-12 ")
 ;;3497
 ;;21,"58016-0875-15 ")
 ;;3498
 ;;21,"58016-0875-20 ")
 ;;3499
 ;;21,"58016-0875-30 ")
 ;;3500
 ;;21,"58016-0875-60 ")
 ;;3501
 ;;21,"58016-0880-00 ")
 ;;3502
 ;;21,"58016-0880-12 ")
 ;;3503
 ;;21,"58016-0880-15 ")
 ;;3504
 ;;21,"58016-0880-20 ")
 ;;3505
 ;;21,"58016-0880-30 ")
 ;;3506
 ;;21,"58016-0881-00 ")
 ;;3507
 ;;21,"58016-0881-02 ")
 ;;3508
 ;;21,"58016-0881-03 ")
 ;;3509
 ;;21,"58016-0881-30 ")
 ;;3510
 ;;21,"58016-0881-60 ")
 ;;3511
 ;;21,"58016-0881-90 ")
 ;;3512
 ;;21,"58016-0894-00 ")
 ;;3513
 ;;21,"58016-0894-02 ")
 ;;3514
 ;;21,"58016-0894-03 ")
 ;;3515
 ;;21,"58016-0894-30 ")
 ;;3516
 ;;21,"58016-0894-60 ")
 ;;3517
 ;;21,"58016-0894-90 ")
 ;;3518
 ;;21,"58016-0894-99 ")
 ;;3519
 ;;21,"58016-0897-00 ")
 ;;3520
 ;;21,"58016-0897-30 ")
 ;;3521
 ;;21,"58016-0897-60 ")
 ;;3522
 ;;21,"58016-0897-90 ")
 ;;3523
 ;;21,"58016-0905-00 ")
 ;;3524
 ;;21,"58016-0905-02 ")
 ;;3525
 ;;21,"58016-0905-03 ")
 ;;3526
 ;;21,"58016-0905-10 ")
 ;;3527
 ;;21,"58016-0905-20 ")
 ;;3528
 ;;21,"58016-0905-30 ")
 ;;3529
 ;;21,"58016-0905-60 ")
 ;;3530
 ;;21,"58016-0905-73 ")
 ;;3531
 ;;21,"58016-0905-89 ")
 ;;3532
 ;;21,"58016-0907-00 ")
 ;;3533
 ;;21,"58016-0907-30 ")
 ;;3534
 ;;21,"58016-0907-60 ")
 ;;3535
 ;;21,"58016-0907-90 ")
 ;;3536
 ;;21,"58016-0977-00 ")
 ;;3537
 ;;21,"58016-0977-02 ")
 ;;3538
 ;;21,"58016-0977-30 ")
 ;;3539
 ;;21,"58016-0977-60 ")
 ;;3540
 ;;21,"58016-0977-90 ")
 ;;3541
 ;;21,"58016-0986-00 ")
 ;;3542
 ;;21,"58016-0986-02 ")
 ;;3543
 ;;21,"58016-0986-03 ")
 ;;3544
 ;;21,"58016-0986-30 ")
 ;;3545
 ;;21,"58016-0986-60 ")
 ;;3546
 ;;21,"58016-0986-90 ")
 ;;3547
 ;;21,"58016-4825-01 ")
 ;;3548
 ;;21,"58016-4826-01 ")
 ;;3549
 ;;21,"58809-0717-01 ")
 ;;3550
 ;;21,"58864-0022-15 ")
 ;;3551
 ;;21,"58864-0022-30 ")
 ;;3552
 ;;21,"58864-0023-30 ")
 ;;3553
 ;;21,"58864-0024-30 ")
 ;;3554
 ;;21,"58864-0025-01 ")
 ;;3555
 ;;21,"58864-0025-14 ")
 ;;3556
 ;;21,"58864-0025-30 ")
 ;;3557
 ;;21,"58864-0025-60 ")
 ;;3558
 ;;21,"58864-0103-15 ")
 ;;3559
 ;;21,"58864-0103-30 ")
 ;;3560
 ;;21,"58864-0103-60 ")
 ;;3561
 ;;21,"58864-0372-30 ")
 ;;3562
 ;;21,"58864-0616-15 ")
 ;;3563
 ;;21,"58864-0616-30 ")
 ;;3564
 ;;21,"58864-0625-30 ")
 ;;3565
 ;;21,"58864-0625-60 ")
 ;;3566
 ;;21,"58864-0627-15 ")
 ;;3567
 ;;21,"58864-0627-30 ")
 ;;3568
 ;;21,"58864-0628-15 ")
 ;;3569
 ;;21,"58864-0629-30 ")
 ;;3570
 ;;21,"58864-0696-30 ")
 ;;3571
 ;;21,"58864-0707-30 ")
 ;;3572
 ;;21,"58864-0715-30 ")
 ;;3573
 ;;21,"58864-0716-30 ")
 ;;3574
 ;;21,"58864-0741-15 ")
 ;;3575
 ;;21,"58864-0741-30 ")
 ;;3576
 ;;21,"58864-0756-30 ")
 ;;3577
 ;;21,"58864-0757-30 ")
 ;;3578
 ;;21,"58864-0783-30 ")
 ;;3579
 ;;21,"58864-0794-30 ")
 ;;3580
 ;;21,"58864-0808-90 ")
 ;;3581
 ;;21,"58864-0812-15 ")
 ;;3582
 ;;21,"58864-0823-15 ")
 ;;3583
 ;;21,"58864-0823-30 ")
 ;;3584
 ;;21,"58864-0840-30 ")
 ;;3585
 ;;21,"58864-0840-60 ")
 ;;3586
 ;;21,"58864-0849-30 ")
 ;;3587
 ;;21,"58864-0852-30 ")
 ;;3588
 ;;21,"58864-0917-30 ")
 ;;3589
 ;;21,"59762-0119-01 ")
 ;;3590
 ;;21,"59762-0180-01 ")
 ;;3591
 ;;21,"59762-0180-02 ")
 ;;3592
 ;;21,"59762-0180-03 ")
 ;;3593
 ;;21,"59762-0180-04 ")
 ;;3594
 ;;21,"59762-0181-01 ")
 ;;3595
 ;;21,"59762-0181-02 ")
 ;;3596
 ;;21,"59762-0181-03 ")
 ;;3597
 ;;21,"59762-0181-04 ")
 ;;3598
 ;;21,"59762-0182-01 ")
 ;;3599
 ;;21,"59762-0182-02 ")
 ;;3600
 ;;21,"59762-0182-03 ")
 ;;3601
 ;;21,"59762-0182-04 ")
 ;;3602
 ;;21,"59762-1410-07 ")
 ;;3603
 ;;21,"59762-1412-07 ")
 ;;3604
 ;;21,"59762-1414-07 ")
 ;;3605
 ;;21,"59762-1415-03 ")
 ;;3606
 ;;21,"59762-1415-05 ")
 ;;3607
 ;;21,"59762-1415-06 ")
 ;;3608
 ;;21,"59762-1415-09 ")
 ;;3609
 ;;21,"59762-1416-03 ")
 ;;3610
 ;;21,"59762-1416-05 ")
 ;;3611
 ;;21,"59762-1416-06 ")
 ;;3612
 ;;21,"59762-1416-09 ")
 ;;3613
 ;;21,"59762-1417-03 ")
 ;;3614
 ;;21,"59762-1417-05 ")
 ;;3615
 ;;21,"59762-1417-06 ")
 ;;3616
 ;;21,"59762-1417-09 ")
 ;;3617
 ;;21,"59762-1418-03 ")
 ;;3618
 ;;21,"59762-1418-05 ")
 ;;3619
 ;;21,"59762-1418-06 ")
 ;;3620
 ;;21,"59762-1418-09 ")
 ;;3621
 ;;21,"59762-1808-01 ")
 ;;3622
 ;;21,"59762-1808-02 ")
 ;;3623
 ;;21,"59762-1808-03 ")
 ;;3624
 ;;21,"59762-1810-01 ")
 ;;3625
 ;;21,"59762-1810-02 ")
 ;;3626
 ;;21,"59762-1810-03 ")
 ;;3627
 ;;21,"59762-1810-04 ")
 ;;3628
 ;;21,"59762-1812-01 ")
 ;;3629
 ;;21,"59762-1812-02 ")
 ;;3630
 ;;21,"59762-1812-03 ")
 ;;3631
 ;;21,"59762-1815-01 ")
 ;;3632
 ;;21,"59762-1815-02 ")
 ;;3633
 ;;21,"59762-1815-03 ")
 ;;3634
 ;;21,"59762-3480-03 ")
 ;;3635
 ;;21,"59762-3481-02 ")
 ;;3636
 ;;21,"59762-3482-02 ")
 ;;3637
 ;;21,"59762-3483-02 ")
 ;;3638
 ;;21,"59762-3484-02 ")
 ;;3639
 ;;21,"59762-4800-01 ")
 ;;3640
 ;;21,"59762-4800-03 ")
 ;;3641
 ;;21,"59762-4800-05 ")
 ;;3642
 ;;21,"59762-4800-06 ")
 ;;3643
 ;;21,"59762-4801-01 ")
 ;;3644
 ;;21,"59762-4801-03 ")
 ;;3645
 ;;21,"59762-4801-05 ")
 ;;3646
 ;;21,"59762-4801-06 ")
 ;;3647
 ;;21,"59762-4802-01 ")
 ;;3648
 ;;21,"59762-4802-03 ")
 ;;3649
 ;;21,"59762-4802-05 ")
 ;;3650
 ;;21,"59762-4802-06 ")
 ;;3651
 ;;21,"59762-4900-01 ")
 ;;3652
 ;;21,"59762-4900-02 ")
 ;;3653
 ;;21,"59762-4900-03 ")
 ;;3654
 ;;21,"59762-4900-04 ")
 ;;3655
 ;;21,"59762-4900-05 ")
 ;;3656
 ;;21,"59762-4910-01 ")
 ;;3657
 ;;21,"59762-4910-02 ")
 ;;3658
 ;;21,"59762-4910-03 ")
 ;;3659
 ;;21,"59762-4910-04 ")
 ;;3660
 ;;21,"59762-4910-05 ")
 ;;3661
 ;;21,"59762-4940-01 ")
 ;;3662
 ;;21,"59762-4960-01 ")
 ;;3663
 ;;21,"59772-3171-01 ")
 ;;3664
 ;;21,"60258-0830-08 ")
 ;;3665
 ;;21,"60429-0016-12 ")
 ;;3666
 ;;21,"60429-0016-18 ")
 ;;3667
 ;;21,"60429-0016-30 ")
 ;;3668
 ;;21,"60429-0016-60 ")
 ;;3669
 ;;21,"60429-0016-90 ")
 ;;3670
 ;;21,"60429-0017-30 ")
 ;;3671
 ;;21,"60429-0165-30 ")
 ;;3672
 ;;21,"60429-0165-90 ")
 ;;3673
 ;;21,"60429-0166-10 ")
 ;;3674
 ;;21,"60429-0166-30 ")
 ;;3675
 ;;21,"60429-0173-01 ")
 ;;3676
 ;;21,"60429-0173-10 ")
 ;;3677
 ;;21,"60429-0173-30 ")
 ;;3678
 ;;21,"60429-0174-01 ")
 ;;3679
 ;;21,"60429-0174-10 ")
 ;;3680
 ;;21,"60429-0174-30 ")
 ;;3681
 ;;21,"60429-0175-01 ")
 ;;3682
 ;;21,"60429-0175-10 ")
 ;;3683
 ;;21,"60429-0175-30 ")
 ;;3684
 ;;21,"60429-0187-05 ")
 ;;3685
 ;;21,"60429-0187-30 ")
 ;;3686
 ;;21,"60429-0188-01 ")
 ;;3687
 ;;21,"60429-0188-05 ")
 ;;3688
 ;;21,"60429-0188-30 ")
 ;;3689
 ;;21,"60429-0188-60 ")
 ;;3690
 ;;21,"60429-0188-90 ")
 ;;3691
 ;;21,"60429-0230-01 ")
 ;;3692
 ;;21,"60429-0230-05 ")
 ;;3693
 ;;21,"60429-0230-30 ")
 ;;3694
 ;;21,"60429-0230-90 ")
 ;;3695
 ;;21,"60429-0287-30 ")
 ;;3696
 ;;21,"60429-0288-30 ")
 ;;3697
 ;;21,"60429-0718-18 ")
 ;;3698
 ;;21,"60429-0718-30 ")
 ;;3699
 ;;21,"60429-0718-60 ")
 ;;3700
 ;;21,"60429-0718-90 ")
 ;;3701
 ;;21,"60429-0719-18 ")
 ;;3702
 ;;21,"60429-0719-30 ")
 ;;3703
 ;;21,"60429-0719-60 ")
 ;;3704
 ;;21,"60429-0719-90 ")
 ;;3705
 ;;21,"60429-0734-05 ")
 ;;3706
 ;;21,"60429-0734-30 ")
 ;;3707
 ;;21,"60429-0734-90 ")
 ;;3708
 ;;21,"60429-0735-01 ")
 ;;3709
 ;;21,"60429-0735-05 ")
 ;;3710
 ;;21,"60429-0735-30 ")
 ;;3711
 ;;21,"60429-0735-90 ")
 ;;3712
 ;;21,"60429-0736-05 ")
 ;;3713
 ;;21,"60429-0736-30 ")
 ;;3714
 ;;21,"60429-0736-90 ")
 ;;3715
 ;;21,"60429-0737-05 ")
 ;;3716
 ;;21,"60429-0737-15 ")
 ;;3717
 ;;21,"60429-0737-30 ")
 ;;3718
 ;;21,"60429-0737-45 ")
 ;;3719
 ;;21,"60429-0737-90 ")
 ;;3720
 ;;21,"60429-0758-01 ")
 ;;3721
 ;;21,"60429-0759-01 ")
 ;;3722
 ;;21,"60429-0759-30 ")
 ;;3723
 ;;21,"60429-0759-90 ")
 ;;3724
 ;;21,"60429-0760-01 ")
 ;;3725
 ;;21,"60429-0760-30 ")
 ;;3726
 ;;21,"60429-0760-90 ")
 ;;3727
 ;;21,"60429-0930-01 ")
 ;;3728
 ;;21,"60429-0930-05 ")
 ;;3729
 ;;21,"60429-0930-30 ")
 ;;3730
 ;;21,"60429-0930-90 ")
 ;;3731
 ;;21,"60429-0946-01 ")
 ;;3732
 ;;21,"60429-0946-05 ")
 ;;3733
 ;;21,"60429-0947-01 ")
 ;;3734
 ;;21,"60429-0947-05 ")
 ;;3735
 ;;21,"60429-0987-01 ")
 ;;3736
 ;;21,"60429-0987-05 ")
 ;;3737
 ;;21,"60429-0987-30 ")
 ;;3738
 ;;21,"60429-0987-60 ")
 ;;3739
 ;;21,"60429-0987-90 ")
 ;;3740
 ;;21,"60429-0988-01 ")
 ;;3741
 ;;21,"60429-0988-05 ")
 ;;3742
 ;;21,"60429-0988-30 ")
 ;;3743
 ;;21,"60432-0162-04 ")
 ;;3744
 ;;21,"60432-0651-04 ")
 ;;3745
 ;;21,"60505-0083-00 ")
 ;;3746
 ;;21,"60505-0083-01 ")
 ;;3747
 ;;21,"60505-0083-02 ")
 ;;3748
 ;;21,"60505-0083-04 ")
 ;;3749
 ;;21,"60505-0084-01 ")
 ;;3750
 ;;21,"60505-0084-02 ")
 ;;3751
 ;;21,"60505-0084-04 ")
 ;;3752
 ;;21,"60505-0097-01 ")
 ;;3753
 ;;21,"60505-0097-02 ")
 ;;3754
 ;;21,"60505-0097-04 ")
 ;;3755
 ;;21,"60505-0101-01 ")
 ;;3756
 ;;21,"60505-0101-02 ")
 ;;3757
 ;;21,"60505-0101-04 ")
 ;;3758
 ;;21,"60505-0101-07 ")
 ;;3759
 ;;21,"60505-0157-01 ")
 ;;3760
 ;;21,"60505-0157-05 ")
 ;;3761
 ;;21,"60505-0157-09 ")
 ;;3762
 ;;21,"60505-0158-01 ")
 ;;3763
 ;;21,"60505-0158-05 ")
 ;;3764
 ;;21,"60505-0158-09 ")
 ;;3765
 ;;21,"60505-0164-01 ")
 ;;3766
 ;;21,"60505-0165-01 ")
 ;;3767
 ;;21,"60505-0166-01 ")
 ;;3768
 ;;21,"60505-0180-03 ")
 ;;3769
 ;;21,"60505-0180-08 ")
 ;;3770
 ;;21,"60505-0181-03 ")
 ;;3771
 ;;21,"60505-0181-08 ")
 ;;3772
 ;;21,"60505-0182-03 ")
 ;;3773
 ;;21,"60505-0182-08 ")
 ;;3774
 ;;21,"60505-0247-01 ")
 ;;3775
 ;;21,"60505-0247-08 ")
 ;;3776
 ;;21,"60505-0248-01 ")
 ;;3777
 ;;21,"60505-0248-08 ")
 ;;3778
 ;;21,"60505-0249-01 ")
 ;;3779
 ;;21,"60505-0249-08 ")
 ;;3780
 ;;21,"60505-0374-01 ")
 ;;3781
 ;;21,"60505-0402-05 ")
 ;;3782
 ;;21,"60505-2518-01 ")
 ;;3783
 ;;21,"60505-2518-03 ")
 ;;3784
 ;;21,"60505-2518-04 ")
 ;;3785
 ;;21,"60505-2518-08 ")
 ;;3786
 ;;21,"60505-2519-01 ")
 ;;3787
 ;;21,"60505-2519-03 ")
 ;;3788
 ;;21,"60505-2519-04 ")
 ;;3789
 ;;21,"60505-2519-08 ")
 ;;3790
 ;;21,"60505-2520-01 ")
 ;;3791
 ;;21,"60505-2520-03 ")
 ;;3792
 ;;21,"60505-2520-04 ")
 ;;3793
 ;;21,"60505-2520-08 ")
 ;;3794
 ;;21,"60505-2653-00 ")
 ;;3795
 ;;21,"60505-2653-01 ")
 ;;3796
 ;;21,"60505-2653-05 ")
 ;;3797
 ;;21,"60505-2653-07 ")
 ;;3798
 ;;21,"60505-2654-00 ")
 ;;3799
 ;;21,"60505-2654-01 ")
 ;;3800
 ;;21,"60505-2654-05 ")
 ;;3801
 ;;21,"60505-2654-07 ")
 ;;3802
 ;;21,"60505-2655-01 ")
 ;;3803
 ;;21,"60505-2655-05 ")
 ;;3804
 ;;21,"60505-2655-07 ")
 ;;3805
 ;;21,"60505-2659-01 ")
 ;;3806
 ;;21,"60505-2780-01 ")
 ;;3807
 ;;21,"60505-2780-08 ")
 ;;3808
 ;;21,"60505-2781-01 ")
 ;;3809
 ;;21,"60505-2781-08 ")
 ;;3810
 ;;21,"60505-2782-01 ")
 ;;3811
 ;;21,"60505-2782-08 ")
 ;;3812
 ;;21,"60505-2995-06 ")
 ;;3813
 ;;21,"60505-2996-03 ")
 ;;3814
 ;;21,"60505-2997-03 ")
 ;;3815
 ;;21,"60505-3663-03 ")
 ;;3816
 ;;21,"60505-3664-03 ")
 ;;3817
 ;;21,"60505-3665-03 ")
 ;;3818
 ;;21,"60505-3666-03 ")
 ;;3819
 ;;21,"60505-3668-03 ")
 ;;3820
 ;;21,"60505-3669-03 ")
 ;;3821
 ;;21,"60505-3670-03 ")
 ;;3822
 ;;21,"60505-3673-03 ")
 ;;3823
 ;;21,"60505-3674-03 ")
 ;;3824
 ;;21,"60505-3675-03 ")
 ;;3825
 ;;21,"60505-3778-03 ")
 ;;3826
 ;;21,"60505-3778-09 ")
 ;;3827
 ;;21,"60505-3779-03 ")
 ;;3828
 ;;21,"60505-3779-09 ")
 ;;3829
 ;;21,"60505-3780-03 ")
 ;;3830
 ;;21,"60505-3780-09 ")
 ;;3831
 ;;21,"60760-0212-15 ")
 ;;3832
 ;;21,"60760-0212-30 ")
 ;;3833
 ;;21,"60760-0221-30 ")
 ;;3834
 ;;21,"60760-0434-30 ")
 ;;3835
 ;;21,"60760-0434-60 ")
 ;;3836
 ;;21,"60760-0440-30 ")
 ;;3837
 ;;21,"60760-0440-60 ")
 ;;3838
 ;;21,"60760-0647-30 ")
 ;;3839
 ;;21,"60760-0811-60 ")
 ;;3840
 ;;21,"61392-0025-45 ")
 ;;3841
 ;;21,"61392-0025-54 ")
 ;;3842
 ;;21,"61392-0025-56 ")
 ;;3843
 ;;21,"61392-0025-91 ")
 ;;3844
 ;;21,"61392-0026-45 ")
 ;;3845
 ;;21,"61392-0026-54 ")
 ;;3846
 ;;21,"61392-0026-56 ")
 ;;3847
 ;;21,"61392-0026-91 ")
 ;;3848
 ;;21,"61392-0027-45 ")
 ;;3849
 ;;21,"61392-0027-54 ")
 ;;3850
 ;;21,"61392-0027-56 ")
 ;;3851
 ;;21,"61392-0027-91 ")
 ;;3852
 ;;21,"61392-0140-34 ")
 ;;3853
 ;;21,"61392-0140-45 ")
 ;;3854
 ;;21,"61392-0140-56 ")
 ;;3855
 ;;21,"61392-0140-91 ")
 ;;3856
 ;;21,"61392-0141-45 ")
 ;;3857
 ;;21,"61392-0141-56 ")
 ;;3858
 ;;21,"61392-0141-91 ")
 ;;3859
 ;;21,"61392-0143-34 ")
 ;;3860
 ;;21,"61392-0143-45 ")
 ;;3861
 ;;21,"61392-0143-56 ")
 ;;3862
 ;;21,"61392-0143-91 ")
 ;;3863
 ;;21,"61392-0153-31 ")
 ;;3864
 ;;21,"61392-0153-32 ")
 ;;3865
 ;;21,"61392-0153-39 ")
 ;;3866
 ;;21,"61392-0153-45 ")
 ;;3867
 ;;21,"61392-0153-54 ")
 ;;3868
 ;;21,"61392-0153-56 ")
 ;;3869
 ;;21,"61392-0153-91 ")
 ;;3870
 ;;21,"61392-0234-30 ")
 ;;3871
 ;;21,"61392-0234-51 ")
 ;;3872
 ;;21,"61392-0234-54 ")
 ;;3873
 ;;21,"61392-0234-56 ")
 ;;3874
 ;;21,"61392-0234-60 ")
 ;;3875
 ;;21,"61392-0234-90 ")
 ;;3876
 ;;21,"61392-0234-91 ")
 ;;3877
 ;;21,"61392-0235-15 ")
 ;;3878
 ;;21,"61392-0235-30 ")
 ;;3879
 ;;21,"61392-0235-45 ")
 ;;3880
 ;;21,"61392-0235-51 ")
 ;;3881
 ;;21,"61392-0235-54 ")
 ;;3882
