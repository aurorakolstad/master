$ontext
test balances
$offtext

parameter balanceU(cnt,hh),balanceUGL(cnt),balanceINVB(cnt),balanceX(cnt,com),balanceEXP(cnt,com),balanceXD(cnt,sec),balanceTRANSP(cnt);
parameter balanceHOUS(cnt,hh),balanceGOVTL(cnt),balanceINV(cnt);

balanceU(cnt,hh)=CBUDZ(cnt,hh) + Pathway_total(cnt,hh)$(Pathway_total(cnt,hh)<0)
- sum(com$(P_S > 0 and FF(com) = 0),(CZ(cnt,com,hh) + Pathway_adj(cnt,hh, com))*(1+taxcz(cnt, com)))
- sum(com$(P_S > 0 and FF(com)=1),(CZ(cnt,com,hh) + Pathway_adj(cnt,hh, com))*(1+taxcz(cnt, com)))
- sum(com$(FF(com) = 1),1e-6*CO2H(cnt,com,hh));


*         sum(com$(FF(com) ne  1),(1+taxcz(cnt, com))*(CZ(cnt,com) + Pathway_adj(cnt, "HOUS", com)))-
*         sum(com$(FF(com) = 1),(CZ(cnt,com) + Pathway_adj(cnt, "HOUS", com)))-
*         sum(com$(FF(com) = 1),CO2H(cnt,com));



*CBUDZ(cnt) + Pathway_total(cnt, "Hous")$(Pathway_total(cnt, "Hous")<0)-
*         sum(com,(1+taxcz(cnt, com))*(CZ(cnt,com) + Pathway_adj(cnt, "HOUS", com)));

balanceUGL(cnt)=CBUDGLZ(cnt) + Pathway_total(cnt, "Govt")$(Pathway_total(cnt, "Govt")<0)
         -sum(com$(FF(com) ne  1),(1+taxcz(cnt,com))*(CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com)))-
         sum(com$(FF(com) = 1),(CGLZ(cnt,com) + sum(hh,Pathway_adj(cnt, hh, com))))-
         sum(com$(FF(com) = 1),CO2G(cnt,com));

balanceINVB(cnt)=ITZ(cnt)-sum(com$(FF(com) ne  1),(1+taxcz(cnt,com))*IZ(cnt,com))-
         sum(com$(FF(com) = 1),IZ(cnt,com))-
         sum(com$(FF(com) = 1),CO2I(cnt,com));



balanceXD(cnt,sec)=sum(com,(1-taxpz(cnt,sec))*XDDZ(cnt,sec,com)) - sum(com$(PID(com) eq 0 or PID(com) eq 3),(1+taxcz(cnt,com))*IOZ(cnt,com,sec)) -
         sum(com$(PID(com) = 1 or PID(com)=2),(1+taxcz(cnt,com))*(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))) -
         sum((sex,ed),LWES(cnt,sec,ed,sex)) - Pathway_adj_cap(cnt, sec) - INVZ(cnt,sec);

*balanceXD(cnt,sec)=sum(com,(1-taxpz(cnt,sec))*XDDZ(cnt,sec,com)) - sum(com$(PID(com) eq 0 or PID(com) eq 3),(1+taxcz(cnt,com))*IOZ(cnt,com,sec)) -
*         sum(com$(PID(com) = 1 or PID(com)=2),(1+taxcz(cnt,com))*(IOZ(cnt,com,sec))) -
*         LZ(cnt,sec) - KZ(cnt, sec) - INVZ(cnt,sec);


balanceEXP(cnt,com)=sum(cntt,tradez(com,cnt,cntt))+XXDZ(cnt,com)$(XXDZ(cnt,com)>1e-6)+EROWZ(cnt,com)-sum(sec,XDDZ(cnt,sec,com)$(XDDZ(cnt,sec,com) > 1e-6));

parameter bET(cnt,com),bEX1(cnt,com),bEROW(cnt,com),bEX2(cnt,com);
bET(cnt,com)=sum(cntt,tradez(com,cnt,cntt));
bEX1(cnt,com)=XXDZ(cnt,com)$(XXDZ(cnt,com)>1e-6);
bEROW(cnt,com)=EROWZ(cnt,com);
bEX2(cnt,com)=sum(sec,XDDZ(cnt,sec,com)$(XDDZ(cnt,sec,com) > 1e-6));


balanceX(cnt,com)=XZ(cnt,com)-XXDZ(cnt,com)-sum(cntt,trademargins(com, cntt, cnt))-MROWZ(cnt,com)
         -sum(cntt$( ord(cnt) ne ord(cntt)),TRADEZ(com,cntt,cnt));

balanceTRANSP(cnt)= sum((com,cntt),trademargins(com, cntt,cnt))-sum(com,TMXZ(cnt,com));

balanceHOUS(cnt,hh)=CBUDZ(cnt,hh)-TRHROWZ(cnt,hh)+SHZ(cnt,hh)-TRANSFZ(cnt,hh)-KENDOW(cnt,hh)*gdp_p(cnt)-sum (sex, sum(ed, LENDOW(cnt,hh,ed,sex)))*gdp_p(cnt);

balanceGOVTL(cnt)=(CBUDGLZ(cnt)-sum(sec, pathway_total(cnt, sec)))+sum(hh,TRANSFZ(cnt,hh))-TRROWZ(cnt)+SGZ(cnt)
                  +sum(sec$(pathway_adj_cap(cnt, sec) and pathway_total(cnt, sec)<0 and P_S>0),pathway_total(cnt, sec))
                  -sum((com,sec)$(PID(com) eq 0 or PID(com) eq 3),taxcz(cnt,com)*IOZ(cnt,com,sec))
* tax revenue
                  -sum((sec,com),taxpz(cnt,sec)*XDDZ(cnt,sec,com))
                  -sum((com,sec)$((PID(com) = 1 or PID(com)=2) and FF(com) ne 1 ),taxcz(cnt,com)*(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
                  -sum(com$(FF(com) ne 1),taxcz(cnt,com)*sum(hh,(CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))))
                  -sum(com$(FF(com) ne 1),taxcz(cnt,com)*(CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com)))
                  -sum(com$(FF(com) ne 1),taxcz(cnt,com)*IZ(cnt,com))
* CO2 allowance revenue
                  -CO2B(cnt);


balanceINV(cnt)=ITZ(cnt)-sum(sec,INVZ(cnt,sec))+sum(com,SVZ(cnt,com))-SROWZ(cnt)-SGZ(cnt)-sum(hh,SHZ(cnt,hh));


display balanceU, balanceUGL, balanceINVB, balanceXD,balanceEXP,balanceX,balanceTRANSP,balanceHOUS,balanceGOVTL,balanceINV;


parameter balancePCO2(cnt), balancePUGL(cnt);

balancePCO2(cnt)=CO2B(cnt)-sum((com,sec)$(FF(com)=1),CO2P(cnt,com,sec))-sum(com$(FF(com)=1),sum(hh,CO2H(cnt,com,hh))+CO2I(cnt,com)+CO2G(cnt,com));


balancePUGL(cnt)=-SGZ(cnt)*gdp_p(cnt)+TRROWZ(cnt)*gdp_p(cnt)+sum(hh,-TRANSFZ(cnt,hh))*gdp_p(cnt)
+sum(sec,TAXPZ(cnt,sec)*XDZ(cnt,sec))+sum(com,TAXCZ(cnt,com)*( (sum(sec,IOZ(cnt,com,sec))  +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com)+  IZ(cnt,com)) ))-(CBUDGLZ(cnt)-sum(sec, pathway_total(cnt, sec)));


parameter PUGL1(cnt),PUGL2(cnt),PUGL3(cnt),PUGL4(cnt),PUGL5(cnt);
PUGL1(cnt)=SGZ(cnt)*gdp_p(cnt);
PUGL2(cnt)=TRROWZ(cnt)*gdp_p(cnt);
PUGL3(cnt)=sum(hh,TRANSFZ(cnt,hh))*gdp_p(cnt);
PUGL4(cnt)=sum(sec,TAXPZ(cnt,sec)*XDZ(cnt,sec))+sum(com,TAXCZ(cnt,com)*( (sum(sec,IOZ(cnt,com,sec))  +  sum(hh,CZ(cnt,com,hh)) +  CGZ(cnt,com)+  IZ(cnt,com)) ));
PUGL5(cnt)=(CBUDGLZ(cnt)-sum(sec, pathway_total(cnt, sec)));


parameter balancePU(cnt,hh);
*balancePU(cnt,hh)=CBUDZ(cnt,hh)-(TRHROWZ(cnt,hh)*gdp_p(cnt)-SHZ(cnt,hh)*gdp_p(cnt)+TRANSFZ(cnt,hh)*gdp_p(cnt)+KENDOW(cnt,hh)*(1-ty(cnt))*gdp_p(cnt)+sum((ed,sex),LENDOW(cnt,hh,ed,sex))*(1-ty(cnt))*gdp_p(cnt)/(1-urate(cnt))-(sum((ed,sex),LENDOW(cnt,hh,ed,sex)*UR.l(cnt,ed,sex))*(1-ty(cnt))*gdp_p(cnt))/(1-urate(cnt)));
balancePU(cnt,hh)=CBUDZ(cnt,hh)-(TRHROWZ(cnt,hh)*gdp_p(cnt)-SHZ(cnt,hh)*gdp_p(cnt)+TRANSFZ(cnt,hh)*gdp_p(cnt)+KENDOW(cnt,hh)*(1-ty(cnt))*gdp_p(cnt)+AOGR(cnt,hh)+ACR(cnt,hh)+ANGR(cnt,hh)+sum((ed,sex),LENDOW(cnt,hh,ed,sex))*(1-ty(cnt))*gdp_p(cnt));

display balancePCO2,balancePUGL;



parameter balanceER(CRR),bER(CRR,cnt);
balanceER(CRR)=sum(cnt$(used_currency(cnt, CRR)),sum(hh,TRHROWZ(cnt,hh))+TRROWZ(cnt)+SROWZ(cnt))+
sum((com,cnt,cntt)$(used_currency(cnt, CRR)),TRADEZ(com,cnt,cntt))+sum((com,cnt)$(used_currency(cnt, CRR)),EROWZ(cnt,com))
-sum((com,cnt)$(used_currency(cnt, CRR)),MROWZ(cnt,com))-sum((com,cnt,cntt)$(used_currency(cnt, CRR)),TRADEZ(com,cntt,cnt));

bER(CRR,cnt)$used_currency(cnt, CRR)= sum(hh,TRHROWZ(cnt,hh))+TRROWZ(cnt)+SROWZ(cnt)+
sum((com,cntt)$(ord(cnt) ne ord(cntt)),TRADEZ(com,cnt,cntt))+sum(com,EROWZ(cnt,com))
-sum(com,MROWZ(cnt,com))-sum((com,cntt)$(ord(cnt) ne ord(cntt)),TRADEZ(com,cntt,cnt));


display balanceER,bER;

parameter balanceERext, balanceERext2;
balanceERext=
 sum((cnt,com)$sameas(com,"pELE"),EROWZ(cnt,com))+sum((cnt,com)$(not sameas(com,"pELE") and not sameas(com,"pH2")),EROWZ(cnt,com))
         -sum((cnt,com)$(not sameas(com,"pH2")),MROWZ(cnt,com))+sum(cnt,sum(hh,TRHROWZ(cnt,hh))+TRROWZ(cnt)+SROWZ(cnt));


balanceERext2= sum((cnt,com),EROWZ(cnt,com))-sum((cnt,com),MROWZ(cnt,com))+sum(cnt,sum(hh,TRHROWZ(cnt,hh))+TRROWZ(cnt)+SROWZ(cnt));

parameter T1,T2,T3,T4,T5;
T1=sum((cnt,com),EROWZ(cnt,com));
T2=-sum((cnt,com),MROWZ(cnt,com));
T3=sum(cnt,sum(hh,TRHROWZ(cnt,hh)));
T4=sum(cnt,TRROWZ(cnt));
T5=sum(cnt,SROWZ(cnt));

display balanceERext,balanceERext2, gdp_p;
* the SAM is unbalanced.
* It can be balanced by subtracting the unbalance from the tax_com fields


execute_unload "balance" balanceU, balanceUGL, balanceINVB, balanceXD,balanceEXP,
               balanceX,balanceTRANSP,balanceHOUS,balanceGOVTL,balanceINV,
               bET,bEX1,bEROW,bEX2,balancePUGL,balancePU,balanceERext2,balanceER,bER,
               T1,T2,T3,T4,T5;
