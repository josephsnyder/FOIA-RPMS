ATXXB120 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON APR 29, 2014;
 ;;5.1;TAXONOMY;**11**;FEB 04, 1997;Build 48
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"1804,0WP64KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP64YZ ",.01)
 ;;0WP64YZ 
 ;;9002226.02101,"1804,0WP64YZ ",.02)
 ;;0WP64YZ 
 ;;9002226.02101,"1804,0WP64YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6X0Z ",.01)
 ;;0WP6X0Z 
 ;;9002226.02101,"1804,0WP6X0Z ",.02)
 ;;0WP6X0Z 
 ;;9002226.02101,"1804,0WP6X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6X1Z ",.01)
 ;;0WP6X1Z 
 ;;9002226.02101,"1804,0WP6X1Z ",.02)
 ;;0WP6X1Z 
 ;;9002226.02101,"1804,0WP6X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6X3Z ",.01)
 ;;0WP6X3Z 
 ;;9002226.02101,"1804,0WP6X3Z ",.02)
 ;;0WP6X3Z 
 ;;9002226.02101,"1804,0WP6X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6X7Z ",.01)
 ;;0WP6X7Z 
 ;;9002226.02101,"1804,0WP6X7Z ",.02)
 ;;0WP6X7Z 
 ;;9002226.02101,"1804,0WP6X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6XJZ ",.01)
 ;;0WP6XJZ 
 ;;9002226.02101,"1804,0WP6XJZ ",.02)
 ;;0WP6XJZ 
 ;;9002226.02101,"1804,0WP6XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6XKZ ",.01)
 ;;0WP6XKZ 
 ;;9002226.02101,"1804,0WP6XKZ ",.02)
 ;;0WP6XKZ 
 ;;9002226.02101,"1804,0WP6XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP6XYZ ",.01)
 ;;0WP6XYZ 
 ;;9002226.02101,"1804,0WP6XYZ ",.02)
 ;;0WP6XYZ 
 ;;9002226.02101,"1804,0WP6XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8X0Z ",.01)
 ;;0WP8X0Z 
 ;;9002226.02101,"1804,0WP8X0Z ",.02)
 ;;0WP8X0Z 
 ;;9002226.02101,"1804,0WP8X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8X1Z ",.01)
 ;;0WP8X1Z 
 ;;9002226.02101,"1804,0WP8X1Z ",.02)
 ;;0WP8X1Z 
 ;;9002226.02101,"1804,0WP8X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8X3Z ",.01)
 ;;0WP8X3Z 
 ;;9002226.02101,"1804,0WP8X3Z ",.02)
 ;;0WP8X3Z 
 ;;9002226.02101,"1804,0WP8X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8X7Z ",.01)
 ;;0WP8X7Z 
 ;;9002226.02101,"1804,0WP8X7Z ",.02)
 ;;0WP8X7Z 
 ;;9002226.02101,"1804,0WP8X7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8XJZ ",.01)
 ;;0WP8XJZ 
 ;;9002226.02101,"1804,0WP8XJZ ",.02)
 ;;0WP8XJZ 
 ;;9002226.02101,"1804,0WP8XJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8XKZ ",.01)
 ;;0WP8XKZ 
 ;;9002226.02101,"1804,0WP8XKZ ",.02)
 ;;0WP8XKZ 
 ;;9002226.02101,"1804,0WP8XKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP8XYZ ",.01)
 ;;0WP8XYZ 
 ;;9002226.02101,"1804,0WP8XYZ ",.02)
 ;;0WP8XYZ 
 ;;9002226.02101,"1804,0WP8XYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP9X0Z ",.01)
 ;;0WP9X0Z 
 ;;9002226.02101,"1804,0WP9X0Z ",.02)
 ;;0WP9X0Z 
 ;;9002226.02101,"1804,0WP9X0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP9X1Z ",.01)
 ;;0WP9X1Z 
 ;;9002226.02101,"1804,0WP9X1Z ",.02)
 ;;0WP9X1Z 
 ;;9002226.02101,"1804,0WP9X1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WP9X3Z ",.01)
 ;;0WP9X3Z 
 ;;9002226.02101,"1804,0WP9X3Z ",.02)
 ;;0WP9X3Z 
 ;;9002226.02101,"1804,0WP9X3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPBX0Z ",.01)
 ;;0WPBX0Z 
 ;;9002226.02101,"1804,0WPBX0Z ",.02)
 ;;0WPBX0Z 
 ;;9002226.02101,"1804,0WPBX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPBX1Z ",.01)
 ;;0WPBX1Z 
 ;;9002226.02101,"1804,0WPBX1Z ",.02)
 ;;0WPBX1Z 
 ;;9002226.02101,"1804,0WPBX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPBX3Z ",.01)
 ;;0WPBX3Z 
 ;;9002226.02101,"1804,0WPBX3Z ",.02)
 ;;0WPBX3Z 
 ;;9002226.02101,"1804,0WPBX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCX0Z ",.01)
 ;;0WPCX0Z 
 ;;9002226.02101,"1804,0WPCX0Z ",.02)
 ;;0WPCX0Z 
 ;;9002226.02101,"1804,0WPCX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCX1Z ",.01)
 ;;0WPCX1Z 
 ;;9002226.02101,"1804,0WPCX1Z ",.02)
 ;;0WPCX1Z 
 ;;9002226.02101,"1804,0WPCX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCX3Z ",.01)
 ;;0WPCX3Z 
 ;;9002226.02101,"1804,0WPCX3Z ",.02)
 ;;0WPCX3Z 
 ;;9002226.02101,"1804,0WPCX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCX7Z ",.01)
 ;;0WPCX7Z 
 ;;9002226.02101,"1804,0WPCX7Z ",.02)
 ;;0WPCX7Z 
 ;;9002226.02101,"1804,0WPCX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCXJZ ",.01)
 ;;0WPCXJZ 
 ;;9002226.02101,"1804,0WPCXJZ ",.02)
 ;;0WPCXJZ 
 ;;9002226.02101,"1804,0WPCXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCXKZ ",.01)
 ;;0WPCXKZ 
 ;;9002226.02101,"1804,0WPCXKZ ",.02)
 ;;0WPCXKZ 
 ;;9002226.02101,"1804,0WPCXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPCXYZ ",.01)
 ;;0WPCXYZ 
 ;;9002226.02101,"1804,0WPCXYZ ",.02)
 ;;0WPCXYZ 
 ;;9002226.02101,"1804,0WPCXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPDX0Z ",.01)
 ;;0WPDX0Z 
 ;;9002226.02101,"1804,0WPDX0Z ",.02)
 ;;0WPDX0Z 
 ;;9002226.02101,"1804,0WPDX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPDX1Z ",.01)
 ;;0WPDX1Z 
 ;;9002226.02101,"1804,0WPDX1Z ",.02)
 ;;0WPDX1Z 
 ;;9002226.02101,"1804,0WPDX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPDX3Z ",.01)
 ;;0WPDX3Z 
 ;;9002226.02101,"1804,0WPDX3Z ",.02)
 ;;0WPDX3Z 
 ;;9002226.02101,"1804,0WPDX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFX0Z ",.01)
 ;;0WPFX0Z 
 ;;9002226.02101,"1804,0WPFX0Z ",.02)
 ;;0WPFX0Z 
 ;;9002226.02101,"1804,0WPFX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFX1Z ",.01)
 ;;0WPFX1Z 
 ;;9002226.02101,"1804,0WPFX1Z ",.02)
 ;;0WPFX1Z 
 ;;9002226.02101,"1804,0WPFX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFX3Z ",.01)
 ;;0WPFX3Z 
 ;;9002226.02101,"1804,0WPFX3Z ",.02)
 ;;0WPFX3Z 
 ;;9002226.02101,"1804,0WPFX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFX7Z ",.01)
 ;;0WPFX7Z 
 ;;9002226.02101,"1804,0WPFX7Z ",.02)
 ;;0WPFX7Z 
 ;;9002226.02101,"1804,0WPFX7Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFXJZ ",.01)
 ;;0WPFXJZ 
 ;;9002226.02101,"1804,0WPFXJZ ",.02)
 ;;0WPFXJZ 
 ;;9002226.02101,"1804,0WPFXJZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFXKZ ",.01)
 ;;0WPFXKZ 
 ;;9002226.02101,"1804,0WPFXKZ ",.02)
 ;;0WPFXKZ 
 ;;9002226.02101,"1804,0WPFXKZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPFXYZ ",.01)
 ;;0WPFXYZ 
 ;;9002226.02101,"1804,0WPFXYZ ",.02)
 ;;0WPFXYZ 
 ;;9002226.02101,"1804,0WPFXYZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPGX0Z ",.01)
 ;;0WPGX0Z 
 ;;9002226.02101,"1804,0WPGX0Z ",.02)
 ;;0WPGX0Z 
 ;;9002226.02101,"1804,0WPGX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPGX1Z ",.01)
 ;;0WPGX1Z 
 ;;9002226.02101,"1804,0WPGX1Z ",.02)
 ;;0WPGX1Z 
 ;;9002226.02101,"1804,0WPGX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPGX3Z ",.01)
 ;;0WPGX3Z 
 ;;9002226.02101,"1804,0WPGX3Z ",.02)
 ;;0WPGX3Z 
 ;;9002226.02101,"1804,0WPGX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPHX0Z ",.01)
 ;;0WPHX0Z 
 ;;9002226.02101,"1804,0WPHX0Z ",.02)
 ;;0WPHX0Z 
 ;;9002226.02101,"1804,0WPHX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPHX1Z ",.01)
 ;;0WPHX1Z 
 ;;9002226.02101,"1804,0WPHX1Z ",.02)
 ;;0WPHX1Z 
 ;;9002226.02101,"1804,0WPHX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPHX3Z ",.01)
 ;;0WPHX3Z 
 ;;9002226.02101,"1804,0WPHX3Z ",.02)
 ;;0WPHX3Z 
 ;;9002226.02101,"1804,0WPHX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ00Z ",.01)
 ;;0WPJ00Z 
 ;;9002226.02101,"1804,0WPJ00Z ",.02)
 ;;0WPJ00Z 
 ;;9002226.02101,"1804,0WPJ00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ01Z ",.01)
 ;;0WPJ01Z 
 ;;9002226.02101,"1804,0WPJ01Z ",.02)
 ;;0WPJ01Z 
 ;;9002226.02101,"1804,0WPJ01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ03Z ",.01)
 ;;0WPJ03Z 
 ;;9002226.02101,"1804,0WPJ03Z ",.02)
 ;;0WPJ03Z 
 ;;9002226.02101,"1804,0WPJ03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ0JZ ",.01)
 ;;0WPJ0JZ 
 ;;9002226.02101,"1804,0WPJ0JZ ",.02)
 ;;0WPJ0JZ 
 ;;9002226.02101,"1804,0WPJ0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ0YZ ",.01)
 ;;0WPJ0YZ 
 ;;9002226.02101,"1804,0WPJ0YZ ",.02)
 ;;0WPJ0YZ 
 ;;9002226.02101,"1804,0WPJ0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ30Z ",.01)
 ;;0WPJ30Z 
 ;;9002226.02101,"1804,0WPJ30Z ",.02)
 ;;0WPJ30Z 
 ;;9002226.02101,"1804,0WPJ30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ31Z ",.01)
 ;;0WPJ31Z 
 ;;9002226.02101,"1804,0WPJ31Z ",.02)
 ;;0WPJ31Z 
 ;;9002226.02101,"1804,0WPJ31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ33Z ",.01)
 ;;0WPJ33Z 
 ;;9002226.02101,"1804,0WPJ33Z ",.02)
 ;;0WPJ33Z 
 ;;9002226.02101,"1804,0WPJ33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ3JZ ",.01)
 ;;0WPJ3JZ 
 ;;9002226.02101,"1804,0WPJ3JZ ",.02)
 ;;0WPJ3JZ 
 ;;9002226.02101,"1804,0WPJ3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ3YZ ",.01)
 ;;0WPJ3YZ 
 ;;9002226.02101,"1804,0WPJ3YZ ",.02)
 ;;0WPJ3YZ 
 ;;9002226.02101,"1804,0WPJ3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ40Z ",.01)
 ;;0WPJ40Z 
 ;;9002226.02101,"1804,0WPJ40Z ",.02)
 ;;0WPJ40Z 
 ;;9002226.02101,"1804,0WPJ40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ41Z ",.01)
 ;;0WPJ41Z 
 ;;9002226.02101,"1804,0WPJ41Z ",.02)
 ;;0WPJ41Z 
 ;;9002226.02101,"1804,0WPJ41Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ43Z ",.01)
 ;;0WPJ43Z 
 ;;9002226.02101,"1804,0WPJ43Z ",.02)
 ;;0WPJ43Z 
 ;;9002226.02101,"1804,0WPJ43Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ4JZ ",.01)
 ;;0WPJ4JZ 
 ;;9002226.02101,"1804,0WPJ4JZ ",.02)
 ;;0WPJ4JZ 
 ;;9002226.02101,"1804,0WPJ4JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJ4YZ ",.01)
 ;;0WPJ4YZ 
 ;;9002226.02101,"1804,0WPJ4YZ ",.02)
 ;;0WPJ4YZ 
 ;;9002226.02101,"1804,0WPJ4YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJX0Z ",.01)
 ;;0WPJX0Z 
 ;;9002226.02101,"1804,0WPJX0Z ",.02)
 ;;0WPJX0Z 
 ;;9002226.02101,"1804,0WPJX0Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJX1Z ",.01)
 ;;0WPJX1Z 
 ;;9002226.02101,"1804,0WPJX1Z ",.02)
 ;;0WPJX1Z 
 ;;9002226.02101,"1804,0WPJX1Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPJX3Z ",.01)
 ;;0WPJX3Z 
 ;;9002226.02101,"1804,0WPJX3Z ",.02)
 ;;0WPJX3Z 
 ;;9002226.02101,"1804,0WPJX3Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK00Z ",.01)
 ;;0WPK00Z 
 ;;9002226.02101,"1804,0WPK00Z ",.02)
 ;;0WPK00Z 
 ;;9002226.02101,"1804,0WPK00Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK01Z ",.01)
 ;;0WPK01Z 
 ;;9002226.02101,"1804,0WPK01Z ",.02)
 ;;0WPK01Z 
 ;;9002226.02101,"1804,0WPK01Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK03Z ",.01)
 ;;0WPK03Z 
 ;;9002226.02101,"1804,0WPK03Z ",.02)
 ;;0WPK03Z 
 ;;9002226.02101,"1804,0WPK03Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK07Z ",.01)
 ;;0WPK07Z 
 ;;9002226.02101,"1804,0WPK07Z ",.02)
 ;;0WPK07Z 
 ;;9002226.02101,"1804,0WPK07Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK0JZ ",.01)
 ;;0WPK0JZ 
 ;;9002226.02101,"1804,0WPK0JZ ",.02)
 ;;0WPK0JZ 
 ;;9002226.02101,"1804,0WPK0JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK0KZ ",.01)
 ;;0WPK0KZ 
 ;;9002226.02101,"1804,0WPK0KZ ",.02)
 ;;0WPK0KZ 
 ;;9002226.02101,"1804,0WPK0KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK0YZ ",.01)
 ;;0WPK0YZ 
 ;;9002226.02101,"1804,0WPK0YZ ",.02)
 ;;0WPK0YZ 
 ;;9002226.02101,"1804,0WPK0YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK30Z ",.01)
 ;;0WPK30Z 
 ;;9002226.02101,"1804,0WPK30Z ",.02)
 ;;0WPK30Z 
 ;;9002226.02101,"1804,0WPK30Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK31Z ",.01)
 ;;0WPK31Z 
 ;;9002226.02101,"1804,0WPK31Z ",.02)
 ;;0WPK31Z 
 ;;9002226.02101,"1804,0WPK31Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK33Z ",.01)
 ;;0WPK33Z 
 ;;9002226.02101,"1804,0WPK33Z ",.02)
 ;;0WPK33Z 
 ;;9002226.02101,"1804,0WPK33Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK37Z ",.01)
 ;;0WPK37Z 
 ;;9002226.02101,"1804,0WPK37Z ",.02)
 ;;0WPK37Z 
 ;;9002226.02101,"1804,0WPK37Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK3JZ ",.01)
 ;;0WPK3JZ 
 ;;9002226.02101,"1804,0WPK3JZ ",.02)
 ;;0WPK3JZ 
 ;;9002226.02101,"1804,0WPK3JZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK3KZ ",.01)
 ;;0WPK3KZ 
 ;;9002226.02101,"1804,0WPK3KZ ",.02)
 ;;0WPK3KZ 
 ;;9002226.02101,"1804,0WPK3KZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK3YZ ",.01)
 ;;0WPK3YZ 
 ;;9002226.02101,"1804,0WPK3YZ ",.02)
 ;;0WPK3YZ 
 ;;9002226.02101,"1804,0WPK3YZ ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK40Z ",.01)
 ;;0WPK40Z 
 ;;9002226.02101,"1804,0WPK40Z ",.02)
 ;;0WPK40Z 
 ;;9002226.02101,"1804,0WPK40Z ",.03)
 ;;31
 ;;9002226.02101,"1804,0WPK41Z ",.01)
 ;;0WPK41Z 
 ;;9002226.02101,"1804,0WPK41Z ",.02)
 ;;0WPK41Z 
 ;;9002226.02101,"1804,0WPK41Z ",.03)
 ;;31
