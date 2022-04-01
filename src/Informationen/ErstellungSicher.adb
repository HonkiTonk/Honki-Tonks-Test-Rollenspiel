pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;

package body ErstellungSicher is

   procedure ErstellungSicher
   is begin
      
      Put_Line (Item => "Ihr Charakter hat jetzt folgende Eigenschaften:");
      Put_Line (Item => "Name: " & To_Wide_Wide_String (Source => Charaktere.Hauptcharakter.Name));
      Put_Line (Item => "Geschlecht: " & Charaktere.Hauptcharakter.Geschlecht);
      Put_Line (Item => "Maximale Lebenspunkte: " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (4)));
      Put_Line (Item => "Maximale Tragekapazität: " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.SonstigeWerte (6)) & " Kg");

      Put_Line (Item => "Attribute:");
      
      HauptwerteSchleife:
      for HauptwerteSchleifenwerte in Charaktere.Hauptcharakter.Hauptwerte'Range loop
         
         Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.HauptwerteNamen (HauptwerteSchleifenwerte)) & ": " & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (HauptwerteSchleifenwerte)));
         
      end loop HauptwerteSchleife;

      Put_Line (Item => "Fertigkeiten:");
      
      FertigkeitenSchleife:
      for FertigkeitenSchleifenwerte in Charaktere.Hauptcharakter.Fertigkeiten'Range loop
         
         Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.FertigkeitenNamen (FertigkeitenSchleifenwerte)) & ": "
                   & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (FertigkeitenSchleifenwerte)));
         
      end loop FertigkeitenSchleife;

      Put_Line (Item => "Spezielle Eigenschaften:");
      
      SpezielleEigenschaftenSchleife:
      for SpezielleEigenschaftenSchleifenwerte in Charaktere.Hauptcharakter.SpezielleEigenschaften'Range loop
         
         if
           Charaktere.Hauptcharakter.SpezielleEigenschaften (SpezielleEigenschaftenSchleifenwerte) = True
         then
            Put_Line (Item => "    " & To_Wide_Wide_String (Source => Charaktere.SpezielleEigenschaftenNamen (SpezielleEigenschaftenSchleifenwerte)) & " ist ausgewählt.");
            
         else
            null;
         end if;
            
      end loop SpezielleEigenschaftenSchleife;

      Put_Line (Item => "Sind sie damit einverstanden?");
      
   end ErstellungSicher;

end ErstellungSicher;
