pragma Warnings (Off, "*array aggregate*");

with Nicht;
with ImQuest;

package body Quest is

   function QuestÜbersicht
     return Integer
   is begin
      
      Läuft := True;
      
      QuestSchleife:
      while Läuft loop
         
         -- Informationen.QuestBefehle;

         Wert := ImQuest.ImQuest;
         
         case
           Wert
         is
            when -1 .. 2 =>
               return Wert;
               
            when 3 =>
               Nicht.Nicht;
               
            when others =>
               null;
         end case;
      
      end loop QuestSchleife;
      
      raise Program_Error;
      
   end QuestÜbersicht;
   
   
   
   function Quest
     return Integer
   is begin
      
      return 0;
      
   end Quest;

end Quest;
