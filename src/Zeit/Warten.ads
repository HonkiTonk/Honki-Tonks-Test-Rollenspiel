pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Warten is

   procedure Warten;

private

   WartenLäuft : Boolean := True;
   SchlafenLäuft : Boolean := True;

   Wert : Integer;

   Text : Unbounded_Wide_Wide_String;

end Warten;
