package body SpezielleEigenschaften is

   procedure SpezielleEigenschaften (Wert : in Integer) is
   begin
      
      case Wert is
         
         when 0 =>
            Put_Line ("Es existieren 11 spezielle Eigenschaften.");
            Put_Line ("Davon sind 2 auswählbar.");
            Put_Line ("Diese sind ");
            Put_Line ("Um mehr Informationen zu den jeweiligen Eigenschaften zu erhalten");
            Put_Line ("einfach den Eigenschaftennamen eingeben.");
            Put_Line ("Um die Eigenschaften aus- oder abzuwählen einfach den Namen,");
            Put_Line ("gefolgt von einem Plus oder Minus eingeben.");
            Put_Line ("Die Auswahl kann durch eingabe von   Fertig   beendet werden.");
            Put_Line ("Die speziellen Eigenschaften können später nicht geändert werden.");

         when 1 =>
            Put_Line ("");
            
         when 2 =>
            Put_Line ("");
            
         when 3 =>
            Put_Line ("");

         when 4 =>
            Put_Line ("");
            
         when 5 =>
            Put_Line ("");
            
         when 6 =>
            Put_Line ("");
            
         when 7 =>
            Put_Line ("");
            
         when 8 =>
            Put_Line ("");
            
         when 9 =>
            Put_Line ("");
            
         when 10 =>
            Put_Line ("");

         when 11 =>
            Put_Line ("");

         when others =>
            Put_Line ("Sollte niemals aufgerufen werden.");
            
      end case;
      
   end SpezielleEigenschaften;

end SpezielleEigenschaften;
