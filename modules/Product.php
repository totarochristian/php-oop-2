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

  public static function fetchAllFromDatabase(){
    
  }

  public static function fetchAllDefault(){
    
  }
}