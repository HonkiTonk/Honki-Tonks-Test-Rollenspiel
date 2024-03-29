pragma Warnings (Off, "*array aggregate*");

with Charaktere;

package body FertigkeitenWerteBerechnen is

   procedure FertigkeitenWerteBerechnen
   is begin

      -- Unbewaffnet
      Charaktere.Hauptcharakter.Fertigkeiten (1) := (5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (3) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6))
        + (Charaktere.Hauptcharakter.Fertigkeiten (1) - (5 * HauptwerteSpeicher (1) + 2 * HauptwerteSpeicher(3) + 2 * HauptwerteSpeicher (6)));
      -- Nahkampfwaffen
      Charaktere.Hauptcharakter.Fertigkeiten (2) := (5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (3) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6))
        + (Charaktere.Hauptcharakter.Fertigkeiten (2) - (5 * HauptwerteSpeicher (1) + 2 * HauptwerteSpeicher (3) + 2 * HauptwerteSpeicher (6)));
      -- Pistolen
      Charaktere.Hauptcharakter.Fertigkeiten (3) := (2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (3) - (2 * HauptwerteSpeicher (1) + 5 * HauptwerteSpeicher (2)));
      -- Maschinenpistolen
      Charaktere.Hauptcharakter.Fertigkeiten (4) := (3 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (4) - (3 * HauptwerteSpeicher (1) + 5 * HauptwerteSpeicher (2)));
      -- Scharfschützengewehre
      Charaktere.Hauptcharakter.Fertigkeiten (5) := (2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 7 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (5) - (2 * HauptwerteSpeicher (1) + 7 * HauptwerteSpeicher (2)));
      -- Sturmgewehre
      Charaktere.Hauptcharakter.Fertigkeiten (6) := (4 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (6) - (4 * HauptwerteSpeicher (1) + 5 * HauptwerteSpeicher (2)));
      -- Schrottflinten
      Charaktere.Hauptcharakter.Fertigkeiten (7) := (5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (7) - (5 * HauptwerteSpeicher (1) + 2 * HauptwerteSpeicher (2)));
      -- Schwere Waffen
      Charaktere.Hauptcharakter.Fertigkeiten (8) := (5 * Charaktere.Hauptcharakter.Hauptwerte (1) + 2 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (8) - (5 * HauptwerteSpeicher (1) + 2 * HauptwerteSpeicher (2)));
      -- Wurfwaffen
      Charaktere.Hauptcharakter.Fertigkeiten (9) := (2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (2))
        + (Charaktere.Hauptcharakter.Fertigkeiten (9) - (2 * HauptwerteSpeicher (1) + 5 * HauptwerteSpeicher (2)));
      -- Sprengsätze
      Charaktere.Hauptcharakter.Fertigkeiten (10) := (3 * Charaktere.Hauptcharakter.Hauptwerte (5)) + (Charaktere.Hauptcharakter.Fertigkeiten (10) - 3 * HauptwerteSpeicher (5));
      -- Erste Hilfe
      Charaktere.Hauptcharakter.Fertigkeiten (11) := (2 * Charaktere.Hauptcharakter.Hauptwerte (2) + 5 * Charaktere.Hauptcharakter.Hauptwerte (5))
        + (Charaktere.Hauptcharakter.Fertigkeiten (11) - (2 * HauptwerteSpeicher (2) + 5 * HauptwerteSpeicher (5)));
      -- Schleichen
      Charaktere.Hauptcharakter.Fertigkeiten (12) := (5 * Charaktere.Hauptcharakter.Hauptwerte (6)) + (Charaktere.Hauptcharakter.Fertigkeiten (12) - (5 * HauptwerteSpeicher (6)));
      -- Stehlen
      Charaktere.Hauptcharakter.Fertigkeiten (13) := (1 * Charaktere.Hauptcharakter.Hauptwerte (2) + 5 * Charaktere.Hauptcharakter.Hauptwerte (6) + 2 * Charaktere.Hauptcharakter.Hauptwerte (7))
        + (Charaktere.Hauptcharakter.Fertigkeiten (13) - (1 * HauptwerteSpeicher (2) + 5 * HauptwerteSpeicher (6) + 2 * HauptwerteSpeicher (7)));
      -- Schlösser Knacken
      Charaktere.Hauptcharakter.Fertigkeiten (14) := (5 * Charaktere.Hauptcharakter.Hauptwerte (2) + 2 * Charaktere.Hauptcharakter.Hauptwerte (6) + 2 * Charaktere.Hauptcharakter.Hauptwerte (7))
        + (Charaktere.Hauptcharakter.Fertigkeiten (14) - (5 * HauptwerteSpeicher (2) + 2 * HauptwerteSpeicher (6) + 2 * HauptwerteSpeicher (7)));
      -- Glücksspiel
      Charaktere.Hauptcharakter.Fertigkeiten (15) := (1 * Charaktere.Hauptcharakter.Hauptwerte (2) + 1 * Charaktere.Hauptcharakter.Hauptwerte (6) + 7 * Charaktere.Hauptcharakter.Hauptwerte (7))
        + (Charaktere.Hauptcharakter.Fertigkeiten (15) - (1 * HauptwerteSpeicher (2) + 1 * HauptwerteSpeicher (6) + 7 * HauptwerteSpeicher (7)));
      -- Handeln
      Charaktere.Hauptcharakter.Fertigkeiten (16) := (5 * Charaktere.Hauptcharakter.Hauptwerte (4) + 3 * Charaktere.Hauptcharakter.Hauptwerte (7))
        + (Charaktere.Hauptcharakter.Fertigkeiten (16) - (5 * HauptwerteSpeicher (4) + 3 * HauptwerteSpeicher (7)));
      -- Überreden
      Charaktere.Hauptcharakter.Fertigkeiten (17) := (5 * Charaktere.Hauptcharakter.Hauptwerte (4) + 3 * Charaktere.Hauptcharakter.Hauptwerte (7))
        + (Charaktere.Hauptcharakter.Fertigkeiten (17) - (5 * HauptwerteSpeicher (4) + 3 * HauptwerteSpeicher (7)));
      -- Computer
      Charaktere.Hauptcharakter.Fertigkeiten (18) := (5 * Charaktere.Hauptcharakter.Hauptwerte (5)) + (Charaktere.Hauptcharakter.Fertigkeiten (18) - (5 * HauptwerteSpeicher (5)));
      -- Elektronik
      Charaktere.Hauptcharakter.Fertigkeiten (19) := (5 * Charaktere.Hauptcharakter.Hauptwerte (5)) + (Charaktere.Hauptcharakter.Fertigkeiten (19) - (5 * HauptwerteSpeicher (5)));

      -- 1 = Aktuelle Erfahrungspunkte, 2 = Aktueller Level, 3 = Aktuelle Lebenspunkte, 4 = Gesamte Lebenspunkte, 5 = Verteilbare Pukte Hauptwerte, 6 = Verteilbare Punkte Fertigkeiten, 7 = Verteilbare Punkte Speziell
      Charaktere.Hauptcharakter.SonstigeWerte (4) := 2 * Charaktere.Hauptcharakter.Hauptwerte (1) + 5 * Charaktere.Hauptcharakter.Hauptwerte (3);

      -- 1 = Tragen Aktuell, 2 = Tragen Maximum
      Charaktere.Hauptcharakter.Gewicht (2) := Float (10 * Charaktere.Hauptcharakter.Hauptwerte (1));

      HauptwerteSpeicherSchleife:
      for HauptwerteSchleifenwert in HauptwerteSpeicher'Range loop

         HauptwerteSpeicher (HauptwerteSchleifenwert) := Charaktere.Hauptcharakter.Hauptwerte (HauptwerteSchleifenwert);

      end loop HauptwerteSpeicherSchleife;

   end FertigkeitenWerteBerechnen;

end FertigkeitenWerteBerechnen;
