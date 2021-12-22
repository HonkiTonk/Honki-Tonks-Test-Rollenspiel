with Ada.Strings.Wide_Unbounded, EinWort, Falsch;
use Ada.Strings.Wide_Unbounded;

package Objekt is

   Text : Unbounded_Wide_String;

   Laden : Boolean;

   function Objekt (AktuellerOrt : in Float) return Integer;

end Objekt;
