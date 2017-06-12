BGP62Z22 ;IHS/CMI/LAB-CREATED BY ^ATXSTX ON JAN 11, 2016;
 ;;16.1;IHS CLINICAL REPORTING;;MAR 22, 2016;Build 170
 ;
START ;
 K:'$G(ATXPGMC) ^TMP("ATX",$J)
 S ATXPGMC=$G(ATXPGMC)+1
 F ATXI=1:1 S X=$P($T(TMP+ATXI),";;",2,99) Q:X=""  S X="^TMP(""ATX"",$J,"_X,ATXI=ATXI+1,Y=$P($T(TMP+ATXI),";;",2,99) S @X=Y
 Q
 ;
TMP ;;TAXONOMY (WITH BULLETIN)
 ;;9002226.02101,"869,00378-0211-01 ",.01)
 ;;00378-0211-01
 ;;9002226.02101,"869,00378-0211-01 ",.02)
 ;;00378-0211-01
 ;;9002226.02101,"869,00378-0211-05 ",.01)
 ;;00378-0211-05
 ;;9002226.02101,"869,00378-0211-05 ",.02)
 ;;00378-0211-05
 ;;9002226.02101,"869,00378-0277-01 ",.01)
 ;;00378-0277-01
 ;;9002226.02101,"869,00378-0277-01 ",.02)
 ;;00378-0277-01
 ;;9002226.02101,"869,00378-0277-05 ",.01)
 ;;00378-0277-05
 ;;9002226.02101,"869,00378-0277-05 ",.02)
 ;;00378-0277-05
 ;;9002226.02101,"869,00378-0330-01 ",.01)
 ;;00378-0330-01
 ;;9002226.02101,"869,00378-0330-01 ",.02)
 ;;00378-0330-01
 ;;9002226.02101,"869,00378-0330-05 ",.01)
 ;;00378-0330-05
 ;;9002226.02101,"869,00378-0330-05 ",.02)
 ;;00378-0330-05
 ;;9002226.02101,"869,00378-0407-01 ",.01)
 ;;00378-0407-01
 ;;9002226.02101,"869,00378-0407-01 ",.02)
 ;;00378-0407-01
 ;;9002226.02101,"869,00378-0412-01 ",.01)
 ;;00378-0412-01
 ;;9002226.02101,"869,00378-0412-01 ",.02)
 ;;00378-0412-01
 ;;9002226.02101,"869,00378-0414-01 ",.01)
 ;;00378-0414-01
 ;;9002226.02101,"869,00378-0414-01 ",.02)
 ;;00378-0414-01
 ;;9002226.02101,"869,00378-0433-01 ",.01)
 ;;00378-0433-01
 ;;9002226.02101,"869,00378-0433-01 ",.02)
 ;;00378-0433-01
 ;;9002226.02101,"869,00378-0433-05 ",.01)
 ;;00378-0433-05
 ;;9002226.02101,"869,00378-0433-05 ",.02)
 ;;00378-0433-05
 ;;9002226.02101,"869,00378-0435-01 ",.01)
 ;;00378-0435-01
 ;;9002226.02101,"869,00378-0435-01 ",.02)
 ;;00378-0435-01
 ;;9002226.02101,"869,00378-0435-05 ",.01)
 ;;00378-0435-05
 ;;9002226.02101,"869,00378-0435-05 ",.02)
 ;;00378-0435-05
 ;;9002226.02101,"869,00378-0442-01 ",.01)
 ;;00378-0442-01
 ;;9002226.02101,"869,00378-0442-01 ",.02)
 ;;00378-0442-01
 ;;9002226.02101,"869,00378-0442-05 ",.01)
 ;;00378-0442-05
 ;;9002226.02101,"869,00378-0442-05 ",.02)
 ;;00378-0442-05
 ;;9002226.02101,"869,00378-0574-01 ",.01)
 ;;00378-0574-01
 ;;9002226.02101,"869,00378-0574-01 ",.02)
 ;;00378-0574-01
 ;;9002226.02101,"869,00378-0574-05 ",.01)
 ;;00378-0574-05
 ;;9002226.02101,"869,00378-0574-05 ",.02)
 ;;00378-0574-05
 ;;9002226.02101,"869,00378-0734-01 ",.01)
 ;;00378-0734-01
 ;;9002226.02101,"869,00378-0734-01 ",.02)
 ;;00378-0734-01
 ;;9002226.02101,"869,00378-0734-93 ",.01)
 ;;00378-0734-93
 ;;9002226.02101,"869,00378-0734-93 ",.02)
 ;;00378-0734-93
 ;;9002226.02101,"869,00378-0735-01 ",.01)
 ;;00378-0735-01
 ;;9002226.02101,"869,00378-0735-01 ",.02)
 ;;00378-0735-01
 ;;9002226.02101,"869,00378-0735-93 ",.01)
 ;;00378-0735-93
 ;;9002226.02101,"869,00378-0735-93 ",.02)
 ;;00378-0735-93
 ;;9002226.02101,"869,00378-1049-01 ",.01)
 ;;00378-1049-01
 ;;9002226.02101,"869,00378-1049-01 ",.02)
 ;;00378-1049-01
 ;;9002226.02101,"869,00378-1049-10 ",.01)
 ;;00378-1049-10
 ;;9002226.02101,"869,00378-1049-10 ",.02)
 ;;00378-1049-10
 ;;9002226.02101,"869,00378-2003-05 ",.01)
 ;;00378-2003-05
 ;;9002226.02101,"869,00378-2003-05 ",.02)
 ;;00378-2003-05
 ;;9002226.02101,"869,00378-2003-93 ",.01)
 ;;00378-2003-93
 ;;9002226.02101,"869,00378-2003-93 ",.02)
 ;;00378-2003-93
 ;;9002226.02101,"869,00378-2004-05 ",.01)
 ;;00378-2004-05
 ;;9002226.02101,"869,00378-2004-05 ",.02)
 ;;00378-2004-05
 ;;9002226.02101,"869,00378-2004-93 ",.01)
 ;;00378-2004-93
 ;;9002226.02101,"869,00378-2004-93 ",.02)
 ;;00378-2004-93
 ;;9002226.02101,"869,00378-2005-93 ",.01)
 ;;00378-2005-93
 ;;9002226.02101,"869,00378-2005-93 ",.02)
 ;;00378-2005-93
 ;;9002226.02101,"869,00378-2006-93 ",.01)
 ;;00378-2006-93
 ;;9002226.02101,"869,00378-2006-93 ",.02)
 ;;00378-2006-93
 ;;9002226.02101,"869,00378-2008-77 ",.01)
 ;;00378-2008-77
 ;;9002226.02101,"869,00378-2008-77 ",.02)
 ;;00378-2008-77
 ;;9002226.02101,"869,00378-2009-05 ",.01)
 ;;00378-2009-05
 ;;9002226.02101,"869,00378-2009-05 ",.02)
 ;;00378-2009-05
 ;;9002226.02101,"869,00378-2610-01 ",.01)
 ;;00378-2610-01
 ;;9002226.02101,"869,00378-2610-01 ",.02)
 ;;00378-2610-01
 ;;9002226.02101,"869,00378-2610-10 ",.01)
 ;;00378-2610-10
 ;;9002226.02101,"869,00378-2610-10 ",.02)
 ;;00378-2610-10
 ;;9002226.02101,"869,00378-2625-01 ",.01)
 ;;00378-2625-01
 ;;9002226.02101,"869,00378-2625-01 ",.02)
 ;;00378-2625-01
 ;;9002226.02101,"869,00378-2625-10 ",.01)
 ;;00378-2625-10
 ;;9002226.02101,"869,00378-2625-10 ",.02)
 ;;00378-2625-10
 ;;9002226.02101,"869,00378-2650-01 ",.01)
 ;;00378-2650-01
 ;;9002226.02101,"869,00378-2650-01 ",.02)
 ;;00378-2650-01
 ;;9002226.02101,"869,00378-2650-10 ",.01)
 ;;00378-2650-10
 ;;9002226.02101,"869,00378-2650-10 ",.02)
 ;;00378-2650-10
 ;;9002226.02101,"869,00378-2675-01 ",.01)
 ;;00378-2675-01
 ;;9002226.02101,"869,00378-2675-01 ",.02)
 ;;00378-2675-01
 ;;9002226.02101,"869,00378-2675-93 ",.01)
 ;;00378-2675-93
 ;;9002226.02101,"869,00378-2675-93 ",.02)
 ;;00378-2675-93
 ;;9002226.02101,"869,00378-2685-01 ",.01)
 ;;00378-2685-01
 ;;9002226.02101,"869,00378-2685-01 ",.02)
 ;;00378-2685-01
 ;;9002226.02101,"869,00378-2685-93 ",.01)
 ;;00378-2685-93
 ;;9002226.02101,"869,00378-2685-93 ",.02)
 ;;00378-2685-93
 ;;9002226.02101,"869,00378-2695-01 ",.01)
 ;;00378-2695-01
 ;;9002226.02101,"869,00378-2695-01 ",.02)
 ;;00378-2695-01
 ;;9002226.02101,"869,00378-2695-93 ",.01)
 ;;00378-2695-93
 ;;9002226.02101,"869,00378-2695-93 ",.02)
 ;;00378-2695-93
 ;;9002226.02101,"869,00378-3025-01 ",.01)
 ;;00378-3025-01
 ;;9002226.02101,"869,00378-3025-01 ",.02)
 ;;00378-3025-01
 ;;9002226.02101,"869,00378-3050-01 ",.01)
 ;;00378-3050-01
 ;;9002226.02101,"869,00378-3050-01 ",.02)
 ;;00378-3050-01
 ;;9002226.02101,"869,00378-3075-01 ",.01)
 ;;00378-3075-01
 ;;9002226.02101,"869,00378-3075-01 ",.02)
 ;;00378-3075-01
 ;;9002226.02101,"869,00378-3125-01 ",.01)
 ;;00378-3125-01
 ;;9002226.02101,"869,00378-3125-01 ",.02)
 ;;00378-3125-01
 ;;9002226.02101,"869,00378-3125-10 ",.01)
 ;;00378-3125-10
 ;;9002226.02101,"869,00378-3125-10 ",.02)
 ;;00378-3125-10
 ;;9002226.02101,"869,00378-3411-01 ",.01)
 ;;00378-3411-01
 ;;9002226.02101,"869,00378-3411-01 ",.02)
 ;;00378-3411-01
 ;;9002226.02101,"869,00378-3411-05 ",.01)
 ;;00378-3411-05
 ;;9002226.02101,"869,00378-3411-05 ",.02)
 ;;00378-3411-05
 ;;9002226.02101,"869,00378-3412-01 ",.01)
 ;;00378-3412-01
 ;;9002226.02101,"869,00378-3412-01 ",.02)
 ;;00378-3412-01
 ;;9002226.02101,"869,00378-3412-05 ",.01)
 ;;00378-3412-05
 ;;9002226.02101,"869,00378-3412-05 ",.02)
 ;;00378-3412-05
 ;;9002226.02101,"869,00378-3413-01 ",.01)
 ;;00378-3413-01
 ;;9002226.02101,"869,00378-3413-01 ",.02)
 ;;00378-3413-01
 ;;9002226.02101,"869,00378-3413-05 ",.01)
 ;;00378-3413-05
 ;;9002226.02101,"869,00378-3413-05 ",.02)
 ;;00378-3413-05
 ;;9002226.02101,"869,00378-3471-01 ",.01)
 ;;00378-3471-01
 ;;9002226.02101,"869,00378-3471-01 ",.02)
 ;;00378-3471-01
 ;;9002226.02101,"869,00378-3472-01 ",.01)
 ;;00378-3472-01
 ;;9002226.02101,"869,00378-3472-01 ",.02)
 ;;00378-3472-01
 ;;9002226.02101,"869,00378-3472-10 ",.01)
 ;;00378-3472-10
 ;;9002226.02101,"869,00378-3472-10 ",.02)
 ;;00378-3472-10
 ;;9002226.02101,"869,00378-3473-01 ",.01)
 ;;00378-3473-01
 ;;9002226.02101,"869,00378-3473-01 ",.02)
 ;;00378-3473-01
 ;;9002226.02101,"869,00378-3473-10 ",.01)
 ;;00378-3473-10
 ;;9002226.02101,"869,00378-3473-10 ",.02)
 ;;00378-3473-10
 ;;9002226.02101,"869,00378-3474-01 ",.01)
 ;;00378-3474-01
 ;;9002226.02101,"869,00378-3474-01 ",.02)
 ;;00378-3474-01
 ;;9002226.02101,"869,00378-3515-10 ",.01)
 ;;00378-3515-10
 ;;9002226.02101,"869,00378-3515-10 ",.02)
 ;;00378-3515-10
 ;;9002226.02101,"869,00378-3515-93 ",.01)
 ;;00378-3515-93
 ;;9002226.02101,"869,00378-3515-93 ",.02)
 ;;00378-3515-93
 ;;9002226.02101,"869,00378-3530-05 ",.01)
 ;;00378-3530-05
 ;;9002226.02101,"869,00378-3530-05 ",.02)
 ;;00378-3530-05
 ;;9002226.02101,"869,00378-3530-93 ",.01)
 ;;00378-3530-93
 ;;9002226.02101,"869,00378-3530-93 ",.02)
 ;;00378-3530-93
 ;;9002226.02101,"869,00378-3545-05 ",.01)
 ;;00378-3545-05
 ;;9002226.02101,"869,00378-3545-05 ",.02)
 ;;00378-3545-05
 ;;9002226.02101,"869,00378-3545-93 ",.01)
 ;;00378-3545-93
 ;;9002226.02101,"869,00378-3545-93 ",.02)
 ;;00378-3545-93
 ;;9002226.02101,"869,00378-3855-77 ",.01)
 ;;00378-3855-77
 ;;9002226.02101,"869,00378-3855-77 ",.02)
 ;;00378-3855-77
 ;;9002226.02101,"869,00378-3855-93 ",.01)
 ;;00378-3855-93
 ;;9002226.02101,"869,00378-3855-93 ",.02)
 ;;00378-3855-93
 ;;9002226.02101,"869,00378-3856-10 ",.01)
 ;;00378-3856-10
 ;;9002226.02101,"869,00378-3856-10 ",.02)
 ;;00378-3856-10
 ;;9002226.02101,"869,00378-3856-77 ",.01)
 ;;00378-3856-77
 ;;9002226.02101,"869,00378-3856-77 ",.02)
 ;;00378-3856-77
 ;;9002226.02101,"869,00378-3856-93 ",.01)
 ;;00378-3856-93
 ;;9002226.02101,"869,00378-3856-93 ",.02)
 ;;00378-3856-93
 ;;9002226.02101,"869,00378-3857-10 ",.01)
 ;;00378-3857-10
 ;;9002226.02101,"869,00378-3857-10 ",.02)
 ;;00378-3857-10
 ;;9002226.02101,"869,00378-3857-77 ",.01)
 ;;00378-3857-77
 ;;9002226.02101,"869,00378-3857-77 ",.02)
 ;;00378-3857-77
 ;;9002226.02101,"869,00378-3857-93 ",.01)
 ;;00378-3857-93
 ;;9002226.02101,"869,00378-3857-93 ",.02)
 ;;00378-3857-93
 ;;9002226.02101,"869,00378-4186-01 ",.01)
 ;;00378-4186-01
 ;;9002226.02101,"869,00378-4186-01 ",.02)
 ;;00378-4186-01
 ;;9002226.02101,"869,00378-4186-05 ",.01)
 ;;00378-4186-05
 ;;9002226.02101,"869,00378-4186-05 ",.02)
 ;;00378-4186-05
 ;;9002226.02101,"869,00378-4186-93 ",.01)
 ;;00378-4186-93
 ;;9002226.02101,"869,00378-4186-93 ",.02)
 ;;00378-4186-93
 ;;9002226.02101,"869,00378-4187-01 ",.01)
 ;;00378-4187-01
 ;;9002226.02101,"869,00378-4187-01 ",.02)
 ;;00378-4187-01
 ;;9002226.02101,"869,00378-4187-05 ",.01)
 ;;00378-4187-05
 ;;9002226.02101,"869,00378-4187-05 ",.02)
 ;;00378-4187-05
 ;;9002226.02101,"869,00378-4187-93 ",.01)
 ;;00378-4187-93
 ;;9002226.02101,"869,00378-4187-93 ",.02)
 ;;00378-4187-93
 ;;9002226.02101,"869,00378-4188-01 ",.01)
 ;;00378-4188-01
 ;;9002226.02101,"869,00378-4188-01 ",.02)
 ;;00378-4188-01
 ;;9002226.02101,"869,00378-4188-05 ",.01)
 ;;00378-4188-05
 ;;9002226.02101,"869,00378-4188-05 ",.02)
 ;;00378-4188-05
 ;;9002226.02101,"869,00378-4188-93 ",.01)
 ;;00378-4188-93
 ;;9002226.02101,"869,00378-4188-93 ",.02)
 ;;00378-4188-93
 ;;9002226.02101,"869,00378-4210-01 ",.01)
 ;;00378-4210-01
 ;;9002226.02101,"869,00378-4210-01 ",.02)
 ;;00378-4210-01
 ;;9002226.02101,"869,00378-4220-01 ",.01)
 ;;00378-4220-01
 ;;9002226.02101,"869,00378-4220-01 ",.02)
 ;;00378-4220-01
 ;;9002226.02101,"869,00378-4250-01 ",.01)
 ;;00378-4250-01
 ;;9002226.02101,"869,00378-4250-01 ",.02)
 ;;00378-4250-01
 ;;9002226.02101,"869,00378-4250-10 ",.01)
 ;;00378-4250-10
 ;;9002226.02101,"869,00378-4250-10 ",.02)
 ;;00378-4250-10
 ;;9002226.02101,"869,00378-4350-93 ",.01)
 ;;00378-4350-93
 ;;9002226.02101,"869,00378-4350-93 ",.02)
 ;;00378-4350-93
 ;;9002226.02101,"869,00378-4881-01 ",.01)
 ;;00378-4881-01
 ;;9002226.02101,"869,00378-4881-01 ",.02)
 ;;00378-4881-01
 ;;9002226.02101,"869,00378-4882-01 ",.01)
 ;;00378-4882-01
 ;;9002226.02101,"869,00378-4882-01 ",.02)
 ;;00378-4882-01
 ;;9002226.02101,"869,00378-4883-01 ",.01)
 ;;00378-4883-01
 ;;9002226.02101,"869,00378-4883-01 ",.02)
 ;;00378-4883-01
 ;;9002226.02101,"869,00378-4884-01 ",.01)
 ;;00378-4884-01
 ;;9002226.02101,"869,00378-4884-01 ",.02)
 ;;00378-4884-01
 ;;9002226.02101,"869,00378-4885-01 ",.01)
 ;;00378-4885-01
 ;;9002226.02101,"869,00378-4885-01 ",.02)
 ;;00378-4885-01
 ;;9002226.02101,"869,00378-5131-05 ",.01)
 ;;00378-5131-05
 ;;9002226.02101,"869,00378-5131-05 ",.02)
 ;;00378-5131-05
 ;;9002226.02101,"869,00378-5132-05 ",.01)
 ;;00378-5132-05
 ;;9002226.02101,"869,00378-5132-05 ",.02)
 ;;00378-5132-05
 ;;9002226.02101,"869,00378-5133-05 ",.01)
 ;;00378-5133-05
 ;;9002226.02101,"869,00378-5133-05 ",.02)
 ;;00378-5133-05
