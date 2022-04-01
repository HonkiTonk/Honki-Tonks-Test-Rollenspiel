pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package FertigkeitenAendern is
   
   function FertigkeitenÄndern
     (WertExtern : in Integer)
      return Integer;
   
private
   
   CharakterÄnderung : Unbounded_Wide_Wide_String;

end FertigkeitenAendern;
