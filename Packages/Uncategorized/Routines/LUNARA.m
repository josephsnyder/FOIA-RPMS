LUNARA ;AUTOMATIC LANDING OF BUG
 S SW=0 S H=20000
 D 600^LUNAR1
 S %LN=1,%CO=20 X %TP W " * * * C O M P U T E R   L A N D I N G * * *"
121 S X=X+1,H=H-550 D 700^LUNAR1 G 131:H'>0 H 1 D 500 G 121
131 S H=-1000 D 700^LUNAR1
 S %LN=5,%CO=1 X %TP,%TCL R "TO RETURN TYPE <RETURN>",A
 Q
500 S SW='SW
511 S %LN=3,%CO=28 X %TP W "* * * S I M U L A T I O N * * *"
521 S %LN=3,%CO=13 X %TP
 Q
 Q
