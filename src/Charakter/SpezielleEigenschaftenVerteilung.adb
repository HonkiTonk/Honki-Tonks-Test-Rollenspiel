pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package body SpezielleEigenschaftenVerteilung is

   procedure SpezielleEigenschaftenVerteilung
     (ErhöhenExtern : in Boolean;
      WertExtern : in Integer)
   is begin

      case
        ErhöhenExtern
      is
         when True =>
            if
              Charaktere.Hauptcharakter.SpezielleEigenschaften (WertExtern) = True
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (WertExtern)) & " ist bereits ausgwewählt.");

            elsif
              Charaktere.Hauptcharakter.SonstigeWerte (7) = 0
            then
               Put_Line (Item => "Es sind keine verteilbaren Punkte mehr übrig.");

            else
               Charaktere.Hauptcharakter.SpezielleEigenschaften (WertExtern) := True;
               Charaktere.Hauptcharakter.SonstigeWerte (7) := Charaktere.Hauptcharakter.SonstigeWerte (7) - 1;
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (WertExtern)) & " ist jetzt ausgewählt.");
               Put_Line (Item => "Noch verteilbare Punkte:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (7)));
            end if;


         when False =>
            if
              Charaktere.Hauptcharakter.SpezielleEigenschaften (WertExtern) = False
            then
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (WertExtern)) & " ist nicht ausgewählt.");

            else
               Charaktere.Hauptcharakter.SpezielleEigenschaften (WertExtern) := False;
               Charaktere.Hauptcharakter.SonstigeWerte (7) := Charaktere.Hauptcharakter.SonstigeWerte (7) + 1;
               Put_Line (Item => To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (WertExtern)) & " ist nicht mehr ausgewählt.");
               Put_Line (Item => "Noch verteilbare Punkte:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (7)));
            end if;
      end case;

   end SpezielleEigenschaftenVerteilung;

end SpezielleEigenschaftenVerteilung;
