with Ada.Strings.Wide_Unbounded, Charaktere, EinWort, Hauptwerte, HauptwerteVerteilung;
use Ada.Strings.Wide_Unbounded;

package HauptwerteAendern is

   Erhöhen : Boolean;

   CharakterÄnderung : Unbounded_Wide_String;
   
   function HauptwerteÄndern (Wert : in Integer) return Integer;

end HauptwerteAendern;
