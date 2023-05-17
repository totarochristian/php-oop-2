<?php
namespace Modules;
/**
 * Class used to manage the categories of animals products
 */
class Category extends BaseCategoryType{
  /**
   * Constructor with optional parameters
   *
   * @param integer $id Id of the category in the database 
   * @param string $name Name of the category in  the database
   */
  public function __construct(int $id=-1,string $name=""){
    parent::__construct($id,$name);
  }
}