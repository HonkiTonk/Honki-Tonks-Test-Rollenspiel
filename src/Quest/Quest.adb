package body Quest is

   function QuestÜbersicht return Integer is
   begin
      
      Läuft := True;
      
      QuestSchleife:
      while Läuft = True loop
         
         Put_Line ("");
         --Informationen.QuestBefehle;

         Wert := ImQuest.ImQuest;
         
         case Wert is
            when -1 .. 2 =>
               return Wert;
               
            when 3 =>
               Nicht.Nicht;
               
            when others =>
               null;
         end case;
      
      end loop QuestSchleife;
      
      Put_Line ("Sollte niemals aufgerufen werden Quest.QuestÜbersicht nach Schleife.");
      return 0;
      
   end QuestÜbersicht;
   
   
   
   function Quest return Integer is
   begin
      
      return 0;
      
   end Quest;

end Quest;
