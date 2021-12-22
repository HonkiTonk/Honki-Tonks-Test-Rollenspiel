package body Karten is
   
   procedure Anzeige is
   begin
      
      Y_AchsenSchleife:
      for Y in KartenArray'Range (2) loop
         X_AchsenSchleife:
         for X in KartenArray'Range (3) loop
            if GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).XPosition = X and GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition = Y then
               Put (GlobaleVariablen.CharakterGrafik);
            elsif Karte (GlobaleVariablen.Ort, Y, X) = -1 then
               New_Line;
               exit X_AchsenSchleife;
            elsif Karte (GlobaleVariablen.Ort, Y, X) = -2 then
               New_Line;
               exit Y_AchsenSchleife;
            else                  
               Put (EinrichtungDatenbank.EinrichtungListe (Karte (GlobaleVariablen.Ort, Y, X)).Anzeige);
               if X = KartenArray'Last (3) then
                  New_Line;
               else
                  null;
               end if;
            end if;
         end loop X_AchsenSchleife;
      end loop Y_AchsenSchleife;
      
   end Anzeige;
   
end Karten;
