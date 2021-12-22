package body Questdatenbank is

   procedure Questdatenbank (QuestID, Zustand : in Integer) is
   begin
      
      case QuestID is
         when 1 =>
            Put_Line ("Gerade bin ich im Schlafsaal meines Stützpunktes aufgewacht.");
            Put_Line ("Merkwürdigerweise ist keiner meiner Kameraden hier, obwohl es früher Morgen ist und kein Alarmzustand herrscht.");
            Put_Line ("Aus der Ferne höre ich merkwürdige Geräusche. Möglicherweise ein Feuergefecht?");
            Put_Line ("Irgendetwas stimmt hier nicht, ich sollte mich vorsichtig umsehen.");
            
            New_Line;
      
            if Zustand > 1 then
               Put_Line ("Im Gang vor meinem Schlafsaal befinden sich mehrere mir unbekannte Personen.");
               Put_Line ("Sie starren merkwürdigerweise nur stumpf die Decke an und scheinen mich gar nicht zu bemerken.");
            else
               null;
            end if;
            
            New_Line;
            
            if Zustand > 2 then
               Put_Line ("Als ich die komischen Personen ansprach griffen sie mich an.");
               Put_Line ("Glücklicherweise konnte ich sie töten.");
               Put_Line ("Ist das hier etwa ein Angriff? Ich muss sofort jemanden finden der Bescheid weiß.");
            else
               null;
            end if;
      
            New_Line;
            
            if Zustand > 999 then
               Put_Line ("Auftrag erledigt.");
            else
               null;
            end if;
            
         when 2 =>
            null;
            
         when others =>
            Put_Line ("Sollte niemals aufgerufen werden, Questdatenbank.Questdatenbank when others =>");
      end case;
      
   end Questdatenbank;

end Questdatenbank;
