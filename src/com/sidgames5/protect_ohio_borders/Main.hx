package com.sidgames5.protect_ohio_borders;

class Main extends Sprite {
	public function new() {
		super();
		Lib.curent.addChild(new FlxGame(0, 0, PlayState, 1, 60, 60, true, false));
	}
}
