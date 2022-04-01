pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package body CharakterDatenblatt is

   procedure AktuelleCharakterwerte
   is begin
      
      Put_Line (Item => "Ihr Charakter hat aktuell folgende Eigenschaften:");
      Put_Line (Item => "Name: " & To_Wide_Wide_String (Source => Charaktere.Hauptcharakter.Name));
      Put_Line (Item => "Geschlecht: " & Charaktere.Hauptcharakter.Geschlecht);
      Put_Line (Item => "Aktuelle Lebenspunkte: " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (3)));
      Put_Line (Item => "Maximale Lebenspunkte: " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4)));
      Put_Line (Item => "Aktuelle Tragebelastung: " & Float'Wide_Wide_Image (Charaktere.Hauptcharakter.Gewicht (1)));
      Put_Line (Item => "Maximale Tragekapazität: " & Float'Wide_Wide_Image (Charaktere.Hauptcharakter.Gewicht (2)) & " Kg");

      Put_Line (Item => "Attribute:");
      
      HauptwerteSchleife:
      for HauptwerteSchleifenwert in Charaktere.Hauptcharakter.Hauptwerte'Range loop
         
         Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.HauptwerteNamen (HauptwerteSchleifenwert)) & ": " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (HauptwerteSchleifenwert)));
         
      end loop HauptwerteSchleife;

      Put_Line (Item => "Fertigkeiten:");
      
      FertigkeitenSchleife:
      for FertigkeitenSchleifenwert in Charaktere.Hauptcharakter.Fertigkeiten'Range loop
         
         Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.FertigkeitenNamen (FertigkeitenSchleifenwert)) & ": "
                   & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (FertigkeitenSchleifenwert)));
         
      end loop FertigkeitenSchleife;

      Put_Line (Item => "Spezielle Eigenschaften:");
      
      SpezielleEigenschaftenSchleife:
      for SpezielleEigenschaftenSchleifenwert in Charaktere.Hauptcharakter.SpezielleEigenschaften'Range loop
         
         if
           Charaktere.Hauptcharakter.SpezielleEigenschaften (SpezielleEigenschaftenSchleifenwert) = True
         then
            Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (SpezielleEigenschaftenSchleifenwert)) & " ist ausgewählt.");
            
         else
            null;
         end if;
            
      end loop SpezielleEigenschaftenSchleife;

   end AktuelleCharakterwerte;

end CharakterDatenblatt;
