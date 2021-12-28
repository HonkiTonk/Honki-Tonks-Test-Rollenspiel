with Ada.Wide_Text_IO; use Ada.Wide_Text_IO;

with Charaktere;

package body Fertigkeiten is

   procedure Fertigkeiten
     (Wert : in Integer)
   is begin
      
      case
        Wert
      is
         when 0 =>
            Put_Line ("Es existieren 17 Charakterfertigkeiten.");
            Put_Line ("Deren Werten können zwischen 1 und 100 liegen.");
            Put_Line ("Diese sind Unbewaffnet, Nahkampfwaffen, Pistolen, Maschinenpistolen,");
            Put_Line ("Scharfschützengewehre, Sturmgewehre, Schrottflinten, Schwere Waffen,");
            Put_Line ("Wurfwaffen, Sprengsätze, Erste Hilfe, Schleichen, Stehlen,");
            Put_Line ("Schlösser knacken, Glücksspiel, Handeln, Überreden, Computer und Elektronik.");
            Put_Line ("Der Standardwert einer jeden Fertigkeit ist dabei Attributsabhängig.");
            Put_Line ("Außerdem sind 100 Punkte zur freien Verteilung vorhanden.");
            Put_Line ("Um mehr Informationen zu den jeweiligen Werten zu erhalten");
            Put_Line ("einfach den Fertigkeitennamen eingeben.");
            Put_Line ("Um die freien Punkte zu verteilen den entsprechenden Name");
            Put_Line ("gefolgt von einem Plus oder Minus eingeben.");
            Put_Line ("Dabei kann kein Wert unter 1 oder über 100 liegen.");
            Put_Line ("Die Punktverteilung kann durch eingabe von   Fertig   beendet werden.");
            Put_Line ("Nicht verteilte Punkte bleiben dabei erhalten.");

         when 1 =>
            Put_Line ("Beeinflusst den Schaden im Kampf ohne Waffen.");
            Put_Line ("Aktueller Wert für Unbewaffnet:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));
            
         when 2 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Nahkampfwaffen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 3 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Pistolen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 4 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Maschinenpistolen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 5 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Scharfschützengewehre:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 6 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Sturmgewehre:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 7 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Schrottflinten:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 8 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Schwere Waffen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 9 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Wurfwaffen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 10 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Sprengsätze:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 11 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Erste Hilfe:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 12 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Schleichen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 13 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Stehlen:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 14 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Schlösser knacken:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 15 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Glücksspiel:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 16 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Handeln:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 17 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Überreden:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 18 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Computer:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when 19 =>
            Put_Line ("");
            Put_Line ("Aktueller Wert für Elektronik:" & Integer'Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (Wert)));

         when others =>
            Put_Line ("Sollte niemals aufgerufen werden.");
      end case;
      
   end Fertigkeiten;

end Fertigkeiten;
