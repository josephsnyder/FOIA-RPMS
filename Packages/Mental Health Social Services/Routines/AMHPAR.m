AMHPAR ; IHS/CMI/LAB - Export Package Level Parameters Mar 03, 2006@10:07:20 ;
 ;;4.0;IHS BEHAVIORAL HEALTH;;MAY 14, 2010
 ;;
MAIN ; main (initial) parameter transport routine
 K ^TMP($J,"XPARRSTR")
 N ENT,IDX,ROOT,REF,VAL,I
 S ROOT=$NAME(^TMP($J,"XPARRSTR")),ROOT=$E(ROOT,1,$L(ROOT)-1)_","
 D ^AMHPAR01
XX2 S IDX=0,ENT="PKG."_"IHS MENTAL HLTH/SOC SERV"
 F  S IDX=$O(^TMP($J,"XPARRSTR",IDX)) Q:'IDX  D
 . N PAR,INST,VAL,ERR
 . S PAR=$P(^TMP($J,"XPARRSTR",IDX,"KEY"),U),INST=$P(^("KEY"),U,2)
 . M VAL=^TMP($J,"XPARRSTR",IDX,"VAL")
 . D EN^XPAR(ENT,PAR,INST,.VAL,.ERR)
 K ^TMP($J,"XPARRSTR")
 Q
