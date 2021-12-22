with Ada.Strings.Wide_Unbounded, Charaktere, EinWort, Falsch, SpezielleEigenschaften, SpezielleEigenschaftenVerteilung;
use Ada.Strings.Wide_Unbounded;

package SpezielleEigenschaftenAendern is

   CharakterÄnderung : Unbounded_Wide_String;

   function SpezielleEigenschaftenÄndern (Wert : in Integer) return Integer;

end SpezielleEigenschaftenAendern;
