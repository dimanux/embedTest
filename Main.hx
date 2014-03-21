import flash.display.Loader;
import flash.events.Event;
import flash.net.URLRequest;

class Main
{	
	public static function main() 
	{
		for (i in 1...81)
		{
			var loader = new Loader();
			var request = new URLRequest("assets/2 (" + i + ").png");
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, function(e : Event) {
				trace("Loaded " + request.url);
			});
			loader.load(request);
		}
	}
}
