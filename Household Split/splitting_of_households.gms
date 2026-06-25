* =======================
* SETS
* =======================
* External sector categories
set esec / B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S /;
* External consumption categories COICOP
set ecom / CP01,CP02,CP03,CP04,CP05,CP06,CP07,CP08,CP09,CP10,CP11,CP12 /;
* Sex categories for household splitting
set sex   / male, female /;
* Educational attainment categories for household splitting
set skill / ED1, ED2, ED3 /;
* Income quintiles
set qtl / Q1, Q2, Q3, Q4, Q5 /;
alias (qtl,qq);
* Country codes
set cnt / AT, BE, BG, CH, CY, CZ, DE, DK, EE, ES, FI, FR, GB, GR, HU, IE, IT, LT, LU, LV, MT, NL, NO, PL, PT, RO, SE, SI, SK /;

* =======================
* CAPITAL SHARES (HEADERS)
* =======================
* total capital per country and quintile
parameter tcap(cnt,qtl);
* share of capital by quintile within each country
parameter scap(cnt,qtl);

* =======================
* INCOME MICRODATA
* =======================
* income by country x sector x sex x skill
parameter inc(cnt, esec, sex, skill);
* total income by country x quintile
parameter tinc(cnt,qtl);

* read income microdata and quintile aggregates
*$call gdxxrw income_data_new.xlsx par=inc  rng=GAMSdata!A2:E3565 rdim=4 cdim=0 par=tinc rng=GAMSdatatotal!A2:F35 rdim=1 cdim=1 o=income_data_new.gdx
$call gdxxrw LabourMapping.xlsx par=inc  rng=GAMSdata!A2:E3565 rdim=4 cdim=0 par=tinc rng=GAMSdatatotal!A2:F31 rdim=1 cdim=1 o=income_data_new.gdx
$gdxin income_data_new.gdx
$load inc
$load tinc
$gdxin
parameter sinc(cnt,qtl);
|sinc(cnt,qtl) = tinc(cnt,qtl) / sum(qq, tinc(cnt,qq));


* =======================
* CONSUMPTION MICRODATA
* =======================
* consumption by country x commodity x quintile
parameter con(cnt, ecom, qtl);
* read consumption per country x commodity x quintile
$call gdxxrw.exe consumption_data.xlsx par=con rng=GAMSdata!A1:G349 rdim=2 cdim=1 o=consumption_data.gdx trace=3
$gdxin consumption_data.gdx
$load con
$gdxin

* =======================
* NORMALIZED CONSUMPTION SHARES
* =======================
* small number for denominator guards
scalar tiny /1e-12/;
* total consumption for normalization by country x quintile
parameter con_denom(cnt,qtl);
* normalized consumption share
parameter conshr(cnt,ecom,qtl);
* sum of consumption shares across quintiles
parameter sumConshr(cnt,ecom);
* further normalized share
parameter conshrN(cnt,ecom,qtl);


con_denom(cnt,qtl) = sum(ecom, con(cnt,ecom,qtl));

conshr(cnt,ecom,qtl) = 0;
conshr(cnt,ecom,qtl)$ (con_denom(cnt,qtl) > 0) = con(cnt,ecom,qtl) / con_denom(cnt,qtl);
conshr(cnt,ecom,qtl)$ (con_denom(cnt,qtl) = 0) = sinc(cnt,qtl);

sumConshr(cnt,ecom) = sum(qq, conshr(cnt,ecom,qq));

* if an ecom has zero mass across all Q, fall back to sinc
conshrN(cnt,ecom,qtl) = conshr(cnt,ecom,qtl) / sumConshr(cnt,ecom);



* =======================
* CAPITAL BY QUINTIL TO SCAP
* =======================
* raw capital microdata per country x quintile
parameter scap(cnt,qtl);
* load capraw
$call gdxxrw.exe capital_data.xlsx par=scap rng=GAMSdata!A1:F35 rDim=1 cDim=1 o=capital_data.gdx
$gdxin capital_data.gdx
$load scap
$gdxin

* =======================
* BINARY MAPPING (DEMOGRAPHICS TO QUINTILE)
* =======================
* Maps each household to quintile group
parameter I(cnt,esec,sex,skill,qtl);
* load mapping
*$call gdxxrw binarymapping.xlsx par=I rng=GAMSdata!A1:I3565 rDim=4 cDim=1 o=binarymapping.gdx
$call gdxxrw LabourMapping.xlsx par=I rng=BinaryMapping!A1:I3565 rDim=4 cDim=1 o=binarymapping.gdx
$gdxin binarymapping.gdx
$load I
$gdxin

* =======================
* SAM + MODEL SETS
* =======================
* Sets describing SAM regions, sectors, commodities
set
  samr(*) /
    HOUS, GOVT, INV, STOCKS, Labour, Capital, tax_com, tax_sec, tmarg, Trade
  /,
  samd(*) /
    HOUS, GOVT, INV, STOCKS, Labour, Capital, tax_com, tax_sec, tmarg, Trade
  /,
  cnt0(*)
  com0(*)
  sec0(*)
  com(*)
  sec(*)
;

* LOAD SAM TABLE
$gdxin EuroSAM15.gdx
$load cnt0=cnt, com0=com, sec0=sec
$gdxin
alias (cnt,c), (sec,s), (com,g);
samr(com0) = yes;
samr(sec0) = yes;
alias (samr,samrr);

parameter SAMt(cnt,*,*);
$gdxin EuroSAM15.gdx
$load SAMt = SAM
$gdxin

* =======================
* MAPPINGS BETWEEN SAM AND EXTERNAL
* =======================
* Mapping for sector allignment
set mps_all(*,*) /
AAGR.C, COAL.B, COIL.B, IMIN.B, IRES.C, IALA.B, POWF.D, POWR.D, POWT.D, NG.D, LTH.D, COTH.E, CCON.F, CWSR.G, COFF.L, C_TRAI.H, C_TLND.H, C_TPIP.H, C_TWAS.H, C_TWAI.H, C_TAIR.H, CHEA.Q, Waste.E, BIO.E

/;
set mps(sec0,esec); mps(sec0,esec) = yes$ mps_all(sec0,esec);

* Mapping for commodity allignment
set mpc_all(*,*) /
 C-AAGR.CP01, C-IMIN.CP04, C-IRES.CP01, C-NG.CP04, C-BIO.CP04, C-POWF.CP04, C-POWR.CP04, C-POWT.CP04, C-LTH.CP04, C-COTH.CP05, C-CCON.CP04, C-CWSR.CP07, C-COFF.CP11, C-C_TRAI.CP07, C-C_TLND.CP07, C-C_TPIP.CP07, C-CHEA.CP06, C-Waste.CP04, C-COAL.CP04, C-CRUDE-OIL.CP04, C-GASE.CP04, C-OIL-GSL.CP04, C-OIL-JET.CP04, C-OIL-KER.CP04, C-OIL-DSL.CP04, C-OIL-HDI.CP04, C-OIL-LDSF.CP04, C-IMEA.CP04, C-C_TWAS.CP07, C-C_TWAI.CP07, C-C_TAIR.CP07, C-COIL.CP04
/;
set mpc(com0,ecom); mpc(com0,ecom) = yes$ mpc_all(com0,ecom);

* =======================
* SAM-DERIVED MACROS
* =======================
* Trade
parameter TRHROWZ(cnt);
* SAM total household consumption by commodity and country
parameter Hcons(cnt,com0);
* SAM total wage by commodity and country
parameter Hwage(cnt,sec0);
* SAM sectoral capital flows
parameter Hcap(cnt,sec0);
* Inventory
parameter TRHINV(cnt);

Hcons(cnt,com0)= SAMt(cnt,com0,'HOUS');
Hwage(cnt,sec0)= SAMt(cnt,'Labour',sec0);
Hcap(cnt,sec0) = SAMt(cnt,'Capital',sec0);


TRHROWZ(cnt)   = SAMt(cnt,'HOUS','Trade') - SAMt(cnt,'Trade','HOUS');
TRHINV(cnt) = SAMt(cnt,'HOUS','INV') - SAMt(cnt,'INV','HOUS');


* =======================
* MICRO WAGE SHARES
* =======================
scalar tol /1e-12/;
parameter inc_sec0(cnt,sec0,sex,skill);
parameter betaden(cnt,sec0);
parameter betadisp(cnt,sec0,sex,skill);
parameter den_esec(cnt,sec0,sex,skill);
parameter esec_count(cnt,sec0,sex,skill);
parameter theta(cnt,sec0,esec,sex,skill);
parameter Ieff(cnt,sec0,sex,skill,qtl);

inc_sec0(cnt,sec0,sex,skill) = sum(esec$mps(sec0,esec), inc(cnt,esec,sex,skill));
betaden(cnt,sec0) = sum((sex,skill), inc_sec0(cnt,sec0,sex,skill));
betadisp(cnt,sec0,sex,skill) = 0;
betadisp(cnt,sec0,sex,skill)$ (betaden(cnt,sec0) > 0) = inc_sec0(cnt,sec0,sex,skill) / betaden(cnt,sec0);
betadisp(cnt,sec0,sex,skill)$ (betaden(cnt,sec0) = 0) = 1/card(sex)/card(skill);

den_esec(cnt,sec0,sex,skill)   = sum(esec$mps(sec0,esec), inc(cnt,esec,sex,skill));
esec_count(cnt,sec0,sex,skill) = sum(esec$mps(sec0,esec), 1);
theta(cnt,sec0,esec,sex,skill) = 0;
theta(cnt,sec0,esec,sex,skill)$ ( mps(sec0,esec) and den_esec(cnt,sec0,sex,skill) >  tol) =
     inc(cnt,esec,sex,skill) / den_esec(cnt,sec0,sex,skill);
theta(cnt,sec0,esec,sex,skill)$ ( mps(sec0,esec) and den_esec(cnt,sec0,sex,skill) <= tol
                                  and esec_count(cnt,sec0,sex,skill) > 0 ) =
     1 / esec_count(cnt,sec0,sex,skill);
Ieff(cnt,sec0,sex,skill,qtl) = sum(esec$mps(sec0,esec), theta(cnt,sec0,esec,sex,skill) * I(cnt,esec,sex,skill,qtl));

* =======================
* VARIABLES
* =======================
variable tz, zw(cnt,sec0,sex,skill), zr(cnt,qtl), zc(cnt,ecom,com0,qtl), Ht(cnt,qtl), Wg(cnt,sec0,qtl), Rp(cnt,sec0,qtl);
positive variable Hc(cnt,com0,qtl), W(cnt,sec0,sex,skill), R(cnt,sec0,sex,skill),Hi(cnt,qtl);

* =======================
* EQUATIONS
* =======================
equations
  obj
  cons_per_good(cnt,com0)
  IncConsBal(cnt,qtl)
  Tot_transf_Inv(cnt)
  Tot_transf_Trd(cnt)
  wage_per_sec(cnt,sec0)
  prof_per_sec(cnt,sec0)
  W_share_eq(cnt,sec0,sex,skill)
  def_Wg(cnt,sec0,qtl)
  def_Rp(cnt,sec0,qtl)
  def_ord(cnt,qtl)
  AlloCons(cnt,ecom,qtl)
  linobj1w(cnt,sec0,sex,skill)
  linobj2w(cnt,sec0,sex,skill)
  linobj1r(cnt,qtl)
  linobj2r(cnt,qtl)
  linobj1c(cnt,ecom,com0,qtl)
  linobj2c(cnt,ecom,com0,qtl)
  Perc_transf_Inv(cnt,qtl)
;

* Consumption of commodities
cons_per_good(cnt,com0)..
  sum(qtl, Hc(cnt,com0,qtl)) =E= Hcons(cnt,com0);

* Household
IncConsBal(cnt,qtl)..
  sum(sec0, Wg(cnt,sec0,qtl)+ Rp(cnt,sec0,qtl))
  - sum(com0, Hc(cnt,com0,qtl))
  - Ht(cnt,qtl) - Hi(cnt,qtl) =E= 0;

* Total transfers from trade
Tot_transf_Trd(cnt)..
  sum(qtl, Ht(cnt,qtl)) =E= -TRHROWZ(cnt);

* Total transfers to investments
Tot_transf_Inv(cnt)..
  sum(qtl, Hi(cnt,qtl)) =E= -TRHINV(cnt);

Perc_transf_Inv(cnt,qtl)..
  Hi(cnt,qtl)/(-TRHINV(cnt)) =g=  sum(sec0, Wg(cnt,sec0,qtl)+ Rp(cnt,sec0,qtl))/sum(sec0,Hwage(cnt,sec0)+Hcap(cnt, sec0))  ;


* labor
wage_per_sec(cnt,sec0)..
  sum((sex,skill), W(cnt,sec0,sex,skill)) =E= Hwage(cnt,sec0);

* profit per sector
prof_per_sec(cnt,sec0)..
    sum(qtl, Rp(cnt, sec0, qtl)) =E= Hcap(cnt, sec0);

* wage shares
*W_share_eq(cnt,sec0,sex,skill)..
*  W(cnt,sec0,sex,skill) =E= betadisp(cnt,sec0,sex,skill) * Hwage(cnt,sec0);

* =======================
* AGGREGATE WAGES & PROFITS TO QUINTILES
* =======================
def_Wg(cnt,sec0,qtl)..
  Wg(cnt,sec0,qtl) =E= sum((sex,skill), W(cnt,sec0,sex,skill) * Ieff(cnt,sec0,sex,skill,qtl));

def_ord(cnt,qtl)$(ord(qtl) lt card(qtl))..
  sum(sec0,Wg(cnt,sec0,qtl)+Rp(cnt, sec0, qtl))=l=0.9*sum(sec0,Wg(cnt,sec0,qtl+1)+Rp(cnt, sec0, qtl+1));

*def_Rp(cnt,sec0,qtl)..
*  Rp(cnt,sec0,qtl) =E= sum((sex,skill), R(cnt,sec0,sex,skill) * Ieff(cnt,sec0,sex,skill,qtl));

* =======================
* CONSUMPTION ALLOCATION BY ECOM (AGGREGATED, COUNTRY-SPECIFIC)
* =======================
AlloCons(cnt,ecom,qtl)..
  sum(com0$mpc(com0,ecom), Hc(cnt,com0,qtl))
  =E= conshrN(cnt,ecom,qtl) * sum(com0$mpc(com0,ecom), sum(qq, Hc(cnt,com0,qq)));

* =======================
* SOFT CAPITAL SHARE
* =======================
*parameter Ktotal(cnt);
*Ktotal(cnt) = sum(sec0, Hcap(cnt,sec0));
*Cap_q_soft(cnt,qtl)..
*  sum((sec0,sex,skill), R(cnt,sec0,sex,skill) * Ieff(cnt,sec0,sex,skill,qtl))
*  - scap(cnt,qtl) * Ktotal(cnt)
*  =E= zcap_pos(cnt,qtl) - zcap_neg(cnt,qtl);

* =======================
* LINEAR OBJECTIVE PARTS
* =======================

*less strict

*linobj1r(cnt,sec0,qtl)..
*  zr(cnt,sec0,qtl) =g=  Rp(cnt,sec0,qtl) - scap(cnt,qtl) * Hcap(cnt,sec0);

*linobj2r(cnt,sec0,qtl)..
*  zr(cnt,sec0,qtl) =g= -Rp(cnt,sec0,qtl) + scap(cnt,qtl) * Hcap(cnt,sec0);

linobj1w(cnt,sec0,sex,skill)..
  zw(cnt,sec0,sex,skill) =g=  W(cnt,sec0,sex,skill) - betadisp(cnt,sec0,sex,skill) * Hwage(cnt,sec0);

linobj2w(cnt,sec0,sex,skill)..
  zw(cnt,sec0,sex,skill) =g= - W(cnt,sec0,sex,skill) + betadisp(cnt,sec0,sex,skill) * Hwage(cnt,sec0);

linobj1r(cnt, qtl)..
    zr(cnt, qtl) =g= sum(sec0, Rp(cnt, sec0, qtl)) - scap(cnt, qtl) * sum(sec0, Hcap(cnt, sec0));
linobj2r(cnt, qtl)..
    zr(cnt, qtl) =g= -sum(sec0, Rp(cnt, sec0, qtl)) + scap(cnt, qtl) * sum(sec0, Hcap(cnt, sec0));


linobj1c(cnt,ecom,com0,qtl)$mpc(com0,ecom)..
  zc(cnt,ecom,com0,qtl) =g=  Hc(cnt,com0,qtl)
                         - conshrN(cnt,ecom,qtl) * sum(qq, Hc(cnt,com0,qq));

linobj2c(cnt,ecom,com0,qtl)$mpc(com0,ecom)..
  zc(cnt,ecom,com0,qtl) =g= -Hc(cnt,com0,qtl)
                         + conshrN(cnt,ecom,qtl) * sum(qq, Hc(cnt,com0,qq));

* =======================
* OBJECTIVE
* =======================
scalar w_cap / 1 /;
obj..
  tz =E= sum((cnt,sec0,sex,skill), zw(cnt,sec0,sex,skill))
       + sum((cnt,ecom,com0,qtl)$mpc(com0,ecom), zc(cnt,ecom,com0,qtl))
       + sum((cnt, qtl), zr(cnt, qtl));
* + sum((cnt,sec0,qtl), zr(cnt,sec0,qtl))
* =======================
* MODEL + SOLVE + EXPORT
* =======================
model Splitting /
  cons_per_good
  IncConsBal
  Tot_transf_Inv
  Tot_transf_Trd
  wage_per_sec
  prof_per_sec
*  W_share_eq
  def_Wg
   def_ord
*  def_Rp
  AlloCons
  linobj1w, linobj2w
  linobj1r, linobj2r
  linobj1c, linobj2c
  Perc_transf_Inv
  obj
/;

solve Splitting minimizing tz using lp;

parameter Whs_q(cnt,sex,skill,qtl);

Whs_q(cnt,sex,skill,qtl) = sum(sec0, W.l(cnt,sec0,sex,skill) * Ieff(cnt,sec0,sex,skill,qtl));

variable Hlabor(cnt,qtl);
parameter Hlabor_val(cnt,qtl);
Hlabor_val(cnt,qtl) = sum((sec0,sex,skill), W.l(cnt,sec0,sex,skill) * Ieff(cnt,sec0,sex,skill,qtl));

execute_unload 'SplitSAM.gdx' Hc, W, R, Ht, Hi, Wg, Rp, zw, zr, zc, tz, sex, skill, qtl, com0, sec0, cnt, Whs_q;
execute_unload 'Hlabor.gdx', Hlabor_val;

display TRHROWZ, TRHINV;
