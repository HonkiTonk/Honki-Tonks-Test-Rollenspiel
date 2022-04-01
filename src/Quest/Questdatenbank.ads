pragma Warnings (Off, "*array aggregate*");

with Ada.Strings.Wide_Wide_Unbounded; use Ada.Strings.Wide_Wide_Unbounded;

package Questdatenbank is
 
   procedure Questdatenbank
     (QuestIDExtern : in Positive;
      ZustandExtern : in Positive);
   
private
   
   type Quest is record
      
      Hauptquest : Boolean;
      Name : Unbounded_Wide_Wide_String;
      
   end record;

   type QuestListeArray is array (1 .. 2) of Quest;
   QuestListe : constant QuestListeArray := (
                                             -- Hauptquests
                                             1 => (True, To_Unbounded_Wide_Wide_String (Source => "Was ist los?")),
                                    
                                             -- Nebenquests
                                             2 => (False, To_Unbounded_Wide_Wide_String (Source => "Test"))
                                            );

end Questdatenbank;
