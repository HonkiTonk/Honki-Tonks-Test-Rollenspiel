pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body InventarBefehle is

   procedure InventarBefehle
   is begin
      
      Put_Line (Item => "Die folgenden Befehle funktionieren innerhalb des Inventars:");
      
      InventarBefehleSchleife:
      for BefehleSchleifenwert in InventarBefehleNamen'Range loop
         
         if
           BefehleSchleifenwert mod 6 = 5
         then
            Put (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 4
         then
            Put (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 3
         then
            Put (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 2
         then
            Put (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 1
         then
            Put (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         else
            Put_Line (Item => To_Wide_Wide_String (Source => InventarBefehleNamen (BefehleSchleifenwert)));
         end if;
         
      end loop InventarBefehleSchleife;

      New_Line;
      
   end InventarBefehle;

end InventarBefehle;
