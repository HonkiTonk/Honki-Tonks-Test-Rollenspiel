package body Charaktererstellung is

   function Erstellung return Integer is
   begin

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

      Put_Line ("Willkommen zur Charaktererstellung.");

      ErstellungSchleife:
      while ErstellungLäuft = True loop

         SicherLäuft := True;

         NameAuswahlSchleife:
         while NameAuswahlLäuft = True loop

            Put_Line ("Wie soll ihr Charakter heißen?");
            New_Line;

            Charaktere.Hauptcharakter.Name := To_Unbounded_Wide_String (Ada.Wide_Text_IO.Get_Line);
            NameAuswahlLäuft := False;

         end loop NameAuswahlSchleife;

         GeschlechtSchleife:
         while GeschlechtAuswahlLäuft = True loop

            Put_Line ("Ist ihr Charakter männlich oder weiblich?");
            New_Line;

            Wert := StandardAuswahl.StandardAuswahl;

            case Wert is

               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  null;--Laden.Laden;

               when 3 =>
                  Nicht.Nicht; -- Speichern

               when 4 =>
                  Put_Line ("M oder Mann für männlich oder F oder Frau für weiblich eingeben.");

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
         Hauptwerte.Hauptwerte (0);

         HauptwerteSchleife:
         while HauptwerteLäuft = True loop

            Wert := HauptwerteAendern.HauptwerteÄndern (1);

            case Wert is

               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  null;--Laden.Laden;

               when 3 =>
                  Nicht.Nicht; -- Speichern

               when 4 =>
                  Hauptwerte.Hauptwerte (0);

               when 5 =>
                  null;

               when 6 =>
                  HauptwerteLäuft := False;

               when others =>
                  Falsch.Falsch;

            end case;

         end loop HauptwerteSchleife;

         Charaktere.Hauptcharakter.SonstigeWerte (3) := Charaktere.Hauptcharakter.SonstigeWerte (4);
         Fertigkeiten.Fertigkeiten (0);

         FertigkeitenSchleife:
         while FertigkeitenLäuft = True loop

            Wert := FertigkeitenAendern.FertigkeitenÄndern (1);

            case Wert is

               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  null;--Laden.Laden;

               when 3 =>
                  Nicht.Nicht; -- Speichern

               when 4 =>
                  Fertigkeiten.Fertigkeiten (0);

               when 5 =>
                  null;

               when 6 =>
                  FertigkeitenLäuft := False;

               when others =>
                  Falsch.Falsch;

            end case;

         end loop FertigkeitenSchleife;

         SpezielleEigenschaften.SpezielleEigenschaften (0);

         SpezielleEigenschaftenSchleife:
         while SpezielleEigenschaftenLäuft = True loop

            Wert := SpezielleEigenschaftenAendern.SpezielleEigenschaftenÄndern (1);

            case Wert is

               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  null;--Laden.Laden;

               when 3 =>
                  Nicht.Nicht; -- Speichern

               when 4 =>
                  SpezielleEigenschaften.SpezielleEigenschaften (0);

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
         while SicherLäuft = True loop

            Wert := JaNein.JaNein;

            case Wert is

               when -1 | 0 =>
                  return Wert;

               when 2 =>
                  null;--Laden.Laden;

               when 3 =>
                  Nicht.Nicht; -- Speichern

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

                  Put_Line ("Was möchten sie ändern?");
                  Put_Line ("");
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
