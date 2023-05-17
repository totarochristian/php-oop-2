<?php
namespace Modules;
class Category{
  private int $id;
  private string $name;
  public function __construct(int $id=-1,string $name=""){
    $this->id = $id;
    $this->name = $name;
  }
}