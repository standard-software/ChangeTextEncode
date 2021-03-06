--------------------------------------------------
ChangeTextEncode.vbs
Readme.txt
--------------------------------------------------
Standard Software
2015/01/31
--------------------------------------------------
◆機能
ChangeTextEncode.vbs はテキストのエンコードを変換する
コマンドプログラムです。

◆使い方
次のようにコマンドを指定して実行します。

    ChangeTextEncode.vbs
        元ファイルエンコード名
        元ファイルパス
        変換後エンコード名
        [変換後ファイルパス]

引数を3もしくは4にしてコマンドを呼び出します。
[変換後ファイルパス]を省略した場合は
元ファイルを直接エンコード変換します。

◆使用例

ChangeTextEncode.vbs "SHIFT_JIS" .\TestFile\File_SJIS.txt "UTF-8" .\TestFile\File_SJIS-to-UTF8.txt

エンコード名やファイルパスは
ダブルクウォーテーションで囲っても囲わなくてもOKですが
空白を含むファイルパスの場合は
ダブルクウォーテーションが必要になります。

◆対応エンコード
    エンコード          指定文字
    ShiftJIS            SHIFT_JIS
    UTF-16LE BOM有り    UNICODEFFFE/UNICODE/UTF-16
    UTF-16LE BOM無し    UTF-16LE
    UTF-16BE BOM有り    UNICODEFEFF
    UTF-16BE BOM無し    UTF-16BE
    UTF-8 BOM有り       UTF-8
    UTF-8 BOM無し       UTF-8N
    JIS                 ISO-2022-JP
    EUC-JP              EUC-JP
    UTF-7               UTF-7

読み込み時に UTF-8 と UTF-16LE の場合は
BOMの有無関係なく読み込む事は可能です。