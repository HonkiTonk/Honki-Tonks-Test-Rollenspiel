with Ada.Strings.Wide_Unbounded, Charaktere, EinWort, Fertigkeiten, FertigkeitenVerteilung;
use Ada.Strings.Wide_Unbounded;

package FertigkeitenAendern is

   CharakterÄnderung : Unbounded_Wide_String;
   
   function FertigkeitenÄndern (Wert : in Integer) return Integer;

end FertigkeitenAendern;
