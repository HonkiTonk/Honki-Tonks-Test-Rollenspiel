with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

with Charaktere;

package body CharakterDatenblatt is

   procedure AktuelleCharakterwerte
   is begin
      
      Put_Line ("Ihr Charakter hat aktuell folgende Eigenschaften:");
      Put_Line ("Name: " & To_Wide_String (Charaktere.Hauptcharakter.Name));
      Put_Line ("Geschlecht: " & Charaktere.Hauptcharakter.Geschlecht);
      Put_Line ("Aktuelle Lebenspunkte: " & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (3)));
      Put_Line ("Maximale Lebenspunkte: " & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4)));
      Put_Line ("Aktuelle Tragebelastung: " & Float'Wide_Image (Charaktere.Hauptcharakter.Gewicht (1)));
      Put_Line ("Maximale Tragekapazität: " & Float'Wide_Image (Charaktere.Hauptcharakter.Gewicht (2)) & " Kg");

      Put_Line ("Attribute:");
      HauptwerteSchleife:
      for I in Charaktere.Hauptcharakter.Hauptwerte'Range loop
         
         Ada.Wide_Text_IO.Put_Line ("    " & To_Wide_String (Charaktere.HauptwerteNamen (I)) & ": " & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (I)));
         
      end loop HauptwerteSchleife;

      Put_Line ("Fertigkeiten:");
      FertigkeitenSchleife:
      for I in Charaktere.Hauptcharakter.Fertigkeiten'Range loop
         
         Ada.Wide_Text_IO.Put_Line ("    " & To_Wide_String (Charaktere.FertigkeitenNamen (I)) & ": " & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (I)));
         
      end loop FertigkeitenSchleife;

      Put_Line ("Spezielle Eigenschaften:");
      SpezielleEigenschaftenSchleife:
      for I in Charaktere.Hauptcharakter.SpezielleEigenschaften'Range loop
         
         if
           Charaktere.Hauptcharakter.SpezielleEigenschaften (I) = True
         then
            Ada.Wide_Text_IO.Put_Line ("    " & To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (I)) & " ist ausgewählt.");
            
         else
            null;
         end if;
            
      end loop SpezielleEigenschaftenSchleife;

   end AktuelleCharakterwerte;

end CharakterDatenblatt;
