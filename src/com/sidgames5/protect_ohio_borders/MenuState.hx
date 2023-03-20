package com.sidgames5.protect_ohio_borders;

import flixel.FlxState;

class MenuState extends Scene
{
	private static var Objects:Array<FlxBasic> = [];
	
	private static var title:FlxText;
	
	override public function create()
	{
		super.create();
		
		title = new FlxText(0, 0, 0, "Protect Ohio Borders");
		title.setFormat(null, 32, FlxColor.WHITE, CENTER);
		Objects.push(title);
		
		drawObjects();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
