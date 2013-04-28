package nme.installer;


import format.display.MovieClip;
import haxe.Unserializer;
import nme.display.BitmapData;
import nme.media.Sound;
import nme.net.URLRequest;
import nme.text.Font;
import nme.utils.ByteArray;

#if swf
import format.SWF;
#end

#if xfl
import format.XFL;
#end


/**
 * ...
 * @author Joshua Granick
 */

class Assets {

	
	public static var cachedBitmapData:Hash<BitmapData> = new Hash<BitmapData>();
	#if swf private static var cachedSWFLibraries:Hash <SWF> = new Hash <SWF> (); #end
	#if xfl private static var cachedXFLLibraries:Hash <XFL> = new Hash <XFL> (); #end
	
	private static var initialized:Bool = false;
	private static var libraryTypes:Hash <String> = new Hash <String> ();
	private static var resourceNames:Hash <String> = new Hash <String> ();
	private static var resourceTypes:Hash <String> = new Hash <String> ();
	
	
	private static function initialize ():Void {
		
		if (!initialized) {
			
			resourceNames.set ("Beep", "assets/data/beep.wav");
			resourceTypes.set ("Beep", "sound");
			resourceNames.set ("assets/data/autotiles.png", "assets/data/autotiles.png");
			resourceTypes.set ("assets/data/autotiles.png", "image");
			resourceNames.set ("assets/data/autotiles_alt.png", "assets/data/autotiles_alt.png");
			resourceTypes.set ("assets/data/autotiles_alt.png", "image");
			resourceNames.set ("assets/data/base.png", "assets/data/base.png");
			resourceTypes.set ("assets/data/base.png", "image");
			resourceNames.set ("assets/data/beep.mp3", "assets/data/beep.mp3");
			resourceTypes.set ("assets/data/beep.mp3", "music");
			resourceNames.set ("assets/data/beep.wav", "assets/data/beep.wav");
			resourceTypes.set ("assets/data/beep.wav", "sound");
			resourceNames.set ("assets/data/button.png", "assets/data/button.png");
			resourceTypes.set ("assets/data/button.png", "image");
			resourceNames.set ("assets/data/button_a.png", "assets/data/button_a.png");
			resourceTypes.set ("assets/data/button_a.png", "image");
			resourceNames.set ("assets/data/button_b.png", "assets/data/button_b.png");
			resourceTypes.set ("assets/data/button_b.png", "image");
			resourceNames.set ("assets/data/button_c.png", "assets/data/button_c.png");
			resourceTypes.set ("assets/data/button_c.png", "image");
			resourceNames.set ("assets/data/button_down.png", "assets/data/button_down.png");
			resourceTypes.set ("assets/data/button_down.png", "image");
			resourceNames.set ("assets/data/button_left.png", "assets/data/button_left.png");
			resourceTypes.set ("assets/data/button_left.png", "image");
			resourceNames.set ("assets/data/button_right.png", "assets/data/button_right.png");
			resourceTypes.set ("assets/data/button_right.png", "image");
			resourceNames.set ("assets/data/button_up.png", "assets/data/button_up.png");
			resourceTypes.set ("assets/data/button_up.png", "image");
			resourceNames.set ("assets/data/button_x.png", "assets/data/button_x.png");
			resourceTypes.set ("assets/data/button_x.png", "image");
			resourceNames.set ("assets/data/button_y.png", "assets/data/button_y.png");
			resourceTypes.set ("assets/data/button_y.png", "image");
			resourceNames.set ("assets/data/courier.ttf", "assets/data/courier.ttf");
			resourceTypes.set ("assets/data/courier.ttf", "font");
			resourceNames.set ("assets/data/cursor.png", "assets/data/cursor.png");
			resourceTypes.set ("assets/data/cursor.png", "image");
			resourceNames.set ("assets/data/default.png", "assets/data/default.png");
			resourceTypes.set ("assets/data/default.png", "image");
			resourceNames.set ("assets/data/fontData10pt.png", "assets/data/fontData10pt.png");
			resourceTypes.set ("assets/data/fontData10pt.png", "image");
			resourceNames.set ("assets/data/fontData11pt.png", "assets/data/fontData11pt.png");
			resourceTypes.set ("assets/data/fontData11pt.png", "image");
			resourceNames.set ("assets/data/handle.png", "assets/data/handle.png");
			resourceTypes.set ("assets/data/handle.png", "image");
			resourceNames.set ("assets/data/logo.png", "assets/data/logo.png");
			resourceTypes.set ("assets/data/logo.png", "image");
			resourceNames.set ("assets/data/logo_corners.png", "assets/data/logo_corners.png");
			resourceTypes.set ("assets/data/logo_corners.png", "image");
			resourceNames.set ("assets/data/logo_light.png", "assets/data/logo_light.png");
			resourceTypes.set ("assets/data/logo_light.png", "image");
			resourceNames.set ("assets/data/nokiafc22.ttf", "assets/data/nokiafc22.ttf");
			resourceTypes.set ("assets/data/nokiafc22.ttf", "font");
			resourceNames.set ("assets/data/stick.png", "assets/data/stick.png");
			resourceTypes.set ("assets/data/stick.png", "image");
			resourceNames.set ("assets/data/vcr/flixel.png", "assets/data/vcr/flixel.png");
			resourceTypes.set ("assets/data/vcr/flixel.png", "image");
			resourceNames.set ("assets/data/vcr/open.png", "assets/data/vcr/open.png");
			resourceTypes.set ("assets/data/vcr/open.png", "image");
			resourceNames.set ("assets/data/vcr/pause.png", "assets/data/vcr/pause.png");
			resourceTypes.set ("assets/data/vcr/pause.png", "image");
			resourceNames.set ("assets/data/vcr/play.png", "assets/data/vcr/play.png");
			resourceTypes.set ("assets/data/vcr/play.png", "image");
			resourceNames.set ("assets/data/vcr/record_off.png", "assets/data/vcr/record_off.png");
			resourceTypes.set ("assets/data/vcr/record_off.png", "image");
			resourceNames.set ("assets/data/vcr/record_on.png", "assets/data/vcr/record_on.png");
			resourceTypes.set ("assets/data/vcr/record_on.png", "image");
			resourceNames.set ("assets/data/vcr/restart.png", "assets/data/vcr/restart.png");
			resourceTypes.set ("assets/data/vcr/restart.png", "image");
			resourceNames.set ("assets/data/vcr/step.png", "assets/data/vcr/step.png");
			resourceTypes.set ("assets/data/vcr/step.png", "image");
			resourceNames.set ("assets/data/vcr/stop.png", "assets/data/vcr/stop.png");
			resourceTypes.set ("assets/data/vcr/stop.png", "image");
			resourceNames.set ("assets/data/vis/bounds.png", "assets/data/vis/bounds.png");
			resourceTypes.set ("assets/data/vis/bounds.png", "image");
			resourceNames.set ("assets/HaxeFlixel.svg", "assets/HaxeFlixel.svg");
			resourceTypes.set ("assets/HaxeFlixel.svg", "text");
			resourceNames.set ("assets/img/Cursor.png", "assets/img/Cursor.png");
			resourceTypes.set ("assets/img/Cursor.png", "image");
			resourceNames.set ("assets/img/enemy.png", "assets/img/enemy.png");
			resourceTypes.set ("assets/img/enemy.png", "image");
			resourceNames.set ("assets/img/goal.png", "assets/img/goal.png");
			resourceTypes.set ("assets/img/goal.png", "image");
			resourceNames.set ("assets/img/tileset.png", "assets/img/tileset.png");
			resourceTypes.set ("assets/img/tileset.png", "image");
			resourceNames.set ("assets/img/tower.png", "assets/img/tower.png");
			resourceTypes.set ("assets/img/tower.png", "image");
			resourceNames.set ("assets/sfx/Build.mp3", "assets/sfx/Build.mp3");
			resourceTypes.set ("assets/sfx/Build.mp3", "music");
			resourceNames.set ("assets/sfx/Deny.mp3", "assets/sfx/Deny.mp3");
			resourceTypes.set ("assets/sfx/Deny.mp3", "music");
			resourceNames.set ("assets/sfx/EnemyHit.mp3", "assets/sfx/EnemyHit.mp3");
			resourceTypes.set ("assets/sfx/EnemyHit.mp3", "music");
			resourceNames.set ("assets/sfx/EnemyKill.mp3", "assets/sfx/EnemyKill.mp3");
			resourceTypes.set ("assets/sfx/EnemyKill.mp3", "music");
			resourceNames.set ("assets/sfx/GameOver.mp3", "assets/sfx/GameOver.mp3");
			resourceTypes.set ("assets/sfx/GameOver.mp3", "music");
			resourceNames.set ("assets/sfx/Hurt.mp3", "assets/sfx/Hurt.mp3");
			resourceTypes.set ("assets/sfx/Hurt.mp3", "music");
			resourceNames.set ("assets/sfx/Select.mp3", "assets/sfx/Select.mp3");
			resourceTypes.set ("assets/sfx/Select.mp3", "music");
			resourceNames.set ("assets/sfx/Shoot.mp3", "assets/sfx/Shoot.mp3");
			resourceTypes.set ("assets/sfx/Shoot.mp3", "music");
			resourceNames.set ("assets/sfx/TD2.mp3", "assets/sfx/TD2.mp3");
			resourceTypes.set ("assets/sfx/TD2.mp3", "music");
			resourceNames.set ("assets/sfx/wav/Build.wav", "assets/sfx/wav/Build.wav");
			resourceTypes.set ("assets/sfx/wav/Build.wav", "sound");
			resourceNames.set ("assets/sfx/wav/Deny.wav", "assets/sfx/wav/Deny.wav");
			resourceTypes.set ("assets/sfx/wav/Deny.wav", "sound");
			resourceNames.set ("assets/sfx/wav/EnemyHit.wav", "assets/sfx/wav/EnemyHit.wav");
			resourceTypes.set ("assets/sfx/wav/EnemyHit.wav", "sound");
			resourceNames.set ("assets/sfx/wav/EnemyKill.wav", "assets/sfx/wav/EnemyKill.wav");
			resourceTypes.set ("assets/sfx/wav/EnemyKill.wav", "sound");
			resourceNames.set ("assets/sfx/wav/GameOver.wav", "assets/sfx/wav/GameOver.wav");
			resourceTypes.set ("assets/sfx/wav/GameOver.wav", "sound");
			resourceNames.set ("assets/sfx/wav/Hurt.wav", "assets/sfx/wav/Hurt.wav");
			resourceTypes.set ("assets/sfx/wav/Hurt.wav", "sound");
			resourceNames.set ("assets/sfx/wav/Select.wav", "assets/sfx/wav/Select.wav");
			resourceTypes.set ("assets/sfx/wav/Select.wav", "sound");
			resourceNames.set ("assets/sfx/wav/Shoot.wav", "assets/sfx/wav/Shoot.wav");
			resourceTypes.set ("assets/sfx/wav/Shoot.wav", "sound");
			resourceNames.set ("assets/sfx/wav/WaveDefeated.wav", "assets/sfx/wav/WaveDefeated.wav");
			resourceTypes.set ("assets/sfx/wav/WaveDefeated.wav", "sound");
			resourceNames.set ("assets/sfx/WaveDefeated.mp3", "assets/sfx/WaveDefeated.mp3");
			resourceTypes.set ("assets/sfx/WaveDefeated.mp3", "music");
			resourceNames.set ("assets/tilemap/mapCSV_Group2_Map1.csv", "assets/tilemap/mapCSV_Group2_Map1.csv");
			resourceTypes.set ("assets/tilemap/mapCSV_Group2_Map1.csv", "text");
			resourceNames.set ("assets/tilemap/mapCSV_Group3_Map1.csv", "assets/tilemap/mapCSV_Group3_Map1.csv");
			resourceTypes.set ("assets/tilemap/mapCSV_Group3_Map1.csv", "text");
			resourceNames.set ("assets/tilemap/NewProject.dam", "assets/tilemap/NewProject.dam");
			resourceTypes.set ("assets/tilemap/NewProject.dam", "text");
			resourceNames.set ("assets/tilemap/NewProject.dam.bak", "assets/tilemap/NewProject.dam.bak");
			resourceTypes.set ("assets/tilemap/NewProject.dam.bak", "text");
			
			
			initialized = true;
			
		}
		
	}
	
	
	public static function getBitmapData (id:String, useCache:Bool = true):BitmapData {
		
		initialize ();
		
		if (resourceTypes.exists (id) && resourceTypes.get (id).toLowerCase () == "image") {
			
			if (useCache && cachedBitmapData.exists (id)) {
				
				return cachedBitmapData.get (id);
				
			} else {
				
				var data = BitmapData.load (resourceNames.get (id));
				
				if (useCache) {
					
					cachedBitmapData.set (id, data);
					
				}
				
				return data;
				
			}
			
		}  else if (id.indexOf (":") > -1) {
			
			var libraryName = id.substr (0, id.indexOf (":"));
			var symbolName = id.substr (id.indexOf (":") + 1);
			
			if (libraryTypes.exists (libraryName)) {
				
				#if swf
				
				if (libraryTypes.get (libraryName) == "swf") {
					
					if (!cachedSWFLibraries.exists (libraryName)) {
						
						cachedSWFLibraries.set (libraryName, new SWF (getBytes ("libraries/" + libraryName + ".swf")));
						
					}
					
					return cachedSWFLibraries.get (libraryName).getBitmapData (symbolName);
					
				}
				
				#end
				
				#if xfl
				
				if (libraryTypes.get (libraryName) == "xfl") {
					
					if (!cachedXFLLibraries.exists (libraryName)) {
						
						cachedXFLLibraries.set (libraryName, Unserializer.run (getText ("libraries/" + libraryName + "/" + libraryName + ".dat")));
						
					}
					
					return cachedXFLLibraries.get (libraryName).getBitmapData (symbolName);
					
				}
				
				#end
				
			} else {
				
				trace ("[nme.Assets] There is no asset library named \"" + libraryName + "\"");
				
			}
			
		} else {
			
			trace ("[nme.Assets] There is no BitmapData asset with an ID of \"" + id + "\"");
			
		}
		
		return null;
		
	}
	
	
	public static function getBytes (id:String):ByteArray {
		
		initialize ();
		
		if (resourceNames.exists (id)) {
			
			return ByteArray.readFile (resourceNames.get (id));
			
		} else {
			
			trace ("[nme.Assets] There is no String or ByteArray asset with an ID of \"" + id + "\"");
			
			return null;
			
		}
		
	}
	
	
	public static function getFont (id:String):Font {
		
		initialize ();
		
		if (resourceTypes.exists (id) && resourceTypes.get (id).toLowerCase () == "font") {
			
			return new Font (resourceNames.get (id));
			
		} else {
			
			trace ("[nme.Assets] There is no Font asset with an ID of \"" + id + "\"");
			
			return null;
			
		}
		
	}
	
	
	public static function getMovieClip (id:String):MovieClip {
		
		initialize ();
		
		var libraryName = id.substr (0, id.indexOf (":"));
		var symbolName = id.substr (id.indexOf (":") + 1);
		
		if (libraryTypes.exists (libraryName)) {
			
			#if swf
			
			if (libraryTypes.get (libraryName) == "swf") {
				
				if (!cachedSWFLibraries.exists (libraryName)) {
					
					cachedSWFLibraries.set (libraryName, new SWF (getBytes ("libraries/" + libraryName + ".swf")));
					
				}
				
				return cachedSWFLibraries.get (libraryName).createMovieClip (symbolName);
				
			}
			
			#end
			
			#if xfl
			
			if (libraryTypes.get (libraryName) == "xfl") {
				
				if (!cachedXFLLibraries.exists (libraryName)) {
					
					cachedXFLLibraries.set (libraryName, Unserializer.run (getText ("libraries/" + libraryName + "/" + libraryName + ".dat")));
					
				}
				
				return cachedXFLLibraries.get (libraryName).createMovieClip (symbolName);
				
			}
			
			#end
			
		} else {
			
			trace ("[nme.Assets] There is no asset library named \"" + libraryName + "\"");
			
		}
		
		return null;
		
	}
	
	
	public static function getResourceName (id:String):String {
		
		initialize ();
		
		return resourceNames.get (id);
		
	}
	
	
	public static function getSound (id:String):Sound {
		
		initialize ();
		
		if (resourceTypes.exists (id)) {
			
			if (resourceTypes.get (id).toLowerCase () == "sound") {
				
				return new Sound (new URLRequest (resourceNames.get (id)), null, false);
				
			} else if (resourceTypes.get (id).toLowerCase () == "music") {
				
				return new Sound (new URLRequest (resourceNames.get (id)), null, true);
				
			}
			
		}
		
		trace ("[nme.Assets] There is no Sound asset with an ID of \"" + id + "\"");
		
		return null;
		
	}
	
	
	public static function getText (id:String):String {
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.readUTFBytes (bytes.length);
			
		}
		
	}
	
	
	//public static function loadBitmapData(id:String, handler:BitmapData -> Void, useCache:Bool = true):BitmapData
	//{
		//return null;
	//}
	//
	//
	//public static function loadBytes(id:String, handler:ByteArray -> Void):ByteArray
	//{	
		//return null;
	//}
	//
	//
	//public static function loadText(id:String, handler:String -> Void):String
	//{
		//return null;
	//}
	
	
}
