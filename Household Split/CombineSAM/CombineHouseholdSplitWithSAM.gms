set i / Labour, HOUS,  C-AAGR, C-IMIN, C-IRES, C-NG, C-BIO, C-POWF, C-POWR, C-POWT, C-LTH, C-COTH, C-CCON, C-CWSR, C-COFF, C-C_TRAI, C-C_TLND, C-C_TPIP, C-CHEA, C-Waste, C-COAL, C-CRUDE-OIL, C-GASE, C-OIL-GSL, C-OIL-JET, C-OIL-KER, C-OIL-DSL, C-OIL-HDI, C-OIL-LDSF, C-IMEA, C-C_TWAS, C-C_TWAI, C-C_TAIR, C-COIL, AAGR, COAL, COIL, IMIN, IRES, IALA, POWF, POWR, POWT, NG, LTH, COTH, CCON, CWSR, COFF, C_TRAI, C_TLND, C_TPIP, C_TWAS, C_TWAI, C_TAIR, CHEA, Waste, BIO, Q1, Q2, Q3, Q4, Q5, GOVT, INV, STOCKS, trade, tmarg,  L_M_E1, L_F_E1, L_M_E2, L_F_E2, L_M_E3, L_F_E3, Capital, tax_sec, tax_com/;
set fromSAM(i) / C-AAGR, C-IMIN, C-IRES, C-NG, C-BIO, C-POWF, C-POWR, C-POWT, C-LTH, C-COTH, C-CCON, C-CWSR, C-COFF, C-C_TRAI, C-C_TLND, C-C_TPIP, C-CHEA, C-Waste, C-COAL, C-CRUDE-OIL, C-GASE, C-OIL-GSL, C-OIL-JET, C-OIL-KER, C-OIL-DSL, C-OIL-HDI, C-OIL-LDSF, C-IMEA, C-C_TWAS, C-C_TWAI, C-C_TAIR, C-COIL, AAGR, COAL, COIL, IMIN, IRES, IALA, POWF, POWR, POWT, NG, LTH, COTH, CCON, CWSR, COFF, C_TRAI, C_TLND, C_TPIP, C_TWAS, C_TWAI, C_TAIR, CHEA, Waste, BIO, Q1, Q2, Q3, Q4, Q5, GOVT, INV, STOCKS, trade, tmarg, Capital, tax_sec, tax_com/;
set housesplit(i) / Q1, Q2, Q3, Q4, Q5 /;
set laboursplit(i) / L_M_E1, L_F_E1, L_M_E2, L_F_E2, L_M_E3, L_F_E3/;
set house(i) /HOUS/;

sets cnt, com, SAMcols, sec;
parameters TTM, Trade;
$gdxin EuroSAM15.gdx
$load cnt, com, SAMcols, TTM, sec, Trade
$gdxin

alias(SAMcols, SAMcols1);
alias(SAMcols, SAMcols2);

parameter SAM(cnt, SAMcols1, SAMcols2);
$gdxin EuroSAM15.gdx
$load SAM
$gdxin



alias(i, j);

parameter expandedSAM(cnt, i, j);

set iNoHOUS(i);
iNoHOUS(i) = yes$(not sameas(i, 'HOUS') and not sameas(i,'Labour'));
set jNoHOUS(i);
jNoHOUS(i) = yes$(not sameas(i, 'HOUS') and not sameas(i,'Labour'));

expandedSAM(cnt, iNoHOUS, jNoHOUS) =
   sum( (SAMcols1, SAMcols2)$((sameas(SAMcols1, iNoHOUS)) and (sameas(SAMcols2, jNoHOUS))),
        SAM(cnt, SAMcols1, SAMcols2) );


alias (com, com0);

sets qtl, sec0, sex, skill;
$gdxin SplitSAM.gdx
$load qtl, sec0, sex, skill
$gdxin

variable Hc(cnt, com0, qtl);
*Inventory
variable Hi(cnt, qtl);
*Trade
variable Ht(cnt, qtl);
variable Rp(cnt, sec0, qtl);
variable Wg(cnt, sec0, qtl);
*
*variable R(cnt, sec0, sex, skill);
variable W(cnt, sec0, sex, skill);
parameter Whs_q(cnt, sex, skill, qtl);
$gdxin SplitSAM.gdx
$load Hc, Hi, Ht, Rp, Wg, W, Whs_q
$gdxin

parameter HcVal(*,*,*);
parameter HiVal(cnt,qtl);
parameter HtVal(*,*);
parameter RpVal(*,*,*);
parameter WgVal(*,*,*);
*parameter RVal(*,*,*,*);
parameter WVal(*,*,*,*);


HcVal(cnt, com0, qtl) = Hc.l(cnt, com0, qtl);
HiVal(cnt,qtl) = Hi.l(cnt,qtl);
HtVal(cnt,qtl) = Ht.l(cnt, qtl);
RpVal(cnt, sec0, qtl) = Rp.l(cnt, sec0, qtl);
WgVal(cnt, sec0, qtl) = Wg.l(cnt, sec0, qtl);
*RVal(cnt, sec0, sex, skill) = R.l(cnt, sec0, sex, skill);
WVal(cnt, sec0, sex, skill) = W.l(cnt, sec0, sex, skill);


display HiVal;
parameter Hlabor_val(cnt,qtl);
$gdxin Hlabor.gdx
$load Hlabor_val
$gdxin

display Whs_q;

alias(houssplit,qtl);
parameter total_capital_per_quintile(cnt, qtl);
total_capital_per_quintile(cnt,qtl) = sum(sec0, Rp.l(cnt, sec0, qtl));

* will not because labor is split
* male, ED1
expandedSAM(cnt,'Q1','L_M_E1') = Whs_q(cnt,'male','ED1','Q1');
expandedSAM(cnt,'Q2','L_M_E1') = Whs_q(cnt,'male','ED1','Q2');
expandedSAM(cnt,'Q3','L_M_E1') = Whs_q(cnt,'male','ED1','Q3');
expandedSAM(cnt,'Q4','L_M_E1') = Whs_q(cnt,'male','ED1','Q4');
expandedSAM(cnt,'Q5','L_M_E1') = Whs_q(cnt,'male','ED1','Q5');

* male, ED2
expandedSAM(cnt,'Q1','L_M_E2') = Whs_q(cnt,'male','ED2','Q1');
expandedSAM(cnt,'Q2','L_M_E2') = Whs_q(cnt,'male','ED2','Q2');
expandedSAM(cnt,'Q3','L_M_E2') = Whs_q(cnt,'male','ED2','Q3');
expandedSAM(cnt,'Q4','L_M_E2') = Whs_q(cnt,'male','ED2','Q4');
expandedSAM(cnt,'Q5','L_M_E2') = Whs_q(cnt,'male','ED2','Q5');

* male, ED3
expandedSAM(cnt,'Q1','L_M_E3') = Whs_q(cnt,'male','ED3','Q1');
expandedSAM(cnt,'Q2','L_M_E3') = Whs_q(cnt,'male','ED3','Q2');
expandedSAM(cnt,'Q3','L_M_E3') = Whs_q(cnt,'male','ED3','Q3');
expandedSAM(cnt,'Q4','L_M_E3') = Whs_q(cnt,'male','ED3','Q4');
expandedSAM(cnt,'Q5','L_M_E3') = Whs_q(cnt,'male','ED3','Q5');

* female, ED1
expandedSAM(cnt,'Q1','L_F_E1') = Whs_q(cnt,'female','ED1','Q1');
expandedSAM(cnt,'Q2','L_F_E1') = Whs_q(cnt,'female','ED1','Q2');
expandedSAM(cnt,'Q3','L_F_E1') = Whs_q(cnt,'female','ED1','Q3');
expandedSAM(cnt,'Q4','L_F_E1') = Whs_q(cnt,'female','ED1','Q4');
expandedSAM(cnt,'Q5','L_F_E1') = Whs_q(cnt,'female','ED1','Q5');

* female, ED2
expandedSAM(cnt,'Q1','L_F_E2') = Whs_q(cnt,'female','ED2','Q1');
expandedSAM(cnt,'Q2','L_F_E2') = Whs_q(cnt,'female','ED2','Q2');
expandedSAM(cnt,'Q3','L_F_E2') = Whs_q(cnt,'female','ED2','Q3');
expandedSAM(cnt,'Q4','L_F_E2') = Whs_q(cnt,'female','ED2','Q4');
expandedSAM(cnt,'Q5','L_F_E2') = Whs_q(cnt,'female','ED2','Q5');

* female, ED3
expandedSAM(cnt,'Q1','L_F_E3') = Whs_q(cnt,'female','ED3','Q1');
expandedSAM(cnt,'Q2','L_F_E3') = Whs_q(cnt,'female','ED3','Q2');
expandedSAM(cnt,'Q3','L_F_E3') = Whs_q(cnt,'female','ED3','Q3');
expandedSAM(cnt,'Q4','L_F_E3') = Whs_q(cnt,'female','ED3','Q4');
expandedSAM(cnt,'Q5','L_F_E3') = Whs_q(cnt,'female','ED3','Q5');

*expandedSAM(cnt, housesplit, housesplit) = 1;
*expandedSAM(cnt, laboursplit, laboursplit) = 2;
expandedSAM(cnt, 'INV','Q1') = HiVal(cnt,'Q1');
expandedSAM(cnt, 'INV', 'Q2') = HiVal(cnt,'Q2');
expandedSAM(cnt, 'INV', 'Q3') = HiVal(cnt,'Q3');
expandedSAM(cnt, 'INV', 'Q4') = HiVal(cnt,'Q4');
expandedSAM(cnt, 'INV', 'Q5') = HiVal(cnt,'Q5');

expandedSAM(cnt, 'Trade', 'Q1') = HtVal(cnt,'Q1');
expandedSAM(cnt, 'Trade', 'Q2') = HtVal(cnt,'Q2');
expandedSAM(cnt, 'Trade', 'Q3') = HtVal(cnt,'Q3');
expandedSAM(cnt, 'Trade', 'Q4') = HtVal(cnt,'Q4');
expandedSAM(cnt, 'Trade', 'Q5') = HtVal(cnt,'Q5');


expandedSAM(cnt, 'Q1', 'Capital') = total_capital_per_quintile(cnt,'Q1');
expandedSAM(cnt, 'Q2', 'Capital') = total_capital_per_quintile(cnt,'Q2');
expandedSAM(cnt, 'Q3', 'Capital') = total_capital_per_quintile(cnt,'Q3');
expandedSAM(cnt, 'Q4', 'Capital') = total_capital_per_quintile(cnt,'Q4');
expandedSAM(cnt, 'Q5', 'Capital') = total_capital_per_quintile(cnt,'Q5');
*C-AAGR, C-IMIN, C-IRES, C-NG, C-BIO, C-POWF, C-POWR, C-POWT, C-LTH, C-COTH, C-CCON, C-CWSR, C-COFF, C-C_TRAI, C-C_TLND, C-C_TPIP, C-CHEA, C-Waste, C-COAL, C-CRUDE-OIL, C-GASE, C-OIL-GSL, C-OIL-JET, C-OIL-KER, C-OIL-DSL, C-OIL-HDI, C-OIL-LDSF, C-IMEA, C-C_TWAS, C-C_TWAI, C-C_TAIR, C-COIL,


*expandedSAM(cnt, 'C-AAGR', 'Q1') = HcVal(cnt,'C-AAGR','Q1');

expandedSAM(cnt, 'C-AAGR', 'Q1') = HcVal(cnt,'C-AAGR','Q1');
expandedSAM(cnt, 'C-AAGR', 'Q2') = HcVal(cnt,'C-AAGR','Q2');
expandedSAM(cnt, 'C-AAGR', 'Q3') = HcVal(cnt,'C-AAGR','Q3');
expandedSAM(cnt, 'C-AAGR', 'Q4') = HcVal(cnt,'C-AAGR','Q4');
expandedSAM(cnt, 'C-AAGR', 'Q5') = HcVal(cnt,'C-AAGR','Q5');

expandedSAM(cnt, 'C-IMIN', 'Q1') = HcVal(cnt,'C-IMIN','Q1');
expandedSAM(cnt, 'C-IMIN', 'Q2') = HcVal(cnt,'C-IMIN','Q2');
expandedSAM(cnt, 'C-IMIN', 'Q3') = HcVal(cnt,'C-IMIN','Q3');
expandedSAM(cnt, 'C-IMIN', 'Q4') = HcVal(cnt,'C-IMIN','Q4');
expandedSAM(cnt, 'C-IMIN', 'Q5') = HcVal(cnt,'C-IMIN','Q5');

expandedSAM(cnt, 'C-IRES', 'Q1') = HcVal(cnt,'C-IRES','Q1');
expandedSAM(cnt, 'C-IRES', 'Q2') = HcVal(cnt,'C-IRES','Q2');
expandedSAM(cnt, 'C-IRES', 'Q3') = HcVal(cnt,'C-IRES','Q3');
expandedSAM(cnt, 'C-IRES', 'Q4') = HcVal(cnt,'C-IRES','Q4');
expandedSAM(cnt, 'C-IRES', 'Q5') = HcVal(cnt,'C-IRES','Q5');

expandedSAM(cnt, 'C-NG', 'Q1') = HcVal(cnt,'C-NG','Q1');
expandedSAM(cnt, 'C-NG', 'Q2') = HcVal(cnt,'C-NG','Q2');
expandedSAM(cnt, 'C-NG', 'Q3') = HcVal(cnt,'C-NG','Q3');
expandedSAM(cnt, 'C-NG', 'Q4') = HcVal(cnt,'C-NG','Q4');
expandedSAM(cnt, 'C-NG', 'Q5') = HcVal(cnt,'C-NG','Q5');

expandedSAM(cnt, 'C-BIO', 'Q1') = HcVal(cnt,'C-BIO','Q1');
expandedSAM(cnt, 'C-BIO', 'Q2') = HcVal(cnt,'C-BIO','Q2');
expandedSAM(cnt, 'C-BIO', 'Q3') = HcVal(cnt,'C-BIO','Q3');
expandedSAM(cnt, 'C-BIO', 'Q4') = HcVal(cnt,'C-BIO','Q4');
expandedSAM(cnt, 'C-BIO', 'Q5') = HcVal(cnt,'C-BIO','Q5');

expandedSAM(cnt, 'C-POWF', 'Q1') = HcVal(cnt,'C-POWF','Q1');
expandedSAM(cnt, 'C-POWF', 'Q2') = HcVal(cnt,'C-POWF','Q2');
expandedSAM(cnt, 'C-POWF', 'Q3') = HcVal(cnt,'C-POWF','Q3');
expandedSAM(cnt, 'C-POWF', 'Q4') = HcVal(cnt,'C-POWF','Q4');
expandedSAM(cnt, 'C-POWF', 'Q5') = HcVal(cnt,'C-POWF','Q5');

expandedSAM(cnt, 'C-POWR', 'Q1') = HcVal(cnt,'C-POWR','Q1');
expandedSAM(cnt, 'C-POWR', 'Q2') = HcVal(cnt,'C-POWR','Q2');
expandedSAM(cnt, 'C-POWR', 'Q3') = HcVal(cnt,'C-POWR','Q3');
expandedSAM(cnt, 'C-POWR', 'Q4') = HcVal(cnt,'C-POWR','Q4');
expandedSAM(cnt, 'C-POWR', 'Q5') = HcVal(cnt,'C-POWR','Q5');

expandedSAM(cnt, 'C-POWT', 'Q1') = HcVal(cnt,'C-POWT','Q1');
expandedSAM(cnt, 'C-POWT', 'Q2') = HcVal(cnt,'C-POWT','Q2');
expandedSAM(cnt, 'C-POWT', 'Q3') = HcVal(cnt,'C-POWT','Q3');
expandedSAM(cnt, 'C-POWT', 'Q4') = HcVal(cnt,'C-POWT','Q4');
expandedSAM(cnt, 'C-POWT', 'Q5') = HcVal(cnt,'C-POWT','Q5');

expandedSAM(cnt, 'C-LTH', 'Q1') = HcVal(cnt,'C-LTH','Q1');
expandedSAM(cnt, 'C-LTH', 'Q2') = HcVal(cnt,'C-LTH','Q2');
expandedSAM(cnt, 'C-LTH', 'Q3') = HcVal(cnt,'C-LTH','Q3');
expandedSAM(cnt, 'C-LTH', 'Q4') = HcVal(cnt,'C-LTH','Q4');
expandedSAM(cnt, 'C-LTH', 'Q5') = HcVal(cnt,'C-LTH','Q5');

expandedSAM(cnt, 'C-COTH', 'Q1') = HcVal(cnt,'C-COTH','Q1');
expandedSAM(cnt, 'C-COTH', 'Q2') = HcVal(cnt,'C-COTH','Q2');
expandedSAM(cnt, 'C-COTH', 'Q3') = HcVal(cnt,'C-COTH','Q3');
expandedSAM(cnt, 'C-COTH', 'Q4') = HcVal(cnt,'C-COTH','Q4');
expandedSAM(cnt, 'C-COTH', 'Q5') = HcVal(cnt,'C-COTH','Q5');

expandedSAM(cnt, 'C-CCON', 'Q1') = HcVal(cnt,'C-CCON','Q1');
expandedSAM(cnt, 'C-CCON', 'Q2') = HcVal(cnt,'C-CCON','Q2');
expandedSAM(cnt, 'C-CCON', 'Q3') = HcVal(cnt,'C-CCON','Q3');
expandedSAM(cnt, 'C-CCON', 'Q4') = HcVal(cnt,'C-CCON','Q4');
expandedSAM(cnt, 'C-CCON', 'Q5') = HcVal(cnt,'C-CCON','Q5');

expandedSAM(cnt, 'C-CWSR', 'Q1') = HcVal(cnt,'C-CWSR','Q1');
expandedSAM(cnt, 'C-CWSR', 'Q2') = HcVal(cnt,'C-CWSR','Q2');
expandedSAM(cnt, 'C-CWSR', 'Q3') = HcVal(cnt,'C-CWSR','Q3');
expandedSAM(cnt, 'C-CWSR', 'Q4') = HcVal(cnt,'C-CWSR','Q4');
expandedSAM(cnt, 'C-CWSR', 'Q5') = HcVal(cnt,'C-CWSR','Q5');

expandedSAM(cnt, 'C-COFF', 'Q1') = HcVal(cnt,'C-COFF','Q1');
expandedSAM(cnt, 'C-COFF', 'Q2') = HcVal(cnt,'C-COFF','Q2');
expandedSAM(cnt, 'C-COFF', 'Q3') = HcVal(cnt,'C-COFF','Q3');
expandedSAM(cnt, 'C-COFF', 'Q4') = HcVal(cnt,'C-COFF','Q4');
expandedSAM(cnt, 'C-COFF', 'Q5') = HcVal(cnt,'C-COFF','Q5');

expandedSAM(cnt, 'C-C_TRAI', 'Q1') = HcVal(cnt,'C-C_TRAI','Q1');
expandedSAM(cnt, 'C-C_TRAI', 'Q2') = HcVal(cnt,'C-C_TRAI','Q2');
expandedSAM(cnt, 'C-C_TRAI', 'Q3') = HcVal(cnt,'C-C_TRAI','Q3');
expandedSAM(cnt, 'C-C_TRAI', 'Q4') = HcVal(cnt,'C-C_TRAI','Q4');
expandedSAM(cnt, 'C-C_TRAI', 'Q5') = HcVal(cnt,'C-C_TRAI','Q5');

expandedSAM(cnt, 'C-C_TLND', 'Q1') = HcVal(cnt,'C-C_TLND','Q1');
expandedSAM(cnt, 'C-C_TLND', 'Q2') = HcVal(cnt,'C-C_TLND','Q2');
expandedSAM(cnt, 'C-C_TLND', 'Q3') = HcVal(cnt,'C-C_TLND','Q3');
expandedSAM(cnt, 'C-C_TLND', 'Q4') = HcVal(cnt,'C-C_TLND','Q4');
expandedSAM(cnt, 'C-C_TLND', 'Q5') = HcVal(cnt,'C-C_TLND','Q5');

expandedSAM(cnt, 'C-C_TPIP', 'Q1') = HcVal(cnt,'C-C_TPIP','Q1');
expandedSAM(cnt, 'C-C_TPIP', 'Q2') = HcVal(cnt,'C-C_TPIP','Q2');
expandedSAM(cnt, 'C-C_TPIP', 'Q3') = HcVal(cnt,'C-C_TPIP','Q3');
expandedSAM(cnt, 'C-C_TPIP', 'Q4') = HcVal(cnt,'C-C_TPIP','Q4');
expandedSAM(cnt, 'C-C_TPIP', 'Q5') = HcVal(cnt,'C-C_TPIP','Q5');

expandedSAM(cnt, 'C-CHEA', 'Q1') = HcVal(cnt,'C-CHEA','Q1');
expandedSAM(cnt, 'C-CHEA', 'Q2') = HcVal(cnt,'C-CHEA','Q2');
expandedSAM(cnt, 'C-CHEA', 'Q3') = HcVal(cnt,'C-CHEA','Q3');
expandedSAM(cnt, 'C-CHEA', 'Q4') = HcVal(cnt,'C-CHEA','Q4');
expandedSAM(cnt, 'C-CHEA', 'Q5') = HcVal(cnt,'C-CHEA','Q5');

expandedSAM(cnt, 'C-Waste', 'Q1') = HcVal(cnt,'C-Waste','Q1');
expandedSAM(cnt, 'C-Waste', 'Q2') = HcVal(cnt,'C-Waste','Q2');
expandedSAM(cnt, 'C-Waste', 'Q3') = HcVal(cnt,'C-Waste','Q3');
expandedSAM(cnt, 'C-Waste', 'Q4') = HcVal(cnt,'C-Waste','Q4');
expandedSAM(cnt, 'C-Waste', 'Q5') = HcVal(cnt,'C-Waste','Q5');

expandedSAM(cnt, 'C-COAL', 'Q1') = HcVal(cnt,'C-COAL','Q1');
expandedSAM(cnt, 'C-COAL', 'Q2') = HcVal(cnt,'C-COAL','Q2');
expandedSAM(cnt, 'C-COAL', 'Q3') = HcVal(cnt,'C-COAL','Q3');
expandedSAM(cnt, 'C-COAL', 'Q4') = HcVal(cnt,'C-COAL','Q4');
expandedSAM(cnt, 'C-COAL', 'Q5') = HcVal(cnt,'C-COAL','Q5');

expandedSAM(cnt, 'C-CRUDE-OIL', 'Q1') = HcVal(cnt,'C-CRUDE-OIL','Q1');
expandedSAM(cnt, 'C-CRUDE-OIL', 'Q2') = HcVal(cnt,'C-CRUDE-OIL','Q2');
expandedSAM(cnt, 'C-CRUDE-OIL', 'Q3') = HcVal(cnt,'C-CRUDE-OIL','Q3');
expandedSAM(cnt, 'C-CRUDE-OIL', 'Q4') = HcVal(cnt,'C-CRUDE-OIL','Q4');
expandedSAM(cnt, 'C-CRUDE-OIL', 'Q5') = HcVal(cnt,'C-CRUDE-OIL','Q5');

expandedSAM(cnt, 'C-GASE', 'Q1') = HcVal(cnt,'C-GASE','Q1');
expandedSAM(cnt, 'C-GASE', 'Q2') = HcVal(cnt,'C-GASE','Q2');
expandedSAM(cnt, 'C-GASE', 'Q3') = HcVal(cnt,'C-GASE','Q3');
expandedSAM(cnt, 'C-GASE', 'Q4') = HcVal(cnt,'C-GASE','Q4');
expandedSAM(cnt, 'C-GASE', 'Q5') = HcVal(cnt,'C-GASE','Q5');

expandedSAM(cnt, 'C-OIL-GSL', 'Q1') = HcVal(cnt,'C-OIL-GSL','Q1');
expandedSAM(cnt, 'C-OIL-GSL', 'Q2') = HcVal(cnt,'C-OIL-GSL','Q2');
expandedSAM(cnt, 'C-OIL-GSL', 'Q3') = HcVal(cnt,'C-OIL-GSL','Q3');
expandedSAM(cnt, 'C-OIL-GSL', 'Q4') = HcVal(cnt,'C-OIL-GSL','Q4');
expandedSAM(cnt, 'C-OIL-GSL', 'Q5') = HcVal(cnt,'C-OIL-GSL','Q5');

expandedSAM(cnt, 'C-OIL-JET', 'Q1') = HcVal(cnt,'C-OIL-JET','Q1');
expandedSAM(cnt, 'C-OIL-JET', 'Q2') = HcVal(cnt,'C-OIL-JET','Q2');
expandedSAM(cnt, 'C-OIL-JET', 'Q3') = HcVal(cnt,'C-OIL-JET','Q3');
expandedSAM(cnt, 'C-OIL-JET', 'Q4') = HcVal(cnt,'C-OIL-JET','Q4');
expandedSAM(cnt, 'C-OIL-JET', 'Q5') = HcVal(cnt,'C-OIL-JET','Q5');

expandedSAM(cnt, 'C-OIL-KER', 'Q1') = HcVal(cnt,'C-OIL-KER','Q1');
expandedSAM(cnt, 'C-OIL-KER', 'Q2') = HcVal(cnt,'C-OIL-KER','Q2');
expandedSAM(cnt, 'C-OIL-KER', 'Q3') = HcVal(cnt,'C-OIL-KER','Q3');
expandedSAM(cnt, 'C-OIL-KER', 'Q4') = HcVal(cnt,'C-OIL-KER','Q4');
expandedSAM(cnt, 'C-OIL-KER', 'Q5') = HcVal(cnt,'C-OIL-KER','Q5');

expandedSAM(cnt, 'C-OIL-DSL', 'Q1') = HcVal(cnt,'C-OIL-DSL','Q1');
expandedSAM(cnt, 'C-OIL-DSL', 'Q2') = HcVal(cnt,'C-OIL-DSL','Q2');
expandedSAM(cnt, 'C-OIL-DSL', 'Q3') = HcVal(cnt,'C-OIL-DSL','Q3');
expandedSAM(cnt, 'C-OIL-DSL', 'Q4') = HcVal(cnt,'C-OIL-DSL','Q4');
expandedSAM(cnt, 'C-OIL-DSL', 'Q5') = HcVal(cnt,'C-OIL-DSL','Q5');

expandedSAM(cnt, 'C-OIL-HDI', 'Q1') = HcVal(cnt,'C-OIL-HDI','Q1');
expandedSAM(cnt, 'C-OIL-HDI', 'Q2') = HcVal(cnt,'C-OIL-HDI','Q2');
expandedSAM(cnt, 'C-OIL-HDI', 'Q3') = HcVal(cnt,'C-OIL-HDI','Q3');
expandedSAM(cnt, 'C-OIL-HDI', 'Q4') = HcVal(cnt,'C-OIL-HDI','Q4');
expandedSAM(cnt, 'C-OIL-HDI', 'Q5') = HcVal(cnt,'C-OIL-HDI','Q5');

expandedSAM(cnt, 'C-OIL-LDSF', 'Q1') = HcVal(cnt,'C-OIL-LDSF','Q1');
expandedSAM(cnt, 'C-OIL-LDSF', 'Q2') = HcVal(cnt,'C-OIL-LDSF','Q2');
expandedSAM(cnt, 'C-OIL-LDSF', 'Q3') = HcVal(cnt,'C-OIL-LDSF','Q3');
expandedSAM(cnt, 'C-OIL-LDSF', 'Q4') = HcVal(cnt,'C-OIL-LDSF','Q4');
expandedSAM(cnt, 'C-OIL-LDSF', 'Q5') = HcVal(cnt,'C-OIL-LDSF','Q5');

expandedSAM(cnt, 'C-IMEA', 'Q1') = HcVal(cnt,'C-IMEA','Q1');
expandedSAM(cnt, 'C-IMEA', 'Q2') = HcVal(cnt,'C-IMEA','Q2');
expandedSAM(cnt, 'C-IMEA', 'Q3') = HcVal(cnt,'C-IMEA','Q3');
expandedSAM(cnt, 'C-IMEA', 'Q4') = HcVal(cnt,'C-IMEA','Q4');
expandedSAM(cnt, 'C-IMEA', 'Q5') = HcVal(cnt,'C-IMEA','Q5');

expandedSAM(cnt, 'C-C_TWAS', 'Q1') = HcVal(cnt,'C-C_TWAS','Q1');
expandedSAM(cnt, 'C-C_TWAS', 'Q2') = HcVal(cnt,'C-C_TWAS','Q2');
expandedSAM(cnt, 'C-C_TWAS', 'Q3') = HcVal(cnt,'C-C_TWAS','Q3');
expandedSAM(cnt, 'C-C_TWAS', 'Q4') = HcVal(cnt,'C-C_TWAS','Q4');
expandedSAM(cnt, 'C-C_TWAS', 'Q5') = HcVal(cnt,'C-C_TWAS','Q5');

expandedSAM(cnt, 'C-C_TWAI', 'Q1') = HcVal(cnt,'C-C_TWAI','Q1');
expandedSAM(cnt, 'C-C_TWAI', 'Q2') = HcVal(cnt,'C-C_TWAI','Q2');
expandedSAM(cnt, 'C-C_TWAI', 'Q3') = HcVal(cnt,'C-C_TWAI','Q3');
expandedSAM(cnt, 'C-C_TWAI', 'Q4') = HcVal(cnt,'C-C_TWAI','Q4');
expandedSAM(cnt, 'C-C_TWAI', 'Q5') = HcVal(cnt,'C-C_TWAI','Q5');

expandedSAM(cnt, 'C-C_TAIR', 'Q1') = HcVal(cnt,'C-C_TAIR','Q1');
expandedSAM(cnt, 'C-C_TAIR', 'Q2') = HcVal(cnt,'C-C_TAIR','Q2');
expandedSAM(cnt, 'C-C_TAIR', 'Q3') = HcVal(cnt,'C-C_TAIR','Q3');
expandedSAM(cnt, 'C-C_TAIR', 'Q4') = HcVal(cnt,'C-C_TAIR','Q4');
expandedSAM(cnt, 'C-C_TAIR', 'Q5') = HcVal(cnt,'C-C_TAIR','Q5');

expandedSAM(cnt, 'C-COIL', 'Q1') = HcVal(cnt,'C-COIL','Q1');
expandedSAM(cnt, 'C-COIL', 'Q2') = HcVal(cnt,'C-COIL','Q2');
expandedSAM(cnt, 'C-COIL', 'Q3') = HcVal(cnt,'C-COIL','Q3');
expandedSAM(cnt, 'C-COIL', 'Q4') = HcVal(cnt,'C-COIL','Q4');
expandedSAM(cnt, 'C-COIL', 'Q5') = HcVal(cnt,'C-COIL','Q5');

* Labor + sector

expandedSAM(cnt, 'L_M_E1', 'AAGR') = WVal(cnt, 'AAGR', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'AAGR') = WVal(cnt, 'AAGR', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'AAGR') = WVal(cnt, 'AAGR', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'AAGR') = WVal(cnt, 'AAGR', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'AAGR') = WVal(cnt, 'AAGR', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'AAGR') = WVal(cnt, 'AAGR', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'COAL') = WVal(cnt, 'COAL', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'COAL') = WVal(cnt, 'COAL', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'COAL') = WVal(cnt, 'COAL', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'COAL') = WVal(cnt, 'COAL', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'COAL') = WVal(cnt, 'COAL', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'COAL') = WVal(cnt, 'COAL', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'COIL') = WVal(cnt, 'COIL', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'COIL') = WVal(cnt, 'COIL', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'COIL') = WVal(cnt, 'COIL', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'COIL') = WVal(cnt, 'COIL', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'COIL') = WVal(cnt, 'COIL', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'COIL') = WVal(cnt, 'COIL', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'IMIN') = WVal(cnt, 'IMIN', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'IMIN') = WVal(cnt, 'IMIN', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'IMIN') = WVal(cnt, 'IMIN', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'IMIN') = WVal(cnt, 'IMIN', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'IMIN') = WVal(cnt, 'IMIN', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'IMIN') = WVal(cnt, 'IMIN', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'IRES') = WVal(cnt, 'IRES', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'IRES') = WVal(cnt, 'IRES', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'IRES') = WVal(cnt, 'IRES', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'IRES') = WVal(cnt, 'IRES', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'IRES') = WVal(cnt, 'IRES', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'IRES') = WVal(cnt, 'IRES', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'IALA') = WVal(cnt, 'IALA', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'IALA') = WVal(cnt, 'IALA', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'IALA') = WVal(cnt, 'IALA', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'IALA') = WVal(cnt, 'IALA', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'IALA') = WVal(cnt, 'IALA', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'IALA') = WVal(cnt, 'IALA', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'POWF') = WVal(cnt, 'POWF', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'POWF') = WVal(cnt, 'POWF', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'POWF') = WVal(cnt, 'POWF', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'POWF') = WVal(cnt, 'POWF', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'POWF') = WVal(cnt, 'POWF', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'POWF') = WVal(cnt, 'POWF', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'POWR') = WVal(cnt, 'POWR', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'POWR') = WVal(cnt, 'POWR', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'POWR') = WVal(cnt, 'POWR', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'POWR') = WVal(cnt, 'POWR', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'POWR') = WVal(cnt, 'POWR', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'POWR') = WVal(cnt, 'POWR', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'POWT') = WVal(cnt, 'POWT', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'POWT') = WVal(cnt, 'POWT', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'POWT') = WVal(cnt, 'POWT', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'POWT') = WVal(cnt, 'POWT', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'POWT') = WVal(cnt, 'POWT', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'POWT') = WVal(cnt, 'POWT', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'NG') = WVal(cnt, 'NG', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'NG') = WVal(cnt, 'NG', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'NG') = WVal(cnt, 'NG', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'NG') = WVal(cnt, 'NG', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'NG') = WVal(cnt, 'NG', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'NG') = WVal(cnt, 'NG', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'LTH') = WVal(cnt, 'LTH', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'LTH') = WVal(cnt, 'LTH', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'LTH') = WVal(cnt, 'LTH', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'LTH') = WVal(cnt, 'LTH', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'LTH') = WVal(cnt, 'LTH', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'LTH') = WVal(cnt, 'LTH', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'COTH') = WVal(cnt, 'COTH', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'COTH') = WVal(cnt, 'COTH', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'COTH') = WVal(cnt, 'COTH', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'COTH') = WVal(cnt, 'COTH', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'COTH') = WVal(cnt, 'COTH', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'COTH') = WVal(cnt, 'COTH', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'CCON') = WVal(cnt, 'CCON', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'CCON') = WVal(cnt, 'CCON', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'CCON') = WVal(cnt, 'CCON', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'CCON') = WVal(cnt, 'CCON', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'CCON') = WVal(cnt, 'CCON', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'CCON') = WVal(cnt, 'CCON', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'CWSR') = WVal(cnt, 'CWSR', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'CWSR') = WVal(cnt, 'CWSR', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'CWSR') = WVal(cnt, 'CWSR', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'CWSR') = WVal(cnt, 'CWSR', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'CWSR') = WVal(cnt, 'CWSR', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'CWSR') = WVal(cnt, 'CWSR', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'COFF') = WVal(cnt, 'COFF', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'COFF') = WVal(cnt, 'COFF', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'COFF') = WVal(cnt, 'COFF', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'COFF') = WVal(cnt, 'COFF', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'COFF') = WVal(cnt, 'COFF', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'COFF') = WVal(cnt, 'COFF', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TRAI') = WVal(cnt, 'C_TRAI', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TLND') = WVal(cnt, 'C_TLND', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TLND') = WVal(cnt, 'C_TLND', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TLND') = WVal(cnt, 'C_TLND', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TLND') = WVal(cnt, 'C_TLND', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TLND') = WVal(cnt, 'C_TLND', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TLND') = WVal(cnt, 'C_TLND', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TPIP') = WVal(cnt, 'C_TPIP', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TWAS') = WVal(cnt, 'C_TWAS', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TWAI') = WVal(cnt, 'C_TWAI', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'C_TAIR') = WVal(cnt, 'C_TAIR', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'CHEA') = WVal(cnt, 'CHEA', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'CHEA') = WVal(cnt, 'CHEA', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'CHEA') = WVal(cnt, 'CHEA', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'CHEA') = WVal(cnt, 'CHEA', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'CHEA') = WVal(cnt, 'CHEA', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'CHEA') = WVal(cnt, 'CHEA', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'Waste') = WVal(cnt, 'Waste', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'Waste') = WVal(cnt, 'Waste', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'Waste') = WVal(cnt, 'Waste', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'Waste') = WVal(cnt, 'Waste', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'Waste') = WVal(cnt, 'Waste', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'Waste') = WVal(cnt, 'Waste', 'Female', 'ED3');
expandedSAM(cnt, 'L_M_E1', 'BIO') = WVal(cnt, 'BIO', 'Male'  , 'ED1');
expandedSAM(cnt, 'L_F_E1', 'BIO') = WVal(cnt, 'BIO', 'Female', 'ED1');
expandedSAM(cnt, 'L_M_E2', 'BIO') = WVal(cnt, 'BIO', 'Male'  , 'ED2');
expandedSAM(cnt, 'L_F_E2', 'BIO') = WVal(cnt, 'BIO', 'Female', 'ED2');
expandedSAM(cnt, 'L_M_E3', 'BIO') = WVal(cnt, 'BIO', 'Male'  , 'ED3');
expandedSAM(cnt, 'L_F_E3', 'BIO') = WVal(cnt, 'BIO', 'Female', 'ED3');


display expandedSAM;
execute_unload 'expand.gdx', expandedSAM, cnt, com, housesplit, laboursplit, sec, sex, skill, Trade, TTM;

*CHECK
parameter MoneyOut(cnt,qtl);
MoneyOut(cnt,qtl) = sum(com0, HcVal(cnt, com0, qtl)) + HiVal(cnt, qtl) + HtVal(cnt, qtl);

parameter MoneyIn(cnt,qtl);
MoneyIn(cnt,qtl) = Hlabor_val(cnt,qtl) + total_capital_per_quintile(cnt,qtl);

parameter BudgetBal(cnt,qtl);
BudgetBal(cnt,qtl) = MoneyIn(cnt,qtl) - MoneyOut(cnt,qtl);
display BudgetBal;

