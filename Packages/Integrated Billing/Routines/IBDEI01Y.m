IBDEI01Y	; ; 18-MAR-1994
	;;Version 2.0 ; INTEGRATED BILLING ;; 21-MAR-94
	F I=1:2 S X=$T(Q+I) Q:X=""  S Y=$E($T(Q+I+1),4,999),X=$E(X,4,999) S:$A(Y)=126 I=I+1,Y=$E(Y,2,999)_$E($T(Q+I+1),5,99) S:$A(Y)=61 Y=$E(Y,2,999) X NO E  S @X=Y
Q	Q
	;;^UTILITY(U,$J,"OR",227,0)
	;;=227^IBDE^^ALL SERVICES
	;;^UTILITY(U,$J,"PKG",227,0)
	;;=IB ENCOUNTER FORM IMP/EXP^IBDE^The import/export utilities for encounter forms.
	;;^UTILITY(U,$J,"PKG",227,4,0)
	;;=^9.44PA^10^10
	;;^UTILITY(U,$J,"PKG",227,4,1,0)
	;;=358
	;;^UTILITY(U,$J,"PKG",227,4,1,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,2,0)
	;;=358.1
	;;^UTILITY(U,$J,"PKG",227,4,2,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,3,0)
	;;=358.2
	;;^UTILITY(U,$J,"PKG",227,4,3,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,4,0)
	;;=358.3
	;;^UTILITY(U,$J,"PKG",227,4,4,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,5,0)
	;;=358.4
	;;^UTILITY(U,$J,"PKG",227,4,5,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,6,0)
	;;=358.5
	;;^UTILITY(U,$J,"PKG",227,4,6,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,7,0)
	;;=358.6
	;;^UTILITY(U,$J,"PKG",227,4,7,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,8,0)
	;;=358.7
	;;^UTILITY(U,$J,"PKG",227,4,8,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,9,0)
	;;=358.8
	;;^UTILITY(U,$J,"PKG",227,4,9,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,10,0)
	;;=358.91
	;;^UTILITY(U,$J,"PKG",227,4,10,222)
	;;=y^n^^n^^^y^o^n
	;;^UTILITY(U,$J,"PKG",227,4,"B",358,1)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.1,2)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.2,3)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.3,4)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.4,5)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.5,6)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.6,7)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.7,8)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.8,9)
	;;=
	;;^UTILITY(U,$J,"PKG",227,4,"B",358.91,10)
	;;=
	;;^UTILITY(U,$J,"PKG",227,5)
	;;=ALBANY
	;;^UTILITY(U,$J,"PKG",227,11)
	;;=358^358.1
	;;^UTILITY(U,$J,"PKG",227,22,0)
	;;=^9.49I^5^5
	;;^UTILITY(U,$J,"PKG",227,22,1,0)
	;;=2.0^2940320^2930820
	;;^UTILITY(U,$J,"PKG",227,22,2,0)
	;;=2.0T2^2931001
	;;^UTILITY(U,$J,"PKG",227,22,3,0)
	;;=2.0T3^2940203^2940209
	;;^UTILITY(U,$J,"PKG",227,22,4,0)
	;;=2.0V3^2940215
	;;^UTILITY(U,$J,"PKG",227,22,5,0)
	;;=2.0V4^2940309
	;;^UTILITY(U,$J,"PKG",227,22,"B","2.0",1)
	;;=
	;;^UTILITY(U,$J,"PKG",227,22,"B","2.0T2",2)
	;;=
	;;^UTILITY(U,$J,"PKG",227,22,"B","2.0T3",3)
	;;=
	;;^UTILITY(U,$J,"PKG",227,22,"B","2.0V3",4)
	;;=
	;;^UTILITY(U,$J,"PKG",227,22,"B","2.0V4",5)
	;;=
	;;^UTILITY(U,$J,"SBF",358,358)
	;;=
	;;^UTILITY(U,$J,"SBF",358,358.01)
	;;=
	;;^UTILITY(U,$J,"SBF",358.1,358.1)
	;;=
	;;^UTILITY(U,$J,"SBF",358.1,358.11)
	;;=
	;;^UTILITY(U,$J,"SBF",358.2,358.2)
	;;=
	;;^UTILITY(U,$J,"SBF",358.2,358.21)
	;;=
	;;^UTILITY(U,$J,"SBF",358.2,358.22)
	;;=
	;;^UTILITY(U,$J,"SBF",358.3,358.3)
	;;=
	;;^UTILITY(U,$J,"SBF",358.3,358.31)
	;;=
	;;^UTILITY(U,$J,"SBF",358.4,358.4)
	;;=
	;;^UTILITY(U,$J,"SBF",358.5,358.5)
	;;=
	;;^UTILITY(U,$J,"SBF",358.5,358.52)
	;;=
	;;^UTILITY(U,$J,"SBF",358.6,358.6)
	;;=
	;;^UTILITY(U,$J,"SBF",358.6,358.61)
	;;=
	;;^UTILITY(U,$J,"SBF",358.6,358.66)
	;;=
	;;^UTILITY(U,$J,"SBF",358.6,358.67)
	;;=
	;;^UTILITY(U,$J,"SBF",358.7,358.7)
	;;=
	;;^UTILITY(U,$J,"SBF",358.8,358.8)
	;;=
	;;^UTILITY(U,$J,"SBF",358.8,358.81)
	;;=
	;;^UTILITY(U,$J,"SBF",358.91,358.91)
	;;=