with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Charaktere;

package body Zustaende is

   procedure ZustandErzeugt
     (Zustand : in Integer)
   is begin
      
      if
        Charaktere.Hauptcharakter.Zustände (Zustand) /= 0
      then
         Put_Line ("Der Feind verursacht " & To_Wide_String (Zustände2 (Zustand)) & ". Aber sie sind bereits " & To_Wide_String (Zustände (Zustand)));
         
      else
         Put_Line ("Der Feind verursacht " & To_Wide_String (Zustände2 (Zustand)));
         Charaktere.Hauptcharakter.Zustände (Zustand) := -Zustand;
      end if;
      
   end ZustandErzeugt;

end Zustaende;
