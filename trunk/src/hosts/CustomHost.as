package hosts
{
  //  import flash.html.*;
    import flash.html.*;
    import mx.core.Application;
	import mx.core.FlexGlobals;
	/*
	*** | CustomHost extends HTMLHost in order to detect the new title
	*** | of each page
	*/
    public class CustomHost extends HTMLHost
    {
    	public var title : String;
    	
    	public function CustomHost()
    	{
    		super(true);
    	}
    	
        override public function updateTitle(winTitle:String):void
        {
        	
            this.title = winTitle;
        }
    }
}