-- 出席番号：
-- 氏名：

-- データベースに接続する
mysql -u root -p

-- 「drill」データベースを選択する
use drill

-- 問1
-- テーブルCustomersをPrefecturalIDでグループ化し、PrefecturalIDごとの件数を
-- 求めなさい
-- 列別名はそれぞれ「都道府県ID」、「件数」とする

SELECT
  PrefecturalID AS "都道府県ID",
  COUNT(*) AS "件数"
FROM
  Customers
GROUP BY
  PrefecturalID
;

+------------+------+
| 都道府県ID | 件数 |
+------------+------+
|          1 |    1 |
|          8 |    3 |
|         10 |    1 |
|         11 |    2 |
|         13 |   19 |
|         14 |    2 |
|         27 |    1 |
|         30 |    1 |
|         38 |    1 |
+------------+------+
9 rows in set (0.001 sec)


-- 問2
-- テーブルSalesをProductIDでグループ化し、ProductIDごとの件数を
-- 求めなさい
-- 列別名はそれぞれ「製品ID」、「件数」とする

SELECT
  ProductID AS "製品ID",
  COUNT(*) AS "件数"
FROM
  Sales
GROUP BY
  ProductID
;

+--------+------+
| 製品ID | 件数 |
+--------+------+
|      1 |   14 |
|      2 |   22 |
|      3 |    6 |
|      4 |   11 |
|      5 |   12 |
|      6 |   30 |
|      7 |    7 |
|      8 |    9 |
|      9 |   46 |
|     10 |   37 |
|     11 |   37 |
|     12 |   20 |
|     13 |   36 |
|     14 |   10 |
|     15 |    6 |
|     16 |   26 |
|     17 |   44 |
|     18 |   39 |
|     19 |   47 |
|     20 |   55 |
|     21 |   41 |
|     22 |   31 |
|     23 |   20 |
|     24 |   36 |
|     25 |   14 |
|     26 |   14 |
|     27 |    6 |
|     28 |    6 |
|     29 |    6 |
|     30 |   19 |
|     31 |   53 |
|     32 |   14 |
|     33 |    8 |
|     34 |   10 |
|     35 |    7 |
|     36 |   15 |
|     37 |   26 |
|     39 |   46 |
|     40 |   34 |
|     41 |    5 |
|     42 |   15 |
|     43 |   11 |
|     44 |   19 |
|     46 |    8 |
|     47 |    6 |
|     48 |    7 |
|     49 |    7 |
|     50 |    3 |
+--------+------+
48 rows in set (0.002 sec)

-- 問3
-- テーブルSalaryをEmployeeIDでグループ化し、EmployeeIDごとのAmountの平均を求めなさい
-- 列別名はそれぞれ「社員ID」、「平均」とする

SELECT
  EmployeeID AS "社員ID",
  AVG(Amount) AS "平均"
FROM
  Salary
GROUP BY
  EmployeeID
;

+--------+-------------+
| 社員ID | 平均        |
+--------+-------------+
|      1 | 588333.3333 |
|      2 | 458333.3333 |
|      3 | 418333.3333 |
|      4 | 388333.3333 |
|      5 | 358333.3333 |
|      6 | 358333.3333 |
|      7 | 338333.3333 |
|      8 | 338333.3333 |
|      9 | 328333.3333 |
|     10 | 308333.3333 |
|     11 | 308333.3333 |
|     12 | 308333.3333 |
|     13 | 288333.3333 |
|     14 | 288333.3333 |
|     15 | 264166.6667 |
|     16 | 264166.6667 |
|     17 | 254166.6667 |
|     18 | 298333.3333 |
|     19 | 244166.6667 |
|     20 | 234166.6667 |
|     21 | 214166.6667 |
|     22 | 214166.6667 |
|     23 | 204166.6667 |
|     24 | 184166.6667 |
|     25 | 184166.6667 |
|     26 | 177083.3333 |
|     27 | 167083.3333 |
|     28 | 162083.3333 |
|     29 | 152083.3333 |
|     30 | 150000.0000 |
|     31 | 100000.0000 |
+--------+-------------+
31 rows in set (0.001 sec)

-- 問4
-- テーブルSalesをEmployeeID、ProductIDでグループ化し、EmployeeID、ProductIDごとの
-- Quantityの合計を求めなさい
-- 列別名はそれぞれ「社員ID」、「商品ID」、「数量」とする

SELECT
  EmployeeID AS "社員ID",
  ProductID AS "商品ID",
  SUM(Quantity) AS "数量"
FROM
  Sales
GROUP BY
  EmployeeID, ProductID
;

+--------+--------+------+
| 社員ID | 商品ID | 数量 |
+--------+--------+------+
|      4 |      2 |    2 |
|      4 |      6 |    1 |
|      4 |      9 |   11 |
|      4 |     10 |    9 |
|      4 |     11 |    4 |
|      4 |     12 |    2 |
|      4 |     13 |    8 |
|      4 |     14 |    7 |
|      4 |     15 |    2 |
|      4 |     16 |    1 |
|      4 |     17 |    1 |
|      4 |     18 |    5 |
|      4 |     20 |    4 |
|      4 |     21 |    3 |
|      4 |     24 |    9 |
|      4 |     25 |    1 |
|      4 |     27 |    1 |
|      4 |     30 |    4 |
|      4 |     31 |    4 |
|      4 |     35 |    1 |
|      4 |     37 |    2 |
|      4 |     39 |    1 |
|      4 |     40 |    1 |
|      4 |     43 |    1 |
|      4 |     44 |    1 |
|      4 |     46 |    1 |
|      4 |     49 |    2 |
|      5 |      2 |  120 |
|      5 |      6 |   30 |
|      5 |      9 |   80 |
|      5 |     10 |  130 |
|      5 |     11 |  150 |
|      5 |     16 |   35 |
|      5 |     17 |   80 |
|      5 |     20 |  222 |
|      5 |     21 |  360 |
|      5 |     22 |  240 |
|      5 |     23 |  160 |
|      5 |     24 |  240 |
|      5 |     31 |   90 |
|      5 |     34 |    5 |
|      5 |     36 |   78 |
|      5 |     37 |  180 |
|      5 |     39 |  112 |
|      5 |     40 |   64 |
|      5 |     41 |   20 |
|      6 |      2 |    5 |
|      6 |      4 |    1 |
|      6 |      5 |    1 |
|      6 |      6 |    9 |
|      6 |      9 |    2 |
|      6 |     10 |    2 |
|      6 |     11 |    1 |
|      6 |     12 |    1 |
|      6 |     13 |    1 |
|      6 |     14 |    1 |
|      6 |     15 |    6 |
|      6 |     17 |    4 |
|      6 |     18 |    3 |
|      6 |     19 |    3 |
|      6 |     20 |    5 |
|      6 |     21 |    1 |
|      6 |     22 |    6 |
|      6 |     25 |    8 |
|      6 |     26 |    1 |
|      6 |     27 |    1 |
|      6 |     29 |    1 |
|      6 |     30 |    1 |
|      6 |     33 |    1 |
|      6 |     37 |    3 |
|      6 |     39 |    3 |
|      6 |     40 |    2 |
|      6 |     42 |    1 |
|      6 |     43 |    1 |
|      6 |     44 |    1 |
|      6 |     46 |    1 |
|      6 |     48 |    1 |
|      7 |      6 |  180 |
|      7 |      9 |  195 |
|      7 |     10 |  110 |
|      7 |     11 |  230 |
|      7 |     16 |  210 |
|      7 |     17 |  230 |
|      7 |     18 |  175 |
|      7 |     19 |  350 |
|      7 |     20 |   44 |
|      7 |     21 |  170 |
|      7 |     25 |   80 |
|      7 |     31 |  145 |
|      7 |     32 |   15 |
|      7 |     34 |    5 |
|      7 |     36 |   20 |
|      7 |     37 |   50 |
|      7 |     39 |  141 |
|      7 |     40 |  120 |
|      7 |     44 |   42 |
|      7 |     50 |   60 |
|      8 |     10 |   20 |
|      8 |     16 |  395 |
|      8 |     17 |  214 |
|      8 |     18 |  125 |
|      8 |     19 |  200 |
|      8 |     21 |  180 |
|      8 |     22 |   80 |
|      8 |     23 |   65 |
|      8 |     24 |  100 |
|      8 |     25 |   30 |
|      8 |     31 |  110 |
|      8 |     32 |   10 |
|      8 |     36 |   20 |
|      8 |     37 |  110 |
|      8 |     39 |   90 |
|      8 |     41 |   30 |
|      8 |     44 |   40 |
|      8 |     50 |   10 |
|     11 |      1 |    3 |
|     11 |      2 |    1 |
|     11 |      6 |    1 |
|     11 |      7 |    3 |
|     11 |      8 |    2 |
|     11 |      9 |   17 |
|     11 |     10 |    1 |
|     11 |     12 |    6 |
|     11 |     13 |    8 |
|     11 |     14 |    1 |
|     11 |     15 |    3 |
|     11 |     16 |    1 |
|     11 |     17 |    4 |
|     11 |     18 |   15 |
|     11 |     19 |    5 |
|     11 |     20 |    6 |
|     11 |     21 |    1 |
|     11 |     22 |    4 |
|     11 |     23 |    1 |
|     11 |     25 |    1 |
|     11 |     27 |    1 |
|     11 |     29 |    1 |
|     11 |     30 |    3 |
|     11 |     31 |    7 |
|     11 |     32 |    1 |
|     11 |     34 |    1 |
|     11 |     36 |    1 |
|     11 |     37 |    1 |
|     11 |     39 |    4 |
|     11 |     40 |    2 |
|     11 |     42 |    3 |
|     11 |     46 |    2 |
|     11 |     47 |    1 |
|     11 |     48 |    1 |
|     12 |      9 |   30 |
|     12 |     10 |   10 |
|     12 |     11 |   30 |
|     12 |     16 |   90 |
|     12 |     17 |   90 |
|     12 |     18 |   30 |
|     12 |     19 |  150 |
|     12 |     20 |   85 |
|     12 |     21 |  100 |
|     12 |     22 |  235 |
|     12 |     23 |  135 |
|     12 |     24 |  130 |
|     12 |     31 |   65 |
|     12 |     36 |   70 |
|     12 |     39 |  170 |
|     12 |     40 |  240 |
|     12 |     43 |  320 |
|     12 |     44 |   30 |
|     12 |     46 |   10 |
|     12 |     50 |   12 |
|     14 |      1 |    8 |
|     14 |      2 |    1 |
|     14 |      3 |    2 |
|     14 |      6 |    1 |
|     14 |      7 |    1 |
|     14 |      8 |    2 |
|     14 |     10 |    2 |
|     14 |     11 |    3 |
|     14 |     12 |    3 |
|     14 |     13 |    7 |
|     14 |     14 |    1 |
|     14 |     16 |    2 |
|     14 |     17 |    1 |
|     14 |     19 |    1 |
|     14 |     20 |    2 |
|     14 |     21 |    3 |
|     14 |     24 |    2 |
|     14 |     30 |    1 |
|     14 |     33 |    1 |
|     14 |     37 |    1 |
|     14 |     39 |    1 |
|     14 |     40 |    3 |
|     14 |     42 |    3 |
|     14 |     43 |    2 |
|     16 |      2 |    2 |
|     16 |      6 |    1 |
|     16 |      9 |    4 |
|     16 |     10 |    1 |
|     16 |     11 |    1 |
|     16 |     13 |   13 |
|     16 |     15 |    1 |
|     16 |     18 |    1 |
|     16 |     19 |    4 |
|     16 |     20 |    1 |
|     16 |     21 |   13 |
|     16 |     25 |    2 |
|     16 |     26 |    2 |
|     16 |     28 |    3 |
|     16 |     30 |    1 |
|     16 |     31 |    1 |
|     16 |     32 |    1 |
|     16 |     33 |    1 |
|     16 |     35 |    1 |
|     16 |     37 |    1 |
|     16 |     39 |    1 |
|     16 |     40 |    2 |
|     16 |     42 |    1 |
|     16 |     43 |    2 |
|     16 |     44 |    1 |
|     17 |      2 |   12 |
|     17 |      3 |    2 |
|     17 |      4 |    3 |
|     17 |      5 |    3 |
|     17 |      6 |    6 |
|     17 |      9 |    1 |
|     17 |     11 |    3 |
|     17 |     12 |    2 |
|     17 |     13 |    2 |
|     17 |     14 |    1 |
|     17 |     19 |    3 |
|     17 |     20 |    1 |
|     17 |     21 |    3 |
|     17 |     23 |    2 |
|     17 |     24 |    3 |
|     17 |     25 |    1 |
|     17 |     26 |    5 |
|     17 |     27 |    1 |
|     17 |     28 |    1 |
|     17 |     29 |    2 |
|     17 |     30 |    1 |
|     17 |     31 |   14 |
|     17 |     32 |    2 |
|     17 |     33 |    1 |
|     17 |     34 |    1 |
|     17 |     35 |    2 |
|     17 |     37 |    1 |
|     17 |     39 |    1 |
|     17 |     40 |    1 |
|     17 |     42 |    1 |
|     17 |     43 |    1 |
|     17 |     44 |    4 |
|     17 |     49 |    1 |
|     18 |      6 |   70 |
|     18 |      9 |  120 |
|     18 |     11 |   60 |
|     18 |     16 |   80 |
|     18 |     17 |  110 |
|     18 |     18 |  150 |
|     18 |     19 |  140 |
|     18 |     20 |   40 |
|     18 |     21 |  250 |
|     18 |     22 |  216 |
|     18 |     23 |   56 |
|     18 |     24 |  226 |
|     18 |     31 |  160 |
|     18 |     32 |   20 |
|     18 |     36 |   50 |
|     18 |     39 |   50 |
|     18 |     40 |  120 |
|     18 |     41 |   50 |
|     18 |     44 |   15 |
|     19 |      1 |    1 |
|     19 |      3 |    1 |
|     19 |      4 |    1 |
|     19 |      5 |    6 |
|     19 |      6 |    3 |
|     19 |      7 |    1 |
|     19 |      9 |    1 |
|     19 |     10 |    3 |
|     19 |     11 |    1 |
|     19 |     12 |    1 |
|     19 |     13 |    1 |
|     19 |     14 |    2 |
|     19 |     18 |    3 |
|     19 |     20 |   10 |
|     19 |     21 |    8 |
|     19 |     23 |    1 |
|     19 |     24 |    3 |
|     19 |     25 |    2 |
|     19 |     26 |    4 |
|     19 |     32 |    2 |
|     19 |     33 |    1 |
|     19 |     34 |    2 |
|     19 |     37 |    2 |
|     19 |     39 |    1 |
|     19 |     42 |    1 |
|     19 |     43 |    1 |
|     19 |     46 |    3 |
|     20 |      2 |    2 |
|     20 |      6 |    1 |
|     20 |      7 |    1 |
|     20 |     10 |    3 |
|     20 |     12 |    1 |
|     20 |     13 |    2 |
|     20 |     14 |    1 |
|     20 |     15 |    1 |
|     20 |     16 |    3 |
|     20 |     17 |    2 |
|     20 |     19 |    3 |
|     20 |     20 |    4 |
|     20 |     23 |    1 |
|     20 |     24 |    1 |
|     20 |     31 |    1 |
|     20 |     39 |    2 |
|     20 |     40 |    4 |
|     21 |      1 |    2 |
|     21 |      4 |    1 |
|     21 |      5 |    1 |
|     21 |      6 |    1 |
|     21 |      8 |    3 |
|     21 |      9 |    3 |
|     21 |     10 |    1 |
|     21 |     11 |    3 |
|     21 |     13 |    1 |
|     21 |     17 |    1 |
|     21 |     18 |    4 |
|     21 |     19 |    8 |
|     21 |     20 |   13 |
|     21 |     21 |    2 |
|     21 |     24 |   10 |
|     21 |     26 |    1 |
|     21 |     30 |    3 |
|     21 |     31 |    3 |
|     21 |     32 |    3 |
|     21 |     33 |    2 |
|     21 |     34 |    1 |
|     21 |     35 |    1 |
|     21 |     37 |    4 |
|     21 |     39 |    1 |
|     21 |     40 |    1 |
|     21 |     44 |    1 |
|     21 |     47 |    1 |
|     21 |     48 |    1 |
|     22 |      5 |    1 |
|     22 |     11 |    1 |
|     22 |     16 |    1 |
|     22 |     17 |    2 |
|     22 |     18 |    2 |
|     22 |     19 |    1 |
|     22 |     20 |    5 |
|     22 |     21 |    1 |
|     22 |     22 |    1 |
|     22 |     36 |    1 |
|     22 |     39 |    2 |
|     22 |     44 |    3 |
|     22 |     47 |    1 |
|     22 |     48 |    1 |
|     22 |     49 |    1 |
|     23 |      2 |    1 |
|     23 |      5 |    3 |
|     23 |      6 |    2 |
|     23 |      8 |    1 |
|     23 |      9 |    2 |
|     23 |     10 |    3 |
|     23 |     11 |    1 |
|     23 |     13 |    1 |
|     23 |     16 |    2 |
|     23 |     17 |    8 |
|     23 |     18 |    1 |
|     23 |     19 |    1 |
|     23 |     20 |    1 |
|     23 |     21 |    2 |
|     23 |     24 |    1 |
|     23 |     25 |    2 |
|     23 |     26 |    3 |
|     23 |     28 |    2 |
|     23 |     29 |    2 |
|     23 |     31 |    1 |
|     23 |     32 |    1 |
|     25 |      6 |    2 |
|     25 |      9 |    3 |
|     25 |     10 |    2 |
|     25 |     11 |   12 |
|     25 |     12 |    1 |
|     25 |     13 |    1 |
|     25 |     17 |    3 |
|     25 |     18 |    3 |
|     25 |     19 |    4 |
|     25 |     20 |   10 |
|     25 |     21 |    1 |
|     25 |     22 |    3 |
|     25 |     23 |    1 |
|     25 |     24 |    1 |
|     25 |     26 |    1 |
|     25 |     31 |    1 |
|     25 |     34 |    1 |
|     25 |     36 |    3 |
|     25 |     37 |    3 |
|     25 |     39 |    5 |
|     25 |     40 |    1 |
|     25 |     42 |    2 |
|     25 |     43 |    1 |
|     25 |     44 |    3 |
|     25 |     46 |    1 |
|     25 |     47 |    2 |
|     25 |     48 |    1 |
|     26 |      3 |    1 |
|     26 |     12 |    3 |
|     26 |     13 |    1 |
|     26 |     14 |    5 |
|     26 |     18 |    1 |
|     26 |     19 |    4 |
|     26 |     20 |    1 |
|     26 |     22 |    1 |
|     26 |     39 |    1 |
|     26 |     40 |    4 |
|     26 |     42 |    1 |
|     27 |      4 |    3 |
|     27 |      5 |    1 |
|     27 |      6 |    1 |
|     27 |      9 |    2 |
|     27 |     10 |    1 |
|     27 |     11 |    8 |
|     27 |     13 |    1 |
|     27 |     16 |    1 |
|     27 |     17 |    4 |
|     27 |     19 |    1 |
|     27 |     20 |    1 |
|     27 |     21 |    3 |
|     27 |     22 |    1 |
|     27 |     23 |    5 |
|     27 |     24 |    1 |
|     27 |     26 |    1 |
|     27 |     28 |    3 |
|     27 |     29 |    1 |
|     27 |     30 |    2 |
|     27 |     31 |    4 |
|     27 |     34 |    1 |
|     27 |     36 |    1 |
|     27 |     37 |   20 |
|     27 |     39 |    2 |
|     27 |     40 |    2 |
|     27 |     49 |   10 |
|     28 |      1 |    1 |
|     28 |      2 |   26 |
|     28 |      3 |    1 |
|     28 |      4 |    1 |
|     28 |      5 |    1 |
|     28 |      6 |    5 |
|     28 |      7 |    1 |
|     28 |      9 |    3 |
|     28 |     10 |    3 |
|     28 |     11 |    9 |
|     28 |     12 |    2 |
|     28 |     16 |    2 |
|     28 |     17 |    1 |
|     28 |     19 |    2 |
|     28 |     20 |    1 |
|     28 |     22 |    1 |
|     28 |     23 |    1 |
|     28 |     24 |    2 |
|     28 |     30 |    8 |
|     28 |     31 |    2 |
|     28 |     32 |    1 |
|     28 |     33 |    1 |
|     28 |     35 |    1 |
|     28 |     37 |    3 |
|     28 |     40 |    1 |
|     28 |     42 |    1 |
|     28 |     44 |    1 |
|     29 |      1 |    5 |
|     29 |      2 |    5 |
|     29 |      4 |    2 |
|     29 |      5 |    2 |
|     29 |      7 |    1 |
|     29 |      8 |    5 |
|     29 |     10 |    2 |
|     29 |     11 |    3 |
|     29 |     12 |    4 |
|     29 |     13 |    1 |
|     29 |     14 |    1 |
|     29 |     16 |    1 |
|     29 |     17 |    1 |
|     29 |     18 |    2 |
|     29 |     19 |    2 |
|     29 |     20 |    4 |
|     29 |     21 |    1 |
|     29 |     24 |    2 |
|     29 |     27 |    3 |
|     29 |     32 |    4 |
|     29 |     39 |    3 |
|     29 |     40 |   17 |
|     29 |     42 |    2 |
|     29 |     43 |    2 |
|     29 |     49 |    2 |
|     30 |      1 |    2 |
|     30 |      2 |    2 |
|     30 |      3 |    1 |
|     30 |      4 |    2 |
|     30 |      5 |    1 |
|     30 |      6 |   11 |
|     30 |      8 |    2 |
|     30 |      9 |    3 |
|     30 |     10 |    2 |
|     30 |     11 |    3 |
|     30 |     12 |    1 |
|     30 |     13 |    4 |
|     30 |     16 |    1 |
|     30 |     17 |    5 |
|     30 |     18 |    2 |
|     30 |     19 |    7 |
|     30 |     20 |    5 |
|     30 |     21 |    4 |
|     30 |     22 |    4 |
|     30 |     23 |    1 |
|     30 |     24 |    2 |
|     30 |     25 |    4 |
|     30 |     26 |    2 |
|     30 |     27 |    2 |
|     30 |     28 |    1 |
|     30 |     30 |    2 |
|     30 |     31 |   18 |
|     30 |     32 |    1 |
|     30 |     34 |    1 |
|     30 |     35 |    1 |
|     30 |     37 |    1 |
|     30 |     39 |    5 |
|     30 |     40 |    2 |
|     30 |     42 |    2 |
|     30 |     44 |    3 |
|     30 |     46 |    1 |
|     30 |     47 |    2 |
|     30 |     48 |    2 |
|     30 |     49 |    2 |
|     31 |     40 |   10 |
+--------+--------+------+
534 rows in set (0.003 sec)

-- 問5
-- テーブルEmployeesをHireFiscalYearでグループ化し、Height、Weightの平均を求めなさい
-- 列別名はそれぞれ「入社年度」、「平均身長」、「平均体重」とする

SELECT
  HireFiscalYear AS "入社年度",
  AVG(Height) AS "平均身長",
  AVG(Weight) AS "平均体重"
FROM
  Employees
GROUP BY
  HireFiscalYear
;

+----------+----------+----------+
| 入社年度 | 平均身長 | 平均体重 |
+----------+----------+----------+
|     1987 | 164.1667 |  62.5000 |
|     1988 | 164.0000 |  60.8333 |
|     1989 | 175.0000 |  69.0000 |
|     1991 | 162.0000 |  58.5000 |
|     1992 | 177.5000 |  83.0000 |
|     1993 | 176.0000 |  78.0000 |
|     1994 | 169.0000 |  56.0000 |
|     1996 | 159.5000 |  47.5000 |
|     1997 | 158.0000 |  44.0000 |
|     1999 | 155.0000 |  40.5000 |
|     2001 | 170.0000 |  63.0000 |
|     2003 | 147.0000 |  40.0000 |
|     2004 | 160.0000 |  49.0000 |
|     2006 | 163.0000 |  52.0000 |
|     2007 | 169.0000 |  55.5000 |
+----------+----------+----------+
15 rows in set (0.001 sec)


-- 問6
-- テーブルSalaryをPayDateでグループ化し、レコード数、Amountの合計を求めなさい
-- 列別名はそれぞれ「支給日」、「支給件数」、「合計支給額」とする

SELECT
  PayDate AS "支給日",
  COUNT(*) AS "支給件数",
  SUM(Amount) AS "合計支給額"
FROM
  Salary
GROUP BY
  PayDate
;

+------------+----------+------------+
| 支給日     | 支給件数 | 合計支給額 |
+------------+----------+------------+
| 2006-09-25 |       29 |    8120000 |
| 2006-10-24 |       29 |    8120000 |
| 2006-11-25 |       29 |    8120000 |
| 2006-12-25 |       29 |    8120000 |
| 2007-01-23 |       29 |    8120000 |
| 2007-02-25 |       29 |    8120000 |
| 2007-03-25 |       29 |    8120000 |
| 2007-04-23 |       30 |    8690000 |
| 2007-05-25 |       30 |    8690000 |
| 2007-06-25 |       30 |    8690000 |
| 2007-07-23 |       30 |    8690000 |
| 2007-08-25 |       30 |    8690000 |
| 2007-09-05 |        1 |     100000 |
+------------+----------+------------+
13 rows in set (0.001 sec)

-- 問7
-- テーブルCustomersをPrefecturalIDでグループ化し、レコード数が5件以上持つ、PrefecturalIDと
-- そのレコード数を求めなさい
-- 列別名はそれぞれ「都道府県ID」、「顧客数」とする

SELECT
  PrefecturalID AS "都道府県ID",
  COUNT(*) AS "顧客数"
FROM
  Customers
GROUP BY
  PrefecturalID
HAVING
  COUNT(*) >= 5
;

+------------+--------+
| 都道府県ID | 顧客数 |
+------------+--------+
|         13 |     19 |
+------------+--------+
1 row in set (0.001 sec)

-- 問8
-- テーブルSalaryからEmployeeIDでグループ化し、Amountの平均が400,000以上のEmployeeIDと
-- Amountの平均を求めなさい
-- 列別名はそれぞれ「社員ID」、「平均支給額」とする

SELECT
  EmployeeID AS "社員ID",
  AVG(Amount) AS "平均支給額"
FROM
  Salary
GROUP BY
  EmployeeID
HAVING
  AVG(Amount) >= 400000
;
+--------+-------------+
| 社員ID | 平均支給額  |
+--------+-------------+
|      1 | 588333.3333 |
|      2 | 458333.3333 |
|      3 | 418333.3333 |
+--------+-------------+
3 rows in set (0.001 sec)


-- 問9
-- テーブルCustomersかPrefecturalIDでグループ化し、レコードが5以下または10以上の
-- PrefecturalIDとレコード数を求めなさい
-- 列別名はそれぞれ「県ID」、「顧客数」とする

SELECT
  PrefecturalID AS "県ID",
  COUNT(*) AS "顧客数"
FROM
  Customers
GROUP BY
  PrefecturalID
HAVING
  COUNT(*) <= 5 OR COUNT(*) >= 10
;

+------+--------+
| 県ID | 顧客数 |
+------+--------+
|    1 |      1 |
|    8 |      3 |
|   10 |      1 |
|   11 |      2 |
|   13 |     19 |
|   14 |      2 |
|   27 |      1 |
|   30 |      1 |
|   38 |      1 |
+------+--------+
9 rows in set (0.001 sec)

-- 問10
-- テーブルSalesをProductIDでグループ化し、レコードが10より少ないまたは50より多いProductIDと
-- そのレコード数を求めなさい
-- 列別名はそれぞれ「商品ID」、「売上レコード数」とする

SELECT
  ProductID AS "商品ID",
  COUNT(*) AS "売上レコード数"
FROM
  Sales
GROUP BY
  ProductID
HAVING
  COUNT(*) < 10 OR COUNT(*) > 50
;

+--------+----------------+
| 商品ID | 売上レコード数 |
+--------+----------------+
|      3 |              6 |
|      7 |              7 |
|      8 |              9 |
|     15 |              6 |
|     20 |             55 |
|     27 |              6 |
|     28 |              6 |
|     29 |              6 |
|     31 |             53 |
|     33 |              8 |
|     35 |              7 |
|     41 |              5 |
|     46 |              8 |
|     47 |              6 |
|     48 |              7 |
|     49 |              7 |
|     50 |              3 |
+--------+----------------+
17 rows in set (0.001 sec)

-- 問11
-- テーブルEmployeesをBloodTypeでグループ化したとき、Heightの平均が165以上の
-- BloodTypeとHeightの平均を求めなさい
-- 列別名はそれぞれ「血液型」、「平均身長」とする

SELECT
  BloodType AS "血液型",
  AVG(Height) AS "平均身長"
FROM
  Employees
GROUP BY
  BloodType
HAVING
  AVG(Height) >= 165
;

+--------+----------+
| 血液型 | 平均身長 |
+--------+----------+
| B      | 166.3750 |
| O      | 167.7500 |
+--------+----------+
2 rows in set (0.001 sec)

-- 問12
-- テーブルSalesをEmployeeIDでグループ化したとき、レコード数が10以上20以下の
-- EmployeeIDとそのレコード数を求めなさい
-- 列別名はそれぞれ「社員ID」、「売上件数」とする

SELECT
  EmployeeID AS "社員ID",
  COUNT(*) AS "売上件数"
FROM
  Sales
GROUP BY
  EmployeeID
HAVING
  COUNT(*) BETWEEN 10 AND 20
;

+--------+----------+
| 社員ID | 売上件数 |
+--------+----------+
|     26 |       12 |
+--------+----------+
1 row in set (0.002 sec)

-- 問13
-- テーブルCustomersをPrefecturalIDでグループ化したとき、CustomerClassIDが2でレコード数が
-- 2以上のPrefecturalIDとそのレコード数を求めなさい
-- 列別名はそれぞれ「都道府県ID」、「顧客数」とする

SELECT
  PrefecturalID AS "都道府県ID",
  COUNT(*) AS "顧客数"
FROM
  Customers
WHERE
  CustomerClassID = 2
GROUP BY
  PrefecturalID
HAVING
  COUNT(*) >= 2
;

+------------+--------+
| 都道府県ID | 顧客数 |
+------------+--------+
|         11 |      2 |
|         13 |     13 |
|         14 |      2 |
+------------+--------+
3 rows in set (0.001 sec)

-- 問14
-- テーブルCustomersをPrefecturalIDでグループ化したとき、PrefecturalIDが10未満で
-- 1件の顧客を持つPrefecturalIDとレコード数を求めなさい
-- 列別名はそれぞれ「県ID」、「顧客数」とする

SELECT
  PrefecturalID AS "県ID",
  COUNT(*) AS "顧客数"
FROM
  Customers
WHERE
  PrefecturalID < 10
GROUP BY
  PrefecturalID
HAVING
  COUNT(*) = 1
;

+------+--------+
| 県ID | 顧客数 |
+------+--------+
|    1 |      1 |
+------+--------+
1 row in set (0.001 sec)

-- 問15
-- テーブルSalesをProductIDでグループ化したとき、SaleDateが'2007-06-1'より前で
-- Quantityの合計が50以上、100以下のProductIDとQuantityの合計を求めなさい
-- 列別名はそれぞれ「商品ID」、「数量合計」とする

SELECT
  ProductID AS "商品ID",
  SUM(Quantity) AS "数量合計"
FROM
  Sales
WHERE
  SaleDate < '2007-06-1'
GROUP BY
  ProductID
HAVING
  SUM(Quantity) BETWEEN 50 AND 100
;

+--------+----------+
| 商品ID | 数量合計 |
+--------+----------+
|      2 |       53 |
|     41 |       90 |
|     50 |       82 |
+--------+----------+
3 rows in set (0.001 sec)