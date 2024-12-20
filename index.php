<!DOCTYPE html>
<html lang="en">
<head>  
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/style.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>イチ推し飲み屋リスト-NEO</title>
</head>
<body>
  <form action="create.php" method="POST">
    <fieldset>
      <legend>イチ推し飲み屋リスト-NEO <span>入力画面</span></legend>
      <div>
        <p>店名</p>
        <input class="text" type="text" name="bar_name">
      </div>
      <div>
        <p>エリア</p>
        <input class="text" type="text" name="area">
      </div>
      <div>
        <p>カテゴリ</p>
        <ul>
          <li><input type="radio" name="category" value="バー">バー</li>
          <li><input type="radio" name="category" value="居酒屋">居酒屋</li>
          <li><input type="radio" name="category" value="角打ち">角打ち</li>
          <li><input type="radio" name="category" value="その他">その他</li>
        </ul>        
      </div>
      <div>
        <p>推しポイント</p>
        <textarea class="text" name="review_point" rows="5" cols="33"></textarea>
      </div>
      <div>
        <p>SNSリンク</p>
        <input class="text" type="text" name="link">
      </div>
      <div class="btn">
        <button>送信</button>
      </div>
      <div class="btn">
        <a class="list-btn" href="read.php">一覧画面</a>
      </div>
    </fieldset>
  </form>
    
</body>
</html>