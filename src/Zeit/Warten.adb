pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
  
with Zeit;
with ImAusruhen;

package body Warten is
   
   procedure Warten
   is begin
      
      WartenSchleife:
      while WartenLäuft loop
        
         Put_Line (Item => "Wie lange möchten sie warten?");
         Put_Line (Item => "Bis Morgen, Mittag, Abend, Mitternacht oder Gar nicht?");

         Wert := ImAusruhen.ImAusruhen;
         
         case
           Wert
         is
            when 0 =>
               Zeit.UhrzeitNutzer (ErhöhenStundeExtern => 0,
                                   ErhöhenMinuteExtern => Wert);

            when 1 .. 4 =>
               Zeit.UhrzeitNutzer (ErhöhenStundeExtern => 0,
                                   ErhöhenMinuteExtern => Wert);
               Put_Line (Item => "Sie warten.");
               WartenLäuft := False;

            when 5 =>
               Put_Line (Item => "Sie warten nicht.");
               WartenLäuft := False;

            when others =>
               null;
         end case;
            
      end loop WartenSchleife;
         
   end Warten;

end Warten;
