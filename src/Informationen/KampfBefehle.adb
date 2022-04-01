pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body KampfBefehle is

   procedure KampfBefehle
   is begin
      
      Put_Line (Item => "Die folgenden Standardbefehle funktionieren innerhalb des Kampfes:");
      
      KampfBefehleSchleife:
      for BefehleSchleifenwert in KampfBefehleNamen'Range loop
         
         if
           BefehleSchleifenwert mod 6 = 5
         then
            Put (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 4
         then
            Put (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 3
         then
            Put (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 2
         then
            Put (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 1
         then
            Put (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         else
            Put_Line (Item => To_Wide_Wide_String (Source => KampfBefehleNamen (BefehleSchleifenwert)));
         end if;
         
      end loop KampfBefehleSchleife;
      
   end KampfBefehle;

end KampfBefehle;
