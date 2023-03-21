package com.sidgames5.protect_ohio_borders;

import flixel.FlxState;

class PlayState extends FlxState
{
	private static var border:FlxSprite;
	private static var player:Player;
	private static var weapon:Weapon;
	
	private static var residents:Array<Resident> = [];
	
	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
