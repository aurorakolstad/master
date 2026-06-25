* ============                             ===================
* ============ DEFINITION OF THE CGE MODEL ===================
* ============                             ===================


$ONTEXT



$MODEL: Arrow_Debreu

$SECTORS:
* Adds households to consumption (utility)
        U(cnt,hh)                                             ! Consumption of households
        UGL(cnt)                                         ! Consumption of the local governments
        UINVB(cnt)                                        ! Fixed capital investments - local
        X(cnt,com)                                        ! Armington composite
        TRANSP(cnt)                                      ! Transport services
        EXPORT(cnt,com)$(sum(sec, XDDZ(cnt,sec,com)) or sameas(com,"pH2"))      ! Export activity
        XD(cnt,sec)$(XDZ(cnt,sec) and not sameas(sec,"iH2S") and not sameas(sec,"iH2C")  and not sameas(sec,"iH2E") and not sameas(sec,"iELC"))                       ! Domestic production
        XD(cnt,sec)$(sameas(sec,"iH2S") or sameas(sec,"iH2E") or sameas(sec,"iH2C") or sameas(sec,"iELC") )
        VLAB(cnt,sec)$XDZ(cnt,sec)                               ! Virtual labor sector

$COMMODITIES:
*Add household to PU
        PU(cnt,hh)                                          ! Private consumption price index
        PUGL(cnt)                                         ! Local Govenrmental consumption price index
        PUINVB(cnt)                                       ! Fixed capital local invesment price index
        PD(cnt,sec,com)$(XDDZ(cnt,sec,com) or (sameas(sec,"iH2S") and sameas(com,"pH2")) or (sameas(sec,"iH2C") and sameas(com,"pH2")) or (sameas(sec,"iH2E") and sameas(com,"pH2")))
        PDD(cnt,com)$(XXDZ(cnt, com)>1e-6  and not sameas(com,"pH2"))       ! Price of domestic goods provided to domestic market
        PDD(cnt,com)$(sameas(com,"pH2"))

        P(cnt,com)$(XZ(cnt,com) and not sameas(com,"pH2"))                  ! Composite consumer price
        P(cnt,com)$(sameas(com,"pH2") and sum(sec,Pathway_adj(cnt, sec, "pH2")))
        PCO2(cnt)$(CO2B(cnt))
        RKC(cnt)       ! Price of (locally traded) capital

        ERint                                     ! Terms of trade
        ERext                                          ! Terms of trade
        PTM(cnt, cntt)$(sum(com,trademargins(com, cntt,cnt)) ne 0    )           ! Transport and trade margins
        PTR(cnt)$(sum(hh,TRANSF.L(cnt,hh)))                         ! Price of governmental transfers
        PS(cnt)                                          !Price of (local) savings (artificial)
        POG(cnt)$(OGR(cnt))                              ! price of local oil and gas resource
        PCL(cnt)$(CR(cnt))                               ! price of coal resources
        PNG(cnt)$(NGR(cnt))                              ! price of natural gas resources
        PWES(cnt,ed,sex)
        PWage(cnt,sec)$(XDZ(cnt,sec) and (not sameas(sec,"iH2S")) and (not sameas(sec,"iH2C"))  and (not sameas(sec,"iH2E")))
        PTH(cnt)$(Gmax(cnt))                          ! Price of interhouse transfers.
        PLR(cnt)$(LR(cnt))                            ! price of land



$CONSUMERS:
*Add household split
        HOUS(cnt,hh)                                        ! Representative household

        GOVTL(cnt)                                       ! Local Governments

        INVB(cnt)                                        ! Local Investment agents

$AUXILIARY:
        LS(cnt,hh,ed,sex)                                          ! Labour endowment
        KS(cnt,hh)                                          ! Capital endowment
*A: Add households
        TRANSF(cnt,hh)                                      ! Govermental transfers to households
        TRROW(cnt)                                       ! Net transfers to government (closing trade balance)
        TRHROW(cnt,hh)                                      ! Net transfers to households (closing trade balance)
        PCINDEX(cnt,hh)                                     ! Consumer price index
        PIINDEX(cnt)                                     ! Local Investment index
*A: Split by households
        SH(cnt,hh)                                          ! Households savings
        SGL(cnt)                                         ! Local Governmental savings
        SROW(cnt)                                        ! Savings from RoW
        SV(cnt,com)                                      ! Changes in stocks
        INV(cnt,sec)                                     ! Sectoral investments
        R_SV(cnt,com)                                    ! Multiplier for changes in stocks
        R_SH(cnt,hh)                                     ! Multiplier for households savings
*A: Split by labortype
        UR(cnt,ed,sex)                                   ! Unemployment multiplier
        GI(cnt)$(Gmax(cnt))                              ! Gini Multiplier
        CH(cnt,hh)$(Gmax(cnt))                                       ! Multiplier for deviations from average income

*====================================================================================
*=======================     Production Blocks    ===================================
*====================================================================================


*Domestic Production
$PROD:XD(cnt,sec)$(XDZ(cnt,sec) and P_S > 0 and not sameas(sec,"iH2S") and not sameas(sec,"iH2C") and not sameas(sec,"iH2E") and not sameas(sec,"iELC") and not sameas(sec,"iAGR") and not ressecs(sec))
+ t:0 s:ELAS(sec, "KLEM") sM(s):0 skle(s):ELAS(sec, "KLE")  sE(sKLE):0.1$(ES0 eq 1)  sE(sKLE):5$(ES0 eq 0) skl(skle):ELAS(sec, "KL") sk(skl):10 com.tl(sE):0  sEl(sE):0
O:PD(cnt,sec,com)$(XDDZ(cnt,sec,com))       Q:(XDDZ(cnt,sec,com)*gg(cnt,sec))
+        P:((1-taxpz(cnt,sec))/gg(cnt,sec))
+        A:GOVTL(cnt)   T:taxp(cnt,sec)

* Materials and services
I:P(cnt,com)$(PID(com) eq 0 or PID(com) eq 3)  Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))
+        P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sM:

* Non-fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=0 )
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sE:

* Fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=1)
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and CO2P(cnt,com,sec) and FF(com)=1 and CO2B(cnt))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*CO2r(cnt,com,sec)*cint(cnt,sec)*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:(1e-6)
+        com.tl:

* Hydrogen
I:P(cnt,"pH2")$(Pathway_adj(cnt, sec, "pH2"))
+        Q:(Pathway_adj(cnt, sec, "pH2")*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:(1/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        sE:


* energy generation
I:P(cnt,com)$(PID(com) = 2 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:

* energy transmission
I:P(cnt,com)$(PID(com)=4 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:


* Labour, Capital & Savings
I:PWage(cnt,sec)$(XDZ(cnt,sec) and not sameas(sec,"iH2S") and not sameas(sec,"iH2C")  and not sameas(sec,"iH2E"))              Q:(sum(ed,sum(sex,LWES(cnt,sec,ed,sex)))/(PRC(cnt)*(1+CPD(cnt)$GWsec(sec))))     P:(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))     skl:
I:RKC(cnt)$(Pathway_adj_cap(cnt, sec))        Q:(Pathway_adj_cap(cnt, sec))    sk:
I:PS(cnt)               Q:INVZ(cnt,sec)  sk:


*Agriculture Domestic Production
$PROD:XD(cnt,sec)$(XDZ(cnt,sec) and P_S > 0 and sameas(sec,"iAGR"))
+ t:0 s:ELAS(sec, "KLEM")  sR(s):0 sM(s):0 skle(s):ELAS(sec, "KLE")  sE(sKLE):0.1$(ES0 eq 1)  sE(sKLE):5$(ES0 eq 0) skl(skle):ELAS(sec, "KL") sk(skl):10 com.tl(sE):0  sEl(sE):0
O:PD(cnt,sec,com)$(XDDZ(cnt,sec,com))       Q:(XDDZ(cnt,sec,com)*gg(cnt,sec))
+        P:((1-taxpz(cnt,sec))/gg(cnt,sec))
+        A:GOVTL(cnt)   T:taxp(cnt,sec)

* Materials and services
I:P(cnt,com)$(PID(com) eq 0 or PID(com) eq 3)  Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))
+        P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sM:

* Non-fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=0 )
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sE:

* Fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=1)
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and CO2P(cnt,com,sec) and FF(com)=1 and CO2B(cnt))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*CO2r(cnt,com,sec)*cint(cnt,sec)*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:(1e-6)
+        com.tl:

* Hydrogen
I:P(cnt,"pH2")$(Pathway_adj(cnt, sec, "pH2"))
+        Q:(Pathway_adj(cnt, sec, "pH2")*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))     P:(1/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        sE:


* energy generation
I:P(cnt,com)$(PID(com) = 2 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:

* energy transmission
I:P(cnt,com)$(PID(com)=4 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:


* Labour, Capital & Savings
I:PWage(cnt,sec)$(XDZ(cnt,sec) and not sameas(sec,"iH2S") and not sameas(sec,"iH2C")  and not sameas(sec,"iH2E"))              Q:(sum(ed,sum(sex,LWES(cnt,sec,ed,sex)))/(PRC(cnt)*(1+CPD(cnt)$GWsec(sec))))     P:(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))     skl:
I:RKC(cnt)$(Pathway_adj_cap(cnt, sec))        Q:(Pathway_adj_cap(cnt, sec))    sk:
I:PS(cnt)               Q:INVZ(cnt,sec)  sk:
I:PLR(cnt)$(sameas(sec,"iAGR"))                Q:LR(cnt)                       sR:

*Domestic Production
$PROD:XD(cnt,sec)$(XDZ(cnt,sec) and P_S > 0 and ressecs(sec) )
+ t:0  s:0.5 sR(s):0 s1(s):ELAS(sec, "KLEM") sM(s1):0 skle(s1):1  com.tl(skle):0  sEl(skle):0
*Feb26
O:PD(cnt,sec,com)$(XDDZ(cnt,sec,com))       Q:(XDDZ(cnt,sec,com)*gg(cnt,sec))
+        P:((1-taxpz(cnt,sec))/gg(cnt,sec))
+        A:GOVTL(cnt)   T:taxp(cnt,sec)

* Materials and services
I:P(cnt,com)$(PID(com) eq 0 or PID(com) eq 3)            Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))
+        P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sM:

* Non-fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=0 )
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        skle:

* Fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=1)
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and CO2P(cnt,com,sec) and FF(com)=1 and CO2B(cnt))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*CO2r(cnt,com,sec)*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec)))*cint(cnt,sec))     P:(1e-6)
+        com.tl:


* Hydrogen
I:P(cnt,"pH2")$(Pathway_adj(cnt, sec, "pH2"))
+        Q:(Pathway_adj(cnt, sec, "pH2")*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))      P:(1/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        skle:


* Energy generation
I:P(cnt,com)$(PID(com) = 2 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:

* Energy transmission
I:P(cnt,com)$(PID(com)=4 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))       P:((1+taxcz(cnt,com))/(eint(cnt)$(not ensecs(sec))+1$(ensecs(sec))))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:


* Labour, Capital & Resources
I:PWage(cnt,sec)$(XDZ(cnt,sec) and not sameas(sec,"iH2S") and not sameas(sec,"iH2C")  and not sameas(sec,"iH2E"))               Q:(sum(ed,sum(sex,LWES(cnt,sec,ed,sex)))/(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))) P:(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))                                     skle:
I:RKC(cnt)$(Pathway_adj_cap(cnt, sec))        Q:(Pathway_adj_cap(cnt, sec))         skle:
I:POG(cnt)$(sameas(sec,"iCOI"))               Q:OGR(cnt)                       sR:
I:PCL(cnt)$(sameas(sec,"iCOA"))               Q:CR(cnt)                        sR:
I:PNG(cnt)$(sameas(sec,"iNG"))                Q:NGR(cnt)                       sR:


*write old structure. Forget increase in land.
*Domestic Production
$PROD:XD(cnt,sec)$(XDZ(cnt,sec) and P_S > 0 and sameas(sec,"iELC") )
+ t:0 s:ELAS(sec, "KLEM") sM(s):0 skle(s):ELAS(sec, "KLE")  sE(sKLE):0.1$(ES0 eq 1)  sE(sKLE):5$(ES0 eq 0)  skl(skle):ELAS(sec, "KL")  com.tl(sE):0  sEl(sE):0
O:PD(cnt,sec,com)$(XDDZ(cnt,sec,com) > 1e-6)       Q:(XDDZ(cnt,sec,com)*Rp(cnt)*gg(cnt,sec))
+        P:((1-taxpz(cnt,sec))/(gg(cnt,sec)*Rp(cnt)))
+        A:GOVTL(cnt)   T:taxp(cnt,sec)

*Materials and services
I:P(cnt,com)$(PID(com) eq 0 or PID(com) eq 3)            Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))
+        P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sM:

* non-fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=0 )
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))       P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sE:

* fossil fuels
I:P(cnt,com)$(PID(com) = 1 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)) and FF(com)=1)
+        Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))       P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and CO2P(cnt,com,sec) and FF(com)=1 and CO2B(cnt))
+        Q:((IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))*CO2r(cnt,com,sec)*cint(cnt,sec))     P:(1e-6)
+        com.tl:

* Hydrogen
I:P(cnt,"pH2")$(Pathway_adj(cnt, sec, "pH2"))
+        Q:(Pathway_adj(cnt, sec, "pH2"))      P:1
+        sE:


* Energy generation
I:P(cnt,com)$(PID(com) = 2 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))       P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:

* Energy transmission
I:P(cnt,com)$(PID(com)=4 and (IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com)))
+        Q:(IOZ(cnt,com,sec)+Pathway_adj(cnt, sec, com))       P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)                 T:taxc(cnt,com)
+        sEl:
* Labour, Capital & Resources
I:PWage(cnt,sec)$(XDZ(cnt,sec))    Q:(sum(ed,sum(sex,LWES(cnt,sec,ed,sex)))/(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))) P:(PRC(cnt)*(1+CPD(cnt)$GWsec(sec)))                                   skl:
I:RKC(cnt)$(Pathway_adj_cap(cnt, sec))        Q:(Pathway_adj_cap(cnt, sec))       skl:



*Hydrogen Production
$PROD:XD(cnt,"iH2S") t:0 s:ELAS("iH2S", "KLEM") sM(s):0 skle(s):ELAS("iH2S", "KLE")  sE(sKLE):1 skl(skle):ELAS("iH2S", "KL") com.tl(sE):0 sEl(sE):0
O:PD(cnt,"iH2S","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))      Q:(3*open(cnt,"iH2S")*Rp(cnt)*GG(cnt,"iH2S"))   P:(1/(Rp(cnt)*GG(cnt,"iH2S")))

* Materials and services
I:P(cnt,com)$((PID(com) eq 0 or PID(com) eq 3) and InputCom("iH2S",com)    )   Q:InputCom("iH2S",com)
+        A:GOVTL(cnt)   T:taxc(cnt,com)        sM:

* Fuels
I:P(cnt,com)$(PID(com) = 1 and InputCom("iH2S",com)    )                       Q:(InputCom("iH2S",com))   P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)    com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and FF(com)=1 and CO2B(cnt) and InputCom("iH2S",com))
+        Q:(InputCom("iH2S",com)*CO2r(cnt,com,"iNG")*cint(cnt,"iH2S"))     P:(1e-6)
+        com.tl:

* Energy generation
I:P(cnt,com)$(PID(com) = 2  and InputCom("iH2S",com)    )                      Q:(InputCom("iH2S",com))  P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)          sEl:

* Energy transmission
I:P(cnt,com)$(PID(com) = 4  and InputCom("iH2S",com)    )                      Q:(InputCom("iH2S",com))  P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)           sEl:

* Labour, Capital & Savings
I:PWage(cnt,"iIND")    Q:(0.21/(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2S")))) P:(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2S")))       skl:
I:RKC(cnt)                                                       Q:(1.34)            skl:

*$PROD:XD(cnt,"iH2C") t:0 s:ELAS("iH2C", "KLME") sM(sKLM):0 sklm(s):ELAS("iH2C", "KLM")  sE(s):0.1 skl(sklm):ELAS("iH2C", "KL") com.tl(sE):0
$PROD:XD(cnt,"iH2C") t:0 s:ELAS("iH2C", "KLEM") sM(s):0 skle(s):ELAS("iH2C", "KLE")  sE(sKLE):1 skl(skle):ELAS("iH2C", "KL") com.tl(sE):0  sEl(sE):0
O:PD(cnt,"iH2C","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))      Q:(3*open(cnt,"iH2C")*Rp(cnt)*GG(cnt,"iH2C"))        P:(1/(GG(cnt,"iH2C")*Rp(cnt)))

* Materials and services
I:P(cnt,com)$((PID(com) eq 0 or PID(com) eq 3) and InputCom("iH2C",com))   Q:InputCom("iH2C",com)
+        A:GOVTL(cnt)   T:taxc(cnt,com)        sM:

* Fuels
I:P(cnt,com)$(PID(com) = 1 and InputCom("iH2C",com))                       Q:(InputCom("iH2C",com))      P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)    sE:


* Energy generation
I:P(cnt,com)$(PID(com) = 2  and InputCom("iH2C",com))                      Q:(InputCom("iH2C",com))      P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)          sEl:

* Energy transmission
I:P(cnt,com)$(PID(com) = 4  and InputCom("iH2C",com))                      Q:(InputCom("iH2C",com))      P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)           sEl:

* Labour, Capital & Savings
I:PWage(cnt,"iIND")     Q:(0.21*1.02/(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2C")))) P:(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2C")))          skl:
I:RKC(cnt)                                                       Q:(1.34*1.1)                  skl:


*Hydrogen Production
$PROD:XD(cnt,"iH2E") t:0 s:ELAS("iH2E", "KLEM") sM(s):0 skle(s):ELAS("iH2E", "KLE")  sE(sKLE):1 skl(skle):ELAS("iH2E", "KL") com.tl(sE):0  sEl(sE):0
O:PD(cnt,"iH2E","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))      Q:(3*open(cnt,"iH2E")*Rp(cnt)*GG(cnt,"iH2E"))               P:(1/(GG(cnt,"iH2E")*Rp(cnt)))

* Materials and services
I:P(cnt,com)$((PID(com) eq 0 or PID(com) eq 3) and InputCom("iH2E",com))   Q:InputCom("iH2E",com)
+        A:GOVTL(cnt)   T:taxc(cnt,com)        sM:

* Fuels
I:P(cnt,com)$(PID(com) = 1 and InputCom("iH2E",com))                       Q:(InputCom("iH2E",com))          P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)    com.tl:

* CO2 allowances
I:PCO2(cnt)#(com)$(PID(com) = 1 and FF(com)=1 and CO2B(cnt) and InputCom("iH2E",com))
+        Q:(InputCom("iH2E",com)*CO2r(cnt,com,"iNG")*cint(cnt,"iH2E"))     P:(1e-6)
+        com.tl:

* Energy generation
I:P(cnt,com)$(PID(com) = 2  and InputCom("iH2E",com))                      Q:(InputCom("iH2E",com))    P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)          sEl:

* Energy transmission
I:P(cnt,com)$(PID(com) = 4  and InputCom("iH2E",com))                      Q:(InputCom("iH2E",com))    P:(1)
+        A:GOVTL(cnt)   T:taxc(cnt,com)           sEl:


* Labour, Capital & Savings
I:PWage(cnt,"iIND")    Q:(0.1/(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2E"))))   P:(PRC(cnt)*(1+CPD(cnt)$GWsec("iH2E")))        skl:
I:RKC(cnt)                                                       Q:(0.53)                             skl:


*===================================================================
*=======================    UTILITY BLOCKS    ======================
*===================================================================


*Households Utility/Welfare
$PROD:U(cnt,hh)$(P_S > 0)      s:1 com.tl(s):0 sEl(s):0
*A: Add households
O:PU(cnt,hh)      Q:(CBUDZ(cnt,hh) + Pathway_total(cnt, hh)$(Pathway_total(cnt, hh)<0))
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and PID(com) ne 1 and PID(com) ne 2 and PID(com) ne 4)   Q:(CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com) )
+        P:(1+taxcz(cnt, com))        A:GOVTL(cnt)       T:taxc(cnt,com)
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 1))   Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))       A:GOVTL(cnt)       T:taxc(cnt,com)
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 2))   Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*eintHH(cnt))
+        P:((1+taxcz(cnt,com))/eintHH(cnt))       A:GOVTL(cnt)       T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 4))   Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))       A:GOVTL(cnt)       T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(P_S > 0 and FF(com)=1 and not sameas(com,"pNG"))   Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))        A:GOVTL(cnt)       T:taxc(cnt,com)
+        com.tl:

I:P(cnt,com)$(P_S > 0 and FF(com)=1 and sameas(com, "pNG"))   Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*eintHH(cnt))
+        P:((1+taxcz(cnt,com))/eintHH(cnt))        A:GOVTL(cnt)       T:taxc(cnt,com)
+        com.tl:
I:PCO2(cnt)#(com)$(CO2H(cnt,com,hh) and FF(com)=1 and CO2B(cnt))    Q:((CZ(cnt,com,hh) + Pathway_adj(cnt, hh, com))*CO2r(cnt,com,hh)*cint(cnt,"iSER")*eintFC(cnt))
+  P:(1e-6)       com.tl:


*Local Government Utility
$PROD:UGL(cnt)$(P_S > 0)    s:1 com.tl(s):0 sEl(s):0
O:PUGL(cnt)                 Q:(CBUDGLZ(cnt) + Pathway_total(cnt, "Govt")$(Pathway_total(cnt, "Govt")<0) )
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and PID(com) ne 1 and PID(com) ne 2 and PID(com) ne 4)  Q:(CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com))
+        P:(1+taxcz(cnt,com) )
+        A:GOVTL(cnt)      T:taxc(cnt,com)
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 1))  Q:((CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))
+        A:GOVTL(cnt)      T:taxc(cnt,com)
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 2))  Q:((CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))
+        A:GOVTL(cnt)      T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(P_S > 0 and FF(com) = 0 and (PID(com) eq 4))  Q:((CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))
+        A:GOVTL(cnt)      T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(P_S > 0 and FF(com)=1)   Q:((CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com))*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))    A:GOVTL(cnt)       T:taxc(cnt,com)
+        com.tl:
I:PCO2(cnt)#(com)$(CO2G(cnt,com) and FF(com)=1 and CO2B(cnt))    Q:((CGLZ(cnt,com) + Pathway_adj(cnt, "GOVT", com) )*CO2r(cnt,com,"GOVT")*cint(cnt,"iSER")*eintFC(cnt))
+  P:(1e-6)       com.tl:

*Investment Sector Utility
$PROD:UINVB(cnt)  s:1 com.tl(s):0 sEl(s):0
O:PUINVB(cnt) Q:ITZ(cnt)
I:P(cnt,com)$(FF(com)=0 and PID(com) ne 1 and PID(com) ne 2 and PID(com) ne 4)  Q:(IZ(cnt,com)) P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)        T:taxc(cnt,com)
I:P(cnt,com)$(FF(com)=0 and (PID(com) eq 1))  Q:(IZ(cnt,com)) P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)        T:taxc(cnt,com)
I:P(cnt,com)$(FF(com)=0 and (PID(com) eq 2))  Q:(IZ(cnt,com)) P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)        T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(FF(com)=0 and (PID(com) eq 4))  Q:(IZ(cnt,com)) P:(1+taxcz(cnt,com))
+        A:GOVTL(cnt)        T:taxc(cnt,com)
+ sEl:
I:P(cnt,com)$(FF(com)=1)   Q:(IZ(cnt,com)*eintFC(cnt))
+        P:((1+taxcz(cnt,com))/eintFC(cnt))        A:GOVTL(cnt)       T:taxc(cnt,com)
+        com.tl:
I:PCO2(cnt)#(com)$(CO2I(cnt,com) and FF(com)=1 and CO2B(cnt))    Q:((IZ(cnt,com))*CO2r(cnt,com,"INV")*cint(cnt,"iSER")*eintFC(cnt))
+  P:(1e-6)      com.tl:

*=====================================================================
*========================   TRADE BLOCKS    ==========================
*=====================================================================

*Domestic/Regional/International production split
$PROD:EXPORT(cnt,com)$( sum(sec, XDDZ(cnt,sec,com) ) and not sameas(com,"pH2")) t:1.4$(worldcom(com)=0) t:5$(worldcom(com)=1) s:1.2
O:ERint#(cntt)                                                           Q:(TRADEZ(com,cnt,cntt))
O:PDD(cnt,com)$(XXDZ(cnt,com)>1e-6)                                      Q:XXDZ(cnt,com)
O:ERext                                                                  Q:(EROWZ(cnt,com)*ROWgt*(1+ROWc$sameas(com,'pCOA')))   P:(1/(1+ROWc$sameas(com,'pCOA')))
I:PD(cnt,sec,com)$(XDDZ(cnt,sec,com))                                    Q:(XDDZ(cnt,sec,com))


*Domestic/Regional/International production split
$PROD:EXPORT(cnt,"pH2") t:1.2 s:5
O:ERint#(cntt)                                                           Q:(TRADEZ("pNG",cnt,cntt)*0.99)
O:PDD(cnt,"pH2")                                                         Q:(XXDZ(cnt,"pNG")*0.99)
O:ERext                                                                  Q:(EROWZ(cnt,"pNG")*ROWgt*0.99)
I:PD(cnt,"iH2C","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))                    Q:(0.34*sum(sec,XDDZ(cnt,sec,"pNG")))
I:PD(cnt,"iH2S","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))                    Q:(0.33*sum(sec,XDDZ(cnt,sec,"pNG")))
I:PD(cnt,"iH2E","pH2")$(sum(sec,XDDZ(cnt,sec,"pNG")))                    Q:(0.33*sum(sec,XDDZ(cnt,sec,"pNG")))

*Armington Composite Good
$PROD:X(cnt,com)$(XZ(cnt,com) and not sameas(com,"pH2")) s:elasM(com)$(worldcom(com)=0)   s:5$(worldcom(com)=1)   s2:0 s3:0
O:P(cnt,com)                                                             Q:(XZ(cnt,com) )
I:PDD(cnt,com)$(XXDZ(cnt, com)>1e-6)                                     Q:(XXDZ(cnt,com)+Pathway_adj_TRADE(cnt, com, cnt))   s2:
I:PTM(cnt, cntt)$(ord(cnt) eq ord(cntt))                                 Q:(trademargins(com, cntt, cnt) + Pathway_adj_TRADEMARGIN(cnt, com, cntt))     s2:
I:ERext                                                                  Q:(MROWZ(cnt,com) + Pathway_adj_ROW(cnt,com))
I:ERint#(cntt)                                                           Q:(TRADEZ(com,cntt,cnt)+Pathway_adj_TRADE(cnt, com, cntt))    A:GOVTL(cnt) T:tfp(cntt)   s3:
I:PTM(cnt, cntt)$(ord(cnt) ne ord(cntt))                                 Q:(trademargins(com, cntt, cnt) +Pathway_adj_TRADEMARGIN(cnt, com, cntt))        s3:

*Armington Composite Good
* For H2 Put the same structure as Natural Gas.
$PROD:X(cnt,"pH2")  s:5  s2:0 s3:0
O:P(cnt,"pH2")$(sum(sec,Pathway_adj(cnt, sec,"pH2")))                    Q:(XZ(cnt,"pNG")*0.99)
I:PDD(cnt,"pH2")                                                         Q:XXDZ(cnt,"pNG")                   s2:
I:PTM(cnt, cntt)$(ord(cnt) eq ord(cntt))                                 Q:(trademargins("pNG", cntt, cnt) ) s2:
I:ERext                                                                  Q:MROWZ(cnt,"pNG")
I:ERint#(cntt)                                                           Q:TRADEZ("pNG",cntt,cnt)            s3:
I:PTM(cnt, cntt)$(ord(cnt) ne ord(cntt))                                 Q:trademargins("pNG", cntt, cnt)    s3:

*Transport transforms the bulk "TTM" product purchsed by the traders into
*payments to the transport industries.
$PROD:TRANSP(cnt)  s:1  com.tl(s):0  t:0
O:PTM(cnt, cntt)#(com)                           Q:(trademargins(com, cntt,cnt) )
I:P(cnt,com)$(FF(com) eq 0)                      Q:(TMXZ(cnt,com))
I:P(cnt,com)$(FF(com) eq 1)                      Q:(TMXZ(cnt,com)*eintFC(cnt))        P:(1/eintFC(cnt))                       com.tl:
I:PCO2(cnt)#(com)$(FF(com)=1 and CO2B(cnt))      Q:(TMXZ(cnt,com)*CO2r(cnt,com,"tmarg")*cint(cnt,"iSER")*eintFC(cnt)) P:(1e-6)  com.tl:

*===================================================================
*=======================    LABOR BLOCK    ======================
*===================================================================
* The two sexes are together under the same education.
* So, we create an ed.tl elasticities under which both sexes are grouped for a given education
* We set the elasticity among the two sexes within the same education as 1 (Cobb-Douglas)
* Then we group the different educations in a Leontief nest to establish that it is not possible to substitute between skills.
$PROD:VLAB(cnt,sec)$(XDZ(cnt,sec)) s:sigEdu(cnt) ed.tl(s):1
O:PWage(cnt,sec)                    Q:(sum((ed,sex),LWES(cnt,sec,ed,sex))) 
I:PWES(cnt,ed,sex)                  Q:LWES(cnt,sec, ed,sex) ed.tl:


*========================================================================
*========================    DEMAND BLOCKS    ===========================
*========================================================================


*Household Demand
*A: Add households (might need more change here)
$DEMAND:HOUS(cnt,hh)
*Add labor types
*Jan26 Remove LENDOW gdp growth, instead use pop growth defined in counterfactuals
E:PWES(cnt,ed,sex)$(LENDOW(cnt,hh,ed,sex))                       Q:(LENDOW(cnt,hh,ed,sex)*(1-ty(cnt))/(1-urate(cnt)))
E:PWES(cnt,ed,sex)$(LENDOW(cnt,hh,ed,sex))                       Q:(-(LENDOW(cnt,hh,ed,sex)*(1-ty(cnt)))/(1-urate(cnt))) R:UR(cnt,ed,sex)
*Jan26 change to update KENDOW instead, remove gdp
E:RKC(cnt)                                                       Q:(KENDOW(cnt,hh)*(1-ty(cnt)))
* if GI is zero then the household gets KENDOW, if GI is one the household will get the average over the households - NOT SURE IF THIS SHOULD BE HERE OR IN A TAX OR ANOTHER AGENT WHO ONLY REALLOCATES INCOME
E:POG(cnt)$AOGR(cnt,hh)                                          Q:(AOGR(cnt,hh))
E:PCL(cnt)$ACR(cnt,hh)                                           Q:(ACR(cnt,hh))
E:PNG(cnt)$ANGR(cnt,hh)                                          Q:(ANGR(cnt,hh))
E:PLR(cnt)$ALR(cnt,hh)                                           Q:(ALR(cnt,hh))
E:PTR(cnt)                                                       Q:(TRANSFZ(cnt,hh)*growth_p(cnt))     R:PCINDEX(cnt,hh)
E:PS(cnt)                                                        Q:(-SHZ(cnt,hh)*gdp_p(cnt))        R:R_SH(cnt,hh)
E:ERext                                                          Q:(TRHROWZ(cnt,hh)*gdp_p(cnt))
E:PTH(cnt)$(Gmax(cnt))                                           Q:((TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)) R:CH(cnt,hh)
D:PU(cnt,hh)                                                     Q:(CBUDZ(cnt,hh))


*Local Government Demand
$DEMAND:GOVTL(cnt)
E:PCO2(cnt)$(CO2B(cnt))                                                                                  Q:CO2B(cnt)
*Jan26 Question: What do we really use this for
E:RKC(cnt)$(sum(sec,pathway_adj_cap(cnt, sec)) and (sum(sec,pathway_total(cnt, sec))<0 and P_S>0))       Q:(-sum(sec,pathway_total(cnt, sec))*gdp_p(cnt))
E:PS(cnt)                                                                                                Q:(-SGZ(cnt)*gdp_p(cnt))              R:PIINDEX(cnt)
E:ERext                                                                                                  Q:(TRROWZ(cnt)*gdp_p(cnt))
*Add sum over households
E:PTR(cnt)#(hh)                                                                                          Q:(-TRANSFZ(cnt,hh)*growth_p(cnt))           R:PCINDEX(cnt,hh)
D:PUGL(cnt)                                                                                              Q:(CBUDGLZ(cnt)-sum(sec, pathway_total(cnt, sec)))


*Local Investment Sector
$DEMAND:INVB(cnt)
E:PS(cnt)#(hh)                           Q:(SHZ(cnt,hh)*gdp_p(cnt))        R:R_SH(cnt,hh)
E:PS(cnt)                                Q:(SGZ(cnt)*gdp_p(cnt))           R:PIINDEX(cnt)
E:ERext                                  Q:(SROWZ(cnt)*gdp_p(cnt))
E:P(cnt,com)                             Q:(-SVZ(cnt,com)*gdp_p(cnt))      R:R_SV(cnt,com)
E:PS(cnt)                                Q:(sum(sec,INVZ(cnt,sec)*XD.L(cnt,sec))*gdp_p(cnt))
D:PUINVB(cnt)                            Q:(ITZ(cnt))





*============================================================================
*========================    ENDOGENOUS ADJUSTMENTS    ======================
*============================================================================



*Definition of consumer price index
*A: Add sum over households
$CONSTRAINT:PCINDEX(cnt,hh)
         PCINDEX(cnt,hh) =e= sum(com, (1+taxc(cnt,com))*P(cnt,com) *CZ(cnt,com,hh)) /
                sum(com, (1+taxcz(cnt,com))*CZ(cnt,com,hh))  ;


*Definition of local inverstment index
$CONSTRAINT:PIINDEX(cnt)
         PIINDEX(cnt) =e= sum(com, (1+taxc(cnt,com))*P(cnt,com) *IZ(cnt,com) ) /
                sum(com, (1+taxcz(cnt,com))*IZ(cnt,com) )  ;


$CONSTRAINT:R_SV(cnt,com)
    R_SV(cnt,com) =e= X(cnt,com) ;


$CONSTRAINT:R_SH(cnt,hh)
   R_SH(cnt,hh) =e=  HOUS(cnt,hh)/(CBUDZ(cnt,hh));

* I need to add 0.0001 to the UR because in some cases it gets near zero
* and I cannot have a zero value elevated by a negative power (division by zero)
* the 0.0001 prevents that.
$CONSTRAINT:UR(cnt,ed,sex)$(urate(cnt) and P_S eq 2 )
PWES(cnt,ed,sex)/PU(cnt,"Q3")=g=((UR(cnt,ed,sex)+0.0001)**(-0.1))/(urate(cnt)**(-0.1));

$CONSTRAINT:UR(cnt,ed,sex)$(urate(cnt) and P_S eq 10 and step5 eq 0 )
PWES(cnt,ed,sex)/PU(cnt,"Q3")=g=((UR(cnt,ed,sex)+0.0001)**(-0.1))/(urate(cnt)**(-0.1));

$CONSTRAINT:UR(cnt,ed,sex)$(urate(cnt) and P_S eq 10 and step5 eq 1)
PWES(cnt,ed,sex)/PU(cnt,"Q1")=g=0.5;


* This works with 5 households with equal size of population in each household (20% allocated in each segment)
$CONSTRAINT:GI(cnt)$(Gmax(cnt))
Gmax(cnt) =g= (6- 2 * sum(hh,(6 - rankM(cnt,hh)) *
           (sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),(LENDOW(cnt,hh,ed,sex)
           - GI(cnt) * (LENDOW(cnt,hh,ed,sex) - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/5))* (1-ty(cnt))/ (1-urate(cnt))* (1-UR(cnt,ed,sex))* PWES(cnt,ed,sex) ))
           + RKC(cnt) * (KENDOW(cnt,hh)-GI(cnt)*(KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/5) * (1-ty(cnt)))
           + POG(cnt) * (AOGR(cnt,hh)-GI(cnt)*(AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/5))
           + PCL(cnt) * (ACR(cnt,hh)-GI(cnt)*(ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/5))
           + PNG(cnt) * (ANGR(cnt,hh)-GI(cnt)*(ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5))
           + PLR(cnt) * (ALR(cnt,hh)-GI(cnt)*(ALR(cnt,hh)-sum(housesplit,ALR(cnt,housesplit))/5))
           )
           )
           /
           sum(housesplit,sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),LENDOW(cnt,housesplit,ed,sex)* (1-ty(cnt))/ (1-urate(cnt))*(1-UR(cnt,ed,sex))*PWES(cnt,ed,sex)))
           + RKC(cnt) * KENDOW(cnt,housesplit) * (1-ty(cnt))
           + POG(cnt) * AOGR(cnt,housesplit)
           + PCL(cnt) * ACR(cnt,housesplit)
           + PNG(cnt) * ANGR(cnt,housesplit)
           + PLR(cnt) * ALR(cnt,housesplit)
           )
           ) / 4;

* TI must be the total income in the benchmark year. CH(cnt,hh) is the multiplier
* that transforms the sum in the baseline into the sum in the given year, given
* what happens to each of the components

$CONSTRAINT:CH(cnt,hh)$(Gmax(cnt))
PTH(cnt)*(TI(cnt,hh)-sum(housesplit,TI(cnt,housesplit))/5)*CH(cnt,hh)=e=
         sum(ltype,sum((ed,sex)$lmap(ed,sex,ltype),(
         GI(cnt) * (LENDOW(cnt,hh,ed,sex) - sum(housesplit,LENDOW(cnt,housesplit,ed,sex))/5))* (1-ty(cnt))/ (1-urate(cnt))* (1-UR(cnt,ed,sex))* PWES(cnt,ed,sex)))
         + RKC(cnt) * (GI(cnt)*(KENDOW(cnt,hh)-sum(housesplit,KENDOW(cnt,housesplit))/5) * (1-ty(cnt)))
         + POG(cnt) * (GI(cnt)*(AOGR(cnt,hh)-sum(housesplit,AOGR(cnt,housesplit))/5))
         + PCL(cnt) * (GI(cnt)*(ACR(cnt,hh)-sum(housesplit,ACR(cnt,housesplit))/5))
         + PNG(cnt) * (GI(cnt)*(ANGR(cnt,hh)-sum(housesplit,ANGR(cnt,housesplit))/5))
         + PLR(cnt) * (GI(cnt)*(ALR(cnt,hh)-sum(housesplit,ALR(cnt,housesplit))/5));


*========================================================================
*=========================    REPORT BLOCKS    ==========================
*========================================================================
$REPORT:
V:II(cnt)                         O:PUINVB(cnt)           PROD:UINVB(cnt)
V:R_PD_XD(cnt, sec, com)          O:PD(cnt, sec, com)     PROD:XD(cnt, sec)
V:REP_Welfare(cnt,hh)             O:PU(cnt,hh)         PROD:U(cnt,hh)
V:REP_Welfare_B(cnt,hh)$(P_S>1)   O:PU(cnt,hh)         PROD:U_B(cnt,hh)
V:REP_LabourSec(cnt, sec)$(not sameas(sec,"iH2E") and not sameas(sec,"iH2S") and not sameas(sec,"iH2C"))         I:PWage(cnt,sec)       PROD:XD(cnt, sec)
V:REP_LabourSec(cnt, sec)$(sameas(sec,"iH2E"))      I:PWage(cnt,"iIND")    PROD:XD(cnt, sec)
V:REP_LabourSec(cnt, sec)$(sameas(sec,"iH2C"))      I:PWage(cnt,"iIND")    PROD:XD(cnt, sec)
V:REP_LabourSec(cnt, sec)$(sameas(sec,"iH2S"))      I:PWage(cnt,"iIND")    PROD:XD(cnt, sec)
V:REP_LabourTYPE(cnt, sec, ed, sex) I:PWES(cnt,ed,sex)   PROD:VLAB(cnt, sec)
V:REP_Capital(cnt, sec)          I:RKC(cnt)              PROD:XD(cnt, sec)
V:REP_Production(cnt, sec, com)  O:PD(cnt, sec, com)     PROD:XD(cnt, sec)

*A: Add household split
*V:REP_Income(cnt,hh)             W:HOUS(cnt,hh)
V:REP_HOUS_CONS(cnt,hh)          O:PU(cnt,hh)            PROD:U(cnt,hh)
V:REP_GOV_CONS(cnt)              O:PUGL(cnt)             PROD:UGL(cnt)
V:REP_EXP_EU(cnt, com)           O:ERint                 PROD:EXPORT(cnt, com)
V:REP_EXPout(cnt,com)            O:ERext                 PROD:EXPORT(cnt,com)
V:REP_IMPout(cnt, com)           I:ERext                 PROD:X(cnt, com)
V:REP_IMP_EU(cnt,com)            I:ERint                 PROD:X(cnt,com)
V:DPDM(cnt,com)                  I:PDD(cnt,com)          PROD:X(cnt,com)
V:REP_IMP_PTM(cnt, com, cntt)$(ord(cnt) ne ord(cntt))    I:PTM(cnt, cntt)        PROD:X(cnt, com)
V:REP_SEC_OUT(cnt, sec, com)     O:PD(cnt, sec, com)     PROD:XD(cnt, sec)
V:REP_SEC_IN(cnt, sec, com)      I:P(cnt, com)           PROD:XD(cnt, sec)
V:TMout(com,cnt)                 I:P(cnt,com)            PROD:TRANSP(cnt)
V:TMin(com,cnt,cntt)             I:PTM(cnt,cntt)         PROD:X(cnt,com)
V:DCO2(cnt,sec,com)              I:PCO2(cnt)             PROD:XD(cnt,sec)
V:R_P_XD(cnt, sec, com)          I:P(cnt, com)           PROD:XD(cnt,sec)

*A: Add household to find household demand
V:HOUS_DEM(cnt,com,hh)           I:P(cnt,com)            PROD:U(cnt,hh)
V:GOVT_DEM(cnt,com)              I:P(cnt,com)            PROD:UGL(cnt)
V:INVB_DEM(cnt,com)              I:P(cnt,com)            PROD:UINVB(cnt)
V:CO2S_dem(cnt,sec)              I:PCO2(cnt)             PROD:XD(cnt,sec)
V:CO2H_dem(cnt,hh)               I:PCO2(cnt)             PROD:U(cnt,hh)
V:CO2G_dem(cnt)                  I:PCO2(cnt)             PROD:UGL(cnt)
V:CO2I_dem(cnt)                  I:PCO2(cnt)             PROD:UINVB(cnt)
V:CO2T_dem(cnt)                  I:PCO2(cnt)             PROD:TRANSP(cnt)

$OFFTEXT


* ============                               ===================
* ============ INCLUDE THE MPSGE FILES ABOVE ===================
* ============                               ===================

$SYSINCLUDE mpsgeset Arrow_Debreu
