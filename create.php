<?php
// POSTデータ確認
if (
    !isset($_POST['bar_name']) || $_POST['bar_name'] === '' ||
    !isset($_POST['area']) || $_POST['area'] === '' ||
    !isset($_POST['category']) || $_POST['category'] === '' ||
    !isset($_POST['review_point']) || $_POST['review_point'] === '' ||
    !isset($_POST['link']) || $_POST['link'] === ''
) {
    exit('ParamError');
}

$bar_name = $_POST['bar_name'];
$area = $_POST['area'];
$category = $_POST['category'];
$review_point = $_POST['review_point'];
$link = $_POST['link'];

// 各種項目設定
$dbn ='mysql:dbname=bar_review01;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成&実行
$sql = 'INSERT INTO review_table (id, bar_name, area, category, review_point, link, created_at, updated_at) VALUES (NULL, :bar_name, :area, :category, :review_point, :link, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':bar_name', $bar_name, PDO::PARAM_STR);
$stmt->bindValue(':area', $area, PDO::PARAM_STR);
$stmt->bindValue(':category', $category, PDO::PARAM_STR);
$stmt->bindValue(':review_point', $review_point, PDO::PARAM_STR);
$stmt->bindValue(':link', $link, PDO::PARAM_STR);

// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

// SQL実行の処理

header('Location:index.php');
exit();

