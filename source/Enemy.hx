package;

import org.flixel.FlxEmitter;
import org.flixel.FlxParticle;
import org.flixel.FlxPoint;
import org.flixel.FlxSprite;
import org.flixel.FlxG;

class Enemy extends FlxSprite 
{
	public var moneyGain:Bool = true;
	public var maxHealth:Float;
	
	public function new() 
	{
		super(0, 0, "assets/img/enemy.png");
	}
	
	public function init(X:Int, Y:Int):Void
	{
		reset(X, Y);
		if (R.GS != null) {
			health = Math.floor(R.GS.wave / 3) + 1;
		}
		maxHealth = health;
	}
	
	override public function update():Void
	{
		alpha = health / maxHealth; 
		
		super.update();
	}
	
	override public function hurt(Damage:Float):Void
	{
		super.hurt(Damage);
	}
	
	override public function kill():Void
	{
		#if !js
		FlxG.play("EnemyKill");
		#end
		
		var emitter:EnemyGibs = R.GS.emitterGroup.recycle(EnemyGibs);
		emitter.init(x, y);
		emitter.start(true, 2);
		
		R.GS.enemiesToKill--;
		if (R.GS.enemiesToKill <= 0) R.GS.killedWave();
		
		if (moneyGain) {
			var money:Int = 1;
			if (R.GS.wave < 5) money = 2;
			
			R.GS.money += money;
			R.GS.moneyText.size = 16;
		}
		
		super.kill();
	}
}