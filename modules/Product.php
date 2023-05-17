<?php
namespace Modules;
/**
 * Class used to manage the products
 */
class Product implements DatabaseMethodsInterface{
  /**
   * Id of the product in the database 
   *
   * @var integer
   */
  private int $id;

  /**
   * Name of the product in the database 
   *
   * @var string
   */
  private string $name;

  /**
   * Description of the product in the database 
   *
   * @var string
   */
  private string $description;

  /**
   * Id of the product category in the database 
   *
   * @var integer
   */
  private int $categoryId;

  /**
   * Id of the product product-type in the database 
   *
   * @var integer
   */
  private int $productTypeId;

  /**
   * Image url of the product in the database 
   *
   * @var string
   */
  private string $image;

  /**
   * Price of the product in the database 
   *
   * @var float
   */
  private float $price;

  /**
   * Vote of the product in the database 
   *
   * @var float
   */
  private float $vote;

  /**
   * Brand of the product in the database 
   *
   * @var string
   */
  private string $brand;

  /**
   * Constructor with optional parameters
   *
   * @param integer $id Id of the product in the database 
   * @param string $name Name of the product in the database 
   * @param string $description Description of the product in the database
   * @param integer $categoryId Id of the product category in the database 
   * @param integer $productTypeId Id of the product product-type in the database 
   * @param string $image Image url of the product in the database 
   * @param integer $price Price of the product in the database 
   * @param integer $vote Vote of the product in the database 
   * @param string $brand Brand of the product in the database 
   */
  public function __construct(int $id=-1, string $name="", string $description="", int $categoryId=-1, int $productTypeId=-1, $image="", float $price=0, float $vote=0, string $brand=""){
    $this->id = $id;
    $this->name = $name;
    $this->description = $description;
    $this->categoryId = $categoryId;
    $this->productTypeId = $productTypeId;
    $this->image = $image;
    $this->price = $price;
    $this->vote = $vote;
    $this->brand = $brand;
  }

  /**
   * Method used to fetch all the products in the database if correctly connected or the default products
   *
   * @param mysqli $conn Connection with the mysql database
   * @return array Array of Product objects
   */
  public static function fetchAllFromDatabase($conn){
    $products = [];
    if($conn){
      $sql = "SELECT * FROM products";
      $result = $conn->query($sql);
      if($result && $result->num_rows > 0){
        while($row = $result->fetch_object()){
          $products[] = new Product($row->id,$row->name,$row->description,$row->category_id,$row->product_type_id,$row->image,$row->price,$row->vote,$row->brand);
        }
      }elseif($result){
        echo "[Product.fetchAllFromDatabase] Nessun prodotto trovato";
      }else{
        echo "[Product.fetchAllFromDatabase] Query error!";
      }
    }else
      $products = Product::fetchAllDefault();
    return $products;
  }

  /**
   * Method used to return an array of default products
   *
   * @return array Array of Product objects
   */
  public static function fetchAllDefault(){
    $products = [];
    $products[] = new Product(1,"Collare antiparassitario cani grandi","Questo collare innovativo offre una protezione completa contro pulci e zecche fino a 8 mesi con una sola applicazione. Durante questo lasso di tempo il collare rilascia in modo controllato e costante i principi attivi imidacloprid e flumetrina, fondamentali per proteggere e prevenire infestazioni parassitarie pericolose per la salute del tuo cane.",1,1,"https://arcaplanet.vtexassets.com/arquivos/ids/269684-1800-1800/seresto-antiparassitario-cane-grande.jpg?v=1770717675&quality=1&width=1800&height=1800",55.9,4.7,"Seresto");
    return $products;
  }
}