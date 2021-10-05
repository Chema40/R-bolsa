install.packages("TTR")
library(TTR)

#ACS
FECHA = ACS$Fecha
EMA10 = EMA(ACS$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ACS$Close, n = 15, wilder = FALSE)
DIBOL = ACS$`Bol alto` - ACS$`Bol bajo`
CIERRE = ACS$Close
ACS.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
ACS.IA = na.omit(ACS.IA)
ACS.IA$MENOS1 = Lag(ACS.IA$EMA15, 1)
ACS.IA$MENOS2 = Lag(ACS.IA$EMA15, 2)
ACS.IA$MENOS3 = Lag(ACS.IA$EMA15, 3)
ACS.IA = na.omit(ACS.IA)

ACS.IA$PENDINENTE1 = ACS.IA$EMA15 - ACS.IA$MENOS1 
ACS.IA$PENDINENTE2 = ACS.IA$EMA15 - ACS.IA$MENOS2
ACS.IA$PENDINENTE3 =  ACS.IA$EMA15 - ACS.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ACS.IA$FECHA, y = ACS.IA$CIERRE, type = "b")
plot(x = ACS.IA$FECHA, y = ACS.IA$EMA15, type = "b")
plot(x = ACS.IA$FECHA, y = ACS.IA$PENDINENTE1, type = "h")
plot(x = ACS.IA$FECHA, y = ACS.IA$DIBOL, type = "h")

#ACX
FECHA = ACX$Fecha
EMA10 = EMA(ACX$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ACX$Close, n = 15, wilder = FALSE)
DIBOL = ACX$`Bol alto` - ACX$`Bol bajo`
CIERRE = ACX$Close
ACX.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
ACX.IA = na.omit(ACX.IA)
ACX.IA$MENOS1 = Lag(ACX.IA$EMA15, 1)
ACX.IA$MENOS2 = Lag(ACX.IA$EMA15, 2)
ACX.IA$MENOS3 = Lag(ACX.IA$EMA15, 3)
ACX.IA = na.omit(ACX.IA)

ACX.IA$PENDINENTE1 = ACX.IA$EMA15 - ACX.IA$MENOS1 
ACX.IA$PENDINENTE2 = ACX.IA$EMA15 - ACX.IA$MENOS2
ACX.IA$PENDINENTE3 =  ACX.IA$EMA15 - ACX.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ACX.IA$FECHA, y = ACX.IA$CIERRE, type = "b")
plot(x = ACX.IA$FECHA, y = ACX.IA$EMA15, type = "b")
plot(x = ACX.IA$FECHA, y = ACX.IA$PENDINENTE1, type = "h")
plot(x = ACX.IA$FECHA, y = ACX.IA$DIBOL, type = "h")

#ALM
FECHA = ALM$Fecha
EMA10 = EMA(ALM$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ALM$Close, n = 15, wilder = FALSE)
DIBOL = ALM$`Bol alto` - ALM$`Bol bajo`
CIERRE = ALM$Close
ALM.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
ALM.IA = na.omit(ALM.IA)
ALM.IA$MENOS1 = Lag(ALM.IA$EMA15, 1)
ALM.IA$MENOS2 = Lag(ALM.IA$EMA15, 2)
ALM.IA$MENOS3 = Lag(ALM.IA$EMA15, 3)
ALM.IA = na.omit(ALM.IA)

ALM.IA$PENDINENTE1 = ALM.IA$EMA15 - ALM.IA$MENOS1 
ALM.IA$PENDINENTE2 = ALM.IA$EMA15 - ALM.IA$MENOS2
ALM.IA$PENDINENTE3 =  ALM.IA$EMA15 - ALM.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ALM.IA$FECHA, y = ALM.IA$CIERRE, type = "b")
plot(x = ALM.IA$FECHA, y = ALM.IA$EMA15, type = "b")
plot(x = ALM.IA$FECHA, y = ALM.IA$PENDINENTE1, type = "h")
plot(x = ALM.IA$FECHA, y = ALM.IA$DIBOL, type = "h")

#AMS
FECHA = AMS$Fecha
EMA10 = EMA(AMS$Close, n = 10, wilder = FALSE)
EMA15 = EMA(AMS$Close, n = 15, wilder = FALSE)
DIBOL = AMS$`Bol alto` - AMS$`Bol bajo`
CIERRE = AMS$Close
AMS.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
AMS.IA = na.omit(AMS.IA)
AMS.IA$MENOS1 = Lag(AMS.IA$EMA15, 1)
AMS.IA$MENOS2 = Lag(AMS.IA$EMA15, 2)
AMS.IA$MENOS3 = Lag(AMS.IA$EMA15, 3)
AMS.IA = na.omit(AMS.IA)

AMS.IA$PENDINENTE1 = AMS.IA$EMA15 - AMS.IA$MENOS1 
AMS.IA$PENDINENTE2 = AMS.IA$EMA15 - AMS.IA$MENOS2
AMS.IA$PENDINENTE3 =  AMS.IA$EMA15 - AMS.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = AMS.IA$FECHA, y = AMS.IA$CIERRE, type = "b")
plot(x = AMS.IA$FECHA, y = AMS.IA$EMA15, type = "b")
plot(x = AMS.IA$FECHA, y = AMS.IA$PENDINENTE1, type = "h")
plot(x = AMS.IA$FECHA, y = AMS.IA$DIBOL, type = "h")

#ANA
FECHA = ANA$Fecha
EMA10 = EMA(ANA$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ANA$Close, n = 15, wilder = FALSE)
DIBOL = ANA$`Bol alto` - ANA$`Bol bajo`
CIERRE = ANA$Close
ANA.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
ANA.IA = na.omit(ANA.IA)
ANA.IA$MENOS1 = Lag(ANA.IA$EMA15, 1)
ANA.IA$MENOS2 = Lag(ANA.IA$EMA15, 2)
ANA.IA$MENOS3 = Lag(ANA.IA$EMA15, 3)
ANA.IA = na.omit(ANA.IA)

ANA.IA$PENDINENTE1 = ANA.IA$EMA15 - ANA.IA$MENOS1 
ANA.IA$PENDINENTE2 = ANA.IA$EMA15 - ANA.IA$MENOS2
ANA.IA$PENDINENTE3 =  ANA.IA$EMA15 - ANA.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ANA.IA$FECHA, y = ANA.IA$CIERRE, type = "b")
plot(x = ANA.IA$FECHA, y = ANA.IA$EMA15, type = "b")
plot(x = ANA.IA$FECHA, y = ANA.IA$PENDINENTE1, type = "h")
plot(x = ANA.IA$FECHA, y = ANA.IA$DIBOL, type = "h")

#BBVA
FECHA = BBVA$Fecha
EMA10 = EMA(BBVA$Close, n = 10, wilder = FALSE)
EMA15 = EMA(BBVA$Close, n = 15, wilder = FALSE)
DIBOL = BBVA$`Bol alto` - BBVA$`Bol bajo`
CIERRE = BBVA$Close
BBVA.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
BBVA.IA = na.omit(BBVA.IA)
BBVA.IA$MENOS1 = Lag(BBVA.IA$EMA15, 1)
BBVA.IA$MENOS2 = Lag(BBVA.IA$EMA15, 2)
BBVA.IA$MENOS3 = Lag(BBVA.IA$EMA15, 3)
BBVA.IA = na.omit(BBVA.IA)

BBVA.IA$PENDINENTE1 = BBVA.IA$EMA15 - BBVA.IA$MENOS1 
BBVA.IA$PENDINENTE2 = BBVA.IA$EMA15 - BBVA.IA$MENOS2
BBVA.IA$PENDINENTE3 =  BBVA.IA$EMA15 - BBVA.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = BBVA.IA$FECHA, y = BBVA.IA$CIERRE, type = "b")
plot(x = BBVA.IA$FECHA, y = BBVA.IA$EMA15, type = "b")
plot(x = BBVA.IA$FECHA, y = BBVA.IA$PENDINENTE1, type = "h")
plot(x = BBVA.IA$FECHA, y = BBVA.IA$DIBOL, type = "h")


#BKIA
FECHA = BKIA$Fecha
EMA10 = EMA(BKIA$Close, n = 10, wilder = FALSE)
EMA15 = EMA(BKIA$Close, n = 15, wilder = FALSE)
DIBOL = BKIA$`Bol alto` - BKIA$`Bol bajo`
CIERRE = BKIA$Close
BKIA.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
BKIA.IA = na.omit(BKIA.IA)
BKIA.IA$MENOS1 = Lag(BKIA.IA$EMA15, 1)
BKIA.IA$MENOS2 = Lag(BKIA.IA$EMA15, 2)
BKIA.IA$MENOS3 = Lag(BKIA.IA$EMA15, 3)
BKIA.IA = na.omit(BKIA.IA)

BKIA.IA$PENDINENTE1 = BKIA.IA$EMA15 - BKIA.IA$MENOS1 
BKIA.IA$PENDINENTE2 = BKIA.IA$EMA15 - BKIA.IA$MENOS2
BKIA.IA$PENDINENTE3 =  BKIA.IA$EMA15 - BKIA.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = BKIA.IA$FECHA, y = BKIA.IA$CIERRE, type = "b")
plot(x = BKIA.IA$FECHA, y = BKIA.IA$EMA15, type = "b")
plot(x = BKIA.IA$FECHA, y = BKIA.IA$PENDINENTE1, type = "h")
plot(x = BKIA.IA$FECHA, y = BKIA.IA$DIBOL, type = "h")


#BKT
FECHA = BKT$Fecha
EMA10 = EMA(BKT$Close, n = 10, wilder = FALSE)
EMA15 = EMA(BKT$Close, n = 15, wilder = FALSE)
DIBOL = BKT$`Bol alto` - BKT$`Bol bajo`
CIERRE = BKT$Close
BKT.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
BKT.IA = na.omit(BKT.IA)
BKT.IA$MENOS1 = Lag(BKT.IA$EMA15, 1)
BKT.IA$MENOS2 = Lag(BKT.IA$EMA15, 2)
BKT.IA$MENOS3 = Lag(BKT.IA$EMA15, 3)
BKT.IA = na.omit(BKT.IA)

BKT.IA$PENDINENTE1 = BKT.IA$EMA15 - BKT.IA$MENOS1 
BKT.IA$PENDINENTE2 = BKT.IA$EMA15 - BKT.IA$MENOS2
BKT.IA$PENDINENTE3 =  BKT.IA$EMA15 - BKT.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = BKT.IA$FECHA, y = BKT.IA$CIERRE, type = "b")
plot(x = BKT.IA$FECHA, y = BKT.IA$EMA15, type = "b")
plot(x = BKT.IA$FECHA, y = BKT.IA$PENDINENTE1, type = "h")
plot(x = BKT.IA$FECHA, y = BKT.IA$DIBOL, type = "h")


#CABK
FECHA = CABK$Fecha
EMA10 = EMA(CABK$Close, n = 10, wilder = FALSE)
EMA15 = EMA(CABK$Close, n = 15, wilder = FALSE)
DIBOL = CABK$`Bol alto` - CABK$`Bol bajo`
CIERRE = CABK$Close
CABK.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
CABK.IA = na.omit(CABK.IA)
CABK.IA$MENOS1 = Lag(CABK.IA$EMA15, 1)
CABK.IA$MENOS2 = Lag(CABK.IA$EMA15, 2)
CABK.IA$MENOS3 = Lag(CABK.IA$EMA15, 3)
CABK.IA = na.omit(CABK.IA)

CABK.IA$PENDINENTE1 = CABK.IA$EMA15 - CABK.IA$MENOS1 
CABK.IA$PENDINENTE2 = CABK.IA$EMA15 - CABK.IA$MENOS2
CABK.IA$PENDINENTE3 =  CABK.IA$EMA15 - CABK.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = CABK.IA$FECHA, y = CABK.IA$CIERRE, type = "b")
plot(x = CABK.IA$FECHA, y = CABK.IA$EMA15, type = "b")
plot(x = CABK.IA$FECHA, y = CABK.IA$PENDINENTE1, type = "h")
plot(x = CABK.IA$FECHA, y = CABK.IA$DIBOL, type = "h")


#CIE
FECHA = CIE$Fecha
EMA10 = EMA(CIE$Close, n = 10, wilder = FALSE)
EMA15 = EMA(CIE$Close, n = 15, wilder = FALSE)
DIBOL = CIE$`Bol alto` - CIE$`Bol bajo`
CIERRE = CIE$Close
CIE.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
CIE.IA = na.omit(CIE.IA)
CIE.IA$MENOS1 = Lag(CIE.IA$EMA15, 1)
CIE.IA$MENOS2 = Lag(CIE.IA$EMA15, 2)
CIE.IA$MENOS3 = Lag(CIE.IA$EMA15, 3)
CIE.IA = na.omit(CIE.IA)

CIE.IA$PENDINENTE1 = CIE.IA$EMA15 - CIE.IA$MENOS1 
CIE.IA$PENDINENTE2 = CIE.IA$EMA15 - CIE.IA$MENOS2
CIE.IA$PENDINENTE3 =  CIE.IA$EMA15 - CIE.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = CIE.IA$FECHA, y = CIE.IA$CIERRE, type = "b")
plot(x = CIE.IA$FECHA, y = CIE.IA$EMA15, type = "b")
plot(x = CIE.IA$FECHA, y = CIE.IA$PENDINENTE1, type = "h")
plot(x = CIE.IA$FECHA, y = CIE.IA$DIBOL, type = "h")


#CLNX
FECHA = CLNX$Fecha
EMA10 = EMA(CLNX$Close, n = 10, wilder = FALSE)
EMA15 = EMA(CLNX$Close, n = 15, wilder = FALSE)
DIBOL = CLNX$`Bol alto` - CLNX$`Bol bajo`
CIERRE = CLNX$Close
CLNX.IA = cbind.data.frame(FECHA,CIERRE,EMA15, DIBOL)
CLNX.IA = na.omit(CLNX.IA)
CLNX.IA$MENOS1 = Lag(CLNX.IA$EMA15, 1)
CLNX.IA$MENOS2 = Lag(CLNX.IA$EMA15, 2)
CLNX.IA$MENOS3 = Lag(CLNX.IA$EMA15, 3)
CLNX.IA = na.omit(CLNX.IA)

CLNX.IA$PENDINENTE1 = CLNX.IA$EMA15 - CLNX.IA$MENOS1 
CLNX.IA$PENDINENTE2 = CLNX.IA$EMA15 - CLNX.IA$MENOS2
CLNX.IA$PENDINENTE3 =  CLNX.IA$EMA15 - CLNX.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = CLNX.IA$FECHA, y = CLNX.IA$CLNXRRE, type = "b")
plot(x = CLNX.IA$FECHA, y = CLNX.IA$EMA15, type = "b")
plot(x = CLNX.IA$FECHA, y = CLNX.IA$PENDINENTE1, type = "h")
plot(x = CLNX.IA$FECHA, y = CLNX.IA$DIBOL, type = "h")


#COL
FECHA = COL$Fecha
EMA10 = EMA(COL$Close, n = 10, wilder = FALSE)
EMA15 = EMA(COL$Close, n = 15, wilder = FALSE)
DIBOL = COL$`Bol alto` - COL$`Bol bajo`
COLRRE = COL$Close
COL.IA = cbind.data.frame(FECHA,COLRRE,EMA15, DIBOL)
COL.IA = na.omit(COL.IA)
COL.IA$MENOS1 = Lag(COL.IA$EMA15, 1)
COL.IA$MENOS2 = Lag(COL.IA$EMA15, 2)
COL.IA$MENOS3 = Lag(COL.IA$EMA15, 3)
COL.IA = na.omit(COL.IA)

COL.IA$PENDINENTE1 = COL.IA$EMA15 - COL.IA$MENOS1 
COL.IA$PENDINENTE2 = COL.IA$EMA15 - COL.IA$MENOS2
COL.IA$PENDINENTE3 =  COL.IA$EMA15 - COL.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = COL.IA$FECHA, y = COL.IA$COLRRE, type = "b")
plot(x = COL.IA$FECHA, y = COL.IA$EMA15, type = "b")
plot(x = COL.IA$FECHA, y = COL.IA$PENDINENTE1, type = "h")
plot(x = COL.IA$FECHA, y = COL.IA$DIBOL, type = "h")


#ELE
FECHA = ELE$Fecha
EMA10 = EMA(ELE$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ELE$Close, n = 15, wilder = FALSE)
DIBOL = ELE$`Bol alto` - ELE$`Bol bajo`
ELERRE = ELE$Close
ELE.IA = cbind.data.frame(FECHA,ELERRE,EMA15, DIBOL)
ELE.IA = na.omit(ELE.IA)
ELE.IA$MENOS1 = Lag(ELE.IA$EMA15, 1)
ELE.IA$MENOS2 = Lag(ELE.IA$EMA15, 2)
ELE.IA$MENOS3 = Lag(ELE.IA$EMA15, 3)
ELE.IA = na.omit(ELE.IA)

ELE.IA$PENDINENTE1 = ELE.IA$EMA15 - ELE.IA$MENOS1 
ELE.IA$PENDINENTE2 = ELE.IA$EMA15 - ELE.IA$MENOS2
ELE.IA$PENDINENTE3 =  ELE.IA$EMA15 - ELE.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ELE.IA$FECHA, y = ELE.IA$ELERRE, type = "b")
plot(x = ELE.IA$FECHA, y = ELE.IA$EMA15, type = "b")
plot(x = ELE.IA$FECHA, y = ELE.IA$PENDINENTE1, type = "h")
plot(x = ELE.IA$FECHA, y = ELE.IA$DIBOL, type = "h")


#ENC
FECHA = ENC$Fecha
EMA10 = EMA(ENC$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ENC$Close, n = 15, wilder = FALSE)
DIBOL = ENC$`Bol alto` - ENC$`Bol bajo`
ENCRRE = ENC$Close
ENC.IA = cbind.data.frame(FECHA,ENCRRE,EMA15, DIBOL)
ENC.IA = na.omit(ENC.IA)
ENC.IA$MENOS1 = Lag(ENC.IA$EMA15, 1)
ENC.IA$MENOS2 = Lag(ENC.IA$EMA15, 2)
ENC.IA$MENOS3 = Lag(ENC.IA$EMA15, 3)
ENC.IA = na.omit(ENC.IA)

ENC.IA$PENDINENTE1 = ENC.IA$EMA15 - ENC.IA$MENOS1 
ENC.IA$PENDINENTE2 = ENC.IA$EMA15 - ENC.IA$MENOS2
ENC.IA$PENDINENTE3 =  ENC.IA$EMA15 - ENC.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ENC.IA$FECHA, y = ENC.IA$ENCRRE, type = "b")
plot(x = ENC.IA$FECHA, y = ENC.IA$EMA15, type = "b")
plot(x = ENC.IA$FECHA, y = ENC.IA$PENDINENTE1, type = "h")
plot(x = ENC.IA$FECHA, y = ENC.IA$DIBOL, type = "h")


#ENG
FECHA = ENG$Fecha
EMA10 = EMA(ENG$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ENG$Close, n = 15, wilder = FALSE)
DIBOL = ENG$`Bol alto` - ENG$`Bol bajo`
ENGRRE = ENG$Close
ENG.IA = cbind.data.frame(FECHA,ENGRRE,EMA15, DIBOL)
ENG.IA = na.omit(ENG.IA)
ENG.IA$MENOS1 = Lag(ENG.IA$EMA15, 1)
ENG.IA$MENOS2 = Lag(ENG.IA$EMA15, 2)
ENG.IA$MENOS3 = Lag(ENG.IA$EMA15, 3)
ENG.IA = na.omit(ENG.IA)

ENG.IA$PENDINENTE1 = ENG.IA$EMA15 - ENG.IA$MENOS1 
ENG.IA$PENDINENTE2 = ENG.IA$EMA15 - ENG.IA$MENOS2
ENG.IA$PENDINENTE3 =  ENG.IA$EMA15 - ENG.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ENG.IA$FECHA, y = ENG.IA$ENGRRE, type = "b")
plot(x = ENG.IA$FECHA, y = ENG.IA$EMA15, type = "b")
plot(x = ENG.IA$FECHA, y = ENG.IA$PENDINENTE1, type = "h")
plot(x = ENG.IA$FECHA, y = ENG.IA$DIBOL, type = "h")

#FER
FECHA = FER$Fecha
EMA10 = EMA(FER$Close, n = 10, wilder = FALSE)
EMA15 = EMA(FER$Close, n = 15, wilder = FALSE)
DIBOL = FER$`Bol alto` - FER$`Bol bajo`
FERRRE = FER$Close
FER.IA = cbind.data.frame(FECHA,FERRRE,EMA15, DIBOL)
FER.IA = na.omit(FER.IA)
FER.IA$MENOS1 = Lag(FER.IA$EMA15, 1)
FER.IA$MENOS2 = Lag(FER.IA$EMA15, 2)
FER.IA$MENOS3 = Lag(FER.IA$EMA15, 3)
FER.IA = na.omit(FER.IA)

FER.IA$PENDINENTE1 = FER.IA$EMA15 - FER.IA$MENOS1 
FER.IA$PENDINENTE2 = FER.IA$EMA15 - FER.IA$MENOS2
FER.IA$PENDINENTE3 =  FER.IA$EMA15 - FER.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = FER.IA$FECHA, y = FER.IA$FERRRE, type = "b")
plot(x = FER.IA$FECHA, y = FER.IA$EMA15, type = "b")
plot(x = FER.IA$FECHA, y = FER.IA$PENDINENTE1, type = "h")
plot(x = FER.IA$FECHA, y = FER.IA$DIBOL, type = "h")

#GRF
FECHA = GRF$Fecha
EMA10 = EMA(GRF$Close, n = 10, wilder = FALSE)
EMA15 = EMA(GRF$Close, n = 15, wilder = FALSE)
DIBOL = GRF$`Bol alto` - GRF$`Bol bajo`
GRFRRE = GRF$Close
GRF.IA = cbind.data.frame(FECHA,GRFRRE,EMA15, DIBOL)
GRF.IA = na.omit(GRF.IA)
GRF.IA$MENOS1 = Lag(GRF.IA$EMA15, 1)
GRF.IA$MENOS2 = Lag(GRF.IA$EMA15, 2)
GRF.IA$MENOS3 = Lag(GRF.IA$EMA15, 3)
GRF.IA = na.omit(GRF.IA)

GRF.IA$PENDINENTE1 = GRF.IA$EMA15 - GRF.IA$MENOS1 
GRF.IA$PENDINENTE2 = GRF.IA$EMA15 - GRF.IA$MENOS2
GRF.IA$PENDINENTE3 =  GRF.IA$EMA15 - GRF.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = GRF.IA$FECHA, y = GRF.IA$GRFRRE, type = "b")
plot(x = GRF.IA$FECHA, y = GRF.IA$EMA15, type = "b")
plot(x = GRF.IA$FECHA, y = GRF.IA$PENDINENTE1, type = "h")
plot(x = GRF.IA$FECHA, y = GRF.IA$DIBOL, type = "h")

#IAG
FECHA = IAG$Fecha
EMA10 = EMA(IAG$Close, n = 10, wilder = FALSE)
EMA15 = EMA(IAG$Close, n = 15, wilder = FALSE)
DIBOL = IAG$`Bol alto` - IAG$`Bol bajo`
IAGRRE = IAG$Close
IAG.IA = cbind.data.frame(FECHA,IAGRRE,EMA15, DIBOL)
IAG.IA = na.omit(IAG.IA)
IAG.IA$MENOS1 = Lag(IAG.IA$EMA15, 1)
IAG.IA$MENOS2 = Lag(IAG.IA$EMA15, 2)
IAG.IA$MENOS3 = Lag(IAG.IA$EMA15, 3)
IAG.IA = na.omit(IAG.IA)

IAG.IA$PENDINENTE1 = IAG.IA$EMA15 - IAG.IA$MENOS1 
IAG.IA$PENDINENTE2 = IAG.IA$EMA15 - IAG.IA$MENOS2
IAG.IA$PENDINENTE3 =  IAG.IA$EMA15 - IAG.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = IAG.IA$FECHA, y = IAG.IA$IAGRRE, type = "b")
plot(x = IAG.IA$FECHA, y = IAG.IA$EMA15, type = "b")
plot(x = IAG.IA$FECHA, y = IAG.IA$PENDINENTE1, type = "h")
plot(x = IAG.IA$FECHA, y = IAG.IA$DIBOL, type = "h")


#IBE
FECHA = IBE$Fecha
EMA10 = EMA(IBE$Close, n = 10, wilder = FALSE)
EMA15 = EMA(IBE$Close, n = 15, wilder = FALSE)
DIBOL = IBE$`Bol alto` - IBE$`Bol bajo`
IBERRE = IBE$Close
IBE.IA = cbind.data.frame(FECHA,IBERRE,EMA15, DIBOL)
IBE.IA = na.omit(IBE.IA)
IBE.IA$MENOS1 = Lag(IBE.IA$EMA15, 1)
IBE.IA$MENOS2 = Lag(IBE.IA$EMA15, 2)
IBE.IA$MENOS3 = Lag(IBE.IA$EMA15, 3)
IBE.IA = na.omit(IBE.IA)

IBE.IA$PENDINENTE1 = IBE.IA$EMA15 - IBE.IA$MENOS1 
IBE.IA$PENDINENTE2 = IBE.IA$EMA15 - IBE.IA$MENOS2
IBE.IA$PENDINENTE3 =  IBE.IA$EMA15 - IBE.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = IBE.IA$FECHA, y = IBE.IA$IBERRE, type = "b")
plot(x = IBE.IA$FECHA, y = IBE.IA$EMA15, type = "b")
plot(x = IBE.IA$FECHA, y = IBE.IA$PENDINENTE1, type = "h")
plot(x = IBE.IA$FECHA, y = IBE.IA$DIBOL, type = "h")


#IDR
FECHA = IDR$Fecha
EMA10 = EMA(IDR$Close, n = 10, wilder = FALSE)
EMA15 = EMA(IDR$Close, n = 15, wilder = FALSE)
DIBOL = IDR$`Bol alto` - IDR$`Bol bajo`
IDRRRE = IDR$Close
IDR.IA = cbind.data.frame(FECHA,IDRRRE,EMA15, DIBOL)
IDR.IA = na.omit(IDR.IA)
IDR.IA$MENOS1 = Lag(IDR.IA$EMA15, 1)
IDR.IA$MENOS2 = Lag(IDR.IA$EMA15, 2)
IDR.IA$MENOS3 = Lag(IDR.IA$EMA15, 3)
IDR.IA = na.omit(IDR.IA)

IDR.IA$PENDINENTE1 = IDR.IA$EMA15 - IDR.IA$MENOS1 
IDR.IA$PENDINENTE2 = IDR.IA$EMA15 - IDR.IA$MENOS2
IDR.IA$PENDINENTE3 =  IDR.IA$EMA15 - IDR.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = IDR.IA$FECHA, y = IDR.IA$IDRRRE, type = "b")
plot(x = IDR.IA$FECHA, y = IDR.IA$EMA15, type = "b")
plot(x = IDR.IA$FECHA, y = IDR.IA$PENDINENTE1, type = "h")
plot(x = IDR.IA$FECHA, y = IDR.IA$DIBOL, type = "h")

#ITX
FECHA = ITX$Fecha
EMA10 = EMA(ITX$Close, n = 10, wilder = FALSE)
EMA15 = EMA(ITX$Close, n = 15, wilder = FALSE)
DIBOL = ITX$`Bol alto` - ITX$`Bol bajo`
ITXRRE = ITX$Close
ITX.IA = cbind.data.frame(FECHA,ITXRRE,EMA15, DIBOL)
ITX.IA = na.omit(ITX.IA)
ITX.IA$MENOS1 = Lag(ITX.IA$EMA15, 1)
ITX.IA$MENOS2 = Lag(ITX.IA$EMA15, 2)
ITX.IA$MENOS3 = Lag(ITX.IA$EMA15, 3)
ITX.IA = na.omit(ITX.IA)

ITX.IA$PENDINENTE1 = ITX.IA$EMA15 - ITX.IA$MENOS1 
ITX.IA$PENDINENTE2 = ITX.IA$EMA15 - ITX.IA$MENOS2
ITX.IA$PENDINENTE3 =  ITX.IA$EMA15 - ITX.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = ITX.IA$FECHA, y = ITX.IA$ITXRRE, type = "b")
plot(x = ITX.IA$FECHA, y = ITX.IA$EMA15, type = "b")
plot(x = ITX.IA$FECHA, y = ITX.IA$PENDINENTE1, type = "h")
plot(x = ITX.IA$FECHA, y = ITX.IA$DIBOL, type = "h")

#MAP
FECHA = MAP$Fecha
EMA10 = EMA(MAP$Close, n = 10, wilder = FALSE)
EMA15 = EMA(MAP$Close, n = 15, wilder = FALSE)
DIBOL = MAP$`Bol alto` - MAP$`Bol bajo`
MAPRRE = MAP$Close
MAP.IA = cbind.data.frame(FECHA,MAPRRE,EMA15, DIBOL)
MAP.IA = na.omit(MAP.IA)
MAP.IA$MENOS1 = Lag(MAP.IA$EMA15, 1)
MAP.IA$MENOS2 = Lag(MAP.IA$EMA15, 2)
MAP.IA$MENOS3 = Lag(MAP.IA$EMA15, 3)
MAP.IA = na.omit(MAP.IA)

MAP.IA$PENDINENTE1 = MAP.IA$EMA15 - MAP.IA$MENOS1 
MAP.IA$PENDINENTE2 = MAP.IA$EMA15 - MAP.IA$MENOS2
MAP.IA$PENDINENTE3 =  MAP.IA$EMA15 - MAP.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = MAP.IA$FECHA, y = MAP.IA$MAPRRE, type = "b")
plot(x = MAP.IA$FECHA, y = MAP.IA$EMA15, type = "b")
plot(x = MAP.IA$FECHA, y = MAP.IA$PENDINENTE1, type = "h")
plot(x = MAP.IA$FECHA, y = MAP.IA$DIBOL, type = "h")



#MEL
FECHA = MEL$Fecha
EMA10 = EMA(MEL$Close, n = 10, wilder = FALSE)
EMA15 = EMA(MEL$Close, n = 15, wilder = FALSE)
DIBOL = MEL$`Bol alto` - MEL$`Bol bajo`
MELRRE = MEL$Close
MEL.IA = cbind.data.frame(FECHA,MELRRE,EMA15, DIBOL)
MEL.IA = na.omit(MEL.IA)
MEL.IA$MENOS1 = Lag(MEL.IA$EMA15, 1)
MEL.IA$MENOS2 = Lag(MEL.IA$EMA15, 2)
MEL.IA$MENOS3 = Lag(MEL.IA$EMA15, 3)
MEL.IA = na.omit(MEL.IA)

MEL.IA$PENDINENTE1 = MEL.IA$EMA15 - MEL.IA$MENOS1 
MEL.IA$PENDINENTE2 = MEL.IA$EMA15 - MEL.IA$MENOS2
MEL.IA$PENDINENTE3 =  MEL.IA$EMA15 - MEL.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = MEL.IA$FECHA, y = MEL.IA$MELRRE, type = "b")
plot(x = MEL.IA$FECHA, y = MEL.IA$EMA15, type = "b")
plot(x = MEL.IA$FECHA, y = MEL.IA$PENDINENTE1, type = "h")
plot(x = MEL.IA$FECHA, y = MEL.IA$DIBOL, type = "h")

#MRL
FECHA = MRL$Fecha
EMA10 = EMA(MRL$Close, n = 10, wilder = FALSE)
EMA15 = EMA(MRL$Close, n = 15, wilder = FALSE)
DIBOL = MRL$`Bol alto` - MRL$`Bol bajo`
MRLRRE = MRL$Close
MRL.IA = cbind.data.frame(FECHA,MRLRRE,EMA15, DIBOL)
MRL.IA = na.omit(MRL.IA)
MRL.IA$MENOS1 = Lag(MRL.IA$EMA15, 1)
MRL.IA$MENOS2 = Lag(MRL.IA$EMA15, 2)
MRL.IA$MENOS3 = Lag(MRL.IA$EMA15, 3)
MRL.IA = na.omit(MRL.IA)

MRL.IA$PENDINENTE1 = MRL.IA$EMA15 - MRL.IA$MENOS1 
MRL.IA$PENDINENTE2 = MRL.IA$EMA15 - MRL.IA$MENOS2
MRL.IA$PENDINENTE3 =  MRL.IA$EMA15 - MRL.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = MRL.IA$FECHA, y = MRL.IA$MRLRRE, type = "b")
plot(x = MRL.IA$FECHA, y = MRL.IA$EMA15, type = "l")
plot(x = MRL.IA$FECHA, y = MRL.IA$PENDINENTE1, type = "h")
plot(x = MRL.IA$FECHA, y = MRL.IA$DIBOL, type = "h")

#MTS
FECHA = MTS$Fecha
EMA10 = EMA(MTS$Close, n = 10, wilder = FALSE)
EMA15 = EMA(MTS$Close, n = 15, wilder = FALSE)
DIBOL = MTS$`Bol alto` - MTS$`Bol bajo`
MTSRRE = MTS$Close
MTS.IA = cbind.data.frame(FECHA,MTSRRE,EMA15, DIBOL)
MTS.IA = na.omit(MTS.IA)
MTS.IA$MENOS1 = Lag(MTS.IA$EMA15, 1)
MTS.IA$MENOS2 = Lag(MTS.IA$EMA15, 2)
MTS.IA$MENOS3 = Lag(MTS.IA$EMA15, 3)
MTS.IA = na.omit(MTS.IA)

MTS.IA$PENDINENTE1 = MTS.IA$EMA15 - MTS.IA$MENOS1 
MTS.IA$PENDINENTE2 = MTS.IA$EMA15 - MTS.IA$MENOS2
MTS.IA$PENDINENTE3 =  MTS.IA$EMA15 - MTS.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = MTS.IA$FECHA, y = MTS.IA$MTSRRE, type = "b")
plot(x = MTS.IA$FECHA, y = MTS.IA$EMA15, type = "b")
plot(x = MTS.IA$FECHA, y = MTS.IA$PENDINENTE1, type = "h")
plot(x = MTS.IA$FECHA, y = MTS.IA$DIBOL, type = "h")

#NTGY
FECHA = NTGY$Fecha
EMA10 = EMA(NTGY$Close, n = 10, wilder = FALSE)
EMA15 = EMA(NTGY$Close, n = 15, wilder = FALSE)
DIBOL = NTGY$`Bol alto` - NTGY$`Bol bajo`
NTGYRRE = NTGY$Close
NTGY.IA = cbind.data.frame(FECHA,NTGYRRE,EMA15, DIBOL)
NTGY.IA = na.omit(NTGY.IA)
NTGY.IA$MENOS1 = Lag(NTGY.IA$EMA15, 1)
NTGY.IA$MENOS2 = Lag(NTGY.IA$EMA15, 2)
NTGY.IA$MENOS3 = Lag(NTGY.IA$EMA15, 3)
NTGY.IA = na.omit(NTGY.IA)

NTGY.IA$PENDINENTE1 = NTGY.IA$EMA15 - NTGY.IA$MENOS1 
NTGY.IA$PENDINENTE2 = NTGY.IA$EMA15 - NTGY.IA$MENOS2
NTGY.IA$PENDINENTE3 =  NTGY.IA$EMA15 - NTGY.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = NTGY.IA$FECHA, y = NTGY.IA$NTGYRRE, type = "b")
plot(x = NTGY.IA$FECHA, y = NTGY.IA$EMA15, type = "b")
plot(x = NTGY.IA$FECHA, y = NTGY.IA$PENDINENTE1, type = "h")
plot(x = NTGY.IA$FECHA, y = NTGY.IA$DIBOL, type = "h")


#REE
FECHA = REE$Fecha
EMA10 = EMA(REE$Close, n = 10, wilder = FALSE)
EMA15 = EMA(REE$Close, n = 15, wilder = FALSE)
DIBOL = REE$`Bol alto` - REE$`Bol bajo`
REERRE = REE$Close
REE.IA = cbind.data.frame(FECHA,REERRE,EMA15, DIBOL)
REE.IA = na.omit(REE.IA)
REE.IA$MENOS1 = Lag(REE.IA$EMA15, 1)
REE.IA$MENOS2 = Lag(REE.IA$EMA15, 2)
REE.IA$MENOS3 = Lag(REE.IA$EMA15, 3)
REE.IA = na.omit(REE.IA)

REE.IA$PENDINENTE1 = REE.IA$EMA15 - REE.IA$MENOS1 
REE.IA$PENDINENTE2 = REE.IA$EMA15 - REE.IA$MENOS2
REE.IA$PENDINENTE3 =  REE.IA$EMA15 - REE.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = REE.IA$FECHA, y = REE.IA$REERRE, type = "b")
plot(x = REE.IA$FECHA, y = REE.IA$EMA15, type = "b")
plot(x = REE.IA$FECHA, y = REE.IA$PENDINENTE1, type = "h")
plot(x = REE.IA$FECHA, y = REE.IA$DIBOL, type = "h")

#REP
FECHA = REP$Fecha
EMA10 = EMA(REP$Close, n = 10, wilder = FALSE)
EMA15 = EMA(REP$Close, n = 15, wilder = FALSE)
DIBOL = REP$`Bol alto` - REP$`Bol bajo`
REPRRE = REP$Close
REP.IA = cbind.data.frame(FECHA,REPRRE,EMA15, DIBOL)
REP.IA = na.omit(REP.IA)
REP.IA$MENOS1 = Lag(REP.IA$EMA15, 1)
REP.IA$MENOS2 = Lag(REP.IA$EMA15, 2)
REP.IA$MENOS3 = Lag(REP.IA$EMA15, 3)
REP.IA = na.omit(REP.IA)

REP.IA$PENDINENTE1 = REP.IA$EMA15 - REP.IA$MENOS1 
REP.IA$PENDINENTE2 = REP.IA$EMA15 - REP.IA$MENOS2
REP.IA$PENDINENTE3 =  REP.IA$EMA15 - REP.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = REP.IA$FECHA, y = REP.IA$REPRRE, type = "b")
plot(x = REP.IA$FECHA, y = REP.IA$EMA15, type = "b")
plot(x = REP.IA$FECHA, y = REP.IA$PENDINENTE1, type = "h")
plot(x = REP.IA$FECHA, y = REP.IA$DIBOL, type = "h")

#SAB
FECHA = SAB$Fecha
EMA10 = EMA(SAB$Close, n = 10, wilder = FALSE)
EMA15 = EMA(SAB$Close, n = 15, wilder = FALSE)
DIBOL = SAB$`Bol alto` - SAB$`Bol bajo`
SABRRE = SAB$Close
SAB.IA = cbind.data.frame(FECHA,SABRRE,EMA15, DIBOL)
SAB.IA = na.omit(SAB.IA)
SAB.IA$MENOS1 = Lag(SAB.IA$EMA15, 1)
SAB.IA$MENOS2 = Lag(SAB.IA$EMA15, 2)
SAB.IA$MENOS3 = Lag(SAB.IA$EMA15, 3)
SAB.IA = na.omit(SAB.IA)

SAB.IA$PENDINENTE1 = SAB.IA$EMA15 - SAB.IA$MENOS1 
SAB.IA$PENDINENTE2 = SAB.IA$EMA15 - SAB.IA$MENOS2
SAB.IA$PENDINENTE3 =  SAB.IA$EMA15 - SAB.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = SAB.IA$FECHA, y = SAB.IA$SABRRE, type = "b")
plot(x = SAB.IA$FECHA, y = SAB.IA$EMA15, type = "b")
plot(x = SAB.IA$FECHA, y = SAB.IA$PENDINENTE1, type = "h")
plot(x = SAB.IA$FECHA, y = SAB.IA$DIBOL, type = "h")

#SAN
FECHA = SAN$Fecha
EMA10 = EMA(SAN$Close, n = 10, wilder = FALSE)
EMA15 = EMA(SAN$Close, n = 15, wilder = FALSE)
DIBOL = SAN$`Bol alto` - SAN$`Bol bajo`
SANRRE = SAN$Close
SAN.IA = cbind.data.frame(FECHA,SANRRE,EMA15, DIBOL)
SAN.IA = na.omit(SAN.IA)
SAN.IA$MENOS1 = Lag(SAN.IA$EMA15, 1)
SAN.IA$MENOS2 = Lag(SAN.IA$EMA15, 2)
SAN.IA$MENOS3 = Lag(SAN.IA$EMA15, 3)
SAN.IA = na.omit(SAN.IA)

SAN.IA$PENDINENTE1 = SAN.IA$EMA15 - SAN.IA$MENOS1 
SAN.IA$PENDINENTE2 = SAN.IA$EMA15 - SAN.IA$MENOS2
SAN.IA$PENDINENTE3 =  SAN.IA$EMA15 - SAN.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = SAN.IA$FECHA, y = SAN.IA$SANRRE, type = "b")
plot(x = SAN.IA$FECHA, y = SAN.IA$EMA15, type = "b")
plot(x = SAN.IA$FECHA, y = SAN.IA$PENDINENTE1, type = "h")
plot(x = SAN.IA$FECHA, y = SAN.IA$DIBOL, type = "h")


#SGRE
FECHA = SGRE$Fecha
EMA10 = EMA(SGRE$Close, n = 10, wilder = FALSE)
EMA15 = EMA(SGRE$Close, n = 15, wilder = FALSE)
DIBOL = SGRE$`Bol alto` - SGRE$`Bol bajo`
SGRERRE = SGRE$Close
SGRE.IA = cbind.data.frame(FECHA,SGRERRE,EMA15, DIBOL)
SGRE.IA = na.omit(SGRE.IA)
SGRE.IA$MENOS1 = Lag(SGRE.IA$EMA15, 1)
SGRE.IA$MENOS2 = Lag(SGRE.IA$EMA15, 2)
SGRE.IA$MENOS3 = Lag(SGRE.IA$EMA15, 3)
SGRE.IA = na.omit(SGRE.IA)

SGRE.IA$PENDINENTE1 = SGRE.IA$EMA15 - SGRE.IA$MENOS1 
SGRE.IA$PENDINENTE2 = SGRE.IA$EMA15 - SGRE.IA$MENOS2
SGRE.IA$PENDINENTE3 =  SGRE.IA$EMA15 - SGRE.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = SGRE.IA$FECHA, y = SGRE.IA$SGRERRE, type = "b")
plot(x = SGRE.IA$FECHA, y = SGRE.IA$EMA15, type = "b")
plot(x = SGRE.IA$FECHA, y = SGRE.IA$PENDINENTE1, type = "h")
plot(x = SGRE.IA$FECHA, y = SGRE.IA$DIBOL, type = "h")

#TEF
FECHA = TEF$Fecha
EMA10 = EMA(TEF$Close, n = 10, wilder = FALSE)
EMA15 = EMA(TEF$Close, n = 15, wilder = FALSE)
DIBOL = TEF$`Bol alto` - TEF$`Bol bajo`
TEFRRE = TEF$Close
TEF.IA = cbind.data.frame(FECHA,TEFRRE,EMA15, DIBOL)
TEF.IA = na.omit(TEF.IA)
TEF.IA$MENOS1 = Lag(TEF.IA$EMA15, 1)
TEF.IA$MENOS2 = Lag(TEF.IA$EMA15, 2)
TEF.IA$MENOS3 = Lag(TEF.IA$EMA15, 3)
TEF.IA = na.omit(TEF.IA)

TEF.IA$PENDINENTE1 = TEF.IA$EMA15 - TEF.IA$MENOS1 
TEF.IA$PENDINENTE2 = TEF.IA$EMA15 - TEF.IA$MENOS2
TEF.IA$PENDINENTE3 =  TEF.IA$EMA15 - TEF.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = TEF.IA$FECHA, y = TEF.IA$TEFRRE, type = "b")
plot(x = TEF.IA$FECHA, y = TEF.IA$EMA15, type = "b")
plot(x = TEF.IA$FECHA, y = TEF.IA$PENDINENTE1, type = "h")
plot(x = TEF.IA$FECHA, y = TEF.IA$DIBOL, type = "h")

#VIS
FECHA = VIS$Fecha
EMA10 = EMA(VIS$Close, n = 10, wilder = FALSE)
EMA15 = EMA(VIS$Close, n = 15, wilder = FALSE)
DIBOL = VIS$`Bol alto` - VIS$`Bol bajo`
VISRRE = VIS$Close
VIS.IA = cbind.data.frame(FECHA,VISRRE,EMA15, DIBOL)
VIS.IA = na.omit(VIS.IA)
VIS.IA$MENOS1 = Lag(VIS.IA$EMA15, 1)
VIS.IA$MENOS2 = Lag(VIS.IA$EMA15, 2)
VIS.IA$MENOS3 = Lag(VIS.IA$EMA15, 3)
VIS.IA = na.omit(VIS.IA)

VIS.IA$PENDINENTE1 = VIS.IA$EMA15 - VIS.IA$MENOS1 
VIS.IA$PENDINENTE2 = VIS.IA$EMA15 - VIS.IA$MENOS2
VIS.IA$PENDINENTE3 =  VIS.IA$EMA15 - VIS.IA$MENOS3

dev.off()

x11() # Abrimos el primer dispositivo

matrix(c(1:4), nrow=4, byrow=FALSE)

layout(matrix(c(1:4), nrow=4, byrow=FALSE))

layout.show(4) # Muestra las cuatro particiones

par(mar=c(1,1,1,1))

plot(x = VIS.IA$FECHA, y = VIS.IA$VISRRE, type = "b")
plot(x = VIS.IA$FECHA, y = VIS.IA$EMA15, type = "b")
plot(x = VIS.IA$FECHA, y = VIS.IA$PENDINENTE1, type = "h")
plot(x = VIS.IA$FECHA, y = VIS.IA$DIBOL, type = "h")




