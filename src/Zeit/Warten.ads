with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded, Zeit, Ada.Integer_Text_IO, ImAusruhen;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Warten is

   WartenLäuft : Boolean := True;
   SchlafenLäuft : Boolean := True;

   Text : Unbounded_Wide_String;

   Wert : Integer;

   procedure Warten;


end Warten;
