pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;
with Gegenstanddatenbank;

package body Hinzufuegen is

   function Hinzufügen
     (IDExtern : in Integer;
      MengeExtern : in Integer)
      return Boolean
   is begin
      
      HinzufügenSchleife:
      for HinzufügenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           Charaktere.Hauptcharakter.Inventar (HinzufügenSchleifenwert).ID = IDExtern
         then
            Charaktere.Hauptcharakter.Inventar (HinzufügenSchleifenwert).Menge := Charaktere.Hauptcharakter.Inventar (HinzufügenSchleifenwert).Menge + MengeExtern;
            Put_Line (Item => "Sie nehmen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (HinzufügenSchleifenwert).Name) & " mit.");
            return True;
            
         else
            null;
         end if;

      end loop HinzufügenSchleife;

      PrüfenAufFreienPlatzSchleife:
      for PrüfenSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         if
           Charaktere.Hauptcharakter.Inventar (PrüfenSchleifenwert).ID = 0
         then
            Charaktere.Hauptcharakter.Inventar (PrüfenSchleifenwert).ID := IDExtern;
            Charaktere.Hauptcharakter.Inventar (PrüfenSchleifenwert).Menge := MengeExtern;
            Put_Line (Item => "Sie nehmen " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (PrüfenSchleifenwert).Name) & " mit.");
            return True;
            
         else
            null;
         end if;

      end loop PrüfenAufFreienPlatzSchleife;

      Put_Line (Item => "Sie können nicht mehr mitnehmen, da ihr Sonstigesinventar voll ist.");
      
      return False;
      
   end Hinzufügen;

end Hinzufuegen;
