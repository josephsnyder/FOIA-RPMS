IBINI0CG	; ; 21-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	I DSEC F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^DIC(358.6,0,"LAYGO")
	;;=@
	;;^DIC(358.6,0,"RD")
	;;=@
	;;^DIC(358.6,0,"WR")
	;;=@
	;;^DIC(358.7,0,"AUDIT")
	;;=@
	;;^DIC(358.7,0,"DD")
	;;=@
	;;^DIC(358.7,0,"DEL")
	;;=@
	;;^DIC(358.7,0,"LAYGO")
	;;=@
	;;^DIC(358.7,0,"RD")
	;;=@
	;;^DIC(358.7,0,"WR")
	;;=@
	;;^DIC(358.8,0,"AUDIT")
	;;=@
	;;^DIC(358.8,0,"DD")
	;;=@
	;;^DIC(358.8,0,"DEL")
	;;=@
	;;^DIC(358.8,0,"LAYGO")
	;;=@
	;;^DIC(358.8,0,"RD")
	;;=@
	;;^DIC(358.8,0,"WR")
	;;=@
	;;^DIC(358.91,0,"AUDIT")
	;;=@
	;;^DIC(358.91,0,"DD")
	;;=@
	;;^DIC(358.91,0,"DEL")
	;;=@
	;;^DIC(358.91,0,"LAYGO")
	;;=@
	;;^DIC(358.91,0,"RD")
	;;=@
	;;^DIC(358.91,0,"WR")
	;;=@
	;;^DIC(362.1,0,"AUDIT")
	;;=@
	;;^DIC(362.1,0,"DD")
	;;=@
	;;^DIC(362.1,0,"DEL")
	;;=@
	;;^DIC(362.1,0,"LAYGO")
	;;=@
	;;^DIC(362.1,0,"WR")
	;;=@
	;;^DIC(362.3,0,"AUDIT")
	;;=@
	;;^DIC(362.3,0,"DD")
	;;=@
	;;^DIC(362.3,0,"DEL")
	;;=@
	;;^DIC(362.3,0,"LAYGO")
	;;=@
	;;^DIC(362.3,0,"WR")
	;;=@
	;;^DIC(362.4,0,"AUDIT")
	;;=@
	;;^DIC(362.4,0,"DD")
	;;=@
	;;^DIC(362.4,0,"DEL")
	;;=@
	;;^DIC(362.4,0,"LAYGO")
	;;=@
	;;^DIC(362.4,0,"WR")
	;;=@
	;;^DIC(362.5,0,"AUDIT")
	;;=@
	;;^DIC(362.5,0,"DD")
	;;=@
	;;^DIC(362.5,0,"DEL")
	;;=@
	;;^DIC(362.5,0,"LAYGO")
	;;=@
	;;^DIC(362.5,0,"WR")
	;;=@
	;;^DIC(399,0,"DD")
	;;=@
	;;^DIC(399,0,"DEL")
	;;=@
	;;^DIC(399,0,"LAYGO")
	;;=@
	;;^DIC(399,0,"RD")
	;;=@
	;;^DIC(399,0,"WR")
	;;=@
	;;^DIC(399.1,0,"DD")
	;;=@
	;;^DIC(399.2,0,"DD")
	;;=@
	;;^DIC(399.3,0,"DD")
	;;=@
	;;^DIC(399.4,0,"DD")
	;;=@
	;;^DIC(399.5,0,"AUDIT")
	;;=d
	;;^DIC(399.5,0,"DD")
	;;=@
	;;^DIC(399.5,0,"DEL")
	;;=d
	;;^DIC(399.5,0,"LAYGO")
	;;=d
	;;^DIC(399.5,0,"RD")
	;;=dD
	;;^DIC(399.5,0,"WR")
	;;=d
	;;^DIC(409.95,0,"AUDIT")
	;;=@
	;;^DIC(409.95,0,"DD")
	;;=@
	;;^DIC(409.95,0,"DEL")
	;;=@
	;;^DIC(409.95,0,"LAYGO")
	;;=@
	;;^DIC(409.95,0,"RD")
	;;=@
	;;^DIC(409.95,0,"WR")
	;;=@
	;;^DIC(409.96,0,"AUDIT")
	;;=@
	;;^DIC(409.96,0,"DD")
	;;=@
	;;^DIC(409.96,0,"DEL")
	;;=@
	;;^DIC(409.96,0,"LAYGO")
	;;=@
	;;^DIC(409.96,0,"RD")
	;;=@
	;;^DIC(409.96,0,"WR")
	;;=@