pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with HauptwerteAendern;
with FertigkeitenAendern;
with Hauptwerte;
with SpezielleEigenschaftenAuswirkungen;
with ErstellungSicher;
with JaNein;
with SpezielleEigenschaftenAendern;
with Charaktere;
-- with Laden;
with StandardAuswahl;
with Nicht;
with Falsch;
with Fertigkeiten;
with SpezielleEigenschaften;
with FertigkeitenErstellungBerechnen;

package body Charaktererstellung is

   function Erstellung
     return Integer
   is begin

      NameAuswahlLäuft := True;
      GeschlechtAuswahlLäuft := True;
      ErstellungLäuft := True;
      SicherLäuft := True;
      HauptwerteLäuft := True;
      FertigkeitenLäuft := True;
      SpezielleEigenschaftenLäuft := True;

      Charaktere.Hauptcharakter.Hauptwerte := (others => 5);
      Charaktere.Hauptcharakter.Fertigkeiten := (others => 0);
      Charaktere.Hauptcharakter.SpezielleEigenschaften := (others => False);
      Charaktere.Hauptcharakter.SonstigeWerte := (0, 1, 0, 0, 10, 100, 2);

      Put_Line (Item => "Willkommen zur Charaktererstellung.");

      ErstellungSchleife:
      while ErstellungLäuft loop

         SicherLäuft := True;

         NameAuswahlSchleife:
         while NameAuswahlLäuft loop

            Put_Line (Item => "Wie soll ihr Charakter heißen?");
            New_Line;

            Charaktere.Hauptcharakter.Name := To_Unbounded_Wide_Wide_String (Source => Get_Line);
            NameAuswahlLäuft := False;

         end loop NameAuswahlSchleife;

         GeschlechtSchleife:
         while GeschlechtAuswahlLäuft loop

            Put_Line (Item => "Ist ihr Charakter männlich oder weiblich?");
            New_Line;

            Wert := StandardAuswahl.StandardAuswahl;

            case
              Wert
            is
               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when 3 =>
                  -- Speichern
                  Nicht.Nicht;

               when 4 =>
                  Put_Line (Item => "M oder Mann für männlich oder F oder Frau für weiblich eingeben.");

               when 5 =>
                  Charaktere.Hauptcharakter.Geschlecht := "Mann";
                  GeschlechtAuswahlLäuft := False;

               when 6 =>
                  Charaktere.Hauptcharakter.Geschlecht := "Frau";
                  GeschlechtAuswahlLäuft := False;

               when others =>
                  null;
            end case;

         end loop GeschlechtSchleife;


         FertigkeitenErstellungBerechnen.FertigkeitenErstellungBerechnen;
         Hauptwerte.Hauptwerte (WertExtern => 0);

         HauptwerteSchleife:
         while HauptwerteLäuft loop

            Wert := HauptwerteAendern.HauptwerteÄndern (WertExtern => 1);

            case
              Wert
            is
               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when 3 =>
                  -- Speichern
                  Nicht.Nicht;

               when 4 =>
                  Hauptwerte.Hauptwerte (WertExtern => 0);

               when 5 =>
                  null;

               when 6 =>
                  HauptwerteLäuft := False;

               when others =>
                  Falsch.Falsch;
            end case;

         end loop HauptwerteSchleife;

         Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (4);
         Fertigkeiten.Fertigkeiten (WertExtern => 0);

         FertigkeitenSchleife:
         while FertigkeitenLäuft loop

            Wert := FertigkeitenAendern.FertigkeitenÄndern (WertExtern => 1);

            case
              Wert
            is
               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when 3 =>
                  -- Speichern
                  Nicht.Nicht;

               when 4 =>
                  Fertigkeiten.Fertigkeiten (WertExtern => 0);

               when 5 =>
                  null;

               when 6 =>
                  FertigkeitenLäuft := False;

               when others =>
                  Falsch.Falsch;
            end case;

         end loop FertigkeitenSchleife;

         SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 0);

         SpezielleEigenschaftenSchleife:
         while SpezielleEigenschaftenLäuft loop

            Wert := SpezielleEigenschaftenAendern.SpezielleEigenschaftenÄndern;

            case
              Wert
            is
               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when 3 =>
                  -- Speichern
                  Nicht.Nicht;

               when 4 =>
                  SpezielleEigenschaften.SpezielleEigenschaften (WertExtern => 0);

               when 5 =>
                  null;

               when 6 =>
                  SpezielleEigenschaftenLäuft := False;

               when others =>
                  null;
            end case;

         end loop SpezielleEigenschaftenSchleife;

         SpezielleEigenschaftenAuswirkungen.SpezielleEigenschaftenAuswirkungen;
         ErstellungSicher.ErstellungSicher;

         SicherSchleife:
         while SicherLäuft loop

            Wert := JaNein.JaNein;

            case
              Wert
            is
               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  -- Laden.Laden;
                  null;

               when 3 =>
                  -- Speichern
                  Nicht.Nicht;

               when 4 =>
                  ErstellungSicher.ErstellungSicher;

               when 5 => -- Ja
                  SicherLäuft := False;
                  ErstellungLäuft := False;
                  return 1;

               when 6 => -- Nein
                  NameAuswahlLäuft := True;
                  GeschlechtAuswahlLäuft := True;
                  ErstellungLäuft := True;
                  HauptwerteLäuft := True;
                  FertigkeitenLäuft := True;
                  SpezielleEigenschaftenLäuft := True;
                  Charaktere.Hauptcharakter.Hauptwerte := (others => 5);
                  Charaktere.Hauptcharakter.Fertigkeiten := (others => 0);
                  Charaktere.Hauptcharakter.SpezielleEigenschaften := (others => False);
                  SicherLäuft := False;
                  Charaktere.Hauptcharakter.SonstigeWerte := (0, 1, 0, 0, 10, 100, 2);

                  Put_Line (Item => "Was möchten sie ändern?");
                  New_Line;
                  New_Line;
                  -- Get_Line;

               when others =>
                  null;
            end case;

         end loop SicherSchleife;
      end loop ErstellungSchleife;

      return 0;

   end Erstellung;

end Charaktererstellung;
