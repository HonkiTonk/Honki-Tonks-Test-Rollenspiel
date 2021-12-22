package body AusruestenRuestungen is

   procedure AusrüstenRüstungen (IDPosition : in Integer) is
   begin
      
      case Charaktere.Hauptcharakter.Inventar (IDPosition).ID is
         when Gegenstanddatenbank.HelmGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (1);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.RüstungenGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (2);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.HandGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (3);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (3) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.SchuhGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (4);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (4) := Charaktere.Hauptcharakter.Inventar (IDPosition).ID;
            Charaktere.Hauptcharakter.Inventar (IDPosition).ID := ZwischenspeicherID;
            
         when others =>
            Put_Line ("Sollte niemals aufgerufen werden AusruestenRuestungen.AusrüstenRüstungen when others =>");
      end case;
      
   end AusrüstenRüstungen;

end AusruestenRuestungen;
