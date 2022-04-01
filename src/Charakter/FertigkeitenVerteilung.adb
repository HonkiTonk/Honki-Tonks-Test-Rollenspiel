pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package body FertigkeitenVerteilung is

   procedure FertigkeitenVerteilung
     (ErhöhenExtern : in Boolean;
      WertExtern : in Integer)
   is begin

      case
        ErhöhenExtern
      is
         when True =>
            if
              Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) = 100
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.FertigkeitenNamen (WertExtern)) & " ist bereits auf Maximum.");

            elsif
              Charaktere.Hauptcharakter.SonstigeWerte (6) = 0
            then
               Put_Line (Item => "Es sind keine verteilbaren Punkte mehr übrig.");

            else
               Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) := Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) + 1;
               Charaktere.Hauptcharakter.SonstigeWerte (6) := Charaktere.Hauptcharakter.SonstigeWerte (6) - 1;
            end if;

         when False =>
            if
              Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) = 1
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.FertigkeitenNamen (WertExtern)) & " ist bereits auf Minimum.");

            else
               Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) := Charaktere.Hauptcharakter.Fertigkeiten (WertExtern) - 1;
               Charaktere.Hauptcharakter.SonstigeWerte (6) := Charaktere.Hauptcharakter.SonstigeWerte (6) + 1;
            end if;
      end case;

      Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.FertigkeitenNamen (WertExtern)) & " liegt jetzt bei:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));
      Put_Line (Item => "Noch verteilbare Punkte:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (6)));

   end FertigkeitenVerteilung;

end FertigkeitenVerteilung;
