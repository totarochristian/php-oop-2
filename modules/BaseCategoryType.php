<?php
namespace Modules;
/**
 * Base class for Category and ProductType module
 */
class BaseCategoryType {
  /**
   * Id of the object in the database
   *
   * @var integer
   */
  private int $id;

  /**
   * Name of the object in  the database
   *
   * @var string
   */
  private string $name;
  
  /**
   * Constructor with optional parameters
   *
   * @param integer $id Id of the object in the database 
   * @param string $name Name of the object in  the database
   */
  public function __construct(int $id=-1,string $name=""){
    $this->id = $id;
    $this->name = $name;
  }

  /**
   * Method used to get the Id of the object
   *
   * @return int Id of the object
   */
  public function GetId(){
    return $this->id;
  }

  /**
   * Method used to get the name of the object
   *
   * @return string Name of the object
   */
  public function GetName(){
    return $this->name;
  }
}