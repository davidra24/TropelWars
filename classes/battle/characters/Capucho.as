package classes.battle.characters {
	
	import flash.display.Sprite;
	import classes.battle.weapons.PapaBomba;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TransformGestureEvent;
	
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	
	public class Capucho extends Sprite {
		
		var isPlayer:Boolean = false;
		
		public function Capucho() {
			
		}
		public function setPlayer(isPlay:Boolean){
			this.isPlayer = isPlay;
			if(isPlayer){
				trace("plyr");
			}
		}
		public function moveTo(bfrX:Number, aftX:Number, bfrY:Number, aftY:Number, velocity:Number){
			new Tween(this, "x", Regular.easeIn, bfrX, aftX, velocity, true);
			new Tween(this,"y", Strong.easeIn, bfrY, aftY, velocity, true);
		}
		private function lanzarPiedra(){
			var papaBomba = new PapaBomba();
			this.addChild(papaBomba);
		}
		private function lanzarPapa(){
			
		}
		private function lanzarMolotov(){
			
		}
	}	
}