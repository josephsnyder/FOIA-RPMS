ATXD3T3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON OCT 28, 2013;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"548,M05.411 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.412 ",.01)
 ;;M05.412
 ;;9002226.02101,"548,M05.412 ",.02)
 ;;M05.412
 ;;9002226.02101,"548,M05.412 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.419 ",.01)
 ;;M05.419
 ;;9002226.02101,"548,M05.419 ",.02)
 ;;M05.419
 ;;9002226.02101,"548,M05.419 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.421 ",.01)
 ;;M05.421
 ;;9002226.02101,"548,M05.421 ",.02)
 ;;M05.421
 ;;9002226.02101,"548,M05.421 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.422 ",.01)
 ;;M05.422
 ;;9002226.02101,"548,M05.422 ",.02)
 ;;M05.422
 ;;9002226.02101,"548,M05.422 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.429 ",.01)
 ;;M05.429
 ;;9002226.02101,"548,M05.429 ",.02)
 ;;M05.429
 ;;9002226.02101,"548,M05.429 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.431 ",.01)
 ;;M05.431
 ;;9002226.02101,"548,M05.431 ",.02)
 ;;M05.431
 ;;9002226.02101,"548,M05.431 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.432 ",.01)
 ;;M05.432
 ;;9002226.02101,"548,M05.432 ",.02)
 ;;M05.432
 ;;9002226.02101,"548,M05.432 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.439 ",.01)
 ;;M05.439
 ;;9002226.02101,"548,M05.439 ",.02)
 ;;M05.439
 ;;9002226.02101,"548,M05.439 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.441 ",.01)
 ;;M05.441
 ;;9002226.02101,"548,M05.441 ",.02)
 ;;M05.441
 ;;9002226.02101,"548,M05.441 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.442 ",.01)
 ;;M05.442
 ;;9002226.02101,"548,M05.442 ",.02)
 ;;M05.442
 ;;9002226.02101,"548,M05.442 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.449 ",.01)
 ;;M05.449
 ;;9002226.02101,"548,M05.449 ",.02)
 ;;M05.449
 ;;9002226.02101,"548,M05.449 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.451 ",.01)
 ;;M05.451
 ;;9002226.02101,"548,M05.451 ",.02)
 ;;M05.451
 ;;9002226.02101,"548,M05.451 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.452 ",.01)
 ;;M05.452
 ;;9002226.02101,"548,M05.452 ",.02)
 ;;M05.452
 ;;9002226.02101,"548,M05.452 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.459 ",.01)
 ;;M05.459
 ;;9002226.02101,"548,M05.459 ",.02)
 ;;M05.459
 ;;9002226.02101,"548,M05.459 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.461 ",.01)
 ;;M05.461
 ;;9002226.02101,"548,M05.461 ",.02)
 ;;M05.461
 ;;9002226.02101,"548,M05.461 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.462 ",.01)
 ;;M05.462
 ;;9002226.02101,"548,M05.462 ",.02)
 ;;M05.462
 ;;9002226.02101,"548,M05.462 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.469 ",.01)
 ;;M05.469
 ;;9002226.02101,"548,M05.469 ",.02)
 ;;M05.469
 ;;9002226.02101,"548,M05.469 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.471 ",.01)
 ;;M05.471
 ;;9002226.02101,"548,M05.471 ",.02)
 ;;M05.471
 ;;9002226.02101,"548,M05.471 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.472 ",.01)
 ;;M05.472
 ;;9002226.02101,"548,M05.472 ",.02)
 ;;M05.472
 ;;9002226.02101,"548,M05.472 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.479 ",.01)
 ;;M05.479
 ;;9002226.02101,"548,M05.479 ",.02)
 ;;M05.479
 ;;9002226.02101,"548,M05.479 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.49 ",.01)
 ;;M05.49
 ;;9002226.02101,"548,M05.49 ",.02)
 ;;M05.49
 ;;9002226.02101,"548,M05.49 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.50 ",.01)
 ;;M05.50
 ;;9002226.02101,"548,M05.50 ",.02)
 ;;M05.50
 ;;9002226.02101,"548,M05.50 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.511 ",.01)
 ;;M05.511
 ;;9002226.02101,"548,M05.511 ",.02)
 ;;M05.511
 ;;9002226.02101,"548,M05.511 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.512 ",.01)
 ;;M05.512
 ;;9002226.02101,"548,M05.512 ",.02)
 ;;M05.512
 ;;9002226.02101,"548,M05.512 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.519 ",.01)
 ;;M05.519
 ;;9002226.02101,"548,M05.519 ",.02)
 ;;M05.519
 ;;9002226.02101,"548,M05.519 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.521 ",.01)
 ;;M05.521
 ;;9002226.02101,"548,M05.521 ",.02)
 ;;M05.521
 ;;9002226.02101,"548,M05.521 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.522 ",.01)
 ;;M05.522
 ;;9002226.02101,"548,M05.522 ",.02)
 ;;M05.522
 ;;9002226.02101,"548,M05.522 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.529 ",.01)
 ;;M05.529
 ;;9002226.02101,"548,M05.529 ",.02)
 ;;M05.529
 ;;9002226.02101,"548,M05.529 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.531 ",.01)
 ;;M05.531
 ;;9002226.02101,"548,M05.531 ",.02)
 ;;M05.531
 ;;9002226.02101,"548,M05.531 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.532 ",.01)
 ;;M05.532
 ;;9002226.02101,"548,M05.532 ",.02)
 ;;M05.532
 ;;9002226.02101,"548,M05.532 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.539 ",.01)
 ;;M05.539
 ;;9002226.02101,"548,M05.539 ",.02)
 ;;M05.539
 ;;9002226.02101,"548,M05.539 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.541 ",.01)
 ;;M05.541
 ;;9002226.02101,"548,M05.541 ",.02)
 ;;M05.541
 ;;9002226.02101,"548,M05.541 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.542 ",.01)
 ;;M05.542
 ;;9002226.02101,"548,M05.542 ",.02)
 ;;M05.542
 ;;9002226.02101,"548,M05.542 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.549 ",.01)
 ;;M05.549
 ;;9002226.02101,"548,M05.549 ",.02)
 ;;M05.549
 ;;9002226.02101,"548,M05.549 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.551 ",.01)
 ;;M05.551
 ;;9002226.02101,"548,M05.551 ",.02)
 ;;M05.551
 ;;9002226.02101,"548,M05.551 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.552 ",.01)
 ;;M05.552
 ;;9002226.02101,"548,M05.552 ",.02)
 ;;M05.552
 ;;9002226.02101,"548,M05.552 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.559 ",.01)
 ;;M05.559
 ;;9002226.02101,"548,M05.559 ",.02)
 ;;M05.559
 ;;9002226.02101,"548,M05.559 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.561 ",.01)
 ;;M05.561
 ;;9002226.02101,"548,M05.561 ",.02)
 ;;M05.561
 ;;9002226.02101,"548,M05.561 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.562 ",.01)
 ;;M05.562
 ;;9002226.02101,"548,M05.562 ",.02)
 ;;M05.562
 ;;9002226.02101,"548,M05.562 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.569 ",.01)
 ;;M05.569
 ;;9002226.02101,"548,M05.569 ",.02)
 ;;M05.569
 ;;9002226.02101,"548,M05.569 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.571 ",.01)
 ;;M05.571
 ;;9002226.02101,"548,M05.571 ",.02)
 ;;M05.571
 ;;9002226.02101,"548,M05.571 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.572 ",.01)
 ;;M05.572
 ;;9002226.02101,"548,M05.572 ",.02)
 ;;M05.572
 ;;9002226.02101,"548,M05.572 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.579 ",.01)
 ;;M05.579
 ;;9002226.02101,"548,M05.579 ",.02)
 ;;M05.579
 ;;9002226.02101,"548,M05.579 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.59 ",.01)
 ;;M05.59
 ;;9002226.02101,"548,M05.59 ",.02)
 ;;M05.59
 ;;9002226.02101,"548,M05.59 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.60 ",.01)
 ;;M05.60
 ;;9002226.02101,"548,M05.60 ",.02)
 ;;M05.60
 ;;9002226.02101,"548,M05.60 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.611 ",.01)
 ;;M05.611
 ;;9002226.02101,"548,M05.611 ",.02)
 ;;M05.611
 ;;9002226.02101,"548,M05.611 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.612 ",.01)
 ;;M05.612
 ;;9002226.02101,"548,M05.612 ",.02)
 ;;M05.612
 ;;9002226.02101,"548,M05.612 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.619 ",.01)
 ;;M05.619
 ;;9002226.02101,"548,M05.619 ",.02)
 ;;M05.619
 ;;9002226.02101,"548,M05.619 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.621 ",.01)
 ;;M05.621
 ;;9002226.02101,"548,M05.621 ",.02)
 ;;M05.621
 ;;9002226.02101,"548,M05.621 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.622 ",.01)
 ;;M05.622
 ;;9002226.02101,"548,M05.622 ",.02)
 ;;M05.622
 ;;9002226.02101,"548,M05.622 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.629 ",.01)
 ;;M05.629
 ;;9002226.02101,"548,M05.629 ",.02)
 ;;M05.629
 ;;9002226.02101,"548,M05.629 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.631 ",.01)
 ;;M05.631
 ;;9002226.02101,"548,M05.631 ",.02)
 ;;M05.631
 ;;9002226.02101,"548,M05.631 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.632 ",.01)
 ;;M05.632
 ;;9002226.02101,"548,M05.632 ",.02)
 ;;M05.632
 ;;9002226.02101,"548,M05.632 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.639 ",.01)
 ;;M05.639
 ;;9002226.02101,"548,M05.639 ",.02)
 ;;M05.639
 ;;9002226.02101,"548,M05.639 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.641 ",.01)
 ;;M05.641
 ;;9002226.02101,"548,M05.641 ",.02)
 ;;M05.641
 ;;9002226.02101,"548,M05.641 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.642 ",.01)
 ;;M05.642
 ;;9002226.02101,"548,M05.642 ",.02)
 ;;M05.642
 ;;9002226.02101,"548,M05.642 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.649 ",.01)
 ;;M05.649
 ;;9002226.02101,"548,M05.649 ",.02)
 ;;M05.649
 ;;9002226.02101,"548,M05.649 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.651 ",.01)
 ;;M05.651
 ;;9002226.02101,"548,M05.651 ",.02)
 ;;M05.651
 ;;9002226.02101,"548,M05.651 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.652 ",.01)
 ;;M05.652
 ;;9002226.02101,"548,M05.652 ",.02)
 ;;M05.652
 ;;9002226.02101,"548,M05.652 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.659 ",.01)
 ;;M05.659
 ;;9002226.02101,"548,M05.659 ",.02)
 ;;M05.659
 ;;9002226.02101,"548,M05.659 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.661 ",.01)
 ;;M05.661
 ;;9002226.02101,"548,M05.661 ",.02)
 ;;M05.661
 ;;9002226.02101,"548,M05.661 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.662 ",.01)
 ;;M05.662
 ;;9002226.02101,"548,M05.662 ",.02)
 ;;M05.662
 ;;9002226.02101,"548,M05.662 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.669 ",.01)
 ;;M05.669
 ;;9002226.02101,"548,M05.669 ",.02)
 ;;M05.669
 ;;9002226.02101,"548,M05.669 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.671 ",.01)
 ;;M05.671
 ;;9002226.02101,"548,M05.671 ",.02)
 ;;M05.671
 ;;9002226.02101,"548,M05.671 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.672 ",.01)
 ;;M05.672
 ;;9002226.02101,"548,M05.672 ",.02)
 ;;M05.672
 ;;9002226.02101,"548,M05.672 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.679 ",.01)
 ;;M05.679
 ;;9002226.02101,"548,M05.679 ",.02)
 ;;M05.679
 ;;9002226.02101,"548,M05.679 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.69 ",.01)
 ;;M05.69
 ;;9002226.02101,"548,M05.69 ",.02)
 ;;M05.69
 ;;9002226.02101,"548,M05.69 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.70 ",.01)
 ;;M05.70
 ;;9002226.02101,"548,M05.70 ",.02)
 ;;M05.70
 ;;9002226.02101,"548,M05.70 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.711 ",.01)
 ;;M05.711
 ;;9002226.02101,"548,M05.711 ",.02)
 ;;M05.711
 ;;9002226.02101,"548,M05.711 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.712 ",.01)
 ;;M05.712
 ;;9002226.02101,"548,M05.712 ",.02)
 ;;M05.712
 ;;9002226.02101,"548,M05.712 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.719 ",.01)
 ;;M05.719
 ;;9002226.02101,"548,M05.719 ",.02)
 ;;M05.719
 ;;9002226.02101,"548,M05.719 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.721 ",.01)
 ;;M05.721
 ;;9002226.02101,"548,M05.721 ",.02)
 ;;M05.721
 ;;9002226.02101,"548,M05.721 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.722 ",.01)
 ;;M05.722
 ;;9002226.02101,"548,M05.722 ",.02)
 ;;M05.722
 ;;9002226.02101,"548,M05.722 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.729 ",.01)
 ;;M05.729
 ;;9002226.02101,"548,M05.729 ",.02)
 ;;M05.729
 ;;9002226.02101,"548,M05.729 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.731 ",.01)
 ;;M05.731
 ;;9002226.02101,"548,M05.731 ",.02)
 ;;M05.731
 ;;9002226.02101,"548,M05.731 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.732 ",.01)
 ;;M05.732
 ;;9002226.02101,"548,M05.732 ",.02)
 ;;M05.732
 ;;9002226.02101,"548,M05.732 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.739 ",.01)
 ;;M05.739
 ;;9002226.02101,"548,M05.739 ",.02)
 ;;M05.739
 ;;9002226.02101,"548,M05.739 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.741 ",.01)
 ;;M05.741
 ;;9002226.02101,"548,M05.741 ",.02)
 ;;M05.741
 ;;9002226.02101,"548,M05.741 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.742 ",.01)
 ;;M05.742
 ;;9002226.02101,"548,M05.742 ",.02)
 ;;M05.742
 ;;9002226.02101,"548,M05.742 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.749 ",.01)
 ;;M05.749
 ;;9002226.02101,"548,M05.749 ",.02)
 ;;M05.749
 ;;9002226.02101,"548,M05.749 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.751 ",.01)
 ;;M05.751
 ;;9002226.02101,"548,M05.751 ",.02)
 ;;M05.751
 ;;9002226.02101,"548,M05.751 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.752 ",.01)
 ;;M05.752
 ;;9002226.02101,"548,M05.752 ",.02)
 ;;M05.752
 ;;9002226.02101,"548,M05.752 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.759 ",.01)
 ;;M05.759
 ;;9002226.02101,"548,M05.759 ",.02)
 ;;M05.759
 ;;9002226.02101,"548,M05.759 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.761 ",.01)
 ;;M05.761
 ;;9002226.02101,"548,M05.761 ",.02)
 ;;M05.761
 ;;9002226.02101,"548,M05.761 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.762 ",.01)
 ;;M05.762
 ;;9002226.02101,"548,M05.762 ",.02)
 ;;M05.762
 ;;9002226.02101,"548,M05.762 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.769 ",.01)
 ;;M05.769
 ;;9002226.02101,"548,M05.769 ",.02)
 ;;M05.769
 ;;9002226.02101,"548,M05.769 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.771 ",.01)
 ;;M05.771
 ;;9002226.02101,"548,M05.771 ",.02)
 ;;M05.771
 ;;9002226.02101,"548,M05.771 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.772 ",.01)
 ;;M05.772
 ;;9002226.02101,"548,M05.772 ",.02)
 ;;M05.772
 ;;9002226.02101,"548,M05.772 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.779 ",.01)
 ;;M05.779
 ;;9002226.02101,"548,M05.779 ",.02)
 ;;M05.779
 ;;9002226.02101,"548,M05.779 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.79 ",.01)
 ;;M05.79
 ;;9002226.02101,"548,M05.79 ",.02)
 ;;M05.79
 ;;9002226.02101,"548,M05.79 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.80 ",.01)
 ;;M05.80
 ;;9002226.02101,"548,M05.80 ",.02)
 ;;M05.80
 ;;9002226.02101,"548,M05.80 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.811 ",.01)
 ;;M05.811
 ;;9002226.02101,"548,M05.811 ",.02)
 ;;M05.811
 ;;9002226.02101,"548,M05.811 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.812 ",.01)
 ;;M05.812
 ;;9002226.02101,"548,M05.812 ",.02)
 ;;M05.812
 ;;9002226.02101,"548,M05.812 ",.03)
 ;;30
 ;;9002226.02101,"548,M05.819 ",.01)
 ;;M05.819
