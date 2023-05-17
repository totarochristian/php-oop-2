<?php
namespace Modules;
interface DatabaseMethodsInterface {
  public static function fetchAllFromDatabase($conn);
  public static function fetchAllDefault();
}