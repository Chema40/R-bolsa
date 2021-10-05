install.packages("quantmod")
install.packages("openxlsx")
library(quantmod)
library(xts)

hoy = Sys.Date()


getSymbols("ACS.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ACS.MC)
ACS = data.frame(Fecha,ACS.MC)
ACS = na.omit(ACS)

getSymbols("ACX.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ACX.MC)
ACX = data.frame(Fecha,ACX.MC)
ACX = na.omit(ACX)

getSymbols("AENA.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(AENA.MC)
AENA = data.frame(Fecha,AENA.MC)
ACX = na.omit(ACX)

getSymbols("ALM.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ALM.MC)
ALM = data.frame(Fecha,ALM.MC)
ALM = na.omit(ALM)

getSymbols("AMS.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(AMS.MC)
AMS = data.frame(Fecha,AMS.MC)
AMS = na.omit(AMS)

getSymbols("ANA.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(AMS.MC)
ANA = data.frame(Fecha,ANA.MC)
ANA = na.omit(ANA)

getSymbols("BBVA.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ANA.MC)
BBVA = data.frame(Fecha,BBVA.MC)
BBVA = na.omit(BBVA)

getSymbols("BKIA.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(BKIA.MC)
BKIA = data.frame(Fecha,BKIA.MC)
BKIA = na.omit(BKIA)

getSymbols("BKT.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(BKT.MC)
BKT = data.frame(Fecha,BKT.MC)
BKT = na.omit(BKT)

getSymbols("CABK.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(CABK.MC)
CABK = data.frame(Fecha,CABK.MC)
CABK = na.omit(CABK)

getSymbols("CIE.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(CIE.MC)
CIE = data.frame(Fecha,CIE.MC)
CIE = na.omit(CIE)

getSymbols("CLNX.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(CLNX.MC)
CLNX = data.frame(Fecha,CLNX.MC)
CLNX = na.omit(CLNX)

getSymbols("COL.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(COL.MC)
COL = data.frame(Fecha,COL.MC)
COL = na.omit(COL)

getSymbols("ELE.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ELE.MC)
ELE = data.frame(Fecha,ELE.MC)
ELE = na.omit(ELE)

getSymbols("ENC.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ENC.MC)
ENC = data.frame(Fecha,ENC.MC)
ENC = na.omit(ENC)

getSymbols("ENG.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ENG.MC)
ENG = data.frame(Fecha,ENG.MC)
ENG = na.omit(ENG)

getSymbols("FER.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(FER.MC)
FER = data.frame(Fecha,FER.MC)
FER = na.omit(FER)

getSymbols("GRF.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(GRF.MC)
GRF = data.frame(Fecha,GRF.MC)
GRF = na.omit(GRF)

getSymbols("IAG.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(IAG.MC)
IAG = data.frame(Fecha,IAG.MC)
IAG = na.omit(IAG)

getSymbols("IBE.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(IBE.MC)
IBE = data.frame(Fecha,IBE.MC)
IBE = na.omit(IBE)

getSymbols("IDR.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(IDR.MC)
IDR = data.frame(Fecha,IDR.MC)
IDR = na.omit(IDR)

getSymbols("ITX.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(ITX.MC)
ITX = data.frame(Fecha,ITX.MC)
ITX  = na.omit(ITX)

getSymbols("MAP.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(MAP.MC)
MAP = data.frame(Fecha,MAP.MC)
MAP = na.omit(MAP)

getSymbols("MAS.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(MAS.MC)
MAS = data.frame(Fecha,MAS.MC)
MAS = na.omit(MAS)

getSymbols("MEL.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(MEL.MC)
MEL = data.frame(Fecha,MEL.MC)
MEL = na.omit(MEL)

getSymbols("MRL.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(MRL.MC)
MRL = data.frame(Fecha,MRL.MC)
MRL = na.omit(MRL)

getSymbols("MTS.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(MTS.MC)
MTS = data.frame(Fecha,MTS.MC)
MTS = na.omit(MTS)

getSymbols("NTGY.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(NTGY.MC)
NTGY = data.frame(Fecha,NTGY.MC)
NTGY = na.omit(NTGY)

getSymbols("REE.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(REE.MC)
REE = data.frame(Fecha,REE.MC)
REE = na.omit(REE)

getSymbols("REP.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(REP.MC)
REP = data.frame(Fecha,REP.MC)
REP = na.omit(REP)

getSymbols("SAB.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(SAB.MC)
SAB = data.frame(Fecha,SAB.MC)
SAB = na.omit(SAB)

getSymbols("SAN.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(SAN.MC)
SAN = data.frame(Fecha,SAN.MC)
SAN = na.omit(SAN)

getSymbols("SGRE.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(SGRE.MC)
SGRE = data.frame(Fecha,SGRE.MC)
SGRE = na.omit(SGRE)

getSymbols("TEF.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(TEF.MC)
TEF = data.frame(Fecha,TEF.MC)
TEF = na.omit(TEF)

getSymbols("VIS.MC", from = "2016-9-27", to = hoy, auto.assign = TRUE)
Fecha=index(VIS.MC)
VIS = data.frame(Fecha,VIS.MC)
VIS = na.omit(VIS)