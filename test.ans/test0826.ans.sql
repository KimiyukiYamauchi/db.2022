-- 出席番号：
-- 氏名：

-- データベースに接続する
mysql -u root -p

-- 「drill」データベースを選択する
use drill

-- 問1
-- テーブルEmployeesからHeightが160未満のEmployeeNameを取り出しなさい。
-- 別名は「氏名」とする。

SELECT
  EmployeeName AS "氏名"
FROM
  Employees
WHERE
  Height < 160
;

+----------+
| 氏名     |
+----------+
| マキ子   |
| マル     |
| みなみ   |
| プリン   |
| ぴー子   |
| ぴよ     |
| トントン |
| マー     |
| サリー   |
| ローリー |
+----------+
10 rows in set (0.001 sec)

-- 問2
-- テーブルProductsからPriceが1000以上1500以下のProductNameを取り出しなさい

SELECT
  ProductName
FROM
  Products
WHERE
  Price BETWEEN 1000 AND 1500
;

+--------------+
| ProductName  |
+--------------+
| トイレトレイ |
| 引っ掻き板   |
| 首輪         |
+--------------+
3 rows in set (0.001 sec)

-- 問3
-- テーブルSalesからSaleDateが2007年6月1日から2007年6月30日までのSaleIDを取り出しなさい。
-- SaleDateの表記は「2007-06-01」となっています。

SELECT
  SaleID
FROM
  Sales
WHERE
  SaleDate BETWEEN '2007-06-01' AND '2007-06-30'
;

+--------+
| SaleID |
+--------+
|    754 |
|    755 |
|    756 |
|    757 |
|    758 |
|    759 |
|    760 |
|    761 |
|    762 |
|    763 |
|    764 |
|    765 |
|    766 |
|    767 |
|    768 |
|    769 |
|    770 |
|    771 |
|    772 |
|    773 |
|    774 |
|    775 |
|    776 |
|    777 |
|    778 |
|    779 |
|    780 |
|    781 |
|    782 |
|    783 |
|    784 |
|    785 |
|    786 |
|    787 |
|    788 |
|    789 |
|    790 |
|    791 |
|    792 |
|    793 |
|    794 |
|    795 |
|    796 |
|    797 |
|    798 |
|    799 |
|    800 |
|    801 |
|    802 |
|    803 |
|    804 |
|    805 |
|    806 |
|    807 |
|    808 |
|    809 |
|    810 |
|    811 |
|    812 |
|    813 |
|    814 |
|    815 |
|    816 |
|    817 |
|    818 |
|    819 |
|    820 |
|    821 |
|    822 |
|    823 |
|    824 |
|    825 |
|    826 |
|    827 |
|    828 |
|    829 |
|    830 |
|    831 |
|    832 |
|    833 |
|    834 |
|    835 |
|    836 |
|    837 |
+--------+
84 rows in set (0.001 sec)

-- 問4
-- テーブルEmployeesからHeightが160以下で、Weightが50以下のEmployeeName、Height、Weightを取り出しなさい 

SELECT
  EmployeeName, Height, Weight
FROM
  Employees
WHERE
  Height <= 160 AND Weight <= 50
;

+--------------+--------+--------+
| EmployeeName | Height | Weight |
+--------------+--------+--------+
| マル         |    158 |     45 |
| みなみ       |    153 |     42 |
| プリン       |    148 |     48 |
| トントン     |    155 |     45 |
| マー         |    158 |     44 |
| サリー       |    149 |     38 |
| ローリー     |    147 |     40 |
| マイケル     |    160 |     49 |
+--------------+--------+--------+
8 rows in set (0.000 sec)

-- 問5
-- テーブルCustomersからCustomerNameに'株式会社'を含まないCustomerNameを取り出しなさい。

SELECT
  CustomerName
FROM
  Customers
WHERE
  CustomerName NOT LIKE '%株式会社%'
;

+------------------------+
| CustomerName           |
+------------------------+
| タマ                   |
| ハナ                   |
| ミケ                   |
| キク                   |
| ウメ                   |
| トラネコ商会           |
| クロ                   |
| トラ                   |
| スーパーニャンコ       |
| ぶち雑貨店             |
| ミーストア             |
| タロ                   |
| 雑貨サクラ             |
| チー                   |
| シロ                   |
| エリザベス商会         |
| ポンタ                 |
| ジロー                 |
| ニャン太               |
| ミミ                   |
| ミミミ                 |
| 有限会社チョコグリーン |
| チャー                 |
| みーすけ               |
| チロ                   |
| トニー商店             |
| ギン                   |
| プーストア             |
| 有限会社貉商会         |
+------------------------+
29 rows in set (0.000 sec)

-- 問6
-- テーブルEmployeesからEmployeeNameに'ー'を含まないレコードのWeightの平均を求めなさい
-- 別名は「平均体重」とする

SELECT
  AVG(Weight) AS "平均体重"
  -- EmployeeName
FROM
  Employees
WHERE
  EmployeeName NOT LIKE '%ー%'
;

+----------+
| 平均体重 |
+----------+
|  61.1053 |
+----------+
1 row in set (0.001 sec)

-- 問7
-- テーブルCustomersからCustomerNameに'株式会社'を含むレコードの件数を求めなさい。
-- 別名は「顧客数」とする

SELECT
  COUNT(*) AS "顧客数"
FROM
  Customers
WHERE
  CustomerName LIKE '%株式会社%'
;

+--------+
| 顧客数 |
+--------+
|      2 |
+--------+
1 row in set (0.001 sec)

-- 問8
-- テーブルEmployeesからEmployeeNameに'ー'を含み、Heightが170以上のEmployeeName、Heightを取り出しなさい。

SELECT
  EmployeeName, Height
FROM
  Employees
WHERE
  EmployeeName LIKE '%ー%' AND Height >= 170
;

+--------------+--------+
| EmployeeName | Height |
+--------------+--------+
| ミチロー     |    170 |
| チー         |    173 |
| うー太       |    170 |
+--------------+--------+
3 rows in set (0.001 sec)

-- 問9
-- テーブルCustomersからCustomerNameに'ー'を含み、Addressに'江戸川区'を含まないレコードを取り出しなさい。

SELECT
  *
FROM
  Customers
WHERE
  CustomerName LIKE '%ー%' AND Address NOT LIKE '%江戸川区%'
;

+------------+--------------+------------------------+----------------+-----------------+---------------+
| CustomerID | CustomerCode | CustomerName           | Address        | CustomerClassID | PrefecturalID |
+------------+--------------+------------------------+----------------+-----------------+---------------+
|         11 |         1011 | ミーストア             | 龍ケ崎市下町   |               1 |             8 |
|         23 |         1023 | 有限会社チョコグリーン | 大阪市中央区   |               1 |            27 |
|         24 |         2024 | チャー                 | 水戸市大工町   |               2 |             8 |
|         25 |         2025 | みーすけ               | 武蔵野市吉祥寺 |               2 |            13 |
|         27 |         1027 | パーコ株式会社         | 取手市井野     |               1 |             8 |
|         30 |         1030 | プーストア             | 江東区大島     |               1 |            13 |
+------------+--------------+------------------------+----------------+-----------------+---------------+

-- 問10
-- テーブルProducts表をPriceによって500未満を「C」、500以上1500未満を「B」、
-- 1500以上を「A」にランク分けし、
-- ProductNameとPriceとランク分けを表示しなさい。
-- 別名はそれぞれ「製品名」、「価格」、「ランク」とする

SELECT
  ProductName AS "製品名",
  Price AS "価格",
  CASE
    WHEN Price < 500 THEN 'C'
    WHEN Price < 1500 THEN 'B'
    ELSE 'A'
  END AS "ランク"
FROM
  Products
;

+----------------------+------+--------+
| 製品名               | 価格 | ランク |
+----------------------+------+--------+
| まぐろ               |  500 | B      |
| 金魚                 |   35 | C      |
| ぶり                 |  350 | C      |
| あじ                 |  200 | C      |
| あなご               |  150 | C      |
| ねずみ肉             |  120 | C      |
| とり肉               |  200 | C      |
| 豚肉                 |  300 | C      |
| バッタ肉             |  185 | C      |
| 蜘蛛肉               |   98 | C      |
| ねこ草               |  120 | C      |
| 大根                 |  135 | C      |
| いちご               |  480 | C      |
| じゃがいも           |  300 | C      |
| しいたけ             |  150 | C      |
| チューチュークッキー |  200 | C      |
| いなごチップス       |  180 | C      |
| ありせんべい         |  320 | C      |
| チューチューアイス   |  110 | C      |
| こねずみジャーキー   |  120 | C      |
| 鰹節                 |  200 | C      |
| ネコ缶ナンバーワン   |  300 | C      |
| ネコ缶ダイエット     |  300 | C      |
| ネコ缶ローヤル       |  450 | C      |
| 煮干                 |  320 | C      |
| ねこマンマ           |  480 | C      |
| ツナおじや           |  460 | C      |
| ねずみキッシュ       |  500 | B      |
| ねこ草のごまあえ     |  230 | C      |
| バッタのそぼろ煮     |  360 | C      |
| ネコ砂               |  800 | B      |
| トイレトレイ         | 1200 | B      |
| 引っ掻き板           | 1500 | A      |
| 上り棒               | 3200 | A      |
| ふかふか座布団       | 2800 | A      |
| またたび             |  980 | B      |
| またたび煙草         |  200 | C      |
| 骨                   |  560 | B      |
| またたびガム         |  120 | C      |
| マタタビドリンク     |  240 | C      |
| ネコジャラシ         |  870 | B      |
| 毛糸玉               |  210 | C      |
| ボール               |  150 | C      |
| チョロチュー         |  300 | C      |
| フリスビー           |  450 | C      |
| 鈴                   |   50 | C      |
| 首輪                 | 1300 | B      |
| リボン               |  800 | B      |
| 足輪                 |  600 | B      |
| 毛止めクリップ       |  350 | C      |
| サカナまっしぐら     |  270 | C      |
+----------------------+------+--------+
51 rows in set (0.001 sec)

-- 問11
-- テーブルEmployeesをHeightによって180以上を「A」、170以上180未満を「B」、
-- 160以上170未満を「C」、180未満を「D」にランク分けし、
-- EmployeeName、Heightおよびランク分けを表示しなさい
-- 別名はそれぞれ「社員名」、「身長」、「ランク」とする

SELECT
  EmployeeName AS "社員名",
  Height AS "身長",
  CASE
    WHEN Height >= 180 THEN 'A'
    WHEN Height >= 170 THEN 'B'
    WHEN Height >= 160 THEN 'C'
    ELSE 'D'
  END AS "ランク"
FROM
  Employees
;

+------------+------+--------+
| 社員名     | 身長 | ランク |
+------------+------+--------+
| シマゴロー |  168 | C      |
| ゴッチン   |  161 | C      |
| マキ子     |  155 | D      |
| マル       |  158 | D      |
| ミチロー   |  170 | B      |
| チー       |  173 | B      |
| サラ       |  162 | C      |
| みなみ     |  153 | D      |
| プリン     |  148 | D      |
| ぴー子     |  156 | D      |
| ごま       |  180 | A      |
| ぱんだ     |  185 | A      |
| 猫丸       |  172 | B      |
| ニャン太   |  178 | B      |
| モンチー   |  169 | C      |
| ぴよ       |  155 | D      |
| ラスカル   |  165 | C      |
| くま       |  190 | A      |
| ゴン       |  176 | B      |
| チー       |  169 | C      |
| 太助       |  164 | C      |
| トントン   |  155 | D      |
| マー       |  158 | D      |
| サリー     |  149 | D      |
| うさぎ     |  161 | C      |
| うー太     |  170 | B      |
| ローリー   |  147 | D      |
| マイケル   |  160 | C      |
| スー       |  163 | C      |
| ミーヤ     |  168 | C      |
| モクモク   |  170 | B      |
+------------+------+--------+
31 rows in set (0.001 sec)

-- 問12
-- テーブルSalaryからPayDateが'2006-09-25'のEmployeeID、Amount、ランク分けを表示しなさい。
-- ランク分けはAmountによって150,000未満を「D」、150,000以上300,000未満を「C」、
-- 300,000以上500,000未満を「B」、500,000以上を「A」とする
-- 別名はそれぞれ「従業員番号」、「給与」、「ランク」とする

SELECT
  EmployeeID AS "従業員番号",
  Amount AS "給与",
  CASE
    WHEN Amount < 150000 THEN 'D'
    WHEN Amount < 300000 THEN 'C'
    WHEN Amount < 500000 THEN 'B'
    ELSE 'A'
  END AS "ランク"
FROM
  Salary
WHERE
  PayDate = '2006-09-25'
;

+------------+--------+--------+
| 従業員番号 | 給与   | ランク |
+------------+--------+--------+
|          1 | 580000 | A      |
|          2 | 450000 | B      |
|          3 | 410000 | B      |
|          4 | 380000 | B      |
|          5 | 350000 | B      |
|          6 | 350000 | B      |
|          7 | 330000 | B      |
|          8 | 330000 | B      |
|          9 | 320000 | B      |
|         10 | 300000 | B      |
|         11 | 300000 | B      |
|         12 | 300000 | B      |
|         13 | 280000 | C      |
|         14 | 280000 | C      |
|         15 | 260000 | C      |
|         16 | 260000 | C      |
|         17 | 250000 | C      |
|         18 | 290000 | C      |
|         19 | 240000 | C      |
|         20 | 230000 | C      |
|         21 | 210000 | C      |
|         22 | 210000 | C      |
|         23 | 200000 | C      |
|         24 | 180000 | C      |
|         25 | 180000 | C      |
|         26 | 175000 | C      |
|         27 | 165000 | C      |
|         28 | 160000 | C      |
|         29 | 150000 | C      |
+------------+--------+--------+
29 rows in set (0.001 sec)


-- 問13
-- テーブルEmployeesからEmployeeName、Weight、ランク分けを表示しなさい。
-- ランク分けはWeightによって80以上を「D」、70以上80未満を「C」、
-- 60以上70未満を「B」、60未満を「A」とする
-- 別名はそれぞれ「社員名」、「体重」、「ランク」とする

SELECT
  EmployeeName AS "社員名",
  Weight AS "体重",
  CASE
    WHEN Weight >= 80 THEN 'D'
    WHEN Weight >= 70 THEN 'C'
    WHEN Weight >= 60 THEN 'B'
    ELSE 'A'
  END AS "ランク"
FROM
  Employees
;

+------------+------+--------+
| 社員名     | 体重 | ランク |
+------------+------+--------+
| シマゴロー |   72 | C      |
| ゴッチン   |   60 | B      |
| マキ子     |   52 | A      |
| マル       |   45 | A      |
| ミチロー   |   70 | C      |
| チー       |   76 | C      |
| サラ       |   50 | A      |
| みなみ     |   42 | A      |
| プリン     |   48 | A      |
| ぴー子     |   52 | A      |
| ごま       |   78 | C      |
| ぱんだ     |   95 | D      |
| 猫丸       |   80 | D      |
| ニャン太   |   58 | A      |
| モンチー   |   55 | A      |
| ぴよ       |   62 | B      |
| ラスカル   |   51 | A      |
| くま       |  115 | D      |
| ゴン       |   78 | C      |
| チー       |   56 | A      |
| 太助       |   50 | A      |
| トントン   |   45 | A      |
| マー       |   44 | A      |
| サリー     |   38 | A      |
| うさぎ     |   43 | A      |
| うー太     |   63 | B      |
| ローリー   |   40 | A      |
| マイケル   |   49 | A      |
| スー       |   52 | A      |
| ミーヤ     |   51 | A      |
| モクモク   |   60 | B      |
+------------+------+--------+
31 rows in set (0.001 sec)

-- 問14
-- テーブルSalesからSaleDateが'2006-09-01'から'2006-09-10'の
-- SaleID、Quantity、ランク分けを表示しなさい。
-- ランク分けはQuantityによって10以上を「A」、10未満5以上を「B」、
-- 5未満を「C」とする
-- 別名はそれぞれ「販売ID」、「販売個数」、「ランク」とする

SELECT
  SaleID AS "販売ID",
  Quantity AS "販売個数",
  CASE
    WHEN Quantity >= 10 THEN 'A'
    WHEN Quantity >= 5 THEN 'B'
    ELSE 'C'
  END AS "ランク"
FROM
  Sales
WHERE
  SaleDate BETWEEN '2006-09-01' AND '2006-09-10'
;

+--------+----------+--------+
| 販売ID | 販売個数 | ランク |
+--------+----------+--------+
|      1 |        5 | B      |
|      2 |        1 | C      |
|      3 |        1 | C      |
|      4 |        6 | B      |
|      5 |        2 | C      |
|      6 |        3 | C      |
|      7 |       24 | A      |
|      8 |       12 | A      |
|      9 |       10 | A      |
|     10 |        1 | C      |
|     11 |        1 | C      |
|     12 |        3 | C      |
|     13 |        1 | C      |
|     14 |        4 | C      |
|     15 |        1 | C      |
|     16 |       30 | A      |
|     17 |       30 | A      |
|     18 |       20 | A      |
|     19 |       15 | A      |
|     20 |        1 | C      |
|     21 |        1 | C      |
|     22 |        2 | C      |
|     23 |        1 | C      |
|     24 |        3 | C      |
|     25 |        5 | B      |
|     26 |        1 | C      |
|     27 |      100 | A      |
+--------+----------+--------+
27 rows in set (0.001 sec)

-- 「movie」データベースを選択する

use movie

-- 問15
-- テーブルhero_movieからMOVIE_TITLE_JP、CHARGE、ランク分けを表示しなさい。
-- ランク分けはWeightによって200以上を「D」、100以上200未満を「C」、
-- 50以上100未満を「B」、50未満を「A」とする
-- 別名はそれぞれ「映画タイトル」、「料金」、「ランク」とする

SELECT
  MOVIE_TITLE_JP AS "映画タイトル",
  CHARGE AS "料金",
  CASE
    WHEN CHARGE >= 200 THEN 'D'
    WHEN CHARGE >= 100 THEN 'C'
    WHEN CHARGE >= 50 THEN 'B'
    ELSE 'A'
  END AS "ランク"
FROM
  hero_movie
;

+---------------------------------------------------+------+--------+
| 映画タイトル                                      | 料金 | ランク |
+---------------------------------------------------+------+--------+
| バットマン                                        |   50 | B      |
| バットマン リターンズ                             |   80 | B      |
| バットマン ビギンズ                               |  100 | C      |
| ダークナイト                                      |  100 | C      |
| ダークナイト ライジング                           |  100 | C      |
| バットマン vs スーパーマン ジャスティスの誕生     |  100 | C      |
| ジャスティス・リーグ                              |  100 | C      |
| ワンダーウーマン                                  |  150 | C      |
| キャプテン・アメリカ/ザ・ファースト・アベンジャー |  100 | C      |
| キャプテン・アメリカ/ウィンター・ソルジャー       |  100 | C      |
| アイアンマン                                      |  100 | C      |
| アイアンマン2                                     |  100 | C      |
| アイアンマン3                                     |  100 | C      |
| スパイダーマン:ホームカミング                     |  150 | C      |
| スパイダーマン:ファー・フロム・ホーム             |    0 | A      |
| アベンジャーズ                                    |   80 | B      |
| アベンジャーズ/エイジ・オブ・ウルトロン           |   80 | B      |
| シビル・ウォー/キャプテン・アメリカ               |   80 | B      |
| キック・アス                                      |   70 | B      |
| キック・アス/ジャスティス・フォーエバー           |   70 | B      |
| アントマン                                        |   90 | B      |
| アベンジャーズ/インフィニティ・ウォー             |  100 | C      |
| アベンジャーズ/エンドゲーム                       |  200 | D      |
| アクアマン                                        |  150 | C      |
+---------------------------------------------------+------+--------+
24 rows in set (0.001 sec)