000010************************************************
000020* 取引先マスター（取引先レコード）(CPBIS059)
000030************************************************
000040    03  ()取引先コード           PIC  X(8).
000050    03  ()目的区分名寄せ         PIC  X(1).
000060    03  ()目的区分ユーザー       PIC  X(1).
000070    03  ()目的区分請求先         PIC  X(1).
000080    03  ()目的区分購入先         PIC  X(1).
000090    03  ()目的区分保証先         PIC  X(1).
000100    03  ()目的区分紹介先         PIC  X(1).
000110    03  ()目的区分斡旋先         PIC  X(1).
000120    03  ()目的区分売却先         PIC  X(1).
000130    03  ()目的区分その他         PIC  X(1).
000140    03  ()目的区分グループ       PIC  X(1).
000150    03  ()目的区分ダミー         PIC  X(4).
000160    03  ()関連コード名寄せコード PIC  X(8).
000170    03  ()関連コードユーザーコード PIC  X(8).
000180    03  ()事業所コード主管       PIC S9(4).
000190    03  ()担当者コード           PIC  X(4).
000200    03  ()取引先正式名称取引先名称漢字 PIC  X(40).
000210    03  ()取引先正式名称取引先名称カナ PIC  X(60).
000220    03  ()会社部門正式名称略式１漢字 PIC  X(40).
000230    03  ()会社部門正式名称略式２漢字 PIC  X(20).
000240    03  ()会社部門正式名称略式カナ PIC  X(30).
000250    03  ()顧客情報１サーバーコード１ PIC  X(2).
000260    03  ()顧客情報１顧客コード１ PIC  X(6).
000270    03  ()顧客情報２サーバーコード２ PIC  X(2).
000280    03  ()顧客情報２顧客コード２ PIC  X(6).
000290    03  ()顧客情報３サーバーコード３ PIC  X(2).
000300    03  ()顧客情報３顧客コード３ PIC  X(6).
000310    03  ()顧客情報４サーバーコード４ PIC  X(2).
000320    03  ()顧客情報４顧客コード４ PIC  X(6).
000330    03  ()顧客情報５サーバーコード５ PIC  X(2).
000340    03  ()顧客情報５顧客コード５ PIC  X(6).
000350    03  ()登録年月年             PIC  X(4).
000360    03  ()登録年月月             PIC S9(2).
000370    03  ()取引先住所情報市町村コード PIC  X(6).
000380    03  ()取引先住所情報郵便ＮＯ親 PIC  X(3).
000390    03  ()取引先住所情報郵便ＮＯ子 PIC  X(4).
000400    03  ()取引先住所情報住所１町名等漢字 PIC  X(30).
000410    03  ()取引先住所情報住所２肩書き漢字 PIC  X(30).
000420    03  ()取引先住所情報住所カナ PIC  X(50).
000430    03  ()転リースコード         PIC  X(2).
000440    03  ()五十音順ソートＫＥＹ位置区分 PIC  X(1).
000450    03  ()五十音順ソートＫＥＹ会社区分 PIC  X(6).
000460    03  ()五十音順ソートＫＥＹユーザ名 PIC  X(25).
000470    03  ()グループコード         PIC  X(8).
000480    03  FILLER           PIC  X(18).
000490    03  ()共通情報ＣＰＤＫＹＯＴＵ PIC  X(35).
000500    03  ()業種情報.
000510     05  ()業種コード             PIC  X(2).
000520     05  ()大企業コード           PIC  X(1).
000530     05  ()クラス                 PIC  X(2).
000540    03  ()設立日世紀             PIC  X(1).
000550    03  ()設立日設立日           PIC  X(6).
000560    03  ()決算日                 PIC S9(2).
000570    03  ()上場非上場区分         PIC  X(1).
000580    03  ()電話番号               PIC  X(15).
000590    03  ()資本金                 PIC S9(13)  SIGN LEADING SEPARATE.
000600    03  ()与信限度単位百万       PIC S9(6)  SIGN LEADING SEPARATE.
000610    03  ()業績前年度業績決算期   PIC S9(3).
000620    03  ()業績前年度業績決算年度世紀 PIC  X(1).
000630    03  ()業績前年度業績決算年度 PIC  X(4).
000640    03  ()業績前年度業績売上     PIC S9(13)  SIGN LEADING SEPARATE.
000650    03  ()業績前年度業績経常利益 PIC S9(13)  SIGN LEADING SEPARATE.
000660    03  ()業績前年度業績当期利益 PIC S9(13)  SIGN LEADING SEPARATE.
000670    03  ()業績前年度業績申告所得 PIC S9(13)  SIGN LEADING SEPARATE.
000680    03  ()業績前々年度業績決算期 PIC S9(3).
000690    03  ()業績前々年度業績決算年度世紀 PIC  X(1).
000700    03  ()業績前々年度業績決算年度 PIC  X(4).
000710    03  ()業績前々年度業績売上   PIC S9(13)  SIGN LEADING SEPARATE.
000720    03  ()業績前々年度業績経常利益 PIC S9(13)  SIGN LEADING SEPARATE.
000730    03  ()業績前々年度業績当期利益 PIC S9(13)  SIGN LEADING SEPARATE.
000740    03  ()業績前々年度業績申告所得 PIC S9(13)  SIGN LEADING SEPARATE.
000750    03  ()業績前々々年度業績決算期 PIC S9(3).
000760    03  ()業績前々々年度業績決算年度世紀 PIC  X(1).
000770    03  ()業績前々々年度業績決算年度 PIC  X(4).
000780    03  ()業績前々々年度業績売上 PIC S9(13)  SIGN LEADING SEPARATE.
000790    03  ()業績前々々年度業績経常利益 PIC S9(13)  SIGN LEADING SEPARATE.
000800    03  ()業績前々々年度業績当期利益 PIC S9(13)  SIGN LEADING SEPARATE.
000810    03  ()業績前々々年度業績申告所得 PIC S9(13)  SIGN LEADING SEPARATE.
000820    03  ()外部情報帝国データバンクコード PIC S9(9).
000830    03  ()外部情報長銀コード     PIC S9(5).
000840    03  ()外部情報東銀名簿コード PIC S9(6).
000850    03  ()外部情報東銀取引先     PIC S9(3).
000860    03  ()外部情報東銀取引先コード PIC S9(8).
000870    03  ()外部情報格付格付け１   PIC  X(2).
000880    03  ()外部情報格付格付け２   PIC  X(1).
000890    03  ()外部情報情報交換通知区分 PIC  X(1).
