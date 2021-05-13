---
page_type: sample
products:
- office-outlook
- office-365
languages:
- javascript
extensions:
  contentType: samples
  technologies:
  - Add-ins
  createdDate: 3/23/2016 3:48:52 PM
---
# Outlook モジュール拡張機能 "請求対象時間" のサンプル
この Outlook 2016 for Windows のアドイン サンプルは、Outlook 向けの新しいモジュール拡張機能ポイント\\<ExtensionPoint xsi:type="Module"> を使用します。このコード サンプルでは、請求対象時間アドインを Outlook のメール、予定表、タスクなどの組み込みのモジュールと統合します。

## 目次
* [変更履歴](#change-history)
* [前提条件](#prerequisites)
* [プロジェクトを構成する](#configure-the-project)
* [プロジェクトを実行する](#run-the-project)
* [コードを理解する](#understand-the-code)
* [質問とコメント](#questions-and-comments)
* [その他の技術情報](#additional-resources)

## 変更履歴
2016 年 3 月 31 日:
* サンプルの最初のバージョンを公開しました。

2016 年 4 月 4 日:
* README ファイルを更新しました

## 前提条件

* Windows 版 Outlook 2016
* [NodeJS](https://nodejs.org/en): モジュールの拡張機能をインストールします
* [npm](https://www.npmjs.com/): 依存関係をインストールします。NodeJS に付属しています。
* [GitBash](http://www.git-scm.com/downloads): コマンド ライン ユーティリティを実行します
* ローカル コンピューターにこのリポジトリのクローンを作成します。

## プロジェクトを構成する

アドイン コマンドは HTTPS を必要とするため、このサンプルを実行するための証明書をインストールする必要があります。アドイン コマンドには UI が含まれていないため、無効な証明書を承諾するように求められることはありません。

1. ```./gen-cert.sh``` を実行して、証明書を作成します。
2. ```ca.crt``` をダブルクリックして、信頼されたルート証明機関ストアにインストールします

ローカル HTTPS Web サーバーを起動して、モジュール拡張機能にファイルを提供します。

1. プロジェクトのルート ディレクトリで ```npm install``` を実行して、packages.json で識別されるパッケージの依存関係をインストールします
2. ```node server js``` を実行して、ローカル サーバーを起動します

## プロジェクトを実行する

1. Outlook を起動する
2. [ファイル] タブを選択し、[アドインの管理] を選択します。
3. アドイン マネージャーが開いたら、"+" 記号を選択し、[ファイルから追加] を選択します
4. [参照] を選択して、サンプルを含むディレクトリに移動します
5. モジュールマニフェスト (outlook-add-in-javascript-moduleextension) を選択し、[開く] をクリックします
6. [次へ] を選択し、[インストール] を選択してモジュールをインストールします
7. モジュール マネージャーを閉じる

Outlook が新しいモジュールを読み込むまで少し時間がかかる場合がありますが、その場合は、ナビゲーション バーのショートカットに新しいモジュールが追加されます。コンパクト ナビゲーションを使用すると、次のようなショートカットが表示されます。

![コンパクト Outlook ナビゲーション バーにアドイン コマンドを表示します。](/readme-images/Outlook-Compact-Navigation-Bar.png)

コンパクト ナビゲーションを使用していない場合、次のようなショートカットが表示されます。

![拡張ナビゲーション バーに 1 つのモジュール拡張機能を表示します。](/readme-images/Outlook-Navigation-Bar.png)

[**請求対象時間**] またはモジュール アイコンをクリックして、モジュール拡張機能を開きます。
Outlook は、モジュール UI を表示するように変更されます。

![モジュール拡張機能のユーザー インターフェイスを表示します。](/readme-images/Outlook-Billable-Hours-UI.png)

リボンには 3 つのボタンがあります。いずれかをクリックして請求レートを変更すると、メイン
UI の合計が新しい単価に合わせて変更されます。 

## コードを理解する

拡張機能の種類を ```"Module"``` に設定すると、新しいモジュール拡張機能がマニフェスト ファイルで有効になります。これは変更する必要のある[マニフェストのセクション](https://github.com/chbighammsft/Outlook-Add-in-JavaScript-ModuleExtension-1/blob/98443386d33191e620631efac4f4f4045cb3b75a/outlook-add-in-javascript-moduleextension.xml#L70)です。

    <!--新しい拡張機能ポイント - ModuleApp 用モジュール -->
        <ExtensionPoint xsi:type="Module">


## 質問とコメント
Outlook-Add-in-JavaScript-ModuleExtension サンプルに関するご意見をお寄せください。このリポジトリの「[問題](https://github.com/OfficeDev/Outlook-Add-in-JavaScript-ModuleExtension/issues)」セクションでフィードバックを送信できます。

Office 365 開発全般の質問につきましては、「[スタック オーバーフロー](http://stackoverflow.com/questions/tagged/Office365+API)」に投稿してください。質問には、必ず [Office365] および [API] のタグを付けてください。

## その他のリソース
* [Outlook のモジュール拡張機能アドイン](http://dev.office.com/docs/add-ins/outlook/extension-module-outlook-add-ins)
* [Office アドイン プラットフォームの概要](https://msdn.microsoft.com/EN-US/library/office/jj220082.aspx)
* [Office 365 API ドキュメント](http://msdn.microsoft.com/office/office365/howto/platform-development-overview)
* [Microsoft Office 365 API ツール](https://visualstudiogallery.msdn.microsoft.com/a15b85e6-69a7-4fdf-adda-a38066bb5155)
* [Office デベロッパー センター](http://dev.office.com/)
* [Office 365 API スタート プロジェクトとコード サンプル](http://msdn.microsoft.com/en-us/office/office365/howto/starter-projects-and-code-samples)

## 著作権
Copyright (c) 2016 Microsoft.All rights reserved.



このプロジェクトでは、[Microsoft オープン ソース倫理規定](https://opensource.microsoft.com/codeofconduct/)が採用されています。詳細については、「[倫理規定の FAQ](https://opensource.microsoft.com/codeofconduct/faq/)」を参照してください。また、その他の質問やコメントがあれば、[opencode@microsoft.com](mailto:opencode@microsoft.com) までお問い合わせください。
