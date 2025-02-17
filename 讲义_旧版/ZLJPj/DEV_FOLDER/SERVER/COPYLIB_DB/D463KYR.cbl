      *****************************************************************
      *   解約履歴＿契約内容(D463KYR_TBL)
      *****************************************************************
       01  解約履歴−契約内容.
           03  Ｄ４６３−契約番号    PIC  X(010).
           03  Ｄ４６３−再リース回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−申請連番    PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−見積番号    PIC S9(007) PACKED-DECIMAL.
           03  Ｄ４６３−見積番号枝番
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−取引先コード
                                     PIC  X(009).
           03  Ｄ４６３−稟議決裁日  PIC  X(008).
           03  Ｄ４６３−貸付実行予定日
                                     PIC  X(008).
           03  Ｄ４６３−成約年月日  PIC  X(008).
           03  Ｄ４６３−引渡年月日  PIC  X(008).
           03  Ｄ４６３−契約開始日  PIC  X(008).
           03  Ｄ４６３−契約終了日  PIC  X(008).
           03  Ｄ４６３−期間        PIC S9(003) PACKED-DECIMAL.
           03  Ｄ４６３−契約件名    PIC  X(060).
           03  Ｄ４６３−エンドユーザコード
                                     PIC  X(009).
           03  Ｄ４６３−契約区分    PIC  X(001).
           03  Ｄ４６３−紹介ルート  PIC  X(001).
           03  Ｄ４６３−担当部課コード
                                     PIC  X(004).
           03  Ｄ４６３−担当者コード
                                     PIC  X(008).
           03  Ｄ４６３−変則払      PIC  X(001).
           03  Ｄ４６３−月額料金    PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−契約総額    PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−次回再リース料
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−再リース料金区分
                                     PIC  X(001).
           03  Ｄ４６３−信用保険区分
                                     PIC  X(001).
           03  Ｄ４６３−担保区分    PIC  X(001).
           03  Ｄ４６３−協調区分    PIC  X(001).
           03  Ｄ４６３−契約先コード
                                     PIC  X(005).
           03  Ｄ４６３−主幹事先コード
                                     PIC  X(009).
           03  Ｄ４６３−利回り      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−ユーザ利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−長プラ金利  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−社内金利    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−請求先コード
                                     PIC  X(005).
           03  Ｄ４６３−請求書作成区分
                                     PIC  X(001).
           03  Ｄ４６３−請求件名    PIC  X(060).
           03  Ｄ４６３−第１回回収方法
                                     PIC  X(001).
           03  Ｄ４６３−第１回回収サイト
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−第１回回収日
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−第１回回収回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−振替開始年月
                                     PIC  X(006).
           03  Ｄ４６３−前払区分    PIC  X(001).
           03  Ｄ４６３−頭金区分    PIC  X(001).
           03  Ｄ４６３−営業コメント欄１
                                     PIC  X(080).
           03  Ｄ４６３−営業コメント欄２
                                     PIC  X(080).
           03  Ｄ４６３−状態フラグ  PIC  X(001).
           03  Ｄ４６３−満了案内送付区分
                                     PIC  X(001).
           03  Ｄ４６３−満了案内回答区分
                                     PIC  X(001).
           03  Ｄ４６３−主契約区分  PIC  X(001).
           03  Ｄ４６３−遡及処理区分
                                     PIC  X(001).
           03  Ｄ４６３−遡及処理年月
                                     PIC  X(006).
           03  Ｄ４６３−検収エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−検収取消日  PIC  X(008).
           03  Ｄ４６３−検収取消エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−検収処理年月
                                     PIC  X(006).
           03  Ｄ４６３−検収取消年月
                                     PIC  X(006).
           03  Ｄ４６３−当初回収期間
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ４６３−最新回収期間
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ４６３−最終物件番号
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ４６３−再リースデータ作成区分
                                     PIC  X(001).
           03  Ｄ４６３−再リース自動作成年月日
                                     PIC  X(008).
           03  Ｄ４６３−リース割賦前払月数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−頭金請求書作成フラグ
                                     PIC  X(001).
           03  Ｄ４６３−前払請求書作成フラグ
                                     PIC  X(001).
           03  Ｄ４６３−頭金請求済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−前払請求済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−解約申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−解約フラグ  PIC  X(001).
           03  Ｄ４６３−解約年月日  PIC  X(008).
           03  Ｄ４６３−総回収回数  PIC S9(003) PACKED-DECIMAL.
           03  Ｄ４６３−物件確認    PIC  X(001).
           03  Ｄ４６３−まるめ単位  PIC  X(001).
           03  Ｄ４６３−内訳印刷方法
                                     PIC  X(001).
           03  Ｄ４６３−契約期間回数印刷有無
                                     PIC  X(001).
           03  Ｄ４６３−成約エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−成約取消エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−成約処理年月
                                     PIC  X(006).
           03  Ｄ４６３−成約取消年月
                                     PIC  X(006).
           03  Ｄ４６３−再リース請求間隔
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−再リース回収間隔
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−更新年月日  PIC  X(008).
           03  Ｄ４６３−更新時間    PIC  X(008).
           03  Ｄ４６３−更新者      PIC  X(008).
           03  Ｄ４６３−当初利回り  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−当初粗利額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−当初月額料金
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−当初契約総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−以降回収サイト
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−以降回収日  PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−以降回収間隔
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−旧取引番号  PIC  X(010).
           03  Ｄ４６３−解約エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−解約処理年月
                                     PIC  X(006).
           03  Ｄ４６３−解約取消エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−解約取消処理年月
                                     PIC  X(006).
           03  Ｄ４６３−満了予約フラグ
                                     PIC  X(001).
           03  Ｄ４６３−満了予約エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−満了処理年月
                                     PIC  X(006).
           03  Ｄ４６３−再リースエントリ日
                                     PIC  X(008).
           03  Ｄ４６３−再リース処理年月
                                     PIC  X(006).
           03  Ｄ４６３−再リース取消エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−再リース取消処理年月
                                     PIC  X(006).
           03  Ｄ４６３−承継エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−承継処理年月
                                     PIC  X(006).
           03  Ｄ４６３−承継取消エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−承継取消処理年月
                                     PIC  X(006).
           03  Ｄ４６３−売却エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−売却処理年月
                                     PIC  X(006).
           03  Ｄ４６３−条件変更エントリ日
                                     PIC  X(008).
           03  Ｄ４６３−条件変更処理年月
                                     PIC  X(006).
           03  Ｄ４６３−管理債権レベル
                                     PIC  X(001).
           03  Ｄ４６３−契約料率    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−粗利額      PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−当初契約料率
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−以降回収方法
                                     PIC  X(001).
           03  Ｄ４６３−請求サイト  PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−請求間隔    PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−請求基準月  PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−契約取引区分
                                     PIC  X(001).
           03  Ｄ４６３−責任区分    PIC  X(001).
           03  Ｄ４６３−相殺区分    PIC  X(001).
           03  Ｄ４６３−注文書出力区分
                                     PIC  X(001).
           03  Ｄ４６３−満了案内帳票区分
                                     PIC  X(001).
           03  Ｄ４６３−再リース料フラグ
                                     PIC  X(001).
           03  Ｄ４６３−再リース自動継続区分
                                     PIC  X(001).
           03  Ｄ４６３−契約書式    PIC  X(001).
           03  Ｄ４６３−物件保管場所
                                     PIC  X(001).
           03  Ｄ４６３−請求先区分  PIC  X(001).
           03  Ｄ４６３−不動産担保設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−有価証券担保設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−その他担保設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−保証人有無区分
                                     PIC  X(001).
           03  Ｄ４６３−未収残高対象外フラグ
                                     PIC  X(001).
           03  Ｄ４６３−保険会社区分
                                     PIC  X(004).
           03  Ｄ４６３−動総保険料  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−動総付保開始年月日
                                     PIC  X(008).
           03  Ｄ４６３−入力担当者コード
                                     PIC  X(008).
           03  Ｄ４６３−請求取引先コード
                                     PIC  X(009).
           03  Ｄ４６３−問合せ番号  PIC  X(010).
           03  Ｄ４６３−再リース区分
                                     PIC  X(001).
           03  Ｄ４６３−旧契約番号  PIC  X(010).
           03  Ｄ４６３−購入選択権付リース区分
                                     PIC  X(001).
           03  Ｄ４６３−再リース申請書有無区分
                                     PIC  X(001).
           03  Ｄ４６３−再リース申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−承継申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−稟議申請連番
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−リスケフラグ
                                     PIC  X(001).
           03  Ｄ４６３−粗利益額−表
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−お支払明細書作成済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−お支払明細書要否
                                     PIC  X(001).
           03  Ｄ４６３−申請年月日  PIC  X(008).
           03  Ｄ４６３−対象元本額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−消費税率区分
                                     PIC  X(002).
           03  Ｄ４６３−申請書出力年月日
                                     PIC  X(008).
           03  Ｄ４６３−再リース申請書出力年月日
                                     PIC  X(008).
           03  Ｄ４６３−請求基準    PIC  X(001).
           03  Ｄ４６３−次回再リース回収サイト
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−次回再リース回収日
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−雑費保守料  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−雑費販促費  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−雑費信用保険
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−雑費その他  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−徴求完了フラグ
                                     PIC  X(001).
           03  Ｄ４６３−徴求完了取消フラグ
                                     PIC  X(001).
           03  Ｄ４６３−次回再リース区分
                                     PIC  X(001).
           03  Ｄ４６３−契約書発行済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−注文書発行済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−その他発行済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−営業コメント欄３
                                     PIC  X(080).
           03  Ｄ４６３−社内金利区分
                                     PIC  X(001).
           03  Ｄ４６３−雑費調整額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−オープンブラインド区分
                                     PIC  X(001).
           03  Ｄ４６３−協調回収区分
                                     PIC  X(001).
           03  Ｄ４６３−単年度契約  PIC  X(001).
           03  Ｄ４６３−バック取引  PIC  X(001).
           03  Ｄ４６３−否認区分    PIC  X(001).
           03  Ｄ４６３−前渡金区分  PIC  X(001).
           03  Ｄ４６３−非課税区分  PIC  X(001).
           03  Ｄ４６３−包括区分    PIC  X(001).
           03  Ｄ４６３−海外設置区分
                                     PIC  X(001).
           03  Ｄ４６３−物件コメント
                                     PIC  X(040).
           03  Ｄ４６３−解約金計算方法
                                     PIC  X(001).
           03  Ｄ４６３−搬入予定日  PIC  X(008).
           03  Ｄ４６３−申請契約額加算フラグ
                                     PIC  X(001).
           03  Ｄ４６３−紹介先取引先
                                     PIC  X(009).
           03  Ｄ４６３−紹介先契約先
                                     PIC  X(005).
           03  Ｄ４６３−紹介先ＢＴＭ
                                     PIC  X(004).
           03  Ｄ４６３−紹介先僚店  PIC  X(004).
           03  Ｄ４６３−紹介先銀行  PIC  X(004).
           03  Ｄ４６３−紹介先支店  PIC  X(003).
           03  Ｄ４６３−請求日      PIC  X(002).
           03  Ｄ４６３−契約取消理由１
                                     PIC  X(080).
           03  Ｄ４６３−契約取消理由２
                                     PIC  X(080).
           03  Ｄ４６３−契約取消申請書発行済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−決裁登録申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−契約登録申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−検収登録申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−契約取消申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−検収取消申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−変更申請フラグ
                                     PIC  X(001).
           03  Ｄ４６３−変更フラグ  PIC  X(001).
           03  Ｄ４６３−変更年月日  PIC  X(008).
           03  Ｄ４６３−債務協調コード
                                     PIC  X(002).
           03  Ｄ４６３−一般大口区分
                                     PIC  X(001).
           03  Ｄ４６３−制度リース  PIC  X(001).
           03  Ｄ４６３−基本利回り総額分
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−実質利回り総額分
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−粗利額総額分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−一般社内金利
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般基本利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般実質利回り
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般粗利額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−一般基本利回り総額分
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般実質利回り総額分
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般粗利額自社分
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−強制保存フラグ
                                     PIC  X(001).
           03  Ｄ４６３−登録年月日  PIC  X(008).
           03  Ｄ４６３−登録時間    PIC  X(008).
           03  Ｄ４６３−登録担当者  PIC  X(008).
           03  Ｄ４６３−転リース提携先コード
                                     PIC  X(003).
           03  Ｄ４６３−斡旋手数料  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−業務区分    PIC  X(001).
           03  Ｄ４６３−買戻義務区分
                                     PIC  X(001).
           03  Ｄ４６３−代理回収    PIC  X(001).
           03  Ｄ４６３−買取金額    PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−金利変動区分
                                     PIC  X(001).
           03  Ｄ４６３−連動金利区分
                                     PIC  X(002).
           03  Ｄ４６３−割引率      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−貸付金額    PIC S9(013) PACKED-DECIMAL.
           03  Ｄ４６３−貸付金利    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−資金使途区分
                                     PIC  X(002).
           03  Ｄ４６３−資金使途文言
                                     PIC  X(080).
           03  Ｄ４６３−支払委託取引形態
                                     PIC  X(001).
           03  Ｄ４６３−融資方法    PIC  X(001).
           03  Ｄ４６３−返済条件    PIC  X(001).
           03  Ｄ４６３−リース種類区分
                                     PIC  X(001).
           03  Ｄ４６３−資産科目区分
                                     PIC  X(001).
           03  Ｄ４６３−重要性基準区分
                                     PIC  X(001).
           03  Ｄ４６３−前渡金金利  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−トリプルオプション方式
                                     PIC  X(001).
           03  Ｄ４６３−引合中止区分
                                     PIC  X(001).
           03  Ｄ４６３−内容変更申請連番
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−承継分割種類
                                     PIC  X(001).
           03  Ｄ４６３−承継区分    PIC  X(001).
           03  Ｄ４６３−満了条件区分
                                     PIC  X(001).
           03  Ｄ４６３−第１回目回収日文言
                                     PIC  X(040).
           03  Ｄ４６３−第２回目以降回収日文言
                                     PIC  X(040).
           03  Ｄ４６３−譲渡条件付リース区分
                                     PIC  X(001).
           03  Ｄ４６３−残価回収サイト
                                     PIC S9(002)V9(002) PACKED-DECIMAL.
           03  Ｄ４６３−債権買取区分
                                     PIC  X(001).
           03  Ｄ４６３−支払基準月  PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−損害賠償金文言
                                     PIC  X(080).
           03  Ｄ４６３−流動化番号  PIC  X(006).
           03  Ｄ４６３−流動化先    PIC  X(007).
           03  Ｄ４６３−信託先設定日
                                     PIC  X(008).
           03  Ｄ４６３−信託終了日  PIC  X(008).
           03  Ｄ４６３−債権流動化区分
                                     PIC  X(001).
           03  Ｄ４６３−差入予約区分
                                     PIC  X(001).
           03  Ｄ４６３−債権買取日  PIC  X(008).
           03  Ｄ４６３−相殺条項区分
                                     PIC  X(001).
           03  Ｄ４６３−譲渡禁止特約
                                     PIC  X(001).
           03  Ｄ４６３−先方契約番号
                                     PIC  X(016).
           03  Ｄ４６３−再リース料分子
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ４６３−再リース料分母
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ４６３−営業コメント欄４
                                     PIC  X(080).
           03  Ｄ４６３−新規先区分  PIC  X(001).
           03  Ｄ４６３−親密先区分  PIC  X(001).
           03  Ｄ４６３−財務部金利  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−一般前渡金金利
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ４６３−決裁ランク  PIC  X(001).
           03  Ｄ４６３−お礼状発行フラグ
                                     PIC  X(001).
           03  Ｄ４６３−移行フラグ  PIC  X(001).
           03  Ｄ４６３−再リース申請条件区分
                                     PIC  X(002).
           03  Ｄ４６３−問い合わせ担当部店コード
                                     PIC  X(004).
           03  Ｄ４６３−問い合わせ担当者名
                                     PIC  X(020).
           03  Ｄ４６３−再リース料支払予定日
                                     PIC  X(008).
           03  Ｄ４６３−満了通知書回答期限
                                     PIC  X(008).
           03  Ｄ４６３−申請区分    PIC  X(001).
           03  Ｄ４６３−内容申請書印刷回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ４６３−内容申請書印刷済フラグ
                                     PIC  X(001).
           03  Ｄ４６３−契約件名自動登録区分
                                     PIC  X(001).
           03  Ｄ４６３−返済原資    PIC  X(080).
           03  Ｄ４６３−否認処理区分
                                     PIC  X(001).
           03  Ｄ４６３−解約理由    PIC  X(002).
           03  Ｄ４６３−流動化先契約先コード
                                     PIC  X(005).
