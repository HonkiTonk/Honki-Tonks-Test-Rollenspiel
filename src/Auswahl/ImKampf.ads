with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, EinWort, Falsch, KampfBefehle;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package ImKampf is

   Text : Unbounded_Wide_String;

   Laden : Boolean;

   function ImKampf return Integer;

end ImKampf;
