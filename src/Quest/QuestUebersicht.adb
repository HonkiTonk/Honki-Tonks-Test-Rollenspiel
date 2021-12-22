package body QuestUebersicht is

   procedure QuestÜbersicht (Laufend : in Boolean) is
   begin
      
      case Laufend is
         when True =>
            Put_Line ("Laufende Hauptaufgaben:");
            New_Line;
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               case Charaktere.Hauptcharakter.Quests (Platznummer).ID is
                  when 0 =>
                     null;
                     
                  when others =>
                     if Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = True and Charaktere.Hauptcharakter.Quests (Platznummer).Status < 1000 then
                        Put_Line (Integer'Wide_Image (Platznummer) & " - " & To_Wide_String (Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                     else
                        null;
                     end if;
               end case;
            end loop;
      
            New_Line;
            New_Line;
            New_Line;
            Put_Line ("Laufende Nebenaufgaben:");
            New_Line;      
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               case Charaktere.Hauptcharakter.Quests (Platznummer).ID is
                  when 0 =>
                     null;
                     
                  when others =>
                     if Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = False and Charaktere.Hauptcharakter.Quests (Platznummer).Status < 1000 then
                        Put_Line (Integer'Wide_Image (Platznummer) & " - " & To_Wide_String (Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                     else
                        null;
                     end if;
               end case;
            end loop;
      
         when False =>
            New_Line;
            New_Line;
            New_Line;
            Put_Line ("Abgeschlossene Hauptaufgaben:");
            New_Line;
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               case Charaktere.Hauptcharakter.Quests (Platznummer).ID is
                  when 0 =>
                     null;
                     
                  when others =>
                     if Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = True and Charaktere.Hauptcharakter.Quests (Platznummer).Status > 999 then
                        Put_Line (Integer'Wide_Image (Platznummer) & " - " & To_Wide_String (Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                     else
                        null;
                     end if;
               end case;
            end loop;
      
            New_Line;
            New_Line;
            New_Line;
            Put_Line ("Abgeschlossene Nebenaufgaben:");
            New_Line;
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               case Charaktere.Hauptcharakter.Quests (Platznummer).ID is
                  when 0 =>
                     null;
                     
                  when others =>
                     if Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = False and Charaktere.Hauptcharakter.Quests (Platznummer).Status > 999 then
                        Put_Line (Integer'Wide_Image (Platznummer) & " - " & To_Wide_String (Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                     else
                        null;
                     end if;
               end case;
            end loop;
      end case;
      
   end QuestÜbersicht;

end QuestUebersicht;
