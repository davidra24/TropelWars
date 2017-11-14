package classes.principal {
	
	import flash.display.SimpleButton;
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Puerta extends SimpleButton {
		
		public function Puerta() {
			addEventListener(MouseEvent.CLICK, go);
		}
		private function go(event:MouseEvent):void{
			MovieClip(root).gotoAndStop(1, "battle");
		}
	}
	
}
