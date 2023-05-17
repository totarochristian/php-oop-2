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
}