pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Charaktere;
with EinWort;
with Gegenstanddatenbank;
with WortZuGanzeZahl;
with GesamterBesitz;
with AusruestenWaffen;
with AusruestenRuestungen;

package body Ausruesten is
   
   -- hier mit Tasks beides gleichzeitig prüfen und dann den schnelleren Task den langsameren beenden lassen?
   procedure Ausrüsten
   is begin

      GesamterBesitz.GesamterBesitz;
      Put_Line (Item => "Was möchten sie ausrüsten?");
      Put_Line (Item => "Geben sie den Namen oder die Platznummer ein:");
      GegenstandName := EinWort.EinWort;
      
      AusrüstenSchleife:
      for IDPositionSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           Charaktere.Hauptcharakter.Inventar (IDPositionSchleifenwert).Name = GegenstandName
           and
             Charaktere.Hauptcharakter.Inventar (IDPositionSchleifenwert).ID /= 0
         then
            case
              Charaktere.Hauptcharakter.Inventar (IDPositionSchleifenwert).ID
            is
               when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
                  AusruestenWaffen.AusrüstenWaffen (IDPositionExtern => IDPositionSchleifenwert);
                  return;

               when Gegenstanddatenbank.RüstungenGegenstandListe'Range | Gegenstanddatenbank.HelmGegenstandListe'Range | Gegenstanddatenbank.HandGegenstandListe'Range | Gegenstanddatenbank.SchuhGegenstandListe'Range =>
                  AusruestenRuestungen.AusrüstenRüstungen (IDPositionExtern => IDPositionSchleifenwert);
                  return;
                  
               when others =>
                  Put_Line (Item => "Es können nur Waffen und Rüstungsteile ausgerüstet werden.");
                  return;
            end case;
            
         else
            null;
         end if;
         
      end loop AusrüstenSchleife;
      
      Platznummer := WortZuGanzeZahl.WortZuGanzeZahl (EinWortEingabeStringExtern => GegenstandName);
      
      case
        Platznummer
      is
         when 1 .. 30 =>
            if
              Charaktere.Hauptcharakter.Inventar (Platznummer).ID /= 0
            then
               case
                 Charaktere.Hauptcharakter.Inventar (Platznummer).ID
               is
                  when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
                     AusruestenWaffen.AusrüstenWaffen (IDPositionExtern => Platznummer);
                     return;
                     
                  when Gegenstanddatenbank.RüstungenGegenstandListe'Range | Gegenstanddatenbank.HelmGegenstandListe'Range | Gegenstanddatenbank.HandGegenstandListe'Range | Gegenstanddatenbank.SchuhGegenstandListe'Range =>
                     AusruestenRuestungen.AusrüstenRüstungen (IDPositionExtern => Platznummer);
                     return;
                  
                  when others =>
                     Put_Line (Item => "Es können nur Waffen und Rüstungsteile ausgerüstet werden.");
                     return;
               end case;
               
            else
               Put_Line (Item => "Auf diesem Platz befindet sich kein Gegenstand.");
            end if;
            
         when others =>
            Put_Line (Item => "Diesen Platz gibt es in ihrem Inventar nicht.");
            return;
      end case;
      
   end Ausrüsten;
  
end Ausruesten;
