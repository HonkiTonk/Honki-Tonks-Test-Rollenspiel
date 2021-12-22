with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Maps.Wide_Constants, Ada.Integer_Wide_Text_IO, Ada.Float_Wide_Text_IO, Ada.Strings.Wide_Fixed;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package EinWort is

   EinWortEingabeString : Unbounded_Wide_String;
   EinWortEingabeStringÄnderbar : Unbounded_Wide_String;

   function EinWort return Unbounded_Wide_String;
   function EinWortOhneÄnderung return Unbounded_Wide_String;

end EinWort;
