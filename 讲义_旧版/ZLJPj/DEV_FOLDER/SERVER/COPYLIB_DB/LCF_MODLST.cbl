000010************************************************
000020* (LCF_MODLST)
000030************************************************
000040 01  LCF_MODLST-JOBTYP PIC  X(001).
000050 01  LCF_MODLST-REGTIM PIC  X(006).
000060 01  LCF_MODLST-CTLNUM PIC  X(006).
000070 01  LCF_MODLST-CLTCOD PIC  X(007).
000080 01  LCF_MODLST-CLTNAM PIC  X(040).
000090 01  LCF_MODLST-REFNUM PIC  X(010).
000100 01  LCF_MODLST-BRDNAM PIC  X(040).
000110 01  LCF_MODLST-RATTYP PIC  X(020).
000120 01  LCF_MODLST-CNTDAY PIC  X(008).
000130 01  LCF_MODLST-BORDAY PIC  X(008).
000140 01  LCF_MODLST-DUEDAY PIC  X(008).
000150 01  LCF_MODLST-PAYCYC PIC  X(002).
000160 01  LCF_MODLST-BORTYP PIC  X(001).
000170 01  LCF_MODLST-TRMTYP PIC  X(001).
000180 01  LCF_MODLST-FIXFLT PIC  X(001).
000190 01  LCF_MODLST-BEFAFT PIC  X(001).
000200 01  LCF_MODLST-YERDAY PIC  X(001).
000210 01  LCF_MODLST-DAYBAS PIC  X(001).
000220 01  LCF_MODLST-FRATYP PIC  X(001).
000230 01  LCF_MODLST-SALTYP PIC  X(001).
000240 01  LCF_MODLST-OBJTYP PIC  X(001).
000250 01  LCF_MODLST-HOLSFT PIC  X(001).
000260 01  LCF_MODLST-GAPTYP PIC  X(001).
000270 01  LCF_MODLST-CREDEP PIC  X(001).
000280 01  LCF_MODLST-CRENUM PIC  X(007).
000290 01  LCF_MODLST-DEBBNK PIC  X(004).
000300 01  LCF_MODLST-DEBBRC PIC  X(003).
000310 01  LCF_MODLST-DEBDEP PIC  X(001).
000320 01  LCF_MODLST-DEBNUM PIC  X(007).
000330 01  LCF_MODLST-DAYCNT PIC S9(004) COMP-3.
000340 01  LCF_MODLST-FSTCAP PIC S9(013) COMP-3.
000350 01  LCF_MODLST-SECCAP PIC S9(013) COMP-3.
000360 01  LCF_MODLST-CAPTOT PIC S9(013) COMP-3.
000370 01  LCF_MODLST-CREAMT PIC S9(013) COMP-3.
000380 01  LCF_MODLST-FSTRAT PIC S9(002)V9(6) COMP-3.
000390 01  LCF_MODLST-SECRAT PIC S9(002)V9(6) COMP-3.
000400 01  LCF_MODLST-SUPRAT PIC S9(002)V9(6) COMP-3.
000410 01  LCF_MODLST-FSTINT PIC S9(013) COMP-3.
000420 01  LCF_MODLST-SECINT PIC S9(013) COMP-3.
000430 01  LCF_MODLST-REWRAT PIC S9(002)V9(6) COMP-3.
000440 01  LCF_MODLST-REWAMT PIC S9(013) COMP-3.
000450 01  LCF_MODLST-REWTAX PIC S9(013) COMP-3.
000460 01  LCF_MODLST-CHGRAT PIC S9(002)V9(6) COMP-3.
000470 01  LCF_MODLST-CHGAMT PIC S9(013) COMP-3.
000480 01  LCF_MODLST-CHGTAX PIC S9(013) COMP-3.
000490 01  LCF_MODLST-BKIRAT PIC S9(002)V9(6) COMP-3.
000500 01  LCF_MODLST-BKIAMT PIC S9(013) COMP-3.
000510 01  LCF_MODLST-BKITAX PIC S9(013) COMP-3.
000520 01  LCF_MODLST-CLTCOD_O PIC  X(007).
000530 01  LCF_MODLST-CLTNAM_O PIC  X(040).
000540 01  LCF_MODLST-REFNUM_O PIC  X(010).
000550 01  LCF_MODLST-BRDNAM_O PIC  X(040).
000560 01  LCF_MODLST-RATTYP_O PIC  X(020).
000570 01  LCF_MODLST-CNTDAY_O PIC  X(008).
000580 01  LCF_MODLST-BORDAY_O PIC  X(008).
000590 01  LCF_MODLST-DUEDAY_O PIC  X(008).
000600 01  LCF_MODLST-PAYCYC_O PIC  X(002).
000610 01  LCF_MODLST-BORTYP_O PIC  X(001).
000620 01  LCF_MODLST-TRMTYP_O PIC  X(001).
000630 01  LCF_MODLST-FIXFLT_O PIC  X(001).
000640 01  LCF_MODLST-BEFAFT_O PIC  X(001).
000650 01  LCF_MODLST-YERDAY_O PIC  X(001).
000660 01  LCF_MODLST-DAYBAS_O PIC  X(001).
000670 01  LCF_MODLST-FRATYP_O PIC  X(001).
000680 01  LCF_MODLST-SALTYP_O PIC  X(001).
000690 01  LCF_MODLST-OBJTYP_O PIC  X(001).
000700 01  LCF_MODLST-HOLSFT_O PIC  X(001).
000710 01  LCF_MODLST-DAYCNT_O PIC S9(004) COMP-3.
000720 01  LCF_MODLST-FSTCAP_O PIC S9(013) COMP-3.
000730 01  LCF_MODLST-SECCAP_O PIC S9(013) COMP-3.
000740 01  LCF_MODLST-CAPTOT_O PIC S9(013) COMP-3.
000750 01  LCF_MODLST-CREAMT_O PIC S9(013) COMP-3.
000760 01  LCF_MODLST-FSTRAT_O PIC S9(002)V9(6) COMP-3.
000770 01  LCF_MODLST-SECRAT_O PIC S9(002)V9(6) COMP-3.
000780 01  LCF_MODLST-SUPRAT_O PIC S9(002)V9(6) COMP-3.
000790 01  LCF_MODLST-FSTINT_O PIC S9(013) COMP-3.
000800 01  LCF_MODLST-SECINT_O PIC S9(013) COMP-3.
000810 01  LCF_MODLST-REWRAT_O PIC S9(002)V9(6) COMP-3.
000820 01  LCF_MODLST-REWAMT_O PIC S9(013) COMP-3.
000830 01  LCF_MODLST-REWTAX_O PIC S9(013) COMP-3.
000840 01  LCF_MODLST-CHGRAT_O PIC S9(002)V9(6) COMP-3.
000850 01  LCF_MODLST-CHGAMT_O PIC S9(013) COMP-3.
000860 01  LCF_MODLST-CHGTAX_O PIC S9(013) COMP-3.
000870 01  LCF_MODLST-BKIRAT_O PIC S9(002)V9(6) COMP-3.
000880 01  LCF_MODLST-BKIAMT_O PIC S9(013) COMP-3.
000890 01  LCF_MODLST-BKITAX_O PIC S9(013) COMP-3.
000900 01  LCF_MODLST-CLTCOD_M PIC  X(001).
000910 01  LCF_MODLST-CLTNAM_M PIC  X(001).
000920 01  LCF_MODLST-REFNUM_M PIC  X(001).
000930 01  LCF_MODLST-BRDNAM_M PIC  X(001).
000940 01  LCF_MODLST-RATTYP_M PIC  X(001).
000950 01  LCF_MODLST-CNTDAY_M PIC  X(001).
000960 01  LCF_MODLST-BORDAY_M PIC  X(001).
000970 01  LCF_MODLST-DUEDAY_M PIC  X(001).
000980 01  LCF_MODLST-PAYCYC_M PIC  X(001).
000990 01  LCF_MODLST-BORTYP_M PIC  X(001).
001000 01  LCF_MODLST-TRMTYP_M PIC  X(001).
001010 01  LCF_MODLST-FIXFLT_M PIC  X(001).
001020 01  LCF_MODLST-BEFAFT_M PIC  X(001).
001030 01  LCF_MODLST-YERDAY_M PIC  X(001).
001040 01  LCF_MODLST-DAYBAS_M PIC  X(001).
001050 01  LCF_MODLST-FRATYP_M PIC  X(001).
001060 01  LCF_MODLST-SALTYP_M PIC  X(001).
001070 01  LCF_MODLST-OBJTYP_M PIC  X(001).
001080 01  LCF_MODLST-HOLSFT_M PIC  X(001).
001090 01  LCF_MODLST-DAYCNT_M PIC  X(001).
001100 01  LCF_MODLST-FSTCAP_M PIC  X(001).
001110 01  LCF_MODLST-SECCAP_M PIC  X(001).
001120 01  LCF_MODLST-CAPTOT_M PIC  X(001).
001130 01  LCF_MODLST-CREAMT_M PIC  X(001).
001140 01  LCF_MODLST-FSTRAT_M PIC  X(001).
001150 01  LCF_MODLST-SECRAT_M PIC  X(001).
001160 01  LCF_MODLST-SUPRAT_M PIC  X(001).
001170 01  LCF_MODLST-FSTINT_M PIC  X(001).
001180 01  LCF_MODLST-SECINT_M PIC  X(001).
001190 01  LCF_MODLST-REWRAT_M PIC  X(001).
001200 01  LCF_MODLST-REWAMT_M PIC  X(001).
001210 01  LCF_MODLST-REWTAX_M PIC  X(001).
001220 01  LCF_MODLST-CHGRAT_M PIC  X(001).
001230 01  LCF_MODLST-CHGAMT_M PIC  X(001).
001240 01  LCF_MODLST-CHGTAX_M PIC  X(001).
001250 01  LCF_MODLST-BKIRAT_M PIC  X(001).
001260 01  LCF_MODLST-BKIAMT_M PIC  X(001).
001270 01  LCF_MODLST-BKITAX_M PIC  X(001).
