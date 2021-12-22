package body Schlafen is

   procedure Schlafen is
   begin
      
      SchlafenSchleife:
      while SchlafenLäuft = True loop
        
         Put_Line ("Wie lange möchten sie schlafen?");
         Put_Line ("Bis Morgen, Mittag, Abend, Mitternacht oder Gar nicht?");

         Wert := ImAusruhen.ImAusruhen;
         
         case Wert is
            
            when 0 =>
               Zeit.UhrzeitNutzer (0, Wert);

            when 1 .. 4 =>
               Zeit.UhrzeitNutzer (0, Wert);
               Put_Line ("Sie schlafen.");
               SchlafenLäuft := False;

            when 5 =>
               Put_Line ("Sie schlafen nicht.");
               SchlafenLäuft := False;

            when others =>
               null;

         end case;
            
      end loop SchlafenSchleife;
      
   end Schlafen;

end Schlafen;
