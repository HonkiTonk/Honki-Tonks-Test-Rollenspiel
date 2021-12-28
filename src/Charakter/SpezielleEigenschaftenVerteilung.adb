with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

with Charaktere;

package body SpezielleEigenschaftenVerteilung is

   procedure SpezielleEigenschaftenVerteilung
     (Erhöhen : in Boolean;
      Wert : in Integer)
   is begin

      case
        Erhöhen
      is
         when True =>
            if
              Charaktere.Hauptcharakter.SpezielleEigenschaften (Wert) = True
            then
               Put_Line (To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (Wert)) & " ist bereits ausgwewählt.");

            elsif
              Charaktere.Hauptcharakter.SonstigeWerte (7) = 0
            then
               Put_Line ("Es sind keine verteilbaren Punkte mehr übrig.");

            else
               Charaktere.Hauptcharakter.SpezielleEigenschaften (Wert) := True;
               Charaktere.Hauptcharakter.SonstigeWerte (7) := Charaktere.Hauptcharakter.SonstigeWerte (7) - 1;
               Put_Line (To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (Wert)) & " ist jetzt ausgewählt.");
               Put_Line ("Noch verteilbare Punkte:" & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (7)));
            end if;


         when False =>
            if
              Charaktere.Hauptcharakter.SpezielleEigenschaften (Wert) = False
            then
               Put_Line (To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (Wert)) & " ist nicht ausgewählt.");

            else
               Charaktere.Hauptcharakter.SpezielleEigenschaften (Wert) := False;
               Charaktere.Hauptcharakter.SonstigeWerte (7) := Charaktere.Hauptcharakter.SonstigeWerte (7) + 1;
               Put_Line (To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (Wert)) & " ist nicht mehr ausgewählt.");
               Put_Line ("Noch verteilbare Punkte:" & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (7)));
            end if;
      end case;

   end SpezielleEigenschaftenVerteilung;

end SpezielleEigenschaftenVerteilung;
