with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;
with Ada.Strings.Wide_Unbounded; use Ada.Strings.Wide_Unbounded;

package Questdatenbank is
 
   procedure Questdatenbank
     (QuestID : in Integer;
      Zustand : in Integer);
   
private
   
   type Quest is record
      
      Hauptquest : Boolean;
      Name : Unbounded_Wide_String;
      
   end record;

   type QuestListeArray is array (1 .. 2) of Quest;
   QuestListe : constant QuestListeArray := ((True, To_Unbounded_Wide_String ("Was ist los?")), -- Hauptquests
                                    
                                             -- Nebenquests
                                             (False, To_Unbounded_Wide_String ("Test")));

end Questdatenbank;
