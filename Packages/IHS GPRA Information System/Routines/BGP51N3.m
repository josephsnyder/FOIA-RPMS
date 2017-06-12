BGP51N3 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1737,00378-0147-05 ",.01)
 ;;00378-0147-05
 ;;9002226.02101,"1737,00378-0147-05 ",.02)
 ;;00378-0147-05
 ;;9002226.02101,"1737,00378-1134-01 ",.01)
 ;;00378-1134-01
 ;;9002226.02101,"1737,00378-1134-01 ",.02)
 ;;00378-1134-01
 ;;9002226.02101,"1737,00409-1176-30 ",.01)
 ;;00409-1176-30
 ;;9002226.02101,"1737,00409-1176-30 ",.02)
 ;;00409-1176-30
 ;;9002226.02101,"1737,00409-1178-30 ",.01)
 ;;00409-1178-30
 ;;9002226.02101,"1737,00409-1178-30 ",.02)
 ;;00409-1178-30
 ;;9002226.02101,"1737,00409-1179-30 ",.01)
 ;;00409-1179-30
 ;;9002226.02101,"1737,00409-1179-30 ",.02)
 ;;00409-1179-30
 ;;9002226.02101,"1737,00409-1180-69 ",.01)
 ;;00409-1180-69
 ;;9002226.02101,"1737,00409-1180-69 ",.02)
 ;;00409-1180-69
 ;;9002226.02101,"1737,00409-1181-30 ",.01)
 ;;00409-1181-30
 ;;9002226.02101,"1737,00409-1181-30 ",.02)
 ;;00409-1181-30
 ;;9002226.02101,"1737,00409-1201-20 ",.01)
 ;;00409-1201-20
 ;;9002226.02101,"1737,00409-1201-20 ",.02)
 ;;00409-1201-20
 ;;9002226.02101,"1737,00409-1203-01 ",.01)
 ;;00409-1203-01
 ;;9002226.02101,"1737,00409-1203-01 ",.02)
 ;;00409-1203-01
 ;;9002226.02101,"1737,00409-1253-01 ",.01)
 ;;00409-1253-01
 ;;9002226.02101,"1737,00409-1253-01 ",.02)
 ;;00409-1253-01
 ;;9002226.02101,"1737,00409-1254-01 ",.01)
 ;;00409-1254-01
 ;;9002226.02101,"1737,00409-1254-01 ",.02)
 ;;00409-1254-01
 ;;9002226.02101,"1737,00409-1255-02 ",.01)
 ;;00409-1255-02
 ;;9002226.02101,"1737,00409-1255-02 ",.02)
 ;;00409-1255-02
 ;;9002226.02101,"1737,00409-1256-01 ",.01)
 ;;00409-1256-01
 ;;9002226.02101,"1737,00409-1256-01 ",.02)
 ;;00409-1256-01
 ;;9002226.02101,"1737,00409-1920-10 ",.01)
 ;;00409-1920-10
 ;;9002226.02101,"1737,00409-1920-10 ",.02)
 ;;00409-1920-10
 ;;9002226.02101,"1737,00409-1941-01 ",.01)
 ;;00409-1941-01
 ;;9002226.02101,"1737,00409-1941-01 ",.02)
 ;;00409-1941-01
 ;;9002226.02101,"1737,00409-2287-21 ",.01)
 ;;00409-2287-21
 ;;9002226.02101,"1737,00409-2287-21 ",.02)
 ;;00409-2287-21
 ;;9002226.02101,"1737,00409-2287-22 ",.01)
 ;;00409-2287-22
 ;;9002226.02101,"1737,00409-2287-22 ",.02)
 ;;00409-2287-22
 ;;9002226.02101,"1737,00409-2287-23 ",.01)
 ;;00409-2287-23
 ;;9002226.02101,"1737,00409-2287-23 ",.02)
 ;;00409-2287-23
 ;;9002226.02101,"1737,00409-2287-31 ",.01)
 ;;00409-2287-31
 ;;9002226.02101,"1737,00409-2287-31 ",.02)
 ;;00409-2287-31
 ;;9002226.02101,"1737,00409-2287-61 ",.01)
 ;;00409-2287-61
 ;;9002226.02101,"1737,00409-2287-61 ",.02)
 ;;00409-2287-61
 ;;9002226.02101,"1737,00409-2288-21 ",.01)
 ;;00409-2288-21
 ;;9002226.02101,"1737,00409-2288-21 ",.02)
 ;;00409-2288-21
 ;;9002226.02101,"1737,00409-2288-31 ",.01)
 ;;00409-2288-31
 ;;9002226.02101,"1737,00409-2288-31 ",.02)
 ;;00409-2288-31
 ;;9002226.02101,"1737,00409-3793-01 ",.01)
 ;;00409-3793-01
 ;;9002226.02101,"1737,00409-3793-01 ",.02)
 ;;00409-3793-01
 ;;9002226.02101,"1737,00409-3793-49 ",.01)
 ;;00409-3793-49
 ;;9002226.02101,"1737,00409-3793-49 ",.02)
 ;;00409-3793-49
 ;;9002226.02101,"1737,00409-3795-01 ",.01)
 ;;00409-3795-01
 ;;9002226.02101,"1737,00409-3795-01 ",.02)
 ;;00409-3795-01
 ;;9002226.02101,"1737,00409-3795-49 ",.01)
 ;;00409-3795-49
 ;;9002226.02101,"1737,00409-3795-49 ",.02)
 ;;00409-3795-49
 ;;9002226.02101,"1737,00409-3795-61 ",.01)
 ;;00409-3795-61
 ;;9002226.02101,"1737,00409-3795-61 ",.02)
 ;;00409-3795-61
 ;;9002226.02101,"1737,00409-3796-01 ",.01)
 ;;00409-3796-01
 ;;9002226.02101,"1737,00409-3796-01 ",.02)
 ;;00409-3796-01
 ;;9002226.02101,"1737,00409-3796-49 ",.01)
 ;;00409-3796-49
 ;;9002226.02101,"1737,00409-3796-49 ",.02)
 ;;00409-3796-49
 ;;9002226.02101,"1737,00409-3796-61 ",.01)
 ;;00409-3796-61
 ;;9002226.02101,"1737,00409-3796-61 ",.02)
 ;;00409-3796-61
 ;;9002226.02101,"1737,00409-6030-04 ",.01)
 ;;00409-6030-04
 ;;9002226.02101,"1737,00409-6030-04 ",.02)
 ;;00409-6030-04
 ;;9002226.02101,"1737,00440-1652-30 ",.01)
 ;;00440-1652-30
 ;;9002226.02101,"1737,00440-1652-30 ",.02)
 ;;00440-1652-30
 ;;9002226.02101,"1737,00440-7652-06 ",.01)
 ;;00440-7652-06
 ;;9002226.02101,"1737,00440-7652-06 ",.02)
 ;;00440-7652-06
 ;;9002226.02101,"1737,00440-7652-08 ",.01)
 ;;00440-7652-08
 ;;9002226.02101,"1737,00440-7652-08 ",.02)
 ;;00440-7652-08
 ;;9002226.02101,"1737,00440-7652-12 ",.01)
 ;;00440-7652-12
 ;;9002226.02101,"1737,00440-7652-12 ",.02)
 ;;00440-7652-12
 ;;9002226.02101,"1737,00440-7652-20 ",.01)
 ;;00440-7652-20
 ;;9002226.02101,"1737,00440-7652-20 ",.02)
 ;;00440-7652-20
 ;;9002226.02101,"1737,00440-7652-21 ",.01)
 ;;00440-7652-21
 ;;9002226.02101,"1737,00440-7652-21 ",.02)
 ;;00440-7652-21
 ;;9002226.02101,"1737,00440-7652-30 ",.01)
 ;;00440-7652-30
 ;;9002226.02101,"1737,00440-7652-30 ",.02)
 ;;00440-7652-30
 ;;9002226.02101,"1737,00440-7652-90 ",.01)
 ;;00440-7652-90
 ;;9002226.02101,"1737,00440-7652-90 ",.02)
 ;;00440-7652-90
 ;;9002226.02101,"1737,00440-7652-95 ",.01)
 ;;00440-7652-95
 ;;9002226.02101,"1737,00440-7652-95 ",.02)
 ;;00440-7652-95
 ;;9002226.02101,"1737,00440-7654-30 ",.01)
 ;;00440-7654-30
 ;;9002226.02101,"1737,00440-7654-30 ",.02)
 ;;00440-7654-30
 ;;9002226.02101,"1737,00440-7672-04 ",.01)
 ;;00440-7672-04
 ;;9002226.02101,"1737,00440-7672-04 ",.02)
 ;;00440-7672-04
 ;;9002226.02101,"1737,00440-7672-08 ",.01)
 ;;00440-7672-08
 ;;9002226.02101,"1737,00440-7672-08 ",.02)
 ;;00440-7672-08
 ;;9002226.02101,"1737,00440-7672-15 ",.01)
 ;;00440-7672-15
 ;;9002226.02101,"1737,00440-7672-15 ",.02)
 ;;00440-7672-15
 ;;9002226.02101,"1737,00440-7672-20 ",.01)
 ;;00440-7672-20
 ;;9002226.02101,"1737,00440-7672-20 ",.02)
 ;;00440-7672-20
 ;;9002226.02101,"1737,00517-0601-25 ",.01)
 ;;00517-0601-25
 ;;9002226.02101,"1737,00517-0601-25 ",.02)
 ;;00517-0601-25
 ;;9002226.02101,"1737,00517-0801-25 ",.01)
 ;;00517-0801-25
 ;;9002226.02101,"1737,00517-0801-25 ",.02)
 ;;00517-0801-25
 ;;9002226.02101,"1737,00517-0902-25 ",.01)
 ;;00517-0902-25
 ;;9002226.02101,"1737,00517-0902-25 ",.02)
 ;;00517-0902-25
 ;;9002226.02101,"1737,00555-0381-02 ",.01)
 ;;00555-0381-02
 ;;9002226.02101,"1737,00555-0381-02 ",.02)
 ;;00555-0381-02
 ;;9002226.02101,"1737,00555-0382-02 ",.01)
 ;;00555-0382-02
 ;;9002226.02101,"1737,00555-0382-02 ",.02)
 ;;00555-0382-02
 ;;9002226.02101,"1737,00574-0193-01 ",.01)
 ;;00574-0193-01
 ;;9002226.02101,"1737,00574-0193-01 ",.02)
 ;;00574-0193-01
 ;;9002226.02101,"1737,00574-0193-60 ",.01)
 ;;00574-0193-60
 ;;9002226.02101,"1737,00574-0193-60 ",.02)
 ;;00574-0193-60
 ;;9002226.02101,"1737,00591-0395-01 ",.01)
 ;;00591-0395-01
 ;;9002226.02101,"1737,00591-0395-01 ",.02)
 ;;00591-0395-01
 ;;9002226.02101,"1737,00591-0396-01 ",.01)
 ;;00591-0396-01
 ;;9002226.02101,"1737,00591-0396-01 ",.02)
 ;;00591-0396-01
 ;;9002226.02101,"1737,00603-4415-21 ",.01)
 ;;00603-4415-21
 ;;9002226.02101,"1737,00603-4415-21 ",.02)
 ;;00603-4415-21
 ;;9002226.02101,"1737,00603-4416-21 ",.01)
 ;;00603-4416-21
 ;;9002226.02101,"1737,00603-4416-21 ",.02)
 ;;00603-4416-21
 ;;9002226.02101,"1737,00641-6041-01 ",.01)
 ;;00641-6041-01
 ;;9002226.02101,"1737,00641-6041-01 ",.02)
 ;;00641-6041-01
 ;;9002226.02101,"1737,00641-6041-25 ",.01)
 ;;00641-6041-25
 ;;9002226.02101,"1737,00641-6041-25 ",.02)
 ;;00641-6041-25
 ;;9002226.02101,"1737,00641-6042-01 ",.01)
 ;;00641-6042-01
 ;;9002226.02101,"1737,00641-6042-01 ",.02)
 ;;00641-6042-01
 ;;9002226.02101,"1737,00641-6042-25 ",.01)
 ;;00641-6042-25
 ;;9002226.02101,"1737,00641-6042-25 ",.02)
 ;;00641-6042-25
 ;;9002226.02101,"1737,00641-6043-01 ",.01)
 ;;00641-6043-01
 ;;9002226.02101,"1737,00641-6043-01 ",.02)
 ;;00641-6043-01
 ;;9002226.02101,"1737,00641-6043-25 ",.01)
 ;;00641-6043-25
 ;;9002226.02101,"1737,00641-6043-25 ",.02)
 ;;00641-6043-25
 ;;9002226.02101,"1737,00641-6052-01 ",.01)
 ;;00641-6052-01
 ;;9002226.02101,"1737,00641-6052-01 ",.02)
 ;;00641-6052-01
 ;;9002226.02101,"1737,00641-6052-25 ",.01)
 ;;00641-6052-25
 ;;9002226.02101,"1737,00641-6052-25 ",.02)
 ;;00641-6052-25
 ;;9002226.02101,"1737,00641-6053-01 ",.01)
 ;;00641-6053-01
 ;;9002226.02101,"1737,00641-6053-01 ",.02)
 ;;00641-6053-01
 ;;9002226.02101,"1737,00641-6053-25 ",.01)
 ;;00641-6053-25
 ;;9002226.02101,"1737,00641-6053-25 ",.02)
 ;;00641-6053-25
 ;;9002226.02101,"1737,00641-6054-01 ",.01)
 ;;00641-6054-01
 ;;9002226.02101,"1737,00641-6054-01 ",.02)
 ;;00641-6054-01
 ;;9002226.02101,"1737,00641-6054-25 ",.01)
 ;;00641-6054-25
 ;;9002226.02101,"1737,00641-6054-25 ",.02)
 ;;00641-6054-25
 ;;9002226.02101,"1737,00781-2325-01 ",.01)
 ;;00781-2325-01
 ;;9002226.02101,"1737,00781-2325-01 ",.02)
 ;;00781-2325-01
 ;;9002226.02101,"1737,00781-2325-10 ",.01)
 ;;00781-2325-10
 ;;9002226.02101,"1737,00781-2325-10 ",.02)
 ;;00781-2325-10
 ;;9002226.02101,"1737,00781-2350-01 ",.01)
 ;;00781-2350-01
 ;;9002226.02101,"1737,00781-2350-01 ",.02)
 ;;00781-2350-01
 ;;9002226.02101,"1737,00781-2350-05 ",.01)
 ;;00781-2350-05
 ;;9002226.02101,"1737,00781-2350-05 ",.02)
 ;;00781-2350-05
 ;;9002226.02101,"1737,10019-0029-02 ",.01)
 ;;10019-0029-02
 ;;9002226.02101,"1737,10019-0029-02 ",.02)
 ;;10019-0029-02
 ;;9002226.02101,"1737,10019-0029-12 ",.01)
 ;;10019-0029-12
 ;;9002226.02101,"1737,10019-0029-12 ",.02)
 ;;10019-0029-12
 ;;9002226.02101,"1737,10019-0030-03 ",.01)
 ;;10019-0030-03
 ;;9002226.02101,"1737,10019-0030-03 ",.02)
 ;;10019-0030-03
 ;;9002226.02101,"1737,10019-0030-04 ",.01)
 ;;10019-0030-04
 ;;9002226.02101,"1737,10019-0030-04 ",.02)
 ;;10019-0030-04
 ;;9002226.02101,"1737,10019-0030-12 ",.01)
 ;;10019-0030-12
 ;;9002226.02101,"1737,10019-0030-12 ",.02)
 ;;10019-0030-12
 ;;9002226.02101,"1737,10019-0030-17 ",.01)
 ;;10019-0030-17
 ;;9002226.02101,"1737,10019-0030-17 ",.02)
 ;;10019-0030-17
 ;;9002226.02101,"1737,10544-0216-21 ",.01)
 ;;10544-0216-21
 ;;9002226.02101,"1737,10544-0216-21 ",.02)
 ;;10544-0216-21
 ;;9002226.02101,"1737,10544-0222-10 ",.01)
 ;;10544-0222-10
 ;;9002226.02101,"1737,10544-0222-10 ",.02)
 ;;10544-0222-10
 ;;9002226.02101,"1737,10702-0016-01 ",.01)
 ;;10702-0016-01
 ;;9002226.02101,"1737,10702-0016-01 ",.02)
 ;;10702-0016-01
 ;;9002226.02101,"1737,10702-0016-03 ",.01)
 ;;10702-0016-03
 ;;9002226.02101,"1737,10702-0016-03 ",.02)
 ;;10702-0016-03
 ;;9002226.02101,"1737,10702-0016-06 ",.01)
 ;;10702-0016-06
 ;;9002226.02101,"1737,10702-0016-06 ",.02)
 ;;10702-0016-06
 ;;9002226.02101,"1737,10702-0016-10 ",.01)
 ;;10702-0016-10
 ;;9002226.02101,"1737,10702-0016-10 ",.02)
 ;;10702-0016-10
 ;;9002226.02101,"1737,10702-0016-50 ",.01)
 ;;10702-0016-50
 ;;9002226.02101,"1737,10702-0016-50 ",.02)
 ;;10702-0016-50
 ;;9002226.02101,"1737,16590-0129-20 ",.01)
 ;;16590-0129-20
 ;;9002226.02101,"1737,16590-0129-20 ",.02)
 ;;16590-0129-20
 ;;9002226.02101,"1737,16590-0129-30 ",.01)
 ;;16590-0129-30
 ;;9002226.02101,"1737,16590-0129-30 ",.02)
 ;;16590-0129-30
 ;;9002226.02101,"1737,16590-0129-72 ",.01)
 ;;16590-0129-72
 ;;9002226.02101,"1737,16590-0129-72 ",.02)
 ;;16590-0129-72
 ;;9002226.02101,"1737,16590-0130-15 ",.01)
 ;;16590-0130-15
 ;;9002226.02101,"1737,16590-0130-15 ",.02)
 ;;16590-0130-15
 ;;9002226.02101,"1737,16590-0130-20 ",.01)
 ;;16590-0130-20
 ;;9002226.02101,"1737,16590-0130-20 ",.02)
 ;;16590-0130-20
 ;;9002226.02101,"1737,16590-0130-28 ",.01)
 ;;16590-0130-28
 ;;9002226.02101,"1737,16590-0130-28 ",.02)
 ;;16590-0130-28
 ;;9002226.02101,"1737,16590-0130-30 ",.01)
 ;;16590-0130-30
 ;;9002226.02101,"1737,16590-0130-30 ",.02)
 ;;16590-0130-30
 ;;9002226.02101,"1737,16590-0130-60 ",.01)
 ;;16590-0130-60
 ;;9002226.02101,"1737,16590-0130-60 ",.02)
 ;;16590-0130-60
 ;;9002226.02101,"1737,16590-0131-20 ",.01)
 ;;16590-0131-20
 ;;9002226.02101,"1737,16590-0131-20 ",.02)
 ;;16590-0131-20
 ;;9002226.02101,"1737,16590-0131-30 ",.01)
 ;;16590-0131-30
 ;;9002226.02101,"1737,16590-0131-30 ",.02)
 ;;16590-0131-30
 ;;9002226.02101,"1737,16590-0131-60 ",.01)
 ;;16590-0131-60
 ;;9002226.02101,"1737,16590-0131-60 ",.02)
 ;;16590-0131-60
 ;;9002226.02101,"1737,16590-0138-10 ",.01)
 ;;16590-0138-10
 ;;9002226.02101,"1737,16590-0138-10 ",.02)
 ;;16590-0138-10
 ;;9002226.02101,"1737,16590-0138-15 ",.01)
 ;;16590-0138-15
 ;;9002226.02101,"1737,16590-0138-15 ",.02)
 ;;16590-0138-15
 ;;9002226.02101,"1737,16590-0138-20 ",.01)
 ;;16590-0138-20
 ;;9002226.02101,"1737,16590-0138-20 ",.02)
 ;;16590-0138-20
 ;;9002226.02101,"1737,16590-0138-30 ",.01)
 ;;16590-0138-30
 ;;9002226.02101,"1737,16590-0138-30 ",.02)
 ;;16590-0138-30
 ;;9002226.02101,"1737,16590-0138-40 ",.01)
 ;;16590-0138-40
 ;;9002226.02101,"1737,16590-0138-40 ",.02)
 ;;16590-0138-40
 ;;9002226.02101,"1737,16590-0138-60 ",.01)
 ;;16590-0138-60
 ;;9002226.02101,"1737,16590-0138-60 ",.02)
 ;;16590-0138-60
 ;;9002226.02101,"1737,16590-0556-30 ",.01)
 ;;16590-0556-30
 ;;9002226.02101,"1737,16590-0556-30 ",.02)
 ;;16590-0556-30
 ;;9002226.02101,"1737,16590-0556-40 ",.01)
 ;;16590-0556-40
 ;;9002226.02101,"1737,16590-0556-40 ",.02)
 ;;16590-0556-40
 ;;9002226.02101,"1737,16590-0556-60 ",.01)
 ;;16590-0556-60
 ;;9002226.02101,"1737,16590-0556-60 ",.02)
 ;;16590-0556-60
 ;;9002226.02101,"1737,16590-0556-72 ",.01)
 ;;16590-0556-72
 ;;9002226.02101,"1737,16590-0556-72 ",.02)
 ;;16590-0556-72
 ;;9002226.02101,"1737,16590-0556-90 ",.01)
 ;;16590-0556-90
 ;;9002226.02101,"1737,16590-0556-90 ",.02)
 ;;16590-0556-90
 ;;9002226.02101,"1737,16590-0582-30 ",.01)
 ;;16590-0582-30
 ;;9002226.02101,"1737,16590-0582-30 ",.02)
 ;;16590-0582-30
 ;;9002226.02101,"1737,16590-0582-60 ",.01)
 ;;16590-0582-60
 ;;9002226.02101,"1737,16590-0582-60 ",.02)
 ;;16590-0582-60
 ;;9002226.02101,"1737,16590-0582-72 ",.01)
 ;;16590-0582-72
