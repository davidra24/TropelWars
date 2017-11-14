package classes.battle.buttons {
	
	import flash.display.SimpleButton;
	import classes.battle.weapons.Piedra;
	import classes.battle.characters.Capucho;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TouchEvent;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.events.Event;
	
	public class BotonPiedras extends SimpleButton {
		
		private var piedra:Piedra;
		private var capucho:Capucho;
		private var count:int = 0;
		private var timerStart:Date;
		private var timerStop:Date;		
		
		public function BotonPiedras() {
			Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
			addEventListener(TouchEvent.TOUCH_BEGIN, touchBegin);
			addEventListener(TouchEvent.TOUCH_END, touchEnd);
			count = 0;
		}
		
		public function setCapucho(obj:Object){
			this.capucho = obj as Capucho;
		}
		private function touchBegin(event:TouchEvent){
			this.timerStart = new Date();
		}
		private function touchEnd(event:TouchEvent){
			this.timerStop = new Date();
			count = (timerStop.time - timerStart.time);
		}
		private function lanzar(interval:int){
			
		}
	}
}





