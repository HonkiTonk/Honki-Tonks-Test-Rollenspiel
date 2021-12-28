with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Charaktere;

package body Hauptwerte is

   procedure Hauptwerte
     (Wert : in Integer)
   is begin
      
      case
        Wert
      is
         when 0 =>
            Put_Line ("Es existieren 7 Charakterattribute.");
            Put_Line ("Deren Werten können zwischen 1 und 10 liegen.");
            Put_Line ("Diese sind Stärke, Wahrnehmung, Ausdauer, Charisma,");
            Put_Line ("Intelligenz, Beweglichkeit und Glück.");
            Put_Line ("Der Standardwert eines jeden Attributs liegt bei 5.");
            Put_Line ("Außerdem sind 10 Punkte zur freien Verteilung vorhanden.");
            Put_Line ("Um mehr Informationen zu den jeweiligen Werten zu erhalten");
            Put_Line ("einfach den Attributsnamen eingeben.");
            Put_Line ("Um die freien Punkte zu verteilen den entsprechenden Name");
            Put_Line ("gefolgt von einem Plus oder Minus eingeben.");
            Put_Line ("Dabei kann kein Wert unter 1 oder über 10 liegen.");
            Put_Line ("Die Punktverteilung kann durch eingabe von   Fertig   beendet werden.");
            Put_Line ("Nicht verteilte Punkte bleiben dabei erhalten.");

         when 1 =>
            Put_Line ("Bestimmt die maximale Tragefähigkeit (10 kg pro Punkt) und benutzbaren Waffen.");
            Put_Line ("Aktuelle Stärke:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 2 =>
            Put_Line ("Bestimmt die Treffergenauigkeit ihrer Waffen und wie gut sie die Umgebung beobachten koennen.");
            Put_Line ("Aktuelle Wahrnehmung:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 3 =>
            Put_Line ("Bestimmt die Anzahl der Lebenspunkte.");
            Put_Line ("Aktuelle Ausdauer:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 4 =>
            Put_Line ("Je höher das Charisma umso besser kommen sie an Informationen durch Unterhaltungen und an bessere Handelspreise.");
            Put_Line ("Aktuelles Charisma:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 5 =>
            Put_Line ("");
            Put_Line ("Aktuelle Intelligenz:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 6 =>
            Put_Line ("");
            Put_Line ("Aktuelle Beweglichkeit:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when 7 =>
            Put_Line ("");
            Put_Line ("Aktuelles Glück:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (Wert)));

         when others =>
            raise Program_Error;
      end case;
   
   end Hauptwerte;

end Hauptwerte;
