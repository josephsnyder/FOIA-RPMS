BGP51O14 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"804,42254-0076-07 ",.02)
 ;;42254-0076-07
 ;;9002226.02101,"804,42254-0076-20 ",.01)
 ;;42254-0076-20
 ;;9002226.02101,"804,42254-0076-20 ",.02)
 ;;42254-0076-20
 ;;9002226.02101,"804,42254-0076-30 ",.01)
 ;;42254-0076-30
 ;;9002226.02101,"804,42254-0076-30 ",.02)
 ;;42254-0076-30
 ;;9002226.02101,"804,42254-0076-40 ",.01)
 ;;42254-0076-40
 ;;9002226.02101,"804,42254-0076-40 ",.02)
 ;;42254-0076-40
 ;;9002226.02101,"804,42254-0076-60 ",.01)
 ;;42254-0076-60
 ;;9002226.02101,"804,42254-0076-60 ",.02)
 ;;42254-0076-60
 ;;9002226.02101,"804,42254-0076-90 ",.01)
 ;;42254-0076-90
 ;;9002226.02101,"804,42254-0076-90 ",.02)
 ;;42254-0076-90
 ;;9002226.02101,"804,42254-0239-30 ",.01)
 ;;42254-0239-30
 ;;9002226.02101,"804,42254-0239-30 ",.02)
 ;;42254-0239-30
 ;;9002226.02101,"804,42254-0239-60 ",.01)
 ;;42254-0239-60
 ;;9002226.02101,"804,42254-0239-60 ",.02)
 ;;42254-0239-60
 ;;9002226.02101,"804,42254-0239-72 ",.01)
 ;;42254-0239-72
 ;;9002226.02101,"804,42254-0239-72 ",.02)
 ;;42254-0239-72
 ;;9002226.02101,"804,42254-0239-90 ",.01)
 ;;42254-0239-90
 ;;9002226.02101,"804,42254-0239-90 ",.02)
 ;;42254-0239-90
 ;;9002226.02101,"804,42254-0404-90 ",.01)
 ;;42254-0404-90
 ;;9002226.02101,"804,42254-0404-90 ",.02)
 ;;42254-0404-90
 ;;9002226.02101,"804,42254-0427-10 ",.01)
 ;;42254-0427-10
 ;;9002226.02101,"804,42254-0427-10 ",.02)
 ;;42254-0427-10
 ;;9002226.02101,"804,42254-0427-90 ",.01)
 ;;42254-0427-90
 ;;9002226.02101,"804,42254-0427-90 ",.02)
 ;;42254-0427-90
 ;;9002226.02101,"804,42291-0200-10 ",.01)
 ;;42291-0200-10
 ;;9002226.02101,"804,42291-0200-10 ",.02)
 ;;42291-0200-10
 ;;9002226.02101,"804,42291-0530-01 ",.01)
 ;;42291-0530-01
 ;;9002226.02101,"804,42291-0530-01 ",.02)
 ;;42291-0530-01
 ;;9002226.02101,"804,42549-0303-30 ",.01)
 ;;42549-0303-30
 ;;9002226.02101,"804,42549-0303-30 ",.02)
 ;;42549-0303-30
 ;;9002226.02101,"804,42549-0303-90 ",.01)
 ;;42549-0303-90
 ;;9002226.02101,"804,42549-0303-90 ",.02)
 ;;42549-0303-90
 ;;9002226.02101,"804,42549-0308-30 ",.01)
 ;;42549-0308-30
 ;;9002226.02101,"804,42549-0308-30 ",.02)
 ;;42549-0308-30
 ;;9002226.02101,"804,42549-0308-60 ",.01)
 ;;42549-0308-60
 ;;9002226.02101,"804,42549-0308-60 ",.02)
 ;;42549-0308-60
 ;;9002226.02101,"804,42549-0308-90 ",.01)
 ;;42549-0308-90
 ;;9002226.02101,"804,42549-0308-90 ",.02)
 ;;42549-0308-90
 ;;9002226.02101,"804,42549-0321-40 ",.01)
 ;;42549-0321-40
 ;;9002226.02101,"804,42549-0321-40 ",.02)
 ;;42549-0321-40
 ;;9002226.02101,"804,42549-0503-28 ",.01)
 ;;42549-0503-28
 ;;9002226.02101,"804,42549-0503-28 ",.02)
 ;;42549-0503-28
 ;;9002226.02101,"804,42549-0503-30 ",.01)
 ;;42549-0503-30
 ;;9002226.02101,"804,42549-0503-30 ",.02)
 ;;42549-0503-30
 ;;9002226.02101,"804,42549-0503-40 ",.01)
 ;;42549-0503-40
 ;;9002226.02101,"804,42549-0503-40 ",.02)
 ;;42549-0503-40
 ;;9002226.02101,"804,42549-0503-60 ",.01)
 ;;42549-0503-60
 ;;9002226.02101,"804,42549-0503-60 ",.02)
 ;;42549-0503-60
 ;;9002226.02101,"804,42549-0503-90 ",.01)
 ;;42549-0503-90
 ;;9002226.02101,"804,42549-0503-90 ",.02)
 ;;42549-0503-90
 ;;9002226.02101,"804,42549-0508-30 ",.01)
 ;;42549-0508-30
 ;;9002226.02101,"804,42549-0508-30 ",.02)
 ;;42549-0508-30
 ;;9002226.02101,"804,42549-0508-60 ",.01)
 ;;42549-0508-60
 ;;9002226.02101,"804,42549-0508-60 ",.02)
 ;;42549-0508-60
 ;;9002226.02101,"804,42549-0508-90 ",.01)
 ;;42549-0508-90
 ;;9002226.02101,"804,42549-0508-90 ",.02)
 ;;42549-0508-90
 ;;9002226.02101,"804,42549-0521-12 ",.01)
 ;;42549-0521-12
 ;;9002226.02101,"804,42549-0521-12 ",.02)
 ;;42549-0521-12
 ;;9002226.02101,"804,42549-0521-30 ",.01)
 ;;42549-0521-30
 ;;9002226.02101,"804,42549-0521-30 ",.02)
 ;;42549-0521-30
 ;;9002226.02101,"804,42549-0521-40 ",.01)
 ;;42549-0521-40
 ;;9002226.02101,"804,42549-0521-40 ",.02)
 ;;42549-0521-40
 ;;9002226.02101,"804,42549-0521-60 ",.01)
 ;;42549-0521-60
 ;;9002226.02101,"804,42549-0521-60 ",.02)
 ;;42549-0521-60
 ;;9002226.02101,"804,42549-0521-81 ",.01)
 ;;42549-0521-81
 ;;9002226.02101,"804,42549-0521-81 ",.02)
 ;;42549-0521-81
 ;;9002226.02101,"804,42549-0521-90 ",.01)
 ;;42549-0521-90
 ;;9002226.02101,"804,42549-0521-90 ",.02)
 ;;42549-0521-90
 ;;9002226.02101,"804,42549-0545-30 ",.01)
 ;;42549-0545-30
 ;;9002226.02101,"804,42549-0545-30 ",.02)
 ;;42549-0545-30
 ;;9002226.02101,"804,42549-0559-30 ",.01)
 ;;42549-0559-30
 ;;9002226.02101,"804,42549-0559-30 ",.02)
 ;;42549-0559-30
 ;;9002226.02101,"804,42549-0559-56 ",.01)
 ;;42549-0559-56
 ;;9002226.02101,"804,42549-0559-56 ",.02)
 ;;42549-0559-56
 ;;9002226.02101,"804,42549-0559-60 ",.01)
 ;;42549-0559-60
 ;;9002226.02101,"804,42549-0559-60 ",.02)
 ;;42549-0559-60
 ;;9002226.02101,"804,42549-0641-30 ",.01)
 ;;42549-0641-30
 ;;9002226.02101,"804,42549-0641-30 ",.02)
 ;;42549-0641-30
 ;;9002226.02101,"804,42549-0641-60 ",.01)
 ;;42549-0641-60
 ;;9002226.02101,"804,42549-0641-60 ",.02)
 ;;42549-0641-60
 ;;9002226.02101,"804,42549-0641-90 ",.01)
 ;;42549-0641-90
 ;;9002226.02101,"804,42549-0641-90 ",.02)
 ;;42549-0641-90
 ;;9002226.02101,"804,42549-0650-30 ",.01)
 ;;42549-0650-30
 ;;9002226.02101,"804,42549-0650-30 ",.02)
 ;;42549-0650-30
 ;;9002226.02101,"804,42549-0652-30 ",.01)
 ;;42549-0652-30
 ;;9002226.02101,"804,42549-0652-30 ",.02)
 ;;42549-0652-30
 ;;9002226.02101,"804,42549-0652-60 ",.01)
 ;;42549-0652-60
 ;;9002226.02101,"804,42549-0652-60 ",.02)
 ;;42549-0652-60
 ;;9002226.02101,"804,42549-0652-90 ",.01)
 ;;42549-0652-90
 ;;9002226.02101,"804,42549-0652-90 ",.02)
 ;;42549-0652-90
 ;;9002226.02101,"804,42549-0682-07 ",.01)
 ;;42549-0682-07
 ;;9002226.02101,"804,42549-0682-07 ",.02)
 ;;42549-0682-07
 ;;9002226.02101,"804,42549-0682-15 ",.01)
 ;;42549-0682-15
 ;;9002226.02101,"804,42549-0682-15 ",.02)
 ;;42549-0682-15
 ;;9002226.02101,"804,42549-0682-20 ",.01)
 ;;42549-0682-20
 ;;9002226.02101,"804,42549-0682-20 ",.02)
 ;;42549-0682-20
 ;;9002226.02101,"804,42549-0682-28 ",.01)
 ;;42549-0682-28
 ;;9002226.02101,"804,42549-0682-28 ",.02)
 ;;42549-0682-28
 ;;9002226.02101,"804,42549-0682-30 ",.01)
 ;;42549-0682-30
 ;;9002226.02101,"804,42549-0682-30 ",.02)
 ;;42549-0682-30
 ;;9002226.02101,"804,42549-0682-40 ",.01)
 ;;42549-0682-40
 ;;9002226.02101,"804,42549-0682-40 ",.02)
 ;;42549-0682-40
 ;;9002226.02101,"804,42549-0682-45 ",.01)
 ;;42549-0682-45
 ;;9002226.02101,"804,42549-0682-45 ",.02)
 ;;42549-0682-45
 ;;9002226.02101,"804,42549-0682-56 ",.01)
 ;;42549-0682-56
 ;;9002226.02101,"804,42549-0682-56 ",.02)
 ;;42549-0682-56
 ;;9002226.02101,"804,42549-0682-60 ",.01)
 ;;42549-0682-60
 ;;9002226.02101,"804,42549-0682-60 ",.02)
 ;;42549-0682-60
 ;;9002226.02101,"804,42549-0682-62 ",.01)
 ;;42549-0682-62
 ;;9002226.02101,"804,42549-0682-62 ",.02)
 ;;42549-0682-62
 ;;9002226.02101,"804,42549-0682-72 ",.01)
 ;;42549-0682-72
 ;;9002226.02101,"804,42549-0682-72 ",.02)
 ;;42549-0682-72
 ;;9002226.02101,"804,42549-0682-82 ",.01)
 ;;42549-0682-82
 ;;9002226.02101,"804,42549-0682-82 ",.02)
 ;;42549-0682-82
 ;;9002226.02101,"804,42549-0682-84 ",.01)
 ;;42549-0682-84
 ;;9002226.02101,"804,42549-0682-84 ",.02)
 ;;42549-0682-84
 ;;9002226.02101,"804,42549-0682-90 ",.01)
 ;;42549-0682-90
 ;;9002226.02101,"804,42549-0682-90 ",.02)
 ;;42549-0682-90
 ;;9002226.02101,"804,43063-0050-03 ",.01)
 ;;43063-0050-03
 ;;9002226.02101,"804,43063-0050-03 ",.02)
 ;;43063-0050-03
 ;;9002226.02101,"804,43063-0050-04 ",.01)
 ;;43063-0050-04
 ;;9002226.02101,"804,43063-0050-04 ",.02)
 ;;43063-0050-04
 ;;9002226.02101,"804,43063-0050-06 ",.01)
 ;;43063-0050-06
 ;;9002226.02101,"804,43063-0050-06 ",.02)
 ;;43063-0050-06
 ;;9002226.02101,"804,43063-0239-10 ",.01)
 ;;43063-0239-10
 ;;9002226.02101,"804,43063-0239-10 ",.02)
 ;;43063-0239-10
 ;;9002226.02101,"804,43063-0239-15 ",.01)
 ;;43063-0239-15
 ;;9002226.02101,"804,43063-0239-15 ",.02)
 ;;43063-0239-15
 ;;9002226.02101,"804,43063-0239-20 ",.01)
 ;;43063-0239-20
 ;;9002226.02101,"804,43063-0239-20 ",.02)
 ;;43063-0239-20
 ;;9002226.02101,"804,43063-0239-21 ",.01)
 ;;43063-0239-21
 ;;9002226.02101,"804,43063-0239-21 ",.02)
 ;;43063-0239-21
 ;;9002226.02101,"804,43063-0239-30 ",.01)
 ;;43063-0239-30
 ;;9002226.02101,"804,43063-0239-30 ",.02)
 ;;43063-0239-30
 ;;9002226.02101,"804,43063-0239-40 ",.01)
 ;;43063-0239-40
 ;;9002226.02101,"804,43063-0239-40 ",.02)
 ;;43063-0239-40
 ;;9002226.02101,"804,43063-0302-10 ",.01)
 ;;43063-0302-10
 ;;9002226.02101,"804,43063-0302-10 ",.02)
 ;;43063-0302-10
 ;;9002226.02101,"804,43063-0302-14 ",.01)
 ;;43063-0302-14
 ;;9002226.02101,"804,43063-0302-14 ",.02)
 ;;43063-0302-14
 ;;9002226.02101,"804,43063-0302-15 ",.01)
 ;;43063-0302-15
 ;;9002226.02101,"804,43063-0302-15 ",.02)
 ;;43063-0302-15
 ;;9002226.02101,"804,43063-0302-20 ",.01)
 ;;43063-0302-20
 ;;9002226.02101,"804,43063-0302-20 ",.02)
 ;;43063-0302-20
 ;;9002226.02101,"804,43063-0302-21 ",.01)
 ;;43063-0302-21
 ;;9002226.02101,"804,43063-0302-21 ",.02)
 ;;43063-0302-21
 ;;9002226.02101,"804,43063-0302-24 ",.01)
 ;;43063-0302-24
 ;;9002226.02101,"804,43063-0302-24 ",.02)
 ;;43063-0302-24
 ;;9002226.02101,"804,43063-0302-30 ",.01)
 ;;43063-0302-30
 ;;9002226.02101,"804,43063-0302-30 ",.02)
 ;;43063-0302-30
 ;;9002226.02101,"804,43063-0302-40 ",.01)
 ;;43063-0302-40
 ;;9002226.02101,"804,43063-0302-40 ",.02)
 ;;43063-0302-40
 ;;9002226.02101,"804,43063-0302-60 ",.01)
 ;;43063-0302-60
 ;;9002226.02101,"804,43063-0302-60 ",.02)
 ;;43063-0302-60
 ;;9002226.02101,"804,43063-0302-98 ",.01)
 ;;43063-0302-98
 ;;9002226.02101,"804,43063-0302-98 ",.02)
 ;;43063-0302-98
 ;;9002226.02101,"804,43063-0407-20 ",.01)
 ;;43063-0407-20
 ;;9002226.02101,"804,43063-0407-20 ",.02)
 ;;43063-0407-20
 ;;9002226.02101,"804,43063-0407-30 ",.01)
 ;;43063-0407-30
 ;;9002226.02101,"804,43063-0407-30 ",.02)
 ;;43063-0407-30
 ;;9002226.02101,"804,43063-0407-60 ",.01)
 ;;43063-0407-60
 ;;9002226.02101,"804,43063-0407-60 ",.02)
 ;;43063-0407-60
 ;;9002226.02101,"804,43063-0409-01 ",.01)
 ;;43063-0409-01
 ;;9002226.02101,"804,43063-0409-01 ",.02)
 ;;43063-0409-01
 ;;9002226.02101,"804,43063-0409-10 ",.01)
 ;;43063-0409-10
 ;;9002226.02101,"804,43063-0409-10 ",.02)
 ;;43063-0409-10
 ;;9002226.02101,"804,43063-0409-14 ",.01)
 ;;43063-0409-14
 ;;9002226.02101,"804,43063-0409-14 ",.02)
 ;;43063-0409-14
 ;;9002226.02101,"804,43063-0409-20 ",.01)
 ;;43063-0409-20
 ;;9002226.02101,"804,43063-0409-20 ",.02)
 ;;43063-0409-20
 ;;9002226.02101,"804,43063-0409-28 ",.01)
 ;;43063-0409-28
 ;;9002226.02101,"804,43063-0409-28 ",.02)
 ;;43063-0409-28
 ;;9002226.02101,"804,43063-0409-30 ",.01)
 ;;43063-0409-30
 ;;9002226.02101,"804,43063-0409-30 ",.02)
 ;;43063-0409-30
 ;;9002226.02101,"804,43063-0409-40 ",.01)
 ;;43063-0409-40
 ;;9002226.02101,"804,43063-0409-40 ",.02)
 ;;43063-0409-40
 ;;9002226.02101,"804,43063-0409-60 ",.01)
 ;;43063-0409-60
 ;;9002226.02101,"804,43063-0409-60 ",.02)
 ;;43063-0409-60
 ;;9002226.02101,"804,43063-0409-90 ",.01)
 ;;43063-0409-90
 ;;9002226.02101,"804,43063-0409-90 ",.02)
 ;;43063-0409-90
 ;;9002226.02101,"804,43063-0409-93 ",.01)
 ;;43063-0409-93
 ;;9002226.02101,"804,43063-0409-93 ",.02)
 ;;43063-0409-93
 ;;9002226.02101,"804,43063-0419-01 ",.01)
 ;;43063-0419-01
 ;;9002226.02101,"804,43063-0419-01 ",.02)
 ;;43063-0419-01
 ;;9002226.02101,"804,43063-0419-10 ",.01)
 ;;43063-0419-10
 ;;9002226.02101,"804,43063-0419-10 ",.02)
 ;;43063-0419-10
 ;;9002226.02101,"804,43063-0419-12 ",.01)
 ;;43063-0419-12
 ;;9002226.02101,"804,43063-0419-12 ",.02)
 ;;43063-0419-12
 ;;9002226.02101,"804,43063-0419-14 ",.01)
 ;;43063-0419-14
 ;;9002226.02101,"804,43063-0419-14 ",.02)
 ;;43063-0419-14
 ;;9002226.02101,"804,43063-0419-20 ",.01)
 ;;43063-0419-20
 ;;9002226.02101,"804,43063-0419-20 ",.02)
 ;;43063-0419-20
 ;;9002226.02101,"804,43063-0419-24 ",.01)
 ;;43063-0419-24
 ;;9002226.02101,"804,43063-0419-24 ",.02)
 ;;43063-0419-24
 ;;9002226.02101,"804,43063-0419-28 ",.01)
 ;;43063-0419-28
 ;;9002226.02101,"804,43063-0419-28 ",.02)
 ;;43063-0419-28
 ;;9002226.02101,"804,43063-0419-30 ",.01)
 ;;43063-0419-30
 ;;9002226.02101,"804,43063-0419-30 ",.02)
 ;;43063-0419-30
 ;;9002226.02101,"804,43063-0419-40 ",.01)
 ;;43063-0419-40
 ;;9002226.02101,"804,43063-0419-40 ",.02)
 ;;43063-0419-40
 ;;9002226.02101,"804,43063-0419-60 ",.01)
 ;;43063-0419-60
 ;;9002226.02101,"804,43063-0419-60 ",.02)
 ;;43063-0419-60
 ;;9002226.02101,"804,43063-0419-90 ",.01)
 ;;43063-0419-90
 ;;9002226.02101,"804,43063-0419-90 ",.02)
 ;;43063-0419-90
 ;;9002226.02101,"804,43063-0419-93 ",.01)
 ;;43063-0419-93
 ;;9002226.02101,"804,43063-0419-93 ",.02)
 ;;43063-0419-93
 ;;9002226.02101,"804,43063-0460-90 ",.01)
 ;;43063-0460-90
 ;;9002226.02101,"804,43063-0460-90 ",.02)
 ;;43063-0460-90
 ;;9002226.02101,"804,43063-0494-10 ",.01)
 ;;43063-0494-10
 ;;9002226.02101,"804,43063-0494-10 ",.02)
 ;;43063-0494-10
 ;;9002226.02101,"804,43063-0494-15 ",.01)
 ;;43063-0494-15
 ;;9002226.02101,"804,43063-0494-15 ",.02)
 ;;43063-0494-15
 ;;9002226.02101,"804,43063-0494-21 ",.01)
 ;;43063-0494-21
 ;;9002226.02101,"804,43063-0494-21 ",.02)
 ;;43063-0494-21
 ;;9002226.02101,"804,43093-0101-01 ",.01)
 ;;43093-0101-01
 ;;9002226.02101,"804,43093-0101-01 ",.02)
 ;;43093-0101-01
 ;;9002226.02101,"804,43353-0183-21 ",.01)
 ;;43353-0183-21
 ;;9002226.02101,"804,43353-0183-21 ",.02)
 ;;43353-0183-21
 ;;9002226.02101,"804,43353-0183-30 ",.01)
 ;;43353-0183-30
 ;;9002226.02101,"804,43353-0183-30 ",.02)
 ;;43353-0183-30
 ;;9002226.02101,"804,43353-0183-45 ",.01)
 ;;43353-0183-45
