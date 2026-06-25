$Ontext
openENTRANCE version of REMES EUROPA
$Offtext


$ontext
Assumptions
                 Reference
Carbon Budget    60% compared to 1990 (EU Ref)
resource cut     10% reduction every 5 yrs (EU Ref)
circular econ    -
Energy Int.
Carbon Int.
Prod. Ele and H2

Extra Shocks
3. ExEff
4. GSus
5. ExEff+GSus
With Extra efficiency Techno-Friendly breaks after iteration 6 with carbon cap set at 0.05. It works with carbon cap set at 0.045.

$offtext



$set CaseStudy 10

* override elasticities
scalar orEl 0 uses external elasticities - 1 overrides elasticities /0/;


*================= MultiFutures scenarios ===============
*TEST
$ifthen %CaseStudy%==9
scalar ES external shares 1 if external shares are used for power 0 otherwise                                                       /   0   /;
scalar P_S if equal to 1 base case without considering external shares and cut of resources                                         /   10  /;
scalar carbonbudget By default is low (reduce 90% but it can be left at reducing by 40% by multiplying by 4) high=4 low=1           /   0.2 /;
scalar EF   if set to 1 we consider energy intensity effects                                                                        /   1   /;
scalar transportshift household shift towards landtransport and away from buying fuels                                              /   1   /;
scalar EFFH make households more energy efficient                                                                                   /   1   /;
scalar CF   if set to 1 we consider carbon intensity effects                                                                        /   1   /;
scalar agriemi decrease carbon intensity                                                                                            /   1   /;
scalar CUT  if set to 1 we cut resources by rescut otherwise we do not                                                              /   1   /;
scalar rescut cut of fossil resources per period                                                                                    /   0.9 /;
scalar CE   if set to 1 circular economy is enforced                                                                                /   1   /;
scalar CEH if 1 circularity is enforced for households                                                                              /   1   /;
scalar AGRCUT if we cut agriculture                                                                                                 /   1   /;
scalar landuse porttion of agriculture resource                                                                                     /   0.9 /;
scalar healthedushift                                                                                                               /   0   /;
scalar laborprod                                                                                                                    /   1   /;
scalar extracommoditytax                                                                                                            /   1   /;
scalar extrataxrate                                                                                                                 /   0.05    /;
scalar tradeshift change armington of trade                                                                                         /   1   /;
scalar GHGred if 1 we control the emissions if 0 we do not use a cap                                                                /   1   /;
scalar tariff This works on tariffs on energy import from Visegrad countries                                                        /   0   /;
scalar coop this works on the CO2 budget for Visegrad countries                                                                     /   0   /;
scalar GDPt if set to 0 then we test a case with no GDP growth                                                                      /   1   /;
scalar pop Population growth - 0 no growth - 1 growth                                                                               /   1   /;
scalar PG   productivity growth for labour 0 if not accounted                                                                       /   1   /;
scalar prdR productivity increase factor after the benchmark for power and h2 sector                                                /   0   /;
scalar ROWgr growth of the Rest Of the World                                                                                        /   1   /;
scalar ROWco coal export to rest of the world                                                                                       /   1   /;
scalar CCE climate change effects                                                                                                   /   1   /;
scalar GSus green subsidy                                                                                                           /   1   /;
scalar ExEff Extra energy efficiency                                                                                                /   0   /;
scalar changeedu                                                                                                                    /   1   /;
$endif


* LATEST VERSION CLOSEST TO THE GREAT MINDSHIFT WHICH WORKS
$ifthen %CaseStudy%==10
scalar ES external shares 1 if external shares are used for power 0 otherwise                                                       /   0   /;
scalar P_S if equal to 1 base case without considering external shares and cut of resources                                         /   10  /;
scalar carbonbudget By default is low (reduce 90% but it can be left at reducing by 40% by multiplying by 4) high=4 low=1           /   0.2 /;
scalar EF   if set to 1 we consider energy intensity effects                                                                        /   1   /;
scalar transportshift household shift towards landtransport and away from buying fuels                                              /   1   /;
scalar EFFH make households more energy efficient                                                                                   /   1   /;
scalar CF   if set to 1 we consider carbon intensity effects                                                                        /   1   /;
scalar agriemi decrease carbon intensity                                                                                            /   1   /;
scalar CUT  if set to 1 we cut resources by rescut otherwise we do not                                                              /   1   /;
scalar rescut cut of fossil resources per period                                                                                    /   0.9 /;
scalar CE   if set to 1 circular economy is enforced                                                                                /   1   /;
scalar CEH if 1 circularity is enforced for households                                                                              /   1   /;
scalar AGRCUT if we cut agriculture                                                                                                 /   1   /;
scalar landuse porttion of agriculture resource                                                                                     /   0.9 /;
scalar healthedushift                                                                                                               /   0   /;
scalar laborprod                                                                                                                    /   1   /;
scalar extracommoditytax                                                                                                            /   1   /;
scalar extrataxrate                                                                                                                 /   0.05/;
scalar tradeshift change armington of trade                                                                                         /   1  /;
scalar GHGred if 1 we control the emissions if 0 we do not use a cap                                                                /   1   /;
scalar tariff This works on tariffs on energy import from Visegrad countries                                                        /   0   /;
scalar coop this works on the CO2 budget for Visegrad countries                                                                     /   0   /;
scalar GDPt if set to 0 then we test a case with no GDP growth                                                                      /   1   /;
scalar pop Population growth - 0 no growth - 1 growth                                                                               /   1   /;
scalar PG   productivity growth for labour 0 if not accounted                                                                       /   1   /;
scalar prdR productivity increase factor after the benchmark for power and h2 sector                                                /   0   /;
scalar ROWgr growth of the Rest Of the World                                                                                        /   1   /;
scalar ROWco coal export to rest of the world                                                                                       /   1   /;
scalar CCE climate change effects                                                                                                   /   1   /;
scalar GSus green subsidy                                                                                                           /   1   /;
scalar ExEff Extra energy efficiency                                                                                                /   0   /;
scalar changeedu                                                                                                                    /   1   /;
$endif


*REFRENCE SCENARIO
$ifthen %CaseStudy%==11
scalar ES external shares 1 if external shares are used for power 0 otherwise                                                       /   0   /;
scalar P_S if equal to 1 base case without considering external shares and cut of resources                                         /   2   /;
scalar P_S if equal to 1 base case without considering external shares and cut of resources                                         /   2   /;
scalar carbonbudget By default is low (reduce 90% but it can be left at reducing by 40% by multiplying by 4) high=4 low=1           /   0.6 /;
scalar EF   if set to 1 we consider energy intensity effects                                                                        /   1   /;
scalar transportshift household shift towards landtransport and away from buying fuels                                              /   0   /;
scalar EFFH make households more energy efficient                                                                                   /   0   /;
scalar CF   if set to 1 we consider carbon intensity effects                                                                        /   1   /;
scalar agriemi decrease carbon intensity                                                                                            /   0   /;
scalar CUT  if set to 1 we cut resources by rescut otherwise we do not                                                              /   1   /;
scalar rescut cut of fossil resources per period                                                                                    /   0.9 /;
scalar CE   if set to 1 circular economy is enforced                                                                                /   0   /;
scalar CEH if 1 circularity is enforced for households                                                                              /   0   /;
scalar AGRCUT if we cut agriculture                                                                                                 /   0   /;
scalar landuse porttion of agriculture resource                                                                                     /   0   /;
scalar healthedushift                                                                                                               /   0   /;
scalar laborprod                                                                                                                    /   0   /;
scalar extracommoditytax                                                                                                            /   0   /;
scalar extrataxrate                                                                                                                 /   0   /;
scalar tradeshift change armington of trade                                                                                         /   0   /;
scalar GHGred if 1 we control the emissions if 0 we do not use a cap                                                                /   1   /;
scalar tariff This works on tariffs on energy import from Visegrad countries                                                        /   0   /;
scalar coop this works on the CO2 budget for Visegrad countries                                                                     /   0   /;
scalar GDPt if set to 0 then we test a case with no GDP growth                                                                      /   1   /;
scalar pop Population growth - 0 no growth - 1 growth                                                                               /   1   /;
scalar PG   productivity growth for labour 0 if not accounted                                                                       /   1   /;
scalar prdR productivity increase factor after the benchmark for power and h2 sector                                                /   0   /;
scalar ROWgr growth of the Rest Of the World                                                                                        /   1   /;
scalar ROWco coal export to rest of the world                                                                                       /   0   /;
scalar CCE climate change effects                                                                                                   /   1   /;
scalar GSus green subsidy                                                                                                           /   0   /;
scalar ExEff Extra energy efficiency                                                                                                /   0   /;
scalar changeedu                                                                                                                    /   0   /;      
$endif


*================= openENTRANCE scenarios ===============

$setglobal SW_start "No";
$setglobal Period "10";

*Choose the numeraire value for the model
scalar num /1/;
* to stop the model at only 'STEPS' iterations
scalar STEPS /10/;
scalar IterLim 0 1 1e9 /0/;

display STEPS, P_S;
* fix that GDPt flag needs to be zero to activate the GDP
GDPt=1-GDPt;

*===========================================================
*====================== Model Starts =======================
*===========================================================

* 5) DATA HANDLING

*A: Add Q1-Q5 and Labor groups

set
samr(*)  rows and columns of sam (dynamic)
/
GOVT
INV
STOCKS
tax_com
tax_sec
tdirect
tmarg
Trade
Capital

/

laboursplit(*) labor types
housesplit(*) households;

set
samd(*)  rows and columns of sam (dynamic)
/
GOVT
INV
STOCKS
tax_com
tax_sec
tdirect
tmarg
Trade
Capital
/


cnt(*) regions in the model
com0(*) commodities and services
sec0(*) industries or sectors
laboursplit(*) labor types
housesplit(*) households

com(*)
sec(*);

alias(samd,samh);

set sex;
set skill;

* ========== load the file to read ==========
$gdxin EuroSAM15Split

* ========== Load the indices for the main sets ==========
$load cnt
$load com0=com
$load sec0=sec
$load laboursplit
$load housesplit
$load sex
$load skill

* ========== add the goods and indices to the samr matrix ==========
samr(com0)=yes;
samr(sec0)=yes;
alias(laboursplit,ltype);
samr(ltype)=yes;
alias(housesplit,hh);
samr(hh)=yes;

display hh, ltype;

alias(skill,ed);

set lmap(ed,sex,ltype) /
ED1.female.L_F_E1,
ED1.male.L_M_E1,
ED2.female.L_F_E2,
ED2.male.L_M_E2,
ED3.female.L_F_E3,
ED3.male.L_M_E3/;


Alias
(samr,samrr)
(sec,secc)
(cnt,cntt)
(com,comm)
;

display ed;
*read the three main data tables
Parameter
SAMt(cnt,*,*)
TradeDatat(com0,*,*)
TradeMarginst(com0,*,*)
distrgood_share_public(*,*)
;

*FOR GDX INPUT
$load TradeDatat = Trade
$load TradeMarginst = TTM

$load SAMt = expandedSAM
$gdxin


* this is to initialize the parameter ES to 0 in the first 4 periods.
* If ES=1 then the elasticities for the energy nest will become quasi-leontief
* even without using external shares and the solution will be different between the reference and the alternative scenarios.
scalar ES0 /0/;

* this value is updated at every step and enters the model
parameter eint(cnt) emission intensity over time in countries
eintFC(cnt) energy intensity for final consumption
eintHH(cnt) energy intensity for households
cint(cnt,sec)  carbon intensity over time in countries;




parameter yS0(cnt,sec0,com0) detailed sectoral outputs;
parameter XD0(cnt,sec0) sectoral output;
parameter PD0(cnt,com0) good output;
yS0(cnt,sec0,com0)=SAMt(cnt,sec0,com0)   ;
XD0(cnt,sec0)         = sum(com0,yS0(cnt,sec0,com0)) ;
PD0(cnt,com0)         = sum(sec0,yS0(cnt,sec0,com0)) ;

*A: Index CZ0 with hh
parameter IOZ0(cnt,com0,sec0),CZ0(cnt,com0,hh),CGZ0(cnt,com0),IZ0(cnt,com0);

IOZ0(cnt,com0,sec0)     = SAMt(cnt, com0, sec0) ;
CZ0(cnt, com0, hh)             =  SAMt(cnt, com0, hh);
CGZ0(cnt, com0)            = SAMt(cnt, com0, "GOVT");
IZ0(cnt, com0)             = SAMt(cnt, com0, "INV");

*b.        Definition of parameters to use in the model
Parameter
XDZ(cnt,sec)      sectoral outputs
XDDZ(cnt,sec,com) detailed sectoral outputs
IOZ(cnt,com,sec)  intermediate inputs

LZ(cnt,sec)       labour inputs
KZ(cnt,sec)       capital inputs


KSZ(cnt)          initial capital endowment
KENDOW(cnt,hh)      capital endowments split by hh
LENDOW(cnt,hh, ed,sex)   transfer between house and labour

LWES(cnt,sec,ed,sex) labour divided by ed and sex
LWESZ(cnt,ed,sex) labour divded across sectors

*A: Add household consumption per household
CZ(cnt,com,hh)       households consumption per household
CGZ(cnt,com)      governmental consumption
CGLZ(cnt, com)     local governemnt consumption

IZ(cnt,com)       investments
SVZ(cnt,com)      changes in stocks

EROWZ(cnt,com)    exports
MROWZ(cnt,com)    imports
TRADEZ(com,cnt,cntt) trade flows
TMCRZ(com,cnt,cntt)  trade and transportmargins
EZ(cnt,com)       total exports

TMCZ(cnt,com)     transport and trade margins
TMXZ(cnt,com)     production of transport and trade margins

TTYZ(cnt)         income taxes
TRANSFZ(cnt,hh)      government to households transfers
TRANSFGZ(cnt)     national to local government transfers

*A: Add households
SHZ(cnt,hh)          households savings
SHZtot(cnt)         household saving total
SGZ(cnt)         local governmental savings

CBUDGLZ(cnt)       local governmental consumption budget

SROWZ(cnt)        savings from RoW
INVZ(cnt,sec)     sectoral investments

TRROWZ(cnt)       net transfers to government (closing trade balance)
TRHROWZ(cnt,hh)      net transfers to households (closing trade balance)

TAXCZ(cnt,com)    net taxes on products
TAXPZ(cnt,sec)    net taxes on production


*A: Add connection between labor and household

*A: Add per household
CBUDZ(cnt,hh)        households consumption budget
*totalCBUDZ(cnt)     total households
CBUDGZ(cnt)       governmental consumption budget

XZ(cnt,com)       total sales
XXDZ(cnt,com)     domestic products supply to domestic market

ITZ(cnt)          total investments
OGR(cnt)          oil and gas resources
CR(cnt)           coal resources
NGR(cnt)          natural gas resources
LR(cnt)           land resources;


*c.        Data reading
$include "InputParameters.gms"

* initialize it to one
eint(cnt)=1;
eintFC(cnt)=1;
eintHH(cnt)=1;
cint(cnt,sec)=1;



Alias(samd,samdd);

samd(ltype)=yes;
samd(hh)=yes;

*d.        Reaggregation of commodities and sectors.
parameter SAM1(cnt,*,*),SAM(cnt,*,*);
* Populating the SAM only using the initial elements (no sectors, no commodities)
SAM1(cnt,samdd,samr)=SAMt(cnt,samdd,samr);
SAM(cnt,samdd,samd)=SAM1(cnt,samdd,samd);

* including commodities and sectors in the index
samd(com)=yes;
samd(sec)=yes;
*A: Add households and ltype

alias
(cnt,r)
(sec,s)
(com,g);

display samd,samr;
display SAM;


* Create aggregated SAM, trade data and trade margins data
SAM1(cnt,sec,samr)=sum(sec0$maps(sec0,sec),SAMt(cnt,sec0,samr));
SAM1(cnt,com,samr)=sum(com0$mapc(com0,com),SAMt(cnt,com0,samr));

SAM(cnt,samd,samdd)=SAM1(cnt,samd,samdd);
SAM(cnt,samd,sec)=sum(sec0$maps(sec0,sec),SAM1(cnt,samd,sec0));
SAM(cnt,samd,com)=sum(com0$mapc(com0,com),SAM1(cnt,samd,com0));

parameter tradeData(com,*,*);
tradeData(com,cnt,cntt)=sum(com0$mapc(com0,com),tradeDatat(com0,cnt,cntt));
tradeData(com,cnt,"ROW")=sum(com0$mapc(com0,com),tradeDatat(com0,cnt,"ROW"));
tradeData(com,"ROW",cntt)=sum(com0$mapc(com0,com),tradeDatat(com0,"ROW",cntt));

parameter TradeMargins(com,cnt,cntt);
TradeMargins(com,cnt,cntt)=sum(com0$mapc(com0,com),TradeMarginst(com0,cnt,cntt));

* ############ REMOVE EXCESSIVELY SMALL NUMBERS ############
SAM(cnt,samr,samd)$(SAM(cnt,samr,samd) gt 0 and SAM(cnt,samr,samd) le 0.0001)=0;
TradeMargins(com,cnt,cntt)$(TradeMargins(com,cnt,cntt) gt 0 and TradeMargins(com,cnt,cntt) le 0.0001)=0;
tradeData(com,cnt,cntt)$(tradeData(com,cnt,cntt) gt 0 and tradeData(com,cnt,cntt)  le 0.0001)=0;

SAM(cnt,samr,samd)$(SAM(cnt,samr,samd) lt 0 and SAM(cnt,samr,samd) ge -0.0001)=0;
TradeMargins(com,cnt,cntt)$(TradeMargins(com,cnt,cntt) lt 0 and TradeMargins(com,cnt,cntt) ge -0.0001)=0;
tradeData(com,cnt,cntt)$(tradeData(com,cnt,cntt) lt 0 and tradeData(com,cnt,cntt) ge -0.0001)=0;
* ##########################################################

* ===================== check if SAM is balanced ===============================
Parameter SAM_balance(cnt,*) ;
SAM_balance(cnt,samd) =  sum(samdd,SAM(cnt,samd,samdd))
       -  sum(samdd,SAM(cnt,samdd,samd)) ;
display SAM_balance;
*execute_unload "sambalance.gdx" SAM_balance;
*execute_unload "newSAM.gdx" SAM1,SAM,tradeData,TradeMargins,SAM_balance;


* ===== Calculate initial levels of variables for calibration ==================

*e.        Assignment of parameters

*A: Add connection between labor and household
LENDOW(cnt,hh,ed,sex) = sum(ltype$lmap(ed,sex,ltype),SAM(cnt,hh,ltype));
*LHHENDOW(cnt, hh, ltype) = SAM(cnt,hh,ltype);
*LHHtotENDOW(cnt,hh) = sum (ltype, LHHENDOW(cnt,hh,ltype))
parameter LENDOW0(cnt,hh,ed,sex);
LENDOW0(cnt,hh,ed,sex)=LENDOW(cnt,hh,ed,sex)
display LENDOW;
XDDZ(cnt,sec,com)    = SAM(cnt,sec,com)   ;
XDZ(cnt,sec)         = sum(com,XDDZ(cnt,sec,com)) ;
display XDZ;
IOZ(cnt,com,sec)     = SAM(cnt, com, sec) ;
*A: Add households
CZ(cnt, com,hh)             =  SAM(cnt, com, hh);
CGZ(cnt, com)            = SAM(cnt, com, "GOVT");
IZ(cnt, com)             = SAM(cnt, com, "INV");
*A: add sex,ed, mapped to ltype

LWES(cnt,sec,ed,sex) = sum(ltype$lmap(ed,sex,ltype),SAM(cnt,ltype,sec));
display LWES;
*LZS(cnt,sec)   = sum(ed,sum(sex,sum(ltype$lmap(ed,sex,ltype), SAM(cnt, ltype, sec))));
*LZ(cnt,sec,ed,sex)   = sum(ltype$lmap(ed,sex,ltype),SAM(cnt, ltype, sec));
*LZT(cnt) = sum(sec,LZS(cnt,sec));
KZ(cnt,sec)          = SAM(cnt,'Capital',sec);
KENDOW(cnt,hh)              = SAM(cnt,hh,'Capital');
display KENDOW;

parameter perKE(cnt,hh);
perKE(cnt,hh)= KENDOW(cnt,hh)/sum(housesplit,KENDOW(cnt,housesplit));

* split the capital remuneration of oil and gas from the general capital
parameter AOGR(cnt,hh), ACR(cnt,hh),ANGR(cnt,hh),ALR(cnt,hh) available resources (oil and gas coil natural gas and land);

OGR(cnt)             = 0.5*KZ(cnt,"iCOI");
KZ(cnt,"iCOI")     = 0.5*KZ(cnt,"iCOI");
NGR(cnt)             = 0.5*KZ(cnt,"iNG");
KZ(cnt,"iNG")       = 0.5*KZ(cnt,"iNG");
CR(cnt)              = 0.5*KZ(cnt,"iCOA");
KZ(cnt,"iCOA")     = 0.5*KZ(cnt,"iCOA");
*landuse
LR(cnt)              = 0.12*KZ(cnt,"iAGR");
KZ(cnt,"iAGR")       =0.88*KZ(cnt,"iAGR");

* initialize the available resources with the values featured in the sectors (resources used = resources available)
AOGR(cnt,hh)=OGR(cnt)*perKE(cnt,hh);
ACR(cnt,hh)=CR(cnt)*perKE(cnt,hh);
ANGR(cnt,hh)=NGR(cnt)*perKE(cnt,hh);
ALR(cnt,hh)=LR(cnt)*perKE(cnt,hh);
parameter AOGR0(cnt,hh),ACR0(cnt,hh),ANGR0(cnt,hh),ALR0(cnt,hh);
AOGR0(cnt,hh)=OGR(cnt)*perKE(cnt,hh);
ACR0(cnt,hh)=CR(cnt)*perKE(cnt,hh);
ANGR0(cnt,hh)=NGR(cnt)*perKE(cnt,hh);
ALR0(cnt,hh)=LR(cnt)*perKE(cnt,hh);

*update capital per household to split for the specific capital
KENDOW(cnt,hh)=KENDOW(cnt,hh)-AOGR(cnt,hh)-ACR(cnt,hh)-ANGR(cnt,hh)-ALR(cnt,hh);

parameter Rp(cnt) Renewable sector productivity;
* set to 1 for benchmarking
Rp(cnt)=1;


Parameter step5;
step5 = 0;

*Feb26
parameter GG(cnt,sec);
GG(cnt,sec)=1;

parameter CPD(cnt) climate change induced labour productivity;
CPD(cnt)=0;

display CZ;
* Identify sectors with negative capital returns
Parameter negcap(cnt,sec) ;
negcap(cnt,sec)$(KZ(cnt,sec) lt 0) = 1 ;

* Generate positive returns to capital
Parameter KZ_old(cnt,sec) ;
KZ_old(cnt,sec) = KZ(cnt,sec) ;
KZ(cnt,sec)$negcap(cnt,sec) = sum(secc$(KZ(cnt,secc) gt 0),KZ(cnt,secc) )
                     /sum(secc$(KZ(cnt,secc) gt 0),XDZ(cnt,secc) )
                     *XDZ(cnt,sec) ;

SVZ(cnt,com)         = SAM(cnt,com,'STOCKS') ;


*Read initial consumption figures from SAM
ITZ(cnt)             = sum(com, SAM(cnt,com, "INV"));
*A: Add households
CBUDZ(cnt,hh)           = sum(com, SAM(cnt,com, hh))  ;


*Define the local governments budget
CBUDGLZ(cnt)  = sum(com, SAM(cnt,com, "GOVT"))  ;


*Define Local Government Consumption
CGLZ(cnt, com) = CGZ(cnt, com);
CGLZ(cnt, "pH2") = 0 ;

EROWZ(cnt,com)       = TradeData(com,cnt,'ROW') ;
MROWZ(cnt,com)       = TradeData(com,'ROW',cnt) ;
EROWZ(cnt, "pH2") = 0 ;
MROWZ(cnt, "pH2") = 0 ;

TRADEZ(com,cnt,cntt) = TradeData(com,cnt,cntt) ;
TMCRZ(com,cnt,cntt)  = TradeMargins(com,cnt,cntt) ;
TRADEZ("pH2",cnt,cntt) = 0 ;
TMCRZ("pH2",cnt,cntt) = 0;

* Compute domestic Supply to Domestic Market (XXDZ)
XXDZ(cnt,com)        = sum(sec,XDDZ(cnt,sec,com))- EROWZ(cnt,com) - sum(cntt,TRADEZ(com,cnt,cntt));

loop ((com,cnt), TRADEZ(com, cnt, cnt) = 0);

TMCZ(cnt,com)        = SAM(cnt,'tmarg',com) ;
TMXZ(cnt,com)        = SAM(cnt,com,'tmarg') ;
TMCZ(cnt,"pH2")        = 0 ;
TMXZ(cnt,"pH2")        = 0 ;

*A:Add over households
TTYZ(cnt)            = sum(hh,SAM(cnt,'tdirect',hh)) ;
TRANSFZ(cnt,hh)         = SAM(cnt,hh,'GOVT') - SAM(cnt, 'GOVT', hh) ;

TRROWZ(cnt)          = SAM(cnt,'GOVT','Trade') - SAM(cnt,'Trade','GOVT') ;
*A: Add households - unsure if this should be sum?
TRHROWZ(cnt,hh)         = SAM(cnt,hh,'Trade') - SAM(cnt,'Trade',hh) ;

*A: Add households - unsure if this should be sum?
SHZ(cnt,hh)             = SAM(cnt,'INV',hh) ;
SHZtot(cnt)            =sum(hh,SHZ(cnt,hh));
SGZ(cnt)             = SAM(cnt,'INV','GOVT') ;

SROWZ(cnt)           = SAM(cnt,'INV','Trade') - SAM(cnt,'Trade','INV') ;

TAXCZ(cnt,com)       = SAM(cnt,'tax_com',com) ;
TAXPZ(cnt,sec)       = SAM(cnt,'tax_sec',sec) ;

INVZ(cnt,sec)        = SAM(cnt,'INV',sec) ;

*A: Sum over ltype - or should we split LSZ for ltype as well?
LWESZ(cnt,ed,sex) = sum(sec,LWES(cnt,sec,ed,sex));
KSZ(cnt)             = sum(sec,KZ(cnt,sec)) ;

*LSZ0(cnt),
parameter KSZ0(cnt), LWESZ0(cnt,ed,sex);
KSZ0(cnt)=KSZ(cnt);
LWESZ0(cnt,ed,sex)=LWESZ(cnt,ed,sex);

*A: Comment out if not used
* Compute initial sectoral value added both in value and percentage.
*parameter sVA(cnt,sec),sVAperc(cnt,sec);
*sVA(cnt,sec)=(sum(sex,sum(ed,LZ(cnt,sec,ed, sex)+LZ(ltype,cnt,sec))+TAXPZ(cnt,sec));
*sVAperc(cnt,sec,ltype)=(sum(ltype,LZ(cnt,sec,ltype)+LZ(cnt,sec.ltype))+TAXPZ(cnt,sec))/sum(secc,sum(ltype,LZ(cnt,secc,ltype)+LZ(cnt,secc,ltype))+TAXPZ(cnt,secc));
*execute_unload "InitialVA.gdx", sVA,sVAperc;


*Define the Fix for potential Trade Margins' Imbalance in the SAM
Parameter
TMFIX(cnt)
TMFIXC(cnt, com);


TMFIX(cnt) = -sum(com, TMCZ(cnt, com)) + sum(com, TMXZ(cnt, com));
*A: Add sum over households for trade margins imbalance
TMFIXC(cnt, com)$(sum(sec,IOZ(cnt,com,sec))
                  +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com) +  IZ(cnt,com)) =
                         TMFIX(cnt)*(sum(sec,IOZ(cnt,com,sec))+   sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com) +
                                                 IZ(cnt,com))/
                                 sum(comm, sum(sec,IOZ(cnt,comm,sec))+   sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,comm) +
                                                                 IZ(cnt,comm)) ;

* Adjust consumption figures for taxes and trade margins
* Here it is basically decreasing the value of the commodities to eliminate the effect of consumption taxes.
* These will be included back as mark-ups in the CGE model
Parameters
TOTALCONSZ(cnt,com)   total taxed consumption
TAXTOTALZ(cnt,com)    sum of taxes and margins
;

TOTALCONSZ(cnt,com)   = sum(sec,IOZ(cnt,com,sec)) +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com) + IZ(cnt,com) ;

TAXTOTALZ(cnt,com)    =  TAXCZ(cnt,com) ;

display TMCZ, TAXCZ, totalconsz, taxtotalz;


IOZ(cnt,com,sec)$TOTALCONSZ(cnt,com)
                                 = IOZ(cnt,com,sec) - TAXTOTALZ(cnt,com)*IOZ(cnt,com,sec)/TOTALCONSZ(cnt,com) ;

*A: Add households
CZ(cnt,com,hh)$TOTALCONSZ(cnt,com)
                                 = CZ(cnt,com,hh) - TAXTOTALZ(cnt,com)*CZ(cnt,com,hh)/TOTALCONSZ(cnt,com) ;
CGZ(cnt,com)$TOTALCONSZ(cnt,com)
                                 = CGZ(cnt,com) - TAXTOTALZ(cnt,com)*CGZ(cnt,com)/TOTALCONSZ(cnt,com) ;
IZ(cnt,com)$TOTALCONSZ(cnt,com)
                                 = IZ(cnt,com) - TAXTOTALZ(cnt,com)*IZ(cnt,com)/TOTALCONSZ(cnt,com) ;

CGLZ(cnt,com)$(TOTALCONSZ(cnt,com) and  CGLZ(cnt,com))
                                 = CGLZ(cnt,com) - TAXTOTALZ(cnt,com)*CGLZ(cnt,com)/TOTALCONSZ(cnt,com) ;


* HERE WE FIND INDICES FOR POSSIBLE IOZ NEGATIVE VALUES
parameter
possec
poscom
poscnt
amnt;

* check there there are no negative values
loop ((cnt,com,hh),
   if ((CZ(cnt,com,hh) lt 0) and (abs(CZ(cnt,com,hh)) gt 1e-5) ,
         CZ(cnt, com,hh) = 0;
         poscom = ord(com);
         poscnt = ord(cnt);
         amnt = CZ(cnt,com,hh)
         display amnt;
          abort "check CZ(cnt,com,hh) "
   );
   if ((CGZ(cnt,com) lt 0) and (abs(CGZ(cnt,com)) gt 1e-5) ,
         CGZ(cnt, com) = 0;
         poscom = ord(com);
         poscnt = ord(cnt);
         amnt = CGZ(cnt,com)
         display amnt;
          abort "CGZ(cnt,com) "
   );
   if ((IZ(cnt,com) lt 0) and (abs(IZ(cnt,com)) gt 1e-5) ,
         IZ(cnt, com)= 0;
         poscom = ord(com);
         poscnt = ord(cnt);
         amnt = IZ(cnt,com)
         display amnt;
          abort "IZ(cnt,com) "
   );
loop (sec,
   if ((IOZ(cnt,com,sec) lt 0) and (abs(IOZ(cnt,com,sec)) gt 1e-5) ,
         possec = ord(sec);
         poscom = ord(com);
         poscnt = ord(cnt);
         amnt = IOZ(cnt, com, sec);
         IOZ(cnt, com, sec) = 0;
         display amnt;
          abort "check IOZ(cnt,com,sec)"
   );
);
);



*================ Gini Index Bounds ====================
* Initial assignment of the Gini Upper Bound
parameter Gmax(cnt) Gini Index Upper Bound;
Gmax(cnt)=0;

* for each commodity and country
* compute percentage trade margins over consumption (trmz) and total sales (XZ)
* CZ, CGZ, IZ and IOZ have already been reduced for the effect of the taxes
* =========== Calculate transport and trade margins ============================
Parameter
trmz(cnt,com) initial transport and trade margins
trm(cnt,com) transport and trade margins
;

trmz(cnt,com)$(sum(sec,IOZ(cnt,com,sec))+  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com)+  IZ(cnt,com)) =
                 (TMCZ(cnt,com))/(sum(sec,IOZ(cnt,com,sec))+  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com) +  IZ(cnt,com)) ;

trm(cnt,com) = trmz(cnt,com) ;

*f.        Balance checks

* ========== Check trade flows balance =========================================
XZ(cnt,com) =  sum(sec,IOZ(cnt,com,sec)) +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com)
               + TMXZ(cnt,com) + IZ(cnt,com) + SVZ(cnt,com) ;



Parameter
check_tradebal(cnt,com) sales equal domestic supply plus imports
check_tradebal_2(cnt,com) outputs equal domestic products supply + Export to ROW and Export other countries
;

check_tradebal(cnt,com) = XZ(cnt,com) - ( XXDZ(cnt,com) + MROWZ(cnt,com)
   + sum(cntt, TRADEZ(com,cntt,cnt)) ) ;




check_tradebal_2(cnt,com) = sum(sec,XDDZ(cnt,sec,com))- XXDZ(cnt,com)- EROWZ(cnt,com) -
               sum(cntt, TRADEZ(com,cnt,cntt)) ;

Execute_unload "sjekk_tradebal" XZ,XXDZ,MROWZ,TRADEZ,check_tradebal,check_tradebal_2;

EZ(cnt,com) =  EROWZ(cnt,com) + sum(cntt,TRADEZ(com,cnt,cntt)) ;

*g.        Calculation of initial tax rates
* ====== Calculate the levels of  taxes ========================================
Parameter
taxcz(cnt,com) initial taxes on products
taxpz(cnt,sec) initial taxes on production

taxc(cnt,com) taxes on products
taxp(cnt,sec) taxes on production

tyz(cnt)      initial tax on income
ty(cnt)       tax on income
;

taxcz(cnt,com)$(sum(sec,IOZ(cnt,com,sec))+  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com) +  IZ(cnt,com)) =
                  TAXCZ(cnt,com)/( (sum(sec,IOZ(cnt,com,sec))  +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com)+  IZ(cnt,com)) ) ;

taxpz(cnt,sec)$XDZ(cnt,sec) =   TAXPZ(cnt,sec)/XDZ(cnt,sec) ;

*h.        Calculation of baseline CO2 emissions
* =================== Calculate CO2 Emissions =================================

* https://www.eea.europa.eu/data-and-maps/data/data-viewers/greenhouse-gases-viewer
Parameter
CO2B(cnt)         co2 budget
CO2P(cnt,com,sec) co2 payments per commodity and sector
*Add per household
CO2H(cnt,com,hh)     HOUSEHOLDS CO2 PAYMENT
CO2G(cnt,com)     GOVERNMENT CO2 PAYMENT
CO2I(cnt,com)     INVESTMENTS CO2 PAYMENT
CO2r(cnt,com,*)         emission factors;

Parameter
CO2Emissions(cnt,com,*),EmissionTest(cnt,com,*);

$gdxin 'Co2Emission'
*FOR GDX INPUT
$load CO2Emissions
$gdxin


* distribute the impact of each fuel per sector based on its usage
CO2r(cnt,com,sec)$(fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+sum(hh,SAM(cnt,com,hh))+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
CO2r(cnt,com,hh)$(SAM(cnt,com,hh) and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+sum(housesplit,SAM(cnt,com,housesplit))+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
CO2r(cnt,com,"INV")$(SAM(cnt,com,"INV") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+sum(hh,SAM(cnt,com,hh))+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
CO2r(cnt,com,"GOVT")$(SAM(cnt,com,"GOVT") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+sum(hh,SAM(cnt,com,hh))+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
CO2r(cnt,com,"tmarg")$(SAM(cnt,com,"tmarg") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+sum(hh,SAM(cnt,com,hh))+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));



*O2r(cnt,com,sec)$(fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
*CO2r(cnt,com,"HOUS")$(SAM(cnt,com,"HOUS") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
*CO2r(cnt,com,"INV")$(SAM(cnt,com,"INV") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
*CO2r(cnt,com,"GOVT")$(SAM(cnt,com,"GOVT") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));
*CO2r(cnt,com,"tmarg")$(SAM(cnt,com,"tmarg") and fosfuels(com))=CO2Fuel(cnt,com)/(sum(secc,SAM(cnt,com,secc))+SAM(cnt,com,"HOUS")+SAM(cnt,com,"INV")+SAM(cnt,com,"GOVT")+SAM(cnt,com,"tmarg"));

EmissionTest(cnt,com,sec)$(fosfuels(com))=CO2r(cnt,com,sec)*SAM(cnt,com,sec);
EmissionTest(cnt,com,hh)$(fosfuels(com))=CO2r(cnt,com,hh)*SAM(cnt,com,hh);
EmissionTest(cnt,com,"INV")$(fosfuels(com))=CO2r(cnt,com,"INV")*SAM(cnt,com,"INV");
EmissionTest(cnt,com,"GOVT")$(fosfuels(com))=CO2r(cnt,com,"GOVT")*SAM(cnt,com,"GOVT");
EmissionTest(cnt,com,"tmarg")$(fosfuels(com))=CO2r(cnt,com,"tmarg")*SAM(cnt,com,"tmarg");

execute_unload 'CO2factors.gdx' CO2r,CO2Fuel,EmissionTest;
parameter CO2rs(cnt,com,sec) save parameter;
CO2rs(cnt,com,sec)=CO2r(cnt,com,sec);
*$exit

CO2P(cnt,com,sec)=0;
CO2H(cnt,com,hh)=0;
CO2I(cnt,com)=0;
CO2G(cnt,com)=0;

CO2P(cnt,com,sec)$(FF(com) eq 1 )     = IOZ(cnt,com,sec)*CO2r(cnt,com,sec);
*A: Add multiple households
CO2H(cnt,com,hh)$(FF(com) eq 1 )         = CZ(cnt,com,hh)*CO2r(cnt,com,hh);
CO2G(cnt,com)$(FF(com) eq 1 )         = CGLZ(cnt,com)*CO2r(cnt,com,"INV");
CO2I(cnt,com)$(FF(com) eq 1 )         = IZ(cnt,com)*CO2r(cnt,com,"GOVT");


display CO2P,CO2H,CO2G,CO2I;
CO2B(cnt)=0;


*************************



parameter TrHoG(cnt,hh), TrHoT(cnt,hh) transfers households Give and Take;
*************************

parameter check_taxcom(cnt, com);
*A: Sum over households
check_taxcom(cnt, com) = sum(hh,CZ(cnt, com,hh))*(1+taxcz(cnt, com))*(1 + trmz(cnt, com));
display check_taxcom;

************************

taxc(cnt,com) = taxcz(cnt,com) ;
taxp(cnt,sec) = taxpz(cnt,sec) ;

* Income tax computation in percentage

tyz(cnt)$(sum((ed,sex),(LWESZ(cnt,ed,sex)) + KSZ(cnt)) ne 0) =  TTYZ(cnt)/sum((ed,sex),(LWESZ(cnt,ed,sex)) + KSZ(cnt)) ;
ty(cnt)  =  tyz(cnt) ;
*i.        Trade Balance checks
Parameter
trade_bal_global(cnt) global trade balance
trade_bal_global_nat national trade balance
;

trade_bal_global(cnt) =
* Incoming monetary flows - exports
*Exports
*A: Add sum for households
  sum(com,EROWZ(cnt,com))
         + sum((com,cntt),TRADEZ(com,cnt,cntt))
         +  TRROWZ(cnt)
         +  sum(hh,TRHROWZ(cnt,hh))
         +  SROWZ(cnt)
* Outgong monetary flows - imports
         - ( sum(com,MROWZ(cnt,com))
         + sum((com,cntt),TRADEZ(com,cntt,cnt)) ) ;

trade_bal_global_nat = sum(cnt,trade_bal_global(cnt));

display trade_bal_global,trade_bal_global_nat;


Parameter
investment_bal(cnt) balance of savings and investments
investment_bal_nat
;

*A: Add sum over hh
investment_bal(cnt) =+ sum(sec,INVZ(cnt,sec))
  + sum(hh,SHZ(cnt,hh)) + SGZ(cnt) + SROWZ(cnt) - ITZ(cnt)
  - sum(com, SVZ(cnt,com))  ;

investment_bal_nat = sum(cnt, investment_bal(cnt));



parameter
TaxedTradeMargins(cnt, com)
;

TaxedTradeMargins(cnt, com) = (sum(hh,CZ(cnt, com,hh))+IZ(cnt, com)
         +CGZ(cnt, com)+sum(sec,IOZ(cnt, com, sec)))*trmz(cnt, com);

display investment_bal,investment_bal_nat,TaxedTradeMargins;


* ======================= Aggregate ELASTICITIES =================================

*aggregate elasticities for old sectors
ELAS(sec,"KL")$(not sameas(sec,"iH2S") and not sameas(sec,"iH2C") and not sameas(sec,"iH2E")) = sum((r,sec0)$maps(sec0,sec),ELAS0(sec0,"KL")*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));
ELAS(sec,"KLE")$(not sameas(sec,"iH2S") and not sameas(sec,"iH2C") and not sameas(sec,"iH2E")) = sum((r,sec0)$maps(sec0,sec),ELAS0(sec0,"KLE")*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));
ELAS(sec,"KLEM")$(not sameas(sec,"iH2S") and not sameas(sec,"iH2C") and not sameas(sec,"iH2E")) = sum((r,sec0)$maps(sec0,sec),ELAS0(sec0,"KLEM")*XD0(r,sec0))/sum((cnt,sec0)$maps(sec0,sec),XD0(cnt,sec0));

elasM(com)$(not sameas(com, "pH2"))= sum((r,com0)$mapc(com0,com),elasM0(com0)*XZ(r,com))/sum((cnt,com0)$mapc(com0,com),XZ(cnt,com));
elasM("pH2")=elasM("pNG");

display ELAS0,ELAS,elasM;

* override elasticities
ELAS(sec,"KL")$(orEl eq 1)=0.95;
ELAS(sec,"KLE")$(orEl eq 1)=0.4;
ELAS(sec,"KLEM")$(orEl eq 1)=1;

* ============                             ===================
* ============ Currencies                  ===================
* ============                             ===================
* 8) HERE WE SET A FLAG FOR THE CURRENCY IN EACH COUNTRY. This is not ROW, but still "internal" trade with another currency
set CRR /EURO, NOK, SEK, GBP, DNK, SWF/;
*set CRR /EURO, NOK/;

parameter used_currency(cnt, CRR);

used_currency(cnt, 'EURO') = 1;

used_currency('NO', 'EURO') = 0;
used_currency('NO', 'NOK') = 1;

used_currency('SE', 'EURO') = 0;
used_currency('SE', 'SEK') = 1;
used_currency('GB', 'EURO') = 0;
used_currency('GB', 'GBP') = 1;
used_currency('DK', 'EURO') = 0;
used_currency('DK', 'DNK') = 1;
used_currency('CH', 'EURO') = 0;
used_currency('CH', 'SWF') = 1;

parameter Exch_out(CRR)
Exch_in(CRR);

* 9) HERE WE COMPUTE THE TOTAL OUTFLOWS AND INFLOWS IN A GIVEN CURRENCY
Exch_out(CRR) = (sum(cnt$used_currency(cnt, CRR), sum(com, MROWZ(cnt, com)) - TRROWZ(cnt)$(TRROWZ(cnt) < 0) + SROWZ(cnt) - sum(hh,TRHROWZ(cnt,hh))$( sum(hh,TRHROWZ(cnt,hh)) < 0)));

Exch_in(CRR) =  (sum(cnt$used_currency(cnt, CRR), sum(com,EROWZ(cnt, com)) + TRROWZ(cnt)$(TRROWZ(cnt) > 0) +  sum(hh,TRHROWZ(cnt,hh))$( sum(hh,TRHROWZ(cnt,hh)) < 0)));

display used_currency,Exch_out,Exch_in;
display MROWZ, TRROWZ, SROWZ, TRHROWZ, EROWZ;

* ============ Define variable to study and the set of increments ==============================
* INCLUDE GROWTH FOR POPULATION AND GDP PROJECTIONS
parameter t;
t=1;

parameter R_GDP(step, cnt), gdp_p(cnt),growth_p(cnt), growth_lf(cnt);




*******************Capital Accumulation****************** Added Jan26
*Add parameter for AMECO and definition of kap before run of model
parameter Kap(cnt) total capital in the economy;
*parameter depr(cnt) depreciation/
parameter ror(cnt) return on revenue;

* Sets Kapital for the first time
Kap(cnt) = (sum((sec,ed,sex),LWES(cnt,sec,ed,sex))+sum(hh,KENDOW(cnt,hh))+sum(sec,TAXPZ(cnt,sec)))*GtK(cnt);

parameter DisplayKap(step, cnt);
DisplayKap("1", cnt) = Kap(cnt);
ror(cnt) = sum(hh,KENDOW(cnt, hh))/Kap(cnt);

*moved from longer down to use in depr
parameter grow(cnt) single period (5 years) growth trend (nominal);
grow(cnt)$(GDPt eq 0)=gdp(cnt)**(5/(2050-2005))-1;
grow(cnt)$(GDPt eq 1)=0;

parameter depr(cnt);
depr(cnt) = ITZ(cnt)*5/Kap(cnt)-grow(cnt);
display depr
* Does not include DEcal as in REMES-No as that is set to 1 for all

* ============= Total Income Definition (for Gini Index) ===============

Parameter TI(cnt,hh) Total Income in base year;
TI(cnt,hh)=sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,hh,ed,sex)))+KENDOW(cnt,hh)+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh);

parameter CHs(cnt,hh) Initialization of the CI parameter for the transfers;
CHs(cnt,hh)=0;
CHs(cnt,hh)=(sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),(
         (LENDOW(cnt,hh,ed,sex) - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/5))* (1-ty(cnt))))
         + ((KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/5) * (1-ty(cnt)))
         + ((AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/5))
         + ((ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/5))
         + ((ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5))
         + ((ALR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5)))/(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5);


* ======================================================================

* ============                                  ===================
* ============ Definitions of the TRANSPORT CASE ===================
* ============                                  ===================
* NewSharet DESCRIBES HOW FUELS MIX CHANGES WITH TIME MOVING FROM CONVENTIONAL TO H2 AND ELECTRICITY
* THE SHARES ARE TAKEN FROM EXTERNAL DATA. (openENTRANCE scenario platform)
parameter T_adj(cnt, *, *)   Adjustment to Transport sectors
NewSharet(*, *, *, *)   Share of fuels according to external data;

*j.        Read input from openENTRANCE platform

* openENTRANCE
* REMOVE blanks before reading the file "the netherlands" --> "thenetherlands"
* ====== Include IAMC input file ============0
*=== Import from Excel using GDX utilities
set year /2015,2020,2025,2030,2035,2040,2045,2050/;

* primary energy from GENeSYS-MOD

set source
/
'SecondaryEnergy|Electricity|Biomass|w/CCS'
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/CCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/CCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/CCS'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Other'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
'FinalEnergy|ResidentialandCommercial|Solids|Coal'
'FinalEnergy|Transportation|Electricity'
'FinalEnergy|Transportation|Hydrogen'
'FinalEnergy|Transportation|Liquids|Biomass'
'FinalEnergy|Transportation|Liquids|Oil'
/;

$ifthen %CaseStudy%==10
set source1(source)
/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
/;

* what is the share of electricity with CCS
* what is the share of electricity with CCS
set wccs(source);
wccs(source)=no;

*tech for industry sector
set source2(source)
/
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
/;

*tech for transport sector
set source3(source)
/
'FinalEnergy|Transportation|Electricity'
'FinalEnergy|Transportation|Hydrogen'
'FinalEnergy|Transportation|Liquids|Biomass'
'FinalEnergy|Transportation|Liquids|Oil'
/;

*tech for service sector and households
set source4(source)
/
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
'FinalEnergy|ResidentialandCommercial|Solids|Coal'
/;
$endif

$ifthen %CaseStudy%==11
set source1(source)
/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
/;

* what is the share of electricity with CCS
* what is the share of electricity with CCS
set wccs(source);
wccs(source)=no;

*tech for industry sector
set source2(source)
/
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
/;

*tech for transport sector
set source3(source)
/
'FinalEnergy|Transportation|Electricity'
'FinalEnergy|Transportation|Hydrogen'
'FinalEnergy|Transportation|Liquids|Biomass'
'FinalEnergy|Transportation|Liquids|Oil'
/;

*tech for service sector and households
set source4(source)
/
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
'FinalEnergy|ResidentialandCommercial|Solids|Coal'
/;
$endif


$ifthen %CaseStudy%==9
set source1(source)
/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'
'SecondaryEnergy|Electricity|Coal|w/oCCS'
'SecondaryEnergy|Electricity|Gas|w/oCCS'
'SecondaryEnergy|Electricity|Geothermal'
'SecondaryEnergy|Electricity|Hydro'
'SecondaryEnergy|Electricity|Nuclear'
'SecondaryEnergy|Electricity|Oil|w/oCCS'
'SecondaryEnergy|Electricity|Solar|PV'
'SecondaryEnergy|Electricity|Wind|Onshore'
'SecondaryEnergy|Electricity|Wind|Offshore'
/;

* what is the share of electricity with CCS
* what is the share of electricity with CCS
set wccs(source);
wccs(source)=no;

*tech for industry sector
set source2(source)
/
'FinalEnergy|Industry|Electricity'
'FinalEnergy|Industry|Gases'
'FinalEnergy|Industry|Hydrogen'
'FinalEnergy|Industry|Liquids|Oil'
'FinalEnergy|Industry|Solids|Biomass'
'FinalEnergy|Industry|Solids|Coal'
/;

*tech for transport sector
set source3(source)
/
'FinalEnergy|Transportation|Electricity'
'FinalEnergy|Transportation|Hydrogen'
'FinalEnergy|Transportation|Liquids|Biomass'
'FinalEnergy|Transportation|Liquids|Oil'
/;

*tech for service sector and households
set source4(source)
/
'FinalEnergy|ResidentialandCommercial|Electricity'
'FinalEnergy|ResidentialandCommercial|Gases'
'FinalEnergy|ResidentialandCommercial|Hydrogen'
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'
'FinalEnergy|ResidentialandCommercial|Solids|Coal'
/;
$endif


* countries from GENeSYS-MOD
set countries
/
Lithuania
Slovenia
Spain
TheNetherlands
Slovakia
France
Norway
Finland
Sweden
Bulgaria
Romania
Portugal
Austria
Hungary
Luxembourg
Ireland
CzechRepublic
Belgium
Denmark
Poland
Croatia
Switzerland
Estonia
Italy
Germany
Latvia
UnitedKingdom
Greece
/;

*$ontext
*=== First unload to GDX file (occurs during compilation phase)

$ifthen %CaseStudy%==9
$call gdxxrw.exe oePathwayGD.xlsx par=PrimaryEnergy rng=Sheet1!A1:G5915 cdim=1 rdim=6
$endif

$ifthen %CaseStudy%==10
$call gdxxrw.exe oePathwayGD.xlsx par=PrimaryEnergy rng=Sheet1!A1:G5915 cdim=1 rdim=6
$endif

$ifthen %CaseStudy%==11
$call gdxxrw.exe oePathwayGD.xlsx par=PrimaryEnergy rng=Sheet1!A1:G5915 cdim=1 rdim=6
$endif


*=== Now import data from GDX
Parameter PrimaryEnergy(*,*,countries,source,*,year,*),
SelEnet(countries,source1,year),SelEne(cnt,*,step),SelEne0(cnt,*,step);

Parameter ConsEneIndt(countries,source2,year),ConsEneInd(cnt,*,step),ConsEneInd0(cnt,*,step),
ConsEneTrat(countries,source3,year),ConsEneTra(cnt,*,step),ConsEneTra0(cnt,*,step),
ConsEneSHt(countries,source4,year),ConsEneSH(cnt,*,step),ConsEneSH0(cnt,*,step);


$ifthen %CaseStudy%==9

$gdxin oePathwayGD.gdx
$load PrimaryEnergy
$gdxin

SelEnet(countries,source1,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source1,'EJ/yr',year,'value');
ConsEneIndt(countries,source2,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source2,'EJ/yr',year,'value');
ConsEneTrat(countries,source3,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source3,'EJ/yr',year,'value');
ConsEneSHt(countries,source4,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source4,'EJ/yr',year,'value');
$endif

$ifthen %CaseStudy%==10

$gdxin oePathwayGD.gdx
$load PrimaryEnergy
$gdxin

SelEnet(countries,source1,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source1,'EJ/yr',year,'value');
ConsEneIndt(countries,source2,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source2,'EJ/yr',year,'value');
ConsEneTrat(countries,source3,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source3,'EJ/yr',year,'value');
ConsEneSHt(countries,source4,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source4,'EJ/yr',year,'value');
$endif

$ifthen %CaseStudy%==11

$gdxin oePathwayGD.gdx
$load PrimaryEnergy
$gdxin

SelEnet(countries,source1,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source1,'EJ/yr',year,'value');
ConsEneIndt(countries,source2,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source2,'EJ/yr',year,'value');
ConsEneTrat(countries,source3,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source3,'EJ/yr',year,'value');
ConsEneSHt(countries,source4,year)=
PrimaryEnergy('GENeSYS-MOD2.9','GradualDevelopment1.0',countries,source4,'EJ/yr',year,'value');
$endif



set linkCnt(countries,cnt) /
Lithuania     .        LT
Slovenia      .        SI
Spain         .        ES
TheNetherlands.        NL
Slovakia      .        SK
France        .        FR
Norway        .        NO
Finland       .        FI
Sweden        .        SE
Bulgaria      .        BG
Romania       .        RO
Portugal      .        PT
Austria       .        AT
Hungary       .        HU
Luxembourg    .        LU
Ireland       .        IE
CzechRepublic .        CZ
Belgium       .        BE
Denmark       .        DK
Poland        .        PL
Switzerland   .        CH
Estonia       .        EE
Italy         .        IT
Germany       .        DE
Latvia        .        LV
UnitedKingdom .        GB
Greece        .        GR
/;


$ifthen %CaseStudy%==9
* Reference
set linkSor(source1,*)/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'.pBIO
'SecondaryEnergy|Electricity|Coal|w/oCCS'.pCOA
'SecondaryEnergy|Electricity|Gas|w/oCCS'.pNG
'SecondaryEnergy|Electricity|Geothermal'.pNG
'SecondaryEnergy|Electricity|Hydro'.K
'SecondaryEnergy|Electricity|Nuclear'.K
'SecondaryEnergy|Electricity|Oil|w/oCCS'.pOIL
'SecondaryEnergy|Electricity|Solar|PV'.K
'SecondaryEnergy|Electricity|Wind|Onshore'.K
'SecondaryEnergy|Electricity|Wind|Offshore'.K
/;

set linkConsInd(source2,com)/
'FinalEnergy|Industry|Electricity'.pELE
'FinalEnergy|Industry|Gases'.pNG
'FinalEnergy|Industry|Hydrogen'.pH2
'FinalEnergy|Industry|Liquids|Oil'.pDSL
'FinalEnergy|Industry|Solids|Biomass'.pBIO
'FinalEnergy|Industry|Solids|Coal'.pCOA
/;


set linkConsTra(source3,com)/
'FinalEnergy|Transportation|Electricity'.pELE
'FinalEnergy|Transportation|Hydrogen'.pH2
'FinalEnergy|Transportation|Liquids|Biomass'.pBIO
*'FinalEnergy|Transportation|Liquids|Oil'.pOIL
'FinalEnergy|Transportation|Liquids|Oil'.pDSL
/;

set linkConsSH(source4,com)/
'FinalEnergy|ResidentialandCommercial|Electricity'.pELE
'FinalEnergy|ResidentialandCommercial|Gases'.pNG
'FinalEnergy|ResidentialandCommercial|Hydrogen'.pH2
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'.pDSL
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'.pBIO
'FinalEnergy|ResidentialandCommercial|Solids|Coal'.pCOA
/;
$endif




$ifthen %CaseStudy%==11
* Reference
set linkSor(source1,*)/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'.pBIO
'SecondaryEnergy|Electricity|Coal|w/oCCS'.pCOA
'SecondaryEnergy|Electricity|Gas|w/oCCS'.pNG
'SecondaryEnergy|Electricity|Geothermal'.pNG
'SecondaryEnergy|Electricity|Hydro'.K
'SecondaryEnergy|Electricity|Nuclear'.K
'SecondaryEnergy|Electricity|Oil|w/oCCS'.pOIL
'SecondaryEnergy|Electricity|Solar|PV'.K
'SecondaryEnergy|Electricity|Wind|Onshore'.K
'SecondaryEnergy|Electricity|Wind|Offshore'.K
/;

set linkConsInd(source2,com)/
'FinalEnergy|Industry|Electricity'.pELE
'FinalEnergy|Industry|Gases'.pNG
'FinalEnergy|Industry|Hydrogen'.pH2
'FinalEnergy|Industry|Liquids|Oil'.pDSL
'FinalEnergy|Industry|Solids|Biomass'.pBIO
'FinalEnergy|Industry|Solids|Coal'.pCOA
/;


set linkConsTra(source3,com)/
'FinalEnergy|Transportation|Electricity'.pELE
'FinalEnergy|Transportation|Hydrogen'.pH2
'FinalEnergy|Transportation|Liquids|Biomass'.pBIO
*'FinalEnergy|Transportation|Liquids|Oil'.pOIL
'FinalEnergy|Transportation|Liquids|Oil'.pDSL
/;

set linkConsSH(source4,com)/
'FinalEnergy|ResidentialandCommercial|Electricity'.pELE
'FinalEnergy|ResidentialandCommercial|Gases'.pNG
'FinalEnergy|ResidentialandCommercial|Hydrogen'.pH2
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'.pDSL
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'.pBIO
'FinalEnergy|ResidentialandCommercial|Solids|Coal'.pCOA
/;
$endif


$ifthen %CaseStudy%==10
* Reference
set linkSor(source1,*)/
'SecondaryEnergy|Electricity|Biomass|w/oCCS'.pBIO
'SecondaryEnergy|Electricity|Coal|w/oCCS'.pCOA
'SecondaryEnergy|Electricity|Gas|w/oCCS'.pNG
'SecondaryEnergy|Electricity|Geothermal'.pNG
'SecondaryEnergy|Electricity|Hydro'.K
'SecondaryEnergy|Electricity|Nuclear'.K
'SecondaryEnergy|Electricity|Oil|w/oCCS'.pOIL
'SecondaryEnergy|Electricity|Solar|PV'.K
'SecondaryEnergy|Electricity|Wind|Onshore'.K
'SecondaryEnergy|Electricity|Wind|Offshore'.K
/;

set linkConsInd(source2,com)/
'FinalEnergy|Industry|Electricity'.pELE
'FinalEnergy|Industry|Gases'.pNG
'FinalEnergy|Industry|Hydrogen'.pH2
'FinalEnergy|Industry|Liquids|Oil'.pDSL
'FinalEnergy|Industry|Solids|Biomass'.pBIO
'FinalEnergy|Industry|Solids|Coal'.pCOA
/;


set linkConsTra(source3,com)/
'FinalEnergy|Transportation|Electricity'.pELE
'FinalEnergy|Transportation|Hydrogen'.pH2
'FinalEnergy|Transportation|Liquids|Biomass'.pBIO
*'FinalEnergy|Transportation|Liquids|Oil'.pOIL
'FinalEnergy|Transportation|Liquids|Oil'.pDSL
/;

set linkConsSH(source4,com)/
'FinalEnergy|ResidentialandCommercial|Electricity'.pELE
'FinalEnergy|ResidentialandCommercial|Gases'.pNG
'FinalEnergy|ResidentialandCommercial|Hydrogen'.pH2
'FinalEnergy|ResidentialandCommercial|Liquids|Oil'.pDSL
'FinalEnergy|ResidentialandCommercial|Solids|Biomass'.pBIO
'FinalEnergy|ResidentialandCommercial|Solids|Coal'.pCOA
/;
$endif


set linktime(year,step)/
2015.3
2020.4
2025.5
2030.6
2035.7
2040.8
2045.9
2050.10
/;


*$exit
* Transform the data from the openENTRANCE Scenario platform into data understandable by REMES
* aggregate the sources into REMES commodities
SelEne0(cnt,g,step)=0;
SelEne0(cnt,'K',step)=0;
SelEne0(cnt,g,step)=sum((countries,source1,year)$(linkCnt(countries,cnt) and linkSor(source1,g) and linktime(year,step)), SelEnet(countries,source1,year));
SelEne0(cnt,'K',step)=sum((countries,source1,year)$(linkCnt(countries,cnt) and linkSor(source1,'K') and linktime(year,step)), SelEnet(countries,source1,year));
SelEne0(cnt,g,step)$(ord(step) lt 4)=SelEne0(cnt,g,'4');
SelEne0(cnt,'K',step)$(ord(step) lt 4)=SelEne0(cnt,'K','4');

parameter SelCCS(cnt,step);
* total power production with CCS
SelCCS(cnt,step)=sum((countries,source1,year)$(linkCnt(countries,cnt) and linktime(year,step) and wccs(source1)), SelEnet(countries,source1,year));
* redefined as share of power production with CCS over all fossil power production (we exclude renewable power by requiring not to consider the sources mapped to Capital 'K'
SelCCS(cnt,step)$(sum((countries,source1,year)$(linkCnt(countries,cnt) and linktime(year,step) ), SelEnet(countries,source1,year)))=SelCCS(cnt,step)/sum((countries,source1,year)$(linkCnt(countries,cnt) and linktime(year,step) and not linkSor(source1,'K')), SelEnet(countries,source1,year));


SelEne(cnt,'K',step)$(SelEne0(cnt,'K',step))=SelEne0(cnt,'K',step)/(sum(com,SelEne0(cnt,com,step))+SelEne0(cnt,'K',step));
SelEne(cnt,g,step)$(SelEne0(cnt,g,step))=SelEne0(cnt,g,step)/(sum(com,SelEne0(cnt,com,step))+SelEne0(cnt,'K',step));



ConsEneInd0(cnt,g,step)=0;
ConsEneInd0(cnt,g,step)=sum((countries,source2,year)$(linkCnt(countries,cnt) and linkConsInd(source2,g) and linktime(year,step)), ConsEneIndt(countries,source2,year));
ConsEneInd0(cnt,g,step)$(ord(step) lt 4)=ConsEneInd0(cnt,g,'4');
ConsEneInd(cnt,g,step)$(ConsEneInd0(cnt,g,step))=ConsEneInd0(cnt,g,step)/sum(com,ConsEneInd0(cnt,com,step));

ConsEneTra0(cnt,g,step)=0;
ConsEneTra0(cnt,g,step)=sum((countries,source3,year)$(linkCnt(countries,cnt) and linkConsTra(source3,g) and linktime(year,step)), ConsEneTrat(countries,source3,year));
ConsEneTra0(cnt,g,step)$(ord(step) lt 4)=ConsEneTra0(cnt,g,'4');
ConsEneTra(cnt,g,step)$(ConsEneTra0(cnt,g,step))=ConsEneTra0(cnt,g,step)/sum(com,ConsEneTra0(cnt,com,step));

ConsEneSH0(cnt,g,step)=0;
ConsEneSH0(cnt,g,step)=sum((countries,source4,year)$(linkCnt(countries,cnt) and linkConsSH(source4,g) and linktime(year,step)), ConsEneSHt(countries,source4,year));
ConsEneSH0(cnt,g,step)$(ord(step) lt 4)=ConsEneSH0(cnt,g,'4');
ConsEneSH(cnt,g,step)$(ConsEneSH0(cnt,g,step))=ConsEneSH0(cnt,g,step)/sum(com,ConsEneSH0(cnt,com,step));


execute_unload 'ExtData.gdx', SelEne,ConsEneInd,ConsEneTra,ConsEneSH,SelCCS;
*$exit


* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
* Counterfactual point 1
* choose where to read the data from depending on the case study
$ifthen %CaseStudy%==9
* nothing happens for technology
newsharet(cnt,sec0,com0,step)=0;
newsharet("UK",sec0,com0,step)=0;
newsharet("UK","iH2S","pH2",step)=0;
newsharet("UK","iH2C","pH2",step)=0;
newsharet("UK","iH2E","pH2",step)=0;
*A: Add households
newsharet("UK",hh,com0,step)=0;
newsharet("UK","GOVT",com0,step)=0;
newsharet("UK","INV",com0,step)=0;
* in this case the productivity is the baseline one
*PRC1(cnt)=PRC0(cnt);
$endif

$ifthen %CaseStudy%==10
* nothing happens for technology
newsharet(cnt,sec0,com0,step)=0;
newsharet("UK",sec0,com0,step)=0;
newsharet("UK","iH2S","pH2",step)=0;
newsharet("UK","iH2C","pH2",step)=0;
newsharet("UK","iH2E","pH2",step)=0;
*A: Add households
newsharet("UK",hh,com0,step)=0;
newsharet("UK","GOVT",com0,step)=0;
newsharet("UK","INV",com0,step)=0;
* in this case the productivity is the baseline one
*PRC1(cnt)=PRC0(cnt);
$endif

$ifthen %CaseStudy%==11
* nothing happens for technology
newsharet(cnt,sec0,com0,step)=0;
newsharet("UK",sec0,com0,step)=0;
newsharet("UK","iH2S","pH2",step)=0;
newsharet("UK","iH2C","pH2",step)=0;
newsharet("UK","iH2E","pH2",step)=0;
*A: Add households
newsharet("UK",hh,com0,step)=0;
newsharet("UK","GOVT",com0,step)=0;
newsharet("UK","INV",com0,step)=0;
* in this case the productivity is the baseline one
*PRC1(cnt)=PRC0(cnt);
$endif


* 15c) THE H2 COMMODITY IS THE ONLY EXTRA COMMODITY CONSIDERED. initially its share is set to zero.
T_adj(cnt, sec, com) = 0;
T_adj(cnt, sec, "pH2") = 0;

T_adj(cnt, hh, com) = 0;
T_adj(cnt, hh, "pH2") = 0;

T_adj(cnt, "GOVT", com) = 0;
T_adj(cnt, "GOVT", "pH2") = 0;

Parameter Gov_total;

Parameter T_adj_CEH(cnt,hh,com);
Parameter T_adj_TOT(cnt,hh,com);
T_adj_CEH(cnt,hh,com) = 0;

Parameter T_adj_HH(cnt,hh,com);
T_adj_HH(cnt,hh,com)=0;

Parameter T_adj_TRADE;
T_adj_TRADE(cnt,com, cntt) = 0;
Parameter T_adj_TRADEMARGIN;
T_adj_TRADEMARGIN(cnt,com, cntt) = 0;
Parameter T_adj_ROW;
T_adj_ROW(cnt,com) = 0;





* k.        Translation of openENTRANCE input into REMES technology shares

* =============== newshare IS REDEFINED WITH THE GROUPED SECTORS ===============

parameter newshare0(*,*,*,*), newshare(*,*,*,*), KZ0(cnt,sec,step),KZshare(cnt,sec,step);

newshare0(cnt,'iELC',com,step)=SelEne(cnt,com,step);
KZ0(cnt,'iELC',step)=1-sum(com,newshare0(cnt,'iELC',com,step));

*PP if I deactivate these there is no external technology transition
newshare0(cnt,'iTRA',com,step)=ConsEneTra(cnt,com,step);
newshare0(cnt,indsecs,com,step)=ConsEneInd(cnt,com,step);
newshare0(cnt,'iSER',com,step)=ConsEneSH(cnt,com,step);
newshare0(cnt,hh,com,step)=newshare0(cnt,"iSER",com,step);

* check data
*execute_unload 'FromPlatform.gdx' SelEnet, SelEne0,SelEne, newshare0;


alias(step,pass);

parameter
temp0(cnt,sec)       total sum of commodities that subject to technical change from SAM ,
tempH0(cnt)          commodities that change for households
multSAM(cnt,*,*) ensures that in the first period the resharing give the same values as the SAM even with external shares,
multKZ(cnt,sec)  ensures that in the first period the resjaring gives the same values as the SAM for the capital,
reSAM(cnt,*,*,step)   reallocation of values with same magnitude as into the SAM,
reKZ(cnt,sec,step)            reallocation of values for capital. same magnitude as the SAM,
KAP0(cnt,sec)    initial share belonging to capital
FZ0(cnt,sec)     initial share belonging to fuels;

* if at one point the share is nonzero compute the sum only for commodities with a nonzero share
* the initial sum of newshare0 over goods is not 1. The rest is kapital

* se solo quelle in newshare allora mancano i fuel che porti a zero che sono nella SAM
temp0(cnt,sec) = sum(com$(sum(pass,newshare0(cnt,sec,com,pass))), IOZ(cnt,com,sec));
*H: add over households
tempH0(cnt) = sum(com$(sum(pass,sum(hh,newshare0(cnt,hh,com,pass)))), sum(hh,CZ(cnt,com,hh)));

* Prices: compute the prices for the goods in the SAM
multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and IOZ(cnt,com,sec) and newshare0(cnt,sec,com,"3"))=IOZ(cnt,com,sec)/(newshare0(cnt,sec,com,"3")*temp0(cnt,sec));
*A: Add households
multSAM(cnt,hh,com)$(sum(pass,newshare0(cnt,hh,com,pass)) and CZ(cnt,com,hh) and newshare0(cnt,hh,com,"3"))=CZ(cnt,com,hh)/(newshare0(cnt,hh,com,"3")*tempH0(cnt));
multKZ(cnt,sec)$(sum((com,pass),newshare0(cnt,sec,com,pass)) and SID(sec)=3 and sum(step,KZ0(cnt,sec,step)))=KZ(cnt,sec)/(KZ0(cnt,sec,"3")*temp0(cnt,sec))

* count how many multSAM are nonnegative
parameter count(cnt,*);
count(cnt,sec)=sum(com$(multSAM(cnt,sec,com)),multSAM(cnt,sec,com)/multSAM(cnt,sec,com));
*A:Add households
count(cnt,hh)=sum(com$(multSAM(cnt,hh,com)),multSAM(cnt,hh,com)/multSAM(cnt,hh,com));

* Prices: if their initial share in the SAM is zero take the average of the other multipliers.
multSAM(cnt,sec,com)$(sum(pass,newshare0(cnt,sec,com,pass)) and FID(com)>0 and FID(com)<3 and SID(sec)=3 and (IOZ(cnt,com,sec)=0 or newshare0(cnt,sec,com,"3")=0))=sum(g$(multSAM(cnt,sec,g)),multSAM(cnt,sec,g))/count(cnt,sec);
multSAM(cnt,hh,com)$(sum(pass,newshare0(cnt,hh,com,pass)) and FID(com)>0 and FID(com)<3 and (CZ(cnt,com,hh)=0 or newshare0(cnt,hh,com,"3")=0))=sum(g$(multSAM(cnt,hh,g)),multSAM(cnt,hh,g))/count(cnt,hh);

reSAM(cnt,sec,com,step)$(sum(pass,newshare0(cnt,sec,com,pass)))=0;
reSAM(cnt,hh,com,step)$(sum(pass,newshare0(cnt,hh,com,pass)))=0;
reSAM(cnt,sec,"pH2",step)=0;

* this pushes the percentage of all the fossil fuels to zero. It is needed because not all the fuels are accounted in the external data
reSAM(cnt,sec,fosfuels,step)$(sum((pass,com),newshare0(cnt,sec,com,pass)))=IOZ(cnt,fosfuels,sec)*(1-(ord(step))/card(step));
*A: Add households
reSAM(cnt,hh,fosfuels,step)$(sum((pass,com),newshare0(cnt,hh,com,pass)))=CZ(cnt,fosfuels,hh)*(1-(ord(step))/card(step));
*SAM(cnt,fosfuels,sec)*(1-(ord(step))/card(step));
reSAM(cnt,sec,fosfuels,step)$(sum((pass,com),newshare0(cnt,sec,com,pass)) and ord(step) le 4)=IOZ(cnt,fosfuels,sec);
reSAM(cnt,hh,fosfuels,step)$(sum((pass,com),newshare0(cnt,hh,com,pass)) and ord(step) le 4)=CZ(cnt,fosfuels,hh);
*SAM(cnt,fosfuels,sec);
* this line reassigns the fuels according to the external data.
reSAM(cnt,sec,com,step)$(sum(pass,newshare0(cnt,sec,com,pass)))=newshare0(cnt,sec,com,step)*temp0(cnt,sec)*multSAM(cnt,sec,com);
*A: Add households
reSAM(cnt,hh,com,step)$(sum(pass,newshare0(cnt,hh,com,pass)))=newshare0(cnt,hh,com,step)*tempH0(cnt)*multSAM(cnt,hh,com);
reSAM(cnt,sec,"pH2",step)=newshare0(cnt,sec,"pH2",step)*temp0(cnt,sec)*multSAM(cnt,sec,"pH2");
reKZ(cnt,sec,step)= KZ0(cnt,sec,step)*temp0(cnt,sec)*multKZ(cnt,sec);

* compute new shares for the power sector techchange
*newshare(cnt,sec,com,step)$(sum(pass,newshare0(cnt,sec,com,pass)) and reSAM(cnt,sec,com,step))=reSAM(cnt,sec,com,step)/(sum(g$(CID(g)=1),reSAM(cnt,sec,g,step))+reKZ(cnt,sec,step));
*A: Add households
newshare(cnt,sec,com,step)$(reSAM(cnt,sec,com,step))=reSAM(cnt,sec,com,step)/(sum(g$(CID(g)=1),reSAM(cnt,sec,g,step))+reKZ(cnt,sec,step));
newshare(cnt,hh,com,step)$(reSAM(cnt,hh,com,step))=reSAM(cnt,hh,com,step)/(sum(g$(CID(g)=1),reSAM(cnt,hh,g,step)));

newshare(cnt,sec,"pH2",step)$(newshare(cnt,sec,"pH2",step))=reSAM(cnt,sec,"pH2",step)/(sum(g$(CID(g)=1),reSAM(cnt,sec,g,step))+reKZ(cnt,sec,step));
KZshare(cnt,sec,step)$(sum(pass,KZ0(cnt,sec,pass)) and sum(com,newshare(cnt,sec,com,step)))=1-sum(com,newshare(cnt,sec,com,step));
*newshare(cnt,"HOUS",com,step)=newshare(cnt,"iSER",com,step);


* share of renewable, fossils and fossils with CCS as for Genesys-mod
parameter renE(cnt,step), fosE(cnt,step), CCSE(cnt,step);
* compute the share of power with fossil fuels
fosE(cnt,step)=sum(fosfuels,newshare(cnt,'iELC',fosfuels,step));
* compute the share of power with renewables
renE(cnt,step)=1-fosE(cnt,step);
* compute the share of fossil with CCS
CCSE(cnt,step)=fosE(cnt,step)*SelCCS(cnt,step);
* redefine the fossil without CCS
fosE(cnt,step)=fosE(cnt,step)*(1-SelCCS(cnt,step));

* norway has mismatch between reconstructed SAM and original one due to wrong data from platform for Norway, GB and Switzerland
* as a mention, in the external data power consumption is zero for norway for households in 2010
execute_unload "reshare",temp0, newshare0, multSAM, multKZ, IOZ, temp0, reSAM, reKZ, newshare,KZshare,KZ,KZ0, renE, fosE, CCSE;

*$exit

* ================================ DONE ========================================


parameter Pathway_adj(cnt, *, *) Sum of the adjustments from all cases


* Parameters used to define the change in technology structure of the sectors in the model
parameter temp(cnt,*),
tempH(cnt)
selected(cnt,sec),
pathway_adj_total(cnt, *, *)  Original values plus the total adjustments ,
pathway_unadj_total(cnt, *, *)  Original Input coeficient ,
Pathway_total(cnt, *)  New total input  per sector and consumers after adjustments,
Pathway_adj_cap(cnt, sec) Original capital minus the pathway adjustment total if the latter is negative,
Pathway_adj_TRADE(cnt, com, cntt),
Pathway_adj_TRADEMARGIN(cnt, com, cntt),
Pathway_adj_ROW(cnt,com);
Parameter Pathway_adjusted(step, cnt,  *, com);
* it is important that temp is initialized to 0 for defining the parameter pathways_cap_adj
temp(cnt,sec)=0;
* to select sectors with technology change in the capital
selected(cnt,sec)=sum(step,KZshare(cnt,sec,step));
parameter bin to account for unemployment (0 in benchmark and 1 in counterfactual);
bin=0;

parameter rankM(cnt,hh);
rankM(cnt,hh)=ord(hh);

*l.        Inclusion of the CGE model
* ============                             ===================
* ============ DEFINITION OF THE CGE MODEL ===================
* ============                             ===================

$include "REMES_MPSGE_alt.gms"

* ============                             ===================
* ============ DEFINITION OF THE CGE MODEL ===================
* ============                             ===================

* ============ Provide initial levels of the model variables ===================


option mcp = path ;
Arrow_Debreu.iterlim = IterLim;
Arrow_Debreu.tolProj = 0.00001;
Arrow_Debreu.tolInfeas = 0.01;
Arrow_Debreu.workfactor = 3;
Arrow_Debreu.reslim = 6000;

* POPULATE THE SECTORS AND COMMODITIES THAT WILL BE MODIFIED
*populate the sets for the adjustment operations

set adjust_sec(*), adjust_com(*);


adjust_sec(sec)=YES;
*A: Add households
adjust_sec(hh)=YES;
adjust_sec("Govt")=YES;

adjust_com(com)=YES;
adjust_com("pH2")=YES;


parameter check(cnt, *, *);

Pathway_adj(cnt, sec, com)=0;
*Add households
Pathway_adj(cnt, hh, com)=0;
Pathway_adj(cnt, "GOVT", com)=0;
Pathway_adj_cap(cnt, sec)=KZ(cnt,sec);
*Add households
Pathway_adj_TRADE(cnt, com, cntt) = 0;
Pathway_adj_TRADEMARGIN(cnt, com, cntt) = 0;
Pathway_adj_ROW(cnt,com) = 0;
Pathway_total(cnt, hh)=0;
Pathway_total(cnt, "GOVT")=0;
Pathway_total(cnt, sec)=0;
* GDP growth is set to unit for the benchmark solution
gdp_p(cnt)=1;
growth_p(cnt)=1;
growth_lf(cnt)=1;
display ty;

parameter time;
time=0;

parameter PRC(cnt);
PRC(cnt)=1;
parameter open(cnt,sec);
open(cnt,sec)=1;
*==================== Benckmark Solution ======================
*execute_unload "junk" XDDZ,TRADEZ,EROWZ,MROWZ;

*Jan26 Kap(cnt)
parameter Capital(cnt,step),Investments(cnt,step);

* ================= Other scenario optons =========================
parameter tfp(cnt) tariff per country;
tfp(cnt)=0;

* catch up from the rest of the world.
parameter ROWgt;
ROWgt=1;

* Exports of coal factor
parameter ROWc;
ROWc=0;

* ================================================================

scalar hb /0/;


$include "reset_initial_values_basic.gms"
$INCLUDE ARROW_DEBREU.GEN
Arrow_Debreu.iterlim = 0;
ARROW_DEBREU.Savepoint = 1;
*ARROW_DEBREU.WORKSPACE = 24000;
ARROW_DEBREU.optfile = 1;
Solve ARROW_DEBREU using mcp;


$include "balances.gms"

*$exit
*Jan26 Remove
*parameter depr(cnt) depreciation;
* 20a) Capital accumulation
* the depreciation must depend on the number of periods
* first year is 2007 last is 2050 and there are 10 periods so every period is 5 years long
* II(cnt) in the benckmark year are the investments that are transfered to the next year to increase the capital
* Then we assume that for one period (5 years) the additional investment is II*5
* If investments are too small the capital might become zero (sector shuts down).
* we define the depreciation such that Kap(1-depr)+I=Kap(1+gdp)
* depr(cnt)=5*II.l(cnt)/Kap(cnt)-(gdp(cnt,"1")-1);
* Kap(cnt)=Kap(cnt)*(1-depr(cnt))+5*II.l(cnt);


parameter emissions(cnt,com,sec);
emissions(cnt,com,sec)=(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*CO2r(cnt,com,sec);
display emissions;

* define the visegrad countries for non cooperative case studies.

set visegrad(cnt)/
CZ
HU
PL
SK
/;

parameter inVis(cnt) visegrad countries flag;
inVis(cnt)=0;
inVis(visegrad)=1;

*m.         Base year output definition
* OUT ============= Define Parameters for Output =============================
parameter production(cnt,*,*,step), finaldemand(cnt,com,step),import(cnt,com,step),exports(cnt,*,step),
IOanalysis(*,*,*,*,step), inputsec3(cnt,*,*,step), outputsec3(cnt,*,*,step), inputsec4(cnt,*,*,step),
TradeAnalysis(*,*,com,step)
outputsec4(cnt,*,*,step) total value entering a sector and total value exiting a sector;

*A: Add households
finaldemand(cnt,com,"1")=sum(hh,CZ(cnt,com,hh))+IZ(cnt,com)+CGZ(cnt,com);
production(cnt,sec,com,"1")=XDDZ(cnt,sec,com);
IOanalysis('input',cnt,sec,com,"1")=IOZ(cnt,com,sec)*(1+taxcz(cnt,com));
IOanalysis('input', cnt, sec, ltype, "1") = sum((ed, sex)$(lmap(ed, sex, ltype)), LWES(cnt, sec, ed, sex));
IOanalysis('input',cnt,sec,"Capital","1")=Pathway_adj_cap(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"))+sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR"));
IOanalysis('input',cnt,sec,"tax_sec","1")=sum(com,XDDZ(cnt,sec,com)*taxpz(cnt,sec));
IOanalysis('input',cnt,"demand",com,"1")=finaldemand(cnt,com,"1")*(1+taxcz(cnt,com));
IOanalysis('input',cnt,"stocks",com,"1")=SVZ(cnt,com);
IOanalysis('input',cnt,"tmarg",com,"1")=TMXZ(cnt,com);
IOanalysis('input',cnt,"exportsROW",com,"1")=EROWZ(cnt,com)+sum(cntt$(ord(cntt) ne ord(cnt)),TRADEZ(com,cnt,cntt));

IOanalysis('output',cnt,sec,com,"1")=XDDZ(cnt,sec,com);
IOanalysis('output',cnt,"tax_com",com,"1")=(sum(sec,IOZ(cnt,com,sec))+finaldemand(cnt,com,"1"))*taxcz(cnt,com);
IOanalysis('output',cnt,"tmarg",com,"1")=sum(cntt,trademargins(com, cntt, cnt));
IOanalysis('output',cnt,"importsROW",com,"1")=MROWZ(cnt,com)+sum(cntt$(ord(cntt) ne ord(cnt)),TRADEZ(com,cntt,cnt));


parameter UNEMPLOYMENT(cnt,ed,sex,*),usaved(cnt,ed,sex);
UNEMPLOYMENT(cnt,ed,sex,"1")=ROUND(urate(cnt)*100);
usaved(cnt,ed,sex)=UNEMPLOYMENT(cnt,ed,sex,"1");

parameter EneDem(cnt,*,*),EneDemBase(cnt,*),EneDemProj(cnt,*),EneDemTot(cnt,*),Alloc(cnt,*,*),EneDemTWh(cnt,*,*);
EneDem(cnt,sec,"1")=IOZ(cnt, "pELE", sec);
EneDem(cnt,"iH2S","1")=0;
EneDem(cnt,"iH2C","1")=0;
EneDem(cnt,"iH2E","1")=0;
EneDem(cnt,"CONS","1")=sum(hh,CZ(cnt,"pELE",hh))
                 +CGLZ(cnt,"pELE")
                 +IZ(cnt,"pELE");


parameter PriceCO2(step),ElPrice(cnt,step),CO2Pr(cnt,step);
PriceCO2("1")=1;
CO2Pr(cnt,"1")=1;
ElPrice(cnt,"1")=1;


parameter FFdem(cnt,com,step),EEdem(cnt,*,step);
*A: Add households
FFdem(cnt,energy,"1")=sum(sec,IOZ(cnt,energy,sec))+sum(hh,CZ(cnt,energy,hh))+CGLZ(cnt,energy)+IZ(cnt,energy);
EEdem(cnt,sec,"1")=sum((fosfuels),IOZ(cnt,fosfuels,sec)*CO2r(cnt,fosfuels,sec)*cint(cnt,sec));
EEdem(cnt,hh,"1")=sum(fosfuels,CZ(cnt,fosfuels,hh)*CO2r(cnt,fosfuels,hh)*cint(cnt,"iSER"));
EEdem(cnt,"GOVT","1")=sum(fosfuels,CGLZ(cnt,fosfuels)*CO2r(cnt,fosfuels,"GOVT")*cint(cnt,"iSER"));
EEdem(cnt,"INV","1")=sum(fosfuels,IZ(cnt,fosfuels)*CO2r(cnt,fosfuels,"INV")*cint(cnt,"iSER"));
EEdem(cnt,"tmarg","1")= sum(fosfuels,TMXZ(cnt,fosfuels)*CO2r(cnt,fosfuels,"tmarg")*cint(cnt,"iSER"));
EEdem(cnt,sec,"1")$nonpoll(sec)=0

parameter demand(cnt,*,com,step),cdem(cnt,com,step);
demand(cnt,sec,com,"1")=IOZ(cnt,com,sec);
*A: Add households
demand(cnt,hh,com,"1")=CZ(cnt,com,hh);
demand(cnt,"GOVT",com,"1")=CGZ(cnt,com);
demand(cnt,"INVB",com,"1")=IZ(cnt,com);
demand(cnt,"stocks",com,"1")=max(0,SVZ(cnt,com));
demand(cnt,"Exports",com,"1")=EROWZ(cnt,com);

*A: Add households
cdem(cnt,com,"1")=sum(sec,demand(cnt,sec,com,"1"))+sum(hh,demand(cnt,hh,com,"1"))+demand(cnt,"GOVT",com,"1")+demand(cnt,"INVB",com,"1")+demand(cnt,"Exports",com,"1")+demand(cnt,"stocks",com,"1");

parameter SAMout(cnt,*,*,step),QQQ(cnt,*,*,step),PPP(cnt,*,*,step),Quantity(cnt,*,*,step);
* CPI: New 04/12/2025
parameter CPI(cnt,step) consumption price index;
CPI(cnt,"1")=1;

* Some new KPIs
Parameter
KPI_Inc(cnt,hh,step) Income per household and country,
KPI_EA(cnt,hh,step) affordability of energy per household and country,
KPI_WG_Gender(cnt,step) Wage gap (gender) per country,
KPI_WG_Ed1(cnt,step) Wage gap (education) per country,
KPI_WG_Ed2(cnt,step) Wage gap (education) per country,
KPI_Gini(cnt,step) Gini index on Income per country,
KPI_GiniC(cnt,step) Gini index on Income per country compact formula,
ISh(cnt,hh,step) income share (to compute Gini Index),
PSh(cnt,hh) population share (to compute Gini Index),
CISh(cnt,hh,step) cumulated income share (to compute Gini Index),
CPSh(cnt,hh) cumulated population share (to compute Gini Index);


*NEW RANK
parameter rank(cnt, hh, step);

SAMout(cnt,sec,com,step)=0;
QQQ(cnt,sec,com,step)=0;
PPP(cnt,sec,com,step)=0;
Quantity(cnt,samd,samr,step)=0;

parameter EUIMP(cnt,com,step),EUEXP(cnt,com,step);
parameter MCO2B(cnt,step) monetary value of the CO2 budget;
parameter VA(cnt,sec,step),FuelPrice(cnt,fosfuels,step),GDPout(cnt,step);
parameter LabShr(cnt,sec);

* HERE I CREATE THE SHARING OF WORKERS BETWEEN HYDROGEN AND INDUSTRY.
* HYDROGEN TAKES WORKERS FROM THE VIRTUAL SECTOR CREATING LABOUR FOR INDUSTRY,
* THE "FINAL PRODUCT" IS THE SAME, WHICH MEANS THAT THEY ARE TAKING THE SAME MIX OF WORKERS
* I NEED TO FIND THE SHARES THAT GO TO INDUSTRY AND THE SHARES THAT GO TO THE
* DIFFERENT TECHNOLOGIES OF THE HYDROGEN SECTOR (ELECTROLISYS, STEAM REFORM, AND STEAM REFORM WITH CCS)
LabShr(cnt,sec)=1;
* This is the share of labour demand from hydrogen (the labour groups are shared with industry - H2 takes from the pool of workers that are for industry in the virtual labour sector)


SAMout(cnt,com,sec,"1")=IOZ(cnt,com,sec)*(1+taxcz(cnt,com));
SAMout(cnt,sec,com,"1")$(XDDZ(cnt,sec,com))=XDDZ(cnt,sec,com);
SAMout(cnt,"iH2S","pH2","1")=0;
SAMout(cnt,"iH2C","pH2","1")=0;
SAMout(cnt,"iH2E","pH2","1")=0;
SAMout(cnt,"Capital",sec,"1")=Pathway_adj_cap(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"))+sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR"));
*A: Add ltype and link to sex and ed
SAMout(cnt,ltype,sec,"1")=sum((ed,sex)$(lmap(ed,sex,ltype)),LWES(cnt,sec,ed,sex));
SAMout(cnt,"tax_sec",sec,"1")=sum(com,taxpz(cnt,sec)*XDDZ(cnt,sec,com));
SAMout(cnt,com,hh,"1")=CZ(cnt,com,hh)*(1+taxcz(cnt,com));
SAMout(cnt,com,"GOVT","1")=CGLZ(cnt,com)*(1+taxcz(cnt,com));
SAMout(cnt,com,"INV","1")=IZ(cnt,com)*(1+taxcz(cnt,com));
SAMout(cnt,com,"STOCKS","1")=SVZ(cnt,com);
*A: Unsure what these mean->
SAMout(cnt,hh,"Capital","1")=KENDOW(cnt,hh)+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh)+ALR(cnt,hh);
SAMout(cnt,"GOVT","Capital","1")=-sum(sec,pathway_total(cnt, sec));
*A: Add households and labortype
SAMout(cnt,hh,ltype,"1")=sum((ed,sex)$lmap(ed, sex, ltype),LENDOW(cnt,hh, ed,sex));
*HERE WE ARE
SAMout(cnt,"INV",hh,"1")=SHZ(cnt,hh);
SAMout(cnt,hh,"trade","1")=max(0, TRHROWZ(cnt,hh));
SAMout(cnt,"trade",hh,"1")=max(0,-TRHROWZ(cnt,hh));

SAMout(cnt,"GOVT","tax_sec","1")=sum(sec,taxp(cnt,sec)*sum(com,XDDZ(cnt,sec,com)));
*A: Add sum ovevr households
SAMout(cnt,"GOVT","tax_com","1")=sum(com,sum(sec,IOZ(cnt,com,sec)*taxcz(cnt,com))+(sum(hh,CZ(cnt,com,hh))+CGLZ(cnt,com)+IZ(cnt,com))*taxcz(cnt,com));
SAMout(cnt,"tax_sec",sec,"1")=taxpz(cnt,sec)*sum(com,XDDZ(cnt,sec,com));
SAMout(cnt,"tax_com",com,"1")=sum(sec,IOZ(cnt,com,sec))*taxcz(cnt,com)+(sum(hh,CZ(cnt,com,hh))+CGLZ(cnt,com)+IZ(cnt,com))*taxcz(cnt,com);
SAMout(cnt,"STOCKS","INV","1")=sum(com,SVZ(cnt,com));
SAMout(cnt,com,"tmarg","1")= TMXZ(cnt,com);
SAMout(cnt,"tmarg",com,"1")= TMCZ(cnt,com);
SAMout(cnt,com,"trade","1")= EROWZ(cnt,com)+sum(cntt,TRADEZ(com,cnt,cntt));
SAMout(cnt,"trade",com,"1")=MROWZ(cnt,com)+sum(cntt,TRADEZ(com,cntt,cnt));
SAMout(cnt,"GOVT","trade","1")=TRROWZ(cnt);
SAMout(cnt,"CO2allow",sec,"1")=0;
SAMout(cnt,"CO2allow",hh,"1")=0;
SAMout(cnt,"CO2allow","GOVT","1")=0;
SAMout(cnt,"CO2allow","INV","1") =0;
SAMout(cnt,"GOVT","CO2allow","1")=0;

*P: New KPIs for "fairness analysis" - Period 1
KPI_Inc(cnt,hh,"1")=sum(ltype,SAMout(cnt,hh,ltype,"1"))+SAMout(cnt,hh,"Capital","1");
KPI_EA(cnt,hh,"1")=(SAMout(cnt,"pOIL",hh,"1")+SAMout(cnt,"pBIO",hh,"1")+SAMout(cnt,"pFUL",hh,"1")+SAMout(cnt,"pHDI",hh,"1")+SAMout(cnt,"pH2",hh,"1")+SAMout(cnt,"pELE",hh,"1")+SAMout(cnt,"pGSL", hh,"1")+SAMOUT(cnt,"pDSL", hh,"1")+SAMOUT(cnt,"pNG", hh,"1")+SAMOUT(cnt,"pCOA", hh,"1"))/KPI_Inc(cnt,hh,"1");

KPI_WG_Gender(cnt,"1")=1;
KPI_WG_Ed1(cnt,"1")=1;
KPI_WG_Ed2(cnt,"1")=1;
* Compute the Gini Index: shares
* income share
ISh(cnt,hh,"1")=KPI_Inc(cnt,hh,"1")/sum(housesplit,KPI_Inc(cnt,housesplit,"1"));
* population share in each quintile
PSh(cnt,hh)=0.2;
* Cumulated Income share
CISh(cnt,hh,"1")=sum(housesplit$(ord(housesplit) le ord(hh)),ISh(cnt,housesplit,"1"));
* Cumulated Population share
CPSh(cnt,hh)=ord(hh)*0.2;
* Gini Index (Using the trapezoid formula for the area under the Lorenz curve)
KPI_Gini(cnt,"1")=(1-(sum(hh$(ord(hh) eq 1),CISh(cnt,hh,"1")*CPSh(cnt,hh))+sum(hh$(ord(hh) gt 1),(CPSh(cnt,hh)-CPSh(cnt,hh-1))*(CISh(cnt,hh,"1")+CISh(cnt,hh-1,"1")))))/0.8;

*The right one?

rank(cnt,hh,"1") = sum(housesplit$(KPI_Inc(cnt,housesplit,"1") <= KPI_Inc(cnt,hh, "1")), 1);
rankM(cnt,hh)=rank(cnt,hh,"1");
KPI_GiniC(cnt,"1") = (6 - 2 * sum(hh,(6 - rank(cnt,hh,"1"))* KPI_Inc(cnt,hh,"1")) / sum(housesplit, KPI_Inc(cnt,housesplit,"1"))) / 4;

alias(hh,hh2);

Parameter YHH(cnt,hh,step) "Household income used for Gini calculation", KPI_GiniC2(cnt,step);


KPI_GiniC2(cnt,"1")$sum(hh, KPI_Inc(cnt,hh,"1")) =
    sum((hh,hh2),abs(KPI_Inc(cnt,hh,"1") - KPI_Inc(cnt,hh2,"1")))/(2 *(card(hh) - 1)*sum(hh, KPI_Inc(cnt,hh,"1")));

*A: Sum over labortype
VA(cnt,sec,"1")=SAMout(cnt,"Capital",sec,"1")+sum(ltype,SAMout(cnt,ltype,sec,"1"))+SAMout(cnt,"tax_sec",sec,"1")+SAMout(cnt,"GOVT","CO2allow","1");
GDPout(cnt,"1")=sum(sec,VA(cnt,sec,"1"));

QQQ(cnt,com,sec,"1")$SAM(cnt,com,sec)=0;
QQQ(cnt,sec,com,"1")$SAM(cnt,sec,com)=0;
QQQ(cnt,"Capital",sec,"1")$SAM(cnt,"Capital",sec)=0;
*A: Add labortype
QQQ(cnt,ltype,sec,"1")$SAM(cnt,ltype,sec)=0;
QQQ(cnt,"tax_sec",sec,"1")$SAM(cnt,"tax_sec",sec)=0;
*A: Add houses
QQQ(cnt,com,hh,"1")$SAM(cnt,com,hh)=0;
QQQ(cnt,com,"GOVT","1")$SAM(cnt,com,"GOVT")=0;
QQQ(cnt,com,"INV","1")$SAM(cnt,com,"INV")=0;
QQQ(cnt,com,"STOCKS","1")$SAM(cnt,com,"STOCKS")=0;
QQQ(cnt,hh,"Capital","1")$SAM(cnt,hh,"Capital")=0;
QQQ(cnt,"GOVT","Capital","1")$SAM(cnt,"GOVT","Capital")=0;
*A: Add labortype and houses
QQQ(cnt,hh,ltype,"1")$SAM(cnt,hh,ltype)=0;
QQQ(cnt,"INV",hh,"1")$SAM(cnt,"INV",hh)=0;
QQQ(cnt,hh,"trade","1")$SAM(cnt,hh,"trade")=0;
QQQ(cnt,"trade",hh,"1")$SAM(cnt,"trade",hh)=0;
QQQ(cnt,"GOVT","tax_sec","1")=0;
QQQ(cnt,"GOVT","tax_com","1")=0;
QQQ(cnt,"tax_sec",sec,"1")$SAM(cnt,"tax_sec",sec)=0;
QQQ(cnt,"tax_com",com,"1")$SAM(cnt,"tax_com",com)=0;
QQQ(cnt,"STOCKS","INV","1")=0;
QQQ(cnt,com,"tmarg","1")$SAM(cnt,com,"tmarg")=0;
QQQ(cnt,"tmarg",com,"1")= 0;
QQQ(cnt,com,"trade","1")$SAM(cnt,com,"trade")=0;
QQQ(cnt,"trade",com,"1")$SAM(cnt,"trade",com)=0;
QQQ(cnt,"GOVT","trade","1")$SAM(cnt,"GOVT","trade")=0;
QQQ(cnt,"CO2allow",sec,"1")=0;
QQQ(cnt,"CO2allow",hh,"1")=0;
QQQ(cnt,"CO2allow","GOVT","1")=0;
QQQ(cnt,"CO2allow","INV","1") =0;
QQQ(cnt,"GOVT","CO2allow","1")=0;

Quantity(cnt,samd,samr,"1")=SAM(cnt,samd,samr);
Quantity(cnt,sec,com,"1")=SAM(cnt,sec,com);
Quantity(cnt,com,sec,"1")=SAM(cnt,com,sec);

Quantity(cnt,com,sec,"1")=IOZ(cnt,com,sec);
Quantity(cnt,sec,com,"1")$(XDDZ(cnt,sec,com))=XDDZ(cnt,sec,com);
Quantity(cnt,"iH2S","pH2","1")=0;
Quantity(cnt,"iH2C","pH2","1")=0;
Quantity(cnt,"iH2E","pH2","1")=0;
Quantity(cnt,"Capital",sec,"1")=Pathway_adj_cap(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"))+sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR"));
*A:Add labortype
Quantity(cnt,ltype,sec,"1")=sum((ed, sex)$(lmap(ed, sex, ltype)), LWES(cnt, sec, ed, sex));
*A: Add houess
Quantity(cnt,com,hh,"1")=CZ(cnt,com,hh);
Quantity(cnt,com,"GOVT","1")=CGLZ(cnt,com);
Quantity(cnt,com,"INV","1")=IZ(cnt,com);
Quantity(cnt,com,"STOCKS","1")=SVZ(cnt,com);
Quantity(cnt,hh,"Capital","1")=KENDOW(cnt,hh)+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh)+ALR(cnt,hh);
Quantity(cnt,"GOVT","Capital","1")=-sum(sec,pathway_total(cnt, sec));
Quantity(cnt,hh,ltype,"1")=sum((ed,sex)$lmap(ed, sex, ltype),LENDOW(cnt,hh, ed,sex));
Quantity(cnt,"INV",hh,"1")=SHZ(cnt,hh);
*ERR: Set is under control already
Quantity(cnt,hh,"trade","1")=max(0, TRHROWZ(cnt,hh));
Quantity(cnt,"trade",hh,"1")=max(0,-TRHROWZ(cnt,hh));
Quantity(cnt,"STOCKS","INV","1")=sum(com,SVZ(cnt,com));
Quantity(cnt,com,"tmarg","1")= TMXZ(cnt,com);
Quantity(cnt,"tmarg",com,"1")= TMCZ(cnt,com);
Quantity(cnt,com,"trade","1")= EROWZ(cnt,com)+sum(cntt,TRADEZ(com,cnt,cntt));
Quantity(cnt,"trade",com,"1")=MROWZ(cnt,com)+sum(cntt,TRADEZ(com,cntt,cnt));
Quantity(cnt,"GOVT","trade","1")=TRROWZ(cnt);
Quantity(cnt,"CO2allow",sec,"1")=0;
*A: Add houses
Quantity(cnt,"CO2allow",hh,"1")=0;
Quantity(cnt,"CO2allow","GOVT","1")=0;
Quantity(cnt,"CO2allow","INV","1") =0;
Quantity(cnt,"GOVT","CO2allow","1")=0;




PPP(cnt,com,sec,"1")=(1+taxc(cnt,com))/(1+taxcz(cnt,com));
PPP(cnt,sec,com,"1")$(XDDZ(cnt,sec,com))=1;
PPP(cnt,"Capital",sec,"1")=1;
*A: Add labortype
PPP(cnt,ltype,sec,"1")=1;
*A: Add houses
PPP(cnt,com,hh,"1")=(1+taxc(cnt,com))/(1+taxcz(cnt,com));
PPP(cnt,com,"GOVT","1")=(1+taxc(cnt,com))/(1+taxcz(cnt,com));
PPP(cnt,com,"INV","1")=(1+taxc(cnt,com))/(1+taxcz(cnt,com));
PPP(cnt,com,"STOCKS","1")=1;
*Add houses
PPP(cnt,hh,"Capital","1")=1;
PPP(cnt,"GOVT","Capital","1")=1;
PPP(cnt,hh,ltype,"1")=1;
PPP(cnt,"INV",hh,"1")=1;
PPP(cnt,hh,"trade","1")=1;
PPP(cnt,"trade",hh,"1")=1;
PPP(cnt,"GOVT","tax_sec","1")=1;
PPP(cnt,"GOVT","tax_com","1")=1;
PPP(cnt,"tax_sec",sec,"1")=1;
PPP(cnt,"tax_com",com,"1")=1;
PPP(cnt,"STOCKS","INV","1")=1;
PPP(cnt,com,"tmarg","1")= 1;
PPP(cnt,"tmarg",com,"1")= 1;
PPP(cnt,com,"trade","1")= 1;
PPP(cnt,"trade",com,"1")=1;
PPP(cnt,"GOVT","trade","1")=1;
PPP(cnt,"CO2allow",sec,"1")=1;
PPP(cnt,"CO2allow",hh,"1")=1;
PPP(cnt,"CO2allow","GOVT","1")=1;
PPP(cnt,"CO2allow","INV","1") =1;
PPP(cnt,"GOVT","CO2allow","1")=1;


EUIMP(cnt,com,"1")=sum(cntt,TRADEZ(com,cntt,cnt));
EUEXP(cnt,com,"1")=sum(cntt,TRADEZ(com,cnt,cntt));
*PRC0 is the baseline productivity, while PRC1 is the counterfactual one for tests.
* I tried to include productivity in the Value Added nest but it does not work,
* therefore I use it here to define the growth of the economy considering a proportion
* between the baseline growth and the counterfactual one

display grow;
*$exit
*Jan26 Change this
*Capital(cnt,"1")=KSZ(cnt)/ror(cnt);
Investments(cnt,"1")=ITZ(cnt)*5;

*n.        Recoursive step definition
* In the GTAP database the depreciation rate d is assumed to be constant at 4 % for any region
display Kap,KSZ,depr;

parameter gdptest(cnt,step);
gdptest(cnt,"1")=1;
gdptest(cnt,"2")=1;

parameter NRS(cnt,sec,com,step) new remes share;
NRS(cnt,sec,com,step)=0;

parameter outLab(cnt,sec,step,ltype), outAct(cnt,sec,step),outPrice(cnt,com,step),outWages(cnt,sec,step),outKap(cnt,step);
parameter PriceIndex(cnt,step);

*A: Add ltype
outLab(cnt,sec,'1',ltype)=sum((ed, sex)$(lmap(ed, sex, ltype)), LWES(cnt, sec, ed, sex));
outAct(cnt,sec,'1')=XDZ(cnt,sec);
outPrice(cnt,com,'1')=1;
outWages(cnt,sec,'1')=1;
outKap(cnt,'1')=1;

parameter r_taxc(cnt,com);

*Jan26 Define kapVirt
parameter KapVirt(cnt);
parameter KapV_test(cnt,step);


* Debug tolerance wall
parameter dbg(cnt,*,step);

loop(step$(ord(step) gt 1 and ord(step) le STEPS),
t=t+1;

step5$(ord(step) gt 4) = 1;

Gmax(cnt) = 0;
*Gmax(cnt) = KPI_GiniC(cnt,"1") + ( (ord(step) - 1) / (STEPS - 1) ) * ( GmaxReference(cnt,"10") - KPI_GiniC(cnt,"1") );
Gmax(cnt) = GmaxREFERENCE(cnt,step)*1.001;
*s
sigEdu(cnt)$(changeedu eq 1 and ord(step) gt 4) = 0.1 + (ord(step)-4)*(0.5-0.1)/(10-4);
*sigEdu(cnt)$(changeedu eq 1 and ord(step) gt 4) = 0.5;
ES0$(ord(step) le 4)=0;
ES0$(ord(step) gt 4)=ES;

ROWgt$(ord(step) le 4)=1;
ROWgt$(ord(step) gt 4)=ROWgt*ROWd;
taxc(cnt,"pELE")$(GSus eq 1 and ord(step) eq 5)=(1+taxc(cnt,"pELE"))*(1-0.05)-1;
taxc(cnt,fosfuels)$(GSus eq 1 and ord(step) eq 5)=(1+taxc(cnt,fosfuels))*(1+0.05)-1;

*increased primary good taxes with three percent
taxc(cnt,com)$(extracommoditytax eq 1 and (not sameas(com, 'pAGR') or not sameas(com, 'pSER')) and ord(step) gt 5) = taxc(cnt,com) * (1+extrataxrate);

r_taxc(cnt,com)=taxc(cnt,com);

PRC(cnt)$(PG eq 1)=(1+PRC1(cnt)*0.1)**ord(step);


*PRC(cnt)$(PG eq 1 and P_S eq 3)=(1+PRC2(cnt)*0.1)**ord(step);
*PRC(cnt)$(PG eq 1)=1+(PRC0(cnt))/(card(step)-1)*(ord(step)-1);
*Reset variables to initial levels
$include "reset_initial_values_basic.gms"
open(cnt,sec)=opent(cnt,sec,step);
*put a tax on electricity exports for visegrad countries
tfp(cnt)$(sameas(cnt,"HU"))=tft(step)*tariff;
tfp(cnt)$(sameas(cnt,"CZ"))=tft(step)*tariff;
tfp(cnt)$(sameas(cnt,"PL"))=tft(step)*tariff;
tfp(cnt)$(sameas(cnt,"SK"))=tft(step)*tariff;
*clear****************************************

* if we want no GDP growth
gdp_p(cnt)$(GDPt eq 0) = gdp_p(cnt)*(1+grow(cnt));
gdp_p(cnt)$(GDPt eq 1)=1;
growth_lf(cnt)$(pop eq 1)=lfgrow(cnt,step);
growth_lf(cnt)$(pop eq 0)=1;
growth_p(cnt)$(pop eq 1)=growth_p(cnt)*(1+growth(cnt))**5;
growth_p(cnt)$(pop eq 0)=1;


cint1(cnt,'iAGR')$(CF eq 1 and agriemi eq 1 and ord(step) gt 4)=cint1(cnt,'iAGR')*0.9;
*cint(cnt)$(CF eq 1 and ord(step) le 4)=1;
cint(cnt,sec)$(CF eq 1 and ord(step) le 4)=cint(cnt,sec)*cint0(cnt,sec)**5;
cint(cnt,sec)$(CF eq 1 and ord(step) gt 4)=cint(cnt,sec)*cint1(cnt,sec)**5;
*cint(cnt,'iAGR')$(CF eq 1 and agriemi eq 1 and ord(step) gt 3)=cint(cnt,'iAGR')*0.97;
eint(cnt)$(EF eq 1 and ExEff eq 0)=1+(eint0(cnt)-1)/(card(step)-1)*(ord(step)-1);
eint(cnt)$(EF eq 1 and ExEff eq 1)=1+(eint0(cnt)$(ord(step) le 4)+eint1(cnt)$(ord(step) gt 4)-1)/(card(step)-1)*(ord(step)-1);
* there is no extra energy efficiency for final consumption.
eintFC(cnt)$(EF eq 1)=1+(eint0(cnt)-1)/(card(step)-1)*(ord(step)-1);
* for Great Mindshift we assume that households will improve energy consumption for typically electricity (north) and natural gas (south)
eintHH(cnt)$(EF eq 1 and EFFH eq 0)=1+(eint0(cnt)-1)/(card(step)-1)*(ord(step)-1);
eintHH(cnt)$(EF eq 1 and EFFH eq 1)=1+(eint0(cnt)$(ord(step) le 4)+eint1(cnt)$(ord(step) gt 4)-1)/(card(step)-1)*(ord(step)-1);

display cint,eint,r_taxc;

*o.        Application of counterfactuals



* ElasM Trade changes in elasticities of Armington goods

*elasM(fosfuels)$(tradeshift eq 1)= elasM(fosfuels)*tradeshiftval;
*elasM(materials)$(tradeshift eq 1)= elasM(materials)*tradeshiftval;


*Jan26 Apply capital counterfactuals

KapVirt(cnt) = Kap(cnt);
Kap(cnt)$(ord(step) gt 1) = Kap(cnt)*(1-depr(cnt))+II.l(cnt)*5;

*Kap(cnt)$(ord(step) gt 1) = Kap(cnt)*(1+grow(cnt));


DisplayKap(step, cnt) = Kap(cnt);

*Jan26 Update KENDOW
KENDOW(cnt,hh)$(ord(step) gt 1 and GDPt eq 0)=(KENDOW(cnt,hh)/sum(housesplit,KENDOW(cnt,housesplit)))*Kap(cnt)*ror(cnt);
KENDOW(cnt,hh)$(ord(step) gt 1 and GDPt eq 1)= KENDOW(cnt,hh);
display KENDOW;
*Jan26 Update LENDOW with population growth instead
*Feb26 THIS DOES NOT WORK BECAUSE IT GETS LARGER EVERY TIME, IT SHOULD BE MULTIPLIED BY BASELINE
LENDOW(cnt,hh,ed,sex)$(ord(step) gt 1) = LENDOW0(cnt,hh,ed,sex)*growth_lf(cnt);

time=time+1;

display P_S;

         PU.FX("DE","Q1")=1;


        loop((cnt, com),
                T_adj_TRADE(cnt,com,cntt)$(tradeshift eq 1 and not sameas(cnt, cntt) and ord(step) gt 4) = TRADEZ(com, cntt, cnt) * (1 + (0.7-1)/(card(step)-1)*(ord(step)-1)) - TRADEZ(com, cntt, cnt);
                T_adj_TRADEMARGIN(cnt,com, cntt)$(tradeshift eq 1 and not sameas(cnt, cntt) and ord(step) gt 4) = trademargins(com, cntt, cnt) *(1 + (0.7-1)/(card(step)-1)*(ord(step)-1)) - trademargins(com, cntt, cnt);
*                T_adj_ROW(cnt,com)$(tradeshift eq 1 and ord(step) gt 4) = MROWZ(cnt,com) * (1 + (0.2-1)/(card(step)-1)*(ord(step)-1)) - MROWZ(cnt, com);
                T_adj_TRADE(cnt,com,cnt)$(tradeshift eq 1 and ord(step) gt 4) = - sum (cntt,T_adj_TRADE(cnt,com, cntt)$(not sameas(cnt, cntt)));
*               - T_adj_ROW(cnt,com);
                T_adj_TRADEMARGIN(cnt,com,cnt)$(tradeshift eq 1 and ord(step) gt 4) = - sum(cntt, T_adj_TRADEMARGIN(cnt,com, cntt)$(not sameas(cnt, cntt)));
        );


         loop((cnt, sec),
                 temp(cnt,sec)$(ES eq 1) = sum( com$(sum(pass,newshare(cnt,sec,com,pass))), IOZ(cnt,com,sec)  )+KZ(cnt,sec)$(selected(cnt,sec));
                 T_adj(cnt, sec, com)$(ES eq 1 and sum(pass,newshare(cnt,sec,com,pass))) = newshare( cnt, sec, com, step)*temp(cnt,sec) - IOZ(cnt,com,sec);
                 T_adj(cnt, sec, "pH2")$(ES eq 1) = newshare( cnt, sec, "pH2", step)*temp(cnt,sec);
                 );




         loop((cnt, hh),
                 tempH(cnt)$(ES eq 1) = sum( com$(sum(pass,newshare(cnt,hh,com,pass))), CZ(cnt,com,hh) );
                 T_adj(cnt, hh, com)$(ES eq 1 and sum(pass,newshare(cnt,hh,com,pass))) = newshare( cnt, hh, com, step)*tempH(cnt) - CZ(cnt,com,hh);
                 );

*Circularity shifts for households

         loop((cnt, hh),
                T_adj_CEH(cnt, hh, "pALU")$(CZ(cnt,"pALU",hh) and CEH eq 1 and ord(step) gt 4) = CZ(cnt,"pALU",hh)*(1 + (0.6-1)/(card(step)-1)*(ord(step)-1)) - CZ(cnt,"pALU",hh);
                T_adj_CEH(cnt, hh, "pCON")$(CZ(cnt,"pCON",hh) and CEH eq 1 and ord(step) gt 4) = CZ(cnt,"pCON",hh)*(1 + (0.6-1)/(card(step)-1)*(ord(step)-1)) - CZ(cnt,"pCON",hh);
                T_adj_CEH(cnt, hh, "pIND")$(CZ(cnt,"pIND",hh) and CEH eq 1 and ord(step) gt 4) = CZ(cnt,"pIND",hh)*(1 + (0.6-1)/(card(step)-1)*(ord(step)-1)) - CZ(cnt,"pIND",hh);
                T_adj_CEH(cnt, hh, "pSER")$((CZ(cnt,"pIND",hh) or CZ(cnt,"pALU",hh) or CZ(cnt,"pCON",hh)) and CEH eq 1 and ord(step) gt 4) = (CZ(cnt,"pIND",hh)+CZ(cnt,"pALU",hh)+CZ(cnt,"pCON",hh))*(-(0.6-1)/(card(step)-1)*(ord(step)-1));
        );
        


*Transport shift for households
        loop((cnt, hh),

                T_adj_HH(cnt, hh, "pDSL")$(CZ(cnt,"pDSL",hh) and transportshift eq 1 and ord(step) gt 4)= CZ(cnt,"pDSL",hh)*(1+(0.80-1)/(card(step)-1)*(ord(step)-1))-CZ(cnt,"pDSL",hh);
                T_adj_HH(cnt, hh, "pGSL")$(CZ(cnt,"pGSL",hh) and transportshift eq 1 and ord(step) gt 4)= CZ(cnt,"pGSL",hh)*(1+(0.80-1)/(card(step)-1)*(ord(step)-1))-CZ(cnt,"pGSL",hh);
                T_adj_HH(cnt, hh, "pTRA")$((CZ(cnt,"pDSL",hh) or CZ(cnt,"pGSL",hh)) and transportshift eq 1 and ord(step) gt 4)= (CZ(cnt,"pDSL",hh)+CZ(cnt,"pGSL",hh))*(-(0.80-1)/(card(step)-1)*(ord(step)-1));
                 );

* Total variation in households consumption from different sources
T_adj_TOT(cnt, hh, com) = T_adj(cnt, hh, com) + T_adj_CEH(cnt, hh, com) + T_adj_HH(cnt,hh,com);

display CZ, T_adj

* This holds for all sectors except for iELC, whose techchange is managed by newshare and natural resource sectors, which keep buying their resource.
         loop((cnt,sec),
* reassign Natual Gas into H2 to simulate a change in technology (50%/50%).

* TESTone
*                 T_adj(cnt, sec, "pNG")$(P_S gt 1 and IOZ(cnt,"pNG",sec) and not sameas(sec,"iELC") and indsecs(sec) and ord(step) gt 3)= IOZ(cnt,"pNG",sec)*(1+(0.5-1)/(card(pass)-1)*(step.val-1))-IOZ(cnt,"pNG",sec);
*                 T_adj(cnt, sec, "pH2")$(P_S gt 1 and IOZ(cnt,"pNG",sec) and not sameas(sec,"iELC") and indsecs(sec) and ord(step) gt 3)= IOZ(cnt,"pNG",sec)*(-(0.5-1)/(card(pass)-1)*(step.val-1));
* reassign industry and aluminium into services to simulate an increase in Circular Economy adoption
* WARNING!!! this is only done for sectors. Not for households.
                 T_adj(cnt, sec, "pIND")$(IOZ(cnt,"pIND",sec) and CE eq 1 and ord(step) gt 4)= IOZ(cnt,"pIND",sec)*(1+(Circular(cnt)-1)/(card(step)-1)*(ord(step)-1))-IOZ(cnt,"pIND",sec);
                 T_adj(cnt, sec, "pALU")$(IOZ(cnt,"pALU",sec) and CE eq 1 and ord(step) gt 4)= IOZ(cnt,"pALU",sec)*(1+(Circular(cnt)-1)/(card(step)-1)*(ord(step)-1))-IOZ(cnt,"pALU",sec);
* once finished send output to Hettie.
                 T_adj(cnt, sec, "pSER")$((IOZ(cnt,"pIND",sec) or IOZ(cnt,"pALU",sec)) and CE eq 1 and ord(step) gt 4)= (IOZ(cnt,"pIND",sec)+IOZ(cnt,"pALU",sec))*(-(Circular(cnt)-1)/(card(step)-1)*(ord(step)-1));
                 );

Gov_total(cnt) = sum(com$(not sameas(com, "pCHE")), CGLZ(cnt, com));
        loop((cnt),
                T_adj(cnt, "GOVT", com)$(Gov_total(cnt) and not sameas(com,"pCHE") and healthedushift eq 1) = - CGLZ(cnt, com) * 0.02 * max(0, ord(step) - 1);
                T_adj(cnt, "GOVT", "pCHE")$(Gov_total(cnt)) = - sum(com$(not sameas(com,"pCHE") and healthedushift eq 1), T_adj(cnt,"GOVT",com));
                );

display T_adj;



*Feb26

GG(cnt,sec)$(ord(step) gt 1 and GDPt eq 0)=GG(cnt,sec)*(1+TotFacProd(cnt)*SFac(sec));

display GG;


* THESE PARAMETERS GO RIGHT INTO THE MODEL

*Caculate the unadjusted total of sectors and consumer's inputs
pathway_unadj_total(cnt, sec, com)       = IOZ(cnt, com, sec);
*A: Add houses
pathway_unadj_total(cnt, hh, com)    = CZ(cnt, com,hh);
pathway_unadj_total(cnt, "Govt", com)    = CGLZ(cnt, com);


*A: Add housetype
*calculate the pathway adjustment
Pathway_adj(cnt, adjust_sec, com)        =  T_adj(cnt, adjust_sec, com);
Pathway_adj(cnt, adjust_sec, "pH2")      =  T_adj(cnt, adjust_sec, "pH2");
Pathway_adj(cnt,  hh, com)           =  T_adj_TOT(cnt,  hh, com);
Pathway_adj(cnt, "Govt", com) = T_adj(cnt, 'Govt',com);

*Calculate the adjustment total
pathway_adj_total(cnt, sec, com) = IOZ(cnt, com, sec) + Pathway_adj(cnt, sec, com);
*A: Add houses
pathway_adj_total(cnt, hh, com) = CZ(cnt, com,hh) + Pathway_adj(cnt, hh, com);
pathway_adj_total(cnt, "Govt", com) = CGLZ(cnt, com) + Pathway_adj(cnt, "Govt", com);

Pathway_adj_TRADE(cnt, com, cntt) = T_adj_TRADE(cnt, com, cntt);
Pathway_adj_TRADEMARGIN(cnt, com, cntt) = T_adj_TRADEMARGIN(cnt, com, cntt);
Pathway_adj_ROW(cnt,com) = T_adj_ROW(cnt,com);


*calculate the new total coefficient
loop((cnt, adjust_sec), Pathway_total(cnt, adjust_sec) = sum(adjust_com,  pathway_adj_total(cnt, adjust_sec, adjust_com) - pathway_unadj_total(cnt, adjust_sec, adjust_com)));

* THE TOTAL INCREASE IN OTHER MATERIALS DECREASES THE USAGE OF CAPITAL
* calculate the capital increase per sector

* only if there is a change in shares (temp is non zero)
Pathway_adj_cap(cnt, sec) = KZ(cnt,sec);
Pathway_adj_cap(cnt, sec)$(ES eq 1 and selected(cnt,sec))=temp(cnt,sec)*KZshare(cnt,sec,step)$(temp(cnt,sec));
*KZ(cnt,sec) - pathway_total(cnt, sec)$(pathway_total(cnt, sec)<0);

* reassign the total capital of electricity sector depending on the amount of CCS
Pathway_adj_cap(cnt, 'iELC')=Pathway_adj_cap(cnt, 'iELC')*(fosE(cnt,step)+CCSE(cnt,step)*1.08+renE(cnt,step));
* in case of CCS redefine the emission factors depending on the percentage of CCS with respect to fossils
CO2r(cnt,com,'iELC')=(1-SelCCS(cnt,step))*CO2r(cnt,com,'iELC')+SelCCS(cnt,step)*0.2*CO2r(cnt,com,'iELC');
* CAREFUL! This is redefining the definition of CO2 budget!!!!



display pathway_unadj_total, pathway_adj_total, pathway_total, pathway_adj_cap;


loop((cnt, adjust_sec, com), Pathway_adjusted(step, cnt,  sec, com) = Pathway_adj(cnt, sec, com););

*A: Find out this
*check(cnt, com, "CZ")$(FID(com)>0 and FID(com)<3) =  CZ(cnt, com);
*check(cnt, com, "T_adj")$(FID(com)>0 and FID(com)<3) = T_adj(cnt, "Hous", com);
*check(cnt, "Hous", "CZ - T_adj") =  sum( com$(FID(com)>0 and FID(com)<3),CZ(cnt, com)) - (sum( com$(FID(com)>0 and FID(com)<3),T_adj(cnt, "hous",  com)) + T_adj(cnt, "Hous", "pH2"));

*display check;

NRS(cnt,sec,com,step)$(FID(com)>0 and FID(com)<3)=IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com);



*=====================Re-Solve============
*option Savepoint = 1;

*PCO2.L(cnt)=0;
CO2P(cnt,com,sec)$(FF(com) eq 1 )     = (IOZ(cnt,com,sec))*CO2rs(cnt,com,sec);
CO2H(cnt,com,hh)$(FF(com) eq 1 )         = (CZ(cnt,com,hh))*CO2r(cnt,com,hh);
CO2G(cnt,com)$(FF(com) eq 1 )         = (CGLZ(cnt,com))*CO2r(cnt,com,"GOVT");
CO2I(cnt,com)$(FF(com) eq 1 )         = IZ(cnt,com)*CO2r(cnt,com,"INV");




* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
* Here we define the CO2 budget
CO2B(cnt) = (1+(finCO2(cnt)-1)/9*(step.val-1))*(sum((com,sec)$(FF(com) eq 1),(IOZ(cnt,com,sec))*CO2rs(cnt,com,sec))
*A: Add sum over houses
         +sum(com$(FF(com) eq 1),sum(hh,(CZ(cnt,com,hh))*CO2r(cnt,com,hh))
         +IZ(cnt,com)*CO2r(cnt,com,"INV")
         +(CGLZ(cnt,com))*CO2r(cnt,com,"GOVT")
         +TMXZ(cnt,com)*CO2r(cnt,com,"tmarg")));

* this needs to be the same for all the countries until 2020 under ANY scenario
* 4 is the highest Carbonbudget
* 60% carbon budget target in the first 4 years for 2050.
CO2B(cnt)$(ord(step) le 4) = (1+(0.6-1)/9*(step.val-1))*(sum((com,sec)$(FF(com) eq 1),(IOZ(cnt,com,sec))*CO2rs(cnt,com,sec))
*A: Add sum over houses
        +sum(com$(FF(com) eq 1),sum(hh,(CZ(cnt,com,hh))*CO2r(cnt,com,hh))
         +IZ(cnt,com)*CO2r(cnt,com,"INV")
         +(CGLZ(cnt,com))*CO2r(cnt,com,"GOVT")
         +TMXZ(cnt,com)*CO2r(cnt,com,"tmarg")));



* Visegrad stop cooperating after 2020 in case of exit from the deal.
*CO2B(visegrad)$(coop=0 and ord(step) gt 4)=0;
CO2B(cnt)$(GHGred eq 0)=0;
* ==============================================================================
*effects of unemployment
bin=1;

*CHECKMARK

*p.        Solution of the n-th iteration
execute_loadpoint "ARROW_DEBREU_p.gdx";
Arrow_Debreu.iterlim = 99999;
ARROW_DEBREU.Savepoint = 1;
$INCLUDE ARROW_DEBREU.GEN
*ARROW_DEBREU.WORKSPACE = 24000;
ARROW_DEBREU.optfile = 1;
Solve ARROW_DEBREU using mcp;


*q.        Output definition
*A: Add housedemand to HOUS_DEM (sum)
finaldemand(cnt,com,step)$(ord(step) gt 1)=sum(hh,HOUS_DEM.l(cnt,com,hh))+GOVT_DEM.l(cnt,com)+INVB_DEM.l(cnt,com);
production(cnt,sec,com,step)$(ord(step) gt 1)=R_PD_XD.l(cnt, sec, com);

UNEMPLOYMENT(cnt,ed,sex,step)=ROUND(UR.L(cnt,ed,sex)*10000)/100;
usaved(cnt,ed,sex)=UNEMPLOYMENT(cnt,ed,sex,step);

EneDem(cnt,sec,step)$(IOZ(cnt, "pELE", sec))=(R_P_XD.L(cnt, sec, "pELE"));
EneDem(cnt,"iH2S",step)$(InputCom("iH2S","pELE"))=(R_P_XD.L(cnt, "iH2S", "pELE"));
EneDem(cnt,"iH2C",step)$(InputCom("iH2C","pELE"))=(R_P_XD.L(cnt, "iH2C", "pELE"));
EneDem(cnt,"iH2E",step)$(InputCom("iH2E","pELE"))=(R_P_XD.L(cnt, "iH2E", "pELE"));
*A: Sum over hh for households demand
EneDem(cnt,"CONS",step)$(sum(hh,CZ(cnt,"pELE",hh))
                 +CGLZ(cnt,"pELE")
                 +IZ(cnt,"pELE"))=(sum(hh,HOUS_DEM.L(cnt,"pELE",hh))
                 +GOVT_DEM.L(cnt,"pELE")
                 +INVB_DEM.L(cnt,"pELE"));

EneDemTot(cnt,step)=sum(sec,EneDem(cnt,sec,step))+EneDem(cnt,"CONS",step);

* This is multiplied by the total energy demand in a country in 2010 and give the relative consumption in the other years
* for all sectors and final consumption
EneDemTWh(cnt,sec,step)=EneDem(cnt,sec,step)/EneDemTot(cnt,"2");
EneDemTWh(cnt,"CONS",step)=EneDem(cnt,"CONS",step)/EneDemTot(cnt,"2");

* Consumption Price Index
CPI(cnt,step)=sum(hh,PU.l(cnt,hh)*U.l(cnt,hh))/sum(hh,U.l(cnt,hh));

PriceCO2(step)$(sum(cnt,CO2B(cnt)))=sum(cnt,PCO2.l(cnt)*CO2B(cnt))/sum(cnt,CO2B(cnt));
CO2Pr(cnt,step)$(CO2B(cnt))=PCO2.l(cnt);
ElPrice(cnt,step)=P.l(cnt,"pELE")/CPI(cnt,step);

*A: Sum over household demand
FFdem(cnt,energy,step)=sum(sec,R_P_XD.l(cnt, sec, energy))+sum(hh,HOUS_DEM.l(cnt,energy,hh))+GOVT_DEM.l(cnt,energy)+INVB_DEM.l(cnt,energy);
EEdem(cnt,sec,step)=sum((fosfuels),R_P_XD.l(cnt, sec, fosfuels)*CO2r(cnt,fosfuels,sec)*cint(cnt,sec));

EEdem(cnt,"iH2S",step)=sum((fosfuels),R_P_XD.l(cnt, "iH2S", fosfuels)*CO2r(cnt,fosfuels,"iNG")*cint(cnt,"iH2S"));
EEdem(cnt,"iH2E",step)=sum((fosfuels),R_P_XD.l(cnt, "iH2E", fosfuels)*CO2r(cnt,fosfuels,"iNG")*cint(cnt,"iH2E"));
* set to zero the emissions from non-polluting sectors
EEdem(cnt,sec,step)$nonpoll(sec)=0;
*A:Change from 'HOUS' to hh
EEdem(cnt,hh,step)=sum(fosfuels,HOUS_DEM.l(cnt,fosfuels,hh)*CO2r(cnt,fosfuels,hh)*cint(cnt,"iSER"));
EEdem(cnt,"GOVT",step)=sum(fosfuels,GOVT_DEM.l(cnt,fosfuels)*CO2r(cnt,fosfuels,"GOVT")*cint(cnt,"iSER"));
EEdem(cnt,"INV",step)=sum(fosfuels,INVB_DEM.l(cnt,fosfuels)*CO2r(cnt,fosfuels,"INV")*cint(cnt,"iSER"));
EEdem(cnt,"tmarg",step)= sum(fosfuels,TMout.L(fosfuels,cnt)*CO2r(cnt,fosfuels,"tmarg")*cint(cnt,"iSER"));

demand(cnt,sec,com,step)=R_P_XD.L(cnt, sec, com);
demand(cnt,hh,com,step)=HOUS_DEM.L(cnt,com,hh);
demand(cnt,"GOVT",com,step)=GOVT_DEM.L(cnt,com);
demand(cnt,"INVB",com,step)=INVB_DEM.L(cnt,com);
demand(cnt,"Exports",com,step)=REP_EXPout.l(cnt,com)+REP_EXP_EU.L(cnt, com);
demand(cnt,"stocks",com,step)=max(0,SVZ(cnt,com)*R_SV.L(cnt,com));

*A: Sum over household demand
cdem(cnt,com,step)=sum(sec,demand(cnt,sec,com,step))+sum(hh,demand(cnt,hh,com,step))+demand(cnt,"GOVT",com,step)+demand(cnt,"INVB",com,step)+demand(cnt,"Exports",com,step)+demand(cnt,"stocks",com,step);


LabShr(cnt,"iH2C")=REP_LabourSec.l(cnt, "iH2C")/(REP_LabourSec.l(cnt, "iH2C")+REP_LabourSec.l(cnt, "iH2E")+REP_LabourSec.l(cnt, "iH2S")+REP_LabourSec.l(cnt, "iIND"));
LabShr(cnt,"iH2E")=REP_LabourSec.l(cnt, "iH2E")/(REP_LabourSec.l(cnt, "iH2C")+REP_LabourSec.l(cnt, "iH2E")+REP_LabourSec.l(cnt, "iH2S")+REP_LabourSec.l(cnt, "iIND"));
LabShr(cnt,"iH2S")=REP_LabourSec.l(cnt, "iH2S")/(REP_LabourSec.l(cnt, "iH2C")+REP_LabourSec.l(cnt, "iH2E")+REP_LabourSec.l(cnt, "iH2S")+REP_LabourSec.l(cnt, "iIND"));
LabShr(cnt,"iIND")=REP_LabourSec.l(cnt, "iIND")/(REP_LabourSec.l(cnt, "iH2C")+REP_LabourSec.l(cnt, "iH2E")+REP_LabourSec.l(cnt, "iH2S")+REP_LabourSec.l(cnt, "iIND"));


* ==================== Reallocation of income (Gini) ==================================
TrHoG(cnt,hh)=0;
TrHoT(cnt,hh)=0;
TrHoG(cnt,hh)$(PTH.l(cnt)*(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)*CH.l(cnt,hh) le 0)=-PTH.l(cnt)*(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)*CH.l(cnt,hh);
TrHoT(cnt,hh)$(PTH.l(cnt)*(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)*CH.l(cnt,hh) gt 0)=PTH.l(cnt)*(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)*CH.l(cnt,hh);
* =====================================================================================


*===== SOCIAL ACCOUNTING MATRIX OUTPUT ======
SAMout(cnt,com,sec,step)=REP_SEC_IN.L(cnt,sec,com)*P.L(cnt, com)/CPI(cnt,step)*(1+taxc(cnt,com));
SAMout(cnt,sec,com,step)$(XDDZ(cnt,sec,com))=REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com)/CPI(cnt,step);
SAMout(cnt,"iH2S","pH2",step)=REP_SEC_OUT.L(cnt, "iH2S","pH2")*PD.L(cnt, "iH2S","pH2")/CPI(cnt,step);
SAMout(cnt,"iH2C","pH2",step)=REP_SEC_OUT.L(cnt, "iH2C","pH2")*PD.L(cnt, "iH2C","pH2")/CPI(cnt,step);
SAMout(cnt,"iH2E","pH2",step)=REP_SEC_OUT.L(cnt, "iH2E","pH2")*PD.L(cnt, "iH2E","pH2")/CPI(cnt,step);
SAMout(cnt,"Capital",sec,step)=REP_Capital.L(cnt, sec)*RKC.L(cnt)/CPI(cnt,step)+POG.L(cnt)*sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))/CPI(cnt,step)+PCL.L(cnt)*sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))/CPI(cnt,step)+PNG.L(cnt)*sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"))/CPI(cnt,step)+PLR.L(cnt)*sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR"))/CPI(cnt,step);
*A: Change ltype (something wrong here?)
*SAMout(cnt,ltype,sec,step)$(sum((ed,sex)$lmap(ed,sex,ltype), 1)) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,sec,ed,sex) * PWage.L(cnt,sec)/CPI(cnt,step));
SAMout(cnt,ltype,sec,step)= sum((ed,sex)$lmap(ed,sex,ltype),REP_LabourTYPE.L(cnt,sec,ed,sex) * PWES.l(cnt,ed,sex)/CPI(cnt,step));
SAMout(cnt,ltype,"iIND",step)= sum((ed,sex)$lmap(ed,sex,ltype),REP_LabourTYPE.L(cnt,"iIND",ed,sex) * LabShr(cnt,"iIND") * PWES.l(cnt,ed,sex)/CPI(cnt,step));
SAMout(cnt,ltype,"iH2S",step)= sum((ed,sex)$lmap(ed,sex,ltype),REP_LabourTYPE.L(cnt,"iIND",ed,sex) * LabShr(cnt,"iH2S") * PWES.l(cnt,ed,sex)/CPI(cnt,step));
SAMout(cnt,ltype,"iH2C",step)= sum((ed,sex)$lmap(ed,sex,ltype),REP_LabourTYPE.L(cnt,"iIND",ed,sex) * LabShr(cnt,"iH2C") * PWES.l(cnt,ed,sex)/CPI(cnt,step));
SAMout(cnt,ltype,"iH2E",step)= sum((ed,sex)$lmap(ed,sex,ltype),REP_LabourTYPE.L(cnt,"iIND",ed,sex) * LabShr(cnt,"iH2E") * PWES.l(cnt,ed,sex)/CPI(cnt,step));

SAMout(cnt,"tax_sec",sec,step)=taxp(cnt,sec)*sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com)/CPI(cnt,step));
*A: Change to hh
SAMout(cnt,com,hh,step)=HOUS_DEM.l(cnt,com,hh)*P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
SAMout(cnt,com,"GOVT",step)=GOVT_DEM.l(cnt,com)*P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
SAMout(cnt,com,"INV",step)=INVB_DEM.l(cnt,com)*P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
SAMout(cnt,com,"STOCKS",step)=P.l(cnt,com)/CPI(cnt,step)*SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com);
SAMout(cnt,"GOVT",hh,step)=TrHoG(cnt,hh)/CPI(cnt,step);
SAMout(cnt,hh,"GOVT",step)=TrHoT(cnt,hh)/CPI(cnt,step);
*A: Change to hh (something wrong here)
*Jan26 Delete gdp_p
SAMout(cnt,hh,"Capital",step)=RKC.L(cnt)/CPI(cnt,step)*KENDOW(cnt,hh)*(1-ty(cnt))+POG.L(cnt)*AOGR(cnt,hh)/CPI(cnt,step)+PCL.L(cnt)*ACR(cnt,hh)/CPI(cnt,step)+PNG.L(cnt)*ANGR(cnt,hh)/CPI(cnt,step)+PLR.L(cnt)*ALR(cnt,hh)/CPI(cnt,step);
*SAMout(cnt,hh,"Capital",step)=RKC.L(cnt)/CPI(cnt,step)*KENDOW(cnt,hh)*(1-ty(cnt))*gdp_p(cnt)+POG.L(cnt)*AOGR(cnt,hh)/CPI(cnt,step)+PCL.L(cnt)*ACR(cnt,hh)/CPI(cnt,step)+PNG.L(cnt)*ANGR(cnt,hh)/CPI(cnt,step);
SAMout(cnt,"GOVT","Capital",step)=-RKC.L(cnt)/CPI(cnt,step)*sum(sec,pathway_total(cnt, sec))*gdp_p(cnt);
*SAMout(cnt, hh, ltype, step) = sum((sec, ed, sex)$(lmap(ed, sex, ltype)),REP_LabourTYPE.L(cnt, sec, ed, sex) * PWES.L(cnt, ed, sex) / CPI(cnt,step));
* Jan26 Delete gdp_p(cnt)
*SAMout(cnt, hh, ltype, step) = (sum((ed,sex)$lmap(ed,sex,ltype), LENDOW(cnt,hh,ed,sex)*(1-ty(cnt))*gdp_p(cnt)/(1-urate(cnt))*(1-UR.l(cnt,ed,sex)) * PWES.L(cnt,ed,sex)))/CPI(cnt,step);
SAMout(cnt, hh, ltype, step) = (sum((ed,sex)$lmap(ed,sex,ltype), LENDOW(cnt,hh,ed,sex)*(1-ty(cnt))/(1-urate(cnt))*(1-UR.l(cnt,ed,sex)) * PWES.L(cnt,ed,sex)))/CPI(cnt,step);
*SAMout(cnt,hh,ltype,step)=sum(sec,REP_Labour.L(cnt, sec,ltype)*PL.L(cnt)/PU.l(cnt));
*A: Add household
SAMout(cnt,"INV",hh,step)=SHZ(cnt,hh)*gdp_p(cnt)*PS.L(cnt)/CPI(cnt,step)*R_SH.L(cnt,hh);
*A: Add household
SAMout(cnt,hh,"trade",step)=max(0, (TRHROWZ(cnt,hh)*gdp_p(cnt))*ERext.L/CPI(cnt,step));
SAMout(cnt,"trade",hh,step)=max(0,-(TRHROWZ(cnt,hh)*gdp_p(cnt))*ERext.L/CPI(cnt,step));

SAMout(cnt,"GOVT","tax_sec",step)=sum(sec,taxp(cnt,sec)*sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com)/CPI(cnt,step)));
SAMout(cnt,"GOVT","tax_com",step)=sum(com,sum(sec,REP_SEC_IN.L(cnt,sec,com))*P.L(cnt, com)/CPI(cnt,step)*taxc(cnt,com)+(sum(hh,HOUS_DEM.l(cnt,com,hh))+GOVT_DEM.l(cnt,com)+INVB_DEM.l(cnt,com))*P.l(cnt,com)/CPI(cnt,step)*taxc(cnt,com));
SAMout(cnt,"tax_sec",sec,step)=taxp(cnt,sec)*sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com)/CPI(cnt,step));
*A: Add sum over household demand
SAMout(cnt,"tax_com",com,step)=sum(sec,REP_SEC_IN.L(cnt,sec,com))*P.L(cnt, com)/CPI(cnt,step)*taxc(cnt,com)+(sum(hh,HOUS_DEM.l(cnt,com,hh))+GOVT_DEM.l(cnt,com)+INVB_DEM.l(cnt,com))*P.l(cnt,com)/CPI(cnt,step)*taxc(cnt,com);
SAMout(cnt,"STOCKS","INV",step)=sum(com,P.l(cnt,com)/CPI(cnt,step)*SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com));
SAMout(cnt,com,"tmarg",step)= P.l(cnt,com)/CPI(cnt,step)*TMout.L(com,cnt);
SAMout(cnt,"tmarg",com,step)= sum(cntt,PTM.L(cnt,cntt)/CPI(cnt,step)*TMin.L(com,cnt,cntt)) ;
SAMout(cnt,com,"trade",step)= ERext.L/CPI(cnt,step)*(REP_EXPout.l(cnt,com))+ERint.L/CPI(cnt,step)*(REP_EXP_EU.l(cnt,com));
SAMout(cnt,"trade",com,step)=ERext.L/CPI(cnt,step)*REP_IMPout.L(cnt, com)+ ERint.L/CPI(cnt,step)*REP_IMP_EU.L(cnt,com);
SAMout(cnt,"GOVT","trade",step)= ERext.L/CPI(cnt,step)*TRROWZ(cnt)*gdp_p(cnt);
SAMout(cnt,"CO2allow",sec,step)=PCO2.L(cnt)/CPI(cnt,step)*CO2S_dem.L(cnt,sec);
*A: Add household
SAMout(cnt,"CO2allow",hh,step)=PCO2.L(cnt)/CPI(cnt,step)*CO2H_dem.l(cnt,hh);
SAMout(cnt,"CO2allow","GOVT",step)=PCO2.L(cnt)/CPI(cnt,step)*CO2G_dem.l(cnt);
SAMout(cnt,"CO2allow","INV",step) =PCO2.L(cnt)/CPI(cnt,step)*CO2I_dem.l(cnt);
SAMout(cnt,"CO2allow","tmarg",step)=PCO2.L(cnt)/CPI(cnt,step)*CO2T_dem.l(cnt);
*SAMout(cnt,"GOVT","CO2allow",step)=PCO2.L(cnt)/PU.l(cnt)*sum(fosfuels,sum(sec,CO2r(cnt,fosfuels,sec)*REP_SEC_IN.L(cnt, sec, fosfuels))+CO2r(cnt,fosfuels,"HOUS")*HOUS_DEM.L(cnt,fosfuels)+CO2r(cnt,fosfuels,"GOVT")*GOVT_DEM.L(cnt,fosfuels)+CO2r(cnt,fosfuels,"INV")*INVB_DEM.L(cnt,fosfuels));
SAMout(cnt,"GOVT","CO2allow",step)=PCO2.l(cnt)/CPI(cnt,step)*(sum(sec,CO2S_dem.l(cnt,sec))+sum(hh,CO2H_dem.l(cnt,hh))+CO2G_dem.l(cnt)+CO2I_dem.l(cnt)+CO2T_dem.l(cnt));


*P: New KPIs for "fairness analysis" - Period n
KPI_Inc(cnt,hh,step)=sum(ltype,SAMout(cnt,hh,ltype,step))+SAMout(cnt,hh,"Capital",step);
KPI_EA(cnt,hh,step)=(SAMout(cnt,"pOIL",hh,step)+SAMout(cnt,"pBIO",hh,step)+SAMout(cnt,"pFUL",hh,step)+SAMout(cnt,"pHDI",hh,step)+SAMout(cnt,"pH2",hh,step)+SAMout(cnt,"pELE",hh,step)+SAMout(cnt,"pGSL", hh,step)+SAMOUT(cnt,"pDSL", hh,step)+SAMOUT(cnt,"pNG", hh,step)+SAMOUT(cnt,"pCOA", hh,step))/KPI_Inc(cnt,hh,step);
KPI_WG_Gender(cnt,step)= ((sum((ed, sec), PWES.l(cnt,ed,"female")/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,ed,"female")))/sum((ed, sec), REP_LabourTYPE.L(cnt,sec,ed,"female")))/
                         ((sum((ed, sec), PWES.l(cnt,ed,"male")/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,ed,"male")))/sum((ed, sec), REP_LabourTYPE.L(cnt,sec,ed,"male")));
KPI_WG_Ed1(cnt,step)= ((sum((sex, sec), PWES.l(cnt,"ED1",sex)/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,"ED1",sex)))/sum((sex, sec), REP_LabourTYPE.L(cnt,sec,"ED1",sex)))/
                         ((sum((sex, sec), PWES.l(cnt,"ED3",sex)/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,"ED3",sex)))/sum((sex, sec), REP_LabourTYPE.L(cnt,sec,"ED3",sex)));
KPI_WG_Ed2(cnt,step)= ((sum((sex, sec), PWES.l(cnt,"ED2",sex)/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,"ED2",sex)))/sum((sex, sec), REP_LabourTYPE.L(cnt,sec,"ED2",sex)))/
                         ((sum((sex, sec), PWES.l(cnt,"ED3",sex)/CPI(cnt,step)*REP_LabourTYPE.L(cnt,sec,"ED3",sex)))/sum((sex, sec), REP_LabourTYPE.L(cnt,sec,"ED3",sex)));

* Compute the Gini Index: shares
* income share
ISh(cnt,hh,step)=KPI_Inc(cnt,hh,step)/sum(housesplit,KPI_Inc(cnt,housesplit,step));
* population share in each quintile
PSh(cnt,hh)=0.2;
* Cumulated Income share
CISh(cnt,hh,step)=sum(housesplit$(ord(housesplit) le ord(hh)),ISh(cnt,housesplit,step));
* Cumulated Population share
CPSh(cnt,hh)=ord(hh)*0.2;
* Gini Index (Using the trapezoid formula for the area under the Lorenz curve)
KPI_Gini(cnt,step)=(1-(sum(hh$(ord(hh) eq 1),CISh(cnt,hh,step)*CPSh(cnt,hh))+sum(hh$(ord(hh) gt 1),(CPSh(cnt,hh)-CPSh(cnt,hh-1))*(CISh(cnt,hh,step)+CISh(cnt,hh-1,step)))))/0.8;

*KPI_GiniC(cnt,step) = (6 - 2 * sum(hh,(6 - ord(hh))* KPI_Inc(cnt,hh,step)) / sum(housesplit, KPI_Inc(cnt,housesplit,step))) / 4;
*KPI_GiniC(cnt,step) =(6- 2 * sum(hh,(6 - ord(hh)) *
*           (sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,hh,ed,sex)* (1-ty(cnt))/ (1-urate(cnt))* (1-UR.l(cnt,ed,sex))* PWES.L(cnt,ed,sex)))
*           + RKC.L(cnt) * KENDOW(cnt,hh) * (1-ty(cnt))
*           + POG.L(cnt) * AOGR(cnt,hh)
*           + PCL.L(cnt) * ACR(cnt,hh)
*           + PNG.L(cnt) * ANGR(cnt,hh)
*           )
*           )
*           /
*           sum(housesplit,sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,housesplit,ed,sex)* (1-ty(cnt))/ (1-urate(cnt))*(1-UR.l(cnt,ed,sex))*PWES.L(cnt,ed,sex)))
*           + RKC.L(cnt) * KENDOW(cnt,housesplit) * (1-ty(cnt))
*           + POG.L(cnt) * AOGR(cnt,housesplit)
*           + PCL.L(cnt) * ACR(cnt,housesplit)
*           + PNG.L(cnt) * ANGR(cnt,housesplit)
*           )
*           ) / 4;



rank(cnt,hh,step) = sum(housesplit$(KPI_Inc(cnt,housesplit,step) <= KPI_Inc(cnt,hh,step)), 1);
rankM(cnt,hh)=rank(cnt,hh,step);

KPI_GiniC(cnt,step) =(6- 2 * sum(hh,(6 - rank(cnt,hh,step)) *
           (sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),(LENDOW(cnt,hh,ed,sex)
           - GI.L(cnt) * (LENDOW(cnt,hh,ed,sex) - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/5))* (1-ty(cnt))/ (1-urate(cnt))* (1-UR.L(cnt,ed,sex))* PWES.L(cnt,ed,sex) ))
           + RKC.L(cnt) * (KENDOW(cnt,hh)-GI.L(cnt)*(KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/5) * (1-ty(cnt)))
           + POG.L(cnt) * (AOGR(cnt,hh)-GI.L(cnt)*(AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/5))
           + PCL.L(cnt) * (ACR(cnt,hh)-GI.L(cnt)*(ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/5))
           + PNG.L(cnt) * (ANGR(cnt,hh)-GI.L(cnt)*(ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5))
           + PLR.L(cnt) * (ALR(cnt,hh)-GI.L(cnt)*(ALR(cnt,hh)-sum(housesplit,ALR(cnt,housesplit))/5))
           )
           )
           /
           sum(housesplit,sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,housesplit,ed,sex)* (1-ty(cnt))/ (1-urate(cnt))*(1-UR.l(cnt,ed,sex))*PWES.L(cnt,ed,sex)))
           + RKC.L(cnt) * KENDOW(cnt,housesplit) * (1-ty(cnt))
           + POG.L(cnt) * AOGR(cnt,housesplit)
           + PCL.L(cnt) * ACR(cnt,housesplit)
           + PNG.L(cnt) * ANGR(cnt,housesplit)
           + PLR.L(cnt) * ALR(cnt,housesplit)
           )
           ) / 4;


YHH(cnt,hh,step) =
      sum(ltype,
        sum((ed,sex)$lmap(ed,sex,ltype),
          ( LENDOW(cnt,hh,ed,sex)
          - GI.L(cnt) *
            (LENDOW(cnt,hh,ed,sex)
             - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/card(hh))
          )
          * (1-ty(cnt))
          / (1-urate(cnt))
          * (1-UR.L(cnt,ed,sex))
          * PWES.L(cnt,ed,sex)
        )
      )

    + RKC.L(cnt)
      * (KENDOW(cnt,hh)
         - GI.L(cnt) *
           (KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/card(hh)))
      * (1-ty(cnt))

    + POG.L(cnt)
      * (AOGR(cnt,hh)
         - GI.L(cnt) *
           (AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/card(hh)))

    + PCL.L(cnt)
      * (ACR(cnt,hh)
         - GI.L(cnt) *
           (ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/card(hh)))

    + PNG.L(cnt)
      * (ANGR(cnt,hh)
         - GI.L(cnt) *
           (ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/card(hh)))

    + PLR.L(cnt)
      * (ALR(cnt,hh)
         - GI.L(cnt) *
           (ALR(cnt,hh)-sum(housesplit,ALR(cnt,housesplit))/card(hh)));

KPI_GiniC2(cnt,step)$sum(hh, YHH(cnt,hh,step)) =
    sum((hh,hh2),
        abs(YHH(cnt,hh,step) - YHH(cnt,hh2,step))
    )
    / (2 * (card(hh)-1) * sum(hh, YHH(cnt,hh,step)));

$ontext
* This version integrates the distances from average
* i.e. the transfers from or to the household to lead to more equal income distribution
* depending on the GI index (the dual of the Gini constraint)
* There should be transfers from the Households based on the factors GI*(-value+average(values))
* where some would be positive and some would be negative. There should be a price to apply each of the transfers
* The value of this price should be the same as the value of the price for the endowment for which the transfer is being done

KPI_GiniC(cnt) = (6- 2 * sum(hh,(6 - ord(hh)) *
           (sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),(LENDOW(cnt,hh,ed,sex)
           - GI(cnt) * (LENDOW(cnt,hh,ed,sex) - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/5))* (1-ty(cnt))/ (1-urate(cnt))* (1-UR(cnt,ed,sex))* PWES(cnt,ed,sex) ))
           + RKC(cnt) * (KENDOW(cnt,hh)-GI(cnt)*(KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/5) * (1-ty(cnt)))
           + POG(cnt) * (AOGR(cnt,hh)-GI(cnt)*(AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/5))
           + PCL(cnt) * (ACR(cnt,hh)-GI(cnt)*(ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/5))
           + PNG(cnt) * (ANGR(cnt,hh)-GI(cnt)*(ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5))

           )
           )
           /
           sum(housesplit,sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,housesplit,ed,sex)* (1-ty(cnt))/ (1-urate(cnt))*(1-UR(cnt,ed,sex))*PWES(cnt,ed,sex)))
           + RKC(cnt) * KENDOW(cnt,housesplit) * (1-ty(cnt))
           + POG(cnt) * AOGR(cnt,housesplit)
           + PCL(cnt) * ACR(cnt,housesplit)
           + PNG(cnt) * ANGR(cnt,housesplit)
           )
           ) / 4;
$offtext

IOanalysis('input',cnt,sec,com,step)$(ord(step)>1)=SAMout(cnt,com,sec,step);
*A: Add labortype
IOanalysis('input',cnt,sec,ltype,step)$(ord(step)>1)=SAMout(cnt,ltype,sec,step);
IOanalysis('input',cnt,sec,"Capital",step)$(ord(step)>1)=SAMout(cnt,"Capital",sec,step);
IOanalysis('input',cnt,sec,"tax_sec",step)$(ord(step)>1)=SAMout(cnt,"tax_sec",sec,step);
*A: Sum over household
IOanalysis('input',cnt,"demand",com,step)$(ord(step)>1)=sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step);
IOanalysis('input',cnt,"demand","CO2allow",step)$(ord(step)>1)=PCO2.l(cnt)/CPI(cnt,step)*(sum(hh,CO2H_dem.l(cnt,hh))+CO2G_dem.l(cnt)+CO2I_dem.l(cnt));
IOanalysis('input',cnt,"stocks",com,step)$(ord(step)>1)=SAMout(cnt,com,"STOCKS",step);
IOanalysis('input',cnt,"tmarg",com,step)$(ord(step)>1)=SAMout(cnt,com,"tmarg",step);
IOanalysis('input',cnt,"exportsROW",com,step)$(ord(step)>1)=SAMout(cnt,com,"trade",step);

IOanalysis('input',cnt,sec,"CO2allow",step)$(ord(step)>1)=PCO2.l(cnt)/CPI(cnt,step)*CO2S_dem.l(cnt,sec);

IOanalysis('output',cnt,sec,com,step)$(ord(step)>1)=SAMout(cnt,sec,com,step);
IOanalysis('output',cnt,"tax_com",com,step)$(ord(step)>1)=SAMout(cnt,"tax_com",com,step);
IOanalysis('output',cnt,"tmarg",com,step)$(ord(step)>1)=SAMout(cnt,"tmarg",com,step);
IOanalysis('output',cnt,"importsROW",com,step)$(ord(step)>1)=SAMout(cnt,"trade",com,step);

*A: Sum over ltype
VA(cnt,sec,step)=SAMout(cnt,"Capital",sec,step)+sum(ltype,SAMout(cnt,ltype,sec,step))+SAMout(cnt,"tax_sec",sec,step)+SAMout(cnt,sec,"CO2allow",step);
GDPout(cnt,step)=sum(sec,VA(cnt,sec,step));


Quantity(cnt,com,sec,step)=REP_SEC_IN.L(cnt,sec,com);
Quantity(cnt,sec,com,step)$(XDDZ(cnt,sec,com))=REP_SEC_OUT.L(cnt, sec, com);
Quantity(cnt,"iH2S","pH2",step)=REP_SEC_OUT.L(cnt, "iH2S","pH2");
Quantity(cnt,"iH2C","pH2",step)=REP_SEC_OUT.L(cnt, "iH2C","pH2");
Quantity(cnt,"iH2E","pH2",step)=REP_SEC_OUT.L(cnt, "iH2E","pH2");
Quantity(cnt,"Capital",sec,step)=REP_Capital.L(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"));
*A: Change to labourtype
Quantity(cnt,ltype,sec,step) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,sec,ed,sex));
* Labour demand for H2 is from the same virtual labor provider as industry with different shares (LabShr)
Quantity(cnt,ltype,"iIND",step) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,"iIND",ed,sex)* LabShr(cnt,"iIND"));
Quantity(cnt,ltype,"iH2S",step) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,"iIND",ed,sex)* LabShr(cnt,"iH2S"));
Quantity(cnt,ltype,"iH2C",step) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,"iIND",ed,sex)* LabShr(cnt,"iH2C"));
Quantity(cnt,ltype,"iH2E",step) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,"iIND",ed,sex)* LabShr(cnt,"iH2E"));

*A: Change to household
Quantity(cnt,com,hh,step)=HOUS_DEM.l(cnt,com,hh);
Quantity(cnt,com,"GOVT",step)=GOVT_DEM.l(cnt,com);
Quantity(cnt,com,"INV",step)=INVB_DEM.l(cnt,com);
Quantity(cnt,com,"STOCKS",step)=SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com);
*Jan26 delete gdp
*Quantity(cnt,hh,"Capital",step)=KENDOW(cnt,hh)*(1-ty(cnt))*gdp_p(cnt)+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh);
Quantity(cnt,hh,"Capital",step)=KENDOW(cnt,hh)*(1-ty(cnt))+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh)+ALR(cnt,hh);
Quantity(cnt,"GOVT","Capital",step)=-sum(sec,pathway_total(cnt, sec))*gdp_p(cnt);
*A: Change to household
*Quantity(cnt,hh,ltype,step)=sum(sec,REP_LabourTYPE.L(cnt, sec));
*Jan26 Delete LENDOW
*Quantity(cnt,hh,ltype,step)=sum((ed,sex)$lmap(ed,sex,ltype), LENDOW(cnt,hh,ed,sex)*(1-ty(cnt))*gdp_p(cnt)/(1-urate(cnt))*(1-UR.l(cnt,ed,sex)));
Quantity(cnt,hh,ltype,step)=sum((ed,sex)$lmap(ed,sex,ltype), LENDOW(cnt,hh,ed,sex)*(1-ty(cnt))/(1-urate(cnt))*(1-UR.l(cnt,ed,sex)));
Quantity(cnt,"INV",hh,step)=SHZ(cnt,hh)*gdp_p(cnt)*R_SH.L(cnt,hh);
*A: Change to household
Quantity(cnt,hh,"trade",step)=max(0, (TRHROWZ(cnt,hh)*gdp_p(cnt)));
Quantity(cnt,"trade",hh,step)=max(0,-(TRHROWZ(cnt,hh)*gdp_p(cnt)));
Quantity(cnt,"STOCKS","INV",step)=sum(com,SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com));
Quantity(cnt,com,"tmarg",step)= TMout.L(com,cnt);
Quantity(cnt,"tmarg",com,step)= sum(cntt,TMin.L(com,cnt,cntt)) ;
Quantity(cnt,com,"trade",step)= REP_EXPout.l(cnt,com)+REP_EXP_EU.l(cnt,com);
Quantity(cnt,"trade",com,step)=REP_IMPout.L(cnt, com)+ REP_IMP_EU.L(cnt,com);
Quantity(cnt,"GOVT","trade",step)=TRROWZ(cnt)*gdp_p(cnt);
Quantity(cnt,"CO2allow",sec,step)=sum(fosfuels,CO2r(cnt,fosfuels,sec)*REP_SEC_IN.L(cnt, sec, fosfuels));
*A: Change to household
Quantity(cnt,"CO2allow",hh,step)=sum(fosfuels,CO2r(cnt,fosfuels,hh)*HOUS_DEM.L(cnt,fosfuels,hh));
Quantity(cnt,"CO2allow","GOVT",step)=sum(fosfuels,CO2r(cnt,fosfuels,"GOVT")*GOVT_DEM.L(cnt,fosfuels));
Quantity(cnt,"CO2allow","INV",step) =sum(fosfuels,CO2r(cnt,fosfuels,"INV")*INVB_DEM.L(cnt,fosfuels));
*A: Sum over households
Quantity(cnt,"GOVT","CO2allow",step)=sum(fosfuels,sum(sec,CO2r(cnt,fosfuels,sec)*REP_SEC_IN.L(cnt, sec, fosfuels))+sum(hh,CO2r(cnt,fosfuels,hh)*HOUS_DEM.L(cnt,fosfuels,hh))+CO2r(cnt,fosfuels,"GOVT")*GOVT_DEM.L(cnt,fosfuels)+CO2r(cnt,fosfuels,"INV")*INVB_DEM.L(cnt,fosfuels));


*$ontext
QQQ(cnt,com,sec,step)$SAM(cnt,com,sec)=REP_SEC_IN.L(cnt,sec,com)/SAM(cnt,com,sec)-1;
QQQ(cnt,sec,com,step)$SAM(cnt,sec,com)=REP_SEC_OUT.L(cnt, sec, com)/SAM(cnt,sec,com)-1;
*QQQ(cnt,"Capital",sec,step)$SAM(cnt,"Capital",sec)=REP_Capital.L(cnt, sec)/SAM(cnt,"Capital",sec)-1;
QQQ(cnt,"Capital",sec,step)$SAM(cnt,"Capital",sec)=(REP_Capital.L(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG"))+sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR")))/SAM(cnt,"Capital",sec)-1;
*A: Change to ltype


QQQ(cnt,ltype,sec,step)$SAM(cnt,ltype,sec) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,sec,ed,sex)) / SAM(cnt,ltype,sec) - 1;
QQQ(cnt,"tax_sec",sec,step)$SAM(cnt,"tax_sec",sec)=sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com))/SAM(cnt,"tax_sec",sec)-1;
*A: Change to hh
QQQ(cnt,com,hh,step)$SAM(cnt,com,hh)=HOUS_DEM.l(cnt,com,hh)/SAM(cnt,com,hh)-1;
QQQ(cnt,com,"GOVT",step)$SAM(cnt,com,"GOVT")=GOVT_DEM.l(cnt,com)/SAM(cnt,com,"GOVT")-1;
QQQ(cnt,com,"INV",step)$SAM(cnt,com,"INV")=INVB_DEM.l(cnt,com)/SAM(cnt,com,"INV")-1;
QQQ(cnt,com,"STOCKS",step)$SAM(cnt,com,"STOCKS")=SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com)/SAM(cnt,com,"STOCKS")-1;
*A: Change to hh
QQQ(cnt,hh,"Capital",step)$SAM(cnt,hh,"Capital")=KENDOW(cnt,hh)*(1-ty(cnt))*gdp_p(cnt)/SAM(cnt,hh,"Capital")-1;
QQQ(cnt,"GOVT","Capital",step)$SAM(cnt,"GOVT","Capital")=-sum(sec,pathway_total(cnt, sec))*gdp_p(cnt)/SAM(cnt,"GOVT","Capital")-1;
*A: Tricky
*QQQ(cnt,hh,ltype,step)$SAM(cnt,hh,ltype)=sum(sec,REP_Labour.L(cnt, sec,ltype))/SAM(cnt,hh,ltype)-1;
QQQ(cnt,"INV",hh,step)$SAM(cnt,"INV",hh)=SHZ(cnt,hh)*gdp_p(cnt)*R_SH.L(cnt,hh)/SAM(cnt,"INV",hh)-1;
QQQ(cnt,hh,"trade",step)$SAM(cnt,hh,"trade")=max(0, (TRHROWZ(cnt,hh)*gdp_p(cnt)))/SAM(cnt,hh,"trade")-1;
QQQ(cnt,"trade",hh,step)$SAM(cnt,"trade",hh)=max(0,-(TRHROWZ(cnt,hh)*gdp_p(cnt)))/SAM(cnt,"trade",hh)-1;

QQQ(cnt,"GOVT","tax_sec",step)=0;
QQQ(cnt,"GOVT","tax_com",step)=0;
QQQ(cnt,"tax_sec",sec,step)$SAM(cnt,"tax_sec",sec)=sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com))/SAM(cnt,"tax_sec",sec)-1;
QQQ(cnt,"tax_com",com,step)$SAM(cnt,"tax_com",com)=(sum(sec,REP_SEC_IN.L(cnt,sec,com))*P.L(cnt, com)+(sum(hh,HOUS_DEM.l(cnt,com,hh))+GOVT_DEM.l(cnt,com)+INVB_DEM.l(cnt,com))*P.l(cnt,com))/SAM(cnt,"tax_com",com)-1;
QQQ(cnt,"STOCKS","INV",step)=0;
QQQ(cnt,com,"tmarg",step)$SAM(cnt,com,"tmarg")= TMout.L(com,cnt)/SAM(cnt,com,"tmarg")-1;
QQQ(cnt,"tmarg",com,step)= 0;
QQQ(cnt,com,"trade",step)$SAM(cnt,com,"trade")=(REP_EXPout.l(cnt,com)+REP_EXP_EU.l(cnt,com))/SAM(cnt,com,"trade")-1;

QQQ(cnt,"trade",com,step)$SAM(cnt,"trade",com)=(REP_IMPout.L(cnt, com)+ REP_IMP_EU.L(cnt,com))/SAM(cnt,"trade",com)-1;
QQQ(cnt,"GOVT","trade",step)$SAM(cnt,"GOVT","trade")=TRROWZ(cnt)*gdp_p(cnt)/SAM(cnt,"GOVT","trade")-1;
QQQ(cnt,"CO2allow",sec,step)=sum(fosfuels,CO2r(cnt,fosfuels,sec)*REP_SEC_IN.L(cnt, sec, fosfuels));
*A: Change to households
QQQ(cnt,"CO2allow",hh,step)=sum(fosfuels,CO2r(cnt,fosfuels,hh)*HOUS_DEM.L(cnt,fosfuels,hh));
QQQ(cnt,"CO2allow","GOVT",step)=sum(fosfuels,CO2r(cnt,fosfuels,"GOVT")*GOVT_DEM.L(cnt,fosfuels));
QQQ(cnt,"CO2allow","INV",step) =sum(fosfuels,CO2r(cnt,fosfuels,"INV")*INVB_DEM.L(cnt,fosfuels));
*A: Sum over household demand
QQQ(cnt,"GOVT","CO2allow",step)=sum(fosfuels,sum(sec,CO2r(cnt,fosfuels,sec)*REP_SEC_IN.L(cnt, sec, fosfuels))+sum(hh,CO2r(cnt,fosfuels,hh)*HOUS_DEM.L(cnt,fosfuels,hh))+CO2r(cnt,fosfuels,"GOVT")*GOVT_DEM.L(cnt,fosfuels)+CO2r(cnt,fosfuels,"INV")*INVB_DEM.L(cnt,fosfuels));


PPP(cnt,com,sec,step)=P.L(cnt, com)/CPI(cnt,step)*(1+taxc(cnt,com));
PPP(cnt,sec,com,step)$(XDDZ(cnt,sec,com))=PD.L(cnt, sec, com)/CPI(cnt,step);
*PPP(cnt,"Capital",sec,step)=RKC.L(cnt)/PU.l(cnt);
* capital might contain specific capital for some sectors. Then we consider an average price for general and specific capital for those sectors.
*                               (TotalValue/Q)/CPI)
PPP(cnt,"Capital",sec,step)$SAM(cnt,"Capital",sec)=SAMout(cnt,"Capital",sec,step)/(REP_Capital.L(cnt, sec)+sum(hh,AOGR(cnt,hh))$(sameas(sec,"iCOI"))+sum(hh,ACR(cnt,hh))$(sameas(sec,"iCOA"))+sum(hh,ANGR(cnt,hh))$(sameas(sec,"iNG")))+sum(hh,ALR(cnt,hh))$(sameas(sec,"iAGR"));
PPP(cnt,ltype,sec,step)=sum((ed,sex)$(lmap(ed,sex,ltype)),PWES.l(cnt,ed,sex))/CPI(cnt,step);
PPP(cnt,"tax_sec",sec,step)=taxp(cnt,sec);
*A: Change to hh
PPP(cnt,com,hh,step)=P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
PPP(cnt,com,"GOVT",step)=P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
PPP(cnt,com,"INV",step)=P.l(cnt,com)/CPI(cnt,step)*(1+taxc(cnt,com));
PPP(cnt,com,"STOCKS",step)=P.l(cnt,com)/CPI(cnt,step);
*A: Change hh
PPP(cnt,hh,"Capital",step)=RKC.L(cnt)/CPI(cnt,step);
PPP(cnt,"GOVT","Capital",step)=RKC.L(cnt)/CPI(cnt,step);
*A: Change to hh and ltype
*PPP(cnt,hh, ltype,step)=P.L(cnt)/PU.l(cnt);
PPP(cnt,"INV",hh,step)=PS.L(cnt)/CPI(cnt,step);
PPP(cnt,hh,"trade",step)=ERext.L/CPI(cnt,step);
PPP(cnt,"trade",hh,step)=ERext.L/CPI(cnt,step);

PPP(cnt,"GOVT","tax_sec",step)=sum(sec,taxp(cnt,sec)*sum(com,REP_SEC_OUT.L(cnt, sec, com)*PD.L(cnt, sec, com)/CPI(cnt,step)));
*A: Sum over household demand
PPP(cnt,"GOVT","tax_com",step)=sum(com,sum(sec,REP_SEC_IN.L(cnt,sec,com))*P.L(cnt, com)/CPI(cnt,step)*taxc(cnt,com)+(sum(hh,HOUS_DEM.l(cnt,com,hh))+GOVT_DEM.l(cnt,com)+INVB_DEM.l(cnt,com))*P.l(cnt,com)/CPI(cnt,step)*taxc(cnt,com));
PPP(cnt,"tax_sec",sec,step)=taxp(cnt,sec);
PPP(cnt,"tax_com",com,step)=taxc(cnt,com);
PPP(cnt,"STOCKS","INV",step)=sum(com,P.l(cnt,com)/CPI(cnt,step)*SVZ(cnt,com)*gdp_p(cnt)*X.l(cnt,com));
PPP(cnt,com,"tmarg",step)= P.l(cnt,com)/CPI(cnt,step);
PPP(cnt,"tmarg",com,step)= sum(cntt,PTM.L(cnt,cntt)/CPI(cnt,step)*TMin.L(com,cnt,cntt));
PPP(cnt,com,"trade",step)= ERext.L/CPI(cnt,step);
PPP(cnt,"trade",com,step)=ERext.L/CPI(cnt,step);
PPP(cnt,"GOVT","trade",step)=ERext.L/CPI(cnt,step);
PPP(cnt,"CO2allow",sec,step)=PCO2.L(cnt)/CPI(cnt,step);
*A: Change to hh
PPP(cnt,"CO2allow",hh,step)=PCO2.L(cnt)/CPI(cnt,step);
PPP(cnt,"CO2allow","GOVT",step)=PCO2.L(cnt)/CPI(cnt,step);
PPP(cnt,"CO2allow","INV",step) =PCO2.L(cnt)/CPI(cnt,step);
PPP(cnt,"GOVT","CO2allow",step)=PCO2.L(cnt)/CPI(cnt,step);


EUIMP(cnt,com,step)=ERint.L/CPI(cnt,step)*REP_IMP_EU.L(cnt,com);
EUEXP(cnt,com,step)=ERint.L/CPI(cnt,step)*(REP_EXP_EU.l(cnt,com));


* Price of fossil fuels
FuelPrice(cnt,fosfuels,step)=P.l(cnt,fosfuels)/CPI(cnt,step);

* monetary value of the CO2 budget.
MCO2B(cnt,step)=PCO2.L(cnt)*CO2B(cnt);

display SHZ,gdp,PS.L,R_SH.L;

Investments(cnt,step)=II.l(cnt)*5;

* report gdp in percentage
gdptest(cnt,step)$(ord(step) ge 3)=sum(sec,VA(cnt,sec,step))/sum(sec,VA(cnt,sec,"3"));
* ================= Recoursive Capital Adjustment ==============================
* We multiply investments by 5 because even if all the projection parameters are for 5
* years the data is always based on yearly values. Therefore by projecting the closure
* parameters 5 years ahead we would get the YEARLY SAM after 5 years.
* But we need the cumulated effects of 5 years of investments. That is why we multiply
* the investments by 5.


*Jan26 Remove, since moved up
*Kap(cnt)=(Kap(cnt)*(1-depr(cnt))+II.l(cnt)*5);
*KSZ(cnt)=Kap(cnt)*ror(cnt)
;
* update natural resources extraction (this could be used in a counterfactual)
* period 4 is 2020


if (ord(step) le 4,
* Renewable power productivity grows in the first four periods
Rp(cnt)=Rp(cnt);
AOGR(cnt,hh)=AOGR(cnt,hh)*(1+grow(cnt));
ACR(cnt,hh)=ACR(cnt,hh)*(1+grow(cnt));
ANGR(cnt,hh)=ANGR(cnt,hh)*(1+grow(cnt));
ALR(cnt,hh)=ALR(cnt,hh)*(1+grow(cnt));


else
* ================ CPD - COUNTERFACTUAL POLICY DEFINITION =====================
* Counterfactual point 7

* Renewable power productivity grows
* if reference case everything grows following "grow"

* increase in productivity for power sector
Rp(cnt)$(CUT eq 1)=Rp(cnt)+prdR;
*
CPD(cnt)$(CCE eq 1)=(1+CPD(cnt))*(1+lpd(cnt))-1;
CPD(cnt)$(Laborprod eq 1)=(1+CPD(cnt))*(1-0.05)-1;
* all the countries cut their fossil extractions
AOGR(cnt,hh)$(inVis(cnt) eq 0 and CUT eq 1)=AOGR(cnt,hh)*rescut;
ACR(cnt,hh)$(inVis(cnt) eq 0 and  CUT eq 1)=ACR(cnt,hh)*rescut;
* we do not phase out Natural Gas (under Gradual Development)
ANGR(cnt,hh)$(inVis(cnt) eq 0 and CUT eq 1)=ANGR(cnt,hh)*rescut;
ALR(cnt,hh)$(AGRCUT eq 1) = ALR(cnt,hh)*landuse;

AOGR(cnt,hh)$(inVis(cnt) eq 0 and  CUT eq 0)=AOGR(cnt,hh)*(1+grow(cnt));
ACR(cnt,hh)$(inVis(cnt) eq 0 and  CUT eq 0)=ACR(cnt,hh)*(1+grow(cnt));
ANGR(cnt,hh)$(inVis(cnt) eq 0 and  CUT eq 0)=ANGR(cnt,hh)*(1+grow(cnt));
ALR(cnt,hh)$(AGRCUT eq 0) = ALR(cnt,hh)*(1+grow(cnt));

* if there is cooperation, the Visegrad countries will cut their fossil extractions
AOGR(visegrad,hh)$(coop=1 and CUT eq 1)=AOGR(visegrad,hh)*rescut;
ACR(visegrad,hh)$(coop=1 and  CUT eq 1)=ACR(visegrad,hh)*rescut;
ANGR(visegrad,hh)$(coop=1 and  CUT eq 1)=ANGR(visegrad,hh)*rescut;

AOGR(visegrad,hh)$(coop=1 and  CUT eq 0)=AOGR(visegrad,hh)*(1+grow(visegrad));
ACR(visegrad,hh)$(coop=1 and  CUT eq 0)=ACR(visegrad,hh)*(1+grow(visegrad));
ANGR(visegrad,hh)$(coop=1 and  CUT eq 0)=ANGR(visegrad,hh)*(1+grow(visegrad));

* if there is no cooperation, the visegrad countries will keep increasing their fossil resources
AOGR(visegrad,hh)$(coop=0 and CUT eq 1)=AOGR(visegrad,hh)*(1+grow(visegrad));
ACR(visegrad,hh)$(coop=0 and CUT eq 1)=ACR(visegrad,hh)*(1+grow(visegrad));
ANGR(visegrad,hh)$(coop=0 and CUT eq 1)=ANGR(visegrad,hh)*(1+grow(visegrad));

ROWc$(ROWco eq 1)=(1+ROWc)*0.95-1;

* =============================================================================
);
* close the main loop
*A: CHange to Ltype

outLab(cnt,sec,step,ltype)$(sum((ed,sex)$lmap(ed,sex,ltype), 1)) = sum((ed,sex)$lmap(ed,sex,ltype), REP_LabourTYPE.L(cnt,sec,ed,sex));
* for old sectors
outAct(cnt,sec,step)$(XDZ(cnt,sec))=XD.L(cnt,sec)*XDZ(cnt,sec);
* for new sectors
outAct(cnt,sec,step)$(XDZ(cnt,sec)=0)=XD.L(cnt,sec);
outPrice(cnt,com,step)=P.L(cnt,com)/CPI(cnt,step);
outWages(cnt,sec,step)=PWage.L(cnt,sec)/CPI(cnt,step);
outKap(cnt,step)=RKC.L(cnt)/CPI(cnt,step);
PriceIndex(cnt,step)=CPI(cnt,step);

dbg(cnt,'gdp_p',step)     = gdp_p(cnt);
dbg(cnt,'Kap/Kap0',step)  = Kap(cnt)/KSZ(cnt)*ror(cnt);
dbg(cnt,'II/ITZ',step)    = II.l(cnt)/ITZ(cnt);
dbg(cnt,'KENDOW_tot',step)= sum(hh,KENDOW(cnt,hh));
dbg(cnt,'LEND_tot',step)  = sum((hh,ed,sex),LENDOW(cnt,hh,ed,sex));
dbg(cnt,'AOGR_tot',step)  = sum(hh,AOGR(cnt,hh));

);

execute_unload 'dbg.gdx' dbg;

parameter qKLEM(*,cnt,sec,step) quantities aggregated by type of input;
parameter pKLEM(*,cnt,sec,step) prices aggregated by type of input;
parameter fKLEM(*,cnt,sec,step) flows aggregated by type of input;

qKLEM('K',cnt,sec,step)=Quantity(cnt,"Capital",sec,step);
*Change to ltype
qKLEM('L',cnt,sec,step)=sum(ltype,Quantity(cnt,ltype,sec,step));
qKLEM(ltype,cnt,sec,step)=Quantity(cnt,ltype,sec,step);
qKLEM('E',cnt,sec,step)=sum(energy,Quantity(cnt,energy,sec,step));
qKLEM('M',cnt,sec,step)=sum(materials,Quantity(cnt,materials,sec,step));


pKLEM('K',cnt,sec,step)=SAMout(cnt,"Capital",sec,step)/Quantity(cnt,"Capital",sec,step);
pKLEM('L',cnt,sec,step)=sum(ltype,SAMout(cnt,ltype,sec,step))/sum(ltype,Quantity(cnt,ltype,sec,step));
pKLEM(ltype,cnt,sec,step)=SAMout(cnt,ltype,sec,step)/Quantity(cnt,ltype,sec,step);
pKLEM('E',cnt,sec,step)=sum(energy,SAMout(cnt,energy,sec,step))/sum(energy,Quantity(cnt,energy,sec,step));
pKLEM('M',cnt,sec,step)=sum(materials,SAMout(cnt,materials,sec,step))/sum(materials,Quantity(cnt,materials,sec,step));

fKLEM('K',cnt,sec,step)=SAMout(cnt,"Capital",sec,step);
*A: Add ltype
fKLEM('L',cnt,sec,step)=sum(ltype,SAMout(cnt,ltype,sec,step));
fKLEM(ltype,cnt,sec,step)=SAMout(cnt,ltype,sec,step);
fKLEM('E',cnt,sec,step)=sum(energy,SAMout(cnt,energy,sec,step));
fKLEM('M',cnt,sec,step)=sum(materials,SAMout(cnt,materials,sec,step));


parameter EneDemM(cnt,step) monetary energy expenditure;
EneDemM(cnt,step)=ElPrice(cnt,step)*(sum(sec,EneDem(cnt,sec,step))+EneDem(cnt,"CONS",step));

EneDem(cnt,sec,step)$(EneDem(cnt,sec,"2"))=EneDem(cnt,sec,step)/EneDem(cnt,sec,"2");
EneDem(cnt,"CONS",step)$EneDem(cnt,"CONS","2")=EneDem(cnt,"CONS",step)/EneDem(cnt,"CONS","2");
EneDemTot(cnt,step)=EneDemTot(cnt,step)/EneDemTot(cnt,"3");
ElPrice(cnt,step)$(ElPrice(cnt,"2"))=ElPrice(cnt,step)/ElPrice(cnt,"2");

parameter EneDemP(cnt,*,step),EneDemTotP(cnt,step),ElPriceP(cnt,step);
EneDemP(cnt,sec,step)$(EneDem(cnt,sec,"2"))=(EneDem(cnt,sec,step)-1)*100;
EneDemP(cnt,"CONS",step)$(EneDem(cnt,"CONS","2"))=(EneDem(cnt,"CONS",step)-1)*100;
EneDemTotP(cnt,step)$(EneDemTot(cnt,"2"))=(EneDemTot(cnt,step)-1)*100;
ElPriceP(cnt,step)$(ElPrice(cnt,"2"))=(ElPrice(cnt,step)-1)*100;

DISPLAY PWage.L;

parameter PriceOut(cnt,com,step),LabPriceOut(cnt,step,ltype),CapPriceOut(cnt,step);
PriceOut(cnt,com,step)=smax(sec,PPP(cnt,com,sec,step))/smax(sec,PPP(cnt,com,sec,'2'));
*A: See what we do so that price for all labor is the same?
LabPriceOut(cnt,step,ltype)=smax(sec,PPP(cnt,ltype,sec,step))/smax(sec,PPP(cnt,ltype,sec,'2'));
CapPriceOut(cnt,step)=smax(sec,PPP(cnt,"Capital",sec,step))/smax(sec,PPP(cnt,"Capital",sec,'2'));

*=====================Report any variables desired ============

* Normalize CO2 price to second period (2012)
*PriceCO2(step)=PriceCO2(step)/PriceCO2("2");
ElPrice(cnt,step)=ElPrice(cnt,step)/ElPrice(cnt,"2");
demand(cnt,sec,com,step)$(demand(cnt,sec,com,"2") and not sameas('iH2S',sec) and not sameas('iH2C',sec) and not sameas('iH2E',sec))=demand(cnt,sec,com,step)/demand(cnt,sec,com,"2");
demand(cnt,'iH2S',com,step)=demand(cnt,'iH2S',com,step);
demand(cnt,'iH2C',com,step)=demand(cnt,'iH2C',com,step);
demand(cnt,'iH2E',com,step)=demand(cnt,'iH2E',com,step);
*A: Add households
demand(cnt,hh,com,step)$demand(cnt,hh,com,"2")=demand(cnt,hh,com,step)/demand(cnt,hh,com,"2");
demand(cnt,"GOVT",com,step)$demand(cnt,"GOVT",com,"2")=demand(cnt,"GOVT",com,step)/demand(cnt,"GOVT",com,"2");
demand(cnt,"INVB",com,step)$demand(cnt,"INVB",com,"2")=demand(cnt,"INVB",com,step)/demand(cnt,"INVB",com,"2");
demand(cnt,"Exports",com,step)$demand(cnt,"Exports",com,"2")=demand(cnt,"Exports",com,step)/demand(cnt,"Exports",com,"2");
demand(cnt,"stocks",com,step)$demand(cnt,"stocks",com,"2")=demand(cnt,"stocks",com,step)/demand(cnt,"stocks",com,"2");

* percentage change from period 2
*cdem(cnt,com,step)$(cdem(cnt,com,"2"))=cdem(cnt,com,step)/cdem(cnt,com,"2");

Parameter SectorGrowth(cnt,sec,step);
SectorGrowth(cnt,sec,"1")$(sum(com,SAM(cnt,sec,com)))=sum(com,SAMout(cnt,sec,com,"1"))/sum(com,SAM(cnt,sec,com))-1;
SectorGrowth(cnt,sec,step)$(ord(step) gt 1 and sum(com,SAMout(cnt,sec,com,step-1)) gt 0 and ord(step) le STEPS and sum(com,SAM(cnt,sec,com)))=sum(com,SAMout(cnt,sec,com,step))/sum(com,SAMout(cnt,sec,com,step-1))-1;

GDPout(cnt,step)=GDPout(cnt,step);


*execute_unload "REMES2GeneSys.gdx" EneDem,demand,PriceCO2,FuelPrice,SectorGrowth,EneDemTWh;

*display R_GDP, R_P_OIL;
parameter changeTech(cnt,com,sec);
changeTech(cnt,com,sec)=R_P_XD.L(cnt, sec, com)/IOZ(cnt,com,sec);

*execute_unload "checkXDDZ", XDDZ,REP_SEC_OUT.l;


display IZ;
*execute_unload "Results_.gdx" UNEMPLOYMENT,IOanalysis,Pco2.l,EneDem,ElPrice,PriceCO2,FFdem,EEdem,demand,cdem,SAM,SAMout,QQQ,PPP,Quantity,VA,gdp,GDPout,GDPtest,PU.l;
*execute_unload "Sectoral_structure.gdx" XDDZ, taxpz, IOZ, Pathway_adj, taxcz, LZ, Pathway_adj_cap, KZ, pathway_total, INVZ;

*execute_unload "counterfactuals.gdx" Pathway_adj,Pathway_adj_cap, KZ, Pathway_total,tfp,AOGR,OGR,ACR,CR,ANGR,NGR,ALR,LR,KSZ,KSZ0,growth_p,LSZ0,CO2B;

parameter price(cnt,com,sec);
price(cnt,com,sec)=(IOZ(cnt,com,sec)*(1+taxcz(cnt,com)));
display price;


parameter testCO(cnt,com,sec);
testCO(cnt,com,sec)=0;
testCO(cnt,com,sec)$(PID(com) = 1 and CO2P(cnt,com,sec) and FF(com)=1 and CO2B(cnt))=1


*execute_unload "capital&invest.gdx" Kap, Capital, Investments, II.l;



*################# OUTPUT IN IIASA FORMAT ######################
$ontext
parameter initalEnergy(cnt) total consumption in EJ in 2010 /
AT        1507800
BE        2772000
BG        747600
CY        77593
CZ        1797600
DE        13595400
DK        819000
EE        234965
ES        6140400
FI        1297800
FR        10634400
GR        1323000
HU        1045800
IE        638400
IT        7232400
LT        235200
LU        175020
LV        186984
MT        34797
NL        4036200
PL        4124400
PT        1075200
RO        1419600
SE        2188200
SI        309506
SK        730800
GB        8841000
CH        1205400
NO        1759800
/;
$offtext

*data from Genesys-Mod input files (external share files)
parameter initalEnergy(cnt) total consumption in EJ in 2015 /
AT        0.03404676
BE        0.035619157
BG        0.016812262
CY        0.005
CZ        0.028219254
DE        0.220972355
DK        0.014283732
EE        0.005339188
ES        0.148829094
FI        0.060185507
FR        0.283266301
GR        0.032590675
HU        0.021487256
IE        0.013399807
IT        0.183377262
LT        0.005900408
LU        0.005728847
LV        0.004759128
MT        0.005
NL        0.039075664
PL        0.065141595
PT        0.024279845
RO        0.019243935
SE        0.064723738
SI        0.007728384
SK        0.01054307
GB        0.043981143
CH        0.013390213
NO        0.007045151
/;


scalar meanER2010 /1.33/;
scalar kWh2Gj /0.0036/;
* https://ec.europa.eu/eurostat/statistics-explained/index.php?title=File:Half-yearly_electricity_and_gas_prices_-_including_taxes_(EUR).png
parameter elp0(cnt) electricity price in 2010 in euro per kWh
/
AT        0.18
BE        0.20
BG        0.08
CY        0.13
CZ        0.13
DE        0.24
DK        0.27
EE        0.08
ES        0.16
FI        0.16
FR        0.12
GR        0.12
HU        0.15
IE        0.18
IT        0.21
LT        0.12
LU        0.17
LV        0.08
MT        0.17
NL        0.17
PL        0.13
PT        0.16
RO        0.10
SE        0.18
SI        0.14
SK        0.15
GB        0.14
CH        0.21
NO        0.20
/;


Acronym
Austria
Belgium
Bulgaria
Cyprus
CzechRepublic
Germany
Denmark
Estonia
Spain
Finland
France
Greece
Hungary
Ireland
Italy
Lithuania
Luxembourg
Latvia
Malta
TheNetherlands
Poland
Portugal
Romania
Sweden
Slovenia
Slovakia
UnitedKingdom
Switzerland
Norway;

parameter country(cnt) /
AT Austria
BE Belgium
BG Bulgaria
CY Cyprus
CZ CzechRepublic
DE Germany
DK Denmark
EE Estonia
ES Spain
FI Finland
FR France
GR Greece
HU Hungary
IE Ireland
IT Italy
LT Lithuania
LU Luxembourg
LV Latvia
MT Malta
NL TheNetherlands
PL Poland
PT Portugal
RO Romania
SE Sweden
SI Slovenia
SK Slovakia
GB UnitedKingdom
CH Switzerland
NO Norway
/;



display country;

parameter eneConsum(cnt,step);
eneConsum(cnt,step)= initalEnergy(cnt)*EneDemTot(cnt,step);

parameter elpriceP1(cnt,step);
* el price in Gj USD2010
elp0(cnt)=elp0(cnt)/kWh2Gj;
*meanER2010;
ElPriceP1(cnt,step)=elp0(cnt)*(1+ElPriceP(cnt,step)/100);
*set 2020 as base year with price 30
* a little adjusting is needed because our data starts in 2007
* and if we set 2020 as first period with fixed price at 30 we end up having
* a final CO2 price in 2050 higher in case with carbon intensity than
* in case without. Considering our data starting in 2007 we use 2007
* as base period for all the cases, then we overwrite the data for the
* first four period and then we make sure that the remaining periods do
* not exceed 30, which is the price reported for 2020.
PriceCO2(step)=PriceCO2(step)/PriceCO2("1");
CO2pr(cnt,step)=CO2pr(cnt,step)/CO2pr(cnt,"1");
*PriceCO2(step)$(PriceCO2(step) lt 30) = 30;
*PriceCO2("1")=1;
*PriceCO2("2")=10;
*PriceCO2("3")=15;
*PriceCO2("4")=30;

* if production >0 and imports>exports --> percIMP=(imports-exports)/production
parameter IntConsDom(cnt,com) internal cosumption of domestic production;
parameter percDOM(cnt,com,step),percIMP(cnt,com,step) percentuals of domestic and imported per commodity;
IntConsDom(cnt,com)=PDD.L(cnt,com)*DPDM.L(cnt,com);
percIMP(cnt,com,step)=0;
percIMP(cnt,com,step)$(IntConsDom(cnt,com))=SAMout(cnt,"trade",com,step)/(SAMout(cnt,"trade",com,step)+IntConsDom(cnt,com));
percDOM(cnt,com,step)= 1-percIMP(cnt,com,step);

display percIMP,percDOM;

* set price 30 in 2020 and convert to USD
*PriceCO2(step)=PriceCO2(step)*30*meanER2010;


* Convert monetary values in Billion USD2010
GDPout(cnt,step)=GDPout(cnt, step);
*meanER2010/1000;
EneDemM(cnt,step)=EneDemM(cnt,step);
*meanER2010/1000;

*=================== CONVERSIONS =========================
* Convert SAM into Billion Euros 2020
*SAMout(cnt,*,*,step)=1/1000*PriceIndex(cnt,'4')*SAMout(cnt,*,*,step);


* output for openENTRANCE platform
File remesoe2 /REMESOE2.csv/;
remesoe2.tf=0;
put remesoe2;
put 'model,scenario,region,variable,unit,subannual,2010,2015,2020,2025,2030,2035,2040,2045,2050', put /;

$ifthen %CaseStudy%==9

loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com$mapc2(com,comout),PriceOut(cnt,com,step))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step)))))) put /;





loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step))))))) put /;


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step)))))) put /;


*$ontext
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"INV",step)))))) put /;


*$offtext

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step))))) put /;



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))) put /;);


loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))) put /;);



loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))) put /;);


* tricky
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3",step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);

*loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);

*put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Consumption,billion EUR_2020/yr,Year',
*loop(step$(ord(step) gt 1), put',', put sum(cnt,EneDemM(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Final Energy|Electricity,EJ/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,eneConsum(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
loop(step$(ord(step) gt 1), put',', put (sum(cnt,ElPriceP1(cnt,step)*eneConsum(cnt,step))/sum(cnt,eneConsum(cnt,step))) ) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',GDP|PPP,billion EUR_2020/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,GDPout(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Carbon,EUR_2020/t CO2,Year',
loop(step$(ord(step) gt 1), put',', put PriceCO2(step)) put /;
$endif


$ifthen %CaseStudy%==10

loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com$mapc2(com,comout),PriceOut(cnt,com,step))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step)))))) put /;





loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step))))))) put /;


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step)))))) put /;


*$ontext
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"INV",step)))))) put /;


*$offtext

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step))))) put /;



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))) put /;);


loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))) put /;);



loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))) put /;);


* tricky
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3",step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);

*loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);

*put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Consumption,billion EUR_2020/yr,Year',
*loop(step$(ord(step) gt 1), put',', put sum(cnt,EneDemM(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Final Energy|Electricity,EJ/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,eneConsum(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
loop(step$(ord(step) gt 1), put',', put (sum(cnt,ElPriceP1(cnt,step)*eneConsum(cnt,step))/sum(cnt,eneConsum(cnt,step))) ) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',GDP|PPP,billion EUR_2020/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,GDPout(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Carbon,EUR_2020/t CO2,Year',
loop(step$(ord(step) gt 1), put',', put PriceCO2(step)) put /;
$endif


$ifthen %CaseStudy%==11

loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com$mapc2(com,comout),PriceOut(cnt,com,step))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Product Price Index|', put comout.tl, put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put sum(com$mapc2(com,comout),PriceOut(cnt,com,step)))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com,sum(hh,SAMout(cnt,com,hh,step))+SAMout(cnt,com,"GOVT",step)+SAMout(cnt,com,"INV",step)+sum(sec,SAMout(cnt,com,sec,step)))))) put /;





loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step)))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,sum(hh,SAMout(cnt,com,hh,step))))))) put /;


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step))))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"GOVT",step)))))) put /;


*$ontext
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(com,SAMout(cnt,com,"INV",step))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com,SAMout(cnt,com,"INV",step)))))) put /;


*$offtext

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step)))) put /;);
*europe
put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((com,sec),SAMout(cnt,com,sec,step))))) put /;



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Households|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*sum(hh,SAMout(cnt,com,hh,step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step)))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Government|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"GOVT",step))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Gross Capital Formation|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum(com$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,"INV",step)))))) put /;);



loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Domestic,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percDOM(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step))))) put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Consumption|Industry|', put comout.tl, put '|Imported,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*(sum((com,sec)$mapc2(com,comout),percIMP(cnt,com,step)*SAMout(cnt,com,sec,step)))))) put /;);


loop((cnt,comout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,comout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,comout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(comout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Product|', put comout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$mapc2(com,comout),SAMout(cnt,sec,com,step))))) put /;);


loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Output|Industry|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,sec,com,step))))) put /;);



loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step)))) put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))  put /;);
*europe
loop(secout,put 'REMES:EU 1.0,Reference,', put "Europe", put ',Capital|', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  sum(cnt,(1/1000*PriceIndex(cnt,'4')*sum((sec,com)$maps2(sec,secout),SAMout(cnt,"Capital",sec,step))))) put /;);


* tricky
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3",step))))  put /;);
loop((cnt,secout)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3",step))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Low Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E1","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|Medium Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E2","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Male', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_M_E3","1"))))  put /;);
loop((cnt,secout)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor|High Skill|Female', put secout.tl, put ',billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*sum((sec,com,hh)$maps2(sec,secout),SAMout(cnt,hh,"L_F_E3","1"))))  put /;);



loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Capital Price Index|', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put CapPriceOut(cnt,step))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Low Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E1"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|Medium Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E2"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Male', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_M_E3"))  put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Labor Price Index|High Skill|Female', put ',index,Year',
         loop(step$(ord(step) gt 1), put',', put LabPriceOut(cnt,step,"L_F_E3"))  put /;);


loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Final Energy|Electricity,EJ/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  eneConsum(cnt,step)) put /;);

*loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);
*loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
*         loop(step$(ord(step) gt 1), put',', put  ElPriceP1(cnt,step)) put /;);

loop((cnt)$(not (sameas(cnt,'CZ') or sameas(cnt,'GB') or sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put country(cnt), put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'CZ'))), put 'REMES:EU 1.0,Reference,', put 'Czech Republic', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'GB'))), put 'REMES:EU 1.0,Reference,', put 'United Kingdom', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);
loop((cnt)$((sameas(cnt,'NL'))), put 'REMES:EU 1.0,Reference,', put 'The Netherlands', put ',GDP|PPP,billion EUR_2020/yr,Year',
         loop(step$(ord(step) gt 1), put',', put  (1/1000*PriceIndex(cnt,'4')*GDPout(cnt,step))) put /;);

*put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Consumption,billion EUR_2020/yr,Year',
*loop(step$(ord(step) gt 1), put',', put sum(cnt,EneDemM(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Final Energy|Electricity,EJ/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,eneConsum(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Final Energy|Residential|Electricity,USD_2010/GJ,Year',
loop(step$(ord(step) gt 1), put',', put (sum(cnt,ElPriceP1(cnt,step)*eneConsum(cnt,step))/sum(cnt,eneConsum(cnt,step))) ) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',GDP|PPP,billion EUR_2020/yr,Year',
loop(step$(ord(step) gt 1), put',', put sum(cnt,GDPout(cnt,step))) put /;

put 'REMES:EU 1.0,Reference,', put 'Europe', put ',Price|Carbon,EUR_2020/t CO2,Year',
loop(step$(ord(step) gt 1), put',', put PriceCO2(step)) put /;
$endif




putclose remesoe2;

parameter testgrow(cnt);
testgrow(cnt)=(sum(hh,AOGR(cnt,hh)+ANGR(cnt,hh))/(OGR(cnt)+NGR(cnt)));
display testgrow;

parameter apptc(cnt,com),apptp(cnt,sec),TOGR(cnt),TCR(cnt),TNGR(cnt),TLR(cnt);
apptp(cnt,sec)=taxp(cnt,sec)-taxpz(cnt,sec);
apptc(cnt,com)=taxc(cnt,com)-taxcz(cnt,com);
TOGR(cnt)=OGR(cnt)-sum(hh,AOGR(cnt,hh));
TCR(cnt)=CR(cnt)-sum(hh,ACR(cnt,hh));
TNGR(cnt)=NGR(cnt)-sum(hh,ANGR(cnt,hh));
LR(cnt)=LR(cnt)-sum(hh,ALR(cnt,hh));

parameter TotCons(cnt,step);
*A: Add sum over house
TotCons(cnt,step)=sum(com,sum(hh,Quantity(cnt,com,hh,step)))/sum(com,sum(hh,Quantity(cnt,com,hh,'3')));

execute_unload 'applied counterfactuals.gdx' PRC,apptc,apptp,pathway_adj,prdR,InputCom,TOGR,TCR,TNGR,gdp_p,grow,GG,growth_lf,eint,cint,Pathway_adj_cap,KZ,open,CO2B;

execute_unload 'TestTNO' outAct,CO2Pr,gdptest,TotCons,PriceIndex,outLab,outPrice,outWages,outKap,gdp,PriceCO2;

execute_unload "shocks.gdx"
* --- Pathway adjustments (Q fields in $PROD blocks) ---
         Pathway_adj, Pathway_adj_cap, Pathway_total, Pathway_adj_TRADE, Pathway_adj_TRADEMARGIN, Pathway_adj_ROW,
* --- Productivity / growth (Q and P fields) ---
         gdp_p, growth_p, PRC, Rp, GG, CPD,
* --- Energy & carbon intensities (Q and P fields) ---
         eint, eintFC, eintHH, cint,
* --- CO2 system (PCO2 rows and endowment) ---
         CO2r, CO2P, CO2H, CO2G, CO2I, CO2B,
* --- Taxes / tariffs / elasticities / openness ---
         ty, taxc, taxcz, taxp, taxpz, tfp, elasM, open,
* --- Rest-of-world (EXPORT block) ---
         ROWgt, ROWc,
* --- Capital Labour (E: rows in $DEMAND) ---
         LENDOW, KENDOW,
* --- Taxes
         apptc,apptp,
* --- Endowments (E: rows in $DEMAND) ---
         TOGR,TCR,TNGR,TLR,
* --- Hydrogen input coefficients ---
         InputCom;

* Final output
execute_unload "outputREMES.gdx" outAct,GDPout,VA,UNEMPLOYMENT,IOanalysis,SAM,SAMout,PPP,Quantity,PriceCO2,gdptest,gdp,EEdem,qKLEM,pKLEM,fKLEM,EUIMP,EUEXP,KPI_Inc,KPI_EA,KPI_WG_Gender,KPI_WG_Ed1, KPI_WG_Ed2,KPI_Gini,KPI_GiniC,KPI_GiniC2,CISh,Rank,CPSh,TrHoG,TrHoT;



PARAMETER Gout(step),OIVa(secout,step),OIVo(secout,step),OEVa(comout,step),OEVo(comout,step),OEnVa(comout,step),OEnVo(comout,step),Emis(step);
Gout(step)=sum(cnt$(EU27(cnt)),GDPout(cnt,step));
OIVo(secout,step)=sum((cnt,com,sec)$(maps2(sec,secout) and EU27(cnt)),Quantity(cnt,sec,com,step));
OIVa(secout,step)=sum((cnt,com,sec)$(maps2(sec,secout) and EU27(cnt)),SAMout(cnt,sec,com,step));
OEVo(comout,step)$sameas(comout,"pELEC")=sum((cnt,com,sec)$(mapc2(com,comout) and EU27(cnt)),Quantity(cnt,sec,com,step));
OEVa(comout,step)$sameas(comout,"pELEC")=sum((cnt,com,sec)$(mapc2(com,comout) and EU27(cnt)),SAMout(cnt,sec,com,step));
OEnVo(comout,step)$(ENC(comout) eq 1)=sum((cnt,com,sec)$(mapc2(com,comout) and EU27(cnt)),Quantity(cnt,sec,com,step));
OEnVa(comout,step)$(ENC(comout) eq 1)=sum((cnt,com,sec)$(mapc2(com,comout) and EU27(cnt)),SAMout(cnt,sec,com,step));
*A: Add sum over hh
Emis(step)=sum(cnt$(EU27(cnt)),sum(sec,EEdem(cnt,sec,step))+sum(hh,EEdem(cnt,hh,step))+EEdem(cnt,"GOVT",step)+EEdem(cnt,"INV",step)+EEdem(cnt,"tmarg",step));


parameter
KPI_E overall electricity demand change,
KPI_O oil demand change,
KPI_G gas demand change,
KPI_Coa coal demand change,
KPI_Bio biofuels demand change,
KPI_Ful fuels demand change,
KPI_Dsl diesel demand change,
KPI_Gsl gasoline demand change,
KPI_H2E Hydrogen 2 Electricity ratio in 2050,
KPI_GDP overall gdp change,
KPI_Cons Consumption of manufactory in 2050;
KPI_E=OEVo("pELEC",'10')/OEVo("pELEC",'4');
KPI_O=OEnVo("pOIL",'10')/OEnVo("pOIL",'4');
KPI_G=OEnVo("pNG",'10')/OEnVo("pNG",'4');
KPI_Coa=OEnVo("pNG",'10')/OEnVo("pNG",'4');
KPI_Bio=OEnVo("pBIO",'10')/OEnVo("pBIO",'4');
KPI_Ful=OEnVo("pFUL",'10')/OEnVo("pFUL",'4');
KPI_Dsl=OEnVo("pDSL",'10')/OEnVo("pDSL",'4');
KPI_Gsl=OEnVo("pGSL",'10')/OEnVo("pGSL",'4');
KPI_H2E=OEVo("pELEC",'10')/OEnVo("pH2",'10');
KPI_GDP=Gout('10')/Gout('4');
*Add sum over households
KPI_Cons=sum(cnt,sum(hh,Quantity(cnt,'pIND',hh,'10')))+sum(cnt,Quantity(cnt,'pIND',"GOVT",'10'));



*Total income per Household


execute_unload "compareREMESEXIOMOD.gdx" Gout,OIVo,OIVa,OEVo,OEVa,OEnVo,OEnVa,PriceCO2,Emis,KPI_Inc,KPI_EA,KPI_WG_Gender,KPI_WG_Ed1, KPI_WG_Ed2,KPI_Gini;

execute_unload "KPIs.gdx"  KPI_E,KPI_O,KPI_G,KPI_Coa,KPI_Bio,KPI_Ful,KPI_Dsl,KPI_Gsl,KPI_H2E,KPI_GDP,cint,KPI_Cons;

parameter EO,IO EO benckmarked with the sum of EROWZ (T1) and IO with the sum of MROWZ (T2);
EO=sum((cnt,com),REP_EXPOUT.l(cnt,com));
IO=sum((cnt,com),REP_IMPOUT.l(cnt,com));

execute_unload "ERprob.gdx" REP_EXPOUT, REP_IMPOUT, EO, IO, T1, T2;
