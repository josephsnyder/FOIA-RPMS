ATXXA15 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;21,"S68.127A ")
 ;;5404
 ;;21,"S68.128A ")
 ;;5405
 ;;21,"S68.129A ")
 ;;5406
 ;;21,"S68.411A ")
 ;;5407
 ;;21,"S68.412A ")
 ;;5408
 ;;21,"S68.419A ")
 ;;5409
 ;;21,"S68.421A ")
 ;;5410
 ;;21,"S68.422A ")
 ;;5411
 ;;21,"S68.429A ")
 ;;5412
 ;;21,"S68.511A ")
 ;;5413
 ;;21,"S68.512A ")
 ;;5414
 ;;21,"S68.519A ")
 ;;5415
 ;;21,"S68.521A ")
 ;;5416
 ;;21,"S68.522A ")
 ;;5417
 ;;21,"S68.529A ")
 ;;5418
 ;;21,"S68.610A ")
 ;;5419
 ;;21,"S68.611A ")
 ;;5420
 ;;21,"S68.612A ")
 ;;5421
 ;;21,"S68.613A ")
 ;;5422
 ;;21,"S68.614A ")
 ;;5423
 ;;21,"S68.615A ")
 ;;5424
 ;;21,"S68.616A ")
 ;;5425
 ;;21,"S68.617A ")
 ;;5426
 ;;21,"S68.618A ")
 ;;5427
 ;;21,"S68.619A ")
 ;;5428
 ;;21,"S68.620A ")
 ;;5429
 ;;21,"S68.621A ")
 ;;5430
 ;;21,"S68.622A ")
 ;;5431
 ;;21,"S68.623A ")
 ;;5432
 ;;21,"S68.624A ")
 ;;5433
 ;;21,"S68.625A ")
 ;;5434
 ;;21,"S68.626A ")
 ;;5435
 ;;21,"S68.627A ")
 ;;5436
 ;;21,"S68.628A ")
 ;;5437
 ;;21,"S68.629A ")
 ;;5438
 ;;21,"S68.711A ")
 ;;5439
 ;;21,"S68.712A ")
 ;;5440
 ;;21,"S68.719A ")
 ;;5441
 ;;21,"S68.721A ")
 ;;5442
 ;;21,"S68.722A ")
 ;;5443
 ;;21,"S68.729A ")
 ;;5444
 ;;21,"S69.80XA ")
 ;;5445
 ;;21,"S69.81XA ")
 ;;5446
 ;;21,"S69.82XA ")
 ;;5447
 ;;21,"S69.90XA ")
 ;;5448
 ;;21,"S69.91XA ")
 ;;5449
 ;;21,"S69.92XA ")
 ;;5450
 ;;21,"S70.00XA ")
 ;;5451
 ;;21,"S70.01XA ")
 ;;5452
 ;;21,"S70.02XA ")
 ;;5453
 ;;21,"S70.10XA ")
 ;;5454
 ;;21,"S70.11XA ")
 ;;5455
 ;;21,"S70.12XA ")
 ;;5456
 ;;21,"S70.211A ")
 ;;5457
 ;;21,"S70.212A ")
 ;;5458
 ;;21,"S70.219A ")
 ;;5459
 ;;21,"S70.241A ")
 ;;5460
 ;;21,"S70.242A ")
 ;;5461
 ;;21,"S70.249A ")
 ;;5462
 ;;21,"S70.251A ")
 ;;5463
 ;;21,"S70.252A ")
 ;;5464
 ;;21,"S70.259A ")
 ;;5465
 ;;21,"S70.271A ")
 ;;5466
 ;;21,"S70.272A ")
 ;;5467
 ;;21,"S70.279A ")
 ;;5468
 ;;21,"S70.311A ")
 ;;5469
 ;;21,"S70.312A ")
 ;;5470
 ;;21,"S70.319A ")
 ;;5471
 ;;21,"S70.341A ")
 ;;5472
 ;;21,"S70.342A ")
 ;;5473
 ;;21,"S70.349A ")
 ;;5474
 ;;21,"S70.351A ")
 ;;5475
 ;;21,"S70.352A ")
 ;;5476
 ;;21,"S70.359A ")
 ;;5477
 ;;21,"S70.371A ")
 ;;5478
 ;;21,"S70.372A ")
 ;;5479
 ;;21,"S70.379A ")
 ;;5480
 ;;21,"S70.911A ")
 ;;5481
 ;;21,"S70.912A ")
 ;;5482
 ;;21,"S70.919A ")
 ;;5483
 ;;21,"S70.921A ")
 ;;5484
 ;;21,"S70.922A ")
 ;;5485
 ;;21,"S70.929A ")
 ;;5486
 ;;21,"S71.001A ")
 ;;5487
 ;;21,"S71.002A ")
 ;;5488
 ;;21,"S71.009A ")
 ;;5489
 ;;21,"S71.011A ")
 ;;5490
 ;;21,"S71.012A ")
 ;;5491
 ;;21,"S71.019A ")
 ;;5492
 ;;21,"S71.021A ")
 ;;5493
 ;;21,"S71.022A ")
 ;;5494
 ;;21,"S71.029A ")
 ;;5495
 ;;21,"S71.031A ")
 ;;5496
 ;;21,"S71.032A ")
 ;;5497
 ;;21,"S71.039A ")
 ;;5498
 ;;21,"S71.041A ")
 ;;5499
 ;;21,"S71.042A ")
 ;;5500
 ;;21,"S71.049A ")
 ;;5501
 ;;21,"S71.051A ")
 ;;5502
 ;;21,"S71.052A ")
 ;;5503
 ;;21,"S71.059A ")
 ;;5504
 ;;21,"S71.101A ")
 ;;5505
 ;;21,"S71.102A ")
 ;;5506
 ;;21,"S71.109A ")
 ;;5507
 ;;21,"S71.111A ")
 ;;5508
 ;;21,"S71.112A ")
 ;;5509
 ;;21,"S71.119A ")
 ;;5510
 ;;21,"S71.121A ")
 ;;5511
 ;;21,"S71.122A ")
 ;;5512
 ;;21,"S71.129A ")
 ;;5513
 ;;21,"S71.131A ")
 ;;5514
 ;;21,"S71.132A ")
 ;;5515
 ;;21,"S71.139A ")
 ;;5516
 ;;21,"S71.141A ")
 ;;5517
 ;;21,"S71.142A ")
 ;;5518
 ;;21,"S71.149A ")
 ;;5519
 ;;21,"S71.151A ")
 ;;5520
 ;;21,"S71.152A ")
 ;;5521
 ;;21,"S71.159A ")
 ;;5522
 ;;21,"S72.001A ")
 ;;5523
 ;;21,"S72.001B ")
 ;;5524
 ;;21,"S72.001C ")
 ;;5525
 ;;21,"S72.002A ")
 ;;5526
 ;;21,"S72.002B ")
 ;;5527
 ;;21,"S72.002C ")
 ;;5528
 ;;21,"S72.009A ")
 ;;5529
 ;;21,"S72.009B ")
 ;;5530
 ;;21,"S72.009C ")
 ;;5531
 ;;21,"S72.011A ")
 ;;5532
 ;;21,"S72.011B ")
 ;;5533
 ;;21,"S72.011C ")
 ;;5534
 ;;21,"S72.012A ")
 ;;5535
 ;;21,"S72.012B ")
 ;;5536
 ;;21,"S72.012C ")
 ;;5537
 ;;21,"S72.019A ")
 ;;5538
 ;;21,"S72.019B ")
 ;;5539
 ;;21,"S72.019C ")
 ;;5540
 ;;21,"S72.021A ")
 ;;5541
 ;;21,"S72.021B ")
 ;;5542
 ;;21,"S72.021C ")
 ;;5543
 ;;21,"S72.022A ")
 ;;5544
 ;;21,"S72.022B ")
 ;;5545
 ;;21,"S72.022C ")
 ;;5546
 ;;21,"S72.023A ")
 ;;5547
 ;;21,"S72.023B ")
 ;;5548
 ;;21,"S72.023C ")
 ;;5549
 ;;21,"S72.024A ")
 ;;5550
 ;;21,"S72.024B ")
 ;;5551
 ;;21,"S72.024C ")
 ;;5552
 ;;21,"S72.025A ")
 ;;5553
 ;;21,"S72.025B ")
 ;;5554
 ;;21,"S72.025C ")
 ;;5555
 ;;21,"S72.026A ")
 ;;5556
 ;;21,"S72.026B ")
 ;;5557
 ;;21,"S72.026C ")
 ;;5558
 ;;21,"S72.031A ")
 ;;5559
 ;;21,"S72.031B ")
 ;;5560
 ;;21,"S72.031C ")
 ;;5561
 ;;21,"S72.032A ")
 ;;5562
 ;;21,"S72.032B ")
 ;;5563
 ;;21,"S72.032C ")
 ;;5564
 ;;21,"S72.033A ")
 ;;5565
 ;;21,"S72.033B ")
 ;;5566
 ;;21,"S72.033C ")
 ;;5567
 ;;21,"S72.034A ")
 ;;5568
 ;;21,"S72.034B ")
 ;;5569
 ;;21,"S72.034C ")
 ;;5570
 ;;21,"S72.035A ")
 ;;5571
 ;;21,"S72.035B ")
 ;;5572
 ;;21,"S72.035C ")
 ;;5573
 ;;21,"S72.036A ")
 ;;5574
 ;;21,"S72.036B ")
 ;;5575
 ;;21,"S72.036C ")
 ;;5576
 ;;21,"S72.041A ")
 ;;5577
 ;;21,"S72.041B ")
 ;;5578
 ;;21,"S72.041C ")
 ;;5579
 ;;21,"S72.042A ")
 ;;5580
 ;;21,"S72.042B ")
 ;;5581
 ;;21,"S72.042C ")
 ;;5582
 ;;21,"S72.043A ")
 ;;5583
 ;;21,"S72.043B ")
 ;;5584
 ;;21,"S72.043C ")
 ;;5585
 ;;21,"S72.044A ")
 ;;5586
 ;;21,"S72.044B ")
 ;;5587
 ;;21,"S72.044C ")
 ;;5588
 ;;21,"S72.045A ")
 ;;5589
 ;;21,"S72.045B ")
 ;;5590
 ;;21,"S72.045C ")
 ;;5591
 ;;21,"S72.046A ")
 ;;5592
 ;;21,"S72.046B ")
 ;;5593
 ;;21,"S72.046C ")
 ;;5594
 ;;21,"S72.051A ")
 ;;5595
 ;;21,"S72.051B ")
 ;;5596
 ;;21,"S72.051C ")
 ;;5597
 ;;21,"S72.052A ")
 ;;5598
 ;;21,"S72.052B ")
 ;;5599
 ;;21,"S72.052C ")
 ;;5600
 ;;21,"S72.059A ")
 ;;5601
 ;;21,"S72.059B ")
 ;;5602
 ;;21,"S72.059C ")
 ;;5603
 ;;21,"S72.061A ")
 ;;5604
 ;;21,"S72.061B ")
 ;;5605
 ;;21,"S72.061C ")
 ;;5606
 ;;21,"S72.062A ")
 ;;5607
 ;;21,"S72.062B ")
 ;;5608
 ;;21,"S72.062C ")
 ;;5609
 ;;21,"S72.063A ")
 ;;5610
 ;;21,"S72.063B ")
 ;;5611
 ;;21,"S72.063C ")
 ;;5612
 ;;21,"S72.064A ")
 ;;5613
 ;;21,"S72.064B ")
 ;;5614
 ;;21,"S72.064C ")
 ;;5615
 ;;21,"S72.065A ")
 ;;5616
 ;;21,"S72.065B ")
 ;;5617
 ;;21,"S72.065C ")
 ;;5618
 ;;21,"S72.066A ")
 ;;5619
 ;;21,"S72.066B ")
 ;;5620
 ;;21,"S72.066C ")
 ;;5621
 ;;21,"S72.091A ")
 ;;5622
 ;;21,"S72.091B ")
 ;;5623
 ;;21,"S72.091C ")
 ;;5624
 ;;21,"S72.092A ")
 ;;5625
 ;;21,"S72.092B ")
 ;;5626
 ;;21,"S72.092C ")
 ;;5627
 ;;21,"S72.099A ")
 ;;5628
 ;;21,"S72.099B ")
 ;;5629
 ;;21,"S72.099C ")
 ;;5630
 ;;21,"S72.101A ")
 ;;5631
 ;;21,"S72.101B ")
 ;;5632
 ;;21,"S72.101C ")
 ;;5633
 ;;21,"S72.102A ")
 ;;5634
 ;;21,"S72.102B ")
 ;;5635
 ;;21,"S72.102C ")
 ;;5636
 ;;21,"S72.109A ")
 ;;5637
 ;;21,"S72.109B ")
 ;;5638
 ;;21,"S72.109C ")
 ;;5639
 ;;21,"S72.111A ")
 ;;5640
 ;;21,"S72.111B ")
 ;;5641
 ;;21,"S72.111C ")
 ;;5642
 ;;21,"S72.112A ")
 ;;5643
 ;;21,"S72.112B ")
 ;;5644
 ;;21,"S72.112C ")
 ;;5645
 ;;21,"S72.113A ")
 ;;5646
 ;;21,"S72.113B ")
 ;;5647
 ;;21,"S72.113C ")
 ;;5648
 ;;21,"S72.114A ")
 ;;5649
 ;;21,"S72.114B ")
 ;;5650
 ;;21,"S72.114C ")
 ;;5651
 ;;21,"S72.115A ")
 ;;5652
 ;;21,"S72.115B ")
 ;;5653
 ;;21,"S72.115C ")
 ;;5654
 ;;21,"S72.116A ")
 ;;5655
 ;;21,"S72.116B ")
 ;;5656
 ;;21,"S72.116C ")
 ;;5657
 ;;21,"S72.121A ")
 ;;5658
 ;;21,"S72.121B ")
 ;;5659
 ;;21,"S72.121C ")
 ;;5660
 ;;21,"S72.122A ")
 ;;5661
 ;;21,"S72.122B ")
 ;;5662
 ;;21,"S72.122C ")
 ;;5663
 ;;21,"S72.123A ")
 ;;5664
 ;;21,"S72.123B ")
 ;;5665
 ;;21,"S72.123C ")
 ;;5666
 ;;21,"S72.124A ")
 ;;5667
 ;;21,"S72.124B ")
 ;;5668
 ;;21,"S72.124C ")
 ;;5669
 ;;21,"S72.125A ")
 ;;5670
 ;;21,"S72.125B ")
 ;;5671
 ;;21,"S72.125C ")
 ;;5672
 ;;21,"S72.126A ")
 ;;5673
 ;;21,"S72.126B ")
 ;;5674
 ;;21,"S72.126C ")
 ;;5675
 ;;21,"S72.131A ")
 ;;5676
 ;;21,"S72.131B ")
 ;;5677
 ;;21,"S72.131C ")
 ;;5678
 ;;21,"S72.132A ")
 ;;5679
 ;;21,"S72.132B ")
 ;;5680
 ;;21,"S72.132C ")
 ;;5681
 ;;21,"S72.133A ")
 ;;5682
 ;;21,"S72.133B ")
 ;;5683
 ;;21,"S72.133C ")
 ;;5684
 ;;21,"S72.134A ")
 ;;5685
 ;;21,"S72.134B ")
 ;;5686
 ;;21,"S72.134C ")
 ;;5687
 ;;21,"S72.135A ")
 ;;5688
 ;;21,"S72.135B ")
 ;;5689
 ;;21,"S72.135C ")
 ;;5690
 ;;21,"S72.136A ")
 ;;5691
 ;;21,"S72.136B ")
 ;;5692
 ;;21,"S72.136C ")
 ;;5693
 ;;21,"S72.141A ")
 ;;5694
 ;;21,"S72.141B ")
 ;;5695
 ;;21,"S72.141C ")
 ;;5696
 ;;21,"S72.142A ")
 ;;5697
 ;;21,"S72.142B ")
 ;;5698
 ;;21,"S72.142C ")
 ;;5699
 ;;21,"S72.143A ")
 ;;5700
 ;;21,"S72.143B ")
 ;;5701
 ;;21,"S72.143C ")
 ;;5702
 ;;21,"S72.144A ")
 ;;5703
 ;;21,"S72.144B ")
 ;;5704
 ;;21,"S72.144C ")
 ;;5705
 ;;21,"S72.145A ")
 ;;5706
 ;;21,"S72.145B ")
 ;;5707
 ;;21,"S72.145C ")
 ;;5708
 ;;21,"S72.146A ")
 ;;5709
 ;;21,"S72.146B ")
 ;;5710
 ;;21,"S72.146C ")
 ;;5711
 ;;21,"S72.21XA ")
 ;;5712
 ;;21,"S72.21XB ")
 ;;5713
 ;;21,"S72.21XC ")
 ;;5714
 ;;21,"S72.22XA ")
 ;;5715
 ;;21,"S72.22XB ")
 ;;5716
 ;;21,"S72.22XC ")
 ;;5717
 ;;21,"S72.23XA ")
 ;;5718
 ;;21,"S72.23XB ")
 ;;5719
 ;;21,"S72.23XC ")
 ;;5720
 ;;21,"S72.24XA ")
 ;;5721
 ;;21,"S72.24XB ")
 ;;5722
 ;;21,"S72.24XC ")
 ;;5723
 ;;21,"S72.25XA ")
 ;;5724
 ;;21,"S72.25XB ")
 ;;5725
 ;;21,"S72.25XC ")
 ;;5726
 ;;21,"S72.26XA ")
 ;;5727
 ;;21,"S72.26XB ")
 ;;5728
 ;;21,"S72.26XC ")
 ;;5729
 ;;21,"S72.301A ")
 ;;5730
 ;;21,"S72.301B ")
 ;;5731
 ;;21,"S72.301C ")
 ;;5732
 ;;21,"S72.302A ")
 ;;5733
 ;;21,"S72.302B ")
 ;;5734
 ;;21,"S72.302C ")
 ;;5735
 ;;21,"S72.309A ")
 ;;5736
 ;;21,"S72.309B ")
 ;;5737
 ;;21,"S72.309C ")
 ;;5738
 ;;21,"S72.321A ")
 ;;5739
 ;;21,"S72.321B ")
 ;;5740
 ;;21,"S72.321C ")
 ;;5741
 ;;21,"S72.322A ")
 ;;5742
 ;;21,"S72.322B ")
 ;;5743
 ;;21,"S72.322C ")
 ;;5744
 ;;21,"S72.323A ")
 ;;5745
 ;;21,"S72.323B ")
 ;;5746
 ;;21,"S72.323C ")
 ;;5747
 ;;21,"S72.324A ")
 ;;5748
 ;;21,"S72.324B ")
 ;;5749
 ;;21,"S72.324C ")
 ;;5750
 ;;21,"S72.325A ")
 ;;5751
 ;;21,"S72.325B ")
 ;;5752
 ;;21,"S72.325C ")
 ;;5753
 ;;21,"S72.326A ")
 ;;5754
 ;;21,"S72.326B ")
 ;;5755
 ;;21,"S72.326C ")
 ;;5756
 ;;21,"S72.331A ")
 ;;5757
 ;;21,"S72.331B ")
 ;;5758
 ;;21,"S72.331C ")
 ;;5759
 ;;21,"S72.332A ")
 ;;5760
 ;;21,"S72.332B ")
 ;;5761
 ;;21,"S72.332C ")
 ;;5762
 ;;21,"S72.333A ")
 ;;5763
 ;;21,"S72.333B ")
 ;;5764
 ;;21,"S72.333C ")
 ;;5765
 ;;21,"S72.334A ")
 ;;5766
 ;;21,"S72.334B ")
 ;;5767
 ;;21,"S72.334C ")
 ;;5768
 ;;21,"S72.335A ")
 ;;5769
 ;;21,"S72.335B ")
 ;;5770
 ;;21,"S72.335C ")
 ;;5771
 ;;21,"S72.336A ")
 ;;5772
 ;;21,"S72.336B ")
 ;;5773
 ;;21,"S72.336C ")
 ;;5774
 ;;21,"S72.341A ")
 ;;5775
 ;;21,"S72.341B ")
 ;;5776
 ;;21,"S72.341C ")
 ;;5777
 ;;21,"S72.342A ")
 ;;5778
 ;;21,"S72.342B ")
 ;;5779
 ;;21,"S72.342C ")
 ;;5780
 ;;21,"S72.343A ")
 ;;5781
 ;;21,"S72.343B ")
 ;;5782
 ;;21,"S72.343C ")
 ;;5783
 ;;21,"S72.344A ")
 ;;5784
 ;;21,"S72.344B ")
 ;;5785
 ;;21,"S72.344C ")
 ;;5786
 ;;21,"S72.345A ")
 ;;5787
