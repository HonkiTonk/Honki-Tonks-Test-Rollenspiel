package body KampfBefehle is

   procedure KampfBefehle is
   begin
      
      Put_Line ("Die folgenden Standardbefehle funktionieren innerhalb des Kampfes:");
      KampfBefehleSchleife:
      for I in KampfBefehleNamen'Range loop
         if I mod 6 = 5 then
            Put (To_Wide_String (KampfBefehleNamen (I)) & "     ");
         elsif I mod 6 = 4 then
            Put (To_Wide_String (KampfBefehleNamen (I)) & "     ");
         elsif I mod 6 = 3 then
            Put (To_Wide_String (KampfBefehleNamen (I)) & "     ");
         elsif I mod 6 = 2 then
            Put (To_Wide_String (KampfBefehleNamen (I)) & "     ");
         elsif I mod 6 = 1 then
            Put (To_Wide_String (KampfBefehleNamen (I)) & "     ");
         else
            Put_Line (To_Wide_String (KampfBefehleNamen (I)));
         end if;
      end loop KampfBefehleSchleife;
      
   end KampfBefehle;

end KampfBefehle;
