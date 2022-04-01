pragma Warnings (Off, "*array aggregate*");

with Charaktere;
with Gegenstanddatenbank;

package body AusruestenRuestungen is

   procedure AusrüstenRüstungen
     (IDPositionExtern : in Integer)
   is begin
      
      case
        Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID
      is
         when Gegenstanddatenbank.HelmGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (1);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (1) := Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID;
            Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.RüstungenGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (2);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (2) := Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID;
            Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.HandGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (3);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (3) := Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID;
            Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID := ZwischenspeicherID;
            
         when Gegenstanddatenbank.SchuhGegenstandListe'Range =>
            ZwischenspeicherID := Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (4);
            Charaktere.Hauptcharakter.RüstungsteileAusgerüstet (4) := Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID;
            Charaktere.Hauptcharakter.Inventar (IDPositionExtern).ID := ZwischenspeicherID;
            
         when others =>
            raise Program_Error;
      end case;
      
   end AusrüstenRüstungen;

end AusruestenRuestungen;
