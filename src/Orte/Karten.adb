pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with EinrichtungDatenbank;
with GlobaleVariablen;

package body Karten is
   
   procedure Anzeige
   is begin
      
      YAchsenSchleife:
      for YAchsenSchleifenwert in KartenArray'Range (2) loop
         XAchsenSchleife:
         for XAchsenSchleifenwert in KartenArray'Range (3) loop
            
            if
              GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).XPosition = XAchsenSchleifenwert
              and
                GlobaleVariablen.CharakterPosition (GlobaleVariablen.Ort).YPosition = YAchsenSchleifenwert
            then
               Put (Item => GlobaleVariablen.CharakterGrafik);
               
            elsif
              Karte (GlobaleVariablen.Ort, YAchsenSchleifenwert, XAchsenSchleifenwert) = -1
            then
               New_Line;
               exit XAchsenSchleife;
               
            elsif
              Karte (GlobaleVariablen.Ort, YAchsenSchleifenwert, XAchsenSchleifenwert) = -2
            then
               New_Line;
               exit YAchsenSchleife;
               
            else                  
               Put (Item => EinrichtungDatenbank.EinrichtungListe (Karte (GlobaleVariablen.Ort, YAchsenSchleifenwert, XAchsenSchleifenwert)).Anzeige);
               if
                 XAchsenSchleifenwert = KartenArray'Last (3)
               then
                  New_Line;
                  
               else
                  null;
               end if;
            end if;
            
         end loop XAchsenSchleife;
      end loop YAchsenSchleife;
      
   end Anzeige;
   
end Karten;
