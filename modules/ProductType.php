<?php
namespace Modules;
class ProductType extends BaseCategoryType{
  public function __construct(int $id=-1,string $name=""){
    parent::__construct($id,$name);
  }
}