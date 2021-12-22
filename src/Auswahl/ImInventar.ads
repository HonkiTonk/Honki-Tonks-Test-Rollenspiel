with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, EinWort, GesamterBesitz, Benutzen, Ausruesten, Ablegen, Wegwerfen, InventarInfo, Falsch, InventarBefehle;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package ImInventar is
   
   WiederverwendbarkeitVonBenutzenBeimKämpfen : Boolean := True;
   
   Text : Unbounded_Wide_String;

   function ImInventar return Integer;

end ImInventar;
