package body Warten is
   
   procedure Warten is
   begin
      
      WartenSchleife:
      while WartenLäuft = True loop
        
         Put_Line ("Wie lange möchten sie warten?");
         Put_Line ("Bis Morgen, Mittag, Abend, Mitternacht oder Gar nicht?");

         Wert := ImAusruhen.ImAusruhen;
         
         case Wert is
            
            when 0 =>
               Zeit.UhrzeitNutzer (0, Wert);

            when 1 .. 4 =>
               Zeit.UhrzeitNutzer (0, Wert);
               Put_Line ("Sie warten.");
               WartenLäuft := False;

            when 5 =>
               Put_Line ("Sie warten nicht.");
               WartenLäuft := False;

            when others =>
               null;

         end case;
            
      end loop WartenSchleife;
         
   end Warten;

end Warten;
