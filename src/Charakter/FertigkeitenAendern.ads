with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package FertigkeitenAendern is
   
   function FertigkeitenÄndern
     (Wert : in Integer)
      return Integer;
   
private
   
   CharakterÄnderung : Unbounded_Wide_String;

end FertigkeitenAendern;
