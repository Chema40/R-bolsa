install.packages("TTR")
library(TTR)

#ACS
ACS.MC =na.omit(ACS.MC)
ACS.BOL = BBands(ACS.MC[,c("ACS.MC.High","ACS.MC.Low","ACS.MC.Close")], n = 20, sd = 2)
ACS.BOL = as.data.frame(ACS.BOL)
ACS.MACD = MACD(ACS$ACS.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder= FALSE), list(EMA, wilder=FALSE), list(EMA, wilder=FALSE)))
ACS.MACD = as.data.frame(ACS.MACD)
ACS.RSI = RSI(ACS$ACS.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ACS.RSI = as.data.frame(ACS.RSI)
ACS.ROC = ROC(ACS.MC$ACS.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ACS.ROC = as.data.frame(ACS.ROC)
ACS.ROC = ACS.ROC[,]*100
ACS=cbind(ACS,ACS.ROC, ACS.RSI,ACS.MACD,ACS.BOL)
row.names(ACS) = NULL
ACS$ACS.MC.Adjusted = NULL
colnames(ACS) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                "Bol bajo", "Media movil", "Bol alto", "%B")
ACS = na.omit(ACS)
row.names(ACS) = NULL

#ACX
ACX.MC =na.omit(ACX.MC)
ACX.BOL = BBands(ACX.MC[,c("ACX.MC.High","ACX.MC.Low","ACX.MC.Close")], n = 20, sd = 2)
ACX.BOL = as.data.frame(ACX.BOL)
ACX.MACD = MACD(ACX$ACX.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ACX.MACD = as.data.frame(ACX.MACD)
ACX.RSI = RSI(ACX$ACX.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ACX.RSI = as.data.frame(ACX.RSI)
ACX.ROC = ROC(ACX.MC$ACX.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ACX.ROC = as.data.frame(ACX.ROC)
ACX.ROC = ACX.ROC[,]*100
ACX=cbind(ACX,ACX.ROC, ACX.RSI,ACX.MACD,ACX.BOL)
row.names(ACX) = NULL
ACX$ACX.MC.Adjusted = NULL
colnames(ACX) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ACX = na.omit(ACX)
row.names(ACX) = NULL

#AENA
#AENA.MC =na.omit(AENA.MC)
#AENA.BOL = BBands(AENA.MC[,c("AENA.MC.High","AENA.MC.Low","AENA.MC.Close")], n = 20, sd = 2)
#AENA.BOL = as.data.frame(AENA.BOL)
#AENA.MACD = MACD(AENA$AENA.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
#AENA.MACD = as.data.frame(AENA.MACD)
#AENA.RSI = RSI(AENA$AENA.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
#AENA.RSI = as.data.frame(AENA.RSI)
#AENA.ROC = ROC(AENA.MC$AENA.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
#AENA.ROC = as.data.frame(AENA.ROC)
#AENA.ROC = AENA.ROC[,]*100
#AENA=cbind(AENA,AENA.ROC, AENA.RSI,AENA.MACD,AENA.BOL)
#row.names(AENA) = NULL
#AENA$AENA.MC.Adjusted = NULL
#colnames(AENA) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
#                  "Bol bajo", "Media movil", "Bol alto", "%B")
#AENA = na.omit(AENA)
#row.names(AENA) = NULL

#ALMIRALL
ALM.MC =na.omit(ALM.MC)
ALM.BOL = BBands(ALM.MC[,c("ALM.MC.High","ALM.MC.Low","ALM.MC.Close")], n = 20, sd = 2)
ALM.BOL = as.data.frame(ALM.BOL)
ALM.MACD = MACD(ALM$ALM.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ALM.MACD = as.data.frame(ALM.MACD)
ALM.RSI = RSI(ALM$ALM.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ALM.RSI = as.data.frame(ALM.RSI)
ALM.ROC = ROC(ALM.MC$ALM.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ALM.ROC = as.data.frame(ALM.ROC)
ALM.ROC = ALM.ROC[,]*100
ALM=cbind(ALM,ALM.ROC, ALM.RSI,ALM.MACD,ALM.BOL)
row.names(ALM) = NULL
ALM$ALM.MC.Adjusted = NULL
colnames(ALM) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                   "Bol bajo", "Media movil", "Bol alto", "%B")
ALM = na.omit(ALM)
row.names(ALM) = NULL

#AMS
AMS.MC =na.omit(AMS.MC)
AMS.BOL = BBands(AMS.MC[,c("AMS.MC.High","AMS.MC.Low","AMS.MC.Close")], n = 20, sd = 2)
AMS.BOL = as.data.frame(AMS.BOL)
AMS.MACD = MACD(AMS$AMS.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
AMS.MACD = as.data.frame(AMS.MACD)
AMS.RSI = RSI(AMS$AMS.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
AMS.RSI = as.data.frame(AMS.RSI)
AMS.ROC = ROC(AMS.MC$AMS.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
AMS.ROC = as.data.frame(AMS.ROC)
AMS.ROC = AMS.ROC[,]*100
AMS=cbind(AMS,AMS.ROC, AMS.RSI,AMS.MACD,AMS.BOL)
row.names(AMS) = NULL
AMS$AMS.MC.Adjusted = NULL
colnames(AMS) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
AMS = na.omit(AMS)
row.names(AMS) = NULL

#ANA
ANA.MC =na.omit(ANA.MC)
ANA.BOL = BBands(ANA.MC[,c("ANA.MC.High","ANA.MC.Low","ANA.MC.Close")], n = 20, sd = 2)
ANA.BOL = as.data.frame(ANA.BOL)
ANA.MACD = MACD(ANA$ANA.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ANA.MACD = as.data.frame(ANA.MACD)
ANA.RSI = RSI(ANA$ANA.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ANA.RSI = as.data.frame(ANA.RSI)
ANA.ROC = ROC(ANA.MC$ANA.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ANA.ROC = as.data.frame(ANA.ROC)
ANA.ROC = ANA.ROC[,]*100
ANA=cbind(ANA,ANA.ROC, ANA.RSI,ANA.MACD,ANA.BOL)
row.names(ANA) = NULL
ANA$ANA.MC.Adjusted = NULL
colnames(ANA) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ANA = na.omit(ANA)
row.names(ANA) = NULL

#BBVA
BBVA.MC =na.omit(BBVA.MC)
BBVA.BOL = BBands(BBVA.MC[,c("BBVA.MC.High","BBVA.MC.Low","BBVA.MC.Close")], n = 20, sd = 2)
BBVA.BOL = as.data.frame(BBVA.BOL)
BBVA.MACD = MACD(BBVA$BBVA.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
BBVA.MACD = as.data.frame(BBVA.MACD)
BBVA.RSI = RSI(BBVA$BBVA.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
BBVA.RSI = as.data.frame(BBVA.RSI)
BBVA.ROC = ROC(BBVA.MC$BBVA.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
BBVA.ROC = as.data.frame(BBVA.ROC)
BBVA.ROC = BBVA.ROC[,]*100
BBVA=cbind(BBVA,BBVA.ROC, BBVA.RSI,BBVA.MACD,BBVA.BOL)
row.names(BBVA) = NULL
BBVA$BBVA.MC.Adjusted = NULL
colnames(BBVA) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
BBVA = na.omit(BBVA)
row.names(BBVA) = NULL

#BKIA
BKIA.MC =na.omit(BKIA.MC)
BKIA.BOL = BBands(BKIA.MC[,c("BKIA.MC.High","BKIA.MC.Low","BKIA.MC.Close")], n = 20, sd = 2)
BKIA.BOL = as.data.frame(BKIA.BOL)
BKIA.MACD = MACD(BKIA$BKIA.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
BKIA.MACD = as.data.frame(BKIA.MACD)
BKIA.RSI = RSI(BKIA$BKIA.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
BKIA.RSI = as.data.frame(BKIA.RSI)
BKIA.ROC = ROC(BKIA.MC$BKIA.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
BKIA.ROC = as.data.frame(BKIA.ROC)
BKIA.ROC = BKIA.ROC[,]*100
BKIA=cbind(BKIA,BKIA.ROC, BKIA.RSI,BKIA.MACD,BKIA.BOL)
row.names(BKIA) = NULL
BKIA$BKIA.MC.Adjusted = NULL
colnames(BKIA) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                   "Bol bajo", "Media movil", "Bol alto", "%B")
BKIA = na.omit(BKIA)
row.names(BKIA) = NULL

#BKT
BKT.MC =na.omit(BKT.MC)
BKT.BOL = BBands(BKT.MC[,c("BKT.MC.High","BKT.MC.Low","BKT.MC.Close")], n = 20, sd = 2)
BKT.BOL = as.data.frame(BKT.BOL)
BKT.MACD = MACD(BKT$BKT.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
BKT.MACD = as.data.frame(BKT.MACD)
BKT.RSI = RSI(BKT$BKT.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
BKT.RSI = as.data.frame(BKT.RSI)
BKT.ROC = ROC(BKT.MC$BKT.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
BKT.ROC = as.data.frame(BKT.ROC)
BKT.ROC = BKT.ROC[,]*100
BKT=cbind(BKT,BKT.ROC, BKT.RSI,BKT.MACD,BKT.BOL)
row.names(BKT) = NULL
BKT$BKT.MC.Adjusted = NULL
colnames(BKT) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
BKT = na.omit(BKT)
row.names(BKT) = NULL

#CABK
CABK.MC =na.omit(CABK.MC)
CABK.BOL = BBands(CABK.MC[,c("CABK.MC.High","CABK.MC.Low","CABK.MC.Close")], n = 20, sd = 2)
CABK.BOL = as.data.frame(CABK.BOL)
CABK.MACD = MACD(CABK$CABK.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
CABK.MACD = as.data.frame(CABK.MACD)
CABK.RSI = RSI(CABK$CABK.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
CABK.RSI = as.data.frame(CABK.RSI)
CABK.ROC = ROC(CABK.MC$CABK.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
CABK.ROC = as.data.frame(CABK.ROC)
CABK.ROC = CABK.ROC[,]*100
CABK=cbind(CABK,CABK.ROC, CABK.RSI,CABK.MACD,CABK.BOL)
row.names(CABK) = NULL
CABK$CABK.MC.Adjusted = NULL
colnames(CABK) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
CABK = na.omit(CABK)
row.names(CABK) = NULL

#CIE
CIE.MC =na.omit(CIE.MC)
CIE.BOL = BBands(CIE.MC[,c("CIE.MC.High","CIE.MC.Low","CIE.MC.Close")], n = 20, sd = 2)
CIE.BOL = as.data.frame(CIE.BOL)
CIE.MACD = MACD(CIE$CIE.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
CIE.MACD = as.data.frame(CIE.MACD)
CIE.RSI = RSI(CIE$CIE.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
CIE.RSI = as.data.frame(CIE.RSI)
CIE.ROC = ROC(CIE.MC$CIE.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
CIE.ROC = as.data.frame(CIE.ROC)
CIE.ROC = CIE.ROC[,]*100
CIE=cbind(CIE,CIE.ROC, CIE.RSI,CIE.MACD,CIE.BOL)
row.names(CIE) = NULL
CIE$CIE.MC.Adjusted = NULL
colnames(CIE) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                   "Bol bajo", "Media movil", "Bol alto", "%B")
CIE = na.omit(CIE)
row.names(CIE) = NULL

#CLNX
CLNX.MC =na.omit(CLNX.MC)
CLNX.BOL = BBands(CLNX.MC[,c("CLNX.MC.High","CLNX.MC.Low","CLNX.MC.Close")], n = 20, sd = 2)
CLNX.BOL = as.data.frame(CLNX.BOL)
CLNX.MACD = MACD(CLNX$CLNX.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
CLNX.MACD = as.data.frame(CLNX.MACD)
CLNX.RSI = RSI(CLNX$CLNX.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
CLNX.RSI = as.data.frame(CLNX.RSI)
CLNX.ROC = ROC(CLNX.MC$CLNX.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
CLNX.ROC = as.data.frame(CLNX.ROC)
CLNX.ROC = CLNX.ROC[,]*100
CLNX=cbind(CLNX,CLNX.ROC, CLNX.RSI,CLNX.MACD,CLNX.BOL)
row.names(CLNX) = NULL
CLNX$CLNX.MC.Adjusted = NULL
colnames(CLNX) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
CLNX = na.omit(CLNX)
row.names(CLNX) = NULL

#COL
COL.MC =na.omit(COL.MC)
COL.BOL = BBands(COL.MC[,c("COL.MC.High","COL.MC.Low","COL.MC.Close")], n = 20, sd = 2)
COL.BOL = as.data.frame(COL.BOL)
COL.MACD = MACD(COL$COL.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
COL.MACD = as.data.frame(COL.MACD)
COL.RSI = RSI(COL$COL.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
COL.RSI = as.data.frame(COL.RSI)
COL.ROC = ROC(COL.MC$COL.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
COL.ROC = as.data.frame(COL.ROC)
COL.ROC = COL.ROC[,]*100
COL=cbind(COL,COL.ROC, COL.RSI,COL.MACD,COL.BOL)
row.names(COL) = NULL
COL$COL.MC.Adjusted = NULL
colnames(COL) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
COL = na.omit(COL)
row.names(COL) = NULL

#ELE
ELE.MC =na.omit(ELE.MC)
ELE.BOL = BBands(ELE.MC[,c("ELE.MC.High","ELE.MC.Low","ELE.MC.Close")], n = 20, sd = 2)
ELE.BOL = as.data.frame(ELE.BOL)
ELE.MACD = MACD(ELE$ELE.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ELE.MACD = as.data.frame(ELE.MACD)
ELE.RSI = RSI(ELE$ELE.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ELE.RSI = as.data.frame(ELE.RSI)
ELE.ROC = ROC(ELE.MC$ELE.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ELE.ROC = as.data.frame(ELE.ROC)
ELE.ROC = ELE.ROC[,]*100
ELE=cbind(ELE,ELE.ROC, ELE.RSI,ELE.MACD,ELE.BOL)
row.names(ELE) = NULL
ELE$ELE.MC.Adjusted = NULL
colnames(ELE) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ELE = na.omit(ELE)
row.names(ELE) = NULL

#ENC
ENC.MC =na.omit(ENC.MC)
ENC.BOL = BBands(ENC.MC[,c("ENC.MC.High","ENC.MC.Low","ENC.MC.Close")], n = 20, sd = 2)
ENC.BOL = as.data.frame(ENC.BOL)
ENC.MACD = MACD(ENC$ENC.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ENC.MACD = as.data.frame(ENC.MACD)
ENC.RSI = RSI(ENC$ENC.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ENC.RSI = as.data.frame(ENC.RSI)
ENC.ROC = ROC(ENC.MC$ENC.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ENC.ROC = as.data.frame(ENC.ROC)
ENC.ROC = ENC.ROC[,]*100
ENC=cbind(ENC,ENC.ROC, ENC.RSI,ENC.MACD,ENC.BOL)
row.names(ENC) = NULL
ENC$ENC.MC.Adjusted = NULL
colnames(ENC) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ENC = na.omit(ENC)
row.names(ENC) = NULL

#ENG
ENG.MC =na.omit(ENG.MC)
ENG.BOL = BBands(ENG.MC[,c("ENG.MC.High","ENG.MC.Low","ENG.MC.Close")], n = 20, sd = 2)
ENG.BOL = as.data.frame(ENG.BOL)
ENG.MACD = MACD(ENG$ENG.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ENG.MACD = as.data.frame(ENG.MACD)
ENG.RSI = RSI(ENG$ENG.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ENG.RSI = as.data.frame(ENG.RSI)
ENG.ROC = ROC(ENG.MC$ENG.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ENG.ROC = as.data.frame(ENG.ROC)
ENG.ROC = ENG.ROC[,]*100
ENG=cbind(ENG,ENG.ROC, ENG.RSI,ENG.MACD,ENG.BOL)
row.names(ENG) = NULL
ENG$ENG.MC.Adjusted = NULL
colnames(ENG) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ENG = na.omit(ENG)
row.names(ENG) = NULL

#FER
FER.MC =na.omit(FER.MC)
FER.BOL = BBands(FER.MC[,c("FER.MC.High","FER.MC.Low","FER.MC.Close")], n = 20, sd = 2)
FER.BOL = as.data.frame(FER.BOL)
FER.MACD = MACD(FER$FER.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
FER.MACD = as.data.frame(FER.MACD)
FER.RSI = RSI(FER$FER.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
FER.RSI = as.data.frame(FER.RSI)
FER.ROC = ROC(FER.MC$FER.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
FER.ROC = as.data.frame(FER.ROC)
FER.ROC = FER.ROC[,]*100
FER=cbind(FER,FER.ROC, FER.RSI,FER.MACD,FER.BOL)
row.names(FER) = NULL
FER$FER.MC.Adjusted = NULL
colnames(FER) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
FER = na.omit(FER)
row.names(FER) = NULL


#GRF
GRF.MC =na.omit(GRF.MC)
GRF.BOL = BBands(GRF.MC[,c("GRF.MC.High","GRF.MC.Low","GRF.MC.Close")], n = 20, sd = 2)
GRF.BOL = as.data.frame(GRF.BOL)
GRF.MACD = MACD(GRF$GRF.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
GRF.MACD = as.data.frame(GRF.MACD)
GRF.RSI = RSI(GRF$GRF.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
GRF.RSI = as.data.frame(GRF.RSI)
GRF.ROC = ROC(GRF.MC$GRF.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
GRF.ROC = as.data.frame(GRF.ROC)
GRF.ROC = GRF.ROC[,]*100
GRF=cbind(GRF,GRF.ROC, GRF.RSI,GRF.MACD,GRF.BOL)
row.names(GRF) = NULL
GRF$GRF.MC.Adjusted = NULL
colnames(GRF) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
GRF = na.omit(GRF)
row.names(GRF) = NULL

#IAG
IAG.MC =na.omit(IAG.MC)
IAG.BOL = BBands(IAG.MC[,c("IAG.MC.High","IAG.MC.Low","IAG.MC.Close")], n = 20, sd = 2)
IAG.BOL = as.data.frame(IAG.BOL)
IAG.MACD = MACD(IAG$IAG.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
IAG.MACD = as.data.frame(IAG.MACD)
IAG.RSI = RSI(IAG$IAG.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
IAG.RSI = as.data.frame(IAG.RSI)
IAG.ROC = ROC(IAG.MC$IAG.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
IAG.ROC = as.data.frame(IAG.ROC)
IAG.ROC = IAG.ROC[,]*100
IAG=cbind(IAG,IAG.ROC, IAG.RSI,IAG.MACD,IAG.BOL)
row.names(IAG) = NULL
IAG$IAG.MC.Adjusted = NULL
colnames(IAG) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
IAG = na.omit(IAG)
row.names(IAG) = NULL

#IBE
IBE.MC =na.omit(IBE.MC)
IBE.BOL = BBands(IBE.MC[,c("IBE.MC.High","IBE.MC.Low","IBE.MC.Close")], n = 20, sd = 2)
IBE.BOL = as.data.frame(IBE.BOL)
IBE.MACD = MACD(IBE$IBE.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
IBE.MACD = as.data.frame(IBE.MACD)
IBE.RSI = RSI(IBE$IBE.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
IBE.RSI = as.data.frame(IBE.RSI)
IBE.ROC = ROC(IBE.MC$IBE.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
IBE.ROC = as.data.frame(IBE.ROC)
IBE.ROC = IBE.ROC[,]*100
IBE=cbind(IBE,IBE.ROC, IBE.RSI,IBE.MACD,IBE.BOL)
row.names(IBE) = NULL
IBE$IBE.MC.Adjusted = NULL
colnames(IBE) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
IBE = na.omit(IBE)
row.names(IBE) = NULL

#IDR
IDR.MC =na.omit(IDR.MC)
IDR.BOL = BBands(IDR.MC[,c("IDR.MC.High","IDR.MC.Low","IDR.MC.Close")], n = 20, sd = 2)
IDR.BOL = as.data.frame(IDR.BOL)
IDR.MACD = MACD(IDR$IDR.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
IDR.MACD = as.data.frame(IDR.MACD)
IDR.RSI = RSI(IDR$IDR.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
IDR.RSI = as.data.frame(IDR.RSI)
IDR.ROC = ROC(IDR.MC$IDR.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
IDR.ROC = as.data.frame(IDR.ROC)
IDR.ROC = IDR.ROC[,]*100
IDR=cbind(IDR,IDR.ROC, IDR.RSI,IDR.MACD,IDR.BOL)
row.names(IDR) = NULL
IDR$IDR.MC.Adjusted = NULL
colnames(IDR) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
IDR = na.omit(IDR)
row.names(IDR) = NULL

#ITX
ITX.MC =na.omit(ITX.MC)
ITX.BOL = BBands(ITX.MC[,c("ITX.MC.High","ITX.MC.Low","ITX.MC.Close")], n = 20, sd = 2)
ITX.BOL = as.data.frame(ITX.BOL)
ITX.MACD = MACD(ITX$ITX.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
ITX.MACD = as.data.frame(ITX.MACD)
ITX.RSI = RSI(ITX$ITX.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
ITX.RSI = as.data.frame(ITX.RSI)
ITX.ROC = ROC(ITX.MC$ITX.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
ITX.ROC = as.data.frame(ITX.ROC)
ITX.ROC = ITX.ROC[,]*100
ITX=cbind(ITX,ITX.ROC, ITX.RSI,ITX.MACD,ITX.BOL)
row.names(ITX) = NULL
ITX$ITX.MC.Adjusted = NULL
colnames(ITX) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
ITX = na.omit(ITX)
row.names(ITX) = NULL

#MAP
MAP.MC =na.omit(MAP.MC)
MAP.BOL = BBands(MAP.MC[,c("MAP.MC.High","MAP.MC.Low","MAP.MC.Close")], n = 20, sd = 2)
MAP.BOL = as.data.frame(MAP.BOL)
MAP.MACD = MACD(MAP$MAP.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
MAP.MACD = as.data.frame(MAP.MACD)
MAP.RSI = RSI(MAP$MAP.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
MAP.RSI = as.data.frame(MAP.RSI)
MAP.ROC = ROC(MAP.MC$MAP.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
MAP.ROC = as.data.frame(MAP.ROC)
MAP.ROC = MAP.ROC[,]*100
MAP=cbind(MAP,MAP.ROC, MAP.RSI,MAP.MACD,MAP.BOL)
row.names(MAP) = NULL
MAP$MAP.MC.Adjusted = NULL
colnames(MAP) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
MAP = na.omit(MAP)
row.names(MAP) = NULL

#MEL
MEL.MC =na.omit(MEL.MC)
MEL.BOL = BBands(MEL.MC[,c("MEL.MC.High","MEL.MC.Low","MEL.MC.Close")], n = 20, sd = 2)
MEL.BOL = as.data.frame(MEL.BOL)
MEL.MACD = MACD(MEL$MEL.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
MEL.MACD = as.data.frame(MEL.MACD)
MEL.RSI = RSI(MEL$MEL.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
MEL.RSI = as.data.frame(MEL.RSI)
MEL.ROC = ROC(MEL.MC$MEL.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
MEL.ROC = as.data.frame(MEL.ROC)
MEL.ROC = MEL.ROC[,]*100
MEL=cbind(MEL,MEL.ROC, MEL.RSI,MEL.MACD,MEL.BOL)
row.names(MEL) = NULL
MEL$MEL.MC.Adjusted = NULL
colnames(MEL) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
MEL = na.omit(MEL)
row.names(MEL) = NULL

#MRL
MRL.MC =na.omit(MRL.MC)
MRL.BOL = BBands(MRL.MC[,c("MRL.MC.High","MRL.MC.Low","MRL.MC.Close")], n = 20, sd = 2)
MRL.BOL = as.data.frame(MRL.BOL)
MRL.MACD = MACD(MRL$MRL.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
MRL.MACD = as.data.frame(MRL.MACD)
MRL.RSI = RSI(MRL$MRL.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
MRL.RSI = as.data.frame(MRL.RSI)
MRL.ROC = ROC(MRL.MC$MRL.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
MRL.ROC = as.data.frame(MRL.ROC)
MRL.ROC = MRL.ROC[,]*100
MRL=cbind(MRL,MRL.ROC, MRL.RSI,MRL.MACD,MRL.BOL)
row.names(MRL) = NULL
MRL$MRL.MC.Adjusted = NULL
colnames(MRL) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
MRL = na.omit(MRL)
row.names(MRL) = NULL

#MTS
MTS.MC =na.omit(MTS.MC)
MTS.BOL = BBands(MTS.MC[,c("MTS.MC.High","MTS.MC.Low","MTS.MC.Close")], n = 20, sd = 2)
MTS.BOL = as.data.frame(MTS.BOL)
MTS.MACD = MACD(MTS$MTS.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
MTS.MACD = as.data.frame(MTS.MACD)
MTS.RSI = RSI(MTS$MTS.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
MTS.RSI = as.data.frame(MTS.RSI)
MTS.ROC = ROC(MTS.MC$MTS.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
MTS.ROC = as.data.frame(MTS.ROC)
MTS.ROC = MTS.ROC[,]*100
MTS=cbind(MTS,MTS.ROC, MTS.RSI,MTS.MACD,MTS.BOL)
row.names(MTS) = NULL
MTS$MTS.MC.Adjusted = NULL
colnames(MTS) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
MTS = na.omit(MTS)
row.names(MTS) = NULL

#NTGY
NTGY.MC =na.omit(NTGY.MC)
NTGY.BOL = BBands(NTGY.MC[,c("NTGY.MC.High","NTGY.MC.Low","NTGY.MC.Close")], n = 20, sd = 2)
NTGY.BOL = as.data.frame(NTGY.BOL)
NTGY.MACD = MACD(NTGY$NTGY.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
NTGY.MACD = as.data.frame(NTGY.MACD)
NTGY.RSI = RSI(NTGY$NTGY.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
NTGY.RSI = as.data.frame(NTGY.RSI)
NTGY.ROC = ROC(NTGY.MC$NTGY.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
NTGY.ROC = as.data.frame(NTGY.ROC)
NTGY.ROC = NTGY.ROC[,]*100
NTGY=cbind(NTGY,NTGY.ROC, NTGY.RSI,NTGY.MACD,NTGY.BOL)
row.names(NTGY) = NULL
NTGY$NTGY.MC.Adjusted = NULL
colnames(NTGY) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
NTGY = na.omit(NTGY)
row.names(NTGY) = NULL

#REE
REE.MC =na.omit(REE.MC)
REE.BOL = BBands(REE.MC[,c("REE.MC.High","REE.MC.Low","REE.MC.Close")], n = 20, sd = 2)
REE.BOL = as.data.frame(REE.BOL)
REE.MACD = MACD(REE$REE.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
REE.MACD = as.data.frame(REE.MACD)
REE.RSI = RSI(REE$REE.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
REE.RSI = as.data.frame(REE.RSI)
REE.ROC = ROC(REE.MC$REE.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
REE.ROC = as.data.frame(REE.ROC)
REE.ROC = REE.ROC[,]*100
REE=cbind(REE,REE.ROC, REE.RSI,REE.MACD,REE.BOL)
row.names(REE) = NULL
REE$REE.MC.Adjusted = NULL
colnames(REE) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
REE = na.omit(REE)
row.names(REE) = NULL

#REP
REP.MC =na.omit(REP.MC)
REP.BOL = BBands(REP.MC[,c("REP.MC.High","REP.MC.Low","REP.MC.Close")], n = 20, sd = 2)
REP.BOL = as.data.frame(REP.BOL)
REP.MACD = MACD(REP$REP.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
REP.MACD = as.data.frame(REP.MACD)
REP.RSI = RSI(REP$REP.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
REP.RSI = as.data.frame(REP.RSI)
REP.ROC = ROC(REP.MC$REP.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
REP.ROC = as.data.frame(REP.ROC)
REP.ROC = REP.ROC[,]*100
REP=cbind(REP,REP.ROC, REP.RSI,REP.MACD,REP.BOL)
row.names(REP) = NULL
REP$REP.MC.Adjusted = NULL
colnames(REP) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
REP = na.omit(REP)
row.names(REP) = NULL

#SAB
SAB.MC =na.omit(SAB.MC)
SAB.BOL = BBands(SAB.MC[,c("SAB.MC.High","SAB.MC.Low","SAB.MC.Close")], n = 20, sd = 2)
SAB.BOL = as.data.frame(SAB.BOL)
SAB.MACD = MACD(SAB$SAB.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
SAB.MACD = as.data.frame(SAB.MACD)
SAB.RSI = RSI(SAB$SAB.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
SAB.RSI = as.data.frame(SAB.RSI)
SAB.ROC = ROC(SAB.MC$SAB.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
SAB.ROC = as.data.frame(SAB.ROC)
SAB.ROC = SAB.ROC[,]*100
SAB=cbind(SAB,SAB.ROC, SAB.RSI,SAB.MACD,SAB.BOL)
row.names(SAB) = NULL
SAB$SAB.MC.Adjusted = NULL
colnames(SAB) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
SAB = na.omit(SAB)
row.names(SAB) = NULL

#SAN
SAN.MC =na.omit(SAN.MC)
SAN.BOL = BBands(SAN.MC[,c("SAN.MC.High","SAN.MC.Low","SAN.MC.Close")], n = 20, sd = 2)
SAN.BOL = as.data.frame(SAN.BOL)
SAN.MACD = MACD(SAN$SAN.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
SAN.MACD = as.data.frame(SAN.MACD)
SAN.RSI = RSI(SAN$SAN.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
SAN.RSI = as.data.frame(SAN.RSI)
SAN.ROC = ROC(SAN.MC$SAN.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
SAN.ROC = as.data.frame(SAN.ROC)
SAN.ROC = SAN.ROC[,]*100
SAN=cbind(SAN,SAN.ROC, SAN.RSI,SAN.MACD,SAN.BOL)
row.names(SAN) = NULL
SAN$SAN.MC.Adjusted = NULL
colnames(SAN) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
SAN = na.omit(SAN)
row.names(SAN) = NULL

#SGRE
SGRE.MC =na.omit(SGRE.MC)
SGRE.BOL = BBands(SGRE.MC[,c("SGRE.MC.High","SGRE.MC.Low","SGRE.MC.Close")], n = 20, sd = 2)
SGRE.BOL = as.data.frame(SGRE.BOL)
SGRE.MACD = MACD(SGRE$SGRE.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
SGRE.MACD = as.data.frame(SGRE.MACD)
SGRE.RSI = RSI(SGRE$SGRE.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
SGRE.RSI = as.data.frame(SGRE.RSI)
SGRE.ROC = ROC(SGRE.MC$SGRE.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
SGRE.ROC = as.data.frame(SGRE.ROC)
SGRE.ROC = SGRE.ROC[,]*100
SGRE=cbind(SGRE,SGRE.ROC, SGRE.RSI,SGRE.MACD,SGRE.BOL)
row.names(SGRE) = NULL
SGRE$SGRE.MC.Adjusted = NULL
colnames(SGRE) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
SGRE = na.omit(SGRE)
row.names(SGRE) = NULL

#TEF
TEF.MC =na.omit(TEF.MC)
TEF.BOL = BBands(TEF.MC[,c("TEF.MC.High","TEF.MC.Low","TEF.MC.Close")], n = 20, sd = 2)
TEF.BOL = as.data.frame(TEF.BOL)
TEF.MACD = MACD(TEF$TEF.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
TEF.MACD = as.data.frame(TEF.MACD)
TEF.RSI = RSI(TEF$TEF.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
TEF.RSI = as.data.frame(TEF.RSI)
TEF.ROC = ROC(TEF.MC$TEF.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
TEF.ROC = as.data.frame(TEF.ROC)
TEF.ROC = TEF.ROC[,]*100
TEF=cbind(TEF,TEF.ROC, TEF.RSI,TEF.MACD,TEF.BOL)
row.names(TEF) = NULL
TEF$TEF.MC.Adjusted = NULL
colnames(TEF) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
TEF = na.omit(TEF)
row.names(TEF) = NULL

#VIS
VIS.MC =na.omit(VIS.MC)
VIS.BOL = BBands(VIS.MC[,c("VIS.MC.High","VIS.MC.Low","VIS.MC.Close")], n = 20, sd = 2)
VIS.BOL = as.data.frame(VIS.BOL)
VIS.MACD = MACD(VIS$VIS.MC.Close, 12, 26, 9, maType = list(list(EMA, wilder=TRUE), list(EMA, wilder=TRUE), list(EMA, wilder=TRUE)))
VIS.MACD = as.data.frame(VIS.MACD)
VIS.RSI = RSI(VIS$VIS.MC.Close, n=14, maType = list(maUp= list(EMA, wilder = TRUE),maDown =list(EMA, wilder = TRUE)))
VIS.RSI = as.data.frame(VIS.RSI)
VIS.ROC = ROC(VIS.MC$VIS.MC.Close, n = 1, type = "continuous", na.pad = TRUE)
VIS.ROC = as.data.frame(VIS.ROC)
VIS.ROC = VIS.ROC[,]*100
VIS=cbind(VIS,VIS.ROC, VIS.RSI,VIS.MACD,VIS.BOL)
row.names(VIS) = NULL
VIS$VIS.MC.Adjusted = NULL
colnames(VIS) = c("Fecha", "Open", "High", "Low", "Close", "Volumen","%", "RSI", "MACD", "Signal",
                  "Bol bajo", "Media movil", "Bol alto", "%B")
VIS = na.omit(VIS)
row.names(VIS) = NULL