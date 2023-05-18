<?php
namespace Modules;
/**
 * Class used to manage the categories of animals products
 */
class Category extends BaseCategoryType implements DatabaseMethodsInterface {
  /**
   * Constructor with optional parameters
   *
   * @param integer $id Id of the category in the database 
   * @param string $name Name of the category in  the database
   */
  public function __construct(int $id=-1,string $name=""){
    parent::__construct($id,$name);
  }

  /**
   * Method used to fetch all the categories in the database if correctly connected or the default categories
   *
   * @param mysqli $conn Connection with the mysql database
   * @return array Array of Product objects
   */
  public static function fetchAllFromDatabase($conn){
    $categories = [];
    if($conn){
      $sql = "SELECT * FROM categories";
      $result = $conn->query($sql);
      if($result && $result->num_rows > 0){
        while($row = $result->fetch_object()){
          $categories[] = new Category($row->id,$row->name);
        }
      }elseif($result){
        echo "[Category.fetchAllFromDatabase] Nessuna categoria trovata";
      }else{
        echo "[Category.fetchAllFromDatabase] Query error!";
      }
    }else
      $categories = Category::fetchAllDefault();
    return $categories;
  }

  /**
   * Method used to return an array of default categories
   *
   * @return array Array of Category objects
   */
  public static function fetchAllDefault(){
    $categories = [];
    $categories[] = new Category(1,"Cani");
    $categories[] = new Category(2,"Gatti");
    return $categories;
  }
}