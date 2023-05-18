<?php
  trait weightable{
    /**
     * Weight of the object
     *
     * @var float
     */
    private float $weight;

    /**
     * Getter used to return the weight of the object
     *
     * @return float Weight of the object
     */
    public function getWeight(){
      return $this->weight;
    }

    /**
     * Setter used to set the weight of the object
     *
     * @param float $weight New weight to assign at the object
     * @return void
     */
    public function setWeigth(float $weight){
      $this->weight = $weight;
    }
  }