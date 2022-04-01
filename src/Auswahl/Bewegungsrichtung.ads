pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Bewegungsrichtung is

   function Bewegungsrichtung
     return Integer;

private

   Text : Unbounded_Wide_Wide_String;

end Bewegungsrichtung;
