<div class="d-flex justify-content-center align-items-center gap-4 p-4 flex-wrap">
  <?php
    use Modules\Product;
    //Gets movies array from the database
    $arrayOfProducts = Product::fetchAllFromDatabase($conn);
    //Print the title before the print of cards movies (or an error)
    if(!$conn){
      echo "<h2>Siamo spiacenti, il database non è online quindi non sono stati trovati prodotti aggiornati da poter visualizzare.<br>Di seguito potrai visualizzare alcuni prodotti di default.</h2>";
    }elseif(count($arrayOfProducts)==0){
      echo "<h2>Siamo spiacenti, non sono stati trovati prodotti da poter visualizzare</h2>";
    }
    
    //Call the method to print the movie data for each movie founded in the database
    foreach($arrayOfProducts as $product){
      $product->printCard();
    }
  ?>
</div>