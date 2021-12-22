with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, EinWort, Falsch, Schlafen, Warten, CharakterDatenblatt, LevelUp, Inventar, Zeit, Quest, StandardBefehle;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package ImSpiel is

   Text : Unbounded_Wide_String;

   Laden : Boolean;

   function ImSpiel return Integer;

end ImSpiel;
