package classes.battle.bckground {
	
	import flash.display.MovieClip;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TransformGestureEvent;
	import classes.battle.characters.Capucho;
	import flash.events.TouchEvent;
	import classes.battle.buttons.ContainerButtons;
	
	public class Inferior extends MovieClip {
		
		//Child 0 background
		//Child 1 capucho superior
		//Child 2 capucho medio
		//CHild 3 capucho inferior
		
		private var superior:Superior;
		private var containerButtons:ContainerButtons;
		
		public function Inferior() {
			assignChilds(3);		
			Multitouch.inputMode = MultitouchInputMode.NONE;
			addEventListener(TransformGestureEvent.GESTURE_SWIPE, onSwipe);
			trace("constructor inferior");
		}
		public function setSuperior(obj:Object){
			this.superior = obj as Superior;
		}
		public function setContainerButtons(obj:Object){
			this.containerButtons = obj as ContainerButtons;
		}
		private function assignChilds(num:int){
			var capucho:Capucho;
			for(var i:int = 0; i < num; i++){
				capucho = new Capucho();
				capucho.y = i * 200 - 200;
				capucho.setPlayer(i==1);
				this.addChild(capucho);
			}
		}
		private function onSwipe(evt:TransformGestureEvent):void{
			var c:Capucho = this.getChildAt(2) as Capucho;			
			if(evt.offsetX==1){
				
				//c.moveTo(c.x, (c.x+20),c.y,c.y,0.1);
			}else if(evt.offsetX==-1){
				c.moveTo(c.x, (c.x-20),c.y,c.y,0.1);
			}
			
			/*c.moveTo(this.getChildAt(2).x, evt.localX, this.getChildAt(2).y, evt.localY, 0.1);
			var ex0 = this.getChildAt(2).x;
			var wy0 = this.getChildAt(2).y;
			var ex1 = evt.localX;
			var wy1 = evt.localY;*/
			
			if(c.hitTestObject(this.superior)){
				trace("Collision");
				this.getChildAt(2).y = this.y + this.getChildAt(2).height;
			}else{
				//c.moveTo(ex0, ex1, wy0, wy1, 0.1);
			}
			
		}
	}
}