package classes.principal {
	
	import flash.display.MovieClip;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	import flash.events.TransformGestureEvent;
	import flash.events.Event;
	
	public class Menu extends MovieClip {

		private var pantalla:Number;
		private var totalPantallas:Number;
		private var distanciaX:Number;
		private var tiempo:Number;
		
		public function Menu() {
			pantalla = 2;
			totalPantallas = 3;
			distanciaX = 36;
			tiempo = 0;
			Multitouch.inputMode = MultitouchInputMode.GESTURE;
			addEventListener(TransformGestureEvent.GESTURE_SWIPE, moveMenu);
		}
		
		private function moveMenu(event:TransformGestureEvent):void{
			if(event.offsetX == 1){
				if(pantalla > 1){
					pantalla--;
					slideRight();
				}else if(event.offsetX == -1){
					if(pantalla < totalPantallas){
						pantalla++;
						slideLeft();
					}
				}
			}
		}
		
		private function slideLeft(){
			addEventListener("enterFrame", moveGalleryLeft);
		}
		private function slideRight(){
			addEventListener("enterFrame", moveGalleryRight);
		}
		
		private function moveGalleryLeft(evt:Event){
			x -= distanciaX;
			tiempo++;
			if(tiempo == 20){
				removeEventListener("enterFrame", moveGalleryLeft);
				tiempo = 0;
			}
		}
		private function moveGalleryRight(evt:Event){
			x += distanciaX;
			tiempo++;
			if(tiempo == 20){
				removeEventListener("enterFrame", moveGalleryRight);
				tiempo = 0;
			}
		}
	}	
}
