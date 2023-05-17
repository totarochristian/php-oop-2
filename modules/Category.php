<?php
namespace Modules;
class Category extends BaseCategoryType{
  public function __construct(int $id=-1,string $name=""){
    parent::__construct($id,$name);
  }
}