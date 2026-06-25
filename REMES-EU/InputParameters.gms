* ============                             ===================
* ============ Elasticities                  ===================
* ============                             ===================
*PP 11) INTRODUCE ELASTICITIES (kl, kle, klem PER SECTOR)
parameter ELAS(*, *),ELAS0(*, *),elasM(*);

$gdxin 'TestElas'
$load ELAS0=ELAS
$gdxin

set EU27(cnt) /
AT
BE
BG
CZ
CY
DK
EE
FI
FR
DE
GR
HU
IE
IT
LV
LT
LU
MT
NL
PL
PT
RO
SK
SI
ES
SE
*NO
*GB
*CH
/;



parameter urate(cnt) unemployment rate in base year (2010) /
AT        =        0.041
BE        =        0.07
BG        =        0.092
CY        =        0.051
CZ        =        0.064
DE        =        0.0697
DK        =        0.063
EE        =        0.149
ES        =        0.178
FI        =        0.066
FR        =        0.077
GR        =        0.127
HU        =        0.1
IE        =        0.12
IT        =        0.084
LT        =        0.161
LU        =        0.038
LV        =        0.174
MT        =        0.056
NL        =        0.039
PL        =        0.081
PT        =        0.105
RO        =        0.0696
SE        =        0.086
SI        =        0.065
SK        =        0.125
GB        =        0.058
CH        =        0.0166
NO        =        0.027
/;



*Jan26
parameter GtK(cnt) capital ratio /
AT  =   3.1916
BE  =   2.6416
BG  =   2.9044
CY  =   2.368
CZ  =   2.7617
DE  =   2.8882
DK  =   2.3744
EE  =   2.4348
ES  =   3.4651
FI  =   3.084
FR  =   3.0404
GR  =   4.1286
HU  =   2.1679
IE  =   2.2131
IT  =   3.2455
LT  =   1.8726
LU  =   2.157
LV  =   1.9523
MT  =   1.9541
NL  =   2.5839
PL  =   1.8515
PT  =   2.9044
RO  =   1.9073
SE  =   3.338
SI  =   2.0458
SK  =   1.4642
GB  =   2.2131
CH  =   2.6416
NO  =   2.3744
/;


* from file Scenario_emissions/BAU by TNO
parameter eint0(cnt)  energy intensity in 2050 /
AT        =        0.61
BE        =        0.50
BG        =        0.40
CY        =        0.54
CZ        =        0.40
DE        =        0.65
DK        =        0.58
EE        =        0.55
ES        =        0.48
FI        =        0.49
FR        =        0.54
GR        =        0.66
HU        =        0.52
IE        =        0.55
IT        =        0.53
LT        =        0.64
LU        =        0.4
LV        =        0.65
MT        =        0.49
NL        =        0.48
PL        =        0.35
PT        =        0.57
RO        =        0.38
SE        =        0.44
SI        =        0.51
SK        =        0.23
GB        =        0.44
CH        =        0.69
NO        =        0.69
/;

* from file Scenario_emissions/BAU by TNO Extra 20% decrease
parameter eint1(cnt)  energy intensity in 2050 /
AT        =        0.42
BE        =        0.34
BG        =        0.52
CH        =        0.37
CZ        =        0.47
CY        =        0.40
DK        =        0.41
EE        =        0.40
FI        =        0.36
FR        =        0.38
DE        =        0.46
GR        =        0.43
HU        =        0.39
IE        =        0.38
IT        =        0.40
LV        =        0.42
LT        =        0.48
LU        =        0.31
MT        =        0.47
NL        =        0.41
PL        =        0.51
PT        =        0.39
RO        =        0.52
SK        =        0.47
SI        =        0.42
ES        =        0.42
SE        =        0.38
GB        =        0.39
NO        =        0.39
/;

*eint0(cnt)$(ExEff eq 1)=0*eint0(cnt)+1*eint1(cnt);


$ontext
* from file Scenario_emissions/BAU by TNO
parameter cint0(cnt)  carbon intensity in 2050 /
AT        =        0.55
BE        =        0.57
BG        =        0.43
CY        =        0.72
CZ        =        0.49
DE        =        0.60
DK        =        0.55
EE        =        0.39
ES        =        0.59
FI        =        0.46
FR        =        0.57
GR        =        0.48
HU        =        0.50
IE        =        0.31
IT        =        0.60
LT        =        0.49
LU        =        0.48
LV        =        0.29
MT        =        0.16
NL        =        0.55
PL        =        0.40
PT        =        0.61
RO        =        0.48
SE        =        0.25
SI        =        0.49
SK        =        0.50
GB        =        0.45
CH        =        0.57
NO        =        0.57
/;
* ##### REMOVE THIS!!! ######
*cint0(cnt)=0.8;
*############################
$offtext


*PP9b) HERE I PUT THE GROWTH OF THE DEMAND FROM THE REST OF THE WORLD.
* I ASSUME THAT IN GRADUAL DEVELOPMENT THE INDEX IS 1
* the data comes from Scenario_input_communication_fileGD_TNO.xlsx - sheet GDP_ROW
PARAMETER ROWd;
* for Gradual Development and Reference
ROWd=1;
* update only if the switch ROWgr is = 1
* for Techno-Friendly (denominator is the base value used for GD and Ref
ROWd$(P_S eq 3 and ROWgr eq 1)=((2.56+4.5)/(2.56+3.31))**(5/(2050-2011));
* for Societal Commitment
ROWd$(P_S eq 4 and ROWgr eq 1)=((2.56+4.5)/(2.56+3.31))**(5/(2050-2011));
* for Directed Transition
ROWd$(P_S eq 5 and ROWgr eq 1)=((2.57+3.31)/(2.56+3.31))**(5/(2050-2011));
* for Great-Mindshift
ROWd$(P_S eq 10 and ROWgr eq 1)=((2.56+4.5)/(2.56+3.31))**(5/(2050-2011));

*PP 10) HERE WE IDENTIFY THE RESOURCES (1) ENERGY (2) TRANSPORT (3) COMMODITIES
* FOR THE OUTPUT PRINTS (?)

*Identify the transport commodities and sectors, and the energy commodities
Parameter PID0(com0), SID0(sec0);
PID0(com0) = 0;
SID0(sec0) = 0;
* PRODUCT IDENTIFIER, SECTOR IDENTIFIER, FACTOR IDENTIFIER, TRANSPORT IDENTIFIER
PID0('c-bio') = 1;
PID0('c-powf') = 2;
PID0('c-powr') = 2;
PID0('c-coal') = 1;
PID0('c-crude-oil') = 1;
PID0('c-gase') = 1;
PID0('c-oil-gsl') = 1;
PID0('c-oil-jet') = 1;
PID0('c-oil-ker') = 1;
PID0('c-oil-dsl') = 1;
PID0('c-oil-hdi') = 1;
PID0('c-oil-ldsf') = 1;
PID0('c-c_trai') = 3;
PID0('c-c_tlnd') = 3;
PID0('c-c_tpip') = 3;
PID0('c-c_twas') = 3;
PID0('c-c_twai') = 3;
PID0('c-c_tair') = 3;

SID0('c_trai') = 3;
SID0('c_tlnd') = 3;
SID0('c_tpip') = 3;
SID0('c_twas') = 3;
SID0('c_twai') = 3;
SID0('c_tair') = 3;

Parameter FID0(com0), TID0(sec0);
FID0(com0) = 0;
TID0(sec0) = 0;


FID0('c-ng') = 1;
FID0('c-bio') = 1;
FID0('c-powf') = 2;
FID0('c-powr') = 2;
FID0('c-oil-gsl') = 1;
FID0('c-oil-jet') = 1;
FID0('c-oil-ker') = 1;
FID0('c-oil-dsl') = 1;
FID0('c-c_trai') = 3;
FID0('c-c_tlnd') = 3;
FID0('c-c_tpip') = 3;
FID0('c-c_twas') = 3;
FID0('c-c_twai') = 3;
FID0('c-c_tair') = 3;

TID0('c_trai') = 3;
TID0('c_tlnd') = 3;
TID0('c_twas') = 3;
TID0('c_twai') = 3;
TID0('c_tair') = 3;

* ####### write sam in percentages for selected goods. #############
set leap /l3*l10/;

Parameter CID0(com0);
CID0(com0)=0;
CID0('c-POWF')=1;
CID0('c-POWR')=1;
CID0('c-POWT')=1;
CID0('c-CRUDE-OIL')=1;
CID0('c-OIL-GSL')=1;
CID0('c-OIL-DSL')=1;
CID0('c-OIL-KER')=1;
CID0('c-OIL-LDSF')=1;
CID0('c-OIL-HDI')=1;
CID0('c-BIO')=1;
CID0('c-COAL')=1;
CID0('c-NG')=1;
*CID0('c-H2')=1;

* from GTAP
parameter elasM0(com0) armington elasticities between imports and domestic /
C-AAGR        3
C-IMIN        0.9
C-IRES        3.5
C-NG          17.2
C-BIO         1.4
C-POWF        2.8
C-POWR        2.8
C-POWT        2.8
C-LTH         1.4
C-COTH        1.9
C-CCON        1.9
C-CWSR        1.9
C-COFF        1.9
C-C_TRAI      1.9
C-C_TLND      1.9
C-C_TPIP      1.9
C-CHEA        1.9
C-Waste       1.9
C-COAL        3
C-CRUDE-OIL   5.2
C-GASE        17.2
C-OIL-GSL     5.2
C-OIL-JET     5.2
C-OIL-KER     5.2
C-OIL-DSL     5.2
C-OIL-HDI     5.2
C-OIL-LDSF    5.2
C-IMEA        3.75
C-C_TWAS      1.9
C-C_TWAI      1.9
C-C_TAIR      1.9
C-COIL        5.2
/;


* ========== Redefinition of the SAM, trade and trade margin matrices ==========

set sec /
iAGR
iIND
iALU
iSER
iTRA
iELC
iTRD
iCOA
iCOI
iNG
iCHE
iCON
*New sectors
iH2S
iH2E
iH2C
*iECS
/

set secout /
iAGRI
iINDU
iCOAL
iCOIL
iALUM
iTRDI
iNGAS
iSERV
iTRAN
iELCE
iCHEA
iCONS
iH2
/;

set com /
pAGR
pIND
pALU
pSER
pTRA
pELE
pTRD
pHTW
pOIL
pGSL
pDSL
pHDI
pNG
pCOA
pBIO
pFUL
pCHE
pCON
pH2
/;

set comout /
pAGRI
pINDU
pALUM
pSERV
pTRAN
pELEC
pTRDI
pHTWT
pOIL
pGSL
pDSL
pHDI
pNG
pCOA
pBIO
pFUL
pCHEA
pCONS
pH2
/;


set GWsec(sec) sectors hit by effects of global warming /
iAGR
iIND
iALU
iTRA
iCOA
iCOI
iNG
/;

parameter ENC(comout);
ENC(comout)=0;
ENC('pOIL')=1;
ENC('pGSL')=1;
ENC('pDSL')=1;
ENC('pHDI')=1;
ENC('pNG')=1;
ENC('pCOA')=1;
ENC('pBIO')=1;
ENC('pFUL')=1;


parameter worldcom(com);
worldcom(com)=0;
worldcom("pOIL")=1;
worldcom("pNG")=1;
worldcom("pCOA")=1;

* mapping original sectors and selected aggregations
set maps(sec0,sec)/
AAGR.iAGR
COAL.iCOA
COIL.iCOI
IMIN.iIND
IRES.iIND
IALA.iALU
POWF.iELC
POWR.iELC
POWT.iTRD
NG.iNG
LTH.iIND
COTH.iSER
CCON.iCON
CWSR.iSER
COFF.iSER
C_TRAI.iTRA
C_TLND.iTRA
C_TPIP.iTRA
C_TWAS.iTRA
C_TWAI.iTRA
C_TAIR.iTRA
CHEA.iCHE
Waste.iSER
BIO.iAGR
/;

* mapping original commodities and selected aggregations
set mapc(com0,com)/
c-AAGR.pAGR
c-IMIN.pIND
c-IRES.pIND
c-NG.pNG
c-BIO.pBIO
c-POWF.pELE
c-POWR.pELE
c-POWT.pTRD
c-LTH.pHTW
c-COTH.pSER
c-CCON.pCON
c-CWSR.pSER
c-COFF.pSER
c-C_TRAI.pTRA
c-C_TLND.pTRA
c-C_TPIP.pTRA
c-CHEA.pCHE
*c-CHEA.pSER
c-Waste.pSER
c-COAL.pCOA
c-CRUDE-OIL.pOIL
c-GASE.pNG
c-OIL-GSL.pGSL
c-OIL-JET.pFUL
c-OIL-KER.pFUL
c-OIL-DSL.pDSL
c-OIL-HDI.pHDI
c-OIL-LDSF.pFUL
c-IMEA.pALU
c-C_TWAS.pTRA
c-C_TWAI.pTRA
c-C_TAIR.pTRA
c-COIL.pOIL
/;

set maps2(sec,secout) /
iAGR        .        iAGRI
iIND        .        iINDU
iALU        .        iALUM
iSER        .        iSERV
iTRA        .        iTRAN
iELC        .        iELCE
iTRD        .        iTRDI
iCOA        .        iCOAL
iCOI        .        iCOIL
iNG         .        iNGAS
iCHE         .        iCHEA
iCON         .        iCONS
iH2S        .        iH2
iH2E        .        iH2
iH2C        .        iH2
/;

set mapc2(com,comout) /
pAGR        .        pAGRI
pIND        .        pINDU
pALU        .        pALUM
pSER        .        pSERV
pTRA        .        pTRAN
pELE        .        pELEC
pTRD        .        pTRDI
pHTW        .        pHTWT
pOIL        .        pOIL
pGSL        .        pGSL
pDSL        .        pDSL
pHDI        .        pHDI
pNG         .        pNG
pCOA        .        pCOA
pBIO        .        pBIO
pFUL        .        pFUL
pCHE        .        pCHEA
pCON        .        pCONS
pH2         .        pH2
/;

* resource sectors
set ressecs(sec) /
iCOI
iCOA
iNG
/;

* industrial sectors
set indsecs(sec) /
iIND
iTRA
/;

set ensecs(sec) /
iELC
iCOA
iCOI
iNG
iH2S
iH2E
iH2C
/;

* fossil fuels
set fosfuels(com) /
pOIL
pGSL
pDSL
pHDI
pNG
pCOA
pFUL
/;


* energy commodities
set energy(com) /
pGSL
pDSL
pHDI
pNG
pCOA
pFUL
pELE
pH2
pBIO
pOIL
/



set materials(com) /
pAGR
pIND
pALU
pSER
pTRA
pTRD
pHTW
pCON
/;


* power sectors
set powsecs(sec)
/
iELC
/;

* fossil fuels identifier
parameter FF(com);
FF(com)=0;
FF(fosfuels)=1;


Parameter PID(com);
PID(com) = 0;

PID('pBIO') = 1;
*PID('gpof') = 2;
PID('pELE') = 2;
PID('pTRD') = 4;
PID('pCOA') = 1;
PID('pNG')  = 1;
PID('pOIL') = 1;
PID('pHDI') = 1;
PID('pGSL') = 1;
PID('pDSL') = 1;
PID('pFUL') = 1;
PID('pTRA') = 3;
PID('pH2')  = 1;


* assign the new sector with zero activity in the benchmark
XDDZ(cnt,"iH2S","pH2") = 0 ;
XDDZ(cnt,"iH2C","pH2") = 0 ;
XDDZ(cnt,"iH2E","pH2") = 0 ;



Parameter SID(sec);
Parameter FID(com);
FID(com) = 0;
FID('pNG') = 1;
FID('pBIO') = 1;
FID('pELE') = 2;
FID('pFUL') = 1;
FID('pTRD') = 2;
FID('pOIL') = 1;
FID('pGSL') = 1;
FID('pDSL') = 1;
FID('pHDI') = 1;
FID('pCOA') = 1;
FID('pTRA') = 3;
FID('pH2')=1;

SID(sec) = 0;
* SECTORS THAT UNDERGO TRANSITION (UNDER TAG "T")
SID('iTRA') = 3;
SID('iAGR') = 3;
SID('iIND') = 3;
SID('iALU') = 3;
*SID('iELCF') = 3;
SID('iELC') = 3;
SID('iTRD') = 3;
SID('iSER') = 3;
SID('iTRA') = 3;
SID('iCOI') = 3;
SID('iNG') = 3;

*SID('i-H2') = 3;

Parameter TID(sec),CID(com);

TID(sec) = 0;
CID(com)=0;

TID('iTRA') = 3;
* commodities that are in newshare at the beginning (time 2)
*CID('gPOR')=1;
CID('pELE')=1;
CID('pTRD')=1;
CID('pOIL')=1;
CID('pGSL')=1;
CID('pDSL')=1;
CID('pFUL')=1;
CID('pBIO')=1;
CID('pCOA')=1;
CID('pNG')=1;
CID('pHDI')=1;
CID('pH2')=1;


* New sectors structure
* H2 production pg 16   and pg 41
parameter InputCom(sec,com) New sectors input
/
iH2S.pSER   0.2
iH2S.pIND   0.58
iH2S.pNG    0.76
iH2C.pSER   0.2
iH2C.pIND   0.58
iH2C.pNG    0.76
iH2C.pELE    0.4
iH2E.pSER   0.1
iH2E.pELE   3.46
iH2E.pIND   0.02
/;

* ======================= UPGRADE ELASTICITIES =================================

*elasticities for new sectors
ELAS("iH2S","KL")=0.3;
ELAS("iH2S","KLE")=0.1;
ELAS("iH2S","KLEM")=0.1;
ELAS("iH2C","KL")=0.3;
ELAS("iH2C","KLE")=0.1;
ELAS("iH2C","KLEM")=0.1;
ELAS("iH2E","KL")=0.3;
ELAS("iH2E","KLE")=0.1;
ELAS("iH2E","KLEM")=0.1;

* rate of return for recoursive dynamic model
*parameter ror(cnt) return on capital (non-temporal measure) /
*AT        0.064750563
*BE        0.089533446
*BG        0.136334302
*CY        0.106362307
*CZ        0.060507687
*DE        0.063182178
*DK        0.057037486
*EE        0.106545872
*ES        0.091810948
*FI        0.071815675
*FR        0.077219314
*GR        0.063228241
*HU        0.049390369
*IE        0.127667441
*IT        0.077656774
*LT        0.060549631
*LU        0.062262071
*LV        0.086238967
*MT        0.089632201
*NL        0.064158495
*PL        0.073664362
*PT        0.113106184
*RO        0.253896301
*SE        0.096012898
*SI        0.233838599
*SK        0.079693654
*GB        0.052138654
*CH        0.061020907
*NO        0.063209706
*/;


* Definition of CO2 final emissions
* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
$ontext
parameter finCO2(cnt) final percentage by country /
AT        0.18
BE        0.18
BG        0.18
CY        1
CZ        0.18
DE        0.18
DK        0.18
EE        0.18
ES        0.18
FI        0.18
FR        0.18
GR        0.18
HU        0.18
IE        0.18
IT        0.18
LT        0.18
LU        1
LV        1
MT        1
NL        0.18
PL        0.18
PT        0.18
RO        0.18
SE        0.18
SI        0.18
SK        0.18
GB        0.18
CH        0.18
NO        0.18
/;
$offtext
parameter finCO2(cnt);
finCO2(cnt)=carbonbudget;
*finCO2("CY")=1;
*finCO2("LU")=1;
*finCO2("LV")=1;
*finCO2("MT")=1;






* calibratiom values to obtain baseline GDP
* this works on the case with only GDP growth witout any other shock
parameter GDPcalBase(cnt) gdp calibration /
AT= 1
BE= 1
BG= 1
CH= 1
CY= 1
CZ= 1
DE= 1
DK= 1
EE= 1
ES= 1
FI= 1
FR= 1
GB= 1
GR= 1
HU= 1
IE= 1
IT= 1
LT= 1
LU= 1
LV= 1
MT= 1
NL= 1
NO= 1
PL= 1
PT= 1
RO= 1
SE= 1
SI= 1
SK= 1
/;

set nonpoll(sec) nonpolluting sectors /
iH2C
/;



* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
* growth of land use
parameter LandGrowth(cnt) 5 year land growth rate /
AT        0.138111229
BE        0.266441895
BG        0.336005748
CH        0.245966987
CY        0.53514481
CZ        0.313588857
DE        0.262087695
DK        0.337924053
EE        0.574071693
FI        0.280064776
FR        0.321284907
GR        0.370655046
HU        0.504724073
IE        0.471565163
IT        0.236370753
LV        0.293095751
LT        0.567068177
LU        0.143335207
MT        0.655050653
NL        0.487332752
PL        0.541141177
PT        0.234034764
RO        0.28126186
SK        0.294977163
SI        0.108682411
ES        0.270714647
SE        0.208998247
GB        0.45782146
NO        0.107295791
/;

* PRC0 data comes from the file Scenario_emissions from TNO using Kaya identity.
parameter PRC0(cnt) 5yr compound productivity /
AT                 0.0539
BE                 0.0415
BG                 0.1098
CY                 0.0532
CZ                 0.0744
DE                 0.0618
DK                 0.0617
EE                 0.1031
ES                 0.0607
FI                 0.0457
FR                 0.0520
GR                 0.0506
HU                 0.0828
IE                 0.0547
IT                 0.0350
LT                 0.1282
LU                 0.0337
LV                 0.1324
MT                 0.0782
NL                 0.0498
PL                 0.1158
PT                 0.0630
RO                 0.1080
SE                 0.0653
SI                 0.0621
SK                 0.1128
GB                 0.0521
CH                 0.0350
NO                 0.0635
/;


parameter PRC1(cnt) 5yr compound productivity counterfactual /
AT                 0.0539
BE                 0.0415
BG                 0.1098
CY                 0.0532
CZ                 0.0744
DE                 0.0618
DK                 0.0617
EE                 0.1031
ES                 0.0607
FI                 0.0457
FR                 0.0520
GR                 0.0506
HU                 0.0828
IE                 0.0547
IT                 0.0350
LT                 0.1282
LU                 0.0337
LV                 0.1324
MT                 0.0782
NL                 0.0498
PL                 0.1158
PT                 0.0630
RO                 0.1080
SE                 0.0653
SI                 0.0621
SK                 0.1128
GB                 0.0521
CH                 0.0350
NO                 0.0635
/;

parameter PRC2(cnt) 5yr compound productivity counterfactual /
AT        0.124030379
BE        0.111005386
BG        0.182928235
CY        0.123343821
CZ        0.145618268
DE        0.13235938
DK        0.132278715
EE        0.175777311
ES        0.131184043
FI        0.115440992
FR        0.122050115
GR        0.120526516
HU        0.154444103
IE        0.124867571
IT        0.104082756
LT        0.202188116
LU        0.102735183
LV        0.206635695
MT        0.149646384
NL        0.119713656
PL        0.189205011
PT        0.133656995
RO        0.180936351
SE        0.136007663
SI        0.132674202
SK        0.186010378
GB        0.122112657
CH        0.104082756
NO        0.141626523
/;


* from file emis_assumptions.xlsx
parameter cint0(cnt,sec)  carbon intensity change per year until 2020 /
AT        .        iCON        0.970275294
BE        .        iCON        0.983348248
BG        .        iCON        0.941278696
CY        .        iCON        0.972125273
CZ        .        iCON        0.963242891
DE        .        iCON        0.974985292
DK        .        iCON        0.952937157
EE        .        iCON        0.96391429
ES        .        iCON        0.974635216
FI        .        iCON        0.975100262
FR        .        iCON        0.973061228
GR        .        iCON        0.97195345
HU        .        iCON        0.96487356
IE        .        iCON        0.928945047
IT        .        iCON        0.97259731
LT        .        iCON        0.963464412
LU        .        iCON        0.960870741
LV        .        iCON        0.980271733
MT        .        iCON        0.898118811
NL        .        iCON        0.971676787
PL        .        iCON        0.965045469
PT        .        iCON        0.973139618
RO        .        iCON        1
SE        .        iCON        0.957718396
SI        .        iCON        0.967050067
SK        .        iCON        0.969682125
GB        .        iCON        0.955543894
CH        .        iCON        0.970275294
NO        .        iCON        0.952937157


AT        .        iCHE        0.970275294
BE        .        iCHE        0.983348248
BG        .        iCHE        0.941278696
CY        .        iCHE        0.972125273
CZ        .        iCHE        0.963242891
DE        .        iCHE        0.974985292
DK        .        iCHE        0.952937157
EE        .        iCHE        0.96391429
ES        .        iCHE        0.974635216
FI        .        iCHE        0.975100262
FR        .        iCHE        0.973061228
GR        .        iCHE        0.97195345
HU        .        iCHE        0.96487356
IE        .        iCHE        0.928945047
IT        .        iCHE        0.97259731
LT        .        iCHE        0.963464412
LU        .        iCHE        0.960870741
LV        .        iCHE        0.980271733
MT        .        iCHE        0.898118811
NL        .        iCHE        0.971676787
PL        .        iCHE        0.965045469
PT        .        iCHE        0.973139618
RO        .        iCHE        1
SE        .        iCHE        0.957718396
SI        .        iCHE        0.967050067
SK        .        iCHE        0.969682125
GB        .        iCHE        0.955543894
CH        .        iCHE        0.970275294
NO        .        iCHE        0.952937157

AT        .        iAGR        0.970275294
BE        .        iAGR        0.983348248
BG        .        iAGR        0.941278696
CY        .        iAGR        0.972125273
CZ        .        iAGR        0.963242891
DE        .        iAGR        0.974985292
DK        .        iAGR        0.952937157
EE        .        iAGR        0.96391429
ES        .        iAGR        0.974635216
FI        .        iAGR        0.975100262
FR        .        iAGR        0.973061228
GR        .        iAGR        0.97195345
HU        .        iAGR        0.96487356
IE        .        iAGR        0.928945047
IT        .        iAGR        0.97259731
LT        .        iAGR        0.963464412
LU        .        iAGR        0.960870741
LV        .        iAGR        0.980271733
MT        .        iAGR        0.898118811
NL        .        iAGR        0.971676787
PL        .        iAGR        0.965045469
PT        .        iAGR        0.973139618
RO        .        iAGR        1
SE        .        iAGR        0.957718396
SI        .        iAGR        0.967050067
SK        .        iAGR        0.969682125
GB        .        iAGR        0.955543894
CH        .        iAGR        0.970275294
NO        .        iAGR        0.952937157
AT        .        iIND        0.970275294
BE        .        iIND        0.983348248
BG        .        iIND        0.941278696
CY        .        iIND        0.972125273
CZ        .        iIND        0.963242891
DE        .        iIND        0.974985292
DK        .        iIND        0.952937157
EE        .        iIND        0.96391429
ES        .        iIND        0.974635216
FI        .        iIND        0.975100262
FR        .        iIND        0.973061228
GR        .        iIND        0.97195345
HU        .        iIND        0.96487356
IE        .        iIND        0.928945047
IT        .        iIND        0.97259731
LT        .        iIND        0.963464412
LU        .        iIND        0.960870741
LV        .        iIND        0.980271733
MT        .        iIND        0.898118811
NL        .        iIND        0.971676787
PL        .        iIND        0.965045469
PT        .        iIND        0.973139618
RO        .        iIND        1
SE        .        iIND        0.957718396
SI        .        iIND        0.967050067
SK        .        iIND        0.969682125
GB        .        iIND        0.955543894
CH        .        iIND        0.970275294
NO        .        iIND        0.952937157
AT        .        iALU        0.970275294
BE        .        iALU        0.983348248
BG        .        iALU        0.941278696
CY        .        iALU        0.972125273
CZ        .        iALU        0.963242891
DE        .        iALU        0.974985292
DK        .        iALU        0.952937157
EE        .        iALU        0.96391429
ES        .        iALU        0.974635216
FI        .        iALU        0.975100262
FR        .        iALU        0.973061228
GR        .        iALU        0.97195345
HU        .        iALU        0.96487356
IE        .        iALU        0.928945047
IT        .        iALU        0.97259731
LT        .        iALU        0.963464412
LU        .        iALU        0.960870741
LV        .        iALU        0.980271733
MT        .        iALU        0.898118811
NL        .        iALU        0.971676787
PL        .        iALU        0.965045469
PT        .        iALU        0.973139618
RO        .        iALU        1
SE        .        iALU        0.957718396
SI        .        iALU        0.967050067
SK        .        iALU        0.969682125
GB        .        iALU        0.955543894
CH        .        iALU        0.970275294
NO        .        iALU        0.952937157
AT        .        iSER        0.970275294
BE        .        iSER        0.983348248
BG        .        iSER        0.941278696
CY        .        iSER        0.972125273
CZ        .        iSER        0.963242891
DE        .        iSER        0.974985292
DK        .        iSER        0.952937157
EE        .        iSER        0.96391429
ES        .        iSER        0.974635216
FI        .        iSER        0.975100262
FR        .        iSER        0.973061228
GR        .        iSER        0.97195345
HU        .        iSER        0.96487356
IE        .        iSER        0.928945047
IT        .        iSER        0.97259731
LT        .        iSER        0.963464412
LU        .        iSER        0.960870741
LV        .        iSER        0.980271733
MT        .        iSER        0.898118811
NL        .        iSER        0.971676787
PL        .        iSER        0.965045469
PT        .        iSER        0.973139618
RO        .        iSER        1
SE        .        iSER        0.957718396
SI        .        iSER        0.967050067
SK        .        iSER        0.969682125
GB        .        iSER        0.955543894
CH        .        iSER        0.970275294
NO        .        iSER        0.952937157
AT        .        iTRA        0.970275294
BE        .        iTRA        0.983348248
BG        .        iTRA        0.941278696
CY        .        iTRA        0.972125273
CZ        .        iTRA        0.963242891
DE        .        iTRA        0.974985292
DK        .        iTRA        0.952937157
EE        .        iTRA        0.96391429
ES        .        iTRA        0.974635216
FI        .        iTRA        0.975100262
FR        .        iTRA        0.973061228
GR        .        iTRA        0.97195345
HU        .        iTRA        0.96487356
IE        .        iTRA        0.928945047
IT        .        iTRA        0.97259731
LT        .        iTRA        0.963464412
LU        .        iTRA        0.960870741
LV        .        iTRA        0.980271733
MT        .        iTRA        0.898118811
NL        .        iTRA        0.971676787
PL        .        iTRA        0.965045469
PT        .        iTRA        0.973139618
RO        .        iTRA        1
SE        .        iTRA        0.957718396
SI        .        iTRA        0.967050067
SK        .        iTRA        0.969682125
GB        .        iTRA        0.955543894
CH        .        iTRA        0.970275294
NO        .        iTRA        0.952937157
AT        .        iELC        0.970275294
BE        .        iELC        0.983348248
BG        .        iELC        0.941278696
CY        .        iELC        0.972125273
CZ        .        iELC        0.963242891
DE        .        iELC        0.974985292
DK        .        iELC        0.952937157
EE        .        iELC        0.96391429
ES        .        iELC        0.974635216
FI        .        iELC        0.975100262
FR        .        iELC        0.973061228
GR        .        iELC        0.97195345
HU        .        iELC        0.96487356
IE        .        iELC        0.928945047
IT        .        iELC        0.97259731
LT        .        iELC        0.963464412
LU        .        iELC        0.960870741
LV        .        iELC        0.980271733
MT        .        iELC        0.898118811
NL        .        iELC        0.971676787
PL        .        iELC        0.965045469
PT        .        iELC        0.973139618
RO        .        iELC        1
SE        .        iELC        0.957718396
SI        .        iELC        0.967050067
SK        .        iELC        0.969682125
GB        .        iELC        0.955543894
CH        .        iELC        0.970275294
NO        .        iELC        0.952937157
AT        .        iTRD        0.970275294
BE        .        iTRD        0.983348248
BG        .        iTRD        0.941278696
CY        .        iTRD        0.972125273
CZ        .        iTRD        0.963242891
DE        .        iTRD        0.974985292
DK        .        iTRD        0.952937157
EE        .        iTRD        0.96391429
ES        .        iTRD        0.974635216
FI        .        iTRD        0.975100262
FR        .        iTRD        0.973061228
GR        .        iTRD        0.97195345
HU        .        iTRD        0.96487356
IE        .        iTRD        0.928945047
IT        .        iTRD        0.97259731
LT        .        iTRD        0.963464412
LU        .        iTRD        0.960870741
LV        .        iTRD        0.980271733
MT        .        iTRD        0.898118811
NL        .        iTRD        0.971676787
PL        .        iTRD        0.965045469
PT        .        iTRD        0.973139618
RO        .        iTRD        1
SE        .        iTRD        0.957718396
SI        .        iTRD        0.967050067
SK        .        iTRD        0.969682125
GB        .        iTRD        0.955543894
CH        .        iTRD        0.970275294
NO        .        iTRD        0.952937157
AT        .        iCOA        0.970275294
BE        .        iCOA        0.983348248
BG        .        iCOA        0.941278696
CY        .        iCOA        0.972125273
CZ        .        iCOA        0.963242891
DE        .        iCOA        0.974985292
DK        .        iCOA        0.952937157
EE        .        iCOA        0.96391429
ES        .        iCOA        0.974635216
FI        .        iCOA        0.975100262
FR        .        iCOA        0.973061228
GR        .        iCOA        0.97195345
HU        .        iCOA        0.96487356
IE        .        iCOA        0.928945047
IT        .        iCOA        0.97259731
LT        .        iCOA        0.963464412
LU        .        iCOA        0.960870741
LV        .        iCOA        0.980271733
MT        .        iCOA        0.898118811
NL        .        iCOA        0.971676787
PL        .        iCOA        0.965045469
PT        .        iCOA        0.973139618
RO        .        iCOA        1
SE        .        iCOA        0.957718396
SI        .        iCOA        0.967050067
SK        .        iCOA        0.969682125
GB        .        iCOA        0.955543894
CH        .        iCOA        0.970275294
NO        .        iCOA        0.952937157
AT        .        iCOI        0.970275294
BE        .        iCOI        0.983348248
BG        .        iCOI        0.941278696
CY        .        iCOI        0.972125273
CZ        .        iCOI        0.963242891
DE        .        iCOI        0.974985292
DK        .        iCOI        0.952937157
EE        .        iCOI        0.96391429
ES        .        iCOI        0.974635216
FI        .        iCOI        0.975100262
FR        .        iCOI        0.973061228
GR        .        iCOI        0.97195345
HU        .        iCOI        0.96487356
IE        .        iCOI        0.928945047
IT        .        iCOI        0.97259731
LT        .        iCOI        0.963464412
LU        .        iCOI        0.960870741
LV        .        iCOI        0.980271733
MT        .        iCOI        0.898118811
NL        .        iCOI        0.971676787
PL        .        iCOI        0.965045469
PT        .        iCOI        0.973139618
RO        .        iCOI        1
SE        .        iCOI        0.957718396
SI        .        iCOI        0.967050067
SK        .        iCOI        0.969682125
GB        .        iCOI        0.955543894
CH        .        iCOI        0.970275294
NO        .        iCOI        0.952937157
AT        .        iNG        0.970275294
BE        .        iNG        0.983348248
BG        .        iNG        0.941278696
CY        .        iNG        0.972125273
CZ        .        iNG        0.963242891
DE        .        iNG        0.974985292
DK        .        iNG        0.952937157
EE        .        iNG        0.96391429
ES        .        iNG        0.974635216
FI        .        iNG        0.975100262
FR        .        iNG        0.973061228
GR        .        iNG        0.97195345
HU        .        iNG        0.96487356
IE        .        iNG        0.928945047
IT        .        iNG        0.97259731
LT        .        iNG        0.963464412
LU        .        iNG        0.960870741
LV        .        iNG        0.980271733
MT        .        iNG        0.898118811
NL        .        iNG        0.971676787
PL        .        iNG        0.965045469
PT        .        iNG        0.973139618
RO        .        iNG        1
SE        .        iNG        0.957718396
SI        .        iNG        0.967050067
SK        .        iNG        0.969682125
GB        .        iNG        0.955543894
CH        .        iNG        0.970275294
NO        .        iNG        0.952937157
AT        .        iH2S        0.970275294
BE        .        iH2S        0.983348248
BG        .        iH2S        0.941278696
CY        .        iH2S        0.972125273
CZ        .        iH2S        0.963242891
DE        .        iH2S        0.974985292
DK        .        iH2S        0.952937157
EE        .        iH2S        0.96391429
ES        .        iH2S        0.974635216
FI        .        iH2S        0.975100262
FR        .        iH2S        0.973061228
GR        .        iH2S        0.97195345
HU        .        iH2S        0.96487356
IE        .        iH2S        0.928945047
IT        .        iH2S        0.97259731
LT        .        iH2S        0.963464412
LU        .        iH2S        0.960870741
LV        .        iH2S        0.980271733
MT        .        iH2S        0.898118811
NL        .        iH2S        0.971676787
PL        .        iH2S        0.965045469
PT        .        iH2S        0.973139618
RO        .        iH2S        1
SE        .        iH2S        0.957718396
SI        .        iH2S        0.967050067
SK        .        iH2S        0.969682125
GB        .        iH2S        0.955543894
CH        .        iH2S        0.970275294
NO        .        iH2S        0.952937157
AT        .        iH2E        0.970275294
BE        .        iH2E        0.983348248
BG        .        iH2E        0.941278696
CY        .        iH2E        0.972125273
CZ        .        iH2E        0.963242891
DE        .        iH2E        0.974985292
DK        .        iH2E        0.952937157
EE        .        iH2E        0.96391429
ES        .        iH2E        0.974635216
FI        .        iH2E        0.975100262
FR        .        iH2E        0.973061228
GR        .        iH2E        0.97195345
HU        .        iH2E        0.96487356
IE        .        iH2E        0.928945047
IT        .        iH2E        0.97259731
LT        .        iH2E        0.963464412
LU        .        iH2E        0.960870741
LV        .        iH2E        0.980271733
MT        .        iH2E        0.898118811
NL        .        iH2E        0.971676787
PL        .        iH2E        0.965045469
PT        .        iH2E        0.973139618
RO        .        iH2E        1
SE        .        iH2E        0.957718396
SI        .        iH2E        0.967050067
SK        .        iH2E        0.969682125
GB        .        iH2E        0.955543894
CH        .        iH2E        0.970275294
NO        .        iH2E        0.952937157
AT        .        iH2C        0.970275294
BE        .        iH2C        0.983348248
BG        .        iH2C        0.941278696
CY        .        iH2C        0.972125273
CZ        .        iH2C        0.963242891
DE        .        iH2C        0.974985292
DK        .        iH2C        0.952937157
EE        .        iH2C        0.96391429
ES        .        iH2C        0.974635216
FI        .        iH2C        0.975100262
FR        .        iH2C        0.973061228
GR        .        iH2C        0.97195345
HU        .        iH2C        0.96487356
IE        .        iH2C        0.928945047
IT        .        iH2C        0.97259731
LT        .        iH2C        0.963464412
LU        .        iH2C        0.960870741
LV        .        iH2C        0.980271733
MT        .        iH2C        0.898118811
NL        .        iH2C        0.971676787
PL        .        iH2C        0.965045469
PT        .        iH2C        0.973139618
RO        .        iH2C        1
SE        .        iH2C        0.957718396
SI        .        iH2C        0.967050067
SK        .        iH2C        0.969682125
GB        .        iH2C        0.955543894
CH        .        iH2C        0.970275294
NO        .        iH2C        0.952937157
/;

* from file emis_assumptions.xlsx
parameter cint1(cnt,sec)  carbon intensity change per year after 2021 /
AT        .        iCON        0.979427459
BE        .        iCON        0.979427459
BG        .        iCON        0.979427459
CY        .        iCON        0.979427459
CZ        .        iCON        0.979427459
DE        .        iCON        0.979427459
DK        .        iCON        0.979427459
EE        .        iCON        0.979427459
ES        .        iCON        0.979427459
FI        .        iCON        0.979427459
FR        .        iCON        0.979427459
GR        .        iCON        0.979427459
HU        .        iCON        0.979427459
IE        .        iCON        0.979427459
IT        .        iCON        0.979427459
LT        .        iCON        0.979427459
LU        .        iCON        0.979427459
LV        .        iCON        0.979427459
MT        .        iCON        0.979427459
NL        .        iCON        0.979427459
PL        .        iCON        0.979427459
PT        .        iCON        0.979427459
RO        .        iCON        0.979427459
SE        .        iCON        0.979427459
SI        .        iCON        0.979427459
SK        .        iCON        0.979427459
GB        .        iCON        0.979427459
CH        .        iCON        0.979427459
NO        .        iCON        0.979427459


AT        .        iCHE        0.979427459
BE        .        iCHE        0.979427459
BG        .        iCHE        0.979427459
CY        .        iCHE        0.979427459
CZ        .        iCHE        0.979427459
DE        .        iCHE        0.979427459
DK        .        iCHE        0.979427459
EE        .        iCHE        0.979427459
ES        .        iCHE        0.979427459
FI        .        iCHE        0.979427459
FR        .        iCHE        0.979427459
GR        .        iCHE        0.979427459
HU        .        iCHE        0.979427459
IE        .        iCHE        0.979427459
IT        .        iCHE        0.979427459
LT        .        iCHE        0.979427459
LU        .        iCHE        0.979427459
LV        .        iCHE        0.979427459
MT        .        iCHE        0.979427459
NL        .        iCHE        0.979427459
PL        .        iCHE        0.979427459
PT        .        iCHE        0.979427459
RO        .        iCHE        0.979427459
SE        .        iCHE        0.979427459
SI        .        iCHE        0.979427459
SK        .        iCHE        0.979427459
GB        .        iCHE        0.979427459
CH        .        iCHE        0.979427459
NO        .        iCHE        0.979427459

AT        .        iAGR        0.979427459
BE        .        iAGR        0.979427459
BG        .        iAGR        0.979427459
CY        .        iAGR        0.979427459
CZ        .        iAGR        0.979427459
DE        .        iAGR        0.979427459
DK        .        iAGR        0.979427459
EE        .        iAGR        0.979427459
ES        .        iAGR        0.979427459
FI        .        iAGR        0.979427459
FR        .        iAGR        0.979427459
GR        .        iAGR        0.979427459
HU        .        iAGR        0.979427459
IE        .        iAGR        0.979427459
IT        .        iAGR        0.979427459
LT        .        iAGR        0.979427459
LU        .        iAGR        0.979427459
LV        .        iAGR        0.979427459
MT        .        iAGR        0.979427459
NL        .        iAGR        0.979427459
PL        .        iAGR        0.979427459
PT        .        iAGR        0.979427459
RO        .        iAGR        0.979427459
SE        .        iAGR        0.979427459
SI        .        iAGR        0.979427459
SK        .        iAGR        0.979427459
GB        .        iAGR        0.979427459
CH        .        iAGR        0.979427459
NO        .        iAGR        0.979427459
AT        .        iIND        0.979427459
BE        .        iIND        0.979427459
BG        .        iIND        0.979427459
CY        .        iIND        0.979427459
CZ        .        iIND        0.979427459
DE        .        iIND        0.979427459
DK        .        iIND        0.979427459
EE        .        iIND        0.979427459
ES        .        iIND        0.979427459
FI        .        iIND        0.979427459
FR        .        iIND        0.979427459
GR        .        iIND        0.979427459
HU        .        iIND        0.979427459
IE        .        iIND        0.979427459
IT        .        iIND        0.979427459
LT        .        iIND        0.979427459
LU        .        iIND        0.979427459
LV        .        iIND        0.979427459
MT        .        iIND        0.979427459
NL        .        iIND        0.979427459
PL        .        iIND        0.979427459
PT        .        iIND        0.979427459
RO        .        iIND        0.979427459
SE        .        iIND        0.979427459
SI        .        iIND        0.979427459
SK        .        iIND        0.979427459
GB        .        iIND        0.979427459
CH        .        iIND        0.979427459
NO        .        iIND        0.979427459
AT        .        iALU        0.979427459
BE        .        iALU        0.979427459
BG        .        iALU        0.979427459
CY        .        iALU        0.979427459
CZ        .        iALU        0.979427459
DE        .        iALU        0.979427459
DK        .        iALU        0.979427459
EE        .        iALU        0.979427459
ES        .        iALU        0.979427459
FI        .        iALU        0.979427459
FR        .        iALU        0.979427459
GR        .        iALU        0.979427459
HU        .        iALU        0.979427459
IE        .        iALU        0.979427459
IT        .        iALU        0.979427459
LT        .        iALU        0.979427459
LU        .        iALU        0.979427459
LV        .        iALU        0.979427459
MT        .        iALU        0.979427459
NL        .        iALU        0.979427459
PL        .        iALU        0.979427459
PT        .        iALU        0.979427459
RO        .        iALU        0.979427459
SE        .        iALU        0.979427459
SI        .        iALU        0.979427459
SK        .        iALU        0.979427459
GB        .        iALU        0.979427459
CH        .        iALU        0.979427459
NO        .        iALU        0.979427459
AT        .        iSER        0.991751577
BE        .        iSER        0.991751577
BG        .        iSER        0.991751577
CY        .        iSER        0.991751577
CZ        .        iSER        0.991751577
DE        .        iSER        0.991751577
DK        .        iSER        0.991751577
EE        .        iSER        0.991751577
ES        .        iSER        0.991751577
FI        .        iSER        0.991751577
FR        .        iSER        0.991751577
GR        .        iSER        0.991751577
HU        .        iSER        0.991751577
IE        .        iSER        0.991751577
IT        .        iSER        0.991751577
LT        .        iSER        0.991751577
LU        .        iSER        0.991751577
LV        .        iSER        0.991751577
MT        .        iSER        0.991751577
NL        .        iSER        0.991751577
PL        .        iSER        0.991751577
PT        .        iSER        0.991751577
RO        .        iSER        0.991751577
SE        .        iSER        0.991751577
SI        .        iSER        0.991751577
SK        .        iSER        0.991751577
GB        .        iSER        0.991751577
CH        .        iSER        0.991751577
NO        .        iSER        0.991751577
AT        .        iTRA        0.998567035
BE        .        iTRA        0.998567035
BG        .        iTRA        0.998567035
CY        .        iTRA        0.998567035
CZ        .        iTRA        0.998567035
DE        .        iTRA        0.998567035
DK        .        iTRA        0.998567035
EE        .        iTRA        0.998567035
ES        .        iTRA        0.998567035
FI        .        iTRA        0.998567035
FR        .        iTRA        0.998567035
GR        .        iTRA        0.998567035
HU        .        iTRA        0.998567035
IE        .        iTRA        0.998567035
IT        .        iTRA        0.998567035
LT        .        iTRA        0.998567035
LU        .        iTRA        0.998567035
LV        .        iTRA        0.998567035
MT        .        iTRA        0.998567035
NL        .        iTRA        0.998567035
PL        .        iTRA        0.998567035
PT        .        iTRA        0.998567035
RO        .        iTRA        0.998567035
SE        .        iTRA        0.998567035
SI        .        iTRA        0.998567035
SK        .        iTRA        0.998567035
GB        .        iTRA        0.998567035
CH        .        iTRA        0.998567035
NO        .        iTRA        0.998567035
AT        .        iELC        0.975588683
BE        .        iELC        0.975588683
BG        .        iELC        0.975588683
CY        .        iELC        0.975588683
CZ        .        iELC        0.975588683
DE        .        iELC        0.975588683
DK        .        iELC        0.975588683
EE        .        iELC        0.975588683
ES        .        iELC        0.975588683
FI        .        iELC        0.975588683
FR        .        iELC        0.975588683
GR        .        iELC        0.975588683
HU        .        iELC        0.975588683
IE        .        iELC        0.975588683
IT        .        iELC        0.975588683
LT        .        iELC        0.975588683
LU        .        iELC        0.975588683
LV        .        iELC        0.975588683
MT        .        iELC        0.975588683
NL        .        iELC        0.975588683
PL        .        iELC        0.975588683
PT        .        iELC        0.975588683
RO        .        iELC        0.975588683
SE        .        iELC        0.975588683
SI        .        iELC        0.975588683
SK        .        iELC        0.975588683
GB        .        iELC        0.975588683
CH        .        iELC        0.975588683
NO        .        iELC        0.975588683
AT        .        iTRD        0.991751577
BE        .        iTRD        0.991751577
BG        .        iTRD        0.991751577
CY        .        iTRD        0.991751577
CZ        .        iTRD        0.991751577
DE        .        iTRD        0.991751577
DK        .        iTRD        0.991751577
EE        .        iTRD        0.991751577
ES        .        iTRD        0.991751577
FI        .        iTRD        0.991751577
FR        .        iTRD        0.991751577
GR        .        iTRD        0.991751577
HU        .        iTRD        0.991751577
IE        .        iTRD        0.991751577
IT        .        iTRD        0.991751577
LT        .        iTRD        0.991751577
LU        .        iTRD        0.991751577
LV        .        iTRD        0.991751577
MT        .        iTRD        0.991751577
NL        .        iTRD        0.991751577
PL        .        iTRD        0.991751577
PT        .        iTRD        0.991751577
RO        .        iTRD        0.991751577
SE        .        iTRD        0.991751577
SI        .        iTRD        0.991751577
SK        .        iTRD        0.991751577
GB        .        iTRD        0.991751577
CH        .        iTRD        0.991751577
NO        .        iTRD        0.991751577
AT        .        iCOA        0.975588683
BE        .        iCOA        0.975588683
BG        .        iCOA        0.975588683
CY        .        iCOA        0.975588683
CZ        .        iCOA        0.975588683
DE        .        iCOA        0.975588683
DK        .        iCOA        0.975588683
EE        .        iCOA        0.975588683
ES        .        iCOA        0.975588683
FI        .        iCOA        0.975588683
FR        .        iCOA        0.975588683
GR        .        iCOA        0.975588683
HU        .        iCOA        0.975588683
IE        .        iCOA        0.975588683
IT        .        iCOA        0.975588683
LT        .        iCOA        0.975588683
LU        .        iCOA        0.975588683
LV        .        iCOA        0.975588683
MT        .        iCOA        0.975588683
NL        .        iCOA        0.975588683
PL        .        iCOA        0.975588683
PT        .        iCOA        0.975588683
RO        .        iCOA        0.975588683
SE        .        iCOA        0.975588683
SI        .        iCOA        0.975588683
SK        .        iCOA        0.975588683
GB        .        iCOA        0.975588683
CH        .        iCOA        0.975588683
NO        .        iCOA        0.975588683
AT        .        iCOI        0.975588683
BE        .        iCOI        0.975588683
BG        .        iCOI        0.975588683
CY        .        iCOI        0.975588683
CZ        .        iCOI        0.975588683
DE        .        iCOI        0.975588683
DK        .        iCOI        0.975588683
EE        .        iCOI        0.975588683
ES        .        iCOI        0.975588683
FI        .        iCOI        0.975588683
FR        .        iCOI        0.975588683
GR        .        iCOI        0.975588683
HU        .        iCOI        0.975588683
IE        .        iCOI        0.975588683
IT        .        iCOI        0.975588683
LT        .        iCOI        0.975588683
LU        .        iCOI        0.975588683
LV        .        iCOI        0.975588683
MT        .        iCOI        0.975588683
NL        .        iCOI        0.975588683
PL        .        iCOI        0.975588683
PT        .        iCOI        0.975588683
RO        .        iCOI        0.975588683
SE        .        iCOI        0.975588683
SI        .        iCOI        0.975588683
SK        .        iCOI        0.975588683
GB        .        iCOI        0.975588683
CH        .        iCOI        0.975588683
NO        .        iCOI        0.975588683
AT        .        iNG        0.975588683
BE        .        iNG        0.975588683
BG        .        iNG        0.975588683
CY        .        iNG        0.975588683
CZ        .        iNG        0.975588683
DE        .        iNG        0.975588683
DK        .        iNG        0.975588683
EE        .        iNG        0.975588683
ES        .        iNG        0.975588683
FI        .        iNG        0.975588683
FR        .        iNG        0.975588683
GR        .        iNG        0.975588683
HU        .        iNG        0.975588683
IE        .        iNG        0.975588683
IT        .        iNG        0.975588683
LT        .        iNG        0.975588683
LU        .        iNG        0.975588683
LV        .        iNG        0.975588683
MT        .        iNG        0.975588683
NL        .        iNG        0.975588683
PL        .        iNG        0.975588683
PT        .        iNG        0.975588683
RO        .        iNG        0.975588683
SE        .        iNG        0.975588683
SI        .        iNG        0.975588683
SK        .        iNG        0.975588683
GB        .        iNG        0.975588683
CH        .        iNG        0.975588683
NO        .        iNG        0.975588683
AT        .        iH2S        0.975588683
BE        .        iH2S        0.975588683
BG        .        iH2S        0.975588683
CY        .        iH2S        0.975588683
CZ        .        iH2S        0.975588683
DE        .        iH2S        0.975588683
DK        .        iH2S        0.975588683
EE        .        iH2S        0.975588683
ES        .        iH2S        0.975588683
FI        .        iH2S        0.975588683
FR        .        iH2S        0.975588683
GR        .        iH2S        0.975588683
HU        .        iH2S        0.975588683
IE        .        iH2S        0.975588683
IT        .        iH2S        0.975588683
LT        .        iH2S        0.975588683
LU        .        iH2S        0.975588683
LV        .        iH2S        0.975588683
MT        .        iH2S        0.975588683
NL        .        iH2S        0.975588683
PL        .        iH2S        0.975588683
PT        .        iH2S        0.975588683
RO        .        iH2S        0.975588683
SE        .        iH2S        0.975588683
SI        .        iH2S        0.975588683
SK        .        iH2S        0.975588683
GB        .        iH2S        0.975588683
CH        .        iH2S        0.975588683
NO        .        iH2S        0.975588683
AT        .        iH2E        0.975588683
BE        .        iH2E        0.975588683
BG        .        iH2E        0.975588683
CY        .        iH2E        0.975588683
CZ        .        iH2E        0.975588683
DE        .        iH2E        0.975588683
DK        .        iH2E        0.975588683
EE        .        iH2E        0.975588683
ES        .        iH2E        0.975588683
FI        .        iH2E        0.975588683
FR        .        iH2E        0.975588683
GR        .        iH2E        0.975588683
HU        .        iH2E        0.975588683
IE        .        iH2E        0.975588683
IT        .        iH2E        0.975588683
LT        .        iH2E        0.975588683
LU        .        iH2E        0.975588683
LV        .        iH2E        0.975588683
MT        .        iH2E        0.975588683
NL        .        iH2E        0.975588683
PL        .        iH2E        0.975588683
PT        .        iH2E        0.975588683
RO        .        iH2E        0.975588683
SE        .        iH2E        0.975588683
SI        .        iH2E        0.975588683
SK        .        iH2E        0.975588683
GB        .        iH2E        0.975588683
CH        .        iH2E        0.975588683
NO        .        iH2E        0.975588683
AT        .        iH2C        0.975588683
BE        .        iH2C        0.975588683
BG        .        iH2C        0.975588683
CY        .        iH2C        0.975588683
CZ        .        iH2C        0.975588683
DE        .        iH2C        0.975588683
DK        .        iH2C        0.975588683
EE        .        iH2C        0.975588683
ES        .        iH2C        0.975588683
FI        .        iH2C        0.975588683
FR        .        iH2C        0.975588683
GR        .        iH2C        0.975588683
HU        .        iH2C        0.975588683
IE        .        iH2C        0.975588683
IT        .        iH2C        0.975588683
LT        .        iH2C        0.975588683
LU        .        iH2C        0.975588683
LV        .        iH2C        0.975588683
MT        .        iH2C        0.975588683
NL        .        iH2C        0.975588683
PL        .        iH2C        0.975588683
PT        .        iH2C        0.975588683
RO        .        iH2C        0.975588683
SE        .        iH2C        0.975588683
SI        .        iH2C        0.975588683
SK        .        iH2C        0.975588683
GB        .        iH2C        0.975588683
CH        .        iH2C        0.975588683
NO        .        iH2C        0.975588683
/;

Parameter CO2Fuel(cnt,com) /
AT        .        pOIL        4.045
AT        .        pGSL        3.642
AT        .        pDSL        19.818
AT        .        pHDI        1.331
AT        .        pNG        26.471
AT        .        pCOA        20.857
AT        .        pFUL        5.121
BE        .        pOIL        6.938
BE        .        pGSL        8.864
BE        .        pDSL        35.274
BE        .        pHDI        6.939
BE        .        pNG        38.324
BE        .        pCOA        21.839
BE        .        pFUL        4.197
BG        .        pOIL        2.402
BG        .        pGSL        2.782
BG        .        pDSL        11.5
BG        .        pHDI        1.825
BG        .        pNG        5.257
BG        .        pCOA        31.375
BG        .        pFUL        1.908
CY        .        pOIL        0
CY        .        pGSL        0.058
CY        .        pDSL        0.252
CY        .        pHDI        0.506
CY        .        pNG        2.259
CY        .        pCOA        0.076
CY        .        pFUL        0.004
CZ        .        pOIL        3.163
CZ        .        pGSL        4.749
CZ        .        pDSL        12.686
CZ        .        pHDI        0.971
CZ        .        pNG        14.843
CZ        .        pCOA        87.19
CZ        .        pFUL        3.043
DE        .        pOIL        44.548
DE        .        pGSL        47.765
DE        .        pDSL        160.875
DE        .        pHDI        14.029
DE        .        pNG        224.158
DE        .        pCOA        287.123
DE        .        pFUL        147.142
DK        .        pOIL        2.362
DK        .        pGSL        3.828
DK        .        pDSL        9.16
DK        .        pHDI        1.546
DK        .        pNG        8.589
DK        .        pCOA        12.17
DK        .        pFUL        2.41
EE        .        pOIL        0.024
EE        .        pGSL        2.418
EE        .        pDSL        6.201
EE        .        pHDI        4.513
EE        .        pNG        4.001
EE        .        pCOA        5.316
EE        .        pFUL        0.856
ES        .        pOIL        16.336
ES        .        pGSL        21.667
ES        .        pDSL        90.572
ES        .        pHDI        18.919
ES        .        pNG        62.625
ES        .        pCOA        91.101
ES        .        pFUL        22.229
FI        .        pOIL        1.687
FI        .        pGSL        3.661
FI        .        pDSL        19.014
FI        .        pHDI        1.886
FI        .        pNG        18.656
FI        .        pCOA        7.023
FI        .        pFUL        2.011
FR        .        pOIL        29.053
FR        .        pGSL        30.337
FR        .        pDSL        123.55
FR        .        pHDI        26.154
FR        .        pNG        84.35
FR        .        pCOA        51.275
FR        .        pFUL        35.878
GR        .        pOIL        3.164
GR        .        pGSL        5.07
GR        .        pDSL        18.502
GR        .        pHDI        2.374
GR        .        pNG        11.132
GR        .        pCOA        40.594
GR        .        pFUL        2.484
HU        .        pOIL        2.254
HU        .        pGSL        2.494
HU        .        pDSL        13.503
HU        .        pHDI        1.102
HU        .        pNG        14.862
HU        .        pCOA        18.889
HU        .        pFUL        2.497
IE        .        pOIL        1.587
IE        .        pGSL        1.89
IE        .        pDSL        7.872
IE        .        pHDI        0.397
IE        .        pNG        6.687
IE        .        pCOA        19.108
IE        .        pFUL        6.994
IT        .        pOIL        30.758
IT        .        pGSL        28.103
IT        .        pDSL        110.712
IT        .        pHDI        7.631
IT        .        pNG        107.287
IT        .        pCOA        112.647
IT        .        pFUL        19.963
LT        .        pOIL        0.292
LT        .        pGSL        1.575
LT        .        pDSL        4.541
LT        .        pHDI        5.657
LT        .        pNG        2.28
LT        .        pCOA        0.764
LT        .        pFUL        0.686
LU        .        pOIL        0.002
LU        .        pGSL        0.38
LU        .        pDSL        1.286
LU        .        pHDI        0.025
LU        .        pNG        6.488
LU        .        pCOA        1.799
LU        .        pFUL        1.01
LV        .        pOIL        0.04
LV        .        pGSL        2.375
LV        .        pDSL        4.309
LV        .        pHDI        0.568
LV        .        pNG        1.181
LV        .        pCOA        0.446
LV        .        pFUL        0.142
MT        .        pOIL        0
MT        .        pGSL        0.019
MT        .        pDSL        0.378
MT        .        pHDI        0.366
MT        .        pNG        0.298
MT        .        pCOA        0.103
MT        .        pFUL        0
NL        .        pOIL        6.177
NL        .        pGSL        9.433
NL        .        pDSL        24.007
NL        .        pHDI        3.036
NL        .        pNG        58.523
NL        .        pCOA        80.766
NL        .        pFUL        16.972
PL        .        pOIL        14.651
PL        .        pGSL        13.672
PL        .        pDSL        64.949
PL        .        pHDI        5.205
PL        .        pNG        47.51
PL        .        pCOA        210.613
PL        .        pFUL        1.843
PT        .        pOIL        1.076
PT        .        pGSL        4.216
PT        .        pDSL        22.658
PT        .        pHDI        11.338
PT        .        pNG        9.009
PT        .        pCOA        10.72
PT        .        pFUL        2.607
RO        .        pOIL        7.003
RO        .        pGSL        5.025
RO        .        pDSL        17.672
RO        .        pHDI        0.987
RO        .        pNG        15.304
RO        .        pCOA        44.928
RO        .        pFUL        2.344
SE        .        pOIL        2.911
SE        .        pGSL        4.225
SE        .        pDSL        15.379
SE        .        pHDI        4.948
SE        .        pNG        15.775
SE        .        pCOA        6.03
SE        .        pFUL        2.729
SI        .        pOIL        0.003
SI        .        pGSL        1.079
SI        .        pDSL        4.527
SI        .        pHDI        0.177
SI        .        pNG        2.084
SI        .        pCOA        8.722
SI        .        pFUL        0.305
SK        .        pOIL        2.196
SK        .        pGSL        1.869
SK        .        pDSL        5.907
SK        .        pHDI        0.111
SK        .        pNG        13.699
SK        .        pCOA        16.332
SK        .        pFUL        0.609
GB        .        pOIL        24.954
GB        .        pGSL        22.943
GB        .        pDSL        78.034
GB        .        pHDI        9.746
GB        .        pNG        148.667
GB        .        pCOA        165.17
GB        .        pFUL        36.607
CH        .        pOIL        0.254
CH        .        pGSL        2.575
CH        .        pDSL        10.089
CH        .        pHDI        0.265
CH        .        pNG        5.172
CH        .        pCOA        3.092
CH        .        pFUL        0.386
NO        .        pOIL        1.81
NO        .        pGSL        3.556
NO        .        pDSL        11.081
NO        .        pHDI        3.59
NO        .        pNG        39.352
NO        .        pCOA        2.437
NO        .        pFUL        2.906
/;




* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
Set step /1*10/;

* Counterfactual point 5 Tariffs

parameter tft(step) tariff on imports per period /
1  0
2  0
3  0
4  0.1
5  0.5
6  1.5
7  2
8  2.5
9  3
10 4
/;


parameter opent(cnt,sec,step);
opent(cnt,sec,step)=1;

$ifthen %CaseStudy%==9
opent(cnt,"iH2E",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2S",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2C",step)$(ord(step) le 4)=0.0001;
$elseif %CaseStudy%==10
opent(cnt,"iH2E",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2S",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2C",step)$(ord(step) le 4)=0.0001;
$elseif %CaseStudy%==11
opent(cnt,"iH2E",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2S",step)$(ord(step) le 4)=0.0001;
opent(cnt,"iH2C",step)$(ord(step) le 4)=0.0001;
$endif

$ifthen %CaseStudy%==9
parameter Circular(cnt);
Circular(cnt)=0.6
$endif


$ifthen %CaseStudy%==10
parameter Circular(cnt);
Circular(cnt)=0.6
$endif
$ifthen %CaseStudy%==11
parameter Circular(cnt);
Circular(cnt)=0.6
$endif



parameter sigEdu(cnt);

sigEdu(cnt) = 0.1;





$include "growth_table.gms"


$ifthen %CaseStudy%==10
parameter lpd(cnt) change in productivity due to climate change /
AT= 0.01522099
BE= 0.00617658
BG= 0.01957286
CH= 0.02056125
CY= 0.02923954
CZ= 0.01432255
DE= 0.01283725
DK= 0.01933646
EE= 0.02522215
ES= 0.01394937
FI= 0.01337994
FR= 0.01485206
GB= 0.02794558
GR= 0.02993304
HU= 0.0247041
IE= 0.01771744
IT= 0.01625835
LT= 0.03281645
LU= -0.00363146
LV= 0.02808598
MT= 0.01467546
NL= 0.01217285
NO= 0.02369737
PL= 0.01969244
PT= 0.02568719
RO= 0.03659677
SE= 0.01294444
SI= 0.02935222
SK= 0.00698074
/;
$endif


$ifthen %CaseStudy%==9
parameter lpd(cnt) change in productivity due to climate change /
AT        -0.00152
BE        -0.00162
BG        -0.00166
CY        -0.01625
CZ        -0.00023
DE        -0.00051
DK        0.00064
EE        0.00264
ES        -0.01433
FI        0.00244
FR        -0.00455
GR        -0.01399
HU        -0.00263
IE        0.00035
IT        -0.00998
LT        0.00222
LU        -0.00027
LV        0.00175
MT        -0.01432
NL        -0.00098
PL        0.00014
PT        -0.00801
RO        0.00035
SE        0.00148
SI        -0.00110
SK        -0.00141
GB        -0.00061
CH        -0.00152
NO        0.00148
/;
$endif

$ifthen %CaseStudy%==11
parameter lpd(cnt) change in productivity due to climate change /
AT        -0.00152
BE        -0.00162
BG        -0.00166
CY        -0.01625
CZ        -0.00023
DE        -0.00051
DK        0.00064
EE        0.00264
ES        -0.01433
FI        0.00244
FR        -0.00455
GR        -0.01399
HU        -0.00263
IE        0.00035
IT        -0.00998
LT        0.00222
LU        -0.00027
LV        0.00175
MT        -0.01432
NL        -0.00098
PL        0.00014
PT        -0.00801
RO        0.00035
SE        0.00148
SI        -0.00110
SK        -0.00141
GB        -0.00061
CH        -0.00152
NO        0.00148
/;
$endif


*old
parameter SFac2(sec) sharing of Total Factor Productivity loss per sector /
iAGR    0.51
iIND    0.78
iALU    0.47
iSER    0.95
iTRA    0.52
iELC    0.47
iTRD    0.47
iCOI    0.47
iNG     0.47
iH2E    0.7
iH2S    0.7
iH2C    0.7
iCHE    0.51
iCON    0.52
/;

*new
parameter SFac(sec) sharing of Total Factor Productivity loss per sector /
iAGR    1.000
iIND    0.981
iALU    0.981
iSER    0.886
iCON    0.826
iTRA    0.850
iTRD    0.850
iELC    0.753
iCOI    0.644
iNG     0.753
iH2E    0.753
iH2S    0.644
iH2C    0.644
iCHE    0.848
/;


*feb26

* calibration values to obtain baseline GDP
* This works on GDv1 scenario
parameter GDPcal(cnt) gdp calibration /
AT= 1
BE= 1
BG= 1
CH= 1
CY= 1
CZ= 1
DE= 1
DK= 1
EE= 1
ES= 1
FI= 1
FR= 1
GB= 1
GR= 1
HU= 1
IE= 1
IT= 1
LT= 1
LU= 1
LV= 1
MT= 1
NL= 1
NO= 1
PL= 1
PT= 1
RO= 1
SE= 1
SI= 1
SK= 1
/;


parameter TotFacProd(cnt) Total factor of productivity/
AT= 0.01111225
BE= 0.0035546
BG= 0.0104722
CH= 0.01124375
CY= 0.01580825
CZ= 0.0118016
DE= 0.0081367
DK= 0.0139469
EE= 0.01782855
ES= 0.0079647
FI= 0.00991165
FR= 0.0088027
GB= 0.0148839
GR= 0.01727385
HU= 0.01947655
IE= 0.0064321
IT= 0.0128601
LT= 0.0251478
LU= -0.0052521
LV= 0.021864
MT= -0.00267515
NL= 0.00926185
NO= 0.0180262
PL= 0.010782
PT= 0.02061135
RO= 0.0265828
SE= 0.0070257
SI= 0.0268683
SK= 0.00184145
/;


*Parameter for change from household preference towards landtransport from fuels and electricity
parameter Transportshift_value(cnt);
*Circular(cnt)=0.8;
*$ontext
parameter Transportshift_value(cnt) landtransportreduction /
AT        0.8
BE        0.8
BG        0.8
CY        0.8
CZ        0.8
DE        0.8
DK        0.8
EE        0.8
ES        0.8
FI        0.8
FR        0.8
GR        0.8
HU        0.8
IE        0.8
IT        0.8
LT        0.8
LU        0.8
LV        0.8
MT        0.8
NL        0.8
PL        0.8
PT        0.8
RO        0.8
SE        0.8
SI        0.8
SK        0.8
GB        0.8
CH        0.8
NO        0.8
/;



