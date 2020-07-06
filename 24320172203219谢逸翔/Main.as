package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class Main extends MovieClip {
		
		var mainScene: MainScene;
		var hill:Hill;
		var pond:Pond;
		var cat:Cat;
		var hillButton:HillButton;
		var pondButton:PondButton;
		var backButton1:BackButton;
		var backButton2:BackButton;
		var biggerButton:BiggerButton;
		var smallerButton:SmallerButton;
		var upButton:UpButton;
		var downButton:DownButton;
		
		public function Main() {
			mainScene = new MainScene;
			addChild(mainScene);
			cat = new Cat;
			cat.x = 240;
			cat.y = 253;
			cat.width = 100;
			cat.scaleY = cat.scaleX;
			addChild(cat);
			hillButton = new HillButton;
			hillButton.width = 150;
			hillButton.scaleY = hillButton.scaleX;
			hillButton.x = 70;
			hillButton.y = 300;
			addChild(hillButton);
			pondButton = new PondButton;
			pondButton.width = 130;
			pondButton.scaleY = pondButton.scaleX;
			pondButton.x = 300;
			pondButton.y = 350;
			addChild(pondButton);
			backButton1 = new BackButton;
			backButton1.width = 150;
			backButton1.scaleY = backButton1.scaleX;
			backButton1.x = 90;
			backButton1.y = 350;
			addChild(pondButton);
			backButton2 = new BackButton;
			backButton2.width = 150;
			backButton2.scaleY = backButton2.scaleX;
			backButton2.x = 90;
			backButton2.y = 350;
			upButton = new UpButton;
			upButton.width = 150;
			upButton.scaleY = upButton.scaleX;
			upButton.x = 450;
			upButton.y = 40;
			downButton = new DownButton;
			downButton.width = 150;
			downButton.scaleY = downButton.scaleX;
			downButton.x = 450;
			downButton.y = 110;
			biggerButton = new BiggerButton;
			biggerButton.width = 150;
			biggerButton.scaleY = biggerButton.scaleX;
			biggerButton.x = 450;
			biggerButton.y = 40;
			smallerButton = new SmallerButton;
			smallerButton.width = 150;
			smallerButton.scaleY = smallerButton.scaleX;
			smallerButton.x = 450;
			smallerButton.y = 110;
			
			var catYOnHill = 70;
			var catDyOnHill = 0;
			var catXOnHill = 60;
			var catDxOnHill = 0;
			
			hillButton.addEventListener(MouseEvent.CLICK, goToHill);
			
			function goToHill(event:MouseEvent):void {
				hill = new Hill;
				addChild(hill);
				addChild(backButton1);
				removeChild(mainScene);
				removeChild(hillButton);
				removeChild(pondButton);
				removeChild(cat);
				cat.x = catXOnHill + catDxOnHill;
				cat.y = catYOnHill + catDyOnHill;
				addChild(cat);
				addChild(upButton);
				addChild(downButton);
			}
			
			pondButton.addEventListener(MouseEvent.CLICK, goToPond);
			
			function goToPond(event:MouseEvent):void {
				pond = new Pond;
				addChild(pond);
				addChild(backButton2);
				removeChild(mainScene);
				removeChild(hillButton);
				removeChild(pondButton);
				removeChild(cat);
				cat.x = 400;
				cat.y = 250;
				addChild(cat);
				addChild(smallerButton);
				addChild(biggerButton);
			}
			
			backButton1.addEventListener(MouseEvent.CLICK, goBack1);
			
			function goBack1(event:MouseEvent):void {
				addChild(mainScene);
				addChild(hillButton);
				addChild(pondButton);
				removeChild(hill);
				removeChild(upButton);
				removeChild(downButton);
				removeChild(cat);
				cat.x = 240;
				cat.y = 253;
				addChild(cat);
				removeChild(backButton1);
			}
			
			backButton2.addEventListener(MouseEvent.CLICK, goBack2);
			
			function goBack2(event:MouseEvent):void {
				addChild(mainScene);
				addChild(hillButton);
				addChild(pondButton);
				removeChild(pond);
				removeChild(biggerButton);
				removeChild(smallerButton);
				removeChild(cat);
				cat.x = 240;
				cat.y = 253;
				addChild(cat);
				removeChild(backButton2);
			}
			
			upButton.addEventListener(MouseEvent.CLICK, goUp);
			
			function goUp(event:MouseEvent):void {
				catDyOnHill -= 10;
				cat.y = catYOnHill + catDyOnHill;
				catDxOnHill -= 5;
				cat.x = catXOnHill + catDxOnHill;
			}
			
			downButton.addEventListener(MouseEvent.CLICK, goDown);
			
			function goDown(event:MouseEvent):void {
				catDyOnHill += 10;
				cat.y = catYOnHill + catDyOnHill;
				catDxOnHill += 5;
				cat.x = catXOnHill + catDxOnHill;
			}
			
			biggerButton.addEventListener(MouseEvent.CLICK, goBig);
			
			function goBig(event:MouseEvent):void {
				cat.width += 10;
				cat.scaleY = cat.scaleX;
			}
			
			smallerButton.addEventListener(MouseEvent.CLICK, goSmall);
			
			function goSmall(event:MouseEvent):void {
				cat.width -= 10;
				cat.scaleY = cat.scaleX;
			}
			
		}
		
	}
	
}
