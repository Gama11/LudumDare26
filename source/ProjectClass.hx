package;

import flash.Lib;
import org.flixel.FlxG;
import org.flixel.FlxGame;
	
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
		FlxG.addSound("Build");
		FlxG.addSound("Deny");
		FlxG.addSound("EnemyHit");
		FlxG.addSound("EnemyKill");
		FlxG.addSound("GameOver");
		FlxG.addSound("Hurt");
		FlxG.addSound("Select");
		FlxG.addSound("Shoot");
		FlxG.addSound("WaveDefeated");
		#end
	}
}
