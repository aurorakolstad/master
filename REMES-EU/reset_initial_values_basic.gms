*$SECTORS:
*change to account for more households
        U.L(cnt,hh)                    = 1 ;
        UGL.l(cnt)                  = 1 ;
        UINVB.l(cnt)                = 1 ;
        XD.l(cnt,sec)$XDZ(cnt,sec)  = 1 ;
        XD.l(cnt,"iH2S")            = 0 ;
        XD.l(cnt,"iH2C")            = 0 ;
        XD.l(cnt,"iH2E")            = 0 ;
        X.l(cnt,com)$XZ(cnt,com)    = 1 ;
        X.l(cnt,"pH2")             = 0 ;
        TRANSP.l(cnt)               = 1 ;
        EXPORT.l(cnt,com)$(sum(sec, XDDZ(cnt,sec,com)))  = 1 ;
        EXPORT.l(cnt,"pH2")        = 0 ;
        VLAB.l(cnt,sec)$(XDZ(cnt,sec) and not sameas(sec,"iH2S") and not sameas(sec,"iH2C")  and not sameas(sec,"iH2E")) = 1;
*        VLAB.l(cnt,sec)$(sameas(sec,"iH2S") or sameas(sec,"iH2C")  or sameas(sec,"iH2E")) = 0;

*$COMMODITIES:
*Add households
        PU.L(cnt,hh)                   = 1 ;
        PUGL.L(cnt)                 = 1 ;
        PUINVB.L(cnt)               = 1 ;
        PD.l(cnt,sec,com)=0;
        PD.l(cnt,sec,com)$(XDDZ(cnt,sec,com))  = 1 ;
        PD.l(cnt,"iH2S","pH2")           =1;
        PD.l(cnt,"iH2C","pH2")           =1;
        PD.l(cnt,"iH2E","pH2")           =1;
        P.L(cnt,com)$XZ(cnt,com)    = 1 ;
        P.L(cnt,"pH2")             = 1 ;
        PDD.L(cnt,com)$(sum(sec,XDDZ(cnt,sec,com)))    = 1 ;
        PDD.L(cnt,"pH2")           = 1 ;
*        PETRADE.L(com,cnt,cntt)$(TRADEZ(com,cnt,cntt)$(ord(cnt) ne ord(cntt)))   = num ;
*        PL.L(cnt)                   = 1 ;
        RKC.L(cnt)                  = 1 ;
*        RKCC.L(cnt)                  = num ;
*        RKC.L(cnt)                  = num ;
        ERint.L                        = 1 ;
        ERext.L                             = 1 ;
        PS.L(cnt)                    = 1 ;
*        PIT.L                       = num ;
        PTM.L(cnt, cntt)             = 1 ;
        PTR.L(cnt)                   = 1 ;
        PCO2.L(cnt)=0;
        PCO2.L(cnt)$(CO2B(cnt))  = 1 ;
        PS.l(cnt)=1;
*Prices for specific resources
        POG.l(cnt)=1;
        PCL.l(cnt)=1;
        PNG.l(cnt)=1;

*Add PWES and PWage
        PWES.l(cnt,ed,sex) = 1;
        PWage.l(cnt,sec) = 1;
        PTH.l(cnt) = 1;
        PTH.l(cnt)$(Gmax(cnt)) = 1;

*$CONSUMERS:
        HOUS.L(cnt,hh)                 = (CBUDZ(cnt,hh)) ;
        GOVTL.L(cnt)                = CBUDGLZ(cnt) ;
        INVB.L(cnt)                 = ITZ(cnt) ;

*$AUXILIARY:
        PCINDEX.L(cnt,hh)  = 1 ;
        R_SV.L(cnt,com) = 1 ;
        R_SV.L(cnt,"pH2") = 0 ;
        R_SH.L(cnt,hh)     = 1 ;
        PIINDEX.L(cnt)  = 1 ;
        UR.L(cnt,ed,sex)        = urate(cnt) ;
        GI.l(cnt)=0;
        CH.l(cnt,hh)=0;
        CH.up(cnt,hh)=smax(housesplit,CHs(cnt,housesplit));
        CH.lo(cnt,hh)=-smax(housesplit,CHs(cnt,housesplit));
*        PGINDEX.L(cnt)  = num ;


* MODEL CLOSURE
*LS.FX(cnt,ltype)  = LtypeSZ(cnt,ltype) ;
        KS.FX(cnt,hh)  = KENDOW(cnt,hh) ;
        LS.FX(cnt,hh,ed,sex) =LENDOW(cnt,hh,ed,sex);
        TRANSF.FX(cnt,hh) = TRANSFZ(cnt,hh)  ;
        TRROW.FX(cnt)  = TRROWZ(cnt)   ;
        TRHROW.FX(cnt,hh) = TRHROWZ(cnt,hh)   ;

        SH.FX(cnt,hh)       = SHZ(cnt,hh)       ;
        SGL.FX(cnt)       = SGZ(cnt)     ;
        SROW.FX(cnt)     = SROWZ(cnt)     ;
        SV.FX(cnt,com)   = SVZ(cnt,com)   ;
        SV.FX(cnt,"pH2")   = 0   ;
        INV.FX(cnt,sec)  = INVZ(cnt,sec)  ;

*        ER.L(CRR)           = 0;
*        ER.FX("EURO") = num;
*        PIT.FX = num;

*         AUX_ER.L(cnt) = 1;


$ontext
REP_Welfare.L(cnt) = CBUDZ(cnt);
REP_Welfare_B.L(cnt)$(B_S)  = CBUDZ(cnt);
REP_Labour.L(cnt, sec) = (LZ(cnt,sec));
*Add for Ltype
REP_LabourTYPE.L(cnt, sec,ltype) = (LtypeZ(cnt,sec,ltype));
REP_Capital.L(cnt, sec) = (KZ(cnt,sec));
REP_Production.L(cnt, sec, com)  = XDDZ(cnt,sec,com);
REP_Income.L(cnt)        = CBUDZ(cnt);

REP_HOUS_CONS.L(cnt) = (CBUDZ(cnt) + sum(com, CZ(cnt,com)));
REP_GOV_CONS.L(cnt)  = (CBUDGLZ(cnt) + sum(comm, CGLZ(cnt,comm) )) ;
REP_EXP_EU.L(cnt, com,CRR)  =  sum(cntt,   TRADEZ(com, cnt, cntt));
REP_EXP_EUN.L(cnt, com,CRR)  =0;
REP_EXPout.l(cnt,com) =   EROWZ(cnt,com);
REP_IMPout.L(cnt, com)   = MROWZ(cnt,com);
REP_IMP_EU.L(cnt, com,CRR)   = sum(cntt$(ord(cnt) ne ord(cntt)), TRADEZ(com, cntt, cnt));

REP_IMP_PTM.L(cnt, com, cntt)$(ord(cnt) ne ord(cntt))   = trademargins(com, cntt, cnt);
REP_SEC_OUT.L(cnt, sec, com)   = (XDDZ(cnt,sec,com)+sum(comm$(PID(comm) eq 3), IOZ(cnt, com, sec)));
REP_SEC_IN.L(cnt, sec, com)   = IOZ(cnt,com,sec);
$offtext

