package classes.battle.characters {
	
	import flash.display.Sprite;
	
	public class Esmad extends Sprite {
		
		public function Esmad() {
			
		}
		public function moveTo(bfrX:Number, aftX:Number, bfrY:Number, aftY:Number, velocity:Number){
			new Tween(this, "x", Regular.easeIn, bfrX, aftX, velocity, true);
			new Tween(this,"y", Strong.easeIn, bfrY, aftY, velocity, true);
		}
		public function moveX(bfrX:Number, aftX:Number, velocity:Number){
			new Tween(this, "x", Regular.easeIn, bfrX, aftX, velocity, true);
		}
		public function moveY(bfrY:Number, aftY:Number, velocity:Number){
			new Tween(this,"y", Strong.easeIn, bfrY, aftY, velocity, true);
		}
	}	
}