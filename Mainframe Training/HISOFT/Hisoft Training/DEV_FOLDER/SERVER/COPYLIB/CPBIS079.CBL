000010************************************************
000020* 照査ファイル(科目残高レコード)(CPBIS079)
000030************************************************
000040    03  ()ＫＥＹ.
000050     05  ()勘定科目.
000060      07  ()科目コード             PIC  X(3).
000070      07  ()取引コード             PIC  X(2).
000080    03  ()フラグ.
000090     05  ()登録削除               PIC  X(1).
000100     05  ()科目タイプ             PIC  X(1).
000110     05  FILLER           PIC  X(3).
000120    03  ()口座登録数             PIC S9(5)  SIGN LEADING SEPARATE.
000130    03  ()残高情報.
000140     05  ()借方合計               PIC S9(15)  SIGN LEADING SEPARATE.
000150     05  ()貸方合計               PIC S9(15)  SIGN LEADING SEPARATE.
000160     05  ()残価                   PIC S9(15)  SIGN LEADING SEPARATE.
000170    03  FILLER           PIC  X(28).
000180    03  ()共通情報               PIC  X(35).
