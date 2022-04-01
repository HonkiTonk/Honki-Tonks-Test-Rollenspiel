pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;
with FertigkeitenWerteBerechnen;

package body HauptwerteVerteilung is

   procedure HauptwerteVerteilung
     (ErhöhenExtern : in Boolean;
      WertExtern : in Integer)
   is begin

      case
        ErhöhenExtern
      is
         when True =>
            if
              Charaktere.Hauptcharakter.Hauptwerte (WertExtern) = 10
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.HauptwerteNamen (WertExtern)) & " ist bereits auf Maximum.");

            elsif
              Charaktere.Hauptcharakter.SonstigeWerte (5) = 0
            then
               Put_Line (Item => "Es sind keine verteilbaren Punkte mehr übrig.");

            else
               Charaktere.Hauptcharakter.Hauptwerte (WertExtern) := Charaktere.Hauptcharakter.Hauptwerte (WertExtern) + 1;
               Charaktere.Hauptcharakter.SonstigeWerte (5) := Charaktere.Hauptcharakter.SonstigeWerte (5) - 1;
               FertigkeitenWerteBerechnen.FertigkeitenWerteBerechnen;
            end if;

         when False =>
            if
              Charaktere.Hauptcharakter.Hauptwerte (WertExtern) = 1
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.HauptwerteNamen (WertExtern)) & " ist bereits auf Minimum.");

            else
               Charaktere.Hauptcharakter.Hauptwerte (WertExtern) := Charaktere.Hauptcharakter.Hauptwerte (WertExtern) - 1;
               Charaktere.Hauptcharakter.SonstigeWerte (5) := Charaktere.Hauptcharakter.SonstigeWerte (5) + 1;
               FertigkeitenWerteBerechnen.FertigkeitenWerteBerechnen;
            end if;
      end case;

      Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.HauptwerteNamen (WertExtern)) & " liegt jetzt bei:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));
      Put_Line (Item => "Noch verteilbare Punkte:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (5)));

   end HauptwerteVerteilung;

end HauptwerteVerteilung;
