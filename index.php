<?php
  include_once __DIR__."/partials/server/settings.php";
  include_once __DIR__."/modules/DatabaseMethodsInterface.php";
  include_once __DIR__."/modules//BaseCategoryType.php";
  include_once __DIR__."/modules/Category.php";
  include_once __DIR__."/modules/ProductType.php";
  include_once __DIR__."/modules/Product.php";
?>
<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Include bootstrap css -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <!-- Include custom css file -->
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
  <!-- Include bootstrap js -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>