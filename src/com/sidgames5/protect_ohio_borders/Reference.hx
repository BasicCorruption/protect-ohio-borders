package com.sidgames5.protect_ohio_borders;

class Reference {
  public static var WEAPON:WeaponLibrary;
  public static var SCORE:Int;
  public static var LEVEL:Int;
  
  public static final DEFAULTS = {
    weapon = null,
    score = 0,
    level = 0,
  };
  
  public static function loadFromSave() {}
  public static function loadDefaults(Confirmed:Bool = false) {
    if (Confirmed) {
      trace("Resetting save to defaults");
      WEAPON = DEFAULTS.weapon;
      SCORE = DEFAULTS.score;
      LEVEL = DEFAULTS.level;
    } else {
      trace("Code failed to confirm save reset");
    }
  }
public static function save() {}
public static function exit(Code:Int = 0, Save:Bool = true) {
  if (Save) save();
  System.exit(Code);
}
}
