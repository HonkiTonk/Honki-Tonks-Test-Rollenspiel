with Ada.Wide_Text_IO, LokalerHubStuetzpunkt, Zeit;
use Ada.Wide_Text_IO;

package GlobalerHub is
   
   SpielLäuft : Boolean := True;

   OrteAuswahlGlobal : Integer := 10;

   function VerteilungGlobal return Integer;

end GlobalerHub;
