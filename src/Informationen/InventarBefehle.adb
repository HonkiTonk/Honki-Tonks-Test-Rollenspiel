with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

package body InventarBefehle is

   procedure InventarBefehle
   is begin
      
      Put_Line ("Die folgenden Befehle funktionieren innerhalb des Inventars:");
      InventarBefehleSchleife:
      for I in InventarBefehleNamen'Range loop
         
         if
           I mod 6 = 5
         then
            Put (To_Wide_String (InventarBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 4
         then
            Put (To_Wide_String (InventarBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 3
         then
            Put (To_Wide_String (InventarBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 2
         then
            Put (To_Wide_String (InventarBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 1
         then
            Put (To_Wide_String (InventarBefehleNamen (I)) & "     ");
            
         else
            Put_Line (To_Wide_String (InventarBefehleNamen (I)));
         end if;
         
      end loop InventarBefehleSchleife;

      New_Line;
      
   end InventarBefehle;

end InventarBefehle;
