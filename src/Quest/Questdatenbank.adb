pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body Questdatenbank is

   procedure Questdatenbank
     (QuestIDExtern : in Positive;
      ZustandExtern : in Positive)
   is begin
      
      case
        QuestIDExtern
      is
         when 1 =>
            Put_Line (Item => "Gerade bin ich im Schlafsaal meines Stützpunktes aufgewacht.");
            Put_Line (Item => "Merkwürdigerweise ist keiner meiner Kameraden hier, obwohl es früher Morgen ist und kein Alarmzustand herrscht.");
            Put_Line (Item => "Aus der Ferne höre ich merkwürdige Geräusche. Möglicherweise ein Feuergefecht?");
            Put_Line (Item => "Irgendetwas stimmt hier nicht, ich sollte mich vorsichtig umsehen.");
            
            New_Line;
      
            if
              ZustandExtern > 1
            then
               Put_Line (Item => "Im Gang vor meinem Schlafsaal befinden sich mehrere mir unbekannte Personen.");
               Put_Line (Item => "Sie starren merkwürdigerweise nur stumpf die Decke an und scheinen mich gar nicht zu bemerken.");
               
            else
               null;
            end if;
            
            New_Line;
            
            if
              ZustandExtern > 2
            then
               Put_Line (Item => "Als ich die komischen Personen ansprach griffen sie mich an.");
               Put_Line (Item => "Glücklicherweise konnte ich sie töten.");
               Put_Line (Item => "Ist das hier etwa ein Angriff? Ich muss sofort jemanden finden der Bescheid weiß.");
               
            else
               null;
            end if;
      
            New_Line;
            
            if
              ZustandExtern > 999
            then
               Put_Line (Item => "Auftrag erledigt.");
               
            else
               null;
            end if;
            
         when 2 =>
            null;
            
         when others =>
            raise Program_Error;
      end case;
      
   end Questdatenbank;

end Questdatenbank;
