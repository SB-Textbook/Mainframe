000001******************************************************************
000002*         ＜東銀リース＞                                         *
000003*      1. プログラム名    ：ＩＮＩ設定獲得サブルーチン           *
000004*      2. コピー句ID      ：CHBCO001                             *
000005*      3. 処理概要        ：1、共通ログ出力インターフェース      *
000006*      4. 作成者          ：金子 晃                              *
000007*      5. 作成日          ：2004.05.13                           *
000008******************************************************************
000009*     ＜改訂履歴 １．１版＞                                      *
000010******************************************************************
000170     03  ()イベント種別      PIC  X(001).
000180     03  ()ソースＩＤ        PIC  X(008).
000190     03  ()ユーザＩＤ        PIC  X(004).
000200     03  ()復帰コード        PIC  X(001).
000210     03  ()処理テーブルＩＤ  PIC  X(008).
000220     03  ()処理識別          PIC  X(020).
000230     03  ()キー情報          PIC  X(020).
000240     03  ()データ内容        PIC  X(020).
000250     03  ()その他メッセージ  PIC  X(100).
