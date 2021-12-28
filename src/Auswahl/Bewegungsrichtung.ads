with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Bewegungsrichtung is

   function Bewegungsrichtung return Integer;

private

   Text : Unbounded_Wide_String;

   Laden : Boolean;

end Bewegungsrichtung;
