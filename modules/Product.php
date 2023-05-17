<?php
namespace Modules;
class ProductType{
  private int $id;
  private string $name;
  private string $description;
  private int $categoryId;
  private int $productTypeId;
  private string $image;
  private float $price;
  private float $vote;
  private string $brand;
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
}