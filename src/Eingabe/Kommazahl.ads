with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Maps.Wide_Constants, Ada.Integer_Wide_Text_IO, Ada.Float_Wide_Text_IO, Ada.Strings.Wide_Fixed;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Kommazahl is

   function Kommazahl
     return Unbounded_Wide_String;

private

   EinWortEingabeString : Unbounded_Wide_String;

end Kommazahl;
