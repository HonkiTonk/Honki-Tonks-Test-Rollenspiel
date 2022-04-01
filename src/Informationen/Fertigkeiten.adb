pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

with Charaktere;

package body Fertigkeiten is

   procedure Fertigkeiten
     (WertExtern : in Integer)
   is begin
      
      case
        WertExtern
      is
         when 0 =>
            Put_Line (Item => "Es existieren 17 Charakterfertigkeiten.");
            Put_Line (Item => "Deren Werten können zwischen 1 und 100 liegen.");
            Put_Line (Item => "Diese sind Unbewaffnet, Nahkampfwaffen, Pistolen, Maschinenpistolen,");
            Put_Line (Item => "Scharfschützengewehre, Sturmgewehre, Schrottflinten, Schwere Waffen,");
            Put_Line (Item => "Wurfwaffen, Sprengsätze, Erste Hilfe, Schleichen, Stehlen,");
            Put_Line (Item => "Schlösser knacken, Glücksspiel, Handeln, Überreden, Computer und Elektronik.");
            Put_Line (Item => "Der Standardwert einer jeden Fertigkeit ist dabei Attributsabhängig.");
            Put_Line (Item => "Außerdem sind 100 Punkte zur freien Verteilung vorhanden.");
            Put_Line (Item => "Um mehr Informationen zu den jeweiligen Werten zu erhalten");
            Put_Line (Item => "einfach den Fertigkeitennamen eingeben.");
            Put_Line (Item => "Um die freien Punkte zu verteilen den entsprechenden Name");
            Put_Line (Item => "gefolgt von einem Plus oder Minus eingeben.");
            Put_Line (Item => "Dabei kann kein Wert unter 1 oder über 100 liegen.");
            Put_Line (Item => "Die Punktverteilung kann durch eingabe von   Fertig   beendet werden.");
            Put_Line (Item => "Nicht verteilte Punkte bleiben dabei erhalten.");

         when 1 =>
            Put_Line (Item => "Beeinflusst den Schaden im Kampf ohne Waffen.");
            Put_Line (Item => "Aktueller Wert für Unbewaffnet:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));
            
         when 2 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Nahkampfwaffen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 3 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Pistolen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 4 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Maschinenpistolen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 5 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Scharfschützengewehre:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 6 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Sturmgewehre:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 7 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Schrottflinten:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 8 =>
            Put_Line ("");
            Put_Line (Item => "Aktueller Wert für Schwere Waffen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 9 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Wurfwaffen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 10 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Sprengsätze:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 11 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Erste Hilfe:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 12 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Schleichen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 13 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Stehlen:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 14 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Schlösser knacken:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 15 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Glücksspiel:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 16 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Handeln:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 17 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Überreden:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 18 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Computer:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when 19 =>
            Put_Line (Item => "");
            Put_Line (Item => "Aktueller Wert für Elektronik:" & Integer'Wide_Wide_Image (Charaktere.Hauptcharakter.Fertigkeiten (WertExtern)));

         when others =>
            Put_Line (Item => "Sollte niemals aufgerufen werden.");
      end case;
      
   end Fertigkeiten;

end Fertigkeiten;
