pragma Warnings (Off, "*array aggregate*");

package GlobalerHub is

   OrteAuswahlGlobal : Integer := 10;

   function VerteilungGlobal
     return Integer;
   
private
      
   SpielLäuft : Boolean;

end GlobalerHub;
