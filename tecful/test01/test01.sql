問1
各顧客の顧客ID、顧客コード、顧客名、顧客住所、顧客クラスID、都道府県IDが含まれるテーブル$customers$が与えられます。
`顧客コードの大きい順`に、顧客の**顧客コード**と**顧客名**を出力してください。


SELECT
  Code, Name
FROM
  Customers
ORDER BY
  Code DESC
;


問2
各従業員の従業員ID、従業員名、身長、メールアドレス、体重、入社年、誕生年、血液型が含まれるテーブル$employees$が与えられます。
`身長の高い順`に、従業員の**従業員名**、**身長**、**体重**、**血液型**を出力してください。

SELECT
  Name, Height, Weight, BloodType
FROM
  Employees
ORDER BY
  Height DESC
;



問3
各商品の商品ID、商品コード、商品名、価格、カテゴリーIDが含まれるテーブル$products$が与えられます。
`価格の高い順`に、商品の**商品コード**、**商品名**、**価格**を出力してください。

SELECT
  Code, Name, Price
FROM
  Products
ORDER BY
  Price DESC
;


問4
テーブルProductsのCode列を「商品コード」、Name列を「商品名」、Price列を「単価」という別名で取り出しなさい
各商品の商品ID、商品コード、商品名、価格、カテゴリーIDが含まれるテーブル$products$が与えられます。
`商品IDの小さい順`に、商品の**商品コード**、**商品名**、**価格**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| Code | 商品コード |
| Name | 商品名 |
| Price | 単価 |

SELECT
  Code AS "商品コード",
  Name AS "商品名",
  Price AS "単価"
FROM
  Products
ORDER BY
  ID
;



問5
各従業員の従業員ID、従業員名、身長、メールアドレス、体重、入社年、誕生年、血液型が含まれるテーブル$employees$が与えられます。
`従業員IDの小さい順`に、従業員の**従業員名**、**身長**、**体重**、**血液型**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| Name | 社員名 |
| Height | 身長(cm) |
| Weight | 体重(kg) |
| BloodType | 血液型 |

SELECT
  Name AS "社員名",
  Height AS "身長(cm)",
  Weight AS "体重(kg)",
  BloodType AS "血液型"
FROM
  Employees
ORDER BY
  ID
;

問6
各顧客の顧客ID、顧客コード、顧客名、顧客住所、顧客クラスID、都道府県IDが含まれるテーブル$customers$が与えられます。
`顧客コードの小さい順`に、顧客の**顧客コード**、**顧客名**、**顧客住所**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| Code | 顧客コード |
| Name  | 顧客名 |
| Address | 住所|


SELECT
  Code AS "顧客コード",
  Name AS "顧客名",
  Address AS "住所"
FROM
  Customers
ORDER BY
  Code
;


問7
各商品の商品ID、商品コード、商品名、価格、カテゴリーIDが含まれるテーブル$products$が与えられます。
`商品コードの小さい順`に、商品の**商品コード**、**商品名**、**価格**、**価格×1.08**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| Code | 商品コード |
| Name | 商品名 |
| Price | 税抜価格 |
| Price*1.08 | 税込価格 |

SELECT
  Code AS "商品コード",
  Name AS "商品名",
  Price AS "税抜価格",
  Price*1.08 AS "税込価格"
FROM
  Products
ORDER BY
  Code
;

問8
各給与の給与ID、支払日、給与、従業員IDが含まれるテーブル$salary$が与えられます。
`給与IDの小さい順、同じ給与IDは支払日の古い順`に、商品の**従業員ID**、**支払日**、**給与**、*給与の10%**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| EmployeeID | 従業員ID |
| PayDate | 支払日 |
| Amount | 給与 |
| Amount*0.1 | 税金 |

SELECT
  EmployeeID AS "従業員ID",
  PayDate AS "支払日",
  Amount AS "給与",
  Amount * 0.1 AS "税金"
FROM
  Salary
ORDER BY
  EmployeeID, PayDate
;

問9
映画コード、映画タイトル、映画タイトル(日本語)、公開年度、 配信年度、原作コミック、シリーズコード、料金、
前作映画コードの列を持つテーブルhero_movieが与えられます。
`映画コードの小さい順に`全列を出力してください。

SELECT
  *
FROM
  hero_movie
ORDER BY
  MOVIE_CD
;

問10
映画コード、映画タイトル、映画タイトル(日本語)、公開年度、 配信年度、原作コミック、シリーズコード、料金、
前作映画コードの列を持つテーブルhero_movieが与えられます。
`映画タイトルの昇順に`**映画タイトル**と**映画タイトル(日本語)**を出力してください。

SELECT
  MOVIE_TITLE, MOVIE_TITLE_JP
FROM
  hero_movie
ORDER BY
  MOVIE_TITLE
;

問11
`俳優名の昇順で`、俳優の**俳優名**、**俳優名(日本語)**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| ACTOR_NAME | 俳優名 |
| ACTOR_NAME_JP  | 俳優名(日本語) |


SELECT
  ACTOR_NAME AS "俳優名",
  ACTOR_NAME_JP AS "俳優名(日本語)"
FROM
  actor
ORDER BY
  ACTOR_NAME
;

問12
各シリーズのシリーズコード、シリーズ名、シリーズ名（日本語）を持つテーブル$series$が与えられます。
`シリーズ名の昇順で`、俳優の**シリーズ名**、**シリーズ名（日本語）**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| SERIES_NAME | シリーズ名 |
| SERIES_NAME_JP  | シリーズ名（日本語） |

SELECT
  SERIES_NAME AS "シリーズ名",
  SERIES_NAME_JP AS "シリーズ名(日本語)"
FROM
  series
ORDER BY
  SERIES_NAME
;

問13
ＴＶシリーズコード、ＴＶシリーズ名、ＴＶシリーズ名(日本語)の列を持つテーブルtv_seriesが与えられます。
`ＴＶシリーズコードの降順に`**ＴＶシリーズコード**と**ＴＶシリーズ名(日本語)**を出力してください。

SELECT
  TV_SERIES_CD, TV_SERIES_NAME_JP
FROM
  tv_series
ORDER BY
  TV_SERIES_CD DESC
;

問14
ＴＶシリーズコード、ＴＶシリーズ名、ＴＶシリーズ名(日本語)の列を持つテーブルtv_seriesが与えられます。
`ＴＶシリーズ名の昇順に`**ＴＶシリーズ名**と**ＴＶシリーズ名(日本語)**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| TV_SERIES_NAME | ＴＶシリーズ名 |
| TV_SERIES_NAME_JP  | ＴＶシリーズ名(日本語) |

SELECT
  TV_SERIES_NAME AS "TVシリーズ名",
  TV_SERIES_NAME_JP AS "TVシリーズ名(日本語)"
FROM
  tv_series
ORDER BY
  TV_SERIES_NAME
;

問15
ＴＶシリーズコード、ＴＶシーズンナンバー、ＴＶタイトルナンバー、ＴＶエピソードコード、ＴＶタイトル、ＴＶタイトル(日本語)、
配信日、料金の列を持つテーブルtv_episodeが与えられます。
`ＴＶタイトルの昇順に`**ＴＶタイトル**、**ＴＶタイトル(日本語)**、**料金+100**を出力してください。
その際、それぞれ以下のように列別名で取り出しなさい。

| 通常の列名 | 列別名 |
| :--- | :--- |
| TV_SERIES_NAME | ＴＶシリーズ名 |
| TV_SERIES_NAME_JP  | ＴＶシリーズ名(日本語) |

SELECT
  TV_EPISODE_TITLE AS "TVタイトル",
  TV_EPISODE_TITLE_JP AS "TVタイトル(日本語)",
  TV_EPISODE_CHARGE + 100 AS "料金(値上げ)"
FROM
  tv_episode
ORDER BY
  TV_EPISODE_TITLE
;

