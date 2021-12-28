with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
  
package body StandardBefehle is

   procedure StandardBefehle
   is begin
      
      Put_Line ("Die folgenden Standardbefehle funktionieren innerhalb des laufenden Spiels:");
      StandardBefehleSchleife:
      for I in StandardBefehleNamen'Range loop
         
         if
           I mod 6 = 5
         then
            Put (To_Wide_String (StandardBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 4
         then
            Put (To_Wide_String (StandardBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 3
         then
            Put (To_Wide_String (StandardBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 2
         then
            Put (To_Wide_String (StandardBefehleNamen (I)) & "     ");
            
         elsif
           I mod 6 = 1
         then
            Put (To_Wide_String (StandardBefehleNamen (I)) & "     ");
            
         else
            Put_Line (To_Wide_String (StandardBefehleNamen (I)));
         end if;
         
      end loop StandardBefehleSchleife;

      New_Line;
      
   end StandardBefehle;

end StandardBefehle;
