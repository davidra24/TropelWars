package classes.bckground.battle {
	
	import flash.display.MovieClip;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TransformGestureEvent;

	//Background class
	public class Bg extends MovieClip {
		public function Bg() {
			for(var j = 0; j < 3; j++){
				addChild(new Capucho());
			}
			for(var k = 1; k < 4; k++){
				getChildAt(k).x = Math.random()*400;
				getChildAt(k).y = Math.random()*500;
			}
			Multitouch.inputMode = MultitouchInputMode.GESTURE;
			addEventListener(TransformGestureEvent.GESTURE_SWIPE, move);
		}
		private function move(event:TransformGestureEvent):void{
			if(event.offsetX == 1){
				getChildAt(1).x += 10;
			}else if(event.offsetX == -1){
				getChildAt(1).x -= 10;
			}
			if(event.offsetY == 1){
				getChildAt(1).y += 10;
			}else if(event.offsetY == -1){
				getChildAt(1).y -= 10;
			}
		}
	}	
}