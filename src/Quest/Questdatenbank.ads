with Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;
use Ada.Wide_Text_IO, Ada.Strings.Wide_Unbounded;

package Questdatenbank is

   type Quest is record
      
      Hauptquest : Boolean;
      Name : Unbounded_Wide_String;
      
   end record;

   type QuestListeArray is array (1 .. 2) of Quest;
   QuestListe : constant QuestListeArray := ((True, To_Unbounded_Wide_String ("Was ist los?")), -- Hauptquests
                                    
                                    -- Nebenquests
                                    (False, To_Unbounded_Wide_String ("Test")));
   
   procedure Questdatenbank (QuestID, Zustand : in Integer);

end Questdatenbank;
