with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

with Charaktere;

package body ErstellungSicher is

   procedure ErstellungSicher
   is begin
      
      Put_Line ("Ihr Charakter hat jetzt folgende Eigenschaften:");
      Put_Line ("Name: " & To_Wide_String (Charaktere.Hauptcharakter.Name));
      Put_Line ("Geschlecht: " & Charaktere.Hauptcharakter.Geschlecht);
      Put_Line ("Maximale Lebenspunkte: " & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4)));
      Put_Line ("Maximale Tragekapazität: " & Integer'Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (6)) & " Kg");

      Put_Line ("Attribute:");
      HauptwerteSchleife:
      for I in Charaktere.Hauptcharakter.Hauptwerte'Range loop
         
         Put_Line ("    " & To_Wide_String (Charaktere.HauptwerteNamen (I)) & ": " & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (I)));
         
      end loop HauptwerteSchleife;

      Put_Line ("Fertigkeiten:");
      FertigkeitenSchleife:
      for I in Charaktere.Hauptcharakter.Fertigkeiten'Range loop
         
         Put_Line ("    " & To_Wide_String (Charaktere.FertigkeitenNamen (I)) & ": " & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (I)));
         
      end loop FertigkeitenSchleife;

      Put_Line ("Spezielle Eigenschaften:");
      SpezielleEigenschaftenSchleife:
      for I in Charaktere.Hauptcharakter.SpezielleEigenschaften'Range loop
         
         if
           Charaktere.Hauptcharakter.SpezielleEigenschaften (I) = True
         then
            Put_Line ("    " & To_Wide_String (Charaktere.SpezielleEigenschaftenNamen (I)) & " ist ausgewählt.");
            
         else
            null;
         end if;
            
      end loop SpezielleEigenschaftenSchleife;

      Put_Line ("Sind sie damit einverstanden?");
      
   end ErstellungSicher;

end ErstellungSicher;
