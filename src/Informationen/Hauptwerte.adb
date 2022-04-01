pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Charaktere;

package body Hauptwerte is

   procedure Hauptwerte
     (WertExtern : in Integer)
   is begin
      
      case
        WertExtern
      is
         when 0 =>
            Put_Line (Item => "Es existieren 7 Charakterattribute.");
            Put_Line (Item => "Deren Werten können zwischen 1 und 10 liegen.");
            Put_Line (Item => "Diese sind Stärke, Wahrnehmung, Ausdauer, Charisma,");
            Put_Line (Item => "Intelligenz, Beweglichkeit und Glück.");
            Put_Line (Item => "Der Standardwert eines jeden Attributs liegt bei 5.");
            Put_Line (Item => "Außerdem sind 10 Punkte zur freien Verteilung vorhanden.");
            Put_Line (Item => "Um mehr Informationen zu den jeweiligen Werten zu erhalten");
            Put_Line (Item => "einfach den Attributsnamen eingeben.");
            Put_Line (Item => "Um die freien Punkte zu verteilen den entsprechenden Name");
            Put_Line (Item => "gefolgt von einem Plus oder Minus eingeben.");
            Put_Line (Item => "Dabei kann kein Wert unter 1 oder über 10 liegen.");
            Put_Line (Item => "Die Punktverteilung kann durch eingabe von   Fertig   beendet werden.");
            Put_Line (Item => "Nicht verteilte Punkte bleiben dabei erhalten.");

         when 1 =>
            Put_Line (Item => "Bestimmt die maximale Tragefähigkeit (10 kg pro Punkt) und benutzbaren Waffen.");
            Put_Line (Item => "Aktuelle Stärke:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 2 =>
            Put_Line (Item => "Bestimmt die Treffergenauigkeit ihrer Waffen und wie gut sie die Umgebung beobachten können.");
            Put_Line (Item => "Aktuelle Wahrnehmung:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 3 =>
            Put_Line (Item => "Bestimmt die Anzahl der Lebenspunkte.");
            Put_Line (Item => "Aktuelle Ausdauer:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 4 =>
            Put_Line (Item => "Je höher das Charisma umso besser kommen sie an Informationen durch Unterhaltungen und an bessere Handelspreise.");
            Put_Line (Item => "Aktuelles Charisma:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 5 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktuelle Intelligenz:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 6 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktuelle Beweglichkeit:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when 7 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktuelles Glück:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Hauptwerte (WertExtern)));

         when others =>
            raise Program_Error;
      end case;
   
   end Hauptwerte;

end Hauptwerte;
