pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;
with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

with Questdatenbank;
with Charaktere;

package body QuestUebersicht is

   procedure QuestÜbersicht
     (LaufendExtern : in Boolean)
   is begin
      
      case
        LaufendExtern
      is
         when True =>
            Put_Line (Item => "Laufende Hauptaufgaben:");
            New_Line;
            
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               
               case
                 Charaktere.Hauptcharakter.Quests (Platznummer).ID
               is
                  when 0 =>
                     null;
                     
                  when others =>
                     if
                       Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = True
                       and
                         Charaktere.Hauptcharakter.Quests (Platznummer).Status < 1000
                     then
                        Put_Line (Item => Integer'Wide_Wide_Image (Platznummer) & " - " & To_Wide_Wide_String (Source => Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                        
                     else
                        null;
                     end if;
               end case;
               
            end loop;
      
            New_Line;
            New_Line;
            New_Line;
            Put_Line (Item => "Laufende Nebenaufgaben:");
            New_Line;
            
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               
               case
                 Charaktere.Hauptcharakter.Quests (Platznummer).ID
               is
                  when 0 =>
                     null;
                     
                  when others =>
                     if
                       Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = False
                       and
                         Charaktere.Hauptcharakter.Quests (Platznummer).Status < 1000
                     then
                        Put_Line (Item => Integer'Wide_Wide_Image (Platznummer) & " - " & To_Wide_Wide_String (Source => Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                        
                     else
                        null;
                     end if;
               end case;
               
            end loop;
      
         when False =>
            New_Line;
            New_Line;
            New_Line;
            Put_Line (Item => "Abgeschlossene Hauptaufgaben:");
            New_Line;
            
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               
               case
                 Charaktere.Hauptcharakter.Quests (Platznummer).ID
               is
                  when 0 =>
                     null;
                     
                  when others =>
                     if
                       Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = True
                       and
                         Charaktere.Hauptcharakter.Quests (Platznummer).Status > 999
                     then
                        Put_Line (Item => Integer'Wide_Wide_Image (Platznummer) & " - " & To_Wide_Wide_String (Source => Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                        
                     else
                        null;
                     end if;
               end case;
               
            end loop;
      
            New_Line;
            New_Line;
            New_Line;
            Put_Line (Item => "Abgeschlossene Nebenaufgaben:");
            New_Line;
            
            for Platznummer in Charaktere.Hauptcharakter.Quests'Range loop
               
               case
                 Charaktere.Hauptcharakter.Quests (Platznummer).ID
               is
                  when 0 =>
                     null;
                     
                  when others =>
                     if
                       Questdatenbank.QuestListe (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Hauptquest = False
                       and
                         Charaktere.Hauptcharakter.Quests (Platznummer).Status > 999
                     then
                        Put_Line (Item => Integer'Wide_Wide_Image (Platznummer) & " - " & To_Wide_Wide_String (Source => Questdatenbank.Questliste (Charaktere.Hauptcharakter.Quests (Platznummer).ID).Name));
                        
                     else
                        null;
                     end if;
               end case;
               
            end loop;
      end case;
      
   end QuestÜbersicht;

end QuestUebersicht;
