package body GesamterBesitz is

   procedure GesamterBesitz is
   begin

      InventarAußenSchleife:
      for A in Charaktere.Hauptcharakter.Inventar'Range loop
         case Charaktere.Hauptcharakter.Inventar (A).ID is
            when 0 =>
               Put_Line (Integer'Wide_Image (A) & ". Platz: Nichts");
                         
            when Gegenstanddatenbank.SonstigesGegenstandListe'Range =>
               SonstigeGegenstandSchleife:
               for B in Gegenstanddatenbank.SonstigesGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.SonstigesGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.SonstigesGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit SonstigeGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop SonstigeGegenstandSchleife;

            when Gegenstanddatenbank.HeilGegenstandListe'Range =>
               HeilGegenstandSchleife:
               for B in Gegenstanddatenbank.HeilGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.HeilGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.HeilGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit HeilGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop HeilGegenstandSchleife;

            when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
               WaffenGegenstandSchleife:
               for B in Gegenstanddatenbank.WaffenGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.WaffenGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.WaffenGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit WaffenGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop WaffenGegenstandSchleife;

            when Gegenstanddatenbank.RüstungenGegenstandListe'Range =>
               RüstungenGegenstandSchleife:
               for B in Gegenstanddatenbank.RüstungenGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.RüstungenGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.RüstungenGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit RüstungenGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop RüstungenGegenstandSchleife;

            when Gegenstanddatenbank.QuestGegenstandListe'Range =>
               QuestGegenstandSchleife:
               for B in Gegenstanddatenbank.QuestGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.QuestGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.QuestGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit QuestGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop QuestGegenstandSchleife;

            when Gegenstanddatenbank.KampfGegenstandListe'Range =>
               KampfGegenstandSchleife:
               for B in Gegenstanddatenbank.KampfGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.KampfGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.KampfGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit KampfGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop KampfGegenstandSchleife;

            when Gegenstanddatenbank.HelmGegenstandListe'Range =>
               HelmGegenstandSchleife:
               for B in Gegenstanddatenbank.HelmGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.HelmGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.HelmGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit HelmGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop HelmGegenstandSchleife;

            when Gegenstanddatenbank.HandGegenstandListe'Range =>
               HandGegenstandSchleife:
               for B in Gegenstanddatenbank.HandGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.HandGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.HandGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit HandGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop HandGegenstandSchleife;

            when Gegenstanddatenbank.SchuhGegenstandListe'Range =>
               SchuhGegenstandSchleife:
               for B in Gegenstanddatenbank.SchuhGegenstandListe'Range loop
            
                  if Charaktere.Hauptcharakter.Inventar (A).ID = Gegenstanddatenbank.SchuhGegenstandListe (B).ID then
                     Put_Line (Integer'Wide_Image (A) & ". Platz: " & To_Wide_String (Gegenstanddatenbank.SchuhGegenstandListe (B).Name) & "     Menge:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Inventar (A).Menge));
                     exit SchuhGegenstandSchleife;
                  else
                     null;
                  end if;
               end loop SchuhGegenstandSchleife;

            when others =>
               Put_Line ("Sollte niemals aufgerufen werden, GesamterBesitz.GesamterBesitz when others =>.");

         end case;

      end loop InventarAußenSchleife;
      
   end GesamterBesitz;
   
end GesamterBesitz;
