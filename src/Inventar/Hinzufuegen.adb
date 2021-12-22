package body Hinzufuegen is

   function Hinzufügen (ID, Menge : in Integer) return Boolean is
   begin
      
      HinzufügenSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         if Charaktere.Hauptcharakter.Inventar (A).ID = ID then
            Charaktere.Hauptcharakter.Inventar (A).Menge := Charaktere.Hauptcharakter.Inventar (A).Menge + Menge;
            Put_Line ("Sie nehmen " & To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (A).Name) & " mit.");
            return True;
         else
            null;
         end if;

      end loop HinzufügenSchleife;

      PrüfenAufFreienPlatzSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         if Charaktere.Hauptcharakter.Inventar (A).ID = 0 then
            Charaktere.Hauptcharakter.Inventar (A).ID := ID;
            Charaktere.Hauptcharakter.Inventar (A).Menge := Menge;
            Put_Line ("Sie nehmen " & To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (A).Name) & " mit.");
            return True;
         else
            null;
         end if;

      end loop PrüfenAufFreienPlatzSchleife;

      Put_Line ("Sie können nicht mehr mitnehmen, da ihr Sonstigesinventar voll ist.");
      
      return False;
      
   end Hinzufügen;

end Hinzufuegen;
