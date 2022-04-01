pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Charaktere;
with Gegenstanddatenbank;

package body GesamterBesitz is

   procedure GesamterBesitz
   is begin

      InventarAußenSchleife:
      for InventarSchleifenwert in Charaktere.Hauptcharakter.Inventar'Range loop
         
         case
           Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID
         is
            when 0 =>
               Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: Nichts");
                         
            when Gegenstanddatenbank.SonstigesGegenstandListe'Range =>
               SonstigeGegenstandSchleife:
               for SonstigesSchleifenwert in Gegenstanddatenbank.SonstigesGegenstandListe'Range loop
                  
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.SonstigesGegenstandListe (SonstigesSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SonstigesGegenstandListe (SonstigesSchleifenwert).Name)
                               & "     Menge:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit SonstigeGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop SonstigeGegenstandSchleife;

            when Gegenstanddatenbank.HeilGegenstandListe'Range =>
               HeilGegenstandSchleife:
               for HeilSchleifenwert in Gegenstanddatenbank.HeilGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.HeilGegenstandListe (HeilSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HeilGegenstandListe (HeilSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit HeilGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop HeilGegenstandSchleife;

            when Gegenstanddatenbank.WaffenGegenstandListe'Range =>
               WaffenGegenstandSchleife:
               for WaffenSchleifenwert in Gegenstanddatenbank.WaffenGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.WaffenGegenstandListe (WaffenSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.WaffenGegenstandListe (WaffenSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit WaffenGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop WaffenGegenstandSchleife;

            when Gegenstanddatenbank.RüstungenGegenstandListe'Range =>
               RüstungenGegenstandSchleife:
               for RüstungSchleifenwert in Gegenstanddatenbank.RüstungenGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.RüstungenGegenstandListe (RüstungSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.RüstungenGegenstandListe (RüstungSchleifenwert).Name)
                               & "     Menge:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit RüstungenGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop RüstungenGegenstandSchleife;

            when Gegenstanddatenbank.QuestGegenstandListe'Range =>
               QuestGegenstandSchleife:
               for QuestSchleifenwert in Gegenstanddatenbank.QuestGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.QuestGegenstandListe (QuestSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.QuestGegenstandListe (QuestSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit QuestGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop QuestGegenstandSchleife;

            when Gegenstanddatenbank.KampfGegenstandListe'Range =>
               KampfGegenstandSchleife:
               for KampfSchleifenwert in Gegenstanddatenbank.KampfGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.KampfGegenstandListe (KampfSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.KampfGegenstandListe (KampfSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit KampfGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop KampfGegenstandSchleife;

            when Gegenstanddatenbank.HelmGegenstandListe'Range =>
               HelmGegenstandSchleife:
               for HelmSchleifenwert in Gegenstanddatenbank.HelmGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.HelmGegenstandListe (HelmSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HelmGegenstandListe (HelmSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit HelmGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop HelmGegenstandSchleife;

            when Gegenstanddatenbank.HandGegenstandListe'Range =>
               HandGegenstandSchleife:
               for HandSchleifenwert in Gegenstanddatenbank.HandGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.HandGegenstandListe (HandSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.HandGegenstandListe (HandSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit HandGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop HandGegenstandSchleife;

            when Gegenstanddatenbank.SchuhGegenstandListe'Range =>
               SchuhGegenstandSchleife:
               for SchuhSchleifenwert in Gegenstanddatenbank.SchuhGegenstandListe'Range loop
            
                  if
                    Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).ID = Gegenstanddatenbank.SchuhGegenstandListe (SchuhSchleifenwert).ID
                  then
                     Put_Line (Item => Integer'Wide_Wide_Image (InventarSchleifenwert) & ". Platz: " & To_Wide_Wide_String (Source => Gegenstanddatenbank.SchuhGegenstandListe (SchuhSchleifenwert).Name) & "     Menge:"
                               & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Inventar (InventarSchleifenwert).Menge));
                     exit SchuhGegenstandSchleife;
                     
                  else
                     null;
                  end if;
                  
               end loop SchuhGegenstandSchleife;

            when others =>
               raise Program_Error;
         end case;

      end loop InventarAußenSchleife;
      
   end GesamterBesitz;
   
end GesamterBesitz;
