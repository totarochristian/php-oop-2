<?php
  namespace Modules;
  /**
   * Trait to add weight (grams) to an object
   */
  trait weightable{
    /**
     * Weight (grams) of the object
     *
     * @var float
     */
    private float $weight;

    /**
     * Getter used to return the weight (grams) of the object
     *
     * @return float Weight of the object
     */
    public function getWeight(){
      return $this->weight;
    }

    /**
     * Setter used to set the weight (grams) of the object
     *
     * @param float $weight New weight (grams) to assign at the object
     * @return void
     */
    public function setWeigth(float $weight){
      $this->weight = $weight;
    }
  }