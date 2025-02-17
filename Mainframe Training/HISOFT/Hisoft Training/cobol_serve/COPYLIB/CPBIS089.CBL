000010************************************************
000020* 提携コードマスタ(三洋商品コード)(CPBIS089)
000030************************************************
000040    03  ()エントリーキー部.
000050     05  ()識別コード             PIC  X(4).
000060     05  ()三洋商品コード         PIC  X(3).
000070     05  FILLER           PIC  X(8).
000080    03  ()適用範囲                          OCCURS 5.
000090     05  ()適用年月日.
000100      07  ()適用年月日−世紀       PIC S9(1).
000110      07  ()適用年月日−年月日     PIC  X(6).
000120     05  ()耐用年数               PIC S9(2)  SIGN LEADING SEPARATE.
000130     05  ()資産コード             PIC S9(7).
000140     05  ()信用保険コード.
000150      07  ()付保区分               PIC S9(1).
000160      07  ()リース割賦区分         PIC S9(1).
000170      07  ()機械区分               PIC S9(2).
000180      07  ()機種番号               PIC S9(2).
000190     05  FILLER           PIC  X(8).
000200    03  ()共通情報               PIC  X(35).
