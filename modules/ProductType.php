<?php
namespace Modules;
/**
 * Class used to manage the products types
 */
class ProductType extends BaseCategoryType{
  /**
   * Constructor with optional parameters
   *
   * @param integer $id Id of the product type in the database 
   * @param string $name Name of the product type in  the database
   */
  public function __construct(int $id=-1,string $name=""){
    parent::__construct($id,$name);
  }

  /**
   * Method used to fetch all the product types in the database if correctly connected or the default product types
   *
   * @param mysqli $conn Connection with the mysql database
   * @return array Array of ProductType objects
   */
  public static function fetchAllFromDatabase($conn){
    $productTypes = [];
    if($conn){
      $sql = "SELECT * FROM product_types";
      $result = $conn->query($sql);
      if($result && $result->num_rows > 0){
        while($row = $result->fetch_object()){
          $productTypes[] = new ProductType($row->id,$row->name);
        }
      }elseif($result){
        echo "<script>console.log(".json_encode("[ProductType.fetchAllFromDatabase] Nessun tipo prodotto trovato").");</script>";
      }else{
        echo "<script>console.log(".json_encode("[ProductType.fetchAllFromDatabase] Query error!").");</script>";
      }
    }else
    $productTypes = Category::fetchAllDefault();
    return $productTypes;
  }

  /**
   * Method used to return an array of default product types
   *
   * @return array Array of ProductType objects
   */
  public static function fetchAllDefault(){
    $productTypes = [];
    $productTypes[] = new ProductType(1,"Accessori");
    $productTypes[] = new ProductType(2,"Alimentazione");
    $productTypes[] = new ProductType(2,"Medicali e curativi");
    return $productTypes;
  }
}