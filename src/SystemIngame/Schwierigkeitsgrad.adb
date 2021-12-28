with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with SchwierigkeitAuswaehlen;

package body Schwierigkeitsgrad is
   
   function SchwierigkeitAuswählen
     return Integer
   is begin

      Läuft := True;
   
      SchwierigkeitsgradLäuft:
      while Läuft loop
      
         Put_Line ("Auf welchem Schwierigkeitsgrad wollen sie spielen?");
         Put_Line ("Leicht     Mittel     Schwer");
         
         Wert := SchwierigkeitAuswaehlen.SchwierigkeitAuswählen;
         
         case
           Wert
         is
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

      raise Program_Error;

   end SchwierigkeitAuswählen;

end Schwierigkeitsgrad;
