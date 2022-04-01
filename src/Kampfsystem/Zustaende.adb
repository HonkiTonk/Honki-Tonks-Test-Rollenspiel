pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Charaktere;

package body Zustaende is

   procedure ZustandErzeugt
     (ZustandExtern : in Integer)
   is begin
      
      if
        Charaktere.Hauptcharakter.Zustände (ZustandExtern) /= 0
      then
         Put_Line (Item => "Der Feind verursacht " & To_Wide_Wide_String (Source => Zustände2 (ZustandExtern)) & ". Aber sie sind bereits " & To_Wide_Wide_String (Source => Zustände (ZustandExtern)));
         
      else
         Put_Line (Item => "Der Feind verursacht " & To_Wide_Wide_String (Source => Zustände2 (ZustandExtern)));
         Charaktere.Hauptcharakter.Zustände (ZustandExtern) := -ZustandExtern;
      end if;
      
   end ZustandErzeugt;

end Zustaende;
