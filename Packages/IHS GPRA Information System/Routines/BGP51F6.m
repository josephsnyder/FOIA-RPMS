BGP51F6 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON AUG 19, 2014;
 ;;15.1;IHS CLINICAL REPORTING;;MAY 06, 2015;Build 143
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"618,00517-5610-25 ",.01)
 ;;00517-5610-25
 ;;9002226.02101,"618,00517-5610-25 ",.02)
 ;;00517-5610-25
 ;;9002226.02101,"618,00525-6748-01 ",.01)
 ;;00525-6748-01
 ;;9002226.02101,"618,00525-6748-01 ",.02)
 ;;00525-6748-01
 ;;9002226.02101,"618,00525-6752-16 ",.01)
 ;;00525-6752-16
 ;;9002226.02101,"618,00525-6752-16 ",.02)
 ;;00525-6752-16
 ;;9002226.02101,"618,00555-0059-02 ",.01)
 ;;00555-0059-02
 ;;9002226.02101,"618,00555-0059-02 ",.02)
 ;;00555-0059-02
 ;;9002226.02101,"618,00555-0059-05 ",.01)
 ;;00555-0059-05
 ;;9002226.02101,"618,00555-0059-05 ",.02)
 ;;00555-0059-05
 ;;9002226.02101,"618,00555-0302-02 ",.01)
 ;;00555-0302-02
 ;;9002226.02101,"618,00555-0302-02 ",.02)
 ;;00555-0302-02
 ;;9002226.02101,"618,00555-0302-04 ",.01)
 ;;00555-0302-04
 ;;9002226.02101,"618,00555-0302-04 ",.02)
 ;;00555-0302-04
 ;;9002226.02101,"618,00555-0323-02 ",.01)
 ;;00555-0323-02
 ;;9002226.02101,"618,00555-0323-02 ",.02)
 ;;00555-0323-02
 ;;9002226.02101,"618,00555-0323-04 ",.01)
 ;;00555-0323-04
 ;;9002226.02101,"618,00555-0323-04 ",.02)
 ;;00555-0323-04
 ;;9002226.02101,"618,00555-0324-02 ",.01)
 ;;00555-0324-02
 ;;9002226.02101,"618,00555-0324-02 ",.02)
 ;;00555-0324-02
 ;;9002226.02101,"618,00574-7234-12 ",.01)
 ;;00574-7234-12
 ;;9002226.02101,"618,00574-7234-12 ",.02)
 ;;00574-7234-12
 ;;9002226.02101,"618,00574-7236-12 ",.01)
 ;;00574-7236-12
 ;;9002226.02101,"618,00574-7236-12 ",.02)
 ;;00574-7236-12
 ;;9002226.02101,"618,00576-0131-08 ",.01)
 ;;00576-0131-08
 ;;9002226.02101,"618,00576-0131-08 ",.02)
 ;;00576-0131-08
 ;;9002226.02101,"618,00591-0800-01 ",.01)
 ;;00591-0800-01
 ;;9002226.02101,"618,00591-0800-01 ",.02)
 ;;00591-0800-01
 ;;9002226.02101,"618,00591-0800-05 ",.01)
 ;;00591-0800-05
 ;;9002226.02101,"618,00591-0800-05 ",.02)
 ;;00591-0800-05
 ;;9002226.02101,"618,00591-0801-01 ",.01)
 ;;00591-0801-01
 ;;9002226.02101,"618,00591-0801-01 ",.02)
 ;;00591-0801-01
 ;;9002226.02101,"618,00591-0801-05 ",.01)
 ;;00591-0801-05
 ;;9002226.02101,"618,00591-0801-05 ",.02)
 ;;00591-0801-05
 ;;9002226.02101,"618,00591-2160-39 ",.01)
 ;;00591-2160-39
 ;;9002226.02101,"618,00591-2160-39 ",.02)
 ;;00591-2160-39
 ;;9002226.02101,"618,00591-2161-39 ",.01)
 ;;00591-2161-39
 ;;9002226.02101,"618,00591-2161-39 ",.02)
 ;;00591-2161-39
 ;;9002226.02101,"618,00591-3423-01 ",.01)
 ;;00591-3423-01
 ;;9002226.02101,"618,00591-3423-01 ",.02)
 ;;00591-3423-01
 ;;9002226.02101,"618,00591-3423-05 ",.01)
 ;;00591-3423-05
 ;;9002226.02101,"618,00591-3423-05 ",.02)
 ;;00591-3423-05
 ;;9002226.02101,"618,00591-3423-10 ",.01)
 ;;00591-3423-10
 ;;9002226.02101,"618,00591-3423-10 ",.02)
 ;;00591-3423-10
 ;;9002226.02101,"618,00591-5307-01 ",.01)
 ;;00591-5307-01
 ;;9002226.02101,"618,00591-5307-01 ",.02)
 ;;00591-5307-01
 ;;9002226.02101,"618,00591-5307-10 ",.01)
 ;;00591-5307-10
 ;;9002226.02101,"618,00591-5307-10 ",.02)
 ;;00591-5307-10
 ;;9002226.02101,"618,00591-5319-01 ",.01)
 ;;00591-5319-01
 ;;9002226.02101,"618,00591-5319-01 ",.02)
 ;;00591-5319-01
 ;;9002226.02101,"618,00591-5335-01 ",.01)
 ;;00591-5335-01
 ;;9002226.02101,"618,00591-5335-01 ",.02)
 ;;00591-5335-01
 ;;9002226.02101,"618,00591-5335-10 ",.01)
 ;;00591-5335-10
 ;;9002226.02101,"618,00591-5335-10 ",.02)
 ;;00591-5335-10
 ;;9002226.02101,"618,00591-5337-01 ",.01)
 ;;00591-5337-01
 ;;9002226.02101,"618,00591-5337-01 ",.02)
 ;;00591-5337-01
 ;;9002226.02101,"618,00591-5337-10 ",.01)
 ;;00591-5337-10
 ;;9002226.02101,"618,00591-5337-10 ",.02)
 ;;00591-5337-10
 ;;9002226.02101,"618,00591-5522-01 ",.01)
 ;;00591-5522-01
 ;;9002226.02101,"618,00591-5522-01 ",.02)
 ;;00591-5522-01
 ;;9002226.02101,"618,00591-5522-05 ",.01)
 ;;00591-5522-05
 ;;9002226.02101,"618,00591-5522-05 ",.02)
 ;;00591-5522-05
 ;;9002226.02101,"618,00591-5523-01 ",.01)
 ;;00591-5523-01
 ;;9002226.02101,"618,00591-5523-01 ",.02)
 ;;00591-5523-01
 ;;9002226.02101,"618,00591-5523-05 ",.01)
 ;;00591-5523-05
 ;;9002226.02101,"618,00591-5523-05 ",.02)
 ;;00591-5523-05
 ;;9002226.02101,"618,00591-5523-10 ",.01)
 ;;00591-5523-10
 ;;9002226.02101,"618,00591-5523-10 ",.02)
 ;;00591-5523-10
 ;;9002226.02101,"618,00603-1096-54 ",.01)
 ;;00603-1096-54
 ;;9002226.02101,"618,00603-1096-54 ",.02)
 ;;00603-1096-54
 ;;9002226.02101,"618,00603-1310-54 ",.01)
 ;;00603-1310-54
 ;;9002226.02101,"618,00603-1310-54 ",.02)
 ;;00603-1310-54
 ;;9002226.02101,"618,00603-1310-58 ",.01)
 ;;00603-1310-58
 ;;9002226.02101,"618,00603-1310-58 ",.02)
 ;;00603-1310-58
 ;;9002226.02101,"618,00603-1584-54 ",.01)
 ;;00603-1584-54
 ;;9002226.02101,"618,00603-1584-54 ",.02)
 ;;00603-1584-54
 ;;9002226.02101,"618,00603-1584-58 ",.01)
 ;;00603-1584-58
 ;;9002226.02101,"618,00603-1584-58 ",.02)
 ;;00603-1584-58
 ;;9002226.02101,"618,00603-1585-54 ",.01)
 ;;00603-1585-54
 ;;9002226.02101,"618,00603-1585-54 ",.02)
 ;;00603-1585-54
 ;;9002226.02101,"618,00603-1585-58 ",.01)
 ;;00603-1585-58
 ;;9002226.02101,"618,00603-1585-58 ",.02)
 ;;00603-1585-58
 ;;9002226.02101,"618,00603-1586-54 ",.01)
 ;;00603-1586-54
 ;;9002226.02101,"618,00603-1586-54 ",.02)
 ;;00603-1586-54
 ;;9002226.02101,"618,00603-1586-58 ",.01)
 ;;00603-1586-58
 ;;9002226.02101,"618,00603-1586-58 ",.02)
 ;;00603-1586-58
 ;;9002226.02101,"618,00603-1587-54 ",.01)
 ;;00603-1587-54
 ;;9002226.02101,"618,00603-1587-54 ",.02)
 ;;00603-1587-54
 ;;9002226.02101,"618,00603-1587-58 ",.01)
 ;;00603-1587-58
 ;;9002226.02101,"618,00603-1587-58 ",.02)
 ;;00603-1587-58
 ;;9002226.02101,"618,00603-1588-54 ",.01)
 ;;00603-1588-54
 ;;9002226.02101,"618,00603-1588-54 ",.02)
 ;;00603-1588-54
 ;;9002226.02101,"618,00603-1588-58 ",.01)
 ;;00603-1588-58
 ;;9002226.02101,"618,00603-1588-58 ",.02)
 ;;00603-1588-58
 ;;9002226.02101,"618,00603-2433-21 ",.01)
 ;;00603-2433-21
 ;;9002226.02101,"618,00603-2433-21 ",.02)
 ;;00603-2433-21
 ;;9002226.02101,"618,00603-2433-32 ",.01)
 ;;00603-2433-32
 ;;9002226.02101,"618,00603-2433-32 ",.02)
 ;;00603-2433-32
 ;;9002226.02101,"618,00603-2434-21 ",.01)
 ;;00603-2434-21
 ;;9002226.02101,"618,00603-2434-21 ",.02)
 ;;00603-2434-21
 ;;9002226.02101,"618,00603-2434-32 ",.01)
 ;;00603-2434-32
 ;;9002226.02101,"618,00603-2434-32 ",.02)
 ;;00603-2434-32
 ;;9002226.02101,"618,00603-2435-21 ",.01)
 ;;00603-2435-21
 ;;9002226.02101,"618,00603-2435-21 ",.02)
 ;;00603-2435-21
 ;;9002226.02101,"618,00603-2435-32 ",.01)
 ;;00603-2435-32
 ;;9002226.02101,"618,00603-2435-32 ",.02)
 ;;00603-2435-32
 ;;9002226.02101,"618,00603-3967-21 ",.01)
 ;;00603-3967-21
 ;;9002226.02101,"618,00603-3967-21 ",.02)
 ;;00603-3967-21
 ;;9002226.02101,"618,00603-3967-28 ",.01)
 ;;00603-3967-28
 ;;9002226.02101,"618,00603-3967-28 ",.02)
 ;;00603-3967-28
 ;;9002226.02101,"618,00603-3967-32 ",.01)
 ;;00603-3967-32
 ;;9002226.02101,"618,00603-3967-32 ",.02)
 ;;00603-3967-32
 ;;9002226.02101,"618,00603-3968-21 ",.01)
 ;;00603-3968-21
 ;;9002226.02101,"618,00603-3968-21 ",.02)
 ;;00603-3968-21
 ;;9002226.02101,"618,00603-3968-28 ",.01)
 ;;00603-3968-28
 ;;9002226.02101,"618,00603-3968-28 ",.02)
 ;;00603-3968-28
 ;;9002226.02101,"618,00603-3968-32 ",.01)
 ;;00603-3968-32
 ;;9002226.02101,"618,00603-3968-32 ",.02)
 ;;00603-3968-32
 ;;9002226.02101,"618,00603-3969-21 ",.01)
 ;;00603-3969-21
 ;;9002226.02101,"618,00603-3969-21 ",.02)
 ;;00603-3969-21
 ;;9002226.02101,"618,00603-3969-28 ",.01)
 ;;00603-3969-28
 ;;9002226.02101,"618,00603-3969-28 ",.02)
 ;;00603-3969-28
 ;;9002226.02101,"618,00603-5437-21 ",.01)
 ;;00603-5437-21
 ;;9002226.02101,"618,00603-5437-21 ",.02)
 ;;00603-5437-21
 ;;9002226.02101,"618,00603-5438-21 ",.01)
 ;;00603-5438-21
 ;;9002226.02101,"618,00603-5438-21 ",.02)
 ;;00603-5438-21
 ;;9002226.02101,"618,00603-5438-30 ",.01)
 ;;00603-5438-30
 ;;9002226.02101,"618,00603-5438-30 ",.02)
 ;;00603-5438-30
 ;;9002226.02101,"618,00603-5438-32 ",.01)
 ;;00603-5438-32
 ;;9002226.02101,"618,00603-5438-32 ",.02)
 ;;00603-5438-32
 ;;9002226.02101,"618,00603-5439-21 ",.01)
 ;;00603-5439-21
 ;;9002226.02101,"618,00603-5439-21 ",.02)
 ;;00603-5439-21
 ;;9002226.02101,"618,00603-6240-21 ",.01)
 ;;00603-6240-21
 ;;9002226.02101,"618,00603-6240-21 ",.02)
 ;;00603-6240-21
 ;;9002226.02101,"618,00603-6240-32 ",.01)
 ;;00603-6240-32
 ;;9002226.02101,"618,00603-6240-32 ",.02)
 ;;00603-6240-32
 ;;9002226.02101,"618,00603-6241-21 ",.01)
 ;;00603-6241-21
 ;;9002226.02101,"618,00603-6241-21 ",.02)
 ;;00603-6241-21
 ;;9002226.02101,"618,00603-6241-32 ",.01)
 ;;00603-6241-32
 ;;9002226.02101,"618,00603-6241-32 ",.02)
 ;;00603-6241-32
 ;;9002226.02101,"618,00641-0928-21 ",.01)
 ;;00641-0928-21
 ;;9002226.02101,"618,00641-0928-21 ",.02)
 ;;00641-0928-21
 ;;9002226.02101,"618,00641-0928-25 ",.01)
 ;;00641-0928-25
 ;;9002226.02101,"618,00641-0928-25 ",.02)
 ;;00641-0928-25
 ;;9002226.02101,"618,00641-0929-21 ",.01)
 ;;00641-0929-21
 ;;9002226.02101,"618,00641-0929-21 ",.02)
 ;;00641-0929-21
 ;;9002226.02101,"618,00641-0929-25 ",.01)
 ;;00641-0929-25
 ;;9002226.02101,"618,00641-0929-25 ",.02)
 ;;00641-0929-25
 ;;9002226.02101,"618,00641-0948-31 ",.01)
 ;;00641-0948-31
 ;;9002226.02101,"618,00641-0948-31 ",.02)
 ;;00641-0948-31
 ;;9002226.02101,"618,00641-0948-35 ",.01)
 ;;00641-0948-35
 ;;9002226.02101,"618,00641-0948-35 ",.02)
 ;;00641-0948-35
 ;;9002226.02101,"618,00641-0949-31 ",.01)
 ;;00641-0949-31
 ;;9002226.02101,"618,00641-0949-31 ",.02)
 ;;00641-0949-31
 ;;9002226.02101,"618,00641-0949-35 ",.01)
 ;;00641-0949-35
 ;;9002226.02101,"618,00641-0949-35 ",.02)
 ;;00641-0949-35
 ;;9002226.02101,"618,00641-0955-21 ",.01)
 ;;00641-0955-21
 ;;9002226.02101,"618,00641-0955-21 ",.02)
 ;;00641-0955-21
 ;;9002226.02101,"618,00641-0955-25 ",.01)
 ;;00641-0955-25
 ;;9002226.02101,"618,00641-0955-25 ",.02)
 ;;00641-0955-25
 ;;9002226.02101,"618,00641-0956-21 ",.01)
 ;;00641-0956-21
 ;;9002226.02101,"618,00641-0956-21 ",.02)
 ;;00641-0956-21
 ;;9002226.02101,"618,00641-0956-25 ",.01)
 ;;00641-0956-25
 ;;9002226.02101,"618,00641-0956-25 ",.02)
 ;;00641-0956-25
 ;;9002226.02101,"618,00641-1495-31 ",.01)
 ;;00641-1495-31
 ;;9002226.02101,"618,00641-1495-31 ",.02)
 ;;00641-1495-31
 ;;9002226.02101,"618,00641-1495-35 ",.01)
 ;;00641-1495-35
 ;;9002226.02101,"618,00641-1495-35 ",.02)
 ;;00641-1495-35
 ;;9002226.02101,"618,00641-1496-31 ",.01)
 ;;00641-1496-31
 ;;9002226.02101,"618,00641-1496-31 ",.02)
 ;;00641-1496-31
 ;;9002226.02101,"618,00641-1496-35 ",.01)
 ;;00641-1496-35
 ;;9002226.02101,"618,00641-1496-35 ",.02)
 ;;00641-1496-35
 ;;9002226.02101,"618,00641-6082-01 ",.01)
 ;;00641-6082-01
 ;;9002226.02101,"618,00641-6082-01 ",.02)
 ;;00641-6082-01
 ;;9002226.02101,"618,00641-6082-25 ",.01)
 ;;00641-6082-25
 ;;9002226.02101,"618,00641-6082-25 ",.02)
 ;;00641-6082-25
 ;;9002226.02101,"618,00641-6083-01 ",.01)
 ;;00641-6083-01
 ;;9002226.02101,"618,00641-6083-01 ",.02)
 ;;00641-6083-01
 ;;9002226.02101,"618,00641-6083-25 ",.01)
 ;;00641-6083-25
 ;;9002226.02101,"618,00641-6083-25 ",.02)
 ;;00641-6083-25
 ;;9002226.02101,"618,00641-6084-01 ",.01)
 ;;00641-6084-01
 ;;9002226.02101,"618,00641-6084-01 ",.02)
 ;;00641-6084-01
 ;;9002226.02101,"618,00641-6084-25 ",.01)
 ;;00641-6084-25
 ;;9002226.02101,"618,00641-6084-25 ",.02)
 ;;00641-6084-25
 ;;9002226.02101,"618,00641-6085-01 ",.01)
 ;;00641-6085-01
 ;;9002226.02101,"618,00641-6085-01 ",.02)
 ;;00641-6085-01
 ;;9002226.02101,"618,00641-6085-25 ",.01)
 ;;00641-6085-25
 ;;9002226.02101,"618,00641-6085-25 ",.02)
 ;;00641-6085-25
 ;;9002226.02101,"618,00641-6099-01 ",.01)
 ;;00641-6099-01
 ;;9002226.02101,"618,00641-6099-01 ",.02)
 ;;00641-6099-01
 ;;9002226.02101,"618,00641-6099-25 ",.01)
 ;;00641-6099-25
 ;;9002226.02101,"618,00641-6099-25 ",.02)
 ;;00641-6099-25
 ;;9002226.02101,"618,00682-0480-16 ",.01)
 ;;00682-0480-16
 ;;9002226.02101,"618,00682-0480-16 ",.02)
 ;;00682-0480-16
 ;;9002226.02101,"618,00703-2191-01 ",.01)
 ;;00703-2191-01
 ;;9002226.02101,"618,00703-2191-01 ",.02)
 ;;00703-2191-01
 ;;9002226.02101,"618,00703-2191-04 ",.01)
 ;;00703-2191-04
 ;;9002226.02101,"618,00703-2191-04 ",.02)
 ;;00703-2191-04
 ;;9002226.02101,"618,00703-2201-01 ",.01)
 ;;00703-2201-01
 ;;9002226.02101,"618,00703-2201-01 ",.02)
 ;;00703-2201-01
 ;;9002226.02101,"618,00703-2201-04 ",.01)
 ;;00703-2201-04
 ;;9002226.02101,"618,00703-2201-04 ",.02)
 ;;00703-2201-04
 ;;9002226.02101,"618,00713-0132-12 ",.01)
 ;;00713-0132-12
 ;;9002226.02101,"618,00713-0132-12 ",.02)
 ;;00713-0132-12
 ;;9002226.02101,"618,00713-0526-10 ",.01)
 ;;00713-0526-10
 ;;9002226.02101,"618,00713-0526-10 ",.02)
 ;;00713-0526-10
 ;;9002226.02101,"618,00713-0526-12 ",.01)
 ;;00713-0526-12
 ;;9002226.02101,"618,00713-0526-12 ",.02)
 ;;00713-0526-12
 ;;9002226.02101,"618,00713-0536-12 ",.01)
 ;;00713-0536-12
 ;;9002226.02101,"618,00713-0536-12 ",.02)
 ;;00713-0536-12
 ;;9002226.02101,"618,00781-1359-01 ",.01)
 ;;00781-1359-01
 ;;9002226.02101,"618,00781-1359-01 ",.02)
 ;;00781-1359-01
 ;;9002226.02101,"618,00781-1830-01 ",.01)
 ;;00781-1830-01
 ;;9002226.02101,"618,00781-1830-01 ",.02)
 ;;00781-1830-01
 ;;9002226.02101,"618,00781-1830-10 ",.01)
 ;;00781-1830-10
 ;;9002226.02101,"618,00781-1830-10 ",.02)
 ;;00781-1830-10
 ;;9002226.02101,"618,00781-1832-01 ",.01)
 ;;00781-1832-01
 ;;9002226.02101,"618,00781-1832-01 ",.02)
 ;;00781-1832-01
 ;;9002226.02101,"618,00832-1080-00 ",.01)
 ;;00832-1080-00
 ;;9002226.02101,"618,00832-1080-00 ",.02)
 ;;00832-1080-00
 ;;9002226.02101,"618,00832-1080-10 ",.01)
 ;;00832-1080-10
 ;;9002226.02101,"618,00832-1080-10 ",.02)
 ;;00832-1080-10
