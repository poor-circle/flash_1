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
			
			startPage.Hill.addEventListenner(MouseEvent.CLICK,onHillClick);
			startPage.Pond.addEventListenner(MouseEvent.CLICK,onPondClick);
			addChild (startPage);
		}
		function onHillClick(event:MotionEvent) : void
		{
			addChild(HillPage);
			removeChild(StartPage)
		}
		function onPondClick(event:MotionEvent) : void
		{
			addChild(PondPage);
			removeChild(startPage);
		}
	}
}