#if (nme && !flambe)


import Main;
import nme.display.Bitmap;
import nme.display.Loader;
import nme.events.Event;
import nme.media.Sound;
import nme.net.URLLoader;
import nme.net.URLRequest;
import nme.net.URLLoaderDataFormat;
import nme.Assets;
import nme.Lib;


class ApplicationMain {
	
	
	private static var completed:Int;
	private static var preloader:NMEPreloader;
	private static var total:Int;
	
	public static var loaders:Hash <Loader>;
	public static var urlLoaders:Hash <URLLoader>;
	
	
	public static function main () {
		
		completed = 0;
		loaders = new Hash <Loader> ();
		urlLoaders = new Hash <URLLoader> ();
		total = 0;
		
		
		
		
		preloader = new NMEPreloader ();
		
		Lib.current.addChild (preloader);
		preloader.onInit ();
		
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/autotiles.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/autotiles_alt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/base.png", loader);
		total ++;
		
		
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_a.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_b.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_c.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_down.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_left.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_right.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_up.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_x.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/button_y.png", loader);
		total ++;
		
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/cursor.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/default.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/fontData10pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/fontData11pt.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/handle.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/logo.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/logo_corners.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/logo_light.png", loader);
		total ++;
		
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/stick.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/flixel.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/open.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/pause.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/play.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/record_off.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/record_on.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/restart.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/step.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vcr/stop.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/data/vis/bounds.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/img/Cursor.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/img/enemy.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/img/goal.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/img/tileset.png", loader);
		total ++;
		
		
		var loader:Loader = new Loader ();
		loaders.set ("assets/img/tower.png", loader);
		total ++;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		var urlLoader:URLLoader = new URLLoader ();
		urlLoader.dataFormat = TEXT;
		urlLoaders.set ("assets/tilemap/mapCSV_Group2_Map1.csv", urlLoader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader ();
		urlLoader.dataFormat = TEXT;
		urlLoaders.set ("assets/tilemap/mapCSV_Group3_Map1.csv", urlLoader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader ();
		urlLoader.dataFormat = TEXT;
		urlLoaders.set ("assets/tilemap/NewProject.dam", urlLoader);
		total ++;
		
		
		var urlLoader:URLLoader = new URLLoader ();
		urlLoader.dataFormat = TEXT;
		urlLoaders.set ("assets/tilemap/NewProject.dam.bak", urlLoader);
		total ++;
		
		
		if (total == 0) {
			
			begin ();
			
		} else {
			
			for (path in loaders.keys ()) {
				
				var loader:Loader = loaders.get (path);
				loader.contentLoaderInfo.addEventListener ("complete", loader_onComplete);
				loader.load (new URLRequest (path));
				
			}
			
			for (path in urlLoaders.keys ()) {
				
				var urlLoader:URLLoader = urlLoaders.get (path);
				urlLoader.addEventListener ("complete", loader_onComplete);
				urlLoader.load (new URLRequest (path));
				
			}
			
		}
		
	}
	
	
	private static function begin ():Void {
		
		preloader.addEventListener (Event.COMPLETE, preloader_onComplete);
		preloader.onLoaded ();
		
	}
	

   public static function getAsset(inName:String):Dynamic {
	   
		
		if (inName=="assets/data/autotiles.png") {
			
			return Assets.getBitmapData ("assets/data/autotiles.png");
			
		}
		
		if (inName=="assets/data/autotiles_alt.png") {
			
			return Assets.getBitmapData ("assets/data/autotiles_alt.png");
			
		}
		
		if (inName=="assets/data/base.png") {
			
			return Assets.getBitmapData ("assets/data/base.png");
			
		}
		
		if (inName=="assets/data/beep.mp3") {
			
			return Assets.getSound ("assets/data/beep.mp3");
			
		}
		
		if (inName=="assets/data/beep.wav") {
			
			return Assets.getSound ("assets/data/beep.wav");
			
		}
		
		if (inName=="assets/data/button.png") {
			
			return Assets.getBitmapData ("assets/data/button.png");
			
		}
		
		if (inName=="assets/data/button_a.png") {
			
			return Assets.getBitmapData ("assets/data/button_a.png");
			
		}
		
		if (inName=="assets/data/button_b.png") {
			
			return Assets.getBitmapData ("assets/data/button_b.png");
			
		}
		
		if (inName=="assets/data/button_c.png") {
			
			return Assets.getBitmapData ("assets/data/button_c.png");
			
		}
		
		if (inName=="assets/data/button_down.png") {
			
			return Assets.getBitmapData ("assets/data/button_down.png");
			
		}
		
		if (inName=="assets/data/button_left.png") {
			
			return Assets.getBitmapData ("assets/data/button_left.png");
			
		}
		
		if (inName=="assets/data/button_right.png") {
			
			return Assets.getBitmapData ("assets/data/button_right.png");
			
		}
		
		if (inName=="assets/data/button_up.png") {
			
			return Assets.getBitmapData ("assets/data/button_up.png");
			
		}
		
		if (inName=="assets/data/button_x.png") {
			
			return Assets.getBitmapData ("assets/data/button_x.png");
			
		}
		
		if (inName=="assets/data/button_y.png") {
			
			return Assets.getBitmapData ("assets/data/button_y.png");
			
		}
		
		if (inName=="assets/data/courier.ttf") {
			
			return Assets.getFont ("assets/data/courier.ttf");
			
		}
		
		if (inName=="assets/data/cursor.png") {
			
			return Assets.getBitmapData ("assets/data/cursor.png");
			
		}
		
		if (inName=="assets/data/default.png") {
			
			return Assets.getBitmapData ("assets/data/default.png");
			
		}
		
		if (inName=="assets/data/fontData10pt.png") {
			
			return Assets.getBitmapData ("assets/data/fontData10pt.png");
			
		}
		
		if (inName=="assets/data/fontData11pt.png") {
			
			return Assets.getBitmapData ("assets/data/fontData11pt.png");
			
		}
		
		if (inName=="assets/data/handle.png") {
			
			return Assets.getBitmapData ("assets/data/handle.png");
			
		}
		
		if (inName=="assets/data/logo.png") {
			
			return Assets.getBitmapData ("assets/data/logo.png");
			
		}
		
		if (inName=="assets/data/logo_corners.png") {
			
			return Assets.getBitmapData ("assets/data/logo_corners.png");
			
		}
		
		if (inName=="assets/data/logo_light.png") {
			
			return Assets.getBitmapData ("assets/data/logo_light.png");
			
		}
		
		if (inName=="assets/data/nokiafc22.ttf") {
			
			return Assets.getFont ("assets/data/nokiafc22.ttf");
			
		}
		
		if (inName=="assets/data/stick.png") {
			
			return Assets.getBitmapData ("assets/data/stick.png");
			
		}
		
		if (inName=="assets/data/vcr/flixel.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/flixel.png");
			
		}
		
		if (inName=="assets/data/vcr/open.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/open.png");
			
		}
		
		if (inName=="assets/data/vcr/pause.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/pause.png");
			
		}
		
		if (inName=="assets/data/vcr/play.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/play.png");
			
		}
		
		if (inName=="assets/data/vcr/record_off.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/record_off.png");
			
		}
		
		if (inName=="assets/data/vcr/record_on.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/record_on.png");
			
		}
		
		if (inName=="assets/data/vcr/restart.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/restart.png");
			
		}
		
		if (inName=="assets/data/vcr/step.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/step.png");
			
		}
		
		if (inName=="assets/data/vcr/stop.png") {
			
			return Assets.getBitmapData ("assets/data/vcr/stop.png");
			
		}
		
		if (inName=="assets/data/vis/bounds.png") {
			
			return Assets.getBitmapData ("assets/data/vis/bounds.png");
			
		}
		
		if (inName=="assets/img/Cursor.png") {
			
			return Assets.getBitmapData ("assets/img/Cursor.png");
			
		}
		
		if (inName=="assets/img/enemy.png") {
			
			return Assets.getBitmapData ("assets/img/enemy.png");
			
		}
		
		if (inName=="assets/img/goal.png") {
			
			return Assets.getBitmapData ("assets/img/goal.png");
			
		}
		
		if (inName=="assets/img/tileset.png") {
			
			return Assets.getBitmapData ("assets/img/tileset.png");
			
		}
		
		if (inName=="assets/img/tower.png") {
			
			return Assets.getBitmapData ("assets/img/tower.png");
			
		}
		
		if (inName=="assets/sfx/Build.mp3") {
			
			return Assets.getSound ("assets/sfx/Build.mp3");
			
		}
		
		if (inName=="assets/sfx/Deny.mp3") {
			
			return Assets.getSound ("assets/sfx/Deny.mp3");
			
		}
		
		if (inName=="assets/sfx/EnemyHit.mp3") {
			
			return Assets.getSound ("assets/sfx/EnemyHit.mp3");
			
		}
		
		if (inName=="assets/sfx/EnemyKill.mp3") {
			
			return Assets.getSound ("assets/sfx/EnemyKill.mp3");
			
		}
		
		if (inName=="assets/sfx/GameOver.mp3") {
			
			return Assets.getSound ("assets/sfx/GameOver.mp3");
			
		}
		
		if (inName=="assets/sfx/Hurt.mp3") {
			
			return Assets.getSound ("assets/sfx/Hurt.mp3");
			
		}
		
		if (inName=="assets/sfx/Select.mp3") {
			
			return Assets.getSound ("assets/sfx/Select.mp3");
			
		}
		
		if (inName=="assets/sfx/Shoot.mp3") {
			
			return Assets.getSound ("assets/sfx/Shoot.mp3");
			
		}
		
		if (inName=="assets/sfx/TD2.mp3") {
			
			return Assets.getSound ("assets/sfx/TD2.mp3");
			
		}
		
		if (inName=="assets/sfx/wav/Build.wav") {
			
			return Assets.getSound ("assets/sfx/wav/Build.wav");
			
		}
		
		if (inName=="assets/sfx/wav/Deny.wav") {
			
			return Assets.getSound ("assets/sfx/wav/Deny.wav");
			
		}
		
		if (inName=="assets/sfx/wav/EnemyHit.wav") {
			
			return Assets.getSound ("assets/sfx/wav/EnemyHit.wav");
			
		}
		
		if (inName=="assets/sfx/wav/EnemyKill.wav") {
			
			return Assets.getSound ("assets/sfx/wav/EnemyKill.wav");
			
		}
		
		if (inName=="assets/sfx/wav/GameOver.wav") {
			
			return Assets.getSound ("assets/sfx/wav/GameOver.wav");
			
		}
		
		if (inName=="assets/sfx/wav/Hurt.wav") {
			
			return Assets.getSound ("assets/sfx/wav/Hurt.wav");
			
		}
		
		if (inName=="assets/sfx/wav/Select.wav") {
			
			return Assets.getSound ("assets/sfx/wav/Select.wav");
			
		}
		
		if (inName=="assets/sfx/wav/Shoot.wav") {
			
			return Assets.getSound ("assets/sfx/wav/Shoot.wav");
			
		}
		
		if (inName=="assets/sfx/wav/WaveDefeated.wav") {
			
			return Assets.getSound ("assets/sfx/wav/WaveDefeated.wav");
			
		}
		
		if (inName=="assets/sfx/WaveDefeated.mp3") {
			
			return Assets.getSound ("assets/sfx/WaveDefeated.mp3");
			
		}
		
		if (inName=="assets/tilemap/mapCSV_Group2_Map1.csv") {
			
			return Assets.getText ("assets/tilemap/mapCSV_Group2_Map1.csv");
			
		}
		
		if (inName=="assets/tilemap/mapCSV_Group3_Map1.csv") {
			
			return Assets.getText ("assets/tilemap/mapCSV_Group3_Map1.csv");
			
		}
		
		if (inName=="assets/tilemap/NewProject.dam") {
			
			return Assets.getText ("assets/tilemap/NewProject.dam");
			
		}
		
		if (inName=="assets/tilemap/NewProject.dam.bak") {
			
			return Assets.getText ("assets/tilemap/NewProject.dam.bak");
			
		}
		
		return null;
		
   }
   
   
   
   
   // Event Handlers
   
   
   
   
	private static function loader_onComplete (event:Event):Void {
		
		completed ++;
		
		preloader.onUpdate (completed, total);
		
		if (completed == total) {
			
			begin ();
			
		}
	   
	}
	
	
	private static function preloader_onComplete (event:Event):Void {
		
		preloader.removeEventListener (Event.COMPLETE, preloader_onComplete);
		
		Lib.current.removeChild(preloader);
		preloader = null;
		
		if (Reflect.field(Main, "main") == null)
		{
			var mainDisplayObj = new Main();
			if (Std.is(mainDisplayObj, browser.display.DisplayObject))
				nme.Lib.current.addChild(cast mainDisplayObj);
		}
		else
		{
			Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
		}
		
	}
   
   
}



	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	
		class NME_assets_data_courier_ttf extends nme.text.Font { }
	

	

	

	

	

	

	

	

	

	
		class NME_assets_data_nokiafc22_ttf extends nme.text.Font { }
	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	

	



#else


import Main;


class ApplicationMain {
	
	
	public static function main () {
		
		if (Reflect.field(Main, "main") == null) {
			
			Type.createInstance (Main, []);
			
		} else {
			
			Reflect.callMethod (Main, Reflect.field (Main, "main"), []);
			
		}
		
	}
	
	
}


#end