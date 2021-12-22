with Ada.Strings.Wide_Unbounded, Ada.Wide_Text_IO, EinWort, Falsch;
use Ada.Strings.Wide_Unbounded, Ada.Wide_Text_IO;

package JaNein is

   Text : Unbounded_Wide_String;

   Laden : Boolean;

   function JaNein return Integer;
   function JaNeinEinfach return Boolean;

end JaNein;
