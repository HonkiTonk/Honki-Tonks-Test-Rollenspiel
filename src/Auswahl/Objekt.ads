with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Objekt is

   function Objekt
     (AktuellerOrt : in Float)
      return Integer;

private

   Text : Unbounded_Wide_String;

   Laden : Boolean;

end Objekt;
