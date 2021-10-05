IBEX$FECHA = Sys.Date()

TICKETS= c("ACS", "ACX", "AENA","ALM", "AMS", "ANA", "BBVA", "BKIA" , "BKT", "CABK", "CIE" ,"CLNX", "COL", "ELE", "ENC", "ENG",
           "FER", "GRF", "IAG", "IBE", "IDR", "ITX", "MAP", "MEL", "MRL", "MTS", "NTGY", "REE", "REP", "SAB", "SAN",
           "SGRE", "TEF", "VIS")
EMPRESAS = c("ACS", "ACERINOX", "AENA","ALMIRALL", "AMADEUS", "ACCIONA", "BBVA", "BANKIA", "BANKINTER", "CAIXABANK", "CIE" ,"CELLNEX",
             "COLONIAL", "ENDESA", "ENCE", "ENAGAS", "FERROVIAL", "GRIFOLS", "IAG", "IBERDROLA", "INDRA",  "INDITEX",
             "MAPFRE","MELIA", "MERLIN PROP", "ARCELORMITTAL", "GAS NATURAL", "RED ELECTRICA", "REPSOL",
             "BANCO SABADELL", "BANCO SANTANDER", "SIEMENS GAMESA", "TELEFONICA", "VISCOFAN")

IBEX = cbind(EMPRESAS, TICKETS)

IBEX = as.data.frame(IBEX)


IBEX$VALORES = NULL

IBEX$CIERRE = c(tail(ACS$Close,1),
                tail(ACS$Close,1),
                tail(ACX$Close,1),
                tail(ALM$Close,1),
                tail(AMS$Close,1), 
                tail(ANA$Close,1), 
                tail(BBVA$Close,1), 
                tail(BKIA$Close,1), 
                tail(BKT$Close,1), 
                tail(CABK$Close,1), 
                tail(CIE$Close,1),  
                tail(CLNX$Close,1),
                tail(COL$Close,1), 
                tail(ELE$Close,1), 
                tail(ENC$Close,1), 
                tail(ENG$Close,1), 
                tail(FER$Close,1), 
                tail(GRF$Close,1), 
                tail(IAG$Close,1), 
                tail(IBE$Close,1), 
                tail(IDR$Close,1), 
                tail(ITX$Close,1), 
                tail(MAP$Close,1), 
                tail(MEL$Close,1), 
                tail(MRL$Close,1), 
                tail(MTS$Close,1), 
                tail(NTGY$Close,1), 
                tail(REE$Close,1), 
                tail(REP$Close,1), 
                tail(SAB$Close,1), 
                tail(SAN$Close,1), 
                tail(SGRE$Close,1), 
                tail(TEF$Close,1),
                tail(VIS$Close,1))

IBEX$BAJO =   c(tail(ACS$Low,1), tail(ACS$Low,1), tail(ACX$Low,1), tail(ALM$Low,1) ,tail(AMS$Low,1), tail(ANA$Low,1), tail(BBVA$Low,1), tail(BKIA$Low,1), tail(BKT$Low,1), tail(CABK$Low,1), tail(CIE$Low,1) , tail(CLNX$Low,1),
                tail(COL$Low,1), tail(ELE$Low,1), tail(ENC$Low,1), tail(ENG$Low,1), tail(FER$Low,1), tail(GRF$Low,1), tail(IAG$Low,1), tail(IBE$Low,1), tail(IDR$Low,1) , tail(ITX$Low,1), tail(MAP$Low,1),
                tail(MEL$Low,1), tail(MRL$Low,1), tail(MTS$Low,1), tail(NTGY$Low,1), tail(REE$Low,1), tail(REP$Low,1), tail(SAB$Low,1), tail(SAN$Low,1), tail(SGRE$Low,1), tail(TEF$Low,1),
                tail(VIS$Low,1))

IBEX$RSI =   c(tail(ACS$RSI,1), tail(ACS$RSI,1), tail(ACX$RSI,1), tail(ALM$RSI,1) ,tail(AMS$RSI,1), tail(ANA$RSI,1), tail(BBVA$RSI,1), tail(BKIA$RSI,1), tail(BKT$RSI,1), tail(CABK$RSI,1), tail(CIE$RSI,1) , tail(CLNX$RSI,1),
                tail(COL$RSI,1), tail(ELE$RSI,1), tail(ENC$RSI,1), tail(ENG$RSI,1), tail(FER$RSI,1), tail(GRF$RSI,1), tail(IAG$RSI,1), tail(IBE$RSI,1), tail(IDR$RSI,1) , tail(ITX$RSI,1), tail(MAP$RSI,1),
                tail(MEL$RSI,1), tail(MRL$RSI,1), tail(MTS$RSI,1), tail(NTGY$RSI,1), tail(REE$RSI,1), tail(REP$RSI,1), tail(SAB$RSI,1), tail(SAN$RSI,1), tail(SGRE$RSI,1), tail(TEF$RSI,1),
                tail(VIS$RSI,1))

IBEX$BOLINF =  c(tail(ACS$`Bol bajo`,1), tail(ACS$`Bol bajo`,1), tail(ACX$`Bol bajo`,1), tail(ALM$`Bol bajo`,1) ,tail(AMS$`Bol bajo`,1), tail(ANA$`Bol bajo`,1), tail(BBVA$`Bol bajo`,1), tail(BKIA$`Bol bajo`,1), tail(BKT$`Bol bajo`,1), tail(CABK$`Bol bajo`,1), tail(CIE$`Bol bajo`,1) , tail(CLNX$`Bol bajo`,1),
               tail(COL$`Bol bajo`,1), tail(ELE$`Bol bajo`,1), tail(ENC$`Bol bajo`,1), tail(ENG$`Bol bajo`,1), tail(FER$`Bol bajo`,1), tail(GRF$`Bol bajo`,1), tail(IAG$`Bol bajo`,1), tail(IBE$`Bol bajo`,1), tail(IDR$`Bol bajo`,1) , tail(ITX$`Bol bajo`,1), tail(MAP$`Bol bajo`,1),
               tail(MEL$`Bol bajo`,1), tail(MRL$`Bol bajo`,1), tail(MTS$`Bol bajo`,1), tail(NTGY$`Bol bajo`,1), tail(REE$`Bol bajo`,1), tail(REP$`Bol bajo`,1), tail(SAB$`Bol bajo`,1), tail(SAN$`Bol bajo`,1), tail(SGRE$`Bol bajo`,1), tail(TEF$`Bol bajo`,1),
               tail(VIS$`Bol bajo`,1))

IBEX$BOLSUP =  c(tail(ACS$`Bol alto`,1), tail(ACS$`Bol alto`,1), tail(ACX$`Bol alto`,1), tail(ALM$`Bol alto`,1) ,tail(AMS$`Bol alto`,1), tail(ANA$`Bol alto`,1), tail(BBVA$`Bol alto`,1), tail(BKIA$`Bol alto`,1), tail(BKT$`Bol alto`,1), tail(CABK$`Bol alto`,1), tail(CIE$`Bol alto`,1) , tail(CLNX$`Bol alto`,1),
                 tail(COL$`Bol alto`,1), tail(ELE$`Bol alto`,1), tail(ENC$`Bol alto`,1), tail(ENG$`Bol alto`,1), tail(FER$`Bol alto`,1), tail(GRF$`Bol alto`,1), tail(IAG$`Bol alto`,1), tail(IBE$`Bol alto`,1), tail(IDR$`Bol alto`,1) , tail(ITX$`Bol alto`,1), tail(MAP$`Bol alto`,1),
                 tail(MEL$`Bol alto`,1), tail(MRL$`Bol alto`,1), tail(MTS$`Bol alto`,1), tail(NTGY$`Bol alto`,1), tail(REE$`Bol alto`,1), tail(REP$`Bol alto`,1), tail(SAB$`Bol alto`,1), tail(SAN$`Bol alto`,1), tail(SGRE$`Bol alto`,1), tail(TEF$`Bol alto`,1),
                 tail(VIS$`Bol alto`,1))


IBEX$TOCABOLINF = ifelse(IBEX$BAJO<IBEX$BOLINF,"VERDADERO","FALSO")
IBEX$TOCABOLSUP = ifelse(IBEX$CIERRE>IBEX$BOLSUP,"VERDADERO","FALSO")
IBEX$RSI30 = ifelse(IBEX$RSI<30,"VERDADERO","FALSO")
IBEX$RSI70 = ifelse(IBEX$RSI>70,"VERDADERO","FALSO")


IBEX$CIERRE = NULL
IBEX$RSI = NULL
IBEX$BOLINF = NULL
IBEX$TICKETS = NULL
IBEX$BOLSUP = NULL
IBEX$BAJO = NULL