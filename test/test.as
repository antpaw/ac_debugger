package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.MovieClip;
	
	import flash.events.MouseEvent;
	
	import com.antpaw.debug;
	
	public class test extends MovieClip
	{
		public function test():void
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP;
			
			stage.addEventListener(MouseEvent.CLICK, click);
		}
		
		private function click(e:MouseEvent):void
		{
			debug.log("ac_debugger is cool!");
			debug.log(true);
			debug.log([stage.mouseX, stage.mouseY]);
		}
	}
}