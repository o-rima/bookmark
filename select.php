<?php
// DB接続します
try {
  $pdo = new PDO('mysql:dbname=gs_db_class;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
  exit('DBConnectError:' . $e->getMessage());
}

// データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bookmark_table");

// 保存ボタンを押すのに相当する
// 成功 = true 失敗 = falseが入る
$status = $stmt->execute();

// データ表示
if ($status == false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:" . $error[2]);
}
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>登録一覧</title>
  <link rel="stylesheet" href="css/range.css">
  <link href="css/style.css" rel="stylesheet">
</head>

<body id="main">
  <header>
    <nav>
      <a href="index.php">新規登録</a>
    </nav>
  </header>

  <main>
    <div class="container">
      <h1>登録一覧</h1>
      <div class="survey-list">
        <!-- PHP でデータを取得し、以下の形式で表示する -->
        <?php while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) : ?>
          <p>
            <?= htmlspecialchars($result['date'], ENT_QUOTES, 'UTF-8') ?> :
            <?= htmlspecialchars($result['book_name'], ENT_QUOTES, 'UTF-8') ?> -
            <a href="<?= htmlspecialchars($result['book_url'], ENT_QUOTES, 'UTF-8') ?>"><?= htmlspecialchars($result['book_url'], ENT_QUOTES, 'UTF-8') ?></a> -
            <?= htmlspecialchars($result['book_comment'], ENT_QUOTES, 'UTF-8') ?>
          </p>
        <?php endwhile; ?>
      </div>
    </div>
  </main>

</body>

</html>
