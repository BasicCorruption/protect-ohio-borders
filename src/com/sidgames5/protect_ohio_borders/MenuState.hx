package com.sidgames5.protect_ohio_borders;

import flixel.FlxState;

class MenuState extends Scene
{
	private static var title:FlxText;
	private static final titleSize:Int = 48;
	private static var playButton:FlxSprite;
	
	override public function create()
	{
		super.create();
		
		title = new FlxText(0, 0, 0, "Protect Ohio Borders");
		title.setFormat(null, titleSize, FlxColor.WHITE, CENTER);
		title.screenCenter(X);
		
		// TODO: Make play button sprite
		playButton = new FlxSprite(Assets.play_button__png);
		playButton.screenCenter(XY);
		
		add(title);
		add(playButton);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		
		if (title.size <= titleSize) {
			title.size++;
		} else if (title.size >= (1.5*titleSize)) {
			title.size--;
		}
	}
}
