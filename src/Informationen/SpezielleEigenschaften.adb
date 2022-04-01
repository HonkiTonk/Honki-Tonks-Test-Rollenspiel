pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body SpezielleEigenschaften is

   procedure SpezielleEigenschaften
     (WertExtern : in Integer)
   is begin
      
      case
        WertExtern
      is
         when 0 =>
            Put_Line (Item => "Es existieren 11 spezielle Eigenschaften.");
            Put_Line (Item => "Davon sind 2 auswählbar.");
            Put_Line (Item => "Diese sind ");
            Put_Line (Item => "Um mehr Informationen zu den jeweiligen Eigenschaften zu erhalten");
            Put_Line (Item => "einfach den Eigenschaftennamen eingeben.");
            Put_Line (Item => "Um die Eigenschaften aus- oder abzuwählen einfach den Namen,");
            Put_Line (Item => "gefolgt von einem Plus oder Minus eingeben.");
            Put_Line (Item => "Die Auswahl kann durch eingabe von   Fertig   beendet werden.");
            Put_Line (Item => "Die speziellen Eigenschaften können später nicht geändert werden.");

         when 1 =>
            Put_Line (Item => "");
            
         when 2 =>
            Put_Line (Item => "");
            
         when 3 =>
            Put_Line (Item => "");

         when 4 =>
            Put_Line (Item => "");
            
         when 5 =>
            Put_Line (Item => "");
            
         when 6 =>
            Put_Line (Item => "");
            
         when 7 =>
            Put_Line (Item => "");
            
         when 8 =>
            Put_Line (Item => "");
            
         when 9 =>
            Put_Line (Item => "");
            
         when 10 =>
            Put_Line (Item => "");

         when 11 =>
            Put_Line (Item => "");

         when others =>
            raise Program_Error;
      end case;
      
   end SpezielleEigenschaften;

end SpezielleEigenschaften;
