AICDKWI9 ; ACC/IHS INTERFACE ROUTINE BETWEEN ICD9 DICTIONARY AND LOOKUP; [ 12/31/2002  1:35 PM ]
 ;;3.51;IHS ICD/CPT lookup & grouper;**6**;MAY 30, 1991
 G:DIPGM(0)=2 EN2
EN1 ; FIRST ENTRY FROM DIC
 ;G:DIC(0)["A" ASK^DIC ;AICD*3.51*6
 I DIC(0)["A" K DO D DO^DIC1 G ASK^DIC ;AICD*3.51*6
EN2 ; SECOND ENTRY FROM DIC OR FALL-THROUGH IF NO 'ASK' INDICATED
 I X="?BAD"!(X["^") S Y=-1 Q
 ;I (X?1"?".E)!(X=" ")!(X?1"`"1N.N)!(U[X)!(X?1N.N)!(X?.N1".".N)!(X?1"E"1N.E)!(X?1"V"1N.E) D:'$D(DO) DO^DIC1 G RTN^DIC ;AICD*3.51*6
 I (X?1"?".E)!(X=" ")!(X?1"`"1N.N)!(U[X)!(X?1N.N)!(X?.N1".".N)!(X?1"E"1N.E)!(X?1"V"1N.E) K DO D DO^DIC1 G RTN^DIC ;AICD*3.51*6
 G ICDDX^AICDKWLD
