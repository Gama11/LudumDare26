package;

import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;
import flixel.util.FlxPoint;
import flixel.FlxSprite;
import flixel.FlxG;

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
		if (R.PS != null) {
			health = Math.floor(R.PS.wave / 3) + 1;
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
		FlxG.sound.play("EnemyKill");
		#end
		
		var emitter:EnemyGibs = R.PS.emitterGroup.recycle(EnemyGibs);
		emitter.init(x, y);
		emitter.start(true, 2);
		
		R.PS.enemiesToKill--;
		if (R.PS.enemiesToKill <= 0) R.PS.killedWave();
		
		if (moneyGain) {
			var money:Int = 1;
			if (R.PS.wave < 5) money = 2;
			
			R.PS.money += money;
			R.PS.moneyText.size = 16;
		}
		
		super.kill();
	}
}