ATXF4D2 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON MAR 15, 2016;
 ;;5.1;TAXONOMY;**15**;FEB 04, 1997;Build 20
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"2107,144.0 ",.01)
 ;;144.0
 ;;9002226.02101,"2107,144.0 ",.02)
 ;;144.9
 ;;9002226.02101,"2107,144.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,145.0 ",.01)
 ;;145.0
 ;;9002226.02101,"2107,145.0 ",.02)
 ;;145.9
 ;;9002226.02101,"2107,145.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,146.0 ",.01)
 ;;146.0
 ;;9002226.02101,"2107,146.0 ",.02)
 ;;146.9
 ;;9002226.02101,"2107,146.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,147.0 ",.01)
 ;;147.0
 ;;9002226.02101,"2107,147.0 ",.02)
 ;;147.9
 ;;9002226.02101,"2107,147.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,148.0 ",.01)
 ;;148.0
 ;;9002226.02101,"2107,148.0 ",.02)
 ;;148.9
 ;;9002226.02101,"2107,148.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,149.0 ",.01)
 ;;149.0
 ;;9002226.02101,"2107,149.0 ",.02)
 ;;149.9
 ;;9002226.02101,"2107,149.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,150.0 ",.01)
 ;;150.0
 ;;9002226.02101,"2107,150.0 ",.02)
 ;;150.9
 ;;9002226.02101,"2107,150.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,151.0 ",.01)
 ;;151.0
 ;;9002226.02101,"2107,151.0 ",.02)
 ;;151.9
 ;;9002226.02101,"2107,151.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,152.0 ",.01)
 ;;152.0
 ;;9002226.02101,"2107,152.0 ",.02)
 ;;152.9
 ;;9002226.02101,"2107,152.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,153.0 ",.01)
 ;;153.0
 ;;9002226.02101,"2107,153.0 ",.02)
 ;;153.9
 ;;9002226.02101,"2107,153.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,154.0 ",.01)
 ;;154.0
 ;;9002226.02101,"2107,154.0 ",.02)
 ;;154.8
 ;;9002226.02101,"2107,154.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,155.0 ",.01)
 ;;155.0
 ;;9002226.02101,"2107,155.0 ",.02)
 ;;155.2
 ;;9002226.02101,"2107,155.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,156.0 ",.01)
 ;;156.0
 ;;9002226.02101,"2107,156.0 ",.02)
 ;;156.9
 ;;9002226.02101,"2107,156.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,157.0 ",.01)
 ;;157.0
 ;;9002226.02101,"2107,157.0 ",.02)
 ;;157.9
 ;;9002226.02101,"2107,157.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,158.0 ",.01)
 ;;158.0
 ;;9002226.02101,"2107,158.0 ",.02)
 ;;158.9
 ;;9002226.02101,"2107,158.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,159.0 ",.01)
 ;;159.0
 ;;9002226.02101,"2107,159.0 ",.02)
 ;;159.9
 ;;9002226.02101,"2107,159.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,160.0 ",.01)
 ;;160.0
 ;;9002226.02101,"2107,160.0 ",.02)
 ;;160.9
 ;;9002226.02101,"2107,160.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,161.0 ",.01)
 ;;161.0
 ;;9002226.02101,"2107,161.0 ",.02)
 ;;161.9
 ;;9002226.02101,"2107,161.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,162.0 ",.01)
 ;;162.0
 ;;9002226.02101,"2107,162.0 ",.02)
 ;;162.9
 ;;9002226.02101,"2107,162.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,163.0 ",.01)
 ;;163.0
 ;;9002226.02101,"2107,163.0 ",.02)
 ;;163.9
 ;;9002226.02101,"2107,163.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,164.0 ",.01)
 ;;164.0
 ;;9002226.02101,"2107,164.0 ",.02)
 ;;164.9
 ;;9002226.02101,"2107,164.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,165.0 ",.01)
 ;;165.0
 ;;9002226.02101,"2107,165.0 ",.02)
 ;;165.9
 ;;9002226.02101,"2107,165.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,170.0 ",.01)
 ;;170.0
 ;;9002226.02101,"2107,170.0 ",.02)
 ;;170.9
 ;;9002226.02101,"2107,170.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,171.0 ",.01)
 ;;171.0
 ;;9002226.02101,"2107,171.0 ",.02)
 ;;171.9
 ;;9002226.02101,"2107,171.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,172.0 ",.01)
 ;;172.0
 ;;9002226.02101,"2107,172.0 ",.02)
 ;;172.9
 ;;9002226.02101,"2107,172.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.00 ",.01)
 ;;173.00
 ;;9002226.02101,"2107,173.00 ",.02)
 ;;173.00
 ;;9002226.02101,"2107,173.00 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.09 ",.01)
 ;;173.09
 ;;9002226.02101,"2107,173.09 ",.02)
 ;;173.09
 ;;9002226.02101,"2107,173.09 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.10 ",.01)
 ;;173.10
 ;;9002226.02101,"2107,173.10 ",.02)
 ;;173.10
 ;;9002226.02101,"2107,173.10 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.19 ",.01)
 ;;173.19
 ;;9002226.02101,"2107,173.19 ",.02)
 ;;173.19
 ;;9002226.02101,"2107,173.19 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.20 ",.01)
 ;;173.20
 ;;9002226.02101,"2107,173.20 ",.02)
 ;;173.20
 ;;9002226.02101,"2107,173.20 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.29 ",.01)
 ;;173.29
 ;;9002226.02101,"2107,173.29 ",.02)
 ;;173.29
 ;;9002226.02101,"2107,173.29 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.30 ",.01)
 ;;173.30
 ;;9002226.02101,"2107,173.30 ",.02)
 ;;173.30
 ;;9002226.02101,"2107,173.30 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.39 ",.01)
 ;;173.39
 ;;9002226.02101,"2107,173.39 ",.02)
 ;;173.39
 ;;9002226.02101,"2107,173.39 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.40 ",.01)
 ;;173.40
 ;;9002226.02101,"2107,173.40 ",.02)
 ;;173.40
 ;;9002226.02101,"2107,173.40 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.49 ",.01)
 ;;173.49
 ;;9002226.02101,"2107,173.49 ",.02)
 ;;173.49
 ;;9002226.02101,"2107,173.49 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.50 ",.01)
 ;;173.50
 ;;9002226.02101,"2107,173.50 ",.02)
 ;;173.50
 ;;9002226.02101,"2107,173.50 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.59 ",.01)
 ;;173.59
 ;;9002226.02101,"2107,173.59 ",.02)
 ;;173.59
 ;;9002226.02101,"2107,173.59 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.60 ",.01)
 ;;173.60
 ;;9002226.02101,"2107,173.60 ",.02)
 ;;173.60
 ;;9002226.02101,"2107,173.60 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.69 ",.01)
 ;;173.69
 ;;9002226.02101,"2107,173.69 ",.02)
 ;;173.69
 ;;9002226.02101,"2107,173.69 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.70 ",.01)
 ;;173.70
 ;;9002226.02101,"2107,173.70 ",.02)
 ;;173.70
 ;;9002226.02101,"2107,173.70 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.79 ",.01)
 ;;173.79
 ;;9002226.02101,"2107,173.79 ",.02)
 ;;173.79
 ;;9002226.02101,"2107,173.79 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.80 ",.01)
 ;;173.80
 ;;9002226.02101,"2107,173.80 ",.02)
 ;;173.80
 ;;9002226.02101,"2107,173.80 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.89 ",.01)
 ;;173.89
 ;;9002226.02101,"2107,173.89 ",.02)
 ;;173.89
 ;;9002226.02101,"2107,173.89 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.90 ",.01)
 ;;173.90
 ;;9002226.02101,"2107,173.90 ",.02)
 ;;173.90
 ;;9002226.02101,"2107,173.90 ",.03)
 ;;1
 ;;9002226.02101,"2107,173.99 ",.01)
 ;;173.99
 ;;9002226.02101,"2107,173.99 ",.02)
 ;;173.99
 ;;9002226.02101,"2107,173.99 ",.03)
 ;;1
 ;;9002226.02101,"2107,174.0 ",.01)
 ;;174.0
 ;;9002226.02101,"2107,174.0 ",.02)
 ;;174.9
 ;;9002226.02101,"2107,174.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,175.0 ",.01)
 ;;175.0
 ;;9002226.02101,"2107,175.0 ",.02)
 ;;175.9
 ;;9002226.02101,"2107,175.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,176.0 ",.01)
 ;;176.0
 ;;9002226.02101,"2107,176.0 ",.02)
 ;;176.9
 ;;9002226.02101,"2107,176.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,180.0 ",.01)
 ;;180.0
 ;;9002226.02101,"2107,180.0 ",.02)
 ;;180.9
 ;;9002226.02101,"2107,180.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,182.0 ",.01)
 ;;182.0
 ;;9002226.02101,"2107,182.0 ",.02)
 ;;182.8
 ;;9002226.02101,"2107,182.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,183.0 ",.01)
 ;;183.0
 ;;9002226.02101,"2107,183.0 ",.02)
 ;;183.9
 ;;9002226.02101,"2107,183.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,184.0 ",.01)
 ;;184.0
 ;;9002226.02101,"2107,184.0 ",.02)
 ;;184.9
 ;;9002226.02101,"2107,184.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,186.0 ",.01)
 ;;186.0
 ;;9002226.02101,"2107,186.0 ",.02)
 ;;186.9
 ;;9002226.02101,"2107,186.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,187.1 ",.01)
 ;;187.1
 ;;9002226.02101,"2107,187.1 ",.02)
 ;;187.9
 ;;9002226.02101,"2107,187.1 ",.03)
 ;;1
 ;;9002226.02101,"2107,188.0 ",.01)
 ;;188.0
 ;;9002226.02101,"2107,188.0 ",.02)
 ;;188.9
 ;;9002226.02101,"2107,188.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,189.0 ",.01)
 ;;189.0
 ;;9002226.02101,"2107,189.0 ",.02)
 ;;189.9
 ;;9002226.02101,"2107,189.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,190.0 ",.01)
 ;;190.0
 ;;9002226.02101,"2107,190.0 ",.02)
 ;;190.9
 ;;9002226.02101,"2107,190.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,191.0 ",.01)
 ;;191.0
 ;;9002226.02101,"2107,191.0 ",.02)
 ;;191.9
 ;;9002226.02101,"2107,191.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,192.0 ",.01)
 ;;192.0
 ;;9002226.02101,"2107,192.0 ",.02)
 ;;192.9
 ;;9002226.02101,"2107,192.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,194.0 ",.01)
 ;;194.0
 ;;9002226.02101,"2107,194.0 ",.02)
 ;;194.9
 ;;9002226.02101,"2107,194.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,195.0 ",.01)
 ;;195.0
 ;;9002226.02101,"2107,195.0 ",.02)
 ;;195.8
 ;;9002226.02101,"2107,195.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,196.0 ",.01)
 ;;196.0
 ;;9002226.02101,"2107,196.0 ",.02)
 ;;196.9
 ;;9002226.02101,"2107,196.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,197.0 ",.01)
 ;;197.0
 ;;9002226.02101,"2107,197.0 ",.02)
 ;;197.8
 ;;9002226.02101,"2107,197.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,198.0 ",.01)
 ;;198.0
 ;;9002226.02101,"2107,198.0 ",.02)
 ;;198.7
 ;;9002226.02101,"2107,198.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,198.81 ",.01)
 ;;198.81
 ;;9002226.02101,"2107,198.81 ",.02)
 ;;198.89
 ;;9002226.02101,"2107,198.81 ",.03)
 ;;1
 ;;9002226.02101,"2107,199.0 ",.01)
 ;;199.0
 ;;9002226.02101,"2107,199.0 ",.02)
 ;;199.2
 ;;9002226.02101,"2107,199.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,200.0 ",.01)
 ;;200.0
 ;;9002226.02101,"2107,200.0 ",.02)
 ;;200.9
 ;;9002226.02101,"2107,200.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,201.0 ",.01)
 ;;201.0
 ;;9002226.02101,"2107,201.0 ",.02)
 ;;201.9
 ;;9002226.02101,"2107,201.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,202.0 ",.01)
 ;;202.0
 ;;9002226.02101,"2107,202.0 ",.02)
 ;;202.9
 ;;9002226.02101,"2107,202.0 ",.03)
 ;;1
 ;;9002226.02101,"2107,203.00 ",.01)
 ;;203.00
 ;;9002226.02101,"2107,203.00 ",.02)
 ;;203.02
 ;;9002226.02101,"2107,203.00 ",.03)
 ;;1
 ;;9002226.02101,"2107,203.10 ",.01)
 ;;203.10
 ;;9002226.02101,"2107,203.10 ",.02)
 ;;203.12
 ;;9002226.02101,"2107,203.10 ",.03)
 ;;1
 ;;9002226.02101,"2107,203.80 ",.01)
 ;;203.80
 ;;9002226.02101,"2107,203.80 ",.02)
 ;;203.82
 ;;9002226.02101,"2107,203.80 ",.03)
 ;;1
 ;;9002226.02101,"2107,204.00 ",.01)
 ;;204.00
 ;;9002226.02101,"2107,204.00 ",.02)
 ;;204.02
 ;;9002226.02101,"2107,204.00 ",.03)
 ;;1
 ;;9002226.02101,"2107,204.10 ",.01)
 ;;204.10
 ;;9002226.02101,"2107,204.10 ",.02)
 ;;204.12
 ;;9002226.02101,"2107,204.10 ",.03)
 ;;1
 ;;9002226.02101,"2107,204.20 ",.01)
 ;;204.20
 ;;9002226.02101,"2107,204.20 ",.02)
 ;;204.22
 ;;9002226.02101,"2107,204.20 ",.03)
 ;;1
 ;;9002226.02101,"2107,204.80 ",.01)
 ;;204.80
 ;;9002226.02101,"2107,204.80 ",.02)
 ;;204.82
 ;;9002226.02101,"2107,204.80 ",.03)
 ;;1
 ;;9002226.02101,"2107,204.90 ",.01)
 ;;204.90
 ;;9002226.02101,"2107,204.90 ",.02)
 ;;204.92
 ;;9002226.02101,"2107,204.90 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.00 ",.01)
 ;;205.00
 ;;9002226.02101,"2107,205.00 ",.02)
 ;;205.02
 ;;9002226.02101,"2107,205.00 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.10 ",.01)
 ;;205.10
 ;;9002226.02101,"2107,205.10 ",.02)
 ;;205.12
 ;;9002226.02101,"2107,205.10 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.20 ",.01)
 ;;205.20
 ;;9002226.02101,"2107,205.20 ",.02)
 ;;205.22
 ;;9002226.02101,"2107,205.20 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.30 ",.01)
 ;;205.30
 ;;9002226.02101,"2107,205.30 ",.02)
 ;;205.32
 ;;9002226.02101,"2107,205.30 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.80 ",.01)
 ;;205.80
 ;;9002226.02101,"2107,205.80 ",.02)
 ;;205.82
 ;;9002226.02101,"2107,205.80 ",.03)
 ;;1
 ;;9002226.02101,"2107,205.90 ",.01)
 ;;205.90
 ;;9002226.02101,"2107,205.90 ",.02)
 ;;205.92
 ;;9002226.02101,"2107,205.90 ",.03)
 ;;1
 ;;9002226.02101,"2107,206.00 ",.01)
 ;;206.00
 ;;9002226.02101,"2107,206.00 ",.02)
 ;;206.02
 ;;9002226.02101,"2107,206.00 ",.03)
 ;;1
