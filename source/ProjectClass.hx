package;

import flash.Lib;
import flixel.FlxG;
import flixel.FlxGame;
	
class ProjectClass extends FlxGame
{	
	public function new()
	{
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;
		var ratioX:Float = stageWidth / 320;
		var ratioY:Float = stageHeight / 240;
		var ratio:Float = Math.min(ratioX, ratioY);
		
		super(320, 240, MenuState, ratio, 60, 60);
		
		this.x = 0.5 * (stageWidth - 320 * ratio);
		this.y = 0.5 * (stageHeight - 240 * ratio);
		
		#if android
		FlxG.sound.add("Build");
		FlxG.sound.add("Deny");
		FlxG.sound.add("EnemyHit");
		FlxG.sound.add("EnemyKill");
		FlxG.sound.add("GameOver");
		FlxG.sound.add("Hurt");
		FlxG.sound.add("Select");
		FlxG.sound.add("Shoot");
		FlxG.sound.add("WaveDefeated");
		#end
	}
}
