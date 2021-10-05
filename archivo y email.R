install.packages("gmailr")
library(openxlsx)
library(gmailr)


l = list(IBEX = IBEX, ACS = ACS, ACX = ACX, ALM = ALM , AMS = AMS, ANA = ANA, BBVA = BBVA, BKIA = BKIA, BKT = BKT,
         CABK = CABK, CIE = CIE, CLNX = CLNX, COL = COL, ELE = ELE, ENC = ENC, ENG = ENG, FER = FER,
         GRF = GRF, IAG = IAG, IBE = IBE, IDR = IDR,  ITX = ITX, MAP = MAP, MAS = MAS,  MEL = MEL, MRL = MRL, 
         MTS = MTS, NTGY = NTGY, REE = REE, REP = REP, SAB = SAB, SAN = SAN, SGRE = SGRE, TEF = TEF,
         VIS = VIS)

openxlsx::write.xlsx(l,"historico.xlsx")
