package body HauptwerteVerteilung is

   procedure HauptwerteVerteilung (Erhöhen : in Boolean; Wert : in Integer) is
   begin

      case Erhöhen is

         when True =>
            if Charaktere.Hauptcharakter.Hauptwerte (Wert) = 10 then
               Put_Line (To_Wide_String (Charaktere.HauptwerteNamen (Wert)) & " ist bereits auf Maximum.");
            elsif Charaktere.Hauptcharakter.SonstigeWerte (5) = 0 then
               Put_Line ("Es sind keine verteilbaren Punkte mehr übrig.");
            else
               Charaktere.Hauptcharakter.Hauptwerte (Wert) := Charaktere.Hauptcharakter.Hauptwerte (Wert) + 1;
               Charaktere.Hauptcharakter.SonstigeWerte (5) := Charaktere.Hauptcharakter.SonstigeWerte (5) - 1;
               FertigkeitenWerteBerechnen.FertigkeitenWerteBerechnen;
            end if;

         when False =>
            if Charaktere.Hauptcharakter.Hauptwerte (Wert) = 1 then
               Put_Line (To_Wide_String (Charaktere.HauptwerteNamen (Wert)) & " ist bereits auf Minimum.");
            else
               Charaktere.Hauptcharakter.Hauptwerte (Wert) := Charaktere.Hauptcharakter.Hauptwerte (Wert) - 1;
               Charaktere.Hauptcharakter.SonstigeWerte (5) := Charaktere.Hauptcharakter.SonstigeWerte (5) + 1;
               FertigkeitenWerteBerechnen.FertigkeitenWerteBerechnen;
            end if;

      end case;

      Put_Line (To_Wide_String (Charaktere.HauptwerteNamen (Wert)) & " liegt jetzt bei:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));
      Put_Line ("Noch verteilbare Punkte:" & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (5)));

   end HauptwerteVerteilung;

end HauptwerteVerteilung;
