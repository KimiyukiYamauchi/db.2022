## 1. odbcドライバーのインストール
- 「mysql-connector-odbc-8.1.0-winx64.msi」をダブルクリックして、インストーラを実行
- 設定の変更はせず、「Next」で進める

## 2. ユーザーDSNの設定
### 1. ODBCデータソース(64ビット)起動

<div style="margin: 1em 0 1em 3em">
  <img src="./img/01.png" width="50%">
</div>

### 2. 「ユーザーDSN」タブで「追加」ボタンクリック

<div style="margin: 1em 0 1em 3em">
  <img src="./img/02.png" width="50%">
</div>

### 3. ドライバーの選択画面で、「MySQL ODBC 8.1 Unicode Driver」を選択し、「完了」ボタンクリック

<div style="margin: 1em 0 1em 3em">
  <img src="./img/03.png" width="50%">
</div>

<div style="page-break-before:always"></div>

### 4. ユーザーDSNの各項目を設定(sample)
- Data Source Name: sample
- TCP/IP Server: localhost
- User: root
- Password: pass
- Database: sample

<div style="margin: 1em 0 1em 3em">
  <img src="./img/04.png" width="50%">
</div>

### 5. 上の2,3の手順をもう一度行い、ユーザーDSNの各項目を設定(drill)
- Data Source Name: drill
- TCP/IP Server: localhost
- User: root
- Password: pass
- Database: drill

<div style="margin: 1em 0 1em 3em">
  <img src="./img/05.png" width="50%">
</div>