with Ada.Wide_Text_IO, ImInventar, InventarBefehle, Nicht;
use Ada.Wide_Text_IO;

package Inventar is

   Läuft : Boolean := True;

   Wert : Integer := 0;

   function Inventar return Integer;

end Inventar;
