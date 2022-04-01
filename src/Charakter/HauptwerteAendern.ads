pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package HauptwerteAendern is
   
   function HauptwerteÄndern
     (WertExtern : in Integer)
      return Integer;
   
private

   Erhöhen : Boolean;

   CharakterÄnderung : Unbounded_Wide_Wide_String;

end HauptwerteAendern;
