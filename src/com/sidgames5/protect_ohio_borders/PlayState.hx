package com.sidgames5.protect_ohio_borders;

import flixel.FlxState;

class PlayState extends FlxState
{
	// Background
	private static var fence:FlxSprite;
	
	// Player
	private static var player:Player;
	private static var weapon:Weapon;
	
	// Other Sprites
	private static var resident1:Resident;
	private static var resident2:Resident;
	
	// Game Parameters
	private static var score:Int = 0;
	private static var level:Int = 1;
	private static var upperBound:Int = FlxG.height*(1/4);
	private static var lowerBound:Int = FlxG.height*(3/4);
	
	override public function create()
	{
		super.create();
		
		// Initialize Sprites
		
		// TODO: Make fence

		player = new Player(0, 0, Assets.char_player__png);
		player.screenCenter(XY);
		player.x+=FlxG.width/4;
		
		weapon = new Weapon();
			
		// Add sprites
		
		add(player);
		add(weapon);
	}

	override public function update(dt:Float)
	{
		super.update(dt);
		
		// Update Player stuff
		if (player.isOnScreen || weapon.isOnScreen) {
		if (FlxG.keys.pressed.LEFT || FlxG.keys.pressed.A) {
			player.x-=player.speed;
		}
		if (FlxG.keys.pressed.RIGHT || FlxG.keys.pressed.D) {
			player.x+=player.speed;
		}
		if (FlxG.keys.pressed.UP || FlxG.keys.pressed.W) {
			player.y-=player.speed;
		}
		if (FlxG.keys.pressed.DOWN || FlxG.keys.pressed.S) {
			player.y+=player.speed;
		}
		}
		weapon.attach(player);
		
		// Weapon Interactions
		switch (weapon.interactionType) {
			case MELEE:
				// Only deduct health if weapon is in contact with the target
				if (FlxG.mouse.overlaps(resident1) && FlxG.mouse.justPressed) {
					resident1.health-=weapon.damage;
					score+=level;
					// TODO: Rotate weapon when attacking
				}
				if (FlxG.mouse.overlaps(resident2) && FlxG.mouse.justPressed) {
					resident2.health-=weapon.damage;
					score+=level;
					// TODO: Rotate weapon when attacking
				}
			case RANGED:
				// Shoot out a projectile and only deduct health if the projectile hits the target
		}
	}
	private static function resetResident(sprite:Resident) {
		sprite.x = 0 - (sprite.width/2);
		var a = Math.random() * (upperBound-lowerBound);
		var b = Math.abs(a - sprite.height);
		sprite.y = b + lowerBound;
	}
}
