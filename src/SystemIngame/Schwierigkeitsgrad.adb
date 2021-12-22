package body Schwierigkeitsgrad is
   
   function SchwierigkeitAuswählen return Integer is
   begin

      Läuft := True;
   
      SchwierigkeitsgradLäuft:
      while Läuft = True loop
      
         Put_Line ("Auf welchem Schwierigkeitsgrad wollen sie spielen?");
         Put_Line ("Leicht     Mittel     Schwer");
         
         Wert := SchwierigkeitAuswaehlen.SchwierigkeitAuswählen;
         
         case Wert is
            
            when 10 =>
               Schwierigkeit := 1;
               return 1;

            when 11 =>
               Schwierigkeit := 2;
               return 1;
               
            when 12 =>
               Schwierigkeit := 3;
               return 1;

            when -10 =>
               null;

            when others =>
               return Wert;

         end case;
      
      end loop SchwierigkeitsgradLäuft;

      Put_Line ("Sollte niemals aufgerufen werden Schwierigkeitsgrad.SchwierigkeitAuswählen nach Schleife");
      return 0;

   end SchwierigkeitAuswählen;

end Schwierigkeitsgrad;
