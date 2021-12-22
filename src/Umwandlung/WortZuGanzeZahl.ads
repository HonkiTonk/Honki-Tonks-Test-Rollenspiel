with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Maps.Wide_Constants, Ada.Integer_Wide_Text_IO, Ada.Float_Wide_Text_IO, Ada.Strings.Wide_Fixed;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package WortZuGanzeZahl is

   Prüfung : Boolean;

   EinWortEingabeStringÄnderbar : Unbounded_Wide_String;

   function WortZuGanzeZahl (EinWortEingabeString : in Unbounded_Wide_String) return Integer;

end WortZuGanzeZahl;
