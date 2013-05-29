package ;

import nme.display.BlendMode;
import org.flixel.FlxEmitter;
import org.flixel.FlxG;
import org.flixel.FlxParticle;

/**
 * ...
 * @author Zaphod
 */
class EnemyGibs extends FlxEmitter
{

	public function new() 
	{
		super();
		
		makeParticles("assets/img/enemy.png", 10);
		var speed:Int = 10;
		setXSpeed( -speed, speed);
		setYSpeed( -speed, speed);
		
		for (i in 0...10) {
			var p:FlxParticle = members[i];
			p.blend = BlendMode.INVERT;
			p.makeGraphic(2, 2, FlxG.BLACK);
			add(p);
		}
		
		R.GS.emitterGroup.add(this);
	}
	
	public function init(x:Float, y:Float):Void
	{
		this.x = x;
		this.y = y;
	}
}