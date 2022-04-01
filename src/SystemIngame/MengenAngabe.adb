pragma Warnings (Off, "*array aggregate*");

with Ada.Wide_Wide_Text_IO; use Ada.Wide_Wide_Text_IO;

package body MengenAngabe is

   function Anzahl
     (InventarHandelExtern : in Integer)
      return Integer
   is begin

      Zahl := 0;
      Prüfung := True;

      case
        InventarHandelExtern
      is
         when 1 =>
            Put_Line (Item => "Wie viel möchten sie wegwerfen?");
            Put_Line (Item => "Geben sie eine Zahl zwischen 0 und 999.999.999 oder ALLES ein:");
            
         when 2 =>
            Put_Line (Item => "Wie viel möchten sie verkaufen?");
            Put_Line (Item => "Geben sie eine Zahl zwischen 0 und 999.999.999 oder ALLES ein:");
            
         when others =>
            Put_Line (Item => "Sollte niemals aufgerufen werden MengenAngabe.Anzahl.");
      end case;
      
      -- Menge := GanzeZahl.GanzeZahl;

      if
        Menge = "alles"
      then
         return 1_000_000_000;
         
      elsif
        To_Wide_Wide_String (Source => Menge)'Length <= 9
      then
         ZahlKleinerNeun;

         case
           Prüfung
         is
            when True =>
               return Integer'Wide_Wide_Value (To_Wide_Wide_String (Source => Menge));
            
            when False =>
               Put_Line (Item => "Das ist keine gültige Mengenangabe.");
               return 0;
         end case;
         
      else         
         Put_Line (Item => "Das ist keine gültige Mengenangabe.");
         return 0;
      end if;

   end Anzahl;



   procedure ZahlKleinerNeun
   is begin
      
      PrüfungsSchleife:
      for PrüfungSchleifenwert in To_Wide_Wide_String (Source => Menge)'Range loop
         
         if
           To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '1'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '2'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '3'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '4'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '5'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '6'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '7'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '8'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '9'
           or
             To_Wide_Wide_String (Source => Menge) (PrüfungSchleifenwert) = '0'
         then
            Prüfung := True;
            
         else
            Prüfung := False;
            return;
         end if;
         
      end loop PrüfungsSchleife;

   end ZahlKleinerNeun;

end MengenAngabe;
