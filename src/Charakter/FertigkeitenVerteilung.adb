package body FertigkeitenVerteilung is

   procedure FertigkeitenVerteilung (Erhöhen : in Boolean; Wert : in Integer) is
   begin

      case Erhöhen is

         when True =>
            if Charaktere.Hauptcharakter.Fertigkeiten (Wert) = 100 then
               Put_Line (To_Wide_String (Charaktere.FertigkeitenNamen (Wert)) & " ist bereits auf Maximum.");
            elsif Charaktere.Hauptcharakter.SonstigeWerte (6) = 0 then
               Put_Line ("Es sind keine verteilbaren Punkte mehr übrig.");
            else
               Charaktere.Hauptcharakter.Fertigkeiten (Wert) := Charaktere.Hauptcharakter.Fertigkeiten (Wert) + 1;
               Charaktere.Hauptcharakter.SonstigeWerte (6) := Charaktere.Hauptcharakter.SonstigeWerte (6) - 1;
            end if;


         when False =>
            if Charaktere.Hauptcharakter.Fertigkeiten (Wert) = 1 then
               Put_Line (To_Wide_String (Charaktere.FertigkeitenNamen (Wert)) & " ist bereits auf Minimum.");
            else
               Charaktere.Hauptcharakter.Fertigkeiten (Wert) := Charaktere.Hauptcharakter.Fertigkeiten (Wert) - 1;
               Charaktere.Hauptcharakter.SonstigeWerte (6) := Charaktere.Hauptcharakter.SonstigeWerte (6) + 1;
            end if;

      end case;

      Put_Line (To_Wide_String (Charaktere.FertigkeitenNamen (Wert)) & " liegt jetzt bei:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));
      Put_Line ("Noch verteilbare Punkte:" & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (6)));

   end FertigkeitenVerteilung;

end FertigkeitenVerteilung;
