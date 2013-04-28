class ApplicationMain
{

	#if waxe
	static public var frame : wx.Frame;
	static public var autoShowFrame : Bool = true;
	#if nme
	static public var nmeStage : wx.NMEStage;
	#end
	#end
	
	public static function main()
	{
		#if nme
		nme.Lib.setPackage("Zaphod", "Ludum Dare 26", "com.example.myapp", "0.0.1");
		
		#end
		
		#if waxe
		wx.App.boot(function()
		{
			
			frame = wx.Frame.create(null, null, "Ludum Dare 26", null, { width: 640, height: 480 });
			
			#if nme
			var stage = wx.NMEStage.create(frame, null, null, { width: 640, height: 480 });
			#end
			
			Main.main();
			
			if (autoShowFrame)
			{
				wx.App.setTopWindow(frame);
				frame.shown = true;
			}
		});
		#else
		
		nme.Lib.create(function()
			{ 
				//if ((640 == 0 && 480 == 0) || false)
				//{
					nme.Lib.current.stage.align = nme.display.StageAlign.TOP_LEFT;
					nme.Lib.current.stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
				//}
				
				var hasMain = false;
				
				for (methodName in Type.getClassFields(Main))
				{
					if (methodName == "main")
					{
						hasMain = true;
						break;
					}
				}
				
				if (hasMain)
				{
					Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
				}
				else
				{
					var instance = Type.createInstance(Main, []);
					#if nme
					if (Std.is (instance, nme.display.DisplayObject)) {
						nme.Lib.current.addChild(cast instance);
					}
					#end
				}
			},
			640, 480, 
			60, 
			16777215,
			(true ? nme.Lib.HARDWARE : 0) |
			(false ? nme.Lib.ALLOW_SHADERS : 0) |
			(false ? nme.Lib.REQUIRE_SHADERS : 0) |
			(false ? nme.Lib.DEPTH_BUFFER : 0) |
			(false ? nme.Lib.STENCIL_BUFFER : 0) |
			(true ? nme.Lib.RESIZABLE : 0) |
			(false ? nme.Lib.BORDERLESS : 0) |
			(false ? nme.Lib.VSYNC : 0) |
			(false ? nme.Lib.FULLSCREEN : 0) |
			(0 == 4 ? nme.Lib.HW_AA_HIRES : 0) |
			(0 == 2 ? nme.Lib.HW_AA : 0),
			"Ludum Dare 26"
			
		);
		#end
		
	}
	
	
	#if neko
	public static function __init__ () {
		
		untyped $loader.path = $array ("@executable_path/", $loader.path);
		
	}
	#end
	
	
	public static function getAsset(inName:String):Dynamic
	{
		#if nme
		
		if (inName == "Beep")
		{
			
			return nme.Assets.getSound ("Beep");
			
		}
		
		if (inName == "assets/data/autotiles.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/autotiles.png");
			
		}
		
		if (inName == "assets/data/autotiles_alt.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/autotiles_alt.png");
			
		}
		
		if (inName == "assets/data/base.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/base.png");
			
		}
		
		if (inName == "assets/data/beep.mp3")
		{
			
			return nme.Assets.getSound ("assets/data/beep.mp3");
			
		}
		
		if (inName == "assets/data/beep.wav")
		{
			
			return nme.Assets.getSound ("assets/data/beep.wav");
			
		}
		
		if (inName == "assets/data/button.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button.png");
			
		}
		
		if (inName == "assets/data/button_a.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_a.png");
			
		}
		
		if (inName == "assets/data/button_b.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_b.png");
			
		}
		
		if (inName == "assets/data/button_c.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_c.png");
			
		}
		
		if (inName == "assets/data/button_down.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_down.png");
			
		}
		
		if (inName == "assets/data/button_left.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_left.png");
			
		}
		
		if (inName == "assets/data/button_right.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_right.png");
			
		}
		
		if (inName == "assets/data/button_up.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_up.png");
			
		}
		
		if (inName == "assets/data/button_x.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_x.png");
			
		}
		
		if (inName == "assets/data/button_y.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/button_y.png");
			
		}
		
		if (inName == "assets/data/courier.ttf")
		{
			
			return nme.Assets.getFont ("assets/data/courier.ttf");
			
		}
		
		if (inName == "assets/data/cursor.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/cursor.png");
			
		}
		
		if (inName == "assets/data/default.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/default.png");
			
		}
		
		if (inName == "assets/data/fontData10pt.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/fontData10pt.png");
			
		}
		
		if (inName == "assets/data/fontData11pt.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/fontData11pt.png");
			
		}
		
		if (inName == "assets/data/handle.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/handle.png");
			
		}
		
		if (inName == "assets/data/logo.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/logo.png");
			
		}
		
		if (inName == "assets/data/logo_corners.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/logo_corners.png");
			
		}
		
		if (inName == "assets/data/logo_light.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/logo_light.png");
			
		}
		
		if (inName == "assets/data/nokiafc22.ttf")
		{
			
			return nme.Assets.getFont ("assets/data/nokiafc22.ttf");
			
		}
		
		if (inName == "assets/data/stick.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/stick.png");
			
		}
		
		if (inName == "assets/data/vcr/flixel.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/flixel.png");
			
		}
		
		if (inName == "assets/data/vcr/open.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/open.png");
			
		}
		
		if (inName == "assets/data/vcr/pause.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/pause.png");
			
		}
		
		if (inName == "assets/data/vcr/play.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/play.png");
			
		}
		
		if (inName == "assets/data/vcr/record_off.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/record_off.png");
			
		}
		
		if (inName == "assets/data/vcr/record_on.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/record_on.png");
			
		}
		
		if (inName == "assets/data/vcr/restart.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/restart.png");
			
		}
		
		if (inName == "assets/data/vcr/step.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/step.png");
			
		}
		
		if (inName == "assets/data/vcr/stop.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vcr/stop.png");
			
		}
		
		if (inName == "assets/data/vis/bounds.png")
		{
			
			return nme.Assets.getBitmapData ("assets/data/vis/bounds.png");
			
		}
		
		if (inName == "assets/HaxeFlixel.svg")
		{
			
			return nme.Assets.getText ("assets/HaxeFlixel.svg");
			
		}
		
		if (inName == "assets/img/Cursor.png")
		{
			
			return nme.Assets.getBitmapData ("assets/img/Cursor.png");
			
		}
		
		if (inName == "assets/img/enemy.png")
		{
			
			return nme.Assets.getBitmapData ("assets/img/enemy.png");
			
		}
		
		if (inName == "assets/img/goal.png")
		{
			
			return nme.Assets.getBitmapData ("assets/img/goal.png");
			
		}
		
		if (inName == "assets/img/tileset.png")
		{
			
			return nme.Assets.getBitmapData ("assets/img/tileset.png");
			
		}
		
		if (inName == "assets/img/tower.png")
		{
			
			return nme.Assets.getBitmapData ("assets/img/tower.png");
			
		}
		
		if (inName == "assets/sfx/Build.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/Build.mp3");
			
		}
		
		if (inName == "assets/sfx/Deny.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/Deny.mp3");
			
		}
		
		if (inName == "assets/sfx/EnemyHit.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/EnemyHit.mp3");
			
		}
		
		if (inName == "assets/sfx/EnemyKill.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/EnemyKill.mp3");
			
		}
		
		if (inName == "assets/sfx/GameOver.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/GameOver.mp3");
			
		}
		
		if (inName == "assets/sfx/Hurt.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/Hurt.mp3");
			
		}
		
		if (inName == "assets/sfx/Select.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/Select.mp3");
			
		}
		
		if (inName == "assets/sfx/Shoot.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/Shoot.mp3");
			
		}
		
		if (inName == "assets/sfx/TD2.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/TD2.mp3");
			
		}
		
		if (inName == "assets/sfx/wav/Build.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/Build.wav");
			
		}
		
		if (inName == "assets/sfx/wav/Deny.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/Deny.wav");
			
		}
		
		if (inName == "assets/sfx/wav/EnemyHit.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/EnemyHit.wav");
			
		}
		
		if (inName == "assets/sfx/wav/EnemyKill.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/EnemyKill.wav");
			
		}
		
		if (inName == "assets/sfx/wav/GameOver.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/GameOver.wav");
			
		}
		
		if (inName == "assets/sfx/wav/Hurt.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/Hurt.wav");
			
		}
		
		if (inName == "assets/sfx/wav/Select.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/Select.wav");
			
		}
		
		if (inName == "assets/sfx/wav/Shoot.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/Shoot.wav");
			
		}
		
		if (inName == "assets/sfx/wav/WaveDefeated.wav")
		{
			
			return nme.Assets.getSound ("assets/sfx/wav/WaveDefeated.wav");
			
		}
		
		if (inName == "assets/sfx/WaveDefeated.mp3")
		{
			
			return nme.Assets.getSound ("assets/sfx/WaveDefeated.mp3");
			
		}
		
		if (inName == "assets/tilemap/mapCSV_Group2_Map1.csv")
		{
			
			return nme.Assets.getText ("assets/tilemap/mapCSV_Group2_Map1.csv");
			
		}
		
		if (inName == "assets/tilemap/mapCSV_Group3_Map1.csv")
		{
			
			return nme.Assets.getText ("assets/tilemap/mapCSV_Group3_Map1.csv");
			
		}
		
		if (inName == "assets/tilemap/NewProject.dam")
		{
			
			return nme.Assets.getText ("assets/tilemap/NewProject.dam");
			
		}
		
		if (inName == "assets/tilemap/NewProject.dam.bak")
		{
			
			return nme.Assets.getText ("assets/tilemap/NewProject.dam.bak");
			
		}
		
		#end
		return null;
	}
	
	
}
