package{
	import flash.events.MouseEvent
	import fl.motion.MotionEvent;

	public class Main extends MovieClip
	{
		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;
		public function Main()
		{
			startPage = new StartPage();
			hillPage = new HillPage();
			pondPage = new PondPage();
			addChild (startPage);
			startPage.hill.addEventListenner(MouseEvent.CLICK,onHillClick);
			startPage.pond.addEventListenner(MouseEvent.CLICK,onPondClick);
			
		}
		function onHillClick(event:MotionEvent) : void
		{
			stop();
			addChild(HillPage);
			removeChild(StartPage)
		}
		function onPondClick(event:MotionEvent) : void
		{
			stop();
			addChild(PondPage);
			removeChild(startPage);
		}
	}
}