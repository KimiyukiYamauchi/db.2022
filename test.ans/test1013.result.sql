-- 出席番号：
-- 氏名：

-- データベースに接続する
mysql -u root -p

-- 「drill」データベースを選択する
use drill

-- 問1
-- テーブルProductsから一度でも売れたことがある商品(テーブルSalesにProductIDがある)でPriceが2000以上の
-- データのProductCode、ProductName、Priceを表示しなさい。


+-------------+----------------+-------+
| ProductCode | ProductName    | Price |
+-------------+----------------+-------+
|        7034 | 上り棒         |  3200 |
|        7035 | ふかふか座布団 |  2800 |
+-------------+----------------+-------+
2 rows in set (0.001 sec)


-- 問2
-- テーブルEmployeesから各EmployeeIDについて、SalaryのAmountの平均が200,000以下の
-- データを取り出し、EmployeeID、EmployeeNameを表示しなさい。
-- 結果はEmployeeIDの昇順とする


+------------+--------------+
| EmployeeID | EmployeeName |
+------------+--------------+
|         24 | サリー       |
|         25 | うさぎ       |
|         26 | うー太       |
|         27 | ローリー     |
|         28 | マイケル     |
|         29 | スー         |
|         30 | ミーヤ       |
+------------+--------------+
7 rows in set (0.001 sec)

-- 問3
-- テーブルSalesのQuantityがQuantityが200以上のレコードを取り出し、SaleID、Quantity、ProductID、
-- ProductName(列別名は「製品名」、テーブルProductsより取得)を表示しなさい


+--------+----------+-----------+----------------------+
| SaleID | Quantity | ProductID | 製品名               |
+--------+----------+-----------+----------------------+
|    553 |      300 |        16 | チューチュークッキー |
|    601 |      320 |        43 | ボール               |
|    631 |      200 |        19 | チューチューアイス   |
+--------+----------+-----------+----------------------+

-- 問4
-- テーブルCustomersからSalesでQuantityの最大が200以上のレコードを取り出し、
-- CustomerID、CustomerNameを表示しなさい。


+------------+------------------+
| CustomerID | CustomerName     |
+------------+------------------+
|         10 | ぶち雑貨店       |
|         16 | 株式会社スズナリ |
|         17 | エリザベス商会   |
+------------+------------------+


-- 問5
-- テーブルEmployeesから各EmployeeIDについて、SalaryのAmountの平均が200,000以下の
-- データを取り出し、EmployeeID、EmployeeNameとそのAmountの平均(列別名は「平均給与」)を表示しなさい。
-- 結果はEmployeeIDの昇順とする


+------------+--------------+-------------+
| EmployeeID | EmployeeName | 平均給与    |
+------------+--------------+-------------+
|         24 | サリー       | 184166.6667 |
|         25 | うさぎ       | 184166.6667 |
|         26 | うー太       | 177083.3333 |
|         27 | ローリー     | 167083.3333 |
|         28 | マイケル     | 162083.3333 |
|         29 | スー         | 152083.3333 |
|         30 | ミーヤ       | 150000.0000 |
+------------+--------------+-------------+
7 rows in set (0.008 sec)

-- 問6
-- テーブルSalesのQuantityがQuantityが200以上のレコードを取り出し、SaleID、Quantity、ProductID、
-- ProductName(列別名は「製品名」、テーブルProductsより取得)、CustomerName(列別名は「顧客名」、
-- テーブルCustomerより取得)を表示しなさい


+--------+----------+-----------+----------------------+------------------+
| SaleID | Quantity | ProductID | 製品名               | 顧客名           |
+--------+----------+-----------+----------------------+------------------+
|    553 |      300 |        16 | チューチュークッキー | エリザベス商会   |
|    601 |      320 |        43 | ボール               | ぶち雑貨店       |
|    631 |      200 |        19 | チューチューアイス   | 株式会社スズナリ |
+--------+----------+-----------+----------------------+------------------+
3 rows in set (0.007 sec)

-- 問7
-- テーブルSalaryとEmployeesを結合して、EmployeeIDが1の
-- EmployeeID、EmployeeName、PayDate、Amountを表示しなさい
-- 結果はPayDateの昇順とする


+------------+--------------+------------+--------+
| EmployeeID | EmployeeName | PayDate    | Amount |
+------------+--------------+------------+--------+
|          1 | シマゴロー   | 2006-09-25 | 580000 |
|          1 | シマゴロー   | 2006-10-24 | 580000 |
|          1 | シマゴロー   | 2006-11-25 | 580000 |
|          1 | シマゴロー   | 2006-12-25 | 580000 |
|          1 | シマゴロー   | 2007-01-23 | 580000 |
|          1 | シマゴロー   | 2007-02-25 | 580000 |
|          1 | シマゴロー   | 2007-03-25 | 580000 |
|          1 | シマゴロー   | 2007-04-23 | 600000 |
|          1 | シマゴロー   | 2007-05-25 | 600000 |
|          1 | シマゴロー   | 2007-06-25 | 600000 |
|          1 | シマゴロー   | 2007-07-23 | 600000 |
|          1 | シマゴロー   | 2007-08-25 | 600000 |
+------------+--------------+------------+--------+
12 rows in set (0.029 sec)


-- 問8
-- テーブルSales、Customers、Employees、Productsを結合して、Sales.Quantityが300以上の
-- データについてQuantity、CustomerName、ProductName、EmployeeNameを表示しなさい


+----------+----------------+----------------------+--------------+
| Quantity | CustomerName   | ProductName          | EmployeeName |
+----------+----------------+----------------------+--------------+
|      300 | エリザベス商会 | チューチュークッキー | みなみ       |
|      320 | ぶち雑貨店     | ボール               | ぱんだ       |
+----------+----------------+----------------------+--------------+
2 rows in set (0.002 sec)


-- 問9
-- テーブルSalesとProductsを結合し、SalesをProductIDでグループ化、Quantityの合計が800
-- 以上のデータについてQuantity合計(列別名は「数量合計」)、ProductID、ProductNameを表示しなさい。



+----------+-----------+----------------------+
| 数量合計 | ProductID | ProductName          |
+----------+-----------+----------------------+
|      825 |        16 | チューチュークッキー |
|      889 |        19 | チューチューアイス   |
|     1106 |        21 | 鰹節                 |
+----------+-----------+----------------------+

-- 問10
-- テーブルCustomers、Prefecturalsを結合し、PrefecturalIDとPrefecturalNameでグループ化し、
-- レコード数が10以上について、PrefecturalID、PrefecturalName(列別名は「都道府県名」)、 
-- レコード数(列別名は「顧客数」)を表示しなさい


+---------------+------------+--------+
| PrefecturalID | 都道府県名 | 顧客数 |
+---------------+------------+--------+
|            13 | 東京都     |     19 |
+---------------+------------+--------+
1 row in set (0.001 sec)

-- 問11
-- テーブルSales、Customers、Employees、ProductsをにWHERE句を使って結合して、
-- Sales.Quantityが300以上のデータについてQuantity、CustomerName、
-- ProductName、EmployeeNameを表示しなさい

+----------+----------------+----------------------+--------------+
| Quantity | CustomerName   | ProductName          | EmployeeName |
+----------+----------------+----------------------+--------------+
|      300 | エリザベス商会 | チューチュークッキー | みなみ       |
|      320 | ぶち雑貨店     | ボール               | ぱんだ       |
+----------+----------------+----------------------+--------------+
2 rows in set (0.001 sec)

-- 問12
-- テーブルCustomers、Prefecturals、CustomerClassesをWHERE句を使って結合し、CustomerID
-- が25以上について、CustomerID昇順で並べ、CustomerID, CustomerName、PrefecturalName、
-- CustomerClassNameを表示しなさい。


+------------+----------------+-----------------+-------------------+
| CustomerID | CustomerName   | PrefecturalName | CustomerClassName |
+------------+----------------+-----------------+-------------------+
|         25 | みーすけ       | 東京都          | 個人              |
|         26 | チロ           | 東京都          | 個人              |
|         27 | パーコ株式会社 | 茨城県          | 法人              |
|         28 | トニー商店     | 東京都          | 法人              |
|         29 | ギン           | 神奈川県        | 個人              |
|         30 | プーストア     | 東京都          | 法人              |
+------------+----------------+-----------------+-------------------+
6 rows in set (0.001 sec)

-- 問13
-- テーブルSales、Products、Categoriesを連結し、SalesをCategoryID、CategoryNameでグループ化、
-- Quantityの合計が1000以上について、CategoryID、CategoryName(列別名は「カテゴリ名」)、
-- Quantityの合計(列別名は「数量合計」)を表示しなさい。


+------------+------------+----------+
| CategoryID | カテゴリ名 | 数量合計 |
+------------+------------+----------+
|          2 | 肉         |     1130 |
|          4 | 菓子       |     3462 |
|          5 | 乾物       |     3191 |
|          8 | 嗜好品     |     1809 |
+------------+------------+----------+
4 rows in set (0.007 sec)


-- 問14
-- テーブルSales、Customers、Prefecturalsを結合し、PrefecturalID、PrefecturalNameでグループ化、
-- Quantityの合計が200以上について、Quantityの合計(列別名は「合計数量」)、PrefecturalID、
-- PrefecturalNameを表示しなさい。


+----------+---------------+-----------------+
| 合計数量 | PrefecturalID | PrefecturalName |
+----------+---------------+-----------------+
|     1575 |             1 | 北海道          |
|     1840 |             8 | 茨城県          |
|     6240 |            13 | 東京都          |
|      975 |            27 | 大阪府          |
|      985 |            38 | 愛媛県          |
+----------+---------------+-----------------+
5 rows in set (0.003 sec)


-- 問15
-- テーブルSales、Customers、CustomerClassesを結合し、CustomerClassID、CustomerClassNameで
-- グループ化、Quantityの平均値(列別名は「平均数量」)、CustomerClassID、CustomerClassName
-- を表示しなさい


+----------+-----------------+-------------------+
| 平均数量 | CustomerClassID | CustomerClassName |
+----------+-----------------+-------------------+
|  41.6577 |               1 | 法人              |
|   1.5649 |               2 | 個人              |
+----------+-----------------+-------------------+
2 rows in set (0.034 sec)