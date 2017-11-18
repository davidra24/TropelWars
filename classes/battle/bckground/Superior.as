package classes.battle.bckground {
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import classes.battle.characters.Esmad;
	
	public class Superior extends MovieClip {
		
		var miTimer:Timer;
		var ultimoEsmad:int;
		var proximoEsmad:int;
		
		public function Superior() {
			miTimer = new Timer(1000);
			miTimer.addEventListener(TimerEvent.TIMER, moverEsmad);
		}
		private function moverEsmad(event:TimerEvent){
			var esmad:Esmad = new Esmad();
			addChild(new Esmad());
		}
	}	
}