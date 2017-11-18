package classes.battle.bckground {
	
	import flash.display.MovieClip;	
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TransformGestureEvent;
	import classes.battle.characters.Capucho;
	import flash.events.TouchEvent;
	import classes.battle.buttons.ContainerButtons;
	
	public class Inferior extends MovieClip {

		public var crashUp;
		public var crashDown;
		public var crashLeft;
		public var crashRight;
		
		public function Inferior() {
			crashUp = this.y;
			crashDown = this.y + this.height;
			crashLeft = this.x;
			crashRight = this.x + this.width - new ContainerButtons().width;
			assignChilds(3);
			trace("CrashUP: " + crashUp +  " CrashDown: " + crashDown + " CrashLeft: " + crashLeft + " CrashRight: " + crashRight);
		}
		public function moveChild(var childNumber, var inX, var inY){
			var c:Capucho = this.getChildAt(childNumber) as Capucho;
			var movementX = c.x+50;
			var movementY = c.x+50;
			c.moveX(c.x, movementX, .2);
			c.moveY(c.y, movementY, .2);
		}
		private function assignChilds(num:int){
			var capucho:Capucho;
			for(var i:int = 0; i < num; i++){
				capucho = new Capucho();
				capucho.y = i * 200 - 200;
				capucho.visible = true;
				capucho.setPlayer(i==1);
				this.addChild(capucho);
			}
		}
	}
	
}
