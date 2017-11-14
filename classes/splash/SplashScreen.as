package classes.splash {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class SplashScreen extends MovieClip {
		
		private var timer:Timer;
		
		public function SplashScreen() {
			timer = new Timer(2000);
			timer.addEventListener(TimerEvent.TIMER, callback);
			timer.start();
			
		}
		private function callback(event:TimerEvent):void{
			timer.stop();
			MovieClip(root).gotoAndStop(1, "menu");
		}
	}
}
