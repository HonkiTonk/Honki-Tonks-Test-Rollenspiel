package body FertigkeitenErstellungBerechnen is

   procedure FertigkeitenErstellungBerechnen is
   begin

      HauptwerteSpeicherSchleife:
      for I in HauptwerteSpeicher'Range loop
         HauptwerteSpeicher (I) := Charaktere.Hauptcharakter.Hauptwerte (I);
      end loop HauptwerteSpeicherSchleife;

      -- 1 = Stärke, 2 = Wahrnehmung, 3 = Ausdauer, 4 = Charisma, 5 = Intelligenz, 6 = Beweglichkeit, 7 = Glück
      Charaktere.Hauptcharakter.Fertigkeiten (1) := 5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (3) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6); -- Unbewaffnet
      Charaktere.Hauptcharakter.Fertigkeiten (2) := 5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (3) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6); -- Nahkampfwaffen
      Charaktere.Hauptcharakter.Fertigkeiten (3) := 2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Pistolen
      Charaktere.Hauptcharakter.Fertigkeiten (4) := 3 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Maschinenpistolen
      Charaktere.Hauptcharakter.Fertigkeiten (5) := 2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 7 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Scharfschützengewehre
      Charaktere.Hauptcharakter.Fertigkeiten (6) := 4 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Sturmgewehre
      Charaktere.Hauptcharakter.Fertigkeiten (7) := 5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Schrottflinten
      Charaktere.Hauptcharakter.Fertigkeiten (8) := 5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Schwere Waffen
      Charaktere.Hauptcharakter.Fertigkeiten (9) := 2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2); -- Wurfwaffen
      Charaktere.Hauptcharakter.Fertigkeiten (10) := 3 * Charaktere.Hauptcharakter.Hauptwerte (5); -- Sprengsätze
      Charaktere.Hauptcharakter.Fertigkeiten (11) := 2 * Charaktere.Hauptcharakter.Hauptwerte (2) + 5 * Charaktere.Hauptcharakter.Hauptwerte (5); -- Erste Hilfe
      Charaktere.Hauptcharakter.Fertigkeiten (12) := 5 * Charaktere.Hauptcharakter.Hauptwerte (6); -- Schleichen
      Charaktere.Hauptcharakter.Fertigkeiten (13) := 1 * Charaktere.Hauptcharakter.Hauptwerte (2) + 5 * Charaktere.Hauptcharakter.Hauptwerte (6) + 2 * Charaktere.Hauptcharakter.Hauptwerte (7); -- Stehlen
      Charaktere.Hauptcharakter.Fertigkeiten (14) := 5 * Charaktere.Hauptcharakter.Hauptwerte (2) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6) + 2 * Charaktere.Hauptcharakter.Hauptwerte (7); -- Schlösser Knacken
      Charaktere.Hauptcharakter.Fertigkeiten (15) := 1 * Charaktere.Hauptcharakter.Hauptwerte (2) + 1 * Charaktere.Hauptcharakter.Hauptwerte (6) + 7 * Charaktere.Hauptcharakter.Hauptwerte (7); -- Glücksspiel
      Charaktere.Hauptcharakter.Fertigkeiten (16) := 5 * Charaktere.Hauptcharakter.Hauptwerte (4) + 3 * Charaktere.Hauptcharakter.Hauptwerte (7); -- Handeln
      Charaktere.Hauptcharakter.Fertigkeiten (17) := 5 * Charaktere.Hauptcharakter.Hauptwerte (4) + 3 * Charaktere.Hauptcharakter.Hauptwerte (7); -- Überreden
      Charaktere.Hauptcharakter.Fertigkeiten (18) := 5 * Charaktere.Hauptcharakter.Hauptwerte (5); -- Computer
      Charaktere.Hauptcharakter.Fertigkeiten (19) := 5 * Charaktere.Hauptcharakter.Hauptwerte (5); -- Elektronik

      -- 1 = Aktuelle Erfahrungspunkte, 2 = Aktueller Level, 3 = Aktuelle Lebenspunkte, 4 = Gesamte Lebenspunkte, 5 = Verteilbare Pukte Hauptwerte, 6 = Verteilbare Punkte Fertigkeiten, 7 = Verteilbare Punkte Speziell
      Charaktere.Hauptcharakter.SonstigeWerte (4) := 2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (3);

      -- 1 = Tragen Aktuell, 2 = Tragen Maximum
      Charaktere.Hauptcharakter.Gewicht (2) := Float (10 * Charaktere.Hauptcharakter.Hauptwerte (1));

   end FertigkeitenErstellungBerechnen;

end FertigkeitenErstellungBerechnen;
