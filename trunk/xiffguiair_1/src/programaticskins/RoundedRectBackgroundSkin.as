package programaticskins
{
   import flash.display.*;
   import mx.skins.ProgrammaticSkin;
   
   public class RoundedRectBackgroundSkin extends ProgrammaticSkin
   {
      public function RoundedRectBackgroundSkin()
      {
         super();
      }
      override protected function updateDisplayList(uw:Number,uh:Number):void
      {
         super.updateDisplayList(uw,uh);
         
         graphics.clear();
         graphics.beginFill(getStyle("backgroundColor"),getStyle("backgroundAlpha"));
         graphics.drawRoundRect(0,0,uw,uh,getStyle("cornerRadius"),getStyle("cornerRadius"))
         graphics.endFill();
      }
   }
}