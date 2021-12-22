package body Ausruesten is

   procedure Ausrüsten is -- hier mit Tasks beides gleichzeitig prüfen und dann den schnelleren Task den langsameren beenden lassen?
   begin

      GesamterBesitz.GesamterBesitz;
      Put_Line ("Was möchten sie ausrüsten?");
      Put_Line ("Geben sie den Namen oder die Platznummer ein:");
      GegenstandName := EinWort.EinWort;
      
      AusrüstenSchleife:
      for IDPosition in Charaktere.Hauptcharakter.Inventar'Range loop
         if Charaktere.Hauptcharakter.Inventar (IDPosition).Name = GegenstandName and Charaktere.Hauptcharakter.Inventar (IDPosition).ID /= 0 then
            case Charaktere.Hauptcharakter.Inventar (IDPosition).ID is
               when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
                  AusruestenWaffen.AusrüstenWaffen (IDPosition);
                  return;

               when Gegenstanddatenbank.RüstungenGegenstandListe'Range | Gegenstanddatenbank.HelmGegenstandListe'Range | Gegenstanddatenbank.HandGegenstandListe'Range | Gegenstanddatenbank.SchuhGegenstandListe'Range =>
                  AusruestenRuestungen.AusrüstenRüstungen (IDPosition);
                  return;
                  
               when others =>
                  Put_Line ("Es können nur Waffen und Rüstungsteile ausgerüstet werden.");
                  return;
                  
            end case;
         else
            null;
         end if;
      end loop AusrüstenSchleife;
      
      Platznummer := WortZuGanzeZahl.WortZuGanzeZahl (GegenstandName);
      
      case Platznummer is
         when 1 .. 30 =>
            if Charaktere.Hauptcharakter.Inventar (Platznummer).ID /= 0 then
               case Charaktere.Hauptcharakter.Inventar (Platznummer).ID is
                  when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
                     AusruestenWaffen.AusrüstenWaffen (Platznummer);
                     return;
                     
                  when Gegenstanddatenbank.RüstungenGegenstandListe'Range | Gegenstanddatenbank.HelmGegenstandListe'Range | Gegenstanddatenbank.HandGegenstandListe'Range | Gegenstanddatenbank.SchuhGegenstandListe'Range =>
                     AusruestenRuestungen.AusrüstenRüstungen (Platznummer);
                     return;
                  
                  when others =>
                     Put_Line ("Es können nur Waffen und Rüstungsteile ausgerüstet werden.");
                     return;
               end case;
            else
               Put_Line ("Auf diesem Platz befindet sich kein Gegenstand.");
            end if;
            
         when others =>
            Put_Line ("Diesen Platz gibt es in ihrem Inventar nicht.");
            return;
      end case;
      
   end Ausrüsten;
  
end Ausruesten;
