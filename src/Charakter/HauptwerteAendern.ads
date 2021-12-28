with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package HauptwerteAendern is
   
   function HauptwerteÄndern
     (Wert : in Integer)
      return Integer;
   
private

   Erhöhen : Boolean;

   CharakterÄnderung : Unbounded_Wide_String;

end HauptwerteAendern;
