package;

import flixel.util.FlxColor;
import flixel.addons.ui.FlxButtonPlus;
import flixel.FlxG;

class R 
{
	static public var PS:PlayState;
	
	static public function modifyButton(B:FlxButtonPlus, Width:Int = 70):Void
	{
		B.textNormal.color = FlxColor.BLACK;
		B.textHighlight.color = 0xFF808080;
		B.buttonHighlight.makeGraphic(Width, 20, 0);
		B.buttonNormal.makeGraphic(Width, 20, 0);
		B.textHighlight.visible = false;
	}
}