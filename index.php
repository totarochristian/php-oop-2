<?php
  include __DIR__."/partials/server/settings.php";
  include __DIR__."/modules/DatabaseMethodsInterface.php";
  include __DIR__."/modules//BaseCategoryType.php";
  include __DIR__."/modules/Category.php";
  include __DIR__."/modules/ProductType.php";
  include __DIR__."/modules/Product.php";
?>
<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/styles.css">
  <title>Arcaplanet</title>
</head>
<body>
  <header>
    <?php include __DIR__."/partials/template/navbar.php"; ?>
  </header>
  <main>
  <?php include __DIR__."/partials/template/productsCards.php"; ?>
  </main>
  <footer class="bg-dark text-white">
    <?php include __DIR__."/partials/template/footer.php"; ?>
  </footer>
</body>
</html>