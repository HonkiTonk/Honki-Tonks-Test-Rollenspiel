pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
  
package body StandardBefehle is

   procedure StandardBefehle
   is begin
      
      Put_Line (Item => "Die folgenden Standardbefehle funktionieren innerhalb des laufenden Spiels:");
      
      StandardBefehleSchleife:
      for BefehleSchleifenwert in StandardBefehleNamen'Range loop
         
         if
           BefehleSchleifenwert mod 6 = 5
         then
            Put (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 4
         then
            Put (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 3
         then
            Put (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 2
         then
            Put (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         elsif
           BefehleSchleifenwert mod 6 = 1
         then
            Put (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)) & "     ");
            
         else
            Put_Line (Item => To_Wide_Wide_String (Source => StandardBefehleNamen (BefehleSchleifenwert)));
         end if;
         
      end loop StandardBefehleSchleife;

      New_Line;
      
   end StandardBefehle;

end StandardBefehle;
