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
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>