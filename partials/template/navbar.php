<nav class="navbar navbar-expand-lg bg-warning">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Arcaplanet</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link <?php echo !isset($_GET['category']) ? "active" : "" ?>" aria-current="page" href="<?php echo $_SERVER['PHP_SELF'] ?>">Home</a>
        </li>
        <?php use Modules\Category;
        foreach(Category::fetchAllFromDatabase($conn) as $cat) {?>
        <li class="nav-item">
          <a class="nav-link <?php echo isset($_GET['category']) && $_GET['category'] == $cat->GetId() ? "active" : "" ?>" href="<?php echo $_SERVER['PHP_SELF'].'?category='.$cat->GetId() ?>"><?php echo $cat->GetName() ?></a>
        </li>
        <?php } ?>
      </ul>
      <form class="d-flex" action="<?php echo $_SERVER['REQUEST_URI'] ?>" method="post">
        <input name="textToSearch" class="form-control me-2" type="search" placeholder="Nome o descrizione" aria-label="Search" value="<?php echo isset($_POST['textToSearch']) ? $_POST['textToSearch'] : "" ?>">
        <select name="productType" class="form-select" aria-label="Product type select">
          <option value="-1" <?php echo isset($_POST['productType']) && $_POST['productType'] == -1 ? "selected" : "" ?>>Seleziona tipo prodotto</option>
          <?php use Modules\ProductType;
          foreach(ProductType::fetchAllFromDatabase($conn) as $prod) {?>
          <option value="<?php echo $prod->GetId() ?>" <?php echo isset($_POST['productType']) && $_POST['productType'] == $prod->GetId() ? "selected" : "" ?>><?php echo $prod->GetName() ?></option>
          <?php } ?>
        </select>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>